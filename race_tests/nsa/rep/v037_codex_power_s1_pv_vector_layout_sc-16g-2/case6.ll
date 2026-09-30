; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v037_codex_power_s1_pv_vector_layout_sc-16g-2/case6.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v037_codex_power_s1_pv_vector_layout_sc-16g-2/codegen/case6.device.cpp"
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
define protected metaxgpu_kernel void @native_sparse_attention_kernel(ptr addrspace(1) noalias nocapture noundef readonly %BlockIndices.coerce, ptr addrspace(4) noalias noundef readonly %K.coerce, ptr addrspace(1) noalias nocapture noundef writeonly %Output.coerce, ptr addrspace(4) noalias nocapture noundef readonly %Q.coerce, ptr addrspace(4) noalias nocapture noundef readonly %V.coerce) local_unnamed_addr #3 !dbg !40 {
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
  br i1 %or.cond, label %if.end453, label %for.cond.preheader, !dbg !54

for.cond.preheader:                               ; preds = %entry
  %mul17 = shl nsw i32 %0, 21
  %mul19 = shl nsw i32 %1, 11
  %add20 = add nuw nsw i32 %mul17, %mul19
  %3 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  %mul24 = shl nuw nsw i32 %3, 3
  %add22 = add nuw nsw i32 %add20, %mul24
  %4 = and i32 %3, 8
  %5 = shl nuw nsw i32 %3, 2
  %mul35 = and i32 %5, 4032
  %mul39 = and i32 %mul24, 56
  %6 = lshr i32 %3, 1
  %mul44 = and i32 %6, 504
  %7 = zext nneg i32 %add22 to i64, !dbg !56
  %xor = xor i32 %mul44, %mul39
  %arrayidx28 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %8 = shl nuw nsw i32 %4, 9, !dbg !58
  %9 = getelementptr inbounds i8, ptr addrspace(3) @buf_dyn_shmem, i32 %8, !dbg !58
  %10 = getelementptr inbounds %struct.__half, ptr addrspace(3) %9, i32 %mul35, !dbg !58
  %11 = getelementptr inbounds %struct.__half, ptr addrspace(3) %10, i32 %xor, !dbg !58
  %12 = load i16, ptr addrspace(4) %arrayidx28, align 2, !dbg !59, !tbaa !60
  store i16 %12, ptr addrspace(3) %11, align 16, !dbg !59, !tbaa !60
  %13 = or disjoint i64 %7, 1, !dbg !61
  %arrayidx28.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %13, !dbg !57
  %arrayidx49.1 = getelementptr inbounds i8, ptr addrspace(3) %11, i32 2, !dbg !58
  %14 = load i16, ptr addrspace(4) %arrayidx28.1, align 2, !dbg !59, !tbaa !60
  store i16 %14, ptr addrspace(3) %arrayidx49.1, align 2, !dbg !59, !tbaa !60
  %15 = or disjoint i64 %7, 2, !dbg !61
  %arrayidx28.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %15, !dbg !57
  %arrayidx49.2 = getelementptr inbounds i8, ptr addrspace(3) %11, i32 4, !dbg !58
  %16 = load i16, ptr addrspace(4) %arrayidx28.2, align 2, !dbg !59, !tbaa !60
  store i16 %16, ptr addrspace(3) %arrayidx49.2, align 4, !dbg !59, !tbaa !60
  %17 = or disjoint i64 %7, 3, !dbg !61
  %arrayidx28.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %17, !dbg !57
  %arrayidx49.3 = getelementptr inbounds i8, ptr addrspace(3) %11, i32 6, !dbg !58
  %18 = load i16, ptr addrspace(4) %arrayidx28.3, align 2, !dbg !59, !tbaa !60
  store i16 %18, ptr addrspace(3) %arrayidx49.3, align 2, !dbg !59, !tbaa !60
  %19 = or disjoint i64 %7, 4, !dbg !61
  %arrayidx28.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %19, !dbg !57
  %arrayidx49.4 = getelementptr inbounds i8, ptr addrspace(3) %11, i32 8, !dbg !58
  %20 = load i16, ptr addrspace(4) %arrayidx28.4, align 2, !dbg !59, !tbaa !60
  store i16 %20, ptr addrspace(3) %arrayidx49.4, align 8, !dbg !59, !tbaa !60
  %21 = or disjoint i64 %7, 5, !dbg !61
  %arrayidx28.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %21, !dbg !57
  %arrayidx49.5 = getelementptr inbounds i8, ptr addrspace(3) %11, i32 10, !dbg !58
  %22 = load i16, ptr addrspace(4) %arrayidx28.5, align 2, !dbg !59, !tbaa !60
  store i16 %22, ptr addrspace(3) %arrayidx49.5, align 2, !dbg !59, !tbaa !60
  %23 = or disjoint i64 %7, 6, !dbg !61
  %arrayidx28.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %23, !dbg !57
  %arrayidx49.6 = getelementptr inbounds i8, ptr addrspace(3) %11, i32 12, !dbg !58
  %24 = load i16, ptr addrspace(4) %arrayidx28.6, align 2, !dbg !59, !tbaa !60
  store i16 %24, ptr addrspace(3) %arrayidx49.6, align 4, !dbg !59, !tbaa !60
  %25 = or disjoint i64 %7, 7, !dbg !61
  %arrayidx28.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %25, !dbg !57
  %arrayidx49.7 = getelementptr inbounds i8, ptr addrspace(3) %11, i32 14, !dbg !58
  %26 = load i16, ptr addrspace(4) %arrayidx28.7, align 2, !dbg !59, !tbaa !60
  store i16 %26, ptr addrspace(3) %arrayidx49.7, align 2, !dbg !59, !tbaa !60
  %add45.1 = add nuw nsw i32 %mul44, 32
  %xor.1 = xor i32 %add45.1, %mul39
  %27 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.1782 = getelementptr inbounds i8, ptr addrspace(4) %27, i64 1024, !dbg !57
  %28 = shl nuw nsw i32 %4, 9, !dbg !58
  %29 = or disjoint i32 %28, 512, !dbg !58
  %30 = getelementptr inbounds i8, ptr addrspace(3) @buf_dyn_shmem, i32 %29, !dbg !58
  %31 = getelementptr inbounds %struct.__half, ptr addrspace(3) %30, i32 %mul35, !dbg !58
  %32 = getelementptr inbounds %struct.__half, ptr addrspace(3) %31, i32 %xor.1, !dbg !58
  %33 = load i16, ptr addrspace(4) %arrayidx28.1782, align 2, !dbg !59, !tbaa !60
  store i16 %33, ptr addrspace(3) %32, align 16, !dbg !59, !tbaa !60
  %34 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.1.1 = getelementptr inbounds i8, ptr addrspace(4) %34, i64 1026, !dbg !57
  %arrayidx49.1.1 = getelementptr inbounds i8, ptr addrspace(3) %32, i32 2, !dbg !58
  %35 = load i16, ptr addrspace(4) %arrayidx28.1.1, align 2, !dbg !59, !tbaa !60
  store i16 %35, ptr addrspace(3) %arrayidx49.1.1, align 2, !dbg !59, !tbaa !60
  %36 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.2.1 = getelementptr inbounds i8, ptr addrspace(4) %36, i64 1028, !dbg !57
  %arrayidx49.2.1 = getelementptr inbounds i8, ptr addrspace(3) %32, i32 4, !dbg !58
  %37 = load i16, ptr addrspace(4) %arrayidx28.2.1, align 2, !dbg !59, !tbaa !60
  store i16 %37, ptr addrspace(3) %arrayidx49.2.1, align 4, !dbg !59, !tbaa !60
  %38 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.3.1 = getelementptr inbounds i8, ptr addrspace(4) %38, i64 1030, !dbg !57
  %arrayidx49.3.1 = getelementptr inbounds i8, ptr addrspace(3) %32, i32 6, !dbg !58
  %39 = load i16, ptr addrspace(4) %arrayidx28.3.1, align 2, !dbg !59, !tbaa !60
  store i16 %39, ptr addrspace(3) %arrayidx49.3.1, align 2, !dbg !59, !tbaa !60
  %40 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.4.1 = getelementptr inbounds i8, ptr addrspace(4) %40, i64 1032, !dbg !57
  %arrayidx49.4.1 = getelementptr inbounds i8, ptr addrspace(3) %32, i32 8, !dbg !58
  %41 = load i16, ptr addrspace(4) %arrayidx28.4.1, align 2, !dbg !59, !tbaa !60
  store i16 %41, ptr addrspace(3) %arrayidx49.4.1, align 8, !dbg !59, !tbaa !60
  %42 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.5.1 = getelementptr inbounds i8, ptr addrspace(4) %42, i64 1034, !dbg !57
  %arrayidx49.5.1 = getelementptr inbounds i8, ptr addrspace(3) %32, i32 10, !dbg !58
  %43 = load i16, ptr addrspace(4) %arrayidx28.5.1, align 2, !dbg !59, !tbaa !60
  store i16 %43, ptr addrspace(3) %arrayidx49.5.1, align 2, !dbg !59, !tbaa !60
  %44 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.6.1 = getelementptr inbounds i8, ptr addrspace(4) %44, i64 1036, !dbg !57
  %arrayidx49.6.1 = getelementptr inbounds i8, ptr addrspace(3) %32, i32 12, !dbg !58
  %45 = load i16, ptr addrspace(4) %arrayidx28.6.1, align 2, !dbg !59, !tbaa !60
  store i16 %45, ptr addrspace(3) %arrayidx49.6.1, align 4, !dbg !59, !tbaa !60
  %46 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.7.1 = getelementptr inbounds i8, ptr addrspace(4) %46, i64 1038, !dbg !57
  %arrayidx49.7.1 = getelementptr inbounds i8, ptr addrspace(3) %32, i32 14, !dbg !58
  %47 = load i16, ptr addrspace(4) %arrayidx28.7.1, align 2, !dbg !59, !tbaa !60
  store i16 %47, ptr addrspace(3) %arrayidx49.7.1, align 2, !dbg !59, !tbaa !60
  %48 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.2783 = getelementptr inbounds i8, ptr addrspace(4) %48, i64 2048, !dbg !57
  %49 = shl nuw nsw i32 %4, 9, !dbg !58
  %50 = or disjoint i32 %49, 1024, !dbg !58
  %51 = getelementptr inbounds i8, ptr addrspace(3) @buf_dyn_shmem, i32 %50, !dbg !58
  %52 = getelementptr inbounds %struct.__half, ptr addrspace(3) %51, i32 %mul35, !dbg !58
  %53 = getelementptr inbounds %struct.__half, ptr addrspace(3) %52, i32 %xor, !dbg !58
  %54 = load i16, ptr addrspace(4) %arrayidx28.2783, align 2, !dbg !59, !tbaa !60
  store i16 %54, ptr addrspace(3) %53, align 16, !dbg !59, !tbaa !60
  %55 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.1.2 = getelementptr inbounds i8, ptr addrspace(4) %55, i64 2050, !dbg !57
  %arrayidx49.1.2 = getelementptr inbounds i8, ptr addrspace(3) %53, i32 2, !dbg !58
  %56 = load i16, ptr addrspace(4) %arrayidx28.1.2, align 2, !dbg !59, !tbaa !60
  store i16 %56, ptr addrspace(3) %arrayidx49.1.2, align 2, !dbg !59, !tbaa !60
  %57 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.2.2 = getelementptr inbounds i8, ptr addrspace(4) %57, i64 2052, !dbg !57
  %arrayidx49.2.2 = getelementptr inbounds i8, ptr addrspace(3) %53, i32 4, !dbg !58
  %58 = load i16, ptr addrspace(4) %arrayidx28.2.2, align 2, !dbg !59, !tbaa !60
  store i16 %58, ptr addrspace(3) %arrayidx49.2.2, align 4, !dbg !59, !tbaa !60
  %59 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.3.2 = getelementptr inbounds i8, ptr addrspace(4) %59, i64 2054, !dbg !57
  %arrayidx49.3.2 = getelementptr inbounds i8, ptr addrspace(3) %53, i32 6, !dbg !58
  %60 = load i16, ptr addrspace(4) %arrayidx28.3.2, align 2, !dbg !59, !tbaa !60
  store i16 %60, ptr addrspace(3) %arrayidx49.3.2, align 2, !dbg !59, !tbaa !60
  %61 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.4.2 = getelementptr inbounds i8, ptr addrspace(4) %61, i64 2056, !dbg !57
  %arrayidx49.4.2 = getelementptr inbounds i8, ptr addrspace(3) %53, i32 8, !dbg !58
  %62 = load i16, ptr addrspace(4) %arrayidx28.4.2, align 2, !dbg !59, !tbaa !60
  store i16 %62, ptr addrspace(3) %arrayidx49.4.2, align 8, !dbg !59, !tbaa !60
  %63 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.5.2 = getelementptr inbounds i8, ptr addrspace(4) %63, i64 2058, !dbg !57
  %arrayidx49.5.2 = getelementptr inbounds i8, ptr addrspace(3) %53, i32 10, !dbg !58
  %64 = load i16, ptr addrspace(4) %arrayidx28.5.2, align 2, !dbg !59, !tbaa !60
  store i16 %64, ptr addrspace(3) %arrayidx49.5.2, align 2, !dbg !59, !tbaa !60
  %65 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.6.2 = getelementptr inbounds i8, ptr addrspace(4) %65, i64 2060, !dbg !57
  %arrayidx49.6.2 = getelementptr inbounds i8, ptr addrspace(3) %53, i32 12, !dbg !58
  %66 = load i16, ptr addrspace(4) %arrayidx28.6.2, align 2, !dbg !59, !tbaa !60
  store i16 %66, ptr addrspace(3) %arrayidx49.6.2, align 4, !dbg !59, !tbaa !60
  %67 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.7.2 = getelementptr inbounds i8, ptr addrspace(4) %67, i64 2062, !dbg !57
  %arrayidx49.7.2 = getelementptr inbounds i8, ptr addrspace(3) %53, i32 14, !dbg !58
  %68 = load i16, ptr addrspace(4) %arrayidx28.7.2, align 2, !dbg !59, !tbaa !60
  store i16 %68, ptr addrspace(3) %arrayidx49.7.2, align 2, !dbg !59, !tbaa !60
  %69 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.3784 = getelementptr inbounds i8, ptr addrspace(4) %69, i64 3072, !dbg !57
  %70 = shl nuw nsw i32 %4, 9, !dbg !58
  %71 = or disjoint i32 %70, 1536, !dbg !58
  %72 = getelementptr inbounds i8, ptr addrspace(3) @buf_dyn_shmem, i32 %71, !dbg !58
  %73 = getelementptr inbounds %struct.__half, ptr addrspace(3) %72, i32 %mul35, !dbg !58
  %74 = getelementptr inbounds %struct.__half, ptr addrspace(3) %73, i32 %xor.1, !dbg !58
  %75 = load i16, ptr addrspace(4) %arrayidx28.3784, align 2, !dbg !59, !tbaa !60
  store i16 %75, ptr addrspace(3) %74, align 16, !dbg !59, !tbaa !60
  %76 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.1.3 = getelementptr inbounds i8, ptr addrspace(4) %76, i64 3074, !dbg !57
  %arrayidx49.1.3 = getelementptr inbounds i8, ptr addrspace(3) %74, i32 2, !dbg !58
  %77 = load i16, ptr addrspace(4) %arrayidx28.1.3, align 2, !dbg !59, !tbaa !60
  store i16 %77, ptr addrspace(3) %arrayidx49.1.3, align 2, !dbg !59, !tbaa !60
  %78 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.2.3 = getelementptr inbounds i8, ptr addrspace(4) %78, i64 3076, !dbg !57
  %arrayidx49.2.3 = getelementptr inbounds i8, ptr addrspace(3) %74, i32 4, !dbg !58
  %79 = load i16, ptr addrspace(4) %arrayidx28.2.3, align 2, !dbg !59, !tbaa !60
  store i16 %79, ptr addrspace(3) %arrayidx49.2.3, align 4, !dbg !59, !tbaa !60
  %80 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.3.3 = getelementptr inbounds i8, ptr addrspace(4) %80, i64 3078, !dbg !57
  %arrayidx49.3.3 = getelementptr inbounds i8, ptr addrspace(3) %74, i32 6, !dbg !58
  %81 = load i16, ptr addrspace(4) %arrayidx28.3.3, align 2, !dbg !59, !tbaa !60
  store i16 %81, ptr addrspace(3) %arrayidx49.3.3, align 2, !dbg !59, !tbaa !60
  %82 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.4.3 = getelementptr inbounds i8, ptr addrspace(4) %82, i64 3080, !dbg !57
  %arrayidx49.4.3 = getelementptr inbounds i8, ptr addrspace(3) %74, i32 8, !dbg !58
  %83 = load i16, ptr addrspace(4) %arrayidx28.4.3, align 2, !dbg !59, !tbaa !60
  store i16 %83, ptr addrspace(3) %arrayidx49.4.3, align 8, !dbg !59, !tbaa !60
  %84 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.5.3 = getelementptr inbounds i8, ptr addrspace(4) %84, i64 3082, !dbg !57
  %arrayidx49.5.3 = getelementptr inbounds i8, ptr addrspace(3) %74, i32 10, !dbg !58
  %85 = load i16, ptr addrspace(4) %arrayidx28.5.3, align 2, !dbg !59, !tbaa !60
  store i16 %85, ptr addrspace(3) %arrayidx49.5.3, align 2, !dbg !59, !tbaa !60
  %86 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.6.3 = getelementptr inbounds i8, ptr addrspace(4) %86, i64 3084, !dbg !57
  %arrayidx49.6.3 = getelementptr inbounds i8, ptr addrspace(3) %74, i32 12, !dbg !58
  %87 = load i16, ptr addrspace(4) %arrayidx28.6.3, align 2, !dbg !59, !tbaa !60
  store i16 %87, ptr addrspace(3) %arrayidx49.6.3, align 4, !dbg !59, !tbaa !60
  %88 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !57
  %arrayidx28.7.3 = getelementptr inbounds i8, ptr addrspace(4) %88, i64 3086, !dbg !57
  %arrayidx49.7.3 = getelementptr inbounds i8, ptr addrspace(3) %74, i32 14, !dbg !58
  %89 = load i16, ptr addrspace(4) %arrayidx28.7.3, align 2, !dbg !59, !tbaa !60
  store i16 %89, ptr addrspace(3) %arrayidx49.7.3, align 2, !dbg !59, !tbaa !60
  fence syncscope("warp") release, !dbg !62
  tail call void @llvm.mxc.barrier.warp(), !dbg !68
  fence syncscope("warp") acquire, !dbg !69
  %and64 = shl nuw nsw i32 %3, 6
  %mul65 = and i32 %and64, 960
  %90 = lshr i32 %3, 2
  %mul71 = and i32 %90, 252
  %xor76 = xor i32 %mul71, %mul39
  %91 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul65, !dbg !70
  %92 = getelementptr inbounds %struct.__half, ptr addrspace(3) %91, i32 %xor76, !dbg !70
  %93 = load half, ptr addrspace(3) %92, align 8, !dbg !71, !tbaa !60
  %q_local.sroa.0.0.vec.insert = insertelement <4 x half> poison, half %93, i64 0, !dbg !71
  %arrayidx80.1 = getelementptr inbounds i8, ptr addrspace(3) %92, i32 2, !dbg !70
  %94 = load half, ptr addrspace(3) %arrayidx80.1, align 2, !dbg !71, !tbaa !60
  %q_local.sroa.0.2.vec.insert = insertelement <4 x half> %q_local.sroa.0.0.vec.insert, half %94, i64 1, !dbg !71
  %arrayidx80.2 = getelementptr inbounds i8, ptr addrspace(3) %92, i32 4, !dbg !70
  %95 = load half, ptr addrspace(3) %arrayidx80.2, align 4, !dbg !71, !tbaa !60
  %q_local.sroa.0.4.vec.insert = insertelement <4 x half> %q_local.sroa.0.2.vec.insert, half %95, i64 2, !dbg !71
  %arrayidx80.3 = getelementptr inbounds i8, ptr addrspace(3) %92, i32 6, !dbg !70
  %96 = load half, ptr addrspace(3) %arrayidx80.3, align 2, !dbg !71, !tbaa !60
  %q_local.sroa.0.6.vec.insert = insertelement <4 x half> %q_local.sroa.0.4.vec.insert, half %96, i64 3, !dbg !71
  %add72.1 = add nuw nsw i32 %mul71, 16
  %xor76.1 = xor i32 %add72.1, %mul39
  %97 = getelementptr inbounds %struct.__half, ptr addrspace(3) %91, i32 %xor76.1, !dbg !70
  %98 = load half, ptr addrspace(3) %97, align 8, !dbg !71, !tbaa !60
  %q_local.sroa.7.8.vec.insert = insertelement <4 x half> poison, half %98, i64 0, !dbg !71
  %arrayidx80.1.1 = getelementptr inbounds i8, ptr addrspace(3) %97, i32 2, !dbg !70
  %99 = load half, ptr addrspace(3) %arrayidx80.1.1, align 2, !dbg !71, !tbaa !60
  %q_local.sroa.7.10.vec.insert = insertelement <4 x half> %q_local.sroa.7.8.vec.insert, half %99, i64 1, !dbg !71
  %arrayidx80.2.1 = getelementptr inbounds i8, ptr addrspace(3) %97, i32 4, !dbg !70
  %100 = load half, ptr addrspace(3) %arrayidx80.2.1, align 4, !dbg !71, !tbaa !60
  %q_local.sroa.7.12.vec.insert = insertelement <4 x half> %q_local.sroa.7.10.vec.insert, half %100, i64 2, !dbg !71
  %arrayidx80.3.1 = getelementptr inbounds i8, ptr addrspace(3) %97, i32 6, !dbg !70
  %101 = load half, ptr addrspace(3) %arrayidx80.3.1, align 2, !dbg !71, !tbaa !60
  %q_local.sroa.7.14.vec.insert = insertelement <4 x half> %q_local.sroa.7.12.vec.insert, half %101, i64 3, !dbg !71
  %add72.2 = add nuw nsw i32 %mul71, 32
  %xor76.2 = xor i32 %add72.2, %mul39
  %102 = getelementptr inbounds %struct.__half, ptr addrspace(3) %91, i32 %xor76.2, !dbg !70
  %103 = load half, ptr addrspace(3) %102, align 8, !dbg !71, !tbaa !60
  %q_local.sroa.12.16.vec.insert = insertelement <4 x half> poison, half %103, i64 0, !dbg !71
  %arrayidx80.1.2 = getelementptr inbounds i8, ptr addrspace(3) %102, i32 2, !dbg !70
  %104 = load half, ptr addrspace(3) %arrayidx80.1.2, align 2, !dbg !71, !tbaa !60
  %q_local.sroa.12.18.vec.insert = insertelement <4 x half> %q_local.sroa.12.16.vec.insert, half %104, i64 1, !dbg !71
  %arrayidx80.2.2 = getelementptr inbounds i8, ptr addrspace(3) %102, i32 4, !dbg !70
  %105 = load half, ptr addrspace(3) %arrayidx80.2.2, align 4, !dbg !71, !tbaa !60
  %q_local.sroa.12.20.vec.insert = insertelement <4 x half> %q_local.sroa.12.18.vec.insert, half %105, i64 2, !dbg !71
  %arrayidx80.3.2 = getelementptr inbounds i8, ptr addrspace(3) %102, i32 6, !dbg !70
  %106 = load half, ptr addrspace(3) %arrayidx80.3.2, align 2, !dbg !71, !tbaa !60
  %q_local.sroa.12.22.vec.insert = insertelement <4 x half> %q_local.sroa.12.20.vec.insert, half %106, i64 3, !dbg !71
  %add72.3 = add nuw nsw i32 %mul71, 48
  %xor76.3 = xor i32 %add72.3, %mul39
  %107 = getelementptr inbounds %struct.__half, ptr addrspace(3) %91, i32 %xor76.3, !dbg !70
  %108 = load half, ptr addrspace(3) %107, align 8, !dbg !71, !tbaa !60
  %q_local.sroa.17.24.vec.insert = insertelement <4 x half> poison, half %108, i64 0, !dbg !71
  %arrayidx80.1.3 = getelementptr inbounds i8, ptr addrspace(3) %107, i32 2, !dbg !70
  %109 = load half, ptr addrspace(3) %arrayidx80.1.3, align 2, !dbg !71, !tbaa !60
  %q_local.sroa.17.26.vec.insert = insertelement <4 x half> %q_local.sroa.17.24.vec.insert, half %109, i64 1, !dbg !71
  %arrayidx80.2.3 = getelementptr inbounds i8, ptr addrspace(3) %107, i32 4, !dbg !70
  %110 = load half, ptr addrspace(3) %arrayidx80.2.3, align 4, !dbg !71, !tbaa !60
  %q_local.sroa.17.28.vec.insert = insertelement <4 x half> %q_local.sroa.17.26.vec.insert, half %110, i64 2, !dbg !71
  %arrayidx80.3.3 = getelementptr inbounds i8, ptr addrspace(3) %107, i32 6, !dbg !70
  %111 = load half, ptr addrspace(3) %arrayidx80.3.3, align 2, !dbg !71, !tbaa !60
  %q_local.sroa.17.30.vec.insert = insertelement <4 x half> %q_local.sroa.17.28.vec.insert, half %111, i64 3, !dbg !71
  %add66.4 = or disjoint i32 %mul65, 2048
  %112 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add66.4, !dbg !70
  %113 = getelementptr inbounds %struct.__half, ptr addrspace(3) %112, i32 %xor76, !dbg !70
  %114 = load half, ptr addrspace(3) %113, align 8, !dbg !71, !tbaa !60
  %q_local.sroa.22.32.vec.insert = insertelement <4 x half> poison, half %114, i64 0, !dbg !71
  %arrayidx80.1.4 = getelementptr inbounds i8, ptr addrspace(3) %113, i32 2, !dbg !70
  %115 = load half, ptr addrspace(3) %arrayidx80.1.4, align 2, !dbg !71, !tbaa !60
  %q_local.sroa.22.34.vec.insert = insertelement <4 x half> %q_local.sroa.22.32.vec.insert, half %115, i64 1, !dbg !71
  %arrayidx80.2.4 = getelementptr inbounds i8, ptr addrspace(3) %113, i32 4, !dbg !70
  %116 = load half, ptr addrspace(3) %arrayidx80.2.4, align 4, !dbg !71, !tbaa !60
  %q_local.sroa.22.36.vec.insert = insertelement <4 x half> %q_local.sroa.22.34.vec.insert, half %116, i64 2, !dbg !71
  %arrayidx80.3.4 = getelementptr inbounds i8, ptr addrspace(3) %113, i32 6, !dbg !70
  %117 = load half, ptr addrspace(3) %arrayidx80.3.4, align 2, !dbg !71, !tbaa !60
  %q_local.sroa.22.38.vec.insert = insertelement <4 x half> %q_local.sroa.22.36.vec.insert, half %117, i64 3, !dbg !71
  %118 = getelementptr inbounds %struct.__half, ptr addrspace(3) %112, i32 %xor76.1, !dbg !70
  %119 = load half, ptr addrspace(3) %118, align 8, !dbg !71, !tbaa !60
  %q_local.sroa.27.40.vec.insert = insertelement <4 x half> poison, half %119, i64 0, !dbg !71
  %arrayidx80.1.5 = getelementptr inbounds i8, ptr addrspace(3) %118, i32 2, !dbg !70
  %120 = load half, ptr addrspace(3) %arrayidx80.1.5, align 2, !dbg !71, !tbaa !60
  %q_local.sroa.27.42.vec.insert = insertelement <4 x half> %q_local.sroa.27.40.vec.insert, half %120, i64 1, !dbg !71
  %arrayidx80.2.5 = getelementptr inbounds i8, ptr addrspace(3) %118, i32 4, !dbg !70
  %121 = load half, ptr addrspace(3) %arrayidx80.2.5, align 4, !dbg !71, !tbaa !60
  %q_local.sroa.27.44.vec.insert = insertelement <4 x half> %q_local.sroa.27.42.vec.insert, half %121, i64 2, !dbg !71
  %arrayidx80.3.5 = getelementptr inbounds i8, ptr addrspace(3) %118, i32 6, !dbg !70
  %122 = load half, ptr addrspace(3) %arrayidx80.3.5, align 2, !dbg !71, !tbaa !60
  %q_local.sroa.27.46.vec.insert = insertelement <4 x half> %q_local.sroa.27.44.vec.insert, half %122, i64 3, !dbg !71
  %123 = getelementptr inbounds %struct.__half, ptr addrspace(3) %112, i32 %xor76.2, !dbg !70
  %124 = load half, ptr addrspace(3) %123, align 8, !dbg !71, !tbaa !60
  %q_local.sroa.32.48.vec.insert = insertelement <4 x half> poison, half %124, i64 0, !dbg !71
  %arrayidx80.1.6 = getelementptr inbounds i8, ptr addrspace(3) %123, i32 2, !dbg !70
  %125 = load half, ptr addrspace(3) %arrayidx80.1.6, align 2, !dbg !71, !tbaa !60
  %q_local.sroa.32.50.vec.insert = insertelement <4 x half> %q_local.sroa.32.48.vec.insert, half %125, i64 1, !dbg !71
  %arrayidx80.2.6 = getelementptr inbounds i8, ptr addrspace(3) %123, i32 4, !dbg !70
  %126 = load half, ptr addrspace(3) %arrayidx80.2.6, align 4, !dbg !71, !tbaa !60
  %q_local.sroa.32.52.vec.insert = insertelement <4 x half> %q_local.sroa.32.50.vec.insert, half %126, i64 2, !dbg !71
  %arrayidx80.3.6 = getelementptr inbounds i8, ptr addrspace(3) %123, i32 6, !dbg !70
  %127 = load half, ptr addrspace(3) %arrayidx80.3.6, align 2, !dbg !71, !tbaa !60
  %q_local.sroa.32.54.vec.insert = insertelement <4 x half> %q_local.sroa.32.52.vec.insert, half %127, i64 3, !dbg !71
  %128 = getelementptr inbounds %struct.__half, ptr addrspace(3) %112, i32 %xor76.3, !dbg !70
  %129 = load half, ptr addrspace(3) %128, align 8, !dbg !71, !tbaa !60
  %q_local.sroa.37.56.vec.insert = insertelement <4 x half> poison, half %129, i64 0, !dbg !71
  %arrayidx80.1.7 = getelementptr inbounds i8, ptr addrspace(3) %128, i32 2, !dbg !70
  %130 = load half, ptr addrspace(3) %arrayidx80.1.7, align 2, !dbg !71, !tbaa !60
  %q_local.sroa.37.58.vec.insert = insertelement <4 x half> %q_local.sroa.37.56.vec.insert, half %130, i64 1, !dbg !71
  %arrayidx80.2.7 = getelementptr inbounds i8, ptr addrspace(3) %128, i32 4, !dbg !70
  %131 = load half, ptr addrspace(3) %arrayidx80.2.7, align 4, !dbg !71, !tbaa !60
  %q_local.sroa.37.60.vec.insert = insertelement <4 x half> %q_local.sroa.37.58.vec.insert, half %131, i64 2, !dbg !71
  %arrayidx80.3.7 = getelementptr inbounds i8, ptr addrspace(3) %128, i32 6, !dbg !70
  %132 = load half, ptr addrspace(3) %arrayidx80.3.7, align 2, !dbg !71, !tbaa !60
  %q_local.sroa.37.62.vec.insert = insertelement <4 x half> %q_local.sroa.37.60.vec.insert, half %132, i64 3, !dbg !71
  fence syncscope("warp") release, !dbg !72
  tail call void @llvm.mxc.barrier.warp(), !dbg !75
  fence syncscope("warp") acquire, !dbg !76
  %shr100 = lshr i32 %3, 4
  %add101 = add nuw nsw i32 %mul7, %shr100
  %conv = zext nneg i32 %0 to i64
  %mul107 = shl nuw nsw i64 %conv, 17
  %conv111 = zext nneg i32 %mul7 to i64
  %mul116 = zext nneg i32 %mul24 to i64
  %add110 = or disjoint i64 %mul107, %mul116
  %cmp104 = icmp ult i32 %add101, 1024
  br i1 %cmp104, label %if.then105, label %if.end.1.critedge, !dbg !77

