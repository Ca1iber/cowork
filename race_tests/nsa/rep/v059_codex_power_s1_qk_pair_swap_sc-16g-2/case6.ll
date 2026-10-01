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
define protected metaxgpu_kernel void @native_sparse_attention_kernel(ptr addrspace(1) noalias nocapture noundef readonly %Indices.coerce, ptr addrspace(4) noalias nocapture noundef readonly %K.coerce, ptr addrspace(1) noalias nocapture noundef writeonly %Output.coerce, ptr addrspace(4) noalias nocapture noundef readonly %Q.coerce, ptr addrspace(4) noalias noundef readonly %V.coerce) local_unnamed_addr #3 !dbg !40 {
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
  br i1 %or.cond, label %for.body599.preheader, label %for.cond.preheader, !dbg !54

for.body599.preheader:                            ; preds = %entry
  %.pre = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  %.pre1952 = shl nuw nsw i32 %.pre, 7
  %.pre1953 = lshr i32 %.pre, 5
  %.pre1954 = and i32 %.pre, 7
  %.pre1955 = lshr i32 %.pre, 2
  %.pre1957 = xor i32 %.pre1953, %.pre1954, !dbg !56
  %.pre1958 = add nuw nsw i32 %.pre1953, 2, !dbg !57
  %.pre1959 = xor i32 %.pre1958, %.pre1954, !dbg !56
  %.pre1960 = add nuw nsw i32 %.pre1953, 4, !dbg !57
  %.pre1961 = xor i32 %.pre1960, %.pre1954, !dbg !56
  %.pre1962 = add nuw nsw i32 %.pre1953, 6, !dbg !57
  %.pre1963 = xor i32 %.pre1962, %.pre1954, !dbg !56
  %.pre1964 = shl nuw nsw i32 %.pre, 3
  %.pre1966 = lshr i32 %.pre, 4
  %.pre1967 = shl nsw i32 %0, 21
  %.pre1968 = shl nsw i32 %1, 11
  %.pre1969 = add nuw nsw i32 %.pre1967, %.pre1968
  %.pre1970 = add nuw nsw i32 %.pre1969, %.pre1964
  %.pre1971 = zext nneg i32 %.pre1970 to i64, !dbg !58
  %.pre1973 = add nuw nsw i32 %.pre1966, 4, !dbg !59
  %.pre1974 = add nuw nsw i64 %.pre1971, 512, !dbg !60
  %.pre1976 = add nuw nsw i64 %.pre1971, 1024, !dbg !60
  %.pre1978 = add nuw nsw i64 %.pre1971, 1536, !dbg !60
  br label %if.end609, !dbg !61

