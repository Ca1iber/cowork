; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v063_codex_power_s8_qk_u32_select_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v063_codex_power_s8_qk_u32_select_sc-16g-2/codegen/case12.device.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "mxc-metax-macahca"

%struct.mcDevMallocInfo.0 = type { i32, i32, ptr }
%struct.__half = type { i16 }

@shared_words = external protected local_unnamed_addr addrspace(3) global [0 x i32], align 1024
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
define protected metaxgpu_kernel void @native_sparse_attention_kernel(ptr addrspace(1) noalias nocapture noundef readonly %Indices.coerce, ptr addrspace(4) noalias noundef readonly %K_words.coerce, ptr addrspace(1) noalias nocapture noundef writeonly %Output.coerce, ptr addrspace(4) noalias nocapture noundef readonly %Q_words.coerce, ptr addrspace(4) noalias nocapture noundef readonly %V.coerce) local_unnamed_addr #3 !dbg !40 {
entry:
  %0 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.y(), !range !29
  %mul = shl nsw i32 %0, 19
  %1 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !range !29
  %mul7 = shl nsw i32 %1, 9
  %add = add nuw nsw i32 %mul, %mul7
  %2 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !42
  %mul11 = shl nuw nsw i32 %2, 2
  %add9 = add nuw nsw i32 %add, %mul11
  %and = lshr i32 %2, 3
  %shr = and i32 %and, 1
  %mul31 = and i32 %mul11, 4064
  %and34 = and i32 %2, 7
  %xor37 = xor i32 %and34, %and
  %invariant.gep = getelementptr inbounds i32, ptr addrspace(3) @shared_words, i32 %mul31, !dbg !43
  %add.ptr41.idx = shl nuw nsw i32 %xor37, 4
  %invariant.gep836 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %add.ptr41.idx, !dbg !43
  %3 = zext nneg i32 %add9 to i64, !dbg !44
  %add.ptr = getelementptr inbounds i32, ptr addrspace(4) %Q_words.coerce, i64 %3, !dbg !45
  %qk_fetch.sroa.0.0.copyload = load i32, ptr addrspace(4) %add.ptr, align 16, !dbg !46, !tbaa !30
  %qk_fetch.sroa.56.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 4, !dbg !46
  %qk_fetch.sroa.56.0.copyload = load i32, ptr addrspace(4) %qk_fetch.sroa.56.0.add.ptr.sroa_idx, align 4, !dbg !46, !tbaa !30
  %qk_fetch.sroa.92.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !46
  %qk_fetch.sroa.92.0.copyload = load i32, ptr addrspace(4) %qk_fetch.sroa.92.0.add.ptr.sroa_idx, align 8, !dbg !46, !tbaa !30
  %qk_fetch.sroa.128.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 12, !dbg !46
  %qk_fetch.sroa.128.0.copyload = load i32, ptr addrspace(4) %qk_fetch.sroa.128.0.add.ptr.sroa_idx, align 4, !dbg !46, !tbaa !30
  %cmp19 = icmp eq i32 %shr, 0
  %cond.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.0.0.copyload, i32 %qk_fetch.sroa.92.0.copyload, !dbg !47
  %cond.1.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.56.0.copyload, i32 %qk_fetch.sroa.128.0.copyload, !dbg !47
  %cond.2.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.92.0.copyload, i32 %qk_fetch.sroa.0.0.copyload, !dbg !47
  %cond.3.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.128.0.copyload, i32 %qk_fetch.sroa.56.0.copyload, !dbg !47
  store i32 %cond.sroa.speculated, ptr addrspace(3) %invariant.gep836, align 16, !dbg !48, !tbaa !30
  %qk_ordered.sroa.38.0.invariant.gep836.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep836, i32 4, !dbg !48
  store i32 %cond.1.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.38.0.invariant.gep836.sroa_idx, align 4, !dbg !48, !tbaa !30
  %qk_ordered.sroa.56.0.invariant.gep836.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep836, i32 8, !dbg !48
  store i32 %cond.2.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.56.0.invariant.gep836.sroa_idx, align 8, !dbg !48, !tbaa !30
  %qk_ordered.sroa.74.0.invariant.gep836.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep836, i32 12, !dbg !48
  store i32 %cond.3.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.74.0.invariant.gep836.sroa_idx, align 4, !dbg !48, !tbaa !30
  %4 = getelementptr inbounds i32, ptr addrspace(4) %Q_words.coerce, i64 %3, !dbg !45
  %add.ptr.1 = getelementptr inbounds i8, ptr addrspace(4) %4, i64 1024, !dbg !45
  %qk_fetch.sroa.0.0.copyload3264 = load i32, ptr addrspace(4) %add.ptr.1, align 16, !dbg !46, !tbaa !30
  %qk_fetch.sroa.56.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %4, i64 1028, !dbg !46
  %qk_fetch.sroa.56.0.copyload3281 = load i32, ptr addrspace(4) %qk_fetch.sroa.56.0.add.ptr.1.sroa_idx, align 4, !dbg !46, !tbaa !30
  %qk_fetch.sroa.92.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %4, i64 1032, !dbg !46
  %qk_fetch.sroa.92.0.copyload3305 = load i32, ptr addrspace(4) %qk_fetch.sroa.92.0.add.ptr.1.sroa_idx, align 8, !dbg !46, !tbaa !30
  %qk_fetch.sroa.128.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %4, i64 1036, !dbg !46
  %qk_fetch.sroa.128.0.copyload3329 = load i32, ptr addrspace(4) %qk_fetch.sroa.128.0.add.ptr.1.sroa_idx, align 4, !dbg !46, !tbaa !30
  %cmp19.1.not = icmp eq i32 %shr, 0
  %cond.1880.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.92.0.copyload3305, i32 %qk_fetch.sroa.0.0.copyload3264, !dbg !47
  %cond.1.1.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.128.0.copyload3329, i32 %qk_fetch.sroa.56.0.copyload3281, !dbg !47
  %cond.2.1.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.0.0.copyload3264, i32 %qk_fetch.sroa.92.0.copyload3305, !dbg !47
  %cond.3.1.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.56.0.copyload3281, i32 %qk_fetch.sroa.128.0.copyload3329, !dbg !47
  %gep837.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep836, i32 1024, !dbg !49
  store i32 %cond.1880.sroa.speculated, ptr addrspace(3) %gep837.1, align 16, !dbg !48, !tbaa !30
  %qk_ordered.sroa.38.0.gep837.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep836, i32 1028, !dbg !48
  store i32 %cond.1.1.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.38.0.gep837.1.sroa_idx, align 4, !dbg !48, !tbaa !30
  %qk_ordered.sroa.56.0.gep837.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep836, i32 1032, !dbg !48
  store i32 %cond.2.1.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.56.0.gep837.1.sroa_idx, align 8, !dbg !48, !tbaa !30
  %qk_ordered.sroa.74.0.gep837.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep836, i32 1036, !dbg !48
  store i32 %cond.3.1.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.74.0.gep837.1.sroa_idx, align 4, !dbg !48, !tbaa !30
  fence syncscope("warp") release, !dbg !50
  tail call void @llvm.mxc.barrier.warp(), !dbg !56
  fence syncscope("warp") acquire, !dbg !57
  %and50 = shl nuw nsw i32 %2, 6
  %mul51 = and i32 %and50, 960
  %shr54 = lshr i32 %2, 5
  %and62 = lshr i32 %2, 4
  %5 = xor i32 %and, %and62
  %xor67774 = xor i32 %5, %2
  %xor70 = shl nuw nsw i32 %xor67774, 2
  %mul71 = and i32 %xor70, 4
  %xor58 = xor i32 %shr54, %and34, !dbg !58
  %mul59 = shl nuw nsw i32 %xor58, 3, !dbg !59
  %add60 = add nuw nsw i32 %mul59, %mul51, !dbg !60
  %add72 = or disjoint i32 %add60, %mul71, !dbg !61
  %add.ptr74 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add72, !dbg !62
  %6 = load <4 x half>, ptr addrspace(3) %add.ptr74, align 8, !dbg !63
  %add55.1 = add nuw nsw i32 %shr54, 2, !dbg !64
  %xor58.1 = xor i32 %add55.1, %and34, !dbg !58
  %mul59.1 = shl nuw nsw i32 %xor58.1, 3, !dbg !59
  %add60.1 = add nuw nsw i32 %mul59.1, %mul51, !dbg !60
  %add72.1 = or disjoint i32 %add60.1, %mul71, !dbg !61
  %add.ptr74.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add72.1, !dbg !62
  %7 = load <4 x half>, ptr addrspace(3) %add.ptr74.1, align 8, !dbg !63
  %add55.2 = add nuw nsw i32 %shr54, 4, !dbg !64
  %xor58.2 = xor i32 %add55.2, %and34, !dbg !58
  %mul59.2 = shl nuw nsw i32 %xor58.2, 3, !dbg !59
  %add60.2 = add nuw nsw i32 %mul59.2, %mul51, !dbg !60
  %add72.2 = or disjoint i32 %add60.2, %mul71, !dbg !61
  %add.ptr74.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add72.2, !dbg !62
  %8 = load <4 x half>, ptr addrspace(3) %add.ptr74.2, align 8, !dbg !63
  %add55.3 = add nuw nsw i32 %shr54, 6, !dbg !64
  %xor58.3 = xor i32 %add55.3, %and34, !dbg !58
  %mul59.3 = shl nuw nsw i32 %xor58.3, 3, !dbg !59
  %add60.3 = add nuw nsw i32 %mul59.3, %mul51, !dbg !60
  %add72.3 = or disjoint i32 %add60.3, %mul71, !dbg !61
  %add.ptr74.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add72.3, !dbg !62
  %9 = load <4 x half>, ptr addrspace(3) %add.ptr74.3, align 8, !dbg !63
  %mul102 = shl nsw i32 %0, 13
  %mul104 = shl nsw i32 %1, 3
  %add105 = add nuw nsw i32 %mul102, %mul104
  %conv = zext nneg i32 %0 to i64
  %mul127 = zext nneg i32 %mul11 to i64
  %invariant.gep864 = getelementptr inbounds i32, ptr addrspace(4) %K_words.coerce, i64 %mul127, !dbg !65
  %10 = lshr i32 %2, 2
  %mul229 = and i32 %10, 252
  %mul430 = shl nuw nsw i64 %conv, 16
  %11 = shl nuw nsw i32 %2, 4
  %12 = and i32 %11, 16128
  %mul434 = zext nneg i32 %12 to i64
  %add435 = or disjoint i64 %mul430, %mul434
  %13 = and i32 %mul11, 60
  %mul445 = zext nneg i32 %13 to i64
  %add438 = or disjoint i64 %add435, %mul445
  %mul477 = and i32 %11, 240
  %shr483 = and i32 %10, 3
  %xor484 = xor i32 %shr483, %and62
  %and498 = shl nuw nsw i32 %2, 8
  %mul499 = and i32 %and498, 768
  %mul505 = and i32 %mul11, 48
  %and511 = and i32 %2, 3
  %14 = xor i32 %and62, %and511
  %15 = zext nneg i32 %add105 to i64, !dbg !65
  %arrayidx108 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %15, !dbg !66
  %16 = load i32, ptr addrspace(1) %arrayidx108, align 4, !dbg !66, !tbaa !30
  %mul109 = shl nsw i32 %16, 4, !dbg !67
  %cmp110 = icmp slt i32 %16, 0, !dbg !68
  %cmp112.not = icmp sgt i32 %mul109, %1
  %or.cond = select i1 %cmp110, i1 true, i1 %cmp112.not, !dbg !69
  br i1 %or.cond, label %if.end542, label %if.then, !dbg !69

if.then:                                          ; preds = %entry
  fence syncscope("warp") release, !dbg !70
  tail call void @llvm.mxc.barrier.warp(), !dbg !73
  fence syncscope("warp") acquire, !dbg !74
  %conv122 = zext nneg i32 %mul109 to i64
  %.idx = shl nuw nsw i64 %conv122, 7
  %gep = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep864, i64 %.idx, !dbg !75
  %.idx872 = shl nuw nsw i64 %conv, 17, !dbg !76
  %17 = getelementptr inbounds i8, ptr addrspace(4) %gep, i64 %.idx872, !dbg !76
  %qk_fetch.sroa.0.0.copyload3263 = load i32, ptr addrspace(4) %17, align 16, !dbg !77, !tbaa !30
  %qk_fetch.sroa.56.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %17, i64 4, !dbg !77
  %qk_fetch.sroa.56.0.copyload3280 = load i32, ptr addrspace(4) %qk_fetch.sroa.56.0..sroa_idx, align 4, !dbg !77, !tbaa !30
  %qk_fetch.sroa.92.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %17, i64 8, !dbg !77
  %qk_fetch.sroa.92.0.copyload3304 = load i32, ptr addrspace(4) %qk_fetch.sroa.92.0..sroa_idx, align 8, !dbg !77, !tbaa !30
  %qk_fetch.sroa.128.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %17, i64 12, !dbg !77
  %qk_fetch.sroa.128.0.copyload3328 = load i32, ptr addrspace(4) %qk_fetch.sroa.128.0..sroa_idx, align 4, !dbg !77, !tbaa !30
  %cond150.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.0.0.copyload3263, i32 %qk_fetch.sroa.92.0.copyload3304, !dbg !78
  %cond150.1.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.56.0.copyload3280, i32 %qk_fetch.sroa.128.0.copyload3328, !dbg !78
  %cond150.2.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.92.0.copyload3304, i32 %qk_fetch.sroa.0.0.copyload3263, !dbg !78
  %cond150.3.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.128.0.copyload3328, i32 %qk_fetch.sroa.56.0.copyload3280, !dbg !78
  store i32 %cond150.sroa.speculated, ptr addrspace(3) %invariant.gep836, align 16, !dbg !79, !tbaa !30
  store i32 %cond150.1.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.38.0.invariant.gep836.sroa_idx, align 4, !dbg !79, !tbaa !30
  store i32 %cond150.2.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.56.0.invariant.gep836.sroa_idx, align 8, !dbg !79, !tbaa !30
  store i32 %cond150.3.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.74.0.invariant.gep836.sroa_idx, align 4, !dbg !79, !tbaa !30
  %gep844.1 = getelementptr inbounds i8, ptr addrspace(4) %17, i64 1024, !dbg !76
  %qk_fetch.sroa.0.0.copyload3265 = load i32, ptr addrspace(4) %gep844.1, align 16, !dbg !77, !tbaa !30
  %qk_fetch.sroa.56.0.gep844.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %17, i64 1028, !dbg !77
  %qk_fetch.sroa.56.0.copyload3282 = load i32, ptr addrspace(4) %qk_fetch.sroa.56.0.gep844.1.sroa_idx, align 4, !dbg !77, !tbaa !30
  %qk_fetch.sroa.92.0.gep844.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %17, i64 1032, !dbg !77
  %qk_fetch.sroa.92.0.copyload3306 = load i32, ptr addrspace(4) %qk_fetch.sroa.92.0.gep844.1.sroa_idx, align 8, !dbg !77, !tbaa !30
  %qk_fetch.sroa.128.0.gep844.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %17, i64 1036, !dbg !77
  %qk_fetch.sroa.128.0.copyload3330 = load i32, ptr addrspace(4) %qk_fetch.sroa.128.0.gep844.1.sroa_idx, align 4, !dbg !77, !tbaa !30
  %cond150.1884.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.92.0.copyload3306, i32 %qk_fetch.sroa.0.0.copyload3265, !dbg !78
  %cond150.1.1.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.128.0.copyload3330, i32 %qk_fetch.sroa.56.0.copyload3282, !dbg !78
  %cond150.2.1.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.0.0.copyload3265, i32 %qk_fetch.sroa.92.0.copyload3306, !dbg !78
  %cond150.3.1.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.56.0.copyload3282, i32 %qk_fetch.sroa.128.0.copyload3330, !dbg !78
  store i32 %cond150.1884.sroa.speculated, ptr addrspace(3) %gep837.1, align 16, !dbg !79, !tbaa !30
  store i32 %cond150.1.1.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.38.0.gep837.1.sroa_idx, align 4, !dbg !79, !tbaa !30
  store i32 %cond150.2.1.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.56.0.gep837.1.sroa_idx, align 8, !dbg !79, !tbaa !30
  store i32 %cond150.3.1.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.74.0.gep837.1.sroa_idx, align 4, !dbg !79, !tbaa !30
  fence syncscope("warp") release, !dbg !80
  tail call void @llvm.mxc.barrier.warp(), !dbg !83
  fence syncscope("warp") acquire, !dbg !84
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr74, align 8, !dbg !85
  %18 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %6, <4 x float> zeroinitializer), !dbg !86
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr74.1, align 8, !dbg !85
  %19 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %7, <4 x float> %18), !dbg !86
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr74.2, align 8, !dbg !85
  %20 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %8, <4 x float> %19), !dbg !86
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr74.3, align 8, !dbg !85
  %21 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %9, <4 x float> %20), !dbg !86
  %add230 = add nuw nsw i32 %mul109, %mul229
  %cmp233.not = icmp sgt i32 %add230, %1, !dbg !87
  %scores.sroa.0.0.vec.extract2069 = extractelement <4 x float> %21, i64 0
  %spec.select = select i1 %cmp233.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2069, !dbg !88
  %cmp233.not.1.not = icmp slt i32 %add230, %1, !dbg !87
  %scores.sroa.0.4.vec.extract2174 = extractelement <4 x float> %21, i64 1, !dbg !88
  %condval.0.1 = select i1 %cmp233.not.1.not, float %scores.sroa.0.4.vec.extract2174, float 0xFFF0000000000000, !dbg !88
  %add231.2 = or disjoint i32 %add230, 2, !dbg !89
  %cmp233.not.2 = icmp sgt i32 %add231.2, %1, !dbg !87
  %scores.sroa.0.8.vec.extract2251 = extractelement <4 x float> %21, i64 2, !dbg !88
  %condval.0.2 = select i1 %cmp233.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2251, !dbg !88
  %add231.3 = or disjoint i32 %add230, 3, !dbg !89
  %cmp233.not.3 = icmp sgt i32 %add231.3, %1, !dbg !87
  %scores.sroa.0.12.vec.extract2328 = extractelement <4 x float> %21, i64 3, !dbg !88
  %condval.0.3 = select i1 %cmp233.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2328, !dbg !88
  %22 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !90
  %23 = tail call contract noundef float @llvm.maxnum.f32(float %22, float %condval.0.1), !dbg !90
  %24 = tail call contract noundef float @llvm.maxnum.f32(float %23, float %condval.0.2), !dbg !90
  %25 = tail call contract noundef float @llvm.maxnum.f32(float %24, float %condval.0.3), !dbg !90
  %26 = bitcast float %25 to i32, !dbg !94
  %27 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !97
  %28 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %27) #11, !dbg !102
  %xor.i.i = xor i32 %28, 32, !dbg !103
  %29 = and i32 %28, -64, !dbg !104
  %and.i.i = add nsw i32 %29, 64, !dbg !104
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !105
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %28, !dbg !106
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !107
  %30 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %26), !dbg !108
  %31 = bitcast i32 %30 to float, !dbg !109
  %32 = tail call contract noundef float @llvm.maxnum.f32(float %25, float %31), !dbg !110
  %33 = bitcast float %32 to i32, !dbg !112
  %34 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !114
  %35 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %34) #11, !dbg !117
  %xor.i.i775 = xor i32 %35, 16, !dbg !118
  %36 = and i32 %35, -64, !dbg !119
  %and.i.i776 = add nsw i32 %36, 64, !dbg !119
  %cmp.not.i.i777 = icmp slt i32 %xor.i.i775, %and.i.i776, !dbg !120
  %cond.i.i778 = select i1 %cmp.not.i.i777, i32 %xor.i.i775, i32 %35, !dbg !121
  %shl.i.i779 = shl i32 %cond.i.i778, 2, !dbg !122
  %37 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i779, i32 %33), !dbg !123
  %38 = bitcast i32 %37 to float, !dbg !124
  %39 = tail call contract noundef float @llvm.maxnum.f32(float %32, float %38), !dbg !125
  %40 = tail call contract noundef float @llvm.maxnum.f32(float %39, float 0xFFF0000000000000), !dbg !127
  %sub = fsub contract float 0xFFF0000000000000, %40, !dbg !129
  %mul275 = fmul contract float %sub, 0x3FC7154760000000, !dbg !130
  %cmp.i.i = fcmp contract olt float %mul275, -1.260000e+02, !dbg !131
  %cond.i.i780 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i = fadd contract float %mul275, %cond.i.i780, !dbg !131
  %41 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !131
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i = fmul contract float %cond2.i.i, %41, !dbg !131
  %mul292 = fmul contract float %mul.i.i, 0.000000e+00, !dbg !134
  %numerator.sroa.0.0.vec.insert2384 = insertelement <4 x float> poison, float %mul292, i64 0, !dbg !135
  %numerator.sroa.0.12.vec.insert2495 = shufflevector <4 x float> %numerator.sroa.0.0.vec.insert2384, <4 x float> poison, <4 x i32> zeroinitializer, !dbg !135
  %sub325 = fsub contract float %spec.select, %40, !dbg !136
  %sub329 = fsub contract float %condval.0.1, %40, !dbg !137
  %sub333 = fsub contract float %condval.0.2, %40, !dbg !138
  %sub337 = fsub contract float %condval.0.3, %40, !dbg !139
  %mul342 = fmul contract float %sub325, 0x3FC7154760000000, !dbg !140
  %mul346 = fmul contract float %sub329, 0x3FC7154760000000, !dbg !141
  %mul350 = fmul contract float %sub333, 0x3FC7154760000000, !dbg !142
  %mul354 = fmul contract float %sub337, 0x3FC7154760000000, !dbg !143
  %add359 = fadd contract float %mul342, 8.000000e+00, !dbg !144
  %add363 = fadd contract float %mul346, 8.000000e+00, !dbg !145
  %add367 = fadd contract float %mul350, 8.000000e+00, !dbg !146
  %add371 = fadd contract float %mul354, 8.000000e+00, !dbg !147
  %cmp.i.i781 = fcmp contract olt float %add359, -1.260000e+02, !dbg !148
  %cond.i.i782 = select contract i1 %cmp.i.i781, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i783 = fadd contract float %add359, %cond.i.i782, !dbg !148
  %42 = tail call contract float @llvm.exp2.f32(float %add.i.i783), !dbg !148
  %cond2.i.i784 = select contract i1 %cmp.i.i781, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i785 = fmul contract float %cond2.i.i784, %42, !dbg !148
  %cmp.i.i786 = fcmp contract olt float %add363, -1.260000e+02, !dbg !150
  %cond.i.i787 = select contract i1 %cmp.i.i786, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i788 = fadd contract float %add363, %cond.i.i787, !dbg !150
  %43 = tail call contract float @llvm.exp2.f32(float %add.i.i788), !dbg !150
  %cond2.i.i789 = select contract i1 %cmp.i.i786, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i790 = fmul contract float %cond2.i.i789, %43, !dbg !150
  %cmp.i.i791 = fcmp contract olt float %add367, -1.260000e+02, !dbg !152
  %cond.i.i792 = select contract i1 %cmp.i.i791, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i793 = fadd contract float %add367, %cond.i.i792, !dbg !152
  %44 = tail call contract float @llvm.exp2.f32(float %add.i.i793), !dbg !152
  %cond2.i.i794 = select contract i1 %cmp.i.i791, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i795 = fmul contract float %cond2.i.i794, %44, !dbg !152
  %cmp.i.i796 = fcmp contract olt float %add371, -1.260000e+02, !dbg !154
  %cond.i.i797 = select contract i1 %cmp.i.i796, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i798 = fadd contract float %add371, %cond.i.i797, !dbg !154
  %45 = tail call contract float @llvm.exp2.f32(float %add.i.i798), !dbg !154
  %cond2.i.i799 = select contract i1 %cmp.i.i796, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i800 = fmul contract float %cond2.i.i799, %45, !dbg !154
  %46 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !156, !noalias !164
  %47 = fptrunc float %mul.i.i785 to half, !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %46), !dbg !156, !noalias !164
  %48 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !164
  %49 = fptrunc float %mul.i.i790 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %48), !dbg !169, !noalias !164
  %50 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !175
  %51 = fptrunc float %mul.i.i795 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %50), !dbg !171, !noalias !175
  %52 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !180, !noalias !175
  %53 = fptrunc float %mul.i.i800 to half, !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %52), !dbg !180, !noalias !175
  %54 = insertelement <4 x half> poison, half %47, i64 0, !dbg !182
  %55 = insertelement <4 x half> %54, half %49, i64 1, !dbg !182
  %56 = insertelement <4 x half> %55, half %51, i64 2, !dbg !182
  %57 = insertelement <4 x half> %56, half %53, i64 3, !dbg !182
  %conv.i.i = fpext half %47 to float, !dbg !183
  %add405 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !188
  %conv.i.i.1 = fpext half %49 to float, !dbg !183
  %add405.1 = fadd contract float %add405, %conv.i.i.1, !dbg !188
  %conv.i.i.2 = fpext half %51 to float, !dbg !183
  %add405.2 = fadd contract float %add405.1, %conv.i.i.2, !dbg !188
  %conv.i.i.3 = fpext half %53 to float, !dbg !183
  %add405.3 = fadd contract float %add405.2, %conv.i.i.3, !dbg !188
  %58 = bitcast float %add405.3 to i32, !dbg !189
  %59 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !191
  %60 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %59) #11, !dbg !194
  %xor.i.i806 = xor i32 %60, 32, !dbg !195
  %61 = and i32 %60, -64, !dbg !196
  %and.i.i807 = add nsw i32 %61, 64, !dbg !196
  %cmp.not.i.i808 = icmp slt i32 %xor.i.i806, %and.i.i807, !dbg !197
  %cond.i.i809 = select i1 %cmp.not.i.i808, i32 %xor.i.i806, i32 %60, !dbg !198
  %shl.i.i810 = shl i32 %cond.i.i809, 2, !dbg !199
  %62 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i810, i32 %58), !dbg !200
  %63 = bitcast i32 %62 to float, !dbg !201
  %add413 = fadd contract float %add405.3, %63, !dbg !202
  %64 = bitcast float %add413 to i32, !dbg !203
  %65 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %66 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %65) #11, !dbg !208
  %xor.i.i811 = xor i32 %66, 16, !dbg !209
  %67 = and i32 %66, -64, !dbg !210
  %and.i.i812 = add nsw i32 %67, 64, !dbg !210
  %cmp.not.i.i813 = icmp slt i32 %xor.i.i811, %and.i.i812, !dbg !211
  %cond.i.i814 = select i1 %cmp.not.i.i813, i32 %xor.i.i811, i32 %66, !dbg !212
  %shl.i.i815 = shl i32 %cond.i.i814, 2, !dbg !213
  %68 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i815, i32 %64), !dbg !214
  %69 = bitcast i32 %68 to float, !dbg !215
  %add418 = fadd contract float %add413, %69, !dbg !216
  fence syncscope("warp") release, !dbg !217
  tail call void @llvm.mxc.barrier.warp(), !dbg !220
  fence syncscope("warp") acquire, !dbg !221
  %70 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add438, !dbg !222
  %71 = getelementptr inbounds i8, ptr addrspace(4) %70, i64 %.idx, !dbg !222
  %72 = load i64, ptr addrspace(4) %71, align 8, !dbg !223
  %add.ptr447.1 = getelementptr inbounds i8, ptr addrspace(4) %71, i64 128, !dbg !222
  %73 = load i64, ptr addrspace(4) %add.ptr447.1, align 8, !dbg !223
  %add.ptr447.2 = getelementptr inbounds i8, ptr addrspace(4) %71, i64 256, !dbg !222
  %74 = load i64, ptr addrspace(4) %add.ptr447.2, align 8, !dbg !223
  %add.ptr447.3 = getelementptr inbounds i8, ptr addrspace(4) %71, i64 384, !dbg !222
  %75 = load i64, ptr addrspace(4) %add.ptr447.3, align 8, !dbg !223
  %76 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %mul477, !dbg !224
  %add.ptr489.idx = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489 = getelementptr inbounds i8, ptr addrspace(3) %76, i32 %add.ptr489.idx, !dbg !224
  %v_column.sroa.130.0.insert.ext = shl i64 %75, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext = shl i64 %74, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift = and i64 %v_column.sroa.98.0.insert.ext, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert = or disjoint i64 %v_column.sroa.130.0.insert.ext, %v_column.sroa.98.0.insert.shift, !dbg !225
  %v_column.sroa.66.0.insert.ext = shl i64 %73, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift = and i64 %v_column.sroa.66.0.insert.ext, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert = or disjoint i64 %v_column.sroa.98.0.insert.insert, %v_column.sroa.66.0.insert.shift, !dbg !225
  %v_column.sroa.0.0.insert.ext = and i64 %72, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert = or disjoint i64 %v_column.sroa.66.0.insert.insert, %v_column.sroa.0.0.insert.ext, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr489, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift = lshr i64 %72, 16, !dbg !226
  %add478.1 = or disjoint i32 %mul477, 256, !dbg !227
  %77 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.1, !dbg !224
  %xor485.1 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.1 = xor i32 %xor485.1, 8, !dbg !224
  %add.ptr489.1 = getelementptr inbounds i8, ptr addrspace(3) %77, i32 %add.ptr489.idx.1, !dbg !224
  %78 = shl i64 %75, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1465 = and i64 %78, -281474976710656, !dbg !225
  %79 = shl i64 %74, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1311 = and i64 %79, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1313 = or disjoint i64 %v_column.sroa.130.0.insert.ext1465, %v_column.sroa.98.0.insert.shift1311, !dbg !225
  %v_column.sroa.66.0.insert.ext1155 = and i64 %73, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1158 = or disjoint i64 %v_column.sroa.98.0.insert.insert1313, %v_column.sroa.66.0.insert.ext1155, !dbg !225
  %v_column.sroa.0.0.insert.ext1031 = and i64 %v_fetch.sroa.0.2.extract.shift, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1033 = or disjoint i64 %v_column.sroa.66.0.insert.insert1158, %v_column.sroa.0.0.insert.ext1031, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1033, ptr addrspace(3) %add.ptr489.1, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift = lshr i64 %72, 32, !dbg !226
  %add478.2 = or disjoint i32 %mul477, 512, !dbg !227
  %80 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.2, !dbg !224
  %xor485.2 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.2 = xor i32 %xor485.2, 16, !dbg !224
  %add.ptr489.2 = getelementptr inbounds i8, ptr addrspace(3) %80, i32 %add.ptr489.idx.2, !dbg !224
  %81 = shl i64 %75, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1470 = and i64 %81, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1315 = and i64 %74, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1318 = or disjoint i64 %v_column.sroa.130.0.insert.ext1470, %v_column.sroa.98.0.insert.ext1315, !dbg !225
  %82 = lshr i64 %73, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1161 = and i64 %82, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1163 = or disjoint i64 %v_column.sroa.98.0.insert.insert1318, %v_column.sroa.66.0.insert.shift1161, !dbg !225
  %v_column.sroa.0.0.insert.ext1035 = and i64 %v_fetch.sroa.0.4.extract.shift, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1037 = or disjoint i64 %v_column.sroa.66.0.insert.insert1163, %v_column.sroa.0.0.insert.ext1035, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1037, ptr addrspace(3) %add.ptr489.2, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift = lshr i64 %72, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift = and i64 %75, -281474976710656, !dbg !225
  %add478.3 = or disjoint i32 %mul477, 768, !dbg !227
  %83 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.3, !dbg !224
  %xor485.3 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.3 = xor i32 %xor485.3, 24, !dbg !224
  %add.ptr489.3 = getelementptr inbounds i8, ptr addrspace(3) %83, i32 %add.ptr489.idx.3, !dbg !224
  %84 = lshr i64 %74, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1321 = and i64 %84, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1323 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift, %v_column.sroa.98.0.insert.shift1321, !dbg !225
  %85 = lshr i64 %73, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1166 = and i64 %85, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1168 = or disjoint i64 %v_column.sroa.98.0.insert.insert1323, %v_column.sroa.66.0.insert.shift1166, !dbg !225
  %v_column.sroa.0.0.insert.insert1041 = or disjoint i64 %v_column.sroa.66.0.insert.insert1168, %v_fetch.sroa.0.6.extract.shift, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1041, ptr addrspace(3) %add.ptr489.3, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add506 = or disjoint i32 %mul499, %mul505, !dbg !233
  %86 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506, !dbg !234
  %add.ptr516.idx = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516 = getelementptr inbounds i8, ptr addrspace(3) %86, i32 %add.ptr516.idx, !dbg !234
  %87 = load <4 x half>, ptr addrspace(3) %add.ptr516, align 8, !dbg !235
  %add501.1 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.1 = or disjoint i32 %add501.1, 64, !dbg !233
  %88 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.1, !dbg !234
  %xor512.1 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.1 = xor i32 %xor512.1, 8, !dbg !234
  %add.ptr516.1 = getelementptr inbounds i8, ptr addrspace(3) %88, i32 %add.ptr516.idx.1, !dbg !234
  %89 = load <4 x half>, ptr addrspace(3) %add.ptr516.1, align 8, !dbg !235
  %add501.2 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.2 = or disjoint i32 %add501.2, 128, !dbg !233
  %90 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.2, !dbg !234
  %xor512.2 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.2 = xor i32 %xor512.2, 16, !dbg !234
  %add.ptr516.2 = getelementptr inbounds i8, ptr addrspace(3) %90, i32 %add.ptr516.idx.2, !dbg !234
  %91 = load <4 x half>, ptr addrspace(3) %add.ptr516.2, align 8, !dbg !235
  %add501.3 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.3 = or disjoint i32 %add501.3, 192, !dbg !233
  %92 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.3, !dbg !234
  %xor512.3 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.3 = xor i32 %xor512.3, 24, !dbg !234
  %add.ptr516.3 = getelementptr inbounds i8, ptr addrspace(3) %92, i32 %add.ptr516.idx.3, !dbg !234
  %93 = load <4 x half>, ptr addrspace(3) %add.ptr516.3, align 8, !dbg !235
  %94 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %87, <4 x half> %57, <4 x float> %numerator.sroa.0.12.vec.insert2495), !dbg !236
  %95 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %89, <4 x half> %57, <4 x float> %numerator.sroa.0.12.vec.insert2495), !dbg !236
  %96 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %91, <4 x half> %57, <4 x float> %numerator.sroa.0.12.vec.insert2495), !dbg !236
  %97 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %93, <4 x half> %57, <4 x float> %numerator.sroa.0.12.vec.insert2495), !dbg !236
  %add422 = fadd contract float %mul292, %add418, !dbg !237
  br label %if.end542, !dbg !238

if.end542:                                        ; preds = %if.then, %entry
  %numerator.sroa.290.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %97, %if.then ], !dbg !239
  %numerator.sroa.194.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %96, %if.then ], !dbg !239
  %numerator.sroa.98.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %95, %if.then ], !dbg !239
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %94, %if.then ], !dbg !239
  %maximum.sroa.0.1 = phi float [ 0xFFF0000000000000, %entry ], [ %40, %if.then ], !dbg !239
  %denominator.sroa.0.1 = phi float [ 0.000000e+00, %entry ], [ %add422, %if.then ], !dbg !239
  %98 = or disjoint i64 %15, 1, !dbg !240
  %arrayidx108.1 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %98, !dbg !66
  %99 = load i32, ptr addrspace(1) %arrayidx108.1, align 4, !dbg !66, !tbaa !30
  %mul109.1 = shl nsw i32 %99, 4, !dbg !67
  %cmp110.1 = icmp slt i32 %99, 0, !dbg !68
  %cmp112.not.1 = icmp sgt i32 %mul109.1, %1
  %or.cond.1 = select i1 %cmp110.1, i1 true, i1 %cmp112.not.1, !dbg !69
  br i1 %or.cond.1, label %if.end542.1, label %if.then.1, !dbg !69