if.then105:                                       ; preds = %for.cond.preheader
  %133 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %134 = getelementptr inbounds i8, ptr addrspace(4) %133, i64 %.idx763, !dbg !78
  %condval.sroa.0.0.copyload = load i16, ptr addrspace(4) %134, align 2, !dbg !79, !tbaa !60
  store i16 %condval.sroa.0.0.copyload, ptr addrspace(3) %11, align 16, !dbg !80, !tbaa !60
  %135 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.1 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %136 = getelementptr inbounds i8, ptr addrspace(4) %135, i64 %.idx763.1, !dbg !78
  %arrayidx120.1 = getelementptr inbounds i8, ptr addrspace(4) %136, i64 2, !dbg !78
  %condval.sroa.0.0.copyload.1 = load i16, ptr addrspace(4) %arrayidx120.1, align 2, !dbg !79, !tbaa !60
  br label %if.end.1, !dbg !81

if.end.1.critedge:                                ; preds = %for.cond.preheader
  store i16 0, ptr addrspace(3) %11, align 16, !dbg !80, !tbaa !60
  br label %if.end.1, !dbg !77

if.end.1:                                         ; preds = %if.end.1.critedge, %if.then105
  %condval.sroa.0.0.1 = phi i16 [ %condval.sroa.0.0.copyload.1, %if.then105 ], [ 0, %if.end.1.critedge ], !dbg !82
  store i16 %condval.sroa.0.0.1, ptr addrspace(3) %arrayidx49.1, align 2, !dbg !80, !tbaa !60
  br i1 %cmp104, label %if.then105.2, label %if.end.3.critedge, !dbg !77

if.then105.2:                                     ; preds = %if.end.1
  %137 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.2 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %138 = getelementptr inbounds i8, ptr addrspace(4) %137, i64 %.idx763.2, !dbg !78
  %arrayidx120.2 = getelementptr inbounds i8, ptr addrspace(4) %138, i64 4, !dbg !78
  %condval.sroa.0.0.copyload.2 = load i16, ptr addrspace(4) %arrayidx120.2, align 2, !dbg !79, !tbaa !60
  store i16 %condval.sroa.0.0.copyload.2, ptr addrspace(3) %arrayidx49.2, align 4, !dbg !80, !tbaa !60
  %139 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.3 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %140 = getelementptr inbounds i8, ptr addrspace(4) %139, i64 %.idx763.3, !dbg !78
  %arrayidx120.3 = getelementptr inbounds i8, ptr addrspace(4) %140, i64 6, !dbg !78
  %condval.sroa.0.0.copyload.3 = load i16, ptr addrspace(4) %arrayidx120.3, align 2, !dbg !79, !tbaa !60
  br label %if.end.3, !dbg !81

if.end.3.critedge:                                ; preds = %if.end.1
  store i16 0, ptr addrspace(3) %arrayidx49.2, align 4, !dbg !80, !tbaa !60
  br label %if.end.3, !dbg !77

if.end.3:                                         ; preds = %if.end.3.critedge, %if.then105.2
  %condval.sroa.0.0.3 = phi i16 [ %condval.sroa.0.0.copyload.3, %if.then105.2 ], [ 0, %if.end.3.critedge ], !dbg !82
  store i16 %condval.sroa.0.0.3, ptr addrspace(3) %arrayidx49.3, align 2, !dbg !80, !tbaa !60
  br i1 %cmp104, label %if.then105.4, label %if.end.5.critedge, !dbg !77

if.then105.4:                                     ; preds = %if.end.3
  %141 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.4 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %142 = getelementptr inbounds i8, ptr addrspace(4) %141, i64 %.idx763.4, !dbg !78
  %arrayidx120.4 = getelementptr inbounds i8, ptr addrspace(4) %142, i64 8, !dbg !78
  %condval.sroa.0.0.copyload.4 = load i16, ptr addrspace(4) %arrayidx120.4, align 2, !dbg !79, !tbaa !60
  store i16 %condval.sroa.0.0.copyload.4, ptr addrspace(3) %arrayidx49.4, align 8, !dbg !80, !tbaa !60
  %143 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.5 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %144 = getelementptr inbounds i8, ptr addrspace(4) %143, i64 %.idx763.5, !dbg !78
  %arrayidx120.5 = getelementptr inbounds i8, ptr addrspace(4) %144, i64 10, !dbg !78
  %condval.sroa.0.0.copyload.5 = load i16, ptr addrspace(4) %arrayidx120.5, align 2, !dbg !79, !tbaa !60
  br label %if.end.5, !dbg !81

if.end.5.critedge:                                ; preds = %if.end.3
  store i16 0, ptr addrspace(3) %arrayidx49.4, align 8, !dbg !80, !tbaa !60
  br label %if.end.5, !dbg !77

if.end.5:                                         ; preds = %if.end.5.critedge, %if.then105.4
  %condval.sroa.0.0.5 = phi i16 [ %condval.sroa.0.0.copyload.5, %if.then105.4 ], [ 0, %if.end.5.critedge ], !dbg !82
  store i16 %condval.sroa.0.0.5, ptr addrspace(3) %arrayidx49.5, align 2, !dbg !80, !tbaa !60
  br i1 %cmp104, label %if.then105.6, label %if.end.7.critedge, !dbg !77

if.then105.6:                                     ; preds = %if.end.5
  %145 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.6 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %146 = getelementptr inbounds i8, ptr addrspace(4) %145, i64 %.idx763.6, !dbg !78
  %arrayidx120.6 = getelementptr inbounds i8, ptr addrspace(4) %146, i64 12, !dbg !78
  %condval.sroa.0.0.copyload.6 = load i16, ptr addrspace(4) %arrayidx120.6, align 2, !dbg !79, !tbaa !60
  store i16 %condval.sroa.0.0.copyload.6, ptr addrspace(3) %arrayidx49.6, align 4, !dbg !80, !tbaa !60
  %147 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.7 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %148 = getelementptr inbounds i8, ptr addrspace(4) %147, i64 %.idx763.7, !dbg !78
  %arrayidx120.7 = getelementptr inbounds i8, ptr addrspace(4) %148, i64 14, !dbg !78
  %condval.sroa.0.0.copyload.7 = load i16, ptr addrspace(4) %arrayidx120.7, align 2, !dbg !79, !tbaa !60
  br label %if.end.7, !dbg !81

if.end.7.critedge:                                ; preds = %if.end.5
  store i16 0, ptr addrspace(3) %arrayidx49.6, align 4, !dbg !80, !tbaa !60
  br label %if.end.7, !dbg !77

if.end.7:                                         ; preds = %if.end.7.critedge, %if.then105.6
  %condval.sroa.0.0.7 = phi i16 [ %condval.sroa.0.0.copyload.7, %if.then105.6 ], [ 0, %if.end.7.critedge ], !dbg !82
  store i16 %condval.sroa.0.0.7, ptr addrspace(3) %arrayidx49.7, align 2, !dbg !80, !tbaa !60
  %cmp104.1 = icmp ult i32 %add101, 1020
  br i1 %cmp104.1, label %if.then105.1802, label %if.end.1.1.critedge, !dbg !77

if.then105.1802:                                  ; preds = %if.end.7
  %149 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.1800 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %150 = getelementptr inbounds i8, ptr addrspace(4) %149, i64 %.idx763.1800, !dbg !78
  %151 = getelementptr inbounds i8, ptr addrspace(4) %150, i64 1024, !dbg !78
  %condval.sroa.0.0.copyload.1801 = load i16, ptr addrspace(4) %151, align 2, !dbg !79, !tbaa !60
  store i16 %condval.sroa.0.0.copyload.1801, ptr addrspace(3) %32, align 16, !dbg !80, !tbaa !60
  %152 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.1.1 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %153 = getelementptr inbounds i8, ptr addrspace(4) %152, i64 %.idx763.1.1, !dbg !78
  %arrayidx120.1.1 = getelementptr inbounds i8, ptr addrspace(4) %153, i64 1026, !dbg !78
  %condval.sroa.0.0.copyload.1.1 = load i16, ptr addrspace(4) %arrayidx120.1.1, align 2, !dbg !79, !tbaa !60
  br label %if.end.1.1, !dbg !81

if.end.1.1.critedge:                              ; preds = %if.end.7
  store i16 0, ptr addrspace(3) %32, align 16, !dbg !80, !tbaa !60
  br label %if.end.1.1, !dbg !77

if.end.1.1:                                       ; preds = %if.end.1.1.critedge, %if.then105.1802
  %condval.sroa.0.0.1.1 = phi i16 [ %condval.sroa.0.0.copyload.1.1, %if.then105.1802 ], [ 0, %if.end.1.1.critedge ], !dbg !82
  store i16 %condval.sroa.0.0.1.1, ptr addrspace(3) %arrayidx49.1.1, align 2, !dbg !80, !tbaa !60
  br i1 %cmp104.1, label %if.then105.2.1, label %if.end.3.1.critedge, !dbg !77

if.then105.2.1:                                   ; preds = %if.end.1.1
  %154 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.2.1 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %155 = getelementptr inbounds i8, ptr addrspace(4) %154, i64 %.idx763.2.1, !dbg !78
  %arrayidx120.2.1 = getelementptr inbounds i8, ptr addrspace(4) %155, i64 1028, !dbg !78
  %condval.sroa.0.0.copyload.2.1 = load i16, ptr addrspace(4) %arrayidx120.2.1, align 2, !dbg !79, !tbaa !60
  store i16 %condval.sroa.0.0.copyload.2.1, ptr addrspace(3) %arrayidx49.2.1, align 4, !dbg !80, !tbaa !60
  %156 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.3.1 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %157 = getelementptr inbounds i8, ptr addrspace(4) %156, i64 %.idx763.3.1, !dbg !78
  %arrayidx120.3.1 = getelementptr inbounds i8, ptr addrspace(4) %157, i64 1030, !dbg !78
  %condval.sroa.0.0.copyload.3.1 = load i16, ptr addrspace(4) %arrayidx120.3.1, align 2, !dbg !79, !tbaa !60
  br label %if.end.3.1, !dbg !81

if.end.3.1.critedge:                              ; preds = %if.end.1.1
  store i16 0, ptr addrspace(3) %arrayidx49.2.1, align 4, !dbg !80, !tbaa !60
  br label %if.end.3.1, !dbg !77

if.end.3.1:                                       ; preds = %if.end.3.1.critedge, %if.then105.2.1
  %condval.sroa.0.0.3.1 = phi i16 [ %condval.sroa.0.0.copyload.3.1, %if.then105.2.1 ], [ 0, %if.end.3.1.critedge ], !dbg !82
  store i16 %condval.sroa.0.0.3.1, ptr addrspace(3) %arrayidx49.3.1, align 2, !dbg !80, !tbaa !60
  br i1 %cmp104.1, label %if.then105.4.1, label %if.end.5.1.critedge, !dbg !77

if.then105.4.1:                                   ; preds = %if.end.3.1
  %158 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.4.1 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %159 = getelementptr inbounds i8, ptr addrspace(4) %158, i64 %.idx763.4.1, !dbg !78
  %arrayidx120.4.1 = getelementptr inbounds i8, ptr addrspace(4) %159, i64 1032, !dbg !78
  %condval.sroa.0.0.copyload.4.1 = load i16, ptr addrspace(4) %arrayidx120.4.1, align 2, !dbg !79, !tbaa !60
  store i16 %condval.sroa.0.0.copyload.4.1, ptr addrspace(3) %arrayidx49.4.1, align 8, !dbg !80, !tbaa !60
  %160 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.5.1 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %161 = getelementptr inbounds i8, ptr addrspace(4) %160, i64 %.idx763.5.1, !dbg !78
  %arrayidx120.5.1 = getelementptr inbounds i8, ptr addrspace(4) %161, i64 1034, !dbg !78
  %condval.sroa.0.0.copyload.5.1 = load i16, ptr addrspace(4) %arrayidx120.5.1, align 2, !dbg !79, !tbaa !60
  br label %if.end.5.1, !dbg !81

if.end.5.1.critedge:                              ; preds = %if.end.3.1
  store i16 0, ptr addrspace(3) %arrayidx49.4.1, align 8, !dbg !80, !tbaa !60
  br label %if.end.5.1, !dbg !77

if.end.5.1:                                       ; preds = %if.end.5.1.critedge, %if.then105.4.1
  %condval.sroa.0.0.5.1 = phi i16 [ %condval.sroa.0.0.copyload.5.1, %if.then105.4.1 ], [ 0, %if.end.5.1.critedge ], !dbg !82
  store i16 %condval.sroa.0.0.5.1, ptr addrspace(3) %arrayidx49.5.1, align 2, !dbg !80, !tbaa !60
  br i1 %cmp104.1, label %if.then105.6.1, label %if.end.7.1.critedge, !dbg !77

if.then105.6.1:                                   ; preds = %if.end.5.1
  %162 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.6.1 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %163 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 %.idx763.6.1, !dbg !78
  %arrayidx120.6.1 = getelementptr inbounds i8, ptr addrspace(4) %163, i64 1036, !dbg !78
  %condval.sroa.0.0.copyload.6.1 = load i16, ptr addrspace(4) %arrayidx120.6.1, align 2, !dbg !79, !tbaa !60
  store i16 %condval.sroa.0.0.copyload.6.1, ptr addrspace(3) %arrayidx49.6.1, align 4, !dbg !80, !tbaa !60
  %164 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.7.1 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %165 = getelementptr inbounds i8, ptr addrspace(4) %164, i64 %.idx763.7.1, !dbg !78
  %arrayidx120.7.1 = getelementptr inbounds i8, ptr addrspace(4) %165, i64 1038, !dbg !78
  %condval.sroa.0.0.copyload.7.1 = load i16, ptr addrspace(4) %arrayidx120.7.1, align 2, !dbg !79, !tbaa !60
  br label %if.end.7.1, !dbg !81

if.end.7.1.critedge:                              ; preds = %if.end.5.1
  store i16 0, ptr addrspace(3) %arrayidx49.6.1, align 4, !dbg !80, !tbaa !60
  br label %if.end.7.1, !dbg !77

if.end.7.1:                                       ; preds = %if.end.7.1.critedge, %if.then105.6.1
  %condval.sroa.0.0.7.1 = phi i16 [ %condval.sroa.0.0.copyload.7.1, %if.then105.6.1 ], [ 0, %if.end.7.1.critedge ], !dbg !82
  store i16 %condval.sroa.0.0.7.1, ptr addrspace(3) %arrayidx49.7.1, align 2, !dbg !80, !tbaa !60
  %cmp104.2 = icmp ult i32 %add101, 1016
  br i1 %cmp104.2, label %if.then105.2807, label %if.end.1.2.critedge, !dbg !77

if.then105.2807:                                  ; preds = %if.end.7.1
  %166 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.2805 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %167 = getelementptr inbounds i8, ptr addrspace(4) %166, i64 %.idx763.2805, !dbg !78
  %168 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 2048, !dbg !78
  %condval.sroa.0.0.copyload.2806 = load i16, ptr addrspace(4) %168, align 2, !dbg !79, !tbaa !60
  store i16 %condval.sroa.0.0.copyload.2806, ptr addrspace(3) %53, align 16, !dbg !80, !tbaa !60
  %169 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.1.2 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %170 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 %.idx763.1.2, !dbg !78
  %arrayidx120.1.2 = getelementptr inbounds i8, ptr addrspace(4) %170, i64 2050, !dbg !78
  %condval.sroa.0.0.copyload.1.2 = load i16, ptr addrspace(4) %arrayidx120.1.2, align 2, !dbg !79, !tbaa !60
  br label %if.end.1.2, !dbg !81

if.end.1.2.critedge:                              ; preds = %if.end.7.1
  store i16 0, ptr addrspace(3) %53, align 16, !dbg !80, !tbaa !60
  br label %if.end.1.2, !dbg !77

if.end.1.2:                                       ; preds = %if.end.1.2.critedge, %if.then105.2807
  %condval.sroa.0.0.1.2 = phi i16 [ %condval.sroa.0.0.copyload.1.2, %if.then105.2807 ], [ 0, %if.end.1.2.critedge ], !dbg !82
  store i16 %condval.sroa.0.0.1.2, ptr addrspace(3) %arrayidx49.1.2, align 2, !dbg !80, !tbaa !60
  br i1 %cmp104.2, label %if.then105.2.2, label %if.end.3.2.critedge, !dbg !77

if.then105.2.2:                                   ; preds = %if.end.1.2
  %171 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.2.2 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %172 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 %.idx763.2.2, !dbg !78
  %arrayidx120.2.2 = getelementptr inbounds i8, ptr addrspace(4) %172, i64 2052, !dbg !78
  %condval.sroa.0.0.copyload.2.2 = load i16, ptr addrspace(4) %arrayidx120.2.2, align 2, !dbg !79, !tbaa !60
  store i16 %condval.sroa.0.0.copyload.2.2, ptr addrspace(3) %arrayidx49.2.2, align 4, !dbg !80, !tbaa !60
  %173 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.3.2 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %174 = getelementptr inbounds i8, ptr addrspace(4) %173, i64 %.idx763.3.2, !dbg !78
  %arrayidx120.3.2 = getelementptr inbounds i8, ptr addrspace(4) %174, i64 2054, !dbg !78
  %condval.sroa.0.0.copyload.3.2 = load i16, ptr addrspace(4) %arrayidx120.3.2, align 2, !dbg !79, !tbaa !60
  br label %if.end.3.2, !dbg !81

if.end.3.2.critedge:                              ; preds = %if.end.1.2
  store i16 0, ptr addrspace(3) %arrayidx49.2.2, align 4, !dbg !80, !tbaa !60
  br label %if.end.3.2, !dbg !77

if.end.3.2:                                       ; preds = %if.end.3.2.critedge, %if.then105.2.2
  %condval.sroa.0.0.3.2 = phi i16 [ %condval.sroa.0.0.copyload.3.2, %if.then105.2.2 ], [ 0, %if.end.3.2.critedge ], !dbg !82
  store i16 %condval.sroa.0.0.3.2, ptr addrspace(3) %arrayidx49.3.2, align 2, !dbg !80, !tbaa !60
  br i1 %cmp104.2, label %if.then105.4.2, label %if.end.5.2.critedge, !dbg !77

if.then105.4.2:                                   ; preds = %if.end.3.2
  %175 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.4.2 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %176 = getelementptr inbounds i8, ptr addrspace(4) %175, i64 %.idx763.4.2, !dbg !78
  %arrayidx120.4.2 = getelementptr inbounds i8, ptr addrspace(4) %176, i64 2056, !dbg !78
  %condval.sroa.0.0.copyload.4.2 = load i16, ptr addrspace(4) %arrayidx120.4.2, align 2, !dbg !79, !tbaa !60
  store i16 %condval.sroa.0.0.copyload.4.2, ptr addrspace(3) %arrayidx49.4.2, align 8, !dbg !80, !tbaa !60
  %177 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.5.2 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %178 = getelementptr inbounds i8, ptr addrspace(4) %177, i64 %.idx763.5.2, !dbg !78
  %arrayidx120.5.2 = getelementptr inbounds i8, ptr addrspace(4) %178, i64 2058, !dbg !78
  %condval.sroa.0.0.copyload.5.2 = load i16, ptr addrspace(4) %arrayidx120.5.2, align 2, !dbg !79, !tbaa !60
  br label %if.end.5.2, !dbg !81

if.end.5.2.critedge:                              ; preds = %if.end.3.2
  store i16 0, ptr addrspace(3) %arrayidx49.4.2, align 8, !dbg !80, !tbaa !60
  br label %if.end.5.2, !dbg !77

if.end.5.2:                                       ; preds = %if.end.5.2.critedge, %if.then105.4.2
  %condval.sroa.0.0.5.2 = phi i16 [ %condval.sroa.0.0.copyload.5.2, %if.then105.4.2 ], [ 0, %if.end.5.2.critedge ], !dbg !82
  store i16 %condval.sroa.0.0.5.2, ptr addrspace(3) %arrayidx49.5.2, align 2, !dbg !80, !tbaa !60
  br i1 %cmp104.2, label %if.then105.6.2, label %if.end.7.2.critedge, !dbg !77

if.then105.6.2:                                   ; preds = %if.end.5.2
  %179 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.6.2 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %180 = getelementptr inbounds i8, ptr addrspace(4) %179, i64 %.idx763.6.2, !dbg !78
  %arrayidx120.6.2 = getelementptr inbounds i8, ptr addrspace(4) %180, i64 2060, !dbg !78
  %condval.sroa.0.0.copyload.6.2 = load i16, ptr addrspace(4) %arrayidx120.6.2, align 2, !dbg !79, !tbaa !60
  store i16 %condval.sroa.0.0.copyload.6.2, ptr addrspace(3) %arrayidx49.6.2, align 4, !dbg !80, !tbaa !60
  %181 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.7.2 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %182 = getelementptr inbounds i8, ptr addrspace(4) %181, i64 %.idx763.7.2, !dbg !78
  %arrayidx120.7.2 = getelementptr inbounds i8, ptr addrspace(4) %182, i64 2062, !dbg !78
  %condval.sroa.0.0.copyload.7.2 = load i16, ptr addrspace(4) %arrayidx120.7.2, align 2, !dbg !79, !tbaa !60
  br label %if.end.7.2, !dbg !81

if.end.7.2.critedge:                              ; preds = %if.end.5.2
  store i16 0, ptr addrspace(3) %arrayidx49.6.2, align 4, !dbg !80, !tbaa !60
  br label %if.end.7.2, !dbg !77

if.end.7.2:                                       ; preds = %if.end.7.2.critedge, %if.then105.6.2
  %condval.sroa.0.0.7.2 = phi i16 [ %condval.sroa.0.0.copyload.7.2, %if.then105.6.2 ], [ 0, %if.end.7.2.critedge ], !dbg !82
  store i16 %condval.sroa.0.0.7.2, ptr addrspace(3) %arrayidx49.7.2, align 2, !dbg !80, !tbaa !60
  %cmp104.3 = icmp ult i32 %add101, 1012
  br i1 %cmp104.3, label %if.then105.3812, label %if.end.1.3.critedge, !dbg !77

if.then105.3812:                                  ; preds = %if.end.7.2
  %183 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.3810 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %184 = getelementptr inbounds i8, ptr addrspace(4) %183, i64 %.idx763.3810, !dbg !78
  %185 = getelementptr inbounds i8, ptr addrspace(4) %184, i64 3072, !dbg !78
  %condval.sroa.0.0.copyload.3811 = load i16, ptr addrspace(4) %185, align 2, !dbg !79, !tbaa !60
  store i16 %condval.sroa.0.0.copyload.3811, ptr addrspace(3) %74, align 16, !dbg !80, !tbaa !60
  %186 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.1.3 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %187 = getelementptr inbounds i8, ptr addrspace(4) %186, i64 %.idx763.1.3, !dbg !78
  %arrayidx120.1.3 = getelementptr inbounds i8, ptr addrspace(4) %187, i64 3074, !dbg !78
  %condval.sroa.0.0.copyload.1.3 = load i16, ptr addrspace(4) %arrayidx120.1.3, align 2, !dbg !79, !tbaa !60
  br label %if.end.1.3, !dbg !81

if.end.1.3.critedge:                              ; preds = %if.end.7.2
  store i16 0, ptr addrspace(3) %74, align 16, !dbg !80, !tbaa !60
  br label %if.end.1.3, !dbg !77

if.end.1.3:                                       ; preds = %if.end.1.3.critedge, %if.then105.3812
  %condval.sroa.0.0.1.3 = phi i16 [ %condval.sroa.0.0.copyload.1.3, %if.then105.3812 ], [ 0, %if.end.1.3.critedge ], !dbg !82
  store i16 %condval.sroa.0.0.1.3, ptr addrspace(3) %arrayidx49.1.3, align 2, !dbg !80, !tbaa !60
  br i1 %cmp104.3, label %if.then105.2.3, label %if.end.3.3.critedge, !dbg !77

if.then105.2.3:                                   ; preds = %if.end.1.3
  %188 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.2.3 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %189 = getelementptr inbounds i8, ptr addrspace(4) %188, i64 %.idx763.2.3, !dbg !78
  %arrayidx120.2.3 = getelementptr inbounds i8, ptr addrspace(4) %189, i64 3076, !dbg !78
  %condval.sroa.0.0.copyload.2.3 = load i16, ptr addrspace(4) %arrayidx120.2.3, align 2, !dbg !79, !tbaa !60
  store i16 %condval.sroa.0.0.copyload.2.3, ptr addrspace(3) %arrayidx49.2.3, align 4, !dbg !80, !tbaa !60
  %190 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.3.3 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %191 = getelementptr inbounds i8, ptr addrspace(4) %190, i64 %.idx763.3.3, !dbg !78
  %arrayidx120.3.3 = getelementptr inbounds i8, ptr addrspace(4) %191, i64 3078, !dbg !78
  %condval.sroa.0.0.copyload.3.3 = load i16, ptr addrspace(4) %arrayidx120.3.3, align 2, !dbg !79, !tbaa !60
  br label %if.end.3.3, !dbg !81

if.end.3.3.critedge:                              ; preds = %if.end.1.3
  store i16 0, ptr addrspace(3) %arrayidx49.2.3, align 4, !dbg !80, !tbaa !60
  br label %if.end.3.3, !dbg !77

if.end.3.3:                                       ; preds = %if.end.3.3.critedge, %if.then105.2.3
  %condval.sroa.0.0.3.3 = phi i16 [ %condval.sroa.0.0.copyload.3.3, %if.then105.2.3 ], [ 0, %if.end.3.3.critedge ], !dbg !82
  store i16 %condval.sroa.0.0.3.3, ptr addrspace(3) %arrayidx49.3.3, align 2, !dbg !80, !tbaa !60
  br i1 %cmp104.3, label %if.then105.4.3, label %if.end.5.3.critedge, !dbg !77

if.then105.4.3:                                   ; preds = %if.end.3.3
  %192 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.4.3 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %193 = getelementptr inbounds i8, ptr addrspace(4) %192, i64 %.idx763.4.3, !dbg !78
  %arrayidx120.4.3 = getelementptr inbounds i8, ptr addrspace(4) %193, i64 3080, !dbg !78
  %condval.sroa.0.0.copyload.4.3 = load i16, ptr addrspace(4) %arrayidx120.4.3, align 2, !dbg !79, !tbaa !60
  store i16 %condval.sroa.0.0.copyload.4.3, ptr addrspace(3) %arrayidx49.4.3, align 8, !dbg !80, !tbaa !60
  %194 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.5.3 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %195 = getelementptr inbounds i8, ptr addrspace(4) %194, i64 %.idx763.5.3, !dbg !78
  %arrayidx120.5.3 = getelementptr inbounds i8, ptr addrspace(4) %195, i64 3082, !dbg !78
  %condval.sroa.0.0.copyload.5.3 = load i16, ptr addrspace(4) %arrayidx120.5.3, align 2, !dbg !79, !tbaa !60
  br label %if.end.5.3, !dbg !81

if.end.5.3.critedge:                              ; preds = %if.end.3.3
  store i16 0, ptr addrspace(3) %arrayidx49.4.3, align 8, !dbg !80, !tbaa !60
  br label %if.end.5.3, !dbg !77

if.end.5.3:                                       ; preds = %if.end.5.3.critedge, %if.then105.4.3
  %condval.sroa.0.0.5.3 = phi i16 [ %condval.sroa.0.0.copyload.5.3, %if.then105.4.3 ], [ 0, %if.end.5.3.critedge ], !dbg !82
  store i16 %condval.sroa.0.0.5.3, ptr addrspace(3) %arrayidx49.5.3, align 2, !dbg !80, !tbaa !60
  br i1 %cmp104.3, label %if.then105.6.3, label %if.end.7.3.critedge, !dbg !77

if.then105.6.3:                                   ; preds = %if.end.5.3
  %196 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.6.3 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %197 = getelementptr inbounds i8, ptr addrspace(4) %196, i64 %.idx763.6.3, !dbg !78
  %arrayidx120.6.3 = getelementptr inbounds i8, ptr addrspace(4) %197, i64 3084, !dbg !78
  %condval.sroa.0.0.copyload.6.3 = load i16, ptr addrspace(4) %arrayidx120.6.3, align 2, !dbg !79, !tbaa !60
  store i16 %condval.sroa.0.0.copyload.6.3, ptr addrspace(3) %arrayidx49.6.3, align 4, !dbg !80, !tbaa !60
  %198 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.7.3 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %199 = getelementptr inbounds i8, ptr addrspace(4) %198, i64 %.idx763.7.3, !dbg !78
  %arrayidx120.7.3 = getelementptr inbounds i8, ptr addrspace(4) %199, i64 3086, !dbg !78
  %condval.sroa.0.0.copyload.7.3 = load i16, ptr addrspace(4) %arrayidx120.7.3, align 2, !dbg !79, !tbaa !60
  br label %if.end.7.3, !dbg !81

if.end.7.3.critedge:                              ; preds = %if.end.5.3
  store i16 0, ptr addrspace(3) %arrayidx49.6.3, align 4, !dbg !80, !tbaa !60
  br label %if.end.7.3, !dbg !77

if.end.7.3:                                       ; preds = %if.end.7.3.critedge, %if.then105.6.3
  %condval.sroa.0.0.7.3 = phi i16 [ %condval.sroa.0.0.copyload.7.3, %if.then105.6.3 ], [ 0, %if.end.7.3.critedge ], !dbg !82
  store i16 %condval.sroa.0.0.7.3, ptr addrspace(3) %arrayidx49.7.3, align 2, !dbg !80, !tbaa !60
  %cmp104.4 = icmp ult i32 %add101, 1008
  br i1 %cmp104.4, label %if.then105.4817, label %if.end.4819, !dbg !77

if.then105.4817:                                  ; preds = %if.end.7.3
  %200 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.4815 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %201 = getelementptr inbounds i8, ptr addrspace(4) %200, i64 %.idx763.4815, !dbg !78
  %202 = getelementptr inbounds i8, ptr addrspace(4) %201, i64 4096, !dbg !78
  %condval.sroa.0.0.copyload.4816 = load i16, ptr addrspace(4) %202, align 2, !dbg !79, !tbaa !60
  br label %if.end.4819, !dbg !81