for.cond.preheader:                               ; preds = %entry
  %mul13 = shl nsw i32 %0, 21
  %mul15 = shl nsw i32 %1, 11
  %add16 = add nuw nsw i32 %mul13, %mul15
  %3 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  %mul20 = shl nuw nsw i32 %3, 3
  %add18 = add nuw nsw i32 %add16, %mul20
  %4 = shl nuw nsw i32 %3, 7
  %mul32 = and i32 %4, 1024
  %5 = shl nuw nsw i32 %3, 2
  %mul37 = and i32 %5, 4032
  %and40 = and i32 %3, 7
  %shr44 = lshr i32 %3, 4
  %and51 = lshr i32 %3, 3
  %shr52 = and i32 %and51, 1
  %6 = zext nneg i32 %add18 to i64, !dbg !62
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %6, !dbg !63
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %add.ptr, align 16, !dbg !64
  %qk_fetch.sroa.26.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !64
  %qk_fetch.sroa.26.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.sroa_idx, align 8, !dbg !64
  %xor = xor i32 %shr44, %and40
  %7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul37, !dbg !65
  %8 = getelementptr inbounds %struct.__half, ptr addrspace(3) %7, i32 %mul32, !dbg !65
  %.idx922 = shl nuw nsw i32 %xor, 4, !dbg !65
  %9 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 %.idx922, !dbg !65
  %add.ptr57.idx = shl nuw nsw i32 %shr52, 3, !dbg !65
  %add.ptr57 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 %add.ptr57.idx, !dbg !65
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr57, align 8, !dbg !66
  %xor53.1 = shl nuw nsw i32 %shr52, 3, !dbg !65
  %add.ptr57.idx.1 = xor i32 %xor53.1, 8, !dbg !65
  %add.ptr57.1 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 %add.ptr57.idx.1, !dbg !65
  store i64 %qk_fetch.sroa.26.0.copyload, ptr addrspace(3) %add.ptr57.1, align 8, !dbg !66
  %10 = add nuw nsw i64 %6, 512, !dbg !67
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %10, !dbg !63
  %qk_fetch.sroa.0.0.copyload1920 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !64
  %qk_fetch.sroa.26.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !64
  %qk_fetch.sroa.26.0.copyload1931 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.1.sroa_idx, align 8, !dbg !64
  %add45.1 = add nuw nsw i32 %shr44, 4
  %xor.1 = xor i32 %add45.1, %and40
  %11 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 512, !dbg !65
  %.idx922.1938 = shl nuw nsw i32 %xor.1, 4, !dbg !65
  %12 = getelementptr inbounds i8, ptr addrspace(3) %11, i32 %.idx922.1938, !dbg !65
  %add.ptr57.1940 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 %add.ptr57.idx, !dbg !65
  store i64 %qk_fetch.sroa.0.0.copyload1920, ptr addrspace(3) %add.ptr57.1940, align 8, !dbg !66
  %add.ptr57.1.1 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 %add.ptr57.idx.1, !dbg !65
  store i64 %qk_fetch.sroa.26.0.copyload1931, ptr addrspace(3) %add.ptr57.1.1, align 8, !dbg !66
  %13 = add nuw nsw i64 %6, 1024, !dbg !67
  %add.ptr.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %13, !dbg !63
  %qk_fetch.sroa.0.0.copyload1921 = load i64, ptr addrspace(4) %add.ptr.2, align 16, !dbg !64
  %qk_fetch.sroa.26.0.add.ptr.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.2, i64 8, !dbg !64
  %qk_fetch.sroa.26.0.copyload1932 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.2.sroa_idx, align 8, !dbg !64
  %14 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 1024, !dbg !65
  %15 = getelementptr inbounds i8, ptr addrspace(3) %14, i32 %.idx922, !dbg !65
  %add.ptr57.2 = getelementptr inbounds i8, ptr addrspace(3) %15, i32 %add.ptr57.idx.1, !dbg !65
  store i64 %qk_fetch.sroa.0.0.copyload1921, ptr addrspace(3) %add.ptr57.2, align 8, !dbg !66
  %add.ptr57.1.2 = getelementptr inbounds i8, ptr addrspace(3) %15, i32 %add.ptr57.idx, !dbg !65
  store i64 %qk_fetch.sroa.26.0.copyload1932, ptr addrspace(3) %add.ptr57.1.2, align 8, !dbg !66
  %16 = add nuw nsw i64 %6, 1536, !dbg !67
  %add.ptr.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %16, !dbg !63
  %qk_fetch.sroa.0.0.copyload1922 = load i64, ptr addrspace(4) %add.ptr.3, align 16, !dbg !64
  %qk_fetch.sroa.26.0.add.ptr.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.3, i64 8, !dbg !64
  %qk_fetch.sroa.26.0.copyload1933 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.3.sroa_idx, align 8, !dbg !64
  %17 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 1536, !dbg !65
  %18 = getelementptr inbounds i8, ptr addrspace(3) %17, i32 %.idx922.1938, !dbg !65
  %add.ptr57.3 = getelementptr inbounds i8, ptr addrspace(3) %18, i32 %add.ptr57.idx.1, !dbg !65
  store i64 %qk_fetch.sroa.0.0.copyload1922, ptr addrspace(3) %add.ptr57.3, align 8, !dbg !66
  %add.ptr57.1.3 = getelementptr inbounds i8, ptr addrspace(3) %18, i32 %add.ptr57.idx, !dbg !65
  store i64 %qk_fetch.sroa.26.0.copyload1933, ptr addrspace(3) %add.ptr57.1.3, align 8, !dbg !66
  fence syncscope("warp") release, !dbg !68
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %and68 = shl nuw nsw i32 %3, 6
  %mul69 = and i32 %and68, 960
  %shr74 = lshr i32 %3, 5
  %shr83837 = xor i32 %shr44, %and51
  %xor87 = and i32 %shr83837, 1
  %xor78 = xor i32 %shr74, %and40, !dbg !76
  %19 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul69, !dbg !77
  %.idx923 = shl nuw nsw i32 %xor87, 3, !dbg !77
  %20 = getelementptr inbounds i8, ptr addrspace(3) %19, i32 %.idx923, !dbg !77
  %add.ptr93.idx = shl nuw nsw i32 %xor78, 4, !dbg !77
  %add.ptr93 = getelementptr inbounds i8, ptr addrspace(3) %20, i32 %add.ptr93.idx, !dbg !77
  %21 = load <4 x half>, ptr addrspace(3) %add.ptr93, align 8, !dbg !78
  %add75.1 = add nuw nsw i32 %shr74, 2, !dbg !79
  %xor78.1 = xor i32 %add75.1, %and40, !dbg !76
  %add.ptr93.idx.1 = shl nuw nsw i32 %xor78.1, 4, !dbg !77
  %add.ptr93.1 = getelementptr inbounds i8, ptr addrspace(3) %20, i32 %add.ptr93.idx.1, !dbg !77
  %22 = load <4 x half>, ptr addrspace(3) %add.ptr93.1, align 8, !dbg !78
  %add75.2 = add nuw nsw i32 %shr74, 4, !dbg !79
  %xor78.2 = xor i32 %add75.2, %and40, !dbg !76
  %add.ptr93.idx.2 = shl nuw nsw i32 %xor78.2, 4, !dbg !77
  %add.ptr93.2 = getelementptr inbounds i8, ptr addrspace(3) %20, i32 %add.ptr93.idx.2, !dbg !77
  %23 = load <4 x half>, ptr addrspace(3) %add.ptr93.2, align 8, !dbg !78
  %add75.3 = add nuw nsw i32 %shr74, 6, !dbg !79
  %xor78.3 = xor i32 %add75.3, %and40, !dbg !76
  %add.ptr93.idx.3 = shl nuw nsw i32 %xor78.3, 4, !dbg !77
  %add.ptr93.3 = getelementptr inbounds i8, ptr addrspace(3) %20, i32 %add.ptr93.idx.3, !dbg !77
  %24 = load <4 x half>, ptr addrspace(3) %add.ptr93.3, align 8, !dbg !78
  %add70.4 = or disjoint i32 %mul69, 1024, !dbg !80
  %25 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add70.4, !dbg !77
  %xor89.4 = shl nuw nsw i32 %xor87, 3, !dbg !77
  %.idx923.4 = xor i32 %xor89.4, 8, !dbg !77
  %26 = getelementptr inbounds i8, ptr addrspace(3) %25, i32 %.idx923.4, !dbg !77
  %add.ptr93.4 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 %add.ptr93.idx, !dbg !77
  %27 = load <4 x half>, ptr addrspace(3) %add.ptr93.4, align 8, !dbg !78
  %add.ptr93.5 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 %add.ptr93.idx.1, !dbg !77
  %28 = load <4 x half>, ptr addrspace(3) %add.ptr93.5, align 8, !dbg !78
  %add.ptr93.6 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 %add.ptr93.idx.2, !dbg !77
  %29 = load <4 x half>, ptr addrspace(3) %add.ptr93.6, align 8, !dbg !78
  %add.ptr93.7 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 %add.ptr93.idx.3, !dbg !77
  %30 = load <4 x half>, ptr addrspace(3) %add.ptr93.7, align 8, !dbg !78
  fence syncscope("warp") release, !dbg !81
  tail call void @llvm.mxc.barrier.warp(), !dbg !84
  fence syncscope("warp") acquire, !dbg !85
  %conv = zext nneg i32 %0 to i64
  %conv110 = zext nneg i32 %mul7 to i64
  %mul115 = zext nneg i32 %mul20 to i64
  %.idx = shl nuw nsw i64 %conv110, 8
  %invariant.gep = getelementptr inbounds i8, ptr addrspace(4) %K.coerce, i64 %.idx, !dbg !86
  %invariant.gep890 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %mul115, !dbg !86
  %31 = and i32 %3, 8
  %.idx924 = shl nuw nsw i64 %conv, 18, !dbg !87
  %32 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep890, i64 %.idx924, !dbg !87
  %qk_fetch.sroa.0.0.copyload1919 = load i64, ptr addrspace(4) %32, align 16, !dbg !88
  %qk_fetch.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 8, !dbg !88
  %qk_fetch.sroa.26.0.copyload1930 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0..sroa_idx, align 8, !dbg !88
  %33 = shl nuw nsw i32 %31, 9, !dbg !89
  %34 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %33, !dbg !89
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(3) %34, i32 %mul37, !dbg !89
  %36 = getelementptr inbounds i8, ptr addrspace(3) %35, i32 %.idx922, !dbg !89
  %add.ptr158 = getelementptr inbounds i8, ptr addrspace(3) %36, i32 %add.ptr57.idx, !dbg !89
  store i64 %qk_fetch.sroa.0.0.copyload1919, ptr addrspace(3) %add.ptr158, align 8, !dbg !90
  %add.ptr158.1 = getelementptr inbounds i8, ptr addrspace(3) %36, i32 %add.ptr57.idx.1, !dbg !89
  store i64 %qk_fetch.sroa.26.0.copyload1930, ptr addrspace(3) %add.ptr158.1, align 8, !dbg !90
  %gep891.1 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 1024, !dbg !87
  %qk_fetch.sroa.0.0.copyload1923 = load i64, ptr addrspace(4) %gep891.1, align 16, !dbg !88
  %qk_fetch.sroa.26.0.gep891.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 1032, !dbg !88
  %qk_fetch.sroa.26.0.copyload1934 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep891.1.sroa_idx, align 8, !dbg !88
  %37 = shl nuw nsw i32 %31, 9, !dbg !89
  %38 = or disjoint i32 %37, 512, !dbg !89
  %39 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %38, !dbg !89
  %40 = getelementptr inbounds %struct.__half, ptr addrspace(3) %39, i32 %mul37, !dbg !89
  %41 = getelementptr inbounds i8, ptr addrspace(3) %40, i32 %.idx922.1938, !dbg !89
  %add.ptr158.1947 = getelementptr inbounds i8, ptr addrspace(3) %41, i32 %add.ptr57.idx, !dbg !89
  store i64 %qk_fetch.sroa.0.0.copyload1923, ptr addrspace(3) %add.ptr158.1947, align 8, !dbg !90
  %add.ptr158.1.1 = getelementptr inbounds i8, ptr addrspace(3) %41, i32 %add.ptr57.idx.1, !dbg !89
  store i64 %qk_fetch.sroa.26.0.copyload1934, ptr addrspace(3) %add.ptr158.1.1, align 8, !dbg !90
  %gep891.2 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 2048, !dbg !87
  %qk_fetch.sroa.0.0.copyload1924 = load i64, ptr addrspace(4) %gep891.2, align 16, !dbg !88
  %qk_fetch.sroa.26.0.gep891.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 2056, !dbg !88
  %qk_fetch.sroa.26.0.copyload1935 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep891.2.sroa_idx, align 8, !dbg !88
  %shr149836.2 = and i32 %and51, 1
  %42 = shl nuw nsw i32 %31, 9, !dbg !89
  %43 = or disjoint i32 %42, 1024, !dbg !89
  %44 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %43, !dbg !89
  %45 = getelementptr inbounds %struct.__half, ptr addrspace(3) %44, i32 %mul37, !dbg !89
  %46 = getelementptr inbounds i8, ptr addrspace(3) %45, i32 %.idx922, !dbg !89
  %47 = shl nuw nsw i32 %shr149836.2, 3, !dbg !89
  %add.ptr158.idx.2 = xor i32 %47, 8, !dbg !89
  %add.ptr158.2 = getelementptr inbounds i8, ptr addrspace(3) %46, i32 %add.ptr158.idx.2, !dbg !89
  store i64 %qk_fetch.sroa.0.0.copyload1924, ptr addrspace(3) %add.ptr158.2, align 8, !dbg !90
  %add.ptr158.idx.1.2 = shl nuw nsw i32 %shr149836.2, 3, !dbg !89
  %add.ptr158.1.2 = getelementptr inbounds i8, ptr addrspace(3) %46, i32 %add.ptr158.idx.1.2, !dbg !89
  store i64 %qk_fetch.sroa.26.0.copyload1935, ptr addrspace(3) %add.ptr158.1.2, align 8, !dbg !90
  %gep891.3 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 3072, !dbg !87
  %qk_fetch.sroa.0.0.copyload1925 = load i64, ptr addrspace(4) %gep891.3, align 16, !dbg !88
  %qk_fetch.sroa.26.0.gep891.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 3080, !dbg !88
  %qk_fetch.sroa.26.0.copyload1936 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep891.3.sroa_idx, align 8, !dbg !88
  %48 = shl nuw nsw i32 %31, 9, !dbg !89
  %49 = or disjoint i32 %48, 1536, !dbg !89
  %50 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %49, !dbg !89
  %51 = getelementptr inbounds %struct.__half, ptr addrspace(3) %50, i32 %mul37, !dbg !89
  %52 = getelementptr inbounds i8, ptr addrspace(3) %51, i32 %.idx922.1938, !dbg !89
  %add.ptr158.3 = getelementptr inbounds i8, ptr addrspace(3) %52, i32 %add.ptr158.idx.2, !dbg !89
  store i64 %qk_fetch.sroa.0.0.copyload1925, ptr addrspace(3) %add.ptr158.3, align 8, !dbg !90
  %add.ptr158.1.3 = getelementptr inbounds i8, ptr addrspace(3) %52, i32 %add.ptr158.idx.1.2, !dbg !89
  store i64 %qk_fetch.sroa.26.0.copyload1936, ptr addrspace(3) %add.ptr158.1.3, align 8, !dbg !90
  %gep891.4 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 4096, !dbg !87
  %qk_fetch.sroa.0.0.copyload1926 = load i64, ptr addrspace(4) %gep891.4, align 16, !dbg !88
  %qk_fetch.sroa.26.0.gep891.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 4104, !dbg !88
  %qk_fetch.sroa.26.0.copyload1937 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep891.4.sroa_idx, align 8, !dbg !88
  %53 = and i32 %and51, 1
  %54 = shl nuw nsw i32 %31, 9, !dbg !89
  %55 = or disjoint i32 %54, 2048, !dbg !89
  %56 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %55, !dbg !89
  %57 = getelementptr inbounds %struct.__half, ptr addrspace(3) %56, i32 %mul37, !dbg !89
  %58 = getelementptr inbounds i8, ptr addrspace(3) %57, i32 %.idx922, !dbg !89
  %add.ptr158.idx.4 = shl nuw nsw i32 %53, 3, !dbg !89
  %add.ptr158.4 = getelementptr inbounds i8, ptr addrspace(3) %58, i32 %add.ptr158.idx.4, !dbg !89
  store i64 %qk_fetch.sroa.0.0.copyload1926, ptr addrspace(3) %add.ptr158.4, align 8, !dbg !90
  %xor154.1.4 = shl nuw nsw i32 %53, 3, !dbg !89
  %add.ptr158.idx.1.4 = xor i32 %xor154.1.4, 8, !dbg !89
  %add.ptr158.1.4 = getelementptr inbounds i8, ptr addrspace(3) %58, i32 %add.ptr158.idx.1.4, !dbg !89
  store i64 %qk_fetch.sroa.26.0.copyload1937, ptr addrspace(3) %add.ptr158.1.4, align 8, !dbg !90
  %gep891.5 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 5120, !dbg !87
  %qk_fetch.sroa.0.0.copyload1927 = load i64, ptr addrspace(4) %gep891.5, align 16, !dbg !88
  %qk_fetch.sroa.26.0.gep891.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 5128, !dbg !88
  %qk_fetch.sroa.26.0.copyload1938 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep891.5.sroa_idx, align 8, !dbg !88
  %59 = shl nuw nsw i32 %31, 9, !dbg !89
  %60 = or disjoint i32 %59, 2560, !dbg !89
  %61 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %60, !dbg !89
  %62 = getelementptr inbounds %struct.__half, ptr addrspace(3) %61, i32 %mul37, !dbg !89
  %63 = getelementptr inbounds i8, ptr addrspace(3) %62, i32 %.idx922.1938, !dbg !89
  %add.ptr158.5 = getelementptr inbounds i8, ptr addrspace(3) %63, i32 %add.ptr158.idx.4, !dbg !89
  store i64 %qk_fetch.sroa.0.0.copyload1927, ptr addrspace(3) %add.ptr158.5, align 8, !dbg !90
  %add.ptr158.1.5 = getelementptr inbounds i8, ptr addrspace(3) %63, i32 %add.ptr158.idx.1.4, !dbg !89
  store i64 %qk_fetch.sroa.26.0.copyload1938, ptr addrspace(3) %add.ptr158.1.5, align 8, !dbg !90
  %gep891.6 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 6144, !dbg !87
  %qk_fetch.sroa.0.0.copyload1928 = load i64, ptr addrspace(4) %gep891.6, align 16, !dbg !88
  %qk_fetch.sroa.26.0.gep891.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 6152, !dbg !88
  %qk_fetch.sroa.26.0.copyload1939 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep891.6.sroa_idx, align 8, !dbg !88
  %shr149836.6 = and i32 %and51, 1
  %64 = shl nuw nsw i32 %31, 9, !dbg !89
  %65 = or disjoint i32 %64, 3072, !dbg !89
  %66 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %65, !dbg !89
  %67 = getelementptr inbounds %struct.__half, ptr addrspace(3) %66, i32 %mul37, !dbg !89
  %68 = getelementptr inbounds i8, ptr addrspace(3) %67, i32 %.idx922, !dbg !89
  %69 = shl nuw nsw i32 %shr149836.6, 3, !dbg !89
  %add.ptr158.idx.6 = xor i32 %69, 8, !dbg !89
  %add.ptr158.6 = getelementptr inbounds i8, ptr addrspace(3) %68, i32 %add.ptr158.idx.6, !dbg !89
  store i64 %qk_fetch.sroa.0.0.copyload1928, ptr addrspace(3) %add.ptr158.6, align 8, !dbg !90
  %add.ptr158.idx.1.6 = shl nuw nsw i32 %shr149836.6, 3, !dbg !89
  %add.ptr158.1.6 = getelementptr inbounds i8, ptr addrspace(3) %68, i32 %add.ptr158.idx.1.6, !dbg !89
  store i64 %qk_fetch.sroa.26.0.copyload1939, ptr addrspace(3) %add.ptr158.1.6, align 8, !dbg !90
  %gep891.7 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 7168, !dbg !87
  %qk_fetch.sroa.0.0.copyload1929 = load i64, ptr addrspace(4) %gep891.7, align 16, !dbg !88
  %qk_fetch.sroa.26.0.gep891.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 7176, !dbg !88
  %qk_fetch.sroa.26.0.copyload1940 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep891.7.sroa_idx, align 8, !dbg !88
  %70 = shl nuw nsw i32 %31, 9, !dbg !89
  %71 = or disjoint i32 %70, 3584, !dbg !89
  %72 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %71, !dbg !89
  %73 = getelementptr inbounds %struct.__half, ptr addrspace(3) %72, i32 %mul37, !dbg !89
  %74 = getelementptr inbounds i8, ptr addrspace(3) %73, i32 %.idx922.1938, !dbg !89
  %add.ptr158.7 = getelementptr inbounds i8, ptr addrspace(3) %74, i32 %add.ptr158.idx.6, !dbg !89
  store i64 %qk_fetch.sroa.0.0.copyload1929, ptr addrspace(3) %add.ptr158.7, align 8, !dbg !90
  %add.ptr158.1.7 = getelementptr inbounds i8, ptr addrspace(3) %74, i32 %add.ptr158.idx.1.6, !dbg !89
  store i64 %qk_fetch.sroa.26.0.copyload1940, ptr addrspace(3) %add.ptr158.1.7, align 8, !dbg !90
  fence syncscope("warp") release, !dbg !91
  tail call void @llvm.mxc.barrier.warp(), !dbg !94
  fence syncscope("warp") acquire, !dbg !95
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr93, align 8, !dbg !96
  %75 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %21, <4 x float> zeroinitializer), !dbg !97
  %add.ptr215.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93, i32 2048, !dbg !98
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr215.1, align 8, !dbg !96
  %76 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %21, <4 x float> zeroinitializer), !dbg !97
  %k_local.sroa.0.0.copyload.1950 = load <4 x half>, ptr addrspace(3) %add.ptr93.1, align 8, !dbg !96
  %77 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1950, <4 x half> %22, <4 x float> %75), !dbg !97
  %add.ptr215.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93.1, i32 2048, !dbg !98
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.1, align 8, !dbg !96
  %78 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %22, <4 x float> %76), !dbg !97
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr93.2, align 8, !dbg !96
  %79 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %23, <4 x float> %77), !dbg !97
  %add.ptr215.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93.2, i32 2048, !dbg !98
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.2, align 8, !dbg !96
  %80 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %23, <4 x float> %78), !dbg !97
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr93.3, align 8, !dbg !96
  %81 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %24, <4 x float> %79), !dbg !97
  %add.ptr215.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93.3, i32 2048, !dbg !98
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.3, align 8, !dbg !96
  %82 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %24, <4 x float> %80), !dbg !97
  %add192.4 = or disjoint i32 %mul69, 2048
  %83 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add192.4, !dbg !98
  %84 = getelementptr inbounds i8, ptr addrspace(3) %83, i32 %.idx923.4, !dbg !98
  %85 = getelementptr inbounds i8, ptr addrspace(3) %84, i32 %add.ptr93.idx, !dbg !98
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %85, align 8, !dbg !96
  %86 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %27, <4 x float> %81), !dbg !97
  %add.ptr215.1.4 = getelementptr inbounds i8, ptr addrspace(3) %85, i32 2048, !dbg !98
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.4, align 8, !dbg !96
  %87 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %27, <4 x float> %82), !dbg !97
  %88 = getelementptr inbounds i8, ptr addrspace(3) %84, i32 %add.ptr93.idx.1, !dbg !98
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %88, align 8, !dbg !96
  %89 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %28, <4 x float> %86), !dbg !97
  %add.ptr215.1.5 = getelementptr inbounds i8, ptr addrspace(3) %88, i32 2048, !dbg !98
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.5, align 8, !dbg !96
  %90 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %28, <4 x float> %87), !dbg !97
  %91 = getelementptr inbounds i8, ptr addrspace(3) %84, i32 %add.ptr93.idx.2, !dbg !98
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %91, align 8, !dbg !96
  %92 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %29, <4 x float> %89), !dbg !97
  %add.ptr215.1.6 = getelementptr inbounds i8, ptr addrspace(3) %91, i32 2048, !dbg !98
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.6, align 8, !dbg !96
  %93 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %29, <4 x float> %90), !dbg !97
  %94 = getelementptr inbounds i8, ptr addrspace(3) %84, i32 %add.ptr93.idx.3, !dbg !98
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %94, align 8, !dbg !96
  %95 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %30, <4 x float> %92), !dbg !97
  %add.ptr215.1.7 = getelementptr inbounds i8, ptr addrspace(3) %94, i32 2048, !dbg !98
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.7, align 8, !dbg !96
  %96 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %30, <4 x float> %93), !dbg !97
  %97 = lshr i32 %3, 2
  %mul246 = and i32 %97, 252
  %add247 = add nuw nsw i32 %mul7, %mul246
  %cmp251.not = icmp sgt i32 %add247, %1, !dbg !99
  %scores.sroa.0.0.vec.extract = extractelement <4 x float> %95, i64 0
  %spec.select = select i1 %cmp251.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract, !dbg !100
  %cmp251.not.1.not = icmp slt i32 %add247, %1, !dbg !99
  %scores.sroa.0.4.vec.extract = extractelement <4 x float> %95, i64 1, !dbg !100
  %condval.0.1 = select i1 %cmp251.not.1.not, float %scores.sroa.0.4.vec.extract, float 0xFFF0000000000000, !dbg !100
  %add249.2 = or disjoint i32 %add247, 2, !dbg !101
  %cmp251.not.2 = icmp sgt i32 %add249.2, %1, !dbg !99
  %scores.sroa.0.8.vec.extract = extractelement <4 x float> %95, i64 2, !dbg !100
  %condval.0.2 = select i1 %cmp251.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract, !dbg !100
  %add249.3 = or disjoint i32 %add247, 3, !dbg !101
  %cmp251.not.3 = icmp sgt i32 %add249.3, %1, !dbg !99
  %scores.sroa.0.12.vec.extract = extractelement <4 x float> %95, i64 3, !dbg !100
  %condval.0.3 = select i1 %cmp251.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract, !dbg !100
  %add248.1 = add nuw nsw i32 %add247, 16
  %cmp251.not.1951 = icmp sgt i32 %add248.1, %1, !dbg !99
  %scores.sroa.38.16.vec.extract = extractelement <4 x float> %96, i64 0, !dbg !100
  %condval.0.1954 = select i1 %cmp251.not.1951, float 0xFFF0000000000000, float %scores.sroa.38.16.vec.extract, !dbg !100
  %add249.1.1 = add nuw nsw i32 %add247, 17, !dbg !101
  %cmp251.not.1.1 = icmp sgt i32 %add249.1.1, %1, !dbg !99
  %scores.sroa.38.20.vec.extract = extractelement <4 x float> %96, i64 1, !dbg !100
  %condval.0.1.1 = select i1 %cmp251.not.1.1, float 0xFFF0000000000000, float %scores.sroa.38.20.vec.extract, !dbg !100
  %add249.2.1 = add nuw nsw i32 %add247, 18, !dbg !101
  %cmp251.not.2.1 = icmp sgt i32 %add249.2.1, %1, !dbg !99
  %scores.sroa.38.24.vec.extract = extractelement <4 x float> %96, i64 2, !dbg !100
  %condval.0.2.1 = select i1 %cmp251.not.2.1, float 0xFFF0000000000000, float %scores.sroa.38.24.vec.extract, !dbg !100
  %add249.3.1 = add nuw nsw i32 %add247, 19, !dbg !101
  %cmp251.not.3.1 = icmp sgt i32 %add249.3.1, %1, !dbg !99
  %scores.sroa.38.28.vec.extract = extractelement <4 x float> %96, i64 3, !dbg !100
  %condval.0.3.1 = select i1 %cmp251.not.3.1, float 0xFFF0000000000000, float %scores.sroa.38.28.vec.extract, !dbg !100
  %98 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !102
  %99 = tail call contract noundef float @llvm.maxnum.f32(float %98, float %condval.0.1), !dbg !102
  %100 = tail call contract noundef float @llvm.maxnum.f32(float %99, float %condval.0.2), !dbg !102
  %101 = tail call contract noundef float @llvm.maxnum.f32(float %100, float %condval.0.3), !dbg !102
  %102 = tail call contract noundef float @llvm.maxnum.f32(float %101, float %condval.0.1954), !dbg !102
  %103 = tail call contract noundef float @llvm.maxnum.f32(float %102, float %condval.0.1.1), !dbg !102
  %104 = tail call contract noundef float @llvm.maxnum.f32(float %103, float %condval.0.2.1), !dbg !102
  %105 = tail call contract noundef float @llvm.maxnum.f32(float %104, float %condval.0.3.1), !dbg !102
  %106 = bitcast float %105 to i32, !dbg !106
  %107 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !109
  %108 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %107) #11, !dbg !114
  %xor.i.i = xor i32 %108, 32, !dbg !115
  %109 = and i32 %108, -64, !dbg !116
  %and.i.i = add nsw i32 %109, 64, !dbg !116
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !117
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %108, !dbg !118
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !119
  %110 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %106), !dbg !120
  %111 = bitcast i32 %110 to float, !dbg !121
  %112 = tail call contract noundef float @llvm.maxnum.f32(float %105, float %111), !dbg !122
  %113 = bitcast float %112 to i32, !dbg !124
  %114 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !126
  %115 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %114) #11, !dbg !129
  %xor.i.i838 = xor i32 %115, 16, !dbg !130
  %116 = and i32 %115, -64, !dbg !131
  %and.i.i839 = add nsw i32 %116, 64, !dbg !131
  %cmp.not.i.i840 = icmp slt i32 %xor.i.i838, %and.i.i839, !dbg !132
  %cond.i.i841 = select i1 %cmp.not.i.i840, i32 %xor.i.i838, i32 %115, !dbg !133
  %shl.i.i842 = shl i32 %cond.i.i841, 2, !dbg !134
  %117 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i842, i32 %113), !dbg !135
  %118 = bitcast i32 %117 to float, !dbg !136
  %119 = tail call contract noundef float @llvm.maxnum.f32(float %112, float %118), !dbg !137
  %sub = fsub contract float %spec.select, %119, !dbg !139
  %sub309 = fsub contract float %condval.0.1, %119, !dbg !140
  %sub312 = fsub contract float %condval.0.2, %119, !dbg !141
  %sub315 = fsub contract float %condval.0.3, %119, !dbg !142
  %mul320 = fmul contract float %sub, 0x3FC0527DC0000000, !dbg !143
  %mul324 = fmul contract float %sub309, 0x3FC0527DC0000000, !dbg !144
  %mul328 = fmul contract float %sub312, 0x3FC0527DC0000000, !dbg !145
  %mul332 = fmul contract float %sub315, 0x3FC0527DC0000000, !dbg !146
  %add337 = fadd contract float %mul320, 8.000000e+00, !dbg !147
  %add341 = fadd contract float %mul324, 8.000000e+00, !dbg !148
  %add345 = fadd contract float %mul328, 8.000000e+00, !dbg !149
  %add349 = fadd contract float %mul332, 8.000000e+00, !dbg !150
  %cmp.i.i = fcmp contract olt float %add337, -1.260000e+02, !dbg !151
  %cond.i.i843 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i = fadd contract float %add337, %cond.i.i843, !dbg !151
  %120 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !151
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i = fmul contract float %cond2.i.i, %120, !dbg !151
  %cmp.i.i844 = fcmp contract olt float %add341, -1.260000e+02, !dbg !154
  %cond.i.i845 = select contract i1 %cmp.i.i844, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i846 = fadd contract float %add341, %cond.i.i845, !dbg !154
  %121 = tail call contract float @llvm.exp2.f32(float %add.i.i846), !dbg !154
  %cond2.i.i847 = select contract i1 %cmp.i.i844, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i848 = fmul contract float %cond2.i.i847, %121, !dbg !154
  %cmp.i.i849 = fcmp contract olt float %add345, -1.260000e+02, !dbg !156
  %cond.i.i850 = select contract i1 %cmp.i.i849, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i851 = fadd contract float %add345, %cond.i.i850, !dbg !156
  %122 = tail call contract float @llvm.exp2.f32(float %add.i.i851), !dbg !156
  %cond2.i.i852 = select contract i1 %cmp.i.i849, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i853 = fmul contract float %cond2.i.i852, %122, !dbg !156
  %cmp.i.i854 = fcmp contract olt float %add349, -1.260000e+02, !dbg !158
  %cond.i.i855 = select contract i1 %cmp.i.i854, float 6.400000e+01, float 0.000000e+00, !dbg !158
  %add.i.i856 = fadd contract float %add349, %cond.i.i855, !dbg !158
  %123 = tail call contract float @llvm.exp2.f32(float %add.i.i856), !dbg !158
  %cond2.i.i857 = select contract i1 %cmp.i.i854, float 0x3BF0000000000000, float 1.000000e+00, !dbg !158
  %mul.i.i858 = fmul contract float %cond2.i.i857, %123, !dbg !158
  %124 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !160, !noalias !168
  %125 = fptrunc float %mul.i.i to half, !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %124), !dbg !160, !noalias !168
  %126 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !168
  %127 = fptrunc float %mul.i.i848 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %126), !dbg !173, !noalias !168
  %128 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !175, !noalias !179
  %129 = fptrunc float %mul.i.i853 to half, !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %128), !dbg !175, !noalias !179
  %130 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !184, !noalias !179
  %131 = fptrunc float %mul.i.i858 to half, !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %130), !dbg !184, !noalias !179
  %132 = insertelement <4 x half> poison, half %125, i64 0, !dbg !186
  %133 = insertelement <4 x half> %132, half %127, i64 1, !dbg !186
  %134 = insertelement <4 x half> %133, half %129, i64 2, !dbg !186
  %135 = insertelement <4 x half> %134, half %131, i64 3, !dbg !186
  %sub.1 = fsub contract float %condval.0.1954, %119, !dbg !139
  %sub309.1 = fsub contract float %condval.0.1.1, %119, !dbg !140
  %sub312.1 = fsub contract float %condval.0.2.1, %119, !dbg !141
  %sub315.1 = fsub contract float %condval.0.3.1, %119, !dbg !142
  %mul320.1 = fmul contract float %sub.1, 0x3FC0527DC0000000, !dbg !143
  %mul324.1 = fmul contract float %sub309.1, 0x3FC0527DC0000000, !dbg !144
  %mul328.1 = fmul contract float %sub312.1, 0x3FC0527DC0000000, !dbg !145
  %mul332.1 = fmul contract float %sub315.1, 0x3FC0527DC0000000, !dbg !146
  %add337.1 = fadd contract float %mul320.1, 8.000000e+00, !dbg !147
  %add341.1 = fadd contract float %mul324.1, 8.000000e+00, !dbg !148
  %add345.1 = fadd contract float %mul328.1, 8.000000e+00, !dbg !149
  %add349.1 = fadd contract float %mul332.1, 8.000000e+00, !dbg !150
  %cmp.i.i.1 = fcmp contract olt float %add337.1, -1.260000e+02, !dbg !151
  %cond.i.i843.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i.1 = fadd contract float %add337.1, %cond.i.i843.1, !dbg !151
  %136 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !151
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %136, !dbg !151
  %cmp.i.i844.1 = fcmp contract olt float %add341.1, -1.260000e+02, !dbg !154
  %cond.i.i845.1 = select contract i1 %cmp.i.i844.1, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i846.1 = fadd contract float %add341.1, %cond.i.i845.1, !dbg !154
  %137 = tail call contract float @llvm.exp2.f32(float %add.i.i846.1), !dbg !154
  %cond2.i.i847.1 = select contract i1 %cmp.i.i844.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i848.1 = fmul contract float %cond2.i.i847.1, %137, !dbg !154
  %cmp.i.i849.1 = fcmp contract olt float %add345.1, -1.260000e+02, !dbg !156
  %cond.i.i850.1 = select contract i1 %cmp.i.i849.1, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i851.1 = fadd contract float %add345.1, %cond.i.i850.1, !dbg !156
  %138 = tail call contract float @llvm.exp2.f32(float %add.i.i851.1), !dbg !156
  %cond2.i.i852.1 = select contract i1 %cmp.i.i849.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i853.1 = fmul contract float %cond2.i.i852.1, %138, !dbg !156
  %cmp.i.i854.1 = fcmp contract olt float %add349.1, -1.260000e+02, !dbg !158
  %cond.i.i855.1 = select contract i1 %cmp.i.i854.1, float 6.400000e+01, float 0.000000e+00, !dbg !158
  %add.i.i856.1 = fadd contract float %add349.1, %cond.i.i855.1, !dbg !158
  %139 = tail call contract float @llvm.exp2.f32(float %add.i.i856.1), !dbg !158
  %cond2.i.i857.1 = select contract i1 %cmp.i.i854.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !158
  %mul.i.i858.1 = fmul contract float %cond2.i.i857.1, %139, !dbg !158
  %140 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !160, !noalias !168
  %141 = fptrunc float %mul.i.i.1 to half, !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %140), !dbg !160, !noalias !168
  %142 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !168
  %143 = fptrunc float %mul.i.i848.1 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %142), !dbg !173, !noalias !168
  %144 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !175, !noalias !179
  %145 = fptrunc float %mul.i.i853.1 to half, !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %144), !dbg !175, !noalias !179
  %146 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !184, !noalias !179
  %147 = fptrunc float %mul.i.i858.1 to half, !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %146), !dbg !184, !noalias !179
  %148 = insertelement <4 x half> poison, half %141, i64 0, !dbg !186
  %149 = insertelement <4 x half> %148, half %143, i64 1, !dbg !186
  %150 = insertelement <4 x half> %149, half %145, i64 2, !dbg !186
  %151 = insertelement <4 x half> %150, half %147, i64 3, !dbg !186
  %conv.i.i = fpext half %125 to float, !dbg !187
  %add387 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !192
  %conv.i.i.1 = fpext half %127 to float, !dbg !187
  %add387.1 = fadd contract float %add387, %conv.i.i.1, !dbg !192
  %conv.i.i.2 = fpext half %129 to float, !dbg !187
  %add387.2 = fadd contract float %add387.1, %conv.i.i.2, !dbg !192
  %conv.i.i.3 = fpext half %131 to float, !dbg !187
  %add387.3 = fadd contract float %add387.2, %conv.i.i.3, !dbg !192
  %conv.i.i.4 = fpext half %141 to float, !dbg !187
  %add387.4 = fadd contract float %add387.3, %conv.i.i.4, !dbg !192
  %conv.i.i.5 = fpext half %143 to float, !dbg !187
  %add387.5 = fadd contract float %add387.4, %conv.i.i.5, !dbg !192
  %conv.i.i.6 = fpext half %145 to float, !dbg !187
  %add387.6 = fadd contract float %add387.5, %conv.i.i.6, !dbg !192
  %conv.i.i.7 = fpext half %147 to float, !dbg !187
  %add387.7 = fadd contract float %add387.6, %conv.i.i.7, !dbg !192
  %152 = bitcast float %add387.7 to i32, !dbg !193
  %153 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !195
  %154 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %153) #11, !dbg !198
  %xor.i.i860 = xor i32 %154, 32, !dbg !199
  %155 = and i32 %154, -64, !dbg !200
  %and.i.i861 = add nsw i32 %155, 64, !dbg !200
  %cmp.not.i.i862 = icmp slt i32 %xor.i.i860, %and.i.i861, !dbg !201
  %cond.i.i863 = select i1 %cmp.not.i.i862, i32 %xor.i.i860, i32 %154, !dbg !202
  %shl.i.i864 = shl i32 %cond.i.i863, 2, !dbg !203
  %156 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i864, i32 %152), !dbg !204
  %157 = bitcast i32 %156 to float, !dbg !205
  %add395 = fadd contract float %add387.7, %157, !dbg !206
  %158 = bitcast float %add395 to i32, !dbg !207
  %159 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !209
  %160 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %159) #11, !dbg !212
  %xor.i.i865 = xor i32 %160, 16, !dbg !213
  %161 = and i32 %160, -64, !dbg !214
  %and.i.i866 = add nsw i32 %161, 64, !dbg !214
  %cmp.not.i.i867 = icmp slt i32 %xor.i.i865, %and.i.i866, !dbg !215
  %cond.i.i868 = select i1 %cmp.not.i.i867, i32 %xor.i.i865, i32 %160, !dbg !216
  %shl.i.i869 = shl i32 %cond.i.i868, 2, !dbg !217
  %162 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i869, i32 %158), !dbg !218
  %163 = bitcast i32 %162 to float, !dbg !219
  fence syncscope("warp") release, !dbg !220
  tail call void @llvm.mxc.barrier.warp(), !dbg !223
  fence syncscope("warp") acquire, !dbg !224
  %mul416 = shl nuw nsw i64 %conv, 17
  %164 = shl nuw nsw i32 %3, 5
  %165 = and i32 %164, 32512
  %mul423 = zext nneg i32 %165 to i64
  %add419 = or disjoint i64 %mul416, %mul423
  %166 = and i32 %mul20, 56
  %mul437 = zext nneg i32 %166 to i64
  %invariant.gep903 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %mul437
  %mul471 = and i32 %164, 224
  %xor479 = xor i32 %and51, %and40
  %167 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep903, i64 %add419, !dbg !225
  %168 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 %.idx, !dbg !225
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %168, align 16, !dbg !226
  %v_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 2, !dbg !226
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4, !dbg !226
  %v_fetch.sroa.14.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx, align 4, !dbg !226
  %v_fetch.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 6, !dbg !226
  %v_fetch.sroa.18.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 8, !dbg !226
  %v_fetch.sroa.22.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx, align 8, !dbg !226
  %v_fetch.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 10, !dbg !226
  %v_fetch.sroa.26.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 12, !dbg !226
  %v_fetch.sroa.30.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx, align 4, !dbg !226
  %v_fetch.sroa.34.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 14, !dbg !226
  %v_fetch.sroa.34.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx, align 2, !dbg !226, !tbaa !30
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 256, !dbg !225
  %v_fetch.sroa.38.16.copyload = load i16, ptr addrspace(4) %gep.1, align 16, !dbg !226
  %v_fetch.sroa.46.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 258, !dbg !226
  %v_fetch.sroa.46.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.sroa_idx, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 260, !dbg !226
  %v_fetch.sroa.50.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.sroa_idx, align 4, !dbg !226
  %v_fetch.sroa.54.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 262, !dbg !226
  %v_fetch.sroa.54.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.sroa_idx, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 264, !dbg !226
  %v_fetch.sroa.58.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.sroa_idx, align 8, !dbg !226
  %v_fetch.sroa.62.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 266, !dbg !226
  %v_fetch.sroa.62.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.sroa_idx, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 268, !dbg !226
  %v_fetch.sroa.66.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.sroa_idx, align 4, !dbg !226
  %v_fetch.sroa.70.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 270, !dbg !226
  %v_fetch.sroa.70.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.sroa_idx, align 2, !dbg !226, !tbaa !30
  %169 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul471, !dbg !227
  %add.ptr484.idx = shl nuw nsw i32 %xor479, 2, !dbg !227
  %add.ptr484 = getelementptr inbounds i8, ptr addrspace(3) %169, i32 %add.ptr484.idx, !dbg !227
  %v_column.sroa.66.0.insert.ext = zext i16 %v_fetch.sroa.38.16.copyload to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift = shl nuw i32 %v_column.sroa.66.0.insert.ext, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.66.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr484, align 4, !dbg !228, !tbaa !30
  %170 = or disjoint i32 %mul471, 256, !dbg !229
  %171 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %170, !dbg !227
  %xor480.1 = shl nuw nsw i32 %xor479, 2, !dbg !227
  %add.ptr484.idx.1 = xor i32 %xor480.1, 4, !dbg !227
  %add.ptr484.1 = getelementptr inbounds i8, ptr addrspace(3) %171, i32 %add.ptr484.idx.1, !dbg !227
  %v_column.sroa.66.0.insert.ext1313 = zext i16 %v_fetch.sroa.46.16.copyload to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1314 = shl nuw i32 %v_column.sroa.66.0.insert.ext1313, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1189 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1191 = or disjoint i32 %v_column.sroa.66.0.insert.shift1314, %v_column.sroa.0.0.insert.ext1189, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1191, ptr addrspace(3) %add.ptr484.1, align 4, !dbg !228, !tbaa !30
  %172 = or disjoint i32 %mul471, 512, !dbg !229
  %173 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %172, !dbg !227
  %xor480.2 = shl nuw nsw i32 %xor479, 2, !dbg !227
  %add.ptr484.idx.2 = xor i32 %xor480.2, 8, !dbg !227
  %add.ptr484.2 = getelementptr inbounds i8, ptr addrspace(3) %173, i32 %add.ptr484.idx.2, !dbg !227
  %v_column.sroa.66.0.insert.ext1318 = zext i16 %v_fetch.sroa.50.16.copyload to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1319 = shl nuw i32 %v_column.sroa.66.0.insert.ext1318, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1193 = zext i16 %v_fetch.sroa.14.0.copyload to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1195 = or disjoint i32 %v_column.sroa.66.0.insert.shift1319, %v_column.sroa.0.0.insert.ext1193, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1195, ptr addrspace(3) %add.ptr484.2, align 4, !dbg !228, !tbaa !30
  %174 = or disjoint i32 %mul471, 768, !dbg !229
  %175 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %174, !dbg !227
  %xor480.3 = shl nuw nsw i32 %xor479, 2, !dbg !227
  %add.ptr484.idx.3 = xor i32 %xor480.3, 12, !dbg !227
  %add.ptr484.3 = getelementptr inbounds i8, ptr addrspace(3) %175, i32 %add.ptr484.idx.3, !dbg !227
  %v_column.sroa.66.0.insert.ext1323 = zext i16 %v_fetch.sroa.54.16.copyload to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1324 = shl nuw i32 %v_column.sroa.66.0.insert.ext1323, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1197 = zext i16 %v_fetch.sroa.18.0.copyload to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1199 = or disjoint i32 %v_column.sroa.66.0.insert.shift1324, %v_column.sroa.0.0.insert.ext1197, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1199, ptr addrspace(3) %add.ptr484.3, align 4, !dbg !228, !tbaa !30
  %176 = or disjoint i32 %mul471, 1024, !dbg !229
  %177 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %176, !dbg !227
  %xor480.4 = shl nuw nsw i32 %xor479, 2, !dbg !227
  %add.ptr484.idx.4 = xor i32 %xor480.4, 16, !dbg !227
  %add.ptr484.4 = getelementptr inbounds i8, ptr addrspace(3) %177, i32 %add.ptr484.idx.4, !dbg !227
  %v_column.sroa.66.0.insert.ext1328 = zext i16 %v_fetch.sroa.58.16.copyload to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1329 = shl nuw i32 %v_column.sroa.66.0.insert.ext1328, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1201 = zext i16 %v_fetch.sroa.22.0.copyload to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1203 = or disjoint i32 %v_column.sroa.66.0.insert.shift1329, %v_column.sroa.0.0.insert.ext1201, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1203, ptr addrspace(3) %add.ptr484.4, align 4, !dbg !228, !tbaa !30
  %178 = or disjoint i32 %mul471, 1280, !dbg !229
  %179 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %178, !dbg !227
  %xor480.5 = shl nuw nsw i32 %xor479, 2, !dbg !227
  %add.ptr484.idx.5 = xor i32 %xor480.5, 20, !dbg !227
  %add.ptr484.5 = getelementptr inbounds i8, ptr addrspace(3) %179, i32 %add.ptr484.idx.5, !dbg !227
  %v_column.sroa.66.0.insert.ext1333 = zext i16 %v_fetch.sroa.62.16.copyload to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1334 = shl nuw i32 %v_column.sroa.66.0.insert.ext1333, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1205 = zext i16 %v_fetch.sroa.26.0.copyload to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1207 = or disjoint i32 %v_column.sroa.66.0.insert.shift1334, %v_column.sroa.0.0.insert.ext1205, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1207, ptr addrspace(3) %add.ptr484.5, align 4, !dbg !228, !tbaa !30
  %180 = or disjoint i32 %mul471, 1536, !dbg !229
  %181 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %180, !dbg !227
  %xor480.6 = shl nuw nsw i32 %xor479, 2, !dbg !227
  %add.ptr484.idx.6 = xor i32 %xor480.6, 24, !dbg !227
  %add.ptr484.6 = getelementptr inbounds i8, ptr addrspace(3) %181, i32 %add.ptr484.idx.6, !dbg !227
  %v_column.sroa.66.0.insert.ext1338 = zext i16 %v_fetch.sroa.66.16.copyload to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1339 = shl nuw i32 %v_column.sroa.66.0.insert.ext1338, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1209 = zext i16 %v_fetch.sroa.30.0.copyload to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1211 = or disjoint i32 %v_column.sroa.66.0.insert.shift1339, %v_column.sroa.0.0.insert.ext1209, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1211, ptr addrspace(3) %add.ptr484.6, align 4, !dbg !228, !tbaa !30
  %182 = or disjoint i32 %mul471, 1792, !dbg !229
  %183 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %182, !dbg !227
  %xor480.7 = shl nuw nsw i32 %xor479, 2, !dbg !227
  %add.ptr484.idx.7 = xor i32 %xor480.7, 28, !dbg !227
  %add.ptr484.7 = getelementptr inbounds i8, ptr addrspace(3) %183, i32 %add.ptr484.idx.7, !dbg !227
  %v_column.sroa.66.0.insert.ext1343 = zext i16 %v_fetch.sroa.70.16.copyload to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1344 = shl nuw i32 %v_column.sroa.66.0.insert.ext1343, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1213 = zext i16 %v_fetch.sroa.34.0.copyload to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1215 = or disjoint i32 %v_column.sroa.66.0.insert.shift1344, %v_column.sroa.0.0.insert.ext1213, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1215, ptr addrspace(3) %add.ptr484.7, align 4, !dbg !228, !tbaa !30
  %184 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 128, !dbg !225
  %v_fetch.sroa.0.0.copyload1470 = load i16, ptr addrspace(4) %184, align 16, !dbg !226
  %v_fetch.sroa.10.0..sroa_idx1473 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 130, !dbg !226
  %v_fetch.sroa.10.0.copyload1474 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1473, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1482 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 132, !dbg !226
  %v_fetch.sroa.14.0.copyload1483 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1482, align 4, !dbg !226
  %v_fetch.sroa.18.0..sroa_idx1491 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 134, !dbg !226
  %v_fetch.sroa.18.0.copyload1492 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1491, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1500 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 136, !dbg !226
  %v_fetch.sroa.22.0.copyload1501 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1500, align 8, !dbg !226
  %v_fetch.sroa.26.0..sroa_idx1509 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 138, !dbg !226
  %v_fetch.sroa.26.0.copyload1510 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1509, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1518 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 140, !dbg !226
  %v_fetch.sroa.30.0.copyload1519 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1518, align 4, !dbg !226
  %v_fetch.sroa.34.0..sroa_idx1527 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 142, !dbg !226
  %v_fetch.sroa.34.0.copyload1528 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1527, align 2, !dbg !226, !tbaa !30
  %gep.1.1 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 384, !dbg !225
  %v_fetch.sroa.38.16.copyload1539 = load i16, ptr addrspace(4) %gep.1.1, align 16, !dbg !226
  %v_fetch.sroa.46.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 386, !dbg !226
  %v_fetch.sroa.46.16.copyload1542 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.1.sroa_idx, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 388, !dbg !226
  %v_fetch.sroa.50.16.copyload1548 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.1.sroa_idx, align 4, !dbg !226
  %v_fetch.sroa.54.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 390, !dbg !226
  %v_fetch.sroa.54.16.copyload1554 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.1.sroa_idx, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 392, !dbg !226
  %v_fetch.sroa.58.16.copyload1560 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.1.sroa_idx, align 8, !dbg !226
  %v_fetch.sroa.62.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 394, !dbg !226
  %v_fetch.sroa.62.16.copyload1566 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.1.sroa_idx, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 396, !dbg !226
  %v_fetch.sroa.66.16.copyload1572 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.1.sroa_idx, align 4, !dbg !226
  %v_fetch.sroa.70.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 398, !dbg !226
  %v_fetch.sroa.70.16.copyload1578 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.1.sroa_idx, align 2, !dbg !226, !tbaa !30
  %185 = or disjoint i32 %mul471, 2048, !dbg !229
  %186 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %185, !dbg !227
  %add.ptr484.1981 = getelementptr inbounds i8, ptr addrspace(3) %186, i32 %add.ptr484.idx, !dbg !227
  %v_column.sroa.66.0.insert.ext1348 = zext i16 %v_fetch.sroa.38.16.copyload1539 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1349 = shl nuw i32 %v_column.sroa.66.0.insert.ext1348, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1217 = zext i16 %v_fetch.sroa.0.0.copyload1470 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1219 = or disjoint i32 %v_column.sroa.66.0.insert.shift1349, %v_column.sroa.0.0.insert.ext1217, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1219, ptr addrspace(3) %add.ptr484.1981, align 4, !dbg !228, !tbaa !30
  %187 = or disjoint i32 %mul471, 2304, !dbg !229
  %188 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %187, !dbg !227
  %add.ptr484.1.1 = getelementptr inbounds i8, ptr addrspace(3) %188, i32 %add.ptr484.idx.1, !dbg !227
  %v_column.sroa.66.0.insert.ext1353 = zext i16 %v_fetch.sroa.46.16.copyload1542 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1354 = shl nuw i32 %v_column.sroa.66.0.insert.ext1353, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1221 = zext i16 %v_fetch.sroa.10.0.copyload1474 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1223 = or disjoint i32 %v_column.sroa.66.0.insert.shift1354, %v_column.sroa.0.0.insert.ext1221, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1223, ptr addrspace(3) %add.ptr484.1.1, align 4, !dbg !228, !tbaa !30
  %189 = or disjoint i32 %mul471, 2560, !dbg !229
  %190 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %189, !dbg !227
  %add.ptr484.2.1 = getelementptr inbounds i8, ptr addrspace(3) %190, i32 %add.ptr484.idx.2, !dbg !227
  %v_column.sroa.66.0.insert.ext1358 = zext i16 %v_fetch.sroa.50.16.copyload1548 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1359 = shl nuw i32 %v_column.sroa.66.0.insert.ext1358, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1225 = zext i16 %v_fetch.sroa.14.0.copyload1483 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1227 = or disjoint i32 %v_column.sroa.66.0.insert.shift1359, %v_column.sroa.0.0.insert.ext1225, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1227, ptr addrspace(3) %add.ptr484.2.1, align 4, !dbg !228, !tbaa !30
  %191 = or disjoint i32 %mul471, 2816, !dbg !229
  %192 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %191, !dbg !227
  %add.ptr484.3.1 = getelementptr inbounds i8, ptr addrspace(3) %192, i32 %add.ptr484.idx.3, !dbg !227
  %v_column.sroa.66.0.insert.ext1363 = zext i16 %v_fetch.sroa.54.16.copyload1554 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1364 = shl nuw i32 %v_column.sroa.66.0.insert.ext1363, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1229 = zext i16 %v_fetch.sroa.18.0.copyload1492 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1231 = or disjoint i32 %v_column.sroa.66.0.insert.shift1364, %v_column.sroa.0.0.insert.ext1229, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1231, ptr addrspace(3) %add.ptr484.3.1, align 4, !dbg !228, !tbaa !30
  %193 = or disjoint i32 %mul471, 3072, !dbg !229
  %194 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %193, !dbg !227
  %add.ptr484.4.1 = getelementptr inbounds i8, ptr addrspace(3) %194, i32 %add.ptr484.idx.4, !dbg !227
  %v_column.sroa.66.0.insert.ext1368 = zext i16 %v_fetch.sroa.58.16.copyload1560 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1369 = shl nuw i32 %v_column.sroa.66.0.insert.ext1368, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1233 = zext i16 %v_fetch.sroa.22.0.copyload1501 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1235 = or disjoint i32 %v_column.sroa.66.0.insert.shift1369, %v_column.sroa.0.0.insert.ext1233, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1235, ptr addrspace(3) %add.ptr484.4.1, align 4, !dbg !228, !tbaa !30
  %195 = or disjoint i32 %mul471, 3328, !dbg !229
  %196 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %195, !dbg !227
  %add.ptr484.5.1 = getelementptr inbounds i8, ptr addrspace(3) %196, i32 %add.ptr484.idx.5, !dbg !227
  %v_column.sroa.66.0.insert.ext1373 = zext i16 %v_fetch.sroa.62.16.copyload1566 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1374 = shl nuw i32 %v_column.sroa.66.0.insert.ext1373, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1237 = zext i16 %v_fetch.sroa.26.0.copyload1510 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1239 = or disjoint i32 %v_column.sroa.66.0.insert.shift1374, %v_column.sroa.0.0.insert.ext1237, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1239, ptr addrspace(3) %add.ptr484.5.1, align 4, !dbg !228, !tbaa !30
  %197 = or disjoint i32 %mul471, 3584, !dbg !229
  %198 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %197, !dbg !227
  %add.ptr484.6.1 = getelementptr inbounds i8, ptr addrspace(3) %198, i32 %add.ptr484.idx.6, !dbg !227
  %v_column.sroa.66.0.insert.ext1378 = zext i16 %v_fetch.sroa.66.16.copyload1572 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1379 = shl nuw i32 %v_column.sroa.66.0.insert.ext1378, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1241 = zext i16 %v_fetch.sroa.30.0.copyload1519 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1243 = or disjoint i32 %v_column.sroa.66.0.insert.shift1379, %v_column.sroa.0.0.insert.ext1241, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1243, ptr addrspace(3) %add.ptr484.6.1, align 4, !dbg !228, !tbaa !30
  %199 = or disjoint i32 %mul471, 3840, !dbg !229
  %200 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %199, !dbg !227
  %add.ptr484.7.1 = getelementptr inbounds i8, ptr addrspace(3) %200, i32 %add.ptr484.idx.7, !dbg !227
  %v_column.sroa.66.0.insert.ext1383 = zext i16 %v_fetch.sroa.70.16.copyload1578 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1384 = shl nuw i32 %v_column.sroa.66.0.insert.ext1383, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1245 = zext i16 %v_fetch.sroa.34.0.copyload1528 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1247 = or disjoint i32 %v_column.sroa.66.0.insert.shift1384, %v_column.sroa.0.0.insert.ext1245, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1247, ptr addrspace(3) %add.ptr484.7.1, align 4, !dbg !228, !tbaa !30
  %narrow = add nuw nsw i32 %and51, 8
  %xor479.1 = xor i32 %narrow, %and40
  %201 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4096, !dbg !225
  %v_fetch.sroa.0.0.copyload1471 = load i16, ptr addrspace(4) %201, align 16, !dbg !226
  %v_fetch.sroa.10.0..sroa_idx1475 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4098, !dbg !226
  %v_fetch.sroa.10.0.copyload1476 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1475, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1484 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4100, !dbg !226
  %v_fetch.sroa.14.0.copyload1485 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1484, align 4, !dbg !226
  %v_fetch.sroa.18.0..sroa_idx1493 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4102, !dbg !226
  %v_fetch.sroa.18.0.copyload1494 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1493, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1502 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4104, !dbg !226
  %v_fetch.sroa.22.0.copyload1503 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1502, align 8, !dbg !226
  %v_fetch.sroa.26.0..sroa_idx1511 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4106, !dbg !226
  %v_fetch.sroa.26.0.copyload1512 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1511, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1520 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4108, !dbg !226
  %v_fetch.sroa.30.0.copyload1521 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1520, align 4, !dbg !226
  %v_fetch.sroa.34.0..sroa_idx1529 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4110, !dbg !226
  %v_fetch.sroa.34.0.copyload1530 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1529, align 2, !dbg !226, !tbaa !30
  %gep.1.1988 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4352, !dbg !225
  %v_fetch.sroa.38.16.copyload1540 = load i16, ptr addrspace(4) %gep.1.1988, align 16, !dbg !226
  %v_fetch.sroa.46.16.gep.1.1988.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4354, !dbg !226
  %v_fetch.sroa.46.16.copyload1543 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.1988.sroa_idx, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.1988.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4356, !dbg !226
  %v_fetch.sroa.50.16.copyload1549 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.1988.sroa_idx, align 4, !dbg !226
  %v_fetch.sroa.54.16.gep.1.1988.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4358, !dbg !226
  %v_fetch.sroa.54.16.copyload1555 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.1988.sroa_idx, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.1988.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4360, !dbg !226
  %v_fetch.sroa.58.16.copyload1561 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.1988.sroa_idx, align 8, !dbg !226
  %v_fetch.sroa.62.16.gep.1.1988.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4362, !dbg !226
  %v_fetch.sroa.62.16.copyload1567 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.1988.sroa_idx, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.1988.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4364, !dbg !226
  %v_fetch.sroa.66.16.copyload1573 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.1988.sroa_idx, align 4, !dbg !226
  %v_fetch.sroa.70.16.gep.1.1988.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4366, !dbg !226
  %v_fetch.sroa.70.16.copyload1579 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.1988.sroa_idx, align 2, !dbg !226, !tbaa !30
  %add.ptr484.idx.1994 = shl nuw nsw i32 %xor479.1, 2, !dbg !227
  %add.ptr484.1995 = getelementptr inbounds i8, ptr addrspace(3) %169, i32 %add.ptr484.idx.1994, !dbg !227
  %v_column.sroa.66.0.insert.ext1388 = zext i16 %v_fetch.sroa.38.16.copyload1540 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1389 = shl nuw i32 %v_column.sroa.66.0.insert.ext1388, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1249 = zext i16 %v_fetch.sroa.0.0.copyload1471 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1251 = or disjoint i32 %v_column.sroa.66.0.insert.shift1389, %v_column.sroa.0.0.insert.ext1249, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1251, ptr addrspace(3) %add.ptr484.1995, align 4, !dbg !228, !tbaa !30
  %xor480.1.11000 = shl nuw nsw i32 %xor479.1, 2, !dbg !227
  %add.ptr484.idx.1.11001 = xor i32 %xor480.1.11000, 4, !dbg !227
  %add.ptr484.1.11002 = getelementptr inbounds i8, ptr addrspace(3) %171, i32 %add.ptr484.idx.1.11001, !dbg !227
  %v_column.sroa.66.0.insert.ext1393 = zext i16 %v_fetch.sroa.46.16.copyload1543 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1394 = shl nuw i32 %v_column.sroa.66.0.insert.ext1393, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1253 = zext i16 %v_fetch.sroa.10.0.copyload1476 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1255 = or disjoint i32 %v_column.sroa.66.0.insert.shift1394, %v_column.sroa.0.0.insert.ext1253, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1255, ptr addrspace(3) %add.ptr484.1.11002, align 4, !dbg !228, !tbaa !30
  %xor480.2.11007 = shl nuw nsw i32 %xor479.1, 2, !dbg !227
  %add.ptr484.idx.2.11008 = xor i32 %xor480.2.11007, 8, !dbg !227
  %add.ptr484.2.11009 = getelementptr inbounds i8, ptr addrspace(3) %173, i32 %add.ptr484.idx.2.11008, !dbg !227
  %v_column.sroa.66.0.insert.ext1398 = zext i16 %v_fetch.sroa.50.16.copyload1549 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1399 = shl nuw i32 %v_column.sroa.66.0.insert.ext1398, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1257 = zext i16 %v_fetch.sroa.14.0.copyload1485 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1259 = or disjoint i32 %v_column.sroa.66.0.insert.shift1399, %v_column.sroa.0.0.insert.ext1257, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1259, ptr addrspace(3) %add.ptr484.2.11009, align 4, !dbg !228, !tbaa !30
  %xor480.3.11014 = shl nuw nsw i32 %xor479.1, 2, !dbg !227
  %add.ptr484.idx.3.11015 = xor i32 %xor480.3.11014, 12, !dbg !227
  %add.ptr484.3.11016 = getelementptr inbounds i8, ptr addrspace(3) %175, i32 %add.ptr484.idx.3.11015, !dbg !227
  %v_column.sroa.66.0.insert.ext1403 = zext i16 %v_fetch.sroa.54.16.copyload1555 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1404 = shl nuw i32 %v_column.sroa.66.0.insert.ext1403, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1261 = zext i16 %v_fetch.sroa.18.0.copyload1494 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1263 = or disjoint i32 %v_column.sroa.66.0.insert.shift1404, %v_column.sroa.0.0.insert.ext1261, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1263, ptr addrspace(3) %add.ptr484.3.11016, align 4, !dbg !228, !tbaa !30
  %xor480.4.11021 = shl nuw nsw i32 %xor479.1, 2, !dbg !227
  %add.ptr484.idx.4.11022 = xor i32 %xor480.4.11021, 16, !dbg !227
  %add.ptr484.4.11023 = getelementptr inbounds i8, ptr addrspace(3) %177, i32 %add.ptr484.idx.4.11022, !dbg !227
  %v_column.sroa.66.0.insert.ext1408 = zext i16 %v_fetch.sroa.58.16.copyload1561 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1409 = shl nuw i32 %v_column.sroa.66.0.insert.ext1408, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1265 = zext i16 %v_fetch.sroa.22.0.copyload1503 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1267 = or disjoint i32 %v_column.sroa.66.0.insert.shift1409, %v_column.sroa.0.0.insert.ext1265, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1267, ptr addrspace(3) %add.ptr484.4.11023, align 4, !dbg !228, !tbaa !30
  %xor480.5.11028 = shl nuw nsw i32 %xor479.1, 2, !dbg !227
  %add.ptr484.idx.5.11029 = xor i32 %xor480.5.11028, 20, !dbg !227
  %add.ptr484.5.11030 = getelementptr inbounds i8, ptr addrspace(3) %179, i32 %add.ptr484.idx.5.11029, !dbg !227
  %v_column.sroa.66.0.insert.ext1413 = zext i16 %v_fetch.sroa.62.16.copyload1567 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1414 = shl nuw i32 %v_column.sroa.66.0.insert.ext1413, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1269 = zext i16 %v_fetch.sroa.26.0.copyload1512 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1271 = or disjoint i32 %v_column.sroa.66.0.insert.shift1414, %v_column.sroa.0.0.insert.ext1269, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1271, ptr addrspace(3) %add.ptr484.5.11030, align 4, !dbg !228, !tbaa !30
  %xor480.6.11035 = shl nuw nsw i32 %xor479.1, 2, !dbg !227
  %add.ptr484.idx.6.11036 = xor i32 %xor480.6.11035, 24, !dbg !227
  %add.ptr484.6.11037 = getelementptr inbounds i8, ptr addrspace(3) %181, i32 %add.ptr484.idx.6.11036, !dbg !227
  %v_column.sroa.66.0.insert.ext1418 = zext i16 %v_fetch.sroa.66.16.copyload1573 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1419 = shl nuw i32 %v_column.sroa.66.0.insert.ext1418, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1273 = zext i16 %v_fetch.sroa.30.0.copyload1521 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1275 = or disjoint i32 %v_column.sroa.66.0.insert.shift1419, %v_column.sroa.0.0.insert.ext1273, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1275, ptr addrspace(3) %add.ptr484.6.11037, align 4, !dbg !228, !tbaa !30
  %xor480.7.11042 = shl nuw nsw i32 %xor479.1, 2, !dbg !227
  %add.ptr484.idx.7.11043 = xor i32 %xor480.7.11042, 28, !dbg !227
  %add.ptr484.7.11044 = getelementptr inbounds i8, ptr addrspace(3) %183, i32 %add.ptr484.idx.7.11043, !dbg !227
  %v_column.sroa.66.0.insert.ext1423 = zext i16 %v_fetch.sroa.70.16.copyload1579 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1424 = shl nuw i32 %v_column.sroa.66.0.insert.ext1423, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1277 = zext i16 %v_fetch.sroa.34.0.copyload1530 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1279 = or disjoint i32 %v_column.sroa.66.0.insert.shift1424, %v_column.sroa.0.0.insert.ext1277, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1279, ptr addrspace(3) %add.ptr484.7.11044, align 4, !dbg !228, !tbaa !30
  %202 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4224, !dbg !225
  %v_fetch.sroa.0.0.copyload1472 = load i16, ptr addrspace(4) %202, align 16, !dbg !226
  %v_fetch.sroa.10.0..sroa_idx1477 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4226, !dbg !226
  %v_fetch.sroa.10.0.copyload1478 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1477, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1486 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4228, !dbg !226
  %v_fetch.sroa.14.0.copyload1487 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1486, align 4, !dbg !226
  %v_fetch.sroa.18.0..sroa_idx1495 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4230, !dbg !226
  %v_fetch.sroa.18.0.copyload1496 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1495, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1504 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4232, !dbg !226
  %v_fetch.sroa.22.0.copyload1505 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1504, align 8, !dbg !226
  %v_fetch.sroa.26.0..sroa_idx1513 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4234, !dbg !226
  %v_fetch.sroa.26.0.copyload1514 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1513, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1522 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4236, !dbg !226
  %v_fetch.sroa.30.0.copyload1523 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1522, align 4, !dbg !226
  %v_fetch.sroa.34.0..sroa_idx1531 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4238, !dbg !226
  %v_fetch.sroa.34.0.copyload1532 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1531, align 2, !dbg !226, !tbaa !30
  %gep.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4480, !dbg !225
  %v_fetch.sroa.38.16.copyload1541 = load i16, ptr addrspace(4) %gep.1.1.1, align 16, !dbg !226
  %v_fetch.sroa.46.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4482, !dbg !226
  %v_fetch.sroa.46.16.copyload1544 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.1.1.sroa_idx, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4484, !dbg !226
  %v_fetch.sroa.50.16.copyload1550 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.1.1.sroa_idx, align 4, !dbg !226
  %v_fetch.sroa.54.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4486, !dbg !226
  %v_fetch.sroa.54.16.copyload1556 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.1.1.sroa_idx, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4488, !dbg !226
  %v_fetch.sroa.58.16.copyload1562 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.1.1.sroa_idx, align 8, !dbg !226
  %v_fetch.sroa.62.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4490, !dbg !226
  %v_fetch.sroa.62.16.copyload1568 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.1.1.sroa_idx, align 2, !dbg !226, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4492, !dbg !226
  %v_fetch.sroa.66.16.copyload1574 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.1.1.sroa_idx, align 4, !dbg !226
  %v_fetch.sroa.70.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4494, !dbg !226
  %v_fetch.sroa.70.16.copyload1580 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.1.1.sroa_idx, align 2, !dbg !226, !tbaa !30
  %add.ptr484.1981.1 = getelementptr inbounds i8, ptr addrspace(3) %186, i32 %add.ptr484.idx.1994, !dbg !227
  %v_column.sroa.66.0.insert.ext1428 = zext i16 %v_fetch.sroa.38.16.copyload1541 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1429 = shl nuw i32 %v_column.sroa.66.0.insert.ext1428, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1281 = zext i16 %v_fetch.sroa.0.0.copyload1472 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1283 = or disjoint i32 %v_column.sroa.66.0.insert.shift1429, %v_column.sroa.0.0.insert.ext1281, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1283, ptr addrspace(3) %add.ptr484.1981.1, align 4, !dbg !228, !tbaa !30
  %add.ptr484.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %188, i32 %add.ptr484.idx.1.11001, !dbg !227
  %v_column.sroa.66.0.insert.ext1433 = zext i16 %v_fetch.sroa.46.16.copyload1544 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1434 = shl nuw i32 %v_column.sroa.66.0.insert.ext1433, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1285 = zext i16 %v_fetch.sroa.10.0.copyload1478 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1287 = or disjoint i32 %v_column.sroa.66.0.insert.shift1434, %v_column.sroa.0.0.insert.ext1285, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1287, ptr addrspace(3) %add.ptr484.1.1.1, align 4, !dbg !228, !tbaa !30
  %add.ptr484.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %190, i32 %add.ptr484.idx.2.11008, !dbg !227
  %v_column.sroa.66.0.insert.ext1438 = zext i16 %v_fetch.sroa.50.16.copyload1550 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1439 = shl nuw i32 %v_column.sroa.66.0.insert.ext1438, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1289 = zext i16 %v_fetch.sroa.14.0.copyload1487 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1291 = or disjoint i32 %v_column.sroa.66.0.insert.shift1439, %v_column.sroa.0.0.insert.ext1289, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1291, ptr addrspace(3) %add.ptr484.2.1.1, align 4, !dbg !228, !tbaa !30
  %add.ptr484.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %192, i32 %add.ptr484.idx.3.11015, !dbg !227
  %v_column.sroa.66.0.insert.ext1443 = zext i16 %v_fetch.sroa.54.16.copyload1556 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1444 = shl nuw i32 %v_column.sroa.66.0.insert.ext1443, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1293 = zext i16 %v_fetch.sroa.18.0.copyload1496 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1295 = or disjoint i32 %v_column.sroa.66.0.insert.shift1444, %v_column.sroa.0.0.insert.ext1293, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1295, ptr addrspace(3) %add.ptr484.3.1.1, align 4, !dbg !228, !tbaa !30
  %add.ptr484.4.1.1 = getelementptr inbounds i8, ptr addrspace(3) %194, i32 %add.ptr484.idx.4.11022, !dbg !227
  %v_column.sroa.66.0.insert.ext1448 = zext i16 %v_fetch.sroa.58.16.copyload1562 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1449 = shl nuw i32 %v_column.sroa.66.0.insert.ext1448, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1297 = zext i16 %v_fetch.sroa.22.0.copyload1505 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1299 = or disjoint i32 %v_column.sroa.66.0.insert.shift1449, %v_column.sroa.0.0.insert.ext1297, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1299, ptr addrspace(3) %add.ptr484.4.1.1, align 4, !dbg !228, !tbaa !30
  %add.ptr484.5.1.1 = getelementptr inbounds i8, ptr addrspace(3) %196, i32 %add.ptr484.idx.5.11029, !dbg !227
  %v_column.sroa.66.0.insert.ext1453 = zext i16 %v_fetch.sroa.62.16.copyload1568 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1454 = shl nuw i32 %v_column.sroa.66.0.insert.ext1453, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1301 = zext i16 %v_fetch.sroa.26.0.copyload1514 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1303 = or disjoint i32 %v_column.sroa.66.0.insert.shift1454, %v_column.sroa.0.0.insert.ext1301, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1303, ptr addrspace(3) %add.ptr484.5.1.1, align 4, !dbg !228, !tbaa !30
  %add.ptr484.6.1.1 = getelementptr inbounds i8, ptr addrspace(3) %198, i32 %add.ptr484.idx.6.11036, !dbg !227
  %v_column.sroa.66.0.insert.ext1458 = zext i16 %v_fetch.sroa.66.16.copyload1574 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1459 = shl nuw i32 %v_column.sroa.66.0.insert.ext1458, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1305 = zext i16 %v_fetch.sroa.30.0.copyload1523 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1307 = or disjoint i32 %v_column.sroa.66.0.insert.shift1459, %v_column.sroa.0.0.insert.ext1305, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1307, ptr addrspace(3) %add.ptr484.6.1.1, align 4, !dbg !228, !tbaa !30
  %add.ptr484.7.1.1 = getelementptr inbounds i8, ptr addrspace(3) %200, i32 %add.ptr484.idx.7.11043, !dbg !227
  %v_column.sroa.66.0.insert.ext1463 = zext i16 %v_fetch.sroa.70.16.copyload1580 to i32, !dbg !228
  %v_column.sroa.66.0.insert.shift1464 = shl nuw i32 %v_column.sroa.66.0.insert.ext1463, 16, !dbg !228
  %v_column.sroa.0.0.insert.ext1309 = zext i16 %v_fetch.sroa.34.0.copyload1532 to i32, !dbg !228
  %v_column.sroa.0.0.insert.insert1311 = or disjoint i32 %v_column.sroa.66.0.insert.shift1464, %v_column.sroa.0.0.insert.ext1309, !dbg !228
  store i32 %v_column.sroa.0.0.insert.insert1311, ptr addrspace(3) %add.ptr484.7.1.1, align 4, !dbg !228, !tbaa !30
  fence syncscope("warp") release, !dbg !230
  tail call void @llvm.mxc.barrier.warp(), !dbg !233
  fence syncscope("warp") acquire, !dbg !234
  %and525 = shl nuw nsw i32 %3, 8
  %mul526 = and i32 %and525, 1792
  %mul533 = and i32 %5, 32
  %mul538 = and i32 %and51, 126
  %add534 = or disjoint i32 %mul526, %mul533
  %xor546 = xor i32 %shr52, %and40
  %203 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534
  %xor549 = xor i32 %xor546, %mul538, !dbg !235
  %add.ptr553.idx = shl nuw nsw i32 %xor549, 2, !dbg !236
  %add.ptr553 = getelementptr inbounds i8, ptr addrspace(3) %203, i32 %add.ptr553.idx, !dbg !236
  %204 = load i32, ptr addrspace(3) %add.ptr553, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.0.0.vec.insert = insertelement <2 x i32> poison, i32 %204, i64 0, !dbg !237
  %add540.1 = or i32 %and51, 1, !dbg !238
  %xor549.1 = xor i32 %xor546, %add540.1, !dbg !235
  %add.ptr553.idx.1 = shl nuw nsw i32 %xor549.1, 2, !dbg !236
  %add.ptr553.1 = getelementptr inbounds i8, ptr addrspace(3) %203, i32 %add.ptr553.idx.1, !dbg !236
  %205 = load i32, ptr addrspace(3) %add.ptr553.1, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.0.4.vec.insert = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert, i32 %205, i64 1, !dbg !237
  %add529.1 = or disjoint i32 %mul526, %mul533
  %add534.1 = or disjoint i32 %add529.1, 64
  %add545.1 = or disjoint i32 %shr52, 2
  %xor546.1 = xor i32 %add545.1, %and40
  %206 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534.1
  %xor549.11046 = xor i32 %xor546.1, %mul538, !dbg !235
  %add.ptr553.idx.11047 = shl nuw nsw i32 %xor549.11046, 2, !dbg !236
  %add.ptr553.11048 = getelementptr inbounds i8, ptr addrspace(3) %206, i32 %add.ptr553.idx.11047, !dbg !236
  %207 = load i32, ptr addrspace(3) %add.ptr553.11048, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.14.8.vec.insert = insertelement <2 x i32> poison, i32 %207, i64 0, !dbg !237
  %xor549.1.1 = xor i32 %xor546.1, %add540.1, !dbg !235
  %add.ptr553.idx.1.1 = shl nuw nsw i32 %xor549.1.1, 2, !dbg !236
  %add.ptr553.1.1 = getelementptr inbounds i8, ptr addrspace(3) %206, i32 %add.ptr553.idx.1.1, !dbg !236
  %208 = load i32, ptr addrspace(3) %add.ptr553.1.1, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.14.12.vec.insert = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert, i32 %208, i64 1, !dbg !237
  %add529.2 = or disjoint i32 %mul526, %mul533
  %add534.2 = or disjoint i32 %add529.2, 128
  %add545.2 = or disjoint i32 %shr52, 4
  %xor546.2 = xor i32 %add545.2, %and40
  %209 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534.2
  %xor549.2 = xor i32 %xor546.2, %mul538, !dbg !235
  %add.ptr553.idx.2 = shl nuw nsw i32 %xor549.2, 2, !dbg !236
  %add.ptr553.2 = getelementptr inbounds i8, ptr addrspace(3) %209, i32 %add.ptr553.idx.2, !dbg !236
  %210 = load i32, ptr addrspace(3) %add.ptr553.2, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.26.16.vec.insert = insertelement <2 x i32> poison, i32 %210, i64 0, !dbg !237
  %xor549.1.2 = xor i32 %xor546.2, %add540.1, !dbg !235
  %add.ptr553.idx.1.2 = shl nuw nsw i32 %xor549.1.2, 2, !dbg !236
  %add.ptr553.1.2 = getelementptr inbounds i8, ptr addrspace(3) %209, i32 %add.ptr553.idx.1.2, !dbg !236
  %211 = load i32, ptr addrspace(3) %add.ptr553.1.2, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.26.20.vec.insert = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert, i32 %211, i64 1, !dbg !237
  %add529.3 = or disjoint i32 %mul526, %mul533
  %add534.3 = or disjoint i32 %add529.3, 192
  %add545.3 = or disjoint i32 %shr52, 6
  %xor546.3 = xor i32 %add545.3, %and40
  %212 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534.3
  %xor549.3 = xor i32 %xor546.3, %mul538, !dbg !235
  %add.ptr553.idx.3 = shl nuw nsw i32 %xor549.3, 2, !dbg !236
  %add.ptr553.3 = getelementptr inbounds i8, ptr addrspace(3) %212, i32 %add.ptr553.idx.3, !dbg !236
  %213 = load i32, ptr addrspace(3) %add.ptr553.3, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.38.24.vec.insert = insertelement <2 x i32> poison, i32 %213, i64 0, !dbg !237
  %xor549.1.3 = xor i32 %xor546.3, %add540.1, !dbg !235
  %add.ptr553.idx.1.3 = shl nuw nsw i32 %xor549.1.3, 2, !dbg !236
  %add.ptr553.1.3 = getelementptr inbounds i8, ptr addrspace(3) %212, i32 %add.ptr553.idx.1.3, !dbg !236
  %214 = load i32, ptr addrspace(3) %add.ptr553.1.3, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.38.28.vec.insert = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert, i32 %214, i64 1, !dbg !237
  %215 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert to <4 x half>, !dbg !239
  %216 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %215, <4 x half> %135, <4 x float> zeroinitializer), !dbg !240
  %217 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert to <4 x half>, !dbg !239
  %218 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %217, <4 x half> %135, <4 x float> zeroinitializer), !dbg !240
  %219 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert to <4 x half>, !dbg !239
  %220 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %219, <4 x half> %135, <4 x float> zeroinitializer), !dbg !240
  %221 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert to <4 x half>, !dbg !239
  %222 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %221, <4 x half> %135, <4 x float> zeroinitializer), !dbg !240
  %add527.1 = or disjoint i32 %mul526, %mul533
  %add534.11051 = or disjoint i32 %add527.1, 2048
  %223 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534.11051
  %add.ptr553.11055 = getelementptr inbounds i8, ptr addrspace(3) %223, i32 %add.ptr553.idx, !dbg !236
  %224 = load i32, ptr addrspace(3) %add.ptr553.11055, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1129 = insertelement <2 x i32> poison, i32 %224, i64 0, !dbg !237
  %add.ptr553.1.11059 = getelementptr inbounds i8, ptr addrspace(3) %223, i32 %add.ptr553.idx.1, !dbg !236
  %225 = load i32, ptr addrspace(3) %add.ptr553.1.11059, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1135 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1129, i32 %225, i64 1, !dbg !237
  %add529.1.1 = or disjoint i32 %mul526, %mul533
  %add534.1.1 = or disjoint i32 %add529.1.1, 2112
  %226 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534.1.1
  %add.ptr553.11048.1 = getelementptr inbounds i8, ptr addrspace(3) %226, i32 %add.ptr553.idx.11047, !dbg !236
  %227 = load i32, ptr addrspace(3) %add.ptr553.11048.1, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1145 = insertelement <2 x i32> poison, i32 %227, i64 0, !dbg !237
  %add.ptr553.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %226, i32 %add.ptr553.idx.1.1, !dbg !236
  %228 = load i32, ptr addrspace(3) %add.ptr553.1.1.1, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1151 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1145, i32 %228, i64 1, !dbg !237
  %add529.2.1 = or disjoint i32 %mul526, %mul533
  %add534.2.1 = or disjoint i32 %add529.2.1, 2176
  %229 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534.2.1
  %add.ptr553.2.1 = getelementptr inbounds i8, ptr addrspace(3) %229, i32 %add.ptr553.idx.2, !dbg !236
  %230 = load i32, ptr addrspace(3) %add.ptr553.2.1, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1161 = insertelement <2 x i32> poison, i32 %230, i64 0, !dbg !237
  %add.ptr553.1.2.1 = getelementptr inbounds i8, ptr addrspace(3) %229, i32 %add.ptr553.idx.1.2, !dbg !236
  %231 = load i32, ptr addrspace(3) %add.ptr553.1.2.1, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1167 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1161, i32 %231, i64 1, !dbg !237
  %add529.3.1 = or disjoint i32 %mul526, %mul533
  %add534.3.1 = or disjoint i32 %add529.3.1, 2240
  %232 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534.3.1
  %add.ptr553.3.1 = getelementptr inbounds i8, ptr addrspace(3) %232, i32 %add.ptr553.idx.3, !dbg !236
  %233 = load i32, ptr addrspace(3) %add.ptr553.3.1, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1177 = insertelement <2 x i32> poison, i32 %233, i64 0, !dbg !237
  %add.ptr553.1.3.1 = getelementptr inbounds i8, ptr addrspace(3) %232, i32 %add.ptr553.idx.1.3, !dbg !236
  %234 = load i32, ptr addrspace(3) %add.ptr553.1.3.1, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1183 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1177, i32 %234, i64 1, !dbg !237
  %235 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1135 to <4 x half>, !dbg !239
  %236 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %235, <4 x half> %135, <4 x float> zeroinitializer), !dbg !240
  %237 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1151 to <4 x half>, !dbg !239
  %238 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %237, <4 x half> %135, <4 x float> zeroinitializer), !dbg !240
  %239 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1167 to <4 x half>, !dbg !239
  %240 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %239, <4 x half> %135, <4 x float> zeroinitializer), !dbg !240
  %241 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1183 to <4 x half>, !dbg !239
  %242 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %241, <4 x half> %135, <4 x float> zeroinitializer), !dbg !240
  %add539.1 = add nuw nsw i32 %mul538, 8
  %xor549.11066 = xor i32 %xor546, %add539.1, !dbg !235
  %add.ptr553.idx.11067 = shl nuw nsw i32 %xor549.11066, 2, !dbg !236
  %add.ptr553.11068 = getelementptr inbounds i8, ptr addrspace(3) %203, i32 %add.ptr553.idx.11067, !dbg !236
  %243 = load i32, ptr addrspace(3) %add.ptr553.11068, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1131 = insertelement <2 x i32> poison, i32 %243, i64 0, !dbg !237
  %add540.1.11069 = add nuw nsw i32 %mul538, 9, !dbg !238
  %xor549.1.11070 = xor i32 %xor546, %add540.1.11069, !dbg !235
  %add.ptr553.idx.1.11071 = shl nuw nsw i32 %xor549.1.11070, 2, !dbg !236
  %add.ptr553.1.11072 = getelementptr inbounds i8, ptr addrspace(3) %203, i32 %add.ptr553.idx.1.11071, !dbg !236
  %244 = load i32, ptr addrspace(3) %add.ptr553.1.11072, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1137 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1131, i32 %244, i64 1, !dbg !237
  %xor549.11046.11078 = xor i32 %xor546.1, %add539.1, !dbg !235
  %add.ptr553.idx.11047.11079 = shl nuw nsw i32 %xor549.11046.11078, 2, !dbg !236
  %add.ptr553.11048.11080 = getelementptr inbounds i8, ptr addrspace(3) %206, i32 %add.ptr553.idx.11047.11079, !dbg !236
  %245 = load i32, ptr addrspace(3) %add.ptr553.11048.11080, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1147 = insertelement <2 x i32> poison, i32 %245, i64 0, !dbg !237
  %xor549.1.1.11083 = xor i32 %xor546.1, %add540.1.11069, !dbg !235
  %add.ptr553.idx.1.1.11084 = shl nuw nsw i32 %xor549.1.1.11083, 2, !dbg !236
  %add.ptr553.1.1.11085 = getelementptr inbounds i8, ptr addrspace(3) %206, i32 %add.ptr553.idx.1.1.11084, !dbg !236
  %246 = load i32, ptr addrspace(3) %add.ptr553.1.1.11085, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1153 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1147, i32 %246, i64 1, !dbg !237
  %xor549.2.11092 = xor i32 %xor546.2, %add539.1, !dbg !235
  %add.ptr553.idx.2.11093 = shl nuw nsw i32 %xor549.2.11092, 2, !dbg !236
  %add.ptr553.2.11094 = getelementptr inbounds i8, ptr addrspace(3) %209, i32 %add.ptr553.idx.2.11093, !dbg !236
  %247 = load i32, ptr addrspace(3) %add.ptr553.2.11094, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1163 = insertelement <2 x i32> poison, i32 %247, i64 0, !dbg !237
  %xor549.1.2.11097 = xor i32 %xor546.2, %add540.1.11069, !dbg !235
  %add.ptr553.idx.1.2.11098 = shl nuw nsw i32 %xor549.1.2.11097, 2, !dbg !236
  %add.ptr553.1.2.11099 = getelementptr inbounds i8, ptr addrspace(3) %209, i32 %add.ptr553.idx.1.2.11098, !dbg !236
  %248 = load i32, ptr addrspace(3) %add.ptr553.1.2.11099, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1169 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1163, i32 %248, i64 1, !dbg !237
  %xor549.3.11106 = xor i32 %xor546.3, %add539.1, !dbg !235
  %add.ptr553.idx.3.11107 = shl nuw nsw i32 %xor549.3.11106, 2, !dbg !236
  %add.ptr553.3.11108 = getelementptr inbounds i8, ptr addrspace(3) %212, i32 %add.ptr553.idx.3.11107, !dbg !236
  %249 = load i32, ptr addrspace(3) %add.ptr553.3.11108, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1179 = insertelement <2 x i32> poison, i32 %249, i64 0, !dbg !237
  %xor549.1.3.11111 = xor i32 %xor546.3, %add540.1.11069, !dbg !235
  %add.ptr553.idx.1.3.11112 = shl nuw nsw i32 %xor549.1.3.11111, 2, !dbg !236
  %add.ptr553.1.3.11113 = getelementptr inbounds i8, ptr addrspace(3) %212, i32 %add.ptr553.idx.1.3.11112, !dbg !236
  %250 = load i32, ptr addrspace(3) %add.ptr553.1.3.11113, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1185 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1179, i32 %250, i64 1, !dbg !237
  %251 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1137 to <4 x half>, !dbg !239
  %252 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %251, <4 x half> %151, <4 x float> %216), !dbg !240
  %253 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1153 to <4 x half>, !dbg !239
  %254 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %253, <4 x half> %151, <4 x float> %218), !dbg !240
  %255 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1169 to <4 x half>, !dbg !239
  %256 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %255, <4 x half> %151, <4 x float> %220), !dbg !240
  %257 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1185 to <4 x half>, !dbg !239
  %258 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %257, <4 x half> %151, <4 x float> %222), !dbg !240
  %add.ptr553.11055.1 = getelementptr inbounds i8, ptr addrspace(3) %223, i32 %add.ptr553.idx.11067, !dbg !236
  %259 = load i32, ptr addrspace(3) %add.ptr553.11055.1, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1133 = insertelement <2 x i32> poison, i32 %259, i64 0, !dbg !237
  %add.ptr553.1.11059.1 = getelementptr inbounds i8, ptr addrspace(3) %223, i32 %add.ptr553.idx.1.11071, !dbg !236
  %260 = load i32, ptr addrspace(3) %add.ptr553.1.11059.1, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1139 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1133, i32 %260, i64 1, !dbg !237
  %add.ptr553.11048.1.1 = getelementptr inbounds i8, ptr addrspace(3) %226, i32 %add.ptr553.idx.11047.11079, !dbg !236
  %261 = load i32, ptr addrspace(3) %add.ptr553.11048.1.1, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1149 = insertelement <2 x i32> poison, i32 %261, i64 0, !dbg !237
  %add.ptr553.1.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %226, i32 %add.ptr553.idx.1.1.11084, !dbg !236
  %262 = load i32, ptr addrspace(3) %add.ptr553.1.1.1.1, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1155 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1149, i32 %262, i64 1, !dbg !237
  %add.ptr553.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %229, i32 %add.ptr553.idx.2.11093, !dbg !236
  %263 = load i32, ptr addrspace(3) %add.ptr553.2.1.1, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1165 = insertelement <2 x i32> poison, i32 %263, i64 0, !dbg !237
  %add.ptr553.1.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %229, i32 %add.ptr553.idx.1.2.11098, !dbg !236
  %264 = load i32, ptr addrspace(3) %add.ptr553.1.2.1.1, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1171 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1165, i32 %264, i64 1, !dbg !237
  %add.ptr553.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %232, i32 %add.ptr553.idx.3.11107, !dbg !236
  %265 = load i32, ptr addrspace(3) %add.ptr553.3.1.1, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1181 = insertelement <2 x i32> poison, i32 %265, i64 0, !dbg !237
  %add.ptr553.1.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %232, i32 %add.ptr553.idx.1.3.11112, !dbg !236
  %266 = load i32, ptr addrspace(3) %add.ptr553.1.3.1.1, align 4, !dbg !237, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1187 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1181, i32 %266, i64 1, !dbg !237
  %267 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1139 to <4 x half>, !dbg !239
  %268 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %267, <4 x half> %151, <4 x float> %236), !dbg !240
  %269 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1155 to <4 x half>, !dbg !239
  %270 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %269, <4 x half> %151, <4 x float> %238), !dbg !240
  %271 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1171 to <4 x half>, !dbg !239
  %272 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %271, <4 x half> %151, <4 x float> %240), !dbg !240
  %273 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1187 to <4 x half>, !dbg !239
  %274 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %273, <4 x half> %151, <4 x float> %242), !dbg !240
  %add400 = fadd contract float %add395, %163, !dbg !241
  br label %if.end609, !dbg !61

