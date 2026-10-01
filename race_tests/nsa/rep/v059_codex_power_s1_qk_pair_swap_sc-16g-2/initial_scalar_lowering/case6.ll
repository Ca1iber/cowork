; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v059_codex_power_s1_qk_pair_swap_sc-16g-2/case6.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v059_codex_power_s1_qk_pair_swap_sc-16g-2/codegen/case6.device.cpp"
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
define protected metaxgpu_kernel void @native_sparse_attention_kernel(ptr addrspace(1) noalias nocapture noundef readonly %Indices.coerce, ptr addrspace(4) noalias noundef readonly %K.coerce, ptr addrspace(1) noalias nocapture noundef writeonly %Output.coerce, ptr addrspace(4) noalias nocapture noundef readonly %Q.coerce, ptr addrspace(4) noalias noundef readonly %V.coerce) local_unnamed_addr #3 !dbg !40 {
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
  br i1 %or.cond, label %for.body649.preheader, label %for.cond.preheader, !dbg !54

for.body649.preheader:                            ; preds = %entry
  %.pre = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  %.pre2360 = shl nuw nsw i32 %.pre, 7
  %.pre2361 = lshr i32 %.pre, 5
  %.pre2362 = and i32 %.pre, 7
  %.pre2363 = lshr i32 %.pre, 2
  %.pre2365 = and i32 %.pre2363, 4
  %.pre2366 = xor i32 %.pre2361, %.pre2362, !dbg !56
  %.pre2367 = shl nuw nsw i32 %.pre2366, 3, !dbg !57
  %.pre2368 = add nuw nsw i32 %.pre2361, 2, !dbg !58
  %.pre2369 = xor i32 %.pre2368, %.pre2362, !dbg !56
  %.pre2370 = shl nuw nsw i32 %.pre2369, 3, !dbg !57
  %.pre2371 = add nuw nsw i32 %.pre2361, 4, !dbg !58
  %.pre2372 = xor i32 %.pre2371, %.pre2362, !dbg !56
  %.pre2373 = shl nuw nsw i32 %.pre2372, 3, !dbg !57
  %.pre2374 = add nuw nsw i32 %.pre2361, 6, !dbg !58
  %.pre2375 = xor i32 %.pre2374, %.pre2362, !dbg !56
  %.pre2376 = shl nuw nsw i32 %.pre2375, 3, !dbg !57
  %.pre2377 = shl nuw nsw i32 %.pre, 3
  %.pre2379 = lshr i32 %.pre, 4
  %.pre2380 = shl nsw i32 %0, 21
  %.pre2381 = shl nsw i32 %1, 11
  %.pre2382 = add nuw nsw i32 %.pre2380, %.pre2381
  %.pre2383 = add nuw nsw i32 %.pre2382, %.pre2377
  %.pre2384 = zext nneg i32 %.pre2383 to i64, !dbg !59
  %.pre2386 = add nuw nsw i32 %.pre2379, 4, !dbg !60
  %.pre2387 = add nuw nsw i64 %.pre2384, 512, !dbg !61
  %.pre2389 = add nuw nsw i64 %.pre2384, 1024, !dbg !61
  %.pre2391 = add nuw nsw i64 %.pre2384, 1536, !dbg !61
  br label %if.end659, !dbg !62

