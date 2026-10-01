; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v062_codex_power_s8_qk_vec16_store_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v062_codex_power_s8_qk_vec16_store_sc-16g-2/codegen/case12.device.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "mxc-metax-macahca"

%struct.__half = type { i16 }
%struct.mcDevMallocInfo.0 = type { i32, i32, ptr }

@shared = external protected local_unnamed_addr addrspace(3) global [0 x %struct.__half], align 1024
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
define protected metaxgpu_kernel void @native_sparse_attention_kernel(ptr addrspace(1) noalias nocapture noundef readonly %Indices.coerce, ptr addrspace(4) noalias noundef readonly %K.coerce, ptr addrspace(1) noalias nocapture noundef writeonly %Output.coerce, ptr addrspace(4) noalias nocapture noundef readonly %Q.coerce, ptr addrspace(4) noalias nocapture noundef readonly %V.coerce) local_unnamed_addr #3 !dbg !40 {
entry:
  %0 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.y(), !range !29
  %mul = shl nsw i32 %0, 20
  %1 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !range !29
  %mul7 = shl nsw i32 %1, 10
  %add = add nuw nsw i32 %mul, %mul7
  %2 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !42
  %mul11 = shl nuw nsw i32 %2, 3
  %add9 = add nuw nsw i32 %add, %mul11
  %and = lshr i32 %2, 3
  %shr = and i32 %and, 1
  %mul31 = and i32 %mul11, 8128
  %xor37777 = and i32 %mul11, 56
  %call35.masked = and i32 %2, 1016
  %mul38 = xor i32 %xor37777, %call35.masked
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul31, !dbg !43
  %invariant.gep840 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul38, !dbg !43
  %3 = zext nneg i32 %add9 to i64, !dbg !44
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %3, !dbg !45
  %qk_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %add.ptr, align 16, !dbg !46
  %qk_fetch.sroa.56.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 2, !dbg !46
  %qk_fetch.sroa.56.0.copyload = load i16, ptr addrspace(4) %qk_fetch.sroa.56.0.add.ptr.sroa_idx, align 2, !dbg !46, !tbaa !30
  %qk_fetch.sroa.92.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 4, !dbg !46
  %qk_fetch.sroa.92.0.copyload = load i16, ptr addrspace(4) %qk_fetch.sroa.92.0.add.ptr.sroa_idx, align 4, !dbg !46
  %qk_fetch.sroa.128.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 6, !dbg !46
  %qk_fetch.sroa.128.0.copyload = load i16, ptr addrspace(4) %qk_fetch.sroa.128.0.add.ptr.sroa_idx, align 2, !dbg !46, !tbaa !30
  %qk_fetch.sroa.164.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !46
  %qk_fetch.sroa.164.0.copyload = load i16, ptr addrspace(4) %qk_fetch.sroa.164.0.add.ptr.sroa_idx, align 8, !dbg !46
  %qk_fetch.sroa.200.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 10, !dbg !46
  %qk_fetch.sroa.200.0.copyload = load i16, ptr addrspace(4) %qk_fetch.sroa.200.0.add.ptr.sroa_idx, align 2, !dbg !46, !tbaa !30
  %qk_fetch.sroa.236.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 12, !dbg !46
  %qk_fetch.sroa.236.0.copyload = load i16, ptr addrspace(4) %qk_fetch.sroa.236.0.add.ptr.sroa_idx, align 4, !dbg !46
  %qk_fetch.sroa.272.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 14, !dbg !46
  %qk_fetch.sroa.272.0.copyload = load i16, ptr addrspace(4) %qk_fetch.sroa.272.0.add.ptr.sroa_idx, align 2, !dbg !46, !tbaa !30
  %cmp19 = icmp eq i32 %shr, 0
  %.sroa.speculated4129 = select i1 %cmp19, i16 %qk_fetch.sroa.0.0.copyload, i16 %qk_fetch.sroa.164.0.copyload, !dbg !47
  %.sroa.speculated4024 = select i1 %cmp19, i16 %qk_fetch.sroa.56.0.copyload, i16 %qk_fetch.sroa.200.0.copyload, !dbg !47
  %.sroa.speculated3916 = select i1 %cmp19, i16 %qk_fetch.sroa.92.0.copyload, i16 %qk_fetch.sroa.236.0.copyload, !dbg !47
  %.sroa.speculated3808 = select i1 %cmp19, i16 %qk_fetch.sroa.128.0.copyload, i16 %qk_fetch.sroa.272.0.copyload, !dbg !47
  %.sroa.speculated4126 = select i1 %cmp19, i16 %qk_fetch.sroa.164.0.copyload, i16 %qk_fetch.sroa.0.0.copyload, !dbg !47
  %.sroa.speculated4021 = select i1 %cmp19, i16 %qk_fetch.sroa.200.0.copyload, i16 %qk_fetch.sroa.56.0.copyload, !dbg !47
  %.sroa.speculated3913 = select i1 %cmp19, i16 %qk_fetch.sroa.236.0.copyload, i16 %qk_fetch.sroa.92.0.copyload, !dbg !47
  %.sroa.speculated3805 = select i1 %cmp19, i16 %qk_fetch.sroa.272.0.copyload, i16 %qk_fetch.sroa.128.0.copyload, !dbg !47
  store i16 %.sroa.speculated4129, ptr addrspace(3) %invariant.gep840, align 16, !dbg !48
  %qk_ordered.sroa.38.0.invariant.gep840.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep840, i32 2, !dbg !48
  store i16 %.sroa.speculated4024, ptr addrspace(3) %qk_ordered.sroa.38.0.invariant.gep840.sroa_idx, align 2, !dbg !48, !tbaa !30
  %qk_ordered.sroa.56.0.invariant.gep840.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep840, i32 4, !dbg !48
  store i16 %.sroa.speculated3916, ptr addrspace(3) %qk_ordered.sroa.56.0.invariant.gep840.sroa_idx, align 4, !dbg !48
  %qk_ordered.sroa.74.0.invariant.gep840.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep840, i32 6, !dbg !48
  store i16 %.sroa.speculated3808, ptr addrspace(3) %qk_ordered.sroa.74.0.invariant.gep840.sroa_idx, align 2, !dbg !48, !tbaa !30
  %qk_ordered.sroa.92.0.invariant.gep840.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep840, i32 8, !dbg !48
  store i16 %.sroa.speculated4126, ptr addrspace(3) %qk_ordered.sroa.92.0.invariant.gep840.sroa_idx, align 8, !dbg !48
  %qk_ordered.sroa.110.0.invariant.gep840.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep840, i32 10, !dbg !48
  store i16 %.sroa.speculated4021, ptr addrspace(3) %qk_ordered.sroa.110.0.invariant.gep840.sroa_idx, align 2, !dbg !48, !tbaa !30
  %qk_ordered.sroa.128.0.invariant.gep840.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep840, i32 12, !dbg !48
  store i16 %.sroa.speculated3913, ptr addrspace(3) %qk_ordered.sroa.128.0.invariant.gep840.sroa_idx, align 4, !dbg !48
  %qk_ordered.sroa.146.0.invariant.gep840.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep840, i32 14, !dbg !48
  store i16 %.sroa.speculated3805, ptr addrspace(3) %qk_ordered.sroa.146.0.invariant.gep840.sroa_idx, align 2, !dbg !48, !tbaa !30
  %4 = add nuw nsw i64 %3, 512, !dbg !49
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %4, !dbg !45
  %qk_fetch.sroa.0.0.copyload3520 = load i16, ptr addrspace(4) %add.ptr.1, align 16, !dbg !46
  %qk_fetch.sroa.56.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 2, !dbg !46
  %qk_fetch.sroa.56.0.copyload3537 = load i16, ptr addrspace(4) %qk_fetch.sroa.56.0.add.ptr.1.sroa_idx, align 2, !dbg !46, !tbaa !30
  %qk_fetch.sroa.92.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 4, !dbg !46
  %qk_fetch.sroa.92.0.copyload3561 = load i16, ptr addrspace(4) %qk_fetch.sroa.92.0.add.ptr.1.sroa_idx, align 4, !dbg !46
  %qk_fetch.sroa.128.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 6, !dbg !46
  %qk_fetch.sroa.128.0.copyload3585 = load i16, ptr addrspace(4) %qk_fetch.sroa.128.0.add.ptr.1.sroa_idx, align 2, !dbg !46, !tbaa !30
  %qk_fetch.sroa.164.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !46
  %qk_fetch.sroa.164.0.copyload3609 = load i16, ptr addrspace(4) %qk_fetch.sroa.164.0.add.ptr.1.sroa_idx, align 8, !dbg !46
  %qk_fetch.sroa.200.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 10, !dbg !46
  %qk_fetch.sroa.200.0.copyload3633 = load i16, ptr addrspace(4) %qk_fetch.sroa.200.0.add.ptr.1.sroa_idx, align 2, !dbg !46, !tbaa !30
  %qk_fetch.sroa.236.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 12, !dbg !46
  %qk_fetch.sroa.236.0.copyload3657 = load i16, ptr addrspace(4) %qk_fetch.sroa.236.0.add.ptr.1.sroa_idx, align 4, !dbg !46
  %qk_fetch.sroa.272.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 14, !dbg !46
  %qk_fetch.sroa.272.0.copyload3681 = load i16, ptr addrspace(4) %qk_fetch.sroa.272.0.add.ptr.1.sroa_idx, align 2, !dbg !46, !tbaa !30
  %cmp19.1.not = icmp eq i32 %shr, 0
  %.sroa.speculated4123 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.164.0.copyload3609, i16 %qk_fetch.sroa.0.0.copyload3520, !dbg !47
  %.sroa.speculated4018 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.200.0.copyload3633, i16 %qk_fetch.sroa.56.0.copyload3537, !dbg !47
  %.sroa.speculated3910 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.236.0.copyload3657, i16 %qk_fetch.sroa.92.0.copyload3561, !dbg !47
  %.sroa.speculated3802 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.272.0.copyload3681, i16 %qk_fetch.sroa.128.0.copyload3585, !dbg !47
  %.sroa.speculated4120 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.0.0.copyload3520, i16 %qk_fetch.sroa.164.0.copyload3609, !dbg !47
  %.sroa.speculated4015 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.56.0.copyload3537, i16 %qk_fetch.sroa.200.0.copyload3633, !dbg !47
  %.sroa.speculated3907 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.92.0.copyload3561, i16 %qk_fetch.sroa.236.0.copyload3657, !dbg !47
  %.sroa.speculated3799 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.128.0.copyload3585, i16 %qk_fetch.sroa.272.0.copyload3681, !dbg !47
  %gep841.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep840, i32 1024, !dbg !50
  store i16 %.sroa.speculated4123, ptr addrspace(3) %gep841.1, align 16, !dbg !48
  %qk_ordered.sroa.38.0.gep841.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep840, i32 1026, !dbg !48
  store i16 %.sroa.speculated4018, ptr addrspace(3) %qk_ordered.sroa.38.0.gep841.1.sroa_idx, align 2, !dbg !48, !tbaa !30
  %qk_ordered.sroa.56.0.gep841.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep840, i32 1028, !dbg !48
  store i16 %.sroa.speculated3910, ptr addrspace(3) %qk_ordered.sroa.56.0.gep841.1.sroa_idx, align 4, !dbg !48
  %qk_ordered.sroa.74.0.gep841.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep840, i32 1030, !dbg !48
  store i16 %.sroa.speculated3802, ptr addrspace(3) %qk_ordered.sroa.74.0.gep841.1.sroa_idx, align 2, !dbg !48, !tbaa !30
  %qk_ordered.sroa.92.0.gep841.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep840, i32 1032, !dbg !48
  store i16 %.sroa.speculated4120, ptr addrspace(3) %qk_ordered.sroa.92.0.gep841.1.sroa_idx, align 8, !dbg !48
  %qk_ordered.sroa.110.0.gep841.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep840, i32 1034, !dbg !48
  store i16 %.sroa.speculated4015, ptr addrspace(3) %qk_ordered.sroa.110.0.gep841.1.sroa_idx, align 2, !dbg !48, !tbaa !30
  %qk_ordered.sroa.128.0.gep841.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep840, i32 1036, !dbg !48
  store i16 %.sroa.speculated3907, ptr addrspace(3) %qk_ordered.sroa.128.0.gep841.1.sroa_idx, align 4, !dbg !48
  %qk_ordered.sroa.146.0.gep841.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep840, i32 1038, !dbg !48
  store i16 %.sroa.speculated3799, ptr addrspace(3) %qk_ordered.sroa.146.0.gep841.1.sroa_idx, align 2, !dbg !48, !tbaa !30
  fence syncscope("warp") release, !dbg !51
  tail call void @llvm.mxc.barrier.warp(), !dbg !57
  fence syncscope("warp") acquire, !dbg !58
  %and50 = shl nuw nsw i32 %2, 6
  %mul51 = and i32 %and50, 960
  %shr54 = lshr i32 %2, 5
  %and57 = and i32 %2, 7
  %and62 = lshr i32 %2, 4
  %5 = xor i32 %and, %and62
  %xor67776 = xor i32 %5, %2
  %xor70 = shl nuw nsw i32 %xor67776, 2
  %mul71 = and i32 %xor70, 4
  %xor58 = xor i32 %shr54, %and57, !dbg !59
  %mul59 = shl nuw nsw i32 %xor58, 3, !dbg !60
  %add60 = add nuw nsw i32 %mul59, %mul51, !dbg !61
  %add72 = or disjoint i32 %add60, %mul71, !dbg !62
  %add.ptr74 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add72, !dbg !63
  %6 = load <4 x half>, ptr addrspace(3) %add.ptr74, align 8, !dbg !64
  %add55.1 = add nuw nsw i32 %shr54, 2, !dbg !65
  %xor58.1 = xor i32 %add55.1, %and57, !dbg !59
  %mul59.1 = shl nuw nsw i32 %xor58.1, 3, !dbg !60
  %add60.1 = add nuw nsw i32 %mul59.1, %mul51, !dbg !61
  %add72.1 = or disjoint i32 %add60.1, %mul71, !dbg !62
  %add.ptr74.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add72.1, !dbg !63
  %7 = load <4 x half>, ptr addrspace(3) %add.ptr74.1, align 8, !dbg !64
  %add55.2 = add nuw nsw i32 %shr54, 4, !dbg !65
  %xor58.2 = xor i32 %add55.2, %and57, !dbg !59
  %mul59.2 = shl nuw nsw i32 %xor58.2, 3, !dbg !60
  %add60.2 = add nuw nsw i32 %mul59.2, %mul51, !dbg !61
  %add72.2 = or disjoint i32 %add60.2, %mul71, !dbg !62
  %add.ptr74.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add72.2, !dbg !63
  %8 = load <4 x half>, ptr addrspace(3) %add.ptr74.2, align 8, !dbg !64
  %add55.3 = add nuw nsw i32 %shr54, 6, !dbg !65
  %xor58.3 = xor i32 %add55.3, %and57, !dbg !59
  %mul59.3 = shl nuw nsw i32 %xor58.3, 3, !dbg !60
  %add60.3 = add nuw nsw i32 %mul59.3, %mul51, !dbg !61
  %add72.3 = or disjoint i32 %add60.3, %mul71, !dbg !62
  %add.ptr74.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add72.3, !dbg !63
  %9 = load <4 x half>, ptr addrspace(3) %add.ptr74.3, align 8, !dbg !64
  %mul102 = shl nsw i32 %0, 13
  %mul104 = shl nsw i32 %1, 3
  %add105 = add nuw nsw i32 %mul102, %mul104
  %conv = zext nneg i32 %0 to i64
  %mul127 = zext nneg i32 %mul11 to i64
  %invariant.gep868 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul127, !dbg !66
  %10 = lshr i32 %2, 2
  %mul229 = and i32 %10, 252
  %mul430 = shl nuw nsw i64 %conv, 16
  %11 = shl nuw nsw i32 %2, 4
  %12 = and i32 %11, 16128
  %mul434 = zext nneg i32 %12 to i64
  %add435 = or disjoint i64 %mul430, %mul434
  %13 = shl nuw nsw i32 %2, 2
  %14 = and i32 %13, 60
  %mul445 = zext nneg i32 %14 to i64
  %add438 = or disjoint i64 %add435, %mul445
  %mul477 = and i32 %11, 240
  %shr483 = and i32 %10, 3
  %xor484 = xor i32 %shr483, %and62
  %and498 = shl nuw nsw i32 %2, 8
  %mul499 = and i32 %and498, 768
  %mul505 = and i32 %13, 48
  %and511 = and i32 %2, 3
  %15 = xor i32 %and62, %and511
  %16 = zext nneg i32 %add105 to i64, !dbg !66
  %arrayidx108 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %16, !dbg !67
  %17 = load i32, ptr addrspace(1) %arrayidx108, align 4, !dbg !67, !tbaa !30
  %mul109 = shl nsw i32 %17, 4, !dbg !68
  %cmp110 = icmp slt i32 %17, 0, !dbg !69
  %cmp112.not = icmp sgt i32 %mul109, %1
  %or.cond = select i1 %cmp110, i1 true, i1 %cmp112.not, !dbg !70
  br i1 %or.cond, label %if.end542, label %if.then, !dbg !70

if.then:                                          ; preds = %entry
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %conv122 = zext nneg i32 %mul109 to i64
  %.idx = shl nuw nsw i64 %conv122, 7
  %gep = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep868, i64 %.idx, !dbg !76
  %.idx876 = shl nuw nsw i64 %conv, 17, !dbg !77
  %18 = getelementptr inbounds i8, ptr addrspace(4) %gep, i64 %.idx876, !dbg !77
  %qk_fetch.sroa.0.0.copyload3519 = load i16, ptr addrspace(4) %18, align 16, !dbg !78
  %qk_fetch.sroa.56.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %18, i64 2, !dbg !78
  %qk_fetch.sroa.56.0.copyload3536 = load i16, ptr addrspace(4) %qk_fetch.sroa.56.0..sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.92.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %18, i64 4, !dbg !78
  %qk_fetch.sroa.92.0.copyload3560 = load i16, ptr addrspace(4) %qk_fetch.sroa.92.0..sroa_idx, align 4, !dbg !78
  %qk_fetch.sroa.128.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %18, i64 6, !dbg !78
  %qk_fetch.sroa.128.0.copyload3584 = load i16, ptr addrspace(4) %qk_fetch.sroa.128.0..sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.164.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %18, i64 8, !dbg !78
  %qk_fetch.sroa.164.0.copyload3608 = load i16, ptr addrspace(4) %qk_fetch.sroa.164.0..sroa_idx, align 8, !dbg !78
  %qk_fetch.sroa.200.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %18, i64 10, !dbg !78
  %qk_fetch.sroa.200.0.copyload3632 = load i16, ptr addrspace(4) %qk_fetch.sroa.200.0..sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.236.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %18, i64 12, !dbg !78
  %qk_fetch.sroa.236.0.copyload3656 = load i16, ptr addrspace(4) %qk_fetch.sroa.236.0..sroa_idx, align 4, !dbg !78
  %qk_fetch.sroa.272.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %18, i64 14, !dbg !78
  %qk_fetch.sroa.272.0.copyload3680 = load i16, ptr addrspace(4) %qk_fetch.sroa.272.0..sroa_idx, align 2, !dbg !78, !tbaa !30
  %.sroa.speculated4132 = select i1 %cmp19, i16 %qk_fetch.sroa.0.0.copyload3519, i16 %qk_fetch.sroa.164.0.copyload3608, !dbg !79
  %.sroa.speculated4012 = select i1 %cmp19, i16 %qk_fetch.sroa.56.0.copyload3536, i16 %qk_fetch.sroa.200.0.copyload3632, !dbg !79
  %.sroa.speculated3904 = select i1 %cmp19, i16 %qk_fetch.sroa.92.0.copyload3560, i16 %qk_fetch.sroa.236.0.copyload3656, !dbg !79
  %.sroa.speculated3796 = select i1 %cmp19, i16 %qk_fetch.sroa.128.0.copyload3584, i16 %qk_fetch.sroa.272.0.copyload3680, !dbg !79
  %.sroa.speculated4117 = select i1 %cmp19, i16 %qk_fetch.sroa.164.0.copyload3608, i16 %qk_fetch.sroa.0.0.copyload3519, !dbg !79
  %.sroa.speculated4009 = select i1 %cmp19, i16 %qk_fetch.sroa.200.0.copyload3632, i16 %qk_fetch.sroa.56.0.copyload3536, !dbg !79
  %.sroa.speculated3901 = select i1 %cmp19, i16 %qk_fetch.sroa.236.0.copyload3656, i16 %qk_fetch.sroa.92.0.copyload3560, !dbg !79
  %.sroa.speculated3793 = select i1 %cmp19, i16 %qk_fetch.sroa.272.0.copyload3680, i16 %qk_fetch.sroa.128.0.copyload3584, !dbg !79
  store i16 %.sroa.speculated4132, ptr addrspace(3) %invariant.gep840, align 16, !dbg !80
  store i16 %.sroa.speculated4012, ptr addrspace(3) %qk_ordered.sroa.38.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3904, ptr addrspace(3) %qk_ordered.sroa.56.0.invariant.gep840.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3796, ptr addrspace(3) %qk_ordered.sroa.74.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated4117, ptr addrspace(3) %qk_ordered.sroa.92.0.invariant.gep840.sroa_idx, align 8, !dbg !80
  store i16 %.sroa.speculated4009, ptr addrspace(3) %qk_ordered.sroa.110.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3901, ptr addrspace(3) %qk_ordered.sroa.128.0.invariant.gep840.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3793, ptr addrspace(3) %qk_ordered.sroa.146.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  %gep848.1 = getelementptr inbounds i8, ptr addrspace(4) %18, i64 1024, !dbg !77
  %qk_fetch.sroa.0.0.copyload3521 = load i16, ptr addrspace(4) %gep848.1, align 16, !dbg !78
  %qk_fetch.sroa.56.0.gep848.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %18, i64 1026, !dbg !78
  %qk_fetch.sroa.56.0.copyload3538 = load i16, ptr addrspace(4) %qk_fetch.sroa.56.0.gep848.1.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.92.0.gep848.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %18, i64 1028, !dbg !78
  %qk_fetch.sroa.92.0.copyload3562 = load i16, ptr addrspace(4) %qk_fetch.sroa.92.0.gep848.1.sroa_idx, align 4, !dbg !78
  %qk_fetch.sroa.128.0.gep848.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %18, i64 1030, !dbg !78
  %qk_fetch.sroa.128.0.copyload3586 = load i16, ptr addrspace(4) %qk_fetch.sroa.128.0.gep848.1.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.164.0.gep848.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %18, i64 1032, !dbg !78
  %qk_fetch.sroa.164.0.copyload3610 = load i16, ptr addrspace(4) %qk_fetch.sroa.164.0.gep848.1.sroa_idx, align 8, !dbg !78
  %qk_fetch.sroa.200.0.gep848.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %18, i64 1034, !dbg !78
  %qk_fetch.sroa.200.0.copyload3634 = load i16, ptr addrspace(4) %qk_fetch.sroa.200.0.gep848.1.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.236.0.gep848.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %18, i64 1036, !dbg !78
  %qk_fetch.sroa.236.0.copyload3658 = load i16, ptr addrspace(4) %qk_fetch.sroa.236.0.gep848.1.sroa_idx, align 4, !dbg !78
  %qk_fetch.sroa.272.0.gep848.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %18, i64 1038, !dbg !78
  %qk_fetch.sroa.272.0.copyload3682 = load i16, ptr addrspace(4) %qk_fetch.sroa.272.0.gep848.1.sroa_idx, align 2, !dbg !78, !tbaa !30
  %.sroa.speculated4114 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.164.0.copyload3610, i16 %qk_fetch.sroa.0.0.copyload3521, !dbg !79
  %.sroa.speculated4006 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.200.0.copyload3634, i16 %qk_fetch.sroa.56.0.copyload3538, !dbg !79
  %.sroa.speculated3898 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.236.0.copyload3658, i16 %qk_fetch.sroa.92.0.copyload3562, !dbg !79
  %.sroa.speculated3790 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.272.0.copyload3682, i16 %qk_fetch.sroa.128.0.copyload3586, !dbg !79
  %.sroa.speculated4111 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.0.0.copyload3521, i16 %qk_fetch.sroa.164.0.copyload3610, !dbg !79
  %.sroa.speculated4003 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.56.0.copyload3538, i16 %qk_fetch.sroa.200.0.copyload3634, !dbg !79
  %.sroa.speculated3895 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.92.0.copyload3562, i16 %qk_fetch.sroa.236.0.copyload3658, !dbg !79
  %.sroa.speculated3787 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.128.0.copyload3586, i16 %qk_fetch.sroa.272.0.copyload3682, !dbg !79
  store i16 %.sroa.speculated4114, ptr addrspace(3) %gep841.1, align 16, !dbg !80
  store i16 %.sroa.speculated4006, ptr addrspace(3) %qk_ordered.sroa.38.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3898, ptr addrspace(3) %qk_ordered.sroa.56.0.gep841.1.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3790, ptr addrspace(3) %qk_ordered.sroa.74.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated4111, ptr addrspace(3) %qk_ordered.sroa.92.0.gep841.1.sroa_idx, align 8, !dbg !80
  store i16 %.sroa.speculated4003, ptr addrspace(3) %qk_ordered.sroa.110.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3895, ptr addrspace(3) %qk_ordered.sroa.128.0.gep841.1.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3787, ptr addrspace(3) %qk_ordered.sroa.146.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  fence syncscope("warp") release, !dbg !81
  tail call void @llvm.mxc.barrier.warp(), !dbg !84
  fence syncscope("warp") acquire, !dbg !85
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr74, align 8, !dbg !86
  %19 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %6, <4 x float> zeroinitializer), !dbg !87
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr74.1, align 8, !dbg !86
  %20 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %7, <4 x float> %19), !dbg !87
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr74.2, align 8, !dbg !86
  %21 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %8, <4 x float> %20), !dbg !87
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr74.3, align 8, !dbg !86
  %22 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %9, <4 x float> %21), !dbg !87
  %add230 = add nuw nsw i32 %mul109, %mul229
  %cmp233.not = icmp sgt i32 %add230, %1, !dbg !88
  %scores.sroa.0.0.vec.extract2085 = extractelement <4 x float> %22, i64 0
  %spec.select = select i1 %cmp233.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2085, !dbg !89
  %cmp233.not.1.not = icmp slt i32 %add230, %1, !dbg !88
  %scores.sroa.0.4.vec.extract2190 = extractelement <4 x float> %22, i64 1, !dbg !89
  %condval.0.1 = select i1 %cmp233.not.1.not, float %scores.sroa.0.4.vec.extract2190, float 0xFFF0000000000000, !dbg !89
  %add231.2 = or disjoint i32 %add230, 2, !dbg !90
  %cmp233.not.2 = icmp sgt i32 %add231.2, %1, !dbg !88
  %scores.sroa.0.8.vec.extract2267 = extractelement <4 x float> %22, i64 2, !dbg !89
  %condval.0.2 = select i1 %cmp233.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2267, !dbg !89
  %add231.3 = or disjoint i32 %add230, 3, !dbg !90
  %cmp233.not.3 = icmp sgt i32 %add231.3, %1, !dbg !88
  %scores.sroa.0.12.vec.extract2344 = extractelement <4 x float> %22, i64 3, !dbg !89
  %condval.0.3 = select i1 %cmp233.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2344, !dbg !89
  %23 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !91
  %24 = tail call contract noundef float @llvm.maxnum.f32(float %23, float %condval.0.1), !dbg !91
  %25 = tail call contract noundef float @llvm.maxnum.f32(float %24, float %condval.0.2), !dbg !91
  %26 = tail call contract noundef float @llvm.maxnum.f32(float %25, float %condval.0.3), !dbg !91
  %27 = bitcast float %26 to i32, !dbg !95
  %28 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !98
  %29 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %28) #11, !dbg !103
  %xor.i.i = xor i32 %29, 32, !dbg !104
  %30 = and i32 %29, -64, !dbg !105
  %and.i.i = add nsw i32 %30, 64, !dbg !105
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !106
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %29, !dbg !107
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !108
  %31 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %27), !dbg !109
  %32 = bitcast i32 %31 to float, !dbg !110
  %33 = tail call contract noundef float @llvm.maxnum.f32(float %26, float %32), !dbg !111
  %34 = bitcast float %33 to i32, !dbg !113
  %35 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !115
  %36 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %35) #11, !dbg !118
  %xor.i.i779 = xor i32 %36, 16, !dbg !119
  %37 = and i32 %36, -64, !dbg !120
  %and.i.i780 = add nsw i32 %37, 64, !dbg !120
  %cmp.not.i.i781 = icmp slt i32 %xor.i.i779, %and.i.i780, !dbg !121
  %cond.i.i782 = select i1 %cmp.not.i.i781, i32 %xor.i.i779, i32 %36, !dbg !122
  %shl.i.i783 = shl i32 %cond.i.i782, 2, !dbg !123
  %38 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i783, i32 %34), !dbg !124
  %39 = bitcast i32 %38 to float, !dbg !125
  %40 = tail call contract noundef float @llvm.maxnum.f32(float %33, float %39), !dbg !126
  %41 = tail call contract noundef float @llvm.maxnum.f32(float %40, float 0xFFF0000000000000), !dbg !128
  %sub = fsub contract float 0xFFF0000000000000, %41, !dbg !130
  %mul275 = fmul contract float %sub, 0x3FC7154760000000, !dbg !131
  %cmp.i.i = fcmp contract olt float %mul275, -1.260000e+02, !dbg !132
  %cond.i.i784 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !132
  %add.i.i = fadd contract float %mul275, %cond.i.i784, !dbg !132
  %42 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !132
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !132
  %mul.i.i = fmul contract float %cond2.i.i, %42, !dbg !132
  %mul292 = fmul contract float %mul.i.i, 0.000000e+00, !dbg !135
  %numerator.sroa.0.0.vec.insert2400 = insertelement <4 x float> poison, float %mul292, i64 0, !dbg !136
  %numerator.sroa.0.12.vec.insert2511 = shufflevector <4 x float> %numerator.sroa.0.0.vec.insert2400, <4 x float> poison, <4 x i32> zeroinitializer, !dbg !136
  %sub325 = fsub contract float %spec.select, %41, !dbg !137
  %sub329 = fsub contract float %condval.0.1, %41, !dbg !138
  %sub333 = fsub contract float %condval.0.2, %41, !dbg !139
  %sub337 = fsub contract float %condval.0.3, %41, !dbg !140
  %mul342 = fmul contract float %sub325, 0x3FC7154760000000, !dbg !141
  %mul346 = fmul contract float %sub329, 0x3FC7154760000000, !dbg !142
  %mul350 = fmul contract float %sub333, 0x3FC7154760000000, !dbg !143
  %mul354 = fmul contract float %sub337, 0x3FC7154760000000, !dbg !144
  %add359 = fadd contract float %mul342, 8.000000e+00, !dbg !145
  %add363 = fadd contract float %mul346, 8.000000e+00, !dbg !146
  %add367 = fadd contract float %mul350, 8.000000e+00, !dbg !147
  %add371 = fadd contract float %mul354, 8.000000e+00, !dbg !148
  %cmp.i.i785 = fcmp contract olt float %add359, -1.260000e+02, !dbg !149
  %cond.i.i786 = select contract i1 %cmp.i.i785, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i787 = fadd contract float %add359, %cond.i.i786, !dbg !149
  %43 = tail call contract float @llvm.exp2.f32(float %add.i.i787), !dbg !149
  %cond2.i.i788 = select contract i1 %cmp.i.i785, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i789 = fmul contract float %cond2.i.i788, %43, !dbg !149
  %cmp.i.i790 = fcmp contract olt float %add363, -1.260000e+02, !dbg !151
  %cond.i.i791 = select contract i1 %cmp.i.i790, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i792 = fadd contract float %add363, %cond.i.i791, !dbg !151
  %44 = tail call contract float @llvm.exp2.f32(float %add.i.i792), !dbg !151
  %cond2.i.i793 = select contract i1 %cmp.i.i790, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i794 = fmul contract float %cond2.i.i793, %44, !dbg !151
  %cmp.i.i795 = fcmp contract olt float %add367, -1.260000e+02, !dbg !153
  %cond.i.i796 = select contract i1 %cmp.i.i795, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i797 = fadd contract float %add367, %cond.i.i796, !dbg !153
  %45 = tail call contract float @llvm.exp2.f32(float %add.i.i797), !dbg !153
  %cond2.i.i798 = select contract i1 %cmp.i.i795, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i799 = fmul contract float %cond2.i.i798, %45, !dbg !153
  %cmp.i.i800 = fcmp contract olt float %add371, -1.260000e+02, !dbg !155
  %cond.i.i801 = select contract i1 %cmp.i.i800, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i802 = fadd contract float %add371, %cond.i.i801, !dbg !155
  %46 = tail call contract float @llvm.exp2.f32(float %add.i.i802), !dbg !155
  %cond2.i.i803 = select contract i1 %cmp.i.i800, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i804 = fmul contract float %cond2.i.i803, %46, !dbg !155
  %47 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %48 = fptrunc float %mul.i.i789 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %47), !dbg !157, !noalias !165
  %49 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %50 = fptrunc float %mul.i.i794 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %49), !dbg !170, !noalias !165
  %51 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %52 = fptrunc float %mul.i.i799 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %51), !dbg !172, !noalias !176
  %53 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %54 = fptrunc float %mul.i.i804 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %53), !dbg !181, !noalias !176
  %55 = insertelement <4 x half> poison, half %48, i64 0, !dbg !183
  %56 = insertelement <4 x half> %55, half %50, i64 1, !dbg !183
  %57 = insertelement <4 x half> %56, half %52, i64 2, !dbg !183
  %58 = insertelement <4 x half> %57, half %54, i64 3, !dbg !183
  %conv.i.i = fpext half %48 to float, !dbg !184
  %add405 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !189
  %conv.i.i.1 = fpext half %50 to float, !dbg !184
  %add405.1 = fadd contract float %add405, %conv.i.i.1, !dbg !189
  %conv.i.i.2 = fpext half %52 to float, !dbg !184
  %add405.2 = fadd contract float %add405.1, %conv.i.i.2, !dbg !189
  %conv.i.i.3 = fpext half %54 to float, !dbg !184
  %add405.3 = fadd contract float %add405.2, %conv.i.i.3, !dbg !189
  %59 = bitcast float %add405.3 to i32, !dbg !190
  %60 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !192
  %61 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %60) #11, !dbg !195
  %xor.i.i810 = xor i32 %61, 32, !dbg !196
  %62 = and i32 %61, -64, !dbg !197
  %and.i.i811 = add nsw i32 %62, 64, !dbg !197
  %cmp.not.i.i812 = icmp slt i32 %xor.i.i810, %and.i.i811, !dbg !198
  %cond.i.i813 = select i1 %cmp.not.i.i812, i32 %xor.i.i810, i32 %61, !dbg !199
  %shl.i.i814 = shl i32 %cond.i.i813, 2, !dbg !200
  %63 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i814, i32 %59), !dbg !201
  %64 = bitcast i32 %63 to float, !dbg !202
  %add413 = fadd contract float %add405.3, %64, !dbg !203
  %65 = bitcast float %add413 to i32, !dbg !204
  %66 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !206
  %67 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %66) #11, !dbg !209
  %xor.i.i815 = xor i32 %67, 16, !dbg !210
  %68 = and i32 %67, -64, !dbg !211
  %and.i.i816 = add nsw i32 %68, 64, !dbg !211
  %cmp.not.i.i817 = icmp slt i32 %xor.i.i815, %and.i.i816, !dbg !212
  %cond.i.i818 = select i1 %cmp.not.i.i817, i32 %xor.i.i815, i32 %67, !dbg !213
  %shl.i.i819 = shl i32 %cond.i.i818, 2, !dbg !214
  %69 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i819, i32 %65), !dbg !215
  %70 = bitcast i32 %69 to float, !dbg !216
  %add418 = fadd contract float %add413, %70, !dbg !217
  fence syncscope("warp") release, !dbg !218
  tail call void @llvm.mxc.barrier.warp(), !dbg !221
  fence syncscope("warp") acquire, !dbg !222
  %71 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add438, !dbg !223
  %72 = getelementptr inbounds i8, ptr addrspace(4) %71, i64 %.idx, !dbg !223
  %73 = load i64, ptr addrspace(4) %72, align 8, !dbg !224
  %add.ptr447.1 = getelementptr inbounds i8, ptr addrspace(4) %72, i64 128, !dbg !223
  %74 = load i64, ptr addrspace(4) %add.ptr447.1, align 8, !dbg !224
  %add.ptr447.2 = getelementptr inbounds i8, ptr addrspace(4) %72, i64 256, !dbg !223
  %75 = load i64, ptr addrspace(4) %add.ptr447.2, align 8, !dbg !224
  %add.ptr447.3 = getelementptr inbounds i8, ptr addrspace(4) %72, i64 384, !dbg !223
  %76 = load i64, ptr addrspace(4) %add.ptr447.3, align 8, !dbg !224
  %77 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul477, !dbg !225
  %add.ptr489.idx = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489 = getelementptr inbounds i8, ptr addrspace(3) %77, i32 %add.ptr489.idx, !dbg !225
  %v_column.sroa.130.0.insert.ext = shl i64 %76, 48, !dbg !226
  %v_column.sroa.98.0.insert.ext = shl i64 %75, 32, !dbg !226
  %v_column.sroa.98.0.insert.shift = and i64 %v_column.sroa.98.0.insert.ext, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert = or disjoint i64 %v_column.sroa.130.0.insert.ext, %v_column.sroa.98.0.insert.shift, !dbg !226
  %v_column.sroa.66.0.insert.ext = shl i64 %74, 16, !dbg !226
  %v_column.sroa.66.0.insert.shift = and i64 %v_column.sroa.66.0.insert.ext, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert = or disjoint i64 %v_column.sroa.98.0.insert.insert, %v_column.sroa.66.0.insert.shift, !dbg !226
  %v_column.sroa.0.0.insert.ext = and i64 %73, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert = or disjoint i64 %v_column.sroa.66.0.insert.insert, %v_column.sroa.0.0.insert.ext, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr489, align 8, !dbg !226
  %v_fetch.sroa.0.2.extract.shift = lshr i64 %73, 16, !dbg !227
  %add478.1 = or disjoint i32 %mul477, 256, !dbg !228
  %78 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.1, !dbg !225
  %xor485.1 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.1 = xor i32 %xor485.1, 8, !dbg !225
  %add.ptr489.1 = getelementptr inbounds i8, ptr addrspace(3) %78, i32 %add.ptr489.idx.1, !dbg !225
  %79 = shl i64 %76, 32, !dbg !226
  %v_column.sroa.130.0.insert.ext1481 = and i64 %79, -281474976710656, !dbg !226
  %80 = shl i64 %75, 16, !dbg !226
  %v_column.sroa.98.0.insert.shift1327 = and i64 %80, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1329 = or disjoint i64 %v_column.sroa.130.0.insert.ext1481, %v_column.sroa.98.0.insert.shift1327, !dbg !226
  %v_column.sroa.66.0.insert.ext1171 = and i64 %74, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1174 = or disjoint i64 %v_column.sroa.98.0.insert.insert1329, %v_column.sroa.66.0.insert.ext1171, !dbg !226
  %v_column.sroa.0.0.insert.ext1047 = and i64 %v_fetch.sroa.0.2.extract.shift, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1049 = or disjoint i64 %v_column.sroa.66.0.insert.insert1174, %v_column.sroa.0.0.insert.ext1047, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1049, ptr addrspace(3) %add.ptr489.1, align 8, !dbg !226
  %v_fetch.sroa.0.4.extract.shift = lshr i64 %73, 32, !dbg !227
  %add478.2 = or disjoint i32 %mul477, 512, !dbg !228
  %81 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.2, !dbg !225
  %xor485.2 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.2 = xor i32 %xor485.2, 16, !dbg !225
  %add.ptr489.2 = getelementptr inbounds i8, ptr addrspace(3) %81, i32 %add.ptr489.idx.2, !dbg !225
  %82 = shl i64 %76, 16, !dbg !226
  %v_column.sroa.130.0.insert.ext1486 = and i64 %82, -281474976710656, !dbg !226
  %v_column.sroa.98.0.insert.ext1331 = and i64 %75, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1334 = or disjoint i64 %v_column.sroa.130.0.insert.ext1486, %v_column.sroa.98.0.insert.ext1331, !dbg !226
  %83 = lshr i64 %74, 16, !dbg !226
  %v_column.sroa.66.0.insert.shift1177 = and i64 %83, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1179 = or disjoint i64 %v_column.sroa.98.0.insert.insert1334, %v_column.sroa.66.0.insert.shift1177, !dbg !226
  %v_column.sroa.0.0.insert.ext1051 = and i64 %v_fetch.sroa.0.4.extract.shift, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1053 = or disjoint i64 %v_column.sroa.66.0.insert.insert1179, %v_column.sroa.0.0.insert.ext1051, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1053, ptr addrspace(3) %add.ptr489.2, align 8, !dbg !226
  %v_fetch.sroa.0.6.extract.shift = lshr i64 %73, 48, !dbg !227
  %v_fetch.sroa.122.30.extract.shift = and i64 %76, -281474976710656, !dbg !226
  %add478.3 = or disjoint i32 %mul477, 768, !dbg !228
  %84 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.3, !dbg !225
  %xor485.3 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.3 = xor i32 %xor485.3, 24, !dbg !225
  %add.ptr489.3 = getelementptr inbounds i8, ptr addrspace(3) %84, i32 %add.ptr489.idx.3, !dbg !225
  %85 = lshr i64 %75, 16, !dbg !226
  %v_column.sroa.98.0.insert.shift1337 = and i64 %85, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1339 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift, %v_column.sroa.98.0.insert.shift1337, !dbg !226
  %86 = lshr i64 %74, 32, !dbg !226
  %v_column.sroa.66.0.insert.shift1182 = and i64 %86, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1184 = or disjoint i64 %v_column.sroa.98.0.insert.insert1339, %v_column.sroa.66.0.insert.shift1182, !dbg !226
  %v_column.sroa.0.0.insert.insert1057 = or disjoint i64 %v_column.sroa.66.0.insert.insert1184, %v_fetch.sroa.0.6.extract.shift, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1057, ptr addrspace(3) %add.ptr489.3, align 8, !dbg !226
  fence syncscope("warp") release, !dbg !229
  tail call void @llvm.mxc.barrier.warp(), !dbg !232
  fence syncscope("warp") acquire, !dbg !233
  %add506 = or disjoint i32 %mul499, %mul505, !dbg !234
  %87 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506, !dbg !235
  %add.ptr516.idx = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516 = getelementptr inbounds i8, ptr addrspace(3) %87, i32 %add.ptr516.idx, !dbg !235
  %88 = load <4 x half>, ptr addrspace(3) %add.ptr516, align 8, !dbg !236
  %add501.1 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.1 = or disjoint i32 %add501.1, 64, !dbg !234
  %89 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.1, !dbg !235
  %xor512.1 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.1 = xor i32 %xor512.1, 8, !dbg !235
  %add.ptr516.1 = getelementptr inbounds i8, ptr addrspace(3) %89, i32 %add.ptr516.idx.1, !dbg !235
  %90 = load <4 x half>, ptr addrspace(3) %add.ptr516.1, align 8, !dbg !236
  %add501.2 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.2 = or disjoint i32 %add501.2, 128, !dbg !234
  %91 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.2, !dbg !235
  %xor512.2 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.2 = xor i32 %xor512.2, 16, !dbg !235
  %add.ptr516.2 = getelementptr inbounds i8, ptr addrspace(3) %91, i32 %add.ptr516.idx.2, !dbg !235
  %92 = load <4 x half>, ptr addrspace(3) %add.ptr516.2, align 8, !dbg !236
  %add501.3 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.3 = or disjoint i32 %add501.3, 192, !dbg !234
  %93 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.3, !dbg !235
  %xor512.3 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.3 = xor i32 %xor512.3, 24, !dbg !235
  %add.ptr516.3 = getelementptr inbounds i8, ptr addrspace(3) %93, i32 %add.ptr516.idx.3, !dbg !235
  %94 = load <4 x half>, ptr addrspace(3) %add.ptr516.3, align 8, !dbg !236
  %95 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %88, <4 x half> %58, <4 x float> %numerator.sroa.0.12.vec.insert2511), !dbg !237
  %96 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %90, <4 x half> %58, <4 x float> %numerator.sroa.0.12.vec.insert2511), !dbg !237
  %97 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %92, <4 x half> %58, <4 x float> %numerator.sroa.0.12.vec.insert2511), !dbg !237
  %98 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %94, <4 x half> %58, <4 x float> %numerator.sroa.0.12.vec.insert2511), !dbg !237
  %add422 = fadd contract float %mul292, %add418, !dbg !238
  br label %if.end542, !dbg !239

if.end542:                                        ; preds = %if.then, %entry
  %numerator.sroa.290.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %98, %if.then ], !dbg !240
  %numerator.sroa.194.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %97, %if.then ], !dbg !240
  %numerator.sroa.98.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %96, %if.then ], !dbg !240
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %95, %if.then ], !dbg !240
  %maximum.sroa.0.1 = phi float [ 0xFFF0000000000000, %entry ], [ %41, %if.then ], !dbg !240
  %denominator.sroa.0.1 = phi float [ 0.000000e+00, %entry ], [ %add422, %if.then ], !dbg !240
  %99 = or disjoint i64 %16, 1, !dbg !241
  %arrayidx108.1 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %99, !dbg !67
  %100 = load i32, ptr addrspace(1) %arrayidx108.1, align 4, !dbg !67, !tbaa !30
  %mul109.1 = shl nsw i32 %100, 4, !dbg !68
  %cmp110.1 = icmp slt i32 %100, 0, !dbg !69
  %cmp112.not.1 = icmp sgt i32 %mul109.1, %1
  %or.cond.1 = select i1 %cmp110.1, i1 true, i1 %cmp112.not.1, !dbg !70
  br i1 %or.cond.1, label %if.end542.1, label %if.then.1, !dbg !70

if.then.1:                                        ; preds = %if.end542
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %conv122.1 = zext nneg i32 %mul109.1 to i64
  %.idx.1 = shl nuw nsw i64 %conv122.1, 7
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep868, i64 %.idx.1, !dbg !76
  %.idx876.1894 = shl nuw nsw i64 %conv, 17, !dbg !77
  %101 = getelementptr inbounds i8, ptr addrspace(4) %gep.1, i64 %.idx876.1894, !dbg !77
  %qk_fetch.sroa.0.0.copyload3522 = load i16, ptr addrspace(4) %101, align 16, !dbg !78
  %qk_fetch.sroa.56.0..sroa_idx3539 = getelementptr inbounds i8, ptr addrspace(4) %101, i64 2, !dbg !78
  %qk_fetch.sroa.56.0.copyload3540 = load i16, ptr addrspace(4) %qk_fetch.sroa.56.0..sroa_idx3539, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.92.0..sroa_idx3563 = getelementptr inbounds i8, ptr addrspace(4) %101, i64 4, !dbg !78
  %qk_fetch.sroa.92.0.copyload3564 = load i16, ptr addrspace(4) %qk_fetch.sroa.92.0..sroa_idx3563, align 4, !dbg !78
  %qk_fetch.sroa.128.0..sroa_idx3587 = getelementptr inbounds i8, ptr addrspace(4) %101, i64 6, !dbg !78
  %qk_fetch.sroa.128.0.copyload3588 = load i16, ptr addrspace(4) %qk_fetch.sroa.128.0..sroa_idx3587, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.164.0..sroa_idx3611 = getelementptr inbounds i8, ptr addrspace(4) %101, i64 8, !dbg !78
  %qk_fetch.sroa.164.0.copyload3612 = load i16, ptr addrspace(4) %qk_fetch.sroa.164.0..sroa_idx3611, align 8, !dbg !78
  %qk_fetch.sroa.200.0..sroa_idx3635 = getelementptr inbounds i8, ptr addrspace(4) %101, i64 10, !dbg !78
  %qk_fetch.sroa.200.0.copyload3636 = load i16, ptr addrspace(4) %qk_fetch.sroa.200.0..sroa_idx3635, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.236.0..sroa_idx3659 = getelementptr inbounds i8, ptr addrspace(4) %101, i64 12, !dbg !78
  %qk_fetch.sroa.236.0.copyload3660 = load i16, ptr addrspace(4) %qk_fetch.sroa.236.0..sroa_idx3659, align 4, !dbg !78
  %qk_fetch.sroa.272.0..sroa_idx3683 = getelementptr inbounds i8, ptr addrspace(4) %101, i64 14, !dbg !78
  %qk_fetch.sroa.272.0.copyload3684 = load i16, ptr addrspace(4) %qk_fetch.sroa.272.0..sroa_idx3683, align 2, !dbg !78, !tbaa !30
  %.sroa.speculated4108 = select i1 %cmp19, i16 %qk_fetch.sroa.0.0.copyload3522, i16 %qk_fetch.sroa.164.0.copyload3612, !dbg !79
  %.sroa.speculated4000 = select i1 %cmp19, i16 %qk_fetch.sroa.56.0.copyload3540, i16 %qk_fetch.sroa.200.0.copyload3636, !dbg !79
  %.sroa.speculated3892 = select i1 %cmp19, i16 %qk_fetch.sroa.92.0.copyload3564, i16 %qk_fetch.sroa.236.0.copyload3660, !dbg !79
  %.sroa.speculated3784 = select i1 %cmp19, i16 %qk_fetch.sroa.128.0.copyload3588, i16 %qk_fetch.sroa.272.0.copyload3684, !dbg !79
  %.sroa.speculated4105 = select i1 %cmp19, i16 %qk_fetch.sroa.164.0.copyload3612, i16 %qk_fetch.sroa.0.0.copyload3522, !dbg !79
  %.sroa.speculated3997 = select i1 %cmp19, i16 %qk_fetch.sroa.200.0.copyload3636, i16 %qk_fetch.sroa.56.0.copyload3540, !dbg !79
  %.sroa.speculated3889 = select i1 %cmp19, i16 %qk_fetch.sroa.236.0.copyload3660, i16 %qk_fetch.sroa.92.0.copyload3564, !dbg !79
  %.sroa.speculated3781 = select i1 %cmp19, i16 %qk_fetch.sroa.272.0.copyload3684, i16 %qk_fetch.sroa.128.0.copyload3588, !dbg !79
  store i16 %.sroa.speculated4108, ptr addrspace(3) %invariant.gep840, align 16, !dbg !80
  store i16 %.sroa.speculated4000, ptr addrspace(3) %qk_ordered.sroa.38.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3892, ptr addrspace(3) %qk_ordered.sroa.56.0.invariant.gep840.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3784, ptr addrspace(3) %qk_ordered.sroa.74.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated4105, ptr addrspace(3) %qk_ordered.sroa.92.0.invariant.gep840.sroa_idx, align 8, !dbg !80
  store i16 %.sroa.speculated3997, ptr addrspace(3) %qk_ordered.sroa.110.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3889, ptr addrspace(3) %qk_ordered.sroa.128.0.invariant.gep840.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3781, ptr addrspace(3) %qk_ordered.sroa.146.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  %gep848.1.1 = getelementptr inbounds i8, ptr addrspace(4) %101, i64 1024, !dbg !77
  %qk_fetch.sroa.0.0.copyload3523 = load i16, ptr addrspace(4) %gep848.1.1, align 16, !dbg !78
  %qk_fetch.sroa.56.0.gep848.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %101, i64 1026, !dbg !78
  %qk_fetch.sroa.56.0.copyload3541 = load i16, ptr addrspace(4) %qk_fetch.sroa.56.0.gep848.1.1.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.92.0.gep848.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %101, i64 1028, !dbg !78
  %qk_fetch.sroa.92.0.copyload3565 = load i16, ptr addrspace(4) %qk_fetch.sroa.92.0.gep848.1.1.sroa_idx, align 4, !dbg !78
  %qk_fetch.sroa.128.0.gep848.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %101, i64 1030, !dbg !78
  %qk_fetch.sroa.128.0.copyload3589 = load i16, ptr addrspace(4) %qk_fetch.sroa.128.0.gep848.1.1.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.164.0.gep848.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %101, i64 1032, !dbg !78
  %qk_fetch.sroa.164.0.copyload3613 = load i16, ptr addrspace(4) %qk_fetch.sroa.164.0.gep848.1.1.sroa_idx, align 8, !dbg !78
  %qk_fetch.sroa.200.0.gep848.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %101, i64 1034, !dbg !78
  %qk_fetch.sroa.200.0.copyload3637 = load i16, ptr addrspace(4) %qk_fetch.sroa.200.0.gep848.1.1.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.236.0.gep848.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %101, i64 1036, !dbg !78
  %qk_fetch.sroa.236.0.copyload3661 = load i16, ptr addrspace(4) %qk_fetch.sroa.236.0.gep848.1.1.sroa_idx, align 4, !dbg !78
  %qk_fetch.sroa.272.0.gep848.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %101, i64 1038, !dbg !78
  %qk_fetch.sroa.272.0.copyload3685 = load i16, ptr addrspace(4) %qk_fetch.sroa.272.0.gep848.1.1.sroa_idx, align 2, !dbg !78, !tbaa !30
  %.sroa.speculated4102 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.164.0.copyload3613, i16 %qk_fetch.sroa.0.0.copyload3523, !dbg !79
  %.sroa.speculated3994 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.200.0.copyload3637, i16 %qk_fetch.sroa.56.0.copyload3541, !dbg !79
  %.sroa.speculated3886 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.236.0.copyload3661, i16 %qk_fetch.sroa.92.0.copyload3565, !dbg !79
  %.sroa.speculated3778 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.272.0.copyload3685, i16 %qk_fetch.sroa.128.0.copyload3589, !dbg !79
  %.sroa.speculated4099 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.0.0.copyload3523, i16 %qk_fetch.sroa.164.0.copyload3613, !dbg !79
  %.sroa.speculated3991 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.56.0.copyload3541, i16 %qk_fetch.sroa.200.0.copyload3637, !dbg !79
  %.sroa.speculated3883 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.92.0.copyload3565, i16 %qk_fetch.sroa.236.0.copyload3661, !dbg !79
  %.sroa.speculated3775 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.128.0.copyload3589, i16 %qk_fetch.sroa.272.0.copyload3685, !dbg !79
  store i16 %.sroa.speculated4102, ptr addrspace(3) %gep841.1, align 16, !dbg !80
  store i16 %.sroa.speculated3994, ptr addrspace(3) %qk_ordered.sroa.38.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3886, ptr addrspace(3) %qk_ordered.sroa.56.0.gep841.1.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3778, ptr addrspace(3) %qk_ordered.sroa.74.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated4099, ptr addrspace(3) %qk_ordered.sroa.92.0.gep841.1.sroa_idx, align 8, !dbg !80
  store i16 %.sroa.speculated3991, ptr addrspace(3) %qk_ordered.sroa.110.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3883, ptr addrspace(3) %qk_ordered.sroa.128.0.gep841.1.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3775, ptr addrspace(3) %qk_ordered.sroa.146.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  fence syncscope("warp") release, !dbg !81
  tail call void @llvm.mxc.barrier.warp(), !dbg !84
  fence syncscope("warp") acquire, !dbg !85
  %k_local.sroa.0.0.copyload.1925 = load <4 x half>, ptr addrspace(3) %add.ptr74, align 8, !dbg !86
  %102 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1925, <4 x half> %6, <4 x float> zeroinitializer), !dbg !87
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr74.1, align 8, !dbg !86
  %103 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %7, <4 x float> %102), !dbg !87
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr74.2, align 8, !dbg !86
  %104 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %8, <4 x float> %103), !dbg !87
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr74.3, align 8, !dbg !86
  %105 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %9, <4 x float> %104), !dbg !87
  %add230.1 = add nuw nsw i32 %mul109.1, %mul229
  %cmp233.not.1926 = icmp sgt i32 %add230.1, %1, !dbg !88
  %scores.sroa.0.0.vec.extract2093 = extractelement <4 x float> %105, i64 0
  %spec.select4413 = select i1 %cmp233.not.1926, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2093, !dbg !89
  %cmp233.not.1.1.not = icmp slt i32 %add230.1, %1, !dbg !88
  %scores.sroa.0.4.vec.extract2196 = extractelement <4 x float> %105, i64 1, !dbg !89
  %condval.0.1.1 = select i1 %cmp233.not.1.1.not, float %scores.sroa.0.4.vec.extract2196, float 0xFFF0000000000000, !dbg !89
  %add231.2.1 = or disjoint i32 %add230.1, 2, !dbg !90
  %cmp233.not.2.1 = icmp sgt i32 %add231.2.1, %1, !dbg !88
  %scores.sroa.0.8.vec.extract2273 = extractelement <4 x float> %105, i64 2, !dbg !89
  %condval.0.2.1 = select i1 %cmp233.not.2.1, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2273, !dbg !89
  %add231.3.1 = or disjoint i32 %add230.1, 3, !dbg !90
  %cmp233.not.3.1 = icmp sgt i32 %add231.3.1, %1, !dbg !88
  %scores.sroa.0.12.vec.extract2350 = extractelement <4 x float> %105, i64 3, !dbg !89
  %condval.0.3.1 = select i1 %cmp233.not.3.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2350, !dbg !89
  %106 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select4413, float 0xFFF0000000000000), !dbg !91
  %107 = tail call contract noundef float @llvm.maxnum.f32(float %106, float %condval.0.1.1), !dbg !91
  %108 = tail call contract noundef float @llvm.maxnum.f32(float %107, float %condval.0.2.1), !dbg !91
  %109 = tail call contract noundef float @llvm.maxnum.f32(float %108, float %condval.0.3.1), !dbg !91
  %110 = bitcast float %109 to i32, !dbg !95
  %111 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !98
  %112 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %111) #11, !dbg !103
  %xor.i.i.1 = xor i32 %112, 32, !dbg !104
  %113 = and i32 %112, -64, !dbg !105
  %and.i.i.1 = add nsw i32 %113, 64, !dbg !105
  %cmp.not.i.i.1 = icmp slt i32 %xor.i.i.1, %and.i.i.1, !dbg !106
  %cond.i.i.1 = select i1 %cmp.not.i.i.1, i32 %xor.i.i.1, i32 %112, !dbg !107
  %shl.i.i.1 = shl i32 %cond.i.i.1, 2, !dbg !108
  %114 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.1, i32 %110), !dbg !109
  %115 = bitcast i32 %114 to float, !dbg !110
  %116 = tail call contract noundef float @llvm.maxnum.f32(float %109, float %115), !dbg !111
  %117 = bitcast float %116 to i32, !dbg !113
  %118 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !115
  %119 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %118) #11, !dbg !118
  %xor.i.i779.1 = xor i32 %119, 16, !dbg !119
  %120 = and i32 %119, -64, !dbg !120
  %and.i.i780.1 = add nsw i32 %120, 64, !dbg !120
  %cmp.not.i.i781.1 = icmp slt i32 %xor.i.i779.1, %and.i.i780.1, !dbg !121
  %cond.i.i782.1 = select i1 %cmp.not.i.i781.1, i32 %xor.i.i779.1, i32 %119, !dbg !122
  %shl.i.i783.1 = shl i32 %cond.i.i782.1, 2, !dbg !123
  %121 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i783.1, i32 %117), !dbg !124
  %122 = bitcast i32 %121 to float, !dbg !125
  %123 = tail call contract noundef float @llvm.maxnum.f32(float %116, float %122), !dbg !126
  %124 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1, float %123), !dbg !128
  %sub.1 = fsub contract float %maximum.sroa.0.1, %124, !dbg !130
  %mul275.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !131
  %cmp.i.i.1 = fcmp contract olt float %mul275.1, -1.260000e+02, !dbg !132
  %cond.i.i784.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !132
  %add.i.i.1 = fadd contract float %mul275.1, %cond.i.i784.1, !dbg !132
  %125 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !132
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !132
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %125, !dbg !132
  %numerator.sroa.0.0.vec.extract2403 = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !242
  %numerator.sroa.0.4.vec.extract2440 = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !242
  %numerator.sroa.0.8.vec.extract2477 = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !242
  %numerator.sroa.0.12.vec.extract2514 = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !242
  %mul292.1937 = fmul contract float %mul.i.i.1, %numerator.sroa.0.0.vec.extract2403, !dbg !135
  %mul295.1938 = fmul contract float %mul.i.i.1, %numerator.sroa.0.4.vec.extract2440, !dbg !243
  %mul298.1939 = fmul contract float %mul.i.i.1, %numerator.sroa.0.8.vec.extract2477, !dbg !244
  %mul301.1940 = fmul contract float %mul.i.i.1, %numerator.sroa.0.12.vec.extract2514, !dbg !245
  %numerator.sroa.0.0.vec.insert2405 = insertelement <4 x float> poison, float %mul292.1937, i64 0, !dbg !136
  %numerator.sroa.0.4.vec.insert2442 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2405, float %mul295.1938, i64 1, !dbg !136
  %numerator.sroa.0.8.vec.insert2479 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2442, float %mul298.1939, i64 2, !dbg !136
  %numerator.sroa.0.12.vec.insert2516 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2479, float %mul301.1940, i64 3, !dbg !136
  %numerator.sroa.98.16.vec.extract2559 = extractelement <4 x float> %numerator.sroa.98.0, i64 0, !dbg !242
  %numerator.sroa.98.20.vec.extract2596 = extractelement <4 x float> %numerator.sroa.98.0, i64 1, !dbg !242
  %numerator.sroa.98.24.vec.extract2633 = extractelement <4 x float> %numerator.sroa.98.0, i64 2, !dbg !242
  %numerator.sroa.98.28.vec.extract2670 = extractelement <4 x float> %numerator.sroa.98.0, i64 3, !dbg !242
  %mul292.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.16.vec.extract2559, !dbg !135
  %mul295.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.20.vec.extract2596, !dbg !243
  %mul298.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.24.vec.extract2633, !dbg !244
  %mul301.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.28.vec.extract2670, !dbg !245
  %numerator.sroa.98.16.vec.insert2561 = insertelement <4 x float> poison, float %mul292.1.1, i64 0, !dbg !136
  %numerator.sroa.98.20.vec.insert2598 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2561, float %mul295.1.1, i64 1, !dbg !136
  %numerator.sroa.98.24.vec.insert2635 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2598, float %mul298.1.1, i64 2, !dbg !136
  %numerator.sroa.98.28.vec.insert2672 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2635, float %mul301.1.1, i64 3, !dbg !136
  %numerator.sroa.194.32.vec.extract2715 = extractelement <4 x float> %numerator.sroa.194.0, i64 0, !dbg !242
  %numerator.sroa.194.36.vec.extract2752 = extractelement <4 x float> %numerator.sroa.194.0, i64 1, !dbg !242
  %numerator.sroa.194.40.vec.extract2789 = extractelement <4 x float> %numerator.sroa.194.0, i64 2, !dbg !242
  %numerator.sroa.194.44.vec.extract2826 = extractelement <4 x float> %numerator.sroa.194.0, i64 3, !dbg !242
  %mul292.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.32.vec.extract2715, !dbg !135
  %mul295.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.36.vec.extract2752, !dbg !243
  %mul298.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.40.vec.extract2789, !dbg !244
  %mul301.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.44.vec.extract2826, !dbg !245
  %numerator.sroa.194.32.vec.insert2717 = insertelement <4 x float> poison, float %mul292.2.1, i64 0, !dbg !136
  %numerator.sroa.194.36.vec.insert2754 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2717, float %mul295.2.1, i64 1, !dbg !136
  %numerator.sroa.194.40.vec.insert2791 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2754, float %mul298.2.1, i64 2, !dbg !136
  %numerator.sroa.194.44.vec.insert2828 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2791, float %mul301.2.1, i64 3, !dbg !136
  %numerator.sroa.290.48.vec.extract2871 = extractelement <4 x float> %numerator.sroa.290.0, i64 0, !dbg !242
  %numerator.sroa.290.52.vec.extract2908 = extractelement <4 x float> %numerator.sroa.290.0, i64 1, !dbg !242
  %numerator.sroa.290.56.vec.extract2945 = extractelement <4 x float> %numerator.sroa.290.0, i64 2, !dbg !242
  %numerator.sroa.290.60.vec.extract2982 = extractelement <4 x float> %numerator.sroa.290.0, i64 3, !dbg !242
  %mul292.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.48.vec.extract2871, !dbg !135
  %mul295.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.52.vec.extract2908, !dbg !243
  %mul298.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.56.vec.extract2945, !dbg !244
  %mul301.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.60.vec.extract2982, !dbg !245
  %numerator.sroa.290.48.vec.insert2873 = insertelement <4 x float> poison, float %mul292.3.1, i64 0, !dbg !136
  %numerator.sroa.290.52.vec.insert2910 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2873, float %mul295.3.1, i64 1, !dbg !136
  %numerator.sroa.290.56.vec.insert2947 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2910, float %mul298.3.1, i64 2, !dbg !136
  %numerator.sroa.290.60.vec.insert2984 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2947, float %mul301.3.1, i64 3, !dbg !136
  %sub325.1 = fsub contract float %spec.select4413, %124, !dbg !137
  %sub329.1 = fsub contract float %condval.0.1.1, %124, !dbg !138
  %sub333.1 = fsub contract float %condval.0.2.1, %124, !dbg !139
  %sub337.1 = fsub contract float %condval.0.3.1, %124, !dbg !140
  %mul342.1 = fmul contract float %sub325.1, 0x3FC7154760000000, !dbg !141
  %mul346.1 = fmul contract float %sub329.1, 0x3FC7154760000000, !dbg !142
  %mul350.1 = fmul contract float %sub333.1, 0x3FC7154760000000, !dbg !143
  %mul354.1 = fmul contract float %sub337.1, 0x3FC7154760000000, !dbg !144
  %add359.1 = fadd contract float %mul342.1, 8.000000e+00, !dbg !145
  %add363.1 = fadd contract float %mul346.1, 8.000000e+00, !dbg !146
  %add367.1 = fadd contract float %mul350.1, 8.000000e+00, !dbg !147
  %add371.1 = fadd contract float %mul354.1, 8.000000e+00, !dbg !148
  %cmp.i.i785.1 = fcmp contract olt float %add359.1, -1.260000e+02, !dbg !149
  %cond.i.i786.1 = select contract i1 %cmp.i.i785.1, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i787.1 = fadd contract float %add359.1, %cond.i.i786.1, !dbg !149
  %126 = tail call contract float @llvm.exp2.f32(float %add.i.i787.1), !dbg !149
  %cond2.i.i788.1 = select contract i1 %cmp.i.i785.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i789.1 = fmul contract float %cond2.i.i788.1, %126, !dbg !149
  %cmp.i.i790.1 = fcmp contract olt float %add363.1, -1.260000e+02, !dbg !151
  %cond.i.i791.1 = select contract i1 %cmp.i.i790.1, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i792.1 = fadd contract float %add363.1, %cond.i.i791.1, !dbg !151
  %127 = tail call contract float @llvm.exp2.f32(float %add.i.i792.1), !dbg !151
  %cond2.i.i793.1 = select contract i1 %cmp.i.i790.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i794.1 = fmul contract float %cond2.i.i793.1, %127, !dbg !151
  %cmp.i.i795.1 = fcmp contract olt float %add367.1, -1.260000e+02, !dbg !153
  %cond.i.i796.1 = select contract i1 %cmp.i.i795.1, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i797.1 = fadd contract float %add367.1, %cond.i.i796.1, !dbg !153
  %128 = tail call contract float @llvm.exp2.f32(float %add.i.i797.1), !dbg !153
  %cond2.i.i798.1 = select contract i1 %cmp.i.i795.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i799.1 = fmul contract float %cond2.i.i798.1, %128, !dbg !153
  %cmp.i.i800.1 = fcmp contract olt float %add371.1, -1.260000e+02, !dbg !155
  %cond.i.i801.1 = select contract i1 %cmp.i.i800.1, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i802.1 = fadd contract float %add371.1, %cond.i.i801.1, !dbg !155
  %129 = tail call contract float @llvm.exp2.f32(float %add.i.i802.1), !dbg !155
  %cond2.i.i803.1 = select contract i1 %cmp.i.i800.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i804.1 = fmul contract float %cond2.i.i803.1, %129, !dbg !155
  %130 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %131 = fptrunc float %mul.i.i789.1 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %130), !dbg !157, !noalias !165
  %132 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %133 = fptrunc float %mul.i.i794.1 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %132), !dbg !170, !noalias !165
  %134 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %135 = fptrunc float %mul.i.i799.1 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %134), !dbg !172, !noalias !176
  %136 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %137 = fptrunc float %mul.i.i804.1 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %136), !dbg !181, !noalias !176
  %138 = insertelement <4 x half> poison, half %131, i64 0, !dbg !183
  %139 = insertelement <4 x half> %138, half %133, i64 1, !dbg !183
  %140 = insertelement <4 x half> %139, half %135, i64 2, !dbg !183
  %141 = insertelement <4 x half> %140, half %137, i64 3, !dbg !183
  %conv.i.i.1942 = fpext half %131 to float, !dbg !184
  %add405.1943 = fadd contract float %conv.i.i.1942, 0.000000e+00, !dbg !189
  %conv.i.i.1.1 = fpext half %133 to float, !dbg !184
  %add405.1.1 = fadd contract float %add405.1943, %conv.i.i.1.1, !dbg !189
  %conv.i.i.2.1 = fpext half %135 to float, !dbg !184
  %add405.2.1 = fadd contract float %add405.1.1, %conv.i.i.2.1, !dbg !189
  %conv.i.i.3.1 = fpext half %137 to float, !dbg !184
  %add405.3.1 = fadd contract float %add405.2.1, %conv.i.i.3.1, !dbg !189
  %142 = bitcast float %add405.3.1 to i32, !dbg !190
  %143 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !192
  %144 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %143) #11, !dbg !195
  %xor.i.i810.1 = xor i32 %144, 32, !dbg !196
  %145 = and i32 %144, -64, !dbg !197
  %and.i.i811.1 = add nsw i32 %145, 64, !dbg !197
  %cmp.not.i.i812.1 = icmp slt i32 %xor.i.i810.1, %and.i.i811.1, !dbg !198
  %cond.i.i813.1 = select i1 %cmp.not.i.i812.1, i32 %xor.i.i810.1, i32 %144, !dbg !199
  %shl.i.i814.1 = shl i32 %cond.i.i813.1, 2, !dbg !200
  %146 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i814.1, i32 %142), !dbg !201
  %147 = bitcast i32 %146 to float, !dbg !202
  %add413.1 = fadd contract float %add405.3.1, %147, !dbg !203
  %148 = bitcast float %add413.1 to i32, !dbg !204
  %149 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !206
  %150 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %149) #11, !dbg !209
  %xor.i.i815.1 = xor i32 %150, 16, !dbg !210
  %151 = and i32 %150, -64, !dbg !211
  %and.i.i816.1 = add nsw i32 %151, 64, !dbg !211
  %cmp.not.i.i817.1 = icmp slt i32 %xor.i.i815.1, %and.i.i816.1, !dbg !212
  %cond.i.i818.1 = select i1 %cmp.not.i.i817.1, i32 %xor.i.i815.1, i32 %150, !dbg !213
  %shl.i.i819.1 = shl i32 %cond.i.i818.1, 2, !dbg !214
  %152 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i819.1, i32 %148), !dbg !215
  %153 = bitcast i32 %152 to float, !dbg !216
  %add418.1 = fadd contract float %add413.1, %153, !dbg !217
  fence syncscope("warp") release, !dbg !218
  tail call void @llvm.mxc.barrier.warp(), !dbg !221
  fence syncscope("warp") acquire, !dbg !222
  %154 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add438, !dbg !223
  %155 = getelementptr inbounds i8, ptr addrspace(4) %154, i64 %.idx.1, !dbg !223
  %156 = load i64, ptr addrspace(4) %155, align 8, !dbg !224
  %add.ptr447.1.1 = getelementptr inbounds i8, ptr addrspace(4) %155, i64 128, !dbg !223
  %157 = load i64, ptr addrspace(4) %add.ptr447.1.1, align 8, !dbg !224
  %add.ptr447.2.1 = getelementptr inbounds i8, ptr addrspace(4) %155, i64 256, !dbg !223
  %158 = load i64, ptr addrspace(4) %add.ptr447.2.1, align 8, !dbg !224
  %add.ptr447.3.1 = getelementptr inbounds i8, ptr addrspace(4) %155, i64 384, !dbg !223
  %159 = load i64, ptr addrspace(4) %add.ptr447.3.1, align 8, !dbg !224
  %mul312.1 = fmul contract float %denominator.sroa.0.1, %mul.i.i.1, !dbg !246
  %160 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul477, !dbg !225
  %add.ptr489.idx.1951 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.1952 = getelementptr inbounds i8, ptr addrspace(3) %160, i32 %add.ptr489.idx.1951, !dbg !225
  %v_column.sroa.130.0.insert.ext1496 = shl i64 %159, 48, !dbg !226
  %v_column.sroa.98.0.insert.ext1341 = shl i64 %158, 32, !dbg !226
  %v_column.sroa.98.0.insert.shift1342 = and i64 %v_column.sroa.98.0.insert.ext1341, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1344 = or disjoint i64 %v_column.sroa.130.0.insert.ext1496, %v_column.sroa.98.0.insert.shift1342, !dbg !226
  %v_column.sroa.66.0.insert.ext1186 = shl i64 %157, 16, !dbg !226
  %v_column.sroa.66.0.insert.shift1187 = and i64 %v_column.sroa.66.0.insert.ext1186, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1189 = or disjoint i64 %v_column.sroa.98.0.insert.insert1344, %v_column.sroa.66.0.insert.shift1187, !dbg !226
  %v_column.sroa.0.0.insert.ext1059 = and i64 %156, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1061 = or disjoint i64 %v_column.sroa.66.0.insert.insert1189, %v_column.sroa.0.0.insert.ext1059, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1061, ptr addrspace(3) %add.ptr489.1952, align 8, !dbg !226
  %v_fetch.sroa.0.2.extract.shift1710 = lshr i64 %156, 16, !dbg !227
  %add478.1.1 = or disjoint i32 %mul477, 256, !dbg !228
  %161 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.1.1, !dbg !225
  %xor485.1.1 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.1.1 = xor i32 %xor485.1.1, 8, !dbg !225
  %add.ptr489.1.1 = getelementptr inbounds i8, ptr addrspace(3) %161, i32 %add.ptr489.idx.1.1, !dbg !225
  %162 = shl i64 %159, 32, !dbg !226
  %v_column.sroa.130.0.insert.ext1501 = and i64 %162, -281474976710656, !dbg !226
  %163 = shl i64 %158, 16, !dbg !226
  %v_column.sroa.98.0.insert.shift1347 = and i64 %163, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1349 = or disjoint i64 %v_column.sroa.130.0.insert.ext1501, %v_column.sroa.98.0.insert.shift1347, !dbg !226
  %v_column.sroa.66.0.insert.ext1191 = and i64 %157, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1194 = or disjoint i64 %v_column.sroa.98.0.insert.insert1349, %v_column.sroa.66.0.insert.ext1191, !dbg !226
  %v_column.sroa.0.0.insert.ext1063 = and i64 %v_fetch.sroa.0.2.extract.shift1710, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1065 = or disjoint i64 %v_column.sroa.66.0.insert.insert1194, %v_column.sroa.0.0.insert.ext1063, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1065, ptr addrspace(3) %add.ptr489.1.1, align 8, !dbg !226
  %v_fetch.sroa.0.4.extract.shift1731 = lshr i64 %156, 32, !dbg !227
  %add478.2.1 = or disjoint i32 %mul477, 512, !dbg !228
  %164 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.2.1, !dbg !225
  %xor485.2.1 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.2.1 = xor i32 %xor485.2.1, 16, !dbg !225
  %add.ptr489.2.1 = getelementptr inbounds i8, ptr addrspace(3) %164, i32 %add.ptr489.idx.2.1, !dbg !225
  %165 = shl i64 %159, 16, !dbg !226
  %v_column.sroa.130.0.insert.ext1506 = and i64 %165, -281474976710656, !dbg !226
  %v_column.sroa.98.0.insert.ext1351 = and i64 %158, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1354 = or disjoint i64 %v_column.sroa.130.0.insert.ext1506, %v_column.sroa.98.0.insert.ext1351, !dbg !226
  %166 = lshr i64 %157, 16, !dbg !226
  %v_column.sroa.66.0.insert.shift1197 = and i64 %166, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1199 = or disjoint i64 %v_column.sroa.98.0.insert.insert1354, %v_column.sroa.66.0.insert.shift1197, !dbg !226
  %v_column.sroa.0.0.insert.ext1067 = and i64 %v_fetch.sroa.0.4.extract.shift1731, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1069 = or disjoint i64 %v_column.sroa.66.0.insert.insert1199, %v_column.sroa.0.0.insert.ext1067, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1069, ptr addrspace(3) %add.ptr489.2.1, align 8, !dbg !226
  %v_fetch.sroa.0.6.extract.shift1752 = lshr i64 %156, 48, !dbg !227
  %v_fetch.sroa.122.30.extract.shift1983 = and i64 %159, -281474976710656, !dbg !226
  %add478.3.1 = or disjoint i32 %mul477, 768, !dbg !228
  %167 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.3.1, !dbg !225
  %xor485.3.1 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.3.1 = xor i32 %xor485.3.1, 24, !dbg !225
  %add.ptr489.3.1 = getelementptr inbounds i8, ptr addrspace(3) %167, i32 %add.ptr489.idx.3.1, !dbg !225
  %168 = lshr i64 %158, 16, !dbg !226
  %v_column.sroa.98.0.insert.shift1357 = and i64 %168, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1359 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1983, %v_column.sroa.98.0.insert.shift1357, !dbg !226
  %169 = lshr i64 %157, 32, !dbg !226
  %v_column.sroa.66.0.insert.shift1202 = and i64 %169, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1204 = or disjoint i64 %v_column.sroa.98.0.insert.insert1359, %v_column.sroa.66.0.insert.shift1202, !dbg !226
  %v_column.sroa.0.0.insert.insert1073 = or disjoint i64 %v_column.sroa.66.0.insert.insert1204, %v_fetch.sroa.0.6.extract.shift1752, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1073, ptr addrspace(3) %add.ptr489.3.1, align 8, !dbg !226
  fence syncscope("warp") release, !dbg !229
  tail call void @llvm.mxc.barrier.warp(), !dbg !232
  fence syncscope("warp") acquire, !dbg !233
  %add506.1954 = or disjoint i32 %mul499, %mul505, !dbg !234
  %170 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.1954, !dbg !235
  %add.ptr516.idx.1955 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.1956 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 %add.ptr516.idx.1955, !dbg !235
  %171 = load <4 x half>, ptr addrspace(3) %add.ptr516.1956, align 8, !dbg !236
  %add501.1.1 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.1.1 = or disjoint i32 %add501.1.1, 64, !dbg !234
  %172 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.1.1, !dbg !235
  %xor512.1.1 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.1.1 = xor i32 %xor512.1.1, 8, !dbg !235
  %add.ptr516.1.1 = getelementptr inbounds i8, ptr addrspace(3) %172, i32 %add.ptr516.idx.1.1, !dbg !235
  %173 = load <4 x half>, ptr addrspace(3) %add.ptr516.1.1, align 8, !dbg !236
  %add501.2.1 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.2.1 = or disjoint i32 %add501.2.1, 128, !dbg !234
  %174 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.2.1, !dbg !235
  %xor512.2.1 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.2.1 = xor i32 %xor512.2.1, 16, !dbg !235
  %add.ptr516.2.1 = getelementptr inbounds i8, ptr addrspace(3) %174, i32 %add.ptr516.idx.2.1, !dbg !235
  %175 = load <4 x half>, ptr addrspace(3) %add.ptr516.2.1, align 8, !dbg !236
  %add501.3.1 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.3.1 = or disjoint i32 %add501.3.1, 192, !dbg !234
  %176 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.3.1, !dbg !235
  %xor512.3.1 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.3.1 = xor i32 %xor512.3.1, 24, !dbg !235
  %add.ptr516.3.1 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 %add.ptr516.idx.3.1, !dbg !235
  %177 = load <4 x half>, ptr addrspace(3) %add.ptr516.3.1, align 8, !dbg !236
  %178 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %171, <4 x half> %141, <4 x float> %numerator.sroa.0.12.vec.insert2516), !dbg !237
  %179 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %173, <4 x half> %141, <4 x float> %numerator.sroa.98.28.vec.insert2672), !dbg !237
  %180 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %175, <4 x half> %141, <4 x float> %numerator.sroa.194.44.vec.insert2828), !dbg !237
  %181 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %177, <4 x half> %141, <4 x float> %numerator.sroa.290.60.vec.insert2984), !dbg !237
  %add422.1 = fadd contract float %mul312.1, %add418.1, !dbg !238
  br label %if.end542.1, !dbg !239

if.end542.1:                                      ; preds = %if.then.1, %if.end542
  %numerator.sroa.290.1 = phi <4 x float> [ %numerator.sroa.290.0, %if.end542 ], [ %181, %if.then.1 ], !dbg !240
  %numerator.sroa.194.1 = phi <4 x float> [ %numerator.sroa.194.0, %if.end542 ], [ %180, %if.then.1 ], !dbg !240
  %numerator.sroa.98.1 = phi <4 x float> [ %numerator.sroa.98.0, %if.end542 ], [ %179, %if.then.1 ], !dbg !240
  %numerator.sroa.0.1 = phi <4 x float> [ %numerator.sroa.0.0, %if.end542 ], [ %178, %if.then.1 ], !dbg !240
  %maximum.sroa.0.1.1 = phi float [ %maximum.sroa.0.1, %if.end542 ], [ %124, %if.then.1 ], !dbg !240
  %denominator.sroa.0.1.1 = phi float [ %denominator.sroa.0.1, %if.end542 ], [ %add422.1, %if.then.1 ], !dbg !240
  %182 = or disjoint i64 %16, 2, !dbg !241
  %arrayidx108.2 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %182, !dbg !67
  %183 = load i32, ptr addrspace(1) %arrayidx108.2, align 4, !dbg !67, !tbaa !30
  %mul109.2 = shl nsw i32 %183, 4, !dbg !68
  %cmp110.2 = icmp slt i32 %183, 0, !dbg !69
  %cmp112.not.2 = icmp sgt i32 %mul109.2, %1
  %or.cond.2 = select i1 %cmp110.2, i1 true, i1 %cmp112.not.2, !dbg !70
  br i1 %or.cond.2, label %if.end542.2, label %if.then.2, !dbg !70

if.then.2:                                        ; preds = %if.end542.1
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %conv122.2 = zext nneg i32 %mul109.2 to i64
  %.idx.2 = shl nuw nsw i64 %conv122.2, 7
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep868, i64 %.idx.2, !dbg !76
  %.idx876.2 = shl nuw nsw i64 %conv, 17, !dbg !77
  %184 = getelementptr inbounds i8, ptr addrspace(4) %gep.2, i64 %.idx876.2, !dbg !77
  %qk_fetch.sroa.0.0.copyload3524 = load i16, ptr addrspace(4) %184, align 16, !dbg !78
  %qk_fetch.sroa.56.0..sroa_idx3542 = getelementptr inbounds i8, ptr addrspace(4) %184, i64 2, !dbg !78
  %qk_fetch.sroa.56.0.copyload3543 = load i16, ptr addrspace(4) %qk_fetch.sroa.56.0..sroa_idx3542, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.92.0..sroa_idx3566 = getelementptr inbounds i8, ptr addrspace(4) %184, i64 4, !dbg !78
  %qk_fetch.sroa.92.0.copyload3567 = load i16, ptr addrspace(4) %qk_fetch.sroa.92.0..sroa_idx3566, align 4, !dbg !78
  %qk_fetch.sroa.128.0..sroa_idx3590 = getelementptr inbounds i8, ptr addrspace(4) %184, i64 6, !dbg !78
  %qk_fetch.sroa.128.0.copyload3591 = load i16, ptr addrspace(4) %qk_fetch.sroa.128.0..sroa_idx3590, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.164.0..sroa_idx3614 = getelementptr inbounds i8, ptr addrspace(4) %184, i64 8, !dbg !78
  %qk_fetch.sroa.164.0.copyload3615 = load i16, ptr addrspace(4) %qk_fetch.sroa.164.0..sroa_idx3614, align 8, !dbg !78
  %qk_fetch.sroa.200.0..sroa_idx3638 = getelementptr inbounds i8, ptr addrspace(4) %184, i64 10, !dbg !78
  %qk_fetch.sroa.200.0.copyload3639 = load i16, ptr addrspace(4) %qk_fetch.sroa.200.0..sroa_idx3638, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.236.0..sroa_idx3662 = getelementptr inbounds i8, ptr addrspace(4) %184, i64 12, !dbg !78
  %qk_fetch.sroa.236.0.copyload3663 = load i16, ptr addrspace(4) %qk_fetch.sroa.236.0..sroa_idx3662, align 4, !dbg !78
  %qk_fetch.sroa.272.0..sroa_idx3686 = getelementptr inbounds i8, ptr addrspace(4) %184, i64 14, !dbg !78
  %qk_fetch.sroa.272.0.copyload3687 = load i16, ptr addrspace(4) %qk_fetch.sroa.272.0..sroa_idx3686, align 2, !dbg !78, !tbaa !30
  %.sroa.speculated4096 = select i1 %cmp19, i16 %qk_fetch.sroa.0.0.copyload3524, i16 %qk_fetch.sroa.164.0.copyload3615, !dbg !79
  %.sroa.speculated3988 = select i1 %cmp19, i16 %qk_fetch.sroa.56.0.copyload3543, i16 %qk_fetch.sroa.200.0.copyload3639, !dbg !79
  %.sroa.speculated3880 = select i1 %cmp19, i16 %qk_fetch.sroa.92.0.copyload3567, i16 %qk_fetch.sroa.236.0.copyload3663, !dbg !79
  %.sroa.speculated3772 = select i1 %cmp19, i16 %qk_fetch.sroa.128.0.copyload3591, i16 %qk_fetch.sroa.272.0.copyload3687, !dbg !79
  %.sroa.speculated4093 = select i1 %cmp19, i16 %qk_fetch.sroa.164.0.copyload3615, i16 %qk_fetch.sroa.0.0.copyload3524, !dbg !79
  %.sroa.speculated3985 = select i1 %cmp19, i16 %qk_fetch.sroa.200.0.copyload3639, i16 %qk_fetch.sroa.56.0.copyload3543, !dbg !79
  %.sroa.speculated3877 = select i1 %cmp19, i16 %qk_fetch.sroa.236.0.copyload3663, i16 %qk_fetch.sroa.92.0.copyload3567, !dbg !79
  %.sroa.speculated3769 = select i1 %cmp19, i16 %qk_fetch.sroa.272.0.copyload3687, i16 %qk_fetch.sroa.128.0.copyload3591, !dbg !79
  store i16 %.sroa.speculated4096, ptr addrspace(3) %invariant.gep840, align 16, !dbg !80
  store i16 %.sroa.speculated3988, ptr addrspace(3) %qk_ordered.sroa.38.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3880, ptr addrspace(3) %qk_ordered.sroa.56.0.invariant.gep840.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3772, ptr addrspace(3) %qk_ordered.sroa.74.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated4093, ptr addrspace(3) %qk_ordered.sroa.92.0.invariant.gep840.sroa_idx, align 8, !dbg !80
  store i16 %.sroa.speculated3985, ptr addrspace(3) %qk_ordered.sroa.110.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3877, ptr addrspace(3) %qk_ordered.sroa.128.0.invariant.gep840.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3769, ptr addrspace(3) %qk_ordered.sroa.146.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  %gep848.1.2 = getelementptr inbounds i8, ptr addrspace(4) %184, i64 1024, !dbg !77
  %qk_fetch.sroa.0.0.copyload3525 = load i16, ptr addrspace(4) %gep848.1.2, align 16, !dbg !78
  %qk_fetch.sroa.56.0.gep848.1.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %184, i64 1026, !dbg !78
  %qk_fetch.sroa.56.0.copyload3544 = load i16, ptr addrspace(4) %qk_fetch.sroa.56.0.gep848.1.2.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.92.0.gep848.1.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %184, i64 1028, !dbg !78
  %qk_fetch.sroa.92.0.copyload3568 = load i16, ptr addrspace(4) %qk_fetch.sroa.92.0.gep848.1.2.sroa_idx, align 4, !dbg !78
  %qk_fetch.sroa.128.0.gep848.1.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %184, i64 1030, !dbg !78
  %qk_fetch.sroa.128.0.copyload3592 = load i16, ptr addrspace(4) %qk_fetch.sroa.128.0.gep848.1.2.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.164.0.gep848.1.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %184, i64 1032, !dbg !78
  %qk_fetch.sroa.164.0.copyload3616 = load i16, ptr addrspace(4) %qk_fetch.sroa.164.0.gep848.1.2.sroa_idx, align 8, !dbg !78
  %qk_fetch.sroa.200.0.gep848.1.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %184, i64 1034, !dbg !78
  %qk_fetch.sroa.200.0.copyload3640 = load i16, ptr addrspace(4) %qk_fetch.sroa.200.0.gep848.1.2.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.236.0.gep848.1.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %184, i64 1036, !dbg !78
  %qk_fetch.sroa.236.0.copyload3664 = load i16, ptr addrspace(4) %qk_fetch.sroa.236.0.gep848.1.2.sroa_idx, align 4, !dbg !78
  %qk_fetch.sroa.272.0.gep848.1.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %184, i64 1038, !dbg !78
  %qk_fetch.sroa.272.0.copyload3688 = load i16, ptr addrspace(4) %qk_fetch.sroa.272.0.gep848.1.2.sroa_idx, align 2, !dbg !78, !tbaa !30
  %.sroa.speculated4090 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.164.0.copyload3616, i16 %qk_fetch.sroa.0.0.copyload3525, !dbg !79
  %.sroa.speculated3982 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.200.0.copyload3640, i16 %qk_fetch.sroa.56.0.copyload3544, !dbg !79
  %.sroa.speculated3874 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.236.0.copyload3664, i16 %qk_fetch.sroa.92.0.copyload3568, !dbg !79
  %.sroa.speculated3766 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.272.0.copyload3688, i16 %qk_fetch.sroa.128.0.copyload3592, !dbg !79
  %.sroa.speculated4087 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.0.0.copyload3525, i16 %qk_fetch.sroa.164.0.copyload3616, !dbg !79
  %.sroa.speculated3979 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.56.0.copyload3544, i16 %qk_fetch.sroa.200.0.copyload3640, !dbg !79
  %.sroa.speculated3871 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.92.0.copyload3568, i16 %qk_fetch.sroa.236.0.copyload3664, !dbg !79
  %.sroa.speculated3763 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.128.0.copyload3592, i16 %qk_fetch.sroa.272.0.copyload3688, !dbg !79
  store i16 %.sroa.speculated4090, ptr addrspace(3) %gep841.1, align 16, !dbg !80
  store i16 %.sroa.speculated3982, ptr addrspace(3) %qk_ordered.sroa.38.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3874, ptr addrspace(3) %qk_ordered.sroa.56.0.gep841.1.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3766, ptr addrspace(3) %qk_ordered.sroa.74.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated4087, ptr addrspace(3) %qk_ordered.sroa.92.0.gep841.1.sroa_idx, align 8, !dbg !80
  store i16 %.sroa.speculated3979, ptr addrspace(3) %qk_ordered.sroa.110.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3871, ptr addrspace(3) %qk_ordered.sroa.128.0.gep841.1.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3763, ptr addrspace(3) %qk_ordered.sroa.146.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  fence syncscope("warp") release, !dbg !81
  tail call void @llvm.mxc.barrier.warp(), !dbg !84
  fence syncscope("warp") acquire, !dbg !85
  %k_local.sroa.0.0.copyload.2964 = load <4 x half>, ptr addrspace(3) %add.ptr74, align 8, !dbg !86
  %185 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2964, <4 x half> %6, <4 x float> zeroinitializer), !dbg !87
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr74.1, align 8, !dbg !86
  %186 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %7, <4 x float> %185), !dbg !87
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %add.ptr74.2, align 8, !dbg !86
  %187 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %8, <4 x float> %186), !dbg !87
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %add.ptr74.3, align 8, !dbg !86
  %188 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %9, <4 x float> %187), !dbg !87
  %add230.2 = add nuw nsw i32 %mul109.2, %mul229
  %cmp233.not.2965 = icmp sgt i32 %add230.2, %1, !dbg !88
  %scores.sroa.0.0.vec.extract2103 = extractelement <4 x float> %188, i64 0
  %spec.select4414 = select i1 %cmp233.not.2965, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2103, !dbg !89
  %cmp233.not.1.2.not = icmp slt i32 %add230.2, %1, !dbg !88
  %scores.sroa.0.4.vec.extract2202 = extractelement <4 x float> %188, i64 1, !dbg !89
  %condval.0.1.2 = select i1 %cmp233.not.1.2.not, float %scores.sroa.0.4.vec.extract2202, float 0xFFF0000000000000, !dbg !89
  %add231.2.2 = or disjoint i32 %add230.2, 2, !dbg !90
  %cmp233.not.2.2 = icmp sgt i32 %add231.2.2, %1, !dbg !88
  %scores.sroa.0.8.vec.extract2279 = extractelement <4 x float> %188, i64 2, !dbg !89
  %condval.0.2.2 = select i1 %cmp233.not.2.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2279, !dbg !89
  %add231.3.2 = or disjoint i32 %add230.2, 3, !dbg !90
  %cmp233.not.3.2 = icmp sgt i32 %add231.3.2, %1, !dbg !88
  %scores.sroa.0.12.vec.extract2356 = extractelement <4 x float> %188, i64 3, !dbg !89
  %condval.0.3.2 = select i1 %cmp233.not.3.2, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2356, !dbg !89
  %189 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select4414, float 0xFFF0000000000000), !dbg !91
  %190 = tail call contract noundef float @llvm.maxnum.f32(float %189, float %condval.0.1.2), !dbg !91
  %191 = tail call contract noundef float @llvm.maxnum.f32(float %190, float %condval.0.2.2), !dbg !91
  %192 = tail call contract noundef float @llvm.maxnum.f32(float %191, float %condval.0.3.2), !dbg !91
  %193 = bitcast float %192 to i32, !dbg !95
  %194 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !98
  %195 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %194) #11, !dbg !103
  %xor.i.i.2 = xor i32 %195, 32, !dbg !104
  %196 = and i32 %195, -64, !dbg !105
  %and.i.i.2 = add nsw i32 %196, 64, !dbg !105
  %cmp.not.i.i.2 = icmp slt i32 %xor.i.i.2, %and.i.i.2, !dbg !106
  %cond.i.i.2 = select i1 %cmp.not.i.i.2, i32 %xor.i.i.2, i32 %195, !dbg !107
  %shl.i.i.2 = shl i32 %cond.i.i.2, 2, !dbg !108
  %197 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.2, i32 %193), !dbg !109
  %198 = bitcast i32 %197 to float, !dbg !110
  %199 = tail call contract noundef float @llvm.maxnum.f32(float %192, float %198), !dbg !111
  %200 = bitcast float %199 to i32, !dbg !113
  %201 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !115
  %202 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %201) #11, !dbg !118
  %xor.i.i779.2 = xor i32 %202, 16, !dbg !119
  %203 = and i32 %202, -64, !dbg !120
  %and.i.i780.2 = add nsw i32 %203, 64, !dbg !120
  %cmp.not.i.i781.2 = icmp slt i32 %xor.i.i779.2, %and.i.i780.2, !dbg !121
  %cond.i.i782.2 = select i1 %cmp.not.i.i781.2, i32 %xor.i.i779.2, i32 %202, !dbg !122
  %shl.i.i783.2 = shl i32 %cond.i.i782.2, 2, !dbg !123
  %204 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i783.2, i32 %200), !dbg !124
  %205 = bitcast i32 %204 to float, !dbg !125
  %206 = tail call contract noundef float @llvm.maxnum.f32(float %199, float %205), !dbg !126
  %207 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.1, float %206), !dbg !128
  %sub.2 = fsub contract float %maximum.sroa.0.1.1, %207, !dbg !130
  %mul275.2 = fmul contract float %sub.2, 0x3FC7154760000000, !dbg !131
  %cmp.i.i.2 = fcmp contract olt float %mul275.2, -1.260000e+02, !dbg !132
  %cond.i.i784.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !132
  %add.i.i.2 = fadd contract float %mul275.2, %cond.i.i784.2, !dbg !132
  %208 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !132
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !132
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %208, !dbg !132
  %numerator.sroa.0.0.vec.extract2407 = extractelement <4 x float> %numerator.sroa.0.1, i64 0, !dbg !242
  %numerator.sroa.0.4.vec.extract2444 = extractelement <4 x float> %numerator.sroa.0.1, i64 1, !dbg !242
  %numerator.sroa.0.8.vec.extract2481 = extractelement <4 x float> %numerator.sroa.0.1, i64 2, !dbg !242
  %numerator.sroa.0.12.vec.extract2518 = extractelement <4 x float> %numerator.sroa.0.1, i64 3, !dbg !242
  %mul292.2976 = fmul contract float %mul.i.i.2, %numerator.sroa.0.0.vec.extract2407, !dbg !135
  %mul295.2977 = fmul contract float %mul.i.i.2, %numerator.sroa.0.4.vec.extract2444, !dbg !243
  %mul298.2978 = fmul contract float %mul.i.i.2, %numerator.sroa.0.8.vec.extract2481, !dbg !244
  %mul301.2979 = fmul contract float %mul.i.i.2, %numerator.sroa.0.12.vec.extract2518, !dbg !245
  %numerator.sroa.0.0.vec.insert2409 = insertelement <4 x float> poison, float %mul292.2976, i64 0, !dbg !136
  %numerator.sroa.0.4.vec.insert2446 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2409, float %mul295.2977, i64 1, !dbg !136
  %numerator.sroa.0.8.vec.insert2483 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2446, float %mul298.2978, i64 2, !dbg !136
  %numerator.sroa.0.12.vec.insert2520 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2483, float %mul301.2979, i64 3, !dbg !136
  %numerator.sroa.98.16.vec.extract2563 = extractelement <4 x float> %numerator.sroa.98.1, i64 0, !dbg !242
  %numerator.sroa.98.20.vec.extract2600 = extractelement <4 x float> %numerator.sroa.98.1, i64 1, !dbg !242
  %numerator.sroa.98.24.vec.extract2637 = extractelement <4 x float> %numerator.sroa.98.1, i64 2, !dbg !242
  %numerator.sroa.98.28.vec.extract2674 = extractelement <4 x float> %numerator.sroa.98.1, i64 3, !dbg !242
  %mul292.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.16.vec.extract2563, !dbg !135
  %mul295.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.20.vec.extract2600, !dbg !243
  %mul298.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.24.vec.extract2637, !dbg !244
  %mul301.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.28.vec.extract2674, !dbg !245
  %numerator.sroa.98.16.vec.insert2565 = insertelement <4 x float> poison, float %mul292.1.2, i64 0, !dbg !136
  %numerator.sroa.98.20.vec.insert2602 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2565, float %mul295.1.2, i64 1, !dbg !136
  %numerator.sroa.98.24.vec.insert2639 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2602, float %mul298.1.2, i64 2, !dbg !136
  %numerator.sroa.98.28.vec.insert2676 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2639, float %mul301.1.2, i64 3, !dbg !136
  %numerator.sroa.194.32.vec.extract2719 = extractelement <4 x float> %numerator.sroa.194.1, i64 0, !dbg !242
  %numerator.sroa.194.36.vec.extract2756 = extractelement <4 x float> %numerator.sroa.194.1, i64 1, !dbg !242
  %numerator.sroa.194.40.vec.extract2793 = extractelement <4 x float> %numerator.sroa.194.1, i64 2, !dbg !242
  %numerator.sroa.194.44.vec.extract2830 = extractelement <4 x float> %numerator.sroa.194.1, i64 3, !dbg !242
  %mul292.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.32.vec.extract2719, !dbg !135
  %mul295.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.36.vec.extract2756, !dbg !243
  %mul298.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.40.vec.extract2793, !dbg !244
  %mul301.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.44.vec.extract2830, !dbg !245
  %numerator.sroa.194.32.vec.insert2721 = insertelement <4 x float> poison, float %mul292.2.2, i64 0, !dbg !136
  %numerator.sroa.194.36.vec.insert2758 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2721, float %mul295.2.2, i64 1, !dbg !136
  %numerator.sroa.194.40.vec.insert2795 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2758, float %mul298.2.2, i64 2, !dbg !136
  %numerator.sroa.194.44.vec.insert2832 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2795, float %mul301.2.2, i64 3, !dbg !136
  %numerator.sroa.290.48.vec.extract2875 = extractelement <4 x float> %numerator.sroa.290.1, i64 0, !dbg !242
  %numerator.sroa.290.52.vec.extract2912 = extractelement <4 x float> %numerator.sroa.290.1, i64 1, !dbg !242
  %numerator.sroa.290.56.vec.extract2949 = extractelement <4 x float> %numerator.sroa.290.1, i64 2, !dbg !242
  %numerator.sroa.290.60.vec.extract2986 = extractelement <4 x float> %numerator.sroa.290.1, i64 3, !dbg !242
  %mul292.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.48.vec.extract2875, !dbg !135
  %mul295.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.52.vec.extract2912, !dbg !243
  %mul298.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.56.vec.extract2949, !dbg !244
  %mul301.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.60.vec.extract2986, !dbg !245
  %numerator.sroa.290.48.vec.insert2877 = insertelement <4 x float> poison, float %mul292.3.2, i64 0, !dbg !136
  %numerator.sroa.290.52.vec.insert2914 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2877, float %mul295.3.2, i64 1, !dbg !136
  %numerator.sroa.290.56.vec.insert2951 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2914, float %mul298.3.2, i64 2, !dbg !136
  %numerator.sroa.290.60.vec.insert2988 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2951, float %mul301.3.2, i64 3, !dbg !136
  %sub325.2 = fsub contract float %spec.select4414, %207, !dbg !137
  %sub329.2 = fsub contract float %condval.0.1.2, %207, !dbg !138
  %sub333.2 = fsub contract float %condval.0.2.2, %207, !dbg !139
  %sub337.2 = fsub contract float %condval.0.3.2, %207, !dbg !140
  %mul342.2 = fmul contract float %sub325.2, 0x3FC7154760000000, !dbg !141
  %mul346.2 = fmul contract float %sub329.2, 0x3FC7154760000000, !dbg !142
  %mul350.2 = fmul contract float %sub333.2, 0x3FC7154760000000, !dbg !143
  %mul354.2 = fmul contract float %sub337.2, 0x3FC7154760000000, !dbg !144
  %add359.2 = fadd contract float %mul342.2, 8.000000e+00, !dbg !145
  %add363.2 = fadd contract float %mul346.2, 8.000000e+00, !dbg !146
  %add367.2 = fadd contract float %mul350.2, 8.000000e+00, !dbg !147
  %add371.2 = fadd contract float %mul354.2, 8.000000e+00, !dbg !148
  %cmp.i.i785.2 = fcmp contract olt float %add359.2, -1.260000e+02, !dbg !149
  %cond.i.i786.2 = select contract i1 %cmp.i.i785.2, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i787.2 = fadd contract float %add359.2, %cond.i.i786.2, !dbg !149
  %209 = tail call contract float @llvm.exp2.f32(float %add.i.i787.2), !dbg !149
  %cond2.i.i788.2 = select contract i1 %cmp.i.i785.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i789.2 = fmul contract float %cond2.i.i788.2, %209, !dbg !149
  %cmp.i.i790.2 = fcmp contract olt float %add363.2, -1.260000e+02, !dbg !151
  %cond.i.i791.2 = select contract i1 %cmp.i.i790.2, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i792.2 = fadd contract float %add363.2, %cond.i.i791.2, !dbg !151
  %210 = tail call contract float @llvm.exp2.f32(float %add.i.i792.2), !dbg !151
  %cond2.i.i793.2 = select contract i1 %cmp.i.i790.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i794.2 = fmul contract float %cond2.i.i793.2, %210, !dbg !151
  %cmp.i.i795.2 = fcmp contract olt float %add367.2, -1.260000e+02, !dbg !153
  %cond.i.i796.2 = select contract i1 %cmp.i.i795.2, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i797.2 = fadd contract float %add367.2, %cond.i.i796.2, !dbg !153
  %211 = tail call contract float @llvm.exp2.f32(float %add.i.i797.2), !dbg !153
  %cond2.i.i798.2 = select contract i1 %cmp.i.i795.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i799.2 = fmul contract float %cond2.i.i798.2, %211, !dbg !153
  %cmp.i.i800.2 = fcmp contract olt float %add371.2, -1.260000e+02, !dbg !155
  %cond.i.i801.2 = select contract i1 %cmp.i.i800.2, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i802.2 = fadd contract float %add371.2, %cond.i.i801.2, !dbg !155
  %212 = tail call contract float @llvm.exp2.f32(float %add.i.i802.2), !dbg !155
  %cond2.i.i803.2 = select contract i1 %cmp.i.i800.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i804.2 = fmul contract float %cond2.i.i803.2, %212, !dbg !155
  %213 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %214 = fptrunc float %mul.i.i789.2 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %213), !dbg !157, !noalias !165
  %215 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %216 = fptrunc float %mul.i.i794.2 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %215), !dbg !170, !noalias !165
  %217 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %218 = fptrunc float %mul.i.i799.2 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %217), !dbg !172, !noalias !176
  %219 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %220 = fptrunc float %mul.i.i804.2 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %219), !dbg !181, !noalias !176
  %221 = insertelement <4 x half> poison, half %214, i64 0, !dbg !183
  %222 = insertelement <4 x half> %221, half %216, i64 1, !dbg !183
  %223 = insertelement <4 x half> %222, half %218, i64 2, !dbg !183
  %224 = insertelement <4 x half> %223, half %220, i64 3, !dbg !183
  %conv.i.i.2981 = fpext half %214 to float, !dbg !184
  %add405.2982 = fadd contract float %conv.i.i.2981, 0.000000e+00, !dbg !189
  %conv.i.i.1.2 = fpext half %216 to float, !dbg !184
  %add405.1.2 = fadd contract float %add405.2982, %conv.i.i.1.2, !dbg !189
  %conv.i.i.2.2 = fpext half %218 to float, !dbg !184
  %add405.2.2 = fadd contract float %add405.1.2, %conv.i.i.2.2, !dbg !189
  %conv.i.i.3.2 = fpext half %220 to float, !dbg !184
  %add405.3.2 = fadd contract float %add405.2.2, %conv.i.i.3.2, !dbg !189
  %225 = bitcast float %add405.3.2 to i32, !dbg !190
  %226 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !192
  %227 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %226) #11, !dbg !195
  %xor.i.i810.2 = xor i32 %227, 32, !dbg !196
  %228 = and i32 %227, -64, !dbg !197
  %and.i.i811.2 = add nsw i32 %228, 64, !dbg !197
  %cmp.not.i.i812.2 = icmp slt i32 %xor.i.i810.2, %and.i.i811.2, !dbg !198
  %cond.i.i813.2 = select i1 %cmp.not.i.i812.2, i32 %xor.i.i810.2, i32 %227, !dbg !199
  %shl.i.i814.2 = shl i32 %cond.i.i813.2, 2, !dbg !200
  %229 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i814.2, i32 %225), !dbg !201
  %230 = bitcast i32 %229 to float, !dbg !202
  %add413.2 = fadd contract float %add405.3.2, %230, !dbg !203
  %231 = bitcast float %add413.2 to i32, !dbg !204
  %232 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !206
  %233 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %232) #11, !dbg !209
  %xor.i.i815.2 = xor i32 %233, 16, !dbg !210
  %234 = and i32 %233, -64, !dbg !211
  %and.i.i816.2 = add nsw i32 %234, 64, !dbg !211
  %cmp.not.i.i817.2 = icmp slt i32 %xor.i.i815.2, %and.i.i816.2, !dbg !212
  %cond.i.i818.2 = select i1 %cmp.not.i.i817.2, i32 %xor.i.i815.2, i32 %233, !dbg !213
  %shl.i.i819.2 = shl i32 %cond.i.i818.2, 2, !dbg !214
  %235 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i819.2, i32 %231), !dbg !215
  %236 = bitcast i32 %235 to float, !dbg !216
  %add418.2 = fadd contract float %add413.2, %236, !dbg !217
  fence syncscope("warp") release, !dbg !218
  tail call void @llvm.mxc.barrier.warp(), !dbg !221
  fence syncscope("warp") acquire, !dbg !222
  %237 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add438, !dbg !223
  %238 = getelementptr inbounds i8, ptr addrspace(4) %237, i64 %.idx.2, !dbg !223
  %239 = load i64, ptr addrspace(4) %238, align 8, !dbg !224
  %add.ptr447.1.2 = getelementptr inbounds i8, ptr addrspace(4) %238, i64 128, !dbg !223
  %240 = load i64, ptr addrspace(4) %add.ptr447.1.2, align 8, !dbg !224
  %add.ptr447.2.2 = getelementptr inbounds i8, ptr addrspace(4) %238, i64 256, !dbg !223
  %241 = load i64, ptr addrspace(4) %add.ptr447.2.2, align 8, !dbg !224
  %add.ptr447.3.2 = getelementptr inbounds i8, ptr addrspace(4) %238, i64 384, !dbg !223
  %242 = load i64, ptr addrspace(4) %add.ptr447.3.2, align 8, !dbg !224
  %mul312.2 = fmul contract float %denominator.sroa.0.1.1, %mul.i.i.2, !dbg !246
  %243 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul477, !dbg !225
  %add.ptr489.idx.2990 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.2991 = getelementptr inbounds i8, ptr addrspace(3) %243, i32 %add.ptr489.idx.2990, !dbg !225
  %v_column.sroa.130.0.insert.ext1516 = shl i64 %242, 48, !dbg !226
  %v_column.sroa.98.0.insert.ext1361 = shl i64 %241, 32, !dbg !226
  %v_column.sroa.98.0.insert.shift1362 = and i64 %v_column.sroa.98.0.insert.ext1361, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1364 = or disjoint i64 %v_column.sroa.130.0.insert.ext1516, %v_column.sroa.98.0.insert.shift1362, !dbg !226
  %v_column.sroa.66.0.insert.ext1206 = shl i64 %240, 16, !dbg !226
  %v_column.sroa.66.0.insert.shift1207 = and i64 %v_column.sroa.66.0.insert.ext1206, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1209 = or disjoint i64 %v_column.sroa.98.0.insert.insert1364, %v_column.sroa.66.0.insert.shift1207, !dbg !226
  %v_column.sroa.0.0.insert.ext1075 = and i64 %239, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1077 = or disjoint i64 %v_column.sroa.66.0.insert.insert1209, %v_column.sroa.0.0.insert.ext1075, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1077, ptr addrspace(3) %add.ptr489.2991, align 8, !dbg !226
  %v_fetch.sroa.0.2.extract.shift1713 = lshr i64 %239, 16, !dbg !227
  %add478.1.2 = or disjoint i32 %mul477, 256, !dbg !228
  %244 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.1.2, !dbg !225
  %xor485.1.2 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.1.2 = xor i32 %xor485.1.2, 8, !dbg !225
  %add.ptr489.1.2 = getelementptr inbounds i8, ptr addrspace(3) %244, i32 %add.ptr489.idx.1.2, !dbg !225
  %245 = shl i64 %242, 32, !dbg !226
  %v_column.sroa.130.0.insert.ext1521 = and i64 %245, -281474976710656, !dbg !226
  %246 = shl i64 %241, 16, !dbg !226
  %v_column.sroa.98.0.insert.shift1367 = and i64 %246, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1369 = or disjoint i64 %v_column.sroa.130.0.insert.ext1521, %v_column.sroa.98.0.insert.shift1367, !dbg !226
  %v_column.sroa.66.0.insert.ext1211 = and i64 %240, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1214 = or disjoint i64 %v_column.sroa.98.0.insert.insert1369, %v_column.sroa.66.0.insert.ext1211, !dbg !226
  %v_column.sroa.0.0.insert.ext1079 = and i64 %v_fetch.sroa.0.2.extract.shift1713, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1081 = or disjoint i64 %v_column.sroa.66.0.insert.insert1214, %v_column.sroa.0.0.insert.ext1079, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1081, ptr addrspace(3) %add.ptr489.1.2, align 8, !dbg !226
  %v_fetch.sroa.0.4.extract.shift1734 = lshr i64 %239, 32, !dbg !227
  %add478.2.2 = or disjoint i32 %mul477, 512, !dbg !228
  %247 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.2.2, !dbg !225
  %xor485.2.2 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.2.2 = xor i32 %xor485.2.2, 16, !dbg !225
  %add.ptr489.2.2 = getelementptr inbounds i8, ptr addrspace(3) %247, i32 %add.ptr489.idx.2.2, !dbg !225
  %248 = shl i64 %242, 16, !dbg !226
  %v_column.sroa.130.0.insert.ext1526 = and i64 %248, -281474976710656, !dbg !226
  %v_column.sroa.98.0.insert.ext1371 = and i64 %241, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1374 = or disjoint i64 %v_column.sroa.130.0.insert.ext1526, %v_column.sroa.98.0.insert.ext1371, !dbg !226
  %249 = lshr i64 %240, 16, !dbg !226
  %v_column.sroa.66.0.insert.shift1217 = and i64 %249, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1219 = or disjoint i64 %v_column.sroa.98.0.insert.insert1374, %v_column.sroa.66.0.insert.shift1217, !dbg !226
  %v_column.sroa.0.0.insert.ext1083 = and i64 %v_fetch.sroa.0.4.extract.shift1734, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1085 = or disjoint i64 %v_column.sroa.66.0.insert.insert1219, %v_column.sroa.0.0.insert.ext1083, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1085, ptr addrspace(3) %add.ptr489.2.2, align 8, !dbg !226
  %v_fetch.sroa.0.6.extract.shift1755 = lshr i64 %239, 48, !dbg !227
  %v_fetch.sroa.122.30.extract.shift1986 = and i64 %242, -281474976710656, !dbg !226
  %add478.3.2 = or disjoint i32 %mul477, 768, !dbg !228
  %250 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.3.2, !dbg !225
  %xor485.3.2 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.3.2 = xor i32 %xor485.3.2, 24, !dbg !225
  %add.ptr489.3.2 = getelementptr inbounds i8, ptr addrspace(3) %250, i32 %add.ptr489.idx.3.2, !dbg !225
  %251 = lshr i64 %241, 16, !dbg !226
  %v_column.sroa.98.0.insert.shift1377 = and i64 %251, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1379 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1986, %v_column.sroa.98.0.insert.shift1377, !dbg !226
  %252 = lshr i64 %240, 32, !dbg !226
  %v_column.sroa.66.0.insert.shift1222 = and i64 %252, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1224 = or disjoint i64 %v_column.sroa.98.0.insert.insert1379, %v_column.sroa.66.0.insert.shift1222, !dbg !226
  %v_column.sroa.0.0.insert.insert1089 = or disjoint i64 %v_column.sroa.66.0.insert.insert1224, %v_fetch.sroa.0.6.extract.shift1755, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1089, ptr addrspace(3) %add.ptr489.3.2, align 8, !dbg !226
  fence syncscope("warp") release, !dbg !229
  tail call void @llvm.mxc.barrier.warp(), !dbg !232
  fence syncscope("warp") acquire, !dbg !233
  %add506.2993 = or disjoint i32 %mul499, %mul505, !dbg !234
  %253 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.2993, !dbg !235
  %add.ptr516.idx.2994 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.2995 = getelementptr inbounds i8, ptr addrspace(3) %253, i32 %add.ptr516.idx.2994, !dbg !235
  %254 = load <4 x half>, ptr addrspace(3) %add.ptr516.2995, align 8, !dbg !236
  %add501.1.2 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.1.2 = or disjoint i32 %add501.1.2, 64, !dbg !234
  %255 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.1.2, !dbg !235
  %xor512.1.2 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.1.2 = xor i32 %xor512.1.2, 8, !dbg !235
  %add.ptr516.1.2 = getelementptr inbounds i8, ptr addrspace(3) %255, i32 %add.ptr516.idx.1.2, !dbg !235
  %256 = load <4 x half>, ptr addrspace(3) %add.ptr516.1.2, align 8, !dbg !236
  %add501.2.2 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.2.2 = or disjoint i32 %add501.2.2, 128, !dbg !234
  %257 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.2.2, !dbg !235
  %xor512.2.2 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.2.2 = xor i32 %xor512.2.2, 16, !dbg !235
  %add.ptr516.2.2 = getelementptr inbounds i8, ptr addrspace(3) %257, i32 %add.ptr516.idx.2.2, !dbg !235
  %258 = load <4 x half>, ptr addrspace(3) %add.ptr516.2.2, align 8, !dbg !236
  %add501.3.2 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.3.2 = or disjoint i32 %add501.3.2, 192, !dbg !234
  %259 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.3.2, !dbg !235
  %xor512.3.2 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.3.2 = xor i32 %xor512.3.2, 24, !dbg !235
  %add.ptr516.3.2 = getelementptr inbounds i8, ptr addrspace(3) %259, i32 %add.ptr516.idx.3.2, !dbg !235
  %260 = load <4 x half>, ptr addrspace(3) %add.ptr516.3.2, align 8, !dbg !236
  %261 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %254, <4 x half> %224, <4 x float> %numerator.sroa.0.12.vec.insert2520), !dbg !237
  %262 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %256, <4 x half> %224, <4 x float> %numerator.sroa.98.28.vec.insert2676), !dbg !237
  %263 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %258, <4 x half> %224, <4 x float> %numerator.sroa.194.44.vec.insert2832), !dbg !237
  %264 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %260, <4 x half> %224, <4 x float> %numerator.sroa.290.60.vec.insert2988), !dbg !237
  %add422.2 = fadd contract float %mul312.2, %add418.2, !dbg !238
  br label %if.end542.2, !dbg !239

if.end542.2:                                      ; preds = %if.then.2, %if.end542.1
  %numerator.sroa.290.2 = phi <4 x float> [ %numerator.sroa.290.1, %if.end542.1 ], [ %264, %if.then.2 ], !dbg !240
  %numerator.sroa.194.2 = phi <4 x float> [ %numerator.sroa.194.1, %if.end542.1 ], [ %263, %if.then.2 ], !dbg !240
  %numerator.sroa.98.2 = phi <4 x float> [ %numerator.sroa.98.1, %if.end542.1 ], [ %262, %if.then.2 ], !dbg !240
  %numerator.sroa.0.2 = phi <4 x float> [ %numerator.sroa.0.1, %if.end542.1 ], [ %261, %if.then.2 ], !dbg !240
  %maximum.sroa.0.1.2 = phi float [ %maximum.sroa.0.1.1, %if.end542.1 ], [ %207, %if.then.2 ], !dbg !240
  %denominator.sroa.0.1.2 = phi float [ %denominator.sroa.0.1.1, %if.end542.1 ], [ %add422.2, %if.then.2 ], !dbg !240
  %265 = or disjoint i64 %16, 3, !dbg !241
  %arrayidx108.3 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %265, !dbg !67
  %266 = load i32, ptr addrspace(1) %arrayidx108.3, align 4, !dbg !67, !tbaa !30
  %mul109.3 = shl nsw i32 %266, 4, !dbg !68
  %cmp110.3 = icmp slt i32 %266, 0, !dbg !69
  %cmp112.not.3 = icmp sgt i32 %mul109.3, %1
  %or.cond.3 = select i1 %cmp110.3, i1 true, i1 %cmp112.not.3, !dbg !70
  br i1 %or.cond.3, label %if.end542.3, label %if.then.3, !dbg !70

if.then.3:                                        ; preds = %if.end542.2
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %conv122.3 = zext nneg i32 %mul109.3 to i64
  %.idx.3 = shl nuw nsw i64 %conv122.3, 7
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep868, i64 %.idx.3, !dbg !76
  %.idx876.3 = shl nuw nsw i64 %conv, 17, !dbg !77
  %267 = getelementptr inbounds i8, ptr addrspace(4) %gep.3, i64 %.idx876.3, !dbg !77
  %qk_fetch.sroa.0.0.copyload3526 = load i16, ptr addrspace(4) %267, align 16, !dbg !78
  %qk_fetch.sroa.56.0..sroa_idx3545 = getelementptr inbounds i8, ptr addrspace(4) %267, i64 2, !dbg !78
  %qk_fetch.sroa.56.0.copyload3546 = load i16, ptr addrspace(4) %qk_fetch.sroa.56.0..sroa_idx3545, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.92.0..sroa_idx3569 = getelementptr inbounds i8, ptr addrspace(4) %267, i64 4, !dbg !78
  %qk_fetch.sroa.92.0.copyload3570 = load i16, ptr addrspace(4) %qk_fetch.sroa.92.0..sroa_idx3569, align 4, !dbg !78
  %qk_fetch.sroa.128.0..sroa_idx3593 = getelementptr inbounds i8, ptr addrspace(4) %267, i64 6, !dbg !78
  %qk_fetch.sroa.128.0.copyload3594 = load i16, ptr addrspace(4) %qk_fetch.sroa.128.0..sroa_idx3593, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.164.0..sroa_idx3617 = getelementptr inbounds i8, ptr addrspace(4) %267, i64 8, !dbg !78
  %qk_fetch.sroa.164.0.copyload3618 = load i16, ptr addrspace(4) %qk_fetch.sroa.164.0..sroa_idx3617, align 8, !dbg !78
  %qk_fetch.sroa.200.0..sroa_idx3641 = getelementptr inbounds i8, ptr addrspace(4) %267, i64 10, !dbg !78
  %qk_fetch.sroa.200.0.copyload3642 = load i16, ptr addrspace(4) %qk_fetch.sroa.200.0..sroa_idx3641, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.236.0..sroa_idx3665 = getelementptr inbounds i8, ptr addrspace(4) %267, i64 12, !dbg !78
  %qk_fetch.sroa.236.0.copyload3666 = load i16, ptr addrspace(4) %qk_fetch.sroa.236.0..sroa_idx3665, align 4, !dbg !78
  %qk_fetch.sroa.272.0..sroa_idx3689 = getelementptr inbounds i8, ptr addrspace(4) %267, i64 14, !dbg !78
  %qk_fetch.sroa.272.0.copyload3690 = load i16, ptr addrspace(4) %qk_fetch.sroa.272.0..sroa_idx3689, align 2, !dbg !78, !tbaa !30
  %.sroa.speculated4084 = select i1 %cmp19, i16 %qk_fetch.sroa.0.0.copyload3526, i16 %qk_fetch.sroa.164.0.copyload3618, !dbg !79
  %.sroa.speculated3976 = select i1 %cmp19, i16 %qk_fetch.sroa.56.0.copyload3546, i16 %qk_fetch.sroa.200.0.copyload3642, !dbg !79
  %.sroa.speculated3868 = select i1 %cmp19, i16 %qk_fetch.sroa.92.0.copyload3570, i16 %qk_fetch.sroa.236.0.copyload3666, !dbg !79
  %.sroa.speculated3760 = select i1 %cmp19, i16 %qk_fetch.sroa.128.0.copyload3594, i16 %qk_fetch.sroa.272.0.copyload3690, !dbg !79
  %.sroa.speculated4081 = select i1 %cmp19, i16 %qk_fetch.sroa.164.0.copyload3618, i16 %qk_fetch.sroa.0.0.copyload3526, !dbg !79
  %.sroa.speculated3973 = select i1 %cmp19, i16 %qk_fetch.sroa.200.0.copyload3642, i16 %qk_fetch.sroa.56.0.copyload3546, !dbg !79
  %.sroa.speculated3865 = select i1 %cmp19, i16 %qk_fetch.sroa.236.0.copyload3666, i16 %qk_fetch.sroa.92.0.copyload3570, !dbg !79
  %.sroa.speculated3757 = select i1 %cmp19, i16 %qk_fetch.sroa.272.0.copyload3690, i16 %qk_fetch.sroa.128.0.copyload3594, !dbg !79
  store i16 %.sroa.speculated4084, ptr addrspace(3) %invariant.gep840, align 16, !dbg !80
  store i16 %.sroa.speculated3976, ptr addrspace(3) %qk_ordered.sroa.38.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3868, ptr addrspace(3) %qk_ordered.sroa.56.0.invariant.gep840.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3760, ptr addrspace(3) %qk_ordered.sroa.74.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated4081, ptr addrspace(3) %qk_ordered.sroa.92.0.invariant.gep840.sroa_idx, align 8, !dbg !80
  store i16 %.sroa.speculated3973, ptr addrspace(3) %qk_ordered.sroa.110.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3865, ptr addrspace(3) %qk_ordered.sroa.128.0.invariant.gep840.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3757, ptr addrspace(3) %qk_ordered.sroa.146.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  %gep848.1.3 = getelementptr inbounds i8, ptr addrspace(4) %267, i64 1024, !dbg !77
  %qk_fetch.sroa.0.0.copyload3527 = load i16, ptr addrspace(4) %gep848.1.3, align 16, !dbg !78
  %qk_fetch.sroa.56.0.gep848.1.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %267, i64 1026, !dbg !78
  %qk_fetch.sroa.56.0.copyload3547 = load i16, ptr addrspace(4) %qk_fetch.sroa.56.0.gep848.1.3.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.92.0.gep848.1.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %267, i64 1028, !dbg !78
  %qk_fetch.sroa.92.0.copyload3571 = load i16, ptr addrspace(4) %qk_fetch.sroa.92.0.gep848.1.3.sroa_idx, align 4, !dbg !78
  %qk_fetch.sroa.128.0.gep848.1.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %267, i64 1030, !dbg !78
  %qk_fetch.sroa.128.0.copyload3595 = load i16, ptr addrspace(4) %qk_fetch.sroa.128.0.gep848.1.3.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.164.0.gep848.1.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %267, i64 1032, !dbg !78
  %qk_fetch.sroa.164.0.copyload3619 = load i16, ptr addrspace(4) %qk_fetch.sroa.164.0.gep848.1.3.sroa_idx, align 8, !dbg !78
  %qk_fetch.sroa.200.0.gep848.1.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %267, i64 1034, !dbg !78
  %qk_fetch.sroa.200.0.copyload3643 = load i16, ptr addrspace(4) %qk_fetch.sroa.200.0.gep848.1.3.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.236.0.gep848.1.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %267, i64 1036, !dbg !78
  %qk_fetch.sroa.236.0.copyload3667 = load i16, ptr addrspace(4) %qk_fetch.sroa.236.0.gep848.1.3.sroa_idx, align 4, !dbg !78
  %qk_fetch.sroa.272.0.gep848.1.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %267, i64 1038, !dbg !78
  %qk_fetch.sroa.272.0.copyload3691 = load i16, ptr addrspace(4) %qk_fetch.sroa.272.0.gep848.1.3.sroa_idx, align 2, !dbg !78, !tbaa !30
  %.sroa.speculated4078 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.164.0.copyload3619, i16 %qk_fetch.sroa.0.0.copyload3527, !dbg !79
  %.sroa.speculated3970 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.200.0.copyload3643, i16 %qk_fetch.sroa.56.0.copyload3547, !dbg !79
  %.sroa.speculated3862 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.236.0.copyload3667, i16 %qk_fetch.sroa.92.0.copyload3571, !dbg !79
  %.sroa.speculated3754 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.272.0.copyload3691, i16 %qk_fetch.sroa.128.0.copyload3595, !dbg !79
  %.sroa.speculated4075 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.0.0.copyload3527, i16 %qk_fetch.sroa.164.0.copyload3619, !dbg !79
  %.sroa.speculated3967 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.56.0.copyload3547, i16 %qk_fetch.sroa.200.0.copyload3643, !dbg !79
  %.sroa.speculated3859 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.92.0.copyload3571, i16 %qk_fetch.sroa.236.0.copyload3667, !dbg !79
  %.sroa.speculated3751 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.128.0.copyload3595, i16 %qk_fetch.sroa.272.0.copyload3691, !dbg !79
  store i16 %.sroa.speculated4078, ptr addrspace(3) %gep841.1, align 16, !dbg !80
  store i16 %.sroa.speculated3970, ptr addrspace(3) %qk_ordered.sroa.38.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3862, ptr addrspace(3) %qk_ordered.sroa.56.0.gep841.1.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3754, ptr addrspace(3) %qk_ordered.sroa.74.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated4075, ptr addrspace(3) %qk_ordered.sroa.92.0.gep841.1.sroa_idx, align 8, !dbg !80
  store i16 %.sroa.speculated3967, ptr addrspace(3) %qk_ordered.sroa.110.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3859, ptr addrspace(3) %qk_ordered.sroa.128.0.gep841.1.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3751, ptr addrspace(3) %qk_ordered.sroa.146.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  fence syncscope("warp") release, !dbg !81
  tail call void @llvm.mxc.barrier.warp(), !dbg !84
  fence syncscope("warp") acquire, !dbg !85
  %k_local.sroa.0.0.copyload.31003 = load <4 x half>, ptr addrspace(3) %add.ptr74, align 8, !dbg !86
  %268 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.31003, <4 x half> %6, <4 x float> zeroinitializer), !dbg !87
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr74.1, align 8, !dbg !86
  %269 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %7, <4 x float> %268), !dbg !87
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %add.ptr74.2, align 8, !dbg !86
  %270 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %8, <4 x float> %269), !dbg !87
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %add.ptr74.3, align 8, !dbg !86
  %271 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %9, <4 x float> %270), !dbg !87
  %add230.3 = add nuw nsw i32 %mul109.3, %mul229
  %cmp233.not.31004 = icmp sgt i32 %add230.3, %1, !dbg !88
  %scores.sroa.0.0.vec.extract2113 = extractelement <4 x float> %271, i64 0
  %spec.select4415 = select i1 %cmp233.not.31004, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2113, !dbg !89
  %cmp233.not.1.3.not = icmp slt i32 %add230.3, %1, !dbg !88
  %scores.sroa.0.4.vec.extract2208 = extractelement <4 x float> %271, i64 1, !dbg !89
  %condval.0.1.3 = select i1 %cmp233.not.1.3.not, float %scores.sroa.0.4.vec.extract2208, float 0xFFF0000000000000, !dbg !89
  %add231.2.3 = or disjoint i32 %add230.3, 2, !dbg !90
  %cmp233.not.2.3 = icmp sgt i32 %add231.2.3, %1, !dbg !88
  %scores.sroa.0.8.vec.extract2285 = extractelement <4 x float> %271, i64 2, !dbg !89
  %condval.0.2.3 = select i1 %cmp233.not.2.3, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2285, !dbg !89
  %add231.3.3 = or disjoint i32 %add230.3, 3, !dbg !90
  %cmp233.not.3.3 = icmp sgt i32 %add231.3.3, %1, !dbg !88
  %scores.sroa.0.12.vec.extract2362 = extractelement <4 x float> %271, i64 3, !dbg !89
  %condval.0.3.3 = select i1 %cmp233.not.3.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2362, !dbg !89
  %272 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select4415, float 0xFFF0000000000000), !dbg !91
  %273 = tail call contract noundef float @llvm.maxnum.f32(float %272, float %condval.0.1.3), !dbg !91
  %274 = tail call contract noundef float @llvm.maxnum.f32(float %273, float %condval.0.2.3), !dbg !91
  %275 = tail call contract noundef float @llvm.maxnum.f32(float %274, float %condval.0.3.3), !dbg !91
  %276 = bitcast float %275 to i32, !dbg !95
  %277 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !98
  %278 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %277) #11, !dbg !103
  %xor.i.i.3 = xor i32 %278, 32, !dbg !104
  %279 = and i32 %278, -64, !dbg !105
  %and.i.i.3 = add nsw i32 %279, 64, !dbg !105
  %cmp.not.i.i.3 = icmp slt i32 %xor.i.i.3, %and.i.i.3, !dbg !106
  %cond.i.i.3 = select i1 %cmp.not.i.i.3, i32 %xor.i.i.3, i32 %278, !dbg !107
  %shl.i.i.3 = shl i32 %cond.i.i.3, 2, !dbg !108
  %280 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.3, i32 %276), !dbg !109
  %281 = bitcast i32 %280 to float, !dbg !110
  %282 = tail call contract noundef float @llvm.maxnum.f32(float %275, float %281), !dbg !111
  %283 = bitcast float %282 to i32, !dbg !113
  %284 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !115
  %285 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %284) #11, !dbg !118
  %xor.i.i779.3 = xor i32 %285, 16, !dbg !119
  %286 = and i32 %285, -64, !dbg !120
  %and.i.i780.3 = add nsw i32 %286, 64, !dbg !120
  %cmp.not.i.i781.3 = icmp slt i32 %xor.i.i779.3, %and.i.i780.3, !dbg !121
  %cond.i.i782.3 = select i1 %cmp.not.i.i781.3, i32 %xor.i.i779.3, i32 %285, !dbg !122
  %shl.i.i783.3 = shl i32 %cond.i.i782.3, 2, !dbg !123
  %287 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i783.3, i32 %283), !dbg !124
  %288 = bitcast i32 %287 to float, !dbg !125
  %289 = tail call contract noundef float @llvm.maxnum.f32(float %282, float %288), !dbg !126
  %290 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.2, float %289), !dbg !128
  %sub.3 = fsub contract float %maximum.sroa.0.1.2, %290, !dbg !130
  %mul275.3 = fmul contract float %sub.3, 0x3FC7154760000000, !dbg !131
  %cmp.i.i.3 = fcmp contract olt float %mul275.3, -1.260000e+02, !dbg !132
  %cond.i.i784.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !132
  %add.i.i.3 = fadd contract float %mul275.3, %cond.i.i784.3, !dbg !132
  %291 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !132
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !132
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %291, !dbg !132
  %numerator.sroa.0.0.vec.extract2411 = extractelement <4 x float> %numerator.sroa.0.2, i64 0, !dbg !242
  %numerator.sroa.0.4.vec.extract2448 = extractelement <4 x float> %numerator.sroa.0.2, i64 1, !dbg !242
  %numerator.sroa.0.8.vec.extract2485 = extractelement <4 x float> %numerator.sroa.0.2, i64 2, !dbg !242
  %numerator.sroa.0.12.vec.extract2522 = extractelement <4 x float> %numerator.sroa.0.2, i64 3, !dbg !242
  %mul292.31015 = fmul contract float %mul.i.i.3, %numerator.sroa.0.0.vec.extract2411, !dbg !135
  %mul295.31016 = fmul contract float %mul.i.i.3, %numerator.sroa.0.4.vec.extract2448, !dbg !243
  %mul298.31017 = fmul contract float %mul.i.i.3, %numerator.sroa.0.8.vec.extract2485, !dbg !244
  %mul301.31018 = fmul contract float %mul.i.i.3, %numerator.sroa.0.12.vec.extract2522, !dbg !245
  %numerator.sroa.0.0.vec.insert2413 = insertelement <4 x float> poison, float %mul292.31015, i64 0, !dbg !136
  %numerator.sroa.0.4.vec.insert2450 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2413, float %mul295.31016, i64 1, !dbg !136
  %numerator.sroa.0.8.vec.insert2487 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2450, float %mul298.31017, i64 2, !dbg !136
  %numerator.sroa.0.12.vec.insert2524 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2487, float %mul301.31018, i64 3, !dbg !136
  %numerator.sroa.98.16.vec.extract2567 = extractelement <4 x float> %numerator.sroa.98.2, i64 0, !dbg !242
  %numerator.sroa.98.20.vec.extract2604 = extractelement <4 x float> %numerator.sroa.98.2, i64 1, !dbg !242
  %numerator.sroa.98.24.vec.extract2641 = extractelement <4 x float> %numerator.sroa.98.2, i64 2, !dbg !242
  %numerator.sroa.98.28.vec.extract2678 = extractelement <4 x float> %numerator.sroa.98.2, i64 3, !dbg !242
  %mul292.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.16.vec.extract2567, !dbg !135
  %mul295.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.20.vec.extract2604, !dbg !243
  %mul298.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.24.vec.extract2641, !dbg !244
  %mul301.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.28.vec.extract2678, !dbg !245
  %numerator.sroa.98.16.vec.insert2569 = insertelement <4 x float> poison, float %mul292.1.3, i64 0, !dbg !136
  %numerator.sroa.98.20.vec.insert2606 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2569, float %mul295.1.3, i64 1, !dbg !136
  %numerator.sroa.98.24.vec.insert2643 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2606, float %mul298.1.3, i64 2, !dbg !136
  %numerator.sroa.98.28.vec.insert2680 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2643, float %mul301.1.3, i64 3, !dbg !136
  %numerator.sroa.194.32.vec.extract2723 = extractelement <4 x float> %numerator.sroa.194.2, i64 0, !dbg !242
  %numerator.sroa.194.36.vec.extract2760 = extractelement <4 x float> %numerator.sroa.194.2, i64 1, !dbg !242
  %numerator.sroa.194.40.vec.extract2797 = extractelement <4 x float> %numerator.sroa.194.2, i64 2, !dbg !242
  %numerator.sroa.194.44.vec.extract2834 = extractelement <4 x float> %numerator.sroa.194.2, i64 3, !dbg !242
  %mul292.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.32.vec.extract2723, !dbg !135
  %mul295.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.36.vec.extract2760, !dbg !243
  %mul298.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.40.vec.extract2797, !dbg !244
  %mul301.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.44.vec.extract2834, !dbg !245
  %numerator.sroa.194.32.vec.insert2725 = insertelement <4 x float> poison, float %mul292.2.3, i64 0, !dbg !136
  %numerator.sroa.194.36.vec.insert2762 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2725, float %mul295.2.3, i64 1, !dbg !136
  %numerator.sroa.194.40.vec.insert2799 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2762, float %mul298.2.3, i64 2, !dbg !136
  %numerator.sroa.194.44.vec.insert2836 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2799, float %mul301.2.3, i64 3, !dbg !136
  %numerator.sroa.290.48.vec.extract2879 = extractelement <4 x float> %numerator.sroa.290.2, i64 0, !dbg !242
  %numerator.sroa.290.52.vec.extract2916 = extractelement <4 x float> %numerator.sroa.290.2, i64 1, !dbg !242
  %numerator.sroa.290.56.vec.extract2953 = extractelement <4 x float> %numerator.sroa.290.2, i64 2, !dbg !242
  %numerator.sroa.290.60.vec.extract2990 = extractelement <4 x float> %numerator.sroa.290.2, i64 3, !dbg !242
  %mul292.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.48.vec.extract2879, !dbg !135
  %mul295.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.52.vec.extract2916, !dbg !243
  %mul298.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.56.vec.extract2953, !dbg !244
  %mul301.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.60.vec.extract2990, !dbg !245
  %numerator.sroa.290.48.vec.insert2881 = insertelement <4 x float> poison, float %mul292.3.3, i64 0, !dbg !136
  %numerator.sroa.290.52.vec.insert2918 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2881, float %mul295.3.3, i64 1, !dbg !136
  %numerator.sroa.290.56.vec.insert2955 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2918, float %mul298.3.3, i64 2, !dbg !136
  %numerator.sroa.290.60.vec.insert2992 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2955, float %mul301.3.3, i64 3, !dbg !136
  %sub325.3 = fsub contract float %spec.select4415, %290, !dbg !137
  %sub329.3 = fsub contract float %condval.0.1.3, %290, !dbg !138
  %sub333.3 = fsub contract float %condval.0.2.3, %290, !dbg !139
  %sub337.3 = fsub contract float %condval.0.3.3, %290, !dbg !140
  %mul342.3 = fmul contract float %sub325.3, 0x3FC7154760000000, !dbg !141
  %mul346.3 = fmul contract float %sub329.3, 0x3FC7154760000000, !dbg !142
  %mul350.3 = fmul contract float %sub333.3, 0x3FC7154760000000, !dbg !143
  %mul354.3 = fmul contract float %sub337.3, 0x3FC7154760000000, !dbg !144
  %add359.3 = fadd contract float %mul342.3, 8.000000e+00, !dbg !145
  %add363.3 = fadd contract float %mul346.3, 8.000000e+00, !dbg !146
  %add367.3 = fadd contract float %mul350.3, 8.000000e+00, !dbg !147
  %add371.3 = fadd contract float %mul354.3, 8.000000e+00, !dbg !148
  %cmp.i.i785.3 = fcmp contract olt float %add359.3, -1.260000e+02, !dbg !149
  %cond.i.i786.3 = select contract i1 %cmp.i.i785.3, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i787.3 = fadd contract float %add359.3, %cond.i.i786.3, !dbg !149
  %292 = tail call contract float @llvm.exp2.f32(float %add.i.i787.3), !dbg !149
  %cond2.i.i788.3 = select contract i1 %cmp.i.i785.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i789.3 = fmul contract float %cond2.i.i788.3, %292, !dbg !149
  %cmp.i.i790.3 = fcmp contract olt float %add363.3, -1.260000e+02, !dbg !151
  %cond.i.i791.3 = select contract i1 %cmp.i.i790.3, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i792.3 = fadd contract float %add363.3, %cond.i.i791.3, !dbg !151
  %293 = tail call contract float @llvm.exp2.f32(float %add.i.i792.3), !dbg !151
  %cond2.i.i793.3 = select contract i1 %cmp.i.i790.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i794.3 = fmul contract float %cond2.i.i793.3, %293, !dbg !151
  %cmp.i.i795.3 = fcmp contract olt float %add367.3, -1.260000e+02, !dbg !153
  %cond.i.i796.3 = select contract i1 %cmp.i.i795.3, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i797.3 = fadd contract float %add367.3, %cond.i.i796.3, !dbg !153
  %294 = tail call contract float @llvm.exp2.f32(float %add.i.i797.3), !dbg !153
  %cond2.i.i798.3 = select contract i1 %cmp.i.i795.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i799.3 = fmul contract float %cond2.i.i798.3, %294, !dbg !153
  %cmp.i.i800.3 = fcmp contract olt float %add371.3, -1.260000e+02, !dbg !155
  %cond.i.i801.3 = select contract i1 %cmp.i.i800.3, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i802.3 = fadd contract float %add371.3, %cond.i.i801.3, !dbg !155
  %295 = tail call contract float @llvm.exp2.f32(float %add.i.i802.3), !dbg !155
  %cond2.i.i803.3 = select contract i1 %cmp.i.i800.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i804.3 = fmul contract float %cond2.i.i803.3, %295, !dbg !155
  %296 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %297 = fptrunc float %mul.i.i789.3 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %296), !dbg !157, !noalias !165
  %298 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %299 = fptrunc float %mul.i.i794.3 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %298), !dbg !170, !noalias !165
  %300 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %301 = fptrunc float %mul.i.i799.3 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %300), !dbg !172, !noalias !176
  %302 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %303 = fptrunc float %mul.i.i804.3 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %302), !dbg !181, !noalias !176
  %304 = insertelement <4 x half> poison, half %297, i64 0, !dbg !183
  %305 = insertelement <4 x half> %304, half %299, i64 1, !dbg !183
  %306 = insertelement <4 x half> %305, half %301, i64 2, !dbg !183
  %307 = insertelement <4 x half> %306, half %303, i64 3, !dbg !183
  %conv.i.i.31020 = fpext half %297 to float, !dbg !184
  %add405.31021 = fadd contract float %conv.i.i.31020, 0.000000e+00, !dbg !189
  %conv.i.i.1.3 = fpext half %299 to float, !dbg !184
  %add405.1.3 = fadd contract float %add405.31021, %conv.i.i.1.3, !dbg !189
  %conv.i.i.2.3 = fpext half %301 to float, !dbg !184
  %add405.2.3 = fadd contract float %add405.1.3, %conv.i.i.2.3, !dbg !189
  %conv.i.i.3.3 = fpext half %303 to float, !dbg !184
  %add405.3.3 = fadd contract float %add405.2.3, %conv.i.i.3.3, !dbg !189
  %308 = bitcast float %add405.3.3 to i32, !dbg !190
  %309 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !192
  %310 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %309) #11, !dbg !195
  %xor.i.i810.3 = xor i32 %310, 32, !dbg !196
  %311 = and i32 %310, -64, !dbg !197
  %and.i.i811.3 = add nsw i32 %311, 64, !dbg !197
  %cmp.not.i.i812.3 = icmp slt i32 %xor.i.i810.3, %and.i.i811.3, !dbg !198
  %cond.i.i813.3 = select i1 %cmp.not.i.i812.3, i32 %xor.i.i810.3, i32 %310, !dbg !199
  %shl.i.i814.3 = shl i32 %cond.i.i813.3, 2, !dbg !200
  %312 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i814.3, i32 %308), !dbg !201
  %313 = bitcast i32 %312 to float, !dbg !202
  %add413.3 = fadd contract float %add405.3.3, %313, !dbg !203
  %314 = bitcast float %add413.3 to i32, !dbg !204
  %315 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !206
  %316 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %315) #11, !dbg !209
  %xor.i.i815.3 = xor i32 %316, 16, !dbg !210
  %317 = and i32 %316, -64, !dbg !211
  %and.i.i816.3 = add nsw i32 %317, 64, !dbg !211
  %cmp.not.i.i817.3 = icmp slt i32 %xor.i.i815.3, %and.i.i816.3, !dbg !212
  %cond.i.i818.3 = select i1 %cmp.not.i.i817.3, i32 %xor.i.i815.3, i32 %316, !dbg !213
  %shl.i.i819.3 = shl i32 %cond.i.i818.3, 2, !dbg !214
  %318 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i819.3, i32 %314), !dbg !215
  %319 = bitcast i32 %318 to float, !dbg !216
  %add418.3 = fadd contract float %add413.3, %319, !dbg !217
  fence syncscope("warp") release, !dbg !218
  tail call void @llvm.mxc.barrier.warp(), !dbg !221
  fence syncscope("warp") acquire, !dbg !222
  %320 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add438, !dbg !223
  %321 = getelementptr inbounds i8, ptr addrspace(4) %320, i64 %.idx.3, !dbg !223
  %322 = load i64, ptr addrspace(4) %321, align 8, !dbg !224
  %add.ptr447.1.3 = getelementptr inbounds i8, ptr addrspace(4) %321, i64 128, !dbg !223
  %323 = load i64, ptr addrspace(4) %add.ptr447.1.3, align 8, !dbg !224
  %add.ptr447.2.3 = getelementptr inbounds i8, ptr addrspace(4) %321, i64 256, !dbg !223
  %324 = load i64, ptr addrspace(4) %add.ptr447.2.3, align 8, !dbg !224
  %add.ptr447.3.3 = getelementptr inbounds i8, ptr addrspace(4) %321, i64 384, !dbg !223
  %325 = load i64, ptr addrspace(4) %add.ptr447.3.3, align 8, !dbg !224
  %mul312.3 = fmul contract float %denominator.sroa.0.1.2, %mul.i.i.3, !dbg !246
  %326 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul477, !dbg !225
  %add.ptr489.idx.31029 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.31030 = getelementptr inbounds i8, ptr addrspace(3) %326, i32 %add.ptr489.idx.31029, !dbg !225
  %v_column.sroa.130.0.insert.ext1536 = shl i64 %325, 48, !dbg !226
  %v_column.sroa.98.0.insert.ext1381 = shl i64 %324, 32, !dbg !226
  %v_column.sroa.98.0.insert.shift1382 = and i64 %v_column.sroa.98.0.insert.ext1381, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1384 = or disjoint i64 %v_column.sroa.130.0.insert.ext1536, %v_column.sroa.98.0.insert.shift1382, !dbg !226
  %v_column.sroa.66.0.insert.ext1226 = shl i64 %323, 16, !dbg !226
  %v_column.sroa.66.0.insert.shift1227 = and i64 %v_column.sroa.66.0.insert.ext1226, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1229 = or disjoint i64 %v_column.sroa.98.0.insert.insert1384, %v_column.sroa.66.0.insert.shift1227, !dbg !226
  %v_column.sroa.0.0.insert.ext1091 = and i64 %322, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1093 = or disjoint i64 %v_column.sroa.66.0.insert.insert1229, %v_column.sroa.0.0.insert.ext1091, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1093, ptr addrspace(3) %add.ptr489.31030, align 8, !dbg !226
  %v_fetch.sroa.0.2.extract.shift1716 = lshr i64 %322, 16, !dbg !227
  %add478.1.3 = or disjoint i32 %mul477, 256, !dbg !228
  %327 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.1.3, !dbg !225
  %xor485.1.3 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.1.3 = xor i32 %xor485.1.3, 8, !dbg !225
  %add.ptr489.1.3 = getelementptr inbounds i8, ptr addrspace(3) %327, i32 %add.ptr489.idx.1.3, !dbg !225
  %328 = shl i64 %325, 32, !dbg !226
  %v_column.sroa.130.0.insert.ext1541 = and i64 %328, -281474976710656, !dbg !226
  %329 = shl i64 %324, 16, !dbg !226
  %v_column.sroa.98.0.insert.shift1387 = and i64 %329, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1389 = or disjoint i64 %v_column.sroa.130.0.insert.ext1541, %v_column.sroa.98.0.insert.shift1387, !dbg !226
  %v_column.sroa.66.0.insert.ext1231 = and i64 %323, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1234 = or disjoint i64 %v_column.sroa.98.0.insert.insert1389, %v_column.sroa.66.0.insert.ext1231, !dbg !226
  %v_column.sroa.0.0.insert.ext1095 = and i64 %v_fetch.sroa.0.2.extract.shift1716, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1097 = or disjoint i64 %v_column.sroa.66.0.insert.insert1234, %v_column.sroa.0.0.insert.ext1095, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1097, ptr addrspace(3) %add.ptr489.1.3, align 8, !dbg !226
  %v_fetch.sroa.0.4.extract.shift1737 = lshr i64 %322, 32, !dbg !227
  %add478.2.3 = or disjoint i32 %mul477, 512, !dbg !228
  %330 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.2.3, !dbg !225
  %xor485.2.3 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.2.3 = xor i32 %xor485.2.3, 16, !dbg !225
  %add.ptr489.2.3 = getelementptr inbounds i8, ptr addrspace(3) %330, i32 %add.ptr489.idx.2.3, !dbg !225
  %331 = shl i64 %325, 16, !dbg !226
  %v_column.sroa.130.0.insert.ext1546 = and i64 %331, -281474976710656, !dbg !226
  %v_column.sroa.98.0.insert.ext1391 = and i64 %324, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1394 = or disjoint i64 %v_column.sroa.130.0.insert.ext1546, %v_column.sroa.98.0.insert.ext1391, !dbg !226
  %332 = lshr i64 %323, 16, !dbg !226
  %v_column.sroa.66.0.insert.shift1237 = and i64 %332, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1239 = or disjoint i64 %v_column.sroa.98.0.insert.insert1394, %v_column.sroa.66.0.insert.shift1237, !dbg !226
  %v_column.sroa.0.0.insert.ext1099 = and i64 %v_fetch.sroa.0.4.extract.shift1737, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1101 = or disjoint i64 %v_column.sroa.66.0.insert.insert1239, %v_column.sroa.0.0.insert.ext1099, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1101, ptr addrspace(3) %add.ptr489.2.3, align 8, !dbg !226
  %v_fetch.sroa.0.6.extract.shift1758 = lshr i64 %322, 48, !dbg !227
  %v_fetch.sroa.122.30.extract.shift1989 = and i64 %325, -281474976710656, !dbg !226
  %add478.3.3 = or disjoint i32 %mul477, 768, !dbg !228
  %333 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.3.3, !dbg !225
  %xor485.3.3 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.3.3 = xor i32 %xor485.3.3, 24, !dbg !225
  %add.ptr489.3.3 = getelementptr inbounds i8, ptr addrspace(3) %333, i32 %add.ptr489.idx.3.3, !dbg !225
  %334 = lshr i64 %324, 16, !dbg !226
  %v_column.sroa.98.0.insert.shift1397 = and i64 %334, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1399 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1989, %v_column.sroa.98.0.insert.shift1397, !dbg !226
  %335 = lshr i64 %323, 32, !dbg !226
  %v_column.sroa.66.0.insert.shift1242 = and i64 %335, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1244 = or disjoint i64 %v_column.sroa.98.0.insert.insert1399, %v_column.sroa.66.0.insert.shift1242, !dbg !226
  %v_column.sroa.0.0.insert.insert1105 = or disjoint i64 %v_column.sroa.66.0.insert.insert1244, %v_fetch.sroa.0.6.extract.shift1758, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1105, ptr addrspace(3) %add.ptr489.3.3, align 8, !dbg !226
  fence syncscope("warp") release, !dbg !229
  tail call void @llvm.mxc.barrier.warp(), !dbg !232
  fence syncscope("warp") acquire, !dbg !233
  %add506.31032 = or disjoint i32 %mul499, %mul505, !dbg !234
  %336 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.31032, !dbg !235
  %add.ptr516.idx.31033 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.31034 = getelementptr inbounds i8, ptr addrspace(3) %336, i32 %add.ptr516.idx.31033, !dbg !235
  %337 = load <4 x half>, ptr addrspace(3) %add.ptr516.31034, align 8, !dbg !236
  %add501.1.3 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.1.3 = or disjoint i32 %add501.1.3, 64, !dbg !234
  %338 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.1.3, !dbg !235
  %xor512.1.3 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.1.3 = xor i32 %xor512.1.3, 8, !dbg !235
  %add.ptr516.1.3 = getelementptr inbounds i8, ptr addrspace(3) %338, i32 %add.ptr516.idx.1.3, !dbg !235
  %339 = load <4 x half>, ptr addrspace(3) %add.ptr516.1.3, align 8, !dbg !236
  %add501.2.3 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.2.3 = or disjoint i32 %add501.2.3, 128, !dbg !234
  %340 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.2.3, !dbg !235
  %xor512.2.3 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.2.3 = xor i32 %xor512.2.3, 16, !dbg !235
  %add.ptr516.2.3 = getelementptr inbounds i8, ptr addrspace(3) %340, i32 %add.ptr516.idx.2.3, !dbg !235
  %341 = load <4 x half>, ptr addrspace(3) %add.ptr516.2.3, align 8, !dbg !236
  %add501.3.3 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.3.3 = or disjoint i32 %add501.3.3, 192, !dbg !234
  %342 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.3.3, !dbg !235
  %xor512.3.3 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.3.3 = xor i32 %xor512.3.3, 24, !dbg !235
  %add.ptr516.3.3 = getelementptr inbounds i8, ptr addrspace(3) %342, i32 %add.ptr516.idx.3.3, !dbg !235
  %343 = load <4 x half>, ptr addrspace(3) %add.ptr516.3.3, align 8, !dbg !236
  %344 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %337, <4 x half> %307, <4 x float> %numerator.sroa.0.12.vec.insert2524), !dbg !237
  %345 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %339, <4 x half> %307, <4 x float> %numerator.sroa.98.28.vec.insert2680), !dbg !237
  %346 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %341, <4 x half> %307, <4 x float> %numerator.sroa.194.44.vec.insert2836), !dbg !237
  %347 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %343, <4 x half> %307, <4 x float> %numerator.sroa.290.60.vec.insert2992), !dbg !237
  %add422.3 = fadd contract float %mul312.3, %add418.3, !dbg !238
  br label %if.end542.3, !dbg !239

if.end542.3:                                      ; preds = %if.then.3, %if.end542.2
  %numerator.sroa.290.3 = phi <4 x float> [ %numerator.sroa.290.2, %if.end542.2 ], [ %347, %if.then.3 ], !dbg !240
  %numerator.sroa.194.3 = phi <4 x float> [ %numerator.sroa.194.2, %if.end542.2 ], [ %346, %if.then.3 ], !dbg !240
  %numerator.sroa.98.3 = phi <4 x float> [ %numerator.sroa.98.2, %if.end542.2 ], [ %345, %if.then.3 ], !dbg !240
  %numerator.sroa.0.3 = phi <4 x float> [ %numerator.sroa.0.2, %if.end542.2 ], [ %344, %if.then.3 ], !dbg !240
  %maximum.sroa.0.1.3 = phi float [ %maximum.sroa.0.1.2, %if.end542.2 ], [ %290, %if.then.3 ], !dbg !240
  %denominator.sroa.0.1.3 = phi float [ %denominator.sroa.0.1.2, %if.end542.2 ], [ %add422.3, %if.then.3 ], !dbg !240
  %348 = or disjoint i64 %16, 4, !dbg !241
  %arrayidx108.4 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %348, !dbg !67
  %349 = load i32, ptr addrspace(1) %arrayidx108.4, align 4, !dbg !67, !tbaa !30
  %mul109.4 = shl nsw i32 %349, 4, !dbg !68
  %cmp110.4 = icmp slt i32 %349, 0, !dbg !69
  %cmp112.not.4 = icmp sgt i32 %mul109.4, %1
  %or.cond.4 = select i1 %cmp110.4, i1 true, i1 %cmp112.not.4, !dbg !70
  br i1 %or.cond.4, label %if.end542.4, label %if.then.4, !dbg !70

if.then.4:                                        ; preds = %if.end542.3
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %conv122.4 = zext nneg i32 %mul109.4 to i64
  %.idx.4 = shl nuw nsw i64 %conv122.4, 7
  %gep.4 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep868, i64 %.idx.4, !dbg !76
  %.idx876.4 = shl nuw nsw i64 %conv, 17, !dbg !77
  %350 = getelementptr inbounds i8, ptr addrspace(4) %gep.4, i64 %.idx876.4, !dbg !77
  %qk_fetch.sroa.0.0.copyload3528 = load i16, ptr addrspace(4) %350, align 16, !dbg !78
  %qk_fetch.sroa.56.0..sroa_idx3548 = getelementptr inbounds i8, ptr addrspace(4) %350, i64 2, !dbg !78
  %qk_fetch.sroa.56.0.copyload3549 = load i16, ptr addrspace(4) %qk_fetch.sroa.56.0..sroa_idx3548, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.92.0..sroa_idx3572 = getelementptr inbounds i8, ptr addrspace(4) %350, i64 4, !dbg !78
  %qk_fetch.sroa.92.0.copyload3573 = load i16, ptr addrspace(4) %qk_fetch.sroa.92.0..sroa_idx3572, align 4, !dbg !78
  %qk_fetch.sroa.128.0..sroa_idx3596 = getelementptr inbounds i8, ptr addrspace(4) %350, i64 6, !dbg !78
  %qk_fetch.sroa.128.0.copyload3597 = load i16, ptr addrspace(4) %qk_fetch.sroa.128.0..sroa_idx3596, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.164.0..sroa_idx3620 = getelementptr inbounds i8, ptr addrspace(4) %350, i64 8, !dbg !78
  %qk_fetch.sroa.164.0.copyload3621 = load i16, ptr addrspace(4) %qk_fetch.sroa.164.0..sroa_idx3620, align 8, !dbg !78
  %qk_fetch.sroa.200.0..sroa_idx3644 = getelementptr inbounds i8, ptr addrspace(4) %350, i64 10, !dbg !78
  %qk_fetch.sroa.200.0.copyload3645 = load i16, ptr addrspace(4) %qk_fetch.sroa.200.0..sroa_idx3644, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.236.0..sroa_idx3668 = getelementptr inbounds i8, ptr addrspace(4) %350, i64 12, !dbg !78
  %qk_fetch.sroa.236.0.copyload3669 = load i16, ptr addrspace(4) %qk_fetch.sroa.236.0..sroa_idx3668, align 4, !dbg !78
  %qk_fetch.sroa.272.0..sroa_idx3692 = getelementptr inbounds i8, ptr addrspace(4) %350, i64 14, !dbg !78
  %qk_fetch.sroa.272.0.copyload3693 = load i16, ptr addrspace(4) %qk_fetch.sroa.272.0..sroa_idx3692, align 2, !dbg !78, !tbaa !30
  %.sroa.speculated4072 = select i1 %cmp19, i16 %qk_fetch.sroa.0.0.copyload3528, i16 %qk_fetch.sroa.164.0.copyload3621, !dbg !79
  %.sroa.speculated3964 = select i1 %cmp19, i16 %qk_fetch.sroa.56.0.copyload3549, i16 %qk_fetch.sroa.200.0.copyload3645, !dbg !79
  %.sroa.speculated3856 = select i1 %cmp19, i16 %qk_fetch.sroa.92.0.copyload3573, i16 %qk_fetch.sroa.236.0.copyload3669, !dbg !79
  %.sroa.speculated3748 = select i1 %cmp19, i16 %qk_fetch.sroa.128.0.copyload3597, i16 %qk_fetch.sroa.272.0.copyload3693, !dbg !79
  %.sroa.speculated4069 = select i1 %cmp19, i16 %qk_fetch.sroa.164.0.copyload3621, i16 %qk_fetch.sroa.0.0.copyload3528, !dbg !79
  %.sroa.speculated3961 = select i1 %cmp19, i16 %qk_fetch.sroa.200.0.copyload3645, i16 %qk_fetch.sroa.56.0.copyload3549, !dbg !79
  %.sroa.speculated3853 = select i1 %cmp19, i16 %qk_fetch.sroa.236.0.copyload3669, i16 %qk_fetch.sroa.92.0.copyload3573, !dbg !79
  %.sroa.speculated3745 = select i1 %cmp19, i16 %qk_fetch.sroa.272.0.copyload3693, i16 %qk_fetch.sroa.128.0.copyload3597, !dbg !79
  store i16 %.sroa.speculated4072, ptr addrspace(3) %invariant.gep840, align 16, !dbg !80
  store i16 %.sroa.speculated3964, ptr addrspace(3) %qk_ordered.sroa.38.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3856, ptr addrspace(3) %qk_ordered.sroa.56.0.invariant.gep840.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3748, ptr addrspace(3) %qk_ordered.sroa.74.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated4069, ptr addrspace(3) %qk_ordered.sroa.92.0.invariant.gep840.sroa_idx, align 8, !dbg !80
  store i16 %.sroa.speculated3961, ptr addrspace(3) %qk_ordered.sroa.110.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3853, ptr addrspace(3) %qk_ordered.sroa.128.0.invariant.gep840.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3745, ptr addrspace(3) %qk_ordered.sroa.146.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  %gep848.1.4 = getelementptr inbounds i8, ptr addrspace(4) %350, i64 1024, !dbg !77
  %qk_fetch.sroa.0.0.copyload3529 = load i16, ptr addrspace(4) %gep848.1.4, align 16, !dbg !78
  %qk_fetch.sroa.56.0.gep848.1.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %350, i64 1026, !dbg !78
  %qk_fetch.sroa.56.0.copyload3550 = load i16, ptr addrspace(4) %qk_fetch.sroa.56.0.gep848.1.4.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.92.0.gep848.1.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %350, i64 1028, !dbg !78
  %qk_fetch.sroa.92.0.copyload3574 = load i16, ptr addrspace(4) %qk_fetch.sroa.92.0.gep848.1.4.sroa_idx, align 4, !dbg !78
  %qk_fetch.sroa.128.0.gep848.1.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %350, i64 1030, !dbg !78
  %qk_fetch.sroa.128.0.copyload3598 = load i16, ptr addrspace(4) %qk_fetch.sroa.128.0.gep848.1.4.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.164.0.gep848.1.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %350, i64 1032, !dbg !78
  %qk_fetch.sroa.164.0.copyload3622 = load i16, ptr addrspace(4) %qk_fetch.sroa.164.0.gep848.1.4.sroa_idx, align 8, !dbg !78
  %qk_fetch.sroa.200.0.gep848.1.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %350, i64 1034, !dbg !78
  %qk_fetch.sroa.200.0.copyload3646 = load i16, ptr addrspace(4) %qk_fetch.sroa.200.0.gep848.1.4.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.236.0.gep848.1.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %350, i64 1036, !dbg !78
  %qk_fetch.sroa.236.0.copyload3670 = load i16, ptr addrspace(4) %qk_fetch.sroa.236.0.gep848.1.4.sroa_idx, align 4, !dbg !78
  %qk_fetch.sroa.272.0.gep848.1.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %350, i64 1038, !dbg !78
  %qk_fetch.sroa.272.0.copyload3694 = load i16, ptr addrspace(4) %qk_fetch.sroa.272.0.gep848.1.4.sroa_idx, align 2, !dbg !78, !tbaa !30
  %.sroa.speculated4066 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.164.0.copyload3622, i16 %qk_fetch.sroa.0.0.copyload3529, !dbg !79
  %.sroa.speculated3958 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.200.0.copyload3646, i16 %qk_fetch.sroa.56.0.copyload3550, !dbg !79
  %.sroa.speculated3850 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.236.0.copyload3670, i16 %qk_fetch.sroa.92.0.copyload3574, !dbg !79
  %.sroa.speculated3742 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.272.0.copyload3694, i16 %qk_fetch.sroa.128.0.copyload3598, !dbg !79
  %.sroa.speculated4063 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.0.0.copyload3529, i16 %qk_fetch.sroa.164.0.copyload3622, !dbg !79
  %.sroa.speculated3955 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.56.0.copyload3550, i16 %qk_fetch.sroa.200.0.copyload3646, !dbg !79
  %.sroa.speculated3847 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.92.0.copyload3574, i16 %qk_fetch.sroa.236.0.copyload3670, !dbg !79
  %.sroa.speculated3739 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.128.0.copyload3598, i16 %qk_fetch.sroa.272.0.copyload3694, !dbg !79
  store i16 %.sroa.speculated4066, ptr addrspace(3) %gep841.1, align 16, !dbg !80
  store i16 %.sroa.speculated3958, ptr addrspace(3) %qk_ordered.sroa.38.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3850, ptr addrspace(3) %qk_ordered.sroa.56.0.gep841.1.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3742, ptr addrspace(3) %qk_ordered.sroa.74.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated4063, ptr addrspace(3) %qk_ordered.sroa.92.0.gep841.1.sroa_idx, align 8, !dbg !80
  store i16 %.sroa.speculated3955, ptr addrspace(3) %qk_ordered.sroa.110.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3847, ptr addrspace(3) %qk_ordered.sroa.128.0.gep841.1.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3739, ptr addrspace(3) %qk_ordered.sroa.146.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  fence syncscope("warp") release, !dbg !81
  tail call void @llvm.mxc.barrier.warp(), !dbg !84
  fence syncscope("warp") acquire, !dbg !85
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %add.ptr74, align 8, !dbg !86
  %351 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %6, <4 x float> zeroinitializer), !dbg !87
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr74.1, align 8, !dbg !86
  %352 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %7, <4 x float> %351), !dbg !87
  %k_local.sroa.0.0.copyload.2.4 = load <4 x half>, ptr addrspace(3) %add.ptr74.2, align 8, !dbg !86
  %353 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.4, <4 x half> %8, <4 x float> %352), !dbg !87
  %k_local.sroa.0.0.copyload.3.4 = load <4 x half>, ptr addrspace(3) %add.ptr74.3, align 8, !dbg !86
  %354 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.4, <4 x half> %9, <4 x float> %353), !dbg !87
  %add230.4 = add nuw nsw i32 %mul109.4, %mul229
  %cmp233.not.4 = icmp sgt i32 %add230.4, %1, !dbg !88
  %scores.sroa.0.0.vec.extract2123 = extractelement <4 x float> %354, i64 0
  %spec.select4416 = select i1 %cmp233.not.4, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2123, !dbg !89
  %cmp233.not.1.4.not = icmp slt i32 %add230.4, %1, !dbg !88
  %scores.sroa.0.4.vec.extract2214 = extractelement <4 x float> %354, i64 1, !dbg !89
  %condval.0.1.4 = select i1 %cmp233.not.1.4.not, float %scores.sroa.0.4.vec.extract2214, float 0xFFF0000000000000, !dbg !89
  %add231.2.4 = or disjoint i32 %add230.4, 2, !dbg !90
  %cmp233.not.2.4 = icmp sgt i32 %add231.2.4, %1, !dbg !88
  %scores.sroa.0.8.vec.extract2291 = extractelement <4 x float> %354, i64 2, !dbg !89
  %condval.0.2.4 = select i1 %cmp233.not.2.4, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2291, !dbg !89
  %add231.3.4 = or disjoint i32 %add230.4, 3, !dbg !90
  %cmp233.not.3.4 = icmp sgt i32 %add231.3.4, %1, !dbg !88
  %scores.sroa.0.12.vec.extract2368 = extractelement <4 x float> %354, i64 3, !dbg !89
  %condval.0.3.4 = select i1 %cmp233.not.3.4, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2368, !dbg !89
  %355 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select4416, float 0xFFF0000000000000), !dbg !91
  %356 = tail call contract noundef float @llvm.maxnum.f32(float %355, float %condval.0.1.4), !dbg !91
  %357 = tail call contract noundef float @llvm.maxnum.f32(float %356, float %condval.0.2.4), !dbg !91
  %358 = tail call contract noundef float @llvm.maxnum.f32(float %357, float %condval.0.3.4), !dbg !91
  %359 = bitcast float %358 to i32, !dbg !95
  %360 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !98
  %361 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %360) #11, !dbg !103
  %xor.i.i.4 = xor i32 %361, 32, !dbg !104
  %362 = and i32 %361, -64, !dbg !105
  %and.i.i.4 = add nsw i32 %362, 64, !dbg !105
  %cmp.not.i.i.4 = icmp slt i32 %xor.i.i.4, %and.i.i.4, !dbg !106
  %cond.i.i.4 = select i1 %cmp.not.i.i.4, i32 %xor.i.i.4, i32 %361, !dbg !107
  %shl.i.i.4 = shl i32 %cond.i.i.4, 2, !dbg !108
  %363 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.4, i32 %359), !dbg !109
  %364 = bitcast i32 %363 to float, !dbg !110
  %365 = tail call contract noundef float @llvm.maxnum.f32(float %358, float %364), !dbg !111
  %366 = bitcast float %365 to i32, !dbg !113
  %367 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !115
  %368 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %367) #11, !dbg !118
  %xor.i.i779.4 = xor i32 %368, 16, !dbg !119
  %369 = and i32 %368, -64, !dbg !120
  %and.i.i780.4 = add nsw i32 %369, 64, !dbg !120
  %cmp.not.i.i781.4 = icmp slt i32 %xor.i.i779.4, %and.i.i780.4, !dbg !121
  %cond.i.i782.4 = select i1 %cmp.not.i.i781.4, i32 %xor.i.i779.4, i32 %368, !dbg !122
  %shl.i.i783.4 = shl i32 %cond.i.i782.4, 2, !dbg !123
  %370 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i783.4, i32 %366), !dbg !124
  %371 = bitcast i32 %370 to float, !dbg !125
  %372 = tail call contract noundef float @llvm.maxnum.f32(float %365, float %371), !dbg !126
  %373 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.3, float %372), !dbg !128
  %sub.4 = fsub contract float %maximum.sroa.0.1.3, %373, !dbg !130
  %mul275.4 = fmul contract float %sub.4, 0x3FC7154760000000, !dbg !131
  %cmp.i.i.4 = fcmp contract olt float %mul275.4, -1.260000e+02, !dbg !132
  %cond.i.i784.4 = select contract i1 %cmp.i.i.4, float 6.400000e+01, float 0.000000e+00, !dbg !132
  %add.i.i.4 = fadd contract float %mul275.4, %cond.i.i784.4, !dbg !132
  %374 = tail call contract float @llvm.exp2.f32(float %add.i.i.4), !dbg !132
  %cond2.i.i.4 = select contract i1 %cmp.i.i.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !132
  %mul.i.i.4 = fmul contract float %cond2.i.i.4, %374, !dbg !132
  %numerator.sroa.0.0.vec.extract2415 = extractelement <4 x float> %numerator.sroa.0.3, i64 0, !dbg !242
  %numerator.sroa.0.4.vec.extract2452 = extractelement <4 x float> %numerator.sroa.0.3, i64 1, !dbg !242
  %numerator.sroa.0.8.vec.extract2489 = extractelement <4 x float> %numerator.sroa.0.3, i64 2, !dbg !242
  %numerator.sroa.0.12.vec.extract2526 = extractelement <4 x float> %numerator.sroa.0.3, i64 3, !dbg !242
  %mul292.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.0.vec.extract2415, !dbg !135
  %mul295.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.4.vec.extract2452, !dbg !243
  %mul298.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.8.vec.extract2489, !dbg !244
  %mul301.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.12.vec.extract2526, !dbg !245
  %numerator.sroa.0.0.vec.insert2417 = insertelement <4 x float> poison, float %mul292.4, i64 0, !dbg !136
  %numerator.sroa.0.4.vec.insert2454 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2417, float %mul295.4, i64 1, !dbg !136
  %numerator.sroa.0.8.vec.insert2491 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2454, float %mul298.4, i64 2, !dbg !136
  %numerator.sroa.0.12.vec.insert2528 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2491, float %mul301.4, i64 3, !dbg !136
  %numerator.sroa.98.16.vec.extract2571 = extractelement <4 x float> %numerator.sroa.98.3, i64 0, !dbg !242
  %numerator.sroa.98.20.vec.extract2608 = extractelement <4 x float> %numerator.sroa.98.3, i64 1, !dbg !242
  %numerator.sroa.98.24.vec.extract2645 = extractelement <4 x float> %numerator.sroa.98.3, i64 2, !dbg !242
  %numerator.sroa.98.28.vec.extract2682 = extractelement <4 x float> %numerator.sroa.98.3, i64 3, !dbg !242
  %mul292.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.16.vec.extract2571, !dbg !135
  %mul295.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.20.vec.extract2608, !dbg !243
  %mul298.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.24.vec.extract2645, !dbg !244
  %mul301.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.28.vec.extract2682, !dbg !245
  %numerator.sroa.98.16.vec.insert2573 = insertelement <4 x float> poison, float %mul292.1.4, i64 0, !dbg !136
  %numerator.sroa.98.20.vec.insert2610 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2573, float %mul295.1.4, i64 1, !dbg !136
  %numerator.sroa.98.24.vec.insert2647 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2610, float %mul298.1.4, i64 2, !dbg !136
  %numerator.sroa.98.28.vec.insert2684 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2647, float %mul301.1.4, i64 3, !dbg !136
  %numerator.sroa.194.32.vec.extract2727 = extractelement <4 x float> %numerator.sroa.194.3, i64 0, !dbg !242
  %numerator.sroa.194.36.vec.extract2764 = extractelement <4 x float> %numerator.sroa.194.3, i64 1, !dbg !242
  %numerator.sroa.194.40.vec.extract2801 = extractelement <4 x float> %numerator.sroa.194.3, i64 2, !dbg !242
  %numerator.sroa.194.44.vec.extract2838 = extractelement <4 x float> %numerator.sroa.194.3, i64 3, !dbg !242
  %mul292.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.32.vec.extract2727, !dbg !135
  %mul295.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.36.vec.extract2764, !dbg !243
  %mul298.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.40.vec.extract2801, !dbg !244
  %mul301.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.44.vec.extract2838, !dbg !245
  %numerator.sroa.194.32.vec.insert2729 = insertelement <4 x float> poison, float %mul292.2.4, i64 0, !dbg !136
  %numerator.sroa.194.36.vec.insert2766 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2729, float %mul295.2.4, i64 1, !dbg !136
  %numerator.sroa.194.40.vec.insert2803 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2766, float %mul298.2.4, i64 2, !dbg !136
  %numerator.sroa.194.44.vec.insert2840 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2803, float %mul301.2.4, i64 3, !dbg !136
  %numerator.sroa.290.48.vec.extract2883 = extractelement <4 x float> %numerator.sroa.290.3, i64 0, !dbg !242
  %numerator.sroa.290.52.vec.extract2920 = extractelement <4 x float> %numerator.sroa.290.3, i64 1, !dbg !242
  %numerator.sroa.290.56.vec.extract2957 = extractelement <4 x float> %numerator.sroa.290.3, i64 2, !dbg !242
  %numerator.sroa.290.60.vec.extract2994 = extractelement <4 x float> %numerator.sroa.290.3, i64 3, !dbg !242
  %mul292.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.48.vec.extract2883, !dbg !135
  %mul295.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.52.vec.extract2920, !dbg !243
  %mul298.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.56.vec.extract2957, !dbg !244
  %mul301.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.60.vec.extract2994, !dbg !245
  %numerator.sroa.290.48.vec.insert2885 = insertelement <4 x float> poison, float %mul292.3.4, i64 0, !dbg !136
  %numerator.sroa.290.52.vec.insert2922 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2885, float %mul295.3.4, i64 1, !dbg !136
  %numerator.sroa.290.56.vec.insert2959 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2922, float %mul298.3.4, i64 2, !dbg !136
  %numerator.sroa.290.60.vec.insert2996 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2959, float %mul301.3.4, i64 3, !dbg !136
  %sub325.4 = fsub contract float %spec.select4416, %373, !dbg !137
  %sub329.4 = fsub contract float %condval.0.1.4, %373, !dbg !138
  %sub333.4 = fsub contract float %condval.0.2.4, %373, !dbg !139
  %sub337.4 = fsub contract float %condval.0.3.4, %373, !dbg !140
  %mul342.4 = fmul contract float %sub325.4, 0x3FC7154760000000, !dbg !141
  %mul346.4 = fmul contract float %sub329.4, 0x3FC7154760000000, !dbg !142
  %mul350.4 = fmul contract float %sub333.4, 0x3FC7154760000000, !dbg !143
  %mul354.4 = fmul contract float %sub337.4, 0x3FC7154760000000, !dbg !144
  %add359.4 = fadd contract float %mul342.4, 8.000000e+00, !dbg !145
  %add363.4 = fadd contract float %mul346.4, 8.000000e+00, !dbg !146
  %add367.4 = fadd contract float %mul350.4, 8.000000e+00, !dbg !147
  %add371.4 = fadd contract float %mul354.4, 8.000000e+00, !dbg !148
  %cmp.i.i785.4 = fcmp contract olt float %add359.4, -1.260000e+02, !dbg !149
  %cond.i.i786.4 = select contract i1 %cmp.i.i785.4, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i787.4 = fadd contract float %add359.4, %cond.i.i786.4, !dbg !149
  %375 = tail call contract float @llvm.exp2.f32(float %add.i.i787.4), !dbg !149
  %cond2.i.i788.4 = select contract i1 %cmp.i.i785.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i789.4 = fmul contract float %cond2.i.i788.4, %375, !dbg !149
  %cmp.i.i790.4 = fcmp contract olt float %add363.4, -1.260000e+02, !dbg !151
  %cond.i.i791.4 = select contract i1 %cmp.i.i790.4, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i792.4 = fadd contract float %add363.4, %cond.i.i791.4, !dbg !151
  %376 = tail call contract float @llvm.exp2.f32(float %add.i.i792.4), !dbg !151
  %cond2.i.i793.4 = select contract i1 %cmp.i.i790.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i794.4 = fmul contract float %cond2.i.i793.4, %376, !dbg !151
  %cmp.i.i795.4 = fcmp contract olt float %add367.4, -1.260000e+02, !dbg !153
  %cond.i.i796.4 = select contract i1 %cmp.i.i795.4, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i797.4 = fadd contract float %add367.4, %cond.i.i796.4, !dbg !153
  %377 = tail call contract float @llvm.exp2.f32(float %add.i.i797.4), !dbg !153
  %cond2.i.i798.4 = select contract i1 %cmp.i.i795.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i799.4 = fmul contract float %cond2.i.i798.4, %377, !dbg !153
  %cmp.i.i800.4 = fcmp contract olt float %add371.4, -1.260000e+02, !dbg !155
  %cond.i.i801.4 = select contract i1 %cmp.i.i800.4, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i802.4 = fadd contract float %add371.4, %cond.i.i801.4, !dbg !155
  %378 = tail call contract float @llvm.exp2.f32(float %add.i.i802.4), !dbg !155
  %cond2.i.i803.4 = select contract i1 %cmp.i.i800.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i804.4 = fmul contract float %cond2.i.i803.4, %378, !dbg !155
  %379 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %380 = fptrunc float %mul.i.i789.4 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %379), !dbg !157, !noalias !165
  %381 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %382 = fptrunc float %mul.i.i794.4 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %381), !dbg !170, !noalias !165
  %383 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %384 = fptrunc float %mul.i.i799.4 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %383), !dbg !172, !noalias !176
  %385 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %386 = fptrunc float %mul.i.i804.4 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %385), !dbg !181, !noalias !176
  %387 = insertelement <4 x half> poison, half %380, i64 0, !dbg !183
  %388 = insertelement <4 x half> %387, half %382, i64 1, !dbg !183
  %389 = insertelement <4 x half> %388, half %384, i64 2, !dbg !183
  %390 = insertelement <4 x half> %389, half %386, i64 3, !dbg !183
  %conv.i.i.4 = fpext half %380 to float, !dbg !184
  %add405.4 = fadd contract float %conv.i.i.4, 0.000000e+00, !dbg !189
  %conv.i.i.1.4 = fpext half %382 to float, !dbg !184
  %add405.1.4 = fadd contract float %add405.4, %conv.i.i.1.4, !dbg !189
  %conv.i.i.2.4 = fpext half %384 to float, !dbg !184
  %add405.2.4 = fadd contract float %add405.1.4, %conv.i.i.2.4, !dbg !189
  %conv.i.i.3.4 = fpext half %386 to float, !dbg !184
  %add405.3.4 = fadd contract float %add405.2.4, %conv.i.i.3.4, !dbg !189
  %391 = bitcast float %add405.3.4 to i32, !dbg !190
  %392 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !192
  %393 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %392) #11, !dbg !195
  %xor.i.i810.4 = xor i32 %393, 32, !dbg !196
  %394 = and i32 %393, -64, !dbg !197
  %and.i.i811.4 = add nsw i32 %394, 64, !dbg !197
  %cmp.not.i.i812.4 = icmp slt i32 %xor.i.i810.4, %and.i.i811.4, !dbg !198
  %cond.i.i813.4 = select i1 %cmp.not.i.i812.4, i32 %xor.i.i810.4, i32 %393, !dbg !199
  %shl.i.i814.4 = shl i32 %cond.i.i813.4, 2, !dbg !200
  %395 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i814.4, i32 %391), !dbg !201
  %396 = bitcast i32 %395 to float, !dbg !202
  %add413.4 = fadd contract float %add405.3.4, %396, !dbg !203
  %397 = bitcast float %add413.4 to i32, !dbg !204
  %398 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !206
  %399 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %398) #11, !dbg !209
  %xor.i.i815.4 = xor i32 %399, 16, !dbg !210
  %400 = and i32 %399, -64, !dbg !211
  %and.i.i816.4 = add nsw i32 %400, 64, !dbg !211
  %cmp.not.i.i817.4 = icmp slt i32 %xor.i.i815.4, %and.i.i816.4, !dbg !212
  %cond.i.i818.4 = select i1 %cmp.not.i.i817.4, i32 %xor.i.i815.4, i32 %399, !dbg !213
  %shl.i.i819.4 = shl i32 %cond.i.i818.4, 2, !dbg !214
  %401 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i819.4, i32 %397), !dbg !215
  %402 = bitcast i32 %401 to float, !dbg !216
  %add418.4 = fadd contract float %add413.4, %402, !dbg !217
  fence syncscope("warp") release, !dbg !218
  tail call void @llvm.mxc.barrier.warp(), !dbg !221
  fence syncscope("warp") acquire, !dbg !222
  %403 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add438, !dbg !223
  %404 = getelementptr inbounds i8, ptr addrspace(4) %403, i64 %.idx.4, !dbg !223
  %405 = load i64, ptr addrspace(4) %404, align 8, !dbg !224
  %add.ptr447.1.4 = getelementptr inbounds i8, ptr addrspace(4) %404, i64 128, !dbg !223
  %406 = load i64, ptr addrspace(4) %add.ptr447.1.4, align 8, !dbg !224
  %add.ptr447.2.4 = getelementptr inbounds i8, ptr addrspace(4) %404, i64 256, !dbg !223
  %407 = load i64, ptr addrspace(4) %add.ptr447.2.4, align 8, !dbg !224
  %add.ptr447.3.4 = getelementptr inbounds i8, ptr addrspace(4) %404, i64 384, !dbg !223
  %408 = load i64, ptr addrspace(4) %add.ptr447.3.4, align 8, !dbg !224
  %mul312.4 = fmul contract float %denominator.sroa.0.1.3, %mul.i.i.4, !dbg !246
  %409 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul477, !dbg !225
  %add.ptr489.idx.4 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.4 = getelementptr inbounds i8, ptr addrspace(3) %409, i32 %add.ptr489.idx.4, !dbg !225
  %v_column.sroa.130.0.insert.ext1556 = shl i64 %408, 48, !dbg !226
  %v_column.sroa.98.0.insert.ext1401 = shl i64 %407, 32, !dbg !226
  %v_column.sroa.98.0.insert.shift1402 = and i64 %v_column.sroa.98.0.insert.ext1401, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1404 = or disjoint i64 %v_column.sroa.130.0.insert.ext1556, %v_column.sroa.98.0.insert.shift1402, !dbg !226
  %v_column.sroa.66.0.insert.ext1246 = shl i64 %406, 16, !dbg !226
  %v_column.sroa.66.0.insert.shift1247 = and i64 %v_column.sroa.66.0.insert.ext1246, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1249 = or disjoint i64 %v_column.sroa.98.0.insert.insert1404, %v_column.sroa.66.0.insert.shift1247, !dbg !226
  %v_column.sroa.0.0.insert.ext1107 = and i64 %405, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1109 = or disjoint i64 %v_column.sroa.66.0.insert.insert1249, %v_column.sroa.0.0.insert.ext1107, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1109, ptr addrspace(3) %add.ptr489.4, align 8, !dbg !226
  %v_fetch.sroa.0.2.extract.shift1719 = lshr i64 %405, 16, !dbg !227
  %add478.1.4 = or disjoint i32 %mul477, 256, !dbg !228
  %410 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.1.4, !dbg !225
  %xor485.1.4 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.1.4 = xor i32 %xor485.1.4, 8, !dbg !225
  %add.ptr489.1.4 = getelementptr inbounds i8, ptr addrspace(3) %410, i32 %add.ptr489.idx.1.4, !dbg !225
  %411 = shl i64 %408, 32, !dbg !226
  %v_column.sroa.130.0.insert.ext1561 = and i64 %411, -281474976710656, !dbg !226
  %412 = shl i64 %407, 16, !dbg !226
  %v_column.sroa.98.0.insert.shift1407 = and i64 %412, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1409 = or disjoint i64 %v_column.sroa.130.0.insert.ext1561, %v_column.sroa.98.0.insert.shift1407, !dbg !226
  %v_column.sroa.66.0.insert.ext1251 = and i64 %406, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1254 = or disjoint i64 %v_column.sroa.98.0.insert.insert1409, %v_column.sroa.66.0.insert.ext1251, !dbg !226
  %v_column.sroa.0.0.insert.ext1111 = and i64 %v_fetch.sroa.0.2.extract.shift1719, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1113 = or disjoint i64 %v_column.sroa.66.0.insert.insert1254, %v_column.sroa.0.0.insert.ext1111, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1113, ptr addrspace(3) %add.ptr489.1.4, align 8, !dbg !226
  %v_fetch.sroa.0.4.extract.shift1740 = lshr i64 %405, 32, !dbg !227
  %add478.2.4 = or disjoint i32 %mul477, 512, !dbg !228
  %413 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.2.4, !dbg !225
  %xor485.2.4 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.2.4 = xor i32 %xor485.2.4, 16, !dbg !225
  %add.ptr489.2.4 = getelementptr inbounds i8, ptr addrspace(3) %413, i32 %add.ptr489.idx.2.4, !dbg !225
  %414 = shl i64 %408, 16, !dbg !226
  %v_column.sroa.130.0.insert.ext1566 = and i64 %414, -281474976710656, !dbg !226
  %v_column.sroa.98.0.insert.ext1411 = and i64 %407, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1414 = or disjoint i64 %v_column.sroa.130.0.insert.ext1566, %v_column.sroa.98.0.insert.ext1411, !dbg !226
  %415 = lshr i64 %406, 16, !dbg !226
  %v_column.sroa.66.0.insert.shift1257 = and i64 %415, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1259 = or disjoint i64 %v_column.sroa.98.0.insert.insert1414, %v_column.sroa.66.0.insert.shift1257, !dbg !226
  %v_column.sroa.0.0.insert.ext1115 = and i64 %v_fetch.sroa.0.4.extract.shift1740, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1117 = or disjoint i64 %v_column.sroa.66.0.insert.insert1259, %v_column.sroa.0.0.insert.ext1115, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1117, ptr addrspace(3) %add.ptr489.2.4, align 8, !dbg !226
  %v_fetch.sroa.0.6.extract.shift1761 = lshr i64 %405, 48, !dbg !227
  %v_fetch.sroa.122.30.extract.shift1992 = and i64 %408, -281474976710656, !dbg !226
  %add478.3.4 = or disjoint i32 %mul477, 768, !dbg !228
  %416 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.3.4, !dbg !225
  %xor485.3.4 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.3.4 = xor i32 %xor485.3.4, 24, !dbg !225
  %add.ptr489.3.4 = getelementptr inbounds i8, ptr addrspace(3) %416, i32 %add.ptr489.idx.3.4, !dbg !225
  %417 = lshr i64 %407, 16, !dbg !226
  %v_column.sroa.98.0.insert.shift1417 = and i64 %417, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1419 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1992, %v_column.sroa.98.0.insert.shift1417, !dbg !226
  %418 = lshr i64 %406, 32, !dbg !226
  %v_column.sroa.66.0.insert.shift1262 = and i64 %418, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1264 = or disjoint i64 %v_column.sroa.98.0.insert.insert1419, %v_column.sroa.66.0.insert.shift1262, !dbg !226
  %v_column.sroa.0.0.insert.insert1121 = or disjoint i64 %v_column.sroa.66.0.insert.insert1264, %v_fetch.sroa.0.6.extract.shift1761, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1121, ptr addrspace(3) %add.ptr489.3.4, align 8, !dbg !226
  fence syncscope("warp") release, !dbg !229
  tail call void @llvm.mxc.barrier.warp(), !dbg !232
  fence syncscope("warp") acquire, !dbg !233
  %add506.4 = or disjoint i32 %mul499, %mul505, !dbg !234
  %419 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.4, !dbg !235
  %add.ptr516.idx.4 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.4 = getelementptr inbounds i8, ptr addrspace(3) %419, i32 %add.ptr516.idx.4, !dbg !235
  %420 = load <4 x half>, ptr addrspace(3) %add.ptr516.4, align 8, !dbg !236
  %add501.1.4 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.1.4 = or disjoint i32 %add501.1.4, 64, !dbg !234
  %421 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.1.4, !dbg !235
  %xor512.1.4 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.1.4 = xor i32 %xor512.1.4, 8, !dbg !235
  %add.ptr516.1.4 = getelementptr inbounds i8, ptr addrspace(3) %421, i32 %add.ptr516.idx.1.4, !dbg !235
  %422 = load <4 x half>, ptr addrspace(3) %add.ptr516.1.4, align 8, !dbg !236
  %add501.2.4 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.2.4 = or disjoint i32 %add501.2.4, 128, !dbg !234
  %423 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.2.4, !dbg !235
  %xor512.2.4 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.2.4 = xor i32 %xor512.2.4, 16, !dbg !235
  %add.ptr516.2.4 = getelementptr inbounds i8, ptr addrspace(3) %423, i32 %add.ptr516.idx.2.4, !dbg !235
  %424 = load <4 x half>, ptr addrspace(3) %add.ptr516.2.4, align 8, !dbg !236
  %add501.3.4 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.3.4 = or disjoint i32 %add501.3.4, 192, !dbg !234
  %425 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.3.4, !dbg !235
  %xor512.3.4 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.3.4 = xor i32 %xor512.3.4, 24, !dbg !235
  %add.ptr516.3.4 = getelementptr inbounds i8, ptr addrspace(3) %425, i32 %add.ptr516.idx.3.4, !dbg !235
  %426 = load <4 x half>, ptr addrspace(3) %add.ptr516.3.4, align 8, !dbg !236
  %427 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %420, <4 x half> %390, <4 x float> %numerator.sroa.0.12.vec.insert2528), !dbg !237
  %428 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %422, <4 x half> %390, <4 x float> %numerator.sroa.98.28.vec.insert2684), !dbg !237
  %429 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %424, <4 x half> %390, <4 x float> %numerator.sroa.194.44.vec.insert2840), !dbg !237
  %430 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %426, <4 x half> %390, <4 x float> %numerator.sroa.290.60.vec.insert2996), !dbg !237
  %add422.4 = fadd contract float %mul312.4, %add418.4, !dbg !238
  br label %if.end542.4, !dbg !239

if.end542.4:                                      ; preds = %if.then.4, %if.end542.3
  %numerator.sroa.290.4 = phi <4 x float> [ %numerator.sroa.290.3, %if.end542.3 ], [ %430, %if.then.4 ], !dbg !240
  %numerator.sroa.194.4 = phi <4 x float> [ %numerator.sroa.194.3, %if.end542.3 ], [ %429, %if.then.4 ], !dbg !240
  %numerator.sroa.98.4 = phi <4 x float> [ %numerator.sroa.98.3, %if.end542.3 ], [ %428, %if.then.4 ], !dbg !240
  %numerator.sroa.0.4 = phi <4 x float> [ %numerator.sroa.0.3, %if.end542.3 ], [ %427, %if.then.4 ], !dbg !240
  %maximum.sroa.0.1.4 = phi float [ %maximum.sroa.0.1.3, %if.end542.3 ], [ %373, %if.then.4 ], !dbg !240
  %denominator.sroa.0.1.4 = phi float [ %denominator.sroa.0.1.3, %if.end542.3 ], [ %add422.4, %if.then.4 ], !dbg !240
  %431 = or disjoint i64 %16, 5, !dbg !241
  %arrayidx108.5 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %431, !dbg !67
  %432 = load i32, ptr addrspace(1) %arrayidx108.5, align 4, !dbg !67, !tbaa !30
  %mul109.5 = shl nsw i32 %432, 4, !dbg !68
  %cmp110.5 = icmp slt i32 %432, 0, !dbg !69
  %cmp112.not.5 = icmp sgt i32 %mul109.5, %1
  %or.cond.5 = select i1 %cmp110.5, i1 true, i1 %cmp112.not.5, !dbg !70
  br i1 %or.cond.5, label %if.end542.5, label %if.then.5, !dbg !70

if.then.5:                                        ; preds = %if.end542.4
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %conv122.5 = zext nneg i32 %mul109.5 to i64
  %.idx.5 = shl nuw nsw i64 %conv122.5, 7
  %gep.5 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep868, i64 %.idx.5, !dbg !76
  %.idx876.5 = shl nuw nsw i64 %conv, 17, !dbg !77
  %433 = getelementptr inbounds i8, ptr addrspace(4) %gep.5, i64 %.idx876.5, !dbg !77
  %qk_fetch.sroa.0.0.copyload3530 = load i16, ptr addrspace(4) %433, align 16, !dbg !78
  %qk_fetch.sroa.56.0..sroa_idx3551 = getelementptr inbounds i8, ptr addrspace(4) %433, i64 2, !dbg !78
  %qk_fetch.sroa.56.0.copyload3552 = load i16, ptr addrspace(4) %qk_fetch.sroa.56.0..sroa_idx3551, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.92.0..sroa_idx3575 = getelementptr inbounds i8, ptr addrspace(4) %433, i64 4, !dbg !78
  %qk_fetch.sroa.92.0.copyload3576 = load i16, ptr addrspace(4) %qk_fetch.sroa.92.0..sroa_idx3575, align 4, !dbg !78
  %qk_fetch.sroa.128.0..sroa_idx3599 = getelementptr inbounds i8, ptr addrspace(4) %433, i64 6, !dbg !78
  %qk_fetch.sroa.128.0.copyload3600 = load i16, ptr addrspace(4) %qk_fetch.sroa.128.0..sroa_idx3599, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.164.0..sroa_idx3623 = getelementptr inbounds i8, ptr addrspace(4) %433, i64 8, !dbg !78
  %qk_fetch.sroa.164.0.copyload3624 = load i16, ptr addrspace(4) %qk_fetch.sroa.164.0..sroa_idx3623, align 8, !dbg !78
  %qk_fetch.sroa.200.0..sroa_idx3647 = getelementptr inbounds i8, ptr addrspace(4) %433, i64 10, !dbg !78
  %qk_fetch.sroa.200.0.copyload3648 = load i16, ptr addrspace(4) %qk_fetch.sroa.200.0..sroa_idx3647, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.236.0..sroa_idx3671 = getelementptr inbounds i8, ptr addrspace(4) %433, i64 12, !dbg !78
  %qk_fetch.sroa.236.0.copyload3672 = load i16, ptr addrspace(4) %qk_fetch.sroa.236.0..sroa_idx3671, align 4, !dbg !78
  %qk_fetch.sroa.272.0..sroa_idx3695 = getelementptr inbounds i8, ptr addrspace(4) %433, i64 14, !dbg !78
  %qk_fetch.sroa.272.0.copyload3696 = load i16, ptr addrspace(4) %qk_fetch.sroa.272.0..sroa_idx3695, align 2, !dbg !78, !tbaa !30
  %.sroa.speculated4060 = select i1 %cmp19, i16 %qk_fetch.sroa.0.0.copyload3530, i16 %qk_fetch.sroa.164.0.copyload3624, !dbg !79
  %.sroa.speculated3952 = select i1 %cmp19, i16 %qk_fetch.sroa.56.0.copyload3552, i16 %qk_fetch.sroa.200.0.copyload3648, !dbg !79
  %.sroa.speculated3844 = select i1 %cmp19, i16 %qk_fetch.sroa.92.0.copyload3576, i16 %qk_fetch.sroa.236.0.copyload3672, !dbg !79
  %.sroa.speculated3736 = select i1 %cmp19, i16 %qk_fetch.sroa.128.0.copyload3600, i16 %qk_fetch.sroa.272.0.copyload3696, !dbg !79
  %.sroa.speculated4057 = select i1 %cmp19, i16 %qk_fetch.sroa.164.0.copyload3624, i16 %qk_fetch.sroa.0.0.copyload3530, !dbg !79
  %.sroa.speculated3949 = select i1 %cmp19, i16 %qk_fetch.sroa.200.0.copyload3648, i16 %qk_fetch.sroa.56.0.copyload3552, !dbg !79
  %.sroa.speculated3841 = select i1 %cmp19, i16 %qk_fetch.sroa.236.0.copyload3672, i16 %qk_fetch.sroa.92.0.copyload3576, !dbg !79
  %.sroa.speculated3733 = select i1 %cmp19, i16 %qk_fetch.sroa.272.0.copyload3696, i16 %qk_fetch.sroa.128.0.copyload3600, !dbg !79
  store i16 %.sroa.speculated4060, ptr addrspace(3) %invariant.gep840, align 16, !dbg !80
  store i16 %.sroa.speculated3952, ptr addrspace(3) %qk_ordered.sroa.38.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3844, ptr addrspace(3) %qk_ordered.sroa.56.0.invariant.gep840.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3736, ptr addrspace(3) %qk_ordered.sroa.74.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated4057, ptr addrspace(3) %qk_ordered.sroa.92.0.invariant.gep840.sroa_idx, align 8, !dbg !80
  store i16 %.sroa.speculated3949, ptr addrspace(3) %qk_ordered.sroa.110.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3841, ptr addrspace(3) %qk_ordered.sroa.128.0.invariant.gep840.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3733, ptr addrspace(3) %qk_ordered.sroa.146.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  %gep848.1.5 = getelementptr inbounds i8, ptr addrspace(4) %433, i64 1024, !dbg !77
  %qk_fetch.sroa.0.0.copyload3531 = load i16, ptr addrspace(4) %gep848.1.5, align 16, !dbg !78
  %qk_fetch.sroa.56.0.gep848.1.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %433, i64 1026, !dbg !78
  %qk_fetch.sroa.56.0.copyload3553 = load i16, ptr addrspace(4) %qk_fetch.sroa.56.0.gep848.1.5.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.92.0.gep848.1.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %433, i64 1028, !dbg !78
  %qk_fetch.sroa.92.0.copyload3577 = load i16, ptr addrspace(4) %qk_fetch.sroa.92.0.gep848.1.5.sroa_idx, align 4, !dbg !78
  %qk_fetch.sroa.128.0.gep848.1.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %433, i64 1030, !dbg !78
  %qk_fetch.sroa.128.0.copyload3601 = load i16, ptr addrspace(4) %qk_fetch.sroa.128.0.gep848.1.5.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.164.0.gep848.1.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %433, i64 1032, !dbg !78
  %qk_fetch.sroa.164.0.copyload3625 = load i16, ptr addrspace(4) %qk_fetch.sroa.164.0.gep848.1.5.sroa_idx, align 8, !dbg !78
  %qk_fetch.sroa.200.0.gep848.1.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %433, i64 1034, !dbg !78
  %qk_fetch.sroa.200.0.copyload3649 = load i16, ptr addrspace(4) %qk_fetch.sroa.200.0.gep848.1.5.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.236.0.gep848.1.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %433, i64 1036, !dbg !78
  %qk_fetch.sroa.236.0.copyload3673 = load i16, ptr addrspace(4) %qk_fetch.sroa.236.0.gep848.1.5.sroa_idx, align 4, !dbg !78
  %qk_fetch.sroa.272.0.gep848.1.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %433, i64 1038, !dbg !78
  %qk_fetch.sroa.272.0.copyload3697 = load i16, ptr addrspace(4) %qk_fetch.sroa.272.0.gep848.1.5.sroa_idx, align 2, !dbg !78, !tbaa !30
  %.sroa.speculated4054 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.164.0.copyload3625, i16 %qk_fetch.sroa.0.0.copyload3531, !dbg !79
  %.sroa.speculated3946 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.200.0.copyload3649, i16 %qk_fetch.sroa.56.0.copyload3553, !dbg !79
  %.sroa.speculated3838 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.236.0.copyload3673, i16 %qk_fetch.sroa.92.0.copyload3577, !dbg !79
  %.sroa.speculated3730 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.272.0.copyload3697, i16 %qk_fetch.sroa.128.0.copyload3601, !dbg !79
  %.sroa.speculated4051 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.0.0.copyload3531, i16 %qk_fetch.sroa.164.0.copyload3625, !dbg !79
  %.sroa.speculated3943 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.56.0.copyload3553, i16 %qk_fetch.sroa.200.0.copyload3649, !dbg !79
  %.sroa.speculated3835 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.92.0.copyload3577, i16 %qk_fetch.sroa.236.0.copyload3673, !dbg !79
  %.sroa.speculated3727 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.128.0.copyload3601, i16 %qk_fetch.sroa.272.0.copyload3697, !dbg !79
  store i16 %.sroa.speculated4054, ptr addrspace(3) %gep841.1, align 16, !dbg !80
  store i16 %.sroa.speculated3946, ptr addrspace(3) %qk_ordered.sroa.38.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3838, ptr addrspace(3) %qk_ordered.sroa.56.0.gep841.1.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3730, ptr addrspace(3) %qk_ordered.sroa.74.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated4051, ptr addrspace(3) %qk_ordered.sroa.92.0.gep841.1.sroa_idx, align 8, !dbg !80
  store i16 %.sroa.speculated3943, ptr addrspace(3) %qk_ordered.sroa.110.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3835, ptr addrspace(3) %qk_ordered.sroa.128.0.gep841.1.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3727, ptr addrspace(3) %qk_ordered.sroa.146.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  fence syncscope("warp") release, !dbg !81
  tail call void @llvm.mxc.barrier.warp(), !dbg !84
  fence syncscope("warp") acquire, !dbg !85
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %add.ptr74, align 8, !dbg !86
  %434 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %6, <4 x float> zeroinitializer), !dbg !87
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr74.1, align 8, !dbg !86
  %435 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %7, <4 x float> %434), !dbg !87
  %k_local.sroa.0.0.copyload.2.5 = load <4 x half>, ptr addrspace(3) %add.ptr74.2, align 8, !dbg !86
  %436 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.5, <4 x half> %8, <4 x float> %435), !dbg !87
  %k_local.sroa.0.0.copyload.3.5 = load <4 x half>, ptr addrspace(3) %add.ptr74.3, align 8, !dbg !86
  %437 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.5, <4 x half> %9, <4 x float> %436), !dbg !87
  %add230.5 = add nuw nsw i32 %mul109.5, %mul229
  %cmp233.not.5 = icmp sgt i32 %add230.5, %1, !dbg !88
  %scores.sroa.0.0.vec.extract2133 = extractelement <4 x float> %437, i64 0
  %spec.select4417 = select i1 %cmp233.not.5, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2133, !dbg !89
  %cmp233.not.1.5.not = icmp slt i32 %add230.5, %1, !dbg !88
  %scores.sroa.0.4.vec.extract2220 = extractelement <4 x float> %437, i64 1, !dbg !89
  %condval.0.1.5 = select i1 %cmp233.not.1.5.not, float %scores.sroa.0.4.vec.extract2220, float 0xFFF0000000000000, !dbg !89
  %add231.2.5 = or disjoint i32 %add230.5, 2, !dbg !90
  %cmp233.not.2.5 = icmp sgt i32 %add231.2.5, %1, !dbg !88
  %scores.sroa.0.8.vec.extract2297 = extractelement <4 x float> %437, i64 2, !dbg !89
  %condval.0.2.5 = select i1 %cmp233.not.2.5, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2297, !dbg !89
  %add231.3.5 = or disjoint i32 %add230.5, 3, !dbg !90
  %cmp233.not.3.5 = icmp sgt i32 %add231.3.5, %1, !dbg !88
  %scores.sroa.0.12.vec.extract2374 = extractelement <4 x float> %437, i64 3, !dbg !89
  %condval.0.3.5 = select i1 %cmp233.not.3.5, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2374, !dbg !89
  %438 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select4417, float 0xFFF0000000000000), !dbg !91
  %439 = tail call contract noundef float @llvm.maxnum.f32(float %438, float %condval.0.1.5), !dbg !91
  %440 = tail call contract noundef float @llvm.maxnum.f32(float %439, float %condval.0.2.5), !dbg !91
  %441 = tail call contract noundef float @llvm.maxnum.f32(float %440, float %condval.0.3.5), !dbg !91
  %442 = bitcast float %441 to i32, !dbg !95
  %443 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !98
  %444 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %443) #11, !dbg !103
  %xor.i.i.5 = xor i32 %444, 32, !dbg !104
  %445 = and i32 %444, -64, !dbg !105
  %and.i.i.5 = add nsw i32 %445, 64, !dbg !105
  %cmp.not.i.i.5 = icmp slt i32 %xor.i.i.5, %and.i.i.5, !dbg !106
  %cond.i.i.5 = select i1 %cmp.not.i.i.5, i32 %xor.i.i.5, i32 %444, !dbg !107
  %shl.i.i.5 = shl i32 %cond.i.i.5, 2, !dbg !108
  %446 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.5, i32 %442), !dbg !109
  %447 = bitcast i32 %446 to float, !dbg !110
  %448 = tail call contract noundef float @llvm.maxnum.f32(float %441, float %447), !dbg !111
  %449 = bitcast float %448 to i32, !dbg !113
  %450 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !115
  %451 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %450) #11, !dbg !118
  %xor.i.i779.5 = xor i32 %451, 16, !dbg !119
  %452 = and i32 %451, -64, !dbg !120
  %and.i.i780.5 = add nsw i32 %452, 64, !dbg !120
  %cmp.not.i.i781.5 = icmp slt i32 %xor.i.i779.5, %and.i.i780.5, !dbg !121
  %cond.i.i782.5 = select i1 %cmp.not.i.i781.5, i32 %xor.i.i779.5, i32 %451, !dbg !122
  %shl.i.i783.5 = shl i32 %cond.i.i782.5, 2, !dbg !123
  %453 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i783.5, i32 %449), !dbg !124
  %454 = bitcast i32 %453 to float, !dbg !125
  %455 = tail call contract noundef float @llvm.maxnum.f32(float %448, float %454), !dbg !126
  %456 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.4, float %455), !dbg !128
  %sub.5 = fsub contract float %maximum.sroa.0.1.4, %456, !dbg !130
  %mul275.5 = fmul contract float %sub.5, 0x3FC7154760000000, !dbg !131
  %cmp.i.i.5 = fcmp contract olt float %mul275.5, -1.260000e+02, !dbg !132
  %cond.i.i784.5 = select contract i1 %cmp.i.i.5, float 6.400000e+01, float 0.000000e+00, !dbg !132
  %add.i.i.5 = fadd contract float %mul275.5, %cond.i.i784.5, !dbg !132
  %457 = tail call contract float @llvm.exp2.f32(float %add.i.i.5), !dbg !132
  %cond2.i.i.5 = select contract i1 %cmp.i.i.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !132
  %mul.i.i.5 = fmul contract float %cond2.i.i.5, %457, !dbg !132
  %numerator.sroa.0.0.vec.extract2419 = extractelement <4 x float> %numerator.sroa.0.4, i64 0, !dbg !242
  %numerator.sroa.0.4.vec.extract2456 = extractelement <4 x float> %numerator.sroa.0.4, i64 1, !dbg !242
  %numerator.sroa.0.8.vec.extract2493 = extractelement <4 x float> %numerator.sroa.0.4, i64 2, !dbg !242
  %numerator.sroa.0.12.vec.extract2530 = extractelement <4 x float> %numerator.sroa.0.4, i64 3, !dbg !242
  %mul292.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.0.vec.extract2419, !dbg !135
  %mul295.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.4.vec.extract2456, !dbg !243
  %mul298.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.8.vec.extract2493, !dbg !244
  %mul301.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.12.vec.extract2530, !dbg !245
  %numerator.sroa.0.0.vec.insert2421 = insertelement <4 x float> poison, float %mul292.5, i64 0, !dbg !136
  %numerator.sroa.0.4.vec.insert2458 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2421, float %mul295.5, i64 1, !dbg !136
  %numerator.sroa.0.8.vec.insert2495 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2458, float %mul298.5, i64 2, !dbg !136
  %numerator.sroa.0.12.vec.insert2532 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2495, float %mul301.5, i64 3, !dbg !136
  %numerator.sroa.98.16.vec.extract2575 = extractelement <4 x float> %numerator.sroa.98.4, i64 0, !dbg !242
  %numerator.sroa.98.20.vec.extract2612 = extractelement <4 x float> %numerator.sroa.98.4, i64 1, !dbg !242
  %numerator.sroa.98.24.vec.extract2649 = extractelement <4 x float> %numerator.sroa.98.4, i64 2, !dbg !242
  %numerator.sroa.98.28.vec.extract2686 = extractelement <4 x float> %numerator.sroa.98.4, i64 3, !dbg !242
  %mul292.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.16.vec.extract2575, !dbg !135
  %mul295.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.20.vec.extract2612, !dbg !243
  %mul298.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.24.vec.extract2649, !dbg !244
  %mul301.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.28.vec.extract2686, !dbg !245
  %numerator.sroa.98.16.vec.insert2577 = insertelement <4 x float> poison, float %mul292.1.5, i64 0, !dbg !136
  %numerator.sroa.98.20.vec.insert2614 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2577, float %mul295.1.5, i64 1, !dbg !136
  %numerator.sroa.98.24.vec.insert2651 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2614, float %mul298.1.5, i64 2, !dbg !136
  %numerator.sroa.98.28.vec.insert2688 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2651, float %mul301.1.5, i64 3, !dbg !136
  %numerator.sroa.194.32.vec.extract2731 = extractelement <4 x float> %numerator.sroa.194.4, i64 0, !dbg !242
  %numerator.sroa.194.36.vec.extract2768 = extractelement <4 x float> %numerator.sroa.194.4, i64 1, !dbg !242
  %numerator.sroa.194.40.vec.extract2805 = extractelement <4 x float> %numerator.sroa.194.4, i64 2, !dbg !242
  %numerator.sroa.194.44.vec.extract2842 = extractelement <4 x float> %numerator.sroa.194.4, i64 3, !dbg !242
  %mul292.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.32.vec.extract2731, !dbg !135
  %mul295.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.36.vec.extract2768, !dbg !243
  %mul298.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.40.vec.extract2805, !dbg !244
  %mul301.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.44.vec.extract2842, !dbg !245
  %numerator.sroa.194.32.vec.insert2733 = insertelement <4 x float> poison, float %mul292.2.5, i64 0, !dbg !136
  %numerator.sroa.194.36.vec.insert2770 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2733, float %mul295.2.5, i64 1, !dbg !136
  %numerator.sroa.194.40.vec.insert2807 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2770, float %mul298.2.5, i64 2, !dbg !136
  %numerator.sroa.194.44.vec.insert2844 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2807, float %mul301.2.5, i64 3, !dbg !136
  %numerator.sroa.290.48.vec.extract2887 = extractelement <4 x float> %numerator.sroa.290.4, i64 0, !dbg !242
  %numerator.sroa.290.52.vec.extract2924 = extractelement <4 x float> %numerator.sroa.290.4, i64 1, !dbg !242
  %numerator.sroa.290.56.vec.extract2961 = extractelement <4 x float> %numerator.sroa.290.4, i64 2, !dbg !242
  %numerator.sroa.290.60.vec.extract2998 = extractelement <4 x float> %numerator.sroa.290.4, i64 3, !dbg !242
  %mul292.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.48.vec.extract2887, !dbg !135
  %mul295.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.52.vec.extract2924, !dbg !243
  %mul298.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.56.vec.extract2961, !dbg !244
  %mul301.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.60.vec.extract2998, !dbg !245
  %numerator.sroa.290.48.vec.insert2889 = insertelement <4 x float> poison, float %mul292.3.5, i64 0, !dbg !136
  %numerator.sroa.290.52.vec.insert2926 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2889, float %mul295.3.5, i64 1, !dbg !136
  %numerator.sroa.290.56.vec.insert2963 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2926, float %mul298.3.5, i64 2, !dbg !136
  %numerator.sroa.290.60.vec.insert3000 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2963, float %mul301.3.5, i64 3, !dbg !136
  %sub325.5 = fsub contract float %spec.select4417, %456, !dbg !137
  %sub329.5 = fsub contract float %condval.0.1.5, %456, !dbg !138
  %sub333.5 = fsub contract float %condval.0.2.5, %456, !dbg !139
  %sub337.5 = fsub contract float %condval.0.3.5, %456, !dbg !140
  %mul342.5 = fmul contract float %sub325.5, 0x3FC7154760000000, !dbg !141
  %mul346.5 = fmul contract float %sub329.5, 0x3FC7154760000000, !dbg !142
  %mul350.5 = fmul contract float %sub333.5, 0x3FC7154760000000, !dbg !143
  %mul354.5 = fmul contract float %sub337.5, 0x3FC7154760000000, !dbg !144
  %add359.5 = fadd contract float %mul342.5, 8.000000e+00, !dbg !145
  %add363.5 = fadd contract float %mul346.5, 8.000000e+00, !dbg !146
  %add367.5 = fadd contract float %mul350.5, 8.000000e+00, !dbg !147
  %add371.5 = fadd contract float %mul354.5, 8.000000e+00, !dbg !148
  %cmp.i.i785.5 = fcmp contract olt float %add359.5, -1.260000e+02, !dbg !149
  %cond.i.i786.5 = select contract i1 %cmp.i.i785.5, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i787.5 = fadd contract float %add359.5, %cond.i.i786.5, !dbg !149
  %458 = tail call contract float @llvm.exp2.f32(float %add.i.i787.5), !dbg !149
  %cond2.i.i788.5 = select contract i1 %cmp.i.i785.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i789.5 = fmul contract float %cond2.i.i788.5, %458, !dbg !149
  %cmp.i.i790.5 = fcmp contract olt float %add363.5, -1.260000e+02, !dbg !151
  %cond.i.i791.5 = select contract i1 %cmp.i.i790.5, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i792.5 = fadd contract float %add363.5, %cond.i.i791.5, !dbg !151
  %459 = tail call contract float @llvm.exp2.f32(float %add.i.i792.5), !dbg !151
  %cond2.i.i793.5 = select contract i1 %cmp.i.i790.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i794.5 = fmul contract float %cond2.i.i793.5, %459, !dbg !151
  %cmp.i.i795.5 = fcmp contract olt float %add367.5, -1.260000e+02, !dbg !153
  %cond.i.i796.5 = select contract i1 %cmp.i.i795.5, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i797.5 = fadd contract float %add367.5, %cond.i.i796.5, !dbg !153
  %460 = tail call contract float @llvm.exp2.f32(float %add.i.i797.5), !dbg !153
  %cond2.i.i798.5 = select contract i1 %cmp.i.i795.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i799.5 = fmul contract float %cond2.i.i798.5, %460, !dbg !153
  %cmp.i.i800.5 = fcmp contract olt float %add371.5, -1.260000e+02, !dbg !155
  %cond.i.i801.5 = select contract i1 %cmp.i.i800.5, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i802.5 = fadd contract float %add371.5, %cond.i.i801.5, !dbg !155
  %461 = tail call contract float @llvm.exp2.f32(float %add.i.i802.5), !dbg !155
  %cond2.i.i803.5 = select contract i1 %cmp.i.i800.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i804.5 = fmul contract float %cond2.i.i803.5, %461, !dbg !155
  %462 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %463 = fptrunc float %mul.i.i789.5 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %462), !dbg !157, !noalias !165
  %464 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %465 = fptrunc float %mul.i.i794.5 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %464), !dbg !170, !noalias !165
  %466 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %467 = fptrunc float %mul.i.i799.5 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %466), !dbg !172, !noalias !176
  %468 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %469 = fptrunc float %mul.i.i804.5 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %468), !dbg !181, !noalias !176
  %470 = insertelement <4 x half> poison, half %463, i64 0, !dbg !183
  %471 = insertelement <4 x half> %470, half %465, i64 1, !dbg !183
  %472 = insertelement <4 x half> %471, half %467, i64 2, !dbg !183
  %473 = insertelement <4 x half> %472, half %469, i64 3, !dbg !183
  %conv.i.i.5 = fpext half %463 to float, !dbg !184
  %add405.5 = fadd contract float %conv.i.i.5, 0.000000e+00, !dbg !189
  %conv.i.i.1.5 = fpext half %465 to float, !dbg !184
  %add405.1.5 = fadd contract float %add405.5, %conv.i.i.1.5, !dbg !189
  %conv.i.i.2.5 = fpext half %467 to float, !dbg !184
  %add405.2.5 = fadd contract float %add405.1.5, %conv.i.i.2.5, !dbg !189
  %conv.i.i.3.5 = fpext half %469 to float, !dbg !184
  %add405.3.5 = fadd contract float %add405.2.5, %conv.i.i.3.5, !dbg !189
  %474 = bitcast float %add405.3.5 to i32, !dbg !190
  %475 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !192
  %476 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %475) #11, !dbg !195
  %xor.i.i810.5 = xor i32 %476, 32, !dbg !196
  %477 = and i32 %476, -64, !dbg !197
  %and.i.i811.5 = add nsw i32 %477, 64, !dbg !197
  %cmp.not.i.i812.5 = icmp slt i32 %xor.i.i810.5, %and.i.i811.5, !dbg !198
  %cond.i.i813.5 = select i1 %cmp.not.i.i812.5, i32 %xor.i.i810.5, i32 %476, !dbg !199
  %shl.i.i814.5 = shl i32 %cond.i.i813.5, 2, !dbg !200
  %478 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i814.5, i32 %474), !dbg !201
  %479 = bitcast i32 %478 to float, !dbg !202
  %add413.5 = fadd contract float %add405.3.5, %479, !dbg !203
  %480 = bitcast float %add413.5 to i32, !dbg !204
  %481 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !206
  %482 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %481) #11, !dbg !209
  %xor.i.i815.5 = xor i32 %482, 16, !dbg !210
  %483 = and i32 %482, -64, !dbg !211
  %and.i.i816.5 = add nsw i32 %483, 64, !dbg !211
  %cmp.not.i.i817.5 = icmp slt i32 %xor.i.i815.5, %and.i.i816.5, !dbg !212
  %cond.i.i818.5 = select i1 %cmp.not.i.i817.5, i32 %xor.i.i815.5, i32 %482, !dbg !213
  %shl.i.i819.5 = shl i32 %cond.i.i818.5, 2, !dbg !214
  %484 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i819.5, i32 %480), !dbg !215
  %485 = bitcast i32 %484 to float, !dbg !216
  %add418.5 = fadd contract float %add413.5, %485, !dbg !217
  fence syncscope("warp") release, !dbg !218
  tail call void @llvm.mxc.barrier.warp(), !dbg !221
  fence syncscope("warp") acquire, !dbg !222
  %486 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add438, !dbg !223
  %487 = getelementptr inbounds i8, ptr addrspace(4) %486, i64 %.idx.5, !dbg !223
  %488 = load i64, ptr addrspace(4) %487, align 8, !dbg !224
  %add.ptr447.1.5 = getelementptr inbounds i8, ptr addrspace(4) %487, i64 128, !dbg !223
  %489 = load i64, ptr addrspace(4) %add.ptr447.1.5, align 8, !dbg !224
  %add.ptr447.2.5 = getelementptr inbounds i8, ptr addrspace(4) %487, i64 256, !dbg !223
  %490 = load i64, ptr addrspace(4) %add.ptr447.2.5, align 8, !dbg !224
  %add.ptr447.3.5 = getelementptr inbounds i8, ptr addrspace(4) %487, i64 384, !dbg !223
  %491 = load i64, ptr addrspace(4) %add.ptr447.3.5, align 8, !dbg !224
  %mul312.5 = fmul contract float %denominator.sroa.0.1.4, %mul.i.i.5, !dbg !246
  %492 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul477, !dbg !225
  %add.ptr489.idx.5 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.5 = getelementptr inbounds i8, ptr addrspace(3) %492, i32 %add.ptr489.idx.5, !dbg !225
  %v_column.sroa.130.0.insert.ext1576 = shl i64 %491, 48, !dbg !226
  %v_column.sroa.98.0.insert.ext1421 = shl i64 %490, 32, !dbg !226
  %v_column.sroa.98.0.insert.shift1422 = and i64 %v_column.sroa.98.0.insert.ext1421, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1424 = or disjoint i64 %v_column.sroa.130.0.insert.ext1576, %v_column.sroa.98.0.insert.shift1422, !dbg !226
  %v_column.sroa.66.0.insert.ext1266 = shl i64 %489, 16, !dbg !226
  %v_column.sroa.66.0.insert.shift1267 = and i64 %v_column.sroa.66.0.insert.ext1266, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1269 = or disjoint i64 %v_column.sroa.98.0.insert.insert1424, %v_column.sroa.66.0.insert.shift1267, !dbg !226
  %v_column.sroa.0.0.insert.ext1123 = and i64 %488, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1125 = or disjoint i64 %v_column.sroa.66.0.insert.insert1269, %v_column.sroa.0.0.insert.ext1123, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1125, ptr addrspace(3) %add.ptr489.5, align 8, !dbg !226
  %v_fetch.sroa.0.2.extract.shift1722 = lshr i64 %488, 16, !dbg !227
  %add478.1.5 = or disjoint i32 %mul477, 256, !dbg !228
  %493 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.1.5, !dbg !225
  %xor485.1.5 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.1.5 = xor i32 %xor485.1.5, 8, !dbg !225
  %add.ptr489.1.5 = getelementptr inbounds i8, ptr addrspace(3) %493, i32 %add.ptr489.idx.1.5, !dbg !225
  %494 = shl i64 %491, 32, !dbg !226
  %v_column.sroa.130.0.insert.ext1581 = and i64 %494, -281474976710656, !dbg !226
  %495 = shl i64 %490, 16, !dbg !226
  %v_column.sroa.98.0.insert.shift1427 = and i64 %495, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1429 = or disjoint i64 %v_column.sroa.130.0.insert.ext1581, %v_column.sroa.98.0.insert.shift1427, !dbg !226
  %v_column.sroa.66.0.insert.ext1271 = and i64 %489, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1274 = or disjoint i64 %v_column.sroa.98.0.insert.insert1429, %v_column.sroa.66.0.insert.ext1271, !dbg !226
  %v_column.sroa.0.0.insert.ext1127 = and i64 %v_fetch.sroa.0.2.extract.shift1722, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1129 = or disjoint i64 %v_column.sroa.66.0.insert.insert1274, %v_column.sroa.0.0.insert.ext1127, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1129, ptr addrspace(3) %add.ptr489.1.5, align 8, !dbg !226
  %v_fetch.sroa.0.4.extract.shift1743 = lshr i64 %488, 32, !dbg !227
  %add478.2.5 = or disjoint i32 %mul477, 512, !dbg !228
  %496 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.2.5, !dbg !225
  %xor485.2.5 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.2.5 = xor i32 %xor485.2.5, 16, !dbg !225
  %add.ptr489.2.5 = getelementptr inbounds i8, ptr addrspace(3) %496, i32 %add.ptr489.idx.2.5, !dbg !225
  %497 = shl i64 %491, 16, !dbg !226
  %v_column.sroa.130.0.insert.ext1586 = and i64 %497, -281474976710656, !dbg !226
  %v_column.sroa.98.0.insert.ext1431 = and i64 %490, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1434 = or disjoint i64 %v_column.sroa.130.0.insert.ext1586, %v_column.sroa.98.0.insert.ext1431, !dbg !226
  %498 = lshr i64 %489, 16, !dbg !226
  %v_column.sroa.66.0.insert.shift1277 = and i64 %498, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1279 = or disjoint i64 %v_column.sroa.98.0.insert.insert1434, %v_column.sroa.66.0.insert.shift1277, !dbg !226
  %v_column.sroa.0.0.insert.ext1131 = and i64 %v_fetch.sroa.0.4.extract.shift1743, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1133 = or disjoint i64 %v_column.sroa.66.0.insert.insert1279, %v_column.sroa.0.0.insert.ext1131, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1133, ptr addrspace(3) %add.ptr489.2.5, align 8, !dbg !226
  %v_fetch.sroa.0.6.extract.shift1764 = lshr i64 %488, 48, !dbg !227
  %v_fetch.sroa.122.30.extract.shift1995 = and i64 %491, -281474976710656, !dbg !226
  %add478.3.5 = or disjoint i32 %mul477, 768, !dbg !228
  %499 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.3.5, !dbg !225
  %xor485.3.5 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.3.5 = xor i32 %xor485.3.5, 24, !dbg !225
  %add.ptr489.3.5 = getelementptr inbounds i8, ptr addrspace(3) %499, i32 %add.ptr489.idx.3.5, !dbg !225
  %500 = lshr i64 %490, 16, !dbg !226
  %v_column.sroa.98.0.insert.shift1437 = and i64 %500, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1439 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1995, %v_column.sroa.98.0.insert.shift1437, !dbg !226
  %501 = lshr i64 %489, 32, !dbg !226
  %v_column.sroa.66.0.insert.shift1282 = and i64 %501, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1284 = or disjoint i64 %v_column.sroa.98.0.insert.insert1439, %v_column.sroa.66.0.insert.shift1282, !dbg !226
  %v_column.sroa.0.0.insert.insert1137 = or disjoint i64 %v_column.sroa.66.0.insert.insert1284, %v_fetch.sroa.0.6.extract.shift1764, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1137, ptr addrspace(3) %add.ptr489.3.5, align 8, !dbg !226
  fence syncscope("warp") release, !dbg !229
  tail call void @llvm.mxc.barrier.warp(), !dbg !232
  fence syncscope("warp") acquire, !dbg !233
  %add506.5 = or disjoint i32 %mul499, %mul505, !dbg !234
  %502 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.5, !dbg !235
  %add.ptr516.idx.5 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.5 = getelementptr inbounds i8, ptr addrspace(3) %502, i32 %add.ptr516.idx.5, !dbg !235
  %503 = load <4 x half>, ptr addrspace(3) %add.ptr516.5, align 8, !dbg !236
  %add501.1.5 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.1.5 = or disjoint i32 %add501.1.5, 64, !dbg !234
  %504 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.1.5, !dbg !235
  %xor512.1.5 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.1.5 = xor i32 %xor512.1.5, 8, !dbg !235
  %add.ptr516.1.5 = getelementptr inbounds i8, ptr addrspace(3) %504, i32 %add.ptr516.idx.1.5, !dbg !235
  %505 = load <4 x half>, ptr addrspace(3) %add.ptr516.1.5, align 8, !dbg !236
  %add501.2.5 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.2.5 = or disjoint i32 %add501.2.5, 128, !dbg !234
  %506 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.2.5, !dbg !235
  %xor512.2.5 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.2.5 = xor i32 %xor512.2.5, 16, !dbg !235
  %add.ptr516.2.5 = getelementptr inbounds i8, ptr addrspace(3) %506, i32 %add.ptr516.idx.2.5, !dbg !235
  %507 = load <4 x half>, ptr addrspace(3) %add.ptr516.2.5, align 8, !dbg !236
  %add501.3.5 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.3.5 = or disjoint i32 %add501.3.5, 192, !dbg !234
  %508 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.3.5, !dbg !235
  %xor512.3.5 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.3.5 = xor i32 %xor512.3.5, 24, !dbg !235
  %add.ptr516.3.5 = getelementptr inbounds i8, ptr addrspace(3) %508, i32 %add.ptr516.idx.3.5, !dbg !235
  %509 = load <4 x half>, ptr addrspace(3) %add.ptr516.3.5, align 8, !dbg !236
  %510 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %503, <4 x half> %473, <4 x float> %numerator.sroa.0.12.vec.insert2532), !dbg !237
  %511 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %505, <4 x half> %473, <4 x float> %numerator.sroa.98.28.vec.insert2688), !dbg !237
  %512 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %507, <4 x half> %473, <4 x float> %numerator.sroa.194.44.vec.insert2844), !dbg !237
  %513 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %509, <4 x half> %473, <4 x float> %numerator.sroa.290.60.vec.insert3000), !dbg !237
  %add422.5 = fadd contract float %mul312.5, %add418.5, !dbg !238
  br label %if.end542.5, !dbg !239

if.end542.5:                                      ; preds = %if.then.5, %if.end542.4
  %numerator.sroa.290.5 = phi <4 x float> [ %numerator.sroa.290.4, %if.end542.4 ], [ %513, %if.then.5 ], !dbg !240
  %numerator.sroa.194.5 = phi <4 x float> [ %numerator.sroa.194.4, %if.end542.4 ], [ %512, %if.then.5 ], !dbg !240
  %numerator.sroa.98.5 = phi <4 x float> [ %numerator.sroa.98.4, %if.end542.4 ], [ %511, %if.then.5 ], !dbg !240
  %numerator.sroa.0.5 = phi <4 x float> [ %numerator.sroa.0.4, %if.end542.4 ], [ %510, %if.then.5 ], !dbg !240
  %maximum.sroa.0.1.5 = phi float [ %maximum.sroa.0.1.4, %if.end542.4 ], [ %456, %if.then.5 ], !dbg !240
  %denominator.sroa.0.1.5 = phi float [ %denominator.sroa.0.1.4, %if.end542.4 ], [ %add422.5, %if.then.5 ], !dbg !240
  %514 = or disjoint i64 %16, 6, !dbg !241
  %arrayidx108.6 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %514, !dbg !67
  %515 = load i32, ptr addrspace(1) %arrayidx108.6, align 4, !dbg !67, !tbaa !30
  %mul109.6 = shl nsw i32 %515, 4, !dbg !68
  %cmp110.6 = icmp slt i32 %515, 0, !dbg !69
  %cmp112.not.6 = icmp sgt i32 %mul109.6, %1
  %or.cond.6 = select i1 %cmp110.6, i1 true, i1 %cmp112.not.6, !dbg !70
  br i1 %or.cond.6, label %if.end542.6, label %if.then.6, !dbg !70

if.then.6:                                        ; preds = %if.end542.5
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %conv122.6 = zext nneg i32 %mul109.6 to i64
  %.idx.6 = shl nuw nsw i64 %conv122.6, 7
  %gep.6 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep868, i64 %.idx.6, !dbg !76
  %.idx876.6 = shl nuw nsw i64 %conv, 17, !dbg !77
  %516 = getelementptr inbounds i8, ptr addrspace(4) %gep.6, i64 %.idx876.6, !dbg !77
  %qk_fetch.sroa.0.0.copyload3532 = load i16, ptr addrspace(4) %516, align 16, !dbg !78
  %qk_fetch.sroa.56.0..sroa_idx3554 = getelementptr inbounds i8, ptr addrspace(4) %516, i64 2, !dbg !78
  %qk_fetch.sroa.56.0.copyload3555 = load i16, ptr addrspace(4) %qk_fetch.sroa.56.0..sroa_idx3554, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.92.0..sroa_idx3578 = getelementptr inbounds i8, ptr addrspace(4) %516, i64 4, !dbg !78
  %qk_fetch.sroa.92.0.copyload3579 = load i16, ptr addrspace(4) %qk_fetch.sroa.92.0..sroa_idx3578, align 4, !dbg !78
  %qk_fetch.sroa.128.0..sroa_idx3602 = getelementptr inbounds i8, ptr addrspace(4) %516, i64 6, !dbg !78
  %qk_fetch.sroa.128.0.copyload3603 = load i16, ptr addrspace(4) %qk_fetch.sroa.128.0..sroa_idx3602, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.164.0..sroa_idx3626 = getelementptr inbounds i8, ptr addrspace(4) %516, i64 8, !dbg !78
  %qk_fetch.sroa.164.0.copyload3627 = load i16, ptr addrspace(4) %qk_fetch.sroa.164.0..sroa_idx3626, align 8, !dbg !78
  %qk_fetch.sroa.200.0..sroa_idx3650 = getelementptr inbounds i8, ptr addrspace(4) %516, i64 10, !dbg !78
  %qk_fetch.sroa.200.0.copyload3651 = load i16, ptr addrspace(4) %qk_fetch.sroa.200.0..sroa_idx3650, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.236.0..sroa_idx3674 = getelementptr inbounds i8, ptr addrspace(4) %516, i64 12, !dbg !78
  %qk_fetch.sroa.236.0.copyload3675 = load i16, ptr addrspace(4) %qk_fetch.sroa.236.0..sroa_idx3674, align 4, !dbg !78
  %qk_fetch.sroa.272.0..sroa_idx3698 = getelementptr inbounds i8, ptr addrspace(4) %516, i64 14, !dbg !78
  %qk_fetch.sroa.272.0.copyload3699 = load i16, ptr addrspace(4) %qk_fetch.sroa.272.0..sroa_idx3698, align 2, !dbg !78, !tbaa !30
  %.sroa.speculated4048 = select i1 %cmp19, i16 %qk_fetch.sroa.0.0.copyload3532, i16 %qk_fetch.sroa.164.0.copyload3627, !dbg !79
  %.sroa.speculated3940 = select i1 %cmp19, i16 %qk_fetch.sroa.56.0.copyload3555, i16 %qk_fetch.sroa.200.0.copyload3651, !dbg !79
  %.sroa.speculated3832 = select i1 %cmp19, i16 %qk_fetch.sroa.92.0.copyload3579, i16 %qk_fetch.sroa.236.0.copyload3675, !dbg !79
  %.sroa.speculated3724 = select i1 %cmp19, i16 %qk_fetch.sroa.128.0.copyload3603, i16 %qk_fetch.sroa.272.0.copyload3699, !dbg !79
  %.sroa.speculated4045 = select i1 %cmp19, i16 %qk_fetch.sroa.164.0.copyload3627, i16 %qk_fetch.sroa.0.0.copyload3532, !dbg !79
  %.sroa.speculated3937 = select i1 %cmp19, i16 %qk_fetch.sroa.200.0.copyload3651, i16 %qk_fetch.sroa.56.0.copyload3555, !dbg !79
  %.sroa.speculated3829 = select i1 %cmp19, i16 %qk_fetch.sroa.236.0.copyload3675, i16 %qk_fetch.sroa.92.0.copyload3579, !dbg !79
  %.sroa.speculated3721 = select i1 %cmp19, i16 %qk_fetch.sroa.272.0.copyload3699, i16 %qk_fetch.sroa.128.0.copyload3603, !dbg !79
  store i16 %.sroa.speculated4048, ptr addrspace(3) %invariant.gep840, align 16, !dbg !80
  store i16 %.sroa.speculated3940, ptr addrspace(3) %qk_ordered.sroa.38.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3832, ptr addrspace(3) %qk_ordered.sroa.56.0.invariant.gep840.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3724, ptr addrspace(3) %qk_ordered.sroa.74.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated4045, ptr addrspace(3) %qk_ordered.sroa.92.0.invariant.gep840.sroa_idx, align 8, !dbg !80
  store i16 %.sroa.speculated3937, ptr addrspace(3) %qk_ordered.sroa.110.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3829, ptr addrspace(3) %qk_ordered.sroa.128.0.invariant.gep840.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3721, ptr addrspace(3) %qk_ordered.sroa.146.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  %gep848.1.6 = getelementptr inbounds i8, ptr addrspace(4) %516, i64 1024, !dbg !77
  %qk_fetch.sroa.0.0.copyload3533 = load i16, ptr addrspace(4) %gep848.1.6, align 16, !dbg !78
  %qk_fetch.sroa.56.0.gep848.1.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %516, i64 1026, !dbg !78
  %qk_fetch.sroa.56.0.copyload3556 = load i16, ptr addrspace(4) %qk_fetch.sroa.56.0.gep848.1.6.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.92.0.gep848.1.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %516, i64 1028, !dbg !78
  %qk_fetch.sroa.92.0.copyload3580 = load i16, ptr addrspace(4) %qk_fetch.sroa.92.0.gep848.1.6.sroa_idx, align 4, !dbg !78
  %qk_fetch.sroa.128.0.gep848.1.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %516, i64 1030, !dbg !78
  %qk_fetch.sroa.128.0.copyload3604 = load i16, ptr addrspace(4) %qk_fetch.sroa.128.0.gep848.1.6.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.164.0.gep848.1.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %516, i64 1032, !dbg !78
  %qk_fetch.sroa.164.0.copyload3628 = load i16, ptr addrspace(4) %qk_fetch.sroa.164.0.gep848.1.6.sroa_idx, align 8, !dbg !78
  %qk_fetch.sroa.200.0.gep848.1.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %516, i64 1034, !dbg !78
  %qk_fetch.sroa.200.0.copyload3652 = load i16, ptr addrspace(4) %qk_fetch.sroa.200.0.gep848.1.6.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.236.0.gep848.1.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %516, i64 1036, !dbg !78
  %qk_fetch.sroa.236.0.copyload3676 = load i16, ptr addrspace(4) %qk_fetch.sroa.236.0.gep848.1.6.sroa_idx, align 4, !dbg !78
  %qk_fetch.sroa.272.0.gep848.1.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %516, i64 1038, !dbg !78
  %qk_fetch.sroa.272.0.copyload3700 = load i16, ptr addrspace(4) %qk_fetch.sroa.272.0.gep848.1.6.sroa_idx, align 2, !dbg !78, !tbaa !30
  %.sroa.speculated4042 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.164.0.copyload3628, i16 %qk_fetch.sroa.0.0.copyload3533, !dbg !79
  %.sroa.speculated3934 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.200.0.copyload3652, i16 %qk_fetch.sroa.56.0.copyload3556, !dbg !79
  %.sroa.speculated3826 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.236.0.copyload3676, i16 %qk_fetch.sroa.92.0.copyload3580, !dbg !79
  %.sroa.speculated3718 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.272.0.copyload3700, i16 %qk_fetch.sroa.128.0.copyload3604, !dbg !79
  %.sroa.speculated4039 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.0.0.copyload3533, i16 %qk_fetch.sroa.164.0.copyload3628, !dbg !79
  %.sroa.speculated3931 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.56.0.copyload3556, i16 %qk_fetch.sroa.200.0.copyload3652, !dbg !79
  %.sroa.speculated3823 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.92.0.copyload3580, i16 %qk_fetch.sroa.236.0.copyload3676, !dbg !79
  %.sroa.speculated3715 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.128.0.copyload3604, i16 %qk_fetch.sroa.272.0.copyload3700, !dbg !79
  store i16 %.sroa.speculated4042, ptr addrspace(3) %gep841.1, align 16, !dbg !80
  store i16 %.sroa.speculated3934, ptr addrspace(3) %qk_ordered.sroa.38.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3826, ptr addrspace(3) %qk_ordered.sroa.56.0.gep841.1.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3718, ptr addrspace(3) %qk_ordered.sroa.74.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated4039, ptr addrspace(3) %qk_ordered.sroa.92.0.gep841.1.sroa_idx, align 8, !dbg !80
  store i16 %.sroa.speculated3931, ptr addrspace(3) %qk_ordered.sroa.110.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3823, ptr addrspace(3) %qk_ordered.sroa.128.0.gep841.1.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3715, ptr addrspace(3) %qk_ordered.sroa.146.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  fence syncscope("warp") release, !dbg !81
  tail call void @llvm.mxc.barrier.warp(), !dbg !84
  fence syncscope("warp") acquire, !dbg !85
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %add.ptr74, align 8, !dbg !86
  %517 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %6, <4 x float> zeroinitializer), !dbg !87
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr74.1, align 8, !dbg !86
  %518 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %7, <4 x float> %517), !dbg !87
  %k_local.sroa.0.0.copyload.2.6 = load <4 x half>, ptr addrspace(3) %add.ptr74.2, align 8, !dbg !86
  %519 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.6, <4 x half> %8, <4 x float> %518), !dbg !87
  %k_local.sroa.0.0.copyload.3.6 = load <4 x half>, ptr addrspace(3) %add.ptr74.3, align 8, !dbg !86
  %520 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.6, <4 x half> %9, <4 x float> %519), !dbg !87
  %add230.6 = add nuw nsw i32 %mul109.6, %mul229
  %cmp233.not.6 = icmp sgt i32 %add230.6, %1, !dbg !88
  %scores.sroa.0.0.vec.extract2143 = extractelement <4 x float> %520, i64 0
  %spec.select4418 = select i1 %cmp233.not.6, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2143, !dbg !89
  %cmp233.not.1.6.not = icmp slt i32 %add230.6, %1, !dbg !88
  %scores.sroa.0.4.vec.extract2226 = extractelement <4 x float> %520, i64 1, !dbg !89
  %condval.0.1.6 = select i1 %cmp233.not.1.6.not, float %scores.sroa.0.4.vec.extract2226, float 0xFFF0000000000000, !dbg !89
  %add231.2.6 = or disjoint i32 %add230.6, 2, !dbg !90
  %cmp233.not.2.6 = icmp sgt i32 %add231.2.6, %1, !dbg !88
  %scores.sroa.0.8.vec.extract2303 = extractelement <4 x float> %520, i64 2, !dbg !89
  %condval.0.2.6 = select i1 %cmp233.not.2.6, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2303, !dbg !89
  %add231.3.6 = or disjoint i32 %add230.6, 3, !dbg !90
  %cmp233.not.3.6 = icmp sgt i32 %add231.3.6, %1, !dbg !88
  %scores.sroa.0.12.vec.extract2380 = extractelement <4 x float> %520, i64 3, !dbg !89
  %condval.0.3.6 = select i1 %cmp233.not.3.6, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2380, !dbg !89
  %521 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select4418, float 0xFFF0000000000000), !dbg !91
  %522 = tail call contract noundef float @llvm.maxnum.f32(float %521, float %condval.0.1.6), !dbg !91
  %523 = tail call contract noundef float @llvm.maxnum.f32(float %522, float %condval.0.2.6), !dbg !91
  %524 = tail call contract noundef float @llvm.maxnum.f32(float %523, float %condval.0.3.6), !dbg !91
  %525 = bitcast float %524 to i32, !dbg !95
  %526 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !98
  %527 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %526) #11, !dbg !103
  %xor.i.i.6 = xor i32 %527, 32, !dbg !104
  %528 = and i32 %527, -64, !dbg !105
  %and.i.i.6 = add nsw i32 %528, 64, !dbg !105
  %cmp.not.i.i.6 = icmp slt i32 %xor.i.i.6, %and.i.i.6, !dbg !106
  %cond.i.i.6 = select i1 %cmp.not.i.i.6, i32 %xor.i.i.6, i32 %527, !dbg !107
  %shl.i.i.6 = shl i32 %cond.i.i.6, 2, !dbg !108
  %529 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.6, i32 %525), !dbg !109
  %530 = bitcast i32 %529 to float, !dbg !110
  %531 = tail call contract noundef float @llvm.maxnum.f32(float %524, float %530), !dbg !111
  %532 = bitcast float %531 to i32, !dbg !113
  %533 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !115
  %534 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %533) #11, !dbg !118
  %xor.i.i779.6 = xor i32 %534, 16, !dbg !119
  %535 = and i32 %534, -64, !dbg !120
  %and.i.i780.6 = add nsw i32 %535, 64, !dbg !120
  %cmp.not.i.i781.6 = icmp slt i32 %xor.i.i779.6, %and.i.i780.6, !dbg !121
  %cond.i.i782.6 = select i1 %cmp.not.i.i781.6, i32 %xor.i.i779.6, i32 %534, !dbg !122
  %shl.i.i783.6 = shl i32 %cond.i.i782.6, 2, !dbg !123
  %536 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i783.6, i32 %532), !dbg !124
  %537 = bitcast i32 %536 to float, !dbg !125
  %538 = tail call contract noundef float @llvm.maxnum.f32(float %531, float %537), !dbg !126
  %539 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.5, float %538), !dbg !128
  %sub.6 = fsub contract float %maximum.sroa.0.1.5, %539, !dbg !130
  %mul275.6 = fmul contract float %sub.6, 0x3FC7154760000000, !dbg !131
  %cmp.i.i.6 = fcmp contract olt float %mul275.6, -1.260000e+02, !dbg !132
  %cond.i.i784.6 = select contract i1 %cmp.i.i.6, float 6.400000e+01, float 0.000000e+00, !dbg !132
  %add.i.i.6 = fadd contract float %mul275.6, %cond.i.i784.6, !dbg !132
  %540 = tail call contract float @llvm.exp2.f32(float %add.i.i.6), !dbg !132
  %cond2.i.i.6 = select contract i1 %cmp.i.i.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !132
  %mul.i.i.6 = fmul contract float %cond2.i.i.6, %540, !dbg !132
  %numerator.sroa.0.0.vec.extract2423 = extractelement <4 x float> %numerator.sroa.0.5, i64 0, !dbg !242
  %numerator.sroa.0.4.vec.extract2460 = extractelement <4 x float> %numerator.sroa.0.5, i64 1, !dbg !242
  %numerator.sroa.0.8.vec.extract2497 = extractelement <4 x float> %numerator.sroa.0.5, i64 2, !dbg !242
  %numerator.sroa.0.12.vec.extract2534 = extractelement <4 x float> %numerator.sroa.0.5, i64 3, !dbg !242
  %mul292.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.0.vec.extract2423, !dbg !135
  %mul295.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.4.vec.extract2460, !dbg !243
  %mul298.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.8.vec.extract2497, !dbg !244
  %mul301.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.12.vec.extract2534, !dbg !245
  %numerator.sroa.0.0.vec.insert2425 = insertelement <4 x float> poison, float %mul292.6, i64 0, !dbg !136
  %numerator.sroa.0.4.vec.insert2462 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2425, float %mul295.6, i64 1, !dbg !136
  %numerator.sroa.0.8.vec.insert2499 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2462, float %mul298.6, i64 2, !dbg !136
  %numerator.sroa.0.12.vec.insert2536 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2499, float %mul301.6, i64 3, !dbg !136
  %numerator.sroa.98.16.vec.extract2579 = extractelement <4 x float> %numerator.sroa.98.5, i64 0, !dbg !242
  %numerator.sroa.98.20.vec.extract2616 = extractelement <4 x float> %numerator.sroa.98.5, i64 1, !dbg !242
  %numerator.sroa.98.24.vec.extract2653 = extractelement <4 x float> %numerator.sroa.98.5, i64 2, !dbg !242
  %numerator.sroa.98.28.vec.extract2690 = extractelement <4 x float> %numerator.sroa.98.5, i64 3, !dbg !242
  %mul292.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.16.vec.extract2579, !dbg !135
  %mul295.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.20.vec.extract2616, !dbg !243
  %mul298.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.24.vec.extract2653, !dbg !244
  %mul301.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.28.vec.extract2690, !dbg !245
  %numerator.sroa.98.16.vec.insert2581 = insertelement <4 x float> poison, float %mul292.1.6, i64 0, !dbg !136
  %numerator.sroa.98.20.vec.insert2618 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2581, float %mul295.1.6, i64 1, !dbg !136
  %numerator.sroa.98.24.vec.insert2655 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2618, float %mul298.1.6, i64 2, !dbg !136
  %numerator.sroa.98.28.vec.insert2692 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2655, float %mul301.1.6, i64 3, !dbg !136
  %numerator.sroa.194.32.vec.extract2735 = extractelement <4 x float> %numerator.sroa.194.5, i64 0, !dbg !242
  %numerator.sroa.194.36.vec.extract2772 = extractelement <4 x float> %numerator.sroa.194.5, i64 1, !dbg !242
  %numerator.sroa.194.40.vec.extract2809 = extractelement <4 x float> %numerator.sroa.194.5, i64 2, !dbg !242
  %numerator.sroa.194.44.vec.extract2846 = extractelement <4 x float> %numerator.sroa.194.5, i64 3, !dbg !242
  %mul292.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.32.vec.extract2735, !dbg !135
  %mul295.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.36.vec.extract2772, !dbg !243
  %mul298.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.40.vec.extract2809, !dbg !244
  %mul301.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.44.vec.extract2846, !dbg !245
  %numerator.sroa.194.32.vec.insert2737 = insertelement <4 x float> poison, float %mul292.2.6, i64 0, !dbg !136
  %numerator.sroa.194.36.vec.insert2774 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2737, float %mul295.2.6, i64 1, !dbg !136
  %numerator.sroa.194.40.vec.insert2811 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2774, float %mul298.2.6, i64 2, !dbg !136
  %numerator.sroa.194.44.vec.insert2848 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2811, float %mul301.2.6, i64 3, !dbg !136
  %numerator.sroa.290.48.vec.extract2891 = extractelement <4 x float> %numerator.sroa.290.5, i64 0, !dbg !242
  %numerator.sroa.290.52.vec.extract2928 = extractelement <4 x float> %numerator.sroa.290.5, i64 1, !dbg !242
  %numerator.sroa.290.56.vec.extract2965 = extractelement <4 x float> %numerator.sroa.290.5, i64 2, !dbg !242
  %numerator.sroa.290.60.vec.extract3002 = extractelement <4 x float> %numerator.sroa.290.5, i64 3, !dbg !242
  %mul292.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.48.vec.extract2891, !dbg !135
  %mul295.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.52.vec.extract2928, !dbg !243
  %mul298.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.56.vec.extract2965, !dbg !244
  %mul301.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.60.vec.extract3002, !dbg !245
  %numerator.sroa.290.48.vec.insert2893 = insertelement <4 x float> poison, float %mul292.3.6, i64 0, !dbg !136
  %numerator.sroa.290.52.vec.insert2930 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2893, float %mul295.3.6, i64 1, !dbg !136
  %numerator.sroa.290.56.vec.insert2967 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2930, float %mul298.3.6, i64 2, !dbg !136
  %numerator.sroa.290.60.vec.insert3004 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2967, float %mul301.3.6, i64 3, !dbg !136
  %sub325.6 = fsub contract float %spec.select4418, %539, !dbg !137
  %sub329.6 = fsub contract float %condval.0.1.6, %539, !dbg !138
  %sub333.6 = fsub contract float %condval.0.2.6, %539, !dbg !139
  %sub337.6 = fsub contract float %condval.0.3.6, %539, !dbg !140
  %mul342.6 = fmul contract float %sub325.6, 0x3FC7154760000000, !dbg !141
  %mul346.6 = fmul contract float %sub329.6, 0x3FC7154760000000, !dbg !142
  %mul350.6 = fmul contract float %sub333.6, 0x3FC7154760000000, !dbg !143
  %mul354.6 = fmul contract float %sub337.6, 0x3FC7154760000000, !dbg !144
  %add359.6 = fadd contract float %mul342.6, 8.000000e+00, !dbg !145
  %add363.6 = fadd contract float %mul346.6, 8.000000e+00, !dbg !146
  %add367.6 = fadd contract float %mul350.6, 8.000000e+00, !dbg !147
  %add371.6 = fadd contract float %mul354.6, 8.000000e+00, !dbg !148
  %cmp.i.i785.6 = fcmp contract olt float %add359.6, -1.260000e+02, !dbg !149
  %cond.i.i786.6 = select contract i1 %cmp.i.i785.6, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i787.6 = fadd contract float %add359.6, %cond.i.i786.6, !dbg !149
  %541 = tail call contract float @llvm.exp2.f32(float %add.i.i787.6), !dbg !149
  %cond2.i.i788.6 = select contract i1 %cmp.i.i785.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i789.6 = fmul contract float %cond2.i.i788.6, %541, !dbg !149
  %cmp.i.i790.6 = fcmp contract olt float %add363.6, -1.260000e+02, !dbg !151
  %cond.i.i791.6 = select contract i1 %cmp.i.i790.6, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i792.6 = fadd contract float %add363.6, %cond.i.i791.6, !dbg !151
  %542 = tail call contract float @llvm.exp2.f32(float %add.i.i792.6), !dbg !151
  %cond2.i.i793.6 = select contract i1 %cmp.i.i790.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i794.6 = fmul contract float %cond2.i.i793.6, %542, !dbg !151
  %cmp.i.i795.6 = fcmp contract olt float %add367.6, -1.260000e+02, !dbg !153
  %cond.i.i796.6 = select contract i1 %cmp.i.i795.6, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i797.6 = fadd contract float %add367.6, %cond.i.i796.6, !dbg !153
  %543 = tail call contract float @llvm.exp2.f32(float %add.i.i797.6), !dbg !153
  %cond2.i.i798.6 = select contract i1 %cmp.i.i795.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i799.6 = fmul contract float %cond2.i.i798.6, %543, !dbg !153
  %cmp.i.i800.6 = fcmp contract olt float %add371.6, -1.260000e+02, !dbg !155
  %cond.i.i801.6 = select contract i1 %cmp.i.i800.6, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i802.6 = fadd contract float %add371.6, %cond.i.i801.6, !dbg !155
  %544 = tail call contract float @llvm.exp2.f32(float %add.i.i802.6), !dbg !155
  %cond2.i.i803.6 = select contract i1 %cmp.i.i800.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i804.6 = fmul contract float %cond2.i.i803.6, %544, !dbg !155
  %545 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %546 = fptrunc float %mul.i.i789.6 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %545), !dbg !157, !noalias !165
  %547 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %548 = fptrunc float %mul.i.i794.6 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %547), !dbg !170, !noalias !165
  %549 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %550 = fptrunc float %mul.i.i799.6 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %549), !dbg !172, !noalias !176
  %551 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %552 = fptrunc float %mul.i.i804.6 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %551), !dbg !181, !noalias !176
  %553 = insertelement <4 x half> poison, half %546, i64 0, !dbg !183
  %554 = insertelement <4 x half> %553, half %548, i64 1, !dbg !183
  %555 = insertelement <4 x half> %554, half %550, i64 2, !dbg !183
  %556 = insertelement <4 x half> %555, half %552, i64 3, !dbg !183
  %conv.i.i.6 = fpext half %546 to float, !dbg !184
  %add405.6 = fadd contract float %conv.i.i.6, 0.000000e+00, !dbg !189
  %conv.i.i.1.6 = fpext half %548 to float, !dbg !184
  %add405.1.6 = fadd contract float %add405.6, %conv.i.i.1.6, !dbg !189
  %conv.i.i.2.6 = fpext half %550 to float, !dbg !184
  %add405.2.6 = fadd contract float %add405.1.6, %conv.i.i.2.6, !dbg !189
  %conv.i.i.3.6 = fpext half %552 to float, !dbg !184
  %add405.3.6 = fadd contract float %add405.2.6, %conv.i.i.3.6, !dbg !189
  %557 = bitcast float %add405.3.6 to i32, !dbg !190
  %558 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !192
  %559 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %558) #11, !dbg !195
  %xor.i.i810.6 = xor i32 %559, 32, !dbg !196
  %560 = and i32 %559, -64, !dbg !197
  %and.i.i811.6 = add nsw i32 %560, 64, !dbg !197
  %cmp.not.i.i812.6 = icmp slt i32 %xor.i.i810.6, %and.i.i811.6, !dbg !198
  %cond.i.i813.6 = select i1 %cmp.not.i.i812.6, i32 %xor.i.i810.6, i32 %559, !dbg !199
  %shl.i.i814.6 = shl i32 %cond.i.i813.6, 2, !dbg !200
  %561 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i814.6, i32 %557), !dbg !201
  %562 = bitcast i32 %561 to float, !dbg !202
  %add413.6 = fadd contract float %add405.3.6, %562, !dbg !203
  %563 = bitcast float %add413.6 to i32, !dbg !204
  %564 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !206
  %565 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %564) #11, !dbg !209
  %xor.i.i815.6 = xor i32 %565, 16, !dbg !210
  %566 = and i32 %565, -64, !dbg !211
  %and.i.i816.6 = add nsw i32 %566, 64, !dbg !211
  %cmp.not.i.i817.6 = icmp slt i32 %xor.i.i815.6, %and.i.i816.6, !dbg !212
  %cond.i.i818.6 = select i1 %cmp.not.i.i817.6, i32 %xor.i.i815.6, i32 %565, !dbg !213
  %shl.i.i819.6 = shl i32 %cond.i.i818.6, 2, !dbg !214
  %567 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i819.6, i32 %563), !dbg !215
  %568 = bitcast i32 %567 to float, !dbg !216
  %add418.6 = fadd contract float %add413.6, %568, !dbg !217
  fence syncscope("warp") release, !dbg !218
  tail call void @llvm.mxc.barrier.warp(), !dbg !221
  fence syncscope("warp") acquire, !dbg !222
  %569 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add438, !dbg !223
  %570 = getelementptr inbounds i8, ptr addrspace(4) %569, i64 %.idx.6, !dbg !223
  %571 = load i64, ptr addrspace(4) %570, align 8, !dbg !224
  %add.ptr447.1.6 = getelementptr inbounds i8, ptr addrspace(4) %570, i64 128, !dbg !223
  %572 = load i64, ptr addrspace(4) %add.ptr447.1.6, align 8, !dbg !224
  %add.ptr447.2.6 = getelementptr inbounds i8, ptr addrspace(4) %570, i64 256, !dbg !223
  %573 = load i64, ptr addrspace(4) %add.ptr447.2.6, align 8, !dbg !224
  %add.ptr447.3.6 = getelementptr inbounds i8, ptr addrspace(4) %570, i64 384, !dbg !223
  %574 = load i64, ptr addrspace(4) %add.ptr447.3.6, align 8, !dbg !224
  %mul312.6 = fmul contract float %denominator.sroa.0.1.5, %mul.i.i.6, !dbg !246
  %575 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul477, !dbg !225
  %add.ptr489.idx.6 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.6 = getelementptr inbounds i8, ptr addrspace(3) %575, i32 %add.ptr489.idx.6, !dbg !225
  %v_column.sroa.130.0.insert.ext1596 = shl i64 %574, 48, !dbg !226
  %v_column.sroa.98.0.insert.ext1441 = shl i64 %573, 32, !dbg !226
  %v_column.sroa.98.0.insert.shift1442 = and i64 %v_column.sroa.98.0.insert.ext1441, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1444 = or disjoint i64 %v_column.sroa.130.0.insert.ext1596, %v_column.sroa.98.0.insert.shift1442, !dbg !226
  %v_column.sroa.66.0.insert.ext1286 = shl i64 %572, 16, !dbg !226
  %v_column.sroa.66.0.insert.shift1287 = and i64 %v_column.sroa.66.0.insert.ext1286, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1289 = or disjoint i64 %v_column.sroa.98.0.insert.insert1444, %v_column.sroa.66.0.insert.shift1287, !dbg !226
  %v_column.sroa.0.0.insert.ext1139 = and i64 %571, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1141 = or disjoint i64 %v_column.sroa.66.0.insert.insert1289, %v_column.sroa.0.0.insert.ext1139, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1141, ptr addrspace(3) %add.ptr489.6, align 8, !dbg !226
  %v_fetch.sroa.0.2.extract.shift1725 = lshr i64 %571, 16, !dbg !227
  %add478.1.6 = or disjoint i32 %mul477, 256, !dbg !228
  %576 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.1.6, !dbg !225
  %xor485.1.6 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.1.6 = xor i32 %xor485.1.6, 8, !dbg !225
  %add.ptr489.1.6 = getelementptr inbounds i8, ptr addrspace(3) %576, i32 %add.ptr489.idx.1.6, !dbg !225
  %577 = shl i64 %574, 32, !dbg !226
  %v_column.sroa.130.0.insert.ext1601 = and i64 %577, -281474976710656, !dbg !226
  %578 = shl i64 %573, 16, !dbg !226
  %v_column.sroa.98.0.insert.shift1447 = and i64 %578, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1449 = or disjoint i64 %v_column.sroa.130.0.insert.ext1601, %v_column.sroa.98.0.insert.shift1447, !dbg !226
  %v_column.sroa.66.0.insert.ext1291 = and i64 %572, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1294 = or disjoint i64 %v_column.sroa.98.0.insert.insert1449, %v_column.sroa.66.0.insert.ext1291, !dbg !226
  %v_column.sroa.0.0.insert.ext1143 = and i64 %v_fetch.sroa.0.2.extract.shift1725, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1145 = or disjoint i64 %v_column.sroa.66.0.insert.insert1294, %v_column.sroa.0.0.insert.ext1143, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1145, ptr addrspace(3) %add.ptr489.1.6, align 8, !dbg !226
  %v_fetch.sroa.0.4.extract.shift1746 = lshr i64 %571, 32, !dbg !227
  %add478.2.6 = or disjoint i32 %mul477, 512, !dbg !228
  %579 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.2.6, !dbg !225
  %xor485.2.6 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.2.6 = xor i32 %xor485.2.6, 16, !dbg !225
  %add.ptr489.2.6 = getelementptr inbounds i8, ptr addrspace(3) %579, i32 %add.ptr489.idx.2.6, !dbg !225
  %580 = shl i64 %574, 16, !dbg !226
  %v_column.sroa.130.0.insert.ext1606 = and i64 %580, -281474976710656, !dbg !226
  %v_column.sroa.98.0.insert.ext1451 = and i64 %573, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1454 = or disjoint i64 %v_column.sroa.130.0.insert.ext1606, %v_column.sroa.98.0.insert.ext1451, !dbg !226
  %581 = lshr i64 %572, 16, !dbg !226
  %v_column.sroa.66.0.insert.shift1297 = and i64 %581, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1299 = or disjoint i64 %v_column.sroa.98.0.insert.insert1454, %v_column.sroa.66.0.insert.shift1297, !dbg !226
  %v_column.sroa.0.0.insert.ext1147 = and i64 %v_fetch.sroa.0.4.extract.shift1746, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1149 = or disjoint i64 %v_column.sroa.66.0.insert.insert1299, %v_column.sroa.0.0.insert.ext1147, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1149, ptr addrspace(3) %add.ptr489.2.6, align 8, !dbg !226
  %v_fetch.sroa.0.6.extract.shift1767 = lshr i64 %571, 48, !dbg !227
  %v_fetch.sroa.122.30.extract.shift1998 = and i64 %574, -281474976710656, !dbg !226
  %add478.3.6 = or disjoint i32 %mul477, 768, !dbg !228
  %582 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.3.6, !dbg !225
  %xor485.3.6 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.3.6 = xor i32 %xor485.3.6, 24, !dbg !225
  %add.ptr489.3.6 = getelementptr inbounds i8, ptr addrspace(3) %582, i32 %add.ptr489.idx.3.6, !dbg !225
  %583 = lshr i64 %573, 16, !dbg !226
  %v_column.sroa.98.0.insert.shift1457 = and i64 %583, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1459 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1998, %v_column.sroa.98.0.insert.shift1457, !dbg !226
  %584 = lshr i64 %572, 32, !dbg !226
  %v_column.sroa.66.0.insert.shift1302 = and i64 %584, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1304 = or disjoint i64 %v_column.sroa.98.0.insert.insert1459, %v_column.sroa.66.0.insert.shift1302, !dbg !226
  %v_column.sroa.0.0.insert.insert1153 = or disjoint i64 %v_column.sroa.66.0.insert.insert1304, %v_fetch.sroa.0.6.extract.shift1767, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1153, ptr addrspace(3) %add.ptr489.3.6, align 8, !dbg !226
  fence syncscope("warp") release, !dbg !229
  tail call void @llvm.mxc.barrier.warp(), !dbg !232
  fence syncscope("warp") acquire, !dbg !233
  %add506.6 = or disjoint i32 %mul499, %mul505, !dbg !234
  %585 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.6, !dbg !235
  %add.ptr516.idx.6 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.6 = getelementptr inbounds i8, ptr addrspace(3) %585, i32 %add.ptr516.idx.6, !dbg !235
  %586 = load <4 x half>, ptr addrspace(3) %add.ptr516.6, align 8, !dbg !236
  %add501.1.6 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.1.6 = or disjoint i32 %add501.1.6, 64, !dbg !234
  %587 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.1.6, !dbg !235
  %xor512.1.6 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.1.6 = xor i32 %xor512.1.6, 8, !dbg !235
  %add.ptr516.1.6 = getelementptr inbounds i8, ptr addrspace(3) %587, i32 %add.ptr516.idx.1.6, !dbg !235
  %588 = load <4 x half>, ptr addrspace(3) %add.ptr516.1.6, align 8, !dbg !236
  %add501.2.6 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.2.6 = or disjoint i32 %add501.2.6, 128, !dbg !234
  %589 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.2.6, !dbg !235
  %xor512.2.6 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.2.6 = xor i32 %xor512.2.6, 16, !dbg !235
  %add.ptr516.2.6 = getelementptr inbounds i8, ptr addrspace(3) %589, i32 %add.ptr516.idx.2.6, !dbg !235
  %590 = load <4 x half>, ptr addrspace(3) %add.ptr516.2.6, align 8, !dbg !236
  %add501.3.6 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.3.6 = or disjoint i32 %add501.3.6, 192, !dbg !234
  %591 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.3.6, !dbg !235
  %xor512.3.6 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.3.6 = xor i32 %xor512.3.6, 24, !dbg !235
  %add.ptr516.3.6 = getelementptr inbounds i8, ptr addrspace(3) %591, i32 %add.ptr516.idx.3.6, !dbg !235
  %592 = load <4 x half>, ptr addrspace(3) %add.ptr516.3.6, align 8, !dbg !236
  %593 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %586, <4 x half> %556, <4 x float> %numerator.sroa.0.12.vec.insert2536), !dbg !237
  %594 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %588, <4 x half> %556, <4 x float> %numerator.sroa.98.28.vec.insert2692), !dbg !237
  %595 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %590, <4 x half> %556, <4 x float> %numerator.sroa.194.44.vec.insert2848), !dbg !237
  %596 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %592, <4 x half> %556, <4 x float> %numerator.sroa.290.60.vec.insert3004), !dbg !237
  %add422.6 = fadd contract float %mul312.6, %add418.6, !dbg !238
  br label %if.end542.6, !dbg !239

if.end542.6:                                      ; preds = %if.then.6, %if.end542.5
  %numerator.sroa.290.6 = phi <4 x float> [ %numerator.sroa.290.5, %if.end542.5 ], [ %596, %if.then.6 ], !dbg !240
  %numerator.sroa.194.6 = phi <4 x float> [ %numerator.sroa.194.5, %if.end542.5 ], [ %595, %if.then.6 ], !dbg !240
  %numerator.sroa.98.6 = phi <4 x float> [ %numerator.sroa.98.5, %if.end542.5 ], [ %594, %if.then.6 ], !dbg !240
  %numerator.sroa.0.6 = phi <4 x float> [ %numerator.sroa.0.5, %if.end542.5 ], [ %593, %if.then.6 ], !dbg !240
  %maximum.sroa.0.1.6 = phi float [ %maximum.sroa.0.1.5, %if.end542.5 ], [ %539, %if.then.6 ], !dbg !240
  %denominator.sroa.0.1.6 = phi float [ %denominator.sroa.0.1.5, %if.end542.5 ], [ %add422.6, %if.then.6 ], !dbg !240
  %597 = or disjoint i64 %16, 7, !dbg !241
  %arrayidx108.7 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %597, !dbg !67
  %598 = load i32, ptr addrspace(1) %arrayidx108.7, align 4, !dbg !67, !tbaa !30
  %mul109.7 = shl nsw i32 %598, 4, !dbg !68
  %cmp110.7 = icmp slt i32 %598, 0, !dbg !69
  %cmp112.not.7 = icmp sgt i32 %mul109.7, %1
  %or.cond.7 = select i1 %cmp110.7, i1 true, i1 %cmp112.not.7, !dbg !70
  br i1 %or.cond.7, label %if.end542.7, label %if.then.7, !dbg !70

if.then.7:                                        ; preds = %if.end542.6
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %conv122.7 = zext nneg i32 %mul109.7 to i64
  %.idx.7 = shl nuw nsw i64 %conv122.7, 7
  %gep.7 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep868, i64 %.idx.7, !dbg !76
  %.idx876.7 = shl nuw nsw i64 %conv, 17, !dbg !77
  %599 = getelementptr inbounds i8, ptr addrspace(4) %gep.7, i64 %.idx876.7, !dbg !77
  %qk_fetch.sroa.0.0.copyload3534 = load i16, ptr addrspace(4) %599, align 16, !dbg !78
  %qk_fetch.sroa.56.0..sroa_idx3557 = getelementptr inbounds i8, ptr addrspace(4) %599, i64 2, !dbg !78
  %qk_fetch.sroa.56.0.copyload3558 = load i16, ptr addrspace(4) %qk_fetch.sroa.56.0..sroa_idx3557, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.92.0..sroa_idx3581 = getelementptr inbounds i8, ptr addrspace(4) %599, i64 4, !dbg !78
  %qk_fetch.sroa.92.0.copyload3582 = load i16, ptr addrspace(4) %qk_fetch.sroa.92.0..sroa_idx3581, align 4, !dbg !78
  %qk_fetch.sroa.128.0..sroa_idx3605 = getelementptr inbounds i8, ptr addrspace(4) %599, i64 6, !dbg !78
  %qk_fetch.sroa.128.0.copyload3606 = load i16, ptr addrspace(4) %qk_fetch.sroa.128.0..sroa_idx3605, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.164.0..sroa_idx3629 = getelementptr inbounds i8, ptr addrspace(4) %599, i64 8, !dbg !78
  %qk_fetch.sroa.164.0.copyload3630 = load i16, ptr addrspace(4) %qk_fetch.sroa.164.0..sroa_idx3629, align 8, !dbg !78
  %qk_fetch.sroa.200.0..sroa_idx3653 = getelementptr inbounds i8, ptr addrspace(4) %599, i64 10, !dbg !78
  %qk_fetch.sroa.200.0.copyload3654 = load i16, ptr addrspace(4) %qk_fetch.sroa.200.0..sroa_idx3653, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.236.0..sroa_idx3677 = getelementptr inbounds i8, ptr addrspace(4) %599, i64 12, !dbg !78
  %qk_fetch.sroa.236.0.copyload3678 = load i16, ptr addrspace(4) %qk_fetch.sroa.236.0..sroa_idx3677, align 4, !dbg !78
  %qk_fetch.sroa.272.0..sroa_idx3701 = getelementptr inbounds i8, ptr addrspace(4) %599, i64 14, !dbg !78
  %qk_fetch.sroa.272.0.copyload3702 = load i16, ptr addrspace(4) %qk_fetch.sroa.272.0..sroa_idx3701, align 2, !dbg !78, !tbaa !30
  %.sroa.speculated4036 = select i1 %cmp19, i16 %qk_fetch.sroa.0.0.copyload3534, i16 %qk_fetch.sroa.164.0.copyload3630, !dbg !79
  %.sroa.speculated3928 = select i1 %cmp19, i16 %qk_fetch.sroa.56.0.copyload3558, i16 %qk_fetch.sroa.200.0.copyload3654, !dbg !79
  %.sroa.speculated3820 = select i1 %cmp19, i16 %qk_fetch.sroa.92.0.copyload3582, i16 %qk_fetch.sroa.236.0.copyload3678, !dbg !79
  %.sroa.speculated3712 = select i1 %cmp19, i16 %qk_fetch.sroa.128.0.copyload3606, i16 %qk_fetch.sroa.272.0.copyload3702, !dbg !79
  %.sroa.speculated4033 = select i1 %cmp19, i16 %qk_fetch.sroa.164.0.copyload3630, i16 %qk_fetch.sroa.0.0.copyload3534, !dbg !79
  %.sroa.speculated3925 = select i1 %cmp19, i16 %qk_fetch.sroa.200.0.copyload3654, i16 %qk_fetch.sroa.56.0.copyload3558, !dbg !79
  %.sroa.speculated3817 = select i1 %cmp19, i16 %qk_fetch.sroa.236.0.copyload3678, i16 %qk_fetch.sroa.92.0.copyload3582, !dbg !79
  %.sroa.speculated3709 = select i1 %cmp19, i16 %qk_fetch.sroa.272.0.copyload3702, i16 %qk_fetch.sroa.128.0.copyload3606, !dbg !79
  store i16 %.sroa.speculated4036, ptr addrspace(3) %invariant.gep840, align 16, !dbg !80
  store i16 %.sroa.speculated3928, ptr addrspace(3) %qk_ordered.sroa.38.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3820, ptr addrspace(3) %qk_ordered.sroa.56.0.invariant.gep840.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3712, ptr addrspace(3) %qk_ordered.sroa.74.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated4033, ptr addrspace(3) %qk_ordered.sroa.92.0.invariant.gep840.sroa_idx, align 8, !dbg !80
  store i16 %.sroa.speculated3925, ptr addrspace(3) %qk_ordered.sroa.110.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3817, ptr addrspace(3) %qk_ordered.sroa.128.0.invariant.gep840.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3709, ptr addrspace(3) %qk_ordered.sroa.146.0.invariant.gep840.sroa_idx, align 2, !dbg !80, !tbaa !30
  %gep848.1.7 = getelementptr inbounds i8, ptr addrspace(4) %599, i64 1024, !dbg !77
  %qk_fetch.sroa.0.0.copyload3535 = load i16, ptr addrspace(4) %gep848.1.7, align 16, !dbg !78
  %qk_fetch.sroa.56.0.gep848.1.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %599, i64 1026, !dbg !78
  %qk_fetch.sroa.56.0.copyload3559 = load i16, ptr addrspace(4) %qk_fetch.sroa.56.0.gep848.1.7.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.92.0.gep848.1.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %599, i64 1028, !dbg !78
  %qk_fetch.sroa.92.0.copyload3583 = load i16, ptr addrspace(4) %qk_fetch.sroa.92.0.gep848.1.7.sroa_idx, align 4, !dbg !78
  %qk_fetch.sroa.128.0.gep848.1.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %599, i64 1030, !dbg !78
  %qk_fetch.sroa.128.0.copyload3607 = load i16, ptr addrspace(4) %qk_fetch.sroa.128.0.gep848.1.7.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.164.0.gep848.1.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %599, i64 1032, !dbg !78
  %qk_fetch.sroa.164.0.copyload3631 = load i16, ptr addrspace(4) %qk_fetch.sroa.164.0.gep848.1.7.sroa_idx, align 8, !dbg !78
  %qk_fetch.sroa.200.0.gep848.1.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %599, i64 1034, !dbg !78
  %qk_fetch.sroa.200.0.copyload3655 = load i16, ptr addrspace(4) %qk_fetch.sroa.200.0.gep848.1.7.sroa_idx, align 2, !dbg !78, !tbaa !30
  %qk_fetch.sroa.236.0.gep848.1.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %599, i64 1036, !dbg !78
  %qk_fetch.sroa.236.0.copyload3679 = load i16, ptr addrspace(4) %qk_fetch.sroa.236.0.gep848.1.7.sroa_idx, align 4, !dbg !78
  %qk_fetch.sroa.272.0.gep848.1.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %599, i64 1038, !dbg !78
  %qk_fetch.sroa.272.0.copyload3703 = load i16, ptr addrspace(4) %qk_fetch.sroa.272.0.gep848.1.7.sroa_idx, align 2, !dbg !78, !tbaa !30
  %.sroa.speculated4030 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.164.0.copyload3631, i16 %qk_fetch.sroa.0.0.copyload3535, !dbg !79
  %.sroa.speculated3922 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.200.0.copyload3655, i16 %qk_fetch.sroa.56.0.copyload3559, !dbg !79
  %.sroa.speculated3814 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.236.0.copyload3679, i16 %qk_fetch.sroa.92.0.copyload3583, !dbg !79
  %.sroa.speculated3706 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.272.0.copyload3703, i16 %qk_fetch.sroa.128.0.copyload3607, !dbg !79
  %.sroa.speculated4027 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.0.0.copyload3535, i16 %qk_fetch.sroa.164.0.copyload3631, !dbg !79
  %.sroa.speculated3919 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.56.0.copyload3559, i16 %qk_fetch.sroa.200.0.copyload3655, !dbg !79
  %.sroa.speculated3811 = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.92.0.copyload3583, i16 %qk_fetch.sroa.236.0.copyload3679, !dbg !79
  %.sroa.speculated = select i1 %cmp19.1.not, i16 %qk_fetch.sroa.128.0.copyload3607, i16 %qk_fetch.sroa.272.0.copyload3703, !dbg !79
  store i16 %.sroa.speculated4030, ptr addrspace(3) %gep841.1, align 16, !dbg !80
  store i16 %.sroa.speculated3922, ptr addrspace(3) %qk_ordered.sroa.38.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3814, ptr addrspace(3) %qk_ordered.sroa.56.0.gep841.1.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated3706, ptr addrspace(3) %qk_ordered.sroa.74.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated4027, ptr addrspace(3) %qk_ordered.sroa.92.0.gep841.1.sroa_idx, align 8, !dbg !80
  store i16 %.sroa.speculated3919, ptr addrspace(3) %qk_ordered.sroa.110.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  store i16 %.sroa.speculated3811, ptr addrspace(3) %qk_ordered.sroa.128.0.gep841.1.sroa_idx, align 4, !dbg !80
  store i16 %.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.146.0.gep841.1.sroa_idx, align 2, !dbg !80, !tbaa !30
  fence syncscope("warp") release, !dbg !81
  tail call void @llvm.mxc.barrier.warp(), !dbg !84
  fence syncscope("warp") acquire, !dbg !85
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %add.ptr74, align 8, !dbg !86
  %600 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %6, <4 x float> zeroinitializer), !dbg !87
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr74.1, align 8, !dbg !86
  %601 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %7, <4 x float> %600), !dbg !87
  %k_local.sroa.0.0.copyload.2.7 = load <4 x half>, ptr addrspace(3) %add.ptr74.2, align 8, !dbg !86
  %602 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.7, <4 x half> %8, <4 x float> %601), !dbg !87
  %k_local.sroa.0.0.copyload.3.7 = load <4 x half>, ptr addrspace(3) %add.ptr74.3, align 8, !dbg !86
  %603 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.7, <4 x half> %9, <4 x float> %602), !dbg !87
  %add230.7 = add nuw nsw i32 %mul109.7, %mul229
  %cmp233.not.7 = icmp sgt i32 %add230.7, %1, !dbg !88
  %scores.sroa.0.0.vec.extract2153 = extractelement <4 x float> %603, i64 0
  %spec.select4419 = select i1 %cmp233.not.7, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2153, !dbg !89
  %cmp233.not.1.7.not = icmp slt i32 %add230.7, %1, !dbg !88
  %scores.sroa.0.4.vec.extract2232 = extractelement <4 x float> %603, i64 1, !dbg !89
  %condval.0.1.7 = select i1 %cmp233.not.1.7.not, float %scores.sroa.0.4.vec.extract2232, float 0xFFF0000000000000, !dbg !89
  %add231.2.7 = or disjoint i32 %add230.7, 2, !dbg !90
  %cmp233.not.2.7 = icmp sgt i32 %add231.2.7, %1, !dbg !88
  %scores.sroa.0.8.vec.extract2309 = extractelement <4 x float> %603, i64 2, !dbg !89
  %condval.0.2.7 = select i1 %cmp233.not.2.7, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2309, !dbg !89
  %add231.3.7 = or disjoint i32 %add230.7, 3, !dbg !90
  %cmp233.not.3.7 = icmp sgt i32 %add231.3.7, %1, !dbg !88
  %scores.sroa.0.12.vec.extract2386 = extractelement <4 x float> %603, i64 3, !dbg !89
  %condval.0.3.7 = select i1 %cmp233.not.3.7, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2386, !dbg !89
  %604 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select4419, float 0xFFF0000000000000), !dbg !91
  %605 = tail call contract noundef float @llvm.maxnum.f32(float %604, float %condval.0.1.7), !dbg !91
  %606 = tail call contract noundef float @llvm.maxnum.f32(float %605, float %condval.0.2.7), !dbg !91
  %607 = tail call contract noundef float @llvm.maxnum.f32(float %606, float %condval.0.3.7), !dbg !91
  %608 = bitcast float %607 to i32, !dbg !95
  %609 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !98
  %610 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %609) #11, !dbg !103
  %xor.i.i.7 = xor i32 %610, 32, !dbg !104
  %611 = and i32 %610, -64, !dbg !105
  %and.i.i.7 = add nsw i32 %611, 64, !dbg !105
  %cmp.not.i.i.7 = icmp slt i32 %xor.i.i.7, %and.i.i.7, !dbg !106
  %cond.i.i.7 = select i1 %cmp.not.i.i.7, i32 %xor.i.i.7, i32 %610, !dbg !107
  %shl.i.i.7 = shl i32 %cond.i.i.7, 2, !dbg !108
  %612 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.7, i32 %608), !dbg !109
  %613 = bitcast i32 %612 to float, !dbg !110
  %614 = tail call contract noundef float @llvm.maxnum.f32(float %607, float %613), !dbg !111
  %615 = bitcast float %614 to i32, !dbg !113
  %616 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !115
  %617 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %616) #11, !dbg !118
  %xor.i.i779.7 = xor i32 %617, 16, !dbg !119
  %618 = and i32 %617, -64, !dbg !120
  %and.i.i780.7 = add nsw i32 %618, 64, !dbg !120
  %cmp.not.i.i781.7 = icmp slt i32 %xor.i.i779.7, %and.i.i780.7, !dbg !121
  %cond.i.i782.7 = select i1 %cmp.not.i.i781.7, i32 %xor.i.i779.7, i32 %617, !dbg !122
  %shl.i.i783.7 = shl i32 %cond.i.i782.7, 2, !dbg !123
  %619 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i783.7, i32 %615), !dbg !124
  %620 = bitcast i32 %619 to float, !dbg !125
  %621 = tail call contract noundef float @llvm.maxnum.f32(float %614, float %620), !dbg !126
  %622 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.6, float %621), !dbg !128
  %sub.7 = fsub contract float %maximum.sroa.0.1.6, %622, !dbg !130
  %mul275.7 = fmul contract float %sub.7, 0x3FC7154760000000, !dbg !131
  %cmp.i.i.7 = fcmp contract olt float %mul275.7, -1.260000e+02, !dbg !132
  %cond.i.i784.7 = select contract i1 %cmp.i.i.7, float 6.400000e+01, float 0.000000e+00, !dbg !132
  %add.i.i.7 = fadd contract float %mul275.7, %cond.i.i784.7, !dbg !132
  %623 = tail call contract float @llvm.exp2.f32(float %add.i.i.7), !dbg !132
  %cond2.i.i.7 = select contract i1 %cmp.i.i.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !132
  %mul.i.i.7 = fmul contract float %cond2.i.i.7, %623, !dbg !132
  %numerator.sroa.0.0.vec.extract2427 = extractelement <4 x float> %numerator.sroa.0.6, i64 0, !dbg !242
  %numerator.sroa.0.4.vec.extract2464 = extractelement <4 x float> %numerator.sroa.0.6, i64 1, !dbg !242
  %numerator.sroa.0.8.vec.extract2501 = extractelement <4 x float> %numerator.sroa.0.6, i64 2, !dbg !242
  %numerator.sroa.0.12.vec.extract2538 = extractelement <4 x float> %numerator.sroa.0.6, i64 3, !dbg !242
  %mul292.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.0.vec.extract2427, !dbg !135
  %mul295.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.4.vec.extract2464, !dbg !243
  %mul298.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.8.vec.extract2501, !dbg !244
  %mul301.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.12.vec.extract2538, !dbg !245
  %numerator.sroa.0.0.vec.insert2429 = insertelement <4 x float> poison, float %mul292.7, i64 0, !dbg !136
  %numerator.sroa.0.4.vec.insert2466 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2429, float %mul295.7, i64 1, !dbg !136
  %numerator.sroa.0.8.vec.insert2503 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2466, float %mul298.7, i64 2, !dbg !136
  %numerator.sroa.0.12.vec.insert2540 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2503, float %mul301.7, i64 3, !dbg !136
  %numerator.sroa.98.16.vec.extract2583 = extractelement <4 x float> %numerator.sroa.98.6, i64 0, !dbg !242
  %numerator.sroa.98.20.vec.extract2620 = extractelement <4 x float> %numerator.sroa.98.6, i64 1, !dbg !242
  %numerator.sroa.98.24.vec.extract2657 = extractelement <4 x float> %numerator.sroa.98.6, i64 2, !dbg !242
  %numerator.sroa.98.28.vec.extract2694 = extractelement <4 x float> %numerator.sroa.98.6, i64 3, !dbg !242
  %mul292.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.16.vec.extract2583, !dbg !135
  %mul295.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.20.vec.extract2620, !dbg !243
  %mul298.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.24.vec.extract2657, !dbg !244
  %mul301.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.28.vec.extract2694, !dbg !245
  %numerator.sroa.98.16.vec.insert2585 = insertelement <4 x float> poison, float %mul292.1.7, i64 0, !dbg !136
  %numerator.sroa.98.20.vec.insert2622 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2585, float %mul295.1.7, i64 1, !dbg !136
  %numerator.sroa.98.24.vec.insert2659 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2622, float %mul298.1.7, i64 2, !dbg !136
  %numerator.sroa.98.28.vec.insert2696 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2659, float %mul301.1.7, i64 3, !dbg !136
  %numerator.sroa.194.32.vec.extract2739 = extractelement <4 x float> %numerator.sroa.194.6, i64 0, !dbg !242
  %numerator.sroa.194.36.vec.extract2776 = extractelement <4 x float> %numerator.sroa.194.6, i64 1, !dbg !242
  %numerator.sroa.194.40.vec.extract2813 = extractelement <4 x float> %numerator.sroa.194.6, i64 2, !dbg !242
  %numerator.sroa.194.44.vec.extract2850 = extractelement <4 x float> %numerator.sroa.194.6, i64 3, !dbg !242
  %mul292.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.32.vec.extract2739, !dbg !135
  %mul295.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.36.vec.extract2776, !dbg !243
  %mul298.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.40.vec.extract2813, !dbg !244
  %mul301.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.44.vec.extract2850, !dbg !245
  %numerator.sroa.194.32.vec.insert2741 = insertelement <4 x float> poison, float %mul292.2.7, i64 0, !dbg !136
  %numerator.sroa.194.36.vec.insert2778 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2741, float %mul295.2.7, i64 1, !dbg !136
  %numerator.sroa.194.40.vec.insert2815 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2778, float %mul298.2.7, i64 2, !dbg !136
  %numerator.sroa.194.44.vec.insert2852 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2815, float %mul301.2.7, i64 3, !dbg !136
  %numerator.sroa.290.48.vec.extract2895 = extractelement <4 x float> %numerator.sroa.290.6, i64 0, !dbg !242
  %numerator.sroa.290.52.vec.extract2932 = extractelement <4 x float> %numerator.sroa.290.6, i64 1, !dbg !242
  %numerator.sroa.290.56.vec.extract2969 = extractelement <4 x float> %numerator.sroa.290.6, i64 2, !dbg !242
  %numerator.sroa.290.60.vec.extract3006 = extractelement <4 x float> %numerator.sroa.290.6, i64 3, !dbg !242
  %mul292.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.48.vec.extract2895, !dbg !135
  %mul295.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.52.vec.extract2932, !dbg !243
  %mul298.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.56.vec.extract2969, !dbg !244
  %mul301.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.60.vec.extract3006, !dbg !245
  %numerator.sroa.290.48.vec.insert2897 = insertelement <4 x float> poison, float %mul292.3.7, i64 0, !dbg !136
  %numerator.sroa.290.52.vec.insert2934 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2897, float %mul295.3.7, i64 1, !dbg !136
  %numerator.sroa.290.56.vec.insert2971 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2934, float %mul298.3.7, i64 2, !dbg !136
  %numerator.sroa.290.60.vec.insert3008 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2971, float %mul301.3.7, i64 3, !dbg !136
  %sub325.7 = fsub contract float %spec.select4419, %622, !dbg !137
  %sub329.7 = fsub contract float %condval.0.1.7, %622, !dbg !138
  %sub333.7 = fsub contract float %condval.0.2.7, %622, !dbg !139
  %sub337.7 = fsub contract float %condval.0.3.7, %622, !dbg !140
  %mul342.7 = fmul contract float %sub325.7, 0x3FC7154760000000, !dbg !141
  %mul346.7 = fmul contract float %sub329.7, 0x3FC7154760000000, !dbg !142
  %mul350.7 = fmul contract float %sub333.7, 0x3FC7154760000000, !dbg !143
  %mul354.7 = fmul contract float %sub337.7, 0x3FC7154760000000, !dbg !144
  %add359.7 = fadd contract float %mul342.7, 8.000000e+00, !dbg !145
  %add363.7 = fadd contract float %mul346.7, 8.000000e+00, !dbg !146
  %add367.7 = fadd contract float %mul350.7, 8.000000e+00, !dbg !147
  %add371.7 = fadd contract float %mul354.7, 8.000000e+00, !dbg !148
  %cmp.i.i785.7 = fcmp contract olt float %add359.7, -1.260000e+02, !dbg !149
  %cond.i.i786.7 = select contract i1 %cmp.i.i785.7, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i787.7 = fadd contract float %add359.7, %cond.i.i786.7, !dbg !149
  %624 = tail call contract float @llvm.exp2.f32(float %add.i.i787.7), !dbg !149
  %cond2.i.i788.7 = select contract i1 %cmp.i.i785.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i789.7 = fmul contract float %cond2.i.i788.7, %624, !dbg !149
  %cmp.i.i790.7 = fcmp contract olt float %add363.7, -1.260000e+02, !dbg !151
  %cond.i.i791.7 = select contract i1 %cmp.i.i790.7, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i792.7 = fadd contract float %add363.7, %cond.i.i791.7, !dbg !151
  %625 = tail call contract float @llvm.exp2.f32(float %add.i.i792.7), !dbg !151
  %cond2.i.i793.7 = select contract i1 %cmp.i.i790.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i794.7 = fmul contract float %cond2.i.i793.7, %625, !dbg !151
  %cmp.i.i795.7 = fcmp contract olt float %add367.7, -1.260000e+02, !dbg !153
  %cond.i.i796.7 = select contract i1 %cmp.i.i795.7, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i797.7 = fadd contract float %add367.7, %cond.i.i796.7, !dbg !153
  %626 = tail call contract float @llvm.exp2.f32(float %add.i.i797.7), !dbg !153
  %cond2.i.i798.7 = select contract i1 %cmp.i.i795.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i799.7 = fmul contract float %cond2.i.i798.7, %626, !dbg !153
  %cmp.i.i800.7 = fcmp contract olt float %add371.7, -1.260000e+02, !dbg !155
  %cond.i.i801.7 = select contract i1 %cmp.i.i800.7, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i802.7 = fadd contract float %add371.7, %cond.i.i801.7, !dbg !155
  %627 = tail call contract float @llvm.exp2.f32(float %add.i.i802.7), !dbg !155
  %cond2.i.i803.7 = select contract i1 %cmp.i.i800.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i804.7 = fmul contract float %cond2.i.i803.7, %627, !dbg !155
  %628 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %629 = fptrunc float %mul.i.i789.7 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %628), !dbg !157, !noalias !165
  %630 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %631 = fptrunc float %mul.i.i794.7 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %630), !dbg !170, !noalias !165
  %632 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %633 = fptrunc float %mul.i.i799.7 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %632), !dbg !172, !noalias !176
  %634 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %635 = fptrunc float %mul.i.i804.7 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %634), !dbg !181, !noalias !176
  %636 = insertelement <4 x half> poison, half %629, i64 0, !dbg !183
  %637 = insertelement <4 x half> %636, half %631, i64 1, !dbg !183
  %638 = insertelement <4 x half> %637, half %633, i64 2, !dbg !183
  %639 = insertelement <4 x half> %638, half %635, i64 3, !dbg !183
  %conv.i.i.7 = fpext half %629 to float, !dbg !184
  %add405.7 = fadd contract float %conv.i.i.7, 0.000000e+00, !dbg !189
  %conv.i.i.1.7 = fpext half %631 to float, !dbg !184
  %add405.1.7 = fadd contract float %add405.7, %conv.i.i.1.7, !dbg !189
  %conv.i.i.2.7 = fpext half %633 to float, !dbg !184
  %add405.2.7 = fadd contract float %add405.1.7, %conv.i.i.2.7, !dbg !189
  %conv.i.i.3.7 = fpext half %635 to float, !dbg !184
  %add405.3.7 = fadd contract float %add405.2.7, %conv.i.i.3.7, !dbg !189
  %640 = bitcast float %add405.3.7 to i32, !dbg !190
  %641 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !192
  %642 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %641) #11, !dbg !195
  %xor.i.i810.7 = xor i32 %642, 32, !dbg !196
  %643 = and i32 %642, -64, !dbg !197
  %and.i.i811.7 = add nsw i32 %643, 64, !dbg !197
  %cmp.not.i.i812.7 = icmp slt i32 %xor.i.i810.7, %and.i.i811.7, !dbg !198
  %cond.i.i813.7 = select i1 %cmp.not.i.i812.7, i32 %xor.i.i810.7, i32 %642, !dbg !199
  %shl.i.i814.7 = shl i32 %cond.i.i813.7, 2, !dbg !200
  %644 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i814.7, i32 %640), !dbg !201
  %645 = bitcast i32 %644 to float, !dbg !202
  %add413.7 = fadd contract float %add405.3.7, %645, !dbg !203
  %646 = bitcast float %add413.7 to i32, !dbg !204
  %647 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !206
  %648 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %647) #11, !dbg !209
  %xor.i.i815.7 = xor i32 %648, 16, !dbg !210
  %649 = and i32 %648, -64, !dbg !211
  %and.i.i816.7 = add nsw i32 %649, 64, !dbg !211
  %cmp.not.i.i817.7 = icmp slt i32 %xor.i.i815.7, %and.i.i816.7, !dbg !212
  %cond.i.i818.7 = select i1 %cmp.not.i.i817.7, i32 %xor.i.i815.7, i32 %648, !dbg !213
  %shl.i.i819.7 = shl i32 %cond.i.i818.7, 2, !dbg !214
  %650 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i819.7, i32 %646), !dbg !215
  %651 = bitcast i32 %650 to float, !dbg !216
  %add418.7 = fadd contract float %add413.7, %651, !dbg !217
  fence syncscope("warp") release, !dbg !218
  tail call void @llvm.mxc.barrier.warp(), !dbg !221
  fence syncscope("warp") acquire, !dbg !222
  %652 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add438, !dbg !223
  %653 = getelementptr inbounds i8, ptr addrspace(4) %652, i64 %.idx.7, !dbg !223
  %654 = load i64, ptr addrspace(4) %653, align 8, !dbg !224
  %add.ptr447.1.7 = getelementptr inbounds i8, ptr addrspace(4) %653, i64 128, !dbg !223
  %655 = load i64, ptr addrspace(4) %add.ptr447.1.7, align 8, !dbg !224
  %add.ptr447.2.7 = getelementptr inbounds i8, ptr addrspace(4) %653, i64 256, !dbg !223
  %656 = load i64, ptr addrspace(4) %add.ptr447.2.7, align 8, !dbg !224
  %add.ptr447.3.7 = getelementptr inbounds i8, ptr addrspace(4) %653, i64 384, !dbg !223
  %657 = load i64, ptr addrspace(4) %add.ptr447.3.7, align 8, !dbg !224
  %mul312.7 = fmul contract float %denominator.sroa.0.1.6, %mul.i.i.7, !dbg !246
  %658 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul477, !dbg !225
  %add.ptr489.idx.7 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.7 = getelementptr inbounds i8, ptr addrspace(3) %658, i32 %add.ptr489.idx.7, !dbg !225
  %v_column.sroa.130.0.insert.ext1616 = shl i64 %657, 48, !dbg !226
  %v_column.sroa.98.0.insert.ext1461 = shl i64 %656, 32, !dbg !226
  %v_column.sroa.98.0.insert.shift1462 = and i64 %v_column.sroa.98.0.insert.ext1461, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1464 = or disjoint i64 %v_column.sroa.130.0.insert.ext1616, %v_column.sroa.98.0.insert.shift1462, !dbg !226
  %v_column.sroa.66.0.insert.ext1306 = shl i64 %655, 16, !dbg !226
  %v_column.sroa.66.0.insert.shift1307 = and i64 %v_column.sroa.66.0.insert.ext1306, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1309 = or disjoint i64 %v_column.sroa.98.0.insert.insert1464, %v_column.sroa.66.0.insert.shift1307, !dbg !226
  %v_column.sroa.0.0.insert.ext1155 = and i64 %654, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1157 = or disjoint i64 %v_column.sroa.66.0.insert.insert1309, %v_column.sroa.0.0.insert.ext1155, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1157, ptr addrspace(3) %add.ptr489.7, align 8, !dbg !226
  %v_fetch.sroa.0.2.extract.shift1728 = lshr i64 %654, 16, !dbg !227
  %add478.1.7 = or disjoint i32 %mul477, 256, !dbg !228
  %659 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.1.7, !dbg !225
  %xor485.1.7 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.1.7 = xor i32 %xor485.1.7, 8, !dbg !225
  %add.ptr489.1.7 = getelementptr inbounds i8, ptr addrspace(3) %659, i32 %add.ptr489.idx.1.7, !dbg !225
  %660 = shl i64 %657, 32, !dbg !226
  %v_column.sroa.130.0.insert.ext1621 = and i64 %660, -281474976710656, !dbg !226
  %661 = shl i64 %656, 16, !dbg !226
  %v_column.sroa.98.0.insert.shift1467 = and i64 %661, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1469 = or disjoint i64 %v_column.sroa.130.0.insert.ext1621, %v_column.sroa.98.0.insert.shift1467, !dbg !226
  %v_column.sroa.66.0.insert.ext1311 = and i64 %655, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1314 = or disjoint i64 %v_column.sroa.98.0.insert.insert1469, %v_column.sroa.66.0.insert.ext1311, !dbg !226
  %v_column.sroa.0.0.insert.ext1159 = and i64 %v_fetch.sroa.0.2.extract.shift1728, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1161 = or disjoint i64 %v_column.sroa.66.0.insert.insert1314, %v_column.sroa.0.0.insert.ext1159, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1161, ptr addrspace(3) %add.ptr489.1.7, align 8, !dbg !226
  %v_fetch.sroa.0.4.extract.shift1749 = lshr i64 %654, 32, !dbg !227
  %add478.2.7 = or disjoint i32 %mul477, 512, !dbg !228
  %662 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.2.7, !dbg !225
  %xor485.2.7 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.2.7 = xor i32 %xor485.2.7, 16, !dbg !225
  %add.ptr489.2.7 = getelementptr inbounds i8, ptr addrspace(3) %662, i32 %add.ptr489.idx.2.7, !dbg !225
  %663 = shl i64 %657, 16, !dbg !226
  %v_column.sroa.130.0.insert.ext1626 = and i64 %663, -281474976710656, !dbg !226
  %v_column.sroa.98.0.insert.ext1471 = and i64 %656, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1474 = or disjoint i64 %v_column.sroa.130.0.insert.ext1626, %v_column.sroa.98.0.insert.ext1471, !dbg !226
  %664 = lshr i64 %655, 16, !dbg !226
  %v_column.sroa.66.0.insert.shift1317 = and i64 %664, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1319 = or disjoint i64 %v_column.sroa.98.0.insert.insert1474, %v_column.sroa.66.0.insert.shift1317, !dbg !226
  %v_column.sroa.0.0.insert.ext1163 = and i64 %v_fetch.sroa.0.4.extract.shift1749, 65535, !dbg !226
  %v_column.sroa.0.0.insert.insert1165 = or disjoint i64 %v_column.sroa.66.0.insert.insert1319, %v_column.sroa.0.0.insert.ext1163, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1165, ptr addrspace(3) %add.ptr489.2.7, align 8, !dbg !226
  %v_fetch.sroa.0.6.extract.shift1770 = lshr i64 %654, 48, !dbg !227
  %v_fetch.sroa.122.30.extract.shift2001 = and i64 %657, -281474976710656, !dbg !226
  %add478.3.7 = or disjoint i32 %mul477, 768, !dbg !228
  %665 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add478.3.7, !dbg !225
  %xor485.3.7 = shl nuw nsw i32 %xor484, 3, !dbg !225
  %add.ptr489.idx.3.7 = xor i32 %xor485.3.7, 24, !dbg !225
  %add.ptr489.3.7 = getelementptr inbounds i8, ptr addrspace(3) %665, i32 %add.ptr489.idx.3.7, !dbg !225
  %666 = lshr i64 %656, 16, !dbg !226
  %v_column.sroa.98.0.insert.shift1477 = and i64 %666, 281470681743360, !dbg !226
  %v_column.sroa.98.0.insert.insert1479 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2001, %v_column.sroa.98.0.insert.shift1477, !dbg !226
  %667 = lshr i64 %655, 32, !dbg !226
  %v_column.sroa.66.0.insert.shift1322 = and i64 %667, 4294901760, !dbg !226
  %v_column.sroa.66.0.insert.insert1324 = or disjoint i64 %v_column.sroa.98.0.insert.insert1479, %v_column.sroa.66.0.insert.shift1322, !dbg !226
  %v_column.sroa.0.0.insert.insert1169 = or disjoint i64 %v_column.sroa.66.0.insert.insert1324, %v_fetch.sroa.0.6.extract.shift1770, !dbg !226
  store i64 %v_column.sroa.0.0.insert.insert1169, ptr addrspace(3) %add.ptr489.3.7, align 8, !dbg !226
  fence syncscope("warp") release, !dbg !229
  tail call void @llvm.mxc.barrier.warp(), !dbg !232
  fence syncscope("warp") acquire, !dbg !233
  %add506.7 = or disjoint i32 %mul499, %mul505, !dbg !234
  %668 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.7, !dbg !235
  %add.ptr516.idx.7 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.7 = getelementptr inbounds i8, ptr addrspace(3) %668, i32 %add.ptr516.idx.7, !dbg !235
  %669 = load <4 x half>, ptr addrspace(3) %add.ptr516.7, align 8, !dbg !236
  %add501.1.7 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.1.7 = or disjoint i32 %add501.1.7, 64, !dbg !234
  %670 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.1.7, !dbg !235
  %xor512.1.7 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.1.7 = xor i32 %xor512.1.7, 8, !dbg !235
  %add.ptr516.1.7 = getelementptr inbounds i8, ptr addrspace(3) %670, i32 %add.ptr516.idx.1.7, !dbg !235
  %671 = load <4 x half>, ptr addrspace(3) %add.ptr516.1.7, align 8, !dbg !236
  %add501.2.7 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.2.7 = or disjoint i32 %add501.2.7, 128, !dbg !234
  %672 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.2.7, !dbg !235
  %xor512.2.7 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.2.7 = xor i32 %xor512.2.7, 16, !dbg !235
  %add.ptr516.2.7 = getelementptr inbounds i8, ptr addrspace(3) %672, i32 %add.ptr516.idx.2.7, !dbg !235
  %673 = load <4 x half>, ptr addrspace(3) %add.ptr516.2.7, align 8, !dbg !236
  %add501.3.7 = or disjoint i32 %mul499, %mul505, !dbg !234
  %add506.3.7 = or disjoint i32 %add501.3.7, 192, !dbg !234
  %674 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add506.3.7, !dbg !235
  %xor512.3.7 = shl nuw nsw i32 %15, 3, !dbg !235
  %add.ptr516.idx.3.7 = xor i32 %xor512.3.7, 24, !dbg !235
  %add.ptr516.3.7 = getelementptr inbounds i8, ptr addrspace(3) %674, i32 %add.ptr516.idx.3.7, !dbg !235
  %675 = load <4 x half>, ptr addrspace(3) %add.ptr516.3.7, align 8, !dbg !236
  %676 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %669, <4 x half> %639, <4 x float> %numerator.sroa.0.12.vec.insert2540), !dbg !237
  %677 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %671, <4 x half> %639, <4 x float> %numerator.sroa.98.28.vec.insert2696), !dbg !237
  %678 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %673, <4 x half> %639, <4 x float> %numerator.sroa.194.44.vec.insert2852), !dbg !237
  %679 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %675, <4 x half> %639, <4 x float> %numerator.sroa.290.60.vec.insert3008), !dbg !237
  %add422.7 = fadd contract float %mul312.7, %add418.7, !dbg !238
  br label %if.end542.7, !dbg !239

if.end542.7:                                      ; preds = %if.then.7, %if.end542.6
  %numerator.sroa.290.7 = phi <4 x float> [ %numerator.sroa.290.6, %if.end542.6 ], [ %679, %if.then.7 ], !dbg !240
  %numerator.sroa.194.7 = phi <4 x float> [ %numerator.sroa.194.6, %if.end542.6 ], [ %678, %if.then.7 ], !dbg !240
  %numerator.sroa.98.7 = phi <4 x float> [ %numerator.sroa.98.6, %if.end542.6 ], [ %677, %if.then.7 ], !dbg !240
  %numerator.sroa.0.7 = phi <4 x float> [ %numerator.sroa.0.6, %if.end542.6 ], [ %676, %if.then.7 ], !dbg !240
  %denominator.sroa.0.1.7 = phi float [ %denominator.sroa.0.1.6, %if.end542.6 ], [ %add422.7, %if.then.7 ], !dbg !240
  %numerator.sroa.0.0.vec.extract2433 = extractelement <4 x float> %numerator.sroa.0.7, i64 0, !dbg !247
  %numerator.sroa.0.4.vec.extract2470 = extractelement <4 x float> %numerator.sroa.0.7, i64 1, !dbg !247
  %numerator.sroa.0.8.vec.extract2507 = extractelement <4 x float> %numerator.sroa.0.7, i64 2, !dbg !247
  %numerator.sroa.0.12.vec.extract2544 = extractelement <4 x float> %numerator.sroa.0.7, i64 3, !dbg !247
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract2433, %denominator.sroa.0.1.7, !dbg !248
  %div564 = fdiv contract float %numerator.sroa.0.4.vec.extract2470, %denominator.sroa.0.1.7, !dbg !249
  %div568 = fdiv contract float %numerator.sroa.0.8.vec.extract2507, %denominator.sroa.0.1.7, !dbg !250
  %div572 = fdiv contract float %numerator.sroa.0.12.vec.extract2544, %denominator.sroa.0.1.7, !dbg !251
  %numerator.sroa.98.16.vec.extract2587 = extractelement <4 x float> %numerator.sroa.98.7, i64 0, !dbg !247
  %numerator.sroa.98.20.vec.extract2624 = extractelement <4 x float> %numerator.sroa.98.7, i64 1, !dbg !247
  %numerator.sroa.98.24.vec.extract2661 = extractelement <4 x float> %numerator.sroa.98.7, i64 2, !dbg !247
  %numerator.sroa.98.28.vec.extract2698 = extractelement <4 x float> %numerator.sroa.98.7, i64 3, !dbg !247
  %div.1 = fdiv contract float %numerator.sroa.98.16.vec.extract2587, %denominator.sroa.0.1.7, !dbg !248
  %div564.1 = fdiv contract float %numerator.sroa.98.20.vec.extract2624, %denominator.sroa.0.1.7, !dbg !249
  %div568.1 = fdiv contract float %numerator.sroa.98.24.vec.extract2661, %denominator.sroa.0.1.7, !dbg !250
  %div572.1 = fdiv contract float %numerator.sroa.98.28.vec.extract2698, %denominator.sroa.0.1.7, !dbg !251
  %numerator.sroa.194.32.vec.extract2743 = extractelement <4 x float> %numerator.sroa.194.7, i64 0, !dbg !247
  %numerator.sroa.194.36.vec.extract2780 = extractelement <4 x float> %numerator.sroa.194.7, i64 1, !dbg !247
  %numerator.sroa.194.40.vec.extract2817 = extractelement <4 x float> %numerator.sroa.194.7, i64 2, !dbg !247
  %numerator.sroa.194.44.vec.extract2854 = extractelement <4 x float> %numerator.sroa.194.7, i64 3, !dbg !247
  %div.2 = fdiv contract float %numerator.sroa.194.32.vec.extract2743, %denominator.sroa.0.1.7, !dbg !248
  %div564.2 = fdiv contract float %numerator.sroa.194.36.vec.extract2780, %denominator.sroa.0.1.7, !dbg !249
  %div568.2 = fdiv contract float %numerator.sroa.194.40.vec.extract2817, %denominator.sroa.0.1.7, !dbg !250
  %div572.2 = fdiv contract float %numerator.sroa.194.44.vec.extract2854, %denominator.sroa.0.1.7, !dbg !251
  %numerator.sroa.290.48.vec.extract2899 = extractelement <4 x float> %numerator.sroa.290.7, i64 0, !dbg !247
  %numerator.sroa.290.52.vec.extract2936 = extractelement <4 x float> %numerator.sroa.290.7, i64 1, !dbg !247
  %numerator.sroa.290.56.vec.extract2973 = extractelement <4 x float> %numerator.sroa.290.7, i64 2, !dbg !247
  %numerator.sroa.290.60.vec.extract3010 = extractelement <4 x float> %numerator.sroa.290.7, i64 3, !dbg !247
  %div.3 = fdiv contract float %numerator.sroa.290.48.vec.extract2899, %denominator.sroa.0.1.7, !dbg !248
  %div564.3 = fdiv contract float %numerator.sroa.290.52.vec.extract2936, %denominator.sroa.0.1.7, !dbg !249
  %div568.3 = fdiv contract float %numerator.sroa.290.56.vec.extract2973, %denominator.sroa.0.1.7, !dbg !250
  %div572.3 = fdiv contract float %numerator.sroa.290.60.vec.extract3010, %denominator.sroa.0.1.7, !dbg !251
  fence syncscope("warp") release, !dbg !252
  tail call void @llvm.mxc.barrier.warp(), !dbg !255
  fence syncscope("warp") acquire, !dbg !256
  %mul618 = and i32 %10, 4
  %680 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %681 = fptrunc float %div to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %680), !dbg !257, !noalias !261
  %682 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %683 = fptrunc float %div564 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %682), !dbg !266, !noalias !261
  %684 = bitcast half %681 to i16, !dbg !268
  %685 = bitcast half %683 to i16, !dbg !271
  %686 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !276
  %687 = fptrunc float %div568 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %686), !dbg !272, !noalias !276
  %688 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !276
  %689 = fptrunc float %div572 to half, !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %688), !dbg !281, !noalias !276
  %690 = bitcast half %687 to i16, !dbg !283
  %691 = bitcast half %689 to i16, !dbg !285
  %__8.sroa.6.0.insert.ext = zext i16 %691 to i64, !dbg !286
  %__8.sroa.6.0.insert.shift = shl nuw i64 %__8.sroa.6.0.insert.ext, 48, !dbg !286
  %__8.sroa.5.0.insert.ext = zext i16 %690 to i64, !dbg !286
  %__8.sroa.5.0.insert.shift = shl nuw nsw i64 %__8.sroa.5.0.insert.ext, 32, !dbg !286
  %__8.sroa.5.0.insert.insert = or disjoint i64 %__8.sroa.6.0.insert.shift, %__8.sroa.5.0.insert.shift, !dbg !286
  %__8.sroa.4.0.insert.ext = zext i16 %685 to i64, !dbg !286
  %__8.sroa.4.0.insert.shift = shl nuw nsw i64 %__8.sroa.4.0.insert.ext, 16, !dbg !286
  %__8.sroa.4.0.insert.insert = or disjoint i64 %__8.sroa.5.0.insert.insert, %__8.sroa.4.0.insert.shift, !dbg !286
  %__8.sroa.0.0.insert.ext = zext i16 %684 to i64, !dbg !286
  %__8.sroa.0.0.insert.insert = or disjoint i64 %__8.sroa.4.0.insert.insert, %__8.sroa.0.0.insert.ext, !dbg !286
  %add619 = or disjoint i32 %add60, %mul618, !dbg !287
  %add.ptr621 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add619, !dbg !288
  store i64 %__8.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr621, align 8, !dbg !289
  %692 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %693 = fptrunc float %div.1 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %692), !dbg !257, !noalias !261
  %694 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %695 = fptrunc float %div564.1 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %694), !dbg !266, !noalias !261
  %696 = bitcast half %693 to i16, !dbg !268
  %697 = bitcast half %695 to i16, !dbg !271
  %698 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !276
  %699 = fptrunc float %div568.1 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %698), !dbg !272, !noalias !276
  %700 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !276
  %701 = fptrunc float %div572.1 to half, !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %700), !dbg !281, !noalias !276
  %702 = bitcast half %699 to i16, !dbg !283
  %703 = bitcast half %701 to i16, !dbg !285
  %__8.sroa.6.0.insert.ext.1 = zext i16 %703 to i64, !dbg !286
  %__8.sroa.6.0.insert.shift.1 = shl nuw i64 %__8.sroa.6.0.insert.ext.1, 48, !dbg !286
  %__8.sroa.5.0.insert.ext.1 = zext i16 %702 to i64, !dbg !286
  %__8.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.1, 32, !dbg !286
  %__8.sroa.5.0.insert.insert.1 = or disjoint i64 %__8.sroa.6.0.insert.shift.1, %__8.sroa.5.0.insert.shift.1, !dbg !286
  %__8.sroa.4.0.insert.ext.1 = zext i16 %697 to i64, !dbg !286
  %__8.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.1, 16, !dbg !286
  %__8.sroa.4.0.insert.insert.1 = or disjoint i64 %__8.sroa.5.0.insert.insert.1, %__8.sroa.4.0.insert.shift.1, !dbg !286
  %__8.sroa.0.0.insert.ext.1 = zext i16 %696 to i64, !dbg !286
  %__8.sroa.0.0.insert.insert.1 = or disjoint i64 %__8.sroa.4.0.insert.insert.1, %__8.sroa.0.0.insert.ext.1, !dbg !286
  %add619.1 = or disjoint i32 %add60.1, %mul618, !dbg !287
  %add.ptr621.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add619.1, !dbg !288
  store i64 %__8.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr621.1, align 8, !dbg !289
  %704 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %705 = fptrunc float %div.2 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %704), !dbg !257, !noalias !261
  %706 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %707 = fptrunc float %div564.2 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %706), !dbg !266, !noalias !261
  %708 = bitcast half %705 to i16, !dbg !268
  %709 = bitcast half %707 to i16, !dbg !271
  %710 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !276
  %711 = fptrunc float %div568.2 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %710), !dbg !272, !noalias !276
  %712 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !276
  %713 = fptrunc float %div572.2 to half, !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %712), !dbg !281, !noalias !276
  %714 = bitcast half %711 to i16, !dbg !283
  %715 = bitcast half %713 to i16, !dbg !285
  %__8.sroa.6.0.insert.ext.2 = zext i16 %715 to i64, !dbg !286
  %__8.sroa.6.0.insert.shift.2 = shl nuw i64 %__8.sroa.6.0.insert.ext.2, 48, !dbg !286
  %__8.sroa.5.0.insert.ext.2 = zext i16 %714 to i64, !dbg !286
  %__8.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.2, 32, !dbg !286
  %__8.sroa.5.0.insert.insert.2 = or disjoint i64 %__8.sroa.6.0.insert.shift.2, %__8.sroa.5.0.insert.shift.2, !dbg !286
  %__8.sroa.4.0.insert.ext.2 = zext i16 %709 to i64, !dbg !286
  %__8.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.2, 16, !dbg !286
  %__8.sroa.4.0.insert.insert.2 = or disjoint i64 %__8.sroa.5.0.insert.insert.2, %__8.sroa.4.0.insert.shift.2, !dbg !286
  %__8.sroa.0.0.insert.ext.2 = zext i16 %708 to i64, !dbg !286
  %__8.sroa.0.0.insert.insert.2 = or disjoint i64 %__8.sroa.4.0.insert.insert.2, %__8.sroa.0.0.insert.ext.2, !dbg !286
  %add619.2 = or disjoint i32 %add60.2, %mul618, !dbg !287
  %add.ptr621.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add619.2, !dbg !288
  store i64 %__8.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr621.2, align 8, !dbg !289
  %716 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %717 = fptrunc float %div.3 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %716), !dbg !257, !noalias !261
  %718 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %719 = fptrunc float %div564.3 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %718), !dbg !266, !noalias !261
  %720 = bitcast half %717 to i16, !dbg !268
  %721 = bitcast half %719 to i16, !dbg !271
  %722 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !276
  %723 = fptrunc float %div568.3 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %722), !dbg !272, !noalias !276
  %724 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !276
  %725 = fptrunc float %div572.3 to half, !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %724), !dbg !281, !noalias !276
  %726 = bitcast half %723 to i16, !dbg !283
  %727 = bitcast half %725 to i16, !dbg !285
  %__8.sroa.6.0.insert.ext.3 = zext i16 %727 to i64, !dbg !286
  %__8.sroa.6.0.insert.shift.3 = shl nuw i64 %__8.sroa.6.0.insert.ext.3, 48, !dbg !286
  %__8.sroa.5.0.insert.ext.3 = zext i16 %726 to i64, !dbg !286
  %__8.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.3, 32, !dbg !286
  %__8.sroa.5.0.insert.insert.3 = or disjoint i64 %__8.sroa.6.0.insert.shift.3, %__8.sroa.5.0.insert.shift.3, !dbg !286
  %__8.sroa.4.0.insert.ext.3 = zext i16 %721 to i64, !dbg !286
  %__8.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.3, 16, !dbg !286
  %__8.sroa.4.0.insert.insert.3 = or disjoint i64 %__8.sroa.5.0.insert.insert.3, %__8.sroa.4.0.insert.shift.3, !dbg !286
  %__8.sroa.0.0.insert.ext.3 = zext i16 %720 to i64, !dbg !286
  %__8.sroa.0.0.insert.insert.3 = or disjoint i64 %__8.sroa.4.0.insert.insert.3, %__8.sroa.0.0.insert.ext.3, !dbg !286
  %add619.3 = or disjoint i32 %add60.3, %mul618, !dbg !287
  %add.ptr621.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add619.3, !dbg !288
  store i64 %__8.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr621.3, align 8, !dbg !289
  fence syncscope("warp") release, !dbg !290
  tail call void @llvm.mxc.barrier.warp(), !dbg !293
  fence syncscope("warp") acquire, !dbg !294
  %add.ptr654 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !295
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr654, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep840, i64 16, i1 false), !dbg !296, !tbaa.struct !297, !call_argsrelate !298
  %add.ptr654.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %4, !dbg !295
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr654.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep841.1, i64 16, i1 false), !dbg !296, !tbaa.struct !297, !call_argsrelate !298
  ret void, !dbg !299
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v062_codex_power_s8_qk_vec16_store_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v062_codex_power_s8_qk_vec16_store_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 30, column: 8, scope: !40)
!44 = !DILocation(line: 30, column: 3, scope: !40)
!45 = !DILocation(line: 31, column: 43, scope: !40)
!46 = !DILocation(line: 31, column: 29, scope: !40)
!47 = !DILocation(line: 34, column: 27, scope: !40)
!48 = !DILocation(line: 36, column: 140, scope: !40)
!49 = !DILocation(line: 31, column: 124, scope: !40)
!50 = !DILocation(line: 36, column: 22, scope: !40)
!51 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !54)
!52 = distinct !DISubprogram(name: "__barrier_warp", scope: !53, file: !53, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!53 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!54 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !56)
!55 = distinct !DISubprogram(name: "__syncwarp", scope: !53, file: !53, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!56 = distinct !DILocation(line: 38, column: 3, scope: !40)
!57 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !54)
!58 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !54)
!59 = !DILocation(line: 41, column: 140, scope: !40)
!60 = !DILocation(line: 41, column: 168, scope: !40)
!61 = !DILocation(line: 41, column: 94, scope: !40)
!62 = !DILocation(line: 41, column: 174, scope: !40)
!63 = !DILocation(line: 41, column: 57, scope: !40)
!64 = !DILocation(line: 41, column: 38, scope: !40)
!65 = !DILocation(line: 41, column: 111, scope: !40)
!66 = !DILocation(line: 51, column: 3, scope: !40)
!67 = !DILocation(line: 52, column: 24, scope: !40)
!68 = !DILocation(line: 52, column: 101, scope: !40)
!69 = !DILocation(line: 53, column: 12, scope: !40)
!70 = !DILocation(line: 53, column: 28, scope: !40)
!71 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !72)
!72 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !73)
!73 = distinct !DILocation(line: 54, column: 7, scope: !40)
!74 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !72)
!75 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !72)
!76 = !DILocation(line: 56, column: 12, scope: !40)
!77 = !DILocation(line: 57, column: 47, scope: !40)
!78 = !DILocation(line: 57, column: 33, scope: !40)
!79 = !DILocation(line: 60, column: 33, scope: !40)
!80 = !DILocation(line: 62, column: 146, scope: !40)
!81 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !82)
!82 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !83)
!83 = distinct !DILocation(line: 64, column: 7, scope: !40)
!84 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !82)
!85 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !82)
!86 = !DILocation(line: 69, column: 32, scope: !40)
!87 = !DILocation(line: 71, column: 37, scope: !40)
!88 = !DILocation(line: 79, column: 76, scope: !40)
!89 = !DILocation(line: 79, column: 13, scope: !40)
!90 = !DILocation(line: 79, column: 63, scope: !40)
!91 = !DILocation(line: 351, column: 10, scope: !92, inlinedAt: !94)
!92 = distinct !DISubprogram(name: "max", scope: !93, file: !93, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!93 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!94 = distinct !DILocation(line: 89, column: 28, scope: !40)
!95 = !DILocation(line: 1018, column: 9, scope: !96, inlinedAt: !97)
!96 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !53, file: !53, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!97 = distinct !DILocation(line: 91, column: 48, scope: !40)
!98 = !DILocation(line: 171, column: 37, scope: !99, inlinedAt: !100)
!99 = distinct !DISubprogram(name: "__lane_id", scope: !53, file: !53, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!100 = distinct !DILocation(line: 990, column: 14, scope: !101, inlinedAt: !102)
!101 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !53, file: !53, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!102 = distinct !DILocation(line: 1019, column: 11, scope: !96, inlinedAt: !97)
!103 = !DILocation(line: 171, column: 10, scope: !99, inlinedAt: !100)
!104 = !DILocation(line: 991, column: 20, scope: !101, inlinedAt: !102)
!105 = !DILocation(line: 992, column: 36, scope: !101, inlinedAt: !102)
!106 = !DILocation(line: 992, column: 17, scope: !101, inlinedAt: !102)
!107 = !DILocation(line: 992, column: 11, scope: !101, inlinedAt: !102)
!108 = !DILocation(line: 993, column: 43, scope: !101, inlinedAt: !102)
!109 = !DILocation(line: 993, column: 10, scope: !101, inlinedAt: !102)
!110 = !DILocation(line: 1020, column: 14, scope: !96, inlinedAt: !97)
!111 = !DILocation(line: 351, column: 10, scope: !92, inlinedAt: !112)
!112 = distinct !DILocation(line: 91, column: 26, scope: !40)
!113 = !DILocation(line: 1018, column: 9, scope: !96, inlinedAt: !114)
!114 = distinct !DILocation(line: 92, column: 48, scope: !40)
!115 = !DILocation(line: 171, column: 37, scope: !99, inlinedAt: !116)
!116 = distinct !DILocation(line: 990, column: 14, scope: !101, inlinedAt: !117)
!117 = distinct !DILocation(line: 1019, column: 11, scope: !96, inlinedAt: !114)
!118 = !DILocation(line: 171, column: 10, scope: !99, inlinedAt: !116)
!119 = !DILocation(line: 991, column: 20, scope: !101, inlinedAt: !117)
!120 = !DILocation(line: 992, column: 36, scope: !101, inlinedAt: !117)
!121 = !DILocation(line: 992, column: 17, scope: !101, inlinedAt: !117)
!122 = !DILocation(line: 992, column: 11, scope: !101, inlinedAt: !117)
!123 = !DILocation(line: 993, column: 43, scope: !101, inlinedAt: !117)
!124 = !DILocation(line: 993, column: 10, scope: !101, inlinedAt: !117)
!125 = !DILocation(line: 1020, column: 14, scope: !96, inlinedAt: !114)
!126 = !DILocation(line: 351, column: 10, scope: !92, inlinedAt: !127)
!127 = distinct !DILocation(line: 92, column: 26, scope: !40)
!128 = !DILocation(line: 351, column: 10, scope: !92, inlinedAt: !129)
!129 = distinct !DILocation(line: 93, column: 24, scope: !40)
!130 = !DILocation(line: 94, column: 39, scope: !40)
!131 = !DILocation(line: 94, column: 57, scope: !40)
!132 = !DILocation(line: 285, column: 49, scope: !133, inlinedAt: !134)
!133 = distinct !DISubprogram(name: "exp2f", scope: !93, file: !93, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!134 = distinct !DILocation(line: 94, column: 20, scope: !40)
!135 = !DILocation(line: 100, column: 24, scope: !40)
!136 = !DILocation(line: 104, column: 47, scope: !40)
!137 = !DILocation(line: 117, column: 28, scope: !40)
!138 = !DILocation(line: 118, column: 28, scope: !40)
!139 = !DILocation(line: 119, column: 28, scope: !40)
!140 = !DILocation(line: 120, column: 28, scope: !40)
!141 = !DILocation(line: 122, column: 25, scope: !40)
!142 = !DILocation(line: 123, column: 25, scope: !40)
!143 = !DILocation(line: 124, column: 25, scope: !40)
!144 = !DILocation(line: 125, column: 25, scope: !40)
!145 = !DILocation(line: 127, column: 23, scope: !40)
!146 = !DILocation(line: 128, column: 23, scope: !40)
!147 = !DILocation(line: 129, column: 23, scope: !40)
!148 = !DILocation(line: 130, column: 23, scope: !40)
!149 = !DILocation(line: 285, column: 49, scope: !133, inlinedAt: !150)
!150 = distinct !DILocation(line: 131, column: 15, scope: !40)
!151 = !DILocation(line: 285, column: 49, scope: !133, inlinedAt: !152)
!152 = distinct !DILocation(line: 132, column: 15, scope: !40)
!153 = !DILocation(line: 285, column: 49, scope: !133, inlinedAt: !154)
!154 = distinct !DILocation(line: 133, column: 15, scope: !40)
!155 = !DILocation(line: 285, column: 49, scope: !133, inlinedAt: !156)
!156 = distinct !DILocation(line: 134, column: 15, scope: !40)
!157 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !160)
!158 = distinct !DISubprogram(name: "__float2half_rn", scope: !159, file: !159, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!159 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!160 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !162)
!161 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !159, file: !159, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!162 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !164)
!163 = distinct !DISubprogram(name: "__float22half2_rn", scope: !159, file: !159, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!164 = distinct !DILocation(line: 135, column: 29, scope: !40)
!165 = !{!166, !168}
!166 = distinct !{!166, !167, !"_ZL17__floats2half2_rnff: %agg.result"}
!167 = distinct !{!167, !"_ZL17__floats2half2_rnff"}
!168 = distinct !{!168, !169, !"_ZL17__float22half2_rn6float2: %agg.result"}
!169 = distinct !{!169, !"_ZL17__float22half2_rn6float2"}
!170 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !171)
!171 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !162)
!172 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !173)
!173 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !174)
!174 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !175)
!175 = distinct !DILocation(line: 136, column: 29, scope: !40)
!176 = !{!177, !179}
!177 = distinct !{!177, !178, !"_ZL17__floats2half2_rnff: %agg.result"}
!178 = distinct !{!178, !"_ZL17__floats2half2_rnff"}
!179 = distinct !{!179, !180, !"_ZL17__float22half2_rn6float2: %agg.result"}
!180 = distinct !{!180, !"_ZL17__float22half2_rn6float2"}
!181 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !182)
!182 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !174)
!183 = !DILocation(line: 137, column: 36, scope: !40)
!184 = !DILocation(line: 1082, column: 16, scope: !185, inlinedAt: !186)
!185 = distinct !DISubprogram(name: "__half2float", scope: !159, file: !159, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!186 = distinct !DILocation(line: 136, column: 55, scope: !187, inlinedAt: !188)
!187 = distinct !DISubprogram(name: "operator float", scope: !159, file: !159, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!188 = distinct !DILocation(line: 141, column: 52, scope: !40)
!189 = !DILocation(line: 141, column: 42, scope: !40)
!190 = !DILocation(line: 1018, column: 9, scope: !96, inlinedAt: !191)
!191 = distinct !DILocation(line: 143, column: 42, scope: !40)
!192 = !DILocation(line: 171, column: 37, scope: !99, inlinedAt: !193)
!193 = distinct !DILocation(line: 990, column: 14, scope: !101, inlinedAt: !194)
!194 = distinct !DILocation(line: 1019, column: 11, scope: !96, inlinedAt: !191)
!195 = !DILocation(line: 171, column: 10, scope: !99, inlinedAt: !193)
!196 = !DILocation(line: 991, column: 20, scope: !101, inlinedAt: !194)
!197 = !DILocation(line: 992, column: 36, scope: !101, inlinedAt: !194)
!198 = !DILocation(line: 992, column: 17, scope: !101, inlinedAt: !194)
!199 = !DILocation(line: 992, column: 11, scope: !101, inlinedAt: !194)
!200 = !DILocation(line: 993, column: 43, scope: !101, inlinedAt: !194)
!201 = !DILocation(line: 993, column: 10, scope: !101, inlinedAt: !194)
!202 = !DILocation(line: 1020, column: 14, scope: !96, inlinedAt: !191)
!203 = !DILocation(line: 143, column: 40, scope: !40)
!204 = !DILocation(line: 1018, column: 9, scope: !96, inlinedAt: !205)
!205 = distinct !DILocation(line: 144, column: 42, scope: !40)
!206 = !DILocation(line: 171, column: 37, scope: !99, inlinedAt: !207)
!207 = distinct !DILocation(line: 990, column: 14, scope: !101, inlinedAt: !208)
!208 = distinct !DILocation(line: 1019, column: 11, scope: !96, inlinedAt: !205)
!209 = !DILocation(line: 171, column: 10, scope: !99, inlinedAt: !207)
!210 = !DILocation(line: 991, column: 20, scope: !101, inlinedAt: !208)
!211 = !DILocation(line: 992, column: 36, scope: !101, inlinedAt: !208)
!212 = !DILocation(line: 992, column: 17, scope: !101, inlinedAt: !208)
!213 = !DILocation(line: 992, column: 11, scope: !101, inlinedAt: !208)
!214 = !DILocation(line: 993, column: 43, scope: !101, inlinedAt: !208)
!215 = !DILocation(line: 993, column: 10, scope: !101, inlinedAt: !208)
!216 = !DILocation(line: 1020, column: 14, scope: !96, inlinedAt: !205)
!217 = !DILocation(line: 144, column: 40, scope: !40)
!218 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !219)
!219 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !220)
!220 = distinct !DILocation(line: 146, column: 7, scope: !40)
!221 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !219)
!222 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !219)
!223 = !DILocation(line: 149, column: 54, scope: !40)
!224 = !DILocation(line: 149, column: 40, scope: !40)
!225 = !DILocation(line: 156, column: 26, scope: !40)
!226 = !DILocation(line: 156, column: 159, scope: !40)
!227 = !DILocation(line: 154, column: 27, scope: !40)
!228 = !DILocation(line: 156, column: 42, scope: !40)
!229 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !230)
!230 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !231)
!231 = distinct !DILocation(line: 158, column: 7, scope: !40)
!232 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !230)
!233 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !230)
!234 = !DILocation(line: 161, column: 121, scope: !40)
!235 = !DILocation(line: 161, column: 65, scope: !40)
!236 = !DILocation(line: 161, column: 46, scope: !40)
!237 = !DILocation(line: 166, column: 46, scope: !40)
!238 = !DILocation(line: 145, column: 40, scope: !40)
!239 = !DILocation(line: 51, column: 40, scope: !40)
!240 = !DILocation(line: 0, scope: !40)
!241 = !DILocation(line: 52, column: 88, scope: !40)
!242 = !DILocation(line: 98, column: 23, scope: !40)
!243 = !DILocation(line: 101, column: 24, scope: !40)
!244 = !DILocation(line: 102, column: 24, scope: !40)
!245 = !DILocation(line: 103, column: 24, scope: !40)
!246 = !DILocation(line: 106, column: 40, scope: !40)
!247 = !DILocation(line: 176, column: 21, scope: !40)
!248 = !DILocation(line: 178, column: 22, scope: !40)
!249 = !DILocation(line: 179, column: 22, scope: !40)
!250 = !DILocation(line: 180, column: 22, scope: !40)
!251 = !DILocation(line: 181, column: 22, scope: !40)
!252 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !253)
!253 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !254)
!254 = distinct !DILocation(line: 184, column: 3, scope: !40)
!255 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !253)
!256 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !253)
!257 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !258)
!258 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !259)
!259 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !260)
!260 = distinct !DILocation(line: 189, column: 27, scope: !40)
!261 = !{!262, !264}
!262 = distinct !{!262, !263, !"_ZL17__floats2half2_rnff: %agg.result"}
!263 = distinct !{!263, !"_ZL17__floats2half2_rnff"}
!264 = distinct !{!264, !265, !"_ZL17__float22half2_rn6float2: %agg.result"}
!265 = distinct !{!265, !"_ZL17__float22half2_rn6float2"}
!266 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !267)
!267 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !259)
!268 = !DILocation(line: 596, column: 67, scope: !269, inlinedAt: !270)
!269 = distinct !DISubprogram(name: "__half2", scope: !159, file: !159, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!270 = distinct !DILocation(line: 1077, column: 10, scope: !161, inlinedAt: !259)
!271 = !DILocation(line: 596, column: 73, scope: !269, inlinedAt: !270)
!272 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !273)
!273 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !274)
!274 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !275)
!275 = distinct !DILocation(line: 190, column: 27, scope: !40)
!276 = !{!277, !279}
!277 = distinct !{!277, !278, !"_ZL17__floats2half2_rnff: %agg.result"}
!278 = distinct !{!278, !"_ZL17__floats2half2_rnff"}
!279 = distinct !{!279, !280, !"_ZL17__float22half2_rn6float2: %agg.result"}
!280 = distinct !{!280, !"_ZL17__float22half2_rn6float2"}
!281 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !282)
!282 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !274)
!283 = !DILocation(line: 596, column: 67, scope: !269, inlinedAt: !284)
!284 = distinct !DILocation(line: 1077, column: 10, scope: !161, inlinedAt: !274)
!285 = !DILocation(line: 596, column: 73, scope: !269, inlinedAt: !284)
!286 = !DILocation(line: 191, column: 38, scope: !40)
!287 = !DILocation(line: 192, column: 141, scope: !40)
!288 = !DILocation(line: 192, column: 22, scope: !40)
!289 = !DILocation(line: 192, column: 184, scope: !40)
!290 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !291)
!291 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !292)
!292 = distinct !DILocation(line: 194, column: 3, scope: !40)
!293 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !291)
!294 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !291)
!295 = !DILocation(line: 197, column: 22, scope: !40)
!296 = !DILocation(line: 197, column: 134, scope: !40)
!297 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!298 = !{i32 2, i32 -1, i32 -1, i32 -1}
!299 = !DILocation(line: 199, column: 1, scope: !40)