if.end609:                                        ; preds = %for.cond.preheader, %for.body599.preheader
  %.pre-phi1979 = phi i64 [ %16, %for.cond.preheader ], [ %.pre1978, %for.body599.preheader ], !dbg !60
  %.pre-phi1977 = phi i64 [ %13, %for.cond.preheader ], [ %.pre1976, %for.body599.preheader ], !dbg !60
  %.pre-phi1975 = phi i64 [ %10, %for.cond.preheader ], [ %.pre1974, %for.body599.preheader ], !dbg !60
  %add681.1.pre-phi = phi i32 [ %add45.1, %for.cond.preheader ], [ %.pre1973, %for.body599.preheader ], !dbg !59
  %.pre-phi1972 = phi i64 [ %6, %for.cond.preheader ], [ %.pre1971, %for.body599.preheader ], !dbg !58
  %shr680.pre-phi = phi i32 [ %shr44, %for.cond.preheader ], [ %.pre1966, %for.body599.preheader ]
  %.pre-phi1965 = phi i32 [ %mul20, %for.cond.preheader ], [ %.pre1964, %for.body599.preheader ]
  %xor653.3.pre-phi = phi i32 [ %xor78.3, %for.cond.preheader ], [ %.pre1963, %for.body599.preheader ], !dbg !56
  %xor653.2.pre-phi = phi i32 [ %xor78.2, %for.cond.preheader ], [ %.pre1961, %for.body599.preheader ], !dbg !56
  %xor653.1.pre-phi = phi i32 [ %xor78.1, %for.cond.preheader ], [ %.pre1959, %for.body599.preheader ], !dbg !56
  %xor653.pre-phi = phi i32 [ %xor78, %for.cond.preheader ], [ %.pre1957, %for.body599.preheader ], !dbg !56
  %.pre-phi1956 = phi i32 [ %97, %for.cond.preheader ], [ %.pre1955, %for.body599.preheader ]
  %and652.pre-phi = phi i32 [ %and40, %for.cond.preheader ], [ %.pre1954, %for.body599.preheader ]
  %shr649.pre-phi = phi i32 [ %shr74, %for.cond.preheader ], [ %.pre1953, %for.body599.preheader ]
  %and645.pre-phi = phi i32 [ %4, %for.cond.preheader ], [ %.pre1952, %for.body599.preheader ]
  %.pre-phi = phi i32 [ %3, %for.cond.preheader ], [ %.pre, %for.body599.preheader ]
  %numerator.sroa.170.0 = phi <4 x float> [ %274, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !242
  %numerator.sroa.146.0 = phi <4 x float> [ %272, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !242
  %numerator.sroa.122.0 = phi <4 x float> [ %270, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !242
  %numerator.sroa.98.0 = phi <4 x float> [ %268, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !242
  %numerator.sroa.74.0 = phi <4 x float> [ %258, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !242
  %numerator.sroa.50.0 = phi <4 x float> [ %256, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !242
  %numerator.sroa.26.0 = phi <4 x float> [ %254, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !242
  %numerator.sroa.0.0 = phi <4 x float> [ %252, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !242
  %denominator.sroa.0.1 = phi float [ %add400, %for.cond.preheader ], [ 0.000000e+00, %for.body599.preheader ], !dbg !242
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !243
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !243
  %div.1 = fdiv contract float %numerator.sroa.0.4.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !243
  %div.2 = fdiv contract float %numerator.sroa.0.8.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !243
  %div.3 = fdiv contract float %numerator.sroa.0.12.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.26.16.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 0, !dbg !243
  %div.4 = fdiv contract float %numerator.sroa.26.16.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.26.20.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 1, !dbg !243
  %div.5 = fdiv contract float %numerator.sroa.26.20.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.26.24.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 2, !dbg !243
  %div.6 = fdiv contract float %numerator.sroa.26.24.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.26.28.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 3, !dbg !243
  %div.7 = fdiv contract float %numerator.sroa.26.28.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.50.32.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 0, !dbg !243
  %div.8 = fdiv contract float %numerator.sroa.50.32.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.50.36.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 1, !dbg !243
  %div.9 = fdiv contract float %numerator.sroa.50.36.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.50.40.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 2, !dbg !243
  %div.10 = fdiv contract float %numerator.sroa.50.40.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.50.44.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 3, !dbg !243
  %div.11 = fdiv contract float %numerator.sroa.50.44.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.74.48.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 0, !dbg !243
  %div.12 = fdiv contract float %numerator.sroa.74.48.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.74.52.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 1, !dbg !243
  %div.13 = fdiv contract float %numerator.sroa.74.52.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.74.56.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 2, !dbg !243
  %div.14 = fdiv contract float %numerator.sroa.74.56.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.74.60.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 3, !dbg !243
  %div.15 = fdiv contract float %numerator.sroa.74.60.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.98.64.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 0, !dbg !243
  %div.16 = fdiv contract float %numerator.sroa.98.64.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.98.68.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 1, !dbg !243
  %div.17 = fdiv contract float %numerator.sroa.98.68.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.98.72.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 2, !dbg !243
  %div.18 = fdiv contract float %numerator.sroa.98.72.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.98.76.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 3, !dbg !243
  %div.19 = fdiv contract float %numerator.sroa.98.76.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.122.80.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 0, !dbg !243
  %div.20 = fdiv contract float %numerator.sroa.122.80.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.122.84.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 1, !dbg !243
  %div.21 = fdiv contract float %numerator.sroa.122.84.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.122.88.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 2, !dbg !243
  %div.22 = fdiv contract float %numerator.sroa.122.88.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.122.92.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 3, !dbg !243
  %div.23 = fdiv contract float %numerator.sroa.122.92.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.146.96.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 0, !dbg !243
  %div.24 = fdiv contract float %numerator.sroa.146.96.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.146.100.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 1, !dbg !243
  %div.25 = fdiv contract float %numerator.sroa.146.100.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.146.104.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 2, !dbg !243
  %div.26 = fdiv contract float %numerator.sroa.146.104.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.146.108.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 3, !dbg !243
  %div.27 = fdiv contract float %numerator.sroa.146.108.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.170.112.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 0, !dbg !243
  %div.28 = fdiv contract float %numerator.sroa.170.112.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.170.116.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 1, !dbg !243
  %div.29 = fdiv contract float %numerator.sroa.170.116.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.170.120.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 2, !dbg !243
  %div.30 = fdiv contract float %numerator.sroa.170.120.vec.extract, %denominator.sroa.0.1, !dbg !244
  %numerator.sroa.170.124.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 3, !dbg !243
  %div.31 = fdiv contract float %numerator.sroa.170.124.vec.extract, %denominator.sroa.0.1, !dbg !244
  fence syncscope("warp") release, !dbg !245
  tail call void @llvm.mxc.barrier.warp(), !dbg !248
  fence syncscope("warp") acquire, !dbg !249
  %mul646 = and i32 %and645.pre-phi, 1920
  %mul659 = and i32 %.pre-phi1956, 4
  %275 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !250
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !250, !noalias !254
  %276 = fptrunc float %div to half, !dbg !250
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %275), !dbg !250, !noalias !254
  %277 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !254
  %278 = fptrunc float %div.1 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %277), !dbg !259, !noalias !254
  %279 = bitcast half %276 to i16, !dbg !261
  %280 = bitcast half %278 to i16, !dbg !264
  %281 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !265, !noalias !269
  %282 = fptrunc float %div.2 to half, !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %281), !dbg !265, !noalias !269
  %283 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !274, !noalias !269
  %284 = fptrunc float %div.3 to half, !dbg !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %283), !dbg !274, !noalias !269
  %285 = bitcast half %282 to i16, !dbg !276
  %286 = bitcast half %284 to i16, !dbg !278
  %__6.sroa.6.0.insert.ext = zext i16 %286 to i64, !dbg !279
  %__6.sroa.6.0.insert.shift = shl nuw i64 %__6.sroa.6.0.insert.ext, 48, !dbg !279
  %__6.sroa.5.0.insert.ext = zext i16 %285 to i64, !dbg !279
  %__6.sroa.5.0.insert.shift = shl nuw nsw i64 %__6.sroa.5.0.insert.ext, 32, !dbg !279
  %__6.sroa.5.0.insert.insert = or disjoint i64 %__6.sroa.6.0.insert.shift, %__6.sroa.5.0.insert.shift, !dbg !279
  %__6.sroa.4.0.insert.ext = zext i16 %280 to i64, !dbg !279
  %__6.sroa.4.0.insert.shift = shl nuw nsw i64 %__6.sroa.4.0.insert.ext, 16, !dbg !279
  %__6.sroa.4.0.insert.insert = or disjoint i64 %__6.sroa.5.0.insert.insert, %__6.sroa.4.0.insert.shift, !dbg !279
  %__6.sroa.0.0.insert.ext = zext i16 %279 to i64, !dbg !279
  %__6.sroa.0.0.insert.insert = or disjoint i64 %__6.sroa.4.0.insert.insert, %__6.sroa.0.0.insert.ext, !dbg !279
  %mul654 = shl nuw nsw i32 %xor653.pre-phi, 3, !dbg !280
  %add655 = add nuw nsw i32 %mul654, %mul646, !dbg !281
  %add660 = or disjoint i32 %add655, %mul659, !dbg !282
  %add.ptr662 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add660, !dbg !283
  store i64 %__6.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr662, align 8, !dbg !284
  %287 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !250
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !250, !noalias !254
  %288 = fptrunc float %div.4 to half, !dbg !250
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %287), !dbg !250, !noalias !254
  %289 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !254
  %290 = fptrunc float %div.5 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %289), !dbg !259, !noalias !254
  %291 = bitcast half %288 to i16, !dbg !261
  %292 = bitcast half %290 to i16, !dbg !264
  %293 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !265, !noalias !269
  %294 = fptrunc float %div.6 to half, !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %293), !dbg !265, !noalias !269
  %295 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !274, !noalias !269
  %296 = fptrunc float %div.7 to half, !dbg !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %295), !dbg !274, !noalias !269
  %297 = bitcast half %294 to i16, !dbg !276
  %298 = bitcast half %296 to i16, !dbg !278
  %__6.sroa.6.0.insert.ext.1 = zext i16 %298 to i64, !dbg !279
  %__6.sroa.6.0.insert.shift.1 = shl nuw i64 %__6.sroa.6.0.insert.ext.1, 48, !dbg !279
  %__6.sroa.5.0.insert.ext.1 = zext i16 %297 to i64, !dbg !279
  %__6.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.1, 32, !dbg !279
  %__6.sroa.5.0.insert.insert.1 = or disjoint i64 %__6.sroa.6.0.insert.shift.1, %__6.sroa.5.0.insert.shift.1, !dbg !279
  %__6.sroa.4.0.insert.ext.1 = zext i16 %292 to i64, !dbg !279
  %__6.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.1, 16, !dbg !279
  %__6.sroa.4.0.insert.insert.1 = or disjoint i64 %__6.sroa.5.0.insert.insert.1, %__6.sroa.4.0.insert.shift.1, !dbg !279
  %__6.sroa.0.0.insert.ext.1 = zext i16 %291 to i64, !dbg !279
  %__6.sroa.0.0.insert.insert.1 = or disjoint i64 %__6.sroa.4.0.insert.insert.1, %__6.sroa.0.0.insert.ext.1, !dbg !279
  %mul654.1 = shl nuw nsw i32 %xor653.1.pre-phi, 3, !dbg !280
  %add655.1 = add nuw nsw i32 %mul654.1, %mul646, !dbg !281
  %add660.1 = or disjoint i32 %add655.1, %mul659, !dbg !282
  %add.ptr662.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add660.1, !dbg !283
  store i64 %__6.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr662.1, align 8, !dbg !284
  %299 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !250
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !250, !noalias !254
  %300 = fptrunc float %div.8 to half, !dbg !250
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %299), !dbg !250, !noalias !254
  %301 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !254
  %302 = fptrunc float %div.9 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %301), !dbg !259, !noalias !254
  %303 = bitcast half %300 to i16, !dbg !261
  %304 = bitcast half %302 to i16, !dbg !264
  %305 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !265, !noalias !269
  %306 = fptrunc float %div.10 to half, !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %305), !dbg !265, !noalias !269
  %307 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !274, !noalias !269
  %308 = fptrunc float %div.11 to half, !dbg !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %307), !dbg !274, !noalias !269
  %309 = bitcast half %306 to i16, !dbg !276
  %310 = bitcast half %308 to i16, !dbg !278
  %__6.sroa.6.0.insert.ext.2 = zext i16 %310 to i64, !dbg !279
  %__6.sroa.6.0.insert.shift.2 = shl nuw i64 %__6.sroa.6.0.insert.ext.2, 48, !dbg !279
  %__6.sroa.5.0.insert.ext.2 = zext i16 %309 to i64, !dbg !279
  %__6.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.2, 32, !dbg !279
  %__6.sroa.5.0.insert.insert.2 = or disjoint i64 %__6.sroa.6.0.insert.shift.2, %__6.sroa.5.0.insert.shift.2, !dbg !279
  %__6.sroa.4.0.insert.ext.2 = zext i16 %304 to i64, !dbg !279
  %__6.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.2, 16, !dbg !279
  %__6.sroa.4.0.insert.insert.2 = or disjoint i64 %__6.sroa.5.0.insert.insert.2, %__6.sroa.4.0.insert.shift.2, !dbg !279
  %__6.sroa.0.0.insert.ext.2 = zext i16 %303 to i64, !dbg !279
  %__6.sroa.0.0.insert.insert.2 = or disjoint i64 %__6.sroa.4.0.insert.insert.2, %__6.sroa.0.0.insert.ext.2, !dbg !279
  %mul654.2 = shl nuw nsw i32 %xor653.2.pre-phi, 3, !dbg !280
  %add655.2 = add nuw nsw i32 %mul654.2, %mul646, !dbg !281
  %add660.2 = or disjoint i32 %add655.2, %mul659, !dbg !282
  %add.ptr662.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add660.2, !dbg !283
  store i64 %__6.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr662.2, align 8, !dbg !284
  %311 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !250
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !250, !noalias !254
  %312 = fptrunc float %div.12 to half, !dbg !250
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %311), !dbg !250, !noalias !254
  %313 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !254
  %314 = fptrunc float %div.13 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %313), !dbg !259, !noalias !254
  %315 = bitcast half %312 to i16, !dbg !261
  %316 = bitcast half %314 to i16, !dbg !264
  %317 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !265, !noalias !269
  %318 = fptrunc float %div.14 to half, !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %317), !dbg !265, !noalias !269
  %319 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !274, !noalias !269
  %320 = fptrunc float %div.15 to half, !dbg !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %319), !dbg !274, !noalias !269
  %321 = bitcast half %318 to i16, !dbg !276
  %322 = bitcast half %320 to i16, !dbg !278
  %__6.sroa.6.0.insert.ext.3 = zext i16 %322 to i64, !dbg !279
  %__6.sroa.6.0.insert.shift.3 = shl nuw i64 %__6.sroa.6.0.insert.ext.3, 48, !dbg !279
  %__6.sroa.5.0.insert.ext.3 = zext i16 %321 to i64, !dbg !279
  %__6.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.3, 32, !dbg !279
  %__6.sroa.5.0.insert.insert.3 = or disjoint i64 %__6.sroa.6.0.insert.shift.3, %__6.sroa.5.0.insert.shift.3, !dbg !279
  %__6.sroa.4.0.insert.ext.3 = zext i16 %316 to i64, !dbg !279
  %__6.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.3, 16, !dbg !279
  %__6.sroa.4.0.insert.insert.3 = or disjoint i64 %__6.sroa.5.0.insert.insert.3, %__6.sroa.4.0.insert.shift.3, !dbg !279
  %__6.sroa.0.0.insert.ext.3 = zext i16 %315 to i64, !dbg !279
  %__6.sroa.0.0.insert.insert.3 = or disjoint i64 %__6.sroa.4.0.insert.insert.3, %__6.sroa.0.0.insert.ext.3, !dbg !279
  %mul654.3 = shl nuw nsw i32 %xor653.3.pre-phi, 3, !dbg !280
  %add655.3 = add nuw nsw i32 %mul654.3, %mul646, !dbg !281
  %add660.3 = or disjoint i32 %add655.3, %mul659, !dbg !282
  %add.ptr662.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add660.3, !dbg !283
  store i64 %__6.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr662.3, align 8, !dbg !284
  %323 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !250
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !250, !noalias !254
  %324 = fptrunc float %div.16 to half, !dbg !250
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %323), !dbg !250, !noalias !254
  %325 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !254
  %326 = fptrunc float %div.17 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %325), !dbg !259, !noalias !254
  %327 = bitcast half %324 to i16, !dbg !261
  %328 = bitcast half %326 to i16, !dbg !264
  %329 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !265, !noalias !269
  %330 = fptrunc float %div.18 to half, !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %329), !dbg !265, !noalias !269
  %331 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !274, !noalias !269
  %332 = fptrunc float %div.19 to half, !dbg !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %331), !dbg !274, !noalias !269
  %333 = bitcast half %330 to i16, !dbg !276
  %334 = bitcast half %332 to i16, !dbg !278
  %__6.sroa.6.0.insert.ext.4 = zext i16 %334 to i64, !dbg !279
  %__6.sroa.6.0.insert.shift.4 = shl nuw i64 %__6.sroa.6.0.insert.ext.4, 48, !dbg !279
  %__6.sroa.5.0.insert.ext.4 = zext i16 %333 to i64, !dbg !279
  %__6.sroa.5.0.insert.shift.4 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.4, 32, !dbg !279
  %__6.sroa.5.0.insert.insert.4 = or disjoint i64 %__6.sroa.6.0.insert.shift.4, %__6.sroa.5.0.insert.shift.4, !dbg !279
  %__6.sroa.4.0.insert.ext.4 = zext i16 %328 to i64, !dbg !279
  %__6.sroa.4.0.insert.shift.4 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.4, 16, !dbg !279
  %__6.sroa.4.0.insert.insert.4 = or disjoint i64 %__6.sroa.5.0.insert.insert.4, %__6.sroa.4.0.insert.shift.4, !dbg !279
  %__6.sroa.0.0.insert.ext.4 = zext i16 %327 to i64, !dbg !279
  %__6.sroa.0.0.insert.insert.4 = or disjoint i64 %__6.sroa.4.0.insert.insert.4, %__6.sroa.0.0.insert.ext.4, !dbg !279
  %add650.4 = add nuw nsw i32 %shr649.pre-phi, 8, !dbg !57
  %xor653.4 = xor i32 %add650.4, %and652.pre-phi, !dbg !56
  %mul654.4 = shl nuw nsw i32 %xor653.4, 3, !dbg !280
  %add655.4 = add nuw nsw i32 %mul654.4, %mul646, !dbg !281
  %add660.4 = or disjoint i32 %add655.4, %mul659, !dbg !282
  %add.ptr662.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add660.4, !dbg !283
  store i64 %__6.sroa.0.0.insert.insert.4, ptr addrspace(3) %add.ptr662.4, align 8, !dbg !284
  %335 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !250
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !250, !noalias !254
  %336 = fptrunc float %div.20 to half, !dbg !250
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %335), !dbg !250, !noalias !254
  %337 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !254
  %338 = fptrunc float %div.21 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %337), !dbg !259, !noalias !254
  %339 = bitcast half %336 to i16, !dbg !261
  %340 = bitcast half %338 to i16, !dbg !264
  %341 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !265, !noalias !269
  %342 = fptrunc float %div.22 to half, !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %341), !dbg !265, !noalias !269
  %343 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !274, !noalias !269
  %344 = fptrunc float %div.23 to half, !dbg !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %343), !dbg !274, !noalias !269
  %345 = bitcast half %342 to i16, !dbg !276
  %346 = bitcast half %344 to i16, !dbg !278
  %__6.sroa.6.0.insert.ext.5 = zext i16 %346 to i64, !dbg !279
  %__6.sroa.6.0.insert.shift.5 = shl nuw i64 %__6.sroa.6.0.insert.ext.5, 48, !dbg !279
  %__6.sroa.5.0.insert.ext.5 = zext i16 %345 to i64, !dbg !279
  %__6.sroa.5.0.insert.shift.5 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.5, 32, !dbg !279
  %__6.sroa.5.0.insert.insert.5 = or disjoint i64 %__6.sroa.6.0.insert.shift.5, %__6.sroa.5.0.insert.shift.5, !dbg !279
  %__6.sroa.4.0.insert.ext.5 = zext i16 %340 to i64, !dbg !279
  %__6.sroa.4.0.insert.shift.5 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.5, 16, !dbg !279
  %__6.sroa.4.0.insert.insert.5 = or disjoint i64 %__6.sroa.5.0.insert.insert.5, %__6.sroa.4.0.insert.shift.5, !dbg !279
  %__6.sroa.0.0.insert.ext.5 = zext i16 %339 to i64, !dbg !279
  %__6.sroa.0.0.insert.insert.5 = or disjoint i64 %__6.sroa.4.0.insert.insert.5, %__6.sroa.0.0.insert.ext.5, !dbg !279
  %add650.5 = add nuw nsw i32 %shr649.pre-phi, 10, !dbg !57
  %xor653.5 = xor i32 %add650.5, %and652.pre-phi, !dbg !56
  %mul654.5 = shl nuw nsw i32 %xor653.5, 3, !dbg !280
  %add655.5 = add nuw nsw i32 %mul654.5, %mul646, !dbg !281
  %add660.5 = or disjoint i32 %add655.5, %mul659, !dbg !282
  %add.ptr662.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add660.5, !dbg !283
  store i64 %__6.sroa.0.0.insert.insert.5, ptr addrspace(3) %add.ptr662.5, align 8, !dbg !284
  %347 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !250
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !250, !noalias !254
  %348 = fptrunc float %div.24 to half, !dbg !250
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %347), !dbg !250, !noalias !254
  %349 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !254
  %350 = fptrunc float %div.25 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %349), !dbg !259, !noalias !254
  %351 = bitcast half %348 to i16, !dbg !261
  %352 = bitcast half %350 to i16, !dbg !264
  %353 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !265, !noalias !269
  %354 = fptrunc float %div.26 to half, !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %353), !dbg !265, !noalias !269
  %355 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !274, !noalias !269
  %356 = fptrunc float %div.27 to half, !dbg !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %355), !dbg !274, !noalias !269
  %357 = bitcast half %354 to i16, !dbg !276
  %358 = bitcast half %356 to i16, !dbg !278
  %__6.sroa.6.0.insert.ext.6 = zext i16 %358 to i64, !dbg !279
  %__6.sroa.6.0.insert.shift.6 = shl nuw i64 %__6.sroa.6.0.insert.ext.6, 48, !dbg !279
  %__6.sroa.5.0.insert.ext.6 = zext i16 %357 to i64, !dbg !279
  %__6.sroa.5.0.insert.shift.6 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.6, 32, !dbg !279
  %__6.sroa.5.0.insert.insert.6 = or disjoint i64 %__6.sroa.6.0.insert.shift.6, %__6.sroa.5.0.insert.shift.6, !dbg !279
  %__6.sroa.4.0.insert.ext.6 = zext i16 %352 to i64, !dbg !279
  %__6.sroa.4.0.insert.shift.6 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.6, 16, !dbg !279
  %__6.sroa.4.0.insert.insert.6 = or disjoint i64 %__6.sroa.5.0.insert.insert.6, %__6.sroa.4.0.insert.shift.6, !dbg !279
  %__6.sroa.0.0.insert.ext.6 = zext i16 %351 to i64, !dbg !279
  %__6.sroa.0.0.insert.insert.6 = or disjoint i64 %__6.sroa.4.0.insert.insert.6, %__6.sroa.0.0.insert.ext.6, !dbg !279
  %add650.6 = add nuw nsw i32 %shr649.pre-phi, 12, !dbg !57
  %xor653.6 = xor i32 %add650.6, %and652.pre-phi, !dbg !56
  %mul654.6 = shl nuw nsw i32 %xor653.6, 3, !dbg !280
  %add655.6 = add nuw nsw i32 %mul654.6, %mul646, !dbg !281
  %add660.6 = or disjoint i32 %add655.6, %mul659, !dbg !282
  %add.ptr662.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add660.6, !dbg !283
  store i64 %__6.sroa.0.0.insert.insert.6, ptr addrspace(3) %add.ptr662.6, align 8, !dbg !284
  %359 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !250
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !250, !noalias !254
  %360 = fptrunc float %div.28 to half, !dbg !250
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %359), !dbg !250, !noalias !254
  %361 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !254
  %362 = fptrunc float %div.29 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %361), !dbg !259, !noalias !254
  %363 = bitcast half %360 to i16, !dbg !261
  %364 = bitcast half %362 to i16, !dbg !264
  %365 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !265, !noalias !269
  %366 = fptrunc float %div.30 to half, !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %365), !dbg !265, !noalias !269
  %367 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !274, !noalias !269
  %368 = fptrunc float %div.31 to half, !dbg !274
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %367), !dbg !274, !noalias !269
  %369 = bitcast half %366 to i16, !dbg !276
  %370 = bitcast half %368 to i16, !dbg !278
  %__6.sroa.6.0.insert.ext.7 = zext i16 %370 to i64, !dbg !279
  %__6.sroa.6.0.insert.shift.7 = shl nuw i64 %__6.sroa.6.0.insert.ext.7, 48, !dbg !279
  %__6.sroa.5.0.insert.ext.7 = zext i16 %369 to i64, !dbg !279
  %__6.sroa.5.0.insert.shift.7 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.7, 32, !dbg !279
  %__6.sroa.5.0.insert.insert.7 = or disjoint i64 %__6.sroa.6.0.insert.shift.7, %__6.sroa.5.0.insert.shift.7, !dbg !279
  %__6.sroa.4.0.insert.ext.7 = zext i16 %364 to i64, !dbg !279
  %__6.sroa.4.0.insert.shift.7 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.7, 16, !dbg !279
  %__6.sroa.4.0.insert.insert.7 = or disjoint i64 %__6.sroa.5.0.insert.insert.7, %__6.sroa.4.0.insert.shift.7, !dbg !279
  %__6.sroa.0.0.insert.ext.7 = zext i16 %363 to i64, !dbg !279
  %__6.sroa.0.0.insert.insert.7 = or disjoint i64 %__6.sroa.4.0.insert.insert.7, %__6.sroa.0.0.insert.ext.7, !dbg !279
  %add650.7 = add nuw nsw i32 %shr649.pre-phi, 14, !dbg !57
  %xor653.7 = xor i32 %add650.7, %and652.pre-phi, !dbg !56
  %mul654.7 = shl nuw nsw i32 %xor653.7, 3, !dbg !280
  %add655.7 = add nuw nsw i32 %mul654.7, %mul646, !dbg !281
  %add660.7 = or disjoint i32 %add655.7, %mul659, !dbg !282
  %add.ptr662.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add660.7, !dbg !283
  store i64 %__6.sroa.0.0.insert.insert.7, ptr addrspace(3) %add.ptr662.7, align 8, !dbg !284
  fence syncscope("warp") release, !dbg !285
  tail call void @llvm.mxc.barrier.warp(), !dbg !288
  fence syncscope("warp") acquire, !dbg !289
  %mul673 = and i32 %.pre-phi1965, 8064
  %and676 = and i32 %.pre-phi, 15
  %invariant.gep918 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul673, !dbg !290
  %xor682 = xor i32 %shr680.pre-phi, %and676, !dbg !291
  %add.ptr686.idx = shl nuw nsw i32 %xor682, 4, !dbg !292
  %add.ptr686 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep918, i32 %add.ptr686.idx, !dbg !292
  %add.ptr698 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi1972, !dbg !293
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr698, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr686, i64 16, i1 false), !dbg !294, !tbaa.struct !295, !call_argsrelate !296
  %xor682.1 = xor i32 %add681.1.pre-phi, %and676, !dbg !291
  %gep919.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep918, i32 1024, !dbg !292
  %add.ptr686.idx.1 = shl nuw nsw i32 %xor682.1, 4, !dbg !292
  %add.ptr686.1 = getelementptr inbounds i8, ptr addrspace(3) %gep919.1, i32 %add.ptr686.idx.1, !dbg !292
  %add.ptr698.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi1975, !dbg !293
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr698.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr686.1, i64 16, i1 false), !dbg !294, !tbaa.struct !295, !call_argsrelate !296
  %gep919.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep918, i32 2048, !dbg !292
  %add.ptr686.2 = getelementptr inbounds i8, ptr addrspace(3) %gep919.2, i32 %add.ptr686.idx, !dbg !292
  %add.ptr698.2 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi1977, !dbg !293
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr698.2, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr686.2, i64 16, i1 false), !dbg !294, !tbaa.struct !295, !call_argsrelate !296
  %gep919.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep918, i32 3072, !dbg !292
  %add.ptr686.3 = getelementptr inbounds i8, ptr addrspace(3) %gep919.3, i32 %add.ptr686.idx.1, !dbg !292
  %add.ptr698.3 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi1979, !dbg !293
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr698.3, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr686.3, i64 16, i1 false), !dbg !294, !tbaa.struct !295, !call_argsrelate !296
  ret void, !dbg !297
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
!56 = !DILocation(line: 188, column: 104, scope: !40)
!57 = !DILocation(line: 188, column: 75, scope: !40)
!58 = !DILocation(line: 192, column: 3, scope: !40)
!59 = !DILocation(line: 193, column: 261, scope: !40)
!60 = !DILocation(line: 193, column: 105, scope: !40)
!61 = !DILocation(line: 177, column: 3, scope: !40)
!62 = !DILocation(line: 28, column: 5, scope: !40)
!63 = !DILocation(line: 29, column: 45, scope: !40)
!64 = !DILocation(line: 29, column: 31, scope: !40)
!65 = !DILocation(line: 32, column: 26, scope: !40)
!66 = !DILocation(line: 32, column: 279, scope: !40)
!67 = !DILocation(line: 29, column: 126, scope: !40)
!68 = !DILocation(line: 68, column: 3, scope: !69, inlinedAt: !71)
!69 = distinct !DISubprogram(name: "__barrier_warp", scope: !70, file: !70, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!70 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!71 = distinct !DILocation(line: 192, column: 3, scope: !72, inlinedAt: !73)
!72 = distinct !DISubprogram(name: "__syncwarp", scope: !70, file: !70, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!73 = distinct !DILocation(line: 35, column: 5, scope: !40)
!74 = !DILocation(line: 69, column: 3, scope: !69, inlinedAt: !71)
!75 = !DILocation(line: 70, column: 3, scope: !69, inlinedAt: !71)
!76 = !DILocation(line: 37, column: 174, scope: !40)
!77 = !DILocation(line: 37, column: 59, scope: !40)
!78 = !DILocation(line: 37, column: 40, scope: !40)
!79 = !DILocation(line: 37, column: 145, scope: !40)
!80 = !DILocation(line: 37, column: 86, scope: !40)
!81 = !DILocation(line: 68, column: 3, scope: !69, inlinedAt: !82)
!82 = distinct !DILocation(line: 192, column: 3, scope: !72, inlinedAt: !83)
!83 = distinct !DILocation(line: 39, column: 5, scope: !40)
!84 = !DILocation(line: 69, column: 3, scope: !69, inlinedAt: !82)
!85 = !DILocation(line: 70, column: 3, scope: !69, inlinedAt: !82)
!86 = !DILocation(line: 41, column: 10, scope: !40)
!87 = !DILocation(line: 42, column: 45, scope: !40)
!88 = !DILocation(line: 42, column: 31, scope: !40)
!89 = !DILocation(line: 45, column: 26, scope: !40)
!90 = !DILocation(line: 45, column: 293, scope: !40)
!91 = !DILocation(line: 68, column: 3, scope: !69, inlinedAt: !92)
!92 = distinct !DILocation(line: 192, column: 3, scope: !72, inlinedAt: !93)
!93 = distinct !DILocation(line: 48, column: 5, scope: !40)
!94 = !DILocation(line: 69, column: 3, scope: !69, inlinedAt: !92)
!95 = !DILocation(line: 70, column: 3, scope: !69, inlinedAt: !92)
!96 = !DILocation(line: 57, column: 32, scope: !40)
!97 = !DILocation(line: 59, column: 44, scope: !40)
!98 = !DILocation(line: 57, column: 51, scope: !40)
!99 = !DILocation(line: 70, column: 96, scope: !40)
!100 = !DILocation(line: 70, column: 13, scope: !40)
!101 = !DILocation(line: 70, column: 85, scope: !40)
!102 = !DILocation(line: 351, column: 10, scope: !103, inlinedAt: !105)
!103 = distinct !DISubprogram(name: "max", scope: !104, file: !104, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!104 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!105 = distinct !DILocation(line: 81, column: 20, scope: !40)
!106 = !DILocation(line: 1018, column: 9, scope: !107, inlinedAt: !108)
!107 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !70, file: !70, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!108 = distinct !DILocation(line: 83, column: 34, scope: !40)
!109 = !DILocation(line: 171, column: 37, scope: !110, inlinedAt: !111)
!110 = distinct !DISubprogram(name: "__lane_id", scope: !70, file: !70, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!111 = distinct !DILocation(line: 990, column: 14, scope: !112, inlinedAt: !113)
!112 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !70, file: !70, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!113 = distinct !DILocation(line: 1019, column: 11, scope: !107, inlinedAt: !108)
!114 = !DILocation(line: 171, column: 10, scope: !110, inlinedAt: !111)
!115 = !DILocation(line: 991, column: 20, scope: !112, inlinedAt: !113)
!116 = !DILocation(line: 992, column: 36, scope: !112, inlinedAt: !113)
!117 = !DILocation(line: 992, column: 17, scope: !112, inlinedAt: !113)
!118 = !DILocation(line: 992, column: 11, scope: !112, inlinedAt: !113)
!119 = !DILocation(line: 993, column: 43, scope: !112, inlinedAt: !113)
!120 = !DILocation(line: 993, column: 10, scope: !112, inlinedAt: !113)
!121 = !DILocation(line: 1020, column: 14, scope: !107, inlinedAt: !108)
!122 = !DILocation(line: 351, column: 10, scope: !103, inlinedAt: !123)
!123 = distinct !DILocation(line: 83, column: 18, scope: !40)
!124 = !DILocation(line: 1018, column: 9, scope: !107, inlinedAt: !125)
!125 = distinct !DILocation(line: 84, column: 34, scope: !40)
!126 = !DILocation(line: 171, column: 37, scope: !110, inlinedAt: !127)
!127 = distinct !DILocation(line: 990, column: 14, scope: !112, inlinedAt: !128)
!128 = distinct !DILocation(line: 1019, column: 11, scope: !107, inlinedAt: !125)
!129 = !DILocation(line: 171, column: 10, scope: !110, inlinedAt: !127)
!130 = !DILocation(line: 991, column: 20, scope: !112, inlinedAt: !128)
!131 = !DILocation(line: 992, column: 36, scope: !112, inlinedAt: !128)
!132 = !DILocation(line: 992, column: 17, scope: !112, inlinedAt: !128)
!133 = !DILocation(line: 992, column: 11, scope: !112, inlinedAt: !128)
!134 = !DILocation(line: 993, column: 43, scope: !112, inlinedAt: !128)
!135 = !DILocation(line: 993, column: 10, scope: !112, inlinedAt: !128)
!136 = !DILocation(line: 1020, column: 14, scope: !107, inlinedAt: !125)
!137 = !DILocation(line: 351, column: 10, scope: !103, inlinedAt: !138)
!138 = distinct !DILocation(line: 84, column: 18, scope: !40)
!139 = !DILocation(line: 96, column: 26, scope: !40)
!140 = !DILocation(line: 97, column: 26, scope: !40)
!141 = !DILocation(line: 98, column: 26, scope: !40)
!142 = !DILocation(line: 99, column: 26, scope: !40)
!143 = !DILocation(line: 101, column: 25, scope: !40)
!144 = !DILocation(line: 102, column: 25, scope: !40)
!145 = !DILocation(line: 103, column: 25, scope: !40)
!146 = !DILocation(line: 104, column: 25, scope: !40)
!147 = !DILocation(line: 106, column: 23, scope: !40)
!148 = !DILocation(line: 107, column: 23, scope: !40)
!149 = !DILocation(line: 108, column: 23, scope: !40)
!150 = !DILocation(line: 109, column: 23, scope: !40)
!151 = !DILocation(line: 285, column: 49, scope: !152, inlinedAt: !153)
!152 = distinct !DISubprogram(name: "exp2f", scope: !104, file: !104, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!153 = distinct !DILocation(line: 110, column: 15, scope: !40)
!154 = !DILocation(line: 285, column: 49, scope: !152, inlinedAt: !155)
!155 = distinct !DILocation(line: 111, column: 15, scope: !40)
!156 = !DILocation(line: 285, column: 49, scope: !152, inlinedAt: !157)
!157 = distinct !DILocation(line: 112, column: 15, scope: !40)
!158 = !DILocation(line: 285, column: 49, scope: !152, inlinedAt: !159)
!159 = distinct !DILocation(line: 113, column: 15, scope: !40)
!160 = !DILocation(line: 1007, column: 10, scope: !161, inlinedAt: !163)
!161 = distinct !DISubprogram(name: "__float2half_rn", scope: !162, file: !162, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!162 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!163 = distinct !DILocation(line: 1077, column: 18, scope: !164, inlinedAt: !165)
!164 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !162, file: !162, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!165 = distinct !DILocation(line: 1295, column: 23, scope: !166, inlinedAt: !167)
!166 = distinct !DISubprogram(name: "__float22half2_rn", scope: !162, file: !162, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!167 = distinct !DILocation(line: 114, column: 29, scope: !40)
!168 = !{!169, !171}
!169 = distinct !{!169, !170, !"_ZL17__floats2half2_rnff: %agg.result"}
!170 = distinct !{!170, !"_ZL17__floats2half2_rnff"}
!171 = distinct !{!171, !172, !"_ZL17__float22half2_rn6float2: %agg.result"}
!172 = distinct !{!172, !"_ZL17__float22half2_rn6float2"}
!173 = !DILocation(line: 1007, column: 10, scope: !161, inlinedAt: !174)
!174 = distinct !DILocation(line: 1077, column: 38, scope: !164, inlinedAt: !165)
!175 = !DILocation(line: 1007, column: 10, scope: !161, inlinedAt: !176)
!176 = distinct !DILocation(line: 1077, column: 18, scope: !164, inlinedAt: !177)
!177 = distinct !DILocation(line: 1295, column: 23, scope: !166, inlinedAt: !178)
!178 = distinct !DILocation(line: 115, column: 29, scope: !40)
!179 = !{!180, !182}
!180 = distinct !{!180, !181, !"_ZL17__floats2half2_rnff: %agg.result"}
!181 = distinct !{!181, !"_ZL17__floats2half2_rnff"}
!182 = distinct !{!182, !183, !"_ZL17__float22half2_rn6float2: %agg.result"}
!183 = distinct !{!183, !"_ZL17__float22half2_rn6float2"}
!184 = !DILocation(line: 1007, column: 10, scope: !161, inlinedAt: !185)
!185 = distinct !DILocation(line: 1077, column: 38, scope: !164, inlinedAt: !177)
!186 = !DILocation(line: 116, column: 51, scope: !40)
!187 = !DILocation(line: 1082, column: 16, scope: !188, inlinedAt: !189)
!188 = distinct !DISubprogram(name: "__half2float", scope: !162, file: !162, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!189 = distinct !DILocation(line: 136, column: 55, scope: !190, inlinedAt: !191)
!190 = distinct !DISubprogram(name: "operator float", scope: !162, file: !162, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!191 = distinct !DILocation(line: 120, column: 50, scope: !40)
!192 = !DILocation(line: 120, column: 40, scope: !40)
!193 = !DILocation(line: 1018, column: 9, scope: !107, inlinedAt: !194)
!194 = distinct !DILocation(line: 122, column: 40, scope: !40)
!195 = !DILocation(line: 171, column: 37, scope: !110, inlinedAt: !196)
!196 = distinct !DILocation(line: 990, column: 14, scope: !112, inlinedAt: !197)
!197 = distinct !DILocation(line: 1019, column: 11, scope: !107, inlinedAt: !194)
!198 = !DILocation(line: 171, column: 10, scope: !110, inlinedAt: !196)
!199 = !DILocation(line: 991, column: 20, scope: !112, inlinedAt: !197)
!200 = !DILocation(line: 992, column: 36, scope: !112, inlinedAt: !197)
!201 = !DILocation(line: 992, column: 17, scope: !112, inlinedAt: !197)
!202 = !DILocation(line: 992, column: 11, scope: !112, inlinedAt: !197)
!203 = !DILocation(line: 993, column: 43, scope: !112, inlinedAt: !197)
!204 = !DILocation(line: 993, column: 10, scope: !112, inlinedAt: !197)
!205 = !DILocation(line: 1020, column: 14, scope: !107, inlinedAt: !194)
!206 = !DILocation(line: 122, column: 38, scope: !40)
!207 = !DILocation(line: 1018, column: 9, scope: !107, inlinedAt: !208)
!208 = distinct !DILocation(line: 123, column: 40, scope: !40)
!209 = !DILocation(line: 171, column: 37, scope: !110, inlinedAt: !210)
!210 = distinct !DILocation(line: 990, column: 14, scope: !112, inlinedAt: !211)
!211 = distinct !DILocation(line: 1019, column: 11, scope: !107, inlinedAt: !208)
!212 = !DILocation(line: 171, column: 10, scope: !110, inlinedAt: !210)
!213 = !DILocation(line: 991, column: 20, scope: !112, inlinedAt: !211)
!214 = !DILocation(line: 992, column: 36, scope: !112, inlinedAt: !211)
!215 = !DILocation(line: 992, column: 17, scope: !112, inlinedAt: !211)
!216 = !DILocation(line: 992, column: 11, scope: !112, inlinedAt: !211)
!217 = !DILocation(line: 993, column: 43, scope: !112, inlinedAt: !211)
!218 = !DILocation(line: 993, column: 10, scope: !112, inlinedAt: !211)
!219 = !DILocation(line: 1020, column: 14, scope: !107, inlinedAt: !208)
!220 = !DILocation(line: 68, column: 3, scope: !69, inlinedAt: !221)
!221 = distinct !DILocation(line: 192, column: 3, scope: !72, inlinedAt: !222)
!222 = distinct !DILocation(line: 124, column: 5, scope: !40)
!223 = !DILocation(line: 69, column: 3, scope: !69, inlinedAt: !221)
!224 = !DILocation(line: 70, column: 3, scope: !69, inlinedAt: !221)
!225 = !DILocation(line: 131, column: 56, scope: !40)
!226 = !DILocation(line: 131, column: 42, scope: !40)
!227 = !DILocation(line: 138, column: 28, scope: !40)
!228 = !DILocation(line: 138, column: 192, scope: !40)
!229 = !DILocation(line: 138, column: 63, scope: !40)
!230 = !DILocation(line: 68, column: 3, scope: !69, inlinedAt: !231)
!231 = distinct !DILocation(line: 192, column: 3, scope: !72, inlinedAt: !232)
!232 = distinct !DILocation(line: 142, column: 5, scope: !40)
!233 = !DILocation(line: 69, column: 3, scope: !69, inlinedAt: !231)
!234 = !DILocation(line: 70, column: 3, scope: !69, inlinedAt: !231)
!235 = !DILocation(line: 156, column: 325, scope: !40)
!236 = !DILocation(line: 156, column: 84, scope: !40)
!237 = !DILocation(line: 156, column: 65, scope: !40)
!238 = !DILocation(line: 156, column: 263, scope: !40)
!239 = !DILocation(line: 162, column: 94, scope: !40)
!240 = !DILocation(line: 162, column: 64, scope: !40)
!241 = !DILocation(line: 123, column: 38, scope: !40)
!242 = !DILocation(line: 0, scope: !40)
!243 = !DILocation(line: 178, column: 23, scope: !40)
!244 = !DILocation(line: 178, column: 38, scope: !40)
!245 = !DILocation(line: 68, column: 3, scope: !69, inlinedAt: !246)
!246 = distinct !DILocation(line: 192, column: 3, scope: !72, inlinedAt: !247)
!247 = distinct !DILocation(line: 180, column: 3, scope: !40)
!248 = !DILocation(line: 69, column: 3, scope: !69, inlinedAt: !246)
!249 = !DILocation(line: 70, column: 3, scope: !69, inlinedAt: !246)
!250 = !DILocation(line: 1007, column: 10, scope: !161, inlinedAt: !251)
!251 = distinct !DILocation(line: 1077, column: 18, scope: !164, inlinedAt: !252)
!252 = distinct !DILocation(line: 1295, column: 23, scope: !166, inlinedAt: !253)
!253 = distinct !DILocation(line: 185, column: 27, scope: !40)
!254 = !{!255, !257}
!255 = distinct !{!255, !256, !"_ZL17__floats2half2_rnff: %agg.result"}
!256 = distinct !{!256, !"_ZL17__floats2half2_rnff"}
!257 = distinct !{!257, !258, !"_ZL17__float22half2_rn6float2: %agg.result"}
!258 = distinct !{!258, !"_ZL17__float22half2_rn6float2"}
!259 = !DILocation(line: 1007, column: 10, scope: !161, inlinedAt: !260)
!260 = distinct !DILocation(line: 1077, column: 38, scope: !164, inlinedAt: !252)
!261 = !DILocation(line: 596, column: 67, scope: !262, inlinedAt: !263)
!262 = distinct !DISubprogram(name: "__half2", scope: !162, file: !162, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!263 = distinct !DILocation(line: 1077, column: 10, scope: !164, inlinedAt: !252)
!264 = !DILocation(line: 596, column: 73, scope: !262, inlinedAt: !263)
!265 = !DILocation(line: 1007, column: 10, scope: !161, inlinedAt: !266)
!266 = distinct !DILocation(line: 1077, column: 18, scope: !164, inlinedAt: !267)
!267 = distinct !DILocation(line: 1295, column: 23, scope: !166, inlinedAt: !268)
!268 = distinct !DILocation(line: 186, column: 27, scope: !40)
!269 = !{!270, !272}
!270 = distinct !{!270, !271, !"_ZL17__floats2half2_rnff: %agg.result"}
!271 = distinct !{!271, !"_ZL17__floats2half2_rnff"}
!272 = distinct !{!272, !273, !"_ZL17__float22half2_rn6float2: %agg.result"}
!273 = distinct !{!273, !"_ZL17__float22half2_rn6float2"}
!274 = !DILocation(line: 1007, column: 10, scope: !161, inlinedAt: !275)
!275 = distinct !DILocation(line: 1077, column: 38, scope: !164, inlinedAt: !267)
!276 = !DILocation(line: 596, column: 67, scope: !262, inlinedAt: !277)
!277 = distinct !DILocation(line: 1077, column: 10, scope: !164, inlinedAt: !267)
!278 = !DILocation(line: 596, column: 73, scope: !262, inlinedAt: !277)
!279 = !DILocation(line: 187, column: 38, scope: !40)
!280 = !DILocation(line: 188, column: 132, scope: !40)
!281 = !DILocation(line: 188, column: 60, scope: !40)
!282 = !DILocation(line: 188, column: 138, scope: !40)
!283 = !DILocation(line: 188, column: 22, scope: !40)
!284 = !DILocation(line: 188, column: 181, scope: !40)
!285 = !DILocation(line: 68, column: 3, scope: !69, inlinedAt: !286)
!286 = distinct !DILocation(line: 192, column: 3, scope: !72, inlinedAt: !287)
!287 = distinct !DILocation(line: 190, column: 3, scope: !40)
!288 = !DILocation(line: 69, column: 3, scope: !69, inlinedAt: !286)
!289 = !DILocation(line: 70, column: 3, scope: !69, inlinedAt: !286)
!290 = !DILocation(line: 192, column: 8, scope: !40)
!291 = !DILocation(line: 193, column: 239, scope: !40)
!292 = !DILocation(line: 193, column: 153, scope: !40)
!293 = !DILocation(line: 193, column: 22, scope: !40)
!294 = !DILocation(line: 193, column: 134, scope: !40)
!295 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!296 = !{i32 2, i32 -1, i32 -1, i32 -1}
!297 = !DILocation(line: 195, column: 1, scope: !40)