if.end.4819:                                      ; preds = %if.then105.4817, %if.end.7.3
  %condval.sroa.0.0.4818 = phi i16 [ %condval.sroa.0.0.copyload.4816, %if.then105.4817 ], [ 0, %if.end.7.3 ], !dbg !82
  %203 = shl nuw nsw i32 %4, 9, !dbg !83
  %204 = or disjoint i32 %203, 2048, !dbg !83
  %205 = getelementptr inbounds i8, ptr addrspace(3) @buf_dyn_shmem, i32 %204, !dbg !83
  %206 = getelementptr inbounds %struct.__half, ptr addrspace(3) %205, i32 %mul35, !dbg !83
  %207 = getelementptr inbounds %struct.__half, ptr addrspace(3) %206, i32 %xor, !dbg !83
  store i16 %condval.sroa.0.0.4818, ptr addrspace(3) %207, align 16, !dbg !80, !tbaa !60
  br i1 %cmp104.4, label %if.then105.1.4, label %if.end.2.4.critedge, !dbg !77

if.then105.1.4:                                   ; preds = %if.end.4819
  %208 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.1.4 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %209 = getelementptr inbounds i8, ptr addrspace(4) %208, i64 %.idx763.1.4, !dbg !78
  %arrayidx120.1.4 = getelementptr inbounds i8, ptr addrspace(4) %209, i64 4098, !dbg !78
  %condval.sroa.0.0.copyload.1.4 = load i16, ptr addrspace(4) %arrayidx120.1.4, align 2, !dbg !79, !tbaa !60
  %arrayidx144.1.4 = getelementptr inbounds i8, ptr addrspace(3) %207, i32 2, !dbg !83
  store i16 %condval.sroa.0.0.copyload.1.4, ptr addrspace(3) %arrayidx144.1.4, align 2, !dbg !80, !tbaa !60
  %210 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.2.4 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %211 = getelementptr inbounds i8, ptr addrspace(4) %210, i64 %.idx763.2.4, !dbg !78
  %arrayidx120.2.4 = getelementptr inbounds i8, ptr addrspace(4) %211, i64 4100, !dbg !78
  %condval.sroa.0.0.copyload.2.4 = load i16, ptr addrspace(4) %arrayidx120.2.4, align 2, !dbg !79, !tbaa !60
  br label %if.end.2.4, !dbg !81

if.end.2.4.critedge:                              ; preds = %if.end.4819
  %arrayidx144.1.4.c = getelementptr inbounds i8, ptr addrspace(3) %207, i32 2, !dbg !83
  store i16 0, ptr addrspace(3) %arrayidx144.1.4.c, align 2, !dbg !80, !tbaa !60
  br label %if.end.2.4, !dbg !77

if.end.2.4:                                       ; preds = %if.end.2.4.critedge, %if.then105.1.4
  %condval.sroa.0.0.2.4 = phi i16 [ %condval.sroa.0.0.copyload.2.4, %if.then105.1.4 ], [ 0, %if.end.2.4.critedge ], !dbg !82
  %arrayidx144.2.4 = getelementptr inbounds i8, ptr addrspace(3) %207, i32 4, !dbg !83
  store i16 %condval.sroa.0.0.2.4, ptr addrspace(3) %arrayidx144.2.4, align 4, !dbg !80, !tbaa !60
  br i1 %cmp104.4, label %if.then105.3.4, label %if.end.4.4.critedge, !dbg !77

if.then105.3.4:                                   ; preds = %if.end.2.4
  %212 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.3.4 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %213 = getelementptr inbounds i8, ptr addrspace(4) %212, i64 %.idx763.3.4, !dbg !78
  %arrayidx120.3.4 = getelementptr inbounds i8, ptr addrspace(4) %213, i64 4102, !dbg !78
  %condval.sroa.0.0.copyload.3.4 = load i16, ptr addrspace(4) %arrayidx120.3.4, align 2, !dbg !79, !tbaa !60
  %arrayidx144.3.4 = getelementptr inbounds i8, ptr addrspace(3) %207, i32 6, !dbg !83
  store i16 %condval.sroa.0.0.copyload.3.4, ptr addrspace(3) %arrayidx144.3.4, align 2, !dbg !80, !tbaa !60
  %214 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.4.4 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %215 = getelementptr inbounds i8, ptr addrspace(4) %214, i64 %.idx763.4.4, !dbg !78
  %arrayidx120.4.4 = getelementptr inbounds i8, ptr addrspace(4) %215, i64 4104, !dbg !78
  %condval.sroa.0.0.copyload.4.4 = load i16, ptr addrspace(4) %arrayidx120.4.4, align 2, !dbg !79, !tbaa !60
  br label %if.end.4.4, !dbg !81

if.end.4.4.critedge:                              ; preds = %if.end.2.4
  %arrayidx144.3.4.c = getelementptr inbounds i8, ptr addrspace(3) %207, i32 6, !dbg !83
  store i16 0, ptr addrspace(3) %arrayidx144.3.4.c, align 2, !dbg !80, !tbaa !60
  br label %if.end.4.4, !dbg !77

if.end.4.4:                                       ; preds = %if.end.4.4.critedge, %if.then105.3.4
  %condval.sroa.0.0.4.4 = phi i16 [ %condval.sroa.0.0.copyload.4.4, %if.then105.3.4 ], [ 0, %if.end.4.4.critedge ], !dbg !82
  %arrayidx144.4.4 = getelementptr inbounds i8, ptr addrspace(3) %207, i32 8, !dbg !83
  store i16 %condval.sroa.0.0.4.4, ptr addrspace(3) %arrayidx144.4.4, align 8, !dbg !80, !tbaa !60
  br i1 %cmp104.4, label %if.then105.5.4, label %if.end.6.4.critedge, !dbg !77

if.then105.5.4:                                   ; preds = %if.end.4.4
  %216 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.5.4 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %217 = getelementptr inbounds i8, ptr addrspace(4) %216, i64 %.idx763.5.4, !dbg !78
  %arrayidx120.5.4 = getelementptr inbounds i8, ptr addrspace(4) %217, i64 4106, !dbg !78
  %condval.sroa.0.0.copyload.5.4 = load i16, ptr addrspace(4) %arrayidx120.5.4, align 2, !dbg !79, !tbaa !60
  %arrayidx144.5.4 = getelementptr inbounds i8, ptr addrspace(3) %207, i32 10, !dbg !83
  store i16 %condval.sroa.0.0.copyload.5.4, ptr addrspace(3) %arrayidx144.5.4, align 2, !dbg !80, !tbaa !60
  %218 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.6.4 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %219 = getelementptr inbounds i8, ptr addrspace(4) %218, i64 %.idx763.6.4, !dbg !78
  %arrayidx120.6.4 = getelementptr inbounds i8, ptr addrspace(4) %219, i64 4108, !dbg !78
  %condval.sroa.0.0.copyload.6.4 = load i16, ptr addrspace(4) %arrayidx120.6.4, align 2, !dbg !79, !tbaa !60
  br label %if.end.6.4, !dbg !81

if.end.6.4.critedge:                              ; preds = %if.end.4.4
  %arrayidx144.5.4.c = getelementptr inbounds i8, ptr addrspace(3) %207, i32 10, !dbg !83
  store i16 0, ptr addrspace(3) %arrayidx144.5.4.c, align 2, !dbg !80, !tbaa !60
  br label %if.end.6.4, !dbg !77

if.end.6.4:                                       ; preds = %if.end.6.4.critedge, %if.then105.5.4
  %condval.sroa.0.0.6.4 = phi i16 [ %condval.sroa.0.0.copyload.6.4, %if.then105.5.4 ], [ 0, %if.end.6.4.critedge ], !dbg !82
  %arrayidx144.6.4 = getelementptr inbounds i8, ptr addrspace(3) %207, i32 12, !dbg !83
  store i16 %condval.sroa.0.0.6.4, ptr addrspace(3) %arrayidx144.6.4, align 4, !dbg !80, !tbaa !60
  br i1 %cmp104.4, label %if.then105.7.4, label %if.end.7.4, !dbg !77

if.then105.7.4:                                   ; preds = %if.end.6.4
  %220 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.7.4 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %221 = getelementptr inbounds i8, ptr addrspace(4) %220, i64 %.idx763.7.4, !dbg !78
  %arrayidx120.7.4 = getelementptr inbounds i8, ptr addrspace(4) %221, i64 4110, !dbg !78
  %condval.sroa.0.0.copyload.7.4 = load i16, ptr addrspace(4) %arrayidx120.7.4, align 2, !dbg !79, !tbaa !60
  br label %if.end.7.4, !dbg !81

if.end.7.4:                                       ; preds = %if.then105.7.4, %if.end.6.4
  %condval.sroa.0.0.7.4 = phi i16 [ %condval.sroa.0.0.copyload.7.4, %if.then105.7.4 ], [ 0, %if.end.6.4 ], !dbg !82
  %arrayidx144.7.4 = getelementptr inbounds i8, ptr addrspace(3) %207, i32 14, !dbg !83
  store i16 %condval.sroa.0.0.7.4, ptr addrspace(3) %arrayidx144.7.4, align 2, !dbg !80, !tbaa !60
  %cmp104.5 = icmp ult i32 %add101, 1004
  br i1 %cmp104.5, label %if.then105.5822, label %if.end.5824, !dbg !77

if.then105.5822:                                  ; preds = %if.end.7.4
  %222 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.5820 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %223 = getelementptr inbounds i8, ptr addrspace(4) %222, i64 %.idx763.5820, !dbg !78
  %224 = getelementptr inbounds i8, ptr addrspace(4) %223, i64 5120, !dbg !78
  %condval.sroa.0.0.copyload.5821 = load i16, ptr addrspace(4) %224, align 2, !dbg !79, !tbaa !60
  br label %if.end.5824, !dbg !81

if.end.5824:                                      ; preds = %if.then105.5822, %if.end.7.4
  %condval.sroa.0.0.5823 = phi i16 [ %condval.sroa.0.0.copyload.5821, %if.then105.5822 ], [ 0, %if.end.7.4 ], !dbg !82
  %225 = shl nuw nsw i32 %4, 9, !dbg !83
  %226 = or disjoint i32 %225, 2560, !dbg !83
  %227 = getelementptr inbounds i8, ptr addrspace(3) @buf_dyn_shmem, i32 %226, !dbg !83
  %228 = getelementptr inbounds %struct.__half, ptr addrspace(3) %227, i32 %mul35, !dbg !83
  %229 = getelementptr inbounds %struct.__half, ptr addrspace(3) %228, i32 %xor.1, !dbg !83
  store i16 %condval.sroa.0.0.5823, ptr addrspace(3) %229, align 16, !dbg !80, !tbaa !60
  br i1 %cmp104.5, label %if.then105.1.5, label %if.end.2.5.critedge, !dbg !77

if.then105.1.5:                                   ; preds = %if.end.5824
  %230 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.1.5 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %231 = getelementptr inbounds i8, ptr addrspace(4) %230, i64 %.idx763.1.5, !dbg !78
  %arrayidx120.1.5 = getelementptr inbounds i8, ptr addrspace(4) %231, i64 5122, !dbg !78
  %condval.sroa.0.0.copyload.1.5 = load i16, ptr addrspace(4) %arrayidx120.1.5, align 2, !dbg !79, !tbaa !60
  %arrayidx144.1.5 = getelementptr inbounds i8, ptr addrspace(3) %229, i32 2, !dbg !83
  store i16 %condval.sroa.0.0.copyload.1.5, ptr addrspace(3) %arrayidx144.1.5, align 2, !dbg !80, !tbaa !60
  %232 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.2.5 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %233 = getelementptr inbounds i8, ptr addrspace(4) %232, i64 %.idx763.2.5, !dbg !78
  %arrayidx120.2.5 = getelementptr inbounds i8, ptr addrspace(4) %233, i64 5124, !dbg !78
  %condval.sroa.0.0.copyload.2.5 = load i16, ptr addrspace(4) %arrayidx120.2.5, align 2, !dbg !79, !tbaa !60
  br label %if.end.2.5, !dbg !81

if.end.2.5.critedge:                              ; preds = %if.end.5824
  %arrayidx144.1.5.c = getelementptr inbounds i8, ptr addrspace(3) %229, i32 2, !dbg !83
  store i16 0, ptr addrspace(3) %arrayidx144.1.5.c, align 2, !dbg !80, !tbaa !60
  br label %if.end.2.5, !dbg !77

if.end.2.5:                                       ; preds = %if.end.2.5.critedge, %if.then105.1.5
  %condval.sroa.0.0.2.5 = phi i16 [ %condval.sroa.0.0.copyload.2.5, %if.then105.1.5 ], [ 0, %if.end.2.5.critedge ], !dbg !82
  %arrayidx144.2.5 = getelementptr inbounds i8, ptr addrspace(3) %229, i32 4, !dbg !83
  store i16 %condval.sroa.0.0.2.5, ptr addrspace(3) %arrayidx144.2.5, align 4, !dbg !80, !tbaa !60
  br i1 %cmp104.5, label %if.then105.3.5, label %if.end.4.5.critedge, !dbg !77

if.then105.3.5:                                   ; preds = %if.end.2.5
  %234 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.3.5 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %235 = getelementptr inbounds i8, ptr addrspace(4) %234, i64 %.idx763.3.5, !dbg !78
  %arrayidx120.3.5 = getelementptr inbounds i8, ptr addrspace(4) %235, i64 5126, !dbg !78
  %condval.sroa.0.0.copyload.3.5 = load i16, ptr addrspace(4) %arrayidx120.3.5, align 2, !dbg !79, !tbaa !60
  %arrayidx144.3.5 = getelementptr inbounds i8, ptr addrspace(3) %229, i32 6, !dbg !83
  store i16 %condval.sroa.0.0.copyload.3.5, ptr addrspace(3) %arrayidx144.3.5, align 2, !dbg !80, !tbaa !60
  %236 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.4.5 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %237 = getelementptr inbounds i8, ptr addrspace(4) %236, i64 %.idx763.4.5, !dbg !78
  %arrayidx120.4.5 = getelementptr inbounds i8, ptr addrspace(4) %237, i64 5128, !dbg !78
  %condval.sroa.0.0.copyload.4.5 = load i16, ptr addrspace(4) %arrayidx120.4.5, align 2, !dbg !79, !tbaa !60
  br label %if.end.4.5, !dbg !81

if.end.4.5.critedge:                              ; preds = %if.end.2.5
  %arrayidx144.3.5.c = getelementptr inbounds i8, ptr addrspace(3) %229, i32 6, !dbg !83
  store i16 0, ptr addrspace(3) %arrayidx144.3.5.c, align 2, !dbg !80, !tbaa !60
  br label %if.end.4.5, !dbg !77

if.end.4.5:                                       ; preds = %if.end.4.5.critedge, %if.then105.3.5
  %condval.sroa.0.0.4.5 = phi i16 [ %condval.sroa.0.0.copyload.4.5, %if.then105.3.5 ], [ 0, %if.end.4.5.critedge ], !dbg !82
  %arrayidx144.4.5 = getelementptr inbounds i8, ptr addrspace(3) %229, i32 8, !dbg !83
  store i16 %condval.sroa.0.0.4.5, ptr addrspace(3) %arrayidx144.4.5, align 8, !dbg !80, !tbaa !60
  br i1 %cmp104.5, label %if.then105.5.5, label %if.end.6.5.critedge, !dbg !77

if.then105.5.5:                                   ; preds = %if.end.4.5
  %238 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.5.5 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %239 = getelementptr inbounds i8, ptr addrspace(4) %238, i64 %.idx763.5.5, !dbg !78
  %arrayidx120.5.5 = getelementptr inbounds i8, ptr addrspace(4) %239, i64 5130, !dbg !78
  %condval.sroa.0.0.copyload.5.5 = load i16, ptr addrspace(4) %arrayidx120.5.5, align 2, !dbg !79, !tbaa !60
  %arrayidx144.5.5 = getelementptr inbounds i8, ptr addrspace(3) %229, i32 10, !dbg !83
  store i16 %condval.sroa.0.0.copyload.5.5, ptr addrspace(3) %arrayidx144.5.5, align 2, !dbg !80, !tbaa !60
  %240 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.6.5 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %241 = getelementptr inbounds i8, ptr addrspace(4) %240, i64 %.idx763.6.5, !dbg !78
  %arrayidx120.6.5 = getelementptr inbounds i8, ptr addrspace(4) %241, i64 5132, !dbg !78
  %condval.sroa.0.0.copyload.6.5 = load i16, ptr addrspace(4) %arrayidx120.6.5, align 2, !dbg !79, !tbaa !60
  br label %if.end.6.5, !dbg !81

if.end.6.5.critedge:                              ; preds = %if.end.4.5
  %arrayidx144.5.5.c = getelementptr inbounds i8, ptr addrspace(3) %229, i32 10, !dbg !83
  store i16 0, ptr addrspace(3) %arrayidx144.5.5.c, align 2, !dbg !80, !tbaa !60
  br label %if.end.6.5, !dbg !77

if.end.6.5:                                       ; preds = %if.end.6.5.critedge, %if.then105.5.5
  %condval.sroa.0.0.6.5 = phi i16 [ %condval.sroa.0.0.copyload.6.5, %if.then105.5.5 ], [ 0, %if.end.6.5.critedge ], !dbg !82
  %arrayidx144.6.5 = getelementptr inbounds i8, ptr addrspace(3) %229, i32 12, !dbg !83
  store i16 %condval.sroa.0.0.6.5, ptr addrspace(3) %arrayidx144.6.5, align 4, !dbg !80, !tbaa !60
  br i1 %cmp104.5, label %if.then105.7.5, label %if.end.7.5, !dbg !77

if.then105.7.5:                                   ; preds = %if.end.6.5
  %242 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.7.5 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %243 = getelementptr inbounds i8, ptr addrspace(4) %242, i64 %.idx763.7.5, !dbg !78
  %arrayidx120.7.5 = getelementptr inbounds i8, ptr addrspace(4) %243, i64 5134, !dbg !78
  %condval.sroa.0.0.copyload.7.5 = load i16, ptr addrspace(4) %arrayidx120.7.5, align 2, !dbg !79, !tbaa !60
  br label %if.end.7.5, !dbg !81

if.end.7.5:                                       ; preds = %if.then105.7.5, %if.end.6.5
  %condval.sroa.0.0.7.5 = phi i16 [ %condval.sroa.0.0.copyload.7.5, %if.then105.7.5 ], [ 0, %if.end.6.5 ], !dbg !82
  %arrayidx144.7.5 = getelementptr inbounds i8, ptr addrspace(3) %229, i32 14, !dbg !83
  store i16 %condval.sroa.0.0.7.5, ptr addrspace(3) %arrayidx144.7.5, align 2, !dbg !80, !tbaa !60
  %cmp104.6 = icmp ult i32 %add101, 1000
  br i1 %cmp104.6, label %if.then105.6827, label %if.end.6829, !dbg !77

if.then105.6827:                                  ; preds = %if.end.7.5
  %244 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.6825 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %245 = getelementptr inbounds i8, ptr addrspace(4) %244, i64 %.idx763.6825, !dbg !78
  %246 = getelementptr inbounds i8, ptr addrspace(4) %245, i64 6144, !dbg !78
  %condval.sroa.0.0.copyload.6826 = load i16, ptr addrspace(4) %246, align 2, !dbg !79, !tbaa !60
  br label %if.end.6829, !dbg !81

if.end.6829:                                      ; preds = %if.then105.6827, %if.end.7.5
  %condval.sroa.0.0.6828 = phi i16 [ %condval.sroa.0.0.copyload.6826, %if.then105.6827 ], [ 0, %if.end.7.5 ], !dbg !82
  %247 = shl nuw nsw i32 %4, 9, !dbg !83
  %248 = or disjoint i32 %247, 3072, !dbg !83
  %249 = getelementptr inbounds i8, ptr addrspace(3) @buf_dyn_shmem, i32 %248, !dbg !83
  %250 = getelementptr inbounds %struct.__half, ptr addrspace(3) %249, i32 %mul35, !dbg !83
  %251 = getelementptr inbounds %struct.__half, ptr addrspace(3) %250, i32 %xor, !dbg !83
  store i16 %condval.sroa.0.0.6828, ptr addrspace(3) %251, align 16, !dbg !80, !tbaa !60
  br i1 %cmp104.6, label %if.then105.1.6, label %if.end.2.6.critedge, !dbg !77

if.then105.1.6:                                   ; preds = %if.end.6829
  %252 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.1.6 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %253 = getelementptr inbounds i8, ptr addrspace(4) %252, i64 %.idx763.1.6, !dbg !78
  %arrayidx120.1.6 = getelementptr inbounds i8, ptr addrspace(4) %253, i64 6146, !dbg !78
  %condval.sroa.0.0.copyload.1.6 = load i16, ptr addrspace(4) %arrayidx120.1.6, align 2, !dbg !79, !tbaa !60
  %arrayidx144.1.6 = getelementptr inbounds i8, ptr addrspace(3) %251, i32 2, !dbg !83
  store i16 %condval.sroa.0.0.copyload.1.6, ptr addrspace(3) %arrayidx144.1.6, align 2, !dbg !80, !tbaa !60
  %254 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.2.6 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %255 = getelementptr inbounds i8, ptr addrspace(4) %254, i64 %.idx763.2.6, !dbg !78
  %arrayidx120.2.6 = getelementptr inbounds i8, ptr addrspace(4) %255, i64 6148, !dbg !78
  %condval.sroa.0.0.copyload.2.6 = load i16, ptr addrspace(4) %arrayidx120.2.6, align 2, !dbg !79, !tbaa !60
  br label %if.end.2.6, !dbg !81

if.end.2.6.critedge:                              ; preds = %if.end.6829
  %arrayidx144.1.6.c = getelementptr inbounds i8, ptr addrspace(3) %251, i32 2, !dbg !83
  store i16 0, ptr addrspace(3) %arrayidx144.1.6.c, align 2, !dbg !80, !tbaa !60
  br label %if.end.2.6, !dbg !77

if.end.2.6:                                       ; preds = %if.end.2.6.critedge, %if.then105.1.6
  %condval.sroa.0.0.2.6 = phi i16 [ %condval.sroa.0.0.copyload.2.6, %if.then105.1.6 ], [ 0, %if.end.2.6.critedge ], !dbg !82
  %arrayidx144.2.6 = getelementptr inbounds i8, ptr addrspace(3) %251, i32 4, !dbg !83
  store i16 %condval.sroa.0.0.2.6, ptr addrspace(3) %arrayidx144.2.6, align 4, !dbg !80, !tbaa !60
  br i1 %cmp104.6, label %if.then105.3.6, label %if.end.4.6.critedge, !dbg !77

if.then105.3.6:                                   ; preds = %if.end.2.6
  %256 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.3.6 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %257 = getelementptr inbounds i8, ptr addrspace(4) %256, i64 %.idx763.3.6, !dbg !78
  %arrayidx120.3.6 = getelementptr inbounds i8, ptr addrspace(4) %257, i64 6150, !dbg !78
  %condval.sroa.0.0.copyload.3.6 = load i16, ptr addrspace(4) %arrayidx120.3.6, align 2, !dbg !79, !tbaa !60
  %arrayidx144.3.6 = getelementptr inbounds i8, ptr addrspace(3) %251, i32 6, !dbg !83
  store i16 %condval.sroa.0.0.copyload.3.6, ptr addrspace(3) %arrayidx144.3.6, align 2, !dbg !80, !tbaa !60
  %258 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.4.6 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %259 = getelementptr inbounds i8, ptr addrspace(4) %258, i64 %.idx763.4.6, !dbg !78
  %arrayidx120.4.6 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 6152, !dbg !78
  %condval.sroa.0.0.copyload.4.6 = load i16, ptr addrspace(4) %arrayidx120.4.6, align 2, !dbg !79, !tbaa !60
  br label %if.end.4.6, !dbg !81

if.end.4.6.critedge:                              ; preds = %if.end.2.6
  %arrayidx144.3.6.c = getelementptr inbounds i8, ptr addrspace(3) %251, i32 6, !dbg !83
  store i16 0, ptr addrspace(3) %arrayidx144.3.6.c, align 2, !dbg !80, !tbaa !60
  br label %if.end.4.6, !dbg !77

if.end.4.6:                                       ; preds = %if.end.4.6.critedge, %if.then105.3.6
  %condval.sroa.0.0.4.6 = phi i16 [ %condval.sroa.0.0.copyload.4.6, %if.then105.3.6 ], [ 0, %if.end.4.6.critedge ], !dbg !82
  %arrayidx144.4.6 = getelementptr inbounds i8, ptr addrspace(3) %251, i32 8, !dbg !83
  store i16 %condval.sroa.0.0.4.6, ptr addrspace(3) %arrayidx144.4.6, align 8, !dbg !80, !tbaa !60
  br i1 %cmp104.6, label %if.then105.5.6, label %if.end.6.6.critedge, !dbg !77

if.then105.5.6:                                   ; preds = %if.end.4.6
  %260 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.5.6 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %261 = getelementptr inbounds i8, ptr addrspace(4) %260, i64 %.idx763.5.6, !dbg !78
  %arrayidx120.5.6 = getelementptr inbounds i8, ptr addrspace(4) %261, i64 6154, !dbg !78
  %condval.sroa.0.0.copyload.5.6 = load i16, ptr addrspace(4) %arrayidx120.5.6, align 2, !dbg !79, !tbaa !60
  %arrayidx144.5.6 = getelementptr inbounds i8, ptr addrspace(3) %251, i32 10, !dbg !83
  store i16 %condval.sroa.0.0.copyload.5.6, ptr addrspace(3) %arrayidx144.5.6, align 2, !dbg !80, !tbaa !60
  %262 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.6.6 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %263 = getelementptr inbounds i8, ptr addrspace(4) %262, i64 %.idx763.6.6, !dbg !78
  %arrayidx120.6.6 = getelementptr inbounds i8, ptr addrspace(4) %263, i64 6156, !dbg !78
  %condval.sroa.0.0.copyload.6.6 = load i16, ptr addrspace(4) %arrayidx120.6.6, align 2, !dbg !79, !tbaa !60
  br label %if.end.6.6, !dbg !81

if.end.6.6.critedge:                              ; preds = %if.end.4.6
  %arrayidx144.5.6.c = getelementptr inbounds i8, ptr addrspace(3) %251, i32 10, !dbg !83
  store i16 0, ptr addrspace(3) %arrayidx144.5.6.c, align 2, !dbg !80, !tbaa !60
  br label %if.end.6.6, !dbg !77

if.end.6.6:                                       ; preds = %if.end.6.6.critedge, %if.then105.5.6
  %condval.sroa.0.0.6.6 = phi i16 [ %condval.sroa.0.0.copyload.6.6, %if.then105.5.6 ], [ 0, %if.end.6.6.critedge ], !dbg !82
  %arrayidx144.6.6 = getelementptr inbounds i8, ptr addrspace(3) %251, i32 12, !dbg !83
  store i16 %condval.sroa.0.0.6.6, ptr addrspace(3) %arrayidx144.6.6, align 4, !dbg !80, !tbaa !60
  br i1 %cmp104.6, label %if.then105.7.6, label %if.end.7.6, !dbg !77

if.then105.7.6:                                   ; preds = %if.end.6.6
  %264 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.7.6 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %265 = getelementptr inbounds i8, ptr addrspace(4) %264, i64 %.idx763.7.6, !dbg !78
  %arrayidx120.7.6 = getelementptr inbounds i8, ptr addrspace(4) %265, i64 6158, !dbg !78
  %condval.sroa.0.0.copyload.7.6 = load i16, ptr addrspace(4) %arrayidx120.7.6, align 2, !dbg !79, !tbaa !60
  br label %if.end.7.6, !dbg !81

if.end.7.6:                                       ; preds = %if.then105.7.6, %if.end.6.6
  %condval.sroa.0.0.7.6 = phi i16 [ %condval.sroa.0.0.copyload.7.6, %if.then105.7.6 ], [ 0, %if.end.6.6 ], !dbg !82
  %arrayidx144.7.6 = getelementptr inbounds i8, ptr addrspace(3) %251, i32 14, !dbg !83
  store i16 %condval.sroa.0.0.7.6, ptr addrspace(3) %arrayidx144.7.6, align 2, !dbg !80, !tbaa !60
  %cmp104.7 = icmp ult i32 %add101, 996
  br i1 %cmp104.7, label %if.then105.7832, label %if.end.7834, !dbg !77

if.then105.7832:                                  ; preds = %if.end.7.6
  %266 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.7830 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %267 = getelementptr inbounds i8, ptr addrspace(4) %266, i64 %.idx763.7830, !dbg !78
  %268 = getelementptr inbounds i8, ptr addrspace(4) %267, i64 7168, !dbg !78
  %condval.sroa.0.0.copyload.7831 = load i16, ptr addrspace(4) %268, align 2, !dbg !79, !tbaa !60
  br label %if.end.7834, !dbg !81

if.end.7834:                                      ; preds = %if.then105.7832, %if.end.7.6
  %condval.sroa.0.0.7833 = phi i16 [ %condval.sroa.0.0.copyload.7831, %if.then105.7832 ], [ 0, %if.end.7.6 ], !dbg !82
  %269 = shl nuw nsw i32 %4, 9, !dbg !83
  %270 = or disjoint i32 %269, 3584, !dbg !83
  %271 = getelementptr inbounds i8, ptr addrspace(3) @buf_dyn_shmem, i32 %270, !dbg !83
  %272 = getelementptr inbounds %struct.__half, ptr addrspace(3) %271, i32 %mul35, !dbg !83
  %273 = getelementptr inbounds %struct.__half, ptr addrspace(3) %272, i32 %xor.1, !dbg !83
  store i16 %condval.sroa.0.0.7833, ptr addrspace(3) %273, align 16, !dbg !80, !tbaa !60
  br i1 %cmp104.7, label %if.then105.1.7, label %if.end.2.7.critedge, !dbg !77

if.then105.1.7:                                   ; preds = %if.end.7834
  %274 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.1.7 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %275 = getelementptr inbounds i8, ptr addrspace(4) %274, i64 %.idx763.1.7, !dbg !78
  %arrayidx120.1.7 = getelementptr inbounds i8, ptr addrspace(4) %275, i64 7170, !dbg !78
  %condval.sroa.0.0.copyload.1.7 = load i16, ptr addrspace(4) %arrayidx120.1.7, align 2, !dbg !79, !tbaa !60
  %arrayidx144.1.7 = getelementptr inbounds i8, ptr addrspace(3) %273, i32 2, !dbg !83
  store i16 %condval.sroa.0.0.copyload.1.7, ptr addrspace(3) %arrayidx144.1.7, align 2, !dbg !80, !tbaa !60
  %276 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.2.7 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %277 = getelementptr inbounds i8, ptr addrspace(4) %276, i64 %.idx763.2.7, !dbg !78
  %arrayidx120.2.7 = getelementptr inbounds i8, ptr addrspace(4) %277, i64 7172, !dbg !78
  %condval.sroa.0.0.copyload.2.7 = load i16, ptr addrspace(4) %arrayidx120.2.7, align 2, !dbg !79, !tbaa !60
  br label %if.end.2.7, !dbg !81