if.then.1:                                        ; preds = %if.end542
  fence syncscope("warp") release, !dbg !70
  tail call void @llvm.mxc.barrier.warp(), !dbg !73
  fence syncscope("warp") acquire, !dbg !74
  %conv122.1 = zext nneg i32 %mul109.1 to i64
  %.idx.1 = shl nuw nsw i64 %conv122.1, 7
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep864, i64 %.idx.1, !dbg !75
  %.idx872.1892 = shl nuw nsw i64 %conv, 17, !dbg !76
  %100 = getelementptr inbounds i8, ptr addrspace(4) %gep.1, i64 %.idx872.1892, !dbg !76
  %qk_fetch.sroa.0.0.copyload3266 = load i32, ptr addrspace(4) %100, align 16, !dbg !77, !tbaa !30
  %qk_fetch.sroa.56.0..sroa_idx3283 = getelementptr inbounds i8, ptr addrspace(4) %100, i64 4, !dbg !77
  %qk_fetch.sroa.56.0.copyload3284 = load i32, ptr addrspace(4) %qk_fetch.sroa.56.0..sroa_idx3283, align 4, !dbg !77, !tbaa !30
  %qk_fetch.sroa.92.0..sroa_idx3307 = getelementptr inbounds i8, ptr addrspace(4) %100, i64 8, !dbg !77
  %qk_fetch.sroa.92.0.copyload3308 = load i32, ptr addrspace(4) %qk_fetch.sroa.92.0..sroa_idx3307, align 8, !dbg !77, !tbaa !30
  %qk_fetch.sroa.128.0..sroa_idx3331 = getelementptr inbounds i8, ptr addrspace(4) %100, i64 12, !dbg !77
  %qk_fetch.sroa.128.0.copyload3332 = load i32, ptr addrspace(4) %qk_fetch.sroa.128.0..sroa_idx3331, align 4, !dbg !77, !tbaa !30
  %cond150.1896.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.0.0.copyload3266, i32 %qk_fetch.sroa.92.0.copyload3308, !dbg !78
  %cond150.1.1899.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.56.0.copyload3284, i32 %qk_fetch.sroa.128.0.copyload3332, !dbg !78
  %cond150.2.1903.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.92.0.copyload3308, i32 %qk_fetch.sroa.0.0.copyload3266, !dbg !78
  %cond150.3.1907.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.128.0.copyload3332, i32 %qk_fetch.sroa.56.0.copyload3284, !dbg !78
  store i32 %cond150.1896.sroa.speculated, ptr addrspace(3) %invariant.gep836, align 16, !dbg !79, !tbaa !30
  store i32 %cond150.1.1899.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.38.0.invariant.gep836.sroa_idx, align 4, !dbg !79, !tbaa !30
  store i32 %cond150.2.1903.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.56.0.invariant.gep836.sroa_idx, align 8, !dbg !79, !tbaa !30
  store i32 %cond150.3.1907.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.74.0.invariant.gep836.sroa_idx, align 4, !dbg !79, !tbaa !30
  %gep844.1.1 = getelementptr inbounds i8, ptr addrspace(4) %100, i64 1024, !dbg !76
  %qk_fetch.sroa.0.0.copyload3267 = load i32, ptr addrspace(4) %gep844.1.1, align 16, !dbg !77, !tbaa !30
  %qk_fetch.sroa.56.0.gep844.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %100, i64 1028, !dbg !77
  %qk_fetch.sroa.56.0.copyload3285 = load i32, ptr addrspace(4) %qk_fetch.sroa.56.0.gep844.1.1.sroa_idx, align 4, !dbg !77, !tbaa !30
  %qk_fetch.sroa.92.0.gep844.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %100, i64 1032, !dbg !77
  %qk_fetch.sroa.92.0.copyload3309 = load i32, ptr addrspace(4) %qk_fetch.sroa.92.0.gep844.1.1.sroa_idx, align 8, !dbg !77, !tbaa !30
  %qk_fetch.sroa.128.0.gep844.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %100, i64 1036, !dbg !77
  %qk_fetch.sroa.128.0.copyload3333 = load i32, ptr addrspace(4) %qk_fetch.sroa.128.0.gep844.1.1.sroa_idx, align 4, !dbg !77, !tbaa !30
  %cond150.1884.1.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.92.0.copyload3309, i32 %qk_fetch.sroa.0.0.copyload3267, !dbg !78
  %cond150.1.1.1.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.128.0.copyload3333, i32 %qk_fetch.sroa.56.0.copyload3285, !dbg !78
  %cond150.2.1.1.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.0.0.copyload3267, i32 %qk_fetch.sroa.92.0.copyload3309, !dbg !78
  %cond150.3.1.1.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.56.0.copyload3285, i32 %qk_fetch.sroa.128.0.copyload3333, !dbg !78
  store i32 %cond150.1884.1.sroa.speculated, ptr addrspace(3) %gep837.1, align 16, !dbg !79, !tbaa !30
  store i32 %cond150.1.1.1.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.38.0.gep837.1.sroa_idx, align 4, !dbg !79, !tbaa !30
  store i32 %cond150.2.1.1.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.56.0.gep837.1.sroa_idx, align 8, !dbg !79, !tbaa !30
  store i32 %cond150.3.1.1.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.74.0.gep837.1.sroa_idx, align 4, !dbg !79, !tbaa !30
  fence syncscope("warp") release, !dbg !80
  tail call void @llvm.mxc.barrier.warp(), !dbg !83
  fence syncscope("warp") acquire, !dbg !84
  %k_local.sroa.0.0.copyload.1915 = load <4 x half>, ptr addrspace(3) %add.ptr74, align 8, !dbg !85
  %101 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1915, <4 x half> %6, <4 x float> zeroinitializer), !dbg !86
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr74.1, align 8, !dbg !85
  %102 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %7, <4 x float> %101), !dbg !86
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr74.2, align 8, !dbg !85
  %103 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %8, <4 x float> %102), !dbg !86
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr74.3, align 8, !dbg !85
  %104 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %9, <4 x float> %103), !dbg !86
  %add230.1 = add nuw nsw i32 %mul109.1, %mul229
  %cmp233.not.1916 = icmp sgt i32 %add230.1, %1, !dbg !87
  %scores.sroa.0.0.vec.extract2077 = extractelement <4 x float> %104, i64 0
  %spec.select3492 = select i1 %cmp233.not.1916, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2077, !dbg !88
  %cmp233.not.1.1.not = icmp slt i32 %add230.1, %1, !dbg !87
  %scores.sroa.0.4.vec.extract2180 = extractelement <4 x float> %104, i64 1, !dbg !88
  %condval.0.1.1 = select i1 %cmp233.not.1.1.not, float %scores.sroa.0.4.vec.extract2180, float 0xFFF0000000000000, !dbg !88
  %add231.2.1 = or disjoint i32 %add230.1, 2, !dbg !89
  %cmp233.not.2.1 = icmp sgt i32 %add231.2.1, %1, !dbg !87
  %scores.sroa.0.8.vec.extract2257 = extractelement <4 x float> %104, i64 2, !dbg !88
  %condval.0.2.1 = select i1 %cmp233.not.2.1, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2257, !dbg !88
  %add231.3.1 = or disjoint i32 %add230.1, 3, !dbg !89
  %cmp233.not.3.1 = icmp sgt i32 %add231.3.1, %1, !dbg !87
  %scores.sroa.0.12.vec.extract2334 = extractelement <4 x float> %104, i64 3, !dbg !88
  %condval.0.3.1 = select i1 %cmp233.not.3.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2334, !dbg !88
  %105 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3492, float 0xFFF0000000000000), !dbg !90
  %106 = tail call contract noundef float @llvm.maxnum.f32(float %105, float %condval.0.1.1), !dbg !90
  %107 = tail call contract noundef float @llvm.maxnum.f32(float %106, float %condval.0.2.1), !dbg !90
  %108 = tail call contract noundef float @llvm.maxnum.f32(float %107, float %condval.0.3.1), !dbg !90
  %109 = bitcast float %108 to i32, !dbg !94
  %110 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !97
  %111 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %110) #11, !dbg !102
  %xor.i.i.1 = xor i32 %111, 32, !dbg !103
  %112 = and i32 %111, -64, !dbg !104
  %and.i.i.1 = add nsw i32 %112, 64, !dbg !104
  %cmp.not.i.i.1 = icmp slt i32 %xor.i.i.1, %and.i.i.1, !dbg !105
  %cond.i.i.1 = select i1 %cmp.not.i.i.1, i32 %xor.i.i.1, i32 %111, !dbg !106
  %shl.i.i.1 = shl i32 %cond.i.i.1, 2, !dbg !107
  %113 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.1, i32 %109), !dbg !108
  %114 = bitcast i32 %113 to float, !dbg !109
  %115 = tail call contract noundef float @llvm.maxnum.f32(float %108, float %114), !dbg !110
  %116 = bitcast float %115 to i32, !dbg !112
  %117 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !114
  %118 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %117) #11, !dbg !117
  %xor.i.i775.1 = xor i32 %118, 16, !dbg !118
  %119 = and i32 %118, -64, !dbg !119
  %and.i.i776.1 = add nsw i32 %119, 64, !dbg !119
  %cmp.not.i.i777.1 = icmp slt i32 %xor.i.i775.1, %and.i.i776.1, !dbg !120
  %cond.i.i778.1 = select i1 %cmp.not.i.i777.1, i32 %xor.i.i775.1, i32 %118, !dbg !121
  %shl.i.i779.1 = shl i32 %cond.i.i778.1, 2, !dbg !122
  %120 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i779.1, i32 %116), !dbg !123
  %121 = bitcast i32 %120 to float, !dbg !124
  %122 = tail call contract noundef float @llvm.maxnum.f32(float %115, float %121), !dbg !125
  %123 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1, float %122), !dbg !127
  %sub.1 = fsub contract float %maximum.sroa.0.1, %123, !dbg !129
  %mul275.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !130
  %cmp.i.i.1 = fcmp contract olt float %mul275.1, -1.260000e+02, !dbg !131
  %cond.i.i780.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i.1 = fadd contract float %mul275.1, %cond.i.i780.1, !dbg !131
  %124 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !131
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %124, !dbg !131
  %numerator.sroa.0.0.vec.extract2387 = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !241
  %numerator.sroa.0.4.vec.extract2424 = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !241
  %numerator.sroa.0.8.vec.extract2461 = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !241
  %numerator.sroa.0.12.vec.extract2498 = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !241
  %mul292.1927 = fmul contract float %mul.i.i.1, %numerator.sroa.0.0.vec.extract2387, !dbg !134
  %mul295.1928 = fmul contract float %mul.i.i.1, %numerator.sroa.0.4.vec.extract2424, !dbg !242
  %mul298.1929 = fmul contract float %mul.i.i.1, %numerator.sroa.0.8.vec.extract2461, !dbg !243
  %mul301.1930 = fmul contract float %mul.i.i.1, %numerator.sroa.0.12.vec.extract2498, !dbg !244
  %numerator.sroa.0.0.vec.insert2389 = insertelement <4 x float> poison, float %mul292.1927, i64 0, !dbg !135
  %numerator.sroa.0.4.vec.insert2426 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2389, float %mul295.1928, i64 1, !dbg !135
  %numerator.sroa.0.8.vec.insert2463 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2426, float %mul298.1929, i64 2, !dbg !135
  %numerator.sroa.0.12.vec.insert2500 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2463, float %mul301.1930, i64 3, !dbg !135
  %numerator.sroa.98.16.vec.extract2543 = extractelement <4 x float> %numerator.sroa.98.0, i64 0, !dbg !241
  %numerator.sroa.98.20.vec.extract2580 = extractelement <4 x float> %numerator.sroa.98.0, i64 1, !dbg !241
  %numerator.sroa.98.24.vec.extract2617 = extractelement <4 x float> %numerator.sroa.98.0, i64 2, !dbg !241
  %numerator.sroa.98.28.vec.extract2654 = extractelement <4 x float> %numerator.sroa.98.0, i64 3, !dbg !241
  %mul292.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.16.vec.extract2543, !dbg !134
  %mul295.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.20.vec.extract2580, !dbg !242
  %mul298.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.24.vec.extract2617, !dbg !243
  %mul301.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.28.vec.extract2654, !dbg !244
  %numerator.sroa.98.16.vec.insert2545 = insertelement <4 x float> poison, float %mul292.1.1, i64 0, !dbg !135
  %numerator.sroa.98.20.vec.insert2582 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2545, float %mul295.1.1, i64 1, !dbg !135
  %numerator.sroa.98.24.vec.insert2619 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2582, float %mul298.1.1, i64 2, !dbg !135
  %numerator.sroa.98.28.vec.insert2656 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2619, float %mul301.1.1, i64 3, !dbg !135
  %numerator.sroa.194.32.vec.extract2699 = extractelement <4 x float> %numerator.sroa.194.0, i64 0, !dbg !241
  %numerator.sroa.194.36.vec.extract2736 = extractelement <4 x float> %numerator.sroa.194.0, i64 1, !dbg !241
  %numerator.sroa.194.40.vec.extract2773 = extractelement <4 x float> %numerator.sroa.194.0, i64 2, !dbg !241
  %numerator.sroa.194.44.vec.extract2810 = extractelement <4 x float> %numerator.sroa.194.0, i64 3, !dbg !241
  %mul292.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.32.vec.extract2699, !dbg !134
  %mul295.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.36.vec.extract2736, !dbg !242
  %mul298.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.40.vec.extract2773, !dbg !243
  %mul301.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.44.vec.extract2810, !dbg !244
  %numerator.sroa.194.32.vec.insert2701 = insertelement <4 x float> poison, float %mul292.2.1, i64 0, !dbg !135
  %numerator.sroa.194.36.vec.insert2738 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2701, float %mul295.2.1, i64 1, !dbg !135
  %numerator.sroa.194.40.vec.insert2775 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2738, float %mul298.2.1, i64 2, !dbg !135
  %numerator.sroa.194.44.vec.insert2812 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2775, float %mul301.2.1, i64 3, !dbg !135
  %numerator.sroa.290.48.vec.extract2855 = extractelement <4 x float> %numerator.sroa.290.0, i64 0, !dbg !241
  %numerator.sroa.290.52.vec.extract2892 = extractelement <4 x float> %numerator.sroa.290.0, i64 1, !dbg !241
  %numerator.sroa.290.56.vec.extract2929 = extractelement <4 x float> %numerator.sroa.290.0, i64 2, !dbg !241
  %numerator.sroa.290.60.vec.extract2966 = extractelement <4 x float> %numerator.sroa.290.0, i64 3, !dbg !241
  %mul292.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.48.vec.extract2855, !dbg !134
  %mul295.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.52.vec.extract2892, !dbg !242
  %mul298.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.56.vec.extract2929, !dbg !243
  %mul301.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.60.vec.extract2966, !dbg !244
  %numerator.sroa.290.48.vec.insert2857 = insertelement <4 x float> poison, float %mul292.3.1, i64 0, !dbg !135
  %numerator.sroa.290.52.vec.insert2894 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2857, float %mul295.3.1, i64 1, !dbg !135
  %numerator.sroa.290.56.vec.insert2931 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2894, float %mul298.3.1, i64 2, !dbg !135
  %numerator.sroa.290.60.vec.insert2968 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2931, float %mul301.3.1, i64 3, !dbg !135
  %sub325.1 = fsub contract float %spec.select3492, %123, !dbg !136
  %sub329.1 = fsub contract float %condval.0.1.1, %123, !dbg !137
  %sub333.1 = fsub contract float %condval.0.2.1, %123, !dbg !138
  %sub337.1 = fsub contract float %condval.0.3.1, %123, !dbg !139
  %mul342.1 = fmul contract float %sub325.1, 0x3FC7154760000000, !dbg !140
  %mul346.1 = fmul contract float %sub329.1, 0x3FC7154760000000, !dbg !141
  %mul350.1 = fmul contract float %sub333.1, 0x3FC7154760000000, !dbg !142
  %mul354.1 = fmul contract float %sub337.1, 0x3FC7154760000000, !dbg !143
  %add359.1 = fadd contract float %mul342.1, 8.000000e+00, !dbg !144
  %add363.1 = fadd contract float %mul346.1, 8.000000e+00, !dbg !145
  %add367.1 = fadd contract float %mul350.1, 8.000000e+00, !dbg !146
  %add371.1 = fadd contract float %mul354.1, 8.000000e+00, !dbg !147
  %cmp.i.i781.1 = fcmp contract olt float %add359.1, -1.260000e+02, !dbg !148
  %cond.i.i782.1 = select contract i1 %cmp.i.i781.1, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i783.1 = fadd contract float %add359.1, %cond.i.i782.1, !dbg !148
  %125 = tail call contract float @llvm.exp2.f32(float %add.i.i783.1), !dbg !148
  %cond2.i.i784.1 = select contract i1 %cmp.i.i781.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i785.1 = fmul contract float %cond2.i.i784.1, %125, !dbg !148
  %cmp.i.i786.1 = fcmp contract olt float %add363.1, -1.260000e+02, !dbg !150
  %cond.i.i787.1 = select contract i1 %cmp.i.i786.1, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i788.1 = fadd contract float %add363.1, %cond.i.i787.1, !dbg !150
  %126 = tail call contract float @llvm.exp2.f32(float %add.i.i788.1), !dbg !150
  %cond2.i.i789.1 = select contract i1 %cmp.i.i786.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i790.1 = fmul contract float %cond2.i.i789.1, %126, !dbg !150
  %cmp.i.i791.1 = fcmp contract olt float %add367.1, -1.260000e+02, !dbg !152
  %cond.i.i792.1 = select contract i1 %cmp.i.i791.1, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i793.1 = fadd contract float %add367.1, %cond.i.i792.1, !dbg !152
  %127 = tail call contract float @llvm.exp2.f32(float %add.i.i793.1), !dbg !152
  %cond2.i.i794.1 = select contract i1 %cmp.i.i791.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i795.1 = fmul contract float %cond2.i.i794.1, %127, !dbg !152
  %cmp.i.i796.1 = fcmp contract olt float %add371.1, -1.260000e+02, !dbg !154
  %cond.i.i797.1 = select contract i1 %cmp.i.i796.1, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i798.1 = fadd contract float %add371.1, %cond.i.i797.1, !dbg !154
  %128 = tail call contract float @llvm.exp2.f32(float %add.i.i798.1), !dbg !154
  %cond2.i.i799.1 = select contract i1 %cmp.i.i796.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i800.1 = fmul contract float %cond2.i.i799.1, %128, !dbg !154
  %129 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !156, !noalias !164
  %130 = fptrunc float %mul.i.i785.1 to half, !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %129), !dbg !156, !noalias !164
  %131 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !164
  %132 = fptrunc float %mul.i.i790.1 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %131), !dbg !169, !noalias !164
  %133 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !175
  %134 = fptrunc float %mul.i.i795.1 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %133), !dbg !171, !noalias !175
  %135 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !180, !noalias !175
  %136 = fptrunc float %mul.i.i800.1 to half, !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %135), !dbg !180, !noalias !175
  %137 = insertelement <4 x half> poison, half %130, i64 0, !dbg !182
  %138 = insertelement <4 x half> %137, half %132, i64 1, !dbg !182
  %139 = insertelement <4 x half> %138, half %134, i64 2, !dbg !182
  %140 = insertelement <4 x half> %139, half %136, i64 3, !dbg !182
  %conv.i.i.1932 = fpext half %130 to float, !dbg !183
  %add405.1933 = fadd contract float %conv.i.i.1932, 0.000000e+00, !dbg !188
  %conv.i.i.1.1 = fpext half %132 to float, !dbg !183
  %add405.1.1 = fadd contract float %add405.1933, %conv.i.i.1.1, !dbg !188
  %conv.i.i.2.1 = fpext half %134 to float, !dbg !183
  %add405.2.1 = fadd contract float %add405.1.1, %conv.i.i.2.1, !dbg !188
  %conv.i.i.3.1 = fpext half %136 to float, !dbg !183
  %add405.3.1 = fadd contract float %add405.2.1, %conv.i.i.3.1, !dbg !188
  %141 = bitcast float %add405.3.1 to i32, !dbg !189
  %142 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !191
  %143 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %142) #11, !dbg !194
  %xor.i.i806.1 = xor i32 %143, 32, !dbg !195
  %144 = and i32 %143, -64, !dbg !196
  %and.i.i807.1 = add nsw i32 %144, 64, !dbg !196
  %cmp.not.i.i808.1 = icmp slt i32 %xor.i.i806.1, %and.i.i807.1, !dbg !197
  %cond.i.i809.1 = select i1 %cmp.not.i.i808.1, i32 %xor.i.i806.1, i32 %143, !dbg !198
  %shl.i.i810.1 = shl i32 %cond.i.i809.1, 2, !dbg !199
  %145 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i810.1, i32 %141), !dbg !200
  %146 = bitcast i32 %145 to float, !dbg !201
  %add413.1 = fadd contract float %add405.3.1, %146, !dbg !202
  %147 = bitcast float %add413.1 to i32, !dbg !203
  %148 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %149 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %148) #11, !dbg !208
  %xor.i.i811.1 = xor i32 %149, 16, !dbg !209
  %150 = and i32 %149, -64, !dbg !210
  %and.i.i812.1 = add nsw i32 %150, 64, !dbg !210
  %cmp.not.i.i813.1 = icmp slt i32 %xor.i.i811.1, %and.i.i812.1, !dbg !211
  %cond.i.i814.1 = select i1 %cmp.not.i.i813.1, i32 %xor.i.i811.1, i32 %149, !dbg !212
  %shl.i.i815.1 = shl i32 %cond.i.i814.1, 2, !dbg !213
  %151 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i815.1, i32 %147), !dbg !214
  %152 = bitcast i32 %151 to float, !dbg !215
  %add418.1 = fadd contract float %add413.1, %152, !dbg !216
  fence syncscope("warp") release, !dbg !217
  tail call void @llvm.mxc.barrier.warp(), !dbg !220
  fence syncscope("warp") acquire, !dbg !221
  %153 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add438, !dbg !222
  %154 = getelementptr inbounds i8, ptr addrspace(4) %153, i64 %.idx.1, !dbg !222
  %155 = load i64, ptr addrspace(4) %154, align 8, !dbg !223
  %add.ptr447.1.1 = getelementptr inbounds i8, ptr addrspace(4) %154, i64 128, !dbg !222
  %156 = load i64, ptr addrspace(4) %add.ptr447.1.1, align 8, !dbg !223
  %add.ptr447.2.1 = getelementptr inbounds i8, ptr addrspace(4) %154, i64 256, !dbg !222
  %157 = load i64, ptr addrspace(4) %add.ptr447.2.1, align 8, !dbg !223
  %add.ptr447.3.1 = getelementptr inbounds i8, ptr addrspace(4) %154, i64 384, !dbg !222
  %158 = load i64, ptr addrspace(4) %add.ptr447.3.1, align 8, !dbg !223
  %mul312.1 = fmul contract float %denominator.sroa.0.1, %mul.i.i.1, !dbg !245
  %159 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %mul477, !dbg !224
  %add.ptr489.idx.1941 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.1942 = getelementptr inbounds i8, ptr addrspace(3) %159, i32 %add.ptr489.idx.1941, !dbg !224
  %v_column.sroa.130.0.insert.ext1480 = shl i64 %158, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext1325 = shl i64 %157, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift1326 = and i64 %v_column.sroa.98.0.insert.ext1325, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1328 = or disjoint i64 %v_column.sroa.130.0.insert.ext1480, %v_column.sroa.98.0.insert.shift1326, !dbg !225
  %v_column.sroa.66.0.insert.ext1170 = shl i64 %156, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1171 = and i64 %v_column.sroa.66.0.insert.ext1170, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1173 = or disjoint i64 %v_column.sroa.98.0.insert.insert1328, %v_column.sroa.66.0.insert.shift1171, !dbg !225
  %v_column.sroa.0.0.insert.ext1043 = and i64 %155, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1045 = or disjoint i64 %v_column.sroa.66.0.insert.insert1173, %v_column.sroa.0.0.insert.ext1043, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1045, ptr addrspace(3) %add.ptr489.1942, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1694 = lshr i64 %155, 16, !dbg !226
  %add478.1.1 = or disjoint i32 %mul477, 256, !dbg !227
  %160 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.1.1, !dbg !224
  %xor485.1.1 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.1.1 = xor i32 %xor485.1.1, 8, !dbg !224
  %add.ptr489.1.1 = getelementptr inbounds i8, ptr addrspace(3) %160, i32 %add.ptr489.idx.1.1, !dbg !224
  %161 = shl i64 %158, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1485 = and i64 %161, -281474976710656, !dbg !225
  %162 = shl i64 %157, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1331 = and i64 %162, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1333 = or disjoint i64 %v_column.sroa.130.0.insert.ext1485, %v_column.sroa.98.0.insert.shift1331, !dbg !225
  %v_column.sroa.66.0.insert.ext1175 = and i64 %156, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1178 = or disjoint i64 %v_column.sroa.98.0.insert.insert1333, %v_column.sroa.66.0.insert.ext1175, !dbg !225
  %v_column.sroa.0.0.insert.ext1047 = and i64 %v_fetch.sroa.0.2.extract.shift1694, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1049 = or disjoint i64 %v_column.sroa.66.0.insert.insert1178, %v_column.sroa.0.0.insert.ext1047, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1049, ptr addrspace(3) %add.ptr489.1.1, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1715 = lshr i64 %155, 32, !dbg !226
  %add478.2.1 = or disjoint i32 %mul477, 512, !dbg !227
  %163 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.2.1, !dbg !224
  %xor485.2.1 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.2.1 = xor i32 %xor485.2.1, 16, !dbg !224
  %add.ptr489.2.1 = getelementptr inbounds i8, ptr addrspace(3) %163, i32 %add.ptr489.idx.2.1, !dbg !224
  %164 = shl i64 %158, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1490 = and i64 %164, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1335 = and i64 %157, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1338 = or disjoint i64 %v_column.sroa.130.0.insert.ext1490, %v_column.sroa.98.0.insert.ext1335, !dbg !225
  %165 = lshr i64 %156, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1181 = and i64 %165, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1183 = or disjoint i64 %v_column.sroa.98.0.insert.insert1338, %v_column.sroa.66.0.insert.shift1181, !dbg !225
  %v_column.sroa.0.0.insert.ext1051 = and i64 %v_fetch.sroa.0.4.extract.shift1715, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1053 = or disjoint i64 %v_column.sroa.66.0.insert.insert1183, %v_column.sroa.0.0.insert.ext1051, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1053, ptr addrspace(3) %add.ptr489.2.1, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1736 = lshr i64 %155, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift1967 = and i64 %158, -281474976710656, !dbg !225
  %add478.3.1 = or disjoint i32 %mul477, 768, !dbg !227
  %166 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.3.1, !dbg !224
  %xor485.3.1 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.3.1 = xor i32 %xor485.3.1, 24, !dbg !224
  %add.ptr489.3.1 = getelementptr inbounds i8, ptr addrspace(3) %166, i32 %add.ptr489.idx.3.1, !dbg !224
  %167 = lshr i64 %157, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1341 = and i64 %167, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1343 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1967, %v_column.sroa.98.0.insert.shift1341, !dbg !225
  %168 = lshr i64 %156, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1186 = and i64 %168, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1188 = or disjoint i64 %v_column.sroa.98.0.insert.insert1343, %v_column.sroa.66.0.insert.shift1186, !dbg !225
  %v_column.sroa.0.0.insert.insert1057 = or disjoint i64 %v_column.sroa.66.0.insert.insert1188, %v_fetch.sroa.0.6.extract.shift1736, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1057, ptr addrspace(3) %add.ptr489.3.1, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add506.1944 = or disjoint i32 %mul499, %mul505, !dbg !233
  %169 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.1944, !dbg !234
  %add.ptr516.idx.1945 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.1946 = getelementptr inbounds i8, ptr addrspace(3) %169, i32 %add.ptr516.idx.1945, !dbg !234
  %170 = load <4 x half>, ptr addrspace(3) %add.ptr516.1946, align 8, !dbg !235
  %add501.1.1 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.1.1 = or disjoint i32 %add501.1.1, 64, !dbg !233
  %171 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.1.1, !dbg !234
  %xor512.1.1 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.1.1 = xor i32 %xor512.1.1, 8, !dbg !234
  %add.ptr516.1.1 = getelementptr inbounds i8, ptr addrspace(3) %171, i32 %add.ptr516.idx.1.1, !dbg !234
  %172 = load <4 x half>, ptr addrspace(3) %add.ptr516.1.1, align 8, !dbg !235
  %add501.2.1 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.2.1 = or disjoint i32 %add501.2.1, 128, !dbg !233
  %173 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.2.1, !dbg !234
  %xor512.2.1 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.2.1 = xor i32 %xor512.2.1, 16, !dbg !234
  %add.ptr516.2.1 = getelementptr inbounds i8, ptr addrspace(3) %173, i32 %add.ptr516.idx.2.1, !dbg !234
  %174 = load <4 x half>, ptr addrspace(3) %add.ptr516.2.1, align 8, !dbg !235
  %add501.3.1 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.3.1 = or disjoint i32 %add501.3.1, 192, !dbg !233
  %175 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.3.1, !dbg !234
  %xor512.3.1 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.3.1 = xor i32 %xor512.3.1, 24, !dbg !234
  %add.ptr516.3.1 = getelementptr inbounds i8, ptr addrspace(3) %175, i32 %add.ptr516.idx.3.1, !dbg !234
  %176 = load <4 x half>, ptr addrspace(3) %add.ptr516.3.1, align 8, !dbg !235
  %177 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %170, <4 x half> %140, <4 x float> %numerator.sroa.0.12.vec.insert2500), !dbg !236
  %178 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %172, <4 x half> %140, <4 x float> %numerator.sroa.98.28.vec.insert2656), !dbg !236
  %179 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %174, <4 x half> %140, <4 x float> %numerator.sroa.194.44.vec.insert2812), !dbg !236
  %180 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %176, <4 x half> %140, <4 x float> %numerator.sroa.290.60.vec.insert2968), !dbg !236
  %add422.1 = fadd contract float %mul312.1, %add418.1, !dbg !237
  br label %if.end542.1, !dbg !238

if.end542.1:                                      ; preds = %if.then.1, %if.end542
  %numerator.sroa.290.1 = phi <4 x float> [ %numerator.sroa.290.0, %if.end542 ], [ %180, %if.then.1 ], !dbg !239
  %numerator.sroa.194.1 = phi <4 x float> [ %numerator.sroa.194.0, %if.end542 ], [ %179, %if.then.1 ], !dbg !239
  %numerator.sroa.98.1 = phi <4 x float> [ %numerator.sroa.98.0, %if.end542 ], [ %178, %if.then.1 ], !dbg !239
  %numerator.sroa.0.1 = phi <4 x float> [ %numerator.sroa.0.0, %if.end542 ], [ %177, %if.then.1 ], !dbg !239
  %maximum.sroa.0.1.1 = phi float [ %maximum.sroa.0.1, %if.end542 ], [ %123, %if.then.1 ], !dbg !239
  %denominator.sroa.0.1.1 = phi float [ %denominator.sroa.0.1, %if.end542 ], [ %add422.1, %if.then.1 ], !dbg !239
  %181 = or disjoint i64 %15, 2, !dbg !240
  %arrayidx108.2 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %181, !dbg !66
  %182 = load i32, ptr addrspace(1) %arrayidx108.2, align 4, !dbg !66, !tbaa !30
  %mul109.2 = shl nsw i32 %182, 4, !dbg !67
  %cmp110.2 = icmp slt i32 %182, 0, !dbg !68
  %cmp112.not.2 = icmp sgt i32 %mul109.2, %1
  %or.cond.2 = select i1 %cmp110.2, i1 true, i1 %cmp112.not.2, !dbg !69
  br i1 %or.cond.2, label %if.end542.2, label %if.then.2, !dbg !69