for.cond.preheader:                               ; preds = %entry
  %mul13 = shl nsw i32 %0, 21
  %mul15 = shl nsw i32 %1, 11
  %add16 = add nuw nsw i32 %mul13, %mul15
  %3 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  %mul20 = shl nuw nsw i32 %3, 3
  %add18 = add nuw nsw i32 %add16, %mul20
  %4 = shl nuw nsw i32 %3, 7
  %mul36 = and i32 %4, 1024
  %5 = shl nuw nsw i32 %3, 2
  %mul41 = and i32 %5, 4032
  %and44 = and i32 %3, 7
  %shr48 = lshr i32 %3, 4
  %and63 = lshr i32 %3, 3
  %shr64 = and i32 %and63, 1
  %add38 = add nuw nsw i32 %mul41, %mul36
  %6 = zext nneg i32 %mul20 to i64, !dbg !63
  %7 = zext nneg i32 %add18 to i64, !dbg !63
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !64
  %qk_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %add.ptr, align 16, !dbg !65
  %qk_fetch.sroa.26.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 2, !dbg !65
  %qk_fetch.sroa.26.0.copyload = load i16, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.sroa_idx, align 2, !dbg !65, !tbaa !30
  %qk_fetch.sroa.38.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 4, !dbg !65
  %qk_fetch.sroa.38.0.copyload = load i16, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr.sroa_idx, align 4, !dbg !65
  %qk_fetch.sroa.50.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 6, !dbg !65
  %qk_fetch.sroa.50.0.copyload = load i16, ptr addrspace(4) %qk_fetch.sroa.50.0.add.ptr.sroa_idx, align 2, !dbg !65, !tbaa !30
  %qk_fetch.sroa.62.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !65
  %qk_fetch.sroa.62.0.copyload = load i16, ptr addrspace(4) %qk_fetch.sroa.62.0.add.ptr.sroa_idx, align 8, !dbg !65
  %qk_fetch.sroa.74.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 10, !dbg !65
  %qk_fetch.sroa.74.0.copyload = load i16, ptr addrspace(4) %qk_fetch.sroa.74.0.add.ptr.sroa_idx, align 2, !dbg !65, !tbaa !30
  %qk_fetch.sroa.86.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 12, !dbg !65
  %qk_fetch.sroa.86.0.copyload = load i16, ptr addrspace(4) %qk_fetch.sroa.86.0.add.ptr.sroa_idx, align 4, !dbg !65
  %qk_fetch.sroa.98.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 14, !dbg !65
  %qk_fetch.sroa.98.0.copyload = load i16, ptr addrspace(4) %qk_fetch.sroa.98.0.add.ptr.sroa_idx, align 2, !dbg !65, !tbaa !30
  %xor = xor i32 %shr48, %and44
  %mul50 = shl nuw nsw i32 %xor, 3
  %shr61 = lshr i32 %3, 7
  %xor65 = xor i32 %shr61, %shr64
  %mul66 = shl nuw nsw i32 %xor65, 2
  %add51 = add nuw nsw i32 %add38, %mul50
  %add68 = add nuw nsw i32 %add51, %mul66, !dbg !66
  %arrayidx70 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68, !dbg !67
  store i16 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %arrayidx70, align 8, !dbg !68, !tbaa !69
  %xor67.1 = or disjoint i32 %mul66, 1, !dbg !70
  %add68.1 = add nuw nsw i32 %add51, %xor67.1, !dbg !66
  %arrayidx70.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.1, !dbg !67
  store i16 %qk_fetch.sroa.26.0.copyload, ptr addrspace(3) %arrayidx70.1, align 2, !dbg !68, !tbaa !69
  %xor67.2 = or disjoint i32 %mul66, 2, !dbg !70
  %add68.2 = add nuw nsw i32 %add51, %xor67.2, !dbg !66
  %arrayidx70.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.2, !dbg !67
  store i16 %qk_fetch.sroa.38.0.copyload, ptr addrspace(3) %arrayidx70.2, align 4, !dbg !68, !tbaa !69
  %xor67.3 = or disjoint i32 %mul66, 3, !dbg !70
  %add68.3 = add nuw nsw i32 %add51, %xor67.3, !dbg !66
  %arrayidx70.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.3, !dbg !67
  store i16 %qk_fetch.sroa.50.0.copyload, ptr addrspace(3) %arrayidx70.3, align 2, !dbg !68, !tbaa !69
  %xor67.1994 = xor i32 %mul66, 4, !dbg !70
  %add68.1995 = add nuw nsw i32 %add51, %xor67.1994, !dbg !66
  %arrayidx70.1996 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.1995, !dbg !67
  store i16 %qk_fetch.sroa.62.0.copyload, ptr addrspace(3) %arrayidx70.1996, align 8, !dbg !68, !tbaa !69
  %xor67.1.1 = xor i32 %mul66, 5, !dbg !70
  %add68.1.1 = add nuw nsw i32 %add51, %xor67.1.1, !dbg !66
  %arrayidx70.1.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.1.1, !dbg !67
  store i16 %qk_fetch.sroa.74.0.copyload, ptr addrspace(3) %arrayidx70.1.1, align 2, !dbg !68, !tbaa !69
  %xor67.2.1 = xor i32 %mul66, 6, !dbg !70
  %add68.2.1 = add nuw nsw i32 %add51, %xor67.2.1, !dbg !66
  %arrayidx70.2.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.2.1, !dbg !67
  store i16 %qk_fetch.sroa.86.0.copyload, ptr addrspace(3) %arrayidx70.2.1, align 4, !dbg !68, !tbaa !69
  %xor67.3.1 = xor i32 %mul66, 7, !dbg !70
  %add68.3.1 = add nuw nsw i32 %add51, %xor67.3.1, !dbg !66
  %arrayidx70.3.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.3.1, !dbg !67
  store i16 %qk_fetch.sroa.98.0.copyload, ptr addrspace(3) %arrayidx70.3.1, align 2, !dbg !68, !tbaa !69
  %8 = add nuw nsw i64 %7, 512, !dbg !71
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %8, !dbg !64
  %qk_fetch.sroa.0.0.copyload2196 = load i16, ptr addrspace(4) %add.ptr.1, align 16, !dbg !65
  %qk_fetch.sroa.26.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 2, !dbg !65
  %qk_fetch.sroa.26.0.copyload2207 = load i16, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.1.sroa_idx, align 2, !dbg !65, !tbaa !30
  %qk_fetch.sroa.38.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 4, !dbg !65
  %qk_fetch.sroa.38.0.copyload2229 = load i16, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr.1.sroa_idx, align 4, !dbg !65
  %qk_fetch.sroa.50.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 6, !dbg !65
  %qk_fetch.sroa.50.0.copyload2251 = load i16, ptr addrspace(4) %qk_fetch.sroa.50.0.add.ptr.1.sroa_idx, align 2, !dbg !65, !tbaa !30
  %qk_fetch.sroa.62.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !65
  %qk_fetch.sroa.62.0.copyload2273 = load i16, ptr addrspace(4) %qk_fetch.sroa.62.0.add.ptr.1.sroa_idx, align 8, !dbg !65
  %qk_fetch.sroa.74.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 10, !dbg !65
  %qk_fetch.sroa.74.0.copyload2295 = load i16, ptr addrspace(4) %qk_fetch.sroa.74.0.add.ptr.1.sroa_idx, align 2, !dbg !65, !tbaa !30
  %qk_fetch.sroa.86.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 12, !dbg !65
  %qk_fetch.sroa.86.0.copyload2317 = load i16, ptr addrspace(4) %qk_fetch.sroa.86.0.add.ptr.1.sroa_idx, align 4, !dbg !65
  %qk_fetch.sroa.98.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 14, !dbg !65
  %qk_fetch.sroa.98.0.copyload2339 = load i16, ptr addrspace(4) %qk_fetch.sroa.98.0.add.ptr.1.sroa_idx, align 2, !dbg !65, !tbaa !30
  %add49.1 = add nuw nsw i32 %shr48, 4
  %xor.1 = xor i32 %add49.1, %and44
  %mul50.1 = shl nuw nsw i32 %xor.1, 3
  %9 = add nuw nsw i32 %mul20, 512
  %shr61.1 = lshr i32 %9, 10
  %xor65.1 = xor i32 %shr61.1, %shr64
  %mul66.1 = shl nuw nsw i32 %xor65.1, 2
  %10 = add nuw nsw i32 %add38, 256
  %add51.1 = add nuw nsw i32 %10, %mul50.1
  %add68.11004 = add nuw nsw i32 %add51.1, %mul66.1, !dbg !66
  %arrayidx70.11005 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.11004, !dbg !67
  store i16 %qk_fetch.sroa.0.0.copyload2196, ptr addrspace(3) %arrayidx70.11005, align 8, !dbg !68, !tbaa !69
  %xor67.1.11007 = or disjoint i32 %mul66.1, 1, !dbg !70
  %add68.1.11008 = add nuw nsw i32 %add51.1, %xor67.1.11007, !dbg !66
  %arrayidx70.1.11009 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.1.11008, !dbg !67
  store i16 %qk_fetch.sroa.26.0.copyload2207, ptr addrspace(3) %arrayidx70.1.11009, align 2, !dbg !68, !tbaa !69
  %xor67.2.11011 = or disjoint i32 %mul66.1, 2, !dbg !70
  %add68.2.11012 = add nuw nsw i32 %add51.1, %xor67.2.11011, !dbg !66
  %arrayidx70.2.11013 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.2.11012, !dbg !67
  store i16 %qk_fetch.sroa.38.0.copyload2229, ptr addrspace(3) %arrayidx70.2.11013, align 4, !dbg !68, !tbaa !69
  %xor67.3.11015 = or disjoint i32 %mul66.1, 3, !dbg !70
  %add68.3.11016 = add nuw nsw i32 %add51.1, %xor67.3.11015, !dbg !66
  %arrayidx70.3.11017 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.3.11016, !dbg !67
  store i16 %qk_fetch.sroa.50.0.copyload2251, ptr addrspace(3) %arrayidx70.3.11017, align 2, !dbg !68, !tbaa !69
  %xor67.1994.1 = xor i32 %mul66.1, 4, !dbg !70
  %add68.1995.1 = add nuw nsw i32 %add51.1, %xor67.1994.1, !dbg !66
  %arrayidx70.1996.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.1995.1, !dbg !67
  store i16 %qk_fetch.sroa.62.0.copyload2273, ptr addrspace(3) %arrayidx70.1996.1, align 8, !dbg !68, !tbaa !69
  %xor67.1.1.1 = xor i32 %mul66.1, 5, !dbg !70
  %add68.1.1.1 = add nuw nsw i32 %add51.1, %xor67.1.1.1, !dbg !66
  %arrayidx70.1.1.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.1.1.1, !dbg !67
  store i16 %qk_fetch.sroa.74.0.copyload2295, ptr addrspace(3) %arrayidx70.1.1.1, align 2, !dbg !68, !tbaa !69
  %xor67.2.1.1 = xor i32 %mul66.1, 6, !dbg !70
  %add68.2.1.1 = add nuw nsw i32 %add51.1, %xor67.2.1.1, !dbg !66
  %arrayidx70.2.1.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.2.1.1, !dbg !67
  store i16 %qk_fetch.sroa.86.0.copyload2317, ptr addrspace(3) %arrayidx70.2.1.1, align 4, !dbg !68, !tbaa !69
  %xor67.3.1.1 = xor i32 %mul66.1, 7, !dbg !70
  %add68.3.1.1 = add nuw nsw i32 %add51.1, %xor67.3.1.1, !dbg !66
  %arrayidx70.3.1.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.3.1.1, !dbg !67
  store i16 %qk_fetch.sroa.98.0.copyload2339, ptr addrspace(3) %arrayidx70.3.1.1, align 2, !dbg !68, !tbaa !69
  %11 = add nuw nsw i64 %7, 1024, !dbg !71
  %add.ptr.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %11, !dbg !64
  %qk_fetch.sroa.0.0.copyload2197 = load i16, ptr addrspace(4) %add.ptr.2, align 16, !dbg !65
  %qk_fetch.sroa.26.0.add.ptr.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.2, i64 2, !dbg !65
  %qk_fetch.sroa.26.0.copyload2208 = load i16, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.2.sroa_idx, align 2, !dbg !65, !tbaa !30
  %qk_fetch.sroa.38.0.add.ptr.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.2, i64 4, !dbg !65
  %qk_fetch.sroa.38.0.copyload2230 = load i16, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr.2.sroa_idx, align 4, !dbg !65
  %qk_fetch.sroa.50.0.add.ptr.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.2, i64 6, !dbg !65
  %qk_fetch.sroa.50.0.copyload2252 = load i16, ptr addrspace(4) %qk_fetch.sroa.50.0.add.ptr.2.sroa_idx, align 2, !dbg !65, !tbaa !30
  %qk_fetch.sroa.62.0.add.ptr.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.2, i64 8, !dbg !65
  %qk_fetch.sroa.62.0.copyload2274 = load i16, ptr addrspace(4) %qk_fetch.sroa.62.0.add.ptr.2.sroa_idx, align 8, !dbg !65
  %qk_fetch.sroa.74.0.add.ptr.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.2, i64 10, !dbg !65
  %qk_fetch.sroa.74.0.copyload2296 = load i16, ptr addrspace(4) %qk_fetch.sroa.74.0.add.ptr.2.sroa_idx, align 2, !dbg !65, !tbaa !30
  %qk_fetch.sroa.86.0.add.ptr.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.2, i64 12, !dbg !65
  %qk_fetch.sroa.86.0.copyload2318 = load i16, ptr addrspace(4) %qk_fetch.sroa.86.0.add.ptr.2.sroa_idx, align 4, !dbg !65
  %qk_fetch.sroa.98.0.add.ptr.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.2, i64 14, !dbg !65
  %qk_fetch.sroa.98.0.copyload2340 = load i16, ptr addrspace(4) %qk_fetch.sroa.98.0.add.ptr.2.sroa_idx, align 2, !dbg !65, !tbaa !30
  %12 = add nuw nsw i32 %mul20, 1024
  %shr61.2 = lshr i32 %12, 10
  %xor65.2 = xor i32 %shr61.2, %shr64
  %mul66.2 = shl nuw nsw i32 %xor65.2, 2
  %13 = add nuw nsw i32 %add38, 512
  %add51.2 = add nuw nsw i32 %13, %mul50
  %add68.21019 = add nuw nsw i32 %add51.2, %mul66.2, !dbg !66
  %arrayidx70.21020 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.21019, !dbg !67
  store i16 %qk_fetch.sroa.0.0.copyload2197, ptr addrspace(3) %arrayidx70.21020, align 8, !dbg !68, !tbaa !69
  %xor67.1.2 = or disjoint i32 %mul66.2, 1, !dbg !70
  %add68.1.2 = add nuw nsw i32 %add51.2, %xor67.1.2, !dbg !66
  %arrayidx70.1.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.1.2, !dbg !67
  store i16 %qk_fetch.sroa.26.0.copyload2208, ptr addrspace(3) %arrayidx70.1.2, align 2, !dbg !68, !tbaa !69
  %xor67.2.2 = or disjoint i32 %mul66.2, 2, !dbg !70
  %add68.2.2 = add nuw nsw i32 %add51.2, %xor67.2.2, !dbg !66
  %arrayidx70.2.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.2.2, !dbg !67
  store i16 %qk_fetch.sroa.38.0.copyload2230, ptr addrspace(3) %arrayidx70.2.2, align 4, !dbg !68, !tbaa !69
  %xor67.3.2 = or disjoint i32 %mul66.2, 3, !dbg !70
  %add68.3.2 = add nuw nsw i32 %add51.2, %xor67.3.2, !dbg !66
  %arrayidx70.3.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.3.2, !dbg !67
  store i16 %qk_fetch.sroa.50.0.copyload2252, ptr addrspace(3) %arrayidx70.3.2, align 2, !dbg !68, !tbaa !69
  %xor67.1994.2 = xor i32 %mul66.2, 4, !dbg !70
  %add68.1995.2 = add nuw nsw i32 %add51.2, %xor67.1994.2, !dbg !66
  %arrayidx70.1996.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.1995.2, !dbg !67
  store i16 %qk_fetch.sroa.62.0.copyload2274, ptr addrspace(3) %arrayidx70.1996.2, align 8, !dbg !68, !tbaa !69
  %xor67.1.1.2 = xor i32 %mul66.2, 5, !dbg !70
  %add68.1.1.2 = add nuw nsw i32 %add51.2, %xor67.1.1.2, !dbg !66
  %arrayidx70.1.1.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.1.1.2, !dbg !67
  store i16 %qk_fetch.sroa.74.0.copyload2296, ptr addrspace(3) %arrayidx70.1.1.2, align 2, !dbg !68, !tbaa !69
  %xor67.2.1.2 = xor i32 %mul66.2, 6, !dbg !70
  %add68.2.1.2 = add nuw nsw i32 %add51.2, %xor67.2.1.2, !dbg !66
  %arrayidx70.2.1.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.2.1.2, !dbg !67
  store i16 %qk_fetch.sroa.86.0.copyload2318, ptr addrspace(3) %arrayidx70.2.1.2, align 4, !dbg !68, !tbaa !69
  %xor67.3.1.2 = xor i32 %mul66.2, 7, !dbg !70
  %add68.3.1.2 = add nuw nsw i32 %add51.2, %xor67.3.1.2, !dbg !66
  %arrayidx70.3.1.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.3.1.2, !dbg !67
  store i16 %qk_fetch.sroa.98.0.copyload2340, ptr addrspace(3) %arrayidx70.3.1.2, align 2, !dbg !68, !tbaa !69
  %14 = add nuw nsw i64 %7, 1536, !dbg !71
  %add.ptr.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %14, !dbg !64
  %qk_fetch.sroa.0.0.copyload2198 = load i16, ptr addrspace(4) %add.ptr.3, align 16, !dbg !65
  %qk_fetch.sroa.26.0.add.ptr.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.3, i64 2, !dbg !65
  %qk_fetch.sroa.26.0.copyload2209 = load i16, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.3.sroa_idx, align 2, !dbg !65, !tbaa !30
  %qk_fetch.sroa.38.0.add.ptr.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.3, i64 4, !dbg !65
  %qk_fetch.sroa.38.0.copyload2231 = load i16, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr.3.sroa_idx, align 4, !dbg !65
  %qk_fetch.sroa.50.0.add.ptr.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.3, i64 6, !dbg !65
  %qk_fetch.sroa.50.0.copyload2253 = load i16, ptr addrspace(4) %qk_fetch.sroa.50.0.add.ptr.3.sroa_idx, align 2, !dbg !65, !tbaa !30
  %qk_fetch.sroa.62.0.add.ptr.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.3, i64 8, !dbg !65
  %qk_fetch.sroa.62.0.copyload2275 = load i16, ptr addrspace(4) %qk_fetch.sroa.62.0.add.ptr.3.sroa_idx, align 8, !dbg !65
  %qk_fetch.sroa.74.0.add.ptr.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.3, i64 10, !dbg !65
  %qk_fetch.sroa.74.0.copyload2297 = load i16, ptr addrspace(4) %qk_fetch.sroa.74.0.add.ptr.3.sroa_idx, align 2, !dbg !65, !tbaa !30
  %qk_fetch.sroa.86.0.add.ptr.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.3, i64 12, !dbg !65
  %qk_fetch.sroa.86.0.copyload2319 = load i16, ptr addrspace(4) %qk_fetch.sroa.86.0.add.ptr.3.sroa_idx, align 4, !dbg !65
  %qk_fetch.sroa.98.0.add.ptr.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.3, i64 14, !dbg !65
  %qk_fetch.sroa.98.0.copyload2341 = load i16, ptr addrspace(4) %qk_fetch.sroa.98.0.add.ptr.3.sroa_idx, align 2, !dbg !65, !tbaa !30
  %15 = add nuw nsw i32 %mul20, 1536
  %shr61.3 = lshr i32 %15, 10
  %xor65.3 = xor i32 %shr61.3, %shr64
  %mul66.3 = shl nuw nsw i32 %xor65.3, 2
  %narrow = add nuw nsw i32 %add38, 768
  %add51.3 = add nuw nsw i32 %narrow, %mul50.1
  %add68.31021 = add nuw nsw i32 %add51.3, %mul66.3, !dbg !66
  %arrayidx70.31022 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.31021, !dbg !67
  store i16 %qk_fetch.sroa.0.0.copyload2198, ptr addrspace(3) %arrayidx70.31022, align 8, !dbg !68, !tbaa !69
  %xor67.1.3 = or disjoint i32 %mul66.3, 1, !dbg !70
  %add68.1.3 = add nuw nsw i32 %add51.3, %xor67.1.3, !dbg !66
  %arrayidx70.1.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.1.3, !dbg !67
  store i16 %qk_fetch.sroa.26.0.copyload2209, ptr addrspace(3) %arrayidx70.1.3, align 2, !dbg !68, !tbaa !69
  %xor67.2.3 = or disjoint i32 %mul66.3, 2, !dbg !70
  %add68.2.3 = add nuw nsw i32 %add51.3, %xor67.2.3, !dbg !66
  %arrayidx70.2.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.2.3, !dbg !67
  store i16 %qk_fetch.sroa.38.0.copyload2231, ptr addrspace(3) %arrayidx70.2.3, align 4, !dbg !68, !tbaa !69
  %xor67.3.3 = or disjoint i32 %mul66.3, 3, !dbg !70
  %add68.3.3 = add nuw nsw i32 %add51.3, %xor67.3.3, !dbg !66
  %arrayidx70.3.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.3.3, !dbg !67
  store i16 %qk_fetch.sroa.50.0.copyload2253, ptr addrspace(3) %arrayidx70.3.3, align 2, !dbg !68, !tbaa !69
  %xor67.1994.3 = xor i32 %mul66.3, 4, !dbg !70
  %add68.1995.3 = add nuw nsw i32 %add51.3, %xor67.1994.3, !dbg !66
  %arrayidx70.1996.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.1995.3, !dbg !67
  store i16 %qk_fetch.sroa.62.0.copyload2275, ptr addrspace(3) %arrayidx70.1996.3, align 8, !dbg !68, !tbaa !69
  %xor67.1.1.3 = xor i32 %mul66.3, 5, !dbg !70
  %add68.1.1.3 = add nuw nsw i32 %add51.3, %xor67.1.1.3, !dbg !66
  %arrayidx70.1.1.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.1.1.3, !dbg !67
  store i16 %qk_fetch.sroa.74.0.copyload2297, ptr addrspace(3) %arrayidx70.1.1.3, align 2, !dbg !68, !tbaa !69
  %xor67.2.1.3 = xor i32 %mul66.3, 6, !dbg !70
  %add68.2.1.3 = add nuw nsw i32 %add51.3, %xor67.2.1.3, !dbg !66
  %arrayidx70.2.1.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.2.1.3, !dbg !67
  store i16 %qk_fetch.sroa.86.0.copyload2319, ptr addrspace(3) %arrayidx70.2.1.3, align 4, !dbg !68, !tbaa !69
  %xor67.3.1.3 = xor i32 %mul66.3, 7, !dbg !70
  %add68.3.1.3 = add nuw nsw i32 %add51.3, %xor67.3.1.3, !dbg !66
  %arrayidx70.3.1.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add68.3.1.3, !dbg !67
  store i16 %qk_fetch.sroa.98.0.copyload2341, ptr addrspace(3) %arrayidx70.3.1.3, align 2, !dbg !68, !tbaa !69
  fence syncscope("warp") release, !dbg !72
  tail call void @llvm.mxc.barrier.warp(), !dbg !78
  fence syncscope("warp") acquire, !dbg !79
  %and88 = shl nuw nsw i32 %3, 6
  %mul89 = and i32 %and88, 960
  %shr94 = lshr i32 %3, 5
  %16 = lshr i32 %3, 2
  %mul104 = and i32 %16, 4
  %xor98 = xor i32 %shr94, %and44
  %mul99 = shl nuw nsw i32 %xor98, 3
  %add100 = add nuw nsw i32 %mul89, %mul99
  %mul111 = shl nuw nsw i32 %shr64, 2
  %xor112 = xor i32 %mul104, %mul111, !dbg !80
  %add113 = or disjoint i32 %add100, %xor112, !dbg !81
  %arrayidx115 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113, !dbg !82
  %17 = load half, ptr addrspace(3) %arrayidx115, align 8, !dbg !83, !tbaa !69
  %q_local.sroa.0.0.vec.insert = insertelement <4 x half> poison, half %17, i64 0, !dbg !83
  %add105.1 = or disjoint i32 %mul104, 1, !dbg !84
  %xor112.1 = xor i32 %add105.1, %mul111, !dbg !80
  %add113.1 = or disjoint i32 %add100, %xor112.1, !dbg !81
  %arrayidx115.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.1, !dbg !82
  %18 = load half, ptr addrspace(3) %arrayidx115.1, align 2, !dbg !83, !tbaa !69
  %q_local.sroa.0.2.vec.insert = insertelement <4 x half> %q_local.sroa.0.0.vec.insert, half %18, i64 1, !dbg !83
  %add105.2 = or disjoint i32 %mul104, 2, !dbg !84
  %xor112.2 = xor i32 %add105.2, %mul111, !dbg !80
  %add113.2 = or disjoint i32 %add100, %xor112.2, !dbg !81
  %arrayidx115.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.2, !dbg !82
  %19 = load half, ptr addrspace(3) %arrayidx115.2, align 4, !dbg !83, !tbaa !69
  %q_local.sroa.0.4.vec.insert = insertelement <4 x half> %q_local.sroa.0.2.vec.insert, half %19, i64 2, !dbg !83
  %add105.3 = or disjoint i32 %mul104, 3, !dbg !84
  %xor112.3 = xor i32 %add105.3, %mul111, !dbg !80
  %add113.3 = or disjoint i32 %add100, %xor112.3, !dbg !81
  %arrayidx115.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.3, !dbg !82
  %20 = load half, ptr addrspace(3) %arrayidx115.3, align 2, !dbg !83, !tbaa !69
  %q_local.sroa.0.6.vec.insert = insertelement <4 x half> %q_local.sroa.0.4.vec.insert, half %20, i64 3, !dbg !83
  %add95.1 = add nuw nsw i32 %shr94, 2
  %xor98.1 = xor i32 %add95.1, %and44
  %mul99.1 = shl nuw nsw i32 %xor98.1, 3
  %add100.1 = add nuw nsw i32 %mul89, %mul99.1
  %add113.11024 = or disjoint i32 %add100.1, %xor112, !dbg !81
  %arrayidx115.11025 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.11024, !dbg !82
  %21 = load half, ptr addrspace(3) %arrayidx115.11025, align 8, !dbg !83, !tbaa !69
  %q_local.sroa.7.8.vec.insert = insertelement <4 x half> poison, half %21, i64 0, !dbg !83
  %add113.1.1 = or disjoint i32 %add100.1, %xor112.1, !dbg !81
  %arrayidx115.1.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.1.1, !dbg !82
  %22 = load half, ptr addrspace(3) %arrayidx115.1.1, align 2, !dbg !83, !tbaa !69
  %q_local.sroa.7.10.vec.insert = insertelement <4 x half> %q_local.sroa.7.8.vec.insert, half %22, i64 1, !dbg !83
  %add113.2.1 = or disjoint i32 %add100.1, %xor112.2, !dbg !81
  %arrayidx115.2.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.2.1, !dbg !82
  %23 = load half, ptr addrspace(3) %arrayidx115.2.1, align 4, !dbg !83, !tbaa !69
  %q_local.sroa.7.12.vec.insert = insertelement <4 x half> %q_local.sroa.7.10.vec.insert, half %23, i64 2, !dbg !83
  %add113.3.1 = or disjoint i32 %add100.1, %xor112.3, !dbg !81
  %arrayidx115.3.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.3.1, !dbg !82
  %24 = load half, ptr addrspace(3) %arrayidx115.3.1, align 2, !dbg !83, !tbaa !69
  %q_local.sroa.7.14.vec.insert = insertelement <4 x half> %q_local.sroa.7.12.vec.insert, half %24, i64 3, !dbg !83
  %add95.2 = add nuw nsw i32 %shr94, 4
  %xor98.2 = xor i32 %add95.2, %and44
  %mul99.2 = shl nuw nsw i32 %xor98.2, 3
  %add100.2 = add nuw nsw i32 %mul89, %mul99.2
  %add113.21028 = or disjoint i32 %add100.2, %xor112, !dbg !81
  %arrayidx115.21029 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.21028, !dbg !82
  %25 = load half, ptr addrspace(3) %arrayidx115.21029, align 8, !dbg !83, !tbaa !69
  %q_local.sroa.12.16.vec.insert = insertelement <4 x half> poison, half %25, i64 0, !dbg !83
  %add113.1.2 = or disjoint i32 %add100.2, %xor112.1, !dbg !81
  %arrayidx115.1.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.1.2, !dbg !82
  %26 = load half, ptr addrspace(3) %arrayidx115.1.2, align 2, !dbg !83, !tbaa !69
  %q_local.sroa.12.18.vec.insert = insertelement <4 x half> %q_local.sroa.12.16.vec.insert, half %26, i64 1, !dbg !83
  %add113.2.2 = or disjoint i32 %add100.2, %xor112.2, !dbg !81
  %arrayidx115.2.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.2.2, !dbg !82
  %27 = load half, ptr addrspace(3) %arrayidx115.2.2, align 4, !dbg !83, !tbaa !69
  %q_local.sroa.12.20.vec.insert = insertelement <4 x half> %q_local.sroa.12.18.vec.insert, half %27, i64 2, !dbg !83
  %add113.3.2 = or disjoint i32 %add100.2, %xor112.3, !dbg !81
  %arrayidx115.3.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.3.2, !dbg !82
  %28 = load half, ptr addrspace(3) %arrayidx115.3.2, align 2, !dbg !83, !tbaa !69
  %q_local.sroa.12.22.vec.insert = insertelement <4 x half> %q_local.sroa.12.20.vec.insert, half %28, i64 3, !dbg !83
  %add95.3 = add nuw nsw i32 %shr94, 6
  %xor98.3 = xor i32 %add95.3, %and44
  %mul99.3 = shl nuw nsw i32 %xor98.3, 3
  %add100.3 = add nuw nsw i32 %mul89, %mul99.3
  %add113.31032 = or disjoint i32 %add100.3, %xor112, !dbg !81
  %arrayidx115.31033 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.31032, !dbg !82
  %29 = load half, ptr addrspace(3) %arrayidx115.31033, align 8, !dbg !83, !tbaa !69
  %q_local.sroa.17.24.vec.insert = insertelement <4 x half> poison, half %29, i64 0, !dbg !83
  %add113.1.3 = or disjoint i32 %add100.3, %xor112.1, !dbg !81
  %arrayidx115.1.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.1.3, !dbg !82
  %30 = load half, ptr addrspace(3) %arrayidx115.1.3, align 2, !dbg !83, !tbaa !69
  %q_local.sroa.17.26.vec.insert = insertelement <4 x half> %q_local.sroa.17.24.vec.insert, half %30, i64 1, !dbg !83
  %add113.2.3 = or disjoint i32 %add100.3, %xor112.2, !dbg !81
  %arrayidx115.2.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.2.3, !dbg !82
  %31 = load half, ptr addrspace(3) %arrayidx115.2.3, align 4, !dbg !83, !tbaa !69
  %q_local.sroa.17.28.vec.insert = insertelement <4 x half> %q_local.sroa.17.26.vec.insert, half %31, i64 2, !dbg !83
  %add113.3.3 = or disjoint i32 %add100.3, %xor112.3, !dbg !81
  %arrayidx115.3.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.3.3, !dbg !82
  %32 = load half, ptr addrspace(3) %arrayidx115.3.3, align 2, !dbg !83, !tbaa !69
  %q_local.sroa.17.30.vec.insert = insertelement <4 x half> %q_local.sroa.17.28.vec.insert, half %32, i64 3, !dbg !83
  %add90.4 = or disjoint i32 %mul89, 1024
  %add100.4 = add nuw nsw i32 %add90.4, %mul99
  %xor110.4 = shl nuw nsw i32 %shr64, 2
  %mul111.4 = xor i32 %xor110.4, 4
  %xor112.4 = xor i32 %mul104, %mul111.4, !dbg !80
  %add113.4 = or disjoint i32 %add100.4, %xor112.4, !dbg !81
  %arrayidx115.4 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.4, !dbg !82
  %33 = load half, ptr addrspace(3) %arrayidx115.4, align 8, !dbg !83, !tbaa !69
  %q_local.sroa.22.32.vec.insert = insertelement <4 x half> poison, half %33, i64 0, !dbg !83
  %xor112.1.4 = xor i32 %add105.1, %mul111.4, !dbg !80
  %add113.1.4 = or disjoint i32 %add100.4, %xor112.1.4, !dbg !81
  %arrayidx115.1.4 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.1.4, !dbg !82
  %34 = load half, ptr addrspace(3) %arrayidx115.1.4, align 2, !dbg !83, !tbaa !69
  %q_local.sroa.22.34.vec.insert = insertelement <4 x half> %q_local.sroa.22.32.vec.insert, half %34, i64 1, !dbg !83
  %xor112.2.4 = xor i32 %add105.2, %mul111.4, !dbg !80
  %add113.2.4 = or disjoint i32 %add100.4, %xor112.2.4, !dbg !81
  %arrayidx115.2.4 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.2.4, !dbg !82
  %35 = load half, ptr addrspace(3) %arrayidx115.2.4, align 4, !dbg !83, !tbaa !69
  %q_local.sroa.22.36.vec.insert = insertelement <4 x half> %q_local.sroa.22.34.vec.insert, half %35, i64 2, !dbg !83
  %xor112.3.4 = xor i32 %add105.3, %mul111.4, !dbg !80
  %add113.3.4 = or disjoint i32 %add100.4, %xor112.3.4, !dbg !81
  %arrayidx115.3.4 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.3.4, !dbg !82
  %36 = load half, ptr addrspace(3) %arrayidx115.3.4, align 2, !dbg !83, !tbaa !69
  %q_local.sroa.22.38.vec.insert = insertelement <4 x half> %q_local.sroa.22.36.vec.insert, half %36, i64 3, !dbg !83
  %add100.5 = add nuw nsw i32 %add90.4, %mul99.1
  %add113.5 = or disjoint i32 %add100.5, %xor112.4, !dbg !81
  %arrayidx115.5 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.5, !dbg !82
  %37 = load half, ptr addrspace(3) %arrayidx115.5, align 8, !dbg !83, !tbaa !69
  %q_local.sroa.27.40.vec.insert = insertelement <4 x half> poison, half %37, i64 0, !dbg !83
  %add113.1.5 = or disjoint i32 %add100.5, %xor112.1.4, !dbg !81
  %arrayidx115.1.5 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.1.5, !dbg !82
  %38 = load half, ptr addrspace(3) %arrayidx115.1.5, align 2, !dbg !83, !tbaa !69
  %q_local.sroa.27.42.vec.insert = insertelement <4 x half> %q_local.sroa.27.40.vec.insert, half %38, i64 1, !dbg !83
  %add113.2.5 = or disjoint i32 %add100.5, %xor112.2.4, !dbg !81
  %arrayidx115.2.5 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.2.5, !dbg !82
  %39 = load half, ptr addrspace(3) %arrayidx115.2.5, align 4, !dbg !83, !tbaa !69
  %q_local.sroa.27.44.vec.insert = insertelement <4 x half> %q_local.sroa.27.42.vec.insert, half %39, i64 2, !dbg !83
  %add113.3.5 = or disjoint i32 %add100.5, %xor112.3.4, !dbg !81
  %arrayidx115.3.5 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.3.5, !dbg !82
  %40 = load half, ptr addrspace(3) %arrayidx115.3.5, align 2, !dbg !83, !tbaa !69
  %q_local.sroa.27.46.vec.insert = insertelement <4 x half> %q_local.sroa.27.44.vec.insert, half %40, i64 3, !dbg !83
  %add100.6 = add nuw nsw i32 %add90.4, %mul99.2
  %add113.6 = or disjoint i32 %add100.6, %xor112.4, !dbg !81
  %arrayidx115.6 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.6, !dbg !82
  %41 = load half, ptr addrspace(3) %arrayidx115.6, align 8, !dbg !83, !tbaa !69
  %q_local.sroa.32.48.vec.insert = insertelement <4 x half> poison, half %41, i64 0, !dbg !83
  %add113.1.6 = or disjoint i32 %add100.6, %xor112.1.4, !dbg !81
  %arrayidx115.1.6 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.1.6, !dbg !82
  %42 = load half, ptr addrspace(3) %arrayidx115.1.6, align 2, !dbg !83, !tbaa !69
  %q_local.sroa.32.50.vec.insert = insertelement <4 x half> %q_local.sroa.32.48.vec.insert, half %42, i64 1, !dbg !83
  %add113.2.6 = or disjoint i32 %add100.6, %xor112.2.4, !dbg !81
  %arrayidx115.2.6 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.2.6, !dbg !82
  %43 = load half, ptr addrspace(3) %arrayidx115.2.6, align 4, !dbg !83, !tbaa !69
  %q_local.sroa.32.52.vec.insert = insertelement <4 x half> %q_local.sroa.32.50.vec.insert, half %43, i64 2, !dbg !83
  %add113.3.6 = or disjoint i32 %add100.6, %xor112.3.4, !dbg !81
  %arrayidx115.3.6 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.3.6, !dbg !82
  %44 = load half, ptr addrspace(3) %arrayidx115.3.6, align 2, !dbg !83, !tbaa !69
  %q_local.sroa.32.54.vec.insert = insertelement <4 x half> %q_local.sroa.32.52.vec.insert, half %44, i64 3, !dbg !83
  %add100.7 = add nuw nsw i32 %add90.4, %mul99.3
  %add113.7 = or disjoint i32 %add100.7, %xor112.4, !dbg !81
  %arrayidx115.7 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.7, !dbg !82
  %45 = load half, ptr addrspace(3) %arrayidx115.7, align 8, !dbg !83, !tbaa !69
  %q_local.sroa.37.56.vec.insert = insertelement <4 x half> poison, half %45, i64 0, !dbg !83
  %add113.1.7 = or disjoint i32 %add100.7, %xor112.1.4, !dbg !81
  %arrayidx115.1.7 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.1.7, !dbg !82
  %46 = load half, ptr addrspace(3) %arrayidx115.1.7, align 2, !dbg !83, !tbaa !69
  %q_local.sroa.37.58.vec.insert = insertelement <4 x half> %q_local.sroa.37.56.vec.insert, half %46, i64 1, !dbg !83
  %add113.2.7 = or disjoint i32 %add100.7, %xor112.2.4, !dbg !81
  %arrayidx115.2.7 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.2.7, !dbg !82
  %47 = load half, ptr addrspace(3) %arrayidx115.2.7, align 4, !dbg !83, !tbaa !69
  %q_local.sroa.37.60.vec.insert = insertelement <4 x half> %q_local.sroa.37.58.vec.insert, half %47, i64 2, !dbg !83
  %add113.3.7 = or disjoint i32 %add100.7, %xor112.3.4, !dbg !81
  %arrayidx115.3.7 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add113.3.7, !dbg !82
  %48 = load half, ptr addrspace(3) %arrayidx115.3.7, align 2, !dbg !83, !tbaa !69
  %q_local.sroa.37.62.vec.insert = insertelement <4 x half> %q_local.sroa.37.60.vec.insert, half %48, i64 3, !dbg !83
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %conv = zext nneg i32 %0 to i64
  %conv135 = zext nneg i32 %mul7 to i64
  %.idx = shl nuw nsw i64 %conv135, 8
  %invariant.gep = getelementptr inbounds i8, ptr addrspace(4) %K.coerce, i64 %.idx, !dbg !90
  %invariant.gep957 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %6, !dbg !90
  %49 = and i32 %3, 8
  %.idx989 = shl nuw nsw i64 %conv, 18, !dbg !91
  %50 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep957, i64 %.idx989, !dbg !91
  %qk_fetch.sroa.0.0.copyload2195 = load i16, ptr addrspace(4) %50, align 16, !dbg !92
  %qk_fetch.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 2, !dbg !92
  %qk_fetch.sroa.26.0.copyload2206 = load i16, ptr addrspace(4) %qk_fetch.sroa.26.0..sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.38.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 4, !dbg !92
  %qk_fetch.sroa.38.0.copyload2228 = load i16, ptr addrspace(4) %qk_fetch.sroa.38.0..sroa_idx, align 4, !dbg !92
  %qk_fetch.sroa.50.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 6, !dbg !92
  %qk_fetch.sroa.50.0.copyload2250 = load i16, ptr addrspace(4) %qk_fetch.sroa.50.0..sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.62.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 8, !dbg !92
  %qk_fetch.sroa.62.0.copyload2272 = load i16, ptr addrspace(4) %qk_fetch.sroa.62.0..sroa_idx, align 8, !dbg !92
  %qk_fetch.sroa.74.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 10, !dbg !92
  %qk_fetch.sroa.74.0.copyload2294 = load i16, ptr addrspace(4) %qk_fetch.sroa.74.0..sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.86.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 12, !dbg !92
  %qk_fetch.sroa.86.0.copyload2316 = load i16, ptr addrspace(4) %qk_fetch.sroa.86.0..sroa_idx, align 4, !dbg !92
  %qk_fetch.sroa.98.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 14, !dbg !92
  %qk_fetch.sroa.98.0.copyload2338 = load i16, ptr addrspace(4) %qk_fetch.sroa.98.0..sroa_idx, align 2, !dbg !92, !tbaa !30
  %51 = shl nuw nsw i32 %49, 8
  %52 = add nuw nsw i32 %51, %mul41
  %add176 = add nuw nsw i32 %52, %mul50
  %shr187901 = xor i32 %shr61, %and63
  %xor191 = shl nuw nsw i32 %shr187901, 2
  %mul192 = and i32 %xor191, 4
  %add194 = or disjoint i32 %add176, %mul192, !dbg !93
  %arrayidx196 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194, !dbg !94
  store i16 %qk_fetch.sroa.0.0.copyload2195, ptr addrspace(3) %arrayidx196, align 8, !dbg !95, !tbaa !69
  %xor193.1 = or disjoint i32 %mul192, 1, !dbg !96
  %add194.1 = or disjoint i32 %add176, %xor193.1, !dbg !93
  %arrayidx196.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.1, !dbg !94
  store i16 %qk_fetch.sroa.26.0.copyload2206, ptr addrspace(3) %arrayidx196.1, align 2, !dbg !95, !tbaa !69
  %xor193.2 = or disjoint i32 %mul192, 2, !dbg !96
  %add194.2 = or disjoint i32 %add176, %xor193.2, !dbg !93
  %arrayidx196.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.2, !dbg !94
  store i16 %qk_fetch.sroa.38.0.copyload2228, ptr addrspace(3) %arrayidx196.2, align 4, !dbg !95, !tbaa !69
  %xor193.3 = or disjoint i32 %mul192, 3, !dbg !96
  %add194.3 = or disjoint i32 %add176, %xor193.3, !dbg !93
  %arrayidx196.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.3, !dbg !94
  store i16 %qk_fetch.sroa.50.0.copyload2250, ptr addrspace(3) %arrayidx196.3, align 2, !dbg !95, !tbaa !69
  %53 = or disjoint i32 %mul192, %add176, !dbg !93
  %add194.11037 = xor i32 %53, 4, !dbg !93
  %arrayidx196.11038 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.11037, !dbg !94
  store i16 %qk_fetch.sroa.62.0.copyload2272, ptr addrspace(3) %arrayidx196.11038, align 8, !dbg !95, !tbaa !69
  %54 = or i32 %xor191, -5, !dbg !93
  %sub2393 = sub nsw i32 %add176, %54, !dbg !93
  %arrayidx196.1.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %sub2393, !dbg !94
  store i16 %qk_fetch.sroa.74.0.copyload2294, ptr addrspace(3) %arrayidx196.1.1, align 2, !dbg !95, !tbaa !69
  %55 = or disjoint i32 %mul192, %add176, !dbg !93
  %add194.2.1 = xor i32 %55, 6, !dbg !93
  %arrayidx196.2.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.2.1, !dbg !94
  store i16 %qk_fetch.sroa.86.0.copyload2316, ptr addrspace(3) %arrayidx196.2.1, align 4, !dbg !95, !tbaa !69
  %56 = or disjoint i32 %mul192, %add176, !dbg !93
  %add194.3.1 = xor i32 %56, 7, !dbg !93
  %arrayidx196.3.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.3.1, !dbg !94
  store i16 %qk_fetch.sroa.98.0.copyload2338, ptr addrspace(3) %arrayidx196.3.1, align 2, !dbg !95, !tbaa !69
  %gep958.1 = getelementptr inbounds i8, ptr addrspace(4) %50, i64 1024, !dbg !91
  %qk_fetch.sroa.0.0.copyload2199 = load i16, ptr addrspace(4) %gep958.1, align 16, !dbg !92
  %qk_fetch.sroa.26.0.gep958.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 1026, !dbg !92
  %qk_fetch.sroa.26.0.copyload2210 = load i16, ptr addrspace(4) %qk_fetch.sroa.26.0.gep958.1.sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.38.0.gep958.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 1028, !dbg !92
  %qk_fetch.sroa.38.0.copyload2232 = load i16, ptr addrspace(4) %qk_fetch.sroa.38.0.gep958.1.sroa_idx, align 4, !dbg !92
  %qk_fetch.sroa.50.0.gep958.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 1030, !dbg !92
  %qk_fetch.sroa.50.0.copyload2254 = load i16, ptr addrspace(4) %qk_fetch.sroa.50.0.gep958.1.sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.62.0.gep958.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 1032, !dbg !92
  %qk_fetch.sroa.62.0.copyload2276 = load i16, ptr addrspace(4) %qk_fetch.sroa.62.0.gep958.1.sroa_idx, align 8, !dbg !92
  %qk_fetch.sroa.74.0.gep958.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 1034, !dbg !92
  %qk_fetch.sroa.74.0.copyload2298 = load i16, ptr addrspace(4) %qk_fetch.sroa.74.0.gep958.1.sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.86.0.gep958.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 1036, !dbg !92
  %qk_fetch.sroa.86.0.copyload2320 = load i16, ptr addrspace(4) %qk_fetch.sroa.86.0.gep958.1.sroa_idx, align 4, !dbg !92
  %qk_fetch.sroa.98.0.gep958.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 1038, !dbg !92
  %qk_fetch.sroa.98.0.copyload2342 = load i16, ptr addrspace(4) %qk_fetch.sroa.98.0.gep958.1.sroa_idx, align 2, !dbg !92, !tbaa !30
  %57 = shl nuw nsw i32 %49, 8
  %58 = or disjoint i32 %57, 256
  %59 = add nuw nsw i32 %58, %mul41
  %add176.1 = add nuw nsw i32 %59, %mul50.1
  %shr187901.1 = xor i32 %shr61.1, %and63
  %xor191.1 = shl nuw nsw i32 %shr187901.1, 2
  %mul192.1 = and i32 %xor191.1, 4
  %add194.11044 = or disjoint i32 %add176.1, %mul192.1, !dbg !93
  %arrayidx196.11045 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.11044, !dbg !94
  store i16 %qk_fetch.sroa.0.0.copyload2199, ptr addrspace(3) %arrayidx196.11045, align 8, !dbg !95, !tbaa !69
  %xor193.1.11047 = or disjoint i32 %mul192.1, 1, !dbg !96
  %add194.1.11048 = or disjoint i32 %add176.1, %xor193.1.11047, !dbg !93
  %arrayidx196.1.11049 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.1.11048, !dbg !94
  store i16 %qk_fetch.sroa.26.0.copyload2210, ptr addrspace(3) %arrayidx196.1.11049, align 2, !dbg !95, !tbaa !69
  %xor193.2.11051 = or disjoint i32 %mul192.1, 2, !dbg !96
  %add194.2.11052 = or disjoint i32 %add176.1, %xor193.2.11051, !dbg !93
  %arrayidx196.2.11053 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.2.11052, !dbg !94
  store i16 %qk_fetch.sroa.38.0.copyload2232, ptr addrspace(3) %arrayidx196.2.11053, align 4, !dbg !95, !tbaa !69
  %xor193.3.11055 = or disjoint i32 %mul192.1, 3, !dbg !96
  %add194.3.11056 = or disjoint i32 %add176.1, %xor193.3.11055, !dbg !93
  %arrayidx196.3.11057 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.3.11056, !dbg !94
  store i16 %qk_fetch.sroa.50.0.copyload2254, ptr addrspace(3) %arrayidx196.3.11057, align 2, !dbg !95, !tbaa !69
  %60 = or disjoint i32 %mul192.1, %add176.1, !dbg !93
  %add194.11037.1 = xor i32 %60, 4, !dbg !93
  %arrayidx196.11038.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.11037.1, !dbg !94
  store i16 %qk_fetch.sroa.62.0.copyload2276, ptr addrspace(3) %arrayidx196.11038.1, align 2, !dbg !95, !tbaa !69
  %61 = or i32 %xor191.1, -5, !dbg !93
  %sub2394 = sub nsw i32 %add176.1, %61, !dbg !93
  %arrayidx196.1.1.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %sub2394, !dbg !94
  store i16 %qk_fetch.sroa.74.0.copyload2298, ptr addrspace(3) %arrayidx196.1.1.1, align 2, !dbg !95, !tbaa !69
  %62 = or disjoint i32 %mul192.1, %add176.1, !dbg !93
  %add194.2.1.1 = xor i32 %62, 6, !dbg !93
  %arrayidx196.2.1.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.2.1.1, !dbg !94
  store i16 %qk_fetch.sroa.86.0.copyload2320, ptr addrspace(3) %arrayidx196.2.1.1, align 2, !dbg !95, !tbaa !69
  %63 = or disjoint i32 %mul192.1, %add176.1, !dbg !93
  %add194.3.1.1 = xor i32 %63, 7, !dbg !93
  %arrayidx196.3.1.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.3.1.1, !dbg !94
  store i16 %qk_fetch.sroa.98.0.copyload2342, ptr addrspace(3) %arrayidx196.3.1.1, align 2, !dbg !95, !tbaa !69
  %gep958.2 = getelementptr inbounds i8, ptr addrspace(4) %50, i64 2048, !dbg !91
  %qk_fetch.sroa.0.0.copyload2200 = load i16, ptr addrspace(4) %gep958.2, align 16, !dbg !92
  %qk_fetch.sroa.26.0.gep958.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 2050, !dbg !92
  %qk_fetch.sroa.26.0.copyload2211 = load i16, ptr addrspace(4) %qk_fetch.sroa.26.0.gep958.2.sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.38.0.gep958.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 2052, !dbg !92
  %qk_fetch.sroa.38.0.copyload2233 = load i16, ptr addrspace(4) %qk_fetch.sroa.38.0.gep958.2.sroa_idx, align 4, !dbg !92
  %qk_fetch.sroa.50.0.gep958.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 2054, !dbg !92
  %qk_fetch.sroa.50.0.copyload2255 = load i16, ptr addrspace(4) %qk_fetch.sroa.50.0.gep958.2.sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.62.0.gep958.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 2056, !dbg !92
  %qk_fetch.sroa.62.0.copyload2277 = load i16, ptr addrspace(4) %qk_fetch.sroa.62.0.gep958.2.sroa_idx, align 8, !dbg !92
  %qk_fetch.sroa.74.0.gep958.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 2058, !dbg !92
  %qk_fetch.sroa.74.0.copyload2299 = load i16, ptr addrspace(4) %qk_fetch.sroa.74.0.gep958.2.sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.86.0.gep958.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 2060, !dbg !92
  %qk_fetch.sroa.86.0.copyload2321 = load i16, ptr addrspace(4) %qk_fetch.sroa.86.0.gep958.2.sroa_idx, align 4, !dbg !92
  %qk_fetch.sroa.98.0.gep958.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 2062, !dbg !92
  %qk_fetch.sroa.98.0.copyload2343 = load i16, ptr addrspace(4) %qk_fetch.sroa.98.0.gep958.2.sroa_idx, align 2, !dbg !92, !tbaa !30
  %64 = shl nuw nsw i32 %49, 8
  %65 = or disjoint i32 %64, 512
  %66 = add nuw nsw i32 %65, %mul41
  %add176.2 = add nuw nsw i32 %66, %mul50
  %shr187901.2 = xor i32 %shr61.2, %and63
  %xor191.2 = shl nuw nsw i32 %shr187901.2, 2
  %mul192.2 = and i32 %xor191.2, 4
  %add194.21059 = or disjoint i32 %add176.2, %mul192.2, !dbg !93
  %arrayidx196.21060 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.21059, !dbg !94
  store i16 %qk_fetch.sroa.0.0.copyload2200, ptr addrspace(3) %arrayidx196.21060, align 8, !dbg !95, !tbaa !69
  %xor193.1.2 = or disjoint i32 %mul192.2, 1, !dbg !96
  %add194.1.2 = or disjoint i32 %add176.2, %xor193.1.2, !dbg !93
  %arrayidx196.1.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.1.2, !dbg !94
  store i16 %qk_fetch.sroa.26.0.copyload2211, ptr addrspace(3) %arrayidx196.1.2, align 2, !dbg !95, !tbaa !69
  %xor193.2.2 = or disjoint i32 %mul192.2, 2, !dbg !96
  %add194.2.2 = or disjoint i32 %add176.2, %xor193.2.2, !dbg !93
  %arrayidx196.2.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.2.2, !dbg !94
  store i16 %qk_fetch.sroa.38.0.copyload2233, ptr addrspace(3) %arrayidx196.2.2, align 4, !dbg !95, !tbaa !69
  %xor193.3.2 = or disjoint i32 %mul192.2, 3, !dbg !96
  %add194.3.2 = or disjoint i32 %add176.2, %xor193.3.2, !dbg !93
  %arrayidx196.3.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.3.2, !dbg !94
  store i16 %qk_fetch.sroa.50.0.copyload2255, ptr addrspace(3) %arrayidx196.3.2, align 2, !dbg !95, !tbaa !69
  %67 = or disjoint i32 %mul192.2, %add176.2, !dbg !93
  %add194.11037.2 = xor i32 %67, 4, !dbg !93
  %arrayidx196.11038.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.11037.2, !dbg !94
  store i16 %qk_fetch.sroa.62.0.copyload2277, ptr addrspace(3) %arrayidx196.11038.2, align 2, !dbg !95, !tbaa !69
  %68 = or i32 %xor191.2, -5, !dbg !93
  %sub2395 = sub nsw i32 %add176.2, %68, !dbg !93
  %arrayidx196.1.1.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %sub2395, !dbg !94
  store i16 %qk_fetch.sroa.74.0.copyload2299, ptr addrspace(3) %arrayidx196.1.1.2, align 2, !dbg !95, !tbaa !69
  %69 = or disjoint i32 %mul192.2, %add176.2, !dbg !93
  %add194.2.1.2 = xor i32 %69, 6, !dbg !93
  %arrayidx196.2.1.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.2.1.2, !dbg !94
  store i16 %qk_fetch.sroa.86.0.copyload2321, ptr addrspace(3) %arrayidx196.2.1.2, align 2, !dbg !95, !tbaa !69
  %70 = or disjoint i32 %mul192.2, %add176.2, !dbg !93
  %add194.3.1.2 = xor i32 %70, 7, !dbg !93
  %arrayidx196.3.1.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.3.1.2, !dbg !94
  store i16 %qk_fetch.sroa.98.0.copyload2343, ptr addrspace(3) %arrayidx196.3.1.2, align 2, !dbg !95, !tbaa !69
  %gep958.3 = getelementptr inbounds i8, ptr addrspace(4) %50, i64 3072, !dbg !91
  %qk_fetch.sroa.0.0.copyload2201 = load i16, ptr addrspace(4) %gep958.3, align 16, !dbg !92
  %qk_fetch.sroa.26.0.gep958.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 3074, !dbg !92
  %qk_fetch.sroa.26.0.copyload2212 = load i16, ptr addrspace(4) %qk_fetch.sroa.26.0.gep958.3.sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.38.0.gep958.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 3076, !dbg !92
  %qk_fetch.sroa.38.0.copyload2234 = load i16, ptr addrspace(4) %qk_fetch.sroa.38.0.gep958.3.sroa_idx, align 4, !dbg !92
  %qk_fetch.sroa.50.0.gep958.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 3078, !dbg !92
  %qk_fetch.sroa.50.0.copyload2256 = load i16, ptr addrspace(4) %qk_fetch.sroa.50.0.gep958.3.sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.62.0.gep958.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 3080, !dbg !92
  %qk_fetch.sroa.62.0.copyload2278 = load i16, ptr addrspace(4) %qk_fetch.sroa.62.0.gep958.3.sroa_idx, align 8, !dbg !92
  %qk_fetch.sroa.74.0.gep958.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 3082, !dbg !92
  %qk_fetch.sroa.74.0.copyload2300 = load i16, ptr addrspace(4) %qk_fetch.sroa.74.0.gep958.3.sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.86.0.gep958.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 3084, !dbg !92
  %qk_fetch.sroa.86.0.copyload2322 = load i16, ptr addrspace(4) %qk_fetch.sroa.86.0.gep958.3.sroa_idx, align 4, !dbg !92
  %qk_fetch.sroa.98.0.gep958.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 3086, !dbg !92
  %qk_fetch.sroa.98.0.copyload2344 = load i16, ptr addrspace(4) %qk_fetch.sroa.98.0.gep958.3.sroa_idx, align 2, !dbg !92, !tbaa !30
  %71 = shl nuw nsw i32 %49, 8
  %72 = or disjoint i32 %71, 768
  %73 = add nuw nsw i32 %72, %mul41
  %add176.3 = add nuw nsw i32 %73, %mul50.1
  %shr187901.3 = xor i32 %shr61.3, %and63
  %xor191.3 = shl nuw nsw i32 %shr187901.3, 2
  %mul192.3 = and i32 %xor191.3, 4
  %add194.31061 = or disjoint i32 %add176.3, %mul192.3, !dbg !93
  %arrayidx196.31062 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.31061, !dbg !94
  store i16 %qk_fetch.sroa.0.0.copyload2201, ptr addrspace(3) %arrayidx196.31062, align 8, !dbg !95, !tbaa !69
  %xor193.1.3 = or disjoint i32 %mul192.3, 1, !dbg !96
  %add194.1.3 = or disjoint i32 %add176.3, %xor193.1.3, !dbg !93
  %arrayidx196.1.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.1.3, !dbg !94
  store i16 %qk_fetch.sroa.26.0.copyload2212, ptr addrspace(3) %arrayidx196.1.3, align 2, !dbg !95, !tbaa !69
  %xor193.2.3 = or disjoint i32 %mul192.3, 2, !dbg !96
  %add194.2.3 = or disjoint i32 %add176.3, %xor193.2.3, !dbg !93
  %arrayidx196.2.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.2.3, !dbg !94
  store i16 %qk_fetch.sroa.38.0.copyload2234, ptr addrspace(3) %arrayidx196.2.3, align 4, !dbg !95, !tbaa !69
  %xor193.3.3 = or disjoint i32 %mul192.3, 3, !dbg !96
  %add194.3.3 = or disjoint i32 %add176.3, %xor193.3.3, !dbg !93
  %arrayidx196.3.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.3.3, !dbg !94
  store i16 %qk_fetch.sroa.50.0.copyload2256, ptr addrspace(3) %arrayidx196.3.3, align 2, !dbg !95, !tbaa !69
  %74 = or disjoint i32 %mul192.3, %add176.3, !dbg !93
  %add194.11037.3 = xor i32 %74, 4, !dbg !93
  %arrayidx196.11038.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.11037.3, !dbg !94
  store i16 %qk_fetch.sroa.62.0.copyload2278, ptr addrspace(3) %arrayidx196.11038.3, align 2, !dbg !95, !tbaa !69
  %75 = or i32 %xor191.3, -5, !dbg !93
  %sub2396 = sub nsw i32 %add176.3, %75, !dbg !93
  %arrayidx196.1.1.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %sub2396, !dbg !94
  store i16 %qk_fetch.sroa.74.0.copyload2300, ptr addrspace(3) %arrayidx196.1.1.3, align 2, !dbg !95, !tbaa !69
  %76 = or disjoint i32 %mul192.3, %add176.3, !dbg !93
  %add194.2.1.3 = xor i32 %76, 6, !dbg !93
  %arrayidx196.2.1.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.2.1.3, !dbg !94
  store i16 %qk_fetch.sroa.86.0.copyload2322, ptr addrspace(3) %arrayidx196.2.1.3, align 2, !dbg !95, !tbaa !69
  %77 = or disjoint i32 %mul192.3, %add176.3, !dbg !93
  %add194.3.1.3 = xor i32 %77, 7, !dbg !93
  %arrayidx196.3.1.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.3.1.3, !dbg !94
  store i16 %qk_fetch.sroa.98.0.copyload2344, ptr addrspace(3) %arrayidx196.3.1.3, align 2, !dbg !95, !tbaa !69
  %gep958.4 = getelementptr inbounds i8, ptr addrspace(4) %50, i64 4096, !dbg !91
  %qk_fetch.sroa.0.0.copyload2202 = load i16, ptr addrspace(4) %gep958.4, align 16, !dbg !92
  %qk_fetch.sroa.26.0.gep958.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 4098, !dbg !92
  %qk_fetch.sroa.26.0.copyload2213 = load i16, ptr addrspace(4) %qk_fetch.sroa.26.0.gep958.4.sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.38.0.gep958.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 4100, !dbg !92
  %qk_fetch.sroa.38.0.copyload2235 = load i16, ptr addrspace(4) %qk_fetch.sroa.38.0.gep958.4.sroa_idx, align 4, !dbg !92
  %qk_fetch.sroa.50.0.gep958.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 4102, !dbg !92
  %qk_fetch.sroa.50.0.copyload2257 = load i16, ptr addrspace(4) %qk_fetch.sroa.50.0.gep958.4.sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.62.0.gep958.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 4104, !dbg !92
  %qk_fetch.sroa.62.0.copyload2279 = load i16, ptr addrspace(4) %qk_fetch.sroa.62.0.gep958.4.sroa_idx, align 8, !dbg !92
  %qk_fetch.sroa.74.0.gep958.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 4106, !dbg !92
  %qk_fetch.sroa.74.0.copyload2301 = load i16, ptr addrspace(4) %qk_fetch.sroa.74.0.gep958.4.sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.86.0.gep958.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 4108, !dbg !92
  %qk_fetch.sroa.86.0.copyload2323 = load i16, ptr addrspace(4) %qk_fetch.sroa.86.0.gep958.4.sroa_idx, align 4, !dbg !92
  %qk_fetch.sroa.98.0.gep958.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 4110, !dbg !92
  %qk_fetch.sroa.98.0.copyload2345 = load i16, ptr addrspace(4) %qk_fetch.sroa.98.0.gep958.4.sroa_idx, align 2, !dbg !92, !tbaa !30
  %78 = shl nuw nsw i32 %49, 8
  %79 = or disjoint i32 %78, 1024
  %80 = add nuw nsw i32 %79, %mul41
  %add176.4 = add nuw nsw i32 %80, %mul50
  %add182.masked.4 = lshr i32 %3, 7
  %shr187901.4 = xor i32 %add182.masked.4, %and63
  %xor191.4 = shl nuw nsw i32 %shr187901.4, 2
  %mul192.4 = and i32 %xor191.4, 4
  %add194.4 = or disjoint i32 %add176.4, %mul192.4, !dbg !93
  %arrayidx196.4 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.4, !dbg !94
  store i16 %qk_fetch.sroa.0.0.copyload2202, ptr addrspace(3) %arrayidx196.4, align 8, !dbg !95, !tbaa !69
  %xor193.1.4 = or disjoint i32 %mul192.4, 1, !dbg !96
  %add194.1.4 = or disjoint i32 %add176.4, %xor193.1.4, !dbg !93
  %arrayidx196.1.4 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.1.4, !dbg !94
  store i16 %qk_fetch.sroa.26.0.copyload2213, ptr addrspace(3) %arrayidx196.1.4, align 2, !dbg !95, !tbaa !69
  %xor193.2.4 = or disjoint i32 %mul192.4, 2, !dbg !96
  %add194.2.4 = or disjoint i32 %add176.4, %xor193.2.4, !dbg !93
  %arrayidx196.2.4 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.2.4, !dbg !94
  store i16 %qk_fetch.sroa.38.0.copyload2235, ptr addrspace(3) %arrayidx196.2.4, align 4, !dbg !95, !tbaa !69
  %xor193.3.4 = or disjoint i32 %mul192.4, 3, !dbg !96
  %add194.3.4 = or disjoint i32 %add176.4, %xor193.3.4, !dbg !93
  %arrayidx196.3.4 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.3.4, !dbg !94
  store i16 %qk_fetch.sroa.50.0.copyload2257, ptr addrspace(3) %arrayidx196.3.4, align 2, !dbg !95, !tbaa !69
  %81 = or disjoint i32 %mul192.4, %add176.4, !dbg !93
  %add194.11037.4 = xor i32 %81, 4, !dbg !93
  %arrayidx196.11038.4 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.11037.4, !dbg !94
  store i16 %qk_fetch.sroa.62.0.copyload2279, ptr addrspace(3) %arrayidx196.11038.4, align 2, !dbg !95, !tbaa !69
  %82 = or i32 %xor191.4, -5, !dbg !93
  %sub2397 = sub nsw i32 %add176.4, %82, !dbg !93
  %arrayidx196.1.1.4 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %sub2397, !dbg !94
  store i16 %qk_fetch.sroa.74.0.copyload2301, ptr addrspace(3) %arrayidx196.1.1.4, align 2, !dbg !95, !tbaa !69
  %83 = or disjoint i32 %mul192.4, %add176.4, !dbg !93
  %add194.2.1.4 = xor i32 %83, 6, !dbg !93
  %arrayidx196.2.1.4 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.2.1.4, !dbg !94
  store i16 %qk_fetch.sroa.86.0.copyload2323, ptr addrspace(3) %arrayidx196.2.1.4, align 2, !dbg !95, !tbaa !69
  %84 = or disjoint i32 %mul192.4, %add176.4, !dbg !93
  %add194.3.1.4 = xor i32 %84, 7, !dbg !93
  %arrayidx196.3.1.4 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.3.1.4, !dbg !94
  store i16 %qk_fetch.sroa.98.0.copyload2345, ptr addrspace(3) %arrayidx196.3.1.4, align 2, !dbg !95, !tbaa !69
  %gep958.5 = getelementptr inbounds i8, ptr addrspace(4) %50, i64 5120, !dbg !91
  %qk_fetch.sroa.0.0.copyload2203 = load i16, ptr addrspace(4) %gep958.5, align 16, !dbg !92
  %qk_fetch.sroa.26.0.gep958.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 5122, !dbg !92
  %qk_fetch.sroa.26.0.copyload2214 = load i16, ptr addrspace(4) %qk_fetch.sroa.26.0.gep958.5.sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.38.0.gep958.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 5124, !dbg !92
  %qk_fetch.sroa.38.0.copyload2236 = load i16, ptr addrspace(4) %qk_fetch.sroa.38.0.gep958.5.sroa_idx, align 4, !dbg !92
  %qk_fetch.sroa.50.0.gep958.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 5126, !dbg !92
  %qk_fetch.sroa.50.0.copyload2258 = load i16, ptr addrspace(4) %qk_fetch.sroa.50.0.gep958.5.sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.62.0.gep958.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 5128, !dbg !92
  %qk_fetch.sroa.62.0.copyload2280 = load i16, ptr addrspace(4) %qk_fetch.sroa.62.0.gep958.5.sroa_idx, align 8, !dbg !92
  %qk_fetch.sroa.74.0.gep958.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 5130, !dbg !92
  %qk_fetch.sroa.74.0.copyload2302 = load i16, ptr addrspace(4) %qk_fetch.sroa.74.0.gep958.5.sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.86.0.gep958.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 5132, !dbg !92
  %qk_fetch.sroa.86.0.copyload2324 = load i16, ptr addrspace(4) %qk_fetch.sroa.86.0.gep958.5.sroa_idx, align 4, !dbg !92
  %qk_fetch.sroa.98.0.gep958.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 5134, !dbg !92
  %qk_fetch.sroa.98.0.copyload2346 = load i16, ptr addrspace(4) %qk_fetch.sroa.98.0.gep958.5.sroa_idx, align 2, !dbg !92, !tbaa !30
  %85 = shl nuw nsw i32 %49, 8
  %86 = or disjoint i32 %85, 1280
  %87 = add nuw nsw i32 %86, %mul41
  %add176.5 = add nuw nsw i32 %87, %mul50.1
  %88 = add nuw nsw i32 %mul20, 512
  %add182.masked.5 = lshr i32 %88, 10
  %shr187901.5 = xor i32 %add182.masked.5, %and63
  %xor191.5 = shl nuw nsw i32 %shr187901.5, 2
  %mul192.5 = and i32 %xor191.5, 4
  %add194.5 = or disjoint i32 %add176.5, %mul192.5, !dbg !93
  %arrayidx196.5 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.5, !dbg !94
  store i16 %qk_fetch.sroa.0.0.copyload2203, ptr addrspace(3) %arrayidx196.5, align 8, !dbg !95, !tbaa !69
  %xor193.1.5 = or disjoint i32 %mul192.5, 1, !dbg !96
  %add194.1.5 = or disjoint i32 %add176.5, %xor193.1.5, !dbg !93
  %arrayidx196.1.5 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.1.5, !dbg !94
  store i16 %qk_fetch.sroa.26.0.copyload2214, ptr addrspace(3) %arrayidx196.1.5, align 2, !dbg !95, !tbaa !69
  %xor193.2.5 = or disjoint i32 %mul192.5, 2, !dbg !96
  %add194.2.5 = or disjoint i32 %add176.5, %xor193.2.5, !dbg !93
  %arrayidx196.2.5 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.2.5, !dbg !94
  store i16 %qk_fetch.sroa.38.0.copyload2236, ptr addrspace(3) %arrayidx196.2.5, align 4, !dbg !95, !tbaa !69
  %xor193.3.5 = or disjoint i32 %mul192.5, 3, !dbg !96
  %add194.3.5 = or disjoint i32 %add176.5, %xor193.3.5, !dbg !93
  %arrayidx196.3.5 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.3.5, !dbg !94
  store i16 %qk_fetch.sroa.50.0.copyload2258, ptr addrspace(3) %arrayidx196.3.5, align 2, !dbg !95, !tbaa !69
  %89 = or disjoint i32 %mul192.5, %add176.5, !dbg !93
  %add194.11037.5 = xor i32 %89, 4, !dbg !93
  %arrayidx196.11038.5 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.11037.5, !dbg !94
  store i16 %qk_fetch.sroa.62.0.copyload2280, ptr addrspace(3) %arrayidx196.11038.5, align 2, !dbg !95, !tbaa !69
  %90 = or i32 %xor191.5, -5, !dbg !93
  %sub2398 = sub nsw i32 %add176.5, %90, !dbg !93
  %arrayidx196.1.1.5 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %sub2398, !dbg !94
  store i16 %qk_fetch.sroa.74.0.copyload2302, ptr addrspace(3) %arrayidx196.1.1.5, align 2, !dbg !95, !tbaa !69
  %91 = or disjoint i32 %mul192.5, %add176.5, !dbg !93
  %add194.2.1.5 = xor i32 %91, 6, !dbg !93
  %arrayidx196.2.1.5 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.2.1.5, !dbg !94
  store i16 %qk_fetch.sroa.86.0.copyload2324, ptr addrspace(3) %arrayidx196.2.1.5, align 2, !dbg !95, !tbaa !69
  %92 = or disjoint i32 %mul192.5, %add176.5, !dbg !93
  %add194.3.1.5 = xor i32 %92, 7, !dbg !93
  %arrayidx196.3.1.5 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.3.1.5, !dbg !94
  store i16 %qk_fetch.sroa.98.0.copyload2346, ptr addrspace(3) %arrayidx196.3.1.5, align 2, !dbg !95, !tbaa !69
  %gep958.6 = getelementptr inbounds i8, ptr addrspace(4) %50, i64 6144, !dbg !91
  %qk_fetch.sroa.0.0.copyload2204 = load i16, ptr addrspace(4) %gep958.6, align 16, !dbg !92
  %qk_fetch.sroa.26.0.gep958.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 6146, !dbg !92
  %qk_fetch.sroa.26.0.copyload2215 = load i16, ptr addrspace(4) %qk_fetch.sroa.26.0.gep958.6.sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.38.0.gep958.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 6148, !dbg !92
  %qk_fetch.sroa.38.0.copyload2237 = load i16, ptr addrspace(4) %qk_fetch.sroa.38.0.gep958.6.sroa_idx, align 4, !dbg !92
  %qk_fetch.sroa.50.0.gep958.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 6150, !dbg !92
  %qk_fetch.sroa.50.0.copyload2259 = load i16, ptr addrspace(4) %qk_fetch.sroa.50.0.gep958.6.sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.62.0.gep958.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 6152, !dbg !92
  %qk_fetch.sroa.62.0.copyload2281 = load i16, ptr addrspace(4) %qk_fetch.sroa.62.0.gep958.6.sroa_idx, align 8, !dbg !92
  %qk_fetch.sroa.74.0.gep958.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 6154, !dbg !92
  %qk_fetch.sroa.74.0.copyload2303 = load i16, ptr addrspace(4) %qk_fetch.sroa.74.0.gep958.6.sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.86.0.gep958.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 6156, !dbg !92
  %qk_fetch.sroa.86.0.copyload2325 = load i16, ptr addrspace(4) %qk_fetch.sroa.86.0.gep958.6.sroa_idx, align 4, !dbg !92
  %qk_fetch.sroa.98.0.gep958.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 6158, !dbg !92
  %qk_fetch.sroa.98.0.copyload2347 = load i16, ptr addrspace(4) %qk_fetch.sroa.98.0.gep958.6.sroa_idx, align 2, !dbg !92, !tbaa !30
  %93 = shl nuw nsw i32 %49, 8
  %94 = or disjoint i32 %93, 1536
  %95 = add nuw nsw i32 %94, %mul41
  %add176.6 = add nuw nsw i32 %95, %mul50
  %96 = lshr i32 %3, 7
  %97 = xor i32 %96, %and63
  %shr187901.6 = shl nuw nsw i32 %97, 2
  %xor191.6 = and i32 %shr187901.6, 4
  %98 = or disjoint i32 %xor191.6, %add176.6, !dbg !93
  %add194.6 = xor i32 %98, 4, !dbg !93
  %arrayidx196.6 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.6, !dbg !94
  store i16 %qk_fetch.sroa.0.0.copyload2204, ptr addrspace(3) %arrayidx196.6, align 2, !dbg !95, !tbaa !69
  %99 = or i32 %shr187901.6, -5, !dbg !93
  %sub2399 = sub nsw i32 %add176.6, %99, !dbg !93
  %arrayidx196.1.6 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %sub2399, !dbg !94
  store i16 %qk_fetch.sroa.26.0.copyload2215, ptr addrspace(3) %arrayidx196.1.6, align 2, !dbg !95, !tbaa !69
  %100 = or disjoint i32 %xor191.6, %add176.6, !dbg !93
  %add194.2.6 = xor i32 %100, 6, !dbg !93
  %arrayidx196.2.6 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.2.6, !dbg !94
  store i16 %qk_fetch.sroa.38.0.copyload2237, ptr addrspace(3) %arrayidx196.2.6, align 2, !dbg !95, !tbaa !69
  %101 = or disjoint i32 %xor191.6, %add176.6, !dbg !93
  %add194.3.6 = xor i32 %101, 7, !dbg !93
  %arrayidx196.3.6 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.3.6, !dbg !94
  store i16 %qk_fetch.sroa.50.0.copyload2259, ptr addrspace(3) %arrayidx196.3.6, align 2, !dbg !95, !tbaa !69
  %add194.11037.6 = or disjoint i32 %add176.6, %xor191.6, !dbg !93
  %arrayidx196.11038.6 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.11037.6, !dbg !94
  store i16 %qk_fetch.sroa.62.0.copyload2281, ptr addrspace(3) %arrayidx196.11038.6, align 8, !dbg !95, !tbaa !69
  %xor193.1.1.6 = or disjoint i32 %xor191.6, 1, !dbg !96
  %add194.1.1.6 = or disjoint i32 %add176.6, %xor193.1.1.6, !dbg !93
  %arrayidx196.1.1.6 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.1.1.6, !dbg !94
  store i16 %qk_fetch.sroa.74.0.copyload2303, ptr addrspace(3) %arrayidx196.1.1.6, align 2, !dbg !95, !tbaa !69
  %xor193.2.1.6 = or disjoint i32 %xor191.6, 2, !dbg !96
  %add194.2.1.6 = or disjoint i32 %add176.6, %xor193.2.1.6, !dbg !93
  %arrayidx196.2.1.6 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.2.1.6, !dbg !94
  store i16 %qk_fetch.sroa.86.0.copyload2325, ptr addrspace(3) %arrayidx196.2.1.6, align 4, !dbg !95, !tbaa !69
  %xor193.3.1.6 = or disjoint i32 %xor191.6, 3, !dbg !96
  %add194.3.1.6 = or disjoint i32 %add176.6, %xor193.3.1.6, !dbg !93
  %arrayidx196.3.1.6 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.3.1.6, !dbg !94
  store i16 %qk_fetch.sroa.98.0.copyload2347, ptr addrspace(3) %arrayidx196.3.1.6, align 2, !dbg !95, !tbaa !69
  %gep958.7 = getelementptr inbounds i8, ptr addrspace(4) %50, i64 7168, !dbg !91
  %qk_fetch.sroa.0.0.copyload2205 = load i16, ptr addrspace(4) %gep958.7, align 16, !dbg !92
  %qk_fetch.sroa.26.0.gep958.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 7170, !dbg !92
  %qk_fetch.sroa.26.0.copyload2216 = load i16, ptr addrspace(4) %qk_fetch.sroa.26.0.gep958.7.sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.38.0.gep958.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 7172, !dbg !92
  %qk_fetch.sroa.38.0.copyload2238 = load i16, ptr addrspace(4) %qk_fetch.sroa.38.0.gep958.7.sroa_idx, align 4, !dbg !92
  %qk_fetch.sroa.50.0.gep958.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 7174, !dbg !92
  %qk_fetch.sroa.50.0.copyload2260 = load i16, ptr addrspace(4) %qk_fetch.sroa.50.0.gep958.7.sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.62.0.gep958.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 7176, !dbg !92
  %qk_fetch.sroa.62.0.copyload2282 = load i16, ptr addrspace(4) %qk_fetch.sroa.62.0.gep958.7.sroa_idx, align 8, !dbg !92
  %qk_fetch.sroa.74.0.gep958.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 7178, !dbg !92
  %qk_fetch.sroa.74.0.copyload2304 = load i16, ptr addrspace(4) %qk_fetch.sroa.74.0.gep958.7.sroa_idx, align 2, !dbg !92, !tbaa !30
  %qk_fetch.sroa.86.0.gep958.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 7180, !dbg !92
  %qk_fetch.sroa.86.0.copyload2326 = load i16, ptr addrspace(4) %qk_fetch.sroa.86.0.gep958.7.sroa_idx, align 4, !dbg !92
  %qk_fetch.sroa.98.0.gep958.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 7182, !dbg !92
  %qk_fetch.sroa.98.0.copyload2348 = load i16, ptr addrspace(4) %qk_fetch.sroa.98.0.gep958.7.sroa_idx, align 2, !dbg !92, !tbaa !30
  %102 = shl nuw nsw i32 %49, 8
  %103 = or disjoint i32 %102, 1792
  %narrow2400 = add nuw nsw i32 %103, %mul41
  %add176.7 = add nuw nsw i32 %narrow2400, %mul50.1
  %104 = add nuw nsw i32 %mul20, 1536
  %add182.masked.7 = lshr i32 %104, 10
  %shr187901.7 = xor i32 %add182.masked.7, %and63
  %xor191.7 = shl nuw nsw i32 %shr187901.7, 2
  %mul192.7 = and i32 %xor191.7, 4
  %add194.7 = or disjoint i32 %add176.7, %mul192.7, !dbg !93
  %arrayidx196.7 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.7, !dbg !94
  store i16 %qk_fetch.sroa.0.0.copyload2205, ptr addrspace(3) %arrayidx196.7, align 8, !dbg !95, !tbaa !69
  %xor193.1.7 = or disjoint i32 %mul192.7, 1, !dbg !96
  %add194.1.7 = or disjoint i32 %add176.7, %xor193.1.7, !dbg !93
  %arrayidx196.1.7 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.1.7, !dbg !94
  store i16 %qk_fetch.sroa.26.0.copyload2216, ptr addrspace(3) %arrayidx196.1.7, align 2, !dbg !95, !tbaa !69
  %xor193.2.7 = or disjoint i32 %mul192.7, 2, !dbg !96
  %add194.2.7 = or disjoint i32 %add176.7, %xor193.2.7, !dbg !93
  %arrayidx196.2.7 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.2.7, !dbg !94
  store i16 %qk_fetch.sroa.38.0.copyload2238, ptr addrspace(3) %arrayidx196.2.7, align 4, !dbg !95, !tbaa !69
  %xor193.3.7 = or disjoint i32 %mul192.7, 3, !dbg !96
  %add194.3.7 = or disjoint i32 %add176.7, %xor193.3.7, !dbg !93
  %arrayidx196.3.7 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.3.7, !dbg !94
  store i16 %qk_fetch.sroa.50.0.copyload2260, ptr addrspace(3) %arrayidx196.3.7, align 2, !dbg !95, !tbaa !69
  %105 = or disjoint i32 %mul192.7, %add176.7, !dbg !93
  %add194.11037.7 = xor i32 %105, 4, !dbg !93
  %arrayidx196.11038.7 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.11037.7, !dbg !94
  store i16 %qk_fetch.sroa.62.0.copyload2282, ptr addrspace(3) %arrayidx196.11038.7, align 2, !dbg !95, !tbaa !69
  %106 = or i32 %xor191.7, -5, !dbg !93
  %sub2401 = sub nsw i32 %add176.7, %106, !dbg !93
  %arrayidx196.1.1.7 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %sub2401, !dbg !94
  store i16 %qk_fetch.sroa.74.0.copyload2304, ptr addrspace(3) %arrayidx196.1.1.7, align 2, !dbg !95, !tbaa !69
  %107 = or disjoint i32 %mul192.7, %add176.7, !dbg !93
  %add194.2.1.7 = xor i32 %107, 6, !dbg !93
  %arrayidx196.2.1.7 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.2.1.7, !dbg !94
  store i16 %qk_fetch.sroa.86.0.copyload2326, ptr addrspace(3) %arrayidx196.2.1.7, align 2, !dbg !95, !tbaa !69
  %108 = or disjoint i32 %mul192.7, %add176.7, !dbg !93
  %add194.3.1.7 = xor i32 %108, 7, !dbg !93
  %arrayidx196.3.1.7 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add194.3.1.7, !dbg !94
  store i16 %qk_fetch.sroa.98.0.copyload2348, ptr addrspace(3) %arrayidx196.3.1.7, align 2, !dbg !95, !tbaa !69
  fence syncscope("warp") release, !dbg !97
  tail call void @llvm.mxc.barrier.warp(), !dbg !100
  fence syncscope("warp") acquire, !dbg !101
  %109 = load half, ptr addrspace(3) %arrayidx115, align 8, !dbg !102, !tbaa !69
  %k_local.sroa.0.0.vec.insert = insertelement <4 x half> poison, half %109, i64 0, !dbg !102
  %110 = load half, ptr addrspace(3) %arrayidx115.1, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.2.vec.insert = insertelement <4 x half> %k_local.sroa.0.0.vec.insert, half %110, i64 1, !dbg !102
  %111 = load half, ptr addrspace(3) %arrayidx115.2, align 4, !dbg !102, !tbaa !69
  %k_local.sroa.0.4.vec.insert = insertelement <4 x half> %k_local.sroa.0.2.vec.insert, half %111, i64 2, !dbg !102
  %112 = load half, ptr addrspace(3) %arrayidx115.3, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.6.vec.insert = insertelement <4 x half> %k_local.sroa.0.4.vec.insert, half %112, i64 3, !dbg !102
  %113 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert, <4 x half> %q_local.sroa.0.6.vec.insert, <4 x float> zeroinitializer), !dbg !103
  %add247.1 = add nuw nsw i32 %add100, 1024
  %add260.11064 = or disjoint i32 %add247.1, %xor112, !dbg !104
  %arrayidx262.11065 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.11064, !dbg !105
  %114 = load half, ptr addrspace(3) %arrayidx262.11065, align 8, !dbg !102, !tbaa !69
  %k_local.sroa.0.0.vec.insert1741 = insertelement <4 x half> poison, half %114, i64 0, !dbg !102
  %add260.1.1 = or disjoint i32 %add247.1, %xor112.1, !dbg !104
  %arrayidx262.1.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.1.1, !dbg !105
  %115 = load half, ptr addrspace(3) %arrayidx262.1.1, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.2.vec.insert1771 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1741, half %115, i64 1, !dbg !102
  %add260.2.1 = or disjoint i32 %add247.1, %xor112.2, !dbg !104
  %arrayidx262.2.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.2.1, !dbg !105
  %116 = load half, ptr addrspace(3) %arrayidx262.2.1, align 4, !dbg !102, !tbaa !69
  %k_local.sroa.0.4.vec.insert1801 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1771, half %116, i64 2, !dbg !102
  %add260.3.1 = or disjoint i32 %add247.1, %xor112.3, !dbg !104
  %arrayidx262.3.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.3.1, !dbg !105
  %117 = load half, ptr addrspace(3) %arrayidx262.3.1, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.6.vec.insert1831 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1801, half %117, i64 3, !dbg !102
  %118 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1831, <4 x half> %q_local.sroa.0.6.vec.insert, <4 x float> zeroinitializer), !dbg !103
  %119 = load half, ptr addrspace(3) %arrayidx115.11025, align 8, !dbg !102, !tbaa !69
  %k_local.sroa.0.0.vec.insert1743 = insertelement <4 x half> poison, half %119, i64 0, !dbg !102
  %120 = load half, ptr addrspace(3) %arrayidx115.1.1, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.2.vec.insert1773 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1743, half %120, i64 1, !dbg !102
  %121 = load half, ptr addrspace(3) %arrayidx115.2.1, align 4, !dbg !102, !tbaa !69
  %k_local.sroa.0.4.vec.insert1803 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1773, half %121, i64 2, !dbg !102
  %122 = load half, ptr addrspace(3) %arrayidx115.3.1, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.6.vec.insert1833 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1803, half %122, i64 3, !dbg !102
  %123 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1833, <4 x half> %q_local.sroa.7.14.vec.insert, <4 x float> %113), !dbg !103
  %add247.1.1 = add nuw nsw i32 %add100.1, 1024
  %add260.11064.1 = or disjoint i32 %add247.1.1, %xor112, !dbg !104
  %arrayidx262.11065.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.11064.1, !dbg !105
  %124 = load half, ptr addrspace(3) %arrayidx262.11065.1, align 8, !dbg !102, !tbaa !69
  %k_local.sroa.0.0.vec.insert1745 = insertelement <4 x half> poison, half %124, i64 0, !dbg !102
  %add260.1.1.1 = or disjoint i32 %add247.1.1, %xor112.1, !dbg !104
  %arrayidx262.1.1.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.1.1.1, !dbg !105
  %125 = load half, ptr addrspace(3) %arrayidx262.1.1.1, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.2.vec.insert1775 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1745, half %125, i64 1, !dbg !102
  %add260.2.1.1 = or disjoint i32 %add247.1.1, %xor112.2, !dbg !104
  %arrayidx262.2.1.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.2.1.1, !dbg !105
  %126 = load half, ptr addrspace(3) %arrayidx262.2.1.1, align 4, !dbg !102, !tbaa !69
  %k_local.sroa.0.4.vec.insert1805 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1775, half %126, i64 2, !dbg !102
  %add260.3.1.1 = or disjoint i32 %add247.1.1, %xor112.3, !dbg !104
  %arrayidx262.3.1.1 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.3.1.1, !dbg !105
  %127 = load half, ptr addrspace(3) %arrayidx262.3.1.1, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.6.vec.insert1835 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1805, half %127, i64 3, !dbg !102
  %128 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1835, <4 x half> %q_local.sroa.7.14.vec.insert, <4 x float> %118), !dbg !103
  %129 = load half, ptr addrspace(3) %arrayidx115.21029, align 8, !dbg !102, !tbaa !69
  %k_local.sroa.0.0.vec.insert1747 = insertelement <4 x half> poison, half %129, i64 0, !dbg !102
  %130 = load half, ptr addrspace(3) %arrayidx115.1.2, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.2.vec.insert1777 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1747, half %130, i64 1, !dbg !102
  %131 = load half, ptr addrspace(3) %arrayidx115.2.2, align 4, !dbg !102, !tbaa !69
  %k_local.sroa.0.4.vec.insert1807 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1777, half %131, i64 2, !dbg !102
  %132 = load half, ptr addrspace(3) %arrayidx115.3.2, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.6.vec.insert1837 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1807, half %132, i64 3, !dbg !102
  %133 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1837, <4 x half> %q_local.sroa.12.22.vec.insert, <4 x float> %123), !dbg !103
  %add247.1.2 = add nuw nsw i32 %add100.2, 1024
  %add260.11064.2 = or disjoint i32 %add247.1.2, %xor112, !dbg !104
  %arrayidx262.11065.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.11064.2, !dbg !105
  %134 = load half, ptr addrspace(3) %arrayidx262.11065.2, align 8, !dbg !102, !tbaa !69
  %k_local.sroa.0.0.vec.insert1749 = insertelement <4 x half> poison, half %134, i64 0, !dbg !102
  %add260.1.1.2 = or disjoint i32 %add247.1.2, %xor112.1, !dbg !104
  %arrayidx262.1.1.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.1.1.2, !dbg !105
  %135 = load half, ptr addrspace(3) %arrayidx262.1.1.2, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.2.vec.insert1779 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1749, half %135, i64 1, !dbg !102
  %add260.2.1.2 = or disjoint i32 %add247.1.2, %xor112.2, !dbg !104
  %arrayidx262.2.1.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.2.1.2, !dbg !105
  %136 = load half, ptr addrspace(3) %arrayidx262.2.1.2, align 4, !dbg !102, !tbaa !69
  %k_local.sroa.0.4.vec.insert1809 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1779, half %136, i64 2, !dbg !102
  %add260.3.1.2 = or disjoint i32 %add247.1.2, %xor112.3, !dbg !104
  %arrayidx262.3.1.2 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.3.1.2, !dbg !105
  %137 = load half, ptr addrspace(3) %arrayidx262.3.1.2, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.6.vec.insert1839 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1809, half %137, i64 3, !dbg !102
  %138 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1839, <4 x half> %q_local.sroa.12.22.vec.insert, <4 x float> %128), !dbg !103
  %139 = load half, ptr addrspace(3) %arrayidx115.31033, align 8, !dbg !102, !tbaa !69
  %k_local.sroa.0.0.vec.insert1751 = insertelement <4 x half> poison, half %139, i64 0, !dbg !102
  %140 = load half, ptr addrspace(3) %arrayidx115.1.3, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.2.vec.insert1781 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1751, half %140, i64 1, !dbg !102
  %141 = load half, ptr addrspace(3) %arrayidx115.2.3, align 4, !dbg !102, !tbaa !69
  %k_local.sroa.0.4.vec.insert1811 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1781, half %141, i64 2, !dbg !102
  %142 = load half, ptr addrspace(3) %arrayidx115.3.3, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.6.vec.insert1841 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1811, half %142, i64 3, !dbg !102
  %143 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1841, <4 x half> %q_local.sroa.17.30.vec.insert, <4 x float> %133), !dbg !103
  %add247.1.3 = add nuw nsw i32 %add100.3, 1024
  %add260.11064.3 = or disjoint i32 %add247.1.3, %xor112, !dbg !104
  %arrayidx262.11065.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.11064.3, !dbg !105
  %144 = load half, ptr addrspace(3) %arrayidx262.11065.3, align 8, !dbg !102, !tbaa !69
  %k_local.sroa.0.0.vec.insert1753 = insertelement <4 x half> poison, half %144, i64 0, !dbg !102
  %add260.1.1.3 = or disjoint i32 %add247.1.3, %xor112.1, !dbg !104
  %arrayidx262.1.1.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.1.1.3, !dbg !105
  %145 = load half, ptr addrspace(3) %arrayidx262.1.1.3, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.2.vec.insert1783 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1753, half %145, i64 1, !dbg !102
  %add260.2.1.3 = or disjoint i32 %add247.1.3, %xor112.2, !dbg !104
  %arrayidx262.2.1.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.2.1.3, !dbg !105
  %146 = load half, ptr addrspace(3) %arrayidx262.2.1.3, align 4, !dbg !102, !tbaa !69
  %k_local.sroa.0.4.vec.insert1813 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1783, half %146, i64 2, !dbg !102
  %add260.3.1.3 = or disjoint i32 %add247.1.3, %xor112.3, !dbg !104
  %arrayidx262.3.1.3 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.3.1.3, !dbg !105
  %147 = load half, ptr addrspace(3) %arrayidx262.3.1.3, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.6.vec.insert1843 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1813, half %147, i64 3, !dbg !102
  %148 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1843, <4 x half> %q_local.sroa.17.30.vec.insert, <4 x float> %138), !dbg !103
  %add237.4 = or disjoint i32 %mul89, 2048
  %add233.4 = add nuw nsw i32 %add237.4, %mul99
  %add260.4 = or disjoint i32 %add233.4, %xor112.4, !dbg !104
  %arrayidx262.4 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.4, !dbg !105
  %149 = load half, ptr addrspace(3) %arrayidx262.4, align 8, !dbg !102, !tbaa !69
  %k_local.sroa.0.0.vec.insert1755 = insertelement <4 x half> poison, half %149, i64 0, !dbg !102
  %add260.1.4 = or disjoint i32 %add233.4, %xor112.1.4, !dbg !104
  %arrayidx262.1.4 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.1.4, !dbg !105
  %150 = load half, ptr addrspace(3) %arrayidx262.1.4, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.2.vec.insert1785 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1755, half %150, i64 1, !dbg !102
  %add260.2.4 = or disjoint i32 %add233.4, %xor112.2.4, !dbg !104
  %arrayidx262.2.4 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.2.4, !dbg !105
  %151 = load half, ptr addrspace(3) %arrayidx262.2.4, align 4, !dbg !102, !tbaa !69
  %k_local.sroa.0.4.vec.insert1815 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1785, half %151, i64 2, !dbg !102
  %add260.3.4 = or disjoint i32 %add233.4, %xor112.3.4, !dbg !104
  %arrayidx262.3.4 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.3.4, !dbg !105
  %152 = load half, ptr addrspace(3) %arrayidx262.3.4, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.6.vec.insert1845 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1815, half %152, i64 3, !dbg !102
  %153 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1845, <4 x half> %q_local.sroa.22.38.vec.insert, <4 x float> %143), !dbg !103
  %add247.1.4 = add nuw nsw i32 %add233.4, 1024
  %add260.11064.4 = or disjoint i32 %add247.1.4, %xor112.4, !dbg !104
  %arrayidx262.11065.4 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.11064.4, !dbg !105
  %154 = load half, ptr addrspace(3) %arrayidx262.11065.4, align 8, !dbg !102, !tbaa !69
  %k_local.sroa.0.0.vec.insert1757 = insertelement <4 x half> poison, half %154, i64 0, !dbg !102
  %add260.1.1.4 = or disjoint i32 %add247.1.4, %xor112.1.4, !dbg !104
  %arrayidx262.1.1.4 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.1.1.4, !dbg !105
  %155 = load half, ptr addrspace(3) %arrayidx262.1.1.4, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.2.vec.insert1787 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1757, half %155, i64 1, !dbg !102
  %add260.2.1.4 = or disjoint i32 %add247.1.4, %xor112.2.4, !dbg !104
  %arrayidx262.2.1.4 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.2.1.4, !dbg !105
  %156 = load half, ptr addrspace(3) %arrayidx262.2.1.4, align 4, !dbg !102, !tbaa !69
  %k_local.sroa.0.4.vec.insert1817 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1787, half %156, i64 2, !dbg !102
  %add260.3.1.4 = or disjoint i32 %add247.1.4, %xor112.3.4, !dbg !104
  %arrayidx262.3.1.4 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.3.1.4, !dbg !105
  %157 = load half, ptr addrspace(3) %arrayidx262.3.1.4, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.6.vec.insert1847 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1817, half %157, i64 3, !dbg !102
  %158 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1847, <4 x half> %q_local.sroa.22.38.vec.insert, <4 x float> %148), !dbg !103
  %add233.5 = add nuw nsw i32 %add237.4, %mul99.1
  %add260.5 = or disjoint i32 %add233.5, %xor112.4, !dbg !104
  %arrayidx262.5 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.5, !dbg !105
  %159 = load half, ptr addrspace(3) %arrayidx262.5, align 8, !dbg !102, !tbaa !69
  %k_local.sroa.0.0.vec.insert1759 = insertelement <4 x half> poison, half %159, i64 0, !dbg !102
  %add260.1.5 = or disjoint i32 %add233.5, %xor112.1.4, !dbg !104
  %arrayidx262.1.5 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.1.5, !dbg !105
  %160 = load half, ptr addrspace(3) %arrayidx262.1.5, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.2.vec.insert1789 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1759, half %160, i64 1, !dbg !102
  %add260.2.5 = or disjoint i32 %add233.5, %xor112.2.4, !dbg !104
  %arrayidx262.2.5 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.2.5, !dbg !105
  %161 = load half, ptr addrspace(3) %arrayidx262.2.5, align 4, !dbg !102, !tbaa !69
  %k_local.sroa.0.4.vec.insert1819 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1789, half %161, i64 2, !dbg !102
  %add260.3.5 = or disjoint i32 %add233.5, %xor112.3.4, !dbg !104
  %arrayidx262.3.5 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.3.5, !dbg !105
  %162 = load half, ptr addrspace(3) %arrayidx262.3.5, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.6.vec.insert1849 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1819, half %162, i64 3, !dbg !102
  %163 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1849, <4 x half> %q_local.sroa.27.46.vec.insert, <4 x float> %153), !dbg !103
  %add247.1.5 = add nuw nsw i32 %add233.5, 1024
  %add260.11064.5 = or disjoint i32 %add247.1.5, %xor112.4, !dbg !104
  %arrayidx262.11065.5 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.11064.5, !dbg !105
  %164 = load half, ptr addrspace(3) %arrayidx262.11065.5, align 8, !dbg !102, !tbaa !69
  %k_local.sroa.0.0.vec.insert1761 = insertelement <4 x half> poison, half %164, i64 0, !dbg !102
  %add260.1.1.5 = or disjoint i32 %add247.1.5, %xor112.1.4, !dbg !104
  %arrayidx262.1.1.5 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.1.1.5, !dbg !105
  %165 = load half, ptr addrspace(3) %arrayidx262.1.1.5, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.2.vec.insert1791 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1761, half %165, i64 1, !dbg !102
  %add260.2.1.5 = or disjoint i32 %add247.1.5, %xor112.2.4, !dbg !104
  %arrayidx262.2.1.5 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.2.1.5, !dbg !105
  %166 = load half, ptr addrspace(3) %arrayidx262.2.1.5, align 4, !dbg !102, !tbaa !69
  %k_local.sroa.0.4.vec.insert1821 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1791, half %166, i64 2, !dbg !102
  %add260.3.1.5 = or disjoint i32 %add247.1.5, %xor112.3.4, !dbg !104
  %arrayidx262.3.1.5 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.3.1.5, !dbg !105
  %167 = load half, ptr addrspace(3) %arrayidx262.3.1.5, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.6.vec.insert1851 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1821, half %167, i64 3, !dbg !102
  %168 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1851, <4 x half> %q_local.sroa.27.46.vec.insert, <4 x float> %158), !dbg !103
  %add233.6 = add nuw nsw i32 %add237.4, %mul99.2
  %add260.6 = or disjoint i32 %add233.6, %xor112.4, !dbg !104
  %arrayidx262.6 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.6, !dbg !105
  %169 = load half, ptr addrspace(3) %arrayidx262.6, align 8, !dbg !102, !tbaa !69
  %k_local.sroa.0.0.vec.insert1763 = insertelement <4 x half> poison, half %169, i64 0, !dbg !102
  %add260.1.6 = or disjoint i32 %add233.6, %xor112.1.4, !dbg !104
  %arrayidx262.1.6 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.1.6, !dbg !105
  %170 = load half, ptr addrspace(3) %arrayidx262.1.6, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.2.vec.insert1793 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1763, half %170, i64 1, !dbg !102
  %add260.2.6 = or disjoint i32 %add233.6, %xor112.2.4, !dbg !104
  %arrayidx262.2.6 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.2.6, !dbg !105
  %171 = load half, ptr addrspace(3) %arrayidx262.2.6, align 4, !dbg !102, !tbaa !69
  %k_local.sroa.0.4.vec.insert1823 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1793, half %171, i64 2, !dbg !102
  %add260.3.6 = or disjoint i32 %add233.6, %xor112.3.4, !dbg !104
  %arrayidx262.3.6 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.3.6, !dbg !105
  %172 = load half, ptr addrspace(3) %arrayidx262.3.6, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.6.vec.insert1853 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1823, half %172, i64 3, !dbg !102
  %173 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1853, <4 x half> %q_local.sroa.32.54.vec.insert, <4 x float> %163), !dbg !103
  %add247.1.6 = add nuw nsw i32 %add233.6, 1024
  %add260.11064.6 = or disjoint i32 %add247.1.6, %xor112.4, !dbg !104
  %arrayidx262.11065.6 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.11064.6, !dbg !105
  %174 = load half, ptr addrspace(3) %arrayidx262.11065.6, align 8, !dbg !102, !tbaa !69
  %k_local.sroa.0.0.vec.insert1765 = insertelement <4 x half> poison, half %174, i64 0, !dbg !102
  %add260.1.1.6 = or disjoint i32 %add247.1.6, %xor112.1.4, !dbg !104
  %arrayidx262.1.1.6 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.1.1.6, !dbg !105
  %175 = load half, ptr addrspace(3) %arrayidx262.1.1.6, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.2.vec.insert1795 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1765, half %175, i64 1, !dbg !102
  %add260.2.1.6 = or disjoint i32 %add247.1.6, %xor112.2.4, !dbg !104
  %arrayidx262.2.1.6 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.2.1.6, !dbg !105
  %176 = load half, ptr addrspace(3) %arrayidx262.2.1.6, align 4, !dbg !102, !tbaa !69
  %k_local.sroa.0.4.vec.insert1825 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1795, half %176, i64 2, !dbg !102
  %add260.3.1.6 = or disjoint i32 %add247.1.6, %xor112.3.4, !dbg !104
  %arrayidx262.3.1.6 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.3.1.6, !dbg !105
  %177 = load half, ptr addrspace(3) %arrayidx262.3.1.6, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.6.vec.insert1855 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1825, half %177, i64 3, !dbg !102
  %178 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1855, <4 x half> %q_local.sroa.32.54.vec.insert, <4 x float> %168), !dbg !103
  %add233.7 = add nuw nsw i32 %add237.4, %mul99.3
  %add260.7 = or disjoint i32 %add233.7, %xor112.4, !dbg !104
  %arrayidx262.7 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.7, !dbg !105
  %179 = load half, ptr addrspace(3) %arrayidx262.7, align 8, !dbg !102, !tbaa !69
  %k_local.sroa.0.0.vec.insert1767 = insertelement <4 x half> poison, half %179, i64 0, !dbg !102
  %add260.1.7 = or disjoint i32 %add233.7, %xor112.1.4, !dbg !104
  %arrayidx262.1.7 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.1.7, !dbg !105
  %180 = load half, ptr addrspace(3) %arrayidx262.1.7, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.2.vec.insert1797 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1767, half %180, i64 1, !dbg !102
  %add260.2.7 = or disjoint i32 %add233.7, %xor112.2.4, !dbg !104
  %arrayidx262.2.7 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.2.7, !dbg !105
  %181 = load half, ptr addrspace(3) %arrayidx262.2.7, align 4, !dbg !102, !tbaa !69
  %k_local.sroa.0.4.vec.insert1827 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1797, half %181, i64 2, !dbg !102
  %add260.3.7 = or disjoint i32 %add233.7, %xor112.3.4, !dbg !104
  %arrayidx262.3.7 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.3.7, !dbg !105
  %182 = load half, ptr addrspace(3) %arrayidx262.3.7, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.6.vec.insert1857 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1827, half %182, i64 3, !dbg !102
  %183 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1857, <4 x half> %q_local.sroa.37.62.vec.insert, <4 x float> %173), !dbg !103
  %add247.1.7 = add nuw nsw i32 %add233.7, 1024
  %add260.11064.7 = or disjoint i32 %add247.1.7, %xor112.4, !dbg !104
  %arrayidx262.11065.7 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.11064.7, !dbg !105
  %184 = load half, ptr addrspace(3) %arrayidx262.11065.7, align 8, !dbg !102, !tbaa !69
  %k_local.sroa.0.0.vec.insert1769 = insertelement <4 x half> poison, half %184, i64 0, !dbg !102
  %add260.1.1.7 = or disjoint i32 %add247.1.7, %xor112.1.4, !dbg !104
  %arrayidx262.1.1.7 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.1.1.7, !dbg !105
  %185 = load half, ptr addrspace(3) %arrayidx262.1.1.7, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.2.vec.insert1799 = insertelement <4 x half> %k_local.sroa.0.0.vec.insert1769, half %185, i64 1, !dbg !102
  %add260.2.1.7 = or disjoint i32 %add247.1.7, %xor112.2.4, !dbg !104
  %arrayidx262.2.1.7 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.2.1.7, !dbg !105
  %186 = load half, ptr addrspace(3) %arrayidx262.2.1.7, align 4, !dbg !102, !tbaa !69
  %k_local.sroa.0.4.vec.insert1829 = insertelement <4 x half> %k_local.sroa.0.2.vec.insert1799, half %186, i64 2, !dbg !102
  %add260.3.1.7 = or disjoint i32 %add247.1.7, %xor112.3.4, !dbg !104
  %arrayidx262.3.1.7 = getelementptr inbounds [0 x %struct.__half], ptr addrspace(3) @shared, i32 0, i32 %add260.3.1.7, !dbg !105
  %187 = load half, ptr addrspace(3) %arrayidx262.3.1.7, align 2, !dbg !102, !tbaa !69
  %k_local.sroa.0.6.vec.insert1859 = insertelement <4 x half> %k_local.sroa.0.4.vec.insert1829, half %187, i64 3, !dbg !102
  %188 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.6.vec.insert1859, <4 x half> %q_local.sroa.37.62.vec.insert, <4 x float> %178), !dbg !103
  %mul296 = and i32 %16, 252
  %add297 = add nuw nsw i32 %mul7, %mul296
  %cmp301.not = icmp sgt i32 %add297, %1, !dbg !106
  %scores.sroa.0.0.vec.extract = extractelement <4 x float> %183, i64 0
  %spec.select = select i1 %cmp301.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract, !dbg !107
  %cmp301.not.1.not = icmp slt i32 %add297, %1, !dbg !106
  %scores.sroa.0.4.vec.extract = extractelement <4 x float> %183, i64 1, !dbg !107
  %condval.0.1 = select i1 %cmp301.not.1.not, float %scores.sroa.0.4.vec.extract, float 0xFFF0000000000000, !dbg !107
  %add299.2 = or disjoint i32 %add297, 2, !dbg !108
  %cmp301.not.2 = icmp sgt i32 %add299.2, %1, !dbg !106
  %scores.sroa.0.8.vec.extract = extractelement <4 x float> %183, i64 2, !dbg !107
  %condval.0.2 = select i1 %cmp301.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract, !dbg !107
  %add299.3 = or disjoint i32 %add297, 3, !dbg !108
  %cmp301.not.3 = icmp sgt i32 %add299.3, %1, !dbg !106
  %scores.sroa.0.12.vec.extract = extractelement <4 x float> %183, i64 3, !dbg !107
  %condval.0.3 = select i1 %cmp301.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract, !dbg !107
  %add298.1 = add nuw nsw i32 %add297, 16
  %cmp301.not.11091 = icmp sgt i32 %add298.1, %1, !dbg !106
  %scores.sroa.38.16.vec.extract = extractelement <4 x float> %188, i64 0, !dbg !107
  %condval.0.11094 = select i1 %cmp301.not.11091, float 0xFFF0000000000000, float %scores.sroa.38.16.vec.extract, !dbg !107
  %add299.1.1 = add nuw nsw i32 %add297, 17, !dbg !108
  %cmp301.not.1.1 = icmp sgt i32 %add299.1.1, %1, !dbg !106
  %scores.sroa.38.20.vec.extract = extractelement <4 x float> %188, i64 1, !dbg !107
  %condval.0.1.1 = select i1 %cmp301.not.1.1, float 0xFFF0000000000000, float %scores.sroa.38.20.vec.extract, !dbg !107
  %add299.2.1 = add nuw nsw i32 %add297, 18, !dbg !108
  %cmp301.not.2.1 = icmp sgt i32 %add299.2.1, %1, !dbg !106
  %scores.sroa.38.24.vec.extract = extractelement <4 x float> %188, i64 2, !dbg !107
  %condval.0.2.1 = select i1 %cmp301.not.2.1, float 0xFFF0000000000000, float %scores.sroa.38.24.vec.extract, !dbg !107
  %add299.3.1 = add nuw nsw i32 %add297, 19, !dbg !108
  %cmp301.not.3.1 = icmp sgt i32 %add299.3.1, %1, !dbg !106
  %scores.sroa.38.28.vec.extract = extractelement <4 x float> %188, i64 3, !dbg !107
  %condval.0.3.1 = select i1 %cmp301.not.3.1, float 0xFFF0000000000000, float %scores.sroa.38.28.vec.extract, !dbg !107
  %189 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !109
  %190 = tail call contract noundef float @llvm.maxnum.f32(float %189, float %condval.0.1), !dbg !109
  %191 = tail call contract noundef float @llvm.maxnum.f32(float %190, float %condval.0.2), !dbg !109
  %192 = tail call contract noundef float @llvm.maxnum.f32(float %191, float %condval.0.3), !dbg !109
  %193 = tail call contract noundef float @llvm.maxnum.f32(float %192, float %condval.0.11094), !dbg !109
  %194 = tail call contract noundef float @llvm.maxnum.f32(float %193, float %condval.0.1.1), !dbg !109
  %195 = tail call contract noundef float @llvm.maxnum.f32(float %194, float %condval.0.2.1), !dbg !109
  %196 = tail call contract noundef float @llvm.maxnum.f32(float %195, float %condval.0.3.1), !dbg !109
  %197 = bitcast float %196 to i32, !dbg !113
  %198 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !116
  %199 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %198) #11, !dbg !121
  %xor.i.i = xor i32 %199, 32, !dbg !122
  %200 = and i32 %199, -64, !dbg !123
  %and.i.i = add nsw i32 %200, 64, !dbg !123
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !124
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %199, !dbg !125
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !126
  %201 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %197), !dbg !127
  %202 = bitcast i32 %201 to float, !dbg !128
  %203 = tail call contract noundef float @llvm.maxnum.f32(float %196, float %202), !dbg !129
  %204 = bitcast float %203 to i32, !dbg !131
  %205 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !133
  %206 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %205) #11, !dbg !136
  %xor.i.i902 = xor i32 %206, 16, !dbg !137
  %207 = and i32 %206, -64, !dbg !138
  %and.i.i903 = add nsw i32 %207, 64, !dbg !138
  %cmp.not.i.i904 = icmp slt i32 %xor.i.i902, %and.i.i903, !dbg !139
  %cond.i.i905 = select i1 %cmp.not.i.i904, i32 %xor.i.i902, i32 %206, !dbg !140
  %shl.i.i906 = shl i32 %cond.i.i905, 2, !dbg !141
  %208 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i906, i32 %204), !dbg !142
  %209 = bitcast i32 %208 to float, !dbg !143
  %210 = tail call contract noundef float @llvm.maxnum.f32(float %203, float %209), !dbg !144
  %sub = fsub contract float %spec.select, %210, !dbg !146
  %sub359 = fsub contract float %condval.0.1, %210, !dbg !147
  %sub362 = fsub contract float %condval.0.2, %210, !dbg !148
  %sub365 = fsub contract float %condval.0.3, %210, !dbg !149
  %mul370 = fmul contract float %sub, 0x3FC0527DC0000000, !dbg !150
  %mul374 = fmul contract float %sub359, 0x3FC0527DC0000000, !dbg !151
  %mul378 = fmul contract float %sub362, 0x3FC0527DC0000000, !dbg !152
  %mul382 = fmul contract float %sub365, 0x3FC0527DC0000000, !dbg !153
  %add387 = fadd contract float %mul370, 8.000000e+00, !dbg !154
  %add391 = fadd contract float %mul374, 8.000000e+00, !dbg !155
  %add395 = fadd contract float %mul378, 8.000000e+00, !dbg !156
  %add399 = fadd contract float %mul382, 8.000000e+00, !dbg !157
  %cmp.i.i = fcmp contract olt float %add387, -1.260000e+02, !dbg !158
  %cond.i.i907 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !158
  %add.i.i = fadd contract float %add387, %cond.i.i907, !dbg !158
  %211 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !158
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !158
  %mul.i.i = fmul contract float %cond2.i.i, %211, !dbg !158
  %cmp.i.i908 = fcmp contract olt float %add391, -1.260000e+02, !dbg !161
  %cond.i.i909 = select contract i1 %cmp.i.i908, float 6.400000e+01, float 0.000000e+00, !dbg !161
  %add.i.i910 = fadd contract float %add391, %cond.i.i909, !dbg !161
  %212 = tail call contract float @llvm.exp2.f32(float %add.i.i910), !dbg !161
  %cond2.i.i911 = select contract i1 %cmp.i.i908, float 0x3BF0000000000000, float 1.000000e+00, !dbg !161
  %mul.i.i912 = fmul contract float %cond2.i.i911, %212, !dbg !161
  %cmp.i.i913 = fcmp contract olt float %add395, -1.260000e+02, !dbg !163
  %cond.i.i914 = select contract i1 %cmp.i.i913, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i915 = fadd contract float %add395, %cond.i.i914, !dbg !163
  %213 = tail call contract float @llvm.exp2.f32(float %add.i.i915), !dbg !163
  %cond2.i.i916 = select contract i1 %cmp.i.i913, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %mul.i.i917 = fmul contract float %cond2.i.i916, %213, !dbg !163
  %cmp.i.i918 = fcmp contract olt float %add399, -1.260000e+02, !dbg !165
  %cond.i.i919 = select contract i1 %cmp.i.i918, float 6.400000e+01, float 0.000000e+00, !dbg !165
  %add.i.i920 = fadd contract float %add399, %cond.i.i919, !dbg !165
  %214 = tail call contract float @llvm.exp2.f32(float %add.i.i920), !dbg !165
  %cond2.i.i921 = select contract i1 %cmp.i.i918, float 0x3BF0000000000000, float 1.000000e+00, !dbg !165
  %mul.i.i922 = fmul contract float %cond2.i.i921, %214, !dbg !165
  %215 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !167, !noalias !175
  %216 = fptrunc float %mul.i.i to half, !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %215), !dbg !167, !noalias !175
  %217 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !180, !noalias !175
  %218 = fptrunc float %mul.i.i912 to half, !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %217), !dbg !180, !noalias !175
  %219 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !182, !noalias !186
  %220 = fptrunc float %mul.i.i917 to half, !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %219), !dbg !182, !noalias !186
  %221 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !191
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !191, !noalias !186
  %222 = fptrunc float %mul.i.i922 to half, !dbg !191
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %221), !dbg !191, !noalias !186
  %223 = insertelement <4 x half> poison, half %216, i64 0, !dbg !193
  %224 = insertelement <4 x half> %223, half %218, i64 1, !dbg !193
  %225 = insertelement <4 x half> %224, half %220, i64 2, !dbg !193
  %226 = insertelement <4 x half> %225, half %222, i64 3, !dbg !193
  %sub.1 = fsub contract float %condval.0.11094, %210, !dbg !146
  %sub359.1 = fsub contract float %condval.0.1.1, %210, !dbg !147
  %sub362.1 = fsub contract float %condval.0.2.1, %210, !dbg !148
  %sub365.1 = fsub contract float %condval.0.3.1, %210, !dbg !149
  %mul370.1 = fmul contract float %sub.1, 0x3FC0527DC0000000, !dbg !150
  %mul374.1 = fmul contract float %sub359.1, 0x3FC0527DC0000000, !dbg !151
  %mul378.1 = fmul contract float %sub362.1, 0x3FC0527DC0000000, !dbg !152
  %mul382.1 = fmul contract float %sub365.1, 0x3FC0527DC0000000, !dbg !153
  %add387.1 = fadd contract float %mul370.1, 8.000000e+00, !dbg !154
  %add391.1 = fadd contract float %mul374.1, 8.000000e+00, !dbg !155
  %add395.1 = fadd contract float %mul378.1, 8.000000e+00, !dbg !156
  %add399.1 = fadd contract float %mul382.1, 8.000000e+00, !dbg !157
  %cmp.i.i.1 = fcmp contract olt float %add387.1, -1.260000e+02, !dbg !158
  %cond.i.i907.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !158
  %add.i.i.1 = fadd contract float %add387.1, %cond.i.i907.1, !dbg !158
  %227 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !158
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !158
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %227, !dbg !158
  %cmp.i.i908.1 = fcmp contract olt float %add391.1, -1.260000e+02, !dbg !161
  %cond.i.i909.1 = select contract i1 %cmp.i.i908.1, float 6.400000e+01, float 0.000000e+00, !dbg !161
  %add.i.i910.1 = fadd contract float %add391.1, %cond.i.i909.1, !dbg !161
  %228 = tail call contract float @llvm.exp2.f32(float %add.i.i910.1), !dbg !161
  %cond2.i.i911.1 = select contract i1 %cmp.i.i908.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !161
  %mul.i.i912.1 = fmul contract float %cond2.i.i911.1, %228, !dbg !161
  %cmp.i.i913.1 = fcmp contract olt float %add395.1, -1.260000e+02, !dbg !163
  %cond.i.i914.1 = select contract i1 %cmp.i.i913.1, float 6.400000e+01, float 0.000000e+00, !dbg !163
  %add.i.i915.1 = fadd contract float %add395.1, %cond.i.i914.1, !dbg !163
  %229 = tail call contract float @llvm.exp2.f32(float %add.i.i915.1), !dbg !163
  %cond2.i.i916.1 = select contract i1 %cmp.i.i913.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !163
  %mul.i.i917.1 = fmul contract float %cond2.i.i916.1, %229, !dbg !163
  %cmp.i.i918.1 = fcmp contract olt float %add399.1, -1.260000e+02, !dbg !165
  %cond.i.i919.1 = select contract i1 %cmp.i.i918.1, float 6.400000e+01, float 0.000000e+00, !dbg !165
  %add.i.i920.1 = fadd contract float %add399.1, %cond.i.i919.1, !dbg !165
  %230 = tail call contract float @llvm.exp2.f32(float %add.i.i920.1), !dbg !165
  %cond2.i.i921.1 = select contract i1 %cmp.i.i918.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !165
  %mul.i.i922.1 = fmul contract float %cond2.i.i921.1, %230, !dbg !165
  %231 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !167, !noalias !175
  %232 = fptrunc float %mul.i.i.1 to half, !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %231), !dbg !167, !noalias !175
  %233 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !180, !noalias !175
  %234 = fptrunc float %mul.i.i912.1 to half, !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %233), !dbg !180, !noalias !175
  %235 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !182, !noalias !186
  %236 = fptrunc float %mul.i.i917.1 to half, !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %235), !dbg !182, !noalias !186
  %237 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !191
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !191, !noalias !186
  %238 = fptrunc float %mul.i.i922.1 to half, !dbg !191
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %237), !dbg !191, !noalias !186
  %239 = insertelement <4 x half> poison, half %232, i64 0, !dbg !193
  %240 = insertelement <4 x half> %239, half %234, i64 1, !dbg !193
  %241 = insertelement <4 x half> %240, half %236, i64 2, !dbg !193
  %242 = insertelement <4 x half> %241, half %238, i64 3, !dbg !193
  %conv.i.i = fpext half %216 to float, !dbg !194
  %add437 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !199
  %conv.i.i.1 = fpext half %218 to float, !dbg !194
  %add437.1 = fadd contract float %add437, %conv.i.i.1, !dbg !199
  %conv.i.i.2 = fpext half %220 to float, !dbg !194
  %add437.2 = fadd contract float %add437.1, %conv.i.i.2, !dbg !199
  %conv.i.i.3 = fpext half %222 to float, !dbg !194
  %add437.3 = fadd contract float %add437.2, %conv.i.i.3, !dbg !199
  %conv.i.i.4 = fpext half %232 to float, !dbg !194
  %add437.4 = fadd contract float %add437.3, %conv.i.i.4, !dbg !199
  %conv.i.i.5 = fpext half %234 to float, !dbg !194
  %add437.5 = fadd contract float %add437.4, %conv.i.i.5, !dbg !199
  %conv.i.i.6 = fpext half %236 to float, !dbg !194
  %add437.6 = fadd contract float %add437.5, %conv.i.i.6, !dbg !199
  %conv.i.i.7 = fpext half %238 to float, !dbg !194
  %add437.7 = fadd contract float %add437.6, %conv.i.i.7, !dbg !199
  %243 = bitcast float %add437.7 to i32, !dbg !200
  %244 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !202
  %245 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %244) #11, !dbg !205
  %xor.i.i924 = xor i32 %245, 32, !dbg !206
  %246 = and i32 %245, -64, !dbg !207
  %and.i.i925 = add nsw i32 %246, 64, !dbg !207
  %cmp.not.i.i926 = icmp slt i32 %xor.i.i924, %and.i.i925, !dbg !208
  %cond.i.i927 = select i1 %cmp.not.i.i926, i32 %xor.i.i924, i32 %245, !dbg !209
  %shl.i.i928 = shl i32 %cond.i.i927, 2, !dbg !210
  %247 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i928, i32 %243), !dbg !211
  %248 = bitcast i32 %247 to float, !dbg !212
  %add445 = fadd contract float %add437.7, %248, !dbg !213
  %249 = bitcast float %add445 to i32, !dbg !214
  %250 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !216
  %251 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %250) #11, !dbg !219
  %xor.i.i929 = xor i32 %251, 16, !dbg !220
  %252 = and i32 %251, -64, !dbg !221
  %and.i.i930 = add nsw i32 %252, 64, !dbg !221
  %cmp.not.i.i931 = icmp slt i32 %xor.i.i929, %and.i.i930, !dbg !222
  %cond.i.i932 = select i1 %cmp.not.i.i931, i32 %xor.i.i929, i32 %251, !dbg !223
  %shl.i.i933 = shl i32 %cond.i.i932, 2, !dbg !224
  %253 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i933, i32 %249), !dbg !225
  %254 = bitcast i32 %253 to float, !dbg !226
  fence syncscope("warp") release, !dbg !227
  tail call void @llvm.mxc.barrier.warp(), !dbg !230
  fence syncscope("warp") acquire, !dbg !231
  %mul466 = shl nuw nsw i64 %conv, 17
  %255 = shl nuw nsw i32 %3, 5
  %256 = and i32 %255, 32512
  %mul473 = zext nneg i32 %256 to i64
  %add469 = or disjoint i64 %mul466, %mul473
  %257 = and i32 %mul20, 56
  %mul487 = zext nneg i32 %257 to i64
  %invariant.gep971 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %mul487
  %mul521 = and i32 %255, 224
  %xor529 = xor i32 %and63, %and44
  %258 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep971, i64 %add469, !dbg !232
  %259 = getelementptr inbounds i8, ptr addrspace(4) %258, i64 %.idx, !dbg !232
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %259, align 16, !dbg !233
  %v_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 2, !dbg !233
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4, !dbg !233
  %v_fetch.sroa.14.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx, align 4, !dbg !233
  %v_fetch.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 6, !dbg !233
  %v_fetch.sroa.18.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 8, !dbg !233
  %v_fetch.sroa.22.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx, align 8, !dbg !233
  %v_fetch.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 10, !dbg !233
  %v_fetch.sroa.26.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 12, !dbg !233
  %v_fetch.sroa.30.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx, align 4, !dbg !233
  %v_fetch.sroa.34.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 14, !dbg !233
  %v_fetch.sroa.34.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx, align 2, !dbg !233, !tbaa !30
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 256, !dbg !232
  %v_fetch.sroa.38.16.copyload = load i16, ptr addrspace(4) %gep.1, align 16, !dbg !233
  %v_fetch.sroa.46.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 258, !dbg !233
  %v_fetch.sroa.46.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.sroa_idx, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 260, !dbg !233
  %v_fetch.sroa.50.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.sroa_idx, align 4, !dbg !233
  %v_fetch.sroa.54.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 262, !dbg !233
  %v_fetch.sroa.54.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.sroa_idx, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 264, !dbg !233
  %v_fetch.sroa.58.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.sroa_idx, align 8, !dbg !233
  %v_fetch.sroa.62.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 266, !dbg !233
  %v_fetch.sroa.62.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.sroa_idx, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 268, !dbg !233
  %v_fetch.sroa.66.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.sroa_idx, align 4, !dbg !233
  %v_fetch.sroa.70.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 270, !dbg !233
  %v_fetch.sroa.70.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.sroa_idx, align 2, !dbg !233, !tbaa !30
  %260 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul521, !dbg !234
  %add.ptr534.idx = shl nuw nsw i32 %xor529, 2, !dbg !234
  %add.ptr534 = getelementptr inbounds i8, ptr addrspace(3) %260, i32 %add.ptr534.idx, !dbg !234
  %v_column.sroa.66.0.insert.ext = zext i16 %v_fetch.sroa.38.16.copyload to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift = shl nuw i32 %v_column.sroa.66.0.insert.ext, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.66.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr534, align 4, !dbg !235, !tbaa !30
  %261 = or disjoint i32 %mul521, 256, !dbg !236
  %262 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %261, !dbg !234
  %xor530.1 = shl nuw nsw i32 %xor529, 2, !dbg !234
  %add.ptr534.idx.1 = xor i32 %xor530.1, 4, !dbg !234
  %add.ptr534.1 = getelementptr inbounds i8, ptr addrspace(3) %262, i32 %add.ptr534.idx.1, !dbg !234
  %v_column.sroa.66.0.insert.ext1453 = zext i16 %v_fetch.sroa.46.16.copyload to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1454 = shl nuw i32 %v_column.sroa.66.0.insert.ext1453, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1329 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1331 = or disjoint i32 %v_column.sroa.66.0.insert.shift1454, %v_column.sroa.0.0.insert.ext1329, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1331, ptr addrspace(3) %add.ptr534.1, align 4, !dbg !235, !tbaa !30
  %263 = or disjoint i32 %mul521, 512, !dbg !236
  %264 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %263, !dbg !234
  %xor530.2 = shl nuw nsw i32 %xor529, 2, !dbg !234
  %add.ptr534.idx.2 = xor i32 %xor530.2, 8, !dbg !234
  %add.ptr534.2 = getelementptr inbounds i8, ptr addrspace(3) %264, i32 %add.ptr534.idx.2, !dbg !234
  %v_column.sroa.66.0.insert.ext1458 = zext i16 %v_fetch.sroa.50.16.copyload to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1459 = shl nuw i32 %v_column.sroa.66.0.insert.ext1458, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1333 = zext i16 %v_fetch.sroa.14.0.copyload to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1335 = or disjoint i32 %v_column.sroa.66.0.insert.shift1459, %v_column.sroa.0.0.insert.ext1333, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1335, ptr addrspace(3) %add.ptr534.2, align 4, !dbg !235, !tbaa !30
  %265 = or disjoint i32 %mul521, 768, !dbg !236
  %266 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %265, !dbg !234
  %xor530.3 = shl nuw nsw i32 %xor529, 2, !dbg !234
  %add.ptr534.idx.3 = xor i32 %xor530.3, 12, !dbg !234
  %add.ptr534.3 = getelementptr inbounds i8, ptr addrspace(3) %266, i32 %add.ptr534.idx.3, !dbg !234
  %v_column.sroa.66.0.insert.ext1463 = zext i16 %v_fetch.sroa.54.16.copyload to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1464 = shl nuw i32 %v_column.sroa.66.0.insert.ext1463, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1337 = zext i16 %v_fetch.sroa.18.0.copyload to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1339 = or disjoint i32 %v_column.sroa.66.0.insert.shift1464, %v_column.sroa.0.0.insert.ext1337, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1339, ptr addrspace(3) %add.ptr534.3, align 4, !dbg !235, !tbaa !30
  %267 = or disjoint i32 %mul521, 1024, !dbg !236
  %268 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %267, !dbg !234
  %xor530.4 = shl nuw nsw i32 %xor529, 2, !dbg !234
  %add.ptr534.idx.4 = xor i32 %xor530.4, 16, !dbg !234
  %add.ptr534.4 = getelementptr inbounds i8, ptr addrspace(3) %268, i32 %add.ptr534.idx.4, !dbg !234
  %v_column.sroa.66.0.insert.ext1468 = zext i16 %v_fetch.sroa.58.16.copyload to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1469 = shl nuw i32 %v_column.sroa.66.0.insert.ext1468, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1341 = zext i16 %v_fetch.sroa.22.0.copyload to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1343 = or disjoint i32 %v_column.sroa.66.0.insert.shift1469, %v_column.sroa.0.0.insert.ext1341, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1343, ptr addrspace(3) %add.ptr534.4, align 4, !dbg !235, !tbaa !30
  %269 = or disjoint i32 %mul521, 1280, !dbg !236
  %270 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %269, !dbg !234
  %xor530.5 = shl nuw nsw i32 %xor529, 2, !dbg !234
  %add.ptr534.idx.5 = xor i32 %xor530.5, 20, !dbg !234
  %add.ptr534.5 = getelementptr inbounds i8, ptr addrspace(3) %270, i32 %add.ptr534.idx.5, !dbg !234
  %v_column.sroa.66.0.insert.ext1473 = zext i16 %v_fetch.sroa.62.16.copyload to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1474 = shl nuw i32 %v_column.sroa.66.0.insert.ext1473, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1345 = zext i16 %v_fetch.sroa.26.0.copyload to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1347 = or disjoint i32 %v_column.sroa.66.0.insert.shift1474, %v_column.sroa.0.0.insert.ext1345, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1347, ptr addrspace(3) %add.ptr534.5, align 4, !dbg !235, !tbaa !30
  %271 = or disjoint i32 %mul521, 1536, !dbg !236
  %272 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %271, !dbg !234
  %xor530.6 = shl nuw nsw i32 %xor529, 2, !dbg !234
  %add.ptr534.idx.6 = xor i32 %xor530.6, 24, !dbg !234
  %add.ptr534.6 = getelementptr inbounds i8, ptr addrspace(3) %272, i32 %add.ptr534.idx.6, !dbg !234
  %v_column.sroa.66.0.insert.ext1478 = zext i16 %v_fetch.sroa.66.16.copyload to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1479 = shl nuw i32 %v_column.sroa.66.0.insert.ext1478, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1349 = zext i16 %v_fetch.sroa.30.0.copyload to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1351 = or disjoint i32 %v_column.sroa.66.0.insert.shift1479, %v_column.sroa.0.0.insert.ext1349, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1351, ptr addrspace(3) %add.ptr534.6, align 4, !dbg !235, !tbaa !30
  %273 = or disjoint i32 %mul521, 1792, !dbg !236
  %274 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %273, !dbg !234
  %xor530.7 = shl nuw nsw i32 %xor529, 2, !dbg !234
  %add.ptr534.idx.7 = xor i32 %xor530.7, 28, !dbg !234
  %add.ptr534.7 = getelementptr inbounds i8, ptr addrspace(3) %274, i32 %add.ptr534.idx.7, !dbg !234
  %v_column.sroa.66.0.insert.ext1483 = zext i16 %v_fetch.sroa.70.16.copyload to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1484 = shl nuw i32 %v_column.sroa.66.0.insert.ext1483, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1353 = zext i16 %v_fetch.sroa.34.0.copyload to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1355 = or disjoint i32 %v_column.sroa.66.0.insert.shift1484, %v_column.sroa.0.0.insert.ext1353, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1355, ptr addrspace(3) %add.ptr534.7, align 4, !dbg !235, !tbaa !30
  %275 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 128, !dbg !232
  %v_fetch.sroa.0.0.copyload1610 = load i16, ptr addrspace(4) %275, align 16, !dbg !233
  %v_fetch.sroa.10.0..sroa_idx1613 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 130, !dbg !233
  %v_fetch.sroa.10.0.copyload1614 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1613, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1622 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 132, !dbg !233
  %v_fetch.sroa.14.0.copyload1623 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1622, align 4, !dbg !233
  %v_fetch.sroa.18.0..sroa_idx1631 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 134, !dbg !233
  %v_fetch.sroa.18.0.copyload1632 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1631, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1640 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 136, !dbg !233
  %v_fetch.sroa.22.0.copyload1641 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1640, align 8, !dbg !233
  %v_fetch.sroa.26.0..sroa_idx1649 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 138, !dbg !233
  %v_fetch.sroa.26.0.copyload1650 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1649, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1658 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 140, !dbg !233
  %v_fetch.sroa.30.0.copyload1659 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1658, align 4, !dbg !233
  %v_fetch.sroa.34.0..sroa_idx1667 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 142, !dbg !233
  %v_fetch.sroa.34.0.copyload1668 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1667, align 2, !dbg !233, !tbaa !30
  %gep.1.1 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 384, !dbg !232
  %v_fetch.sroa.38.16.copyload1679 = load i16, ptr addrspace(4) %gep.1.1, align 16, !dbg !233
  %v_fetch.sroa.46.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 386, !dbg !233
  %v_fetch.sroa.46.16.copyload1682 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.1.sroa_idx, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 388, !dbg !233
  %v_fetch.sroa.50.16.copyload1688 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.1.sroa_idx, align 4, !dbg !233
  %v_fetch.sroa.54.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 390, !dbg !233
  %v_fetch.sroa.54.16.copyload1694 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.1.sroa_idx, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 392, !dbg !233
  %v_fetch.sroa.58.16.copyload1700 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.1.sroa_idx, align 8, !dbg !233
  %v_fetch.sroa.62.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 394, !dbg !233
  %v_fetch.sroa.62.16.copyload1706 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.1.sroa_idx, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 396, !dbg !233
  %v_fetch.sroa.66.16.copyload1712 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.1.sroa_idx, align 4, !dbg !233
  %v_fetch.sroa.70.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 398, !dbg !233
  %v_fetch.sroa.70.16.copyload1718 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.1.sroa_idx, align 2, !dbg !233, !tbaa !30
  %276 = or disjoint i32 %mul521, 2048, !dbg !236
  %277 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %276, !dbg !234
  %add.ptr534.11121 = getelementptr inbounds i8, ptr addrspace(3) %277, i32 %add.ptr534.idx, !dbg !234
  %v_column.sroa.66.0.insert.ext1488 = zext i16 %v_fetch.sroa.38.16.copyload1679 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1489 = shl nuw i32 %v_column.sroa.66.0.insert.ext1488, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1357 = zext i16 %v_fetch.sroa.0.0.copyload1610 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1359 = or disjoint i32 %v_column.sroa.66.0.insert.shift1489, %v_column.sroa.0.0.insert.ext1357, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1359, ptr addrspace(3) %add.ptr534.11121, align 4, !dbg !235, !tbaa !30
  %278 = or disjoint i32 %mul521, 2304, !dbg !236
  %279 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %278, !dbg !234
  %add.ptr534.1.1 = getelementptr inbounds i8, ptr addrspace(3) %279, i32 %add.ptr534.idx.1, !dbg !234
  %v_column.sroa.66.0.insert.ext1493 = zext i16 %v_fetch.sroa.46.16.copyload1682 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1494 = shl nuw i32 %v_column.sroa.66.0.insert.ext1493, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1361 = zext i16 %v_fetch.sroa.10.0.copyload1614 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1363 = or disjoint i32 %v_column.sroa.66.0.insert.shift1494, %v_column.sroa.0.0.insert.ext1361, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1363, ptr addrspace(3) %add.ptr534.1.1, align 4, !dbg !235, !tbaa !30
  %280 = or disjoint i32 %mul521, 2560, !dbg !236
  %281 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %280, !dbg !234
  %add.ptr534.2.1 = getelementptr inbounds i8, ptr addrspace(3) %281, i32 %add.ptr534.idx.2, !dbg !234
  %v_column.sroa.66.0.insert.ext1498 = zext i16 %v_fetch.sroa.50.16.copyload1688 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1499 = shl nuw i32 %v_column.sroa.66.0.insert.ext1498, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1365 = zext i16 %v_fetch.sroa.14.0.copyload1623 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1367 = or disjoint i32 %v_column.sroa.66.0.insert.shift1499, %v_column.sroa.0.0.insert.ext1365, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1367, ptr addrspace(3) %add.ptr534.2.1, align 4, !dbg !235, !tbaa !30
  %282 = or disjoint i32 %mul521, 2816, !dbg !236
  %283 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %282, !dbg !234
  %add.ptr534.3.1 = getelementptr inbounds i8, ptr addrspace(3) %283, i32 %add.ptr534.idx.3, !dbg !234
  %v_column.sroa.66.0.insert.ext1503 = zext i16 %v_fetch.sroa.54.16.copyload1694 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1504 = shl nuw i32 %v_column.sroa.66.0.insert.ext1503, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1369 = zext i16 %v_fetch.sroa.18.0.copyload1632 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1371 = or disjoint i32 %v_column.sroa.66.0.insert.shift1504, %v_column.sroa.0.0.insert.ext1369, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1371, ptr addrspace(3) %add.ptr534.3.1, align 4, !dbg !235, !tbaa !30
  %284 = or disjoint i32 %mul521, 3072, !dbg !236
  %285 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %284, !dbg !234
  %add.ptr534.4.1 = getelementptr inbounds i8, ptr addrspace(3) %285, i32 %add.ptr534.idx.4, !dbg !234
  %v_column.sroa.66.0.insert.ext1508 = zext i16 %v_fetch.sroa.58.16.copyload1700 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1509 = shl nuw i32 %v_column.sroa.66.0.insert.ext1508, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1373 = zext i16 %v_fetch.sroa.22.0.copyload1641 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1375 = or disjoint i32 %v_column.sroa.66.0.insert.shift1509, %v_column.sroa.0.0.insert.ext1373, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1375, ptr addrspace(3) %add.ptr534.4.1, align 4, !dbg !235, !tbaa !30
  %286 = or disjoint i32 %mul521, 3328, !dbg !236
  %287 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %286, !dbg !234
  %add.ptr534.5.1 = getelementptr inbounds i8, ptr addrspace(3) %287, i32 %add.ptr534.idx.5, !dbg !234
  %v_column.sroa.66.0.insert.ext1513 = zext i16 %v_fetch.sroa.62.16.copyload1706 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1514 = shl nuw i32 %v_column.sroa.66.0.insert.ext1513, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1377 = zext i16 %v_fetch.sroa.26.0.copyload1650 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1379 = or disjoint i32 %v_column.sroa.66.0.insert.shift1514, %v_column.sroa.0.0.insert.ext1377, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1379, ptr addrspace(3) %add.ptr534.5.1, align 4, !dbg !235, !tbaa !30
  %288 = or disjoint i32 %mul521, 3584, !dbg !236
  %289 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %288, !dbg !234
  %add.ptr534.6.1 = getelementptr inbounds i8, ptr addrspace(3) %289, i32 %add.ptr534.idx.6, !dbg !234
  %v_column.sroa.66.0.insert.ext1518 = zext i16 %v_fetch.sroa.66.16.copyload1712 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1519 = shl nuw i32 %v_column.sroa.66.0.insert.ext1518, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1381 = zext i16 %v_fetch.sroa.30.0.copyload1659 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1383 = or disjoint i32 %v_column.sroa.66.0.insert.shift1519, %v_column.sroa.0.0.insert.ext1381, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1383, ptr addrspace(3) %add.ptr534.6.1, align 4, !dbg !235, !tbaa !30
  %290 = or disjoint i32 %mul521, 3840, !dbg !236
  %291 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %290, !dbg !234
  %add.ptr534.7.1 = getelementptr inbounds i8, ptr addrspace(3) %291, i32 %add.ptr534.idx.7, !dbg !234
  %v_column.sroa.66.0.insert.ext1523 = zext i16 %v_fetch.sroa.70.16.copyload1718 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1524 = shl nuw i32 %v_column.sroa.66.0.insert.ext1523, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1385 = zext i16 %v_fetch.sroa.34.0.copyload1668 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1387 = or disjoint i32 %v_column.sroa.66.0.insert.shift1524, %v_column.sroa.0.0.insert.ext1385, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1387, ptr addrspace(3) %add.ptr534.7.1, align 4, !dbg !235, !tbaa !30
  %narrow2402 = add nuw nsw i32 %and63, 8
  %xor529.1 = xor i32 %narrow2402, %and44
  %292 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4096, !dbg !232
  %v_fetch.sroa.0.0.copyload1611 = load i16, ptr addrspace(4) %292, align 16, !dbg !233
  %v_fetch.sroa.10.0..sroa_idx1615 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4098, !dbg !233
  %v_fetch.sroa.10.0.copyload1616 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1615, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1624 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4100, !dbg !233
  %v_fetch.sroa.14.0.copyload1625 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1624, align 4, !dbg !233
  %v_fetch.sroa.18.0..sroa_idx1633 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4102, !dbg !233
  %v_fetch.sroa.18.0.copyload1634 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1633, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1642 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4104, !dbg !233
  %v_fetch.sroa.22.0.copyload1643 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1642, align 8, !dbg !233
  %v_fetch.sroa.26.0..sroa_idx1651 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4106, !dbg !233
  %v_fetch.sroa.26.0.copyload1652 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1651, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1660 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4108, !dbg !233
  %v_fetch.sroa.30.0.copyload1661 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1660, align 4, !dbg !233
  %v_fetch.sroa.34.0..sroa_idx1669 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4110, !dbg !233
  %v_fetch.sroa.34.0.copyload1670 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1669, align 2, !dbg !233, !tbaa !30
  %gep.1.11128 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4352, !dbg !232
  %v_fetch.sroa.38.16.copyload1680 = load i16, ptr addrspace(4) %gep.1.11128, align 16, !dbg !233
  %v_fetch.sroa.46.16.gep.1.11128.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4354, !dbg !233
  %v_fetch.sroa.46.16.copyload1683 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.11128.sroa_idx, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.11128.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4356, !dbg !233
  %v_fetch.sroa.50.16.copyload1689 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.11128.sroa_idx, align 4, !dbg !233
  %v_fetch.sroa.54.16.gep.1.11128.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4358, !dbg !233
  %v_fetch.sroa.54.16.copyload1695 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.11128.sroa_idx, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.11128.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4360, !dbg !233
  %v_fetch.sroa.58.16.copyload1701 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.11128.sroa_idx, align 8, !dbg !233
  %v_fetch.sroa.62.16.gep.1.11128.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4362, !dbg !233
  %v_fetch.sroa.62.16.copyload1707 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.11128.sroa_idx, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.11128.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4364, !dbg !233
  %v_fetch.sroa.66.16.copyload1713 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.11128.sroa_idx, align 4, !dbg !233
  %v_fetch.sroa.70.16.gep.1.11128.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4366, !dbg !233
  %v_fetch.sroa.70.16.copyload1719 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.11128.sroa_idx, align 2, !dbg !233, !tbaa !30
  %add.ptr534.idx.11134 = shl nuw nsw i32 %xor529.1, 2, !dbg !234
  %add.ptr534.11135 = getelementptr inbounds i8, ptr addrspace(3) %260, i32 %add.ptr534.idx.11134, !dbg !234
  %v_column.sroa.66.0.insert.ext1528 = zext i16 %v_fetch.sroa.38.16.copyload1680 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1529 = shl nuw i32 %v_column.sroa.66.0.insert.ext1528, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1389 = zext i16 %v_fetch.sroa.0.0.copyload1611 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1391 = or disjoint i32 %v_column.sroa.66.0.insert.shift1529, %v_column.sroa.0.0.insert.ext1389, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1391, ptr addrspace(3) %add.ptr534.11135, align 4, !dbg !235, !tbaa !30
  %xor530.1.11140 = shl nuw nsw i32 %xor529.1, 2, !dbg !234
  %add.ptr534.idx.1.11141 = xor i32 %xor530.1.11140, 4, !dbg !234
  %add.ptr534.1.11142 = getelementptr inbounds i8, ptr addrspace(3) %262, i32 %add.ptr534.idx.1.11141, !dbg !234
  %v_column.sroa.66.0.insert.ext1533 = zext i16 %v_fetch.sroa.46.16.copyload1683 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1534 = shl nuw i32 %v_column.sroa.66.0.insert.ext1533, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1393 = zext i16 %v_fetch.sroa.10.0.copyload1616 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1395 = or disjoint i32 %v_column.sroa.66.0.insert.shift1534, %v_column.sroa.0.0.insert.ext1393, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1395, ptr addrspace(3) %add.ptr534.1.11142, align 4, !dbg !235, !tbaa !30
  %xor530.2.11147 = shl nuw nsw i32 %xor529.1, 2, !dbg !234
  %add.ptr534.idx.2.11148 = xor i32 %xor530.2.11147, 8, !dbg !234
  %add.ptr534.2.11149 = getelementptr inbounds i8, ptr addrspace(3) %264, i32 %add.ptr534.idx.2.11148, !dbg !234
  %v_column.sroa.66.0.insert.ext1538 = zext i16 %v_fetch.sroa.50.16.copyload1689 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1539 = shl nuw i32 %v_column.sroa.66.0.insert.ext1538, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1397 = zext i16 %v_fetch.sroa.14.0.copyload1625 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1399 = or disjoint i32 %v_column.sroa.66.0.insert.shift1539, %v_column.sroa.0.0.insert.ext1397, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1399, ptr addrspace(3) %add.ptr534.2.11149, align 4, !dbg !235, !tbaa !30
  %xor530.3.11154 = shl nuw nsw i32 %xor529.1, 2, !dbg !234
  %add.ptr534.idx.3.11155 = xor i32 %xor530.3.11154, 12, !dbg !234
  %add.ptr534.3.11156 = getelementptr inbounds i8, ptr addrspace(3) %266, i32 %add.ptr534.idx.3.11155, !dbg !234
  %v_column.sroa.66.0.insert.ext1543 = zext i16 %v_fetch.sroa.54.16.copyload1695 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1544 = shl nuw i32 %v_column.sroa.66.0.insert.ext1543, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1401 = zext i16 %v_fetch.sroa.18.0.copyload1634 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1403 = or disjoint i32 %v_column.sroa.66.0.insert.shift1544, %v_column.sroa.0.0.insert.ext1401, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1403, ptr addrspace(3) %add.ptr534.3.11156, align 4, !dbg !235, !tbaa !30
  %xor530.4.11161 = shl nuw nsw i32 %xor529.1, 2, !dbg !234
  %add.ptr534.idx.4.11162 = xor i32 %xor530.4.11161, 16, !dbg !234
  %add.ptr534.4.11163 = getelementptr inbounds i8, ptr addrspace(3) %268, i32 %add.ptr534.idx.4.11162, !dbg !234
  %v_column.sroa.66.0.insert.ext1548 = zext i16 %v_fetch.sroa.58.16.copyload1701 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1549 = shl nuw i32 %v_column.sroa.66.0.insert.ext1548, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1405 = zext i16 %v_fetch.sroa.22.0.copyload1643 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1407 = or disjoint i32 %v_column.sroa.66.0.insert.shift1549, %v_column.sroa.0.0.insert.ext1405, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1407, ptr addrspace(3) %add.ptr534.4.11163, align 4, !dbg !235, !tbaa !30
  %xor530.5.11168 = shl nuw nsw i32 %xor529.1, 2, !dbg !234
  %add.ptr534.idx.5.11169 = xor i32 %xor530.5.11168, 20, !dbg !234
  %add.ptr534.5.11170 = getelementptr inbounds i8, ptr addrspace(3) %270, i32 %add.ptr534.idx.5.11169, !dbg !234
  %v_column.sroa.66.0.insert.ext1553 = zext i16 %v_fetch.sroa.62.16.copyload1707 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1554 = shl nuw i32 %v_column.sroa.66.0.insert.ext1553, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1409 = zext i16 %v_fetch.sroa.26.0.copyload1652 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1411 = or disjoint i32 %v_column.sroa.66.0.insert.shift1554, %v_column.sroa.0.0.insert.ext1409, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1411, ptr addrspace(3) %add.ptr534.5.11170, align 4, !dbg !235, !tbaa !30
  %xor530.6.11175 = shl nuw nsw i32 %xor529.1, 2, !dbg !234
  %add.ptr534.idx.6.11176 = xor i32 %xor530.6.11175, 24, !dbg !234
  %add.ptr534.6.11177 = getelementptr inbounds i8, ptr addrspace(3) %272, i32 %add.ptr534.idx.6.11176, !dbg !234
  %v_column.sroa.66.0.insert.ext1558 = zext i16 %v_fetch.sroa.66.16.copyload1713 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1559 = shl nuw i32 %v_column.sroa.66.0.insert.ext1558, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1413 = zext i16 %v_fetch.sroa.30.0.copyload1661 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1415 = or disjoint i32 %v_column.sroa.66.0.insert.shift1559, %v_column.sroa.0.0.insert.ext1413, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1415, ptr addrspace(3) %add.ptr534.6.11177, align 4, !dbg !235, !tbaa !30
  %xor530.7.11182 = shl nuw nsw i32 %xor529.1, 2, !dbg !234
  %add.ptr534.idx.7.11183 = xor i32 %xor530.7.11182, 28, !dbg !234
  %add.ptr534.7.11184 = getelementptr inbounds i8, ptr addrspace(3) %274, i32 %add.ptr534.idx.7.11183, !dbg !234
  %v_column.sroa.66.0.insert.ext1563 = zext i16 %v_fetch.sroa.70.16.copyload1719 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1564 = shl nuw i32 %v_column.sroa.66.0.insert.ext1563, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1417 = zext i16 %v_fetch.sroa.34.0.copyload1670 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1419 = or disjoint i32 %v_column.sroa.66.0.insert.shift1564, %v_column.sroa.0.0.insert.ext1417, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1419, ptr addrspace(3) %add.ptr534.7.11184, align 4, !dbg !235, !tbaa !30
  %293 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4224, !dbg !232
  %v_fetch.sroa.0.0.copyload1612 = load i16, ptr addrspace(4) %293, align 16, !dbg !233
  %v_fetch.sroa.10.0..sroa_idx1617 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4226, !dbg !233
  %v_fetch.sroa.10.0.copyload1618 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1617, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1626 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4228, !dbg !233
  %v_fetch.sroa.14.0.copyload1627 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1626, align 4, !dbg !233
  %v_fetch.sroa.18.0..sroa_idx1635 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4230, !dbg !233
  %v_fetch.sroa.18.0.copyload1636 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1635, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1644 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4232, !dbg !233
  %v_fetch.sroa.22.0.copyload1645 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1644, align 8, !dbg !233
  %v_fetch.sroa.26.0..sroa_idx1653 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4234, !dbg !233
  %v_fetch.sroa.26.0.copyload1654 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1653, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1662 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4236, !dbg !233
  %v_fetch.sroa.30.0.copyload1663 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1662, align 4, !dbg !233
  %v_fetch.sroa.34.0..sroa_idx1671 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4238, !dbg !233
  %v_fetch.sroa.34.0.copyload1672 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1671, align 2, !dbg !233, !tbaa !30
  %gep.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4480, !dbg !232
  %v_fetch.sroa.38.16.copyload1681 = load i16, ptr addrspace(4) %gep.1.1.1, align 16, !dbg !233
  %v_fetch.sroa.46.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4482, !dbg !233
  %v_fetch.sroa.46.16.copyload1684 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.1.1.sroa_idx, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4484, !dbg !233
  %v_fetch.sroa.50.16.copyload1690 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.1.1.sroa_idx, align 4, !dbg !233
  %v_fetch.sroa.54.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4486, !dbg !233
  %v_fetch.sroa.54.16.copyload1696 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.1.1.sroa_idx, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4488, !dbg !233
  %v_fetch.sroa.58.16.copyload1702 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.1.1.sroa_idx, align 8, !dbg !233
  %v_fetch.sroa.62.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4490, !dbg !233
  %v_fetch.sroa.62.16.copyload1708 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.1.1.sroa_idx, align 2, !dbg !233, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4492, !dbg !233
  %v_fetch.sroa.66.16.copyload1714 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.1.1.sroa_idx, align 4, !dbg !233
  %v_fetch.sroa.70.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %259, i64 4494, !dbg !233
  %v_fetch.sroa.70.16.copyload1720 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.1.1.sroa_idx, align 2, !dbg !233, !tbaa !30
  %add.ptr534.11121.1 = getelementptr inbounds i8, ptr addrspace(3) %277, i32 %add.ptr534.idx.11134, !dbg !234
  %v_column.sroa.66.0.insert.ext1568 = zext i16 %v_fetch.sroa.38.16.copyload1681 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1569 = shl nuw i32 %v_column.sroa.66.0.insert.ext1568, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1421 = zext i16 %v_fetch.sroa.0.0.copyload1612 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1423 = or disjoint i32 %v_column.sroa.66.0.insert.shift1569, %v_column.sroa.0.0.insert.ext1421, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1423, ptr addrspace(3) %add.ptr534.11121.1, align 4, !dbg !235, !tbaa !30
  %add.ptr534.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %279, i32 %add.ptr534.idx.1.11141, !dbg !234
  %v_column.sroa.66.0.insert.ext1573 = zext i16 %v_fetch.sroa.46.16.copyload1684 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1574 = shl nuw i32 %v_column.sroa.66.0.insert.ext1573, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1425 = zext i16 %v_fetch.sroa.10.0.copyload1618 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1427 = or disjoint i32 %v_column.sroa.66.0.insert.shift1574, %v_column.sroa.0.0.insert.ext1425, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1427, ptr addrspace(3) %add.ptr534.1.1.1, align 4, !dbg !235, !tbaa !30
  %add.ptr534.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %281, i32 %add.ptr534.idx.2.11148, !dbg !234
  %v_column.sroa.66.0.insert.ext1578 = zext i16 %v_fetch.sroa.50.16.copyload1690 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1579 = shl nuw i32 %v_column.sroa.66.0.insert.ext1578, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1429 = zext i16 %v_fetch.sroa.14.0.copyload1627 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1431 = or disjoint i32 %v_column.sroa.66.0.insert.shift1579, %v_column.sroa.0.0.insert.ext1429, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1431, ptr addrspace(3) %add.ptr534.2.1.1, align 4, !dbg !235, !tbaa !30
  %add.ptr534.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %283, i32 %add.ptr534.idx.3.11155, !dbg !234
  %v_column.sroa.66.0.insert.ext1583 = zext i16 %v_fetch.sroa.54.16.copyload1696 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1584 = shl nuw i32 %v_column.sroa.66.0.insert.ext1583, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1433 = zext i16 %v_fetch.sroa.18.0.copyload1636 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1435 = or disjoint i32 %v_column.sroa.66.0.insert.shift1584, %v_column.sroa.0.0.insert.ext1433, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1435, ptr addrspace(3) %add.ptr534.3.1.1, align 4, !dbg !235, !tbaa !30
  %add.ptr534.4.1.1 = getelementptr inbounds i8, ptr addrspace(3) %285, i32 %add.ptr534.idx.4.11162, !dbg !234
  %v_column.sroa.66.0.insert.ext1588 = zext i16 %v_fetch.sroa.58.16.copyload1702 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1589 = shl nuw i32 %v_column.sroa.66.0.insert.ext1588, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1437 = zext i16 %v_fetch.sroa.22.0.copyload1645 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1439 = or disjoint i32 %v_column.sroa.66.0.insert.shift1589, %v_column.sroa.0.0.insert.ext1437, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1439, ptr addrspace(3) %add.ptr534.4.1.1, align 4, !dbg !235, !tbaa !30
  %add.ptr534.5.1.1 = getelementptr inbounds i8, ptr addrspace(3) %287, i32 %add.ptr534.idx.5.11169, !dbg !234
  %v_column.sroa.66.0.insert.ext1593 = zext i16 %v_fetch.sroa.62.16.copyload1708 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1594 = shl nuw i32 %v_column.sroa.66.0.insert.ext1593, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1441 = zext i16 %v_fetch.sroa.26.0.copyload1654 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1443 = or disjoint i32 %v_column.sroa.66.0.insert.shift1594, %v_column.sroa.0.0.insert.ext1441, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1443, ptr addrspace(3) %add.ptr534.5.1.1, align 4, !dbg !235, !tbaa !30
  %add.ptr534.6.1.1 = getelementptr inbounds i8, ptr addrspace(3) %289, i32 %add.ptr534.idx.6.11176, !dbg !234
  %v_column.sroa.66.0.insert.ext1598 = zext i16 %v_fetch.sroa.66.16.copyload1714 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1599 = shl nuw i32 %v_column.sroa.66.0.insert.ext1598, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1445 = zext i16 %v_fetch.sroa.30.0.copyload1663 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1447 = or disjoint i32 %v_column.sroa.66.0.insert.shift1599, %v_column.sroa.0.0.insert.ext1445, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1447, ptr addrspace(3) %add.ptr534.6.1.1, align 4, !dbg !235, !tbaa !30
  %add.ptr534.7.1.1 = getelementptr inbounds i8, ptr addrspace(3) %291, i32 %add.ptr534.idx.7.11183, !dbg !234
  %v_column.sroa.66.0.insert.ext1603 = zext i16 %v_fetch.sroa.70.16.copyload1720 to i32, !dbg !235
  %v_column.sroa.66.0.insert.shift1604 = shl nuw i32 %v_column.sroa.66.0.insert.ext1603, 16, !dbg !235
  %v_column.sroa.0.0.insert.ext1449 = zext i16 %v_fetch.sroa.34.0.copyload1672 to i32, !dbg !235
  %v_column.sroa.0.0.insert.insert1451 = or disjoint i32 %v_column.sroa.66.0.insert.shift1604, %v_column.sroa.0.0.insert.ext1449, !dbg !235
  store i32 %v_column.sroa.0.0.insert.insert1451, ptr addrspace(3) %add.ptr534.7.1.1, align 4, !dbg !235, !tbaa !30
  fence syncscope("warp") release, !dbg !237
  tail call void @llvm.mxc.barrier.warp(), !dbg !240
  fence syncscope("warp") acquire, !dbg !241
  %and575 = shl nuw nsw i32 %3, 8
  %mul576 = and i32 %and575, 1792
  %mul583 = and i32 %5, 32
  %mul588 = and i32 %and63, 126
  %add584 = or disjoint i32 %mul576, %mul583
  %xor596 = xor i32 %shr64, %and44
  %294 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add584
  %xor599 = xor i32 %xor596, %mul588, !dbg !242
  %add.ptr603.idx = shl nuw nsw i32 %xor599, 2, !dbg !243
  %add.ptr603 = getelementptr inbounds i8, ptr addrspace(3) %294, i32 %add.ptr603.idx, !dbg !243
  %295 = load i32, ptr addrspace(3) %add.ptr603, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.0.0.vec.insert = insertelement <2 x i32> poison, i32 %295, i64 0, !dbg !244
  %add590.1 = or i32 %and63, 1, !dbg !245
  %xor599.1 = xor i32 %xor596, %add590.1, !dbg !242
  %add.ptr603.idx.1 = shl nuw nsw i32 %xor599.1, 2, !dbg !243
  %add.ptr603.1 = getelementptr inbounds i8, ptr addrspace(3) %294, i32 %add.ptr603.idx.1, !dbg !243
  %296 = load i32, ptr addrspace(3) %add.ptr603.1, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.0.4.vec.insert = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert, i32 %296, i64 1, !dbg !244
  %add579.1 = or disjoint i32 %mul576, %mul583
  %add584.1 = or disjoint i32 %add579.1, 64
  %add595.1 = or disjoint i32 %shr64, 2
  %xor596.1 = xor i32 %add595.1, %and44
  %297 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add584.1
  %xor599.11186 = xor i32 %xor596.1, %mul588, !dbg !242
  %add.ptr603.idx.11187 = shl nuw nsw i32 %xor599.11186, 2, !dbg !243
  %add.ptr603.11188 = getelementptr inbounds i8, ptr addrspace(3) %297, i32 %add.ptr603.idx.11187, !dbg !243
  %298 = load i32, ptr addrspace(3) %add.ptr603.11188, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.14.8.vec.insert = insertelement <2 x i32> poison, i32 %298, i64 0, !dbg !244
  %xor599.1.1 = xor i32 %xor596.1, %add590.1, !dbg !242
  %add.ptr603.idx.1.1 = shl nuw nsw i32 %xor599.1.1, 2, !dbg !243
  %add.ptr603.1.1 = getelementptr inbounds i8, ptr addrspace(3) %297, i32 %add.ptr603.idx.1.1, !dbg !243
  %299 = load i32, ptr addrspace(3) %add.ptr603.1.1, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.14.12.vec.insert = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert, i32 %299, i64 1, !dbg !244
  %add579.2 = or disjoint i32 %mul576, %mul583
  %add584.2 = or disjoint i32 %add579.2, 128
  %add595.2 = or disjoint i32 %shr64, 4
  %xor596.2 = xor i32 %add595.2, %and44
  %300 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add584.2
  %xor599.2 = xor i32 %xor596.2, %mul588, !dbg !242
  %add.ptr603.idx.2 = shl nuw nsw i32 %xor599.2, 2, !dbg !243
  %add.ptr603.2 = getelementptr inbounds i8, ptr addrspace(3) %300, i32 %add.ptr603.idx.2, !dbg !243
  %301 = load i32, ptr addrspace(3) %add.ptr603.2, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.26.16.vec.insert = insertelement <2 x i32> poison, i32 %301, i64 0, !dbg !244
  %xor599.1.2 = xor i32 %xor596.2, %add590.1, !dbg !242
  %add.ptr603.idx.1.2 = shl nuw nsw i32 %xor599.1.2, 2, !dbg !243
  %add.ptr603.1.2 = getelementptr inbounds i8, ptr addrspace(3) %300, i32 %add.ptr603.idx.1.2, !dbg !243
  %302 = load i32, ptr addrspace(3) %add.ptr603.1.2, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.26.20.vec.insert = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert, i32 %302, i64 1, !dbg !244
  %add579.3 = or disjoint i32 %mul576, %mul583
  %add584.3 = or disjoint i32 %add579.3, 192
  %add595.3 = or disjoint i32 %shr64, 6
  %xor596.3 = xor i32 %add595.3, %and44
  %303 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add584.3
  %xor599.3 = xor i32 %xor596.3, %mul588, !dbg !242
  %add.ptr603.idx.3 = shl nuw nsw i32 %xor599.3, 2, !dbg !243
  %add.ptr603.3 = getelementptr inbounds i8, ptr addrspace(3) %303, i32 %add.ptr603.idx.3, !dbg !243
  %304 = load i32, ptr addrspace(3) %add.ptr603.3, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.38.24.vec.insert = insertelement <2 x i32> poison, i32 %304, i64 0, !dbg !244
  %xor599.1.3 = xor i32 %xor596.3, %add590.1, !dbg !242
  %add.ptr603.idx.1.3 = shl nuw nsw i32 %xor599.1.3, 2, !dbg !243
  %add.ptr603.1.3 = getelementptr inbounds i8, ptr addrspace(3) %303, i32 %add.ptr603.idx.1.3, !dbg !243
  %305 = load i32, ptr addrspace(3) %add.ptr603.1.3, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.38.28.vec.insert = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert, i32 %305, i64 1, !dbg !244
  %306 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert to <4 x half>, !dbg !246
  %307 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %306, <4 x half> %226, <4 x float> zeroinitializer), !dbg !247
  %308 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert to <4 x half>, !dbg !246
  %309 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %308, <4 x half> %226, <4 x float> zeroinitializer), !dbg !247
  %310 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert to <4 x half>, !dbg !246
  %311 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %310, <4 x half> %226, <4 x float> zeroinitializer), !dbg !247
  %312 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert to <4 x half>, !dbg !246
  %313 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %312, <4 x half> %226, <4 x float> zeroinitializer), !dbg !247
  %add577.1 = or disjoint i32 %mul576, %mul583
  %add584.11191 = or disjoint i32 %add577.1, 2048
  %314 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add584.11191
  %add.ptr603.11195 = getelementptr inbounds i8, ptr addrspace(3) %314, i32 %add.ptr603.idx, !dbg !243
  %315 = load i32, ptr addrspace(3) %add.ptr603.11195, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1269 = insertelement <2 x i32> poison, i32 %315, i64 0, !dbg !244
  %add.ptr603.1.11199 = getelementptr inbounds i8, ptr addrspace(3) %314, i32 %add.ptr603.idx.1, !dbg !243
  %316 = load i32, ptr addrspace(3) %add.ptr603.1.11199, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1275 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1269, i32 %316, i64 1, !dbg !244
  %add579.1.1 = or disjoint i32 %mul576, %mul583
  %add584.1.1 = or disjoint i32 %add579.1.1, 2112
  %317 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add584.1.1
  %add.ptr603.11188.1 = getelementptr inbounds i8, ptr addrspace(3) %317, i32 %add.ptr603.idx.11187, !dbg !243
  %318 = load i32, ptr addrspace(3) %add.ptr603.11188.1, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1285 = insertelement <2 x i32> poison, i32 %318, i64 0, !dbg !244
  %add.ptr603.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %317, i32 %add.ptr603.idx.1.1, !dbg !243
  %319 = load i32, ptr addrspace(3) %add.ptr603.1.1.1, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1291 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1285, i32 %319, i64 1, !dbg !244
  %add579.2.1 = or disjoint i32 %mul576, %mul583
  %add584.2.1 = or disjoint i32 %add579.2.1, 2176
  %320 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add584.2.1
  %add.ptr603.2.1 = getelementptr inbounds i8, ptr addrspace(3) %320, i32 %add.ptr603.idx.2, !dbg !243
  %321 = load i32, ptr addrspace(3) %add.ptr603.2.1, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1301 = insertelement <2 x i32> poison, i32 %321, i64 0, !dbg !244
  %add.ptr603.1.2.1 = getelementptr inbounds i8, ptr addrspace(3) %320, i32 %add.ptr603.idx.1.2, !dbg !243
  %322 = load i32, ptr addrspace(3) %add.ptr603.1.2.1, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1307 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1301, i32 %322, i64 1, !dbg !244
  %add579.3.1 = or disjoint i32 %mul576, %mul583
  %add584.3.1 = or disjoint i32 %add579.3.1, 2240
  %323 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add584.3.1
  %add.ptr603.3.1 = getelementptr inbounds i8, ptr addrspace(3) %323, i32 %add.ptr603.idx.3, !dbg !243
  %324 = load i32, ptr addrspace(3) %add.ptr603.3.1, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1317 = insertelement <2 x i32> poison, i32 %324, i64 0, !dbg !244
  %add.ptr603.1.3.1 = getelementptr inbounds i8, ptr addrspace(3) %323, i32 %add.ptr603.idx.1.3, !dbg !243
  %325 = load i32, ptr addrspace(3) %add.ptr603.1.3.1, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1323 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1317, i32 %325, i64 1, !dbg !244
  %326 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1275 to <4 x half>, !dbg !246
  %327 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %326, <4 x half> %226, <4 x float> zeroinitializer), !dbg !247
  %328 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1291 to <4 x half>, !dbg !246
  %329 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %328, <4 x half> %226, <4 x float> zeroinitializer), !dbg !247
  %330 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1307 to <4 x half>, !dbg !246
  %331 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %330, <4 x half> %226, <4 x float> zeroinitializer), !dbg !247
  %332 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1323 to <4 x half>, !dbg !246
  %333 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %332, <4 x half> %226, <4 x float> zeroinitializer), !dbg !247
  %add589.1 = add nuw nsw i32 %mul588, 8
  %xor599.11206 = xor i32 %xor596, %add589.1, !dbg !242
  %add.ptr603.idx.11207 = shl nuw nsw i32 %xor599.11206, 2, !dbg !243
  %add.ptr603.11208 = getelementptr inbounds i8, ptr addrspace(3) %294, i32 %add.ptr603.idx.11207, !dbg !243
  %334 = load i32, ptr addrspace(3) %add.ptr603.11208, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1271 = insertelement <2 x i32> poison, i32 %334, i64 0, !dbg !244
  %add590.1.11209 = add nuw nsw i32 %mul588, 9, !dbg !245
  %xor599.1.11210 = xor i32 %xor596, %add590.1.11209, !dbg !242
  %add.ptr603.idx.1.11211 = shl nuw nsw i32 %xor599.1.11210, 2, !dbg !243
  %add.ptr603.1.11212 = getelementptr inbounds i8, ptr addrspace(3) %294, i32 %add.ptr603.idx.1.11211, !dbg !243
  %335 = load i32, ptr addrspace(3) %add.ptr603.1.11212, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1277 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1271, i32 %335, i64 1, !dbg !244
  %xor599.11186.11218 = xor i32 %xor596.1, %add589.1, !dbg !242
  %add.ptr603.idx.11187.11219 = shl nuw nsw i32 %xor599.11186.11218, 2, !dbg !243
  %add.ptr603.11188.11220 = getelementptr inbounds i8, ptr addrspace(3) %297, i32 %add.ptr603.idx.11187.11219, !dbg !243
  %336 = load i32, ptr addrspace(3) %add.ptr603.11188.11220, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1287 = insertelement <2 x i32> poison, i32 %336, i64 0, !dbg !244
  %xor599.1.1.11223 = xor i32 %xor596.1, %add590.1.11209, !dbg !242
  %add.ptr603.idx.1.1.11224 = shl nuw nsw i32 %xor599.1.1.11223, 2, !dbg !243
  %add.ptr603.1.1.11225 = getelementptr inbounds i8, ptr addrspace(3) %297, i32 %add.ptr603.idx.1.1.11224, !dbg !243
  %337 = load i32, ptr addrspace(3) %add.ptr603.1.1.11225, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1293 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1287, i32 %337, i64 1, !dbg !244
  %xor599.2.11232 = xor i32 %xor596.2, %add589.1, !dbg !242
  %add.ptr603.idx.2.11233 = shl nuw nsw i32 %xor599.2.11232, 2, !dbg !243
  %add.ptr603.2.11234 = getelementptr inbounds i8, ptr addrspace(3) %300, i32 %add.ptr603.idx.2.11233, !dbg !243
  %338 = load i32, ptr addrspace(3) %add.ptr603.2.11234, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1303 = insertelement <2 x i32> poison, i32 %338, i64 0, !dbg !244
  %xor599.1.2.11237 = xor i32 %xor596.2, %add590.1.11209, !dbg !242
  %add.ptr603.idx.1.2.11238 = shl nuw nsw i32 %xor599.1.2.11237, 2, !dbg !243
  %add.ptr603.1.2.11239 = getelementptr inbounds i8, ptr addrspace(3) %300, i32 %add.ptr603.idx.1.2.11238, !dbg !243
  %339 = load i32, ptr addrspace(3) %add.ptr603.1.2.11239, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1309 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1303, i32 %339, i64 1, !dbg !244
  %xor599.3.11246 = xor i32 %xor596.3, %add589.1, !dbg !242
  %add.ptr603.idx.3.11247 = shl nuw nsw i32 %xor599.3.11246, 2, !dbg !243
  %add.ptr603.3.11248 = getelementptr inbounds i8, ptr addrspace(3) %303, i32 %add.ptr603.idx.3.11247, !dbg !243
  %340 = load i32, ptr addrspace(3) %add.ptr603.3.11248, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1319 = insertelement <2 x i32> poison, i32 %340, i64 0, !dbg !244
  %xor599.1.3.11251 = xor i32 %xor596.3, %add590.1.11209, !dbg !242
  %add.ptr603.idx.1.3.11252 = shl nuw nsw i32 %xor599.1.3.11251, 2, !dbg !243
  %add.ptr603.1.3.11253 = getelementptr inbounds i8, ptr addrspace(3) %303, i32 %add.ptr603.idx.1.3.11252, !dbg !243
  %341 = load i32, ptr addrspace(3) %add.ptr603.1.3.11253, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1325 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1319, i32 %341, i64 1, !dbg !244
  %342 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1277 to <4 x half>, !dbg !246
  %343 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %342, <4 x half> %242, <4 x float> %307), !dbg !247
  %344 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1293 to <4 x half>, !dbg !246
  %345 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %344, <4 x half> %242, <4 x float> %309), !dbg !247
  %346 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1309 to <4 x half>, !dbg !246
  %347 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %346, <4 x half> %242, <4 x float> %311), !dbg !247
  %348 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1325 to <4 x half>, !dbg !246
  %349 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %348, <4 x half> %242, <4 x float> %313), !dbg !247
  %add.ptr603.11195.1 = getelementptr inbounds i8, ptr addrspace(3) %314, i32 %add.ptr603.idx.11207, !dbg !243
  %350 = load i32, ptr addrspace(3) %add.ptr603.11195.1, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1273 = insertelement <2 x i32> poison, i32 %350, i64 0, !dbg !244
  %add.ptr603.1.11199.1 = getelementptr inbounds i8, ptr addrspace(3) %314, i32 %add.ptr603.idx.1.11211, !dbg !243
  %351 = load i32, ptr addrspace(3) %add.ptr603.1.11199.1, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1279 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1273, i32 %351, i64 1, !dbg !244
  %add.ptr603.11188.1.1 = getelementptr inbounds i8, ptr addrspace(3) %317, i32 %add.ptr603.idx.11187.11219, !dbg !243
  %352 = load i32, ptr addrspace(3) %add.ptr603.11188.1.1, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1289 = insertelement <2 x i32> poison, i32 %352, i64 0, !dbg !244
  %add.ptr603.1.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %317, i32 %add.ptr603.idx.1.1.11224, !dbg !243
  %353 = load i32, ptr addrspace(3) %add.ptr603.1.1.1.1, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1295 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1289, i32 %353, i64 1, !dbg !244
  %add.ptr603.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %320, i32 %add.ptr603.idx.2.11233, !dbg !243
  %354 = load i32, ptr addrspace(3) %add.ptr603.2.1.1, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1305 = insertelement <2 x i32> poison, i32 %354, i64 0, !dbg !244
  %add.ptr603.1.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %320, i32 %add.ptr603.idx.1.2.11238, !dbg !243
  %355 = load i32, ptr addrspace(3) %add.ptr603.1.2.1.1, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1311 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1305, i32 %355, i64 1, !dbg !244
  %add.ptr603.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %323, i32 %add.ptr603.idx.3.11247, !dbg !243
  %356 = load i32, ptr addrspace(3) %add.ptr603.3.1.1, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1321 = insertelement <2 x i32> poison, i32 %356, i64 0, !dbg !244
  %add.ptr603.1.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %323, i32 %add.ptr603.idx.1.3.11252, !dbg !243
  %357 = load i32, ptr addrspace(3) %add.ptr603.1.3.1.1, align 4, !dbg !244, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1327 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1321, i32 %357, i64 1, !dbg !244
  %358 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1279 to <4 x half>, !dbg !246
  %359 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %358, <4 x half> %242, <4 x float> %327), !dbg !247
  %360 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1295 to <4 x half>, !dbg !246
  %361 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %360, <4 x half> %242, <4 x float> %329), !dbg !247
  %362 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1311 to <4 x half>, !dbg !246
  %363 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %362, <4 x half> %242, <4 x float> %331), !dbg !247
  %364 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1327 to <4 x half>, !dbg !246
  %365 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %364, <4 x half> %242, <4 x float> %333), !dbg !247
  %add450 = fadd contract float %add445, %254, !dbg !248
  br label %if.end659, !dbg !62

