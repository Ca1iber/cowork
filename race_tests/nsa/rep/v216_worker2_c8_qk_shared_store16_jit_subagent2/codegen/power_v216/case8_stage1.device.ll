; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v216_worker2_c8_qk_shared_store16_jit_subagent2/codegen/power_v216/case8_stage1.device.cpp'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v216_worker2_c8_qk_shared_store16_jit_subagent2/codegen/power_v216/case8_stage1.device.cpp"
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
define protected metaxgpu_kernel void @native_sparse_attention_kernel(ptr addrspace(1) noalias nocapture noundef readonly %Indices.coerce, ptr addrspace(4) noalias nocapture noundef readonly %K.coerce, ptr addrspace(1) noalias nocapture noundef writeonly %Output.coerce, ptr addrspace(4) noalias nocapture noundef readonly %Q.coerce, ptr addrspace(4) noalias nocapture noundef readonly %V.coerce) local_unnamed_addr #3 !dbg !40 {
entry:
  %0 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.y(), !range !29
  %mul = shl nsw i32 %0, 22
  %1 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !range !29
  %mul7 = shl nsw i32 %1, 10
  %add = add nuw nsw i32 %mul, %mul7
  %2 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !42
  %mul11 = shl nuw nsw i32 %2, 3
  %add9 = add nuw nsw i32 %add, %mul11
  %and = lshr i32 %2, 3
  %shr = and i32 %and, 1
  %mul100 = and i32 %mul11, 8128
  %xor106947 = and i32 %mul11, 56
  %call104.masked = and i32 %2, 1016
  %mul107 = xor i32 %xor106947, %call104.masked
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul100, !dbg !43
  %invariant.gep1000 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul107, !dbg !43
  %3 = zext nneg i32 %add9 to i64, !dbg !44
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %3, !dbg !45
  %qk_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %add.ptr, align 16, !dbg !46
  %qk_fetch.sroa.8.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 2, !dbg !46
  %qk_fetch.sroa.8.0.copyload = load i16, ptr addrspace(4) %qk_fetch.sroa.8.0.add.ptr.sroa_idx, align 2, !dbg !46, !tbaa !30
  %qk_fetch.sroa.12.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 4, !dbg !46
  %qk_fetch.sroa.12.0.copyload = load i16, ptr addrspace(4) %qk_fetch.sroa.12.0.add.ptr.sroa_idx, align 4, !dbg !46
  %qk_fetch.sroa.16.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 6, !dbg !46
  %qk_fetch.sroa.16.0.copyload = load i16, ptr addrspace(4) %qk_fetch.sroa.16.0.add.ptr.sroa_idx, align 2, !dbg !46, !tbaa !30
  %qk_fetch.sroa.20.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !46
  %qk_fetch.sroa.20.0.copyload = load i16, ptr addrspace(4) %qk_fetch.sroa.20.0.add.ptr.sroa_idx, align 8, !dbg !46
  %qk_fetch.sroa.24.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 10, !dbg !46
  %qk_fetch.sroa.24.0.copyload = load i16, ptr addrspace(4) %qk_fetch.sroa.24.0.add.ptr.sroa_idx, align 2, !dbg !46, !tbaa !30
  %qk_fetch.sroa.28.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 12, !dbg !46
  %qk_fetch.sroa.28.0.copyload = load i16, ptr addrspace(4) %qk_fetch.sroa.28.0.add.ptr.sroa_idx, align 4, !dbg !46
  %qk_fetch.sroa.32.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 14, !dbg !46
  %qk_fetch.sroa.32.0.copyload = load i16, ptr addrspace(4) %qk_fetch.sroa.32.0.add.ptr.sroa_idx, align 2, !dbg !46, !tbaa !30
  %cmp15.not = icmp eq i32 %shr, 0, !dbg !47
  %qk_fetch.sroa.0.0.copyload.qk_fetch.sroa.20.0.copyload = select i1 %cmp15.not, i16 %qk_fetch.sroa.0.0.copyload, i16 %qk_fetch.sroa.20.0.copyload
  %condval_1.sroa.0.0 = select i1 %cmp15.not, i16 %qk_fetch.sroa.8.0.copyload, i16 %qk_fetch.sroa.24.0.copyload, !dbg !48
  %condval_2.sroa.0.0 = select i1 %cmp15.not, i16 %qk_fetch.sroa.12.0.copyload, i16 %qk_fetch.sroa.28.0.copyload, !dbg !49
  %condval_3.sroa.0.0 = select i1 %cmp15.not, i16 %qk_fetch.sroa.16.0.copyload, i16 %qk_fetch.sroa.32.0.copyload, !dbg !50
  %condval_4.sroa.0.0 = select i1 %cmp15.not, i16 %qk_fetch.sroa.20.0.copyload, i16 %qk_fetch.sroa.0.0.copyload, !dbg !51
  %condval_5.sroa.0.0 = select i1 %cmp15.not, i16 %qk_fetch.sroa.24.0.copyload, i16 %qk_fetch.sroa.8.0.copyload, !dbg !52
  %condval_6.sroa.0.0 = select i1 %cmp15.not, i16 %qk_fetch.sroa.28.0.copyload, i16 %qk_fetch.sroa.12.0.copyload, !dbg !53
  %condval_7.sroa.0.0 = select i1 %cmp15.not, i16 %qk_fetch.sroa.32.0.copyload, i16 %qk_fetch.sroa.16.0.copyload, !dbg !54
  store i16 %qk_fetch.sroa.0.0.copyload.qk_fetch.sroa.20.0.copyload, ptr addrspace(3) %invariant.gep1000, align 16, !dbg !55
  %qk_store.sroa.6.0.add.ptr110.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1000, i32 2, !dbg !55
  store i16 %condval_1.sroa.0.0, ptr addrspace(3) %qk_store.sroa.6.0.add.ptr110.sroa_idx, align 2, !dbg !55, !tbaa !30
  %qk_store.sroa.8.0.add.ptr110.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1000, i32 4, !dbg !55
  store i16 %condval_2.sroa.0.0, ptr addrspace(3) %qk_store.sroa.8.0.add.ptr110.sroa_idx, align 4, !dbg !55
  %qk_store.sroa.10.0.add.ptr110.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1000, i32 6, !dbg !55
  store i16 %condval_3.sroa.0.0, ptr addrspace(3) %qk_store.sroa.10.0.add.ptr110.sroa_idx, align 2, !dbg !55, !tbaa !30
  %qk_store.sroa.12.0.add.ptr110.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1000, i32 8, !dbg !55
  store i16 %condval_4.sroa.0.0, ptr addrspace(3) %qk_store.sroa.12.0.add.ptr110.sroa_idx, align 8, !dbg !55
  %qk_store.sroa.14.0.add.ptr110.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1000, i32 10, !dbg !55
  store i16 %condval_5.sroa.0.0, ptr addrspace(3) %qk_store.sroa.14.0.add.ptr110.sroa_idx, align 2, !dbg !55, !tbaa !30
  %qk_store.sroa.16.0.add.ptr110.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1000, i32 12, !dbg !55
  store i16 %condval_6.sroa.0.0, ptr addrspace(3) %qk_store.sroa.16.0.add.ptr110.sroa_idx, align 4, !dbg !55
  %qk_store.sroa.18.0.add.ptr110.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1000, i32 14, !dbg !55
  store i16 %condval_7.sroa.0.0, ptr addrspace(3) %qk_store.sroa.18.0.add.ptr110.sroa_idx, align 2, !dbg !55, !tbaa !30
  %4 = add nuw nsw i64 %3, 512, !dbg !56
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %4, !dbg !45
  %qk_fetch.sroa.0.0.copyload.1 = load i16, ptr addrspace(4) %add.ptr.1, align 16, !dbg !46
  %qk_fetch.sroa.8.0.add.ptr.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 2, !dbg !46
  %qk_fetch.sroa.8.0.copyload.1 = load i16, ptr addrspace(4) %qk_fetch.sroa.8.0.add.ptr.sroa_idx.1, align 2, !dbg !46, !tbaa !30
  %qk_fetch.sroa.12.0.add.ptr.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 4, !dbg !46
  %qk_fetch.sroa.12.0.copyload.1 = load i16, ptr addrspace(4) %qk_fetch.sroa.12.0.add.ptr.sroa_idx.1, align 4, !dbg !46
  %qk_fetch.sroa.16.0.add.ptr.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 6, !dbg !46
  %qk_fetch.sroa.16.0.copyload.1 = load i16, ptr addrspace(4) %qk_fetch.sroa.16.0.add.ptr.sroa_idx.1, align 2, !dbg !46, !tbaa !30
  %qk_fetch.sroa.20.0.add.ptr.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !46
  %qk_fetch.sroa.20.0.copyload.1 = load i16, ptr addrspace(4) %qk_fetch.sroa.20.0.add.ptr.sroa_idx.1, align 8, !dbg !46
  %qk_fetch.sroa.24.0.add.ptr.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 10, !dbg !46
  %qk_fetch.sroa.24.0.copyload.1 = load i16, ptr addrspace(4) %qk_fetch.sroa.24.0.add.ptr.sroa_idx.1, align 2, !dbg !46, !tbaa !30
  %qk_fetch.sroa.28.0.add.ptr.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 12, !dbg !46
  %qk_fetch.sroa.28.0.copyload.1 = load i16, ptr addrspace(4) %qk_fetch.sroa.28.0.add.ptr.sroa_idx.1, align 4, !dbg !46
  %qk_fetch.sroa.32.0.add.ptr.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 14, !dbg !46
  %qk_fetch.sroa.32.0.copyload.1 = load i16, ptr addrspace(4) %qk_fetch.sroa.32.0.add.ptr.sroa_idx.1, align 2, !dbg !46, !tbaa !30
  %cmp15.not.1.not = icmp eq i32 %shr, 0, !dbg !47
  %qk_fetch.sroa.0.0.copyload.qk_fetch.sroa.20.0.copyload.1 = select i1 %cmp15.not.1.not, i16 %qk_fetch.sroa.20.0.copyload.1, i16 %qk_fetch.sroa.0.0.copyload.1
  %condval_1.sroa.0.0.1 = select i1 %cmp15.not.1.not, i16 %qk_fetch.sroa.24.0.copyload.1, i16 %qk_fetch.sroa.8.0.copyload.1, !dbg !48
  %condval_2.sroa.0.0.1 = select i1 %cmp15.not.1.not, i16 %qk_fetch.sroa.28.0.copyload.1, i16 %qk_fetch.sroa.12.0.copyload.1, !dbg !49
  %condval_3.sroa.0.0.1 = select i1 %cmp15.not.1.not, i16 %qk_fetch.sroa.32.0.copyload.1, i16 %qk_fetch.sroa.16.0.copyload.1, !dbg !50
  %condval_4.sroa.0.0.1 = select i1 %cmp15.not.1.not, i16 %qk_fetch.sroa.0.0.copyload.1, i16 %qk_fetch.sroa.20.0.copyload.1, !dbg !51
  %condval_5.sroa.0.0.1 = select i1 %cmp15.not.1.not, i16 %qk_fetch.sroa.8.0.copyload.1, i16 %qk_fetch.sroa.24.0.copyload.1, !dbg !52
  %condval_6.sroa.0.0.1 = select i1 %cmp15.not.1.not, i16 %qk_fetch.sroa.12.0.copyload.1, i16 %qk_fetch.sroa.28.0.copyload.1, !dbg !53
  %condval_7.sroa.0.0.1 = select i1 %cmp15.not.1.not, i16 %qk_fetch.sroa.16.0.copyload.1, i16 %qk_fetch.sroa.32.0.copyload.1, !dbg !54
  %gep1001.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1000, i32 1024, !dbg !57
  store i16 %qk_fetch.sroa.0.0.copyload.qk_fetch.sroa.20.0.copyload.1, ptr addrspace(3) %gep1001.1, align 16, !dbg !55
  %qk_store.sroa.6.0.add.ptr110.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1000, i32 1026, !dbg !55
  store i16 %condval_1.sroa.0.0.1, ptr addrspace(3) %qk_store.sroa.6.0.add.ptr110.sroa_idx.1, align 2, !dbg !55, !tbaa !30
  %qk_store.sroa.8.0.add.ptr110.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1000, i32 1028, !dbg !55
  store i16 %condval_2.sroa.0.0.1, ptr addrspace(3) %qk_store.sroa.8.0.add.ptr110.sroa_idx.1, align 4, !dbg !55
  %qk_store.sroa.10.0.add.ptr110.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1000, i32 1030, !dbg !55
  store i16 %condval_3.sroa.0.0.1, ptr addrspace(3) %qk_store.sroa.10.0.add.ptr110.sroa_idx.1, align 2, !dbg !55, !tbaa !30
  %qk_store.sroa.12.0.add.ptr110.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1000, i32 1032, !dbg !55
  store i16 %condval_4.sroa.0.0.1, ptr addrspace(3) %qk_store.sroa.12.0.add.ptr110.sroa_idx.1, align 8, !dbg !55
  %qk_store.sroa.14.0.add.ptr110.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1000, i32 1034, !dbg !55
  store i16 %condval_5.sroa.0.0.1, ptr addrspace(3) %qk_store.sroa.14.0.add.ptr110.sroa_idx.1, align 2, !dbg !55, !tbaa !30
  %qk_store.sroa.16.0.add.ptr110.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1000, i32 1036, !dbg !55
  store i16 %condval_6.sroa.0.0.1, ptr addrspace(3) %qk_store.sroa.16.0.add.ptr110.sroa_idx.1, align 4, !dbg !55
  %qk_store.sroa.18.0.add.ptr110.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1000, i32 1038, !dbg !55
  store i16 %condval_7.sroa.0.0.1, ptr addrspace(3) %qk_store.sroa.18.0.add.ptr110.sroa_idx.1, align 2, !dbg !55, !tbaa !30
  fence syncscope("warp") release, !dbg !58
  tail call void @llvm.mxc.barrier.warp(), !dbg !64
  fence syncscope("warp") acquire, !dbg !65
  %and117 = shl nuw nsw i32 %2, 6
  %mul118 = and i32 %and117, 960
  %shr121 = lshr i32 %2, 5
  %and124 = and i32 %2, 7
  %and129 = lshr i32 %2, 4
  %5 = xor i32 %and, %and129
  %xor125 = xor i32 %shr121, %and124, !dbg !66
  %mul126 = shl nuw nsw i32 %xor125, 3, !dbg !67
  %add127 = add nuw nsw i32 %mul126, %mul118, !dbg !68
  %add122.1 = add nuw nsw i32 %shr121, 2, !dbg !69
  %xor125.1 = xor i32 %add122.1, %and124, !dbg !66
  %mul126.1 = shl nuw nsw i32 %xor125.1, 3, !dbg !67
  %add127.1 = add nuw nsw i32 %mul126.1, %mul118, !dbg !68
  %add122.2 = add nuw nsw i32 %shr121, 4, !dbg !69
  %xor125.2 = xor i32 %add122.2, %and124, !dbg !66
  %mul126.2 = shl nuw nsw i32 %xor125.2, 3, !dbg !67
  %add127.2 = add nuw nsw i32 %mul126.2, %mul118, !dbg !68
  %add122.3 = add nuw nsw i32 %shr121, 6, !dbg !69
  %xor125.3 = xor i32 %add122.3, %and124, !dbg !66
  %mul126.3 = shl nuw nsw i32 %xor125.3, 3, !dbg !67
  %add127.3 = add nuw nsw i32 %mul126.3, %mul118, !dbg !68
  %mul166 = shl nsw i32 %0, 12, !dbg !70
  %add168 = add nuw nsw i32 %mul166, %1, !dbg !71
  %idxprom = zext nneg i32 %add168 to i64, !dbg !72
  %arrayidx169 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %idxprom, !dbg !72
  %6 = load i32, ptr addrspace(1) %arrayidx169, align 4, !dbg !72, !tbaa !30
  %mul170 = shl nsw i32 %6, 4, !dbg !73
  %cmp171 = icmp slt i32 %6, 0, !dbg !74
  %cmp173.not = icmp sgt i32 %mul170, %1
  %or.cond = select i1 %cmp171, i1 true, i1 %cmp173.not, !dbg !75
  br i1 %or.cond, label %if.end633, label %if.then174, !dbg !75