if.then.2:                                        ; preds = %if.end542.1
  fence syncscope("warp") release, !dbg !70
  tail call void @llvm.mxc.barrier.warp(), !dbg !73
  fence syncscope("warp") acquire, !dbg !74
  %conv122.2 = zext nneg i32 %mul109.2 to i64
  %.idx.2 = shl nuw nsw i64 %conv122.2, 7
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep864, i64 %.idx.2, !dbg !75
  %.idx872.2 = shl nuw nsw i64 %conv, 17, !dbg !76
  %183 = getelementptr inbounds i8, ptr addrspace(4) %gep.2, i64 %.idx872.2, !dbg !76
  %qk_fetch.sroa.0.0.copyload3268 = load i32, ptr addrspace(4) %183, align 16, !dbg !77, !tbaa !30
  %qk_fetch.sroa.56.0..sroa_idx3286 = getelementptr inbounds i8, ptr addrspace(4) %183, i64 4, !dbg !77
  %qk_fetch.sroa.56.0.copyload3287 = load i32, ptr addrspace(4) %qk_fetch.sroa.56.0..sroa_idx3286, align 4, !dbg !77, !tbaa !30
  %qk_fetch.sroa.92.0..sroa_idx3310 = getelementptr inbounds i8, ptr addrspace(4) %183, i64 8, !dbg !77
  %qk_fetch.sroa.92.0.copyload3311 = load i32, ptr addrspace(4) %qk_fetch.sroa.92.0..sroa_idx3310, align 8, !dbg !77, !tbaa !30
  %qk_fetch.sroa.128.0..sroa_idx3334 = getelementptr inbounds i8, ptr addrspace(4) %183, i64 12, !dbg !77
  %qk_fetch.sroa.128.0.copyload3335 = load i32, ptr addrspace(4) %qk_fetch.sroa.128.0..sroa_idx3334, align 4, !dbg !77, !tbaa !30
  %cond150.2949.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.0.0.copyload3268, i32 %qk_fetch.sroa.92.0.copyload3311, !dbg !78
  %cond150.1.2.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.56.0.copyload3287, i32 %qk_fetch.sroa.128.0.copyload3335, !dbg !78
  %cond150.2.2.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.92.0.copyload3311, i32 %qk_fetch.sroa.0.0.copyload3268, !dbg !78
  %cond150.3.2.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.128.0.copyload3335, i32 %qk_fetch.sroa.56.0.copyload3287, !dbg !78
  store i32 %cond150.2949.sroa.speculated, ptr addrspace(3) %invariant.gep836, align 16, !dbg !79, !tbaa !30
  store i32 %cond150.1.2.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.38.0.invariant.gep836.sroa_idx, align 4, !dbg !79, !tbaa !30
  store i32 %cond150.2.2.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.56.0.invariant.gep836.sroa_idx, align 8, !dbg !79, !tbaa !30
  store i32 %cond150.3.2.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.74.0.invariant.gep836.sroa_idx, align 4, !dbg !79, !tbaa !30
  %gep844.1.2 = getelementptr inbounds i8, ptr addrspace(4) %183, i64 1024, !dbg !76
  %qk_fetch.sroa.0.0.copyload3269 = load i32, ptr addrspace(4) %gep844.1.2, align 16, !dbg !77, !tbaa !30
  %qk_fetch.sroa.56.0.gep844.1.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %183, i64 1028, !dbg !77
  %qk_fetch.sroa.56.0.copyload3288 = load i32, ptr addrspace(4) %qk_fetch.sroa.56.0.gep844.1.2.sroa_idx, align 4, !dbg !77, !tbaa !30
  %qk_fetch.sroa.92.0.gep844.1.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %183, i64 1032, !dbg !77
  %qk_fetch.sroa.92.0.copyload3312 = load i32, ptr addrspace(4) %qk_fetch.sroa.92.0.gep844.1.2.sroa_idx, align 8, !dbg !77, !tbaa !30
  %qk_fetch.sroa.128.0.gep844.1.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %183, i64 1036, !dbg !77
  %qk_fetch.sroa.128.0.copyload3336 = load i32, ptr addrspace(4) %qk_fetch.sroa.128.0.gep844.1.2.sroa_idx, align 4, !dbg !77, !tbaa !30
  %cond150.1884.2.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.92.0.copyload3312, i32 %qk_fetch.sroa.0.0.copyload3269, !dbg !78
  %cond150.1.1.2.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.128.0.copyload3336, i32 %qk_fetch.sroa.56.0.copyload3288, !dbg !78
  %cond150.2.1.2.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.0.0.copyload3269, i32 %qk_fetch.sroa.92.0.copyload3312, !dbg !78
  %cond150.3.1.2.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.56.0.copyload3288, i32 %qk_fetch.sroa.128.0.copyload3336, !dbg !78
  store i32 %cond150.1884.2.sroa.speculated, ptr addrspace(3) %gep837.1, align 16, !dbg !79, !tbaa !30
  store i32 %cond150.1.1.2.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.38.0.gep837.1.sroa_idx, align 4, !dbg !79, !tbaa !30
  store i32 %cond150.2.1.2.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.56.0.gep837.1.sroa_idx, align 8, !dbg !79, !tbaa !30
  store i32 %cond150.3.1.2.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.74.0.gep837.1.sroa_idx, align 4, !dbg !79, !tbaa !30
  fence syncscope("warp") release, !dbg !80
  tail call void @llvm.mxc.barrier.warp(), !dbg !83
  fence syncscope("warp") acquire, !dbg !84
  %k_local.sroa.0.0.copyload.2955 = load <4 x half>, ptr addrspace(3) %add.ptr74, align 8, !dbg !85
  %184 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2955, <4 x half> %6, <4 x float> zeroinitializer), !dbg !86
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr74.1, align 8, !dbg !85
  %185 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %7, <4 x float> %184), !dbg !86
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %add.ptr74.2, align 8, !dbg !85
  %186 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %8, <4 x float> %185), !dbg !86
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %add.ptr74.3, align 8, !dbg !85
  %187 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %9, <4 x float> %186), !dbg !86
  %add230.2 = add nuw nsw i32 %mul109.2, %mul229
  %cmp233.not.2956 = icmp sgt i32 %add230.2, %1, !dbg !87
  %scores.sroa.0.0.vec.extract2087 = extractelement <4 x float> %187, i64 0
  %spec.select3493 = select i1 %cmp233.not.2956, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2087, !dbg !88
  %cmp233.not.1.2.not = icmp slt i32 %add230.2, %1, !dbg !87
  %scores.sroa.0.4.vec.extract2186 = extractelement <4 x float> %187, i64 1, !dbg !88
  %condval.0.1.2 = select i1 %cmp233.not.1.2.not, float %scores.sroa.0.4.vec.extract2186, float 0xFFF0000000000000, !dbg !88
  %add231.2.2 = or disjoint i32 %add230.2, 2, !dbg !89
  %cmp233.not.2.2 = icmp sgt i32 %add231.2.2, %1, !dbg !87
  %scores.sroa.0.8.vec.extract2263 = extractelement <4 x float> %187, i64 2, !dbg !88
  %condval.0.2.2 = select i1 %cmp233.not.2.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2263, !dbg !88
  %add231.3.2 = or disjoint i32 %add230.2, 3, !dbg !89
  %cmp233.not.3.2 = icmp sgt i32 %add231.3.2, %1, !dbg !87
  %scores.sroa.0.12.vec.extract2340 = extractelement <4 x float> %187, i64 3, !dbg !88
  %condval.0.3.2 = select i1 %cmp233.not.3.2, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2340, !dbg !88
  %188 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3493, float 0xFFF0000000000000), !dbg !90
  %189 = tail call contract noundef float @llvm.maxnum.f32(float %188, float %condval.0.1.2), !dbg !90
  %190 = tail call contract noundef float @llvm.maxnum.f32(float %189, float %condval.0.2.2), !dbg !90
  %191 = tail call contract noundef float @llvm.maxnum.f32(float %190, float %condval.0.3.2), !dbg !90
  %192 = bitcast float %191 to i32, !dbg !94
  %193 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !97
  %194 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %193) #11, !dbg !102
  %xor.i.i.2 = xor i32 %194, 32, !dbg !103
  %195 = and i32 %194, -64, !dbg !104
  %and.i.i.2 = add nsw i32 %195, 64, !dbg !104
  %cmp.not.i.i.2 = icmp slt i32 %xor.i.i.2, %and.i.i.2, !dbg !105
  %cond.i.i.2 = select i1 %cmp.not.i.i.2, i32 %xor.i.i.2, i32 %194, !dbg !106
  %shl.i.i.2 = shl i32 %cond.i.i.2, 2, !dbg !107
  %196 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.2, i32 %192), !dbg !108
  %197 = bitcast i32 %196 to float, !dbg !109
  %198 = tail call contract noundef float @llvm.maxnum.f32(float %191, float %197), !dbg !110
  %199 = bitcast float %198 to i32, !dbg !112
  %200 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !114
  %201 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %200) #11, !dbg !117
  %xor.i.i775.2 = xor i32 %201, 16, !dbg !118
  %202 = and i32 %201, -64, !dbg !119
  %and.i.i776.2 = add nsw i32 %202, 64, !dbg !119
  %cmp.not.i.i777.2 = icmp slt i32 %xor.i.i775.2, %and.i.i776.2, !dbg !120
  %cond.i.i778.2 = select i1 %cmp.not.i.i777.2, i32 %xor.i.i775.2, i32 %201, !dbg !121
  %shl.i.i779.2 = shl i32 %cond.i.i778.2, 2, !dbg !122
  %203 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i779.2, i32 %199), !dbg !123
  %204 = bitcast i32 %203 to float, !dbg !124
  %205 = tail call contract noundef float @llvm.maxnum.f32(float %198, float %204), !dbg !125
  %206 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.1, float %205), !dbg !127
  %sub.2 = fsub contract float %maximum.sroa.0.1.1, %206, !dbg !129
  %mul275.2 = fmul contract float %sub.2, 0x3FC7154760000000, !dbg !130
  %cmp.i.i.2 = fcmp contract olt float %mul275.2, -1.260000e+02, !dbg !131
  %cond.i.i780.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i.2 = fadd contract float %mul275.2, %cond.i.i780.2, !dbg !131
  %207 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !131
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %207, !dbg !131
  %numerator.sroa.0.0.vec.extract2391 = extractelement <4 x float> %numerator.sroa.0.1, i64 0, !dbg !241
  %numerator.sroa.0.4.vec.extract2428 = extractelement <4 x float> %numerator.sroa.0.1, i64 1, !dbg !241
  %numerator.sroa.0.8.vec.extract2465 = extractelement <4 x float> %numerator.sroa.0.1, i64 2, !dbg !241
  %numerator.sroa.0.12.vec.extract2502 = extractelement <4 x float> %numerator.sroa.0.1, i64 3, !dbg !241
  %mul292.2967 = fmul contract float %mul.i.i.2, %numerator.sroa.0.0.vec.extract2391, !dbg !134
  %mul295.2968 = fmul contract float %mul.i.i.2, %numerator.sroa.0.4.vec.extract2428, !dbg !242
  %mul298.2969 = fmul contract float %mul.i.i.2, %numerator.sroa.0.8.vec.extract2465, !dbg !243
  %mul301.2970 = fmul contract float %mul.i.i.2, %numerator.sroa.0.12.vec.extract2502, !dbg !244
  %numerator.sroa.0.0.vec.insert2393 = insertelement <4 x float> poison, float %mul292.2967, i64 0, !dbg !135
  %numerator.sroa.0.4.vec.insert2430 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2393, float %mul295.2968, i64 1, !dbg !135
  %numerator.sroa.0.8.vec.insert2467 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2430, float %mul298.2969, i64 2, !dbg !135
  %numerator.sroa.0.12.vec.insert2504 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2467, float %mul301.2970, i64 3, !dbg !135
  %numerator.sroa.98.16.vec.extract2547 = extractelement <4 x float> %numerator.sroa.98.1, i64 0, !dbg !241
  %numerator.sroa.98.20.vec.extract2584 = extractelement <4 x float> %numerator.sroa.98.1, i64 1, !dbg !241
  %numerator.sroa.98.24.vec.extract2621 = extractelement <4 x float> %numerator.sroa.98.1, i64 2, !dbg !241
  %numerator.sroa.98.28.vec.extract2658 = extractelement <4 x float> %numerator.sroa.98.1, i64 3, !dbg !241
  %mul292.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.16.vec.extract2547, !dbg !134
  %mul295.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.20.vec.extract2584, !dbg !242
  %mul298.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.24.vec.extract2621, !dbg !243
  %mul301.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.28.vec.extract2658, !dbg !244
  %numerator.sroa.98.16.vec.insert2549 = insertelement <4 x float> poison, float %mul292.1.2, i64 0, !dbg !135
  %numerator.sroa.98.20.vec.insert2586 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2549, float %mul295.1.2, i64 1, !dbg !135
  %numerator.sroa.98.24.vec.insert2623 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2586, float %mul298.1.2, i64 2, !dbg !135
  %numerator.sroa.98.28.vec.insert2660 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2623, float %mul301.1.2, i64 3, !dbg !135
  %numerator.sroa.194.32.vec.extract2703 = extractelement <4 x float> %numerator.sroa.194.1, i64 0, !dbg !241
  %numerator.sroa.194.36.vec.extract2740 = extractelement <4 x float> %numerator.sroa.194.1, i64 1, !dbg !241
  %numerator.sroa.194.40.vec.extract2777 = extractelement <4 x float> %numerator.sroa.194.1, i64 2, !dbg !241
  %numerator.sroa.194.44.vec.extract2814 = extractelement <4 x float> %numerator.sroa.194.1, i64 3, !dbg !241
  %mul292.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.32.vec.extract2703, !dbg !134
  %mul295.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.36.vec.extract2740, !dbg !242
  %mul298.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.40.vec.extract2777, !dbg !243
  %mul301.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.44.vec.extract2814, !dbg !244
  %numerator.sroa.194.32.vec.insert2705 = insertelement <4 x float> poison, float %mul292.2.2, i64 0, !dbg !135
  %numerator.sroa.194.36.vec.insert2742 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2705, float %mul295.2.2, i64 1, !dbg !135
  %numerator.sroa.194.40.vec.insert2779 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2742, float %mul298.2.2, i64 2, !dbg !135
  %numerator.sroa.194.44.vec.insert2816 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2779, float %mul301.2.2, i64 3, !dbg !135
  %numerator.sroa.290.48.vec.extract2859 = extractelement <4 x float> %numerator.sroa.290.1, i64 0, !dbg !241
  %numerator.sroa.290.52.vec.extract2896 = extractelement <4 x float> %numerator.sroa.290.1, i64 1, !dbg !241
  %numerator.sroa.290.56.vec.extract2933 = extractelement <4 x float> %numerator.sroa.290.1, i64 2, !dbg !241
  %numerator.sroa.290.60.vec.extract2970 = extractelement <4 x float> %numerator.sroa.290.1, i64 3, !dbg !241
  %mul292.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.48.vec.extract2859, !dbg !134
  %mul295.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.52.vec.extract2896, !dbg !242
  %mul298.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.56.vec.extract2933, !dbg !243
  %mul301.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.60.vec.extract2970, !dbg !244
  %numerator.sroa.290.48.vec.insert2861 = insertelement <4 x float> poison, float %mul292.3.2, i64 0, !dbg !135
  %numerator.sroa.290.52.vec.insert2898 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2861, float %mul295.3.2, i64 1, !dbg !135
  %numerator.sroa.290.56.vec.insert2935 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2898, float %mul298.3.2, i64 2, !dbg !135
  %numerator.sroa.290.60.vec.insert2972 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2935, float %mul301.3.2, i64 3, !dbg !135
  %sub325.2 = fsub contract float %spec.select3493, %206, !dbg !136
  %sub329.2 = fsub contract float %condval.0.1.2, %206, !dbg !137
  %sub333.2 = fsub contract float %condval.0.2.2, %206, !dbg !138
  %sub337.2 = fsub contract float %condval.0.3.2, %206, !dbg !139
  %mul342.2 = fmul contract float %sub325.2, 0x3FC7154760000000, !dbg !140
  %mul346.2 = fmul contract float %sub329.2, 0x3FC7154760000000, !dbg !141
  %mul350.2 = fmul contract float %sub333.2, 0x3FC7154760000000, !dbg !142
  %mul354.2 = fmul contract float %sub337.2, 0x3FC7154760000000, !dbg !143
  %add359.2 = fadd contract float %mul342.2, 8.000000e+00, !dbg !144
  %add363.2 = fadd contract float %mul346.2, 8.000000e+00, !dbg !145
  %add367.2 = fadd contract float %mul350.2, 8.000000e+00, !dbg !146
  %add371.2 = fadd contract float %mul354.2, 8.000000e+00, !dbg !147
  %cmp.i.i781.2 = fcmp contract olt float %add359.2, -1.260000e+02, !dbg !148
  %cond.i.i782.2 = select contract i1 %cmp.i.i781.2, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i783.2 = fadd contract float %add359.2, %cond.i.i782.2, !dbg !148
  %208 = tail call contract float @llvm.exp2.f32(float %add.i.i783.2), !dbg !148
  %cond2.i.i784.2 = select contract i1 %cmp.i.i781.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i785.2 = fmul contract float %cond2.i.i784.2, %208, !dbg !148
  %cmp.i.i786.2 = fcmp contract olt float %add363.2, -1.260000e+02, !dbg !150
  %cond.i.i787.2 = select contract i1 %cmp.i.i786.2, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i788.2 = fadd contract float %add363.2, %cond.i.i787.2, !dbg !150
  %209 = tail call contract float @llvm.exp2.f32(float %add.i.i788.2), !dbg !150
  %cond2.i.i789.2 = select contract i1 %cmp.i.i786.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i790.2 = fmul contract float %cond2.i.i789.2, %209, !dbg !150
  %cmp.i.i791.2 = fcmp contract olt float %add367.2, -1.260000e+02, !dbg !152
  %cond.i.i792.2 = select contract i1 %cmp.i.i791.2, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i793.2 = fadd contract float %add367.2, %cond.i.i792.2, !dbg !152
  %210 = tail call contract float @llvm.exp2.f32(float %add.i.i793.2), !dbg !152
  %cond2.i.i794.2 = select contract i1 %cmp.i.i791.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i795.2 = fmul contract float %cond2.i.i794.2, %210, !dbg !152
  %cmp.i.i796.2 = fcmp contract olt float %add371.2, -1.260000e+02, !dbg !154
  %cond.i.i797.2 = select contract i1 %cmp.i.i796.2, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i798.2 = fadd contract float %add371.2, %cond.i.i797.2, !dbg !154
  %211 = tail call contract float @llvm.exp2.f32(float %add.i.i798.2), !dbg !154
  %cond2.i.i799.2 = select contract i1 %cmp.i.i796.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i800.2 = fmul contract float %cond2.i.i799.2, %211, !dbg !154
  %212 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !156, !noalias !164
  %213 = fptrunc float %mul.i.i785.2 to half, !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %212), !dbg !156, !noalias !164
  %214 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !164
  %215 = fptrunc float %mul.i.i790.2 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %214), !dbg !169, !noalias !164
  %216 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !175
  %217 = fptrunc float %mul.i.i795.2 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %216), !dbg !171, !noalias !175
  %218 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !180, !noalias !175
  %219 = fptrunc float %mul.i.i800.2 to half, !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %218), !dbg !180, !noalias !175
  %220 = insertelement <4 x half> poison, half %213, i64 0, !dbg !182
  %221 = insertelement <4 x half> %220, half %215, i64 1, !dbg !182
  %222 = insertelement <4 x half> %221, half %217, i64 2, !dbg !182
  %223 = insertelement <4 x half> %222, half %219, i64 3, !dbg !182
  %conv.i.i.2972 = fpext half %213 to float, !dbg !183
  %add405.2973 = fadd contract float %conv.i.i.2972, 0.000000e+00, !dbg !188
  %conv.i.i.1.2 = fpext half %215 to float, !dbg !183
  %add405.1.2 = fadd contract float %add405.2973, %conv.i.i.1.2, !dbg !188
  %conv.i.i.2.2 = fpext half %217 to float, !dbg !183
  %add405.2.2 = fadd contract float %add405.1.2, %conv.i.i.2.2, !dbg !188
  %conv.i.i.3.2 = fpext half %219 to float, !dbg !183
  %add405.3.2 = fadd contract float %add405.2.2, %conv.i.i.3.2, !dbg !188
  %224 = bitcast float %add405.3.2 to i32, !dbg !189
  %225 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !191
  %226 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %225) #11, !dbg !194
  %xor.i.i806.2 = xor i32 %226, 32, !dbg !195
  %227 = and i32 %226, -64, !dbg !196
  %and.i.i807.2 = add nsw i32 %227, 64, !dbg !196
  %cmp.not.i.i808.2 = icmp slt i32 %xor.i.i806.2, %and.i.i807.2, !dbg !197
  %cond.i.i809.2 = select i1 %cmp.not.i.i808.2, i32 %xor.i.i806.2, i32 %226, !dbg !198
  %shl.i.i810.2 = shl i32 %cond.i.i809.2, 2, !dbg !199
  %228 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i810.2, i32 %224), !dbg !200
  %229 = bitcast i32 %228 to float, !dbg !201
  %add413.2 = fadd contract float %add405.3.2, %229, !dbg !202
  %230 = bitcast float %add413.2 to i32, !dbg !203
  %231 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %232 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %231) #11, !dbg !208
  %xor.i.i811.2 = xor i32 %232, 16, !dbg !209
  %233 = and i32 %232, -64, !dbg !210
  %and.i.i812.2 = add nsw i32 %233, 64, !dbg !210
  %cmp.not.i.i813.2 = icmp slt i32 %xor.i.i811.2, %and.i.i812.2, !dbg !211
  %cond.i.i814.2 = select i1 %cmp.not.i.i813.2, i32 %xor.i.i811.2, i32 %232, !dbg !212
  %shl.i.i815.2 = shl i32 %cond.i.i814.2, 2, !dbg !213
  %234 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i815.2, i32 %230), !dbg !214
  %235 = bitcast i32 %234 to float, !dbg !215
  %add418.2 = fadd contract float %add413.2, %235, !dbg !216
  fence syncscope("warp") release, !dbg !217
  tail call void @llvm.mxc.barrier.warp(), !dbg !220
  fence syncscope("warp") acquire, !dbg !221
  %236 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add438, !dbg !222
  %237 = getelementptr inbounds i8, ptr addrspace(4) %236, i64 %.idx.2, !dbg !222
  %238 = load i64, ptr addrspace(4) %237, align 8, !dbg !223
  %add.ptr447.1.2 = getelementptr inbounds i8, ptr addrspace(4) %237, i64 128, !dbg !222
  %239 = load i64, ptr addrspace(4) %add.ptr447.1.2, align 8, !dbg !223
  %add.ptr447.2.2 = getelementptr inbounds i8, ptr addrspace(4) %237, i64 256, !dbg !222
  %240 = load i64, ptr addrspace(4) %add.ptr447.2.2, align 8, !dbg !223
  %add.ptr447.3.2 = getelementptr inbounds i8, ptr addrspace(4) %237, i64 384, !dbg !222
  %241 = load i64, ptr addrspace(4) %add.ptr447.3.2, align 8, !dbg !223
  %mul312.2 = fmul contract float %denominator.sroa.0.1.1, %mul.i.i.2, !dbg !245
  %242 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %mul477, !dbg !224
  %add.ptr489.idx.2981 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.2982 = getelementptr inbounds i8, ptr addrspace(3) %242, i32 %add.ptr489.idx.2981, !dbg !224
  %v_column.sroa.130.0.insert.ext1500 = shl i64 %241, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext1345 = shl i64 %240, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift1346 = and i64 %v_column.sroa.98.0.insert.ext1345, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1348 = or disjoint i64 %v_column.sroa.130.0.insert.ext1500, %v_column.sroa.98.0.insert.shift1346, !dbg !225
  %v_column.sroa.66.0.insert.ext1190 = shl i64 %239, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1191 = and i64 %v_column.sroa.66.0.insert.ext1190, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1193 = or disjoint i64 %v_column.sroa.98.0.insert.insert1348, %v_column.sroa.66.0.insert.shift1191, !dbg !225
  %v_column.sroa.0.0.insert.ext1059 = and i64 %238, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1061 = or disjoint i64 %v_column.sroa.66.0.insert.insert1193, %v_column.sroa.0.0.insert.ext1059, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1061, ptr addrspace(3) %add.ptr489.2982, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1697 = lshr i64 %238, 16, !dbg !226
  %add478.1.2 = or disjoint i32 %mul477, 256, !dbg !227
  %243 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.1.2, !dbg !224
  %xor485.1.2 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.1.2 = xor i32 %xor485.1.2, 8, !dbg !224
  %add.ptr489.1.2 = getelementptr inbounds i8, ptr addrspace(3) %243, i32 %add.ptr489.idx.1.2, !dbg !224
  %244 = shl i64 %241, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1505 = and i64 %244, -281474976710656, !dbg !225
  %245 = shl i64 %240, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1351 = and i64 %245, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1353 = or disjoint i64 %v_column.sroa.130.0.insert.ext1505, %v_column.sroa.98.0.insert.shift1351, !dbg !225
  %v_column.sroa.66.0.insert.ext1195 = and i64 %239, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1198 = or disjoint i64 %v_column.sroa.98.0.insert.insert1353, %v_column.sroa.66.0.insert.ext1195, !dbg !225
  %v_column.sroa.0.0.insert.ext1063 = and i64 %v_fetch.sroa.0.2.extract.shift1697, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1065 = or disjoint i64 %v_column.sroa.66.0.insert.insert1198, %v_column.sroa.0.0.insert.ext1063, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1065, ptr addrspace(3) %add.ptr489.1.2, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1718 = lshr i64 %238, 32, !dbg !226
  %add478.2.2 = or disjoint i32 %mul477, 512, !dbg !227
  %246 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.2.2, !dbg !224
  %xor485.2.2 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.2.2 = xor i32 %xor485.2.2, 16, !dbg !224
  %add.ptr489.2.2 = getelementptr inbounds i8, ptr addrspace(3) %246, i32 %add.ptr489.idx.2.2, !dbg !224
  %247 = shl i64 %241, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1510 = and i64 %247, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1355 = and i64 %240, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1358 = or disjoint i64 %v_column.sroa.130.0.insert.ext1510, %v_column.sroa.98.0.insert.ext1355, !dbg !225
  %248 = lshr i64 %239, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1201 = and i64 %248, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1203 = or disjoint i64 %v_column.sroa.98.0.insert.insert1358, %v_column.sroa.66.0.insert.shift1201, !dbg !225
  %v_column.sroa.0.0.insert.ext1067 = and i64 %v_fetch.sroa.0.4.extract.shift1718, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1069 = or disjoint i64 %v_column.sroa.66.0.insert.insert1203, %v_column.sroa.0.0.insert.ext1067, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1069, ptr addrspace(3) %add.ptr489.2.2, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1739 = lshr i64 %238, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift1970 = and i64 %241, -281474976710656, !dbg !225
  %add478.3.2 = or disjoint i32 %mul477, 768, !dbg !227
  %249 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.3.2, !dbg !224
  %xor485.3.2 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.3.2 = xor i32 %xor485.3.2, 24, !dbg !224
  %add.ptr489.3.2 = getelementptr inbounds i8, ptr addrspace(3) %249, i32 %add.ptr489.idx.3.2, !dbg !224
  %250 = lshr i64 %240, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1361 = and i64 %250, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1363 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1970, %v_column.sroa.98.0.insert.shift1361, !dbg !225
  %251 = lshr i64 %239, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1206 = and i64 %251, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1208 = or disjoint i64 %v_column.sroa.98.0.insert.insert1363, %v_column.sroa.66.0.insert.shift1206, !dbg !225
  %v_column.sroa.0.0.insert.insert1073 = or disjoint i64 %v_column.sroa.66.0.insert.insert1208, %v_fetch.sroa.0.6.extract.shift1739, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1073, ptr addrspace(3) %add.ptr489.3.2, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add506.2984 = or disjoint i32 %mul499, %mul505, !dbg !233
  %252 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.2984, !dbg !234
  %add.ptr516.idx.2985 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.2986 = getelementptr inbounds i8, ptr addrspace(3) %252, i32 %add.ptr516.idx.2985, !dbg !234
  %253 = load <4 x half>, ptr addrspace(3) %add.ptr516.2986, align 8, !dbg !235
  %add501.1.2 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.1.2 = or disjoint i32 %add501.1.2, 64, !dbg !233
  %254 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.1.2, !dbg !234
  %xor512.1.2 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.1.2 = xor i32 %xor512.1.2, 8, !dbg !234
  %add.ptr516.1.2 = getelementptr inbounds i8, ptr addrspace(3) %254, i32 %add.ptr516.idx.1.2, !dbg !234
  %255 = load <4 x half>, ptr addrspace(3) %add.ptr516.1.2, align 8, !dbg !235
  %add501.2.2 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.2.2 = or disjoint i32 %add501.2.2, 128, !dbg !233
  %256 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.2.2, !dbg !234
  %xor512.2.2 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.2.2 = xor i32 %xor512.2.2, 16, !dbg !234
  %add.ptr516.2.2 = getelementptr inbounds i8, ptr addrspace(3) %256, i32 %add.ptr516.idx.2.2, !dbg !234
  %257 = load <4 x half>, ptr addrspace(3) %add.ptr516.2.2, align 8, !dbg !235
  %add501.3.2 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.3.2 = or disjoint i32 %add501.3.2, 192, !dbg !233
  %258 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.3.2, !dbg !234
  %xor512.3.2 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.3.2 = xor i32 %xor512.3.2, 24, !dbg !234
  %add.ptr516.3.2 = getelementptr inbounds i8, ptr addrspace(3) %258, i32 %add.ptr516.idx.3.2, !dbg !234
  %259 = load <4 x half>, ptr addrspace(3) %add.ptr516.3.2, align 8, !dbg !235
  %260 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %253, <4 x half> %223, <4 x float> %numerator.sroa.0.12.vec.insert2504), !dbg !236
  %261 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %255, <4 x half> %223, <4 x float> %numerator.sroa.98.28.vec.insert2660), !dbg !236
  %262 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %257, <4 x half> %223, <4 x float> %numerator.sroa.194.44.vec.insert2816), !dbg !236
  %263 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %259, <4 x half> %223, <4 x float> %numerator.sroa.290.60.vec.insert2972), !dbg !236
  %add422.2 = fadd contract float %mul312.2, %add418.2, !dbg !237
  br label %if.end542.2, !dbg !238

if.end542.2:                                      ; preds = %if.then.2, %if.end542.1
  %numerator.sroa.290.2 = phi <4 x float> [ %numerator.sroa.290.1, %if.end542.1 ], [ %263, %if.then.2 ], !dbg !239
  %numerator.sroa.194.2 = phi <4 x float> [ %numerator.sroa.194.1, %if.end542.1 ], [ %262, %if.then.2 ], !dbg !239
  %numerator.sroa.98.2 = phi <4 x float> [ %numerator.sroa.98.1, %if.end542.1 ], [ %261, %if.then.2 ], !dbg !239
  %numerator.sroa.0.2 = phi <4 x float> [ %numerator.sroa.0.1, %if.end542.1 ], [ %260, %if.then.2 ], !dbg !239
  %maximum.sroa.0.1.2 = phi float [ %maximum.sroa.0.1.1, %if.end542.1 ], [ %206, %if.then.2 ], !dbg !239
  %denominator.sroa.0.1.2 = phi float [ %denominator.sroa.0.1.1, %if.end542.1 ], [ %add422.2, %if.then.2 ], !dbg !239
  %264 = or disjoint i64 %15, 3, !dbg !240
  %arrayidx108.3 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %264, !dbg !66
  %265 = load i32, ptr addrspace(1) %arrayidx108.3, align 4, !dbg !66, !tbaa !30
  %mul109.3 = shl nsw i32 %265, 4, !dbg !67
  %cmp110.3 = icmp slt i32 %265, 0, !dbg !68
  %cmp112.not.3 = icmp sgt i32 %mul109.3, %1
  %or.cond.3 = select i1 %cmp110.3, i1 true, i1 %cmp112.not.3, !dbg !69
  br i1 %or.cond.3, label %if.end542.3, label %if.then.3, !dbg !69