if.end659:                                        ; preds = %for.cond.preheader, %for.body649.preheader
  %.pre-phi2392 = phi i64 [ %14, %for.cond.preheader ], [ %.pre2391, %for.body649.preheader ], !dbg !61
  %.pre-phi2390 = phi i64 [ %11, %for.cond.preheader ], [ %.pre2389, %for.body649.preheader ], !dbg !61
  %.pre-phi2388 = phi i64 [ %8, %for.cond.preheader ], [ %.pre2387, %for.body649.preheader ], !dbg !61
  %add731.1.pre-phi = phi i32 [ %add49.1, %for.cond.preheader ], [ %.pre2386, %for.body649.preheader ], !dbg !60
  %.pre-phi2385 = phi i64 [ %7, %for.cond.preheader ], [ %.pre2384, %for.body649.preheader ], !dbg !59
  %shr730.pre-phi = phi i32 [ %shr48, %for.cond.preheader ], [ %.pre2379, %for.body649.preheader ]
  %.pre-phi2378 = phi i32 [ %mul20, %for.cond.preheader ], [ %.pre2377, %for.body649.preheader ]
  %mul704.3.pre-phi = phi i32 [ %mul99.3, %for.cond.preheader ], [ %.pre2376, %for.body649.preheader ], !dbg !57
  %mul704.2.pre-phi = phi i32 [ %mul99.2, %for.cond.preheader ], [ %.pre2373, %for.body649.preheader ], !dbg !57
  %mul704.1.pre-phi = phi i32 [ %mul99.1, %for.cond.preheader ], [ %.pre2370, %for.body649.preheader ], !dbg !57
  %mul704.pre-phi = phi i32 [ %mul99, %for.cond.preheader ], [ %.pre2367, %for.body649.preheader ], !dbg !57
  %mul709.pre-phi = phi i32 [ %mul104, %for.cond.preheader ], [ %.pre2365, %for.body649.preheader ]
  %and702.pre-phi = phi i32 [ %and44, %for.cond.preheader ], [ %.pre2362, %for.body649.preheader ]
  %shr699.pre-phi = phi i32 [ %shr94, %for.cond.preheader ], [ %.pre2361, %for.body649.preheader ]
  %and695.pre-phi = phi i32 [ %4, %for.cond.preheader ], [ %.pre2360, %for.body649.preheader ]
  %.pre-phi = phi i32 [ %3, %for.cond.preheader ], [ %.pre, %for.body649.preheader ]
  %numerator.sroa.170.0 = phi <4 x float> [ %365, %for.cond.preheader ], [ zeroinitializer, %for.body649.preheader ], !dbg !249
  %numerator.sroa.146.0 = phi <4 x float> [ %363, %for.cond.preheader ], [ zeroinitializer, %for.body649.preheader ], !dbg !249
  %numerator.sroa.122.0 = phi <4 x float> [ %361, %for.cond.preheader ], [ zeroinitializer, %for.body649.preheader ], !dbg !249
  %numerator.sroa.98.0 = phi <4 x float> [ %359, %for.cond.preheader ], [ zeroinitializer, %for.body649.preheader ], !dbg !249
  %numerator.sroa.74.0 = phi <4 x float> [ %349, %for.cond.preheader ], [ zeroinitializer, %for.body649.preheader ], !dbg !249
  %numerator.sroa.50.0 = phi <4 x float> [ %347, %for.cond.preheader ], [ zeroinitializer, %for.body649.preheader ], !dbg !249
  %numerator.sroa.26.0 = phi <4 x float> [ %345, %for.cond.preheader ], [ zeroinitializer, %for.body649.preheader ], !dbg !249
  %numerator.sroa.0.0 = phi <4 x float> [ %343, %for.cond.preheader ], [ zeroinitializer, %for.body649.preheader ], !dbg !249
  %denominator.sroa.0.1 = phi float [ %add450, %for.cond.preheader ], [ 0.000000e+00, %for.body649.preheader ], !dbg !249
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !250
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !250
  %div.1 = fdiv contract float %numerator.sroa.0.4.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !250
  %div.2 = fdiv contract float %numerator.sroa.0.8.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !250
  %div.3 = fdiv contract float %numerator.sroa.0.12.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.26.16.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 0, !dbg !250
  %div.4 = fdiv contract float %numerator.sroa.26.16.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.26.20.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 1, !dbg !250
  %div.5 = fdiv contract float %numerator.sroa.26.20.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.26.24.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 2, !dbg !250
  %div.6 = fdiv contract float %numerator.sroa.26.24.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.26.28.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 3, !dbg !250
  %div.7 = fdiv contract float %numerator.sroa.26.28.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.50.32.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 0, !dbg !250
  %div.8 = fdiv contract float %numerator.sroa.50.32.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.50.36.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 1, !dbg !250
  %div.9 = fdiv contract float %numerator.sroa.50.36.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.50.40.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 2, !dbg !250
  %div.10 = fdiv contract float %numerator.sroa.50.40.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.50.44.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 3, !dbg !250
  %div.11 = fdiv contract float %numerator.sroa.50.44.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.74.48.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 0, !dbg !250
  %div.12 = fdiv contract float %numerator.sroa.74.48.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.74.52.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 1, !dbg !250
  %div.13 = fdiv contract float %numerator.sroa.74.52.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.74.56.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 2, !dbg !250
  %div.14 = fdiv contract float %numerator.sroa.74.56.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.74.60.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 3, !dbg !250
  %div.15 = fdiv contract float %numerator.sroa.74.60.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.98.64.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 0, !dbg !250
  %div.16 = fdiv contract float %numerator.sroa.98.64.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.98.68.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 1, !dbg !250
  %div.17 = fdiv contract float %numerator.sroa.98.68.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.98.72.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 2, !dbg !250
  %div.18 = fdiv contract float %numerator.sroa.98.72.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.98.76.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 3, !dbg !250
  %div.19 = fdiv contract float %numerator.sroa.98.76.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.122.80.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 0, !dbg !250
  %div.20 = fdiv contract float %numerator.sroa.122.80.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.122.84.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 1, !dbg !250
  %div.21 = fdiv contract float %numerator.sroa.122.84.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.122.88.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 2, !dbg !250
  %div.22 = fdiv contract float %numerator.sroa.122.88.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.122.92.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 3, !dbg !250
  %div.23 = fdiv contract float %numerator.sroa.122.92.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.146.96.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 0, !dbg !250
  %div.24 = fdiv contract float %numerator.sroa.146.96.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.146.100.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 1, !dbg !250
  %div.25 = fdiv contract float %numerator.sroa.146.100.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.146.104.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 2, !dbg !250
  %div.26 = fdiv contract float %numerator.sroa.146.104.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.146.108.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 3, !dbg !250
  %div.27 = fdiv contract float %numerator.sroa.146.108.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.170.112.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 0, !dbg !250
  %div.28 = fdiv contract float %numerator.sroa.170.112.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.170.116.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 1, !dbg !250
  %div.29 = fdiv contract float %numerator.sroa.170.116.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.170.120.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 2, !dbg !250
  %div.30 = fdiv contract float %numerator.sroa.170.120.vec.extract, %denominator.sroa.0.1, !dbg !251
  %numerator.sroa.170.124.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 3, !dbg !250
  %div.31 = fdiv contract float %numerator.sroa.170.124.vec.extract, %denominator.sroa.0.1, !dbg !251
  fence syncscope("warp") release, !dbg !252
  tail call void @llvm.mxc.barrier.warp(), !dbg !255
  fence syncscope("warp") acquire, !dbg !256
  %mul696 = and i32 %and695.pre-phi, 1920
  %366 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %367 = fptrunc float %div to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %366), !dbg !257, !noalias !261
  %368 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %369 = fptrunc float %div.1 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %368), !dbg !266, !noalias !261
  %370 = bitcast half %367 to i16, !dbg !268
  %371 = bitcast half %369 to i16, !dbg !271
  %372 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !276
  %373 = fptrunc float %div.2 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %372), !dbg !272, !noalias !276
  %374 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !276
  %375 = fptrunc float %div.3 to half, !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %374), !dbg !281, !noalias !276
  %376 = bitcast half %373 to i16, !dbg !283
  %377 = bitcast half %375 to i16, !dbg !285
  %__6.sroa.6.0.insert.ext = zext i16 %377 to i64, !dbg !286
  %__6.sroa.6.0.insert.shift = shl nuw i64 %__6.sroa.6.0.insert.ext, 48, !dbg !286
  %__6.sroa.5.0.insert.ext = zext i16 %376 to i64, !dbg !286
  %__6.sroa.5.0.insert.shift = shl nuw nsw i64 %__6.sroa.5.0.insert.ext, 32, !dbg !286
  %__6.sroa.5.0.insert.insert = or disjoint i64 %__6.sroa.6.0.insert.shift, %__6.sroa.5.0.insert.shift, !dbg !286
  %__6.sroa.4.0.insert.ext = zext i16 %371 to i64, !dbg !286
  %__6.sroa.4.0.insert.shift = shl nuw nsw i64 %__6.sroa.4.0.insert.ext, 16, !dbg !286
  %__6.sroa.4.0.insert.insert = or disjoint i64 %__6.sroa.5.0.insert.insert, %__6.sroa.4.0.insert.shift, !dbg !286
  %__6.sroa.0.0.insert.ext = zext i16 %370 to i64, !dbg !286
  %__6.sroa.0.0.insert.insert = or disjoint i64 %__6.sroa.4.0.insert.insert, %__6.sroa.0.0.insert.ext, !dbg !286
  %add705 = add nuw nsw i32 %mul704.pre-phi, %mul696, !dbg !287
  %add710 = or disjoint i32 %add705, %mul709.pre-phi, !dbg !288
  %add.ptr712 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add710, !dbg !289
  store i64 %__6.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr712, align 8, !dbg !290
  %378 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %379 = fptrunc float %div.4 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %378), !dbg !257, !noalias !261
  %380 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %381 = fptrunc float %div.5 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %380), !dbg !266, !noalias !261
  %382 = bitcast half %379 to i16, !dbg !268
  %383 = bitcast half %381 to i16, !dbg !271
  %384 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !276
  %385 = fptrunc float %div.6 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %384), !dbg !272, !noalias !276
  %386 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !276
  %387 = fptrunc float %div.7 to half, !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %386), !dbg !281, !noalias !276
  %388 = bitcast half %385 to i16, !dbg !283
  %389 = bitcast half %387 to i16, !dbg !285
  %__6.sroa.6.0.insert.ext.1 = zext i16 %389 to i64, !dbg !286
  %__6.sroa.6.0.insert.shift.1 = shl nuw i64 %__6.sroa.6.0.insert.ext.1, 48, !dbg !286
  %__6.sroa.5.0.insert.ext.1 = zext i16 %388 to i64, !dbg !286
  %__6.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.1, 32, !dbg !286
  %__6.sroa.5.0.insert.insert.1 = or disjoint i64 %__6.sroa.6.0.insert.shift.1, %__6.sroa.5.0.insert.shift.1, !dbg !286
  %__6.sroa.4.0.insert.ext.1 = zext i16 %383 to i64, !dbg !286
  %__6.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.1, 16, !dbg !286
  %__6.sroa.4.0.insert.insert.1 = or disjoint i64 %__6.sroa.5.0.insert.insert.1, %__6.sroa.4.0.insert.shift.1, !dbg !286
  %__6.sroa.0.0.insert.ext.1 = zext i16 %382 to i64, !dbg !286
  %__6.sroa.0.0.insert.insert.1 = or disjoint i64 %__6.sroa.4.0.insert.insert.1, %__6.sroa.0.0.insert.ext.1, !dbg !286
  %add705.1 = add nuw nsw i32 %mul704.1.pre-phi, %mul696, !dbg !287
  %add710.1 = or disjoint i32 %add705.1, %mul709.pre-phi, !dbg !288
  %add.ptr712.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add710.1, !dbg !289
  store i64 %__6.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr712.1, align 8, !dbg !290
  %390 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %391 = fptrunc float %div.8 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %390), !dbg !257, !noalias !261
  %392 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %393 = fptrunc float %div.9 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %392), !dbg !266, !noalias !261
  %394 = bitcast half %391 to i16, !dbg !268
  %395 = bitcast half %393 to i16, !dbg !271
  %396 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !276
  %397 = fptrunc float %div.10 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %396), !dbg !272, !noalias !276
  %398 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !276
  %399 = fptrunc float %div.11 to half, !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %398), !dbg !281, !noalias !276
  %400 = bitcast half %397 to i16, !dbg !283
  %401 = bitcast half %399 to i16, !dbg !285
  %__6.sroa.6.0.insert.ext.2 = zext i16 %401 to i64, !dbg !286
  %__6.sroa.6.0.insert.shift.2 = shl nuw i64 %__6.sroa.6.0.insert.ext.2, 48, !dbg !286
  %__6.sroa.5.0.insert.ext.2 = zext i16 %400 to i64, !dbg !286
  %__6.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.2, 32, !dbg !286
  %__6.sroa.5.0.insert.insert.2 = or disjoint i64 %__6.sroa.6.0.insert.shift.2, %__6.sroa.5.0.insert.shift.2, !dbg !286
  %__6.sroa.4.0.insert.ext.2 = zext i16 %395 to i64, !dbg !286
  %__6.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.2, 16, !dbg !286
  %__6.sroa.4.0.insert.insert.2 = or disjoint i64 %__6.sroa.5.0.insert.insert.2, %__6.sroa.4.0.insert.shift.2, !dbg !286
  %__6.sroa.0.0.insert.ext.2 = zext i16 %394 to i64, !dbg !286
  %__6.sroa.0.0.insert.insert.2 = or disjoint i64 %__6.sroa.4.0.insert.insert.2, %__6.sroa.0.0.insert.ext.2, !dbg !286
  %add705.2 = add nuw nsw i32 %mul704.2.pre-phi, %mul696, !dbg !287
  %add710.2 = or disjoint i32 %add705.2, %mul709.pre-phi, !dbg !288
  %add.ptr712.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add710.2, !dbg !289
  store i64 %__6.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr712.2, align 8, !dbg !290
  %402 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %403 = fptrunc float %div.12 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %402), !dbg !257, !noalias !261
  %404 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %405 = fptrunc float %div.13 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %404), !dbg !266, !noalias !261
  %406 = bitcast half %403 to i16, !dbg !268
  %407 = bitcast half %405 to i16, !dbg !271
  %408 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !276
  %409 = fptrunc float %div.14 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %408), !dbg !272, !noalias !276
  %410 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !276
  %411 = fptrunc float %div.15 to half, !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %410), !dbg !281, !noalias !276
  %412 = bitcast half %409 to i16, !dbg !283
  %413 = bitcast half %411 to i16, !dbg !285
  %__6.sroa.6.0.insert.ext.3 = zext i16 %413 to i64, !dbg !286
  %__6.sroa.6.0.insert.shift.3 = shl nuw i64 %__6.sroa.6.0.insert.ext.3, 48, !dbg !286
  %__6.sroa.5.0.insert.ext.3 = zext i16 %412 to i64, !dbg !286
  %__6.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.3, 32, !dbg !286
  %__6.sroa.5.0.insert.insert.3 = or disjoint i64 %__6.sroa.6.0.insert.shift.3, %__6.sroa.5.0.insert.shift.3, !dbg !286
  %__6.sroa.4.0.insert.ext.3 = zext i16 %407 to i64, !dbg !286
  %__6.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.3, 16, !dbg !286
  %__6.sroa.4.0.insert.insert.3 = or disjoint i64 %__6.sroa.5.0.insert.insert.3, %__6.sroa.4.0.insert.shift.3, !dbg !286
  %__6.sroa.0.0.insert.ext.3 = zext i16 %406 to i64, !dbg !286
  %__6.sroa.0.0.insert.insert.3 = or disjoint i64 %__6.sroa.4.0.insert.insert.3, %__6.sroa.0.0.insert.ext.3, !dbg !286
  %add705.3 = add nuw nsw i32 %mul704.3.pre-phi, %mul696, !dbg !287
  %add710.3 = or disjoint i32 %add705.3, %mul709.pre-phi, !dbg !288
  %add.ptr712.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add710.3, !dbg !289
  store i64 %__6.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr712.3, align 8, !dbg !290
  %414 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %415 = fptrunc float %div.16 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %414), !dbg !257, !noalias !261
  %416 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %417 = fptrunc float %div.17 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %416), !dbg !266, !noalias !261
  %418 = bitcast half %415 to i16, !dbg !268
  %419 = bitcast half %417 to i16, !dbg !271
  %420 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !276
  %421 = fptrunc float %div.18 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %420), !dbg !272, !noalias !276
  %422 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !276
  %423 = fptrunc float %div.19 to half, !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %422), !dbg !281, !noalias !276
  %424 = bitcast half %421 to i16, !dbg !283
  %425 = bitcast half %423 to i16, !dbg !285
  %__6.sroa.6.0.insert.ext.4 = zext i16 %425 to i64, !dbg !286
  %__6.sroa.6.0.insert.shift.4 = shl nuw i64 %__6.sroa.6.0.insert.ext.4, 48, !dbg !286
  %__6.sroa.5.0.insert.ext.4 = zext i16 %424 to i64, !dbg !286
  %__6.sroa.5.0.insert.shift.4 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.4, 32, !dbg !286
  %__6.sroa.5.0.insert.insert.4 = or disjoint i64 %__6.sroa.6.0.insert.shift.4, %__6.sroa.5.0.insert.shift.4, !dbg !286
  %__6.sroa.4.0.insert.ext.4 = zext i16 %419 to i64, !dbg !286
  %__6.sroa.4.0.insert.shift.4 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.4, 16, !dbg !286
  %__6.sroa.4.0.insert.insert.4 = or disjoint i64 %__6.sroa.5.0.insert.insert.4, %__6.sroa.4.0.insert.shift.4, !dbg !286
  %__6.sroa.0.0.insert.ext.4 = zext i16 %418 to i64, !dbg !286
  %__6.sroa.0.0.insert.insert.4 = or disjoint i64 %__6.sroa.4.0.insert.insert.4, %__6.sroa.0.0.insert.ext.4, !dbg !286
  %add700.4 = add nuw nsw i32 %shr699.pre-phi, 8, !dbg !58
  %xor703.4 = xor i32 %add700.4, %and702.pre-phi, !dbg !56
  %mul704.4 = shl nuw nsw i32 %xor703.4, 3, !dbg !57
  %add705.4 = add nuw nsw i32 %mul704.4, %mul696, !dbg !287
  %add710.4 = or disjoint i32 %add705.4, %mul709.pre-phi, !dbg !288
  %add.ptr712.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add710.4, !dbg !289
  store i64 %__6.sroa.0.0.insert.insert.4, ptr addrspace(3) %add.ptr712.4, align 8, !dbg !290
  %426 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %427 = fptrunc float %div.20 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %426), !dbg !257, !noalias !261
  %428 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %429 = fptrunc float %div.21 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %428), !dbg !266, !noalias !261
  %430 = bitcast half %427 to i16, !dbg !268
  %431 = bitcast half %429 to i16, !dbg !271
  %432 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !276
  %433 = fptrunc float %div.22 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %432), !dbg !272, !noalias !276
  %434 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !276
  %435 = fptrunc float %div.23 to half, !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %434), !dbg !281, !noalias !276
  %436 = bitcast half %433 to i16, !dbg !283
  %437 = bitcast half %435 to i16, !dbg !285
  %__6.sroa.6.0.insert.ext.5 = zext i16 %437 to i64, !dbg !286
  %__6.sroa.6.0.insert.shift.5 = shl nuw i64 %__6.sroa.6.0.insert.ext.5, 48, !dbg !286
  %__6.sroa.5.0.insert.ext.5 = zext i16 %436 to i64, !dbg !286
  %__6.sroa.5.0.insert.shift.5 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.5, 32, !dbg !286
  %__6.sroa.5.0.insert.insert.5 = or disjoint i64 %__6.sroa.6.0.insert.shift.5, %__6.sroa.5.0.insert.shift.5, !dbg !286
  %__6.sroa.4.0.insert.ext.5 = zext i16 %431 to i64, !dbg !286
  %__6.sroa.4.0.insert.shift.5 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.5, 16, !dbg !286
  %__6.sroa.4.0.insert.insert.5 = or disjoint i64 %__6.sroa.5.0.insert.insert.5, %__6.sroa.4.0.insert.shift.5, !dbg !286
  %__6.sroa.0.0.insert.ext.5 = zext i16 %430 to i64, !dbg !286
  %__6.sroa.0.0.insert.insert.5 = or disjoint i64 %__6.sroa.4.0.insert.insert.5, %__6.sroa.0.0.insert.ext.5, !dbg !286
  %add700.5 = add nuw nsw i32 %shr699.pre-phi, 10, !dbg !58
  %xor703.5 = xor i32 %add700.5, %and702.pre-phi, !dbg !56
  %mul704.5 = shl nuw nsw i32 %xor703.5, 3, !dbg !57
  %add705.5 = add nuw nsw i32 %mul704.5, %mul696, !dbg !287
  %add710.5 = or disjoint i32 %add705.5, %mul709.pre-phi, !dbg !288
  %add.ptr712.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add710.5, !dbg !289
  store i64 %__6.sroa.0.0.insert.insert.5, ptr addrspace(3) %add.ptr712.5, align 8, !dbg !290
  %438 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %439 = fptrunc float %div.24 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %438), !dbg !257, !noalias !261
  %440 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %441 = fptrunc float %div.25 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %440), !dbg !266, !noalias !261
  %442 = bitcast half %439 to i16, !dbg !268
  %443 = bitcast half %441 to i16, !dbg !271
  %444 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !276
  %445 = fptrunc float %div.26 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %444), !dbg !272, !noalias !276
  %446 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !276
  %447 = fptrunc float %div.27 to half, !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %446), !dbg !281, !noalias !276
  %448 = bitcast half %445 to i16, !dbg !283
  %449 = bitcast half %447 to i16, !dbg !285
  %__6.sroa.6.0.insert.ext.6 = zext i16 %449 to i64, !dbg !286
  %__6.sroa.6.0.insert.shift.6 = shl nuw i64 %__6.sroa.6.0.insert.ext.6, 48, !dbg !286
  %__6.sroa.5.0.insert.ext.6 = zext i16 %448 to i64, !dbg !286
  %__6.sroa.5.0.insert.shift.6 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.6, 32, !dbg !286
  %__6.sroa.5.0.insert.insert.6 = or disjoint i64 %__6.sroa.6.0.insert.shift.6, %__6.sroa.5.0.insert.shift.6, !dbg !286
  %__6.sroa.4.0.insert.ext.6 = zext i16 %443 to i64, !dbg !286
  %__6.sroa.4.0.insert.shift.6 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.6, 16, !dbg !286
  %__6.sroa.4.0.insert.insert.6 = or disjoint i64 %__6.sroa.5.0.insert.insert.6, %__6.sroa.4.0.insert.shift.6, !dbg !286
  %__6.sroa.0.0.insert.ext.6 = zext i16 %442 to i64, !dbg !286
  %__6.sroa.0.0.insert.insert.6 = or disjoint i64 %__6.sroa.4.0.insert.insert.6, %__6.sroa.0.0.insert.ext.6, !dbg !286
  %add700.6 = add nuw nsw i32 %shr699.pre-phi, 12, !dbg !58
  %xor703.6 = xor i32 %add700.6, %and702.pre-phi, !dbg !56
  %mul704.6 = shl nuw nsw i32 %xor703.6, 3, !dbg !57
  %add705.6 = add nuw nsw i32 %mul704.6, %mul696, !dbg !287
  %add710.6 = or disjoint i32 %add705.6, %mul709.pre-phi, !dbg !288
  %add.ptr712.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add710.6, !dbg !289
  store i64 %__6.sroa.0.0.insert.insert.6, ptr addrspace(3) %add.ptr712.6, align 8, !dbg !290
  %450 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %451 = fptrunc float %div.28 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %450), !dbg !257, !noalias !261
  %452 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %453 = fptrunc float %div.29 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %452), !dbg !266, !noalias !261
  %454 = bitcast half %451 to i16, !dbg !268
  %455 = bitcast half %453 to i16, !dbg !271
  %456 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !276
  %457 = fptrunc float %div.30 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %456), !dbg !272, !noalias !276
  %458 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !281, !noalias !276
  %459 = fptrunc float %div.31 to half, !dbg !281
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %458), !dbg !281, !noalias !276
  %460 = bitcast half %457 to i16, !dbg !283
  %461 = bitcast half %459 to i16, !dbg !285
  %__6.sroa.6.0.insert.ext.7 = zext i16 %461 to i64, !dbg !286
  %__6.sroa.6.0.insert.shift.7 = shl nuw i64 %__6.sroa.6.0.insert.ext.7, 48, !dbg !286
  %__6.sroa.5.0.insert.ext.7 = zext i16 %460 to i64, !dbg !286
  %__6.sroa.5.0.insert.shift.7 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.7, 32, !dbg !286
  %__6.sroa.5.0.insert.insert.7 = or disjoint i64 %__6.sroa.6.0.insert.shift.7, %__6.sroa.5.0.insert.shift.7, !dbg !286
  %__6.sroa.4.0.insert.ext.7 = zext i16 %455 to i64, !dbg !286
  %__6.sroa.4.0.insert.shift.7 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.7, 16, !dbg !286
  %__6.sroa.4.0.insert.insert.7 = or disjoint i64 %__6.sroa.5.0.insert.insert.7, %__6.sroa.4.0.insert.shift.7, !dbg !286
  %__6.sroa.0.0.insert.ext.7 = zext i16 %454 to i64, !dbg !286
  %__6.sroa.0.0.insert.insert.7 = or disjoint i64 %__6.sroa.4.0.insert.insert.7, %__6.sroa.0.0.insert.ext.7, !dbg !286
  %add700.7 = add nuw nsw i32 %shr699.pre-phi, 14, !dbg !58
  %xor703.7 = xor i32 %add700.7, %and702.pre-phi, !dbg !56
  %mul704.7 = shl nuw nsw i32 %xor703.7, 3, !dbg !57
  %add705.7 = add nuw nsw i32 %mul704.7, %mul696, !dbg !287
  %add710.7 = or disjoint i32 %add705.7, %mul709.pre-phi, !dbg !288
  %add.ptr712.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add710.7, !dbg !289
  store i64 %__6.sroa.0.0.insert.insert.7, ptr addrspace(3) %add.ptr712.7, align 8, !dbg !290
  fence syncscope("warp") release, !dbg !291
  tail call void @llvm.mxc.barrier.warp(), !dbg !294
  fence syncscope("warp") acquire, !dbg !295
  %mul723 = and i32 %.pre-phi2378, 8064
  %and726 = and i32 %.pre-phi, 15
  %invariant.gep986 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul723, !dbg !296
  %xor732 = xor i32 %shr730.pre-phi, %and726, !dbg !297
  %add.ptr736.idx = shl nuw nsw i32 %xor732, 4, !dbg !298
  %add.ptr736 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep986, i32 %add.ptr736.idx, !dbg !298
  %add.ptr748 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2385, !dbg !299
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr748, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr736, i64 16, i1 false), !dbg !300, !tbaa.struct !301, !call_argsrelate !302
  %xor732.1 = xor i32 %add731.1.pre-phi, %and726, !dbg !297
  %gep987.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep986, i32 1024, !dbg !298
  %add.ptr736.idx.1 = shl nuw nsw i32 %xor732.1, 4, !dbg !298
  %add.ptr736.1 = getelementptr inbounds i8, ptr addrspace(3) %gep987.1, i32 %add.ptr736.idx.1, !dbg !298
  %add.ptr748.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2388, !dbg !299
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr748.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr736.1, i64 16, i1 false), !dbg !300, !tbaa.struct !301, !call_argsrelate !302
  %gep987.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep986, i32 2048, !dbg !298
  %add.ptr736.2 = getelementptr inbounds i8, ptr addrspace(3) %gep987.2, i32 %add.ptr736.idx, !dbg !298
  %add.ptr748.2 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2390, !dbg !299
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr748.2, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr736.2, i64 16, i1 false), !dbg !300, !tbaa.struct !301, !call_argsrelate !302
  %gep987.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep986, i32 3072, !dbg !298
  %add.ptr736.3 = getelementptr inbounds i8, ptr addrspace(3) %gep987.3, i32 %add.ptr736.idx.1, !dbg !298
  %add.ptr748.3 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2392, !dbg !299
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr748.3, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr736.3, i64 16, i1 false), !dbg !300, !tbaa.struct !301, !call_argsrelate !302
  ret void, !dbg !303
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v059_codex_power_s1_qk_pair_swap_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v059_codex_power_s1_qk_pair_swap_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
!42 = !DILocation(line: 78, column: 3, scope: !43, inlinedAt: !45)
!43 = distinct !DISubprogram(name: "__fetch_builtin_y", scope: !44, file: !44, line: 78, type: !7, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!44 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_builtin_vars.h", directory: "")
!45 = distinct !DILocation(line: 24, column: 38, scope: !40)
!46 = !DILocation(line: 24, column: 50, scope: !40)
!47 = !DILocation(line: 77, column: 3, scope: !48, inlinedAt: !49)
!48 = distinct !DISubprogram(name: "__fetch_builtin_x", scope: !44, file: !44, line: 77, type: !7, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!49 = distinct !DILocation(line: 24, column: 66, scope: !40)
!50 = !DILocation(line: 24, column: 58, scope: !40)
!51 = !DILocation(line: 24, column: 22, scope: !40)
!52 = !DILocation(line: 24, column: 80, scope: !40)
!53 = !DILocation(line: 26, column: 10, scope: !40)
!54 = !DILocation(line: 26, column: 26, scope: !40)
!55 = !{i32 0, i32 1024}
!56 = !DILocation(line: 196, column: 104, scope: !40)
!57 = !DILocation(line: 196, column: 132, scope: !40)
!58 = !DILocation(line: 196, column: 75, scope: !40)
!59 = !DILocation(line: 200, column: 3, scope: !40)
!60 = !DILocation(line: 201, column: 261, scope: !40)
!61 = !DILocation(line: 201, column: 105, scope: !40)
!62 = !DILocation(line: 185, column: 3, scope: !40)
!63 = !DILocation(line: 28, column: 5, scope: !40)
!64 = !DILocation(line: 29, column: 45, scope: !40)
!65 = !DILocation(line: 29, column: 31, scope: !40)
!66 = !DILocation(line: 33, column: 201, scope: !40)
!67 = !DILocation(line: 33, column: 11, scope: !40)
!68 = !DILocation(line: 33, column: 352, scope: !40)
!69 = !{!26, !26, i64 0}
!70 = !DILocation(line: 33, column: 227, scope: !40)
!71 = !DILocation(line: 29, column: 126, scope: !40)
!72 = !DILocation(line: 68, column: 3, scope: !73, inlinedAt: !75)
!73 = distinct !DISubprogram(name: "__barrier_warp", scope: !74, file: !74, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!74 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!75 = distinct !DILocation(line: 192, column: 3, scope: !76, inlinedAt: !77)
!76 = distinct !DISubprogram(name: "__syncwarp", scope: !74, file: !74, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!77 = distinct !DILocation(line: 37, column: 5, scope: !40)
!78 = !DILocation(line: 69, column: 3, scope: !73, inlinedAt: !75)
!79 = !DILocation(line: 70, column: 3, scope: !73, inlinedAt: !75)
!80 = !DILocation(line: 40, column: 256, scope: !40)
!81 = !DILocation(line: 40, column: 200, scope: !40)
!82 = !DILocation(line: 40, column: 46, scope: !40)
!83 = !DILocation(line: 40, column: 44, scope: !40)
!84 = !DILocation(line: 40, column: 243, scope: !40)
!85 = !DILocation(line: 68, column: 3, scope: !73, inlinedAt: !86)
!86 = distinct !DILocation(line: 192, column: 3, scope: !76, inlinedAt: !87)
!87 = distinct !DILocation(line: 43, column: 5, scope: !40)
!88 = !DILocation(line: 69, column: 3, scope: !73, inlinedAt: !86)
!89 = !DILocation(line: 70, column: 3, scope: !73, inlinedAt: !86)
!90 = !DILocation(line: 45, column: 10, scope: !40)
!91 = !DILocation(line: 46, column: 45, scope: !40)
!92 = !DILocation(line: 46, column: 31, scope: !40)
!93 = !DILocation(line: 50, column: 205, scope: !40)
!94 = !DILocation(line: 50, column: 11, scope: !40)
!95 = !DILocation(line: 50, column: 375, scope: !40)
!96 = !DILocation(line: 50, column: 235, scope: !40)
!97 = !DILocation(line: 68, column: 3, scope: !73, inlinedAt: !98)
!98 = distinct !DILocation(line: 192, column: 3, scope: !76, inlinedAt: !99)
!99 = distinct !DILocation(line: 54, column: 5, scope: !40)
!100 = !DILocation(line: 69, column: 3, scope: !73, inlinedAt: !98)
!101 = !DILocation(line: 70, column: 3, scope: !73, inlinedAt: !98)
!102 = !DILocation(line: 64, column: 30, scope: !40)
!103 = !DILocation(line: 67, column: 44, scope: !40)
!104 = !DILocation(line: 64, column: 212, scope: !40)
!105 = !DILocation(line: 64, column: 32, scope: !40)
!106 = !DILocation(line: 78, column: 98, scope: !40)
!107 = !DILocation(line: 78, column: 13, scope: !40)
!108 = !DILocation(line: 78, column: 85, scope: !40)
!109 = !DILocation(line: 351, column: 10, scope: !110, inlinedAt: !112)
!110 = distinct !DISubprogram(name: "max", scope: !111, file: !111, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!111 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!112 = distinct !DILocation(line: 89, column: 20, scope: !40)
!113 = !DILocation(line: 1018, column: 9, scope: !114, inlinedAt: !115)
!114 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !74, file: !74, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!115 = distinct !DILocation(line: 91, column: 34, scope: !40)
!116 = !DILocation(line: 171, column: 37, scope: !117, inlinedAt: !118)
!117 = distinct !DISubprogram(name: "__lane_id", scope: !74, file: !74, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!118 = distinct !DILocation(line: 990, column: 14, scope: !119, inlinedAt: !120)
!119 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !74, file: !74, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!120 = distinct !DILocation(line: 1019, column: 11, scope: !114, inlinedAt: !115)
!121 = !DILocation(line: 171, column: 10, scope: !117, inlinedAt: !118)
!122 = !DILocation(line: 991, column: 20, scope: !119, inlinedAt: !120)
!123 = !DILocation(line: 992, column: 36, scope: !119, inlinedAt: !120)
!124 = !DILocation(line: 992, column: 17, scope: !119, inlinedAt: !120)
!125 = !DILocation(line: 992, column: 11, scope: !119, inlinedAt: !120)
!126 = !DILocation(line: 993, column: 43, scope: !119, inlinedAt: !120)
!127 = !DILocation(line: 993, column: 10, scope: !119, inlinedAt: !120)
!128 = !DILocation(line: 1020, column: 14, scope: !114, inlinedAt: !115)
!129 = !DILocation(line: 351, column: 10, scope: !110, inlinedAt: !130)
!130 = distinct !DILocation(line: 91, column: 18, scope: !40)
!131 = !DILocation(line: 1018, column: 9, scope: !114, inlinedAt: !132)
!132 = distinct !DILocation(line: 92, column: 34, scope: !40)
!133 = !DILocation(line: 171, column: 37, scope: !117, inlinedAt: !134)
!134 = distinct !DILocation(line: 990, column: 14, scope: !119, inlinedAt: !135)
!135 = distinct !DILocation(line: 1019, column: 11, scope: !114, inlinedAt: !132)
!136 = !DILocation(line: 171, column: 10, scope: !117, inlinedAt: !134)
!137 = !DILocation(line: 991, column: 20, scope: !119, inlinedAt: !135)
!138 = !DILocation(line: 992, column: 36, scope: !119, inlinedAt: !135)
!139 = !DILocation(line: 992, column: 17, scope: !119, inlinedAt: !135)
!140 = !DILocation(line: 992, column: 11, scope: !119, inlinedAt: !135)
!141 = !DILocation(line: 993, column: 43, scope: !119, inlinedAt: !135)
!142 = !DILocation(line: 993, column: 10, scope: !119, inlinedAt: !135)
!143 = !DILocation(line: 1020, column: 14, scope: !114, inlinedAt: !132)
!144 = !DILocation(line: 351, column: 10, scope: !110, inlinedAt: !145)
!145 = distinct !DILocation(line: 92, column: 18, scope: !40)
!146 = !DILocation(line: 104, column: 26, scope: !40)
!147 = !DILocation(line: 105, column: 26, scope: !40)
!148 = !DILocation(line: 106, column: 26, scope: !40)
!149 = !DILocation(line: 107, column: 26, scope: !40)
!150 = !DILocation(line: 109, column: 25, scope: !40)
!151 = !DILocation(line: 110, column: 25, scope: !40)
!152 = !DILocation(line: 111, column: 25, scope: !40)
!153 = !DILocation(line: 112, column: 25, scope: !40)
!154 = !DILocation(line: 114, column: 23, scope: !40)
!155 = !DILocation(line: 115, column: 23, scope: !40)
!156 = !DILocation(line: 116, column: 23, scope: !40)
!157 = !DILocation(line: 117, column: 23, scope: !40)
!158 = !DILocation(line: 285, column: 49, scope: !159, inlinedAt: !160)
!159 = distinct !DISubprogram(name: "exp2f", scope: !111, file: !111, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!160 = distinct !DILocation(line: 118, column: 15, scope: !40)
!161 = !DILocation(line: 285, column: 49, scope: !159, inlinedAt: !162)
!162 = distinct !DILocation(line: 119, column: 15, scope: !40)
!163 = !DILocation(line: 285, column: 49, scope: !159, inlinedAt: !164)
!164 = distinct !DILocation(line: 120, column: 15, scope: !40)
!165 = !DILocation(line: 285, column: 49, scope: !159, inlinedAt: !166)
!166 = distinct !DILocation(line: 121, column: 15, scope: !40)
!167 = !DILocation(line: 1007, column: 10, scope: !168, inlinedAt: !170)
!168 = distinct !DISubprogram(name: "__float2half_rn", scope: !169, file: !169, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!169 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!170 = distinct !DILocation(line: 1077, column: 18, scope: !171, inlinedAt: !172)
!171 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !169, file: !169, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!172 = distinct !DILocation(line: 1295, column: 23, scope: !173, inlinedAt: !174)
!173 = distinct !DISubprogram(name: "__float22half2_rn", scope: !169, file: !169, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!174 = distinct !DILocation(line: 122, column: 29, scope: !40)
!175 = !{!176, !178}
!176 = distinct !{!176, !177, !"_ZL17__floats2half2_rnff: %agg.result"}
!177 = distinct !{!177, !"_ZL17__floats2half2_rnff"}
!178 = distinct !{!178, !179, !"_ZL17__float22half2_rn6float2: %agg.result"}
!179 = distinct !{!179, !"_ZL17__float22half2_rn6float2"}
!180 = !DILocation(line: 1007, column: 10, scope: !168, inlinedAt: !181)
!181 = distinct !DILocation(line: 1077, column: 38, scope: !171, inlinedAt: !172)
!182 = !DILocation(line: 1007, column: 10, scope: !168, inlinedAt: !183)
!183 = distinct !DILocation(line: 1077, column: 18, scope: !171, inlinedAt: !184)
!184 = distinct !DILocation(line: 1295, column: 23, scope: !173, inlinedAt: !185)
!185 = distinct !DILocation(line: 123, column: 29, scope: !40)
!186 = !{!187, !189}
!187 = distinct !{!187, !188, !"_ZL17__floats2half2_rnff: %agg.result"}
!188 = distinct !{!188, !"_ZL17__floats2half2_rnff"}
!189 = distinct !{!189, !190, !"_ZL17__float22half2_rn6float2: %agg.result"}
!190 = distinct !{!190, !"_ZL17__float22half2_rn6float2"}
!191 = !DILocation(line: 1007, column: 10, scope: !168, inlinedAt: !192)
!192 = distinct !DILocation(line: 1077, column: 38, scope: !171, inlinedAt: !184)
!193 = !DILocation(line: 124, column: 51, scope: !40)
!194 = !DILocation(line: 1082, column: 16, scope: !195, inlinedAt: !196)
!195 = distinct !DISubprogram(name: "__half2float", scope: !169, file: !169, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!196 = distinct !DILocation(line: 136, column: 55, scope: !197, inlinedAt: !198)
!197 = distinct !DISubprogram(name: "operator float", scope: !169, file: !169, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!198 = distinct !DILocation(line: 128, column: 50, scope: !40)
!199 = !DILocation(line: 128, column: 40, scope: !40)
!200 = !DILocation(line: 1018, column: 9, scope: !114, inlinedAt: !201)
!201 = distinct !DILocation(line: 130, column: 40, scope: !40)
!202 = !DILocation(line: 171, column: 37, scope: !117, inlinedAt: !203)
!203 = distinct !DILocation(line: 990, column: 14, scope: !119, inlinedAt: !204)
!204 = distinct !DILocation(line: 1019, column: 11, scope: !114, inlinedAt: !201)
!205 = !DILocation(line: 171, column: 10, scope: !117, inlinedAt: !203)
!206 = !DILocation(line: 991, column: 20, scope: !119, inlinedAt: !204)
!207 = !DILocation(line: 992, column: 36, scope: !119, inlinedAt: !204)
!208 = !DILocation(line: 992, column: 17, scope: !119, inlinedAt: !204)
!209 = !DILocation(line: 992, column: 11, scope: !119, inlinedAt: !204)
!210 = !DILocation(line: 993, column: 43, scope: !119, inlinedAt: !204)
!211 = !DILocation(line: 993, column: 10, scope: !119, inlinedAt: !204)
!212 = !DILocation(line: 1020, column: 14, scope: !114, inlinedAt: !201)
!213 = !DILocation(line: 130, column: 38, scope: !40)
!214 = !DILocation(line: 1018, column: 9, scope: !114, inlinedAt: !215)
!215 = distinct !DILocation(line: 131, column: 40, scope: !40)
!216 = !DILocation(line: 171, column: 37, scope: !117, inlinedAt: !217)
!217 = distinct !DILocation(line: 990, column: 14, scope: !119, inlinedAt: !218)
!218 = distinct !DILocation(line: 1019, column: 11, scope: !114, inlinedAt: !215)
!219 = !DILocation(line: 171, column: 10, scope: !117, inlinedAt: !217)
!220 = !DILocation(line: 991, column: 20, scope: !119, inlinedAt: !218)
!221 = !DILocation(line: 992, column: 36, scope: !119, inlinedAt: !218)
!222 = !DILocation(line: 992, column: 17, scope: !119, inlinedAt: !218)
!223 = !DILocation(line: 992, column: 11, scope: !119, inlinedAt: !218)
!224 = !DILocation(line: 993, column: 43, scope: !119, inlinedAt: !218)
!225 = !DILocation(line: 993, column: 10, scope: !119, inlinedAt: !218)
!226 = !DILocation(line: 1020, column: 14, scope: !114, inlinedAt: !215)
!227 = !DILocation(line: 68, column: 3, scope: !73, inlinedAt: !228)
!228 = distinct !DILocation(line: 192, column: 3, scope: !76, inlinedAt: !229)
!229 = distinct !DILocation(line: 132, column: 5, scope: !40)
!230 = !DILocation(line: 69, column: 3, scope: !73, inlinedAt: !228)
!231 = !DILocation(line: 70, column: 3, scope: !73, inlinedAt: !228)
!232 = !DILocation(line: 139, column: 56, scope: !40)
!233 = !DILocation(line: 139, column: 42, scope: !40)
!234 = !DILocation(line: 146, column: 28, scope: !40)
!235 = !DILocation(line: 146, column: 192, scope: !40)
!236 = !DILocation(line: 146, column: 63, scope: !40)
!237 = !DILocation(line: 68, column: 3, scope: !73, inlinedAt: !238)
!238 = distinct !DILocation(line: 192, column: 3, scope: !76, inlinedAt: !239)
!239 = distinct !DILocation(line: 150, column: 5, scope: !40)
!240 = !DILocation(line: 69, column: 3, scope: !73, inlinedAt: !238)
!241 = !DILocation(line: 70, column: 3, scope: !73, inlinedAt: !238)
!242 = !DILocation(line: 164, column: 325, scope: !40)
!243 = !DILocation(line: 164, column: 84, scope: !40)
!244 = !DILocation(line: 164, column: 65, scope: !40)
!245 = !DILocation(line: 164, column: 263, scope: !40)
!246 = !DILocation(line: 170, column: 94, scope: !40)
!247 = !DILocation(line: 170, column: 64, scope: !40)
!248 = !DILocation(line: 131, column: 38, scope: !40)
!249 = !DILocation(line: 0, scope: !40)
!250 = !DILocation(line: 186, column: 23, scope: !40)
!251 = !DILocation(line: 186, column: 38, scope: !40)
!252 = !DILocation(line: 68, column: 3, scope: !73, inlinedAt: !253)
!253 = distinct !DILocation(line: 192, column: 3, scope: !76, inlinedAt: !254)
!254 = distinct !DILocation(line: 188, column: 3, scope: !40)
!255 = !DILocation(line: 69, column: 3, scope: !73, inlinedAt: !253)
!256 = !DILocation(line: 70, column: 3, scope: !73, inlinedAt: !253)
!257 = !DILocation(line: 1007, column: 10, scope: !168, inlinedAt: !258)
!258 = distinct !DILocation(line: 1077, column: 18, scope: !171, inlinedAt: !259)
!259 = distinct !DILocation(line: 1295, column: 23, scope: !173, inlinedAt: !260)
!260 = distinct !DILocation(line: 193, column: 27, scope: !40)
!261 = !{!262, !264}
!262 = distinct !{!262, !263, !"_ZL17__floats2half2_rnff: %agg.result"}
!263 = distinct !{!263, !"_ZL17__floats2half2_rnff"}
!264 = distinct !{!264, !265, !"_ZL17__float22half2_rn6float2: %agg.result"}
!265 = distinct !{!265, !"_ZL17__float22half2_rn6float2"}
!266 = !DILocation(line: 1007, column: 10, scope: !168, inlinedAt: !267)
!267 = distinct !DILocation(line: 1077, column: 38, scope: !171, inlinedAt: !259)
!268 = !DILocation(line: 596, column: 67, scope: !269, inlinedAt: !270)
!269 = distinct !DISubprogram(name: "__half2", scope: !169, file: !169, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!270 = distinct !DILocation(line: 1077, column: 10, scope: !171, inlinedAt: !259)
!271 = !DILocation(line: 596, column: 73, scope: !269, inlinedAt: !270)
!272 = !DILocation(line: 1007, column: 10, scope: !168, inlinedAt: !273)
!273 = distinct !DILocation(line: 1077, column: 18, scope: !171, inlinedAt: !274)
!274 = distinct !DILocation(line: 1295, column: 23, scope: !173, inlinedAt: !275)
!275 = distinct !DILocation(line: 194, column: 27, scope: !40)
!276 = !{!277, !279}
!277 = distinct !{!277, !278, !"_ZL17__floats2half2_rnff: %agg.result"}
!278 = distinct !{!278, !"_ZL17__floats2half2_rnff"}
!279 = distinct !{!279, !280, !"_ZL17__float22half2_rn6float2: %agg.result"}
!280 = distinct !{!280, !"_ZL17__float22half2_rn6float2"}
!281 = !DILocation(line: 1007, column: 10, scope: !168, inlinedAt: !282)
!282 = distinct !DILocation(line: 1077, column: 38, scope: !171, inlinedAt: !274)
!283 = !DILocation(line: 596, column: 67, scope: !269, inlinedAt: !284)
!284 = distinct !DILocation(line: 1077, column: 10, scope: !171, inlinedAt: !274)
!285 = !DILocation(line: 596, column: 73, scope: !269, inlinedAt: !284)
!286 = !DILocation(line: 195, column: 38, scope: !40)
!287 = !DILocation(line: 196, column: 60, scope: !40)
!288 = !DILocation(line: 196, column: 138, scope: !40)
!289 = !DILocation(line: 196, column: 22, scope: !40)
!290 = !DILocation(line: 196, column: 181, scope: !40)
!291 = !DILocation(line: 68, column: 3, scope: !73, inlinedAt: !292)
!292 = distinct !DILocation(line: 192, column: 3, scope: !76, inlinedAt: !293)
!293 = distinct !DILocation(line: 198, column: 3, scope: !40)
!294 = !DILocation(line: 69, column: 3, scope: !73, inlinedAt: !292)
!295 = !DILocation(line: 70, column: 3, scope: !73, inlinedAt: !292)
!296 = !DILocation(line: 200, column: 8, scope: !40)
!297 = !DILocation(line: 201, column: 239, scope: !40)
!298 = !DILocation(line: 201, column: 153, scope: !40)
!299 = !DILocation(line: 201, column: 22, scope: !40)
!300 = !DILocation(line: 201, column: 134, scope: !40)
!301 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!302 = !{i32 2, i32 -1, i32 -1, i32 -1}
!303 = !DILocation(line: 203, column: 1, scope: !40)