if.end.2.7.critedge:                              ; preds = %if.end.7834
  %arrayidx144.1.7.c = getelementptr inbounds i8, ptr addrspace(3) %273, i32 2, !dbg !83
  store i16 0, ptr addrspace(3) %arrayidx144.1.7.c, align 2, !dbg !80, !tbaa !60
  br label %if.end.2.7, !dbg !77

if.end.2.7:                                       ; preds = %if.end.2.7.critedge, %if.then105.1.7
  %condval.sroa.0.0.2.7 = phi i16 [ %condval.sroa.0.0.copyload.2.7, %if.then105.1.7 ], [ 0, %if.end.2.7.critedge ], !dbg !82
  %arrayidx144.2.7 = getelementptr inbounds i8, ptr addrspace(3) %273, i32 4, !dbg !83
  store i16 %condval.sroa.0.0.2.7, ptr addrspace(3) %arrayidx144.2.7, align 4, !dbg !80, !tbaa !60
  br i1 %cmp104.7, label %if.then105.3.7, label %if.end.4.7.critedge, !dbg !77

if.then105.3.7:                                   ; preds = %if.end.2.7
  %278 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.3.7 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %279 = getelementptr inbounds i8, ptr addrspace(4) %278, i64 %.idx763.3.7, !dbg !78
  %arrayidx120.3.7 = getelementptr inbounds i8, ptr addrspace(4) %279, i64 7174, !dbg !78
  %condval.sroa.0.0.copyload.3.7 = load i16, ptr addrspace(4) %arrayidx120.3.7, align 2, !dbg !79, !tbaa !60
  %arrayidx144.3.7 = getelementptr inbounds i8, ptr addrspace(3) %273, i32 6, !dbg !83
  store i16 %condval.sroa.0.0.copyload.3.7, ptr addrspace(3) %arrayidx144.3.7, align 2, !dbg !80, !tbaa !60
  %280 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.4.7 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %281 = getelementptr inbounds i8, ptr addrspace(4) %280, i64 %.idx763.4.7, !dbg !78
  %arrayidx120.4.7 = getelementptr inbounds i8, ptr addrspace(4) %281, i64 7176, !dbg !78
  %condval.sroa.0.0.copyload.4.7 = load i16, ptr addrspace(4) %arrayidx120.4.7, align 2, !dbg !79, !tbaa !60
  br label %if.end.4.7, !dbg !81

if.end.4.7.critedge:                              ; preds = %if.end.2.7
  %arrayidx144.3.7.c = getelementptr inbounds i8, ptr addrspace(3) %273, i32 6, !dbg !83
  store i16 0, ptr addrspace(3) %arrayidx144.3.7.c, align 2, !dbg !80, !tbaa !60
  br label %if.end.4.7, !dbg !77

if.end.4.7:                                       ; preds = %if.end.4.7.critedge, %if.then105.3.7
  %condval.sroa.0.0.4.7 = phi i16 [ %condval.sroa.0.0.copyload.4.7, %if.then105.3.7 ], [ 0, %if.end.4.7.critedge ], !dbg !82
  %arrayidx144.4.7 = getelementptr inbounds i8, ptr addrspace(3) %273, i32 8, !dbg !83
  store i16 %condval.sroa.0.0.4.7, ptr addrspace(3) %arrayidx144.4.7, align 8, !dbg !80, !tbaa !60
  br i1 %cmp104.7, label %if.then105.5.7, label %if.end.6.7.critedge, !dbg !77

if.then105.5.7:                                   ; preds = %if.end.4.7
  %282 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.5.7 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %283 = getelementptr inbounds i8, ptr addrspace(4) %282, i64 %.idx763.5.7, !dbg !78
  %arrayidx120.5.7 = getelementptr inbounds i8, ptr addrspace(4) %283, i64 7178, !dbg !78
  %condval.sroa.0.0.copyload.5.7 = load i16, ptr addrspace(4) %arrayidx120.5.7, align 2, !dbg !79, !tbaa !60
  %arrayidx144.5.7 = getelementptr inbounds i8, ptr addrspace(3) %273, i32 10, !dbg !83
  store i16 %condval.sroa.0.0.copyload.5.7, ptr addrspace(3) %arrayidx144.5.7, align 2, !dbg !80, !tbaa !60
  %284 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.6.7 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %285 = getelementptr inbounds i8, ptr addrspace(4) %284, i64 %.idx763.6.7, !dbg !78
  %arrayidx120.6.7 = getelementptr inbounds i8, ptr addrspace(4) %285, i64 7180, !dbg !78
  %condval.sroa.0.0.copyload.6.7 = load i16, ptr addrspace(4) %arrayidx120.6.7, align 2, !dbg !79, !tbaa !60
  br label %if.end.6.7, !dbg !81

if.end.6.7.critedge:                              ; preds = %if.end.4.7
  %arrayidx144.5.7.c = getelementptr inbounds i8, ptr addrspace(3) %273, i32 10, !dbg !83
  store i16 0, ptr addrspace(3) %arrayidx144.5.7.c, align 2, !dbg !80, !tbaa !60
  br label %if.end.6.7, !dbg !77

if.end.6.7:                                       ; preds = %if.end.6.7.critedge, %if.then105.5.7
  %condval.sroa.0.0.6.7 = phi i16 [ %condval.sroa.0.0.copyload.6.7, %if.then105.5.7 ], [ 0, %if.end.6.7.critedge ], !dbg !82
  %arrayidx144.6.7 = getelementptr inbounds i8, ptr addrspace(3) %273, i32 12, !dbg !83
  store i16 %condval.sroa.0.0.6.7, ptr addrspace(3) %arrayidx144.6.7, align 4, !dbg !80, !tbaa !60
  br i1 %cmp104.7, label %if.then105.7.7, label %if.end.7.7, !dbg !77

if.then105.7.7:                                   ; preds = %if.end.6.7
  %286 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add110, !dbg !78
  %.idx763.7.7 = shl nuw nsw i64 %conv111, 8, !dbg !78
  %287 = getelementptr inbounds i8, ptr addrspace(4) %286, i64 %.idx763.7.7, !dbg !78
  %arrayidx120.7.7 = getelementptr inbounds i8, ptr addrspace(4) %287, i64 7182, !dbg !78
  %condval.sroa.0.0.copyload.7.7 = load i16, ptr addrspace(4) %arrayidx120.7.7, align 2, !dbg !79, !tbaa !60
  br label %if.end.7.7, !dbg !81

if.end.7.7:                                       ; preds = %if.then105.7.7, %if.end.6.7
  %condval.sroa.0.0.7.7 = phi i16 [ %condval.sroa.0.0.copyload.7.7, %if.then105.7.7 ], [ 0, %if.end.6.7 ], !dbg !82
  %arrayidx144.7.7 = getelementptr inbounds i8, ptr addrspace(3) %273, i32 14, !dbg !83
  store i16 %condval.sroa.0.0.7.7, ptr addrspace(3) %arrayidx144.7.7, align 2, !dbg !80, !tbaa !60
  fence syncscope("warp") release, !dbg !84
  tail call void @llvm.mxc.barrier.warp(), !dbg !87
  fence syncscope("warp") acquire, !dbg !88
  %288 = load half, ptr addrspace(3) %92, align 8, !dbg !89, !tbaa !60
  %k_local.sroa.0.0.vec.insert = insertelement <4 x half> poison, half %288, i64 0, !dbg !89
  %289 = load half, ptr addrspace(3) %arrayidx80.1, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.2.vec.insert = insertelement <4 x half> %k_local.sroa.0.0.vec.insert, half %289, i64 1, !dbg !89
  %290 = load half, ptr addrspace(3) %arrayidx80.2, align 4, !dbg !89, !tbaa !60
  %k_local.sroa.0.4.vec.insert = insertelement <4 x half> %k_local.sroa.0.2.vec.insert, half %290, i64 2, !dbg !89
  %291 = load half, ptr addrspace(3) %arrayidx80.3, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.6.vec.insert = insertelement <4 x half> %k_local.sroa.0.4.vec.insert, half %291, i64 3, !dbg !89
  %292 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert, <4 x half> %q_local.sroa.0.6.vec.insert, <4 x float> zeroinitializer), !dbg !90
  %293 = getelementptr inbounds i8, ptr addrspace(3) %92, i32 2048, !dbg !91
  %294 = load half, ptr addrspace(3) %293, align 8, !dbg !89, !tbaa !60
  %k_local.sroa.0.0.vec.insert1408 = insertelement <4 x half> poison, half %294, i64 0, !dbg !89
  %arrayidx194.1.1 = getelementptr inbounds i8, ptr addrspace(3) %92, i32 2050, !dbg !91
  %295 = load half, ptr addrspace(3) %arrayidx194.1.1, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.2.vec.insert1438 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1408, half %295, i64 1, !dbg !89
  %arrayidx194.2.1 = getelementptr inbounds i8, ptr addrspace(3) %92, i32 2052, !dbg !91
  %296 = load half, ptr addrspace(3) %arrayidx194.2.1, align 4, !dbg !89, !tbaa !60
  %k_local.sroa.0.4.vec.insert1468 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1438, half %296, i64 2, !dbg !89
  %arrayidx194.3.1 = getelementptr inbounds i8, ptr addrspace(3) %92, i32 2054, !dbg !91
  %297 = load half, ptr addrspace(3) %arrayidx194.3.1, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.6.vec.insert1498 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1468, half %297, i64 3, !dbg !89
  %298 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1498, <4 x half> %q_local.sroa.0.6.vec.insert, <4 x float> zeroinitializer), !dbg !90
  %299 = load half, ptr addrspace(3) %97, align 8, !dbg !89, !tbaa !60
  %k_local.sroa.0.0.vec.insert1410 = insertelement <4 x half> poison, half %299, i64 0, !dbg !89
  %300 = load half, ptr addrspace(3) %arrayidx80.1.1, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.2.vec.insert1440 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1410, half %300, i64 1, !dbg !89
  %301 = load half, ptr addrspace(3) %arrayidx80.2.1, align 4, !dbg !89, !tbaa !60
  %k_local.sroa.0.4.vec.insert1470 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1440, half %301, i64 2, !dbg !89
  %302 = load half, ptr addrspace(3) %arrayidx80.3.1, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.6.vec.insert1500 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1470, half %302, i64 3, !dbg !89
  %303 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1500, <4 x half> %q_local.sroa.7.14.vec.insert, <4 x float> %292), !dbg !90
  %304 = getelementptr inbounds i8, ptr addrspace(3) %97, i32 2048, !dbg !91
  %305 = load half, ptr addrspace(3) %304, align 8, !dbg !89, !tbaa !60
  %k_local.sroa.0.0.vec.insert1412 = insertelement <4 x half> poison, half %305, i64 0, !dbg !89
  %arrayidx194.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %97, i32 2050, !dbg !91
  %306 = load half, ptr addrspace(3) %arrayidx194.1.1.1, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.2.vec.insert1442 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1412, half %306, i64 1, !dbg !89
  %arrayidx194.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %97, i32 2052, !dbg !91
  %307 = load half, ptr addrspace(3) %arrayidx194.2.1.1, align 4, !dbg !89, !tbaa !60
  %k_local.sroa.0.4.vec.insert1472 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1442, half %307, i64 2, !dbg !89
  %arrayidx194.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %97, i32 2054, !dbg !91
  %308 = load half, ptr addrspace(3) %arrayidx194.3.1.1, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.6.vec.insert1502 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1472, half %308, i64 3, !dbg !89
  %309 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1502, <4 x half> %q_local.sroa.7.14.vec.insert, <4 x float> %298), !dbg !90
  %310 = load half, ptr addrspace(3) %102, align 8, !dbg !89, !tbaa !60
  %k_local.sroa.0.0.vec.insert1414 = insertelement <4 x half> poison, half %310, i64 0, !dbg !89
  %311 = load half, ptr addrspace(3) %arrayidx80.1.2, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.2.vec.insert1444 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1414, half %311, i64 1, !dbg !89
  %312 = load half, ptr addrspace(3) %arrayidx80.2.2, align 4, !dbg !89, !tbaa !60
  %k_local.sroa.0.4.vec.insert1474 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1444, half %312, i64 2, !dbg !89
  %313 = load half, ptr addrspace(3) %arrayidx80.3.2, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.6.vec.insert1504 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1474, half %313, i64 3, !dbg !89
  %314 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1504, <4 x half> %q_local.sroa.12.22.vec.insert, <4 x float> %303), !dbg !90
  %315 = getelementptr inbounds i8, ptr addrspace(3) %102, i32 2048, !dbg !91
  %316 = load half, ptr addrspace(3) %315, align 8, !dbg !89, !tbaa !60
  %k_local.sroa.0.0.vec.insert1416 = insertelement <4 x half> poison, half %316, i64 0, !dbg !89
  %arrayidx194.1.1.2 = getelementptr inbounds i8, ptr addrspace(3) %102, i32 2050, !dbg !91
  %317 = load half, ptr addrspace(3) %arrayidx194.1.1.2, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.2.vec.insert1446 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1416, half %317, i64 1, !dbg !89
  %arrayidx194.2.1.2 = getelementptr inbounds i8, ptr addrspace(3) %102, i32 2052, !dbg !91
  %318 = load half, ptr addrspace(3) %arrayidx194.2.1.2, align 4, !dbg !89, !tbaa !60
  %k_local.sroa.0.4.vec.insert1476 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1446, half %318, i64 2, !dbg !89
  %arrayidx194.3.1.2 = getelementptr inbounds i8, ptr addrspace(3) %102, i32 2054, !dbg !91
  %319 = load half, ptr addrspace(3) %arrayidx194.3.1.2, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.6.vec.insert1506 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1476, half %319, i64 3, !dbg !89
  %320 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1506, <4 x half> %q_local.sroa.12.22.vec.insert, <4 x float> %309), !dbg !90
  %321 = load half, ptr addrspace(3) %107, align 8, !dbg !89, !tbaa !60
  %k_local.sroa.0.0.vec.insert1418 = insertelement <4 x half> poison, half %321, i64 0, !dbg !89
  %322 = load half, ptr addrspace(3) %arrayidx80.1.3, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.2.vec.insert1448 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1418, half %322, i64 1, !dbg !89
  %323 = load half, ptr addrspace(3) %arrayidx80.2.3, align 4, !dbg !89, !tbaa !60
  %k_local.sroa.0.4.vec.insert1478 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1448, half %323, i64 2, !dbg !89
  %324 = load half, ptr addrspace(3) %arrayidx80.3.3, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.6.vec.insert1508 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1478, half %324, i64 3, !dbg !89
  %325 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1508, <4 x half> %q_local.sroa.17.30.vec.insert, <4 x float> %314), !dbg !90
  %326 = getelementptr inbounds i8, ptr addrspace(3) %107, i32 2048, !dbg !91
  %327 = load half, ptr addrspace(3) %326, align 8, !dbg !89, !tbaa !60
  %k_local.sroa.0.0.vec.insert1420 = insertelement <4 x half> poison, half %327, i64 0, !dbg !89
  %arrayidx194.1.1.3 = getelementptr inbounds i8, ptr addrspace(3) %107, i32 2050, !dbg !91
  %328 = load half, ptr addrspace(3) %arrayidx194.1.1.3, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.2.vec.insert1450 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1420, half %328, i64 1, !dbg !89
  %arrayidx194.2.1.3 = getelementptr inbounds i8, ptr addrspace(3) %107, i32 2052, !dbg !91
  %329 = load half, ptr addrspace(3) %arrayidx194.2.1.3, align 4, !dbg !89, !tbaa !60
  %k_local.sroa.0.4.vec.insert1480 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1450, half %329, i64 2, !dbg !89
  %arrayidx194.3.1.3 = getelementptr inbounds i8, ptr addrspace(3) %107, i32 2054, !dbg !91
  %330 = load half, ptr addrspace(3) %arrayidx194.3.1.3, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.6.vec.insert1510 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1480, half %330, i64 3, !dbg !89
  %331 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1510, <4 x half> %q_local.sroa.17.30.vec.insert, <4 x float> %320), !dbg !90
  %332 = load half, ptr addrspace(3) %113, align 8, !dbg !89, !tbaa !60
  %k_local.sroa.0.0.vec.insert1422 = insertelement <4 x half> poison, half %332, i64 0, !dbg !89
  %333 = load half, ptr addrspace(3) %arrayidx80.1.4, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.2.vec.insert1452 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1422, half %333, i64 1, !dbg !89
  %334 = load half, ptr addrspace(3) %arrayidx80.2.4, align 4, !dbg !89, !tbaa !60
  %k_local.sroa.0.4.vec.insert1482 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1452, half %334, i64 2, !dbg !89
  %335 = load half, ptr addrspace(3) %arrayidx80.3.4, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.6.vec.insert1512 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1482, half %335, i64 3, !dbg !89
  %336 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1512, <4 x half> %q_local.sroa.22.38.vec.insert, <4 x float> %325), !dbg !90
  %337 = getelementptr inbounds i8, ptr addrspace(3) %113, i32 2048, !dbg !91
  %338 = load half, ptr addrspace(3) %337, align 8, !dbg !89, !tbaa !60
  %k_local.sroa.0.0.vec.insert1424 = insertelement <4 x half> poison, half %338, i64 0, !dbg !89
  %arrayidx194.1.1.4 = getelementptr inbounds i8, ptr addrspace(3) %113, i32 2050, !dbg !91
  %339 = load half, ptr addrspace(3) %arrayidx194.1.1.4, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.2.vec.insert1454 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1424, half %339, i64 1, !dbg !89
  %arrayidx194.2.1.4 = getelementptr inbounds i8, ptr addrspace(3) %113, i32 2052, !dbg !91
  %340 = load half, ptr addrspace(3) %arrayidx194.2.1.4, align 4, !dbg !89, !tbaa !60
  %k_local.sroa.0.4.vec.insert1484 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1454, half %340, i64 2, !dbg !89
  %arrayidx194.3.1.4 = getelementptr inbounds i8, ptr addrspace(3) %113, i32 2054, !dbg !91
  %341 = load half, ptr addrspace(3) %arrayidx194.3.1.4, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.6.vec.insert1514 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1484, half %341, i64 3, !dbg !89
  %342 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1514, <4 x half> %q_local.sroa.22.38.vec.insert, <4 x float> %331), !dbg !90
  %343 = load half, ptr addrspace(3) %118, align 8, !dbg !89, !tbaa !60
  %k_local.sroa.0.0.vec.insert1426 = insertelement <4 x half> poison, half %343, i64 0, !dbg !89
  %344 = load half, ptr addrspace(3) %arrayidx80.1.5, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.2.vec.insert1456 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1426, half %344, i64 1, !dbg !89
  %345 = load half, ptr addrspace(3) %arrayidx80.2.5, align 4, !dbg !89, !tbaa !60
  %k_local.sroa.0.4.vec.insert1486 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1456, half %345, i64 2, !dbg !89
  %346 = load half, ptr addrspace(3) %arrayidx80.3.5, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.6.vec.insert1516 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1486, half %346, i64 3, !dbg !89
  %347 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1516, <4 x half> %q_local.sroa.27.46.vec.insert, <4 x float> %336), !dbg !90
  %348 = getelementptr inbounds i8, ptr addrspace(3) %118, i32 2048, !dbg !91
  %349 = load half, ptr addrspace(3) %348, align 8, !dbg !89, !tbaa !60
  %k_local.sroa.0.0.vec.insert1428 = insertelement <4 x half> poison, half %349, i64 0, !dbg !89
  %arrayidx194.1.1.5 = getelementptr inbounds i8, ptr addrspace(3) %118, i32 2050, !dbg !91
  %350 = load half, ptr addrspace(3) %arrayidx194.1.1.5, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.2.vec.insert1458 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1428, half %350, i64 1, !dbg !89
  %arrayidx194.2.1.5 = getelementptr inbounds i8, ptr addrspace(3) %118, i32 2052, !dbg !91
  %351 = load half, ptr addrspace(3) %arrayidx194.2.1.5, align 4, !dbg !89, !tbaa !60
  %k_local.sroa.0.4.vec.insert1488 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1458, half %351, i64 2, !dbg !89
  %arrayidx194.3.1.5 = getelementptr inbounds i8, ptr addrspace(3) %118, i32 2054, !dbg !91
  %352 = load half, ptr addrspace(3) %arrayidx194.3.1.5, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.6.vec.insert1518 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1488, half %352, i64 3, !dbg !89
  %353 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1518, <4 x half> %q_local.sroa.27.46.vec.insert, <4 x float> %342), !dbg !90
  %354 = load half, ptr addrspace(3) %123, align 8, !dbg !89, !tbaa !60
  %k_local.sroa.0.0.vec.insert1430 = insertelement <4 x half> poison, half %354, i64 0, !dbg !89
  %355 = load half, ptr addrspace(3) %arrayidx80.1.6, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.2.vec.insert1460 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1430, half %355, i64 1, !dbg !89
  %356 = load half, ptr addrspace(3) %arrayidx80.2.6, align 4, !dbg !89, !tbaa !60
  %k_local.sroa.0.4.vec.insert1490 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1460, half %356, i64 2, !dbg !89
  %357 = load half, ptr addrspace(3) %arrayidx80.3.6, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.6.vec.insert1520 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1490, half %357, i64 3, !dbg !89
  %358 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1520, <4 x half> %q_local.sroa.32.54.vec.insert, <4 x float> %347), !dbg !90
  %359 = getelementptr inbounds i8, ptr addrspace(3) %123, i32 2048, !dbg !91
  %360 = load half, ptr addrspace(3) %359, align 8, !dbg !89, !tbaa !60
  %k_local.sroa.0.0.vec.insert1432 = insertelement <4 x half> poison, half %360, i64 0, !dbg !89
  %arrayidx194.1.1.6 = getelementptr inbounds i8, ptr addrspace(3) %123, i32 2050, !dbg !91
  %361 = load half, ptr addrspace(3) %arrayidx194.1.1.6, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.2.vec.insert1462 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1432, half %361, i64 1, !dbg !89
  %arrayidx194.2.1.6 = getelementptr inbounds i8, ptr addrspace(3) %123, i32 2052, !dbg !91
  %362 = load half, ptr addrspace(3) %arrayidx194.2.1.6, align 4, !dbg !89, !tbaa !60
  %k_local.sroa.0.4.vec.insert1492 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1462, half %362, i64 2, !dbg !89
  %arrayidx194.3.1.6 = getelementptr inbounds i8, ptr addrspace(3) %123, i32 2054, !dbg !91
  %363 = load half, ptr addrspace(3) %arrayidx194.3.1.6, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.6.vec.insert1522 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1492, half %363, i64 3, !dbg !89
  %364 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1522, <4 x half> %q_local.sroa.32.54.vec.insert, <4 x float> %353), !dbg !90
  %365 = load half, ptr addrspace(3) %128, align 8, !dbg !89, !tbaa !60
  %k_local.sroa.0.0.vec.insert1434 = insertelement <4 x half> poison, half %365, i64 0, !dbg !89
  %366 = load half, ptr addrspace(3) %arrayidx80.1.7, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.2.vec.insert1464 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1434, half %366, i64 1, !dbg !89
  %367 = load half, ptr addrspace(3) %arrayidx80.2.7, align 4, !dbg !89, !tbaa !60
  %k_local.sroa.0.4.vec.insert1494 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1464, half %367, i64 2, !dbg !89
  %368 = load half, ptr addrspace(3) %arrayidx80.3.7, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.6.vec.insert1524 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1494, half %368, i64 3, !dbg !89
  %369 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1524, <4 x half> %q_local.sroa.37.62.vec.insert, <4 x float> %358), !dbg !90
  %370 = getelementptr inbounds i8, ptr addrspace(3) %128, i32 2048, !dbg !91
  %371 = load half, ptr addrspace(3) %370, align 8, !dbg !89, !tbaa !60
  %k_local.sroa.0.0.vec.insert1436 = insertelement <4 x half> poison, half %371, i64 0, !dbg !89
  %arrayidx194.1.1.7 = getelementptr inbounds i8, ptr addrspace(3) %128, i32 2050, !dbg !91
  %372 = load half, ptr addrspace(3) %arrayidx194.1.1.7, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.2.vec.insert1466 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1436, half %372, i64 1, !dbg !89
  %arrayidx194.2.1.7 = getelementptr inbounds i8, ptr addrspace(3) %128, i32 2052, !dbg !91
  %373 = load half, ptr addrspace(3) %arrayidx194.2.1.7, align 4, !dbg !89, !tbaa !60
  %k_local.sroa.0.4.vec.insert1496 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1466, half %373, i64 2, !dbg !89
  %arrayidx194.3.1.7 = getelementptr inbounds i8, ptr addrspace(3) %128, i32 2054, !dbg !91
  %374 = load half, ptr addrspace(3) %arrayidx194.3.1.7, align 2, !dbg !89, !tbaa !60
  %k_local.sroa.0.6.vec.insert1526 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1496, half %374, i64 3, !dbg !89
  %375 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1526, <4 x half> %q_local.sroa.37.62.vec.insert, <4 x float> %364), !dbg !90
  %add226 = add nuw nsw i32 %mul7, %mul71
  %cmp231.not = icmp sgt i32 %add226, %1, !dbg !92
  %scores.sroa.0.0.vec.extract = extractelement <4 x float> %369, i64 0
  %spec.select = select i1 %cmp231.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract, !dbg !93
  %cmp231.not.1.not = icmp slt i32 %add226, %1, !dbg !92
  %scores.sroa.0.4.vec.extract = extractelement <4 x float> %369, i64 1, !dbg !93
  %condval_1.0.1 = select i1 %cmp231.not.1.not, float %scores.sroa.0.4.vec.extract, float 0xFFF0000000000000, !dbg !93
  %add227.2 = or disjoint i32 %add226, 2, !dbg !94
  %cmp231.not.2 = icmp sgt i32 %add227.2, %1, !dbg !92
  %scores.sroa.0.8.vec.extract = extractelement <4 x float> %369, i64 2, !dbg !93
  %condval_1.0.2 = select i1 %cmp231.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract, !dbg !93
  %add227.3 = or disjoint i32 %add226, 3, !dbg !94
  %cmp231.not.3 = icmp sgt i32 %add227.3, %1, !dbg !92
  %scores.sroa.0.12.vec.extract = extractelement <4 x float> %369, i64 3, !dbg !93
  %condval_1.0.3 = select i1 %cmp231.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract, !dbg !93
  %add229.4 = add nuw nsw i32 %add226, 16, !dbg !95
  %cmp231.not.4 = icmp sgt i32 %add229.4, %1, !dbg !92
  %scores.sroa.58.16.vec.extract = extractelement <4 x float> %375, i64 0, !dbg !93
  %condval_1.0.4 = select i1 %cmp231.not.4, float 0xFFF0000000000000, float %scores.sroa.58.16.vec.extract, !dbg !93
  %add229.5 = add nuw nsw i32 %add226, 17, !dbg !95
  %cmp231.not.5 = icmp sgt i32 %add229.5, %1, !dbg !92
  %scores.sroa.58.20.vec.extract = extractelement <4 x float> %375, i64 1, !dbg !93
  %condval_1.0.5 = select i1 %cmp231.not.5, float 0xFFF0000000000000, float %scores.sroa.58.20.vec.extract, !dbg !93
  %add229.6 = add nuw nsw i32 %add226, 18, !dbg !95
  %cmp231.not.6 = icmp sgt i32 %add229.6, %1, !dbg !92
  %scores.sroa.58.24.vec.extract = extractelement <4 x float> %375, i64 2, !dbg !93
  %condval_1.0.6 = select i1 %cmp231.not.6, float 0xFFF0000000000000, float %scores.sroa.58.24.vec.extract, !dbg !93
  %add229.7 = add nuw nsw i32 %add226, 19, !dbg !95
  %cmp231.not.7 = icmp sgt i32 %add229.7, %1, !dbg !92
  %scores.sroa.58.28.vec.extract = extractelement <4 x float> %375, i64 3, !dbg !93
  %condval_1.0.7 = select i1 %cmp231.not.7, float 0xFFF0000000000000, float %scores.sroa.58.28.vec.extract, !dbg !93
  %376 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !96
  %377 = tail call contract noundef float @llvm.maxnum.f32(float %376, float %condval_1.0.4), !dbg !96
  %378 = tail call contract noundef float @llvm.maxnum.f32(float %377, float %condval_1.0.1), !dbg !96
  %379 = tail call contract noundef float @llvm.maxnum.f32(float %378, float %condval_1.0.5), !dbg !96
  %380 = tail call contract noundef float @llvm.maxnum.f32(float %379, float %condval_1.0.2), !dbg !96
  %381 = tail call contract noundef float @llvm.maxnum.f32(float %380, float %condval_1.0.6), !dbg !96
  %382 = tail call contract noundef float @llvm.maxnum.f32(float %381, float %condval_1.0.3), !dbg !96
  %383 = tail call contract noundef float @llvm.maxnum.f32(float %382, float %condval_1.0.7), !dbg !96
  %384 = bitcast float %383 to i32, !dbg !100
  %385 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !109
  %386 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %385) #10, !dbg !114
  %xor.i.i.i = xor i32 %386, 32, !dbg !115
  %387 = and i32 %386, -64, !dbg !116
  %and.i.i.i = add nsw i32 %387, 64, !dbg !116
  %cmp.not.i.i.i = icmp slt i32 %xor.i.i.i, %and.i.i.i, !dbg !117
  %cond.i.i.i = select i1 %cmp.not.i.i.i, i32 %xor.i.i.i, i32 %386, !dbg !118
  %shl.i.i.i = shl i32 %cond.i.i.i, 2, !dbg !119
  %388 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i, i32 %384), !dbg !120
  %389 = bitcast i32 %388 to float, !dbg !121
  %390 = tail call contract noundef float @llvm.maxnum.f32(float %383, float %389), !dbg !122
  %391 = bitcast float %390 to i32, !dbg !130
  %392 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !135
  %393 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %392) #10, !dbg !138
  %xor.i.i.i.i = xor i32 %393, 16, !dbg !139
  %394 = and i32 %393, -64, !dbg !140
  %and.i.i.i.i = add nsw i32 %394, 64, !dbg !140
  %cmp.not.i.i.i.i = icmp slt i32 %xor.i.i.i.i, %and.i.i.i.i, !dbg !141
  %cond.i.i.i.i = select i1 %cmp.not.i.i.i.i, i32 %xor.i.i.i.i, i32 %393, !dbg !142
  %shl.i.i.i.i = shl i32 %cond.i.i.i.i, 2, !dbg !143
  %395 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i, i32 %391), !dbg !144
  %396 = bitcast i32 %395 to float, !dbg !145
  %397 = tail call contract noundef float @llvm.maxnum.f32(float %390, float %396), !dbg !146
  %sub = fsub contract float %spec.select, %397, !dbg !150
  %mul275 = fmul contract float %sub, 0x3FC0527DC0000000, !dbg !151
  %cmp.i.i = fcmp contract olt float %mul275, -1.260000e+02, !dbg !152
  %cond.i.i = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i = fadd contract float %mul275, %cond.i.i, !dbg !152
  %398 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !152
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i = fmul contract float %cond2.i.i, %398, !dbg !152
  %sub.1 = fsub contract float %condval_1.0.1, %397, !dbg !150
  %mul275.1 = fmul contract float %sub.1, 0x3FC0527DC0000000, !dbg !151
  %cmp.i.i.1 = fcmp contract olt float %mul275.1, -1.260000e+02, !dbg !152
  %cond.i.i.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.1 = fadd contract float %mul275.1, %cond.i.i.1, !dbg !152
  %399 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !152
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %399, !dbg !152
  %sub.2 = fsub contract float %condval_1.0.2, %397, !dbg !150
  %mul275.2 = fmul contract float %sub.2, 0x3FC0527DC0000000, !dbg !151
  %cmp.i.i.2 = fcmp contract olt float %mul275.2, -1.260000e+02, !dbg !152
  %cond.i.i.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.2 = fadd contract float %mul275.2, %cond.i.i.2, !dbg !152
  %400 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !152
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %400, !dbg !152
  %sub.3 = fsub contract float %condval_1.0.3, %397, !dbg !150
  %mul275.3 = fmul contract float %sub.3, 0x3FC0527DC0000000, !dbg !151
  %cmp.i.i.3 = fcmp contract olt float %mul275.3, -1.260000e+02, !dbg !152
  %cond.i.i.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.3 = fadd contract float %mul275.3, %cond.i.i.3, !dbg !152
  %401 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !152
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %401, !dbg !152
  %sub.4 = fsub contract float %condval_1.0.4, %397, !dbg !150
  %mul275.4 = fmul contract float %sub.4, 0x3FC0527DC0000000, !dbg !151
  %cmp.i.i.4 = fcmp contract olt float %mul275.4, -1.260000e+02, !dbg !152
  %cond.i.i.4 = select contract i1 %cmp.i.i.4, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.4 = fadd contract float %mul275.4, %cond.i.i.4, !dbg !152
  %402 = tail call contract float @llvm.exp2.f32(float %add.i.i.4), !dbg !152
  %cond2.i.i.4 = select contract i1 %cmp.i.i.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.4 = fmul contract float %cond2.i.i.4, %402, !dbg !152
  %sub.5 = fsub contract float %condval_1.0.5, %397, !dbg !150
  %mul275.5 = fmul contract float %sub.5, 0x3FC0527DC0000000, !dbg !151
  %cmp.i.i.5 = fcmp contract olt float %mul275.5, -1.260000e+02, !dbg !152
  %cond.i.i.5 = select contract i1 %cmp.i.i.5, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.5 = fadd contract float %mul275.5, %cond.i.i.5, !dbg !152
  %403 = tail call contract float @llvm.exp2.f32(float %add.i.i.5), !dbg !152
  %cond2.i.i.5 = select contract i1 %cmp.i.i.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.5 = fmul contract float %cond2.i.i.5, %403, !dbg !152
  %sub.6 = fsub contract float %condval_1.0.6, %397, !dbg !150
  %mul275.6 = fmul contract float %sub.6, 0x3FC0527DC0000000, !dbg !151
  %cmp.i.i.6 = fcmp contract olt float %mul275.6, -1.260000e+02, !dbg !152
  %cond.i.i.6 = select contract i1 %cmp.i.i.6, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.6 = fadd contract float %mul275.6, %cond.i.i.6, !dbg !152
  %404 = tail call contract float @llvm.exp2.f32(float %add.i.i.6), !dbg !152
  %cond2.i.i.6 = select contract i1 %cmp.i.i.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.6 = fmul contract float %cond2.i.i.6, %404, !dbg !152
  %sub.7 = fsub contract float %condval_1.0.7, %397, !dbg !150
  %mul275.7 = fmul contract float %sub.7, 0x3FC0527DC0000000, !dbg !151
  %cmp.i.i.7 = fcmp contract olt float %mul275.7, -1.260000e+02, !dbg !152
  %cond.i.i.7 = select contract i1 %cmp.i.i.7, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i.7 = fadd contract float %mul275.7, %cond.i.i.7, !dbg !152
  %405 = tail call contract float @llvm.exp2.f32(float %add.i.i.7), !dbg !152
  %cond2.i.i.7 = select contract i1 %cmp.i.i.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i.7 = fmul contract float %cond2.i.i.7, %405, !dbg !152
  %add294 = fadd contract float %mul.i.i, 0.000000e+00, !dbg !155
  %add294.1 = fadd contract float %add294, %mul.i.i.4, !dbg !155
  %add294.2 = fadd contract float %add294.1, %mul.i.i.1, !dbg !155
  %add294.3 = fadd contract float %add294.2, %mul.i.i.5, !dbg !155
  %add294.4 = fadd contract float %add294.3, %mul.i.i.2, !dbg !155
  %add294.5 = fadd contract float %add294.4, %mul.i.i.6, !dbg !155
  %add294.6 = fadd contract float %add294.5, %mul.i.i.3, !dbg !155
  %add294.7 = fadd contract float %add294.6, %mul.i.i.7, !dbg !155
  %406 = bitcast float %add294.7 to i32, !dbg !156
  %407 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !161
  %408 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %407) #10, !dbg !164
  %xor.i.i.i701 = xor i32 %408, 32, !dbg !165
  %409 = and i32 %408, -64, !dbg !166
  %and.i.i.i702 = add nsw i32 %409, 64, !dbg !166
  %cmp.not.i.i.i703 = icmp slt i32 %xor.i.i.i701, %and.i.i.i702, !dbg !167
  %cond.i.i.i704 = select i1 %cmp.not.i.i.i703, i32 %xor.i.i.i701, i32 %408, !dbg !168
  %shl.i.i.i705 = shl i32 %cond.i.i.i704, 2, !dbg !169
  %410 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i705, i32 %406), !dbg !170
  %411 = bitcast i32 %410 to float, !dbg !171
  %add.i.i706 = fadd contract float %add294.7, %411, !dbg !172
  %412 = bitcast float %add.i.i706 to i32, !dbg !175
  %413 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !180
  %414 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %413) #10, !dbg !183
  %xor.i.i.i.i707 = xor i32 %414, 16, !dbg !184
  %415 = and i32 %414, -64, !dbg !185
  %and.i.i.i.i708 = add nsw i32 %415, 64, !dbg !185
  %cmp.not.i.i.i.i709 = icmp slt i32 %xor.i.i.i.i707, %and.i.i.i.i708, !dbg !186
  %cond.i.i.i.i710 = select i1 %cmp.not.i.i.i.i709, i32 %xor.i.i.i.i707, i32 %414, !dbg !187
  %shl.i.i.i.i711 = shl i32 %cond.i.i.i.i710, 2, !dbg !188
  %416 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.i.i711, i32 %412), !dbg !189
  %417 = bitcast i32 %416 to float, !dbg !190
  %add.i.i.i = fadd contract float %add.i.i706, %417, !dbg !191
  %div = fdiv contract float %mul.i.i, %add.i.i.i, !dbg !193
  %div.1 = fdiv contract float %mul.i.i.1, %add.i.i.i, !dbg !193
  %div.2 = fdiv contract float %mul.i.i.2, %add.i.i.i, !dbg !193
  %div.3 = fdiv contract float %mul.i.i.3, %add.i.i.i, !dbg !193
  %div.4 = fdiv contract float %mul.i.i.4, %add.i.i.i, !dbg !193
  %div.5 = fdiv contract float %mul.i.i.5, %add.i.i.i, !dbg !193
  %div.6 = fdiv contract float %mul.i.i.6, %add.i.i.i, !dbg !193
  %div.7 = fdiv contract float %mul.i.i.7, %add.i.i.i, !dbg !193
  %418 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !194
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !194, !noalias !202
  %419 = fptrunc float %div to half, !dbg !194
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %418), !dbg !194, !noalias !202
  %420 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !207
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !207, !noalias !202
  %421 = fptrunc float %div.1 to half, !dbg !207
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %420), !dbg !207, !noalias !202
  %422 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !209
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !209, !noalias !213
  %423 = fptrunc float %div.2 to half, !dbg !209
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %422), !dbg !209, !noalias !213
  %424 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !218, !noalias !213
  %425 = fptrunc float %div.3 to half, !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %424), !dbg !218, !noalias !213
  %426 = insertelement <4 x half> poison, half %419, i64 0, !dbg !220
  %427 = insertelement <4 x half> %426, half %421, i64 1, !dbg !220
  %428 = insertelement <4 x half> %427, half %423, i64 2, !dbg !220
  %429 = insertelement <4 x half> %428, half %425, i64 3, !dbg !220
  %430 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !194
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !194, !noalias !202
  %431 = fptrunc float %div.4 to half, !dbg !194
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %430), !dbg !194, !noalias !202
  %432 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !207
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !207, !noalias !202
  %433 = fptrunc float %div.5 to half, !dbg !207
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %432), !dbg !207, !noalias !202
  %434 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !209
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !209, !noalias !213
  %435 = fptrunc float %div.6 to half, !dbg !209
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %434), !dbg !209, !noalias !213
  %436 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !218, !noalias !213
  %437 = fptrunc float %div.7 to half, !dbg !218
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %436), !dbg !218, !noalias !213
  %438 = insertelement <4 x half> poison, half %431, i64 0, !dbg !220
  %439 = insertelement <4 x half> %438, half %433, i64 1, !dbg !220
  %440 = insertelement <4 x half> %439, half %435, i64 2, !dbg !220
  %441 = insertelement <4 x half> %440, half %437, i64 3, !dbg !220
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %442 = shl nuw nsw i32 %3, 5
  %443 = and i32 %442, 32256
  %mul368 = zext nneg i32 %443 to i64
  %add364 = or disjoint i64 %mul107, %mul368
  %444 = and i32 %5, 60
  %mul382 = zext nneg i32 %444 to i64
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %mul382
  %and430 = shl nuw nsw i32 %3, 4
  %mul431 = and i32 %and430, 240
  %shr437 = and i32 %90, 3
  %xor438 = xor i32 %shr437, %shr100
  %cmp357 = icmp slt i32 %add226, 1024, !dbg !226
  br i1 %cmp357, label %if.then358, label %if.end397, !dbg !227