if.then174:                                       ; preds = %entry
  %xor134946 = xor i32 %5, %2
  %xor137 = shl nuw nsw i32 %xor134946, 2
  %mul138 = and i32 %xor137, 4
  %add139.3 = or disjoint i32 %add127.3, %mul138, !dbg !76
  %add.ptr141.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add139.3, !dbg !77
  %7 = load <4 x half>, ptr addrspace(3) %add.ptr141.3, align 8, !dbg !78
  %add139.2 = or disjoint i32 %add127.2, %mul138, !dbg !76
  %add.ptr141.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add139.2, !dbg !77
  %8 = load <4 x half>, ptr addrspace(3) %add.ptr141.2, align 8, !dbg !78
  %add139.1 = or disjoint i32 %add127.1, %mul138, !dbg !76
  %add.ptr141.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add139.1, !dbg !77
  %9 = load <4 x half>, ptr addrspace(3) %add.ptr141.1, align 8, !dbg !78
  %add139 = or disjoint i32 %add127, %mul138, !dbg !76
  %add.ptr141 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add139, !dbg !77
  %10 = load <4 x half>, ptr addrspace(3) %add.ptr141, align 8, !dbg !78
  fence syncscope("warp") release, !dbg !79
  tail call void @llvm.mxc.barrier.warp(), !dbg !82
  fence syncscope("warp") acquire, !dbg !83
  %conv = zext nneg i32 %0 to i64
  %conv185 = zext nneg i32 %mul170 to i64
  %mul190 = zext nneg i32 %mul11 to i64
  %.idx = shl nuw nsw i64 %conv185, 7
  %invariant.gep1005 = getelementptr inbounds i8, ptr addrspace(4) %K.coerce, i64 %.idx, !dbg !84
  %invariant.gep1006 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep1005, i64 %mul190, !dbg !84
  %.idx1027 = shl nuw nsw i64 %conv, 19, !dbg !85
  %11 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1006, i64 %.idx1027, !dbg !85
  %qk_fetch.sroa.0.0.copyload925 = load i16, ptr addrspace(4) %11, align 16, !dbg !86
  %qk_fetch.sroa.8.0.add.ptr192.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %11, i64 2, !dbg !86
  %qk_fetch.sroa.8.0.copyload926 = load i16, ptr addrspace(4) %qk_fetch.sroa.8.0.add.ptr192.sroa_idx, align 2, !dbg !86, !tbaa !30
  %qk_fetch.sroa.12.0.add.ptr192.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %11, i64 4, !dbg !86
  %qk_fetch.sroa.12.0.copyload927 = load i16, ptr addrspace(4) %qk_fetch.sroa.12.0.add.ptr192.sroa_idx, align 4, !dbg !86
  %qk_fetch.sroa.16.0.add.ptr192.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %11, i64 6, !dbg !86
  %qk_fetch.sroa.16.0.copyload928 = load i16, ptr addrspace(4) %qk_fetch.sroa.16.0.add.ptr192.sroa_idx, align 2, !dbg !86, !tbaa !30
  %qk_fetch.sroa.20.0.add.ptr192.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %11, i64 8, !dbg !86
  %qk_fetch.sroa.20.0.copyload929 = load i16, ptr addrspace(4) %qk_fetch.sroa.20.0.add.ptr192.sroa_idx, align 8, !dbg !86
  %qk_fetch.sroa.24.0.add.ptr192.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %11, i64 10, !dbg !86
  %qk_fetch.sroa.24.0.copyload930 = load i16, ptr addrspace(4) %qk_fetch.sroa.24.0.add.ptr192.sroa_idx, align 2, !dbg !86, !tbaa !30
  %qk_fetch.sroa.28.0.add.ptr192.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %11, i64 12, !dbg !86
  %qk_fetch.sroa.28.0.copyload931 = load i16, ptr addrspace(4) %qk_fetch.sroa.28.0.add.ptr192.sroa_idx, align 4, !dbg !86
  %qk_fetch.sroa.32.0.add.ptr192.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %11, i64 14, !dbg !86
  %qk_fetch.sroa.32.0.copyload932 = load i16, ptr addrspace(4) %qk_fetch.sroa.32.0.add.ptr192.sroa_idx, align 2, !dbg !86, !tbaa !30
  %qk_fetch.sroa.0.0.copyload925.qk_fetch.sroa.20.0.copyload929 = select i1 %cmp15.not, i16 %qk_fetch.sroa.0.0.copyload925, i16 %qk_fetch.sroa.20.0.copyload929
  %condval_9.sroa.0.0 = select i1 %cmp15.not, i16 %qk_fetch.sroa.8.0.copyload926, i16 %qk_fetch.sroa.24.0.copyload930, !dbg !87
  %condval_10.sroa.0.0 = select i1 %cmp15.not, i16 %qk_fetch.sroa.12.0.copyload927, i16 %qk_fetch.sroa.28.0.copyload931, !dbg !88
  %condval_11.sroa.0.0 = select i1 %cmp15.not, i16 %qk_fetch.sroa.16.0.copyload928, i16 %qk_fetch.sroa.32.0.copyload932, !dbg !89
  %condval_12.sroa.0.0 = select i1 %cmp15.not, i16 %qk_fetch.sroa.20.0.copyload929, i16 %qk_fetch.sroa.0.0.copyload925, !dbg !90
  %condval_13.sroa.0.0 = select i1 %cmp15.not, i16 %qk_fetch.sroa.24.0.copyload930, i16 %qk_fetch.sroa.8.0.copyload926, !dbg !91
  %condval_14.sroa.0.0 = select i1 %cmp15.not, i16 %qk_fetch.sroa.28.0.copyload931, i16 %qk_fetch.sroa.12.0.copyload927, !dbg !92
  %condval_15.sroa.0.0 = select i1 %cmp15.not, i16 %qk_fetch.sroa.32.0.copyload932, i16 %qk_fetch.sroa.16.0.copyload928, !dbg !93
  store i16 %qk_fetch.sroa.0.0.copyload925.qk_fetch.sroa.20.0.copyload929, ptr addrspace(3) %invariant.gep1000, align 16, !dbg !94
  store i16 %condval_9.sroa.0.0, ptr addrspace(3) %qk_store.sroa.6.0.add.ptr110.sroa_idx, align 2, !dbg !94, !tbaa !30
  store i16 %condval_10.sroa.0.0, ptr addrspace(3) %qk_store.sroa.8.0.add.ptr110.sroa_idx, align 4, !dbg !94
  store i16 %condval_11.sroa.0.0, ptr addrspace(3) %qk_store.sroa.10.0.add.ptr110.sroa_idx, align 2, !dbg !94, !tbaa !30
  store i16 %condval_12.sroa.0.0, ptr addrspace(3) %qk_store.sroa.12.0.add.ptr110.sroa_idx, align 8, !dbg !94
  store i16 %condval_13.sroa.0.0, ptr addrspace(3) %qk_store.sroa.14.0.add.ptr110.sroa_idx, align 2, !dbg !94, !tbaa !30
  store i16 %condval_14.sroa.0.0, ptr addrspace(3) %qk_store.sroa.16.0.add.ptr110.sroa_idx, align 4, !dbg !94
  store i16 %condval_15.sroa.0.0, ptr addrspace(3) %qk_store.sroa.18.0.add.ptr110.sroa_idx, align 2, !dbg !94, !tbaa !30
  %gep1007.1 = getelementptr inbounds i8, ptr addrspace(4) %11, i64 1024, !dbg !85
  %qk_fetch.sroa.0.0.copyload925.1 = load i16, ptr addrspace(4) %gep1007.1, align 16, !dbg !86
  %qk_fetch.sroa.8.0.add.ptr192.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %11, i64 1026, !dbg !86
  %qk_fetch.sroa.8.0.copyload926.1 = load i16, ptr addrspace(4) %qk_fetch.sroa.8.0.add.ptr192.sroa_idx.1, align 2, !dbg !86, !tbaa !30
  %qk_fetch.sroa.12.0.add.ptr192.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %11, i64 1028, !dbg !86
  %qk_fetch.sroa.12.0.copyload927.1 = load i16, ptr addrspace(4) %qk_fetch.sroa.12.0.add.ptr192.sroa_idx.1, align 4, !dbg !86
  %qk_fetch.sroa.16.0.add.ptr192.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %11, i64 1030, !dbg !86
  %qk_fetch.sroa.16.0.copyload928.1 = load i16, ptr addrspace(4) %qk_fetch.sroa.16.0.add.ptr192.sroa_idx.1, align 2, !dbg !86, !tbaa !30
  %qk_fetch.sroa.20.0.add.ptr192.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %11, i64 1032, !dbg !86
  %qk_fetch.sroa.20.0.copyload929.1 = load i16, ptr addrspace(4) %qk_fetch.sroa.20.0.add.ptr192.sroa_idx.1, align 8, !dbg !86
  %qk_fetch.sroa.24.0.add.ptr192.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %11, i64 1034, !dbg !86
  %qk_fetch.sroa.24.0.copyload930.1 = load i16, ptr addrspace(4) %qk_fetch.sroa.24.0.add.ptr192.sroa_idx.1, align 2, !dbg !86, !tbaa !30
  %qk_fetch.sroa.28.0.add.ptr192.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %11, i64 1036, !dbg !86
  %qk_fetch.sroa.28.0.copyload931.1 = load i16, ptr addrspace(4) %qk_fetch.sroa.28.0.add.ptr192.sroa_idx.1, align 4, !dbg !86
  %qk_fetch.sroa.32.0.add.ptr192.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %11, i64 1038, !dbg !86
  %qk_fetch.sroa.32.0.copyload932.1 = load i16, ptr addrspace(4) %qk_fetch.sroa.32.0.add.ptr192.sroa_idx.1, align 2, !dbg !86, !tbaa !30
  %qk_fetch.sroa.0.0.copyload925.qk_fetch.sroa.20.0.copyload929.1 = select i1 %cmp15.not.1.not, i16 %qk_fetch.sroa.20.0.copyload929.1, i16 %qk_fetch.sroa.0.0.copyload925.1
  %condval_9.sroa.0.0.1 = select i1 %cmp15.not.1.not, i16 %qk_fetch.sroa.24.0.copyload930.1, i16 %qk_fetch.sroa.8.0.copyload926.1, !dbg !87
  %condval_10.sroa.0.0.1 = select i1 %cmp15.not.1.not, i16 %qk_fetch.sroa.28.0.copyload931.1, i16 %qk_fetch.sroa.12.0.copyload927.1, !dbg !88
  %condval_11.sroa.0.0.1 = select i1 %cmp15.not.1.not, i16 %qk_fetch.sroa.32.0.copyload932.1, i16 %qk_fetch.sroa.16.0.copyload928.1, !dbg !89
  %condval_12.sroa.0.0.1 = select i1 %cmp15.not.1.not, i16 %qk_fetch.sroa.0.0.copyload925.1, i16 %qk_fetch.sroa.20.0.copyload929.1, !dbg !90
  %condval_13.sroa.0.0.1 = select i1 %cmp15.not.1.not, i16 %qk_fetch.sroa.8.0.copyload926.1, i16 %qk_fetch.sroa.24.0.copyload930.1, !dbg !91
  %condval_14.sroa.0.0.1 = select i1 %cmp15.not.1.not, i16 %qk_fetch.sroa.12.0.copyload927.1, i16 %qk_fetch.sroa.28.0.copyload931.1, !dbg !92
  %condval_15.sroa.0.0.1 = select i1 %cmp15.not.1.not, i16 %qk_fetch.sroa.16.0.copyload928.1, i16 %qk_fetch.sroa.32.0.copyload932.1, !dbg !93
  store i16 %qk_fetch.sroa.0.0.copyload925.qk_fetch.sroa.20.0.copyload929.1, ptr addrspace(3) %gep1001.1, align 16, !dbg !94
  store i16 %condval_9.sroa.0.0.1, ptr addrspace(3) %qk_store.sroa.6.0.add.ptr110.sroa_idx.1, align 2, !dbg !94, !tbaa !30
  store i16 %condval_10.sroa.0.0.1, ptr addrspace(3) %qk_store.sroa.8.0.add.ptr110.sroa_idx.1, align 4, !dbg !94
  store i16 %condval_11.sroa.0.0.1, ptr addrspace(3) %qk_store.sroa.10.0.add.ptr110.sroa_idx.1, align 2, !dbg !94, !tbaa !30
  store i16 %condval_12.sroa.0.0.1, ptr addrspace(3) %qk_store.sroa.12.0.add.ptr110.sroa_idx.1, align 8, !dbg !94
  store i16 %condval_13.sroa.0.0.1, ptr addrspace(3) %qk_store.sroa.14.0.add.ptr110.sroa_idx.1, align 2, !dbg !94, !tbaa !30
  store i16 %condval_14.sroa.0.0.1, ptr addrspace(3) %qk_store.sroa.16.0.add.ptr110.sroa_idx.1, align 4, !dbg !94
  store i16 %condval_15.sroa.0.0.1, ptr addrspace(3) %qk_store.sroa.18.0.add.ptr110.sroa_idx.1, align 2, !dbg !94, !tbaa !30
  fence syncscope("warp") release, !dbg !95
  tail call void @llvm.mxc.barrier.warp(), !dbg !98
  fence syncscope("warp") acquire, !dbg !99
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr141, align 8, !dbg !100
  %12 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %10, <4 x float> zeroinitializer), !dbg !101
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr141.1, align 8, !dbg !100
  %13 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %9, <4 x float> %12), !dbg !101
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr141.2, align 8, !dbg !100
  %14 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %8, <4 x float> %13), !dbg !101
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr141.3, align 8, !dbg !100
  %15 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %7, <4 x float> %14), !dbg !101
  %16 = lshr i32 %2, 2
  %mul358 = and i32 %16, 252
  %add359 = add nuw nsw i32 %mul170, %mul358
  %cmp362.not = icmp sgt i32 %add359, %1, !dbg !102
  %scores.sroa.0.0.vec.extract1119 = extractelement <4 x float> %15, i64 0
  %spec.select = select i1 %cmp362.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1119, !dbg !103
  %cmp362.not.1.not = icmp slt i32 %add359, %1, !dbg !102
  %scores.sroa.0.4.vec.extract1126 = extractelement <4 x float> %15, i64 1, !dbg !103
  %condval_16.0.1 = select i1 %cmp362.not.1.not, float %scores.sroa.0.4.vec.extract1126, float 0xFFF0000000000000, !dbg !103
  %add360.2 = or disjoint i32 %add359, 2, !dbg !104
  %cmp362.not.2 = icmp sgt i32 %add360.2, %1, !dbg !102
  %scores.sroa.0.8.vec.extract1133 = extractelement <4 x float> %15, i64 2, !dbg !103
  %condval_16.0.2 = select i1 %cmp362.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1133, !dbg !103
  %add360.3 = or disjoint i32 %add359, 3, !dbg !104
  %cmp362.not.3 = icmp sgt i32 %add360.3, %1, !dbg !102
  %scores.sroa.0.12.vec.extract1140 = extractelement <4 x float> %15, i64 3, !dbg !103
  %condval_16.0.3 = select i1 %cmp362.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1140, !dbg !103
  %17 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !105
  %18 = tail call contract noundef float @llvm.maxnum.f32(float %17, float %condval_16.0.1), !dbg !105
  %19 = tail call contract noundef float @llvm.maxnum.f32(float %18, float %condval_16.0.2), !dbg !105
  %20 = tail call contract noundef float @llvm.maxnum.f32(float %19, float %condval_16.0.3), !dbg !105
  %21 = bitcast float %20 to i32, !dbg !109
  %22 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !112
  %23 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %22) #10, !dbg !117
  %xor.i.i = xor i32 %23, 32, !dbg !118
  %24 = and i32 %23, -64, !dbg !119
  %and.i.i = add nsw i32 %24, 64, !dbg !119
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !120
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %23, !dbg !121
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !122
  %25 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %21), !dbg !123
  %26 = bitcast i32 %25 to float, !dbg !124
  %27 = tail call contract noundef float @llvm.maxnum.f32(float %20, float %26), !dbg !125
  %28 = bitcast float %27 to i32, !dbg !127
  %29 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !129
  %30 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %29) #10, !dbg !132
  %xor.i.i949 = xor i32 %30, 16, !dbg !133
  %31 = and i32 %30, -64, !dbg !134
  %and.i.i950 = add nsw i32 %31, 64, !dbg !134
  %cmp.not.i.i951 = icmp slt i32 %xor.i.i949, %and.i.i950, !dbg !135
  %cond.i.i952 = select i1 %cmp.not.i.i951, i32 %xor.i.i949, i32 %30, !dbg !136
  %shl.i.i953 = shl i32 %cond.i.i952, 2, !dbg !137
  %32 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i953, i32 %28), !dbg !138
  %33 = bitcast i32 %32 to float, !dbg !139
  %34 = tail call contract noundef float @llvm.maxnum.f32(float %27, float %33), !dbg !140
  %sub = fsub contract float %spec.select, %34, !dbg !142
  %sub411 = fsub contract float %condval_16.0.1, %34, !dbg !143
  %sub414 = fsub contract float %condval_16.0.2, %34, !dbg !144
  %sub417 = fsub contract float %condval_16.0.3, %34, !dbg !145
  %mul422 = fmul contract float %sub, 0x3FC7154760000000, !dbg !146
  %mul426 = fmul contract float %sub411, 0x3FC7154760000000, !dbg !147
  %mul430 = fmul contract float %sub414, 0x3FC7154760000000, !dbg !148
  %mul434 = fmul contract float %sub417, 0x3FC7154760000000, !dbg !149
  %add439 = fadd contract float %mul422, 8.000000e+00, !dbg !150
  %add443 = fadd contract float %mul426, 8.000000e+00, !dbg !151
  %add447 = fadd contract float %mul430, 8.000000e+00, !dbg !152
  %add451 = fadd contract float %mul434, 8.000000e+00, !dbg !153
  %cmp.i.i = fcmp contract olt float %add439, -1.260000e+02, !dbg !154
  %cond.i.i954 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i = fadd contract float %add439, %cond.i.i954, !dbg !154
  %35 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !154
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i = fmul contract float %cond2.i.i, %35, !dbg !154
  %cmp.i.i955 = fcmp contract olt float %add443, -1.260000e+02, !dbg !157
  %cond.i.i956 = select contract i1 %cmp.i.i955, float 6.400000e+01, float 0.000000e+00, !dbg !157
  %add.i.i957 = fadd contract float %add443, %cond.i.i956, !dbg !157
  %36 = tail call contract float @llvm.exp2.f32(float %add.i.i957), !dbg !157
  %cond2.i.i958 = select contract i1 %cmp.i.i955, float 0x3BF0000000000000, float 1.000000e+00, !dbg !157
  %mul.i.i959 = fmul contract float %cond2.i.i958, %36, !dbg !157
  %cmp.i.i960 = fcmp contract olt float %add447, -1.260000e+02, !dbg !159
  %cond.i.i961 = select contract i1 %cmp.i.i960, float 6.400000e+01, float 0.000000e+00, !dbg !159
  %add.i.i962 = fadd contract float %add447, %cond.i.i961, !dbg !159
  %37 = tail call contract float @llvm.exp2.f32(float %add.i.i962), !dbg !159
  %cond2.i.i963 = select contract i1 %cmp.i.i960, float 0x3BF0000000000000, float 1.000000e+00, !dbg !159
  %mul.i.i964 = fmul contract float %cond2.i.i963, %37, !dbg !159
  %cmp.i.i965 = fcmp contract olt float %add451, -1.260000e+02, !dbg !161
  %cond.i.i966 = select contract i1 %cmp.i.i965, float 6.400000e+01, float 0.000000e+00, !dbg !161
  %add.i.i967 = fadd contract float %add451, %cond.i.i966, !dbg !161
  %38 = tail call contract float @llvm.exp2.f32(float %add.i.i967), !dbg !161
  %cond2.i.i968 = select contract i1 %cmp.i.i965, float 0x3BF0000000000000, float 1.000000e+00, !dbg !161
  %mul.i.i969 = fmul contract float %cond2.i.i968, %38, !dbg !161
  %39 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !163
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !163, !noalias !171
  %40 = fptrunc float %mul.i.i to half, !dbg !163
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %39), !dbg !163, !noalias !171
  %41 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !171
  %42 = fptrunc float %mul.i.i959 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %41), !dbg !176, !noalias !171
  %43 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !182
  %44 = fptrunc float %mul.i.i964 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %43), !dbg !178, !noalias !182
  %45 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !187, !noalias !182
  %46 = fptrunc float %mul.i.i969 to half, !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %45), !dbg !187, !noalias !182
  %47 = insertelement <4 x half> poison, half %40, i64 0, !dbg !189
  %48 = insertelement <4 x half> %47, half %42, i64 1, !dbg !189
  %49 = insertelement <4 x half> %48, half %44, i64 2, !dbg !189
  %50 = insertelement <4 x half> %49, half %46, i64 3, !dbg !189
  %conv.i.i = fpext half %40 to float, !dbg !190
  %add486 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !195
  %conv.i.i.1 = fpext half %42 to float, !dbg !190
  %add486.1 = fadd contract float %add486, %conv.i.i.1, !dbg !195
  %conv.i.i.2 = fpext half %44 to float, !dbg !190
  %add486.2 = fadd contract float %add486.1, %conv.i.i.2, !dbg !195
  %conv.i.i.3 = fpext half %46 to float, !dbg !190
  %add486.3 = fadd contract float %add486.2, %conv.i.i.3, !dbg !195
  fence syncscope("warp") release, !dbg !196
  tail call void @llvm.mxc.barrier.warp(), !dbg !199
  fence syncscope("warp") acquire, !dbg !200
  %mul502 = shl nuw nsw i64 %conv, 18
  %51 = shl nuw nsw i32 %2, 4
  %52 = and i32 %51, 16256
  %mul506 = zext nneg i32 %52 to i64
  %add507 = or disjoint i64 %mul502, %mul506
  %mul517 = zext nneg i32 %xor106947 to i64
  %add510 = or disjoint i64 %add507, %mul517
  %53 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add510, !dbg !201
  %54 = getelementptr inbounds i8, ptr addrspace(4) %53, i64 %.idx, !dbg !201
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %54, align 16, !dbg !202
  %v_fetch.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 2, !dbg !202
  %v_fetch.sroa.4.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.4.0..sroa_idx, align 2, !dbg !202, !tbaa !30
  %v_fetch.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 4, !dbg !202
  %v_fetch.sroa.5.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.5.0..sroa_idx, align 4, !dbg !202
  %v_fetch.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 6, !dbg !202
  %v_fetch.sroa.6.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.6.0..sroa_idx, align 2, !dbg !202, !tbaa !30
  %v_fetch.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 8, !dbg !202
  %v_fetch.sroa.7.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.7.0..sroa_idx, align 8, !dbg !202
  %v_fetch.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 10, !dbg !202
  %v_fetch.sroa.8.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.8.0..sroa_idx, align 2, !dbg !202, !tbaa !30
  %v_fetch.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 12, !dbg !202
  %v_fetch.sroa.9.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.9.0..sroa_idx, align 4, !dbg !202
  %v_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 14, !dbg !202
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx, align 2, !dbg !202, !tbaa !30
  %add.ptr519.1 = getelementptr inbounds i8, ptr addrspace(4) %54, i64 128, !dbg !201
  %v_fetch.sroa.11.16.copyload = load i16, ptr addrspace(4) %add.ptr519.1, align 16, !dbg !202
  %v_fetch.sroa.13.16.add.ptr519.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 130, !dbg !202
  %v_fetch.sroa.13.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.13.16.add.ptr519.1.sroa_idx, align 2, !dbg !202, !tbaa !30
  %v_fetch.sroa.14.16.add.ptr519.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 132, !dbg !202
  %v_fetch.sroa.14.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.16.add.ptr519.1.sroa_idx, align 4, !dbg !202
  %v_fetch.sroa.15.16.add.ptr519.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 134, !dbg !202
  %v_fetch.sroa.15.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.15.16.add.ptr519.1.sroa_idx, align 2, !dbg !202, !tbaa !30
  %v_fetch.sroa.16.16.add.ptr519.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 136, !dbg !202
  %v_fetch.sroa.16.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.16.16.add.ptr519.1.sroa_idx, align 8, !dbg !202
  %v_fetch.sroa.17.16.add.ptr519.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 138, !dbg !202
  %v_fetch.sroa.17.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.17.16.add.ptr519.1.sroa_idx, align 2, !dbg !202, !tbaa !30
  %v_fetch.sroa.18.16.add.ptr519.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 140, !dbg !202
  %v_fetch.sroa.18.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.16.add.ptr519.1.sroa_idx, align 4, !dbg !202
  %v_fetch.sroa.19.16.add.ptr519.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 142, !dbg !202
  %v_fetch.sroa.19.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.19.16.add.ptr519.1.sroa_idx, align 2, !dbg !202, !tbaa !30
  %and550 = shl nuw nsw i32 %2, 1
  %mul551 = and i32 %and550, 14
  %call555.mask = and i32 %2, 16
  %and563 = lshr i32 %2, 1
  %shr564 = and i32 %and563, 3
  %xor565 = xor i32 %shr564, %and129
  %mul573 = and i32 %16, 2
  %xor558940 = shl nuw nsw i32 %mul551, 4, !dbg !203
  %mul559 = or disjoint i32 %xor558940, %call555.mask, !dbg !203
  %mul568 = shl nuw nsw i32 %xor565, 2, !dbg !204
  %add569 = add nuw nsw i32 %mul559, %mul568, !dbg !205
  %add574 = or disjoint i32 %add569, %mul573, !dbg !206
  %add.ptr576 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add574, !dbg !207
  %v_column.sroa.18.0.insert.ext = zext i16 %v_fetch.sroa.11.16.copyload to i32, !dbg !208
  %v_column.sroa.18.0.insert.shift = shl nuw i32 %v_column.sroa.18.0.insert.ext, 16, !dbg !208
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !208
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.18.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !208
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr576, align 4, !dbg !208, !tbaa !30
  %add552.1 = shl nuw nsw i32 %mul551, 4, !dbg !203
  %xor558940.1 = or disjoint i32 %add552.1, %call555.mask, !dbg !203
  %mul559.1 = or disjoint i32 %xor558940.1, 256, !dbg !203
  %xor567.1 = shl nuw nsw i32 %xor565, 2, !dbg !204
  %mul568.1 = xor i32 %xor567.1, 4, !dbg !204
  %add569.1 = add nuw nsw i32 %mul559.1, %mul568.1, !dbg !205
  %add574.1 = or disjoint i32 %add569.1, %mul573, !dbg !206
  %add.ptr576.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add574.1, !dbg !207
  %v_column.sroa.18.0.insert.ext1076 = zext i16 %v_fetch.sroa.13.16.copyload to i32, !dbg !208
  %v_column.sroa.18.0.insert.shift1077 = shl nuw i32 %v_column.sroa.18.0.insert.ext1076, 16, !dbg !208
  %v_column.sroa.0.0.insert.ext1048 = zext i16 %v_fetch.sroa.4.0.copyload to i32, !dbg !208
  %v_column.sroa.0.0.insert.insert1050 = or disjoint i32 %v_column.sroa.18.0.insert.shift1077, %v_column.sroa.0.0.insert.ext1048, !dbg !208
  store i32 %v_column.sroa.0.0.insert.insert1050, ptr addrspace(3) %add.ptr576.1, align 4, !dbg !208, !tbaa !30
  %add552.2 = shl nuw nsw i32 %mul551, 4, !dbg !203
  %xor558940.2 = or disjoint i32 %add552.2, %call555.mask, !dbg !203
  %mul559.2 = or disjoint i32 %xor558940.2, 512, !dbg !203
  %xor567.2 = shl nuw nsw i32 %xor565, 2, !dbg !204
  %mul568.2 = xor i32 %xor567.2, 8, !dbg !204
  %add569.2 = add nuw nsw i32 %mul559.2, %mul568.2, !dbg !205
  %add574.2 = or disjoint i32 %add569.2, %mul573, !dbg !206
  %add.ptr576.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add574.2, !dbg !207
  %v_column.sroa.18.0.insert.ext1081 = zext i16 %v_fetch.sroa.14.16.copyload to i32, !dbg !208
  %v_column.sroa.18.0.insert.shift1082 = shl nuw i32 %v_column.sroa.18.0.insert.ext1081, 16, !dbg !208
  %v_column.sroa.0.0.insert.ext1052 = zext i16 %v_fetch.sroa.5.0.copyload to i32, !dbg !208
  %v_column.sroa.0.0.insert.insert1054 = or disjoint i32 %v_column.sroa.18.0.insert.shift1082, %v_column.sroa.0.0.insert.ext1052, !dbg !208
  store i32 %v_column.sroa.0.0.insert.insert1054, ptr addrspace(3) %add.ptr576.2, align 4, !dbg !208, !tbaa !30
  %add552.3 = shl nuw nsw i32 %mul551, 4, !dbg !203
  %xor558940.3 = or disjoint i32 %add552.3, %call555.mask, !dbg !203
  %mul559.3 = or disjoint i32 %xor558940.3, 768, !dbg !203
  %xor567.3 = shl nuw nsw i32 %xor565, 2, !dbg !204
  %mul568.3 = xor i32 %xor567.3, 12, !dbg !204
  %add569.3 = add nuw nsw i32 %mul559.3, %mul568.3, !dbg !205
  %add574.3 = or disjoint i32 %add569.3, %mul573, !dbg !206
  %add.ptr576.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add574.3, !dbg !207
  %v_column.sroa.18.0.insert.ext1086 = zext i16 %v_fetch.sroa.15.16.copyload to i32, !dbg !208
  %v_column.sroa.18.0.insert.shift1087 = shl nuw i32 %v_column.sroa.18.0.insert.ext1086, 16, !dbg !208
  %v_column.sroa.0.0.insert.ext1056 = zext i16 %v_fetch.sroa.6.0.copyload to i32, !dbg !208
  %v_column.sroa.0.0.insert.insert1058 = or disjoint i32 %v_column.sroa.18.0.insert.shift1087, %v_column.sroa.0.0.insert.ext1056, !dbg !208
  store i32 %v_column.sroa.0.0.insert.insert1058, ptr addrspace(3) %add.ptr576.3, align 4, !dbg !208, !tbaa !30
  %add554.4 = shl nuw nsw i32 %mul551, 4, !dbg !203
  %xor558940.4 = or disjoint i32 %add554.4, 16, !dbg !203
  %mul559.4 = xor i32 %xor558940.4, %call555.mask, !dbg !203
  %add569.4 = add nuw nsw i32 %mul559.4, %mul568, !dbg !205
  %add574.4 = or disjoint i32 %add569.4, %mul573, !dbg !206
  %add.ptr576.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add574.4, !dbg !207
  %v_column.sroa.18.0.insert.ext1091 = zext i16 %v_fetch.sroa.16.16.copyload to i32, !dbg !208
  %v_column.sroa.18.0.insert.shift1092 = shl nuw i32 %v_column.sroa.18.0.insert.ext1091, 16, !dbg !208
  %v_column.sroa.0.0.insert.ext1060 = zext i16 %v_fetch.sroa.7.0.copyload to i32, !dbg !208
  %v_column.sroa.0.0.insert.insert1062 = or disjoint i32 %v_column.sroa.18.0.insert.shift1092, %v_column.sroa.0.0.insert.ext1060, !dbg !208
  store i32 %v_column.sroa.0.0.insert.insert1062, ptr addrspace(3) %add.ptr576.4, align 4, !dbg !208, !tbaa !30
  %add554.5 = shl nuw nsw i32 %mul551, 4, !dbg !203
  %xor558940.5 = or disjoint i32 %add554.5, 272, !dbg !203
  %mul559.5 = xor i32 %xor558940.5, %call555.mask, !dbg !203
  %add569.5 = add nuw nsw i32 %mul559.5, %mul568.1, !dbg !205
  %add574.5 = or disjoint i32 %add569.5, %mul573, !dbg !206
  %add.ptr576.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add574.5, !dbg !207
  %v_column.sroa.18.0.insert.ext1096 = zext i16 %v_fetch.sroa.17.16.copyload to i32, !dbg !208
  %v_column.sroa.18.0.insert.shift1097 = shl nuw i32 %v_column.sroa.18.0.insert.ext1096, 16, !dbg !208
  %v_column.sroa.0.0.insert.ext1064 = zext i16 %v_fetch.sroa.8.0.copyload to i32, !dbg !208
  %v_column.sroa.0.0.insert.insert1066 = or disjoint i32 %v_column.sroa.18.0.insert.shift1097, %v_column.sroa.0.0.insert.ext1064, !dbg !208
  store i32 %v_column.sroa.0.0.insert.insert1066, ptr addrspace(3) %add.ptr576.5, align 4, !dbg !208, !tbaa !30
  %add554.6 = shl nuw nsw i32 %mul551, 4, !dbg !203
  %xor558940.6 = or disjoint i32 %add554.6, 528, !dbg !203
  %mul559.6 = xor i32 %xor558940.6, %call555.mask, !dbg !203
  %add569.6 = add nuw nsw i32 %mul559.6, %mul568.2, !dbg !205
  %add574.6 = or disjoint i32 %add569.6, %mul573, !dbg !206
  %add.ptr576.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add574.6, !dbg !207
  %v_column.sroa.18.0.insert.ext1101 = zext i16 %v_fetch.sroa.18.16.copyload to i32, !dbg !208
  %v_column.sroa.18.0.insert.shift1102 = shl nuw i32 %v_column.sroa.18.0.insert.ext1101, 16, !dbg !208
  %v_column.sroa.0.0.insert.ext1068 = zext i16 %v_fetch.sroa.9.0.copyload to i32, !dbg !208
  %v_column.sroa.0.0.insert.insert1070 = or disjoint i32 %v_column.sroa.18.0.insert.shift1102, %v_column.sroa.0.0.insert.ext1068, !dbg !208
  store i32 %v_column.sroa.0.0.insert.insert1070, ptr addrspace(3) %add.ptr576.6, align 4, !dbg !208, !tbaa !30
  %add554.7 = shl nuw nsw i32 %mul551, 4, !dbg !203
  %xor558940.7 = or disjoint i32 %add554.7, 784, !dbg !203
  %mul559.7 = xor i32 %xor558940.7, %call555.mask, !dbg !203
  %add569.7 = add nuw nsw i32 %mul559.7, %mul568.3, !dbg !205
  %add574.7 = or disjoint i32 %add569.7, %mul573, !dbg !206
  %add.ptr576.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add574.7, !dbg !207
  %v_column.sroa.18.0.insert.ext1106 = zext i16 %v_fetch.sroa.19.16.copyload to i32, !dbg !208
  %v_column.sroa.18.0.insert.shift1107 = shl nuw i32 %v_column.sroa.18.0.insert.ext1106, 16, !dbg !208
  %v_column.sroa.0.0.insert.ext1072 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !208
  %v_column.sroa.0.0.insert.insert1074 = or disjoint i32 %v_column.sroa.18.0.insert.shift1107, %v_column.sroa.0.0.insert.ext1072, !dbg !208
  store i32 %v_column.sroa.0.0.insert.insert1074, ptr addrspace(3) %add.ptr576.7, align 4, !dbg !208, !tbaa !30
  fence syncscope("warp") release, !dbg !209
  tail call void @llvm.mxc.barrier.warp(), !dbg !212
  fence syncscope("warp") acquire, !dbg !213
  %mul586 = and i32 %51, 48
  %shr591 = and i32 %16, 3
  %55 = or disjoint i32 %mul586, %shr591
  %and602 = and i32 %2, 3
  %56 = xor i32 %and129, %and602
  %xor596939 = shl nuw nsw i32 %55, 4, !dbg !214
  %mul597 = xor i32 %xor596939, %call555.mask, !dbg !214
  %57 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul597, !dbg !215
  %add.ptr607.idx = shl nuw nsw i32 %56, 3, !dbg !215
  %add.ptr607 = getelementptr inbounds i8, ptr addrspace(3) %57, i32 %add.ptr607.idx, !dbg !215
  %58 = load <4 x half>, ptr addrspace(3) %add.ptr607, align 8, !dbg !216
  %add592.1 = shl nuw nsw i32 %55, 4, !dbg !214
  %xor596939.1 = or disjoint i32 %add592.1, 64, !dbg !214
  %mul597.1 = xor i32 %xor596939.1, %call555.mask, !dbg !214
  %59 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul597.1, !dbg !215
  %xor603.1 = shl nuw nsw i32 %56, 3, !dbg !215
  %add.ptr607.idx.1 = xor i32 %xor603.1, 8, !dbg !215
  %add.ptr607.1 = getelementptr inbounds i8, ptr addrspace(3) %59, i32 %add.ptr607.idx.1, !dbg !215
  %60 = load <4 x half>, ptr addrspace(3) %add.ptr607.1, align 8, !dbg !216
  %add592.2 = shl nuw nsw i32 %55, 4, !dbg !214
  %xor596939.2 = or disjoint i32 %add592.2, 128, !dbg !214
  %mul597.2 = xor i32 %xor596939.2, %call555.mask, !dbg !214
  %61 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul597.2, !dbg !215
  %xor603.2 = shl nuw nsw i32 %56, 3, !dbg !215
  %add.ptr607.idx.2 = xor i32 %xor603.2, 16, !dbg !215
  %add.ptr607.2 = getelementptr inbounds i8, ptr addrspace(3) %61, i32 %add.ptr607.idx.2, !dbg !215
  %62 = load <4 x half>, ptr addrspace(3) %add.ptr607.2, align 8, !dbg !216
  %add592.3 = shl nuw nsw i32 %55, 4, !dbg !214
  %xor596939.3 = or disjoint i32 %add592.3, 192, !dbg !214
  %mul597.3 = xor i32 %xor596939.3, %call555.mask, !dbg !214
  %63 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul597.3, !dbg !215
  %xor603.3 = shl nuw nsw i32 %56, 3, !dbg !215
  %add.ptr607.idx.3 = xor i32 %xor603.3, 24, !dbg !215
  %add.ptr607.3 = getelementptr inbounds i8, ptr addrspace(3) %63, i32 %add.ptr607.idx.3, !dbg !215
  %64 = load <4 x half>, ptr addrspace(3) %add.ptr607.3, align 8, !dbg !216
  %65 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %58, <4 x half> %50, <4 x float> zeroinitializer), !dbg !217
  %66 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %60, <4 x half> %50, <4 x float> zeroinitializer), !dbg !217
  %67 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %62, <4 x half> %50, <4 x float> zeroinitializer), !dbg !217
  %68 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %64, <4 x half> %50, <4 x float> zeroinitializer), !dbg !217
  %add493 = fadd contract float %add486.3, 0.000000e+00, !dbg !218
  br label %if.end633, !dbg !219