if.then.3:                                        ; preds = %if.end542.2
  fence syncscope("warp") release, !dbg !70
  tail call void @llvm.mxc.barrier.warp(), !dbg !73
  fence syncscope("warp") acquire, !dbg !74
  %conv122.3 = zext nneg i32 %mul109.3 to i64
  %.idx.3 = shl nuw nsw i64 %conv122.3, 7
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep864, i64 %.idx.3, !dbg !75
  %.idx872.3 = shl nuw nsw i64 %conv, 17, !dbg !76
  %266 = getelementptr inbounds i8, ptr addrspace(4) %gep.3, i64 %.idx872.3, !dbg !76
  %qk_fetch.sroa.0.0.copyload3270 = load i32, ptr addrspace(4) %266, align 16, !dbg !77, !tbaa !30
  %qk_fetch.sroa.56.0..sroa_idx3289 = getelementptr inbounds i8, ptr addrspace(4) %266, i64 4, !dbg !77
  %qk_fetch.sroa.56.0.copyload3290 = load i32, ptr addrspace(4) %qk_fetch.sroa.56.0..sroa_idx3289, align 4, !dbg !77, !tbaa !30
  %qk_fetch.sroa.92.0..sroa_idx3313 = getelementptr inbounds i8, ptr addrspace(4) %266, i64 8, !dbg !77
  %qk_fetch.sroa.92.0.copyload3314 = load i32, ptr addrspace(4) %qk_fetch.sroa.92.0..sroa_idx3313, align 8, !dbg !77, !tbaa !30
  %qk_fetch.sroa.128.0..sroa_idx3337 = getelementptr inbounds i8, ptr addrspace(4) %266, i64 12, !dbg !77
  %qk_fetch.sroa.128.0.copyload3338 = load i32, ptr addrspace(4) %qk_fetch.sroa.128.0..sroa_idx3337, align 4, !dbg !77, !tbaa !30
  %cond150.3989.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.0.0.copyload3270, i32 %qk_fetch.sroa.92.0.copyload3314, !dbg !78
  %cond150.1.3.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.56.0.copyload3290, i32 %qk_fetch.sroa.128.0.copyload3338, !dbg !78
  %cond150.2.3.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.92.0.copyload3314, i32 %qk_fetch.sroa.0.0.copyload3270, !dbg !78
  %cond150.3.3.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.128.0.copyload3338, i32 %qk_fetch.sroa.56.0.copyload3290, !dbg !78
  store i32 %cond150.3989.sroa.speculated, ptr addrspace(3) %invariant.gep836, align 16, !dbg !79, !tbaa !30
  store i32 %cond150.1.3.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.38.0.invariant.gep836.sroa_idx, align 4, !dbg !79, !tbaa !30
  store i32 %cond150.2.3.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.56.0.invariant.gep836.sroa_idx, align 8, !dbg !79, !tbaa !30
  store i32 %cond150.3.3.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.74.0.invariant.gep836.sroa_idx, align 4, !dbg !79, !tbaa !30
  %gep844.1.3 = getelementptr inbounds i8, ptr addrspace(4) %266, i64 1024, !dbg !76
  %qk_fetch.sroa.0.0.copyload3271 = load i32, ptr addrspace(4) %gep844.1.3, align 16, !dbg !77, !tbaa !30
  %qk_fetch.sroa.56.0.gep844.1.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %266, i64 1028, !dbg !77
  %qk_fetch.sroa.56.0.copyload3291 = load i32, ptr addrspace(4) %qk_fetch.sroa.56.0.gep844.1.3.sroa_idx, align 4, !dbg !77, !tbaa !30
  %qk_fetch.sroa.92.0.gep844.1.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %266, i64 1032, !dbg !77
  %qk_fetch.sroa.92.0.copyload3315 = load i32, ptr addrspace(4) %qk_fetch.sroa.92.0.gep844.1.3.sroa_idx, align 8, !dbg !77, !tbaa !30
  %qk_fetch.sroa.128.0.gep844.1.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %266, i64 1036, !dbg !77
  %qk_fetch.sroa.128.0.copyload3339 = load i32, ptr addrspace(4) %qk_fetch.sroa.128.0.gep844.1.3.sroa_idx, align 4, !dbg !77, !tbaa !30
  %cond150.1884.3.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.92.0.copyload3315, i32 %qk_fetch.sroa.0.0.copyload3271, !dbg !78
  %cond150.1.1.3.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.128.0.copyload3339, i32 %qk_fetch.sroa.56.0.copyload3291, !dbg !78
  %cond150.2.1.3.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.0.0.copyload3271, i32 %qk_fetch.sroa.92.0.copyload3315, !dbg !78
  %cond150.3.1.3.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.56.0.copyload3291, i32 %qk_fetch.sroa.128.0.copyload3339, !dbg !78
  store i32 %cond150.1884.3.sroa.speculated, ptr addrspace(3) %gep837.1, align 16, !dbg !79, !tbaa !30
  store i32 %cond150.1.1.3.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.38.0.gep837.1.sroa_idx, align 4, !dbg !79, !tbaa !30
  store i32 %cond150.2.1.3.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.56.0.gep837.1.sroa_idx, align 8, !dbg !79, !tbaa !30
  store i32 %cond150.3.1.3.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.74.0.gep837.1.sroa_idx, align 4, !dbg !79, !tbaa !30
  fence syncscope("warp") release, !dbg !80
  tail call void @llvm.mxc.barrier.warp(), !dbg !83
  fence syncscope("warp") acquire, !dbg !84
  %k_local.sroa.0.0.copyload.3995 = load <4 x half>, ptr addrspace(3) %add.ptr74, align 8, !dbg !85
  %267 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3995, <4 x half> %6, <4 x float> zeroinitializer), !dbg !86
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr74.1, align 8, !dbg !85
  %268 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %7, <4 x float> %267), !dbg !86
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %add.ptr74.2, align 8, !dbg !85
  %269 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %8, <4 x float> %268), !dbg !86
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %add.ptr74.3, align 8, !dbg !85
  %270 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %9, <4 x float> %269), !dbg !86
  %add230.3 = add nuw nsw i32 %mul109.3, %mul229
  %cmp233.not.3996 = icmp sgt i32 %add230.3, %1, !dbg !87
  %scores.sroa.0.0.vec.extract2097 = extractelement <4 x float> %270, i64 0
  %spec.select3494 = select i1 %cmp233.not.3996, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2097, !dbg !88
  %cmp233.not.1.3.not = icmp slt i32 %add230.3, %1, !dbg !87
  %scores.sroa.0.4.vec.extract2192 = extractelement <4 x float> %270, i64 1, !dbg !88
  %condval.0.1.3 = select i1 %cmp233.not.1.3.not, float %scores.sroa.0.4.vec.extract2192, float 0xFFF0000000000000, !dbg !88
  %add231.2.3 = or disjoint i32 %add230.3, 2, !dbg !89
  %cmp233.not.2.3 = icmp sgt i32 %add231.2.3, %1, !dbg !87
  %scores.sroa.0.8.vec.extract2269 = extractelement <4 x float> %270, i64 2, !dbg !88
  %condval.0.2.3 = select i1 %cmp233.not.2.3, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2269, !dbg !88
  %add231.3.3 = or disjoint i32 %add230.3, 3, !dbg !89
  %cmp233.not.3.3 = icmp sgt i32 %add231.3.3, %1, !dbg !87
  %scores.sroa.0.12.vec.extract2346 = extractelement <4 x float> %270, i64 3, !dbg !88
  %condval.0.3.3 = select i1 %cmp233.not.3.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2346, !dbg !88
  %271 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3494, float 0xFFF0000000000000), !dbg !90
  %272 = tail call contract noundef float @llvm.maxnum.f32(float %271, float %condval.0.1.3), !dbg !90
  %273 = tail call contract noundef float @llvm.maxnum.f32(float %272, float %condval.0.2.3), !dbg !90
  %274 = tail call contract noundef float @llvm.maxnum.f32(float %273, float %condval.0.3.3), !dbg !90
  %275 = bitcast float %274 to i32, !dbg !94
  %276 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !97
  %277 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %276) #11, !dbg !102
  %xor.i.i.3 = xor i32 %277, 32, !dbg !103
  %278 = and i32 %277, -64, !dbg !104
  %and.i.i.3 = add nsw i32 %278, 64, !dbg !104
  %cmp.not.i.i.3 = icmp slt i32 %xor.i.i.3, %and.i.i.3, !dbg !105
  %cond.i.i.3 = select i1 %cmp.not.i.i.3, i32 %xor.i.i.3, i32 %277, !dbg !106
  %shl.i.i.3 = shl i32 %cond.i.i.3, 2, !dbg !107
  %279 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.3, i32 %275), !dbg !108
  %280 = bitcast i32 %279 to float, !dbg !109
  %281 = tail call contract noundef float @llvm.maxnum.f32(float %274, float %280), !dbg !110
  %282 = bitcast float %281 to i32, !dbg !112
  %283 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !114
  %284 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %283) #11, !dbg !117
  %xor.i.i775.3 = xor i32 %284, 16, !dbg !118
  %285 = and i32 %284, -64, !dbg !119
  %and.i.i776.3 = add nsw i32 %285, 64, !dbg !119
  %cmp.not.i.i777.3 = icmp slt i32 %xor.i.i775.3, %and.i.i776.3, !dbg !120
  %cond.i.i778.3 = select i1 %cmp.not.i.i777.3, i32 %xor.i.i775.3, i32 %284, !dbg !121
  %shl.i.i779.3 = shl i32 %cond.i.i778.3, 2, !dbg !122
  %286 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i779.3, i32 %282), !dbg !123
  %287 = bitcast i32 %286 to float, !dbg !124
  %288 = tail call contract noundef float @llvm.maxnum.f32(float %281, float %287), !dbg !125
  %289 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.2, float %288), !dbg !127
  %sub.3 = fsub contract float %maximum.sroa.0.1.2, %289, !dbg !129
  %mul275.3 = fmul contract float %sub.3, 0x3FC7154760000000, !dbg !130
  %cmp.i.i.3 = fcmp contract olt float %mul275.3, -1.260000e+02, !dbg !131
  %cond.i.i780.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i.3 = fadd contract float %mul275.3, %cond.i.i780.3, !dbg !131
  %290 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !131
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %290, !dbg !131
  %numerator.sroa.0.0.vec.extract2395 = extractelement <4 x float> %numerator.sroa.0.2, i64 0, !dbg !241
  %numerator.sroa.0.4.vec.extract2432 = extractelement <4 x float> %numerator.sroa.0.2, i64 1, !dbg !241
  %numerator.sroa.0.8.vec.extract2469 = extractelement <4 x float> %numerator.sroa.0.2, i64 2, !dbg !241
  %numerator.sroa.0.12.vec.extract2506 = extractelement <4 x float> %numerator.sroa.0.2, i64 3, !dbg !241
  %mul292.31007 = fmul contract float %mul.i.i.3, %numerator.sroa.0.0.vec.extract2395, !dbg !134
  %mul295.31008 = fmul contract float %mul.i.i.3, %numerator.sroa.0.4.vec.extract2432, !dbg !242
  %mul298.31009 = fmul contract float %mul.i.i.3, %numerator.sroa.0.8.vec.extract2469, !dbg !243
  %mul301.31010 = fmul contract float %mul.i.i.3, %numerator.sroa.0.12.vec.extract2506, !dbg !244
  %numerator.sroa.0.0.vec.insert2397 = insertelement <4 x float> poison, float %mul292.31007, i64 0, !dbg !135
  %numerator.sroa.0.4.vec.insert2434 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2397, float %mul295.31008, i64 1, !dbg !135
  %numerator.sroa.0.8.vec.insert2471 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2434, float %mul298.31009, i64 2, !dbg !135
  %numerator.sroa.0.12.vec.insert2508 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2471, float %mul301.31010, i64 3, !dbg !135
  %numerator.sroa.98.16.vec.extract2551 = extractelement <4 x float> %numerator.sroa.98.2, i64 0, !dbg !241
  %numerator.sroa.98.20.vec.extract2588 = extractelement <4 x float> %numerator.sroa.98.2, i64 1, !dbg !241
  %numerator.sroa.98.24.vec.extract2625 = extractelement <4 x float> %numerator.sroa.98.2, i64 2, !dbg !241
  %numerator.sroa.98.28.vec.extract2662 = extractelement <4 x float> %numerator.sroa.98.2, i64 3, !dbg !241
  %mul292.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.16.vec.extract2551, !dbg !134
  %mul295.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.20.vec.extract2588, !dbg !242
  %mul298.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.24.vec.extract2625, !dbg !243
  %mul301.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.28.vec.extract2662, !dbg !244
  %numerator.sroa.98.16.vec.insert2553 = insertelement <4 x float> poison, float %mul292.1.3, i64 0, !dbg !135
  %numerator.sroa.98.20.vec.insert2590 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2553, float %mul295.1.3, i64 1, !dbg !135
  %numerator.sroa.98.24.vec.insert2627 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2590, float %mul298.1.3, i64 2, !dbg !135
  %numerator.sroa.98.28.vec.insert2664 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2627, float %mul301.1.3, i64 3, !dbg !135
  %numerator.sroa.194.32.vec.extract2707 = extractelement <4 x float> %numerator.sroa.194.2, i64 0, !dbg !241
  %numerator.sroa.194.36.vec.extract2744 = extractelement <4 x float> %numerator.sroa.194.2, i64 1, !dbg !241
  %numerator.sroa.194.40.vec.extract2781 = extractelement <4 x float> %numerator.sroa.194.2, i64 2, !dbg !241
  %numerator.sroa.194.44.vec.extract2818 = extractelement <4 x float> %numerator.sroa.194.2, i64 3, !dbg !241
  %mul292.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.32.vec.extract2707, !dbg !134
  %mul295.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.36.vec.extract2744, !dbg !242
  %mul298.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.40.vec.extract2781, !dbg !243
  %mul301.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.44.vec.extract2818, !dbg !244
  %numerator.sroa.194.32.vec.insert2709 = insertelement <4 x float> poison, float %mul292.2.3, i64 0, !dbg !135
  %numerator.sroa.194.36.vec.insert2746 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2709, float %mul295.2.3, i64 1, !dbg !135
  %numerator.sroa.194.40.vec.insert2783 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2746, float %mul298.2.3, i64 2, !dbg !135
  %numerator.sroa.194.44.vec.insert2820 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2783, float %mul301.2.3, i64 3, !dbg !135
  %numerator.sroa.290.48.vec.extract2863 = extractelement <4 x float> %numerator.sroa.290.2, i64 0, !dbg !241
  %numerator.sroa.290.52.vec.extract2900 = extractelement <4 x float> %numerator.sroa.290.2, i64 1, !dbg !241
  %numerator.sroa.290.56.vec.extract2937 = extractelement <4 x float> %numerator.sroa.290.2, i64 2, !dbg !241
  %numerator.sroa.290.60.vec.extract2974 = extractelement <4 x float> %numerator.sroa.290.2, i64 3, !dbg !241
  %mul292.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.48.vec.extract2863, !dbg !134
  %mul295.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.52.vec.extract2900, !dbg !242
  %mul298.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.56.vec.extract2937, !dbg !243
  %mul301.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.60.vec.extract2974, !dbg !244
  %numerator.sroa.290.48.vec.insert2865 = insertelement <4 x float> poison, float %mul292.3.3, i64 0, !dbg !135
  %numerator.sroa.290.52.vec.insert2902 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2865, float %mul295.3.3, i64 1, !dbg !135
  %numerator.sroa.290.56.vec.insert2939 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2902, float %mul298.3.3, i64 2, !dbg !135
  %numerator.sroa.290.60.vec.insert2976 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2939, float %mul301.3.3, i64 3, !dbg !135
  %sub325.3 = fsub contract float %spec.select3494, %289, !dbg !136
  %sub329.3 = fsub contract float %condval.0.1.3, %289, !dbg !137
  %sub333.3 = fsub contract float %condval.0.2.3, %289, !dbg !138
  %sub337.3 = fsub contract float %condval.0.3.3, %289, !dbg !139
  %mul342.3 = fmul contract float %sub325.3, 0x3FC7154760000000, !dbg !140
  %mul346.3 = fmul contract float %sub329.3, 0x3FC7154760000000, !dbg !141
  %mul350.3 = fmul contract float %sub333.3, 0x3FC7154760000000, !dbg !142
  %mul354.3 = fmul contract float %sub337.3, 0x3FC7154760000000, !dbg !143
  %add359.3 = fadd contract float %mul342.3, 8.000000e+00, !dbg !144
  %add363.3 = fadd contract float %mul346.3, 8.000000e+00, !dbg !145
  %add367.3 = fadd contract float %mul350.3, 8.000000e+00, !dbg !146
  %add371.3 = fadd contract float %mul354.3, 8.000000e+00, !dbg !147
  %cmp.i.i781.3 = fcmp contract olt float %add359.3, -1.260000e+02, !dbg !148
  %cond.i.i782.3 = select contract i1 %cmp.i.i781.3, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i783.3 = fadd contract float %add359.3, %cond.i.i782.3, !dbg !148
  %291 = tail call contract float @llvm.exp2.f32(float %add.i.i783.3), !dbg !148
  %cond2.i.i784.3 = select contract i1 %cmp.i.i781.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i785.3 = fmul contract float %cond2.i.i784.3, %291, !dbg !148
  %cmp.i.i786.3 = fcmp contract olt float %add363.3, -1.260000e+02, !dbg !150
  %cond.i.i787.3 = select contract i1 %cmp.i.i786.3, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i788.3 = fadd contract float %add363.3, %cond.i.i787.3, !dbg !150
  %292 = tail call contract float @llvm.exp2.f32(float %add.i.i788.3), !dbg !150
  %cond2.i.i789.3 = select contract i1 %cmp.i.i786.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i790.3 = fmul contract float %cond2.i.i789.3, %292, !dbg !150
  %cmp.i.i791.3 = fcmp contract olt float %add367.3, -1.260000e+02, !dbg !152
  %cond.i.i792.3 = select contract i1 %cmp.i.i791.3, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i793.3 = fadd contract float %add367.3, %cond.i.i792.3, !dbg !152
  %293 = tail call contract float @llvm.exp2.f32(float %add.i.i793.3), !dbg !152
  %cond2.i.i794.3 = select contract i1 %cmp.i.i791.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i795.3 = fmul contract float %cond2.i.i794.3, %293, !dbg !152
  %cmp.i.i796.3 = fcmp contract olt float %add371.3, -1.260000e+02, !dbg !154
  %cond.i.i797.3 = select contract i1 %cmp.i.i796.3, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i798.3 = fadd contract float %add371.3, %cond.i.i797.3, !dbg !154
  %294 = tail call contract float @llvm.exp2.f32(float %add.i.i798.3), !dbg !154
  %cond2.i.i799.3 = select contract i1 %cmp.i.i796.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i800.3 = fmul contract float %cond2.i.i799.3, %294, !dbg !154
  %295 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !156, !noalias !164
  %296 = fptrunc float %mul.i.i785.3 to half, !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %295), !dbg !156, !noalias !164
  %297 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !164
  %298 = fptrunc float %mul.i.i790.3 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %297), !dbg !169, !noalias !164
  %299 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !175
  %300 = fptrunc float %mul.i.i795.3 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %299), !dbg !171, !noalias !175
  %301 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !180, !noalias !175
  %302 = fptrunc float %mul.i.i800.3 to half, !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %301), !dbg !180, !noalias !175
  %303 = insertelement <4 x half> poison, half %296, i64 0, !dbg !182
  %304 = insertelement <4 x half> %303, half %298, i64 1, !dbg !182
  %305 = insertelement <4 x half> %304, half %300, i64 2, !dbg !182
  %306 = insertelement <4 x half> %305, half %302, i64 3, !dbg !182
  %conv.i.i.31012 = fpext half %296 to float, !dbg !183
  %add405.31013 = fadd contract float %conv.i.i.31012, 0.000000e+00, !dbg !188
  %conv.i.i.1.3 = fpext half %298 to float, !dbg !183
  %add405.1.3 = fadd contract float %add405.31013, %conv.i.i.1.3, !dbg !188
  %conv.i.i.2.3 = fpext half %300 to float, !dbg !183
  %add405.2.3 = fadd contract float %add405.1.3, %conv.i.i.2.3, !dbg !188
  %conv.i.i.3.3 = fpext half %302 to float, !dbg !183
  %add405.3.3 = fadd contract float %add405.2.3, %conv.i.i.3.3, !dbg !188
  %307 = bitcast float %add405.3.3 to i32, !dbg !189
  %308 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !191
  %309 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %308) #11, !dbg !194
  %xor.i.i806.3 = xor i32 %309, 32, !dbg !195
  %310 = and i32 %309, -64, !dbg !196
  %and.i.i807.3 = add nsw i32 %310, 64, !dbg !196
  %cmp.not.i.i808.3 = icmp slt i32 %xor.i.i806.3, %and.i.i807.3, !dbg !197
  %cond.i.i809.3 = select i1 %cmp.not.i.i808.3, i32 %xor.i.i806.3, i32 %309, !dbg !198
  %shl.i.i810.3 = shl i32 %cond.i.i809.3, 2, !dbg !199
  %311 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i810.3, i32 %307), !dbg !200
  %312 = bitcast i32 %311 to float, !dbg !201
  %add413.3 = fadd contract float %add405.3.3, %312, !dbg !202
  %313 = bitcast float %add413.3 to i32, !dbg !203
  %314 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %315 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %314) #11, !dbg !208
  %xor.i.i811.3 = xor i32 %315, 16, !dbg !209
  %316 = and i32 %315, -64, !dbg !210
  %and.i.i812.3 = add nsw i32 %316, 64, !dbg !210
  %cmp.not.i.i813.3 = icmp slt i32 %xor.i.i811.3, %and.i.i812.3, !dbg !211
  %cond.i.i814.3 = select i1 %cmp.not.i.i813.3, i32 %xor.i.i811.3, i32 %315, !dbg !212
  %shl.i.i815.3 = shl i32 %cond.i.i814.3, 2, !dbg !213
  %317 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i815.3, i32 %313), !dbg !214
  %318 = bitcast i32 %317 to float, !dbg !215
  %add418.3 = fadd contract float %add413.3, %318, !dbg !216
  fence syncscope("warp") release, !dbg !217
  tail call void @llvm.mxc.barrier.warp(), !dbg !220
  fence syncscope("warp") acquire, !dbg !221
  %319 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add438, !dbg !222
  %320 = getelementptr inbounds i8, ptr addrspace(4) %319, i64 %.idx.3, !dbg !222
  %321 = load i64, ptr addrspace(4) %320, align 8, !dbg !223
  %add.ptr447.1.3 = getelementptr inbounds i8, ptr addrspace(4) %320, i64 128, !dbg !222
  %322 = load i64, ptr addrspace(4) %add.ptr447.1.3, align 8, !dbg !223
  %add.ptr447.2.3 = getelementptr inbounds i8, ptr addrspace(4) %320, i64 256, !dbg !222
  %323 = load i64, ptr addrspace(4) %add.ptr447.2.3, align 8, !dbg !223
  %add.ptr447.3.3 = getelementptr inbounds i8, ptr addrspace(4) %320, i64 384, !dbg !222
  %324 = load i64, ptr addrspace(4) %add.ptr447.3.3, align 8, !dbg !223
  %mul312.3 = fmul contract float %denominator.sroa.0.1.2, %mul.i.i.3, !dbg !245
  %325 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %mul477, !dbg !224
  %add.ptr489.idx.31021 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.31022 = getelementptr inbounds i8, ptr addrspace(3) %325, i32 %add.ptr489.idx.31021, !dbg !224
  %v_column.sroa.130.0.insert.ext1520 = shl i64 %324, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext1365 = shl i64 %323, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift1366 = and i64 %v_column.sroa.98.0.insert.ext1365, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1368 = or disjoint i64 %v_column.sroa.130.0.insert.ext1520, %v_column.sroa.98.0.insert.shift1366, !dbg !225
  %v_column.sroa.66.0.insert.ext1210 = shl i64 %322, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1211 = and i64 %v_column.sroa.66.0.insert.ext1210, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1213 = or disjoint i64 %v_column.sroa.98.0.insert.insert1368, %v_column.sroa.66.0.insert.shift1211, !dbg !225
  %v_column.sroa.0.0.insert.ext1075 = and i64 %321, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1077 = or disjoint i64 %v_column.sroa.66.0.insert.insert1213, %v_column.sroa.0.0.insert.ext1075, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1077, ptr addrspace(3) %add.ptr489.31022, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1700 = lshr i64 %321, 16, !dbg !226
  %add478.1.3 = or disjoint i32 %mul477, 256, !dbg !227
  %326 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.1.3, !dbg !224
  %xor485.1.3 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.1.3 = xor i32 %xor485.1.3, 8, !dbg !224
  %add.ptr489.1.3 = getelementptr inbounds i8, ptr addrspace(3) %326, i32 %add.ptr489.idx.1.3, !dbg !224
  %327 = shl i64 %324, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1525 = and i64 %327, -281474976710656, !dbg !225
  %328 = shl i64 %323, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1371 = and i64 %328, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1373 = or disjoint i64 %v_column.sroa.130.0.insert.ext1525, %v_column.sroa.98.0.insert.shift1371, !dbg !225
  %v_column.sroa.66.0.insert.ext1215 = and i64 %322, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1218 = or disjoint i64 %v_column.sroa.98.0.insert.insert1373, %v_column.sroa.66.0.insert.ext1215, !dbg !225
  %v_column.sroa.0.0.insert.ext1079 = and i64 %v_fetch.sroa.0.2.extract.shift1700, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1081 = or disjoint i64 %v_column.sroa.66.0.insert.insert1218, %v_column.sroa.0.0.insert.ext1079, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1081, ptr addrspace(3) %add.ptr489.1.3, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1721 = lshr i64 %321, 32, !dbg !226
  %add478.2.3 = or disjoint i32 %mul477, 512, !dbg !227
  %329 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.2.3, !dbg !224
  %xor485.2.3 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.2.3 = xor i32 %xor485.2.3, 16, !dbg !224
  %add.ptr489.2.3 = getelementptr inbounds i8, ptr addrspace(3) %329, i32 %add.ptr489.idx.2.3, !dbg !224
  %330 = shl i64 %324, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1530 = and i64 %330, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1375 = and i64 %323, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1378 = or disjoint i64 %v_column.sroa.130.0.insert.ext1530, %v_column.sroa.98.0.insert.ext1375, !dbg !225
  %331 = lshr i64 %322, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1221 = and i64 %331, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1223 = or disjoint i64 %v_column.sroa.98.0.insert.insert1378, %v_column.sroa.66.0.insert.shift1221, !dbg !225
  %v_column.sroa.0.0.insert.ext1083 = and i64 %v_fetch.sroa.0.4.extract.shift1721, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1085 = or disjoint i64 %v_column.sroa.66.0.insert.insert1223, %v_column.sroa.0.0.insert.ext1083, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1085, ptr addrspace(3) %add.ptr489.2.3, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1742 = lshr i64 %321, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift1973 = and i64 %324, -281474976710656, !dbg !225
  %add478.3.3 = or disjoint i32 %mul477, 768, !dbg !227
  %332 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.3.3, !dbg !224
  %xor485.3.3 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.3.3 = xor i32 %xor485.3.3, 24, !dbg !224
  %add.ptr489.3.3 = getelementptr inbounds i8, ptr addrspace(3) %332, i32 %add.ptr489.idx.3.3, !dbg !224
  %333 = lshr i64 %323, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1381 = and i64 %333, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1383 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1973, %v_column.sroa.98.0.insert.shift1381, !dbg !225
  %334 = lshr i64 %322, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1226 = and i64 %334, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1228 = or disjoint i64 %v_column.sroa.98.0.insert.insert1383, %v_column.sroa.66.0.insert.shift1226, !dbg !225
  %v_column.sroa.0.0.insert.insert1089 = or disjoint i64 %v_column.sroa.66.0.insert.insert1228, %v_fetch.sroa.0.6.extract.shift1742, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1089, ptr addrspace(3) %add.ptr489.3.3, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add506.31024 = or disjoint i32 %mul499, %mul505, !dbg !233
  %335 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.31024, !dbg !234
  %add.ptr516.idx.31025 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.31026 = getelementptr inbounds i8, ptr addrspace(3) %335, i32 %add.ptr516.idx.31025, !dbg !234
  %336 = load <4 x half>, ptr addrspace(3) %add.ptr516.31026, align 8, !dbg !235
  %add501.1.3 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.1.3 = or disjoint i32 %add501.1.3, 64, !dbg !233
  %337 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.1.3, !dbg !234
  %xor512.1.3 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.1.3 = xor i32 %xor512.1.3, 8, !dbg !234
  %add.ptr516.1.3 = getelementptr inbounds i8, ptr addrspace(3) %337, i32 %add.ptr516.idx.1.3, !dbg !234
  %338 = load <4 x half>, ptr addrspace(3) %add.ptr516.1.3, align 8, !dbg !235
  %add501.2.3 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.2.3 = or disjoint i32 %add501.2.3, 128, !dbg !233
  %339 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.2.3, !dbg !234
  %xor512.2.3 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.2.3 = xor i32 %xor512.2.3, 16, !dbg !234
  %add.ptr516.2.3 = getelementptr inbounds i8, ptr addrspace(3) %339, i32 %add.ptr516.idx.2.3, !dbg !234
  %340 = load <4 x half>, ptr addrspace(3) %add.ptr516.2.3, align 8, !dbg !235
  %add501.3.3 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.3.3 = or disjoint i32 %add501.3.3, 192, !dbg !233
  %341 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.3.3, !dbg !234
  %xor512.3.3 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.3.3 = xor i32 %xor512.3.3, 24, !dbg !234
  %add.ptr516.3.3 = getelementptr inbounds i8, ptr addrspace(3) %341, i32 %add.ptr516.idx.3.3, !dbg !234
  %342 = load <4 x half>, ptr addrspace(3) %add.ptr516.3.3, align 8, !dbg !235
  %343 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %336, <4 x half> %306, <4 x float> %numerator.sroa.0.12.vec.insert2508), !dbg !236
  %344 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %338, <4 x half> %306, <4 x float> %numerator.sroa.98.28.vec.insert2664), !dbg !236
  %345 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %340, <4 x half> %306, <4 x float> %numerator.sroa.194.44.vec.insert2820), !dbg !236
  %346 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %342, <4 x half> %306, <4 x float> %numerator.sroa.290.60.vec.insert2976), !dbg !236
  %add422.3 = fadd contract float %mul312.3, %add418.3, !dbg !237
  br label %if.end542.3, !dbg !238

if.end542.3:                                      ; preds = %if.then.3, %if.end542.2
  %numerator.sroa.290.3 = phi <4 x float> [ %numerator.sroa.290.2, %if.end542.2 ], [ %346, %if.then.3 ], !dbg !239
  %numerator.sroa.194.3 = phi <4 x float> [ %numerator.sroa.194.2, %if.end542.2 ], [ %345, %if.then.3 ], !dbg !239
  %numerator.sroa.98.3 = phi <4 x float> [ %numerator.sroa.98.2, %if.end542.2 ], [ %344, %if.then.3 ], !dbg !239
  %numerator.sroa.0.3 = phi <4 x float> [ %numerator.sroa.0.2, %if.end542.2 ], [ %343, %if.then.3 ], !dbg !239
  %maximum.sroa.0.1.3 = phi float [ %maximum.sroa.0.1.2, %if.end542.2 ], [ %289, %if.then.3 ], !dbg !239
  %denominator.sroa.0.1.3 = phi float [ %denominator.sroa.0.1.2, %if.end542.2 ], [ %add422.3, %if.then.3 ], !dbg !239
  %347 = or disjoint i64 %15, 4, !dbg !240
  %arrayidx108.4 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %347, !dbg !66
  %348 = load i32, ptr addrspace(1) %arrayidx108.4, align 4, !dbg !66, !tbaa !30
  %mul109.4 = shl nsw i32 %348, 4, !dbg !67
  %cmp110.4 = icmp slt i32 %348, 0, !dbg !68
  %cmp112.not.4 = icmp sgt i32 %mul109.4, %1
  %or.cond.4 = select i1 %cmp110.4, i1 true, i1 %cmp112.not.4, !dbg !69
  br i1 %or.cond.4, label %if.end542.4, label %if.then.4, !dbg !69

if.then.4:                                        ; preds = %if.end542.3
  fence syncscope("warp") release, !dbg !70
  tail call void @llvm.mxc.barrier.warp(), !dbg !73
  fence syncscope("warp") acquire, !dbg !74
  %conv122.4 = zext nneg i32 %mul109.4 to i64
  %.idx.4 = shl nuw nsw i64 %conv122.4, 7
  %gep.4 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep864, i64 %.idx.4, !dbg !75
  %.idx872.4 = shl nuw nsw i64 %conv, 17, !dbg !76
  %349 = getelementptr inbounds i8, ptr addrspace(4) %gep.4, i64 %.idx872.4, !dbg !76
  %qk_fetch.sroa.0.0.copyload3272 = load i32, ptr addrspace(4) %349, align 16, !dbg !77, !tbaa !30
  %qk_fetch.sroa.56.0..sroa_idx3292 = getelementptr inbounds i8, ptr addrspace(4) %349, i64 4, !dbg !77
  %qk_fetch.sroa.56.0.copyload3293 = load i32, ptr addrspace(4) %qk_fetch.sroa.56.0..sroa_idx3292, align 4, !dbg !77, !tbaa !30
  %qk_fetch.sroa.92.0..sroa_idx3316 = getelementptr inbounds i8, ptr addrspace(4) %349, i64 8, !dbg !77
  %qk_fetch.sroa.92.0.copyload3317 = load i32, ptr addrspace(4) %qk_fetch.sroa.92.0..sroa_idx3316, align 8, !dbg !77, !tbaa !30
  %qk_fetch.sroa.128.0..sroa_idx3340 = getelementptr inbounds i8, ptr addrspace(4) %349, i64 12, !dbg !77
  %qk_fetch.sroa.128.0.copyload3341 = load i32, ptr addrspace(4) %qk_fetch.sroa.128.0..sroa_idx3340, align 4, !dbg !77, !tbaa !30
  %cond150.4.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.0.0.copyload3272, i32 %qk_fetch.sroa.92.0.copyload3317, !dbg !78
  %cond150.1.4.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.56.0.copyload3293, i32 %qk_fetch.sroa.128.0.copyload3341, !dbg !78
  %cond150.2.4.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.92.0.copyload3317, i32 %qk_fetch.sroa.0.0.copyload3272, !dbg !78
  %cond150.3.4.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.128.0.copyload3341, i32 %qk_fetch.sroa.56.0.copyload3293, !dbg !78
  store i32 %cond150.4.sroa.speculated, ptr addrspace(3) %invariant.gep836, align 16, !dbg !79, !tbaa !30
  store i32 %cond150.1.4.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.38.0.invariant.gep836.sroa_idx, align 4, !dbg !79, !tbaa !30
  store i32 %cond150.2.4.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.56.0.invariant.gep836.sroa_idx, align 8, !dbg !79, !tbaa !30
  store i32 %cond150.3.4.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.74.0.invariant.gep836.sroa_idx, align 4, !dbg !79, !tbaa !30
  %gep844.1.4 = getelementptr inbounds i8, ptr addrspace(4) %349, i64 1024, !dbg !76
  %qk_fetch.sroa.0.0.copyload3273 = load i32, ptr addrspace(4) %gep844.1.4, align 16, !dbg !77, !tbaa !30
  %qk_fetch.sroa.56.0.gep844.1.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %349, i64 1028, !dbg !77
  %qk_fetch.sroa.56.0.copyload3294 = load i32, ptr addrspace(4) %qk_fetch.sroa.56.0.gep844.1.4.sroa_idx, align 4, !dbg !77, !tbaa !30
  %qk_fetch.sroa.92.0.gep844.1.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %349, i64 1032, !dbg !77
  %qk_fetch.sroa.92.0.copyload3318 = load i32, ptr addrspace(4) %qk_fetch.sroa.92.0.gep844.1.4.sroa_idx, align 8, !dbg !77, !tbaa !30
  %qk_fetch.sroa.128.0.gep844.1.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %349, i64 1036, !dbg !77
  %qk_fetch.sroa.128.0.copyload3342 = load i32, ptr addrspace(4) %qk_fetch.sroa.128.0.gep844.1.4.sroa_idx, align 4, !dbg !77, !tbaa !30
  %cond150.1884.4.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.92.0.copyload3318, i32 %qk_fetch.sroa.0.0.copyload3273, !dbg !78
  %cond150.1.1.4.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.128.0.copyload3342, i32 %qk_fetch.sroa.56.0.copyload3294, !dbg !78
  %cond150.2.1.4.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.0.0.copyload3273, i32 %qk_fetch.sroa.92.0.copyload3318, !dbg !78
  %cond150.3.1.4.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.56.0.copyload3294, i32 %qk_fetch.sroa.128.0.copyload3342, !dbg !78
  store i32 %cond150.1884.4.sroa.speculated, ptr addrspace(3) %gep837.1, align 16, !dbg !79, !tbaa !30
  store i32 %cond150.1.1.4.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.38.0.gep837.1.sroa_idx, align 4, !dbg !79, !tbaa !30
  store i32 %cond150.2.1.4.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.56.0.gep837.1.sroa_idx, align 8, !dbg !79, !tbaa !30
  store i32 %cond150.3.1.4.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.74.0.gep837.1.sroa_idx, align 4, !dbg !79, !tbaa !30
  fence syncscope("warp") release, !dbg !80
  tail call void @llvm.mxc.barrier.warp(), !dbg !83
  fence syncscope("warp") acquire, !dbg !84
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %add.ptr74, align 8, !dbg !85
  %350 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %6, <4 x float> zeroinitializer), !dbg !86
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr74.1, align 8, !dbg !85
  %351 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %7, <4 x float> %350), !dbg !86
  %k_local.sroa.0.0.copyload.2.4 = load <4 x half>, ptr addrspace(3) %add.ptr74.2, align 8, !dbg !85
  %352 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.4, <4 x half> %8, <4 x float> %351), !dbg !86
  %k_local.sroa.0.0.copyload.3.4 = load <4 x half>, ptr addrspace(3) %add.ptr74.3, align 8, !dbg !85
  %353 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.4, <4 x half> %9, <4 x float> %352), !dbg !86
  %add230.4 = add nuw nsw i32 %mul109.4, %mul229
  %cmp233.not.4 = icmp sgt i32 %add230.4, %1, !dbg !87
  %scores.sroa.0.0.vec.extract2107 = extractelement <4 x float> %353, i64 0
  %spec.select3495 = select i1 %cmp233.not.4, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2107, !dbg !88
  %cmp233.not.1.4.not = icmp slt i32 %add230.4, %1, !dbg !87
  %scores.sroa.0.4.vec.extract2198 = extractelement <4 x float> %353, i64 1, !dbg !88
  %condval.0.1.4 = select i1 %cmp233.not.1.4.not, float %scores.sroa.0.4.vec.extract2198, float 0xFFF0000000000000, !dbg !88
  %add231.2.4 = or disjoint i32 %add230.4, 2, !dbg !89
  %cmp233.not.2.4 = icmp sgt i32 %add231.2.4, %1, !dbg !87
  %scores.sroa.0.8.vec.extract2275 = extractelement <4 x float> %353, i64 2, !dbg !88
  %condval.0.2.4 = select i1 %cmp233.not.2.4, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2275, !dbg !88
  %add231.3.4 = or disjoint i32 %add230.4, 3, !dbg !89
  %cmp233.not.3.4 = icmp sgt i32 %add231.3.4, %1, !dbg !87
  %scores.sroa.0.12.vec.extract2352 = extractelement <4 x float> %353, i64 3, !dbg !88
  %condval.0.3.4 = select i1 %cmp233.not.3.4, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2352, !dbg !88
  %354 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3495, float 0xFFF0000000000000), !dbg !90
  %355 = tail call contract noundef float @llvm.maxnum.f32(float %354, float %condval.0.1.4), !dbg !90
  %356 = tail call contract noundef float @llvm.maxnum.f32(float %355, float %condval.0.2.4), !dbg !90
  %357 = tail call contract noundef float @llvm.maxnum.f32(float %356, float %condval.0.3.4), !dbg !90
  %358 = bitcast float %357 to i32, !dbg !94
  %359 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !97
  %360 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %359) #11, !dbg !102
  %xor.i.i.4 = xor i32 %360, 32, !dbg !103
  %361 = and i32 %360, -64, !dbg !104
  %and.i.i.4 = add nsw i32 %361, 64, !dbg !104
  %cmp.not.i.i.4 = icmp slt i32 %xor.i.i.4, %and.i.i.4, !dbg !105
  %cond.i.i.4 = select i1 %cmp.not.i.i.4, i32 %xor.i.i.4, i32 %360, !dbg !106
  %shl.i.i.4 = shl i32 %cond.i.i.4, 2, !dbg !107
  %362 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.4, i32 %358), !dbg !108
  %363 = bitcast i32 %362 to float, !dbg !109
  %364 = tail call contract noundef float @llvm.maxnum.f32(float %357, float %363), !dbg !110
  %365 = bitcast float %364 to i32, !dbg !112
  %366 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !114
  %367 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %366) #11, !dbg !117
  %xor.i.i775.4 = xor i32 %367, 16, !dbg !118
  %368 = and i32 %367, -64, !dbg !119
  %and.i.i776.4 = add nsw i32 %368, 64, !dbg !119
  %cmp.not.i.i777.4 = icmp slt i32 %xor.i.i775.4, %and.i.i776.4, !dbg !120
  %cond.i.i778.4 = select i1 %cmp.not.i.i777.4, i32 %xor.i.i775.4, i32 %367, !dbg !121
  %shl.i.i779.4 = shl i32 %cond.i.i778.4, 2, !dbg !122
  %369 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i779.4, i32 %365), !dbg !123
  %370 = bitcast i32 %369 to float, !dbg !124
  %371 = tail call contract noundef float @llvm.maxnum.f32(float %364, float %370), !dbg !125
  %372 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.3, float %371), !dbg !127
  %sub.4 = fsub contract float %maximum.sroa.0.1.3, %372, !dbg !129
  %mul275.4 = fmul contract float %sub.4, 0x3FC7154760000000, !dbg !130
  %cmp.i.i.4 = fcmp contract olt float %mul275.4, -1.260000e+02, !dbg !131
  %cond.i.i780.4 = select contract i1 %cmp.i.i.4, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i.4 = fadd contract float %mul275.4, %cond.i.i780.4, !dbg !131
  %373 = tail call contract float @llvm.exp2.f32(float %add.i.i.4), !dbg !131
  %cond2.i.i.4 = select contract i1 %cmp.i.i.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i.4 = fmul contract float %cond2.i.i.4, %373, !dbg !131
  %numerator.sroa.0.0.vec.extract2399 = extractelement <4 x float> %numerator.sroa.0.3, i64 0, !dbg !241
  %numerator.sroa.0.4.vec.extract2436 = extractelement <4 x float> %numerator.sroa.0.3, i64 1, !dbg !241
  %numerator.sroa.0.8.vec.extract2473 = extractelement <4 x float> %numerator.sroa.0.3, i64 2, !dbg !241
  %numerator.sroa.0.12.vec.extract2510 = extractelement <4 x float> %numerator.sroa.0.3, i64 3, !dbg !241
  %mul292.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.0.vec.extract2399, !dbg !134
  %mul295.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.4.vec.extract2436, !dbg !242
  %mul298.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.8.vec.extract2473, !dbg !243
  %mul301.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.12.vec.extract2510, !dbg !244
  %numerator.sroa.0.0.vec.insert2401 = insertelement <4 x float> poison, float %mul292.4, i64 0, !dbg !135
  %numerator.sroa.0.4.vec.insert2438 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2401, float %mul295.4, i64 1, !dbg !135
  %numerator.sroa.0.8.vec.insert2475 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2438, float %mul298.4, i64 2, !dbg !135
  %numerator.sroa.0.12.vec.insert2512 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2475, float %mul301.4, i64 3, !dbg !135
  %numerator.sroa.98.16.vec.extract2555 = extractelement <4 x float> %numerator.sroa.98.3, i64 0, !dbg !241
  %numerator.sroa.98.20.vec.extract2592 = extractelement <4 x float> %numerator.sroa.98.3, i64 1, !dbg !241
  %numerator.sroa.98.24.vec.extract2629 = extractelement <4 x float> %numerator.sroa.98.3, i64 2, !dbg !241
  %numerator.sroa.98.28.vec.extract2666 = extractelement <4 x float> %numerator.sroa.98.3, i64 3, !dbg !241
  %mul292.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.16.vec.extract2555, !dbg !134
  %mul295.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.20.vec.extract2592, !dbg !242
  %mul298.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.24.vec.extract2629, !dbg !243
  %mul301.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.28.vec.extract2666, !dbg !244
  %numerator.sroa.98.16.vec.insert2557 = insertelement <4 x float> poison, float %mul292.1.4, i64 0, !dbg !135
  %numerator.sroa.98.20.vec.insert2594 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2557, float %mul295.1.4, i64 1, !dbg !135
  %numerator.sroa.98.24.vec.insert2631 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2594, float %mul298.1.4, i64 2, !dbg !135
  %numerator.sroa.98.28.vec.insert2668 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2631, float %mul301.1.4, i64 3, !dbg !135
  %numerator.sroa.194.32.vec.extract2711 = extractelement <4 x float> %numerator.sroa.194.3, i64 0, !dbg !241
  %numerator.sroa.194.36.vec.extract2748 = extractelement <4 x float> %numerator.sroa.194.3, i64 1, !dbg !241
  %numerator.sroa.194.40.vec.extract2785 = extractelement <4 x float> %numerator.sroa.194.3, i64 2, !dbg !241
  %numerator.sroa.194.44.vec.extract2822 = extractelement <4 x float> %numerator.sroa.194.3, i64 3, !dbg !241
  %mul292.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.32.vec.extract2711, !dbg !134
  %mul295.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.36.vec.extract2748, !dbg !242
  %mul298.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.40.vec.extract2785, !dbg !243
  %mul301.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.44.vec.extract2822, !dbg !244
  %numerator.sroa.194.32.vec.insert2713 = insertelement <4 x float> poison, float %mul292.2.4, i64 0, !dbg !135
  %numerator.sroa.194.36.vec.insert2750 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2713, float %mul295.2.4, i64 1, !dbg !135
  %numerator.sroa.194.40.vec.insert2787 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2750, float %mul298.2.4, i64 2, !dbg !135
  %numerator.sroa.194.44.vec.insert2824 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2787, float %mul301.2.4, i64 3, !dbg !135
  %numerator.sroa.290.48.vec.extract2867 = extractelement <4 x float> %numerator.sroa.290.3, i64 0, !dbg !241
  %numerator.sroa.290.52.vec.extract2904 = extractelement <4 x float> %numerator.sroa.290.3, i64 1, !dbg !241
  %numerator.sroa.290.56.vec.extract2941 = extractelement <4 x float> %numerator.sroa.290.3, i64 2, !dbg !241
  %numerator.sroa.290.60.vec.extract2978 = extractelement <4 x float> %numerator.sroa.290.3, i64 3, !dbg !241
  %mul292.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.48.vec.extract2867, !dbg !134
  %mul295.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.52.vec.extract2904, !dbg !242
  %mul298.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.56.vec.extract2941, !dbg !243
  %mul301.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.60.vec.extract2978, !dbg !244
  %numerator.sroa.290.48.vec.insert2869 = insertelement <4 x float> poison, float %mul292.3.4, i64 0, !dbg !135
  %numerator.sroa.290.52.vec.insert2906 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2869, float %mul295.3.4, i64 1, !dbg !135
  %numerator.sroa.290.56.vec.insert2943 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2906, float %mul298.3.4, i64 2, !dbg !135
  %numerator.sroa.290.60.vec.insert2980 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2943, float %mul301.3.4, i64 3, !dbg !135
  %sub325.4 = fsub contract float %spec.select3495, %372, !dbg !136
  %sub329.4 = fsub contract float %condval.0.1.4, %372, !dbg !137
  %sub333.4 = fsub contract float %condval.0.2.4, %372, !dbg !138
  %sub337.4 = fsub contract float %condval.0.3.4, %372, !dbg !139
  %mul342.4 = fmul contract float %sub325.4, 0x3FC7154760000000, !dbg !140
  %mul346.4 = fmul contract float %sub329.4, 0x3FC7154760000000, !dbg !141
  %mul350.4 = fmul contract float %sub333.4, 0x3FC7154760000000, !dbg !142
  %mul354.4 = fmul contract float %sub337.4, 0x3FC7154760000000, !dbg !143
  %add359.4 = fadd contract float %mul342.4, 8.000000e+00, !dbg !144
  %add363.4 = fadd contract float %mul346.4, 8.000000e+00, !dbg !145
  %add367.4 = fadd contract float %mul350.4, 8.000000e+00, !dbg !146
  %add371.4 = fadd contract float %mul354.4, 8.000000e+00, !dbg !147
  %cmp.i.i781.4 = fcmp contract olt float %add359.4, -1.260000e+02, !dbg !148
  %cond.i.i782.4 = select contract i1 %cmp.i.i781.4, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i783.4 = fadd contract float %add359.4, %cond.i.i782.4, !dbg !148
  %374 = tail call contract float @llvm.exp2.f32(float %add.i.i783.4), !dbg !148
  %cond2.i.i784.4 = select contract i1 %cmp.i.i781.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i785.4 = fmul contract float %cond2.i.i784.4, %374, !dbg !148
  %cmp.i.i786.4 = fcmp contract olt float %add363.4, -1.260000e+02, !dbg !150
  %cond.i.i787.4 = select contract i1 %cmp.i.i786.4, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i788.4 = fadd contract float %add363.4, %cond.i.i787.4, !dbg !150
  %375 = tail call contract float @llvm.exp2.f32(float %add.i.i788.4), !dbg !150
  %cond2.i.i789.4 = select contract i1 %cmp.i.i786.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i790.4 = fmul contract float %cond2.i.i789.4, %375, !dbg !150
  %cmp.i.i791.4 = fcmp contract olt float %add367.4, -1.260000e+02, !dbg !152
  %cond.i.i792.4 = select contract i1 %cmp.i.i791.4, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i793.4 = fadd contract float %add367.4, %cond.i.i792.4, !dbg !152
  %376 = tail call contract float @llvm.exp2.f32(float %add.i.i793.4), !dbg !152
  %cond2.i.i794.4 = select contract i1 %cmp.i.i791.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i795.4 = fmul contract float %cond2.i.i794.4, %376, !dbg !152
  %cmp.i.i796.4 = fcmp contract olt float %add371.4, -1.260000e+02, !dbg !154
  %cond.i.i797.4 = select contract i1 %cmp.i.i796.4, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i798.4 = fadd contract float %add371.4, %cond.i.i797.4, !dbg !154
  %377 = tail call contract float @llvm.exp2.f32(float %add.i.i798.4), !dbg !154
  %cond2.i.i799.4 = select contract i1 %cmp.i.i796.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i800.4 = fmul contract float %cond2.i.i799.4, %377, !dbg !154
  %378 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !156, !noalias !164
  %379 = fptrunc float %mul.i.i785.4 to half, !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %378), !dbg !156, !noalias !164
  %380 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !164
  %381 = fptrunc float %mul.i.i790.4 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %380), !dbg !169, !noalias !164
  %382 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !175
  %383 = fptrunc float %mul.i.i795.4 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %382), !dbg !171, !noalias !175
  %384 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !180, !noalias !175
  %385 = fptrunc float %mul.i.i800.4 to half, !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %384), !dbg !180, !noalias !175
  %386 = insertelement <4 x half> poison, half %379, i64 0, !dbg !182
  %387 = insertelement <4 x half> %386, half %381, i64 1, !dbg !182
  %388 = insertelement <4 x half> %387, half %383, i64 2, !dbg !182
  %389 = insertelement <4 x half> %388, half %385, i64 3, !dbg !182
  %conv.i.i.4 = fpext half %379 to float, !dbg !183
  %add405.4 = fadd contract float %conv.i.i.4, 0.000000e+00, !dbg !188
  %conv.i.i.1.4 = fpext half %381 to float, !dbg !183
  %add405.1.4 = fadd contract float %add405.4, %conv.i.i.1.4, !dbg !188
  %conv.i.i.2.4 = fpext half %383 to float, !dbg !183
  %add405.2.4 = fadd contract float %add405.1.4, %conv.i.i.2.4, !dbg !188
  %conv.i.i.3.4 = fpext half %385 to float, !dbg !183
  %add405.3.4 = fadd contract float %add405.2.4, %conv.i.i.3.4, !dbg !188
  %390 = bitcast float %add405.3.4 to i32, !dbg !189
  %391 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !191
  %392 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %391) #11, !dbg !194
  %xor.i.i806.4 = xor i32 %392, 32, !dbg !195
  %393 = and i32 %392, -64, !dbg !196
  %and.i.i807.4 = add nsw i32 %393, 64, !dbg !196
  %cmp.not.i.i808.4 = icmp slt i32 %xor.i.i806.4, %and.i.i807.4, !dbg !197
  %cond.i.i809.4 = select i1 %cmp.not.i.i808.4, i32 %xor.i.i806.4, i32 %392, !dbg !198
  %shl.i.i810.4 = shl i32 %cond.i.i809.4, 2, !dbg !199
  %394 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i810.4, i32 %390), !dbg !200
  %395 = bitcast i32 %394 to float, !dbg !201
  %add413.4 = fadd contract float %add405.3.4, %395, !dbg !202
  %396 = bitcast float %add413.4 to i32, !dbg !203
  %397 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %398 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %397) #11, !dbg !208
  %xor.i.i811.4 = xor i32 %398, 16, !dbg !209
  %399 = and i32 %398, -64, !dbg !210
  %and.i.i812.4 = add nsw i32 %399, 64, !dbg !210
  %cmp.not.i.i813.4 = icmp slt i32 %xor.i.i811.4, %and.i.i812.4, !dbg !211
  %cond.i.i814.4 = select i1 %cmp.not.i.i813.4, i32 %xor.i.i811.4, i32 %398, !dbg !212
  %shl.i.i815.4 = shl i32 %cond.i.i814.4, 2, !dbg !213
  %400 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i815.4, i32 %396), !dbg !214
  %401 = bitcast i32 %400 to float, !dbg !215
  %add418.4 = fadd contract float %add413.4, %401, !dbg !216
  fence syncscope("warp") release, !dbg !217
  tail call void @llvm.mxc.barrier.warp(), !dbg !220
  fence syncscope("warp") acquire, !dbg !221
  %402 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add438, !dbg !222
  %403 = getelementptr inbounds i8, ptr addrspace(4) %402, i64 %.idx.4, !dbg !222
  %404 = load i64, ptr addrspace(4) %403, align 8, !dbg !223
  %add.ptr447.1.4 = getelementptr inbounds i8, ptr addrspace(4) %403, i64 128, !dbg !222
  %405 = load i64, ptr addrspace(4) %add.ptr447.1.4, align 8, !dbg !223
  %add.ptr447.2.4 = getelementptr inbounds i8, ptr addrspace(4) %403, i64 256, !dbg !222
  %406 = load i64, ptr addrspace(4) %add.ptr447.2.4, align 8, !dbg !223
  %add.ptr447.3.4 = getelementptr inbounds i8, ptr addrspace(4) %403, i64 384, !dbg !222
  %407 = load i64, ptr addrspace(4) %add.ptr447.3.4, align 8, !dbg !223
  %mul312.4 = fmul contract float %denominator.sroa.0.1.3, %mul.i.i.4, !dbg !245
  %408 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %mul477, !dbg !224
  %add.ptr489.idx.4 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.4 = getelementptr inbounds i8, ptr addrspace(3) %408, i32 %add.ptr489.idx.4, !dbg !224
  %v_column.sroa.130.0.insert.ext1540 = shl i64 %407, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext1385 = shl i64 %406, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift1386 = and i64 %v_column.sroa.98.0.insert.ext1385, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1388 = or disjoint i64 %v_column.sroa.130.0.insert.ext1540, %v_column.sroa.98.0.insert.shift1386, !dbg !225
  %v_column.sroa.66.0.insert.ext1230 = shl i64 %405, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1231 = and i64 %v_column.sroa.66.0.insert.ext1230, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1233 = or disjoint i64 %v_column.sroa.98.0.insert.insert1388, %v_column.sroa.66.0.insert.shift1231, !dbg !225
  %v_column.sroa.0.0.insert.ext1091 = and i64 %404, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1093 = or disjoint i64 %v_column.sroa.66.0.insert.insert1233, %v_column.sroa.0.0.insert.ext1091, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1093, ptr addrspace(3) %add.ptr489.4, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1703 = lshr i64 %404, 16, !dbg !226
  %add478.1.4 = or disjoint i32 %mul477, 256, !dbg !227
  %409 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.1.4, !dbg !224
  %xor485.1.4 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.1.4 = xor i32 %xor485.1.4, 8, !dbg !224
  %add.ptr489.1.4 = getelementptr inbounds i8, ptr addrspace(3) %409, i32 %add.ptr489.idx.1.4, !dbg !224
  %410 = shl i64 %407, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1545 = and i64 %410, -281474976710656, !dbg !225
  %411 = shl i64 %406, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1391 = and i64 %411, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1393 = or disjoint i64 %v_column.sroa.130.0.insert.ext1545, %v_column.sroa.98.0.insert.shift1391, !dbg !225
  %v_column.sroa.66.0.insert.ext1235 = and i64 %405, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1238 = or disjoint i64 %v_column.sroa.98.0.insert.insert1393, %v_column.sroa.66.0.insert.ext1235, !dbg !225
  %v_column.sroa.0.0.insert.ext1095 = and i64 %v_fetch.sroa.0.2.extract.shift1703, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1097 = or disjoint i64 %v_column.sroa.66.0.insert.insert1238, %v_column.sroa.0.0.insert.ext1095, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1097, ptr addrspace(3) %add.ptr489.1.4, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1724 = lshr i64 %404, 32, !dbg !226
  %add478.2.4 = or disjoint i32 %mul477, 512, !dbg !227
  %412 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.2.4, !dbg !224
  %xor485.2.4 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.2.4 = xor i32 %xor485.2.4, 16, !dbg !224
  %add.ptr489.2.4 = getelementptr inbounds i8, ptr addrspace(3) %412, i32 %add.ptr489.idx.2.4, !dbg !224
  %413 = shl i64 %407, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1550 = and i64 %413, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1395 = and i64 %406, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1398 = or disjoint i64 %v_column.sroa.130.0.insert.ext1550, %v_column.sroa.98.0.insert.ext1395, !dbg !225
  %414 = lshr i64 %405, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1241 = and i64 %414, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1243 = or disjoint i64 %v_column.sroa.98.0.insert.insert1398, %v_column.sroa.66.0.insert.shift1241, !dbg !225
  %v_column.sroa.0.0.insert.ext1099 = and i64 %v_fetch.sroa.0.4.extract.shift1724, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1101 = or disjoint i64 %v_column.sroa.66.0.insert.insert1243, %v_column.sroa.0.0.insert.ext1099, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1101, ptr addrspace(3) %add.ptr489.2.4, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1745 = lshr i64 %404, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift1976 = and i64 %407, -281474976710656, !dbg !225
  %add478.3.4 = or disjoint i32 %mul477, 768, !dbg !227
  %415 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.3.4, !dbg !224
  %xor485.3.4 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.3.4 = xor i32 %xor485.3.4, 24, !dbg !224
  %add.ptr489.3.4 = getelementptr inbounds i8, ptr addrspace(3) %415, i32 %add.ptr489.idx.3.4, !dbg !224
  %416 = lshr i64 %406, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1401 = and i64 %416, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1403 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1976, %v_column.sroa.98.0.insert.shift1401, !dbg !225
  %417 = lshr i64 %405, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1246 = and i64 %417, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1248 = or disjoint i64 %v_column.sroa.98.0.insert.insert1403, %v_column.sroa.66.0.insert.shift1246, !dbg !225
  %v_column.sroa.0.0.insert.insert1105 = or disjoint i64 %v_column.sroa.66.0.insert.insert1248, %v_fetch.sroa.0.6.extract.shift1745, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1105, ptr addrspace(3) %add.ptr489.3.4, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add506.4 = or disjoint i32 %mul499, %mul505, !dbg !233
  %418 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.4, !dbg !234
  %add.ptr516.idx.4 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.4 = getelementptr inbounds i8, ptr addrspace(3) %418, i32 %add.ptr516.idx.4, !dbg !234
  %419 = load <4 x half>, ptr addrspace(3) %add.ptr516.4, align 8, !dbg !235
  %add501.1.4 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.1.4 = or disjoint i32 %add501.1.4, 64, !dbg !233
  %420 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.1.4, !dbg !234
  %xor512.1.4 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.1.4 = xor i32 %xor512.1.4, 8, !dbg !234
  %add.ptr516.1.4 = getelementptr inbounds i8, ptr addrspace(3) %420, i32 %add.ptr516.idx.1.4, !dbg !234
  %421 = load <4 x half>, ptr addrspace(3) %add.ptr516.1.4, align 8, !dbg !235
  %add501.2.4 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.2.4 = or disjoint i32 %add501.2.4, 128, !dbg !233
  %422 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.2.4, !dbg !234
  %xor512.2.4 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.2.4 = xor i32 %xor512.2.4, 16, !dbg !234
  %add.ptr516.2.4 = getelementptr inbounds i8, ptr addrspace(3) %422, i32 %add.ptr516.idx.2.4, !dbg !234
  %423 = load <4 x half>, ptr addrspace(3) %add.ptr516.2.4, align 8, !dbg !235
  %add501.3.4 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.3.4 = or disjoint i32 %add501.3.4, 192, !dbg !233
  %424 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.3.4, !dbg !234
  %xor512.3.4 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.3.4 = xor i32 %xor512.3.4, 24, !dbg !234
  %add.ptr516.3.4 = getelementptr inbounds i8, ptr addrspace(3) %424, i32 %add.ptr516.idx.3.4, !dbg !234
  %425 = load <4 x half>, ptr addrspace(3) %add.ptr516.3.4, align 8, !dbg !235
  %426 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %419, <4 x half> %389, <4 x float> %numerator.sroa.0.12.vec.insert2512), !dbg !236
  %427 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %421, <4 x half> %389, <4 x float> %numerator.sroa.98.28.vec.insert2668), !dbg !236
  %428 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %423, <4 x half> %389, <4 x float> %numerator.sroa.194.44.vec.insert2824), !dbg !236
  %429 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %425, <4 x half> %389, <4 x float> %numerator.sroa.290.60.vec.insert2980), !dbg !236
  %add422.4 = fadd contract float %mul312.4, %add418.4, !dbg !237
  br label %if.end542.4, !dbg !238