if.then358:                                       ; preds = %if.end.7.7
  %445 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add364, !dbg !228
  %.idx766 = shl nuw nsw i64 %conv111, 8, !dbg !228
  %446 = getelementptr inbounds i8, ptr addrspace(4) %445, i64 %.idx766, !dbg !228
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %446, align 8, !dbg !229, !tbaa !30
  %condval_2.sroa.5.0.add.ptr384.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %446, i64 4, !dbg !229
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr384.sroa_idx, align 4, !dbg !229, !tbaa !30
  br label %if.end397, !dbg !230

if.end397:                                        ; preds = %if.end.7.7, %if.then358
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then358 ], [ 0, %if.end.7.7 ], !dbg !82
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then358 ], [ 0, %if.end.7.7 ], !dbg !82
  %447 = or disjoint i32 %add226, 1, !dbg !231
  %cmp357.1 = icmp slt i32 %447, 1024, !dbg !226
  br i1 %cmp357.1, label %if.then358.1, label %if.end397.1, !dbg !227

if.then358.1:                                     ; preds = %if.end397
  %448 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add364, !dbg !228
  %.idx766.1 = shl nuw nsw i64 %conv111, 8, !dbg !228
  %449 = getelementptr inbounds i8, ptr addrspace(4) %448, i64 %.idx766.1, !dbg !228
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %449, i64 256, !dbg !228
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep.1, align 8, !dbg !229, !tbaa !30
  %condval_2.sroa.5.0.add.ptr384.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %449, i64 260, !dbg !229
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr384.sroa_idx.1, align 4, !dbg !229, !tbaa !30
  br label %if.end397.1, !dbg !230

if.end397.1:                                      ; preds = %if.then358.1, %if.end397
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then358.1 ], [ 0, %if.end397 ], !dbg !82
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then358.1 ], [ 0, %if.end397 ], !dbg !82
  %450 = or disjoint i32 %add226, 2, !dbg !231
  %cmp357.2 = icmp slt i32 %450, 1024, !dbg !226
  br i1 %cmp357.2, label %if.then358.2, label %if.end397.2, !dbg !227

if.then358.2:                                     ; preds = %if.end397.1
  %451 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add364, !dbg !228
  %.idx766.2 = shl nuw nsw i64 %conv111, 8, !dbg !228
  %452 = getelementptr inbounds i8, ptr addrspace(4) %451, i64 %.idx766.2, !dbg !228
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %452, i64 512, !dbg !228
  %condval_2.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %gep.2, align 8, !dbg !229, !tbaa !30
  %condval_2.sroa.5.0.add.ptr384.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %452, i64 516, !dbg !229
  %condval_2.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr384.sroa_idx.2, align 4, !dbg !229, !tbaa !30
  br label %if.end397.2, !dbg !230

if.end397.2:                                      ; preds = %if.then358.2, %if.end397.1
  %condval_2.sroa.5.0.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2, %if.then358.2 ], [ 0, %if.end397.1 ], !dbg !82
  %condval_2.sroa.0.0.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2, %if.then358.2 ], [ 0, %if.end397.1 ], !dbg !82
  %453 = or disjoint i32 %add226, 3, !dbg !231
  %cmp357.3 = icmp slt i32 %453, 1024, !dbg !226
  br i1 %cmp357.3, label %if.then358.3, label %if.end397.3, !dbg !227

if.then358.3:                                     ; preds = %if.end397.2
  %454 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add364, !dbg !228
  %.idx766.3 = shl nuw nsw i64 %conv111, 8, !dbg !228
  %455 = getelementptr inbounds i8, ptr addrspace(4) %454, i64 %.idx766.3, !dbg !228
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %455, i64 768, !dbg !228
  %condval_2.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %gep.3, align 8, !dbg !229, !tbaa !30
  %condval_2.sroa.5.0.add.ptr384.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %455, i64 772, !dbg !229
  %condval_2.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr384.sroa_idx.3, align 4, !dbg !229, !tbaa !30
  br label %if.end397.3, !dbg !230

if.end397.3:                                      ; preds = %if.then358.3, %if.end397.2
  %condval_2.sroa.5.0.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3, %if.then358.3 ], [ 0, %if.end397.2 ], !dbg !82
  %condval_2.sroa.0.0.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3, %if.then358.3 ], [ 0, %if.end397.2 ], !dbg !82
  %456 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul431, !dbg !232
  %add.ptr443.idx = shl nuw nsw i32 %xor438, 3, !dbg !232
  %add.ptr443 = getelementptr inbounds i8, ptr addrspace(3) %456, i32 %add.ptr443.idx, !dbg !232
  %457 = and i32 %condval_2.sroa.0.0.3, 65535, !dbg !233
  %v_column_local.sroa.66.0.insert.ext = zext nneg i32 %457 to i64, !dbg !233
  %v_column_local.sroa.66.0.insert.shift = shl nuw i64 %v_column_local.sroa.66.0.insert.ext, 48, !dbg !233
  %458 = and i32 %condval_2.sroa.0.0.2, 65535, !dbg !233
  %v_column_local.sroa.50.0.insert.ext = zext nneg i32 %458 to i64, !dbg !233
  %v_column_local.sroa.50.0.insert.shift = shl nuw nsw i64 %v_column_local.sroa.50.0.insert.ext, 32, !dbg !233
  %v_column_local.sroa.50.0.insert.insert = or disjoint i64 %v_column_local.sroa.66.0.insert.shift, %v_column_local.sroa.50.0.insert.shift, !dbg !233
  %459 = shl i32 %condval_2.sroa.0.0.1, 16, !dbg !233
  %v_column_local.sroa.34.0.insert.shift = zext i32 %459 to i64, !dbg !233
  %v_column_local.sroa.34.0.insert.insert = or disjoint i64 %v_column_local.sroa.50.0.insert.insert, %v_column_local.sroa.34.0.insert.shift, !dbg !233
  %460 = and i32 %condval_2.sroa.0.0, 65535, !dbg !233
  %v_column_local.sroa.0.0.insert.ext = zext nneg i32 %460 to i64, !dbg !233
  %v_column_local.sroa.0.0.insert.insert = or disjoint i64 %v_column_local.sroa.34.0.insert.insert, %v_column_local.sroa.0.0.insert.ext, !dbg !233
  store i64 %v_column_local.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr443, align 8, !dbg !233
  %v_tile_local.sroa.0.2.extract.shift = lshr i32 %condval_2.sroa.0.0, 16, !dbg !234
  %v_tile_local.sroa.0.2.extract.trunc = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift to i64, !dbg !234
  %v_tile_local.sroa.26.10.extract.shift = and i32 %condval_2.sroa.0.0.1, -65536, !dbg !233
  %v_tile_local.sroa.50.18.extract.shift = lshr i32 %condval_2.sroa.0.0.2, 16, !dbg !234
  %v_tile_local.sroa.50.18.extract.trunc = zext nneg i32 %v_tile_local.sroa.50.18.extract.shift to i64, !dbg !234
  %v_tile_local.sroa.74.26.extract.shift = lshr i32 %condval_2.sroa.0.0.3, 16, !dbg !234
  %v_tile_local.sroa.74.26.extract.trunc = zext nneg i32 %v_tile_local.sroa.74.26.extract.shift to i64, !dbg !234
  %461 = or disjoint i32 %mul431, 512, !dbg !235
  %462 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %461, !dbg !232
  %xor439.1 = shl nuw nsw i32 %xor438, 3, !dbg !232
  %add.ptr443.idx.1 = xor i32 %xor439.1, 8, !dbg !232
  %add.ptr443.1 = getelementptr inbounds i8, ptr addrspace(3) %462, i32 %add.ptr443.idx.1, !dbg !232
  %v_column_local.sroa.66.0.insert.shift1198 = shl nuw i64 %v_tile_local.sroa.74.26.extract.trunc, 48, !dbg !233
  %v_column_local.sroa.50.0.insert.shift1123 = shl nuw nsw i64 %v_tile_local.sroa.50.18.extract.trunc, 32, !dbg !233
  %v_column_local.sroa.50.0.insert.insert1125 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1198, %v_column_local.sroa.50.0.insert.shift1123, !dbg !233
  %v_column_local.sroa.34.0.insert.shift1048 = zext i32 %v_tile_local.sroa.26.10.extract.shift to i64, !dbg !233
  %v_column_local.sroa.34.0.insert.insert1050 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1125, %v_column_local.sroa.34.0.insert.shift1048, !dbg !233
  %v_column_local.sroa.0.0.insert.insert989 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1050, %v_tile_local.sroa.0.2.extract.trunc, !dbg !233
  store i64 %v_column_local.sroa.0.0.insert.insert989, ptr addrspace(3) %add.ptr443.1, align 8, !dbg !233
  %463 = or disjoint i32 %mul431, 1024, !dbg !235
  %464 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %463, !dbg !232
  %xor439.2 = shl nuw nsw i32 %xor438, 3, !dbg !232
  %add.ptr443.idx.2 = xor i32 %xor439.2, 16, !dbg !232
  %add.ptr443.2 = getelementptr inbounds i8, ptr addrspace(3) %464, i32 %add.ptr443.idx.2, !dbg !232
  %465 = and i32 %condval_2.sroa.5.0.3, 65535, !dbg !233
  %v_column_local.sroa.66.0.insert.ext1202 = zext nneg i32 %465 to i64, !dbg !233
  %v_column_local.sroa.66.0.insert.shift1203 = shl nuw i64 %v_column_local.sroa.66.0.insert.ext1202, 48, !dbg !233
  %466 = and i32 %condval_2.sroa.5.0.2, 65535, !dbg !233
  %v_column_local.sroa.50.0.insert.ext1127 = zext nneg i32 %466 to i64, !dbg !233
  %v_column_local.sroa.50.0.insert.shift1128 = shl nuw nsw i64 %v_column_local.sroa.50.0.insert.ext1127, 32, !dbg !233
  %v_column_local.sroa.50.0.insert.insert1130 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1203, %v_column_local.sroa.50.0.insert.shift1128, !dbg !233
  %467 = shl i32 %condval_2.sroa.5.0.1, 16, !dbg !233
  %v_column_local.sroa.34.0.insert.shift1053 = zext i32 %467 to i64, !dbg !233
  %v_column_local.sroa.34.0.insert.insert1055 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1130, %v_column_local.sroa.34.0.insert.shift1053, !dbg !233
  %468 = and i32 %condval_2.sroa.5.0, 65535, !dbg !233
  %v_column_local.sroa.0.0.insert.ext991 = zext nneg i32 %468 to i64, !dbg !233
  %v_column_local.sroa.0.0.insert.insert993 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1055, %v_column_local.sroa.0.0.insert.ext991, !dbg !233
  store i64 %v_column_local.sroa.0.0.insert.insert993, ptr addrspace(3) %add.ptr443.2, align 8, !dbg !233
  %v_tile_local.sroa.14.6.extract.shift = lshr i32 %condval_2.sroa.5.0, 16, !dbg !234
  %v_tile_local.sroa.14.6.extract.trunc = zext nneg i32 %v_tile_local.sroa.14.6.extract.shift to i64, !dbg !234
  %v_tile_local.sroa.38.14.extract.shift = and i32 %condval_2.sroa.5.0.1, -65536, !dbg !233
  %v_tile_local.sroa.62.22.extract.shift = lshr i32 %condval_2.sroa.5.0.2, 16, !dbg !234
  %v_tile_local.sroa.62.22.extract.trunc = zext nneg i32 %v_tile_local.sroa.62.22.extract.shift to i64, !dbg !234
  %v_tile_local.sroa.86.30.extract.shift = lshr i32 %condval_2.sroa.5.0.3, 16, !dbg !234
  %v_tile_local.sroa.86.30.extract.trunc = zext nneg i32 %v_tile_local.sroa.86.30.extract.shift to i64, !dbg !234
  %469 = or disjoint i32 %mul431, 1536, !dbg !235
  %470 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %469, !dbg !232
  %xor439.3 = shl nuw nsw i32 %xor438, 3, !dbg !232
  %add.ptr443.idx.3 = xor i32 %xor439.3, 24, !dbg !232
  %add.ptr443.3 = getelementptr inbounds i8, ptr addrspace(3) %470, i32 %add.ptr443.idx.3, !dbg !232
  %v_column_local.sroa.66.0.insert.shift1208 = shl nuw i64 %v_tile_local.sroa.86.30.extract.trunc, 48, !dbg !233
  %v_column_local.sroa.50.0.insert.shift1133 = shl nuw nsw i64 %v_tile_local.sroa.62.22.extract.trunc, 32, !dbg !233
  %v_column_local.sroa.50.0.insert.insert1135 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1208, %v_column_local.sroa.50.0.insert.shift1133, !dbg !233
  %v_column_local.sroa.34.0.insert.shift1058 = zext i32 %v_tile_local.sroa.38.14.extract.shift to i64, !dbg !233
  %v_column_local.sroa.34.0.insert.insert1060 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1135, %v_column_local.sroa.34.0.insert.shift1058, !dbg !233
  %v_column_local.sroa.0.0.insert.insert997 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1060, %v_tile_local.sroa.14.6.extract.trunc, !dbg !233
  store i64 %v_column_local.sroa.0.0.insert.insert997, ptr addrspace(3) %add.ptr443.3, align 8, !dbg !233
  br i1 %cmp357, label %if.then358.1864, label %if.end397.1868, !dbg !227

if.then358.1864:                                  ; preds = %if.end397.3
  %471 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add364, !dbg !228
  %.idx766.1860 = shl nuw nsw i64 %conv111, 8, !dbg !228
  %472 = getelementptr inbounds i8, ptr addrspace(4) %471, i64 %.idx766.1860, !dbg !228
  %473 = getelementptr inbounds i8, ptr addrspace(4) %472, i64 128, !dbg !228
  %condval_2.sroa.0.0.copyload.1861 = load i32, ptr addrspace(4) %473, align 8, !dbg !229, !tbaa !30
  %condval_2.sroa.5.0.add.ptr384.sroa_idx.1862 = getelementptr inbounds i8, ptr addrspace(4) %472, i64 132, !dbg !229
  %condval_2.sroa.5.0.copyload.1863 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr384.sroa_idx.1862, align 4, !dbg !229, !tbaa !30
  br label %if.end397.1868, !dbg !230

if.end397.1868:                                   ; preds = %if.then358.1864, %if.end397.3
  %condval_2.sroa.5.0.1865 = phi i32 [ %condval_2.sroa.5.0.copyload.1863, %if.then358.1864 ], [ 0, %if.end397.3 ], !dbg !82
  %condval_2.sroa.0.0.1866 = phi i32 [ %condval_2.sroa.0.0.copyload.1861, %if.then358.1864 ], [ 0, %if.end397.3 ], !dbg !82
  br i1 %cmp357.1, label %if.then358.1.1, label %if.end397.1.1, !dbg !227

if.then358.1.1:                                   ; preds = %if.end397.1868
  %474 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add364, !dbg !228
  %.idx766.1.1 = shl nuw nsw i64 %conv111, 8, !dbg !228
  %475 = getelementptr inbounds i8, ptr addrspace(4) %474, i64 %.idx766.1.1, !dbg !228
  %gep.1.1 = getelementptr inbounds i8, ptr addrspace(4) %475, i64 384, !dbg !228
  %condval_2.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %gep.1.1, align 8, !dbg !229, !tbaa !30
  %condval_2.sroa.5.0.add.ptr384.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %475, i64 388, !dbg !229
  %condval_2.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr384.sroa_idx.1.1, align 4, !dbg !229, !tbaa !30
  br label %if.end397.1.1, !dbg !230

if.end397.1.1:                                    ; preds = %if.then358.1.1, %if.end397.1868
  %condval_2.sroa.5.0.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1, %if.then358.1.1 ], [ 0, %if.end397.1868 ], !dbg !82
  %condval_2.sroa.0.0.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1, %if.then358.1.1 ], [ 0, %if.end397.1868 ], !dbg !82
  br i1 %cmp357.2, label %if.then358.2.1, label %if.end397.2.1, !dbg !227

if.then358.2.1:                                   ; preds = %if.end397.1.1
  %476 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add364, !dbg !228
  %.idx766.2.1 = shl nuw nsw i64 %conv111, 8, !dbg !228
  %477 = getelementptr inbounds i8, ptr addrspace(4) %476, i64 %.idx766.2.1, !dbg !228
  %gep.2.1 = getelementptr inbounds i8, ptr addrspace(4) %477, i64 640, !dbg !228
  %condval_2.sroa.0.0.copyload.2.1 = load i32, ptr addrspace(4) %gep.2.1, align 8, !dbg !229, !tbaa !30
  %condval_2.sroa.5.0.add.ptr384.sroa_idx.2.1 = getelementptr inbounds i8, ptr addrspace(4) %477, i64 644, !dbg !229
  %condval_2.sroa.5.0.copyload.2.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr384.sroa_idx.2.1, align 4, !dbg !229, !tbaa !30
  br label %if.end397.2.1, !dbg !230

if.end397.2.1:                                    ; preds = %if.then358.2.1, %if.end397.1.1
  %condval_2.sroa.5.0.2.1 = phi i32 [ %condval_2.sroa.5.0.copyload.2.1, %if.then358.2.1 ], [ 0, %if.end397.1.1 ], !dbg !82
  %condval_2.sroa.0.0.2.1 = phi i32 [ %condval_2.sroa.0.0.copyload.2.1, %if.then358.2.1 ], [ 0, %if.end397.1.1 ], !dbg !82
  br i1 %cmp357.3, label %if.then358.3.1, label %if.end397.3.1, !dbg !227

if.then358.3.1:                                   ; preds = %if.end397.2.1
  %478 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add364, !dbg !228
  %.idx766.3.1 = shl nuw nsw i64 %conv111, 8, !dbg !228
  %479 = getelementptr inbounds i8, ptr addrspace(4) %478, i64 %.idx766.3.1, !dbg !228
  %gep.3.1 = getelementptr inbounds i8, ptr addrspace(4) %479, i64 896, !dbg !228
  %condval_2.sroa.0.0.copyload.3.1 = load i32, ptr addrspace(4) %gep.3.1, align 8, !dbg !229, !tbaa !30
  %condval_2.sroa.5.0.add.ptr384.sroa_idx.3.1 = getelementptr inbounds i8, ptr addrspace(4) %479, i64 900, !dbg !229
  %condval_2.sroa.5.0.copyload.3.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr384.sroa_idx.3.1, align 4, !dbg !229, !tbaa !30
  br label %if.end397.3.1, !dbg !230