if.end633:                                        ; preds = %if.then174, %entry
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %65, %if.then174 ], !dbg !221
  %numerator.sroa.20.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %66, %if.then174 ], !dbg !221
  %numerator.sroa.38.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %67, %if.then174 ], !dbg !221
  %numerator.sroa.56.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %68, %if.then174 ], !dbg !221
  %denominator.sroa.0.0 = phi float [ 0.000000e+00, %entry ], [ %add493, %if.then174 ], !dbg !221
  %69 = bitcast float %denominator.sroa.0.0 to i32, !dbg !219
  %70 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !222
  %71 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %70) #10, !dbg !225
  %xor.i.i971 = xor i32 %71, 32, !dbg !226
  %72 = and i32 %71, -64, !dbg !227
  %and.i.i972 = add nsw i32 %72, 64, !dbg !227
  %cmp.not.i.i973 = icmp slt i32 %xor.i.i971, %and.i.i972, !dbg !228
  %cond.i.i974 = select i1 %cmp.not.i.i973, i32 %xor.i.i971, i32 %71, !dbg !229
  %shl.i.i975 = shl i32 %cond.i.i974, 2, !dbg !230
  %73 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i975, i32 %69), !dbg !231
  %74 = bitcast i32 %73 to float, !dbg !232
  %add637 = fadd contract float %denominator.sroa.0.0, %74, !dbg !233
  %75 = bitcast float %add637 to i32, !dbg !234
  %76 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !236
  %77 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %76) #10, !dbg !239
  %xor.i.i976 = xor i32 %77, 16, !dbg !240
  %78 = and i32 %77, -64, !dbg !241
  %and.i.i977 = add nsw i32 %78, 64, !dbg !241
  %cmp.not.i.i978 = icmp slt i32 %xor.i.i976, %and.i.i977, !dbg !242
  %cond.i.i979 = select i1 %cmp.not.i.i978, i32 %xor.i.i976, i32 %77, !dbg !243
  %shl.i.i980 = shl i32 %cond.i.i979, 2, !dbg !244
  %79 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i980, i32 %75), !dbg !245
  %80 = bitcast i32 %79 to float, !dbg !246
  %add642 = fadd contract float %add637, %80, !dbg !247
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !248
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !248
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !248
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !248
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %add642, !dbg !249
  %div662 = fdiv contract float %numerator.sroa.0.4.vec.extract, %add642, !dbg !250
  %div666 = fdiv contract float %numerator.sroa.0.8.vec.extract, %add642, !dbg !251
  %div670 = fdiv contract float %numerator.sroa.0.12.vec.extract, %add642, !dbg !252
  %numerator.sroa.20.16.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 0, !dbg !248
  %numerator.sroa.20.20.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 1, !dbg !248
  %numerator.sroa.20.24.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 2, !dbg !248
  %numerator.sroa.20.28.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 3, !dbg !248
  %div.1 = fdiv contract float %numerator.sroa.20.16.vec.extract, %add642, !dbg !249
  %div662.1 = fdiv contract float %numerator.sroa.20.20.vec.extract, %add642, !dbg !250
  %div666.1 = fdiv contract float %numerator.sroa.20.24.vec.extract, %add642, !dbg !251
  %div670.1 = fdiv contract float %numerator.sroa.20.28.vec.extract, %add642, !dbg !252
  %numerator.sroa.38.32.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 0, !dbg !248
  %numerator.sroa.38.36.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 1, !dbg !248
  %numerator.sroa.38.40.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 2, !dbg !248
  %numerator.sroa.38.44.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 3, !dbg !248
  %div.2 = fdiv contract float %numerator.sroa.38.32.vec.extract, %add642, !dbg !249
  %div662.2 = fdiv contract float %numerator.sroa.38.36.vec.extract, %add642, !dbg !250
  %div666.2 = fdiv contract float %numerator.sroa.38.40.vec.extract, %add642, !dbg !251
  %div670.2 = fdiv contract float %numerator.sroa.38.44.vec.extract, %add642, !dbg !252
  %numerator.sroa.56.48.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 0, !dbg !248
  %numerator.sroa.56.52.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 1, !dbg !248
  %numerator.sroa.56.56.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 2, !dbg !248
  %numerator.sroa.56.60.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 3, !dbg !248
  %div.3 = fdiv contract float %numerator.sroa.56.48.vec.extract, %add642, !dbg !249
  %div662.3 = fdiv contract float %numerator.sroa.56.52.vec.extract, %add642, !dbg !250
  %div666.3 = fdiv contract float %numerator.sroa.56.56.vec.extract, %add642, !dbg !251
  %div670.3 = fdiv contract float %numerator.sroa.56.60.vec.extract, %add642, !dbg !252
  fence syncscope("warp") release, !dbg !253
  tail call void @llvm.mxc.barrier.warp(), !dbg !256
  fence syncscope("warp") acquire, !dbg !257
  %xor719 = shl nuw nsw i32 %5, 2
  %mul720 = and i32 %xor719, 4
  %81 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !258, !noalias !262
  %82 = fptrunc float %div to half, !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %81), !dbg !258, !noalias !262
  %83 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !262
  %84 = fptrunc float %div662 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %83), !dbg !267, !noalias !262
  %85 = bitcast half %82 to i16, !dbg !269
  %86 = bitcast half %84 to i16, !dbg !272
  %87 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !273, !noalias !277
  %88 = fptrunc float %div666 to half, !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %87), !dbg !273, !noalias !277
  %89 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !277
  %90 = fptrunc float %div670 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %89), !dbg !282, !noalias !277
  %91 = bitcast half %88 to i16, !dbg !284
  %92 = bitcast half %90 to i16, !dbg !286
  %__7.sroa.6.0.insert.ext = zext i16 %92 to i64, !dbg !287
  %__7.sroa.6.0.insert.shift = shl nuw i64 %__7.sroa.6.0.insert.ext, 48, !dbg !287
  %__7.sroa.5.0.insert.ext = zext i16 %91 to i64, !dbg !287
  %__7.sroa.5.0.insert.shift = shl nuw nsw i64 %__7.sroa.5.0.insert.ext, 32, !dbg !287
  %__7.sroa.5.0.insert.insert = or disjoint i64 %__7.sroa.6.0.insert.shift, %__7.sroa.5.0.insert.shift, !dbg !287
  %__7.sroa.4.0.insert.ext = zext i16 %86 to i64, !dbg !287
  %__7.sroa.4.0.insert.shift = shl nuw nsw i64 %__7.sroa.4.0.insert.ext, 16, !dbg !287
  %__7.sroa.4.0.insert.insert = or disjoint i64 %__7.sroa.5.0.insert.insert, %__7.sroa.4.0.insert.shift, !dbg !287
  %__7.sroa.0.0.insert.ext = zext i16 %85 to i64, !dbg !287
  %__7.sroa.0.0.insert.insert = or disjoint i64 %__7.sroa.4.0.insert.insert, %__7.sroa.0.0.insert.ext, !dbg !287
  %add721 = or disjoint i32 %add127, %mul720, !dbg !288
  %add.ptr723 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add721, !dbg !289
  store i64 %__7.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr723, align 8, !dbg !290
  %93 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !258, !noalias !262
  %94 = fptrunc float %div.1 to half, !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %93), !dbg !258, !noalias !262
  %95 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !262
  %96 = fptrunc float %div662.1 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %95), !dbg !267, !noalias !262
  %97 = bitcast half %94 to i16, !dbg !269
  %98 = bitcast half %96 to i16, !dbg !272
  %99 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !273, !noalias !277
  %100 = fptrunc float %div666.1 to half, !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %99), !dbg !273, !noalias !277
  %101 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !277
  %102 = fptrunc float %div670.1 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %101), !dbg !282, !noalias !277
  %103 = bitcast half %100 to i16, !dbg !284
  %104 = bitcast half %102 to i16, !dbg !286
  %__7.sroa.6.0.insert.ext.1 = zext i16 %104 to i64, !dbg !287
  %__7.sroa.6.0.insert.shift.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.1, 48, !dbg !287
  %__7.sroa.5.0.insert.ext.1 = zext i16 %103 to i64, !dbg !287
  %__7.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1, 32, !dbg !287
  %__7.sroa.5.0.insert.insert.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.1, %__7.sroa.5.0.insert.shift.1, !dbg !287
  %__7.sroa.4.0.insert.ext.1 = zext i16 %98 to i64, !dbg !287
  %__7.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1, 16, !dbg !287
  %__7.sroa.4.0.insert.insert.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.1, %__7.sroa.4.0.insert.shift.1, !dbg !287
  %__7.sroa.0.0.insert.ext.1 = zext i16 %97 to i64, !dbg !287
  %__7.sroa.0.0.insert.insert.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.1, %__7.sroa.0.0.insert.ext.1, !dbg !287
  %add721.1 = or disjoint i32 %add127.1, %mul720, !dbg !288
  %add.ptr723.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add721.1, !dbg !289
  store i64 %__7.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr723.1, align 8, !dbg !290
  %105 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !258, !noalias !262
  %106 = fptrunc float %div.2 to half, !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %105), !dbg !258, !noalias !262
  %107 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !262
  %108 = fptrunc float %div662.2 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %107), !dbg !267, !noalias !262
  %109 = bitcast half %106 to i16, !dbg !269
  %110 = bitcast half %108 to i16, !dbg !272
  %111 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !273, !noalias !277
  %112 = fptrunc float %div666.2 to half, !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %111), !dbg !273, !noalias !277
  %113 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !277
  %114 = fptrunc float %div670.2 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %113), !dbg !282, !noalias !277
  %115 = bitcast half %112 to i16, !dbg !284
  %116 = bitcast half %114 to i16, !dbg !286
  %__7.sroa.6.0.insert.ext.2 = zext i16 %116 to i64, !dbg !287
  %__7.sroa.6.0.insert.shift.2 = shl nuw i64 %__7.sroa.6.0.insert.ext.2, 48, !dbg !287
  %__7.sroa.5.0.insert.ext.2 = zext i16 %115 to i64, !dbg !287
  %__7.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.2, 32, !dbg !287
  %__7.sroa.5.0.insert.insert.2 = or disjoint i64 %__7.sroa.6.0.insert.shift.2, %__7.sroa.5.0.insert.shift.2, !dbg !287
  %__7.sroa.4.0.insert.ext.2 = zext i16 %110 to i64, !dbg !287
  %__7.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.2, 16, !dbg !287
  %__7.sroa.4.0.insert.insert.2 = or disjoint i64 %__7.sroa.5.0.insert.insert.2, %__7.sroa.4.0.insert.shift.2, !dbg !287
  %__7.sroa.0.0.insert.ext.2 = zext i16 %109 to i64, !dbg !287
  %__7.sroa.0.0.insert.insert.2 = or disjoint i64 %__7.sroa.4.0.insert.insert.2, %__7.sroa.0.0.insert.ext.2, !dbg !287
  %add721.2 = or disjoint i32 %add127.2, %mul720, !dbg !288
  %add.ptr723.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add721.2, !dbg !289
  store i64 %__7.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr723.2, align 8, !dbg !290
  %117 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !258, !noalias !262
  %118 = fptrunc float %div.3 to half, !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %117), !dbg !258, !noalias !262
  %119 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !262
  %120 = fptrunc float %div662.3 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %119), !dbg !267, !noalias !262
  %121 = bitcast half %118 to i16, !dbg !269
  %122 = bitcast half %120 to i16, !dbg !272
  %123 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !273, !noalias !277
  %124 = fptrunc float %div666.3 to half, !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %123), !dbg !273, !noalias !277
  %125 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !277
  %126 = fptrunc float %div670.3 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %125), !dbg !282, !noalias !277
  %127 = bitcast half %124 to i16, !dbg !284
  %128 = bitcast half %126 to i16, !dbg !286
  %__7.sroa.6.0.insert.ext.3 = zext i16 %128 to i64, !dbg !287
  %__7.sroa.6.0.insert.shift.3 = shl nuw i64 %__7.sroa.6.0.insert.ext.3, 48, !dbg !287
  %__7.sroa.5.0.insert.ext.3 = zext i16 %127 to i64, !dbg !287
  %__7.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.3, 32, !dbg !287
  %__7.sroa.5.0.insert.insert.3 = or disjoint i64 %__7.sroa.6.0.insert.shift.3, %__7.sroa.5.0.insert.shift.3, !dbg !287
  %__7.sroa.4.0.insert.ext.3 = zext i16 %122 to i64, !dbg !287
  %__7.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.3, 16, !dbg !287
  %__7.sroa.4.0.insert.insert.3 = or disjoint i64 %__7.sroa.5.0.insert.insert.3, %__7.sroa.4.0.insert.shift.3, !dbg !287
  %__7.sroa.0.0.insert.ext.3 = zext i16 %121 to i64, !dbg !287
  %__7.sroa.0.0.insert.insert.3 = or disjoint i64 %__7.sroa.4.0.insert.insert.3, %__7.sroa.0.0.insert.ext.3, !dbg !287
  %add721.3 = or disjoint i32 %add127.3, %mul720, !dbg !288
  %add.ptr723.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add721.3, !dbg !289
  store i64 %__7.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr723.3, align 8, !dbg !290
  fence syncscope("warp") release, !dbg !291
  tail call void @llvm.mxc.barrier.warp(), !dbg !294
  fence syncscope("warp") acquire, !dbg !295
  %129 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul107, !dbg !296
  %130 = getelementptr inbounds %struct.__half, ptr addrspace(3) %129, i32 %mul100, !dbg !296
  %131 = load i64, ptr addrspace(3) %130, align 16, !dbg !297
  %add.ptr751.1 = getelementptr inbounds i8, ptr addrspace(3) %130, i32 8, !dbg !296
  %132 = load i64, ptr addrspace(3) %add.ptr751.1, align 8, !dbg !297
  %add.ptr772 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !298
  store i64 %131, ptr addrspace(1) %add.ptr772, align 16, !dbg !299
  %output_fetch.sroa.6.0.add.ptr772.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr772, i64 8, !dbg !299
  store i64 %132, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr772.sroa_idx, align 8, !dbg !299
  %133 = getelementptr inbounds i8, ptr addrspace(3) %130, i32 1024, !dbg !296
  %add.ptr751.11044 = getelementptr inbounds i8, ptr addrspace(3) %130, i32 1032, !dbg !296
  %134 = load i64, ptr addrspace(3) %add.ptr751.11044, align 8, !dbg !297
  %135 = load i64, ptr addrspace(3) %133, align 16, !dbg !297
  %add.ptr772.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %4, !dbg !298
  store i64 %134, ptr addrspace(1) %add.ptr772.1, align 16, !dbg !299
  %output_fetch.sroa.6.0.add.ptr772.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr772.1, i64 8, !dbg !299
  store i64 %135, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr772.1.sroa_idx, align 8, !dbg !299
  ret void, !dbg !300
}

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half>, <4 x half>, <4 x float>) #4