if.end542.4:                                      ; preds = %if.then.4, %if.end542.3
  %numerator.sroa.290.4 = phi <4 x float> [ %numerator.sroa.290.3, %if.end542.3 ], [ %429, %if.then.4 ], !dbg !239
  %numerator.sroa.194.4 = phi <4 x float> [ %numerator.sroa.194.3, %if.end542.3 ], [ %428, %if.then.4 ], !dbg !239
  %numerator.sroa.98.4 = phi <4 x float> [ %numerator.sroa.98.3, %if.end542.3 ], [ %427, %if.then.4 ], !dbg !239
  %numerator.sroa.0.4 = phi <4 x float> [ %numerator.sroa.0.3, %if.end542.3 ], [ %426, %if.then.4 ], !dbg !239
  %maximum.sroa.0.1.4 = phi float [ %maximum.sroa.0.1.3, %if.end542.3 ], [ %372, %if.then.4 ], !dbg !239
  %denominator.sroa.0.1.4 = phi float [ %denominator.sroa.0.1.3, %if.end542.3 ], [ %add422.4, %if.then.4 ], !dbg !239
  %430 = or disjoint i64 %15, 5, !dbg !240
  %arrayidx108.5 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %430, !dbg !66
  %431 = load i32, ptr addrspace(1) %arrayidx108.5, align 4, !dbg !66, !tbaa !30
  %mul109.5 = shl nsw i32 %431, 4, !dbg !67
  %cmp110.5 = icmp slt i32 %431, 0, !dbg !68
  %cmp112.not.5 = icmp sgt i32 %mul109.5, %1
  %or.cond.5 = select i1 %cmp110.5, i1 true, i1 %cmp112.not.5, !dbg !69
  br i1 %or.cond.5, label %if.end542.5, label %if.then.5, !dbg !69

if.then.5:                                        ; preds = %if.end542.4
  fence syncscope("warp") release, !dbg !70
  tail call void @llvm.mxc.barrier.warp(), !dbg !73
  fence syncscope("warp") acquire, !dbg !74
  %conv122.5 = zext nneg i32 %mul109.5 to i64
  %.idx.5 = shl nuw nsw i64 %conv122.5, 7
  %gep.5 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep864, i64 %.idx.5, !dbg !75
  %.idx872.5 = shl nuw nsw i64 %conv, 17, !dbg !76
  %432 = getelementptr inbounds i8, ptr addrspace(4) %gep.5, i64 %.idx872.5, !dbg !76
  %qk_fetch.sroa.0.0.copyload3274 = load i32, ptr addrspace(4) %432, align 16, !dbg !77, !tbaa !30
  %qk_fetch.sroa.56.0..sroa_idx3295 = getelementptr inbounds i8, ptr addrspace(4) %432, i64 4, !dbg !77
  %qk_fetch.sroa.56.0.copyload3296 = load i32, ptr addrspace(4) %qk_fetch.sroa.56.0..sroa_idx3295, align 4, !dbg !77, !tbaa !30
  %qk_fetch.sroa.92.0..sroa_idx3319 = getelementptr inbounds i8, ptr addrspace(4) %432, i64 8, !dbg !77
  %qk_fetch.sroa.92.0.copyload3320 = load i32, ptr addrspace(4) %qk_fetch.sroa.92.0..sroa_idx3319, align 8, !dbg !77, !tbaa !30
  %qk_fetch.sroa.128.0..sroa_idx3343 = getelementptr inbounds i8, ptr addrspace(4) %432, i64 12, !dbg !77
  %qk_fetch.sroa.128.0.copyload3344 = load i32, ptr addrspace(4) %qk_fetch.sroa.128.0..sroa_idx3343, align 4, !dbg !77, !tbaa !30
  %cond150.5.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.0.0.copyload3274, i32 %qk_fetch.sroa.92.0.copyload3320, !dbg !78
  %cond150.1.5.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.56.0.copyload3296, i32 %qk_fetch.sroa.128.0.copyload3344, !dbg !78
  %cond150.2.5.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.92.0.copyload3320, i32 %qk_fetch.sroa.0.0.copyload3274, !dbg !78
  %cond150.3.5.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.128.0.copyload3344, i32 %qk_fetch.sroa.56.0.copyload3296, !dbg !78
  store i32 %cond150.5.sroa.speculated, ptr addrspace(3) %invariant.gep836, align 16, !dbg !79, !tbaa !30
  store i32 %cond150.1.5.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.38.0.invariant.gep836.sroa_idx, align 4, !dbg !79, !tbaa !30
  store i32 %cond150.2.5.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.56.0.invariant.gep836.sroa_idx, align 8, !dbg !79, !tbaa !30
  store i32 %cond150.3.5.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.74.0.invariant.gep836.sroa_idx, align 4, !dbg !79, !tbaa !30
  %gep844.1.5 = getelementptr inbounds i8, ptr addrspace(4) %432, i64 1024, !dbg !76
  %qk_fetch.sroa.0.0.copyload3275 = load i32, ptr addrspace(4) %gep844.1.5, align 16, !dbg !77, !tbaa !30
  %qk_fetch.sroa.56.0.gep844.1.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %432, i64 1028, !dbg !77
  %qk_fetch.sroa.56.0.copyload3297 = load i32, ptr addrspace(4) %qk_fetch.sroa.56.0.gep844.1.5.sroa_idx, align 4, !dbg !77, !tbaa !30
  %qk_fetch.sroa.92.0.gep844.1.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %432, i64 1032, !dbg !77
  %qk_fetch.sroa.92.0.copyload3321 = load i32, ptr addrspace(4) %qk_fetch.sroa.92.0.gep844.1.5.sroa_idx, align 8, !dbg !77, !tbaa !30
  %qk_fetch.sroa.128.0.gep844.1.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %432, i64 1036, !dbg !77
  %qk_fetch.sroa.128.0.copyload3345 = load i32, ptr addrspace(4) %qk_fetch.sroa.128.0.gep844.1.5.sroa_idx, align 4, !dbg !77, !tbaa !30
  %cond150.1884.5.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.92.0.copyload3321, i32 %qk_fetch.sroa.0.0.copyload3275, !dbg !78
  %cond150.1.1.5.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.128.0.copyload3345, i32 %qk_fetch.sroa.56.0.copyload3297, !dbg !78
  %cond150.2.1.5.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.0.0.copyload3275, i32 %qk_fetch.sroa.92.0.copyload3321, !dbg !78
  %cond150.3.1.5.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.56.0.copyload3297, i32 %qk_fetch.sroa.128.0.copyload3345, !dbg !78
  store i32 %cond150.1884.5.sroa.speculated, ptr addrspace(3) %gep837.1, align 16, !dbg !79, !tbaa !30
  store i32 %cond150.1.1.5.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.38.0.gep837.1.sroa_idx, align 4, !dbg !79, !tbaa !30
  store i32 %cond150.2.1.5.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.56.0.gep837.1.sroa_idx, align 8, !dbg !79, !tbaa !30
  store i32 %cond150.3.1.5.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.74.0.gep837.1.sroa_idx, align 4, !dbg !79, !tbaa !30
  fence syncscope("warp") release, !dbg !80
  tail call void @llvm.mxc.barrier.warp(), !dbg !83
  fence syncscope("warp") acquire, !dbg !84
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %add.ptr74, align 8, !dbg !85
  %433 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %6, <4 x float> zeroinitializer), !dbg !86
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr74.1, align 8, !dbg !85
  %434 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %7, <4 x float> %433), !dbg !86
  %k_local.sroa.0.0.copyload.2.5 = load <4 x half>, ptr addrspace(3) %add.ptr74.2, align 8, !dbg !85
  %435 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.5, <4 x half> %8, <4 x float> %434), !dbg !86
  %k_local.sroa.0.0.copyload.3.5 = load <4 x half>, ptr addrspace(3) %add.ptr74.3, align 8, !dbg !85
  %436 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.5, <4 x half> %9, <4 x float> %435), !dbg !86
  %add230.5 = add nuw nsw i32 %mul109.5, %mul229
  %cmp233.not.5 = icmp sgt i32 %add230.5, %1, !dbg !87
  %scores.sroa.0.0.vec.extract2117 = extractelement <4 x float> %436, i64 0
  %spec.select3496 = select i1 %cmp233.not.5, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2117, !dbg !88
  %cmp233.not.1.5.not = icmp slt i32 %add230.5, %1, !dbg !87
  %scores.sroa.0.4.vec.extract2204 = extractelement <4 x float> %436, i64 1, !dbg !88
  %condval.0.1.5 = select i1 %cmp233.not.1.5.not, float %scores.sroa.0.4.vec.extract2204, float 0xFFF0000000000000, !dbg !88
  %add231.2.5 = or disjoint i32 %add230.5, 2, !dbg !89
  %cmp233.not.2.5 = icmp sgt i32 %add231.2.5, %1, !dbg !87
  %scores.sroa.0.8.vec.extract2281 = extractelement <4 x float> %436, i64 2, !dbg !88
  %condval.0.2.5 = select i1 %cmp233.not.2.5, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2281, !dbg !88
  %add231.3.5 = or disjoint i32 %add230.5, 3, !dbg !89
  %cmp233.not.3.5 = icmp sgt i32 %add231.3.5, %1, !dbg !87
  %scores.sroa.0.12.vec.extract2358 = extractelement <4 x float> %436, i64 3, !dbg !88
  %condval.0.3.5 = select i1 %cmp233.not.3.5, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2358, !dbg !88
  %437 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3496, float 0xFFF0000000000000), !dbg !90
  %438 = tail call contract noundef float @llvm.maxnum.f32(float %437, float %condval.0.1.5), !dbg !90
  %439 = tail call contract noundef float @llvm.maxnum.f32(float %438, float %condval.0.2.5), !dbg !90
  %440 = tail call contract noundef float @llvm.maxnum.f32(float %439, float %condval.0.3.5), !dbg !90
  %441 = bitcast float %440 to i32, !dbg !94
  %442 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !97
  %443 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %442) #11, !dbg !102
  %xor.i.i.5 = xor i32 %443, 32, !dbg !103
  %444 = and i32 %443, -64, !dbg !104
  %and.i.i.5 = add nsw i32 %444, 64, !dbg !104
  %cmp.not.i.i.5 = icmp slt i32 %xor.i.i.5, %and.i.i.5, !dbg !105
  %cond.i.i.5 = select i1 %cmp.not.i.i.5, i32 %xor.i.i.5, i32 %443, !dbg !106
  %shl.i.i.5 = shl i32 %cond.i.i.5, 2, !dbg !107
  %445 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.5, i32 %441), !dbg !108
  %446 = bitcast i32 %445 to float, !dbg !109
  %447 = tail call contract noundef float @llvm.maxnum.f32(float %440, float %446), !dbg !110
  %448 = bitcast float %447 to i32, !dbg !112
  %449 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !114
  %450 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %449) #11, !dbg !117
  %xor.i.i775.5 = xor i32 %450, 16, !dbg !118
  %451 = and i32 %450, -64, !dbg !119
  %and.i.i776.5 = add nsw i32 %451, 64, !dbg !119
  %cmp.not.i.i777.5 = icmp slt i32 %xor.i.i775.5, %and.i.i776.5, !dbg !120
  %cond.i.i778.5 = select i1 %cmp.not.i.i777.5, i32 %xor.i.i775.5, i32 %450, !dbg !121
  %shl.i.i779.5 = shl i32 %cond.i.i778.5, 2, !dbg !122
  %452 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i779.5, i32 %448), !dbg !123
  %453 = bitcast i32 %452 to float, !dbg !124
  %454 = tail call contract noundef float @llvm.maxnum.f32(float %447, float %453), !dbg !125
  %455 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.4, float %454), !dbg !127
  %sub.5 = fsub contract float %maximum.sroa.0.1.4, %455, !dbg !129
  %mul275.5 = fmul contract float %sub.5, 0x3FC7154760000000, !dbg !130
  %cmp.i.i.5 = fcmp contract olt float %mul275.5, -1.260000e+02, !dbg !131
  %cond.i.i780.5 = select contract i1 %cmp.i.i.5, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i.5 = fadd contract float %mul275.5, %cond.i.i780.5, !dbg !131
  %456 = tail call contract float @llvm.exp2.f32(float %add.i.i.5), !dbg !131
  %cond2.i.i.5 = select contract i1 %cmp.i.i.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i.5 = fmul contract float %cond2.i.i.5, %456, !dbg !131
  %numerator.sroa.0.0.vec.extract2403 = extractelement <4 x float> %numerator.sroa.0.4, i64 0, !dbg !241
  %numerator.sroa.0.4.vec.extract2440 = extractelement <4 x float> %numerator.sroa.0.4, i64 1, !dbg !241
  %numerator.sroa.0.8.vec.extract2477 = extractelement <4 x float> %numerator.sroa.0.4, i64 2, !dbg !241
  %numerator.sroa.0.12.vec.extract2514 = extractelement <4 x float> %numerator.sroa.0.4, i64 3, !dbg !241
  %mul292.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.0.vec.extract2403, !dbg !134
  %mul295.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.4.vec.extract2440, !dbg !242
  %mul298.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.8.vec.extract2477, !dbg !243
  %mul301.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.12.vec.extract2514, !dbg !244
  %numerator.sroa.0.0.vec.insert2405 = insertelement <4 x float> poison, float %mul292.5, i64 0, !dbg !135
  %numerator.sroa.0.4.vec.insert2442 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2405, float %mul295.5, i64 1, !dbg !135
  %numerator.sroa.0.8.vec.insert2479 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2442, float %mul298.5, i64 2, !dbg !135
  %numerator.sroa.0.12.vec.insert2516 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2479, float %mul301.5, i64 3, !dbg !135
  %numerator.sroa.98.16.vec.extract2559 = extractelement <4 x float> %numerator.sroa.98.4, i64 0, !dbg !241
  %numerator.sroa.98.20.vec.extract2596 = extractelement <4 x float> %numerator.sroa.98.4, i64 1, !dbg !241
  %numerator.sroa.98.24.vec.extract2633 = extractelement <4 x float> %numerator.sroa.98.4, i64 2, !dbg !241
  %numerator.sroa.98.28.vec.extract2670 = extractelement <4 x float> %numerator.sroa.98.4, i64 3, !dbg !241
  %mul292.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.16.vec.extract2559, !dbg !134
  %mul295.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.20.vec.extract2596, !dbg !242
  %mul298.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.24.vec.extract2633, !dbg !243
  %mul301.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.28.vec.extract2670, !dbg !244
  %numerator.sroa.98.16.vec.insert2561 = insertelement <4 x float> poison, float %mul292.1.5, i64 0, !dbg !135
  %numerator.sroa.98.20.vec.insert2598 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2561, float %mul295.1.5, i64 1, !dbg !135
  %numerator.sroa.98.24.vec.insert2635 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2598, float %mul298.1.5, i64 2, !dbg !135
  %numerator.sroa.98.28.vec.insert2672 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2635, float %mul301.1.5, i64 3, !dbg !135
  %numerator.sroa.194.32.vec.extract2715 = extractelement <4 x float> %numerator.sroa.194.4, i64 0, !dbg !241
  %numerator.sroa.194.36.vec.extract2752 = extractelement <4 x float> %numerator.sroa.194.4, i64 1, !dbg !241
  %numerator.sroa.194.40.vec.extract2789 = extractelement <4 x float> %numerator.sroa.194.4, i64 2, !dbg !241
  %numerator.sroa.194.44.vec.extract2826 = extractelement <4 x float> %numerator.sroa.194.4, i64 3, !dbg !241
  %mul292.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.32.vec.extract2715, !dbg !134
  %mul295.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.36.vec.extract2752, !dbg !242
  %mul298.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.40.vec.extract2789, !dbg !243
  %mul301.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.44.vec.extract2826, !dbg !244
  %numerator.sroa.194.32.vec.insert2717 = insertelement <4 x float> poison, float %mul292.2.5, i64 0, !dbg !135
  %numerator.sroa.194.36.vec.insert2754 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2717, float %mul295.2.5, i64 1, !dbg !135
  %numerator.sroa.194.40.vec.insert2791 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2754, float %mul298.2.5, i64 2, !dbg !135
  %numerator.sroa.194.44.vec.insert2828 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2791, float %mul301.2.5, i64 3, !dbg !135
  %numerator.sroa.290.48.vec.extract2871 = extractelement <4 x float> %numerator.sroa.290.4, i64 0, !dbg !241
  %numerator.sroa.290.52.vec.extract2908 = extractelement <4 x float> %numerator.sroa.290.4, i64 1, !dbg !241
  %numerator.sroa.290.56.vec.extract2945 = extractelement <4 x float> %numerator.sroa.290.4, i64 2, !dbg !241
  %numerator.sroa.290.60.vec.extract2982 = extractelement <4 x float> %numerator.sroa.290.4, i64 3, !dbg !241
  %mul292.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.48.vec.extract2871, !dbg !134
  %mul295.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.52.vec.extract2908, !dbg !242
  %mul298.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.56.vec.extract2945, !dbg !243
  %mul301.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.60.vec.extract2982, !dbg !244
  %numerator.sroa.290.48.vec.insert2873 = insertelement <4 x float> poison, float %mul292.3.5, i64 0, !dbg !135
  %numerator.sroa.290.52.vec.insert2910 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2873, float %mul295.3.5, i64 1, !dbg !135
  %numerator.sroa.290.56.vec.insert2947 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2910, float %mul298.3.5, i64 2, !dbg !135
  %numerator.sroa.290.60.vec.insert2984 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2947, float %mul301.3.5, i64 3, !dbg !135
  %sub325.5 = fsub contract float %spec.select3496, %455, !dbg !136
  %sub329.5 = fsub contract float %condval.0.1.5, %455, !dbg !137
  %sub333.5 = fsub contract float %condval.0.2.5, %455, !dbg !138
  %sub337.5 = fsub contract float %condval.0.3.5, %455, !dbg !139
  %mul342.5 = fmul contract float %sub325.5, 0x3FC7154760000000, !dbg !140
  %mul346.5 = fmul contract float %sub329.5, 0x3FC7154760000000, !dbg !141
  %mul350.5 = fmul contract float %sub333.5, 0x3FC7154760000000, !dbg !142
  %mul354.5 = fmul contract float %sub337.5, 0x3FC7154760000000, !dbg !143
  %add359.5 = fadd contract float %mul342.5, 8.000000e+00, !dbg !144
  %add363.5 = fadd contract float %mul346.5, 8.000000e+00, !dbg !145
  %add367.5 = fadd contract float %mul350.5, 8.000000e+00, !dbg !146
  %add371.5 = fadd contract float %mul354.5, 8.000000e+00, !dbg !147
  %cmp.i.i781.5 = fcmp contract olt float %add359.5, -1.260000e+02, !dbg !148
  %cond.i.i782.5 = select contract i1 %cmp.i.i781.5, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i783.5 = fadd contract float %add359.5, %cond.i.i782.5, !dbg !148
  %457 = tail call contract float @llvm.exp2.f32(float %add.i.i783.5), !dbg !148
  %cond2.i.i784.5 = select contract i1 %cmp.i.i781.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i785.5 = fmul contract float %cond2.i.i784.5, %457, !dbg !148
  %cmp.i.i786.5 = fcmp contract olt float %add363.5, -1.260000e+02, !dbg !150
  %cond.i.i787.5 = select contract i1 %cmp.i.i786.5, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i788.5 = fadd contract float %add363.5, %cond.i.i787.5, !dbg !150
  %458 = tail call contract float @llvm.exp2.f32(float %add.i.i788.5), !dbg !150
  %cond2.i.i789.5 = select contract i1 %cmp.i.i786.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i790.5 = fmul contract float %cond2.i.i789.5, %458, !dbg !150
  %cmp.i.i791.5 = fcmp contract olt float %add367.5, -1.260000e+02, !dbg !152
  %cond.i.i792.5 = select contract i1 %cmp.i.i791.5, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i793.5 = fadd contract float %add367.5, %cond.i.i792.5, !dbg !152
  %459 = tail call contract float @llvm.exp2.f32(float %add.i.i793.5), !dbg !152
  %cond2.i.i794.5 = select contract i1 %cmp.i.i791.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i795.5 = fmul contract float %cond2.i.i794.5, %459, !dbg !152
  %cmp.i.i796.5 = fcmp contract olt float %add371.5, -1.260000e+02, !dbg !154
  %cond.i.i797.5 = select contract i1 %cmp.i.i796.5, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i798.5 = fadd contract float %add371.5, %cond.i.i797.5, !dbg !154
  %460 = tail call contract float @llvm.exp2.f32(float %add.i.i798.5), !dbg !154
  %cond2.i.i799.5 = select contract i1 %cmp.i.i796.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i800.5 = fmul contract float %cond2.i.i799.5, %460, !dbg !154
  %461 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !156, !noalias !164
  %462 = fptrunc float %mul.i.i785.5 to half, !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %461), !dbg !156, !noalias !164
  %463 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !164
  %464 = fptrunc float %mul.i.i790.5 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %463), !dbg !169, !noalias !164
  %465 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !175
  %466 = fptrunc float %mul.i.i795.5 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %465), !dbg !171, !noalias !175
  %467 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !180, !noalias !175
  %468 = fptrunc float %mul.i.i800.5 to half, !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %467), !dbg !180, !noalias !175
  %469 = insertelement <4 x half> poison, half %462, i64 0, !dbg !182
  %470 = insertelement <4 x half> %469, half %464, i64 1, !dbg !182
  %471 = insertelement <4 x half> %470, half %466, i64 2, !dbg !182
  %472 = insertelement <4 x half> %471, half %468, i64 3, !dbg !182
  %conv.i.i.5 = fpext half %462 to float, !dbg !183
  %add405.5 = fadd contract float %conv.i.i.5, 0.000000e+00, !dbg !188
  %conv.i.i.1.5 = fpext half %464 to float, !dbg !183
  %add405.1.5 = fadd contract float %add405.5, %conv.i.i.1.5, !dbg !188
  %conv.i.i.2.5 = fpext half %466 to float, !dbg !183
  %add405.2.5 = fadd contract float %add405.1.5, %conv.i.i.2.5, !dbg !188
  %conv.i.i.3.5 = fpext half %468 to float, !dbg !183
  %add405.3.5 = fadd contract float %add405.2.5, %conv.i.i.3.5, !dbg !188
  %473 = bitcast float %add405.3.5 to i32, !dbg !189
  %474 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !191
  %475 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %474) #11, !dbg !194
  %xor.i.i806.5 = xor i32 %475, 32, !dbg !195
  %476 = and i32 %475, -64, !dbg !196
  %and.i.i807.5 = add nsw i32 %476, 64, !dbg !196
  %cmp.not.i.i808.5 = icmp slt i32 %xor.i.i806.5, %and.i.i807.5, !dbg !197
  %cond.i.i809.5 = select i1 %cmp.not.i.i808.5, i32 %xor.i.i806.5, i32 %475, !dbg !198
  %shl.i.i810.5 = shl i32 %cond.i.i809.5, 2, !dbg !199
  %477 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i810.5, i32 %473), !dbg !200
  %478 = bitcast i32 %477 to float, !dbg !201
  %add413.5 = fadd contract float %add405.3.5, %478, !dbg !202
  %479 = bitcast float %add413.5 to i32, !dbg !203
  %480 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %481 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %480) #11, !dbg !208
  %xor.i.i811.5 = xor i32 %481, 16, !dbg !209
  %482 = and i32 %481, -64, !dbg !210
  %and.i.i812.5 = add nsw i32 %482, 64, !dbg !210
  %cmp.not.i.i813.5 = icmp slt i32 %xor.i.i811.5, %and.i.i812.5, !dbg !211
  %cond.i.i814.5 = select i1 %cmp.not.i.i813.5, i32 %xor.i.i811.5, i32 %481, !dbg !212
  %shl.i.i815.5 = shl i32 %cond.i.i814.5, 2, !dbg !213
  %483 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i815.5, i32 %479), !dbg !214
  %484 = bitcast i32 %483 to float, !dbg !215
  %add418.5 = fadd contract float %add413.5, %484, !dbg !216
  fence syncscope("warp") release, !dbg !217
  tail call void @llvm.mxc.barrier.warp(), !dbg !220
  fence syncscope("warp") acquire, !dbg !221
  %485 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add438, !dbg !222
  %486 = getelementptr inbounds i8, ptr addrspace(4) %485, i64 %.idx.5, !dbg !222
  %487 = load i64, ptr addrspace(4) %486, align 8, !dbg !223
  %add.ptr447.1.5 = getelementptr inbounds i8, ptr addrspace(4) %486, i64 128, !dbg !222
  %488 = load i64, ptr addrspace(4) %add.ptr447.1.5, align 8, !dbg !223
  %add.ptr447.2.5 = getelementptr inbounds i8, ptr addrspace(4) %486, i64 256, !dbg !222
  %489 = load i64, ptr addrspace(4) %add.ptr447.2.5, align 8, !dbg !223
  %add.ptr447.3.5 = getelementptr inbounds i8, ptr addrspace(4) %486, i64 384, !dbg !222
  %490 = load i64, ptr addrspace(4) %add.ptr447.3.5, align 8, !dbg !223
  %mul312.5 = fmul contract float %denominator.sroa.0.1.4, %mul.i.i.5, !dbg !245
  %491 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %mul477, !dbg !224
  %add.ptr489.idx.5 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.5 = getelementptr inbounds i8, ptr addrspace(3) %491, i32 %add.ptr489.idx.5, !dbg !224
  %v_column.sroa.130.0.insert.ext1560 = shl i64 %490, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext1405 = shl i64 %489, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift1406 = and i64 %v_column.sroa.98.0.insert.ext1405, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1408 = or disjoint i64 %v_column.sroa.130.0.insert.ext1560, %v_column.sroa.98.0.insert.shift1406, !dbg !225
  %v_column.sroa.66.0.insert.ext1250 = shl i64 %488, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1251 = and i64 %v_column.sroa.66.0.insert.ext1250, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1253 = or disjoint i64 %v_column.sroa.98.0.insert.insert1408, %v_column.sroa.66.0.insert.shift1251, !dbg !225
  %v_column.sroa.0.0.insert.ext1107 = and i64 %487, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1109 = or disjoint i64 %v_column.sroa.66.0.insert.insert1253, %v_column.sroa.0.0.insert.ext1107, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1109, ptr addrspace(3) %add.ptr489.5, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1706 = lshr i64 %487, 16, !dbg !226
  %add478.1.5 = or disjoint i32 %mul477, 256, !dbg !227
  %492 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.1.5, !dbg !224
  %xor485.1.5 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.1.5 = xor i32 %xor485.1.5, 8, !dbg !224
  %add.ptr489.1.5 = getelementptr inbounds i8, ptr addrspace(3) %492, i32 %add.ptr489.idx.1.5, !dbg !224
  %493 = shl i64 %490, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1565 = and i64 %493, -281474976710656, !dbg !225
  %494 = shl i64 %489, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1411 = and i64 %494, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1413 = or disjoint i64 %v_column.sroa.130.0.insert.ext1565, %v_column.sroa.98.0.insert.shift1411, !dbg !225
  %v_column.sroa.66.0.insert.ext1255 = and i64 %488, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1258 = or disjoint i64 %v_column.sroa.98.0.insert.insert1413, %v_column.sroa.66.0.insert.ext1255, !dbg !225
  %v_column.sroa.0.0.insert.ext1111 = and i64 %v_fetch.sroa.0.2.extract.shift1706, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1113 = or disjoint i64 %v_column.sroa.66.0.insert.insert1258, %v_column.sroa.0.0.insert.ext1111, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1113, ptr addrspace(3) %add.ptr489.1.5, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1727 = lshr i64 %487, 32, !dbg !226
  %add478.2.5 = or disjoint i32 %mul477, 512, !dbg !227
  %495 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.2.5, !dbg !224
  %xor485.2.5 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.2.5 = xor i32 %xor485.2.5, 16, !dbg !224
  %add.ptr489.2.5 = getelementptr inbounds i8, ptr addrspace(3) %495, i32 %add.ptr489.idx.2.5, !dbg !224
  %496 = shl i64 %490, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1570 = and i64 %496, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1415 = and i64 %489, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1418 = or disjoint i64 %v_column.sroa.130.0.insert.ext1570, %v_column.sroa.98.0.insert.ext1415, !dbg !225
  %497 = lshr i64 %488, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1261 = and i64 %497, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1263 = or disjoint i64 %v_column.sroa.98.0.insert.insert1418, %v_column.sroa.66.0.insert.shift1261, !dbg !225
  %v_column.sroa.0.0.insert.ext1115 = and i64 %v_fetch.sroa.0.4.extract.shift1727, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1117 = or disjoint i64 %v_column.sroa.66.0.insert.insert1263, %v_column.sroa.0.0.insert.ext1115, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1117, ptr addrspace(3) %add.ptr489.2.5, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1748 = lshr i64 %487, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift1979 = and i64 %490, -281474976710656, !dbg !225
  %add478.3.5 = or disjoint i32 %mul477, 768, !dbg !227
  %498 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.3.5, !dbg !224
  %xor485.3.5 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.3.5 = xor i32 %xor485.3.5, 24, !dbg !224
  %add.ptr489.3.5 = getelementptr inbounds i8, ptr addrspace(3) %498, i32 %add.ptr489.idx.3.5, !dbg !224
  %499 = lshr i64 %489, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1421 = and i64 %499, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1423 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1979, %v_column.sroa.98.0.insert.shift1421, !dbg !225
  %500 = lshr i64 %488, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1266 = and i64 %500, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1268 = or disjoint i64 %v_column.sroa.98.0.insert.insert1423, %v_column.sroa.66.0.insert.shift1266, !dbg !225
  %v_column.sroa.0.0.insert.insert1121 = or disjoint i64 %v_column.sroa.66.0.insert.insert1268, %v_fetch.sroa.0.6.extract.shift1748, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1121, ptr addrspace(3) %add.ptr489.3.5, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add506.5 = or disjoint i32 %mul499, %mul505, !dbg !233
  %501 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.5, !dbg !234
  %add.ptr516.idx.5 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.5 = getelementptr inbounds i8, ptr addrspace(3) %501, i32 %add.ptr516.idx.5, !dbg !234
  %502 = load <4 x half>, ptr addrspace(3) %add.ptr516.5, align 8, !dbg !235
  %add501.1.5 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.1.5 = or disjoint i32 %add501.1.5, 64, !dbg !233
  %503 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.1.5, !dbg !234
  %xor512.1.5 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.1.5 = xor i32 %xor512.1.5, 8, !dbg !234
  %add.ptr516.1.5 = getelementptr inbounds i8, ptr addrspace(3) %503, i32 %add.ptr516.idx.1.5, !dbg !234
  %504 = load <4 x half>, ptr addrspace(3) %add.ptr516.1.5, align 8, !dbg !235
  %add501.2.5 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.2.5 = or disjoint i32 %add501.2.5, 128, !dbg !233
  %505 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.2.5, !dbg !234
  %xor512.2.5 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.2.5 = xor i32 %xor512.2.5, 16, !dbg !234
  %add.ptr516.2.5 = getelementptr inbounds i8, ptr addrspace(3) %505, i32 %add.ptr516.idx.2.5, !dbg !234
  %506 = load <4 x half>, ptr addrspace(3) %add.ptr516.2.5, align 8, !dbg !235
  %add501.3.5 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.3.5 = or disjoint i32 %add501.3.5, 192, !dbg !233
  %507 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.3.5, !dbg !234
  %xor512.3.5 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.3.5 = xor i32 %xor512.3.5, 24, !dbg !234
  %add.ptr516.3.5 = getelementptr inbounds i8, ptr addrspace(3) %507, i32 %add.ptr516.idx.3.5, !dbg !234
  %508 = load <4 x half>, ptr addrspace(3) %add.ptr516.3.5, align 8, !dbg !235
  %509 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %502, <4 x half> %472, <4 x float> %numerator.sroa.0.12.vec.insert2516), !dbg !236
  %510 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %504, <4 x half> %472, <4 x float> %numerator.sroa.98.28.vec.insert2672), !dbg !236
  %511 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %506, <4 x half> %472, <4 x float> %numerator.sroa.194.44.vec.insert2828), !dbg !236
  %512 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %508, <4 x half> %472, <4 x float> %numerator.sroa.290.60.vec.insert2984), !dbg !236
  %add422.5 = fadd contract float %mul312.5, %add418.5, !dbg !237
  br label %if.end542.5, !dbg !238