if.end397.3.1:                                    ; preds = %if.then358.3.1, %if.end397.2.1
  %condval_2.sroa.5.0.3.1 = phi i32 [ %condval_2.sroa.5.0.copyload.3.1, %if.then358.3.1 ], [ 0, %if.end397.2.1 ], !dbg !82
  %condval_2.sroa.0.0.3.1 = phi i32 [ %condval_2.sroa.0.0.copyload.3.1, %if.then358.3.1 ], [ 0, %if.end397.2.1 ], !dbg !82
  %480 = or disjoint i32 %mul431, 256, !dbg !235
  %481 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %480, !dbg !232
  %add.ptr443.1876 = getelementptr inbounds i8, ptr addrspace(3) %481, i32 %add.ptr443.idx, !dbg !232
  %482 = and i32 %condval_2.sroa.0.0.3.1, 65535, !dbg !233
  %v_column_local.sroa.66.0.insert.ext1212 = zext nneg i32 %482 to i64, !dbg !233
  %v_column_local.sroa.66.0.insert.shift1213 = shl nuw i64 %v_column_local.sroa.66.0.insert.ext1212, 48, !dbg !233
  %483 = and i32 %condval_2.sroa.0.0.2.1, 65535, !dbg !233
  %v_column_local.sroa.50.0.insert.ext1137 = zext nneg i32 %483 to i64, !dbg !233
  %v_column_local.sroa.50.0.insert.shift1138 = shl nuw nsw i64 %v_column_local.sroa.50.0.insert.ext1137, 32, !dbg !233
  %v_column_local.sroa.50.0.insert.insert1140 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1213, %v_column_local.sroa.50.0.insert.shift1138, !dbg !233
  %484 = shl i32 %condval_2.sroa.0.0.1.1, 16, !dbg !233
  %v_column_local.sroa.34.0.insert.shift1063 = zext i32 %484 to i64, !dbg !233
  %v_column_local.sroa.34.0.insert.insert1065 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1140, %v_column_local.sroa.34.0.insert.shift1063, !dbg !233
  %485 = and i32 %condval_2.sroa.0.0.1866, 65535, !dbg !233
  %v_column_local.sroa.0.0.insert.ext999 = zext nneg i32 %485 to i64, !dbg !233
  %v_column_local.sroa.0.0.insert.insert1001 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1065, %v_column_local.sroa.0.0.insert.ext999, !dbg !233
  store i64 %v_column_local.sroa.0.0.insert.insert1001, ptr addrspace(3) %add.ptr443.1876, align 8, !dbg !233
  %v_tile_local.sroa.0.2.extract.shift1278 = lshr i32 %condval_2.sroa.0.0.1866, 16, !dbg !234
  %v_tile_local.sroa.0.2.extract.trunc1279 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1278 to i64, !dbg !234
  %v_tile_local.sroa.26.10.extract.shift1308 = and i32 %condval_2.sroa.0.0.1.1, -65536, !dbg !233
  %v_tile_local.sroa.50.18.extract.shift1338 = lshr i32 %condval_2.sroa.0.0.2.1, 16, !dbg !234
  %v_tile_local.sroa.50.18.extract.trunc1339 = zext nneg i32 %v_tile_local.sroa.50.18.extract.shift1338 to i64, !dbg !234
  %v_tile_local.sroa.74.26.extract.shift1368 = lshr i32 %condval_2.sroa.0.0.3.1, 16, !dbg !234
  %v_tile_local.sroa.74.26.extract.trunc1369 = zext nneg i32 %v_tile_local.sroa.74.26.extract.shift1368 to i64, !dbg !234
  %486 = or disjoint i32 %mul431, 768, !dbg !235
  %487 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %486, !dbg !232
  %add.ptr443.1.1 = getelementptr inbounds i8, ptr addrspace(3) %487, i32 %add.ptr443.idx.1, !dbg !232
  %v_column_local.sroa.66.0.insert.shift1218 = shl nuw i64 %v_tile_local.sroa.74.26.extract.trunc1369, 48, !dbg !233
  %v_column_local.sroa.50.0.insert.shift1143 = shl nuw nsw i64 %v_tile_local.sroa.50.18.extract.trunc1339, 32, !dbg !233
  %v_column_local.sroa.50.0.insert.insert1145 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1218, %v_column_local.sroa.50.0.insert.shift1143, !dbg !233
  %v_column_local.sroa.34.0.insert.shift1068 = zext i32 %v_tile_local.sroa.26.10.extract.shift1308 to i64, !dbg !233
  %v_column_local.sroa.34.0.insert.insert1070 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1145, %v_column_local.sroa.34.0.insert.shift1068, !dbg !233
  %v_column_local.sroa.0.0.insert.insert1005 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1070, %v_tile_local.sroa.0.2.extract.trunc1279, !dbg !233
  store i64 %v_column_local.sroa.0.0.insert.insert1005, ptr addrspace(3) %add.ptr443.1.1, align 8, !dbg !233
  %488 = or disjoint i32 %mul431, 1280, !dbg !235
  %489 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %488, !dbg !232
  %add.ptr443.2.1 = getelementptr inbounds i8, ptr addrspace(3) %489, i32 %add.ptr443.idx.2, !dbg !232
  %490 = and i32 %condval_2.sroa.5.0.3.1, 65535, !dbg !233
  %v_column_local.sroa.66.0.insert.ext1222 = zext nneg i32 %490 to i64, !dbg !233
  %v_column_local.sroa.66.0.insert.shift1223 = shl nuw i64 %v_column_local.sroa.66.0.insert.ext1222, 48, !dbg !233
  %491 = and i32 %condval_2.sroa.5.0.2.1, 65535, !dbg !233
  %v_column_local.sroa.50.0.insert.ext1147 = zext nneg i32 %491 to i64, !dbg !233
  %v_column_local.sroa.50.0.insert.shift1148 = shl nuw nsw i64 %v_column_local.sroa.50.0.insert.ext1147, 32, !dbg !233
  %v_column_local.sroa.50.0.insert.insert1150 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1223, %v_column_local.sroa.50.0.insert.shift1148, !dbg !233
  %492 = shl i32 %condval_2.sroa.5.0.1.1, 16, !dbg !233
  %v_column_local.sroa.34.0.insert.shift1073 = zext i32 %492 to i64, !dbg !233
  %v_column_local.sroa.34.0.insert.insert1075 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1150, %v_column_local.sroa.34.0.insert.shift1073, !dbg !233
  %493 = and i32 %condval_2.sroa.5.0.1865, 65535, !dbg !233
  %v_column_local.sroa.0.0.insert.ext1007 = zext nneg i32 %493 to i64, !dbg !233
  %v_column_local.sroa.0.0.insert.insert1009 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1075, %v_column_local.sroa.0.0.insert.ext1007, !dbg !233
  store i64 %v_column_local.sroa.0.0.insert.insert1009, ptr addrspace(3) %add.ptr443.2.1, align 8, !dbg !233
  %v_tile_local.sroa.14.6.extract.shift1293 = lshr i32 %condval_2.sroa.5.0.1865, 16, !dbg !234
  %v_tile_local.sroa.14.6.extract.trunc1294 = zext nneg i32 %v_tile_local.sroa.14.6.extract.shift1293 to i64, !dbg !234
  %v_tile_local.sroa.38.14.extract.shift1323 = and i32 %condval_2.sroa.5.0.1.1, -65536, !dbg !233
  %v_tile_local.sroa.62.22.extract.shift1353 = lshr i32 %condval_2.sroa.5.0.2.1, 16, !dbg !234
  %v_tile_local.sroa.62.22.extract.trunc1354 = zext nneg i32 %v_tile_local.sroa.62.22.extract.shift1353 to i64, !dbg !234
  %v_tile_local.sroa.86.30.extract.shift1383 = lshr i32 %condval_2.sroa.5.0.3.1, 16, !dbg !234
  %v_tile_local.sroa.86.30.extract.trunc1384 = zext nneg i32 %v_tile_local.sroa.86.30.extract.shift1383 to i64, !dbg !234
  %494 = or disjoint i32 %mul431, 1792, !dbg !235
  %495 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %494, !dbg !232
  %add.ptr443.3.1 = getelementptr inbounds i8, ptr addrspace(3) %495, i32 %add.ptr443.idx.3, !dbg !232
  %v_column_local.sroa.66.0.insert.shift1228 = shl nuw i64 %v_tile_local.sroa.86.30.extract.trunc1384, 48, !dbg !233
  %v_column_local.sroa.50.0.insert.shift1153 = shl nuw nsw i64 %v_tile_local.sroa.62.22.extract.trunc1354, 32, !dbg !233
  %v_column_local.sroa.50.0.insert.insert1155 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1228, %v_column_local.sroa.50.0.insert.shift1153, !dbg !233
  %v_column_local.sroa.34.0.insert.shift1078 = zext i32 %v_tile_local.sroa.38.14.extract.shift1323 to i64, !dbg !233
  %v_column_local.sroa.34.0.insert.insert1080 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1155, %v_column_local.sroa.34.0.insert.shift1078, !dbg !233
  %v_column_local.sroa.0.0.insert.insert1013 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1080, %v_tile_local.sroa.14.6.extract.trunc1294, !dbg !233
  store i64 %v_column_local.sroa.0.0.insert.insert1013, ptr addrspace(3) %add.ptr443.3.1, align 8, !dbg !233
  %496 = add nuw i32 %add226, 16
  %cmp357.1888 = icmp slt i32 %496, 1024, !dbg !226
  br i1 %cmp357.1888, label %if.then358.1894, label %if.end397.1899, !dbg !227

if.then358.1894:                                  ; preds = %if.end397.3.1
  %497 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add364, !dbg !228
  %.idx766.1890 = shl nuw nsw i64 %conv111, 8, !dbg !228
  %498 = getelementptr inbounds i8, ptr addrspace(4) %497, i64 %.idx766.1890, !dbg !228
  %499 = getelementptr inbounds i8, ptr addrspace(4) %498, i64 4096, !dbg !228
  %condval_2.sroa.0.0.copyload.1891 = load i32, ptr addrspace(4) %499, align 8, !dbg !229, !tbaa !30
  %condval_2.sroa.5.0.add.ptr384.sroa_idx.1892 = getelementptr inbounds i8, ptr addrspace(4) %498, i64 4100, !dbg !229
  %condval_2.sroa.5.0.copyload.1893 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr384.sroa_idx.1892, align 4, !dbg !229, !tbaa !30
  br label %if.end397.1899, !dbg !230

if.end397.1899:                                   ; preds = %if.then358.1894, %if.end397.3.1
  %condval_2.sroa.5.0.1895 = phi i32 [ %condval_2.sroa.5.0.copyload.1893, %if.then358.1894 ], [ 0, %if.end397.3.1 ], !dbg !82
  %condval_2.sroa.0.0.1896 = phi i32 [ %condval_2.sroa.0.0.copyload.1891, %if.then358.1894 ], [ 0, %if.end397.3.1 ], !dbg !82
  %500 = add nuw i32 %add226, 17, !dbg !231
  %cmp357.1.1898 = icmp slt i32 %500, 1024, !dbg !226
  br i1 %cmp357.1.1898, label %if.then358.1.1905, label %if.end397.1.1911, !dbg !227

if.then358.1.1905:                                ; preds = %if.end397.1899
  %501 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add364, !dbg !228
  %.idx766.1.1900 = shl nuw nsw i64 %conv111, 8, !dbg !228
  %502 = getelementptr inbounds i8, ptr addrspace(4) %501, i64 %.idx766.1.1900, !dbg !228
  %gep.1.1901 = getelementptr inbounds i8, ptr addrspace(4) %502, i64 4352, !dbg !228
  %condval_2.sroa.0.0.copyload.1.1902 = load i32, ptr addrspace(4) %gep.1.1901, align 8, !dbg !229, !tbaa !30
  %condval_2.sroa.5.0.add.ptr384.sroa_idx.1.1903 = getelementptr inbounds i8, ptr addrspace(4) %502, i64 4356, !dbg !229
  %condval_2.sroa.5.0.copyload.1.1904 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr384.sroa_idx.1.1903, align 4, !dbg !229, !tbaa !30
  br label %if.end397.1.1911, !dbg !230

if.end397.1.1911:                                 ; preds = %if.then358.1.1905, %if.end397.1899
  %condval_2.sroa.5.0.1.1906 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1904, %if.then358.1.1905 ], [ 0, %if.end397.1899 ], !dbg !82
  %condval_2.sroa.0.0.1.1907 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1902, %if.then358.1.1905 ], [ 0, %if.end397.1899 ], !dbg !82
  %503 = add nuw i32 %add226, 18, !dbg !231
  %cmp357.2.1910 = icmp slt i32 %503, 1024, !dbg !226
  br i1 %cmp357.2.1910, label %if.then358.2.1917, label %if.end397.2.1923, !dbg !227

if.then358.2.1917:                                ; preds = %if.end397.1.1911
  %504 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add364, !dbg !228
  %.idx766.2.1912 = shl nuw nsw i64 %conv111, 8, !dbg !228
  %505 = getelementptr inbounds i8, ptr addrspace(4) %504, i64 %.idx766.2.1912, !dbg !228
  %gep.2.1913 = getelementptr inbounds i8, ptr addrspace(4) %505, i64 4608, !dbg !228
  %condval_2.sroa.0.0.copyload.2.1914 = load i32, ptr addrspace(4) %gep.2.1913, align 8, !dbg !229, !tbaa !30
  %condval_2.sroa.5.0.add.ptr384.sroa_idx.2.1915 = getelementptr inbounds i8, ptr addrspace(4) %505, i64 4612, !dbg !229
  %condval_2.sroa.5.0.copyload.2.1916 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr384.sroa_idx.2.1915, align 4, !dbg !229, !tbaa !30
  br label %if.end397.2.1923, !dbg !230

if.end397.2.1923:                                 ; preds = %if.then358.2.1917, %if.end397.1.1911
  %condval_2.sroa.5.0.2.1918 = phi i32 [ %condval_2.sroa.5.0.copyload.2.1916, %if.then358.2.1917 ], [ 0, %if.end397.1.1911 ], !dbg !82
  %condval_2.sroa.0.0.2.1919 = phi i32 [ %condval_2.sroa.0.0.copyload.2.1914, %if.then358.2.1917 ], [ 0, %if.end397.1.1911 ], !dbg !82
  %narrow = add nuw i32 %add226, 19, !dbg !231
  %cmp357.3.1922 = icmp slt i32 %narrow, 1024, !dbg !226
  br i1 %cmp357.3.1922, label %if.then358.3.1929, label %if.end397.3.1934, !dbg !227

if.then358.3.1929:                                ; preds = %if.end397.2.1923
  %506 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add364, !dbg !228
  %.idx766.3.1924 = shl nuw nsw i64 %conv111, 8, !dbg !228
  %507 = getelementptr inbounds i8, ptr addrspace(4) %506, i64 %.idx766.3.1924, !dbg !228
  %gep.3.1925 = getelementptr inbounds i8, ptr addrspace(4) %507, i64 4864, !dbg !228
  %condval_2.sroa.0.0.copyload.3.1926 = load i32, ptr addrspace(4) %gep.3.1925, align 8, !dbg !229, !tbaa !30
  %condval_2.sroa.5.0.add.ptr384.sroa_idx.3.1927 = getelementptr inbounds i8, ptr addrspace(4) %507, i64 4868, !dbg !229
  %condval_2.sroa.5.0.copyload.3.1928 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr384.sroa_idx.3.1927, align 4, !dbg !229, !tbaa !30
  br label %if.end397.3.1934, !dbg !230

if.end397.3.1934:                                 ; preds = %if.then358.3.1929, %if.end397.2.1923
  %condval_2.sroa.5.0.3.1930 = phi i32 [ %condval_2.sroa.5.0.copyload.3.1928, %if.then358.3.1929 ], [ 0, %if.end397.2.1923 ], !dbg !82
  %condval_2.sroa.0.0.3.1931 = phi i32 [ %condval_2.sroa.0.0.copyload.3.1926, %if.then358.3.1929 ], [ 0, %if.end397.2.1923 ], !dbg !82
  %508 = or disjoint i32 %mul431, 2048, !dbg !235
  %509 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %508, !dbg !232
  %add.ptr443.1943 = getelementptr inbounds i8, ptr addrspace(3) %509, i32 %add.ptr443.idx, !dbg !232
  %510 = and i32 %condval_2.sroa.0.0.3.1931, 65535, !dbg !233
  %v_column_local.sroa.66.0.insert.ext1232 = zext nneg i32 %510 to i64, !dbg !233
  %v_column_local.sroa.66.0.insert.shift1233 = shl nuw i64 %v_column_local.sroa.66.0.insert.ext1232, 48, !dbg !233
  %511 = and i32 %condval_2.sroa.0.0.2.1919, 65535, !dbg !233
  %v_column_local.sroa.50.0.insert.ext1157 = zext nneg i32 %511 to i64, !dbg !233
  %v_column_local.sroa.50.0.insert.shift1158 = shl nuw nsw i64 %v_column_local.sroa.50.0.insert.ext1157, 32, !dbg !233
  %v_column_local.sroa.50.0.insert.insert1160 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1233, %v_column_local.sroa.50.0.insert.shift1158, !dbg !233
  %512 = shl i32 %condval_2.sroa.0.0.1.1907, 16, !dbg !233
  %v_column_local.sroa.34.0.insert.shift1083 = zext i32 %512 to i64, !dbg !233
  %v_column_local.sroa.34.0.insert.insert1085 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1160, %v_column_local.sroa.34.0.insert.shift1083, !dbg !233
  %513 = and i32 %condval_2.sroa.0.0.1896, 65535, !dbg !233
  %v_column_local.sroa.0.0.insert.ext1015 = zext nneg i32 %513 to i64, !dbg !233
  %v_column_local.sroa.0.0.insert.insert1017 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1085, %v_column_local.sroa.0.0.insert.ext1015, !dbg !233
  store i64 %v_column_local.sroa.0.0.insert.insert1017, ptr addrspace(3) %add.ptr443.1943, align 8, !dbg !233
  %v_tile_local.sroa.0.2.extract.shift1281 = lshr i32 %condval_2.sroa.0.0.1896, 16, !dbg !234
  %v_tile_local.sroa.0.2.extract.trunc1282 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1281 to i64, !dbg !234
  %v_tile_local.sroa.26.10.extract.shift1311 = and i32 %condval_2.sroa.0.0.1.1907, -65536, !dbg !233
  %v_tile_local.sroa.50.18.extract.shift1341 = lshr i32 %condval_2.sroa.0.0.2.1919, 16, !dbg !234
  %v_tile_local.sroa.50.18.extract.trunc1342 = zext nneg i32 %v_tile_local.sroa.50.18.extract.shift1341 to i64, !dbg !234
  %v_tile_local.sroa.74.26.extract.shift1371 = lshr i32 %condval_2.sroa.0.0.3.1931, 16, !dbg !234
  %v_tile_local.sroa.74.26.extract.trunc1372 = zext nneg i32 %v_tile_local.sroa.74.26.extract.shift1371 to i64, !dbg !234
  %514 = or disjoint i32 %mul431, 2560, !dbg !235
  %515 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %514, !dbg !232
  %add.ptr443.1.1954 = getelementptr inbounds i8, ptr addrspace(3) %515, i32 %add.ptr443.idx.1, !dbg !232
  %v_column_local.sroa.66.0.insert.shift1238 = shl nuw i64 %v_tile_local.sroa.74.26.extract.trunc1372, 48, !dbg !233
  %v_column_local.sroa.50.0.insert.shift1163 = shl nuw nsw i64 %v_tile_local.sroa.50.18.extract.trunc1342, 32, !dbg !233
  %v_column_local.sroa.50.0.insert.insert1165 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1238, %v_column_local.sroa.50.0.insert.shift1163, !dbg !233
  %v_column_local.sroa.34.0.insert.shift1088 = zext i32 %v_tile_local.sroa.26.10.extract.shift1311 to i64, !dbg !233
  %v_column_local.sroa.34.0.insert.insert1090 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1165, %v_column_local.sroa.34.0.insert.shift1088, !dbg !233
  %v_column_local.sroa.0.0.insert.insert1021 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1090, %v_tile_local.sroa.0.2.extract.trunc1282, !dbg !233
  store i64 %v_column_local.sroa.0.0.insert.insert1021, ptr addrspace(3) %add.ptr443.1.1954, align 8, !dbg !233
  %516 = or disjoint i32 %mul431, 3072, !dbg !235
  %517 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %516, !dbg !232
  %add.ptr443.2.1965 = getelementptr inbounds i8, ptr addrspace(3) %517, i32 %add.ptr443.idx.2, !dbg !232
  %518 = and i32 %condval_2.sroa.5.0.3.1930, 65535, !dbg !233
  %v_column_local.sroa.66.0.insert.ext1242 = zext nneg i32 %518 to i64, !dbg !233
  %v_column_local.sroa.66.0.insert.shift1243 = shl nuw i64 %v_column_local.sroa.66.0.insert.ext1242, 48, !dbg !233
  %519 = and i32 %condval_2.sroa.5.0.2.1918, 65535, !dbg !233
  %v_column_local.sroa.50.0.insert.ext1167 = zext nneg i32 %519 to i64, !dbg !233
  %v_column_local.sroa.50.0.insert.shift1168 = shl nuw nsw i64 %v_column_local.sroa.50.0.insert.ext1167, 32, !dbg !233
  %v_column_local.sroa.50.0.insert.insert1170 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1243, %v_column_local.sroa.50.0.insert.shift1168, !dbg !233
  %520 = shl i32 %condval_2.sroa.5.0.1.1906, 16, !dbg !233
  %v_column_local.sroa.34.0.insert.shift1093 = zext i32 %520 to i64, !dbg !233
  %v_column_local.sroa.34.0.insert.insert1095 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1170, %v_column_local.sroa.34.0.insert.shift1093, !dbg !233
  %521 = and i32 %condval_2.sroa.5.0.1895, 65535, !dbg !233
  %v_column_local.sroa.0.0.insert.ext1023 = zext nneg i32 %521 to i64, !dbg !233
  %v_column_local.sroa.0.0.insert.insert1025 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1095, %v_column_local.sroa.0.0.insert.ext1023, !dbg !233
  store i64 %v_column_local.sroa.0.0.insert.insert1025, ptr addrspace(3) %add.ptr443.2.1965, align 8, !dbg !233
  %v_tile_local.sroa.14.6.extract.shift1296 = lshr i32 %condval_2.sroa.5.0.1895, 16, !dbg !234
  %v_tile_local.sroa.14.6.extract.trunc1297 = zext nneg i32 %v_tile_local.sroa.14.6.extract.shift1296 to i64, !dbg !234
  %v_tile_local.sroa.38.14.extract.shift1326 = and i32 %condval_2.sroa.5.0.1.1906, -65536, !dbg !233
  %v_tile_local.sroa.62.22.extract.shift1356 = lshr i32 %condval_2.sroa.5.0.2.1918, 16, !dbg !234
  %v_tile_local.sroa.62.22.extract.trunc1357 = zext nneg i32 %v_tile_local.sroa.62.22.extract.shift1356 to i64, !dbg !234
  %v_tile_local.sroa.86.30.extract.shift1386 = lshr i32 %condval_2.sroa.5.0.3.1930, 16, !dbg !234
  %v_tile_local.sroa.86.30.extract.trunc1387 = zext nneg i32 %v_tile_local.sroa.86.30.extract.shift1386 to i64, !dbg !234
  %522 = or disjoint i32 %mul431, 3584, !dbg !235
  %523 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %522, !dbg !232
  %add.ptr443.3.1976 = getelementptr inbounds i8, ptr addrspace(3) %523, i32 %add.ptr443.idx.3, !dbg !232
  %v_column_local.sroa.66.0.insert.shift1248 = shl nuw i64 %v_tile_local.sroa.86.30.extract.trunc1387, 48, !dbg !233
  %v_column_local.sroa.50.0.insert.shift1173 = shl nuw nsw i64 %v_tile_local.sroa.62.22.extract.trunc1357, 32, !dbg !233
  %v_column_local.sroa.50.0.insert.insert1175 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1248, %v_column_local.sroa.50.0.insert.shift1173, !dbg !233
  %v_column_local.sroa.34.0.insert.shift1098 = zext i32 %v_tile_local.sroa.38.14.extract.shift1326 to i64, !dbg !233
  %v_column_local.sroa.34.0.insert.insert1100 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1175, %v_column_local.sroa.34.0.insert.shift1098, !dbg !233
  %v_column_local.sroa.0.0.insert.insert1029 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1100, %v_tile_local.sroa.14.6.extract.trunc1297, !dbg !233
  store i64 %v_column_local.sroa.0.0.insert.insert1029, ptr addrspace(3) %add.ptr443.3.1976, align 8, !dbg !233
  br i1 %cmp357.1888, label %if.then358.1864.1, label %if.end397.1868.1, !dbg !227

if.then358.1864.1:                                ; preds = %if.end397.3.1934
  %524 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add364, !dbg !228
  %.idx766.1860.1 = shl nuw nsw i64 %conv111, 8, !dbg !228
  %525 = getelementptr inbounds i8, ptr addrspace(4) %524, i64 %.idx766.1860.1, !dbg !228
  %526 = getelementptr inbounds i8, ptr addrspace(4) %525, i64 4224, !dbg !228
  %condval_2.sroa.0.0.copyload.1861.1 = load i32, ptr addrspace(4) %526, align 8, !dbg !229, !tbaa !30
  %condval_2.sroa.5.0.add.ptr384.sroa_idx.1862.1 = getelementptr inbounds i8, ptr addrspace(4) %525, i64 4228, !dbg !229
  %condval_2.sroa.5.0.copyload.1863.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr384.sroa_idx.1862.1, align 4, !dbg !229, !tbaa !30
  br label %if.end397.1868.1, !dbg !230

if.end397.1868.1:                                 ; preds = %if.then358.1864.1, %if.end397.3.1934
  %condval_2.sroa.5.0.1865.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1863.1, %if.then358.1864.1 ], [ 0, %if.end397.3.1934 ], !dbg !82
  %condval_2.sroa.0.0.1866.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1861.1, %if.then358.1864.1 ], [ 0, %if.end397.3.1934 ], !dbg !82
  br i1 %cmp357.1.1898, label %if.then358.1.1.1, label %if.end397.1.1.1, !dbg !227

if.then358.1.1.1:                                 ; preds = %if.end397.1868.1
  %527 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add364, !dbg !228
  %.idx766.1.1.1 = shl nuw nsw i64 %conv111, 8, !dbg !228
  %528 = getelementptr inbounds i8, ptr addrspace(4) %527, i64 %.idx766.1.1.1, !dbg !228
  %gep.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %528, i64 4480, !dbg !228
  %condval_2.sroa.0.0.copyload.1.1.1 = load i32, ptr addrspace(4) %gep.1.1.1, align 8, !dbg !229, !tbaa !30
  %condval_2.sroa.5.0.add.ptr384.sroa_idx.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %528, i64 4484, !dbg !229
  %condval_2.sroa.5.0.copyload.1.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr384.sroa_idx.1.1.1, align 4, !dbg !229, !tbaa !30
  br label %if.end397.1.1.1, !dbg !230

if.end397.1.1.1:                                  ; preds = %if.then358.1.1.1, %if.end397.1868.1
  %condval_2.sroa.5.0.1.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1.1, %if.then358.1.1.1 ], [ 0, %if.end397.1868.1 ], !dbg !82
  %condval_2.sroa.0.0.1.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1.1, %if.then358.1.1.1 ], [ 0, %if.end397.1868.1 ], !dbg !82
  br i1 %cmp357.2.1910, label %if.then358.2.1.1, label %if.end397.2.1.1, !dbg !227

if.then358.2.1.1:                                 ; preds = %if.end397.1.1.1
  %529 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add364, !dbg !228
  %.idx766.2.1.1 = shl nuw nsw i64 %conv111, 8, !dbg !228
  %530 = getelementptr inbounds i8, ptr addrspace(4) %529, i64 %.idx766.2.1.1, !dbg !228
  %gep.2.1.1 = getelementptr inbounds i8, ptr addrspace(4) %530, i64 4736, !dbg !228
  %condval_2.sroa.0.0.copyload.2.1.1 = load i32, ptr addrspace(4) %gep.2.1.1, align 8, !dbg !229, !tbaa !30
  %condval_2.sroa.5.0.add.ptr384.sroa_idx.2.1.1 = getelementptr inbounds i8, ptr addrspace(4) %530, i64 4740, !dbg !229
  %condval_2.sroa.5.0.copyload.2.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr384.sroa_idx.2.1.1, align 4, !dbg !229, !tbaa !30
  br label %if.end397.2.1.1, !dbg !230

if.end397.2.1.1:                                  ; preds = %if.then358.2.1.1, %if.end397.1.1.1
  %condval_2.sroa.5.0.2.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.2.1.1, %if.then358.2.1.1 ], [ 0, %if.end397.1.1.1 ], !dbg !82
  %condval_2.sroa.0.0.2.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.2.1.1, %if.then358.2.1.1 ], [ 0, %if.end397.1.1.1 ], !dbg !82
  br i1 %cmp357.3.1922, label %if.then358.3.1.1, label %if.end397.3.1.1, !dbg !227

if.then358.3.1.1:                                 ; preds = %if.end397.2.1.1
  %531 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add364, !dbg !228
  %.idx766.3.1.1 = shl nuw nsw i64 %conv111, 8, !dbg !228
  %532 = getelementptr inbounds i8, ptr addrspace(4) %531, i64 %.idx766.3.1.1, !dbg !228
  %gep.3.1.1 = getelementptr inbounds i8, ptr addrspace(4) %532, i64 4992, !dbg !228
  %condval_2.sroa.0.0.copyload.3.1.1 = load i32, ptr addrspace(4) %gep.3.1.1, align 8, !dbg !229, !tbaa !30
  %condval_2.sroa.5.0.add.ptr384.sroa_idx.3.1.1 = getelementptr inbounds i8, ptr addrspace(4) %532, i64 4996, !dbg !229
  %condval_2.sroa.5.0.copyload.3.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr384.sroa_idx.3.1.1, align 4, !dbg !229, !tbaa !30
  br label %if.end397.3.1.1, !dbg !230