; Function Attrs: mustprogress nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.mxc.block.id.x() #5

; Function Attrs: mustprogress nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.mxc.block.id.y() #5

; Function Attrs: mustprogress nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.mxc.block.id.z() #5

; Function Attrs: mustprogress nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.mxc.thread.id.x() #5

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.mxc.barrier.warp() #6

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare i32 @llvm.mxc.bsm.bpermute(i32, i32) #4

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare i32 @llvm.mxc.mbcnt.lo(i32, i32) #4

; Function Attrs: convergent mustprogress nofree nounwind willreturn memory(none)
declare i32 @llvm.mxc.mbcnt.hi(i32, i32) #4

; Function Attrs: mustprogress nofree nosync nounwind speculatable willreturn memory(none)
declare align 4 ptr addrspace(4) @llvm.mxc.implicitarg.ptr() #5

; Function Attrs: mustprogress nofree nosync nounwind speculatable willreturn memory(none)
declare align 4 ptr addrspace(4) @llvm.mxc.dispatch.ptr() #5

; Function Attrs: mustprogress nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.mxc.is.private(ptr nocapture) #5

; Function Attrs: mustprogress nounwind willreturn
declare void @llvm.mxc.sleep(i32 immarg) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #8

; Function Attrs: mustprogress nofree nounwind speculatable willreturn memory(inaccessiblemem: read)
declare i32 @llvm.mxc.gethwreg(i32 immarg) #9