if.end542.5:                                      ; preds = %if.then.5, %if.end542.4
  %numerator.sroa.290.5 = phi <4 x float> [ %numerator.sroa.290.4, %if.end542.4 ], [ %512, %if.then.5 ], !dbg !239
  %numerator.sroa.194.5 = phi <4 x float> [ %numerator.sroa.194.4, %if.end542.4 ], [ %511, %if.then.5 ], !dbg !239
  %numerator.sroa.98.5 = phi <4 x float> [ %numerator.sroa.98.4, %if.end542.4 ], [ %510, %if.then.5 ], !dbg !239
  %numerator.sroa.0.5 = phi <4 x float> [ %numerator.sroa.0.4, %if.end542.4 ], [ %509, %if.then.5 ], !dbg !239
  %maximum.sroa.0.1.5 = phi float [ %maximum.sroa.0.1.4, %if.end542.4 ], [ %455, %if.then.5 ], !dbg !239
  %denominator.sroa.0.1.5 = phi float [ %denominator.sroa.0.1.4, %if.end542.4 ], [ %add422.5, %if.then.5 ], !dbg !239
  %513 = or disjoint i64 %15, 6, !dbg !240
  %arrayidx108.6 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %513, !dbg !66
  %514 = load i32, ptr addrspace(1) %arrayidx108.6, align 4, !dbg !66, !tbaa !30
  %mul109.6 = shl nsw i32 %514, 4, !dbg !67
  %cmp110.6 = icmp slt i32 %514, 0, !dbg !68
  %cmp112.not.6 = icmp sgt i32 %mul109.6, %1
  %or.cond.6 = select i1 %cmp110.6, i1 true, i1 %cmp112.not.6, !dbg !69
  br i1 %or.cond.6, label %if.end542.6, label %if.then.6, !dbg !69

if.then.6:                                        ; preds = %if.end542.5
  fence syncscope("warp") release, !dbg !70
  tail call void @llvm.mxc.barrier.warp(), !dbg !73
  fence syncscope("warp") acquire, !dbg !74
  %conv122.6 = zext nneg i32 %mul109.6 to i64
  %.idx.6 = shl nuw nsw i64 %conv122.6, 7
  %gep.6 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep864, i64 %.idx.6, !dbg !75
  %.idx872.6 = shl nuw nsw i64 %conv, 17, !dbg !76
  %515 = getelementptr inbounds i8, ptr addrspace(4) %gep.6, i64 %.idx872.6, !dbg !76
  %qk_fetch.sroa.0.0.copyload3276 = load i32, ptr addrspace(4) %515, align 16, !dbg !77, !tbaa !30
  %qk_fetch.sroa.56.0..sroa_idx3298 = getelementptr inbounds i8, ptr addrspace(4) %515, i64 4, !dbg !77
  %qk_fetch.sroa.56.0.copyload3299 = load i32, ptr addrspace(4) %qk_fetch.sroa.56.0..sroa_idx3298, align 4, !dbg !77, !tbaa !30
  %qk_fetch.sroa.92.0..sroa_idx3322 = getelementptr inbounds i8, ptr addrspace(4) %515, i64 8, !dbg !77
  %qk_fetch.sroa.92.0.copyload3323 = load i32, ptr addrspace(4) %qk_fetch.sroa.92.0..sroa_idx3322, align 8, !dbg !77, !tbaa !30
  %qk_fetch.sroa.128.0..sroa_idx3346 = getelementptr inbounds i8, ptr addrspace(4) %515, i64 12, !dbg !77
  %qk_fetch.sroa.128.0.copyload3347 = load i32, ptr addrspace(4) %qk_fetch.sroa.128.0..sroa_idx3346, align 4, !dbg !77, !tbaa !30
  %cond150.6.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.0.0.copyload3276, i32 %qk_fetch.sroa.92.0.copyload3323, !dbg !78
  %cond150.1.6.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.56.0.copyload3299, i32 %qk_fetch.sroa.128.0.copyload3347, !dbg !78
  %cond150.2.6.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.92.0.copyload3323, i32 %qk_fetch.sroa.0.0.copyload3276, !dbg !78
  %cond150.3.6.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.128.0.copyload3347, i32 %qk_fetch.sroa.56.0.copyload3299, !dbg !78
  store i32 %cond150.6.sroa.speculated, ptr addrspace(3) %invariant.gep836, align 16, !dbg !79, !tbaa !30
  store i32 %cond150.1.6.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.38.0.invariant.gep836.sroa_idx, align 4, !dbg !79, !tbaa !30
  store i32 %cond150.2.6.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.56.0.invariant.gep836.sroa_idx, align 8, !dbg !79, !tbaa !30
  store i32 %cond150.3.6.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.74.0.invariant.gep836.sroa_idx, align 4, !dbg !79, !tbaa !30
  %gep844.1.6 = getelementptr inbounds i8, ptr addrspace(4) %515, i64 1024, !dbg !76
  %qk_fetch.sroa.0.0.copyload3277 = load i32, ptr addrspace(4) %gep844.1.6, align 16, !dbg !77, !tbaa !30
  %qk_fetch.sroa.56.0.gep844.1.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %515, i64 1028, !dbg !77
  %qk_fetch.sroa.56.0.copyload3300 = load i32, ptr addrspace(4) %qk_fetch.sroa.56.0.gep844.1.6.sroa_idx, align 4, !dbg !77, !tbaa !30
  %qk_fetch.sroa.92.0.gep844.1.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %515, i64 1032, !dbg !77
  %qk_fetch.sroa.92.0.copyload3324 = load i32, ptr addrspace(4) %qk_fetch.sroa.92.0.gep844.1.6.sroa_idx, align 8, !dbg !77, !tbaa !30
  %qk_fetch.sroa.128.0.gep844.1.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %515, i64 1036, !dbg !77
  %qk_fetch.sroa.128.0.copyload3348 = load i32, ptr addrspace(4) %qk_fetch.sroa.128.0.gep844.1.6.sroa_idx, align 4, !dbg !77, !tbaa !30
  %cond150.1884.6.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.92.0.copyload3324, i32 %qk_fetch.sroa.0.0.copyload3277, !dbg !78
  %cond150.1.1.6.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.128.0.copyload3348, i32 %qk_fetch.sroa.56.0.copyload3300, !dbg !78
  %cond150.2.1.6.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.0.0.copyload3277, i32 %qk_fetch.sroa.92.0.copyload3324, !dbg !78
  %cond150.3.1.6.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.56.0.copyload3300, i32 %qk_fetch.sroa.128.0.copyload3348, !dbg !78
  store i32 %cond150.1884.6.sroa.speculated, ptr addrspace(3) %gep837.1, align 16, !dbg !79, !tbaa !30
  store i32 %cond150.1.1.6.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.38.0.gep837.1.sroa_idx, align 4, !dbg !79, !tbaa !30
  store i32 %cond150.2.1.6.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.56.0.gep837.1.sroa_idx, align 8, !dbg !79, !tbaa !30
  store i32 %cond150.3.1.6.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.74.0.gep837.1.sroa_idx, align 4, !dbg !79, !tbaa !30
  fence syncscope("warp") release, !dbg !80
  tail call void @llvm.mxc.barrier.warp(), !dbg !83
  fence syncscope("warp") acquire, !dbg !84
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %add.ptr74, align 8, !dbg !85
  %516 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %6, <4 x float> zeroinitializer), !dbg !86
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr74.1, align 8, !dbg !85
  %517 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %7, <4 x float> %516), !dbg !86
  %k_local.sroa.0.0.copyload.2.6 = load <4 x half>, ptr addrspace(3) %add.ptr74.2, align 8, !dbg !85
  %518 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.6, <4 x half> %8, <4 x float> %517), !dbg !86
  %k_local.sroa.0.0.copyload.3.6 = load <4 x half>, ptr addrspace(3) %add.ptr74.3, align 8, !dbg !85
  %519 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.6, <4 x half> %9, <4 x float> %518), !dbg !86
  %add230.6 = add nuw nsw i32 %mul109.6, %mul229
  %cmp233.not.6 = icmp sgt i32 %add230.6, %1, !dbg !87
  %scores.sroa.0.0.vec.extract2127 = extractelement <4 x float> %519, i64 0
  %spec.select3497 = select i1 %cmp233.not.6, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2127, !dbg !88
  %cmp233.not.1.6.not = icmp slt i32 %add230.6, %1, !dbg !87
  %scores.sroa.0.4.vec.extract2210 = extractelement <4 x float> %519, i64 1, !dbg !88
  %condval.0.1.6 = select i1 %cmp233.not.1.6.not, float %scores.sroa.0.4.vec.extract2210, float 0xFFF0000000000000, !dbg !88
  %add231.2.6 = or disjoint i32 %add230.6, 2, !dbg !89
  %cmp233.not.2.6 = icmp sgt i32 %add231.2.6, %1, !dbg !87
  %scores.sroa.0.8.vec.extract2287 = extractelement <4 x float> %519, i64 2, !dbg !88
  %condval.0.2.6 = select i1 %cmp233.not.2.6, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2287, !dbg !88
  %add231.3.6 = or disjoint i32 %add230.6, 3, !dbg !89
  %cmp233.not.3.6 = icmp sgt i32 %add231.3.6, %1, !dbg !87
  %scores.sroa.0.12.vec.extract2364 = extractelement <4 x float> %519, i64 3, !dbg !88
  %condval.0.3.6 = select i1 %cmp233.not.3.6, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2364, !dbg !88
  %520 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3497, float 0xFFF0000000000000), !dbg !90
  %521 = tail call contract noundef float @llvm.maxnum.f32(float %520, float %condval.0.1.6), !dbg !90
  %522 = tail call contract noundef float @llvm.maxnum.f32(float %521, float %condval.0.2.6), !dbg !90
  %523 = tail call contract noundef float @llvm.maxnum.f32(float %522, float %condval.0.3.6), !dbg !90
  %524 = bitcast float %523 to i32, !dbg !94
  %525 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !97
  %526 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %525) #11, !dbg !102
  %xor.i.i.6 = xor i32 %526, 32, !dbg !103
  %527 = and i32 %526, -64, !dbg !104
  %and.i.i.6 = add nsw i32 %527, 64, !dbg !104
  %cmp.not.i.i.6 = icmp slt i32 %xor.i.i.6, %and.i.i.6, !dbg !105
  %cond.i.i.6 = select i1 %cmp.not.i.i.6, i32 %xor.i.i.6, i32 %526, !dbg !106
  %shl.i.i.6 = shl i32 %cond.i.i.6, 2, !dbg !107
  %528 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.6, i32 %524), !dbg !108
  %529 = bitcast i32 %528 to float, !dbg !109
  %530 = tail call contract noundef float @llvm.maxnum.f32(float %523, float %529), !dbg !110
  %531 = bitcast float %530 to i32, !dbg !112
  %532 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !114
  %533 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %532) #11, !dbg !117
  %xor.i.i775.6 = xor i32 %533, 16, !dbg !118
  %534 = and i32 %533, -64, !dbg !119
  %and.i.i776.6 = add nsw i32 %534, 64, !dbg !119
  %cmp.not.i.i777.6 = icmp slt i32 %xor.i.i775.6, %and.i.i776.6, !dbg !120
  %cond.i.i778.6 = select i1 %cmp.not.i.i777.6, i32 %xor.i.i775.6, i32 %533, !dbg !121
  %shl.i.i779.6 = shl i32 %cond.i.i778.6, 2, !dbg !122
  %535 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i779.6, i32 %531), !dbg !123
  %536 = bitcast i32 %535 to float, !dbg !124
  %537 = tail call contract noundef float @llvm.maxnum.f32(float %530, float %536), !dbg !125
  %538 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.5, float %537), !dbg !127
  %sub.6 = fsub contract float %maximum.sroa.0.1.5, %538, !dbg !129
  %mul275.6 = fmul contract float %sub.6, 0x3FC7154760000000, !dbg !130
  %cmp.i.i.6 = fcmp contract olt float %mul275.6, -1.260000e+02, !dbg !131
  %cond.i.i780.6 = select contract i1 %cmp.i.i.6, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i.6 = fadd contract float %mul275.6, %cond.i.i780.6, !dbg !131
  %539 = tail call contract float @llvm.exp2.f32(float %add.i.i.6), !dbg !131
  %cond2.i.i.6 = select contract i1 %cmp.i.i.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i.6 = fmul contract float %cond2.i.i.6, %539, !dbg !131
  %numerator.sroa.0.0.vec.extract2407 = extractelement <4 x float> %numerator.sroa.0.5, i64 0, !dbg !241
  %numerator.sroa.0.4.vec.extract2444 = extractelement <4 x float> %numerator.sroa.0.5, i64 1, !dbg !241
  %numerator.sroa.0.8.vec.extract2481 = extractelement <4 x float> %numerator.sroa.0.5, i64 2, !dbg !241
  %numerator.sroa.0.12.vec.extract2518 = extractelement <4 x float> %numerator.sroa.0.5, i64 3, !dbg !241
  %mul292.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.0.vec.extract2407, !dbg !134
  %mul295.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.4.vec.extract2444, !dbg !242
  %mul298.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.8.vec.extract2481, !dbg !243
  %mul301.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.12.vec.extract2518, !dbg !244
  %numerator.sroa.0.0.vec.insert2409 = insertelement <4 x float> poison, float %mul292.6, i64 0, !dbg !135
  %numerator.sroa.0.4.vec.insert2446 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2409, float %mul295.6, i64 1, !dbg !135
  %numerator.sroa.0.8.vec.insert2483 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2446, float %mul298.6, i64 2, !dbg !135
  %numerator.sroa.0.12.vec.insert2520 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2483, float %mul301.6, i64 3, !dbg !135
  %numerator.sroa.98.16.vec.extract2563 = extractelement <4 x float> %numerator.sroa.98.5, i64 0, !dbg !241
  %numerator.sroa.98.20.vec.extract2600 = extractelement <4 x float> %numerator.sroa.98.5, i64 1, !dbg !241
  %numerator.sroa.98.24.vec.extract2637 = extractelement <4 x float> %numerator.sroa.98.5, i64 2, !dbg !241
  %numerator.sroa.98.28.vec.extract2674 = extractelement <4 x float> %numerator.sroa.98.5, i64 3, !dbg !241
  %mul292.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.16.vec.extract2563, !dbg !134
  %mul295.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.20.vec.extract2600, !dbg !242
  %mul298.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.24.vec.extract2637, !dbg !243
  %mul301.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.28.vec.extract2674, !dbg !244
  %numerator.sroa.98.16.vec.insert2565 = insertelement <4 x float> poison, float %mul292.1.6, i64 0, !dbg !135
  %numerator.sroa.98.20.vec.insert2602 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2565, float %mul295.1.6, i64 1, !dbg !135
  %numerator.sroa.98.24.vec.insert2639 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2602, float %mul298.1.6, i64 2, !dbg !135
  %numerator.sroa.98.28.vec.insert2676 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2639, float %mul301.1.6, i64 3, !dbg !135
  %numerator.sroa.194.32.vec.extract2719 = extractelement <4 x float> %numerator.sroa.194.5, i64 0, !dbg !241
  %numerator.sroa.194.36.vec.extract2756 = extractelement <4 x float> %numerator.sroa.194.5, i64 1, !dbg !241
  %numerator.sroa.194.40.vec.extract2793 = extractelement <4 x float> %numerator.sroa.194.5, i64 2, !dbg !241
  %numerator.sroa.194.44.vec.extract2830 = extractelement <4 x float> %numerator.sroa.194.5, i64 3, !dbg !241
  %mul292.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.32.vec.extract2719, !dbg !134
  %mul295.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.36.vec.extract2756, !dbg !242
  %mul298.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.40.vec.extract2793, !dbg !243
  %mul301.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.44.vec.extract2830, !dbg !244
  %numerator.sroa.194.32.vec.insert2721 = insertelement <4 x float> poison, float %mul292.2.6, i64 0, !dbg !135
  %numerator.sroa.194.36.vec.insert2758 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2721, float %mul295.2.6, i64 1, !dbg !135
  %numerator.sroa.194.40.vec.insert2795 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2758, float %mul298.2.6, i64 2, !dbg !135
  %numerator.sroa.194.44.vec.insert2832 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2795, float %mul301.2.6, i64 3, !dbg !135
  %numerator.sroa.290.48.vec.extract2875 = extractelement <4 x float> %numerator.sroa.290.5, i64 0, !dbg !241
  %numerator.sroa.290.52.vec.extract2912 = extractelement <4 x float> %numerator.sroa.290.5, i64 1, !dbg !241
  %numerator.sroa.290.56.vec.extract2949 = extractelement <4 x float> %numerator.sroa.290.5, i64 2, !dbg !241
  %numerator.sroa.290.60.vec.extract2986 = extractelement <4 x float> %numerator.sroa.290.5, i64 3, !dbg !241
  %mul292.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.48.vec.extract2875, !dbg !134
  %mul295.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.52.vec.extract2912, !dbg !242
  %mul298.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.56.vec.extract2949, !dbg !243
  %mul301.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.60.vec.extract2986, !dbg !244
  %numerator.sroa.290.48.vec.insert2877 = insertelement <4 x float> poison, float %mul292.3.6, i64 0, !dbg !135
  %numerator.sroa.290.52.vec.insert2914 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2877, float %mul295.3.6, i64 1, !dbg !135
  %numerator.sroa.290.56.vec.insert2951 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2914, float %mul298.3.6, i64 2, !dbg !135
  %numerator.sroa.290.60.vec.insert2988 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2951, float %mul301.3.6, i64 3, !dbg !135
  %sub325.6 = fsub contract float %spec.select3497, %538, !dbg !136
  %sub329.6 = fsub contract float %condval.0.1.6, %538, !dbg !137
  %sub333.6 = fsub contract float %condval.0.2.6, %538, !dbg !138
  %sub337.6 = fsub contract float %condval.0.3.6, %538, !dbg !139
  %mul342.6 = fmul contract float %sub325.6, 0x3FC7154760000000, !dbg !140
  %mul346.6 = fmul contract float %sub329.6, 0x3FC7154760000000, !dbg !141
  %mul350.6 = fmul contract float %sub333.6, 0x3FC7154760000000, !dbg !142
  %mul354.6 = fmul contract float %sub337.6, 0x3FC7154760000000, !dbg !143
  %add359.6 = fadd contract float %mul342.6, 8.000000e+00, !dbg !144
  %add363.6 = fadd contract float %mul346.6, 8.000000e+00, !dbg !145
  %add367.6 = fadd contract float %mul350.6, 8.000000e+00, !dbg !146
  %add371.6 = fadd contract float %mul354.6, 8.000000e+00, !dbg !147
  %cmp.i.i781.6 = fcmp contract olt float %add359.6, -1.260000e+02, !dbg !148
  %cond.i.i782.6 = select contract i1 %cmp.i.i781.6, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i783.6 = fadd contract float %add359.6, %cond.i.i782.6, !dbg !148
  %540 = tail call contract float @llvm.exp2.f32(float %add.i.i783.6), !dbg !148
  %cond2.i.i784.6 = select contract i1 %cmp.i.i781.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i785.6 = fmul contract float %cond2.i.i784.6, %540, !dbg !148
  %cmp.i.i786.6 = fcmp contract olt float %add363.6, -1.260000e+02, !dbg !150
  %cond.i.i787.6 = select contract i1 %cmp.i.i786.6, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i788.6 = fadd contract float %add363.6, %cond.i.i787.6, !dbg !150
  %541 = tail call contract float @llvm.exp2.f32(float %add.i.i788.6), !dbg !150
  %cond2.i.i789.6 = select contract i1 %cmp.i.i786.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i790.6 = fmul contract float %cond2.i.i789.6, %541, !dbg !150
  %cmp.i.i791.6 = fcmp contract olt float %add367.6, -1.260000e+02, !dbg !152
  %cond.i.i792.6 = select contract i1 %cmp.i.i791.6, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i793.6 = fadd contract float %add367.6, %cond.i.i792.6, !dbg !152
  %542 = tail call contract float @llvm.exp2.f32(float %add.i.i793.6), !dbg !152
  %cond2.i.i794.6 = select contract i1 %cmp.i.i791.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i795.6 = fmul contract float %cond2.i.i794.6, %542, !dbg !152
  %cmp.i.i796.6 = fcmp contract olt float %add371.6, -1.260000e+02, !dbg !154
  %cond.i.i797.6 = select contract i1 %cmp.i.i796.6, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i798.6 = fadd contract float %add371.6, %cond.i.i797.6, !dbg !154
  %543 = tail call contract float @llvm.exp2.f32(float %add.i.i798.6), !dbg !154
  %cond2.i.i799.6 = select contract i1 %cmp.i.i796.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i800.6 = fmul contract float %cond2.i.i799.6, %543, !dbg !154
  %544 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !156, !noalias !164
  %545 = fptrunc float %mul.i.i785.6 to half, !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %544), !dbg !156, !noalias !164
  %546 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !164
  %547 = fptrunc float %mul.i.i790.6 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %546), !dbg !169, !noalias !164
  %548 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !175
  %549 = fptrunc float %mul.i.i795.6 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %548), !dbg !171, !noalias !175
  %550 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !180, !noalias !175
  %551 = fptrunc float %mul.i.i800.6 to half, !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %550), !dbg !180, !noalias !175
  %552 = insertelement <4 x half> poison, half %545, i64 0, !dbg !182
  %553 = insertelement <4 x half> %552, half %547, i64 1, !dbg !182
  %554 = insertelement <4 x half> %553, half %549, i64 2, !dbg !182
  %555 = insertelement <4 x half> %554, half %551, i64 3, !dbg !182
  %conv.i.i.6 = fpext half %545 to float, !dbg !183
  %add405.6 = fadd contract float %conv.i.i.6, 0.000000e+00, !dbg !188
  %conv.i.i.1.6 = fpext half %547 to float, !dbg !183
  %add405.1.6 = fadd contract float %add405.6, %conv.i.i.1.6, !dbg !188
  %conv.i.i.2.6 = fpext half %549 to float, !dbg !183
  %add405.2.6 = fadd contract float %add405.1.6, %conv.i.i.2.6, !dbg !188
  %conv.i.i.3.6 = fpext half %551 to float, !dbg !183
  %add405.3.6 = fadd contract float %add405.2.6, %conv.i.i.3.6, !dbg !188
  %556 = bitcast float %add405.3.6 to i32, !dbg !189
  %557 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !191
  %558 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %557) #11, !dbg !194
  %xor.i.i806.6 = xor i32 %558, 32, !dbg !195
  %559 = and i32 %558, -64, !dbg !196
  %and.i.i807.6 = add nsw i32 %559, 64, !dbg !196
  %cmp.not.i.i808.6 = icmp slt i32 %xor.i.i806.6, %and.i.i807.6, !dbg !197
  %cond.i.i809.6 = select i1 %cmp.not.i.i808.6, i32 %xor.i.i806.6, i32 %558, !dbg !198
  %shl.i.i810.6 = shl i32 %cond.i.i809.6, 2, !dbg !199
  %560 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i810.6, i32 %556), !dbg !200
  %561 = bitcast i32 %560 to float, !dbg !201
  %add413.6 = fadd contract float %add405.3.6, %561, !dbg !202
  %562 = bitcast float %add413.6 to i32, !dbg !203
  %563 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %564 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %563) #11, !dbg !208
  %xor.i.i811.6 = xor i32 %564, 16, !dbg !209
  %565 = and i32 %564, -64, !dbg !210
  %and.i.i812.6 = add nsw i32 %565, 64, !dbg !210
  %cmp.not.i.i813.6 = icmp slt i32 %xor.i.i811.6, %and.i.i812.6, !dbg !211
  %cond.i.i814.6 = select i1 %cmp.not.i.i813.6, i32 %xor.i.i811.6, i32 %564, !dbg !212
  %shl.i.i815.6 = shl i32 %cond.i.i814.6, 2, !dbg !213
  %566 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i815.6, i32 %562), !dbg !214
  %567 = bitcast i32 %566 to float, !dbg !215
  %add418.6 = fadd contract float %add413.6, %567, !dbg !216
  fence syncscope("warp") release, !dbg !217
  tail call void @llvm.mxc.barrier.warp(), !dbg !220
  fence syncscope("warp") acquire, !dbg !221
  %568 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add438, !dbg !222
  %569 = getelementptr inbounds i8, ptr addrspace(4) %568, i64 %.idx.6, !dbg !222
  %570 = load i64, ptr addrspace(4) %569, align 8, !dbg !223
  %add.ptr447.1.6 = getelementptr inbounds i8, ptr addrspace(4) %569, i64 128, !dbg !222
  %571 = load i64, ptr addrspace(4) %add.ptr447.1.6, align 8, !dbg !223
  %add.ptr447.2.6 = getelementptr inbounds i8, ptr addrspace(4) %569, i64 256, !dbg !222
  %572 = load i64, ptr addrspace(4) %add.ptr447.2.6, align 8, !dbg !223
  %add.ptr447.3.6 = getelementptr inbounds i8, ptr addrspace(4) %569, i64 384, !dbg !222
  %573 = load i64, ptr addrspace(4) %add.ptr447.3.6, align 8, !dbg !223
  %mul312.6 = fmul contract float %denominator.sroa.0.1.5, %mul.i.i.6, !dbg !245
  %574 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %mul477, !dbg !224
  %add.ptr489.idx.6 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.6 = getelementptr inbounds i8, ptr addrspace(3) %574, i32 %add.ptr489.idx.6, !dbg !224
  %v_column.sroa.130.0.insert.ext1580 = shl i64 %573, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext1425 = shl i64 %572, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift1426 = and i64 %v_column.sroa.98.0.insert.ext1425, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1428 = or disjoint i64 %v_column.sroa.130.0.insert.ext1580, %v_column.sroa.98.0.insert.shift1426, !dbg !225
  %v_column.sroa.66.0.insert.ext1270 = shl i64 %571, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1271 = and i64 %v_column.sroa.66.0.insert.ext1270, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1273 = or disjoint i64 %v_column.sroa.98.0.insert.insert1428, %v_column.sroa.66.0.insert.shift1271, !dbg !225
  %v_column.sroa.0.0.insert.ext1123 = and i64 %570, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1125 = or disjoint i64 %v_column.sroa.66.0.insert.insert1273, %v_column.sroa.0.0.insert.ext1123, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1125, ptr addrspace(3) %add.ptr489.6, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1709 = lshr i64 %570, 16, !dbg !226
  %add478.1.6 = or disjoint i32 %mul477, 256, !dbg !227
  %575 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.1.6, !dbg !224
  %xor485.1.6 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.1.6 = xor i32 %xor485.1.6, 8, !dbg !224
  %add.ptr489.1.6 = getelementptr inbounds i8, ptr addrspace(3) %575, i32 %add.ptr489.idx.1.6, !dbg !224
  %576 = shl i64 %573, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1585 = and i64 %576, -281474976710656, !dbg !225
  %577 = shl i64 %572, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1431 = and i64 %577, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1433 = or disjoint i64 %v_column.sroa.130.0.insert.ext1585, %v_column.sroa.98.0.insert.shift1431, !dbg !225
  %v_column.sroa.66.0.insert.ext1275 = and i64 %571, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1278 = or disjoint i64 %v_column.sroa.98.0.insert.insert1433, %v_column.sroa.66.0.insert.ext1275, !dbg !225
  %v_column.sroa.0.0.insert.ext1127 = and i64 %v_fetch.sroa.0.2.extract.shift1709, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1129 = or disjoint i64 %v_column.sroa.66.0.insert.insert1278, %v_column.sroa.0.0.insert.ext1127, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1129, ptr addrspace(3) %add.ptr489.1.6, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1730 = lshr i64 %570, 32, !dbg !226
  %add478.2.6 = or disjoint i32 %mul477, 512, !dbg !227
  %578 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.2.6, !dbg !224
  %xor485.2.6 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.2.6 = xor i32 %xor485.2.6, 16, !dbg !224
  %add.ptr489.2.6 = getelementptr inbounds i8, ptr addrspace(3) %578, i32 %add.ptr489.idx.2.6, !dbg !224
  %579 = shl i64 %573, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1590 = and i64 %579, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1435 = and i64 %572, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1438 = or disjoint i64 %v_column.sroa.130.0.insert.ext1590, %v_column.sroa.98.0.insert.ext1435, !dbg !225
  %580 = lshr i64 %571, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1281 = and i64 %580, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1283 = or disjoint i64 %v_column.sroa.98.0.insert.insert1438, %v_column.sroa.66.0.insert.shift1281, !dbg !225
  %v_column.sroa.0.0.insert.ext1131 = and i64 %v_fetch.sroa.0.4.extract.shift1730, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1133 = or disjoint i64 %v_column.sroa.66.0.insert.insert1283, %v_column.sroa.0.0.insert.ext1131, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1133, ptr addrspace(3) %add.ptr489.2.6, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1751 = lshr i64 %570, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift1982 = and i64 %573, -281474976710656, !dbg !225
  %add478.3.6 = or disjoint i32 %mul477, 768, !dbg !227
  %581 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.3.6, !dbg !224
  %xor485.3.6 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.3.6 = xor i32 %xor485.3.6, 24, !dbg !224
  %add.ptr489.3.6 = getelementptr inbounds i8, ptr addrspace(3) %581, i32 %add.ptr489.idx.3.6, !dbg !224
  %582 = lshr i64 %572, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1441 = and i64 %582, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1443 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1982, %v_column.sroa.98.0.insert.shift1441, !dbg !225
  %583 = lshr i64 %571, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1286 = and i64 %583, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1288 = or disjoint i64 %v_column.sroa.98.0.insert.insert1443, %v_column.sroa.66.0.insert.shift1286, !dbg !225
  %v_column.sroa.0.0.insert.insert1137 = or disjoint i64 %v_column.sroa.66.0.insert.insert1288, %v_fetch.sroa.0.6.extract.shift1751, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1137, ptr addrspace(3) %add.ptr489.3.6, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add506.6 = or disjoint i32 %mul499, %mul505, !dbg !233
  %584 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.6, !dbg !234
  %add.ptr516.idx.6 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.6 = getelementptr inbounds i8, ptr addrspace(3) %584, i32 %add.ptr516.idx.6, !dbg !234
  %585 = load <4 x half>, ptr addrspace(3) %add.ptr516.6, align 8, !dbg !235
  %add501.1.6 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.1.6 = or disjoint i32 %add501.1.6, 64, !dbg !233
  %586 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.1.6, !dbg !234
  %xor512.1.6 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.1.6 = xor i32 %xor512.1.6, 8, !dbg !234
  %add.ptr516.1.6 = getelementptr inbounds i8, ptr addrspace(3) %586, i32 %add.ptr516.idx.1.6, !dbg !234
  %587 = load <4 x half>, ptr addrspace(3) %add.ptr516.1.6, align 8, !dbg !235
  %add501.2.6 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.2.6 = or disjoint i32 %add501.2.6, 128, !dbg !233
  %588 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.2.6, !dbg !234
  %xor512.2.6 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.2.6 = xor i32 %xor512.2.6, 16, !dbg !234
  %add.ptr516.2.6 = getelementptr inbounds i8, ptr addrspace(3) %588, i32 %add.ptr516.idx.2.6, !dbg !234
  %589 = load <4 x half>, ptr addrspace(3) %add.ptr516.2.6, align 8, !dbg !235
  %add501.3.6 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.3.6 = or disjoint i32 %add501.3.6, 192, !dbg !233
  %590 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.3.6, !dbg !234
  %xor512.3.6 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.3.6 = xor i32 %xor512.3.6, 24, !dbg !234
  %add.ptr516.3.6 = getelementptr inbounds i8, ptr addrspace(3) %590, i32 %add.ptr516.idx.3.6, !dbg !234
  %591 = load <4 x half>, ptr addrspace(3) %add.ptr516.3.6, align 8, !dbg !235
  %592 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %585, <4 x half> %555, <4 x float> %numerator.sroa.0.12.vec.insert2520), !dbg !236
  %593 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %587, <4 x half> %555, <4 x float> %numerator.sroa.98.28.vec.insert2676), !dbg !236
  %594 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %589, <4 x half> %555, <4 x float> %numerator.sroa.194.44.vec.insert2832), !dbg !236
  %595 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %591, <4 x half> %555, <4 x float> %numerator.sroa.290.60.vec.insert2988), !dbg !236
  %add422.6 = fadd contract float %mul312.6, %add418.6, !dbg !237
  br label %if.end542.6, !dbg !238