if.end397.3.1.1:                                  ; preds = %if.then358.3.1.1, %if.end397.2.1.1
  %condval_2.sroa.5.0.3.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.3.1.1, %if.then358.3.1.1 ], [ 0, %if.end397.2.1.1 ], !dbg !82
  %condval_2.sroa.0.0.3.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.3.1.1, %if.then358.3.1.1 ], [ 0, %if.end397.2.1.1 ], !dbg !82
  %533 = or disjoint i32 %mul431, 2304, !dbg !235
  %534 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %533, !dbg !232
  %add.ptr443.1876.1 = getelementptr inbounds i8, ptr addrspace(3) %534, i32 %add.ptr443.idx, !dbg !232
  %535 = and i32 %condval_2.sroa.0.0.3.1.1, 65535, !dbg !233
  %v_column_local.sroa.66.0.insert.ext1252 = zext nneg i32 %535 to i64, !dbg !233
  %v_column_local.sroa.66.0.insert.shift1253 = shl nuw i64 %v_column_local.sroa.66.0.insert.ext1252, 48, !dbg !233
  %536 = and i32 %condval_2.sroa.0.0.2.1.1, 65535, !dbg !233
  %v_column_local.sroa.50.0.insert.ext1177 = zext nneg i32 %536 to i64, !dbg !233
  %v_column_local.sroa.50.0.insert.shift1178 = shl nuw nsw i64 %v_column_local.sroa.50.0.insert.ext1177, 32, !dbg !233
  %v_column_local.sroa.50.0.insert.insert1180 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1253, %v_column_local.sroa.50.0.insert.shift1178, !dbg !233
  %537 = shl i32 %condval_2.sroa.0.0.1.1.1, 16, !dbg !233
  %v_column_local.sroa.34.0.insert.shift1103 = zext i32 %537 to i64, !dbg !233
  %v_column_local.sroa.34.0.insert.insert1105 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1180, %v_column_local.sroa.34.0.insert.shift1103, !dbg !233
  %538 = and i32 %condval_2.sroa.0.0.1866.1, 65535, !dbg !233
  %v_column_local.sroa.0.0.insert.ext1031 = zext nneg i32 %538 to i64, !dbg !233
  %v_column_local.sroa.0.0.insert.insert1033 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1105, %v_column_local.sroa.0.0.insert.ext1031, !dbg !233
  store i64 %v_column_local.sroa.0.0.insert.insert1033, ptr addrspace(3) %add.ptr443.1876.1, align 8, !dbg !233
  %v_tile_local.sroa.0.2.extract.shift1284 = lshr i32 %condval_2.sroa.0.0.1866.1, 16, !dbg !234
  %v_tile_local.sroa.0.2.extract.trunc1285 = zext nneg i32 %v_tile_local.sroa.0.2.extract.shift1284 to i64, !dbg !234
  %v_tile_local.sroa.26.10.extract.shift1314 = and i32 %condval_2.sroa.0.0.1.1.1, -65536, !dbg !233
  %v_tile_local.sroa.50.18.extract.shift1344 = lshr i32 %condval_2.sroa.0.0.2.1.1, 16, !dbg !234
  %v_tile_local.sroa.50.18.extract.trunc1345 = zext nneg i32 %v_tile_local.sroa.50.18.extract.shift1344 to i64, !dbg !234
  %v_tile_local.sroa.74.26.extract.shift1374 = lshr i32 %condval_2.sroa.0.0.3.1.1, 16, !dbg !234
  %v_tile_local.sroa.74.26.extract.trunc1375 = zext nneg i32 %v_tile_local.sroa.74.26.extract.shift1374 to i64, !dbg !234
  %539 = or disjoint i32 %mul431, 2816, !dbg !235
  %540 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %539, !dbg !232
  %add.ptr443.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %540, i32 %add.ptr443.idx.1, !dbg !232
  %v_column_local.sroa.66.0.insert.shift1258 = shl nuw i64 %v_tile_local.sroa.74.26.extract.trunc1375, 48, !dbg !233
  %v_column_local.sroa.50.0.insert.shift1183 = shl nuw nsw i64 %v_tile_local.sroa.50.18.extract.trunc1345, 32, !dbg !233
  %v_column_local.sroa.50.0.insert.insert1185 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1258, %v_column_local.sroa.50.0.insert.shift1183, !dbg !233
  %v_column_local.sroa.34.0.insert.shift1108 = zext i32 %v_tile_local.sroa.26.10.extract.shift1314 to i64, !dbg !233
  %v_column_local.sroa.34.0.insert.insert1110 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1185, %v_column_local.sroa.34.0.insert.shift1108, !dbg !233
  %v_column_local.sroa.0.0.insert.insert1037 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1110, %v_tile_local.sroa.0.2.extract.trunc1285, !dbg !233
  store i64 %v_column_local.sroa.0.0.insert.insert1037, ptr addrspace(3) %add.ptr443.1.1.1, align 8, !dbg !233
  %541 = or disjoint i32 %mul431, 3328, !dbg !235
  %542 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %541, !dbg !232
  %add.ptr443.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %542, i32 %add.ptr443.idx.2, !dbg !232
  %543 = and i32 %condval_2.sroa.5.0.3.1.1, 65535, !dbg !233
  %v_column_local.sroa.66.0.insert.ext1262 = zext nneg i32 %543 to i64, !dbg !233
  %v_column_local.sroa.66.0.insert.shift1263 = shl nuw i64 %v_column_local.sroa.66.0.insert.ext1262, 48, !dbg !233
  %544 = and i32 %condval_2.sroa.5.0.2.1.1, 65535, !dbg !233
  %v_column_local.sroa.50.0.insert.ext1187 = zext nneg i32 %544 to i64, !dbg !233
  %v_column_local.sroa.50.0.insert.shift1188 = shl nuw nsw i64 %v_column_local.sroa.50.0.insert.ext1187, 32, !dbg !233
  %v_column_local.sroa.50.0.insert.insert1190 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1263, %v_column_local.sroa.50.0.insert.shift1188, !dbg !233
  %545 = shl i32 %condval_2.sroa.5.0.1.1.1, 16, !dbg !233
  %v_column_local.sroa.34.0.insert.shift1113 = zext i32 %545 to i64, !dbg !233
  %v_column_local.sroa.34.0.insert.insert1115 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1190, %v_column_local.sroa.34.0.insert.shift1113, !dbg !233
  %546 = and i32 %condval_2.sroa.5.0.1865.1, 65535, !dbg !233
  %v_column_local.sroa.0.0.insert.ext1039 = zext nneg i32 %546 to i64, !dbg !233
  %v_column_local.sroa.0.0.insert.insert1041 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1115, %v_column_local.sroa.0.0.insert.ext1039, !dbg !233
  store i64 %v_column_local.sroa.0.0.insert.insert1041, ptr addrspace(3) %add.ptr443.2.1.1, align 8, !dbg !233
  %v_tile_local.sroa.14.6.extract.shift1299 = lshr i32 %condval_2.sroa.5.0.1865.1, 16, !dbg !234
  %v_tile_local.sroa.14.6.extract.trunc1300 = zext nneg i32 %v_tile_local.sroa.14.6.extract.shift1299 to i64, !dbg !234
  %v_tile_local.sroa.38.14.extract.shift1329 = and i32 %condval_2.sroa.5.0.1.1.1, -65536, !dbg !233
  %v_tile_local.sroa.62.22.extract.shift1359 = lshr i32 %condval_2.sroa.5.0.2.1.1, 16, !dbg !234
  %v_tile_local.sroa.62.22.extract.trunc1360 = zext nneg i32 %v_tile_local.sroa.62.22.extract.shift1359 to i64, !dbg !234
  %v_tile_local.sroa.86.30.extract.shift1389 = lshr i32 %condval_2.sroa.5.0.3.1.1, 16, !dbg !234
  %v_tile_local.sroa.86.30.extract.trunc1390 = zext nneg i32 %v_tile_local.sroa.86.30.extract.shift1389 to i64, !dbg !234
  %547 = or disjoint i32 %mul431, 3840, !dbg !235
  %548 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %547, !dbg !232
  %add.ptr443.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %548, i32 %add.ptr443.idx.3, !dbg !232
  %v_column_local.sroa.66.0.insert.shift1268 = shl nuw i64 %v_tile_local.sroa.86.30.extract.trunc1390, 48, !dbg !233
  %v_column_local.sroa.50.0.insert.shift1193 = shl nuw nsw i64 %v_tile_local.sroa.62.22.extract.trunc1360, 32, !dbg !233
  %v_column_local.sroa.50.0.insert.insert1195 = or disjoint i64 %v_column_local.sroa.66.0.insert.shift1268, %v_column_local.sroa.50.0.insert.shift1193, !dbg !233
  %v_column_local.sroa.34.0.insert.shift1118 = zext i32 %v_tile_local.sroa.38.14.extract.shift1329 to i64, !dbg !233
  %v_column_local.sroa.34.0.insert.insert1120 = or disjoint i64 %v_column_local.sroa.50.0.insert.insert1195, %v_column_local.sroa.34.0.insert.shift1118, !dbg !233
  %v_column_local.sroa.0.0.insert.insert1045 = or disjoint i64 %v_column_local.sroa.34.0.insert.insert1120, %v_tile_local.sroa.14.6.extract.trunc1300, !dbg !233
  store i64 %v_column_local.sroa.0.0.insert.insert1045, ptr addrspace(3) %add.ptr443.3.1.1, align 8, !dbg !233
  fence syncscope("warp") release, !dbg !236
  tail call void @llvm.mxc.barrier.warp(), !dbg !239
  fence syncscope("warp") acquire, !dbg !240
  br label %if.end453, !dbg !241

if.end453:                                        ; preds = %if.end397.3.1.1, %entry
  %scores_half.sroa.4.0 = phi <4 x half> [ undef, %entry ], [ %441, %if.end397.3.1.1 ]
  %scores_half.sroa.0.0 = phi <4 x half> [ undef, %entry ], [ %429, %if.end397.3.1.1 ]
  %denominator.sroa.0.1 = phi float [ 0.000000e+00, %entry ], [ %add.i.i.i, %if.end397.3.1.1 ], !dbg !82
  br i1 %or.cond, label %for.body526.preheader, label %for.cond472.preheader, !dbg !242

for.body526.preheader:                            ; preds = %if.end453
  %div530 = fdiv contract float 0.000000e+00, %denominator.sroa.0.1, !dbg !243
  %output_acc.sroa.0.0.vec.insert1531 = insertelement <4 x float> poison, float %div530, i64 0, !dbg !244
  %output_acc.sroa.0.12.vec.insert1546 = shufflevector <4 x float> %output_acc.sroa.0.0.vec.insert1531, <4 x float> poison, <4 x i32> zeroinitializer, !dbg !244
  %.pre = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  br label %if.end536

for.cond472.preheader:                            ; preds = %if.end453
  %549 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  %and482 = shl nuw nsw i32 %549, 9
  %mul483 = and i32 %and482, 1536
  %550 = shl nuw nsw i32 %549, 2
  %mul490 = and i32 %550, 48
  %shr493 = lshr i32 %549, 4
  %and497 = and i32 %549, 3
  %xor495 = xor i32 %and497, %shr493
  %add491 = or disjoint i32 %mul483, %mul490, !dbg !245
  %551 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add491, !dbg !246
  %add.ptr502.idx = shl nuw nsw i32 %xor495, 3, !dbg !246
  %add.ptr502 = getelementptr inbounds i8, ptr addrspace(3) %551, i32 %add.ptr502.idx, !dbg !246
  %v_operand.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr502, align 8, !dbg !247
  %552 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload, <4 x half> %scores_half.sroa.0.0, <4 x float> zeroinitializer), !dbg !248
  %add486.1 = or disjoint i32 %mul483, %mul490, !dbg !245
  %add491.1 = or disjoint i32 %add486.1, 64, !dbg !245
  %553 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add491.1, !dbg !246
  %xor498.1 = shl nuw nsw i32 %xor495, 3, !dbg !246
  %add.ptr502.idx.1 = xor i32 %xor498.1, 8, !dbg !246
  %add.ptr502.1 = getelementptr inbounds i8, ptr addrspace(3) %553, i32 %add.ptr502.idx.1, !dbg !246
  %v_operand.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr502.1, align 8, !dbg !247
  %554 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.1, <4 x half> %scores_half.sroa.0.0, <4 x float> zeroinitializer), !dbg !248
  %add486.2 = or disjoint i32 %mul483, %mul490, !dbg !245
  %add491.2 = or disjoint i32 %add486.2, 128, !dbg !245
  %555 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add491.2, !dbg !246
  %xor498.2 = shl nuw nsw i32 %xor495, 3, !dbg !246
  %add.ptr502.idx.2 = xor i32 %xor498.2, 16, !dbg !246
  %add.ptr502.2 = getelementptr inbounds i8, ptr addrspace(3) %555, i32 %add.ptr502.idx.2, !dbg !246
  %v_operand.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr502.2, align 8, !dbg !247
  %556 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.2, <4 x half> %scores_half.sroa.0.0, <4 x float> zeroinitializer), !dbg !248
  %add486.3 = or disjoint i32 %mul483, %mul490, !dbg !245
  %add491.3 = or disjoint i32 %add486.3, 192, !dbg !245
  %557 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add491.3, !dbg !246
  %xor498.3 = shl nuw nsw i32 %xor495, 3, !dbg !246
  %add.ptr502.idx.3 = xor i32 %xor498.3, 24, !dbg !246
  %add.ptr502.3 = getelementptr inbounds i8, ptr addrspace(3) %557, i32 %add.ptr502.idx.3, !dbg !246
  %v_operand.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr502.3, align 8, !dbg !247
  %558 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.3, <4 x half> %scores_half.sroa.0.0, <4 x float> zeroinitializer), !dbg !248
  %add486.4 = or disjoint i32 %mul483, %mul490, !dbg !245
  %add491.4 = or disjoint i32 %add486.4, 256, !dbg !245
  %559 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add491.4, !dbg !246
  %add.ptr502.4 = getelementptr inbounds i8, ptr addrspace(3) %559, i32 %add.ptr502.idx, !dbg !246
  %v_operand.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %add.ptr502.4, align 8, !dbg !247
  %560 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.4, <4 x half> %scores_half.sroa.0.0, <4 x float> zeroinitializer), !dbg !248
  %add486.5 = or disjoint i32 %mul483, %mul490, !dbg !245
  %add491.5 = or disjoint i32 %add486.5, 320, !dbg !245
  %561 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add491.5, !dbg !246
  %add.ptr502.5 = getelementptr inbounds i8, ptr addrspace(3) %561, i32 %add.ptr502.idx.1, !dbg !246
  %v_operand.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %add.ptr502.5, align 8, !dbg !247
  %562 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.5, <4 x half> %scores_half.sroa.0.0, <4 x float> zeroinitializer), !dbg !248
  %add486.6 = or disjoint i32 %mul483, %mul490, !dbg !245
  %add491.6 = or disjoint i32 %add486.6, 384, !dbg !245
  %563 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add491.6, !dbg !246
  %add.ptr502.6 = getelementptr inbounds i8, ptr addrspace(3) %563, i32 %add.ptr502.idx.2, !dbg !246
  %v_operand.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %add.ptr502.6, align 8, !dbg !247
  %564 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.6, <4 x half> %scores_half.sroa.0.0, <4 x float> zeroinitializer), !dbg !248
  %add486.7 = or disjoint i32 %mul483, %mul490, !dbg !245
  %add491.7 = or disjoint i32 %add486.7, 448, !dbg !245
  %565 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add491.7, !dbg !246
  %add.ptr502.7 = getelementptr inbounds i8, ptr addrspace(3) %565, i32 %add.ptr502.idx.3, !dbg !246
  %v_operand.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %add.ptr502.7, align 8, !dbg !247
  %566 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.7, <4 x half> %scores_half.sroa.0.0, <4 x float> zeroinitializer), !dbg !248
  %add484.1 = or disjoint i32 %mul483, %mul490, !dbg !245
  %add491.1978 = or disjoint i32 %add484.1, 2048, !dbg !245
  %567 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add491.1978, !dbg !246
  %add.ptr502.1980 = getelementptr inbounds i8, ptr addrspace(3) %567, i32 %add.ptr502.idx, !dbg !246
  %v_operand.sroa.0.0.copyload.1981 = load <4 x half>, ptr addrspace(3) %add.ptr502.1980, align 8, !dbg !247
  %568 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.1981, <4 x half> %scores_half.sroa.4.0, <4 x float> %552), !dbg !248
  %add486.1.1 = or disjoint i32 %mul483, %mul490, !dbg !245
  %add491.1.1 = or disjoint i32 %add486.1.1, 2112, !dbg !245
  %569 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add491.1.1, !dbg !246
  %add.ptr502.1.1 = getelementptr inbounds i8, ptr addrspace(3) %569, i32 %add.ptr502.idx.1, !dbg !246
  %v_operand.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr502.1.1, align 8, !dbg !247
  %570 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.1.1, <4 x half> %scores_half.sroa.4.0, <4 x float> %554), !dbg !248
  %add486.2.1 = or disjoint i32 %mul483, %mul490, !dbg !245
  %add491.2.1 = or disjoint i32 %add486.2.1, 2176, !dbg !245
  %571 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add491.2.1, !dbg !246
  %add.ptr502.2.1 = getelementptr inbounds i8, ptr addrspace(3) %571, i32 %add.ptr502.idx.2, !dbg !246
  %v_operand.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr502.2.1, align 8, !dbg !247
  %572 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.2.1, <4 x half> %scores_half.sroa.4.0, <4 x float> %556), !dbg !248
  %add486.3.1 = or disjoint i32 %mul483, %mul490, !dbg !245
  %add491.3.1 = or disjoint i32 %add486.3.1, 2240, !dbg !245
  %573 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add491.3.1, !dbg !246
  %add.ptr502.3.1 = getelementptr inbounds i8, ptr addrspace(3) %573, i32 %add.ptr502.idx.3, !dbg !246
  %v_operand.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr502.3.1, align 8, !dbg !247
  %574 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.3.1, <4 x half> %scores_half.sroa.4.0, <4 x float> %558), !dbg !248
  %add486.4.1 = or disjoint i32 %mul483, %mul490, !dbg !245
  %add491.4.1 = or disjoint i32 %add486.4.1, 2304, !dbg !245
  %575 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add491.4.1, !dbg !246
  %add.ptr502.4.1 = getelementptr inbounds i8, ptr addrspace(3) %575, i32 %add.ptr502.idx, !dbg !246
  %v_operand.sroa.0.0.copyload.4.1 = load <4 x half>, ptr addrspace(3) %add.ptr502.4.1, align 8, !dbg !247
  %576 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.4.1, <4 x half> %scores_half.sroa.4.0, <4 x float> %560), !dbg !248
  %add486.5.1 = or disjoint i32 %mul483, %mul490, !dbg !245
  %add491.5.1 = or disjoint i32 %add486.5.1, 2368, !dbg !245
  %577 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add491.5.1, !dbg !246
  %add.ptr502.5.1 = getelementptr inbounds i8, ptr addrspace(3) %577, i32 %add.ptr502.idx.1, !dbg !246
  %v_operand.sroa.0.0.copyload.5.1 = load <4 x half>, ptr addrspace(3) %add.ptr502.5.1, align 8, !dbg !247
  %578 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.5.1, <4 x half> %scores_half.sroa.4.0, <4 x float> %562), !dbg !248
  %add486.6.1 = or disjoint i32 %mul483, %mul490, !dbg !245
  %add491.6.1 = or disjoint i32 %add486.6.1, 2432, !dbg !245
  %579 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add491.6.1, !dbg !246
  %add.ptr502.6.1 = getelementptr inbounds i8, ptr addrspace(3) %579, i32 %add.ptr502.idx.2, !dbg !246
  %v_operand.sroa.0.0.copyload.6.1 = load <4 x half>, ptr addrspace(3) %add.ptr502.6.1, align 8, !dbg !247
  %580 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.6.1, <4 x half> %scores_half.sroa.4.0, <4 x float> %564), !dbg !248
  %add486.7.1 = or disjoint i32 %mul483, %mul490, !dbg !245
  %add491.7.1 = or disjoint i32 %add486.7.1, 2496, !dbg !245
  %581 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add491.7.1, !dbg !246
  %add.ptr502.7.1 = getelementptr inbounds i8, ptr addrspace(3) %581, i32 %add.ptr502.idx.3, !dbg !246
  %v_operand.sroa.0.0.copyload.7.1 = load <4 x half>, ptr addrspace(3) %add.ptr502.7.1, align 8, !dbg !247
  %582 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.7.1, <4 x half> %scores_half.sroa.4.0, <4 x float> %566), !dbg !248
  br label %if.end536