; Function Attrs: mustprogress nounwind willreturn
declare void @llvm.mxc.sethwreg(i32 immarg, i32) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #8

attributes #0 = { mustprogress noreturn nounwind "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="512" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="512" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" }
attributes #3 = { convergent mustprogress norecurse nounwind willreturn "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-implicitarg-num-bytes"="80" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="64" "metaxgpu-min-blocks"="1" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" "uniform-work-group-size"="true" }
attributes #4 = { convergent mustprogress nofree nounwind willreturn memory(none) }
attributes #5 = { mustprogress nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { convergent mustprogress nounwind willreturn }
attributes #7 = { mustprogress nounwind willreturn }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind speculatable willreturn memory(inaccessiblemem: read) }
attributes #10 = { nomerge }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "mxcc version 1.0.0 (d9102a1572)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v216_worker2_c8_qk_shared_store16_jit_subagent2/codegen/power_v216/case8_stage1.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v216_worker2_c8_qk_shared_store16_jit_subagent2/codegen/power_v216/case8_stage1.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 28, column: 8, scope: !40)
!44 = !DILocation(line: 28, column: 3, scope: !40)
!45 = !DILocation(line: 29, column: 43, scope: !40)
!46 = !DILocation(line: 29, column: 29, scope: !40)
!47 = !DILocation(line: 31, column: 12, scope: !40)
!48 = !DILocation(line: 38, column: 9, scope: !40)
!49 = !DILocation(line: 45, column: 9, scope: !40)
!50 = !DILocation(line: 52, column: 9, scope: !40)
!51 = !DILocation(line: 59, column: 9, scope: !40)
!52 = !DILocation(line: 66, column: 9, scope: !40)
!53 = !DILocation(line: 73, column: 9, scope: !40)
!54 = !DILocation(line: 80, column: 9, scope: !40)
!55 = !DILocation(line: 86, column: 140, scope: !40)
!56 = !DILocation(line: 29, column: 124, scope: !40)
!57 = !DILocation(line: 86, column: 22, scope: !40)
!58 = !DILocation(line: 68, column: 3, scope: !59, inlinedAt: !61)
!59 = distinct !DISubprogram(name: "__barrier_warp", scope: !60, file: !60, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!60 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!61 = distinct !DILocation(line: 192, column: 3, scope: !62, inlinedAt: !63)
!62 = distinct !DISubprogram(name: "__syncwarp", scope: !60, file: !60, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!63 = distinct !DILocation(line: 88, column: 3, scope: !40)
!64 = !DILocation(line: 69, column: 3, scope: !59, inlinedAt: !61)
!65 = !DILocation(line: 70, column: 3, scope: !59, inlinedAt: !61)
!66 = !DILocation(line: 91, column: 140, scope: !40)
!67 = !DILocation(line: 91, column: 168, scope: !40)
!68 = !DILocation(line: 91, column: 94, scope: !40)
!69 = !DILocation(line: 91, column: 111, scope: !40)
!70 = !DILocation(line: 100, column: 50, scope: !40)
!71 = !DILocation(line: 100, column: 58, scope: !40)
!72 = !DILocation(line: 100, column: 22, scope: !40)
!73 = !DILocation(line: 100, column: 80, scope: !40)
!74 = !DILocation(line: 101, column: 10, scope: !40)
!75 = !DILocation(line: 101, column: 26, scope: !40)
!76 = !DILocation(line: 91, column: 174, scope: !40)
!77 = !DILocation(line: 91, column: 57, scope: !40)
!78 = !DILocation(line: 91, column: 38, scope: !40)
!79 = !DILocation(line: 68, column: 3, scope: !59, inlinedAt: !80)
!80 = distinct !DILocation(line: 192, column: 3, scope: !62, inlinedAt: !81)
!81 = distinct !DILocation(line: 102, column: 5, scope: !40)
!82 = !DILocation(line: 69, column: 3, scope: !59, inlinedAt: !80)
!83 = !DILocation(line: 70, column: 3, scope: !59, inlinedAt: !80)
!84 = !DILocation(line: 104, column: 10, scope: !40)
!85 = !DILocation(line: 105, column: 45, scope: !40)
!86 = !DILocation(line: 105, column: 31, scope: !40)
!87 = !DILocation(line: 114, column: 11, scope: !40)
!88 = !DILocation(line: 121, column: 11, scope: !40)
!89 = !DILocation(line: 128, column: 11, scope: !40)
!90 = !DILocation(line: 135, column: 11, scope: !40)
!91 = !DILocation(line: 142, column: 11, scope: !40)
!92 = !DILocation(line: 149, column: 11, scope: !40)
!93 = !DILocation(line: 156, column: 11, scope: !40)
!94 = !DILocation(line: 162, column: 144, scope: !40)
!95 = !DILocation(line: 68, column: 3, scope: !59, inlinedAt: !96)
!96 = distinct !DILocation(line: 192, column: 3, scope: !62, inlinedAt: !97)
!97 = distinct !DILocation(line: 164, column: 5, scope: !40)
!98 = !DILocation(line: 69, column: 3, scope: !59, inlinedAt: !96)
!99 = !DILocation(line: 70, column: 3, scope: !59, inlinedAt: !96)
!100 = !DILocation(line: 169, column: 30, scope: !40)
!101 = !DILocation(line: 171, column: 37, scope: !40)
!102 = !DILocation(line: 179, column: 72, scope: !40)
!103 = !DILocation(line: 179, column: 11, scope: !40)
!104 = !DILocation(line: 179, column: 61, scope: !40)
!105 = !DILocation(line: 351, column: 10, scope: !106, inlinedAt: !108)
!106 = distinct !DISubprogram(name: "max", scope: !107, file: !107, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!107 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!108 = distinct !DILocation(line: 189, column: 20, scope: !40)
!109 = !DILocation(line: 1018, column: 9, scope: !110, inlinedAt: !111)
!110 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !60, file: !60, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!111 = distinct !DILocation(line: 191, column: 34, scope: !40)
!112 = !DILocation(line: 171, column: 37, scope: !113, inlinedAt: !114)
!113 = distinct !DISubprogram(name: "__lane_id", scope: !60, file: !60, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!114 = distinct !DILocation(line: 990, column: 14, scope: !115, inlinedAt: !116)
!115 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !60, file: !60, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!116 = distinct !DILocation(line: 1019, column: 11, scope: !110, inlinedAt: !111)
!117 = !DILocation(line: 171, column: 10, scope: !113, inlinedAt: !114)
!118 = !DILocation(line: 991, column: 20, scope: !115, inlinedAt: !116)
!119 = !DILocation(line: 992, column: 36, scope: !115, inlinedAt: !116)
!120 = !DILocation(line: 992, column: 17, scope: !115, inlinedAt: !116)
!121 = !DILocation(line: 992, column: 11, scope: !115, inlinedAt: !116)
!122 = !DILocation(line: 993, column: 43, scope: !115, inlinedAt: !116)
!123 = !DILocation(line: 993, column: 10, scope: !115, inlinedAt: !116)
!124 = !DILocation(line: 1020, column: 14, scope: !110, inlinedAt: !111)
!125 = !DILocation(line: 351, column: 10, scope: !106, inlinedAt: !126)
!126 = distinct !DILocation(line: 191, column: 18, scope: !40)
!127 = !DILocation(line: 1018, column: 9, scope: !110, inlinedAt: !128)
!128 = distinct !DILocation(line: 192, column: 34, scope: !40)
!129 = !DILocation(line: 171, column: 37, scope: !113, inlinedAt: !130)
!130 = distinct !DILocation(line: 990, column: 14, scope: !115, inlinedAt: !131)
!131 = distinct !DILocation(line: 1019, column: 11, scope: !110, inlinedAt: !128)
!132 = !DILocation(line: 171, column: 10, scope: !113, inlinedAt: !130)
!133 = !DILocation(line: 991, column: 20, scope: !115, inlinedAt: !131)
!134 = !DILocation(line: 992, column: 36, scope: !115, inlinedAt: !131)
!135 = !DILocation(line: 992, column: 17, scope: !115, inlinedAt: !131)
!136 = !DILocation(line: 992, column: 11, scope: !115, inlinedAt: !131)
!137 = !DILocation(line: 993, column: 43, scope: !115, inlinedAt: !131)
!138 = !DILocation(line: 993, column: 10, scope: !115, inlinedAt: !131)
!139 = !DILocation(line: 1020, column: 14, scope: !110, inlinedAt: !128)
!140 = !DILocation(line: 351, column: 10, scope: !106, inlinedAt: !141)
!141 = distinct !DILocation(line: 192, column: 18, scope: !40)
!142 = !DILocation(line: 202, column: 24, scope: !40)
!143 = !DILocation(line: 203, column: 24, scope: !40)
!144 = !DILocation(line: 204, column: 24, scope: !40)
!145 = !DILocation(line: 205, column: 24, scope: !40)
!146 = !DILocation(line: 207, column: 23, scope: !40)
!147 = !DILocation(line: 208, column: 23, scope: !40)
!148 = !DILocation(line: 209, column: 23, scope: !40)
!149 = !DILocation(line: 210, column: 23, scope: !40)
!150 = !DILocation(line: 212, column: 21, scope: !40)
!151 = !DILocation(line: 213, column: 21, scope: !40)
!152 = !DILocation(line: 214, column: 21, scope: !40)
!153 = !DILocation(line: 215, column: 21, scope: !40)
!154 = !DILocation(line: 285, column: 49, scope: !155, inlinedAt: !156)
!155 = distinct !DISubprogram(name: "exp2f", scope: !107, file: !107, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!156 = distinct !DILocation(line: 216, column: 13, scope: !40)
!157 = !DILocation(line: 285, column: 49, scope: !155, inlinedAt: !158)
!158 = distinct !DILocation(line: 217, column: 13, scope: !40)
!159 = !DILocation(line: 285, column: 49, scope: !155, inlinedAt: !160)
!160 = distinct !DILocation(line: 218, column: 13, scope: !40)
!161 = !DILocation(line: 285, column: 49, scope: !155, inlinedAt: !162)
!162 = distinct !DILocation(line: 219, column: 13, scope: !40)
!163 = !DILocation(line: 1007, column: 10, scope: !164, inlinedAt: !166)
!164 = distinct !DISubprogram(name: "__float2half_rn", scope: !165, file: !165, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!165 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!166 = distinct !DILocation(line: 1077, column: 18, scope: !167, inlinedAt: !168)
!167 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !165, file: !165, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!168 = distinct !DILocation(line: 1295, column: 23, scope: !169, inlinedAt: !170)
!169 = distinct !DISubprogram(name: "__float22half2_rn", scope: !165, file: !165, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!170 = distinct !DILocation(line: 220, column: 27, scope: !40)
!171 = !{!172, !174}
!172 = distinct !{!172, !173, !"_ZL17__floats2half2_rnff: %agg.result"}
!173 = distinct !{!173, !"_ZL17__floats2half2_rnff"}
!174 = distinct !{!174, !175, !"_ZL17__float22half2_rn6float2: %agg.result"}
!175 = distinct !{!175, !"_ZL17__float22half2_rn6float2"}
!176 = !DILocation(line: 1007, column: 10, scope: !164, inlinedAt: !177)
!177 = distinct !DILocation(line: 1077, column: 38, scope: !167, inlinedAt: !168)
!178 = !DILocation(line: 1007, column: 10, scope: !164, inlinedAt: !179)
!179 = distinct !DILocation(line: 1077, column: 18, scope: !167, inlinedAt: !180)
!180 = distinct !DILocation(line: 1295, column: 23, scope: !169, inlinedAt: !181)
!181 = distinct !DILocation(line: 221, column: 27, scope: !40)
!182 = !{!183, !185}
!183 = distinct !{!183, !184, !"_ZL17__floats2half2_rnff: %agg.result"}
!184 = distinct !{!184, !"_ZL17__floats2half2_rnff"}
!185 = distinct !{!185, !186, !"_ZL17__float22half2_rn6float2: %agg.result"}
!186 = distinct !{!186, !"_ZL17__float22half2_rn6float2"}
!187 = !DILocation(line: 1007, column: 10, scope: !164, inlinedAt: !188)
!188 = distinct !DILocation(line: 1077, column: 38, scope: !167, inlinedAt: !180)
!189 = !DILocation(line: 222, column: 34, scope: !40)
!190 = !DILocation(line: 1082, column: 16, scope: !191, inlinedAt: !192)
!191 = distinct !DISubprogram(name: "__half2float", scope: !165, file: !165, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!192 = distinct !DILocation(line: 136, column: 55, scope: !193, inlinedAt: !194)
!193 = distinct !DISubprogram(name: "operator float", scope: !165, file: !165, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!194 = distinct !DILocation(line: 226, column: 50, scope: !40)
!195 = !DILocation(line: 226, column: 40, scope: !40)
!196 = !DILocation(line: 68, column: 3, scope: !59, inlinedAt: !197)
!197 = distinct !DILocation(line: 192, column: 3, scope: !62, inlinedAt: !198)
!198 = distinct !DILocation(line: 229, column: 5, scope: !40)
!199 = !DILocation(line: 69, column: 3, scope: !59, inlinedAt: !197)
!200 = !DILocation(line: 70, column: 3, scope: !59, inlinedAt: !197)
!201 = !DILocation(line: 232, column: 52, scope: !40)
!202 = !DILocation(line: 232, column: 38, scope: !40)
!203 = !DILocation(line: 239, column: 133, scope: !40)
!204 = !DILocation(line: 239, column: 218, scope: !40)
!205 = !DILocation(line: 239, column: 139, scope: !40)
!206 = !DILocation(line: 239, column: 224, scope: !40)
!207 = !DILocation(line: 239, column: 24, scope: !40)
!208 = !DILocation(line: 239, column: 267, scope: !40)
!209 = !DILocation(line: 68, column: 3, scope: !59, inlinedAt: !210)
!210 = distinct !DILocation(line: 192, column: 3, scope: !62, inlinedAt: !211)
!211 = distinct !DILocation(line: 241, column: 5, scope: !40)
!212 = !DILocation(line: 69, column: 3, scope: !59, inlinedAt: !210)
!213 = !DILocation(line: 70, column: 3, scope: !59, inlinedAt: !210)
!214 = !DILocation(line: 244, column: 191, scope: !40)
!215 = !DILocation(line: 244, column: 63, scope: !40)
!216 = !DILocation(line: 244, column: 44, scope: !40)
!217 = !DILocation(line: 249, column: 46, scope: !40)
!218 = !DILocation(line: 228, column: 38, scope: !40)
!219 = !DILocation(line: 1018, column: 9, scope: !110, inlinedAt: !220)
!220 = distinct !DILocation(line: 255, column: 38, scope: !40)
!221 = !DILocation(line: 0, scope: !40)
!222 = !DILocation(line: 171, column: 37, scope: !113, inlinedAt: !223)
!223 = distinct !DILocation(line: 990, column: 14, scope: !115, inlinedAt: !224)
!224 = distinct !DILocation(line: 1019, column: 11, scope: !110, inlinedAt: !220)
!225 = !DILocation(line: 171, column: 10, scope: !113, inlinedAt: !223)
!226 = !DILocation(line: 991, column: 20, scope: !115, inlinedAt: !224)
!227 = !DILocation(line: 992, column: 36, scope: !115, inlinedAt: !224)
!228 = !DILocation(line: 992, column: 17, scope: !115, inlinedAt: !224)
!229 = !DILocation(line: 992, column: 11, scope: !115, inlinedAt: !224)
!230 = !DILocation(line: 993, column: 43, scope: !115, inlinedAt: !224)
!231 = !DILocation(line: 993, column: 10, scope: !115, inlinedAt: !224)
!232 = !DILocation(line: 1020, column: 14, scope: !110, inlinedAt: !220)
!233 = !DILocation(line: 255, column: 36, scope: !40)
!234 = !DILocation(line: 1018, column: 9, scope: !110, inlinedAt: !235)
!235 = distinct !DILocation(line: 256, column: 38, scope: !40)
!236 = !DILocation(line: 171, column: 37, scope: !113, inlinedAt: !237)
!237 = distinct !DILocation(line: 990, column: 14, scope: !115, inlinedAt: !238)
!238 = distinct !DILocation(line: 1019, column: 11, scope: !110, inlinedAt: !235)
!239 = !DILocation(line: 171, column: 10, scope: !113, inlinedAt: !237)
!240 = !DILocation(line: 991, column: 20, scope: !115, inlinedAt: !238)
!241 = !DILocation(line: 992, column: 36, scope: !115, inlinedAt: !238)
!242 = !DILocation(line: 992, column: 17, scope: !115, inlinedAt: !238)
!243 = !DILocation(line: 992, column: 11, scope: !115, inlinedAt: !238)
!244 = !DILocation(line: 993, column: 43, scope: !115, inlinedAt: !238)
!245 = !DILocation(line: 993, column: 10, scope: !115, inlinedAt: !238)
!246 = !DILocation(line: 1020, column: 14, scope: !110, inlinedAt: !235)
!247 = !DILocation(line: 256, column: 36, scope: !40)
!248 = !DILocation(line: 260, column: 21, scope: !40)
!249 = !DILocation(line: 262, column: 22, scope: !40)
!250 = !DILocation(line: 263, column: 22, scope: !40)
!251 = !DILocation(line: 264, column: 22, scope: !40)
!252 = !DILocation(line: 265, column: 22, scope: !40)
!253 = !DILocation(line: 68, column: 3, scope: !59, inlinedAt: !254)
!254 = distinct !DILocation(line: 192, column: 3, scope: !62, inlinedAt: !255)
!255 = distinct !DILocation(line: 268, column: 3, scope: !40)
!256 = !DILocation(line: 69, column: 3, scope: !59, inlinedAt: !254)
!257 = !DILocation(line: 70, column: 3, scope: !59, inlinedAt: !254)
!258 = !DILocation(line: 1007, column: 10, scope: !164, inlinedAt: !259)
!259 = distinct !DILocation(line: 1077, column: 18, scope: !167, inlinedAt: !260)
!260 = distinct !DILocation(line: 1295, column: 23, scope: !169, inlinedAt: !261)
!261 = distinct !DILocation(line: 273, column: 27, scope: !40)
!262 = !{!263, !265}
!263 = distinct !{!263, !264, !"_ZL17__floats2half2_rnff: %agg.result"}
!264 = distinct !{!264, !"_ZL17__floats2half2_rnff"}
!265 = distinct !{!265, !266, !"_ZL17__float22half2_rn6float2: %agg.result"}
!266 = distinct !{!266, !"_ZL17__float22half2_rn6float2"}
!267 = !DILocation(line: 1007, column: 10, scope: !164, inlinedAt: !268)
!268 = distinct !DILocation(line: 1077, column: 38, scope: !167, inlinedAt: !260)
!269 = !DILocation(line: 596, column: 67, scope: !270, inlinedAt: !271)
!270 = distinct !DISubprogram(name: "__half2", scope: !165, file: !165, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!271 = distinct !DILocation(line: 1077, column: 10, scope: !167, inlinedAt: !260)
!272 = !DILocation(line: 596, column: 73, scope: !270, inlinedAt: !271)
!273 = !DILocation(line: 1007, column: 10, scope: !164, inlinedAt: !274)
!274 = distinct !DILocation(line: 1077, column: 18, scope: !167, inlinedAt: !275)
!275 = distinct !DILocation(line: 1295, column: 23, scope: !169, inlinedAt: !276)
!276 = distinct !DILocation(line: 274, column: 27, scope: !40)
!277 = !{!278, !280}
!278 = distinct !{!278, !279, !"_ZL17__floats2half2_rnff: %agg.result"}
!279 = distinct !{!279, !"_ZL17__floats2half2_rnff"}
!280 = distinct !{!280, !281, !"_ZL17__float22half2_rn6float2: %agg.result"}
!281 = distinct !{!281, !"_ZL17__float22half2_rn6float2"}
!282 = !DILocation(line: 1007, column: 10, scope: !164, inlinedAt: !283)
!283 = distinct !DILocation(line: 1077, column: 38, scope: !167, inlinedAt: !275)
!284 = !DILocation(line: 596, column: 67, scope: !270, inlinedAt: !285)
!285 = distinct !DILocation(line: 1077, column: 10, scope: !167, inlinedAt: !275)
!286 = !DILocation(line: 596, column: 73, scope: !270, inlinedAt: !285)
!287 = !DILocation(line: 275, column: 38, scope: !40)
!288 = !DILocation(line: 276, column: 141, scope: !40)
!289 = !DILocation(line: 276, column: 22, scope: !40)
!290 = !DILocation(line: 276, column: 221, scope: !40)
!291 = !DILocation(line: 68, column: 3, scope: !59, inlinedAt: !292)
!292 = distinct !DILocation(line: 192, column: 3, scope: !62, inlinedAt: !293)
!293 = distinct !DILocation(line: 278, column: 3, scope: !40)
!294 = !DILocation(line: 69, column: 3, scope: !59, inlinedAt: !292)
!295 = !DILocation(line: 70, column: 3, scope: !59, inlinedAt: !292)
!296 = !DILocation(line: 283, column: 63, scope: !40)
!297 = !DILocation(line: 283, column: 44, scope: !40)
!298 = !DILocation(line: 285, column: 22, scope: !40)
!299 = !DILocation(line: 285, column: 134, scope: !40)
!300 = !DILocation(line: 287, column: 1, scope: !40)