if.end542.6:                                      ; preds = %if.then.6, %if.end542.5
  %numerator.sroa.290.6 = phi <4 x float> [ %numerator.sroa.290.5, %if.end542.5 ], [ %595, %if.then.6 ], !dbg !239
  %numerator.sroa.194.6 = phi <4 x float> [ %numerator.sroa.194.5, %if.end542.5 ], [ %594, %if.then.6 ], !dbg !239
  %numerator.sroa.98.6 = phi <4 x float> [ %numerator.sroa.98.5, %if.end542.5 ], [ %593, %if.then.6 ], !dbg !239
  %numerator.sroa.0.6 = phi <4 x float> [ %numerator.sroa.0.5, %if.end542.5 ], [ %592, %if.then.6 ], !dbg !239
  %maximum.sroa.0.1.6 = phi float [ %maximum.sroa.0.1.5, %if.end542.5 ], [ %538, %if.then.6 ], !dbg !239
  %denominator.sroa.0.1.6 = phi float [ %denominator.sroa.0.1.5, %if.end542.5 ], [ %add422.6, %if.then.6 ], !dbg !239
  %596 = or disjoint i64 %15, 7, !dbg !240
  %arrayidx108.7 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %596, !dbg !66
  %597 = load i32, ptr addrspace(1) %arrayidx108.7, align 4, !dbg !66, !tbaa !30
  %mul109.7 = shl nsw i32 %597, 4, !dbg !67
  %cmp110.7 = icmp slt i32 %597, 0, !dbg !68
  %cmp112.not.7 = icmp sgt i32 %mul109.7, %1
  %or.cond.7 = select i1 %cmp110.7, i1 true, i1 %cmp112.not.7, !dbg !69
  br i1 %or.cond.7, label %if.end542.7, label %if.then.7, !dbg !69

if.then.7:                                        ; preds = %if.end542.6
  fence syncscope("warp") release, !dbg !70
  tail call void @llvm.mxc.barrier.warp(), !dbg !73
  fence syncscope("warp") acquire, !dbg !74
  %conv122.7 = zext nneg i32 %mul109.7 to i64
  %.idx.7 = shl nuw nsw i64 %conv122.7, 7
  %gep.7 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep864, i64 %.idx.7, !dbg !75
  %.idx872.7 = shl nuw nsw i64 %conv, 17, !dbg !76
  %598 = getelementptr inbounds i8, ptr addrspace(4) %gep.7, i64 %.idx872.7, !dbg !76
  %qk_fetch.sroa.0.0.copyload3278 = load i32, ptr addrspace(4) %598, align 16, !dbg !77, !tbaa !30
  %qk_fetch.sroa.56.0..sroa_idx3301 = getelementptr inbounds i8, ptr addrspace(4) %598, i64 4, !dbg !77
  %qk_fetch.sroa.56.0.copyload3302 = load i32, ptr addrspace(4) %qk_fetch.sroa.56.0..sroa_idx3301, align 4, !dbg !77, !tbaa !30
  %qk_fetch.sroa.92.0..sroa_idx3325 = getelementptr inbounds i8, ptr addrspace(4) %598, i64 8, !dbg !77
  %qk_fetch.sroa.92.0.copyload3326 = load i32, ptr addrspace(4) %qk_fetch.sroa.92.0..sroa_idx3325, align 8, !dbg !77, !tbaa !30
  %qk_fetch.sroa.128.0..sroa_idx3349 = getelementptr inbounds i8, ptr addrspace(4) %598, i64 12, !dbg !77
  %qk_fetch.sroa.128.0.copyload3350 = load i32, ptr addrspace(4) %qk_fetch.sroa.128.0..sroa_idx3349, align 4, !dbg !77, !tbaa !30
  %cond150.7.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.0.0.copyload3278, i32 %qk_fetch.sroa.92.0.copyload3326, !dbg !78
  %cond150.1.7.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.56.0.copyload3302, i32 %qk_fetch.sroa.128.0.copyload3350, !dbg !78
  %cond150.2.7.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.92.0.copyload3326, i32 %qk_fetch.sroa.0.0.copyload3278, !dbg !78
  %cond150.3.7.sroa.speculated = select i1 %cmp19, i32 %qk_fetch.sroa.128.0.copyload3350, i32 %qk_fetch.sroa.56.0.copyload3302, !dbg !78
  store i32 %cond150.7.sroa.speculated, ptr addrspace(3) %invariant.gep836, align 16, !dbg !79, !tbaa !30
  store i32 %cond150.1.7.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.38.0.invariant.gep836.sroa_idx, align 4, !dbg !79, !tbaa !30
  store i32 %cond150.2.7.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.56.0.invariant.gep836.sroa_idx, align 8, !dbg !79, !tbaa !30
  store i32 %cond150.3.7.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.74.0.invariant.gep836.sroa_idx, align 4, !dbg !79, !tbaa !30
  %gep844.1.7 = getelementptr inbounds i8, ptr addrspace(4) %598, i64 1024, !dbg !76
  %qk_fetch.sroa.0.0.copyload3279 = load i32, ptr addrspace(4) %gep844.1.7, align 16, !dbg !77, !tbaa !30
  %qk_fetch.sroa.56.0.gep844.1.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %598, i64 1028, !dbg !77
  %qk_fetch.sroa.56.0.copyload3303 = load i32, ptr addrspace(4) %qk_fetch.sroa.56.0.gep844.1.7.sroa_idx, align 4, !dbg !77, !tbaa !30
  %qk_fetch.sroa.92.0.gep844.1.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %598, i64 1032, !dbg !77
  %qk_fetch.sroa.92.0.copyload3327 = load i32, ptr addrspace(4) %qk_fetch.sroa.92.0.gep844.1.7.sroa_idx, align 8, !dbg !77, !tbaa !30
  %qk_fetch.sroa.128.0.gep844.1.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %598, i64 1036, !dbg !77
  %qk_fetch.sroa.128.0.copyload3351 = load i32, ptr addrspace(4) %qk_fetch.sroa.128.0.gep844.1.7.sroa_idx, align 4, !dbg !77, !tbaa !30
  %cond150.1884.7.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.92.0.copyload3327, i32 %qk_fetch.sroa.0.0.copyload3279, !dbg !78
  %cond150.1.1.7.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.128.0.copyload3351, i32 %qk_fetch.sroa.56.0.copyload3303, !dbg !78
  %cond150.2.1.7.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.0.0.copyload3279, i32 %qk_fetch.sroa.92.0.copyload3327, !dbg !78
  %cond150.3.1.7.sroa.speculated = select i1 %cmp19.1.not, i32 %qk_fetch.sroa.56.0.copyload3303, i32 %qk_fetch.sroa.128.0.copyload3351, !dbg !78
  store i32 %cond150.1884.7.sroa.speculated, ptr addrspace(3) %gep837.1, align 16, !dbg !79, !tbaa !30
  store i32 %cond150.1.1.7.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.38.0.gep837.1.sroa_idx, align 4, !dbg !79, !tbaa !30
  store i32 %cond150.2.1.7.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.56.0.gep837.1.sroa_idx, align 8, !dbg !79, !tbaa !30
  store i32 %cond150.3.1.7.sroa.speculated, ptr addrspace(3) %qk_ordered.sroa.74.0.gep837.1.sroa_idx, align 4, !dbg !79, !tbaa !30
  fence syncscope("warp") release, !dbg !80
  tail call void @llvm.mxc.barrier.warp(), !dbg !83
  fence syncscope("warp") acquire, !dbg !84
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %add.ptr74, align 8, !dbg !85
  %599 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %6, <4 x float> zeroinitializer), !dbg !86
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr74.1, align 8, !dbg !85
  %600 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %7, <4 x float> %599), !dbg !86
  %k_local.sroa.0.0.copyload.2.7 = load <4 x half>, ptr addrspace(3) %add.ptr74.2, align 8, !dbg !85
  %601 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.7, <4 x half> %8, <4 x float> %600), !dbg !86
  %k_local.sroa.0.0.copyload.3.7 = load <4 x half>, ptr addrspace(3) %add.ptr74.3, align 8, !dbg !85
  %602 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.7, <4 x half> %9, <4 x float> %601), !dbg !86
  %add230.7 = add nuw nsw i32 %mul109.7, %mul229
  %cmp233.not.7 = icmp sgt i32 %add230.7, %1, !dbg !87
  %scores.sroa.0.0.vec.extract2137 = extractelement <4 x float> %602, i64 0
  %spec.select3498 = select i1 %cmp233.not.7, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2137, !dbg !88
  %cmp233.not.1.7.not = icmp slt i32 %add230.7, %1, !dbg !87
  %scores.sroa.0.4.vec.extract2216 = extractelement <4 x float> %602, i64 1, !dbg !88
  %condval.0.1.7 = select i1 %cmp233.not.1.7.not, float %scores.sroa.0.4.vec.extract2216, float 0xFFF0000000000000, !dbg !88
  %add231.2.7 = or disjoint i32 %add230.7, 2, !dbg !89
  %cmp233.not.2.7 = icmp sgt i32 %add231.2.7, %1, !dbg !87
  %scores.sroa.0.8.vec.extract2293 = extractelement <4 x float> %602, i64 2, !dbg !88
  %condval.0.2.7 = select i1 %cmp233.not.2.7, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2293, !dbg !88
  %add231.3.7 = or disjoint i32 %add230.7, 3, !dbg !89
  %cmp233.not.3.7 = icmp sgt i32 %add231.3.7, %1, !dbg !87
  %scores.sroa.0.12.vec.extract2370 = extractelement <4 x float> %602, i64 3, !dbg !88
  %condval.0.3.7 = select i1 %cmp233.not.3.7, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2370, !dbg !88
  %603 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3498, float 0xFFF0000000000000), !dbg !90
  %604 = tail call contract noundef float @llvm.maxnum.f32(float %603, float %condval.0.1.7), !dbg !90
  %605 = tail call contract noundef float @llvm.maxnum.f32(float %604, float %condval.0.2.7), !dbg !90
  %606 = tail call contract noundef float @llvm.maxnum.f32(float %605, float %condval.0.3.7), !dbg !90
  %607 = bitcast float %606 to i32, !dbg !94
  %608 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !97
  %609 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %608) #11, !dbg !102
  %xor.i.i.7 = xor i32 %609, 32, !dbg !103
  %610 = and i32 %609, -64, !dbg !104
  %and.i.i.7 = add nsw i32 %610, 64, !dbg !104
  %cmp.not.i.i.7 = icmp slt i32 %xor.i.i.7, %and.i.i.7, !dbg !105
  %cond.i.i.7 = select i1 %cmp.not.i.i.7, i32 %xor.i.i.7, i32 %609, !dbg !106
  %shl.i.i.7 = shl i32 %cond.i.i.7, 2, !dbg !107
  %611 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.7, i32 %607), !dbg !108
  %612 = bitcast i32 %611 to float, !dbg !109
  %613 = tail call contract noundef float @llvm.maxnum.f32(float %606, float %612), !dbg !110
  %614 = bitcast float %613 to i32, !dbg !112
  %615 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !114
  %616 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %615) #11, !dbg !117
  %xor.i.i775.7 = xor i32 %616, 16, !dbg !118
  %617 = and i32 %616, -64, !dbg !119
  %and.i.i776.7 = add nsw i32 %617, 64, !dbg !119
  %cmp.not.i.i777.7 = icmp slt i32 %xor.i.i775.7, %and.i.i776.7, !dbg !120
  %cond.i.i778.7 = select i1 %cmp.not.i.i777.7, i32 %xor.i.i775.7, i32 %616, !dbg !121
  %shl.i.i779.7 = shl i32 %cond.i.i778.7, 2, !dbg !122
  %618 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i779.7, i32 %614), !dbg !123
  %619 = bitcast i32 %618 to float, !dbg !124
  %620 = tail call contract noundef float @llvm.maxnum.f32(float %613, float %619), !dbg !125
  %621 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.6, float %620), !dbg !127
  %sub.7 = fsub contract float %maximum.sroa.0.1.6, %621, !dbg !129
  %mul275.7 = fmul contract float %sub.7, 0x3FC7154760000000, !dbg !130
  %cmp.i.i.7 = fcmp contract olt float %mul275.7, -1.260000e+02, !dbg !131
  %cond.i.i780.7 = select contract i1 %cmp.i.i.7, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i.7 = fadd contract float %mul275.7, %cond.i.i780.7, !dbg !131
  %622 = tail call contract float @llvm.exp2.f32(float %add.i.i.7), !dbg !131
  %cond2.i.i.7 = select contract i1 %cmp.i.i.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i.7 = fmul contract float %cond2.i.i.7, %622, !dbg !131
  %numerator.sroa.0.0.vec.extract2411 = extractelement <4 x float> %numerator.sroa.0.6, i64 0, !dbg !241
  %numerator.sroa.0.4.vec.extract2448 = extractelement <4 x float> %numerator.sroa.0.6, i64 1, !dbg !241
  %numerator.sroa.0.8.vec.extract2485 = extractelement <4 x float> %numerator.sroa.0.6, i64 2, !dbg !241
  %numerator.sroa.0.12.vec.extract2522 = extractelement <4 x float> %numerator.sroa.0.6, i64 3, !dbg !241
  %mul292.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.0.vec.extract2411, !dbg !134
  %mul295.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.4.vec.extract2448, !dbg !242
  %mul298.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.8.vec.extract2485, !dbg !243
  %mul301.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.12.vec.extract2522, !dbg !244
  %numerator.sroa.0.0.vec.insert2413 = insertelement <4 x float> poison, float %mul292.7, i64 0, !dbg !135
  %numerator.sroa.0.4.vec.insert2450 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2413, float %mul295.7, i64 1, !dbg !135
  %numerator.sroa.0.8.vec.insert2487 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2450, float %mul298.7, i64 2, !dbg !135
  %numerator.sroa.0.12.vec.insert2524 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2487, float %mul301.7, i64 3, !dbg !135
  %numerator.sroa.98.16.vec.extract2567 = extractelement <4 x float> %numerator.sroa.98.6, i64 0, !dbg !241
  %numerator.sroa.98.20.vec.extract2604 = extractelement <4 x float> %numerator.sroa.98.6, i64 1, !dbg !241
  %numerator.sroa.98.24.vec.extract2641 = extractelement <4 x float> %numerator.sroa.98.6, i64 2, !dbg !241
  %numerator.sroa.98.28.vec.extract2678 = extractelement <4 x float> %numerator.sroa.98.6, i64 3, !dbg !241
  %mul292.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.16.vec.extract2567, !dbg !134
  %mul295.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.20.vec.extract2604, !dbg !242
  %mul298.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.24.vec.extract2641, !dbg !243
  %mul301.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.28.vec.extract2678, !dbg !244
  %numerator.sroa.98.16.vec.insert2569 = insertelement <4 x float> poison, float %mul292.1.7, i64 0, !dbg !135
  %numerator.sroa.98.20.vec.insert2606 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2569, float %mul295.1.7, i64 1, !dbg !135
  %numerator.sroa.98.24.vec.insert2643 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2606, float %mul298.1.7, i64 2, !dbg !135
  %numerator.sroa.98.28.vec.insert2680 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2643, float %mul301.1.7, i64 3, !dbg !135
  %numerator.sroa.194.32.vec.extract2723 = extractelement <4 x float> %numerator.sroa.194.6, i64 0, !dbg !241
  %numerator.sroa.194.36.vec.extract2760 = extractelement <4 x float> %numerator.sroa.194.6, i64 1, !dbg !241
  %numerator.sroa.194.40.vec.extract2797 = extractelement <4 x float> %numerator.sroa.194.6, i64 2, !dbg !241
  %numerator.sroa.194.44.vec.extract2834 = extractelement <4 x float> %numerator.sroa.194.6, i64 3, !dbg !241
  %mul292.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.32.vec.extract2723, !dbg !134
  %mul295.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.36.vec.extract2760, !dbg !242
  %mul298.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.40.vec.extract2797, !dbg !243
  %mul301.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.44.vec.extract2834, !dbg !244
  %numerator.sroa.194.32.vec.insert2725 = insertelement <4 x float> poison, float %mul292.2.7, i64 0, !dbg !135
  %numerator.sroa.194.36.vec.insert2762 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2725, float %mul295.2.7, i64 1, !dbg !135
  %numerator.sroa.194.40.vec.insert2799 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2762, float %mul298.2.7, i64 2, !dbg !135
  %numerator.sroa.194.44.vec.insert2836 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2799, float %mul301.2.7, i64 3, !dbg !135
  %numerator.sroa.290.48.vec.extract2879 = extractelement <4 x float> %numerator.sroa.290.6, i64 0, !dbg !241
  %numerator.sroa.290.52.vec.extract2916 = extractelement <4 x float> %numerator.sroa.290.6, i64 1, !dbg !241
  %numerator.sroa.290.56.vec.extract2953 = extractelement <4 x float> %numerator.sroa.290.6, i64 2, !dbg !241
  %numerator.sroa.290.60.vec.extract2990 = extractelement <4 x float> %numerator.sroa.290.6, i64 3, !dbg !241
  %mul292.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.48.vec.extract2879, !dbg !134
  %mul295.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.52.vec.extract2916, !dbg !242
  %mul298.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.56.vec.extract2953, !dbg !243
  %mul301.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.60.vec.extract2990, !dbg !244
  %numerator.sroa.290.48.vec.insert2881 = insertelement <4 x float> poison, float %mul292.3.7, i64 0, !dbg !135
  %numerator.sroa.290.52.vec.insert2918 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2881, float %mul295.3.7, i64 1, !dbg !135
  %numerator.sroa.290.56.vec.insert2955 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2918, float %mul298.3.7, i64 2, !dbg !135
  %numerator.sroa.290.60.vec.insert2992 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2955, float %mul301.3.7, i64 3, !dbg !135
  %sub325.7 = fsub contract float %spec.select3498, %621, !dbg !136
  %sub329.7 = fsub contract float %condval.0.1.7, %621, !dbg !137
  %sub333.7 = fsub contract float %condval.0.2.7, %621, !dbg !138
  %sub337.7 = fsub contract float %condval.0.3.7, %621, !dbg !139
  %mul342.7 = fmul contract float %sub325.7, 0x3FC7154760000000, !dbg !140
  %mul346.7 = fmul contract float %sub329.7, 0x3FC7154760000000, !dbg !141
  %mul350.7 = fmul contract float %sub333.7, 0x3FC7154760000000, !dbg !142
  %mul354.7 = fmul contract float %sub337.7, 0x3FC7154760000000, !dbg !143
  %add359.7 = fadd contract float %mul342.7, 8.000000e+00, !dbg !144
  %add363.7 = fadd contract float %mul346.7, 8.000000e+00, !dbg !145
  %add367.7 = fadd contract float %mul350.7, 8.000000e+00, !dbg !146
  %add371.7 = fadd contract float %mul354.7, 8.000000e+00, !dbg !147
  %cmp.i.i781.7 = fcmp contract olt float %add359.7, -1.260000e+02, !dbg !148
  %cond.i.i782.7 = select contract i1 %cmp.i.i781.7, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i783.7 = fadd contract float %add359.7, %cond.i.i782.7, !dbg !148
  %623 = tail call contract float @llvm.exp2.f32(float %add.i.i783.7), !dbg !148
  %cond2.i.i784.7 = select contract i1 %cmp.i.i781.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i785.7 = fmul contract float %cond2.i.i784.7, %623, !dbg !148
  %cmp.i.i786.7 = fcmp contract olt float %add363.7, -1.260000e+02, !dbg !150
  %cond.i.i787.7 = select contract i1 %cmp.i.i786.7, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i788.7 = fadd contract float %add363.7, %cond.i.i787.7, !dbg !150
  %624 = tail call contract float @llvm.exp2.f32(float %add.i.i788.7), !dbg !150
  %cond2.i.i789.7 = select contract i1 %cmp.i.i786.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i790.7 = fmul contract float %cond2.i.i789.7, %624, !dbg !150
  %cmp.i.i791.7 = fcmp contract olt float %add367.7, -1.260000e+02, !dbg !152
  %cond.i.i792.7 = select contract i1 %cmp.i.i791.7, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i793.7 = fadd contract float %add367.7, %cond.i.i792.7, !dbg !152
  %625 = tail call contract float @llvm.exp2.f32(float %add.i.i793.7), !dbg !152
  %cond2.i.i794.7 = select contract i1 %cmp.i.i791.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i795.7 = fmul contract float %cond2.i.i794.7, %625, !dbg !152
  %cmp.i.i796.7 = fcmp contract olt float %add371.7, -1.260000e+02, !dbg !154
  %cond.i.i797.7 = select contract i1 %cmp.i.i796.7, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i798.7 = fadd contract float %add371.7, %cond.i.i797.7, !dbg !154
  %626 = tail call contract float @llvm.exp2.f32(float %add.i.i798.7), !dbg !154
  %cond2.i.i799.7 = select contract i1 %cmp.i.i796.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i800.7 = fmul contract float %cond2.i.i799.7, %626, !dbg !154
  %627 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !156, !noalias !164
  %628 = fptrunc float %mul.i.i785.7 to half, !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %627), !dbg !156, !noalias !164
  %629 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !164
  %630 = fptrunc float %mul.i.i790.7 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %629), !dbg !169, !noalias !164
  %631 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !175
  %632 = fptrunc float %mul.i.i795.7 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %631), !dbg !171, !noalias !175
  %633 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !180, !noalias !175
  %634 = fptrunc float %mul.i.i800.7 to half, !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %633), !dbg !180, !noalias !175
  %635 = insertelement <4 x half> poison, half %628, i64 0, !dbg !182
  %636 = insertelement <4 x half> %635, half %630, i64 1, !dbg !182
  %637 = insertelement <4 x half> %636, half %632, i64 2, !dbg !182
  %638 = insertelement <4 x half> %637, half %634, i64 3, !dbg !182
  %conv.i.i.7 = fpext half %628 to float, !dbg !183
  %add405.7 = fadd contract float %conv.i.i.7, 0.000000e+00, !dbg !188
  %conv.i.i.1.7 = fpext half %630 to float, !dbg !183
  %add405.1.7 = fadd contract float %add405.7, %conv.i.i.1.7, !dbg !188
  %conv.i.i.2.7 = fpext half %632 to float, !dbg !183
  %add405.2.7 = fadd contract float %add405.1.7, %conv.i.i.2.7, !dbg !188
  %conv.i.i.3.7 = fpext half %634 to float, !dbg !183
  %add405.3.7 = fadd contract float %add405.2.7, %conv.i.i.3.7, !dbg !188
  %639 = bitcast float %add405.3.7 to i32, !dbg !189
  %640 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !191
  %641 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %640) #11, !dbg !194
  %xor.i.i806.7 = xor i32 %641, 32, !dbg !195
  %642 = and i32 %641, -64, !dbg !196
  %and.i.i807.7 = add nsw i32 %642, 64, !dbg !196
  %cmp.not.i.i808.7 = icmp slt i32 %xor.i.i806.7, %and.i.i807.7, !dbg !197
  %cond.i.i809.7 = select i1 %cmp.not.i.i808.7, i32 %xor.i.i806.7, i32 %641, !dbg !198
  %shl.i.i810.7 = shl i32 %cond.i.i809.7, 2, !dbg !199
  %643 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i810.7, i32 %639), !dbg !200
  %644 = bitcast i32 %643 to float, !dbg !201
  %add413.7 = fadd contract float %add405.3.7, %644, !dbg !202
  %645 = bitcast float %add413.7 to i32, !dbg !203
  %646 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %647 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %646) #11, !dbg !208
  %xor.i.i811.7 = xor i32 %647, 16, !dbg !209
  %648 = and i32 %647, -64, !dbg !210
  %and.i.i812.7 = add nsw i32 %648, 64, !dbg !210
  %cmp.not.i.i813.7 = icmp slt i32 %xor.i.i811.7, %and.i.i812.7, !dbg !211
  %cond.i.i814.7 = select i1 %cmp.not.i.i813.7, i32 %xor.i.i811.7, i32 %647, !dbg !212
  %shl.i.i815.7 = shl i32 %cond.i.i814.7, 2, !dbg !213
  %649 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i815.7, i32 %645), !dbg !214
  %650 = bitcast i32 %649 to float, !dbg !215
  %add418.7 = fadd contract float %add413.7, %650, !dbg !216
  fence syncscope("warp") release, !dbg !217
  tail call void @llvm.mxc.barrier.warp(), !dbg !220
  fence syncscope("warp") acquire, !dbg !221
  %651 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add438, !dbg !222
  %652 = getelementptr inbounds i8, ptr addrspace(4) %651, i64 %.idx.7, !dbg !222
  %653 = load i64, ptr addrspace(4) %652, align 8, !dbg !223
  %add.ptr447.1.7 = getelementptr inbounds i8, ptr addrspace(4) %652, i64 128, !dbg !222
  %654 = load i64, ptr addrspace(4) %add.ptr447.1.7, align 8, !dbg !223
  %add.ptr447.2.7 = getelementptr inbounds i8, ptr addrspace(4) %652, i64 256, !dbg !222
  %655 = load i64, ptr addrspace(4) %add.ptr447.2.7, align 8, !dbg !223
  %add.ptr447.3.7 = getelementptr inbounds i8, ptr addrspace(4) %652, i64 384, !dbg !222
  %656 = load i64, ptr addrspace(4) %add.ptr447.3.7, align 8, !dbg !223
  %mul312.7 = fmul contract float %denominator.sroa.0.1.6, %mul.i.i.7, !dbg !245
  %657 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %mul477, !dbg !224
  %add.ptr489.idx.7 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.7 = getelementptr inbounds i8, ptr addrspace(3) %657, i32 %add.ptr489.idx.7, !dbg !224
  %v_column.sroa.130.0.insert.ext1600 = shl i64 %656, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext1445 = shl i64 %655, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift1446 = and i64 %v_column.sroa.98.0.insert.ext1445, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1448 = or disjoint i64 %v_column.sroa.130.0.insert.ext1600, %v_column.sroa.98.0.insert.shift1446, !dbg !225
  %v_column.sroa.66.0.insert.ext1290 = shl i64 %654, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1291 = and i64 %v_column.sroa.66.0.insert.ext1290, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1293 = or disjoint i64 %v_column.sroa.98.0.insert.insert1448, %v_column.sroa.66.0.insert.shift1291, !dbg !225
  %v_column.sroa.0.0.insert.ext1139 = and i64 %653, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1141 = or disjoint i64 %v_column.sroa.66.0.insert.insert1293, %v_column.sroa.0.0.insert.ext1139, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1141, ptr addrspace(3) %add.ptr489.7, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1712 = lshr i64 %653, 16, !dbg !226
  %add478.1.7 = or disjoint i32 %mul477, 256, !dbg !227
  %658 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.1.7, !dbg !224
  %xor485.1.7 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.1.7 = xor i32 %xor485.1.7, 8, !dbg !224
  %add.ptr489.1.7 = getelementptr inbounds i8, ptr addrspace(3) %658, i32 %add.ptr489.idx.1.7, !dbg !224
  %659 = shl i64 %656, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1605 = and i64 %659, -281474976710656, !dbg !225
  %660 = shl i64 %655, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1451 = and i64 %660, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1453 = or disjoint i64 %v_column.sroa.130.0.insert.ext1605, %v_column.sroa.98.0.insert.shift1451, !dbg !225
  %v_column.sroa.66.0.insert.ext1295 = and i64 %654, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1298 = or disjoint i64 %v_column.sroa.98.0.insert.insert1453, %v_column.sroa.66.0.insert.ext1295, !dbg !225
  %v_column.sroa.0.0.insert.ext1143 = and i64 %v_fetch.sroa.0.2.extract.shift1712, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1145 = or disjoint i64 %v_column.sroa.66.0.insert.insert1298, %v_column.sroa.0.0.insert.ext1143, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1145, ptr addrspace(3) %add.ptr489.1.7, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1733 = lshr i64 %653, 32, !dbg !226
  %add478.2.7 = or disjoint i32 %mul477, 512, !dbg !227
  %661 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.2.7, !dbg !224
  %xor485.2.7 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.2.7 = xor i32 %xor485.2.7, 16, !dbg !224
  %add.ptr489.2.7 = getelementptr inbounds i8, ptr addrspace(3) %661, i32 %add.ptr489.idx.2.7, !dbg !224
  %662 = shl i64 %656, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1610 = and i64 %662, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1455 = and i64 %655, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1458 = or disjoint i64 %v_column.sroa.130.0.insert.ext1610, %v_column.sroa.98.0.insert.ext1455, !dbg !225
  %663 = lshr i64 %654, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1301 = and i64 %663, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1303 = or disjoint i64 %v_column.sroa.98.0.insert.insert1458, %v_column.sroa.66.0.insert.shift1301, !dbg !225
  %v_column.sroa.0.0.insert.ext1147 = and i64 %v_fetch.sroa.0.4.extract.shift1733, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1149 = or disjoint i64 %v_column.sroa.66.0.insert.insert1303, %v_column.sroa.0.0.insert.ext1147, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1149, ptr addrspace(3) %add.ptr489.2.7, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1754 = lshr i64 %653, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift1985 = and i64 %656, -281474976710656, !dbg !225
  %add478.3.7 = or disjoint i32 %mul477, 768, !dbg !227
  %664 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add478.3.7, !dbg !224
  %xor485.3.7 = shl nuw nsw i32 %xor484, 3, !dbg !224
  %add.ptr489.idx.3.7 = xor i32 %xor485.3.7, 24, !dbg !224
  %add.ptr489.3.7 = getelementptr inbounds i8, ptr addrspace(3) %664, i32 %add.ptr489.idx.3.7, !dbg !224
  %665 = lshr i64 %655, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1461 = and i64 %665, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1463 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1985, %v_column.sroa.98.0.insert.shift1461, !dbg !225
  %666 = lshr i64 %654, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1306 = and i64 %666, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1308 = or disjoint i64 %v_column.sroa.98.0.insert.insert1463, %v_column.sroa.66.0.insert.shift1306, !dbg !225
  %v_column.sroa.0.0.insert.insert1153 = or disjoint i64 %v_column.sroa.66.0.insert.insert1308, %v_fetch.sroa.0.6.extract.shift1754, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1153, ptr addrspace(3) %add.ptr489.3.7, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add506.7 = or disjoint i32 %mul499, %mul505, !dbg !233
  %667 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.7, !dbg !234
  %add.ptr516.idx.7 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.7 = getelementptr inbounds i8, ptr addrspace(3) %667, i32 %add.ptr516.idx.7, !dbg !234
  %668 = load <4 x half>, ptr addrspace(3) %add.ptr516.7, align 8, !dbg !235
  %add501.1.7 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.1.7 = or disjoint i32 %add501.1.7, 64, !dbg !233
  %669 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.1.7, !dbg !234
  %xor512.1.7 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.1.7 = xor i32 %xor512.1.7, 8, !dbg !234
  %add.ptr516.1.7 = getelementptr inbounds i8, ptr addrspace(3) %669, i32 %add.ptr516.idx.1.7, !dbg !234
  %670 = load <4 x half>, ptr addrspace(3) %add.ptr516.1.7, align 8, !dbg !235
  %add501.2.7 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.2.7 = or disjoint i32 %add501.2.7, 128, !dbg !233
  %671 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.2.7, !dbg !234
  %xor512.2.7 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.2.7 = xor i32 %xor512.2.7, 16, !dbg !234
  %add.ptr516.2.7 = getelementptr inbounds i8, ptr addrspace(3) %671, i32 %add.ptr516.idx.2.7, !dbg !234
  %672 = load <4 x half>, ptr addrspace(3) %add.ptr516.2.7, align 8, !dbg !235
  %add501.3.7 = or disjoint i32 %mul499, %mul505, !dbg !233
  %add506.3.7 = or disjoint i32 %add501.3.7, 192, !dbg !233
  %673 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add506.3.7, !dbg !234
  %xor512.3.7 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr516.idx.3.7 = xor i32 %xor512.3.7, 24, !dbg !234
  %add.ptr516.3.7 = getelementptr inbounds i8, ptr addrspace(3) %673, i32 %add.ptr516.idx.3.7, !dbg !234
  %674 = load <4 x half>, ptr addrspace(3) %add.ptr516.3.7, align 8, !dbg !235
  %675 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %668, <4 x half> %638, <4 x float> %numerator.sroa.0.12.vec.insert2524), !dbg !236
  %676 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %670, <4 x half> %638, <4 x float> %numerator.sroa.98.28.vec.insert2680), !dbg !236
  %677 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %672, <4 x half> %638, <4 x float> %numerator.sroa.194.44.vec.insert2836), !dbg !236
  %678 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %674, <4 x half> %638, <4 x float> %numerator.sroa.290.60.vec.insert2992), !dbg !236
  %add422.7 = fadd contract float %mul312.7, %add418.7, !dbg !237
  br label %if.end542.7, !dbg !238