if.end536:                                        ; preds = %for.cond472.preheader, %for.body526.preheader
  %.pre-phi = phi i32 [ %549, %for.cond472.preheader ], [ %.pre, %for.body526.preheader ]
  %output_acc.sroa.142.0 = phi <4 x float> [ %582, %for.cond472.preheader ], [ %output_acc.sroa.0.12.vec.insert1546, %for.body526.preheader ], !dbg !82
  %output_acc.sroa.122.0 = phi <4 x float> [ %580, %for.cond472.preheader ], [ %output_acc.sroa.0.12.vec.insert1546, %for.body526.preheader ], !dbg !82
  %output_acc.sroa.102.0 = phi <4 x float> [ %578, %for.cond472.preheader ], [ %output_acc.sroa.0.12.vec.insert1546, %for.body526.preheader ], !dbg !82
  %output_acc.sroa.82.0 = phi <4 x float> [ %576, %for.cond472.preheader ], [ %output_acc.sroa.0.12.vec.insert1546, %for.body526.preheader ], !dbg !82
  %output_acc.sroa.62.0 = phi <4 x float> [ %574, %for.cond472.preheader ], [ %output_acc.sroa.0.12.vec.insert1546, %for.body526.preheader ], !dbg !82
  %output_acc.sroa.42.0 = phi <4 x float> [ %572, %for.cond472.preheader ], [ %output_acc.sroa.0.12.vec.insert1546, %for.body526.preheader ], !dbg !82
  %output_acc.sroa.22.0 = phi <4 x float> [ %570, %for.cond472.preheader ], [ %output_acc.sroa.0.12.vec.insert1546, %for.body526.preheader ], !dbg !82
  %output_acc.sroa.0.0 = phi <4 x float> [ %568, %for.cond472.preheader ], [ %output_acc.sroa.0.12.vec.insert1546, %for.body526.preheader ], !dbg !82
  %mul560 = shl nsw i32 %0, 21
  %mul562 = shl nsw i32 %1, 11
  %add563 = add nuw nsw i32 %mul560, %mul562
  %and565 = shl nuw nsw i32 %.pre-phi, 7
  %mul566 = and i32 %and565, 1920
  %add567 = or disjoint i32 %add563, %mul566
  %583 = lshr i32 %.pre-phi, 2
  %mul572 = and i32 %583, 252
  %add569 = add nuw nsw i32 %add567, %mul572
  %584 = zext nneg i32 %add569 to i64, !dbg !249
  %output_acc.sroa.0.0.vec.extract1533 = extractelement <4 x float> %output_acc.sroa.0.0, i64 0, !dbg !250
  %output_acc.sroa.0.4.vec.extract1538 = extractelement <4 x float> %output_acc.sroa.0.0, i64 1, !dbg !250
  %output_acc.sroa.0.8.vec.extract1543 = extractelement <4 x float> %output_acc.sroa.0.0, i64 2, !dbg !250
  %output_acc.sroa.0.12.vec.extract1548 = extractelement <4 x float> %output_acc.sroa.0.0, i64 3, !dbg !250
  %585 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !255
  %586 = fptrunc float %output_acc.sroa.0.0.vec.extract1533 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %585), !dbg !251, !noalias !255
  %587 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !255
  %588 = fptrunc float %output_acc.sroa.0.4.vec.extract1538 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %587), !dbg !260, !noalias !255
  %589 = bitcast half %586 to i16, !dbg !262
  %590 = bitcast half %588 to i16, !dbg !265
  %591 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !270
  %592 = fptrunc float %output_acc.sroa.0.8.vec.extract1543 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %591), !dbg !266, !noalias !270
  %593 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !270
  %594 = fptrunc float %output_acc.sroa.0.12.vec.extract1548 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %593), !dbg !275, !noalias !270
  %595 = bitcast half %592 to i16, !dbg !277
  %596 = bitcast half %594 to i16, !dbg !279
  %__2.sroa.6.0.insert.ext = zext i16 %596 to i64, !dbg !280
  %__2.sroa.6.0.insert.shift = shl nuw i64 %__2.sroa.6.0.insert.ext, 48, !dbg !280
  %__2.sroa.5.0.insert.ext = zext i16 %595 to i64, !dbg !280
  %__2.sroa.5.0.insert.shift = shl nuw nsw i64 %__2.sroa.5.0.insert.ext, 32, !dbg !280
  %__2.sroa.5.0.insert.insert = or disjoint i64 %__2.sroa.6.0.insert.shift, %__2.sroa.5.0.insert.shift, !dbg !280
  %__2.sroa.4.0.insert.ext = zext i16 %590 to i64, !dbg !280
  %__2.sroa.4.0.insert.shift = shl nuw nsw i64 %__2.sroa.4.0.insert.ext, 16, !dbg !280
  %__2.sroa.4.0.insert.insert = or disjoint i64 %__2.sroa.5.0.insert.insert, %__2.sroa.4.0.insert.shift, !dbg !280
  %__2.sroa.0.0.insert.ext = zext i16 %589 to i64, !dbg !280
  %__2.sroa.0.0.insert.insert = or disjoint i64 %__2.sroa.4.0.insert.insert, %__2.sroa.0.0.insert.ext, !dbg !280
  %add.ptr575 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %584, !dbg !281
  store i64 %__2.sroa.0.0.insert.insert, ptr addrspace(1) %add.ptr575, align 8, !dbg !282
  %output_acc.sroa.22.16.vec.extract1555 = extractelement <4 x float> %output_acc.sroa.22.0, i64 0, !dbg !250
  %output_acc.sroa.22.20.vec.extract1560 = extractelement <4 x float> %output_acc.sroa.22.0, i64 1, !dbg !250
  %output_acc.sroa.22.24.vec.extract1565 = extractelement <4 x float> %output_acc.sroa.22.0, i64 2, !dbg !250
  %output_acc.sroa.22.28.vec.extract1570 = extractelement <4 x float> %output_acc.sroa.22.0, i64 3, !dbg !250
  %597 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !255
  %598 = fptrunc float %output_acc.sroa.22.16.vec.extract1555 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %597), !dbg !251, !noalias !255
  %599 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !255
  %600 = fptrunc float %output_acc.sroa.22.20.vec.extract1560 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %599), !dbg !260, !noalias !255
  %601 = bitcast half %598 to i16, !dbg !262
  %602 = bitcast half %600 to i16, !dbg !265
  %603 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !270
  %604 = fptrunc float %output_acc.sroa.22.24.vec.extract1565 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %603), !dbg !266, !noalias !270
  %605 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !270
  %606 = fptrunc float %output_acc.sroa.22.28.vec.extract1570 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %605), !dbg !275, !noalias !270
  %607 = bitcast half %604 to i16, !dbg !277
  %608 = bitcast half %606 to i16, !dbg !279
  %__2.sroa.6.0.insert.ext.1 = zext i16 %608 to i64, !dbg !280
  %__2.sroa.6.0.insert.shift.1 = shl nuw i64 %__2.sroa.6.0.insert.ext.1, 48, !dbg !280
  %__2.sroa.5.0.insert.ext.1 = zext i16 %607 to i64, !dbg !280
  %__2.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.1, 32, !dbg !280
  %__2.sroa.5.0.insert.insert.1 = or disjoint i64 %__2.sroa.6.0.insert.shift.1, %__2.sroa.5.0.insert.shift.1, !dbg !280
  %__2.sroa.4.0.insert.ext.1 = zext i16 %602 to i64, !dbg !280
  %__2.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.1, 16, !dbg !280
  %__2.sroa.4.0.insert.insert.1 = or disjoint i64 %__2.sroa.5.0.insert.insert.1, %__2.sroa.4.0.insert.shift.1, !dbg !280
  %__2.sroa.0.0.insert.ext.1 = zext i16 %601 to i64, !dbg !280
  %__2.sroa.0.0.insert.insert.1 = or disjoint i64 %__2.sroa.4.0.insert.insert.1, %__2.sroa.0.0.insert.ext.1, !dbg !280
  %609 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %584, !dbg !281
  %add.ptr575.1 = getelementptr inbounds i8, ptr addrspace(1) %609, i64 32, !dbg !281
  store i64 %__2.sroa.0.0.insert.insert.1, ptr addrspace(1) %add.ptr575.1, align 8, !dbg !282
  %output_acc.sroa.42.32.vec.extract1577 = extractelement <4 x float> %output_acc.sroa.42.0, i64 0, !dbg !250
  %output_acc.sroa.42.36.vec.extract1582 = extractelement <4 x float> %output_acc.sroa.42.0, i64 1, !dbg !250
  %output_acc.sroa.42.40.vec.extract1587 = extractelement <4 x float> %output_acc.sroa.42.0, i64 2, !dbg !250
  %output_acc.sroa.42.44.vec.extract1592 = extractelement <4 x float> %output_acc.sroa.42.0, i64 3, !dbg !250
  %610 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !255
  %611 = fptrunc float %output_acc.sroa.42.32.vec.extract1577 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %610), !dbg !251, !noalias !255
  %612 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !255
  %613 = fptrunc float %output_acc.sroa.42.36.vec.extract1582 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %612), !dbg !260, !noalias !255
  %614 = bitcast half %611 to i16, !dbg !262
  %615 = bitcast half %613 to i16, !dbg !265
  %616 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !270
  %617 = fptrunc float %output_acc.sroa.42.40.vec.extract1587 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %616), !dbg !266, !noalias !270
  %618 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !270
  %619 = fptrunc float %output_acc.sroa.42.44.vec.extract1592 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %618), !dbg !275, !noalias !270
  %620 = bitcast half %617 to i16, !dbg !277
  %621 = bitcast half %619 to i16, !dbg !279
  %__2.sroa.6.0.insert.ext.2 = zext i16 %621 to i64, !dbg !280
  %__2.sroa.6.0.insert.shift.2 = shl nuw i64 %__2.sroa.6.0.insert.ext.2, 48, !dbg !280
  %__2.sroa.5.0.insert.ext.2 = zext i16 %620 to i64, !dbg !280
  %__2.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.2, 32, !dbg !280
  %__2.sroa.5.0.insert.insert.2 = or disjoint i64 %__2.sroa.6.0.insert.shift.2, %__2.sroa.5.0.insert.shift.2, !dbg !280
  %__2.sroa.4.0.insert.ext.2 = zext i16 %615 to i64, !dbg !280
  %__2.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.2, 16, !dbg !280
  %__2.sroa.4.0.insert.insert.2 = or disjoint i64 %__2.sroa.5.0.insert.insert.2, %__2.sroa.4.0.insert.shift.2, !dbg !280
  %__2.sroa.0.0.insert.ext.2 = zext i16 %614 to i64, !dbg !280
  %__2.sroa.0.0.insert.insert.2 = or disjoint i64 %__2.sroa.4.0.insert.insert.2, %__2.sroa.0.0.insert.ext.2, !dbg !280
  %622 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %584, !dbg !281
  %add.ptr575.2 = getelementptr inbounds i8, ptr addrspace(1) %622, i64 64, !dbg !281
  store i64 %__2.sroa.0.0.insert.insert.2, ptr addrspace(1) %add.ptr575.2, align 8, !dbg !282
  %output_acc.sroa.62.48.vec.extract1599 = extractelement <4 x float> %output_acc.sroa.62.0, i64 0, !dbg !250
  %output_acc.sroa.62.52.vec.extract1604 = extractelement <4 x float> %output_acc.sroa.62.0, i64 1, !dbg !250
  %output_acc.sroa.62.56.vec.extract1609 = extractelement <4 x float> %output_acc.sroa.62.0, i64 2, !dbg !250
  %output_acc.sroa.62.60.vec.extract1614 = extractelement <4 x float> %output_acc.sroa.62.0, i64 3, !dbg !250
  %623 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !255
  %624 = fptrunc float %output_acc.sroa.62.48.vec.extract1599 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %623), !dbg !251, !noalias !255
  %625 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !255
  %626 = fptrunc float %output_acc.sroa.62.52.vec.extract1604 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %625), !dbg !260, !noalias !255
  %627 = bitcast half %624 to i16, !dbg !262
  %628 = bitcast half %626 to i16, !dbg !265
  %629 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !270
  %630 = fptrunc float %output_acc.sroa.62.56.vec.extract1609 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %629), !dbg !266, !noalias !270
  %631 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !270
  %632 = fptrunc float %output_acc.sroa.62.60.vec.extract1614 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %631), !dbg !275, !noalias !270
  %633 = bitcast half %630 to i16, !dbg !277
  %634 = bitcast half %632 to i16, !dbg !279
  %__2.sroa.6.0.insert.ext.3 = zext i16 %634 to i64, !dbg !280
  %__2.sroa.6.0.insert.shift.3 = shl nuw i64 %__2.sroa.6.0.insert.ext.3, 48, !dbg !280
  %__2.sroa.5.0.insert.ext.3 = zext i16 %633 to i64, !dbg !280
  %__2.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.3, 32, !dbg !280
  %__2.sroa.5.0.insert.insert.3 = or disjoint i64 %__2.sroa.6.0.insert.shift.3, %__2.sroa.5.0.insert.shift.3, !dbg !280
  %__2.sroa.4.0.insert.ext.3 = zext i16 %628 to i64, !dbg !280
  %__2.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.3, 16, !dbg !280
  %__2.sroa.4.0.insert.insert.3 = or disjoint i64 %__2.sroa.5.0.insert.insert.3, %__2.sroa.4.0.insert.shift.3, !dbg !280
  %__2.sroa.0.0.insert.ext.3 = zext i16 %627 to i64, !dbg !280
  %__2.sroa.0.0.insert.insert.3 = or disjoint i64 %__2.sroa.4.0.insert.insert.3, %__2.sroa.0.0.insert.ext.3, !dbg !280
  %635 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %584, !dbg !281
  %add.ptr575.3 = getelementptr inbounds i8, ptr addrspace(1) %635, i64 96, !dbg !281
  store i64 %__2.sroa.0.0.insert.insert.3, ptr addrspace(1) %add.ptr575.3, align 8, !dbg !282
  %output_acc.sroa.82.64.vec.extract1621 = extractelement <4 x float> %output_acc.sroa.82.0, i64 0, !dbg !250
  %output_acc.sroa.82.68.vec.extract1626 = extractelement <4 x float> %output_acc.sroa.82.0, i64 1, !dbg !250
  %output_acc.sroa.82.72.vec.extract1631 = extractelement <4 x float> %output_acc.sroa.82.0, i64 2, !dbg !250
  %output_acc.sroa.82.76.vec.extract1636 = extractelement <4 x float> %output_acc.sroa.82.0, i64 3, !dbg !250
  %636 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !255
  %637 = fptrunc float %output_acc.sroa.82.64.vec.extract1621 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %636), !dbg !251, !noalias !255
  %638 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !255
  %639 = fptrunc float %output_acc.sroa.82.68.vec.extract1626 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %638), !dbg !260, !noalias !255
  %640 = bitcast half %637 to i16, !dbg !262
  %641 = bitcast half %639 to i16, !dbg !265
  %642 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !270
  %643 = fptrunc float %output_acc.sroa.82.72.vec.extract1631 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %642), !dbg !266, !noalias !270
  %644 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !270
  %645 = fptrunc float %output_acc.sroa.82.76.vec.extract1636 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %644), !dbg !275, !noalias !270
  %646 = bitcast half %643 to i16, !dbg !277
  %647 = bitcast half %645 to i16, !dbg !279
  %__2.sroa.6.0.insert.ext.4 = zext i16 %647 to i64, !dbg !280
  %__2.sroa.6.0.insert.shift.4 = shl nuw i64 %__2.sroa.6.0.insert.ext.4, 48, !dbg !280
  %__2.sroa.5.0.insert.ext.4 = zext i16 %646 to i64, !dbg !280
  %__2.sroa.5.0.insert.shift.4 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.4, 32, !dbg !280
  %__2.sroa.5.0.insert.insert.4 = or disjoint i64 %__2.sroa.6.0.insert.shift.4, %__2.sroa.5.0.insert.shift.4, !dbg !280
  %__2.sroa.4.0.insert.ext.4 = zext i16 %641 to i64, !dbg !280
  %__2.sroa.4.0.insert.shift.4 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.4, 16, !dbg !280
  %__2.sroa.4.0.insert.insert.4 = or disjoint i64 %__2.sroa.5.0.insert.insert.4, %__2.sroa.4.0.insert.shift.4, !dbg !280
  %__2.sroa.0.0.insert.ext.4 = zext i16 %640 to i64, !dbg !280
  %__2.sroa.0.0.insert.insert.4 = or disjoint i64 %__2.sroa.4.0.insert.insert.4, %__2.sroa.0.0.insert.ext.4, !dbg !280
  %648 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %584, !dbg !281
  %add.ptr575.4 = getelementptr inbounds i8, ptr addrspace(1) %648, i64 128, !dbg !281
  store i64 %__2.sroa.0.0.insert.insert.4, ptr addrspace(1) %add.ptr575.4, align 8, !dbg !282
  %output_acc.sroa.102.80.vec.extract1643 = extractelement <4 x float> %output_acc.sroa.102.0, i64 0, !dbg !250
  %output_acc.sroa.102.84.vec.extract1648 = extractelement <4 x float> %output_acc.sroa.102.0, i64 1, !dbg !250
  %output_acc.sroa.102.88.vec.extract1653 = extractelement <4 x float> %output_acc.sroa.102.0, i64 2, !dbg !250
  %output_acc.sroa.102.92.vec.extract1658 = extractelement <4 x float> %output_acc.sroa.102.0, i64 3, !dbg !250
  %649 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !255
  %650 = fptrunc float %output_acc.sroa.102.80.vec.extract1643 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %649), !dbg !251, !noalias !255
  %651 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !255
  %652 = fptrunc float %output_acc.sroa.102.84.vec.extract1648 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %651), !dbg !260, !noalias !255
  %653 = bitcast half %650 to i16, !dbg !262
  %654 = bitcast half %652 to i16, !dbg !265
  %655 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !270
  %656 = fptrunc float %output_acc.sroa.102.88.vec.extract1653 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %655), !dbg !266, !noalias !270
  %657 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !270
  %658 = fptrunc float %output_acc.sroa.102.92.vec.extract1658 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %657), !dbg !275, !noalias !270
  %659 = bitcast half %656 to i16, !dbg !277
  %660 = bitcast half %658 to i16, !dbg !279
  %__2.sroa.6.0.insert.ext.5 = zext i16 %660 to i64, !dbg !280
  %__2.sroa.6.0.insert.shift.5 = shl nuw i64 %__2.sroa.6.0.insert.ext.5, 48, !dbg !280
  %__2.sroa.5.0.insert.ext.5 = zext i16 %659 to i64, !dbg !280
  %__2.sroa.5.0.insert.shift.5 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.5, 32, !dbg !280
  %__2.sroa.5.0.insert.insert.5 = or disjoint i64 %__2.sroa.6.0.insert.shift.5, %__2.sroa.5.0.insert.shift.5, !dbg !280
  %__2.sroa.4.0.insert.ext.5 = zext i16 %654 to i64, !dbg !280
  %__2.sroa.4.0.insert.shift.5 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.5, 16, !dbg !280
  %__2.sroa.4.0.insert.insert.5 = or disjoint i64 %__2.sroa.5.0.insert.insert.5, %__2.sroa.4.0.insert.shift.5, !dbg !280
  %__2.sroa.0.0.insert.ext.5 = zext i16 %653 to i64, !dbg !280
  %__2.sroa.0.0.insert.insert.5 = or disjoint i64 %__2.sroa.4.0.insert.insert.5, %__2.sroa.0.0.insert.ext.5, !dbg !280
  %661 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %584, !dbg !281
  %add.ptr575.5 = getelementptr inbounds i8, ptr addrspace(1) %661, i64 160, !dbg !281
  store i64 %__2.sroa.0.0.insert.insert.5, ptr addrspace(1) %add.ptr575.5, align 8, !dbg !282
  %output_acc.sroa.122.96.vec.extract1665 = extractelement <4 x float> %output_acc.sroa.122.0, i64 0, !dbg !250
  %output_acc.sroa.122.100.vec.extract1670 = extractelement <4 x float> %output_acc.sroa.122.0, i64 1, !dbg !250
  %output_acc.sroa.122.104.vec.extract1675 = extractelement <4 x float> %output_acc.sroa.122.0, i64 2, !dbg !250
  %output_acc.sroa.122.108.vec.extract1680 = extractelement <4 x float> %output_acc.sroa.122.0, i64 3, !dbg !250
  %662 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !255
  %663 = fptrunc float %output_acc.sroa.122.96.vec.extract1665 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %662), !dbg !251, !noalias !255
  %664 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !255
  %665 = fptrunc float %output_acc.sroa.122.100.vec.extract1670 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %664), !dbg !260, !noalias !255
  %666 = bitcast half %663 to i16, !dbg !262
  %667 = bitcast half %665 to i16, !dbg !265
  %668 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !270
  %669 = fptrunc float %output_acc.sroa.122.104.vec.extract1675 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %668), !dbg !266, !noalias !270
  %670 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !270
  %671 = fptrunc float %output_acc.sroa.122.108.vec.extract1680 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %670), !dbg !275, !noalias !270
  %672 = bitcast half %669 to i16, !dbg !277
  %673 = bitcast half %671 to i16, !dbg !279
  %__2.sroa.6.0.insert.ext.6 = zext i16 %673 to i64, !dbg !280
  %__2.sroa.6.0.insert.shift.6 = shl nuw i64 %__2.sroa.6.0.insert.ext.6, 48, !dbg !280
  %__2.sroa.5.0.insert.ext.6 = zext i16 %672 to i64, !dbg !280
  %__2.sroa.5.0.insert.shift.6 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.6, 32, !dbg !280
  %__2.sroa.5.0.insert.insert.6 = or disjoint i64 %__2.sroa.6.0.insert.shift.6, %__2.sroa.5.0.insert.shift.6, !dbg !280
  %__2.sroa.4.0.insert.ext.6 = zext i16 %667 to i64, !dbg !280
  %__2.sroa.4.0.insert.shift.6 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.6, 16, !dbg !280
  %__2.sroa.4.0.insert.insert.6 = or disjoint i64 %__2.sroa.5.0.insert.insert.6, %__2.sroa.4.0.insert.shift.6, !dbg !280
  %__2.sroa.0.0.insert.ext.6 = zext i16 %666 to i64, !dbg !280
  %__2.sroa.0.0.insert.insert.6 = or disjoint i64 %__2.sroa.4.0.insert.insert.6, %__2.sroa.0.0.insert.ext.6, !dbg !280
  %674 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %584, !dbg !281
  %add.ptr575.6 = getelementptr inbounds i8, ptr addrspace(1) %674, i64 192, !dbg !281
  store i64 %__2.sroa.0.0.insert.insert.6, ptr addrspace(1) %add.ptr575.6, align 8, !dbg !282
  %output_acc.sroa.142.112.vec.extract1687 = extractelement <4 x float> %output_acc.sroa.142.0, i64 0, !dbg !250
  %output_acc.sroa.142.116.vec.extract1692 = extractelement <4 x float> %output_acc.sroa.142.0, i64 1, !dbg !250
  %output_acc.sroa.142.120.vec.extract1697 = extractelement <4 x float> %output_acc.sroa.142.0, i64 2, !dbg !250
  %output_acc.sroa.142.124.vec.extract1702 = extractelement <4 x float> %output_acc.sroa.142.0, i64 3, !dbg !250
  %675 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !255
  %676 = fptrunc float %output_acc.sroa.142.112.vec.extract1687 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %675), !dbg !251, !noalias !255
  %677 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !255
  %678 = fptrunc float %output_acc.sroa.142.116.vec.extract1692 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %677), !dbg !260, !noalias !255
  %679 = bitcast half %676 to i16, !dbg !262
  %680 = bitcast half %678 to i16, !dbg !265
  %681 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !270
  %682 = fptrunc float %output_acc.sroa.142.120.vec.extract1697 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %681), !dbg !266, !noalias !270
  %683 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !270
  %684 = fptrunc float %output_acc.sroa.142.124.vec.extract1702 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %683), !dbg !275, !noalias !270
  %685 = bitcast half %682 to i16, !dbg !277
  %686 = bitcast half %684 to i16, !dbg !279
  %__2.sroa.6.0.insert.ext.7 = zext i16 %686 to i64, !dbg !280
  %__2.sroa.6.0.insert.shift.7 = shl nuw i64 %__2.sroa.6.0.insert.ext.7, 48, !dbg !280
  %__2.sroa.5.0.insert.ext.7 = zext i16 %685 to i64, !dbg !280
  %__2.sroa.5.0.insert.shift.7 = shl nuw nsw i64 %__2.sroa.5.0.insert.ext.7, 32, !dbg !280
  %__2.sroa.5.0.insert.insert.7 = or disjoint i64 %__2.sroa.6.0.insert.shift.7, %__2.sroa.5.0.insert.shift.7, !dbg !280
  %__2.sroa.4.0.insert.ext.7 = zext i16 %680 to i64, !dbg !280
  %__2.sroa.4.0.insert.shift.7 = shl nuw nsw i64 %__2.sroa.4.0.insert.ext.7, 16, !dbg !280
  %__2.sroa.4.0.insert.insert.7 = or disjoint i64 %__2.sroa.5.0.insert.insert.7, %__2.sroa.4.0.insert.shift.7, !dbg !280
  %__2.sroa.0.0.insert.ext.7 = zext i16 %679 to i64, !dbg !280
  %__2.sroa.0.0.insert.insert.7 = or disjoint i64 %__2.sroa.4.0.insert.insert.7, %__2.sroa.0.0.insert.ext.7, !dbg !280
  %687 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %584, !dbg !281
  %add.ptr575.7 = getelementptr inbounds i8, ptr addrspace(1) %687, i64 224, !dbg !281
  store i64 %__2.sroa.0.0.insert.insert.7, ptr addrspace(1) %add.ptr575.7, align 8, !dbg !282
  ret void, !dbg !283
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
attributes #10 = { nomerge }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "mxcc version 1.0.0 (d9102a1572)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v037_codex_power_s1_pv_vector_layout_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v037_codex_power_s1_pv_vector_layout_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
!42 = !DILocation(line: 78, column: 3, scope: !43, inlinedAt: !45)
!43 = distinct !DISubprogram(name: "__fetch_builtin_y", scope: !44, file: !44, line: 78, type: !7, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!44 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_builtin_vars.h", directory: "")
!45 = distinct !DILocation(line: 23, column: 43, scope: !40)
!46 = !DILocation(line: 23, column: 55, scope: !40)
!47 = !DILocation(line: 77, column: 3, scope: !48, inlinedAt: !49)
!48 = distinct !DISubprogram(name: "__fetch_builtin_x", scope: !44, file: !44, line: 77, type: !7, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!49 = distinct !DILocation(line: 23, column: 71, scope: !40)
!50 = !DILocation(line: 23, column: 63, scope: !40)
!51 = !DILocation(line: 23, column: 22, scope: !40)
!52 = !DILocation(line: 23, column: 85, scope: !40)
!53 = !DILocation(line: 25, column: 10, scope: !40)
!54 = !DILocation(line: 25, column: 26, scope: !40)
!55 = !{i32 0, i32 1024}
!56 = !DILocation(line: 27, column: 5, scope: !40)
!57 = !DILocation(line: 29, column: 238, scope: !40)
!58 = !DILocation(line: 29, column: 9, scope: !40)
!59 = !DILocation(line: 29, column: 236, scope: !40)
!60 = !{!26, !26, i64 0}
!61 = !DILocation(line: 29, column: 348, scope: !40)
!62 = !DILocation(line: 68, column: 3, scope: !63, inlinedAt: !65)
!63 = distinct !DISubprogram(name: "__barrier_warp", scope: !64, file: !64, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!64 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!65 = distinct !DILocation(line: 192, column: 3, scope: !66, inlinedAt: !67)
!66 = distinct !DISubprogram(name: "__syncwarp", scope: !64, file: !64, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!67 = distinct !DILocation(line: 32, column: 5, scope: !40)
!68 = !DILocation(line: 69, column: 3, scope: !63, inlinedAt: !65)
!69 = !DILocation(line: 70, column: 3, scope: !63, inlinedAt: !65)
!70 = !DILocation(line: 36, column: 46, scope: !40)
!71 = !DILocation(line: 36, column: 44, scope: !40)
!72 = !DILocation(line: 68, column: 3, scope: !63, inlinedAt: !73)
!73 = distinct !DILocation(line: 192, column: 3, scope: !66, inlinedAt: !74)
!74 = distinct !DILocation(line: 39, column: 5, scope: !40)
!75 = !DILocation(line: 69, column: 3, scope: !63, inlinedAt: !73)
!76 = !DILocation(line: 70, column: 3, scope: !63, inlinedAt: !73)
!77 = !DILocation(line: 44, column: 13, scope: !40)
!78 = !DILocation(line: 45, column: 21, scope: !40)
!79 = !DILocation(line: 45, column: 19, scope: !40)
!80 = !DILocation(line: 49, column: 242, scope: !40)
!81 = !DILocation(line: 46, column: 9, scope: !40)
!82 = !DILocation(line: 0, scope: !40)
!83 = !DILocation(line: 49, column: 9, scope: !40)
!84 = !DILocation(line: 68, column: 3, scope: !63, inlinedAt: !85)
!85 = distinct !DILocation(line: 192, column: 3, scope: !66, inlinedAt: !86)
!86 = distinct !DILocation(line: 52, column: 5, scope: !40)
!87 = !DILocation(line: 69, column: 3, scope: !63, inlinedAt: !85)
!88 = !DILocation(line: 70, column: 3, scope: !63, inlinedAt: !85)
!89 = !DILocation(line: 63, column: 30, scope: !40)
!90 = !DILocation(line: 66, column: 44, scope: !40)
!91 = !DILocation(line: 63, column: 32, scope: !40)
!92 = !DILocation(line: 75, column: 96, scope: !40)
!93 = !DILocation(line: 75, column: 11, scope: !40)
!94 = !DILocation(line: 75, column: 68, scope: !40)
!95 = !DILocation(line: 75, column: 83, scope: !40)
!96 = !DILocation(line: 351, column: 10, scope: !97, inlinedAt: !99)
!97 = distinct !DISubprogram(name: "max", scope: !98, file: !98, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!98 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!99 = distinct !DILocation(line: 86, column: 22, scope: !40)
!100 = !DILocation(line: 1018, column: 9, scope: !101, inlinedAt: !102)
!101 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !64, file: !64, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!102 = distinct !DILocation(line: 338, column: 10, scope: !103, inlinedAt: !105)
!103 = distinct !DISubprogram(name: "shfl_xor_sync<float>", scope: !104, file: !104, line: 337, type: !7, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!104 = !DIFile(filename: "src/tl_templates/maca/common.h", directory: "/root/tilelang-metax")
!105 = distinct !DILocation(line: 95, column: 24, scope: !106, inlinedAt: !108)
!106 = distinct !DISubprogram(name: "run<float>", scope: !107, file: !107, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!107 = !DIFile(filename: "src/tl_templates/maca/reduce.h", directory: "/root/tilelang-metax")
!108 = distinct !DILocation(line: 88, column: 20, scope: !40)
!109 = !DILocation(line: 171, column: 37, scope: !110, inlinedAt: !111)
!110 = distinct !DISubprogram(name: "__lane_id", scope: !64, file: !64, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!111 = distinct !DILocation(line: 990, column: 14, scope: !112, inlinedAt: !113)
!112 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !64, file: !64, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!113 = distinct !DILocation(line: 1019, column: 11, scope: !101, inlinedAt: !102)
!114 = !DILocation(line: 171, column: 10, scope: !110, inlinedAt: !111)
!115 = !DILocation(line: 991, column: 20, scope: !112, inlinedAt: !113)
!116 = !DILocation(line: 992, column: 36, scope: !112, inlinedAt: !113)
!117 = !DILocation(line: 992, column: 17, scope: !112, inlinedAt: !113)
!118 = !DILocation(line: 992, column: 11, scope: !112, inlinedAt: !113)
!119 = !DILocation(line: 993, column: 43, scope: !112, inlinedAt: !113)
!120 = !DILocation(line: 993, column: 10, scope: !112, inlinedAt: !113)
!121 = !DILocation(line: 1020, column: 14, scope: !101, inlinedAt: !102)
!122 = !DILocation(line: 306, column: 10, scope: !123, inlinedAt: !124)
!123 = distinct !DISubprogram(name: "fmaxf", scope: !98, file: !98, line: 305, type: !7, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!124 = distinct !DILocation(line: 633, column: 10, scope: !125, inlinedAt: !127)
!125 = distinct !DISubprogram(name: "fast_max<float>", scope: !126, file: !126, line: 632, type: !7, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!126 = !DIFile(filename: "/opt/maca/include/mctlass/fast_math.h", directory: "")
!127 = distinct !DILocation(line: 31, column: 12, scope: !128, inlinedAt: !129)
!128 = distinct !DISubprogram(name: "operator()<float>", scope: !107, file: !107, line: 30, type: !7, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!129 = distinct !DILocation(line: 95, column: 11, scope: !106, inlinedAt: !108)
!130 = !DILocation(line: 1018, column: 9, scope: !101, inlinedAt: !131)
!131 = distinct !DILocation(line: 338, column: 10, scope: !103, inlinedAt: !132)
!132 = distinct !DILocation(line: 95, column: 24, scope: !133, inlinedAt: !134)
!133 = distinct !DISubprogram(name: "run<float>", scope: !107, file: !107, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!134 = distinct !DILocation(line: 100, column: 14, scope: !106, inlinedAt: !108)
!135 = !DILocation(line: 171, column: 37, scope: !110, inlinedAt: !136)
!136 = distinct !DILocation(line: 990, column: 14, scope: !112, inlinedAt: !137)
!137 = distinct !DILocation(line: 1019, column: 11, scope: !101, inlinedAt: !131)
!138 = !DILocation(line: 171, column: 10, scope: !110, inlinedAt: !136)
!139 = !DILocation(line: 991, column: 20, scope: !112, inlinedAt: !137)
!140 = !DILocation(line: 992, column: 36, scope: !112, inlinedAt: !137)
!141 = !DILocation(line: 992, column: 17, scope: !112, inlinedAt: !137)
!142 = !DILocation(line: 992, column: 11, scope: !112, inlinedAt: !137)
!143 = !DILocation(line: 993, column: 43, scope: !112, inlinedAt: !137)
!144 = !DILocation(line: 993, column: 10, scope: !112, inlinedAt: !137)
!145 = !DILocation(line: 1020, column: 14, scope: !101, inlinedAt: !131)
!146 = !DILocation(line: 306, column: 10, scope: !123, inlinedAt: !147)
!147 = distinct !DILocation(line: 633, column: 10, scope: !125, inlinedAt: !148)
!148 = distinct !DILocation(line: 31, column: 12, scope: !128, inlinedAt: !149)
!149 = distinct !DILocation(line: 95, column: 11, scope: !133, inlinedAt: !134)
!150 = !DILocation(line: 91, column: 41, scope: !40)
!151 = !DILocation(line: 91, column: 57, scope: !40)
!152 = !DILocation(line: 285, column: 49, scope: !153, inlinedAt: !154)
!153 = distinct !DISubprogram(name: "exp2f", scope: !98, file: !98, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!154 = distinct !DILocation(line: 91, column: 21, scope: !40)
!155 = !DILocation(line: 96, column: 40, scope: !40)
!156 = !DILocation(line: 1018, column: 9, scope: !101, inlinedAt: !157)
!157 = distinct !DILocation(line: 338, column: 10, scope: !103, inlinedAt: !158)
!158 = distinct !DILocation(line: 95, column: 24, scope: !159, inlinedAt: !160)
!159 = distinct !DISubprogram(name: "run<float>", scope: !107, file: !107, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!160 = distinct !DILocation(line: 98, column: 22, scope: !40)
!161 = !DILocation(line: 171, column: 37, scope: !110, inlinedAt: !162)
!162 = distinct !DILocation(line: 990, column: 14, scope: !112, inlinedAt: !163)
!163 = distinct !DILocation(line: 1019, column: 11, scope: !101, inlinedAt: !157)
!164 = !DILocation(line: 171, column: 10, scope: !110, inlinedAt: !162)
!165 = !DILocation(line: 991, column: 20, scope: !112, inlinedAt: !163)
!166 = !DILocation(line: 992, column: 36, scope: !112, inlinedAt: !163)
!167 = !DILocation(line: 992, column: 17, scope: !112, inlinedAt: !163)
!168 = !DILocation(line: 992, column: 11, scope: !112, inlinedAt: !163)
!169 = !DILocation(line: 993, column: 43, scope: !112, inlinedAt: !163)
!170 = !DILocation(line: 993, column: 10, scope: !112, inlinedAt: !163)
!171 = !DILocation(line: 1020, column: 14, scope: !101, inlinedAt: !157)
!172 = !DILocation(line: 25, column: 14, scope: !173, inlinedAt: !174)
!173 = distinct !DISubprogram(name: "operator()<float>", scope: !107, file: !107, line: 24, type: !7, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!174 = distinct !DILocation(line: 95, column: 11, scope: !159, inlinedAt: !160)
!175 = !DILocation(line: 1018, column: 9, scope: !101, inlinedAt: !176)
!176 = distinct !DILocation(line: 338, column: 10, scope: !103, inlinedAt: !177)
!177 = distinct !DILocation(line: 95, column: 24, scope: !178, inlinedAt: !179)
!178 = distinct !DISubprogram(name: "run<float>", scope: !107, file: !107, line: 86, type: !7, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!179 = distinct !DILocation(line: 100, column: 14, scope: !159, inlinedAt: !160)
!180 = !DILocation(line: 171, column: 37, scope: !110, inlinedAt: !181)
!181 = distinct !DILocation(line: 990, column: 14, scope: !112, inlinedAt: !182)
!182 = distinct !DILocation(line: 1019, column: 11, scope: !101, inlinedAt: !176)
!183 = !DILocation(line: 171, column: 10, scope: !110, inlinedAt: !181)
!184 = !DILocation(line: 991, column: 20, scope: !112, inlinedAt: !182)
!185 = !DILocation(line: 992, column: 36, scope: !112, inlinedAt: !182)
!186 = !DILocation(line: 992, column: 17, scope: !112, inlinedAt: !182)
!187 = !DILocation(line: 992, column: 11, scope: !112, inlinedAt: !182)
!188 = !DILocation(line: 993, column: 43, scope: !112, inlinedAt: !182)
!189 = !DILocation(line: 993, column: 10, scope: !112, inlinedAt: !182)
!190 = !DILocation(line: 1020, column: 14, scope: !101, inlinedAt: !176)
!191 = !DILocation(line: 25, column: 14, scope: !173, inlinedAt: !192)
!192 = distinct !DILocation(line: 95, column: 11, scope: !178, inlinedAt: !179)
!193 = !DILocation(line: 101, column: 34, scope: !40)
!194 = !DILocation(line: 1007, column: 10, scope: !195, inlinedAt: !197)
!195 = distinct !DISubprogram(name: "__float2half_rn", scope: !196, file: !196, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!196 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!197 = distinct !DILocation(line: 1077, column: 18, scope: !198, inlinedAt: !199)
!198 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !196, file: !196, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!199 = distinct !DILocation(line: 1295, column: 23, scope: !200, inlinedAt: !201)
!200 = distinct !DISubprogram(name: "__float22half2_rn", scope: !196, file: !196, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!201 = distinct !DILocation(line: 107, column: 29, scope: !40)
!202 = !{!203, !205}
!203 = distinct !{!203, !204, !"_ZL17__floats2half2_rnff: %agg.result"}
!204 = distinct !{!204, !"_ZL17__floats2half2_rnff"}
!205 = distinct !{!205, !206, !"_ZL17__float22half2_rn6float2: %agg.result"}
!206 = distinct !{!206, !"_ZL17__float22half2_rn6float2"}
!207 = !DILocation(line: 1007, column: 10, scope: !195, inlinedAt: !208)
!208 = distinct !DILocation(line: 1077, column: 38, scope: !198, inlinedAt: !199)
!209 = !DILocation(line: 1007, column: 10, scope: !195, inlinedAt: !210)
!210 = distinct !DILocation(line: 1077, column: 18, scope: !198, inlinedAt: !211)
!211 = distinct !DILocation(line: 1295, column: 23, scope: !200, inlinedAt: !212)
!212 = distinct !DILocation(line: 108, column: 29, scope: !40)
!213 = !{!214, !216}
!214 = distinct !{!214, !215, !"_ZL17__floats2half2_rnff: %agg.result"}
!215 = distinct !{!215, !"_ZL17__floats2half2_rnff"}
!216 = distinct !{!216, !217, !"_ZL17__float22half2_rn6float2: %agg.result"}
!217 = distinct !{!217, !"_ZL17__float22half2_rn6float2"}
!218 = !DILocation(line: 1007, column: 10, scope: !195, inlinedAt: !219)
!219 = distinct !DILocation(line: 1077, column: 38, scope: !198, inlinedAt: !211)
!220 = !DILocation(line: 109, column: 42, scope: !40)
!221 = !DILocation(line: 68, column: 3, scope: !63, inlinedAt: !222)
!222 = distinct !DILocation(line: 192, column: 3, scope: !66, inlinedAt: !223)
!223 = distinct !DILocation(line: 111, column: 5, scope: !40)
!224 = !DILocation(line: 69, column: 3, scope: !63, inlinedAt: !222)
!225 = !DILocation(line: 70, column: 3, scope: !63, inlinedAt: !222)
!226 = !DILocation(line: 120, column: 102, scope: !40)
!227 = !DILocation(line: 120, column: 15, scope: !40)
!228 = !DILocation(line: 121, column: 37, scope: !40)
!229 = !DILocation(line: 121, column: 23, scope: !40)
!230 = !DILocation(line: 122, column: 11, scope: !40)
!231 = !DILocation(line: 120, column: 87, scope: !40)
!232 = !DILocation(line: 132, column: 46, scope: !40)
!233 = !DILocation(line: 132, column: 234, scope: !40)
!234 = !DILocation(line: 130, column: 43, scope: !40)
!235 = !DILocation(line: 132, column: 114, scope: !40)
!236 = !DILocation(line: 68, column: 3, scope: !63, inlinedAt: !237)
!237 = distinct !DILocation(line: 192, column: 3, scope: !66, inlinedAt: !238)
!238 = distinct !DILocation(line: 136, column: 5, scope: !40)
!239 = !DILocation(line: 69, column: 3, scope: !63, inlinedAt: !237)
!240 = !DILocation(line: 70, column: 3, scope: !63, inlinedAt: !237)
!241 = !DILocation(line: 137, column: 3, scope: !40)
!242 = !DILocation(line: 143, column: 26, scope: !40)
!243 = !DILocation(line: 159, column: 42, scope: !40)
!244 = !DILocation(line: 159, column: 23, scope: !40)
!245 = !DILocation(line: 148, column: 157, scope: !40)
!246 = !DILocation(line: 148, column: 71, scope: !40)
!247 = !DILocation(line: 148, column: 34, scope: !40)
!248 = !DILocation(line: 150, column: 53, scope: !40)
!249 = !DILocation(line: 163, column: 3, scope: !40)
!250 = !DILocation(line: 165, column: 19, scope: !40)
!251 = !DILocation(line: 1007, column: 10, scope: !195, inlinedAt: !252)
!252 = distinct !DILocation(line: 1077, column: 18, scope: !198, inlinedAt: !253)
!253 = distinct !DILocation(line: 1295, column: 23, scope: !200, inlinedAt: !254)
!254 = distinct !DILocation(line: 166, column: 27, scope: !40)
!255 = !{!256, !258}
!256 = distinct !{!256, !257, !"_ZL17__floats2half2_rnff: %agg.result"}
!257 = distinct !{!257, !"_ZL17__floats2half2_rnff"}
!258 = distinct !{!258, !259, !"_ZL17__float22half2_rn6float2: %agg.result"}
!259 = distinct !{!259, !"_ZL17__float22half2_rn6float2"}
!260 = !DILocation(line: 1007, column: 10, scope: !195, inlinedAt: !261)
!261 = distinct !DILocation(line: 1077, column: 38, scope: !198, inlinedAt: !253)
!262 = !DILocation(line: 596, column: 67, scope: !263, inlinedAt: !264)
!263 = distinct !DISubprogram(name: "__half2", scope: !196, file: !196, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!264 = distinct !DILocation(line: 1077, column: 10, scope: !198, inlinedAt: !253)
!265 = !DILocation(line: 596, column: 73, scope: !263, inlinedAt: !264)
!266 = !DILocation(line: 1007, column: 10, scope: !195, inlinedAt: !267)
!267 = distinct !DILocation(line: 1077, column: 18, scope: !198, inlinedAt: !268)
!268 = distinct !DILocation(line: 1295, column: 23, scope: !200, inlinedAt: !269)
!269 = distinct !DILocation(line: 167, column: 27, scope: !40)
!270 = !{!271, !273}
!271 = distinct !{!271, !272, !"_ZL17__floats2half2_rnff: %agg.result"}
!272 = distinct !{!272, !"_ZL17__floats2half2_rnff"}
!273 = distinct !{!273, !274, !"_ZL17__float22half2_rn6float2: %agg.result"}
!274 = distinct !{!274, !"_ZL17__float22half2_rn6float2"}
!275 = !DILocation(line: 1007, column: 10, scope: !195, inlinedAt: !276)
!276 = distinct !DILocation(line: 1077, column: 38, scope: !198, inlinedAt: !268)
!277 = !DILocation(line: 596, column: 67, scope: !263, inlinedAt: !278)
!278 = distinct !DILocation(line: 1077, column: 10, scope: !198, inlinedAt: !268)
!279 = !DILocation(line: 596, column: 73, scope: !263, inlinedAt: !278)
!280 = !DILocation(line: 168, column: 38, scope: !40)
!281 = !DILocation(line: 169, column: 22, scope: !40)
!282 = !DILocation(line: 169, column: 175, scope: !40)
!283 = !DILocation(line: 171, column: 1, scope: !40)