if.end542.7:                                      ; preds = %if.then.7, %if.end542.6
  %numerator.sroa.290.7 = phi <4 x float> [ %numerator.sroa.290.6, %if.end542.6 ], [ %678, %if.then.7 ], !dbg !239
  %numerator.sroa.194.7 = phi <4 x float> [ %numerator.sroa.194.6, %if.end542.6 ], [ %677, %if.then.7 ], !dbg !239
  %numerator.sroa.98.7 = phi <4 x float> [ %numerator.sroa.98.6, %if.end542.6 ], [ %676, %if.then.7 ], !dbg !239
  %numerator.sroa.0.7 = phi <4 x float> [ %numerator.sroa.0.6, %if.end542.6 ], [ %675, %if.then.7 ], !dbg !239
  %denominator.sroa.0.1.7 = phi float [ %denominator.sroa.0.1.6, %if.end542.6 ], [ %add422.7, %if.then.7 ], !dbg !239
  %numerator.sroa.0.0.vec.extract2417 = extractelement <4 x float> %numerator.sroa.0.7, i64 0, !dbg !246
  %numerator.sroa.0.4.vec.extract2454 = extractelement <4 x float> %numerator.sroa.0.7, i64 1, !dbg !246
  %numerator.sroa.0.8.vec.extract2491 = extractelement <4 x float> %numerator.sroa.0.7, i64 2, !dbg !246
  %numerator.sroa.0.12.vec.extract2528 = extractelement <4 x float> %numerator.sroa.0.7, i64 3, !dbg !246
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract2417, %denominator.sroa.0.1.7, !dbg !247
  %div564 = fdiv contract float %numerator.sroa.0.4.vec.extract2454, %denominator.sroa.0.1.7, !dbg !248
  %div568 = fdiv contract float %numerator.sroa.0.8.vec.extract2491, %denominator.sroa.0.1.7, !dbg !249
  %div572 = fdiv contract float %numerator.sroa.0.12.vec.extract2528, %denominator.sroa.0.1.7, !dbg !250
  %numerator.sroa.98.16.vec.extract2571 = extractelement <4 x float> %numerator.sroa.98.7, i64 0, !dbg !246
  %numerator.sroa.98.20.vec.extract2608 = extractelement <4 x float> %numerator.sroa.98.7, i64 1, !dbg !246
  %numerator.sroa.98.24.vec.extract2645 = extractelement <4 x float> %numerator.sroa.98.7, i64 2, !dbg !246
  %numerator.sroa.98.28.vec.extract2682 = extractelement <4 x float> %numerator.sroa.98.7, i64 3, !dbg !246
  %div.1 = fdiv contract float %numerator.sroa.98.16.vec.extract2571, %denominator.sroa.0.1.7, !dbg !247
  %div564.1 = fdiv contract float %numerator.sroa.98.20.vec.extract2608, %denominator.sroa.0.1.7, !dbg !248
  %div568.1 = fdiv contract float %numerator.sroa.98.24.vec.extract2645, %denominator.sroa.0.1.7, !dbg !249
  %div572.1 = fdiv contract float %numerator.sroa.98.28.vec.extract2682, %denominator.sroa.0.1.7, !dbg !250
  %numerator.sroa.194.32.vec.extract2727 = extractelement <4 x float> %numerator.sroa.194.7, i64 0, !dbg !246
  %numerator.sroa.194.36.vec.extract2764 = extractelement <4 x float> %numerator.sroa.194.7, i64 1, !dbg !246
  %numerator.sroa.194.40.vec.extract2801 = extractelement <4 x float> %numerator.sroa.194.7, i64 2, !dbg !246
  %numerator.sroa.194.44.vec.extract2838 = extractelement <4 x float> %numerator.sroa.194.7, i64 3, !dbg !246
  %div.2 = fdiv contract float %numerator.sroa.194.32.vec.extract2727, %denominator.sroa.0.1.7, !dbg !247
  %div564.2 = fdiv contract float %numerator.sroa.194.36.vec.extract2764, %denominator.sroa.0.1.7, !dbg !248
  %div568.2 = fdiv contract float %numerator.sroa.194.40.vec.extract2801, %denominator.sroa.0.1.7, !dbg !249
  %div572.2 = fdiv contract float %numerator.sroa.194.44.vec.extract2838, %denominator.sroa.0.1.7, !dbg !250
  %numerator.sroa.290.48.vec.extract2883 = extractelement <4 x float> %numerator.sroa.290.7, i64 0, !dbg !246
  %numerator.sroa.290.52.vec.extract2920 = extractelement <4 x float> %numerator.sroa.290.7, i64 1, !dbg !246
  %numerator.sroa.290.56.vec.extract2957 = extractelement <4 x float> %numerator.sroa.290.7, i64 2, !dbg !246
  %numerator.sroa.290.60.vec.extract2994 = extractelement <4 x float> %numerator.sroa.290.7, i64 3, !dbg !246
  %div.3 = fdiv contract float %numerator.sroa.290.48.vec.extract2883, %denominator.sroa.0.1.7, !dbg !247
  %div564.3 = fdiv contract float %numerator.sroa.290.52.vec.extract2920, %denominator.sroa.0.1.7, !dbg !248
  %div568.3 = fdiv contract float %numerator.sroa.290.56.vec.extract2957, %denominator.sroa.0.1.7, !dbg !249
  %div572.3 = fdiv contract float %numerator.sroa.290.60.vec.extract2994, %denominator.sroa.0.1.7, !dbg !250
  fence syncscope("warp") release, !dbg !251
  tail call void @llvm.mxc.barrier.warp(), !dbg !254
  fence syncscope("warp") acquire, !dbg !255
  %mul618 = and i32 %10, 4
  %679 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !256
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !256, !noalias !260
  %680 = fptrunc float %div to half, !dbg !256
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %679), !dbg !256, !noalias !260
  %681 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !265, !noalias !260
  %682 = fptrunc float %div564 to half, !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %681), !dbg !265, !noalias !260
  %683 = bitcast half %680 to i16, !dbg !267
  %684 = bitcast half %682 to i16, !dbg !270
  %685 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !271
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !271, !noalias !275
  %686 = fptrunc float %div568 to half, !dbg !271
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %685), !dbg !271, !noalias !275
  %687 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !280
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !280, !noalias !275
  %688 = fptrunc float %div572 to half, !dbg !280
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %687), !dbg !280, !noalias !275
  %689 = bitcast half %686 to i16, !dbg !282
  %690 = bitcast half %688 to i16, !dbg !284
  %__8.sroa.6.0.insert.ext = zext i16 %690 to i64, !dbg !285
  %__8.sroa.6.0.insert.shift = shl nuw i64 %__8.sroa.6.0.insert.ext, 48, !dbg !285
  %__8.sroa.5.0.insert.ext = zext i16 %689 to i64, !dbg !285
  %__8.sroa.5.0.insert.shift = shl nuw nsw i64 %__8.sroa.5.0.insert.ext, 32, !dbg !285
  %__8.sroa.5.0.insert.insert = or disjoint i64 %__8.sroa.6.0.insert.shift, %__8.sroa.5.0.insert.shift, !dbg !285
  %__8.sroa.4.0.insert.ext = zext i16 %684 to i64, !dbg !285
  %__8.sroa.4.0.insert.shift = shl nuw nsw i64 %__8.sroa.4.0.insert.ext, 16, !dbg !285
  %__8.sroa.4.0.insert.insert = or disjoint i64 %__8.sroa.5.0.insert.insert, %__8.sroa.4.0.insert.shift, !dbg !285
  %__8.sroa.0.0.insert.ext = zext i16 %683 to i64, !dbg !285
  %__8.sroa.0.0.insert.insert = or disjoint i64 %__8.sroa.4.0.insert.insert, %__8.sroa.0.0.insert.ext, !dbg !285
  %add619 = or disjoint i32 %add60, %mul618, !dbg !286
  %add.ptr621 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add619, !dbg !287
  store i64 %__8.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr621, align 8, !dbg !288
  %691 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !256
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !256, !noalias !260
  %692 = fptrunc float %div.1 to half, !dbg !256
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %691), !dbg !256, !noalias !260
  %693 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !265, !noalias !260
  %694 = fptrunc float %div564.1 to half, !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %693), !dbg !265, !noalias !260
  %695 = bitcast half %692 to i16, !dbg !267
  %696 = bitcast half %694 to i16, !dbg !270
  %697 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !271
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !271, !noalias !275
  %698 = fptrunc float %div568.1 to half, !dbg !271
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %697), !dbg !271, !noalias !275
  %699 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !280
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !280, !noalias !275
  %700 = fptrunc float %div572.1 to half, !dbg !280
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %699), !dbg !280, !noalias !275
  %701 = bitcast half %698 to i16, !dbg !282
  %702 = bitcast half %700 to i16, !dbg !284
  %__8.sroa.6.0.insert.ext.1 = zext i16 %702 to i64, !dbg !285
  %__8.sroa.6.0.insert.shift.1 = shl nuw i64 %__8.sroa.6.0.insert.ext.1, 48, !dbg !285
  %__8.sroa.5.0.insert.ext.1 = zext i16 %701 to i64, !dbg !285
  %__8.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.1, 32, !dbg !285
  %__8.sroa.5.0.insert.insert.1 = or disjoint i64 %__8.sroa.6.0.insert.shift.1, %__8.sroa.5.0.insert.shift.1, !dbg !285
  %__8.sroa.4.0.insert.ext.1 = zext i16 %696 to i64, !dbg !285
  %__8.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.1, 16, !dbg !285
  %__8.sroa.4.0.insert.insert.1 = or disjoint i64 %__8.sroa.5.0.insert.insert.1, %__8.sroa.4.0.insert.shift.1, !dbg !285
  %__8.sroa.0.0.insert.ext.1 = zext i16 %695 to i64, !dbg !285
  %__8.sroa.0.0.insert.insert.1 = or disjoint i64 %__8.sroa.4.0.insert.insert.1, %__8.sroa.0.0.insert.ext.1, !dbg !285
  %add619.1 = or disjoint i32 %add60.1, %mul618, !dbg !286
  %add.ptr621.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add619.1, !dbg !287
  store i64 %__8.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr621.1, align 8, !dbg !288
  %703 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !256
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !256, !noalias !260
  %704 = fptrunc float %div.2 to half, !dbg !256
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %703), !dbg !256, !noalias !260
  %705 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !265, !noalias !260
  %706 = fptrunc float %div564.2 to half, !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %705), !dbg !265, !noalias !260
  %707 = bitcast half %704 to i16, !dbg !267
  %708 = bitcast half %706 to i16, !dbg !270
  %709 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !271
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !271, !noalias !275
  %710 = fptrunc float %div568.2 to half, !dbg !271
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %709), !dbg !271, !noalias !275
  %711 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !280
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !280, !noalias !275
  %712 = fptrunc float %div572.2 to half, !dbg !280
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %711), !dbg !280, !noalias !275
  %713 = bitcast half %710 to i16, !dbg !282
  %714 = bitcast half %712 to i16, !dbg !284
  %__8.sroa.6.0.insert.ext.2 = zext i16 %714 to i64, !dbg !285
  %__8.sroa.6.0.insert.shift.2 = shl nuw i64 %__8.sroa.6.0.insert.ext.2, 48, !dbg !285
  %__8.sroa.5.0.insert.ext.2 = zext i16 %713 to i64, !dbg !285
  %__8.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.2, 32, !dbg !285
  %__8.sroa.5.0.insert.insert.2 = or disjoint i64 %__8.sroa.6.0.insert.shift.2, %__8.sroa.5.0.insert.shift.2, !dbg !285
  %__8.sroa.4.0.insert.ext.2 = zext i16 %708 to i64, !dbg !285
  %__8.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.2, 16, !dbg !285
  %__8.sroa.4.0.insert.insert.2 = or disjoint i64 %__8.sroa.5.0.insert.insert.2, %__8.sroa.4.0.insert.shift.2, !dbg !285
  %__8.sroa.0.0.insert.ext.2 = zext i16 %707 to i64, !dbg !285
  %__8.sroa.0.0.insert.insert.2 = or disjoint i64 %__8.sroa.4.0.insert.insert.2, %__8.sroa.0.0.insert.ext.2, !dbg !285
  %add619.2 = or disjoint i32 %add60.2, %mul618, !dbg !286
  %add.ptr621.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add619.2, !dbg !287
  store i64 %__8.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr621.2, align 8, !dbg !288
  %715 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !256
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !256, !noalias !260
  %716 = fptrunc float %div.3 to half, !dbg !256
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %715), !dbg !256, !noalias !260
  %717 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !265, !noalias !260
  %718 = fptrunc float %div564.3 to half, !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %717), !dbg !265, !noalias !260
  %719 = bitcast half %716 to i16, !dbg !267
  %720 = bitcast half %718 to i16, !dbg !270
  %721 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !271
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !271, !noalias !275
  %722 = fptrunc float %div568.3 to half, !dbg !271
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %721), !dbg !271, !noalias !275
  %723 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !280
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !280, !noalias !275
  %724 = fptrunc float %div572.3 to half, !dbg !280
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %723), !dbg !280, !noalias !275
  %725 = bitcast half %722 to i16, !dbg !282
  %726 = bitcast half %724 to i16, !dbg !284
  %__8.sroa.6.0.insert.ext.3 = zext i16 %726 to i64, !dbg !285
  %__8.sroa.6.0.insert.shift.3 = shl nuw i64 %__8.sroa.6.0.insert.ext.3, 48, !dbg !285
  %__8.sroa.5.0.insert.ext.3 = zext i16 %725 to i64, !dbg !285
  %__8.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.3, 32, !dbg !285
  %__8.sroa.5.0.insert.insert.3 = or disjoint i64 %__8.sroa.6.0.insert.shift.3, %__8.sroa.5.0.insert.shift.3, !dbg !285
  %__8.sroa.4.0.insert.ext.3 = zext i16 %720 to i64, !dbg !285
  %__8.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.3, 16, !dbg !285
  %__8.sroa.4.0.insert.insert.3 = or disjoint i64 %__8.sroa.5.0.insert.insert.3, %__8.sroa.4.0.insert.shift.3, !dbg !285
  %__8.sroa.0.0.insert.ext.3 = zext i16 %719 to i64, !dbg !285
  %__8.sroa.0.0.insert.insert.3 = or disjoint i64 %__8.sroa.4.0.insert.insert.3, %__8.sroa.0.0.insert.ext.3, !dbg !285
  %add619.3 = or disjoint i32 %add60.3, %mul618, !dbg !286
  %add.ptr621.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %add619.3, !dbg !287
  store i64 %__8.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr621.3, align 8, !dbg !288
  fence syncscope("warp") release, !dbg !289
  tail call void @llvm.mxc.barrier.warp(), !dbg !292
  fence syncscope("warp") acquire, !dbg !293
  %727 = shl nuw nsw i32 %2, 3
  %mul632 = and i32 %727, 8128
  %xor638769 = and i32 %727, 56
  %call636.masked = and i32 %2, 1016
  %mul639 = xor i32 %xor638769, %call636.masked
  %invariant.gep867 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared_words, i32 %mul632, !dbg !294
  %invariant.gep869 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep867, i32 %mul639, !dbg !294
  %mul644 = shl nsw i32 %0, 20
  %mul646 = shl nsw i32 %1, 10
  %add647 = add nuw nsw i32 %mul644, %mul646
  %add649 = add nuw nsw i32 %add647, %727
  %728 = zext nneg i32 %add649 to i64, !dbg !295
  %add.ptr654 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %728, !dbg !296
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr654, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep869, i64 16, i1 false), !dbg !297, !tbaa.struct !298, !call_argsrelate !299
  %gep870.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep869, i32 1024, !dbg !300
  %729 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %728, !dbg !296
  %add.ptr654.1 = getelementptr inbounds i8, ptr addrspace(1) %729, i64 1024, !dbg !296
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr654.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep870.1, i64 16, i1 false), !dbg !297, !tbaa.struct !298, !call_argsrelate !299
  ret void, !dbg !301
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v063_codex_power_s8_qk_u32_select_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v063_codex_power_s8_qk_u32_select_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 30, column: 8, scope: !40)
!44 = !DILocation(line: 30, column: 3, scope: !40)
!45 = !DILocation(line: 31, column: 58, scope: !40)
!46 = !DILocation(line: 31, column: 29, scope: !40)
!47 = !DILocation(line: 34, column: 30, scope: !40)
!48 = !DILocation(line: 36, column: 146, scope: !40)
!49 = !DILocation(line: 36, column: 28, scope: !40)
!50 = !DILocation(line: 68, column: 3, scope: !51, inlinedAt: !53)
!51 = distinct !DISubprogram(name: "__barrier_warp", scope: !52, file: !52, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!52 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!53 = distinct !DILocation(line: 192, column: 3, scope: !54, inlinedAt: !55)
!54 = distinct !DISubprogram(name: "__syncwarp", scope: !52, file: !52, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!55 = distinct !DILocation(line: 38, column: 3, scope: !40)
!56 = !DILocation(line: 69, column: 3, scope: !51, inlinedAt: !53)
!57 = !DILocation(line: 70, column: 3, scope: !51, inlinedAt: !53)
!58 = !DILocation(line: 41, column: 157, scope: !40)
!59 = !DILocation(line: 41, column: 185, scope: !40)
!60 = !DILocation(line: 41, column: 111, scope: !40)
!61 = !DILocation(line: 41, column: 191, scope: !40)
!62 = !DILocation(line: 41, column: 74, scope: !40)
!63 = !DILocation(line: 41, column: 38, scope: !40)
!64 = !DILocation(line: 41, column: 128, scope: !40)
!65 = !DILocation(line: 51, column: 3, scope: !40)
!66 = !DILocation(line: 52, column: 24, scope: !40)
!67 = !DILocation(line: 52, column: 101, scope: !40)
!68 = !DILocation(line: 53, column: 12, scope: !40)
!69 = !DILocation(line: 53, column: 28, scope: !40)
!70 = !DILocation(line: 68, column: 3, scope: !51, inlinedAt: !71)
!71 = distinct !DILocation(line: 192, column: 3, scope: !54, inlinedAt: !72)
!72 = distinct !DILocation(line: 54, column: 7, scope: !40)
!73 = !DILocation(line: 69, column: 3, scope: !51, inlinedAt: !71)
!74 = !DILocation(line: 70, column: 3, scope: !51, inlinedAt: !71)
!75 = !DILocation(line: 56, column: 12, scope: !40)
!76 = !DILocation(line: 57, column: 62, scope: !40)
!77 = !DILocation(line: 57, column: 33, scope: !40)
!78 = !DILocation(line: 60, column: 36, scope: !40)
!79 = !DILocation(line: 62, column: 152, scope: !40)
!80 = !DILocation(line: 68, column: 3, scope: !51, inlinedAt: !81)
!81 = distinct !DILocation(line: 192, column: 3, scope: !54, inlinedAt: !82)
!82 = distinct !DILocation(line: 64, column: 7, scope: !40)
!83 = !DILocation(line: 69, column: 3, scope: !51, inlinedAt: !81)
!84 = !DILocation(line: 70, column: 3, scope: !51, inlinedAt: !81)
!85 = !DILocation(line: 69, column: 32, scope: !40)
!86 = !DILocation(line: 71, column: 37, scope: !40)
!87 = !DILocation(line: 79, column: 76, scope: !40)
!88 = !DILocation(line: 79, column: 13, scope: !40)
!89 = !DILocation(line: 79, column: 63, scope: !40)
!90 = !DILocation(line: 351, column: 10, scope: !91, inlinedAt: !93)
!91 = distinct !DISubprogram(name: "max", scope: !92, file: !92, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!92 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!93 = distinct !DILocation(line: 89, column: 28, scope: !40)
!94 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !96)
!95 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !52, file: !52, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!96 = distinct !DILocation(line: 91, column: 48, scope: !40)
!97 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !99)
!98 = distinct !DISubprogram(name: "__lane_id", scope: !52, file: !52, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!99 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !101)
!100 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !52, file: !52, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!101 = distinct !DILocation(line: 1019, column: 11, scope: !95, inlinedAt: !96)
!102 = !DILocation(line: 171, column: 10, scope: !98, inlinedAt: !99)
!103 = !DILocation(line: 991, column: 20, scope: !100, inlinedAt: !101)
!104 = !DILocation(line: 992, column: 36, scope: !100, inlinedAt: !101)
!105 = !DILocation(line: 992, column: 17, scope: !100, inlinedAt: !101)
!106 = !DILocation(line: 992, column: 11, scope: !100, inlinedAt: !101)
!107 = !DILocation(line: 993, column: 43, scope: !100, inlinedAt: !101)
!108 = !DILocation(line: 993, column: 10, scope: !100, inlinedAt: !101)
!109 = !DILocation(line: 1020, column: 14, scope: !95, inlinedAt: !96)
!110 = !DILocation(line: 351, column: 10, scope: !91, inlinedAt: !111)
!111 = distinct !DILocation(line: 91, column: 26, scope: !40)
!112 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !113)
!113 = distinct !DILocation(line: 92, column: 48, scope: !40)
!114 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !115)
!115 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !116)
!116 = distinct !DILocation(line: 1019, column: 11, scope: !95, inlinedAt: !113)
!117 = !DILocation(line: 171, column: 10, scope: !98, inlinedAt: !115)
!118 = !DILocation(line: 991, column: 20, scope: !100, inlinedAt: !116)
!119 = !DILocation(line: 992, column: 36, scope: !100, inlinedAt: !116)
!120 = !DILocation(line: 992, column: 17, scope: !100, inlinedAt: !116)
!121 = !DILocation(line: 992, column: 11, scope: !100, inlinedAt: !116)
!122 = !DILocation(line: 993, column: 43, scope: !100, inlinedAt: !116)
!123 = !DILocation(line: 993, column: 10, scope: !100, inlinedAt: !116)
!124 = !DILocation(line: 1020, column: 14, scope: !95, inlinedAt: !113)
!125 = !DILocation(line: 351, column: 10, scope: !91, inlinedAt: !126)
!126 = distinct !DILocation(line: 92, column: 26, scope: !40)
!127 = !DILocation(line: 351, column: 10, scope: !91, inlinedAt: !128)
!128 = distinct !DILocation(line: 93, column: 24, scope: !40)
!129 = !DILocation(line: 94, column: 39, scope: !40)
!130 = !DILocation(line: 94, column: 57, scope: !40)
!131 = !DILocation(line: 285, column: 49, scope: !132, inlinedAt: !133)
!132 = distinct !DISubprogram(name: "exp2f", scope: !92, file: !92, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!133 = distinct !DILocation(line: 94, column: 20, scope: !40)
!134 = !DILocation(line: 100, column: 24, scope: !40)
!135 = !DILocation(line: 104, column: 47, scope: !40)
!136 = !DILocation(line: 117, column: 28, scope: !40)
!137 = !DILocation(line: 118, column: 28, scope: !40)
!138 = !DILocation(line: 119, column: 28, scope: !40)
!139 = !DILocation(line: 120, column: 28, scope: !40)
!140 = !DILocation(line: 122, column: 25, scope: !40)
!141 = !DILocation(line: 123, column: 25, scope: !40)
!142 = !DILocation(line: 124, column: 25, scope: !40)
!143 = !DILocation(line: 125, column: 25, scope: !40)
!144 = !DILocation(line: 127, column: 23, scope: !40)
!145 = !DILocation(line: 128, column: 23, scope: !40)
!146 = !DILocation(line: 129, column: 23, scope: !40)
!147 = !DILocation(line: 130, column: 23, scope: !40)
!148 = !DILocation(line: 285, column: 49, scope: !132, inlinedAt: !149)
!149 = distinct !DILocation(line: 131, column: 15, scope: !40)
!150 = !DILocation(line: 285, column: 49, scope: !132, inlinedAt: !151)
!151 = distinct !DILocation(line: 132, column: 15, scope: !40)
!152 = !DILocation(line: 285, column: 49, scope: !132, inlinedAt: !153)
!153 = distinct !DILocation(line: 133, column: 15, scope: !40)
!154 = !DILocation(line: 285, column: 49, scope: !132, inlinedAt: !155)
!155 = distinct !DILocation(line: 134, column: 15, scope: !40)
!156 = !DILocation(line: 1007, column: 10, scope: !157, inlinedAt: !159)
!157 = distinct !DISubprogram(name: "__float2half_rn", scope: !158, file: !158, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!158 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!159 = distinct !DILocation(line: 1077, column: 18, scope: !160, inlinedAt: !161)
!160 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !158, file: !158, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!161 = distinct !DILocation(line: 1295, column: 23, scope: !162, inlinedAt: !163)
!162 = distinct !DISubprogram(name: "__float22half2_rn", scope: !158, file: !158, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!163 = distinct !DILocation(line: 135, column: 29, scope: !40)
!164 = !{!165, !167}
!165 = distinct !{!165, !166, !"_ZL17__floats2half2_rnff: %agg.result"}
!166 = distinct !{!166, !"_ZL17__floats2half2_rnff"}
!167 = distinct !{!167, !168, !"_ZL17__float22half2_rn6float2: %agg.result"}
!168 = distinct !{!168, !"_ZL17__float22half2_rn6float2"}
!169 = !DILocation(line: 1007, column: 10, scope: !157, inlinedAt: !170)
!170 = distinct !DILocation(line: 1077, column: 38, scope: !160, inlinedAt: !161)
!171 = !DILocation(line: 1007, column: 10, scope: !157, inlinedAt: !172)
!172 = distinct !DILocation(line: 1077, column: 18, scope: !160, inlinedAt: !173)
!173 = distinct !DILocation(line: 1295, column: 23, scope: !162, inlinedAt: !174)
!174 = distinct !DILocation(line: 136, column: 29, scope: !40)
!175 = !{!176, !178}
!176 = distinct !{!176, !177, !"_ZL17__floats2half2_rnff: %agg.result"}
!177 = distinct !{!177, !"_ZL17__floats2half2_rnff"}
!178 = distinct !{!178, !179, !"_ZL17__float22half2_rn6float2: %agg.result"}
!179 = distinct !{!179, !"_ZL17__float22half2_rn6float2"}
!180 = !DILocation(line: 1007, column: 10, scope: !157, inlinedAt: !181)
!181 = distinct !DILocation(line: 1077, column: 38, scope: !160, inlinedAt: !173)
!182 = !DILocation(line: 137, column: 36, scope: !40)
!183 = !DILocation(line: 1082, column: 16, scope: !184, inlinedAt: !185)
!184 = distinct !DISubprogram(name: "__half2float", scope: !158, file: !158, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!185 = distinct !DILocation(line: 136, column: 55, scope: !186, inlinedAt: !187)
!186 = distinct !DISubprogram(name: "operator float", scope: !158, file: !158, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!187 = distinct !DILocation(line: 141, column: 52, scope: !40)
!188 = !DILocation(line: 141, column: 42, scope: !40)
!189 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !190)
!190 = distinct !DILocation(line: 143, column: 42, scope: !40)
!191 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !192)
!192 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !193)
!193 = distinct !DILocation(line: 1019, column: 11, scope: !95, inlinedAt: !190)
!194 = !DILocation(line: 171, column: 10, scope: !98, inlinedAt: !192)
!195 = !DILocation(line: 991, column: 20, scope: !100, inlinedAt: !193)
!196 = !DILocation(line: 992, column: 36, scope: !100, inlinedAt: !193)
!197 = !DILocation(line: 992, column: 17, scope: !100, inlinedAt: !193)
!198 = !DILocation(line: 992, column: 11, scope: !100, inlinedAt: !193)
!199 = !DILocation(line: 993, column: 43, scope: !100, inlinedAt: !193)
!200 = !DILocation(line: 993, column: 10, scope: !100, inlinedAt: !193)
!201 = !DILocation(line: 1020, column: 14, scope: !95, inlinedAt: !190)
!202 = !DILocation(line: 143, column: 40, scope: !40)
!203 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !204)
!204 = distinct !DILocation(line: 144, column: 42, scope: !40)
!205 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !206)
!206 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !207)
!207 = distinct !DILocation(line: 1019, column: 11, scope: !95, inlinedAt: !204)
!208 = !DILocation(line: 171, column: 10, scope: !98, inlinedAt: !206)
!209 = !DILocation(line: 991, column: 20, scope: !100, inlinedAt: !207)
!210 = !DILocation(line: 992, column: 36, scope: !100, inlinedAt: !207)
!211 = !DILocation(line: 992, column: 17, scope: !100, inlinedAt: !207)
!212 = !DILocation(line: 992, column: 11, scope: !100, inlinedAt: !207)
!213 = !DILocation(line: 993, column: 43, scope: !100, inlinedAt: !207)
!214 = !DILocation(line: 993, column: 10, scope: !100, inlinedAt: !207)
!215 = !DILocation(line: 1020, column: 14, scope: !95, inlinedAt: !204)
!216 = !DILocation(line: 144, column: 40, scope: !40)
!217 = !DILocation(line: 68, column: 3, scope: !51, inlinedAt: !218)
!218 = distinct !DILocation(line: 192, column: 3, scope: !54, inlinedAt: !219)
!219 = distinct !DILocation(line: 146, column: 7, scope: !40)
!220 = !DILocation(line: 69, column: 3, scope: !51, inlinedAt: !218)
!221 = !DILocation(line: 70, column: 3, scope: !51, inlinedAt: !218)
!222 = !DILocation(line: 149, column: 54, scope: !40)
!223 = !DILocation(line: 149, column: 40, scope: !40)
!224 = !DILocation(line: 156, column: 43, scope: !40)
!225 = !DILocation(line: 156, column: 176, scope: !40)
!226 = !DILocation(line: 154, column: 27, scope: !40)
!227 = !DILocation(line: 156, column: 59, scope: !40)
!228 = !DILocation(line: 68, column: 3, scope: !51, inlinedAt: !229)
!229 = distinct !DILocation(line: 192, column: 3, scope: !54, inlinedAt: !230)
!230 = distinct !DILocation(line: 158, column: 7, scope: !40)
!231 = !DILocation(line: 69, column: 3, scope: !51, inlinedAt: !229)
!232 = !DILocation(line: 70, column: 3, scope: !51, inlinedAt: !229)
!233 = !DILocation(line: 161, column: 138, scope: !40)
!234 = !DILocation(line: 161, column: 82, scope: !40)
!235 = !DILocation(line: 161, column: 46, scope: !40)
!236 = !DILocation(line: 166, column: 46, scope: !40)
!237 = !DILocation(line: 145, column: 40, scope: !40)
!238 = !DILocation(line: 51, column: 40, scope: !40)
!239 = !DILocation(line: 0, scope: !40)
!240 = !DILocation(line: 52, column: 88, scope: !40)
!241 = !DILocation(line: 98, column: 23, scope: !40)
!242 = !DILocation(line: 101, column: 24, scope: !40)
!243 = !DILocation(line: 102, column: 24, scope: !40)
!244 = !DILocation(line: 103, column: 24, scope: !40)
!245 = !DILocation(line: 106, column: 40, scope: !40)
!246 = !DILocation(line: 176, column: 21, scope: !40)
!247 = !DILocation(line: 178, column: 22, scope: !40)
!248 = !DILocation(line: 179, column: 22, scope: !40)
!249 = !DILocation(line: 180, column: 22, scope: !40)
!250 = !DILocation(line: 181, column: 22, scope: !40)
!251 = !DILocation(line: 68, column: 3, scope: !51, inlinedAt: !252)
!252 = distinct !DILocation(line: 192, column: 3, scope: !54, inlinedAt: !253)
!253 = distinct !DILocation(line: 184, column: 3, scope: !40)
!254 = !DILocation(line: 69, column: 3, scope: !51, inlinedAt: !252)
!255 = !DILocation(line: 70, column: 3, scope: !51, inlinedAt: !252)
!256 = !DILocation(line: 1007, column: 10, scope: !157, inlinedAt: !257)
!257 = distinct !DILocation(line: 1077, column: 18, scope: !160, inlinedAt: !258)
!258 = distinct !DILocation(line: 1295, column: 23, scope: !162, inlinedAt: !259)
!259 = distinct !DILocation(line: 189, column: 27, scope: !40)
!260 = !{!261, !263}
!261 = distinct !{!261, !262, !"_ZL17__floats2half2_rnff: %agg.result"}
!262 = distinct !{!262, !"_ZL17__floats2half2_rnff"}
!263 = distinct !{!263, !264, !"_ZL17__float22half2_rn6float2: %agg.result"}
!264 = distinct !{!264, !"_ZL17__float22half2_rn6float2"}
!265 = !DILocation(line: 1007, column: 10, scope: !157, inlinedAt: !266)
!266 = distinct !DILocation(line: 1077, column: 38, scope: !160, inlinedAt: !258)
!267 = !DILocation(line: 596, column: 67, scope: !268, inlinedAt: !269)
!268 = distinct !DISubprogram(name: "__half2", scope: !158, file: !158, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!269 = distinct !DILocation(line: 1077, column: 10, scope: !160, inlinedAt: !258)
!270 = !DILocation(line: 596, column: 73, scope: !268, inlinedAt: !269)
!271 = !DILocation(line: 1007, column: 10, scope: !157, inlinedAt: !272)
!272 = distinct !DILocation(line: 1077, column: 18, scope: !160, inlinedAt: !273)
!273 = distinct !DILocation(line: 1295, column: 23, scope: !162, inlinedAt: !274)
!274 = distinct !DILocation(line: 190, column: 27, scope: !40)
!275 = !{!276, !278}
!276 = distinct !{!276, !277, !"_ZL17__floats2half2_rnff: %agg.result"}
!277 = distinct !{!277, !"_ZL17__floats2half2_rnff"}
!278 = distinct !{!278, !279, !"_ZL17__float22half2_rn6float2: %agg.result"}
!279 = distinct !{!279, !"_ZL17__float22half2_rn6float2"}
!280 = !DILocation(line: 1007, column: 10, scope: !157, inlinedAt: !281)
!281 = distinct !DILocation(line: 1077, column: 38, scope: !160, inlinedAt: !273)
!282 = !DILocation(line: 596, column: 67, scope: !268, inlinedAt: !283)
!283 = distinct !DILocation(line: 1077, column: 10, scope: !160, inlinedAt: !273)
!284 = !DILocation(line: 596, column: 73, scope: !268, inlinedAt: !283)
!285 = !DILocation(line: 191, column: 38, scope: !40)
!286 = !DILocation(line: 192, column: 158, scope: !40)
!287 = !DILocation(line: 192, column: 39, scope: !40)
!288 = !DILocation(line: 192, column: 201, scope: !40)
!289 = !DILocation(line: 68, column: 3, scope: !51, inlinedAt: !290)
!290 = distinct !DILocation(line: 192, column: 3, scope: !54, inlinedAt: !291)
!291 = distinct !DILocation(line: 194, column: 3, scope: !40)
!292 = !DILocation(line: 69, column: 3, scope: !51, inlinedAt: !290)
!293 = !DILocation(line: 70, column: 3, scope: !51, inlinedAt: !290)
!294 = !DILocation(line: 196, column: 8, scope: !40)
!295 = !DILocation(line: 196, column: 3, scope: !40)
!296 = !DILocation(line: 197, column: 22, scope: !40)
!297 = !DILocation(line: 197, column: 134, scope: !40)
!298 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!299 = !{i32 2, i32 -1, i32 -1, i32 -1}
!300 = !DILocation(line: 197, column: 170, scope: !40)
!301 = !DILocation(line: 199, column: 1, scope: !40)
