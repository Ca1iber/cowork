; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v071_codex_power_s1_k_copy_loop_sc-16g-2/case6.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v071_codex_power_s1_k_copy_loop_sc-16g-2/codegen/case6.device.cpp"
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

; Function Attrs: convergent mustprogress norecurse nounwind
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
  %.pre2060 = shl nuw nsw i32 %.pre, 6
  %.pre2061 = and i32 %.pre2060, 960
  %.pre2062 = lshr i32 %.pre, 5
  %.pre2063 = and i32 %.pre, 7
  %.pre2064 = lshr i32 %.pre, 4
  %.pre2065 = lshr i32 %.pre, 3
  %.pre2066 = xor i32 %.pre2064, %.pre2065
  %.pre2067 = and i32 %.pre2066, 1
  %.pre2068 = xor i32 %.pre2062, %.pre2063, !dbg !56
  %.pre2069 = shl nuw nsw i32 %.pre2067, 3, !dbg !57
  %.pre2070 = shl nuw nsw i32 %.pre2068, 4, !dbg !57
  %.pre2071 = add nuw nsw i32 %.pre2062, 2, !dbg !58
  %.pre2072 = xor i32 %.pre2071, %.pre2063, !dbg !56
  %.pre2073 = shl nuw nsw i32 %.pre2072, 4, !dbg !57
  %.pre2074 = add nuw nsw i32 %.pre2062, 4, !dbg !58
  %.pre2075 = xor i32 %.pre2074, %.pre2063, !dbg !56
  %.pre2076 = shl nuw nsw i32 %.pre2075, 4, !dbg !57
  %.pre2077 = add nuw nsw i32 %.pre2062, 6, !dbg !58
  %.pre2078 = xor i32 %.pre2077, %.pre2063, !dbg !56
  %.pre2079 = shl nuw nsw i32 %.pre2078, 4, !dbg !57
  %.pre2080 = or disjoint i32 %.pre2061, 1024, !dbg !59
  %.pre2081 = shl nuw nsw i32 %.pre2067, 3, !dbg !57
  %.pre2082 = xor i32 %.pre2081, 8, !dbg !57
  %.pre2083 = shl nuw nsw i32 %.pre, 7
  %.pre2085 = and i32 %.pre2083, 1024
  %.pre2086 = shl nuw nsw i32 %.pre, 2
  %.pre2088 = and i32 %.pre2086, 4032
  %.pre2089 = and i32 %.pre2065, 1
  %.pre2090 = shl nsw i32 %0, 21
  %.pre2091 = shl nsw i32 %1, 11
  %.pre2092 = add nuw nsw i32 %.pre2090, %.pre2091
  %.pre2093 = shl nuw nsw i32 %.pre, 3
  %.pre2094 = add nuw nsw i32 %.pre2092, %.pre2093
  %.pre2095 = zext nneg i32 %.pre2094 to i64, !dbg !60
  %.pre2097 = xor i32 %.pre2064, %.pre2063
  %.pre2098 = shl nuw nsw i32 %.pre2097, 4, !dbg !61
  %.pre2099 = shl nuw nsw i32 %.pre2089, 3, !dbg !61
  %.pre2100 = shl nuw nsw i32 %.pre2089, 3, !dbg !61
  %.pre2101 = xor i32 %.pre2100, 8, !dbg !61
  %.pre2102 = add nuw nsw i32 %.pre2064, 4
  %.pre2103 = xor i32 %.pre2102, %.pre2063
  %.pre2104 = shl nuw nsw i32 %.pre2103, 4, !dbg !61
  %.pre2105 = add nuw nsw i64 %.pre2095, 512, !dbg !62
  %.pre2107 = add nuw nsw i64 %.pre2095, 1024, !dbg !62
  %.pre2109 = add nuw nsw i64 %.pre2095, 1536, !dbg !62
  br label %if.end609, !dbg !63

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
  %6 = zext nneg i32 %add18 to i64, !dbg !64
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %6, !dbg !65
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %add.ptr, align 16, !dbg !66
  %qk_fetch.sroa.12.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !66
  %qk_fetch.sroa.12.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.12.0.add.ptr.sroa_idx, align 8, !dbg !66
  %xor = xor i32 %shr44, %and40
  %7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul37, !dbg !67
  %8 = getelementptr inbounds %struct.__half, ptr addrspace(3) %7, i32 %mul32, !dbg !67
  %.idx953 = shl nuw nsw i32 %xor, 4, !dbg !67
  %9 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 %.idx953, !dbg !67
  %add.ptr57.idx = shl nuw nsw i32 %shr52, 3, !dbg !67
  %add.ptr57 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 %add.ptr57.idx, !dbg !67
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr57, align 8, !dbg !68
  %xor53.1 = shl nuw nsw i32 %shr52, 3, !dbg !67
  %add.ptr57.idx.1 = xor i32 %xor53.1, 8, !dbg !67
  %add.ptr57.1 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 %add.ptr57.idx.1, !dbg !67
  store i64 %qk_fetch.sroa.12.0.copyload, ptr addrspace(3) %add.ptr57.1, align 8, !dbg !68
  %10 = add nuw nsw i64 %6, 512, !dbg !69
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %10, !dbg !65
  %qk_fetch.sroa.0.0.copyload2049 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !66
  %qk_fetch.sroa.12.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !66
  %qk_fetch.sroa.12.0.copyload2053 = load i64, ptr addrspace(4) %qk_fetch.sroa.12.0.add.ptr.1.sroa_idx, align 8, !dbg !66
  %add45.1 = add nuw nsw i32 %shr44, 4
  %xor.1 = xor i32 %add45.1, %and40
  %11 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 512, !dbg !67
  %.idx953.1972 = shl nuw nsw i32 %xor.1, 4, !dbg !67
  %12 = getelementptr inbounds i8, ptr addrspace(3) %11, i32 %.idx953.1972, !dbg !67
  %add.ptr57.1974 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 %add.ptr57.idx, !dbg !67
  store i64 %qk_fetch.sroa.0.0.copyload2049, ptr addrspace(3) %add.ptr57.1974, align 8, !dbg !68
  %add.ptr57.1.1 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 %add.ptr57.idx.1, !dbg !67
  store i64 %qk_fetch.sroa.12.0.copyload2053, ptr addrspace(3) %add.ptr57.1.1, align 8, !dbg !68
  %13 = add nuw nsw i64 %6, 1024, !dbg !69
  %add.ptr.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %13, !dbg !65
  %qk_fetch.sroa.0.0.copyload2050 = load i64, ptr addrspace(4) %add.ptr.2, align 16, !dbg !66
  %qk_fetch.sroa.12.0.add.ptr.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.2, i64 8, !dbg !66
  %qk_fetch.sroa.12.0.copyload2054 = load i64, ptr addrspace(4) %qk_fetch.sroa.12.0.add.ptr.2.sroa_idx, align 8, !dbg !66
  %14 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 1024, !dbg !67
  %15 = getelementptr inbounds i8, ptr addrspace(3) %14, i32 %.idx953, !dbg !67
  %add.ptr57.2 = getelementptr inbounds i8, ptr addrspace(3) %15, i32 %add.ptr57.idx.1, !dbg !67
  store i64 %qk_fetch.sroa.0.0.copyload2050, ptr addrspace(3) %add.ptr57.2, align 8, !dbg !68
  %add.ptr57.1.2 = getelementptr inbounds i8, ptr addrspace(3) %15, i32 %add.ptr57.idx, !dbg !67
  store i64 %qk_fetch.sroa.12.0.copyload2054, ptr addrspace(3) %add.ptr57.1.2, align 8, !dbg !68
  %16 = add nuw nsw i64 %6, 1536, !dbg !69
  %add.ptr.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %16, !dbg !65
  %qk_fetch.sroa.0.0.copyload2051 = load i64, ptr addrspace(4) %add.ptr.3, align 16, !dbg !66
  %qk_fetch.sroa.12.0.add.ptr.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.3, i64 8, !dbg !66
  %qk_fetch.sroa.12.0.copyload2055 = load i64, ptr addrspace(4) %qk_fetch.sroa.12.0.add.ptr.3.sroa_idx, align 8, !dbg !66
  %17 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 1536, !dbg !67
  %18 = getelementptr inbounds i8, ptr addrspace(3) %17, i32 %.idx953.1972, !dbg !67
  %add.ptr57.3 = getelementptr inbounds i8, ptr addrspace(3) %18, i32 %add.ptr57.idx.1, !dbg !67
  store i64 %qk_fetch.sroa.0.0.copyload2051, ptr addrspace(3) %add.ptr57.3, align 8, !dbg !68
  %add.ptr57.1.3 = getelementptr inbounds i8, ptr addrspace(3) %18, i32 %add.ptr57.idx, !dbg !67
  store i64 %qk_fetch.sroa.12.0.copyload2055, ptr addrspace(3) %add.ptr57.1.3, align 8, !dbg !68
  fence syncscope("warp") release, !dbg !70
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %and68 = shl nuw nsw i32 %3, 6
  %mul69 = and i32 %and68, 960
  %shr74 = lshr i32 %3, 5
  %shr83877 = xor i32 %shr44, %and51
  %xor87 = and i32 %shr83877, 1
  %xor78 = xor i32 %shr74, %and40, !dbg !78
  %19 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul69, !dbg !79
  %.idx954 = shl nuw nsw i32 %xor87, 3, !dbg !79
  %20 = getelementptr inbounds i8, ptr addrspace(3) %19, i32 %.idx954, !dbg !79
  %add.ptr93.idx = shl nuw nsw i32 %xor78, 4, !dbg !79
  %add.ptr93 = getelementptr inbounds i8, ptr addrspace(3) %20, i32 %add.ptr93.idx, !dbg !79
  %21 = load <4 x half>, ptr addrspace(3) %add.ptr93, align 8, !dbg !80
  %add75.1 = add nuw nsw i32 %shr74, 2, !dbg !81
  %xor78.1 = xor i32 %add75.1, %and40, !dbg !78
  %add.ptr93.idx.1 = shl nuw nsw i32 %xor78.1, 4, !dbg !79
  %add.ptr93.1 = getelementptr inbounds i8, ptr addrspace(3) %20, i32 %add.ptr93.idx.1, !dbg !79
  %22 = load <4 x half>, ptr addrspace(3) %add.ptr93.1, align 8, !dbg !80
  %add75.2 = add nuw nsw i32 %shr74, 4, !dbg !81
  %xor78.2 = xor i32 %add75.2, %and40, !dbg !78
  %add.ptr93.idx.2 = shl nuw nsw i32 %xor78.2, 4, !dbg !79
  %add.ptr93.2 = getelementptr inbounds i8, ptr addrspace(3) %20, i32 %add.ptr93.idx.2, !dbg !79
  %23 = load <4 x half>, ptr addrspace(3) %add.ptr93.2, align 8, !dbg !80
  %add75.3 = add nuw nsw i32 %shr74, 6, !dbg !81
  %xor78.3 = xor i32 %add75.3, %and40, !dbg !78
  %add.ptr93.idx.3 = shl nuw nsw i32 %xor78.3, 4, !dbg !79
  %add.ptr93.3 = getelementptr inbounds i8, ptr addrspace(3) %20, i32 %add.ptr93.idx.3, !dbg !79
  %24 = load <4 x half>, ptr addrspace(3) %add.ptr93.3, align 8, !dbg !80
  %add70.4 = or disjoint i32 %mul69, 1024, !dbg !82
  %25 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add70.4, !dbg !79
  %xor89.4 = shl nuw nsw i32 %xor87, 3, !dbg !79
  %.idx954.4 = xor i32 %xor89.4, 8, !dbg !79
  %26 = getelementptr inbounds i8, ptr addrspace(3) %25, i32 %.idx954.4, !dbg !79
  %add.ptr93.4 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 %add.ptr93.idx, !dbg !79
  %27 = load <4 x half>, ptr addrspace(3) %add.ptr93.4, align 8, !dbg !80
  %add.ptr93.5 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 %add.ptr93.idx.1, !dbg !79
  %28 = load <4 x half>, ptr addrspace(3) %add.ptr93.5, align 8, !dbg !80
  %add.ptr93.6 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 %add.ptr93.idx.2, !dbg !79
  %29 = load <4 x half>, ptr addrspace(3) %add.ptr93.6, align 8, !dbg !80
  %add.ptr93.7 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 %add.ptr93.idx.3, !dbg !79
  %30 = load <4 x half>, ptr addrspace(3) %add.ptr93.7, align 8, !dbg !80
  fence syncscope("warp") release, !dbg !83
  tail call void @llvm.mxc.barrier.warp(), !dbg !86
  fence syncscope("warp") acquire, !dbg !87
  %conv = zext nneg i32 %0 to i64
  %conv110 = zext nneg i32 %mul7 to i64
  %mul115 = zext nneg i32 %mul20 to i64
  %.idx = shl nuw nsw i64 %conv110, 8
  %invariant.gep = getelementptr inbounds i8, ptr addrspace(4) %K.coerce, i64 %.idx, !dbg !88
  %invariant.gep921 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %mul115, !dbg !88
  %31 = and i32 %3, 8
  %.idx955 = shl nuw nsw i64 %conv, 18
  %32 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep921, i64 %.idx955
  %invariant.gep2111 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %mul37, !dbg !89
  br label %for.body104, !dbg !89

for.cond.cleanup103:                              ; preds = %for.body104
  fence syncscope("warp") release, !dbg !90
  tail call void @llvm.mxc.barrier.warp(), !dbg !93
  fence syncscope("warp") acquire, !dbg !94
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr93, align 8, !dbg !95
  %33 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %21, <4 x float> zeroinitializer), !dbg !96
  %add.ptr215.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93, i32 2048, !dbg !97
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr215.1, align 8, !dbg !95
  %34 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %21, <4 x float> zeroinitializer), !dbg !96
  %k_local.sroa.0.0.copyload.1982 = load <4 x half>, ptr addrspace(3) %add.ptr93.1, align 8, !dbg !95
  %35 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1982, <4 x half> %22, <4 x float> %33), !dbg !96
  %add.ptr215.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93.1, i32 2048, !dbg !97
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.1, align 8, !dbg !95
  %36 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %22, <4 x float> %34), !dbg !96
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr93.2, align 8, !dbg !95
  %37 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %23, <4 x float> %35), !dbg !96
  %add.ptr215.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93.2, i32 2048, !dbg !97
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.2, align 8, !dbg !95
  %38 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %23, <4 x float> %36), !dbg !96
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr93.3, align 8, !dbg !95
  %39 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %24, <4 x float> %37), !dbg !96
  %add.ptr215.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93.3, i32 2048, !dbg !97
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.3, align 8, !dbg !95
  %40 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %24, <4 x float> %38), !dbg !96
  %add192.4 = or disjoint i32 %mul69, 2048
  %41 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add192.4, !dbg !97
  %42 = getelementptr inbounds i8, ptr addrspace(3) %41, i32 %.idx954.4, !dbg !97
  %43 = getelementptr inbounds i8, ptr addrspace(3) %42, i32 %add.ptr93.idx, !dbg !97
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %43, align 8, !dbg !95
  %44 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %27, <4 x float> %39), !dbg !96
  %add.ptr215.1.4 = getelementptr inbounds i8, ptr addrspace(3) %43, i32 2048, !dbg !97
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.4, align 8, !dbg !95
  %45 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %27, <4 x float> %40), !dbg !96
  %46 = getelementptr inbounds i8, ptr addrspace(3) %42, i32 %add.ptr93.idx.1, !dbg !97
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %46, align 8, !dbg !95
  %47 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %28, <4 x float> %44), !dbg !96
  %add.ptr215.1.5 = getelementptr inbounds i8, ptr addrspace(3) %46, i32 2048, !dbg !97
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.5, align 8, !dbg !95
  %48 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %28, <4 x float> %45), !dbg !96
  %49 = getelementptr inbounds i8, ptr addrspace(3) %42, i32 %add.ptr93.idx.2, !dbg !97
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %49, align 8, !dbg !95
  %50 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %29, <4 x float> %47), !dbg !96
  %add.ptr215.1.6 = getelementptr inbounds i8, ptr addrspace(3) %49, i32 2048, !dbg !97
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.6, align 8, !dbg !95
  %51 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %29, <4 x float> %48), !dbg !96
  %52 = getelementptr inbounds i8, ptr addrspace(3) %42, i32 %add.ptr93.idx.3, !dbg !97
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %52, align 8, !dbg !95
  %53 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %30, <4 x float> %50), !dbg !96
  %add.ptr215.1.7 = getelementptr inbounds i8, ptr addrspace(3) %52, i32 2048, !dbg !97
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.7, align 8, !dbg !95
  %54 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %30, <4 x float> %51), !dbg !96
  %55 = lshr i32 %3, 2
  %mul246 = and i32 %55, 252
  %add247 = add nuw nsw i32 %mul7, %mul246
  %cmp251.not = icmp sgt i32 %add247, %1, !dbg !98
  %scores.sroa.0.0.vec.extract = extractelement <4 x float> %53, i64 0
  %spec.select = select i1 %cmp251.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract, !dbg !99
  %cmp251.not.1.not = icmp slt i32 %add247, %1, !dbg !98
  %scores.sroa.0.4.vec.extract = extractelement <4 x float> %53, i64 1, !dbg !99
  %condval.0.1 = select i1 %cmp251.not.1.not, float %scores.sroa.0.4.vec.extract, float 0xFFF0000000000000, !dbg !99
  %add249.2 = or disjoint i32 %add247, 2, !dbg !100
  %cmp251.not.2 = icmp sgt i32 %add249.2, %1, !dbg !98
  %scores.sroa.0.8.vec.extract = extractelement <4 x float> %53, i64 2, !dbg !99
  %condval.0.2 = select i1 %cmp251.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract, !dbg !99
  %add249.3 = or disjoint i32 %add247, 3, !dbg !100
  %cmp251.not.3 = icmp sgt i32 %add249.3, %1, !dbg !98
  %scores.sroa.0.12.vec.extract = extractelement <4 x float> %53, i64 3, !dbg !99
  %condval.0.3 = select i1 %cmp251.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract, !dbg !99
  %add248.1 = add nuw nsw i32 %add247, 16
  %cmp251.not.1984 = icmp sgt i32 %add248.1, %1, !dbg !98
  %scores.sroa.38.16.vec.extract = extractelement <4 x float> %54, i64 0, !dbg !99
  %condval.0.1987 = select i1 %cmp251.not.1984, float 0xFFF0000000000000, float %scores.sroa.38.16.vec.extract, !dbg !99
  %add249.1.1 = add nuw nsw i32 %add247, 17, !dbg !100
  %cmp251.not.1.1 = icmp sgt i32 %add249.1.1, %1, !dbg !98
  %scores.sroa.38.20.vec.extract = extractelement <4 x float> %54, i64 1, !dbg !99
  %condval.0.1.1 = select i1 %cmp251.not.1.1, float 0xFFF0000000000000, float %scores.sroa.38.20.vec.extract, !dbg !99
  %add249.2.1 = add nuw nsw i32 %add247, 18, !dbg !100
  %cmp251.not.2.1 = icmp sgt i32 %add249.2.1, %1, !dbg !98
  %scores.sroa.38.24.vec.extract = extractelement <4 x float> %54, i64 2, !dbg !99
  %condval.0.2.1 = select i1 %cmp251.not.2.1, float 0xFFF0000000000000, float %scores.sroa.38.24.vec.extract, !dbg !99
  %add249.3.1 = add nuw nsw i32 %add247, 19, !dbg !100
  %cmp251.not.3.1 = icmp sgt i32 %add249.3.1, %1, !dbg !98
  %scores.sroa.38.28.vec.extract = extractelement <4 x float> %54, i64 3, !dbg !99
  %condval.0.3.1 = select i1 %cmp251.not.3.1, float 0xFFF0000000000000, float %scores.sroa.38.28.vec.extract, !dbg !99
  %56 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !101
  %57 = tail call contract noundef float @llvm.maxnum.f32(float %56, float %condval.0.1), !dbg !101
  %58 = tail call contract noundef float @llvm.maxnum.f32(float %57, float %condval.0.2), !dbg !101
  %59 = tail call contract noundef float @llvm.maxnum.f32(float %58, float %condval.0.3), !dbg !101
  %60 = tail call contract noundef float @llvm.maxnum.f32(float %59, float %condval.0.1987), !dbg !101
  %61 = tail call contract noundef float @llvm.maxnum.f32(float %60, float %condval.0.1.1), !dbg !101
  %62 = tail call contract noundef float @llvm.maxnum.f32(float %61, float %condval.0.2.1), !dbg !101
  %63 = tail call contract noundef float @llvm.maxnum.f32(float %62, float %condval.0.3.1), !dbg !101
  %64 = bitcast float %63 to i32, !dbg !105
  %65 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !108
  %66 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %65) #10, !dbg !113
  %xor.i.i = xor i32 %66, 32, !dbg !114
  %67 = and i32 %66, -64, !dbg !115
  %and.i.i = add nsw i32 %67, 64, !dbg !115
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !116
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %66, !dbg !117
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !118
  %68 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %64), !dbg !119
  %69 = bitcast i32 %68 to float, !dbg !120
  %70 = tail call contract noundef float @llvm.maxnum.f32(float %63, float %69), !dbg !121
  %71 = bitcast float %70 to i32, !dbg !123
  %72 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !125
  %73 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %72) #10, !dbg !128
  %xor.i.i878 = xor i32 %73, 16, !dbg !129
  %74 = and i32 %73, -64, !dbg !130
  %and.i.i879 = add nsw i32 %74, 64, !dbg !130
  %cmp.not.i.i880 = icmp slt i32 %xor.i.i878, %and.i.i879, !dbg !131
  %cond.i.i881 = select i1 %cmp.not.i.i880, i32 %xor.i.i878, i32 %73, !dbg !132
  %shl.i.i882 = shl i32 %cond.i.i881, 2, !dbg !133
  %75 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i882, i32 %71), !dbg !134
  %76 = bitcast i32 %75 to float, !dbg !135
  %77 = tail call contract noundef float @llvm.maxnum.f32(float %70, float %76), !dbg !136
  %sub = fsub contract float %spec.select, %77, !dbg !138
  %sub309 = fsub contract float %condval.0.1, %77, !dbg !139
  %sub312 = fsub contract float %condval.0.2, %77, !dbg !140
  %sub315 = fsub contract float %condval.0.3, %77, !dbg !141
  %mul320 = fmul contract float %sub, 0x3FC0527DC0000000, !dbg !142
  %mul324 = fmul contract float %sub309, 0x3FC0527DC0000000, !dbg !143
  %mul328 = fmul contract float %sub312, 0x3FC0527DC0000000, !dbg !144
  %mul332 = fmul contract float %sub315, 0x3FC0527DC0000000, !dbg !145
  %add337 = fadd contract float %mul320, 8.000000e+00, !dbg !146
  %add341 = fadd contract float %mul324, 8.000000e+00, !dbg !147
  %add345 = fadd contract float %mul328, 8.000000e+00, !dbg !148
  %add349 = fadd contract float %mul332, 8.000000e+00, !dbg !149
  %cmp.i.i = fcmp contract olt float %add337, -1.260000e+02, !dbg !150
  %cond.i.i883 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i = fadd contract float %add337, %cond.i.i883, !dbg !150
  %78 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !150
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i = fmul contract float %cond2.i.i, %78, !dbg !150
  %cmp.i.i884 = fcmp contract olt float %add341, -1.260000e+02, !dbg !153
  %cond.i.i885 = select contract i1 %cmp.i.i884, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i886 = fadd contract float %add341, %cond.i.i885, !dbg !153
  %79 = tail call contract float @llvm.exp2.f32(float %add.i.i886), !dbg !153
  %cond2.i.i887 = select contract i1 %cmp.i.i884, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i888 = fmul contract float %cond2.i.i887, %79, !dbg !153
  %cmp.i.i889 = fcmp contract olt float %add345, -1.260000e+02, !dbg !155
  %cond.i.i890 = select contract i1 %cmp.i.i889, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i891 = fadd contract float %add345, %cond.i.i890, !dbg !155
  %80 = tail call contract float @llvm.exp2.f32(float %add.i.i891), !dbg !155
  %cond2.i.i892 = select contract i1 %cmp.i.i889, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i893 = fmul contract float %cond2.i.i892, %80, !dbg !155
  %cmp.i.i894 = fcmp contract olt float %add349, -1.260000e+02, !dbg !157
  %cond.i.i895 = select contract i1 %cmp.i.i894, float 6.400000e+01, float 0.000000e+00, !dbg !157
  %add.i.i896 = fadd contract float %add349, %cond.i.i895, !dbg !157
  %81 = tail call contract float @llvm.exp2.f32(float %add.i.i896), !dbg !157
  %cond2.i.i897 = select contract i1 %cmp.i.i894, float 0x3BF0000000000000, float 1.000000e+00, !dbg !157
  %mul.i.i898 = fmul contract float %cond2.i.i897, %81, !dbg !157
  %82 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !159
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !159, !noalias !167
  %83 = fptrunc float %mul.i.i to half, !dbg !159
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %82), !dbg !159, !noalias !167
  %84 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !167
  %85 = fptrunc float %mul.i.i888 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %84), !dbg !172, !noalias !167
  %86 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !174, !noalias !178
  %87 = fptrunc float %mul.i.i893 to half, !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %86), !dbg !174, !noalias !178
  %88 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !183, !noalias !178
  %89 = fptrunc float %mul.i.i898 to half, !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %88), !dbg !183, !noalias !178
  %90 = insertelement <4 x half> poison, half %83, i64 0, !dbg !185
  %91 = insertelement <4 x half> %90, half %85, i64 1, !dbg !185
  %92 = insertelement <4 x half> %91, half %87, i64 2, !dbg !185
  %93 = insertelement <4 x half> %92, half %89, i64 3, !dbg !185
  %sub.1 = fsub contract float %condval.0.1987, %77, !dbg !138
  %sub309.1 = fsub contract float %condval.0.1.1, %77, !dbg !139
  %sub312.1 = fsub contract float %condval.0.2.1, %77, !dbg !140
  %sub315.1 = fsub contract float %condval.0.3.1, %77, !dbg !141
  %mul320.1 = fmul contract float %sub.1, 0x3FC0527DC0000000, !dbg !142
  %mul324.1 = fmul contract float %sub309.1, 0x3FC0527DC0000000, !dbg !143
  %mul328.1 = fmul contract float %sub312.1, 0x3FC0527DC0000000, !dbg !144
  %mul332.1 = fmul contract float %sub315.1, 0x3FC0527DC0000000, !dbg !145
  %add337.1 = fadd contract float %mul320.1, 8.000000e+00, !dbg !146
  %add341.1 = fadd contract float %mul324.1, 8.000000e+00, !dbg !147
  %add345.1 = fadd contract float %mul328.1, 8.000000e+00, !dbg !148
  %add349.1 = fadd contract float %mul332.1, 8.000000e+00, !dbg !149
  %cmp.i.i.1 = fcmp contract olt float %add337.1, -1.260000e+02, !dbg !150
  %cond.i.i883.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i.1 = fadd contract float %add337.1, %cond.i.i883.1, !dbg !150
  %94 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !150
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %94, !dbg !150
  %cmp.i.i884.1 = fcmp contract olt float %add341.1, -1.260000e+02, !dbg !153
  %cond.i.i885.1 = select contract i1 %cmp.i.i884.1, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i886.1 = fadd contract float %add341.1, %cond.i.i885.1, !dbg !153
  %95 = tail call contract float @llvm.exp2.f32(float %add.i.i886.1), !dbg !153
  %cond2.i.i887.1 = select contract i1 %cmp.i.i884.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i888.1 = fmul contract float %cond2.i.i887.1, %95, !dbg !153
  %cmp.i.i889.1 = fcmp contract olt float %add345.1, -1.260000e+02, !dbg !155
  %cond.i.i890.1 = select contract i1 %cmp.i.i889.1, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i891.1 = fadd contract float %add345.1, %cond.i.i890.1, !dbg !155
  %96 = tail call contract float @llvm.exp2.f32(float %add.i.i891.1), !dbg !155
  %cond2.i.i892.1 = select contract i1 %cmp.i.i889.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i893.1 = fmul contract float %cond2.i.i892.1, %96, !dbg !155
  %cmp.i.i894.1 = fcmp contract olt float %add349.1, -1.260000e+02, !dbg !157
  %cond.i.i895.1 = select contract i1 %cmp.i.i894.1, float 6.400000e+01, float 0.000000e+00, !dbg !157
  %add.i.i896.1 = fadd contract float %add349.1, %cond.i.i895.1, !dbg !157
  %97 = tail call contract float @llvm.exp2.f32(float %add.i.i896.1), !dbg !157
  %cond2.i.i897.1 = select contract i1 %cmp.i.i894.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !157
  %mul.i.i898.1 = fmul contract float %cond2.i.i897.1, %97, !dbg !157
  %98 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !159
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !159, !noalias !167
  %99 = fptrunc float %mul.i.i.1 to half, !dbg !159
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %98), !dbg !159, !noalias !167
  %100 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !167
  %101 = fptrunc float %mul.i.i888.1 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %100), !dbg !172, !noalias !167
  %102 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !174, !noalias !178
  %103 = fptrunc float %mul.i.i893.1 to half, !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %102), !dbg !174, !noalias !178
  %104 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !183, !noalias !178
  %105 = fptrunc float %mul.i.i898.1 to half, !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %104), !dbg !183, !noalias !178
  %106 = insertelement <4 x half> poison, half %99, i64 0, !dbg !185
  %107 = insertelement <4 x half> %106, half %101, i64 1, !dbg !185
  %108 = insertelement <4 x half> %107, half %103, i64 2, !dbg !185
  %109 = insertelement <4 x half> %108, half %105, i64 3, !dbg !185
  %conv.i.i = fpext half %83 to float, !dbg !186
  %add387 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !191
  %conv.i.i.1 = fpext half %85 to float, !dbg !186
  %add387.1 = fadd contract float %add387, %conv.i.i.1, !dbg !191
  %conv.i.i.2 = fpext half %87 to float, !dbg !186
  %add387.2 = fadd contract float %add387.1, %conv.i.i.2, !dbg !191
  %conv.i.i.3 = fpext half %89 to float, !dbg !186
  %add387.3 = fadd contract float %add387.2, %conv.i.i.3, !dbg !191
  %conv.i.i.4 = fpext half %99 to float, !dbg !186
  %add387.4 = fadd contract float %add387.3, %conv.i.i.4, !dbg !191
  %conv.i.i.5 = fpext half %101 to float, !dbg !186
  %add387.5 = fadd contract float %add387.4, %conv.i.i.5, !dbg !191
  %conv.i.i.6 = fpext half %103 to float, !dbg !186
  %add387.6 = fadd contract float %add387.5, %conv.i.i.6, !dbg !191
  %conv.i.i.7 = fpext half %105 to float, !dbg !186
  %add387.7 = fadd contract float %add387.6, %conv.i.i.7, !dbg !191
  %110 = bitcast float %add387.7 to i32, !dbg !192
  %111 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !194
  %112 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %111) #10, !dbg !197
  %xor.i.i900 = xor i32 %112, 32, !dbg !198
  %113 = and i32 %112, -64, !dbg !199
  %and.i.i901 = add nsw i32 %113, 64, !dbg !199
  %cmp.not.i.i902 = icmp slt i32 %xor.i.i900, %and.i.i901, !dbg !200
  %cond.i.i903 = select i1 %cmp.not.i.i902, i32 %xor.i.i900, i32 %112, !dbg !201
  %shl.i.i904 = shl i32 %cond.i.i903, 2, !dbg !202
  %114 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i904, i32 %110), !dbg !203
  %115 = bitcast i32 %114 to float, !dbg !204
  %add395 = fadd contract float %add387.7, %115, !dbg !205
  %116 = bitcast float %add395 to i32, !dbg !206
  %117 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !208
  %118 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %117) #10, !dbg !211
  %xor.i.i905 = xor i32 %118, 16, !dbg !212
  %119 = and i32 %118, -64, !dbg !213
  %and.i.i906 = add nsw i32 %119, 64, !dbg !213
  %cmp.not.i.i907 = icmp slt i32 %xor.i.i905, %and.i.i906, !dbg !214
  %cond.i.i908 = select i1 %cmp.not.i.i907, i32 %xor.i.i905, i32 %118, !dbg !215
  %shl.i.i909 = shl i32 %cond.i.i908, 2, !dbg !216
  %120 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i909, i32 %116), !dbg !217
  %121 = bitcast i32 %120 to float, !dbg !218
  fence syncscope("warp") release, !dbg !219
  tail call void @llvm.mxc.barrier.warp(), !dbg !222
  fence syncscope("warp") acquire, !dbg !223
  %mul416 = shl nuw nsw i64 %conv, 17
  %122 = shl nuw nsw i32 %3, 5
  %123 = and i32 %122, 32512
  %mul423 = zext nneg i32 %123 to i64
  %add419 = or disjoint i64 %mul416, %mul423
  %124 = and i32 %mul20, 56
  %mul437 = zext nneg i32 %124 to i64
  %invariant.gep934 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %mul437
  %mul471 = and i32 %122, 224
  %xor479 = xor i32 %and51, %and40
  %125 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep934, i64 %add419, !dbg !224
  %126 = getelementptr inbounds i8, ptr addrspace(4) %125, i64 %.idx, !dbg !224
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %126, align 16, !dbg !225
  %v_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 2, !dbg !225
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4, !dbg !225
  %v_fetch.sroa.14.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx, align 4, !dbg !225
  %v_fetch.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 6, !dbg !225
  %v_fetch.sroa.18.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 8, !dbg !225
  %v_fetch.sroa.22.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx, align 8, !dbg !225
  %v_fetch.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 10, !dbg !225
  %v_fetch.sroa.26.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 12, !dbg !225
  %v_fetch.sroa.30.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx, align 4, !dbg !225
  %v_fetch.sroa.34.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 14, !dbg !225
  %v_fetch.sroa.34.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx, align 2, !dbg !225, !tbaa !30
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 256, !dbg !224
  %v_fetch.sroa.38.16.copyload = load i16, ptr addrspace(4) %gep.1, align 16, !dbg !225
  %v_fetch.sroa.46.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 258, !dbg !225
  %v_fetch.sroa.46.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.sroa_idx, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 260, !dbg !225
  %v_fetch.sroa.50.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.sroa_idx, align 4, !dbg !225
  %v_fetch.sroa.54.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 262, !dbg !225
  %v_fetch.sroa.54.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.sroa_idx, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 264, !dbg !225
  %v_fetch.sroa.58.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.sroa_idx, align 8, !dbg !225
  %v_fetch.sroa.62.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 266, !dbg !225
  %v_fetch.sroa.62.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.sroa_idx, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 268, !dbg !225
  %v_fetch.sroa.66.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.sroa_idx, align 4, !dbg !225
  %v_fetch.sroa.70.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 270, !dbg !225
  %v_fetch.sroa.70.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.sroa_idx, align 2, !dbg !225, !tbaa !30
  %127 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul471, !dbg !226
  %add.ptr484.idx = shl nuw nsw i32 %xor479, 2, !dbg !226
  %add.ptr484 = getelementptr inbounds i8, ptr addrspace(3) %127, i32 %add.ptr484.idx, !dbg !226
  %v_column.sroa.66.0.insert.ext = zext i16 %v_fetch.sroa.38.16.copyload to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift = shl nuw i32 %v_column.sroa.66.0.insert.ext, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.66.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr484, align 4, !dbg !227, !tbaa !30
  %128 = or disjoint i32 %mul471, 256, !dbg !228
  %129 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %128, !dbg !226
  %xor480.1 = shl nuw nsw i32 %xor479, 2, !dbg !226
  %add.ptr484.idx.1 = xor i32 %xor480.1, 4, !dbg !226
  %add.ptr484.1 = getelementptr inbounds i8, ptr addrspace(3) %129, i32 %add.ptr484.idx.1, !dbg !226
  %v_column.sroa.66.0.insert.ext1449 = zext i16 %v_fetch.sroa.46.16.copyload to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1450 = shl nuw i32 %v_column.sroa.66.0.insert.ext1449, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1325 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1327 = or disjoint i32 %v_column.sroa.66.0.insert.shift1450, %v_column.sroa.0.0.insert.ext1325, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1327, ptr addrspace(3) %add.ptr484.1, align 4, !dbg !227, !tbaa !30
  %130 = or disjoint i32 %mul471, 512, !dbg !228
  %131 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %130, !dbg !226
  %xor480.2 = shl nuw nsw i32 %xor479, 2, !dbg !226
  %add.ptr484.idx.2 = xor i32 %xor480.2, 8, !dbg !226
  %add.ptr484.2 = getelementptr inbounds i8, ptr addrspace(3) %131, i32 %add.ptr484.idx.2, !dbg !226
  %v_column.sroa.66.0.insert.ext1454 = zext i16 %v_fetch.sroa.50.16.copyload to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1455 = shl nuw i32 %v_column.sroa.66.0.insert.ext1454, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1329 = zext i16 %v_fetch.sroa.14.0.copyload to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1331 = or disjoint i32 %v_column.sroa.66.0.insert.shift1455, %v_column.sroa.0.0.insert.ext1329, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1331, ptr addrspace(3) %add.ptr484.2, align 4, !dbg !227, !tbaa !30
  %132 = or disjoint i32 %mul471, 768, !dbg !228
  %133 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %132, !dbg !226
  %xor480.3 = shl nuw nsw i32 %xor479, 2, !dbg !226
  %add.ptr484.idx.3 = xor i32 %xor480.3, 12, !dbg !226
  %add.ptr484.3 = getelementptr inbounds i8, ptr addrspace(3) %133, i32 %add.ptr484.idx.3, !dbg !226
  %v_column.sroa.66.0.insert.ext1459 = zext i16 %v_fetch.sroa.54.16.copyload to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1460 = shl nuw i32 %v_column.sroa.66.0.insert.ext1459, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1333 = zext i16 %v_fetch.sroa.18.0.copyload to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1335 = or disjoint i32 %v_column.sroa.66.0.insert.shift1460, %v_column.sroa.0.0.insert.ext1333, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1335, ptr addrspace(3) %add.ptr484.3, align 4, !dbg !227, !tbaa !30
  %134 = or disjoint i32 %mul471, 1024, !dbg !228
  %135 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %134, !dbg !226
  %xor480.4 = shl nuw nsw i32 %xor479, 2, !dbg !226
  %add.ptr484.idx.4 = xor i32 %xor480.4, 16, !dbg !226
  %add.ptr484.4 = getelementptr inbounds i8, ptr addrspace(3) %135, i32 %add.ptr484.idx.4, !dbg !226
  %v_column.sroa.66.0.insert.ext1464 = zext i16 %v_fetch.sroa.58.16.copyload to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1465 = shl nuw i32 %v_column.sroa.66.0.insert.ext1464, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1337 = zext i16 %v_fetch.sroa.22.0.copyload to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1339 = or disjoint i32 %v_column.sroa.66.0.insert.shift1465, %v_column.sroa.0.0.insert.ext1337, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1339, ptr addrspace(3) %add.ptr484.4, align 4, !dbg !227, !tbaa !30
  %136 = or disjoint i32 %mul471, 1280, !dbg !228
  %137 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %136, !dbg !226
  %xor480.5 = shl nuw nsw i32 %xor479, 2, !dbg !226
  %add.ptr484.idx.5 = xor i32 %xor480.5, 20, !dbg !226
  %add.ptr484.5 = getelementptr inbounds i8, ptr addrspace(3) %137, i32 %add.ptr484.idx.5, !dbg !226
  %v_column.sroa.66.0.insert.ext1469 = zext i16 %v_fetch.sroa.62.16.copyload to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1470 = shl nuw i32 %v_column.sroa.66.0.insert.ext1469, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1341 = zext i16 %v_fetch.sroa.26.0.copyload to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1343 = or disjoint i32 %v_column.sroa.66.0.insert.shift1470, %v_column.sroa.0.0.insert.ext1341, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1343, ptr addrspace(3) %add.ptr484.5, align 4, !dbg !227, !tbaa !30
  %138 = or disjoint i32 %mul471, 1536, !dbg !228
  %139 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %138, !dbg !226
  %xor480.6 = shl nuw nsw i32 %xor479, 2, !dbg !226
  %add.ptr484.idx.6 = xor i32 %xor480.6, 24, !dbg !226
  %add.ptr484.6 = getelementptr inbounds i8, ptr addrspace(3) %139, i32 %add.ptr484.idx.6, !dbg !226
  %v_column.sroa.66.0.insert.ext1474 = zext i16 %v_fetch.sroa.66.16.copyload to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1475 = shl nuw i32 %v_column.sroa.66.0.insert.ext1474, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1345 = zext i16 %v_fetch.sroa.30.0.copyload to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1347 = or disjoint i32 %v_column.sroa.66.0.insert.shift1475, %v_column.sroa.0.0.insert.ext1345, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1347, ptr addrspace(3) %add.ptr484.6, align 4, !dbg !227, !tbaa !30
  %140 = or disjoint i32 %mul471, 1792, !dbg !228
  %141 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %140, !dbg !226
  %xor480.7 = shl nuw nsw i32 %xor479, 2, !dbg !226
  %add.ptr484.idx.7 = xor i32 %xor480.7, 28, !dbg !226
  %add.ptr484.7 = getelementptr inbounds i8, ptr addrspace(3) %141, i32 %add.ptr484.idx.7, !dbg !226
  %v_column.sroa.66.0.insert.ext1479 = zext i16 %v_fetch.sroa.70.16.copyload to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1480 = shl nuw i32 %v_column.sroa.66.0.insert.ext1479, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1349 = zext i16 %v_fetch.sroa.34.0.copyload to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1351 = or disjoint i32 %v_column.sroa.66.0.insert.shift1480, %v_column.sroa.0.0.insert.ext1349, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1351, ptr addrspace(3) %add.ptr484.7, align 4, !dbg !227, !tbaa !30
  %142 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 128, !dbg !224
  %v_fetch.sroa.0.0.copyload1606 = load i16, ptr addrspace(4) %142, align 16, !dbg !225
  %v_fetch.sroa.10.0..sroa_idx1609 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 130, !dbg !225
  %v_fetch.sroa.10.0.copyload1610 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1609, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1618 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 132, !dbg !225
  %v_fetch.sroa.14.0.copyload1619 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1618, align 4, !dbg !225
  %v_fetch.sroa.18.0..sroa_idx1627 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 134, !dbg !225
  %v_fetch.sroa.18.0.copyload1628 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1627, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1636 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 136, !dbg !225
  %v_fetch.sroa.22.0.copyload1637 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1636, align 8, !dbg !225
  %v_fetch.sroa.26.0..sroa_idx1645 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 138, !dbg !225
  %v_fetch.sroa.26.0.copyload1646 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1645, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1654 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 140, !dbg !225
  %v_fetch.sroa.30.0.copyload1655 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1654, align 4, !dbg !225
  %v_fetch.sroa.34.0..sroa_idx1663 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 142, !dbg !225
  %v_fetch.sroa.34.0.copyload1664 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1663, align 2, !dbg !225, !tbaa !30
  %gep.1.1 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 384, !dbg !224
  %v_fetch.sroa.38.16.copyload1675 = load i16, ptr addrspace(4) %gep.1.1, align 16, !dbg !225
  %v_fetch.sroa.46.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 386, !dbg !225
  %v_fetch.sroa.46.16.copyload1678 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.1.sroa_idx, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 388, !dbg !225
  %v_fetch.sroa.50.16.copyload1684 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.1.sroa_idx, align 4, !dbg !225
  %v_fetch.sroa.54.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 390, !dbg !225
  %v_fetch.sroa.54.16.copyload1690 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.1.sroa_idx, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 392, !dbg !225
  %v_fetch.sroa.58.16.copyload1696 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.1.sroa_idx, align 8, !dbg !225
  %v_fetch.sroa.62.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 394, !dbg !225
  %v_fetch.sroa.62.16.copyload1702 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.1.sroa_idx, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 396, !dbg !225
  %v_fetch.sroa.66.16.copyload1708 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.1.sroa_idx, align 4, !dbg !225
  %v_fetch.sroa.70.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 398, !dbg !225
  %v_fetch.sroa.70.16.copyload1714 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.1.sroa_idx, align 2, !dbg !225, !tbaa !30
  %143 = or disjoint i32 %mul471, 2048, !dbg !228
  %144 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %143, !dbg !226
  %add.ptr484.11021 = getelementptr inbounds i8, ptr addrspace(3) %144, i32 %add.ptr484.idx, !dbg !226
  %v_column.sroa.66.0.insert.ext1484 = zext i16 %v_fetch.sroa.38.16.copyload1675 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1485 = shl nuw i32 %v_column.sroa.66.0.insert.ext1484, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1353 = zext i16 %v_fetch.sroa.0.0.copyload1606 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1355 = or disjoint i32 %v_column.sroa.66.0.insert.shift1485, %v_column.sroa.0.0.insert.ext1353, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1355, ptr addrspace(3) %add.ptr484.11021, align 4, !dbg !227, !tbaa !30
  %145 = or disjoint i32 %mul471, 2304, !dbg !228
  %146 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %145, !dbg !226
  %add.ptr484.1.1 = getelementptr inbounds i8, ptr addrspace(3) %146, i32 %add.ptr484.idx.1, !dbg !226
  %v_column.sroa.66.0.insert.ext1489 = zext i16 %v_fetch.sroa.46.16.copyload1678 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1490 = shl nuw i32 %v_column.sroa.66.0.insert.ext1489, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1357 = zext i16 %v_fetch.sroa.10.0.copyload1610 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1359 = or disjoint i32 %v_column.sroa.66.0.insert.shift1490, %v_column.sroa.0.0.insert.ext1357, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1359, ptr addrspace(3) %add.ptr484.1.1, align 4, !dbg !227, !tbaa !30
  %147 = or disjoint i32 %mul471, 2560, !dbg !228
  %148 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %147, !dbg !226
  %add.ptr484.2.1 = getelementptr inbounds i8, ptr addrspace(3) %148, i32 %add.ptr484.idx.2, !dbg !226
  %v_column.sroa.66.0.insert.ext1494 = zext i16 %v_fetch.sroa.50.16.copyload1684 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1495 = shl nuw i32 %v_column.sroa.66.0.insert.ext1494, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1361 = zext i16 %v_fetch.sroa.14.0.copyload1619 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1363 = or disjoint i32 %v_column.sroa.66.0.insert.shift1495, %v_column.sroa.0.0.insert.ext1361, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1363, ptr addrspace(3) %add.ptr484.2.1, align 4, !dbg !227, !tbaa !30
  %149 = or disjoint i32 %mul471, 2816, !dbg !228
  %150 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %149, !dbg !226
  %add.ptr484.3.1 = getelementptr inbounds i8, ptr addrspace(3) %150, i32 %add.ptr484.idx.3, !dbg !226
  %v_column.sroa.66.0.insert.ext1499 = zext i16 %v_fetch.sroa.54.16.copyload1690 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1500 = shl nuw i32 %v_column.sroa.66.0.insert.ext1499, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1365 = zext i16 %v_fetch.sroa.18.0.copyload1628 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1367 = or disjoint i32 %v_column.sroa.66.0.insert.shift1500, %v_column.sroa.0.0.insert.ext1365, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1367, ptr addrspace(3) %add.ptr484.3.1, align 4, !dbg !227, !tbaa !30
  %151 = or disjoint i32 %mul471, 3072, !dbg !228
  %152 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %151, !dbg !226
  %add.ptr484.4.1 = getelementptr inbounds i8, ptr addrspace(3) %152, i32 %add.ptr484.idx.4, !dbg !226
  %v_column.sroa.66.0.insert.ext1504 = zext i16 %v_fetch.sroa.58.16.copyload1696 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1505 = shl nuw i32 %v_column.sroa.66.0.insert.ext1504, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1369 = zext i16 %v_fetch.sroa.22.0.copyload1637 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1371 = or disjoint i32 %v_column.sroa.66.0.insert.shift1505, %v_column.sroa.0.0.insert.ext1369, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1371, ptr addrspace(3) %add.ptr484.4.1, align 4, !dbg !227, !tbaa !30
  %153 = or disjoint i32 %mul471, 3328, !dbg !228
  %154 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %153, !dbg !226
  %add.ptr484.5.1 = getelementptr inbounds i8, ptr addrspace(3) %154, i32 %add.ptr484.idx.5, !dbg !226
  %v_column.sroa.66.0.insert.ext1509 = zext i16 %v_fetch.sroa.62.16.copyload1702 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1510 = shl nuw i32 %v_column.sroa.66.0.insert.ext1509, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1373 = zext i16 %v_fetch.sroa.26.0.copyload1646 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1375 = or disjoint i32 %v_column.sroa.66.0.insert.shift1510, %v_column.sroa.0.0.insert.ext1373, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1375, ptr addrspace(3) %add.ptr484.5.1, align 4, !dbg !227, !tbaa !30
  %155 = or disjoint i32 %mul471, 3584, !dbg !228
  %156 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %155, !dbg !226
  %add.ptr484.6.1 = getelementptr inbounds i8, ptr addrspace(3) %156, i32 %add.ptr484.idx.6, !dbg !226
  %v_column.sroa.66.0.insert.ext1514 = zext i16 %v_fetch.sroa.66.16.copyload1708 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1515 = shl nuw i32 %v_column.sroa.66.0.insert.ext1514, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1377 = zext i16 %v_fetch.sroa.30.0.copyload1655 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1379 = or disjoint i32 %v_column.sroa.66.0.insert.shift1515, %v_column.sroa.0.0.insert.ext1377, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1379, ptr addrspace(3) %add.ptr484.6.1, align 4, !dbg !227, !tbaa !30
  %157 = or disjoint i32 %mul471, 3840, !dbg !228
  %158 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %157, !dbg !226
  %add.ptr484.7.1 = getelementptr inbounds i8, ptr addrspace(3) %158, i32 %add.ptr484.idx.7, !dbg !226
  %v_column.sroa.66.0.insert.ext1519 = zext i16 %v_fetch.sroa.70.16.copyload1714 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1520 = shl nuw i32 %v_column.sroa.66.0.insert.ext1519, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1381 = zext i16 %v_fetch.sroa.34.0.copyload1664 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1383 = or disjoint i32 %v_column.sroa.66.0.insert.shift1520, %v_column.sroa.0.0.insert.ext1381, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1383, ptr addrspace(3) %add.ptr484.7.1, align 4, !dbg !227, !tbaa !30
  %narrow = add nuw nsw i32 %and51, 8
  %xor479.1 = xor i32 %narrow, %and40
  %159 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4096, !dbg !224
  %v_fetch.sroa.0.0.copyload1607 = load i16, ptr addrspace(4) %159, align 16, !dbg !225
  %v_fetch.sroa.10.0..sroa_idx1611 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4098, !dbg !225
  %v_fetch.sroa.10.0.copyload1612 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1611, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1620 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4100, !dbg !225
  %v_fetch.sroa.14.0.copyload1621 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1620, align 4, !dbg !225
  %v_fetch.sroa.18.0..sroa_idx1629 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4102, !dbg !225
  %v_fetch.sroa.18.0.copyload1630 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1629, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1638 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4104, !dbg !225
  %v_fetch.sroa.22.0.copyload1639 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1638, align 8, !dbg !225
  %v_fetch.sroa.26.0..sroa_idx1647 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4106, !dbg !225
  %v_fetch.sroa.26.0.copyload1648 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1647, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1656 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4108, !dbg !225
  %v_fetch.sroa.30.0.copyload1657 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1656, align 4, !dbg !225
  %v_fetch.sroa.34.0..sroa_idx1665 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4110, !dbg !225
  %v_fetch.sroa.34.0.copyload1666 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1665, align 2, !dbg !225, !tbaa !30
  %gep.1.11030 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4352, !dbg !224
  %v_fetch.sroa.38.16.copyload1676 = load i16, ptr addrspace(4) %gep.1.11030, align 16, !dbg !225
  %v_fetch.sroa.46.16.gep.1.11030.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4354, !dbg !225
  %v_fetch.sroa.46.16.copyload1679 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.11030.sroa_idx, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.11030.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4356, !dbg !225
  %v_fetch.sroa.50.16.copyload1685 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.11030.sroa_idx, align 4, !dbg !225
  %v_fetch.sroa.54.16.gep.1.11030.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4358, !dbg !225
  %v_fetch.sroa.54.16.copyload1691 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.11030.sroa_idx, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.11030.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4360, !dbg !225
  %v_fetch.sroa.58.16.copyload1697 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.11030.sroa_idx, align 8, !dbg !225
  %v_fetch.sroa.62.16.gep.1.11030.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4362, !dbg !225
  %v_fetch.sroa.62.16.copyload1703 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.11030.sroa_idx, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.11030.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4364, !dbg !225
  %v_fetch.sroa.66.16.copyload1709 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.11030.sroa_idx, align 4, !dbg !225
  %v_fetch.sroa.70.16.gep.1.11030.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4366, !dbg !225
  %v_fetch.sroa.70.16.copyload1715 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.11030.sroa_idx, align 2, !dbg !225, !tbaa !30
  %add.ptr484.idx.11036 = shl nuw nsw i32 %xor479.1, 2, !dbg !226
  %add.ptr484.11037 = getelementptr inbounds i8, ptr addrspace(3) %127, i32 %add.ptr484.idx.11036, !dbg !226
  %v_column.sroa.66.0.insert.ext1524 = zext i16 %v_fetch.sroa.38.16.copyload1676 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1525 = shl nuw i32 %v_column.sroa.66.0.insert.ext1524, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1385 = zext i16 %v_fetch.sroa.0.0.copyload1607 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1387 = or disjoint i32 %v_column.sroa.66.0.insert.shift1525, %v_column.sroa.0.0.insert.ext1385, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1387, ptr addrspace(3) %add.ptr484.11037, align 4, !dbg !227, !tbaa !30
  %xor480.1.11042 = shl nuw nsw i32 %xor479.1, 2, !dbg !226
  %add.ptr484.idx.1.11043 = xor i32 %xor480.1.11042, 4, !dbg !226
  %add.ptr484.1.11044 = getelementptr inbounds i8, ptr addrspace(3) %129, i32 %add.ptr484.idx.1.11043, !dbg !226
  %v_column.sroa.66.0.insert.ext1529 = zext i16 %v_fetch.sroa.46.16.copyload1679 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1530 = shl nuw i32 %v_column.sroa.66.0.insert.ext1529, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1389 = zext i16 %v_fetch.sroa.10.0.copyload1612 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1391 = or disjoint i32 %v_column.sroa.66.0.insert.shift1530, %v_column.sroa.0.0.insert.ext1389, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1391, ptr addrspace(3) %add.ptr484.1.11044, align 4, !dbg !227, !tbaa !30
  %xor480.2.11049 = shl nuw nsw i32 %xor479.1, 2, !dbg !226
  %add.ptr484.idx.2.11050 = xor i32 %xor480.2.11049, 8, !dbg !226
  %add.ptr484.2.11051 = getelementptr inbounds i8, ptr addrspace(3) %131, i32 %add.ptr484.idx.2.11050, !dbg !226
  %v_column.sroa.66.0.insert.ext1534 = zext i16 %v_fetch.sroa.50.16.copyload1685 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1535 = shl nuw i32 %v_column.sroa.66.0.insert.ext1534, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1393 = zext i16 %v_fetch.sroa.14.0.copyload1621 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1395 = or disjoint i32 %v_column.sroa.66.0.insert.shift1535, %v_column.sroa.0.0.insert.ext1393, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1395, ptr addrspace(3) %add.ptr484.2.11051, align 4, !dbg !227, !tbaa !30
  %xor480.3.11056 = shl nuw nsw i32 %xor479.1, 2, !dbg !226
  %add.ptr484.idx.3.11057 = xor i32 %xor480.3.11056, 12, !dbg !226
  %add.ptr484.3.11058 = getelementptr inbounds i8, ptr addrspace(3) %133, i32 %add.ptr484.idx.3.11057, !dbg !226
  %v_column.sroa.66.0.insert.ext1539 = zext i16 %v_fetch.sroa.54.16.copyload1691 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1540 = shl nuw i32 %v_column.sroa.66.0.insert.ext1539, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1397 = zext i16 %v_fetch.sroa.18.0.copyload1630 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1399 = or disjoint i32 %v_column.sroa.66.0.insert.shift1540, %v_column.sroa.0.0.insert.ext1397, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1399, ptr addrspace(3) %add.ptr484.3.11058, align 4, !dbg !227, !tbaa !30
  %xor480.4.11063 = shl nuw nsw i32 %xor479.1, 2, !dbg !226
  %add.ptr484.idx.4.11064 = xor i32 %xor480.4.11063, 16, !dbg !226
  %add.ptr484.4.11065 = getelementptr inbounds i8, ptr addrspace(3) %135, i32 %add.ptr484.idx.4.11064, !dbg !226
  %v_column.sroa.66.0.insert.ext1544 = zext i16 %v_fetch.sroa.58.16.copyload1697 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1545 = shl nuw i32 %v_column.sroa.66.0.insert.ext1544, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1401 = zext i16 %v_fetch.sroa.22.0.copyload1639 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1403 = or disjoint i32 %v_column.sroa.66.0.insert.shift1545, %v_column.sroa.0.0.insert.ext1401, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1403, ptr addrspace(3) %add.ptr484.4.11065, align 4, !dbg !227, !tbaa !30
  %xor480.5.11070 = shl nuw nsw i32 %xor479.1, 2, !dbg !226
  %add.ptr484.idx.5.11071 = xor i32 %xor480.5.11070, 20, !dbg !226
  %add.ptr484.5.11072 = getelementptr inbounds i8, ptr addrspace(3) %137, i32 %add.ptr484.idx.5.11071, !dbg !226
  %v_column.sroa.66.0.insert.ext1549 = zext i16 %v_fetch.sroa.62.16.copyload1703 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1550 = shl nuw i32 %v_column.sroa.66.0.insert.ext1549, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1405 = zext i16 %v_fetch.sroa.26.0.copyload1648 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1407 = or disjoint i32 %v_column.sroa.66.0.insert.shift1550, %v_column.sroa.0.0.insert.ext1405, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1407, ptr addrspace(3) %add.ptr484.5.11072, align 4, !dbg !227, !tbaa !30
  %xor480.6.11077 = shl nuw nsw i32 %xor479.1, 2, !dbg !226
  %add.ptr484.idx.6.11078 = xor i32 %xor480.6.11077, 24, !dbg !226
  %add.ptr484.6.11079 = getelementptr inbounds i8, ptr addrspace(3) %139, i32 %add.ptr484.idx.6.11078, !dbg !226
  %v_column.sroa.66.0.insert.ext1554 = zext i16 %v_fetch.sroa.66.16.copyload1709 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1555 = shl nuw i32 %v_column.sroa.66.0.insert.ext1554, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1409 = zext i16 %v_fetch.sroa.30.0.copyload1657 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1411 = or disjoint i32 %v_column.sroa.66.0.insert.shift1555, %v_column.sroa.0.0.insert.ext1409, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1411, ptr addrspace(3) %add.ptr484.6.11079, align 4, !dbg !227, !tbaa !30
  %xor480.7.11084 = shl nuw nsw i32 %xor479.1, 2, !dbg !226
  %add.ptr484.idx.7.11085 = xor i32 %xor480.7.11084, 28, !dbg !226
  %add.ptr484.7.11086 = getelementptr inbounds i8, ptr addrspace(3) %141, i32 %add.ptr484.idx.7.11085, !dbg !226
  %v_column.sroa.66.0.insert.ext1559 = zext i16 %v_fetch.sroa.70.16.copyload1715 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1560 = shl nuw i32 %v_column.sroa.66.0.insert.ext1559, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1413 = zext i16 %v_fetch.sroa.34.0.copyload1666 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1415 = or disjoint i32 %v_column.sroa.66.0.insert.shift1560, %v_column.sroa.0.0.insert.ext1413, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1415, ptr addrspace(3) %add.ptr484.7.11086, align 4, !dbg !227, !tbaa !30
  %160 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4224, !dbg !224
  %v_fetch.sroa.0.0.copyload1608 = load i16, ptr addrspace(4) %160, align 16, !dbg !225
  %v_fetch.sroa.10.0..sroa_idx1613 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4226, !dbg !225
  %v_fetch.sroa.10.0.copyload1614 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1613, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1622 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4228, !dbg !225
  %v_fetch.sroa.14.0.copyload1623 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1622, align 4, !dbg !225
  %v_fetch.sroa.18.0..sroa_idx1631 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4230, !dbg !225
  %v_fetch.sroa.18.0.copyload1632 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1631, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1640 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4232, !dbg !225
  %v_fetch.sroa.22.0.copyload1641 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1640, align 8, !dbg !225
  %v_fetch.sroa.26.0..sroa_idx1649 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4234, !dbg !225
  %v_fetch.sroa.26.0.copyload1650 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1649, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1658 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4236, !dbg !225
  %v_fetch.sroa.30.0.copyload1659 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1658, align 4, !dbg !225
  %v_fetch.sroa.34.0..sroa_idx1667 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4238, !dbg !225
  %v_fetch.sroa.34.0.copyload1668 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1667, align 2, !dbg !225, !tbaa !30
  %gep.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4480, !dbg !224
  %v_fetch.sroa.38.16.copyload1677 = load i16, ptr addrspace(4) %gep.1.1.1, align 16, !dbg !225
  %v_fetch.sroa.46.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4482, !dbg !225
  %v_fetch.sroa.46.16.copyload1680 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.1.1.sroa_idx, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4484, !dbg !225
  %v_fetch.sroa.50.16.copyload1686 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.1.1.sroa_idx, align 4, !dbg !225
  %v_fetch.sroa.54.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4486, !dbg !225
  %v_fetch.sroa.54.16.copyload1692 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.1.1.sroa_idx, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4488, !dbg !225
  %v_fetch.sroa.58.16.copyload1698 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.1.1.sroa_idx, align 8, !dbg !225
  %v_fetch.sroa.62.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4490, !dbg !225
  %v_fetch.sroa.62.16.copyload1704 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.1.1.sroa_idx, align 2, !dbg !225, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4492, !dbg !225
  %v_fetch.sroa.66.16.copyload1710 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.1.1.sroa_idx, align 4, !dbg !225
  %v_fetch.sroa.70.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %126, i64 4494, !dbg !225
  %v_fetch.sroa.70.16.copyload1716 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.1.1.sroa_idx, align 2, !dbg !225, !tbaa !30
  %add.ptr484.11021.1 = getelementptr inbounds i8, ptr addrspace(3) %144, i32 %add.ptr484.idx.11036, !dbg !226
  %v_column.sroa.66.0.insert.ext1564 = zext i16 %v_fetch.sroa.38.16.copyload1677 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1565 = shl nuw i32 %v_column.sroa.66.0.insert.ext1564, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1417 = zext i16 %v_fetch.sroa.0.0.copyload1608 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1419 = or disjoint i32 %v_column.sroa.66.0.insert.shift1565, %v_column.sroa.0.0.insert.ext1417, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1419, ptr addrspace(3) %add.ptr484.11021.1, align 4, !dbg !227, !tbaa !30
  %add.ptr484.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %146, i32 %add.ptr484.idx.1.11043, !dbg !226
  %v_column.sroa.66.0.insert.ext1569 = zext i16 %v_fetch.sroa.46.16.copyload1680 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1570 = shl nuw i32 %v_column.sroa.66.0.insert.ext1569, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1421 = zext i16 %v_fetch.sroa.10.0.copyload1614 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1423 = or disjoint i32 %v_column.sroa.66.0.insert.shift1570, %v_column.sroa.0.0.insert.ext1421, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1423, ptr addrspace(3) %add.ptr484.1.1.1, align 4, !dbg !227, !tbaa !30
  %add.ptr484.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %148, i32 %add.ptr484.idx.2.11050, !dbg !226
  %v_column.sroa.66.0.insert.ext1574 = zext i16 %v_fetch.sroa.50.16.copyload1686 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1575 = shl nuw i32 %v_column.sroa.66.0.insert.ext1574, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1425 = zext i16 %v_fetch.sroa.14.0.copyload1623 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1427 = or disjoint i32 %v_column.sroa.66.0.insert.shift1575, %v_column.sroa.0.0.insert.ext1425, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1427, ptr addrspace(3) %add.ptr484.2.1.1, align 4, !dbg !227, !tbaa !30
  %add.ptr484.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %150, i32 %add.ptr484.idx.3.11057, !dbg !226
  %v_column.sroa.66.0.insert.ext1579 = zext i16 %v_fetch.sroa.54.16.copyload1692 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1580 = shl nuw i32 %v_column.sroa.66.0.insert.ext1579, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1429 = zext i16 %v_fetch.sroa.18.0.copyload1632 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1431 = or disjoint i32 %v_column.sroa.66.0.insert.shift1580, %v_column.sroa.0.0.insert.ext1429, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1431, ptr addrspace(3) %add.ptr484.3.1.1, align 4, !dbg !227, !tbaa !30
  %add.ptr484.4.1.1 = getelementptr inbounds i8, ptr addrspace(3) %152, i32 %add.ptr484.idx.4.11064, !dbg !226
  %v_column.sroa.66.0.insert.ext1584 = zext i16 %v_fetch.sroa.58.16.copyload1698 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1585 = shl nuw i32 %v_column.sroa.66.0.insert.ext1584, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1433 = zext i16 %v_fetch.sroa.22.0.copyload1641 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1435 = or disjoint i32 %v_column.sroa.66.0.insert.shift1585, %v_column.sroa.0.0.insert.ext1433, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1435, ptr addrspace(3) %add.ptr484.4.1.1, align 4, !dbg !227, !tbaa !30
  %add.ptr484.5.1.1 = getelementptr inbounds i8, ptr addrspace(3) %154, i32 %add.ptr484.idx.5.11071, !dbg !226
  %v_column.sroa.66.0.insert.ext1589 = zext i16 %v_fetch.sroa.62.16.copyload1704 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1590 = shl nuw i32 %v_column.sroa.66.0.insert.ext1589, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1437 = zext i16 %v_fetch.sroa.26.0.copyload1650 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1439 = or disjoint i32 %v_column.sroa.66.0.insert.shift1590, %v_column.sroa.0.0.insert.ext1437, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1439, ptr addrspace(3) %add.ptr484.5.1.1, align 4, !dbg !227, !tbaa !30
  %add.ptr484.6.1.1 = getelementptr inbounds i8, ptr addrspace(3) %156, i32 %add.ptr484.idx.6.11078, !dbg !226
  %v_column.sroa.66.0.insert.ext1594 = zext i16 %v_fetch.sroa.66.16.copyload1710 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1595 = shl nuw i32 %v_column.sroa.66.0.insert.ext1594, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1441 = zext i16 %v_fetch.sroa.30.0.copyload1659 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1443 = or disjoint i32 %v_column.sroa.66.0.insert.shift1595, %v_column.sroa.0.0.insert.ext1441, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1443, ptr addrspace(3) %add.ptr484.6.1.1, align 4, !dbg !227, !tbaa !30
  %add.ptr484.7.1.1 = getelementptr inbounds i8, ptr addrspace(3) %158, i32 %add.ptr484.idx.7.11085, !dbg !226
  %v_column.sroa.66.0.insert.ext1599 = zext i16 %v_fetch.sroa.70.16.copyload1716 to i32, !dbg !227
  %v_column.sroa.66.0.insert.shift1600 = shl nuw i32 %v_column.sroa.66.0.insert.ext1599, 16, !dbg !227
  %v_column.sroa.0.0.insert.ext1445 = zext i16 %v_fetch.sroa.34.0.copyload1668 to i32, !dbg !227
  %v_column.sroa.0.0.insert.insert1447 = or disjoint i32 %v_column.sroa.66.0.insert.shift1600, %v_column.sroa.0.0.insert.ext1445, !dbg !227
  store i32 %v_column.sroa.0.0.insert.insert1447, ptr addrspace(3) %add.ptr484.7.1.1, align 4, !dbg !227, !tbaa !30
  fence syncscope("warp") release, !dbg !229
  tail call void @llvm.mxc.barrier.warp(), !dbg !232
  fence syncscope("warp") acquire, !dbg !233
  %and525 = shl nuw nsw i32 %3, 8
  %mul526 = and i32 %and525, 1792
  %mul533 = and i32 %5, 32
  %mul538 = and i32 %and51, 126
  %add534 = or disjoint i32 %mul526, %mul533
  %xor546 = xor i32 %shr52, %and40
  %161 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534
  %xor549 = xor i32 %xor546, %mul538, !dbg !234
  %add.ptr553.idx = shl nuw nsw i32 %xor549, 2, !dbg !235
  %add.ptr553 = getelementptr inbounds i8, ptr addrspace(3) %161, i32 %add.ptr553.idx, !dbg !235
  %162 = load i32, ptr addrspace(3) %add.ptr553, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.0.0.vec.insert = insertelement <2 x i32> poison, i32 %162, i64 0, !dbg !236
  %add540.1 = or i32 %and51, 1, !dbg !237
  %xor549.1 = xor i32 %xor546, %add540.1, !dbg !234
  %add.ptr553.idx.1 = shl nuw nsw i32 %xor549.1, 2, !dbg !235
  %add.ptr553.1 = getelementptr inbounds i8, ptr addrspace(3) %161, i32 %add.ptr553.idx.1, !dbg !235
  %163 = load i32, ptr addrspace(3) %add.ptr553.1, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.0.4.vec.insert = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert, i32 %163, i64 1, !dbg !236
  %add529.1 = or disjoint i32 %mul526, %mul533
  %add534.1 = or disjoint i32 %add529.1, 64
  %add545.1 = or disjoint i32 %shr52, 2
  %xor546.1 = xor i32 %add545.1, %and40
  %164 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534.1
  %xor549.11090 = xor i32 %xor546.1, %mul538, !dbg !234
  %add.ptr553.idx.11091 = shl nuw nsw i32 %xor549.11090, 2, !dbg !235
  %add.ptr553.11092 = getelementptr inbounds i8, ptr addrspace(3) %164, i32 %add.ptr553.idx.11091, !dbg !235
  %165 = load i32, ptr addrspace(3) %add.ptr553.11092, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.14.8.vec.insert = insertelement <2 x i32> poison, i32 %165, i64 0, !dbg !236
  %xor549.1.1 = xor i32 %xor546.1, %add540.1, !dbg !234
  %add.ptr553.idx.1.1 = shl nuw nsw i32 %xor549.1.1, 2, !dbg !235
  %add.ptr553.1.1 = getelementptr inbounds i8, ptr addrspace(3) %164, i32 %add.ptr553.idx.1.1, !dbg !235
  %166 = load i32, ptr addrspace(3) %add.ptr553.1.1, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.14.12.vec.insert = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert, i32 %166, i64 1, !dbg !236
  %add529.2 = or disjoint i32 %mul526, %mul533
  %add534.2 = or disjoint i32 %add529.2, 128
  %add545.2 = or disjoint i32 %shr52, 4
  %xor546.2 = xor i32 %add545.2, %and40
  %167 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534.2
  %xor549.2 = xor i32 %xor546.2, %mul538, !dbg !234
  %add.ptr553.idx.2 = shl nuw nsw i32 %xor549.2, 2, !dbg !235
  %add.ptr553.2 = getelementptr inbounds i8, ptr addrspace(3) %167, i32 %add.ptr553.idx.2, !dbg !235
  %168 = load i32, ptr addrspace(3) %add.ptr553.2, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.26.16.vec.insert = insertelement <2 x i32> poison, i32 %168, i64 0, !dbg !236
  %xor549.1.2 = xor i32 %xor546.2, %add540.1, !dbg !234
  %add.ptr553.idx.1.2 = shl nuw nsw i32 %xor549.1.2, 2, !dbg !235
  %add.ptr553.1.2 = getelementptr inbounds i8, ptr addrspace(3) %167, i32 %add.ptr553.idx.1.2, !dbg !235
  %169 = load i32, ptr addrspace(3) %add.ptr553.1.2, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.26.20.vec.insert = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert, i32 %169, i64 1, !dbg !236
  %add529.3 = or disjoint i32 %mul526, %mul533
  %add534.3 = or disjoint i32 %add529.3, 192
  %add545.3 = or disjoint i32 %shr52, 6
  %xor546.3 = xor i32 %add545.3, %and40
  %170 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534.3
  %xor549.3 = xor i32 %xor546.3, %mul538, !dbg !234
  %add.ptr553.idx.3 = shl nuw nsw i32 %xor549.3, 2, !dbg !235
  %add.ptr553.3 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 %add.ptr553.idx.3, !dbg !235
  %171 = load i32, ptr addrspace(3) %add.ptr553.3, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.38.24.vec.insert = insertelement <2 x i32> poison, i32 %171, i64 0, !dbg !236
  %xor549.1.3 = xor i32 %xor546.3, %add540.1, !dbg !234
  %add.ptr553.idx.1.3 = shl nuw nsw i32 %xor549.1.3, 2, !dbg !235
  %add.ptr553.1.3 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 %add.ptr553.idx.1.3, !dbg !235
  %172 = load i32, ptr addrspace(3) %add.ptr553.1.3, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.38.28.vec.insert = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert, i32 %172, i64 1, !dbg !236
  %173 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert to <4 x half>, !dbg !238
  %174 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %173, <4 x half> %93, <4 x float> zeroinitializer), !dbg !239
  %175 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert to <4 x half>, !dbg !238
  %176 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %175, <4 x half> %93, <4 x float> zeroinitializer), !dbg !239
  %177 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert to <4 x half>, !dbg !238
  %178 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %177, <4 x half> %93, <4 x float> zeroinitializer), !dbg !239
  %179 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert to <4 x half>, !dbg !238
  %180 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %179, <4 x half> %93, <4 x float> zeroinitializer), !dbg !239
  %add527.1 = or disjoint i32 %mul526, %mul533
  %add534.11096 = or disjoint i32 %add527.1, 2048
  %181 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534.11096
  %add.ptr553.11100 = getelementptr inbounds i8, ptr addrspace(3) %181, i32 %add.ptr553.idx, !dbg !235
  %182 = load i32, ptr addrspace(3) %add.ptr553.11100, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1265 = insertelement <2 x i32> poison, i32 %182, i64 0, !dbg !236
  %add.ptr553.1.11104 = getelementptr inbounds i8, ptr addrspace(3) %181, i32 %add.ptr553.idx.1, !dbg !235
  %183 = load i32, ptr addrspace(3) %add.ptr553.1.11104, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1271 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1265, i32 %183, i64 1, !dbg !236
  %add529.1.1 = or disjoint i32 %mul526, %mul533
  %add534.1.1 = or disjoint i32 %add529.1.1, 2112
  %184 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534.1.1
  %add.ptr553.11092.1 = getelementptr inbounds i8, ptr addrspace(3) %184, i32 %add.ptr553.idx.11091, !dbg !235
  %185 = load i32, ptr addrspace(3) %add.ptr553.11092.1, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1281 = insertelement <2 x i32> poison, i32 %185, i64 0, !dbg !236
  %add.ptr553.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %184, i32 %add.ptr553.idx.1.1, !dbg !235
  %186 = load i32, ptr addrspace(3) %add.ptr553.1.1.1, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1287 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1281, i32 %186, i64 1, !dbg !236
  %add529.2.1 = or disjoint i32 %mul526, %mul533
  %add534.2.1 = or disjoint i32 %add529.2.1, 2176
  %187 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534.2.1
  %add.ptr553.2.1 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 %add.ptr553.idx.2, !dbg !235
  %188 = load i32, ptr addrspace(3) %add.ptr553.2.1, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1297 = insertelement <2 x i32> poison, i32 %188, i64 0, !dbg !236
  %add.ptr553.1.2.1 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 %add.ptr553.idx.1.2, !dbg !235
  %189 = load i32, ptr addrspace(3) %add.ptr553.1.2.1, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1303 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1297, i32 %189, i64 1, !dbg !236
  %add529.3.1 = or disjoint i32 %mul526, %mul533
  %add534.3.1 = or disjoint i32 %add529.3.1, 2240
  %190 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534.3.1
  %add.ptr553.3.1 = getelementptr inbounds i8, ptr addrspace(3) %190, i32 %add.ptr553.idx.3, !dbg !235
  %191 = load i32, ptr addrspace(3) %add.ptr553.3.1, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1313 = insertelement <2 x i32> poison, i32 %191, i64 0, !dbg !236
  %add.ptr553.1.3.1 = getelementptr inbounds i8, ptr addrspace(3) %190, i32 %add.ptr553.idx.1.3, !dbg !235
  %192 = load i32, ptr addrspace(3) %add.ptr553.1.3.1, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1319 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1313, i32 %192, i64 1, !dbg !236
  %193 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1271 to <4 x half>, !dbg !238
  %194 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %193, <4 x half> %93, <4 x float> zeroinitializer), !dbg !239
  %195 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1287 to <4 x half>, !dbg !238
  %196 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %195, <4 x half> %93, <4 x float> zeroinitializer), !dbg !239
  %197 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1303 to <4 x half>, !dbg !238
  %198 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %197, <4 x half> %93, <4 x float> zeroinitializer), !dbg !239
  %199 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1319 to <4 x half>, !dbg !238
  %200 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %199, <4 x half> %93, <4 x float> zeroinitializer), !dbg !239
  %add539.1 = add nuw nsw i32 %mul538, 8
  %xor549.11111 = xor i32 %xor546, %add539.1, !dbg !234
  %add.ptr553.idx.11112 = shl nuw nsw i32 %xor549.11111, 2, !dbg !235
  %add.ptr553.11113 = getelementptr inbounds i8, ptr addrspace(3) %161, i32 %add.ptr553.idx.11112, !dbg !235
  %201 = load i32, ptr addrspace(3) %add.ptr553.11113, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1267 = insertelement <2 x i32> poison, i32 %201, i64 0, !dbg !236
  %add540.1.11114 = add nuw nsw i32 %mul538, 9, !dbg !237
  %xor549.1.11115 = xor i32 %xor546, %add540.1.11114, !dbg !234
  %add.ptr553.idx.1.11116 = shl nuw nsw i32 %xor549.1.11115, 2, !dbg !235
  %add.ptr553.1.11117 = getelementptr inbounds i8, ptr addrspace(3) %161, i32 %add.ptr553.idx.1.11116, !dbg !235
  %202 = load i32, ptr addrspace(3) %add.ptr553.1.11117, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1273 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1267, i32 %202, i64 1, !dbg !236
  %xor549.11090.11123 = xor i32 %xor546.1, %add539.1, !dbg !234
  %add.ptr553.idx.11091.11124 = shl nuw nsw i32 %xor549.11090.11123, 2, !dbg !235
  %add.ptr553.11092.11125 = getelementptr inbounds i8, ptr addrspace(3) %164, i32 %add.ptr553.idx.11091.11124, !dbg !235
  %203 = load i32, ptr addrspace(3) %add.ptr553.11092.11125, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1283 = insertelement <2 x i32> poison, i32 %203, i64 0, !dbg !236
  %xor549.1.1.11128 = xor i32 %xor546.1, %add540.1.11114, !dbg !234
  %add.ptr553.idx.1.1.11129 = shl nuw nsw i32 %xor549.1.1.11128, 2, !dbg !235
  %add.ptr553.1.1.11130 = getelementptr inbounds i8, ptr addrspace(3) %164, i32 %add.ptr553.idx.1.1.11129, !dbg !235
  %204 = load i32, ptr addrspace(3) %add.ptr553.1.1.11130, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1289 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1283, i32 %204, i64 1, !dbg !236
  %xor549.2.11137 = xor i32 %xor546.2, %add539.1, !dbg !234
  %add.ptr553.idx.2.11138 = shl nuw nsw i32 %xor549.2.11137, 2, !dbg !235
  %add.ptr553.2.11139 = getelementptr inbounds i8, ptr addrspace(3) %167, i32 %add.ptr553.idx.2.11138, !dbg !235
  %205 = load i32, ptr addrspace(3) %add.ptr553.2.11139, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1299 = insertelement <2 x i32> poison, i32 %205, i64 0, !dbg !236
  %xor549.1.2.11142 = xor i32 %xor546.2, %add540.1.11114, !dbg !234
  %add.ptr553.idx.1.2.11143 = shl nuw nsw i32 %xor549.1.2.11142, 2, !dbg !235
  %add.ptr553.1.2.11144 = getelementptr inbounds i8, ptr addrspace(3) %167, i32 %add.ptr553.idx.1.2.11143, !dbg !235
  %206 = load i32, ptr addrspace(3) %add.ptr553.1.2.11144, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1305 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1299, i32 %206, i64 1, !dbg !236
  %xor549.3.11151 = xor i32 %xor546.3, %add539.1, !dbg !234
  %add.ptr553.idx.3.11152 = shl nuw nsw i32 %xor549.3.11151, 2, !dbg !235
  %add.ptr553.3.11153 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 %add.ptr553.idx.3.11152, !dbg !235
  %207 = load i32, ptr addrspace(3) %add.ptr553.3.11153, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1315 = insertelement <2 x i32> poison, i32 %207, i64 0, !dbg !236
  %xor549.1.3.11156 = xor i32 %xor546.3, %add540.1.11114, !dbg !234
  %add.ptr553.idx.1.3.11157 = shl nuw nsw i32 %xor549.1.3.11156, 2, !dbg !235
  %add.ptr553.1.3.11158 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 %add.ptr553.idx.1.3.11157, !dbg !235
  %208 = load i32, ptr addrspace(3) %add.ptr553.1.3.11158, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1321 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1315, i32 %208, i64 1, !dbg !236
  %209 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1273 to <4 x half>, !dbg !238
  %210 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %209, <4 x half> %109, <4 x float> %174), !dbg !239
  %211 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1289 to <4 x half>, !dbg !238
  %212 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %211, <4 x half> %109, <4 x float> %176), !dbg !239
  %213 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1305 to <4 x half>, !dbg !238
  %214 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %213, <4 x half> %109, <4 x float> %178), !dbg !239
  %215 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1321 to <4 x half>, !dbg !238
  %216 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %215, <4 x half> %109, <4 x float> %180), !dbg !239
  %add.ptr553.11100.1 = getelementptr inbounds i8, ptr addrspace(3) %181, i32 %add.ptr553.idx.11112, !dbg !235
  %217 = load i32, ptr addrspace(3) %add.ptr553.11100.1, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1269 = insertelement <2 x i32> poison, i32 %217, i64 0, !dbg !236
  %add.ptr553.1.11104.1 = getelementptr inbounds i8, ptr addrspace(3) %181, i32 %add.ptr553.idx.1.11116, !dbg !235
  %218 = load i32, ptr addrspace(3) %add.ptr553.1.11104.1, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1275 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1269, i32 %218, i64 1, !dbg !236
  %add.ptr553.11092.1.1 = getelementptr inbounds i8, ptr addrspace(3) %184, i32 %add.ptr553.idx.11091.11124, !dbg !235
  %219 = load i32, ptr addrspace(3) %add.ptr553.11092.1.1, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1285 = insertelement <2 x i32> poison, i32 %219, i64 0, !dbg !236
  %add.ptr553.1.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %184, i32 %add.ptr553.idx.1.1.11129, !dbg !235
  %220 = load i32, ptr addrspace(3) %add.ptr553.1.1.1.1, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1291 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1285, i32 %220, i64 1, !dbg !236
  %add.ptr553.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 %add.ptr553.idx.2.11138, !dbg !235
  %221 = load i32, ptr addrspace(3) %add.ptr553.2.1.1, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1301 = insertelement <2 x i32> poison, i32 %221, i64 0, !dbg !236
  %add.ptr553.1.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 %add.ptr553.idx.1.2.11143, !dbg !235
  %222 = load i32, ptr addrspace(3) %add.ptr553.1.2.1.1, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1307 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1301, i32 %222, i64 1, !dbg !236
  %add.ptr553.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %190, i32 %add.ptr553.idx.3.11152, !dbg !235
  %223 = load i32, ptr addrspace(3) %add.ptr553.3.1.1, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1317 = insertelement <2 x i32> poison, i32 %223, i64 0, !dbg !236
  %add.ptr553.1.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %190, i32 %add.ptr553.idx.1.3.11157, !dbg !235
  %224 = load i32, ptr addrspace(3) %add.ptr553.1.3.1.1, align 4, !dbg !236, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1323 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1317, i32 %224, i64 1, !dbg !236
  %225 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1275 to <4 x half>, !dbg !238
  %226 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %225, <4 x half> %109, <4 x float> %194), !dbg !239
  %227 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1291 to <4 x half>, !dbg !238
  %228 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %227, <4 x half> %109, <4 x float> %196), !dbg !239
  %229 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1307 to <4 x half>, !dbg !238
  %230 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %229, <4 x half> %109, <4 x float> %198), !dbg !239
  %231 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1323 to <4 x half>, !dbg !238
  %232 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %231, <4 x half> %109, <4 x float> %200), !dbg !239
  %add400 = fadd contract float %add395, %121, !dbg !240
  br label %if.end609, !dbg !63

for.body104:                                      ; preds = %for.cond.preheader, %for.body104
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body104 ]
  %gep922.idx = shl nsw i64 %indvars.iv, 10, !dbg !241
  %gep922 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 %gep922.idx, !dbg !241
  %qk_fetch.sroa.0.0.copyload2048 = load i64, ptr addrspace(4) %gep922, align 16, !dbg !242
  %qk_fetch.sroa.12.0.gep922.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep922, i64 8, !dbg !242
  %qk_fetch.sroa.12.0.copyload2052 = load i64, ptr addrspace(4) %qk_fetch.sroa.12.0.gep922.sroa_idx, align 8, !dbg !242
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %233 = shl i32 %indvars.iv.tr, 2
  %mul141 = and i32 %233, 4
  %add144 = add nuw nsw i32 %mul141, %shr44
  %xor145 = xor i32 %add144, %and40
  %234 = trunc nuw i64 %indvars.iv to i32
  %and148 = lshr i32 %234, 1
  %shr149876 = xor i32 %and148, %and51
  %235 = and i32 %shr149876, 1
  %236 = trunc i64 %indvars.iv to i32, !dbg !243
  %.tr = add i32 %31, %236, !dbg !243
  %237 = shl i32 %.tr, 9, !dbg !243
  %gep = getelementptr i8, ptr addrspace(3) %invariant.gep2111, i32 %237, !dbg !243
  %.idx957 = shl nuw nsw i32 %xor145, 4, !dbg !243
  %238 = getelementptr inbounds i8, ptr addrspace(3) %gep, i32 %.idx957, !dbg !243
  %add.ptr158.idx = shl nuw nsw i32 %235, 3, !dbg !243
  %add.ptr158 = getelementptr inbounds i8, ptr addrspace(3) %238, i32 %add.ptr158.idx, !dbg !243
  store i64 %qk_fetch.sroa.0.0.copyload2048, ptr addrspace(3) %add.ptr158, align 8, !dbg !244
  %xor154.1 = shl nuw nsw i32 %235, 3, !dbg !243
  %add.ptr158.idx.1 = xor i32 %xor154.1, 8, !dbg !243
  %add.ptr158.1 = getelementptr inbounds i8, ptr addrspace(3) %238, i32 %add.ptr158.idx.1, !dbg !243
  store i64 %qk_fetch.sroa.12.0.copyload2052, ptr addrspace(3) %add.ptr158.1, align 8, !dbg !244
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !245
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !246
  br i1 %exitcond.not, label %for.cond.cleanup103, label %for.body104, !dbg !89, !llvm.loop !247

if.end609:                                        ; preds = %for.cond.cleanup103, %for.body599.preheader
  %.pre-phi2110 = phi i64 [ %16, %for.cond.cleanup103 ], [ %.pre2109, %for.body599.preheader ], !dbg !62
  %.pre-phi2108 = phi i64 [ %13, %for.cond.cleanup103 ], [ %.pre2107, %for.body599.preheader ], !dbg !62
  %.pre-phi2106 = phi i64 [ %10, %for.cond.cleanup103 ], [ %.pre2105, %for.body599.preheader ], !dbg !62
  %.idx964.11184.pre-phi = phi i32 [ %.idx953.1972, %for.cond.cleanup103 ], [ %.pre2104, %for.body599.preheader ], !dbg !61
  %add.ptr711.idx.1.pre-phi = phi i32 [ %add.ptr57.idx.1, %for.cond.cleanup103 ], [ %.pre2101, %for.body599.preheader ], !dbg !61
  %add.ptr711.idx.pre-phi = phi i32 [ %add.ptr57.idx, %for.cond.cleanup103 ], [ %.pre2099, %for.body599.preheader ], !dbg !61
  %.idx964.pre-phi = phi i32 [ %.idx953, %for.cond.cleanup103 ], [ %.pre2098, %for.body599.preheader ], !dbg !61
  %.pre-phi2096 = phi i64 [ %6, %for.cond.cleanup103 ], [ %.pre2095, %for.body599.preheader ], !dbg !60
  %mul690.pre-phi = phi i32 [ %mul37, %for.cond.cleanup103 ], [ %.pre2088, %for.body599.preheader ]
  %mul685.pre-phi = phi i32 [ %mul32, %for.cond.cleanup103 ], [ %.pre2085, %for.body599.preheader ]
  %.idx962.4.pre-phi = phi i32 [ %.idx954.4, %for.cond.cleanup103 ], [ %.pre2082, %for.body599.preheader ], !dbg !57
  %add647.4.pre-phi = phi i32 [ %add70.4, %for.cond.cleanup103 ], [ %.pre2080, %for.body599.preheader ], !dbg !59
  %add.ptr670.idx.3.pre-phi = phi i32 [ %add.ptr93.idx.3, %for.cond.cleanup103 ], [ %.pre2079, %for.body599.preheader ], !dbg !57
  %add.ptr670.idx.2.pre-phi = phi i32 [ %add.ptr93.idx.2, %for.cond.cleanup103 ], [ %.pre2076, %for.body599.preheader ], !dbg !57
  %add.ptr670.idx.1.pre-phi = phi i32 [ %add.ptr93.idx.1, %for.cond.cleanup103 ], [ %.pre2073, %for.body599.preheader ], !dbg !57
  %add.ptr670.idx.pre-phi = phi i32 [ %add.ptr93.idx, %for.cond.cleanup103 ], [ %.pre2070, %for.body599.preheader ], !dbg !57
  %.idx962.pre-phi = phi i32 [ %.idx954, %for.cond.cleanup103 ], [ %.pre2069, %for.body599.preheader ], !dbg !57
  %mul646.pre-phi = phi i32 [ %mul69, %for.cond.cleanup103 ], [ %.pre2061, %for.body599.preheader ]
  %numerator.sroa.170.0 = phi <4 x float> [ %232, %for.cond.cleanup103 ], [ zeroinitializer, %for.body599.preheader ], !dbg !250
  %numerator.sroa.146.0 = phi <4 x float> [ %230, %for.cond.cleanup103 ], [ zeroinitializer, %for.body599.preheader ], !dbg !250
  %numerator.sroa.122.0 = phi <4 x float> [ %228, %for.cond.cleanup103 ], [ zeroinitializer, %for.body599.preheader ], !dbg !250
  %numerator.sroa.98.0 = phi <4 x float> [ %226, %for.cond.cleanup103 ], [ zeroinitializer, %for.body599.preheader ], !dbg !250
  %numerator.sroa.74.0 = phi <4 x float> [ %216, %for.cond.cleanup103 ], [ zeroinitializer, %for.body599.preheader ], !dbg !250
  %numerator.sroa.50.0 = phi <4 x float> [ %214, %for.cond.cleanup103 ], [ zeroinitializer, %for.body599.preheader ], !dbg !250
  %numerator.sroa.26.0 = phi <4 x float> [ %212, %for.cond.cleanup103 ], [ zeroinitializer, %for.body599.preheader ], !dbg !250
  %numerator.sroa.0.0 = phi <4 x float> [ %210, %for.cond.cleanup103 ], [ zeroinitializer, %for.body599.preheader ], !dbg !250
  %denominator.sroa.0.1 = phi float [ %add400, %for.cond.cleanup103 ], [ 0.000000e+00, %for.body599.preheader ], !dbg !250
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !251
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !251
  %div.1 = fdiv contract float %numerator.sroa.0.4.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !251
  %div.2 = fdiv contract float %numerator.sroa.0.8.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !251
  %div.3 = fdiv contract float %numerator.sroa.0.12.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.26.16.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 0, !dbg !251
  %div.4 = fdiv contract float %numerator.sroa.26.16.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.26.20.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 1, !dbg !251
  %div.5 = fdiv contract float %numerator.sroa.26.20.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.26.24.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 2, !dbg !251
  %div.6 = fdiv contract float %numerator.sroa.26.24.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.26.28.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 3, !dbg !251
  %div.7 = fdiv contract float %numerator.sroa.26.28.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.50.32.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 0, !dbg !251
  %div.8 = fdiv contract float %numerator.sroa.50.32.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.50.36.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 1, !dbg !251
  %div.9 = fdiv contract float %numerator.sroa.50.36.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.50.40.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 2, !dbg !251
  %div.10 = fdiv contract float %numerator.sroa.50.40.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.50.44.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 3, !dbg !251
  %div.11 = fdiv contract float %numerator.sroa.50.44.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.74.48.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 0, !dbg !251
  %div.12 = fdiv contract float %numerator.sroa.74.48.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.74.52.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 1, !dbg !251
  %div.13 = fdiv contract float %numerator.sroa.74.52.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.74.56.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 2, !dbg !251
  %div.14 = fdiv contract float %numerator.sroa.74.56.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.74.60.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 3, !dbg !251
  %div.15 = fdiv contract float %numerator.sroa.74.60.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.98.64.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 0, !dbg !251
  %div.16 = fdiv contract float %numerator.sroa.98.64.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.98.68.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 1, !dbg !251
  %div.17 = fdiv contract float %numerator.sroa.98.68.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.98.72.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 2, !dbg !251
  %div.18 = fdiv contract float %numerator.sroa.98.72.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.98.76.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 3, !dbg !251
  %div.19 = fdiv contract float %numerator.sroa.98.76.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.122.80.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 0, !dbg !251
  %div.20 = fdiv contract float %numerator.sroa.122.80.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.122.84.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 1, !dbg !251
  %div.21 = fdiv contract float %numerator.sroa.122.84.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.122.88.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 2, !dbg !251
  %div.22 = fdiv contract float %numerator.sroa.122.88.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.122.92.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 3, !dbg !251
  %div.23 = fdiv contract float %numerator.sroa.122.92.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.146.96.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 0, !dbg !251
  %div.24 = fdiv contract float %numerator.sroa.146.96.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.146.100.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 1, !dbg !251
  %div.25 = fdiv contract float %numerator.sroa.146.100.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.146.104.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 2, !dbg !251
  %div.26 = fdiv contract float %numerator.sroa.146.104.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.146.108.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 3, !dbg !251
  %div.27 = fdiv contract float %numerator.sroa.146.108.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.170.112.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 0, !dbg !251
  %div.28 = fdiv contract float %numerator.sroa.170.112.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.170.116.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 1, !dbg !251
  %div.29 = fdiv contract float %numerator.sroa.170.116.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.170.120.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 2, !dbg !251
  %div.30 = fdiv contract float %numerator.sroa.170.120.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.170.124.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 3, !dbg !251
  %div.31 = fdiv contract float %numerator.sroa.170.124.vec.extract, %denominator.sroa.0.1, !dbg !252
  fence syncscope("warp") release, !dbg !253
  tail call void @llvm.mxc.barrier.warp(), !dbg !256
  fence syncscope("warp") acquire, !dbg !257
  %conv.i.i910 = fptrunc float %div to half, !dbg !258
  %conv.i.i910.1 = fptrunc float %div.1 to half, !dbg !258
  %conv.i.i910.2 = fptrunc float %div.2 to half, !dbg !258
  %conv.i.i910.3 = fptrunc float %div.3 to half, !dbg !258
  %239 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul646.pre-phi, !dbg !57
  %240 = getelementptr inbounds i8, ptr addrspace(3) %239, i32 %.idx962.pre-phi, !dbg !57
  %add.ptr670 = getelementptr inbounds i8, ptr addrspace(3) %240, i32 %add.ptr670.idx.pre-phi, !dbg !57
  store half %conv.i.i910, ptr addrspace(3) %add.ptr670, align 8, !dbg !263
  %add.ptr670.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670, i32 2, !dbg !263
  store half %conv.i.i910.1, ptr addrspace(3) %add.ptr670.sroa_idx, align 2, !dbg !263
  %add.ptr670.sroa_idx1195 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670, i32 4, !dbg !263
  store half %conv.i.i910.2, ptr addrspace(3) %add.ptr670.sroa_idx1195, align 4, !dbg !263
  %add.ptr670.sroa_idx1196 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670, i32 6, !dbg !263
  store half %conv.i.i910.3, ptr addrspace(3) %add.ptr670.sroa_idx1196, align 2, !dbg !263
  %conv.i.i910.11170 = fptrunc float %div.4 to half, !dbg !258
  %conv.i.i910.1.1 = fptrunc float %div.5 to half, !dbg !258
  %conv.i.i910.2.1 = fptrunc float %div.6 to half, !dbg !258
  %conv.i.i910.3.1 = fptrunc float %div.7 to half, !dbg !258
  %add.ptr670.1 = getelementptr inbounds i8, ptr addrspace(3) %240, i32 %add.ptr670.idx.1.pre-phi, !dbg !57
  store half %conv.i.i910.11170, ptr addrspace(3) %add.ptr670.1, align 8, !dbg !263
  %add.ptr670.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.1, i32 2, !dbg !263
  store half %conv.i.i910.1.1, ptr addrspace(3) %add.ptr670.1.sroa_idx, align 2, !dbg !263
  %add.ptr670.1.sroa_idx1200 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.1, i32 4, !dbg !263
  store half %conv.i.i910.2.1, ptr addrspace(3) %add.ptr670.1.sroa_idx1200, align 4, !dbg !263
  %add.ptr670.1.sroa_idx1201 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.1, i32 6, !dbg !263
  store half %conv.i.i910.3.1, ptr addrspace(3) %add.ptr670.1.sroa_idx1201, align 2, !dbg !263
  %conv.i.i910.21172 = fptrunc float %div.8 to half, !dbg !258
  %conv.i.i910.1.2 = fptrunc float %div.9 to half, !dbg !258
  %conv.i.i910.2.2 = fptrunc float %div.10 to half, !dbg !258
  %conv.i.i910.3.2 = fptrunc float %div.11 to half, !dbg !258
  %add.ptr670.2 = getelementptr inbounds i8, ptr addrspace(3) %240, i32 %add.ptr670.idx.2.pre-phi, !dbg !57
  store half %conv.i.i910.21172, ptr addrspace(3) %add.ptr670.2, align 8, !dbg !263
  %add.ptr670.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.2, i32 2, !dbg !263
  store half %conv.i.i910.1.2, ptr addrspace(3) %add.ptr670.2.sroa_idx, align 2, !dbg !263
  %add.ptr670.2.sroa_idx1205 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.2, i32 4, !dbg !263
  store half %conv.i.i910.2.2, ptr addrspace(3) %add.ptr670.2.sroa_idx1205, align 4, !dbg !263
  %add.ptr670.2.sroa_idx1206 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.2, i32 6, !dbg !263
  store half %conv.i.i910.3.2, ptr addrspace(3) %add.ptr670.2.sroa_idx1206, align 2, !dbg !263
  %conv.i.i910.31174 = fptrunc float %div.12 to half, !dbg !258
  %conv.i.i910.1.3 = fptrunc float %div.13 to half, !dbg !258
  %conv.i.i910.2.3 = fptrunc float %div.14 to half, !dbg !258
  %conv.i.i910.3.3 = fptrunc float %div.15 to half, !dbg !258
  %add.ptr670.3 = getelementptr inbounds i8, ptr addrspace(3) %240, i32 %add.ptr670.idx.3.pre-phi, !dbg !57
  store half %conv.i.i910.31174, ptr addrspace(3) %add.ptr670.3, align 8, !dbg !263
  %add.ptr670.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.3, i32 2, !dbg !263
  store half %conv.i.i910.1.3, ptr addrspace(3) %add.ptr670.3.sroa_idx, align 2, !dbg !263
  %add.ptr670.3.sroa_idx1210 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.3, i32 4, !dbg !263
  store half %conv.i.i910.2.3, ptr addrspace(3) %add.ptr670.3.sroa_idx1210, align 4, !dbg !263
  %add.ptr670.3.sroa_idx1211 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.3, i32 6, !dbg !263
  store half %conv.i.i910.3.3, ptr addrspace(3) %add.ptr670.3.sroa_idx1211, align 2, !dbg !263
  %conv.i.i910.4 = fptrunc float %div.16 to half, !dbg !258
  %conv.i.i910.1.4 = fptrunc float %div.17 to half, !dbg !258
  %conv.i.i910.2.4 = fptrunc float %div.18 to half, !dbg !258
  %conv.i.i910.3.4 = fptrunc float %div.19 to half, !dbg !258
  %241 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add647.4.pre-phi, !dbg !57
  %242 = getelementptr inbounds i8, ptr addrspace(3) %241, i32 %.idx962.4.pre-phi, !dbg !57
  %add.ptr670.4 = getelementptr inbounds i8, ptr addrspace(3) %242, i32 %add.ptr670.idx.pre-phi, !dbg !57
  store half %conv.i.i910.4, ptr addrspace(3) %add.ptr670.4, align 8, !dbg !263
  %add.ptr670.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.4, i32 2, !dbg !263
  store half %conv.i.i910.1.4, ptr addrspace(3) %add.ptr670.4.sroa_idx, align 2, !dbg !263
  %add.ptr670.4.sroa_idx1215 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.4, i32 4, !dbg !263
  store half %conv.i.i910.2.4, ptr addrspace(3) %add.ptr670.4.sroa_idx1215, align 4, !dbg !263
  %add.ptr670.4.sroa_idx1216 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.4, i32 6, !dbg !263
  store half %conv.i.i910.3.4, ptr addrspace(3) %add.ptr670.4.sroa_idx1216, align 2, !dbg !263
  %conv.i.i910.5 = fptrunc float %div.20 to half, !dbg !258
  %conv.i.i910.1.5 = fptrunc float %div.21 to half, !dbg !258
  %conv.i.i910.2.5 = fptrunc float %div.22 to half, !dbg !258
  %conv.i.i910.3.5 = fptrunc float %div.23 to half, !dbg !258
  %add.ptr670.5 = getelementptr inbounds i8, ptr addrspace(3) %242, i32 %add.ptr670.idx.1.pre-phi, !dbg !57
  store half %conv.i.i910.5, ptr addrspace(3) %add.ptr670.5, align 8, !dbg !263
  %add.ptr670.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.5, i32 2, !dbg !263
  store half %conv.i.i910.1.5, ptr addrspace(3) %add.ptr670.5.sroa_idx, align 2, !dbg !263
  %add.ptr670.5.sroa_idx1220 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.5, i32 4, !dbg !263
  store half %conv.i.i910.2.5, ptr addrspace(3) %add.ptr670.5.sroa_idx1220, align 4, !dbg !263
  %add.ptr670.5.sroa_idx1221 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.5, i32 6, !dbg !263
  store half %conv.i.i910.3.5, ptr addrspace(3) %add.ptr670.5.sroa_idx1221, align 2, !dbg !263
  %conv.i.i910.6 = fptrunc float %div.24 to half, !dbg !258
  %conv.i.i910.1.6 = fptrunc float %div.25 to half, !dbg !258
  %conv.i.i910.2.6 = fptrunc float %div.26 to half, !dbg !258
  %conv.i.i910.3.6 = fptrunc float %div.27 to half, !dbg !258
  %add.ptr670.6 = getelementptr inbounds i8, ptr addrspace(3) %242, i32 %add.ptr670.idx.2.pre-phi, !dbg !57
  store half %conv.i.i910.6, ptr addrspace(3) %add.ptr670.6, align 8, !dbg !263
  %add.ptr670.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.6, i32 2, !dbg !263
  store half %conv.i.i910.1.6, ptr addrspace(3) %add.ptr670.6.sroa_idx, align 2, !dbg !263
  %add.ptr670.6.sroa_idx1225 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.6, i32 4, !dbg !263
  store half %conv.i.i910.2.6, ptr addrspace(3) %add.ptr670.6.sroa_idx1225, align 4, !dbg !263
  %add.ptr670.6.sroa_idx1226 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.6, i32 6, !dbg !263
  store half %conv.i.i910.3.6, ptr addrspace(3) %add.ptr670.6.sroa_idx1226, align 2, !dbg !263
  %conv.i.i910.7 = fptrunc float %div.28 to half, !dbg !258
  %conv.i.i910.1.7 = fptrunc float %div.29 to half, !dbg !258
  %conv.i.i910.2.7 = fptrunc float %div.30 to half, !dbg !258
  %conv.i.i910.3.7 = fptrunc float %div.31 to half, !dbg !258
  %add.ptr670.7 = getelementptr inbounds i8, ptr addrspace(3) %242, i32 %add.ptr670.idx.3.pre-phi, !dbg !57
  store half %conv.i.i910.7, ptr addrspace(3) %add.ptr670.7, align 8, !dbg !263
  %add.ptr670.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.7, i32 2, !dbg !263
  store half %conv.i.i910.1.7, ptr addrspace(3) %add.ptr670.7.sroa_idx, align 2, !dbg !263
  %add.ptr670.7.sroa_idx1230 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.7, i32 4, !dbg !263
  store half %conv.i.i910.2.7, ptr addrspace(3) %add.ptr670.7.sroa_idx1230, align 4, !dbg !263
  %add.ptr670.7.sroa_idx1231 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.7, i32 6, !dbg !263
  store half %conv.i.i910.3.7, ptr addrspace(3) %add.ptr670.7.sroa_idx1231, align 2, !dbg !263
  fence syncscope("warp") release, !dbg !264
  tail call void @llvm.mxc.barrier.warp(), !dbg !267
  fence syncscope("warp") acquire, !dbg !268
  %243 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul690.pre-phi, !dbg !61
  %244 = getelementptr inbounds %struct.__half, ptr addrspace(3) %243, i32 %mul685.pre-phi, !dbg !61
  %245 = getelementptr inbounds i8, ptr addrspace(3) %244, i32 %.idx964.pre-phi, !dbg !61
  %add.ptr711 = getelementptr inbounds i8, ptr addrspace(3) %245, i32 %add.ptr711.idx.pre-phi, !dbg !61
  %246 = load i64, ptr addrspace(3) %add.ptr711, align 8, !dbg !269
  %add.ptr711.1 = getelementptr inbounds i8, ptr addrspace(3) %245, i32 %add.ptr711.idx.1.pre-phi, !dbg !61
  %247 = load i64, ptr addrspace(3) %add.ptr711.1, align 8, !dbg !269
  %add.ptr732 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2096, !dbg !270
  store i64 %246, ptr addrspace(1) %add.ptr732, align 16, !dbg !271
  %output_fetch.sroa.10.0.add.ptr732.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr732, i64 8, !dbg !271
  store i64 %247, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr732.sroa_idx, align 8, !dbg !271
  %248 = getelementptr inbounds i8, ptr addrspace(3) %244, i32 512, !dbg !61
  %249 = getelementptr inbounds i8, ptr addrspace(3) %248, i32 %.idx964.11184.pre-phi, !dbg !61
  %add.ptr711.11186 = getelementptr inbounds i8, ptr addrspace(3) %249, i32 %add.ptr711.idx.pre-phi, !dbg !61
  %250 = load i64, ptr addrspace(3) %add.ptr711.11186, align 8, !dbg !269
  %add.ptr711.1.1 = getelementptr inbounds i8, ptr addrspace(3) %249, i32 %add.ptr711.idx.1.pre-phi, !dbg !61
  %251 = load i64, ptr addrspace(3) %add.ptr711.1.1, align 8, !dbg !269
  %add.ptr732.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2106, !dbg !270
  store i64 %250, ptr addrspace(1) %add.ptr732.1, align 16, !dbg !271
  %output_fetch.sroa.10.0.add.ptr732.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr732.1, i64 8, !dbg !271
  store i64 %251, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr732.1.sroa_idx, align 8, !dbg !271
  %252 = getelementptr inbounds i8, ptr addrspace(3) %244, i32 1024, !dbg !61
  %253 = getelementptr inbounds i8, ptr addrspace(3) %252, i32 %.idx964.pre-phi, !dbg !61
  %add.ptr711.2 = getelementptr inbounds i8, ptr addrspace(3) %253, i32 %add.ptr711.idx.1.pre-phi, !dbg !61
  %254 = load i64, ptr addrspace(3) %add.ptr711.2, align 8, !dbg !269
  %add.ptr711.1.2 = getelementptr inbounds i8, ptr addrspace(3) %253, i32 %add.ptr711.idx.pre-phi, !dbg !61
  %255 = load i64, ptr addrspace(3) %add.ptr711.1.2, align 8, !dbg !269
  %add.ptr732.2 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2108, !dbg !270
  store i64 %254, ptr addrspace(1) %add.ptr732.2, align 16, !dbg !271
  %output_fetch.sroa.10.0.add.ptr732.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr732.2, i64 8, !dbg !271
  store i64 %255, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr732.2.sroa_idx, align 8, !dbg !271
  %256 = getelementptr inbounds i8, ptr addrspace(3) %244, i32 1536, !dbg !61
  %257 = getelementptr inbounds i8, ptr addrspace(3) %256, i32 %.idx964.11184.pre-phi, !dbg !61
  %add.ptr711.3 = getelementptr inbounds i8, ptr addrspace(3) %257, i32 %add.ptr711.idx.1.pre-phi, !dbg !61
  %258 = load i64, ptr addrspace(3) %add.ptr711.3, align 8, !dbg !269
  %add.ptr711.1.3 = getelementptr inbounds i8, ptr addrspace(3) %257, i32 %add.ptr711.idx.pre-phi, !dbg !61
  %259 = load i64, ptr addrspace(3) %add.ptr711.1.3, align 8, !dbg !269
  %add.ptr732.3 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2110, !dbg !270
  store i64 %258, ptr addrspace(1) %add.ptr732.3, align 16, !dbg !271
  %output_fetch.sroa.10.0.add.ptr732.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr732.3, i64 8, !dbg !271
  store i64 %259, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr732.3.sroa_idx, align 8, !dbg !271
  ret void, !dbg !272
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
attributes #3 = { convergent mustprogress norecurse nounwind "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-implicitarg-num-bytes"="80" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="64" "metaxgpu-min-blocks"="1" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" "uniform-work-group-size"="true" }
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v071_codex_power_s1_k_copy_loop_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v071_codex_power_s1_k_copy_loop_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
!42 = !DILocation(line: 78, column: 3, scope: !43, inlinedAt: !45)
!43 = distinct !DISubprogram(name: "__fetch_builtin_y", scope: !44, file: !44, line: 78, type: !7, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!44 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_builtin_vars.h", directory: "")
!45 = distinct !DILocation(line: 25, column: 38, scope: !40)
!46 = !DILocation(line: 25, column: 50, scope: !40)
!47 = !DILocation(line: 77, column: 3, scope: !48, inlinedAt: !49)
!48 = distinct !DISubprogram(name: "__fetch_builtin_x", scope: !44, file: !44, line: 77, type: !7, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!49 = distinct !DILocation(line: 25, column: 66, scope: !40)
!50 = !DILocation(line: 25, column: 58, scope: !40)
!51 = !DILocation(line: 25, column: 22, scope: !40)
!52 = !DILocation(line: 25, column: 80, scope: !40)
!53 = !DILocation(line: 27, column: 10, scope: !40)
!54 = !DILocation(line: 27, column: 26, scope: !40)
!55 = !{i32 0, i32 1024}
!56 = !DILocation(line: 187, column: 141, scope: !40)
!57 = !DILocation(line: 187, column: 22, scope: !40)
!58 = !DILocation(line: 187, column: 112, scope: !40)
!59 = !DILocation(line: 187, column: 51, scope: !40)
!60 = !DILocation(line: 191, column: 3, scope: !40)
!61 = !DILocation(line: 194, column: 65, scope: !40)
!62 = !DILocation(line: 196, column: 105, scope: !40)
!63 = !DILocation(line: 178, column: 3, scope: !40)
!64 = !DILocation(line: 29, column: 5, scope: !40)
!65 = !DILocation(line: 30, column: 45, scope: !40)
!66 = !DILocation(line: 30, column: 31, scope: !40)
!67 = !DILocation(line: 33, column: 26, scope: !40)
!68 = !DILocation(line: 33, column: 279, scope: !40)
!69 = !DILocation(line: 30, column: 126, scope: !40)
!70 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !73)
!71 = distinct !DISubprogram(name: "__barrier_warp", scope: !72, file: !72, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!72 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!73 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !75)
!74 = distinct !DISubprogram(name: "__syncwarp", scope: !72, file: !72, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!75 = distinct !DILocation(line: 36, column: 5, scope: !40)
!76 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !73)
!77 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !73)
!78 = !DILocation(line: 38, column: 174, scope: !40)
!79 = !DILocation(line: 38, column: 59, scope: !40)
!80 = !DILocation(line: 38, column: 40, scope: !40)
!81 = !DILocation(line: 38, column: 145, scope: !40)
!82 = !DILocation(line: 38, column: 86, scope: !40)
!83 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !84)
!84 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !85)
!85 = distinct !DILocation(line: 40, column: 5, scope: !40)
!86 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !84)
!87 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !84)
!88 = !DILocation(line: 42, column: 10, scope: !40)
!89 = !DILocation(line: 42, column: 5, scope: !40)
!90 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !91)
!91 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !92)
!92 = distinct !DILocation(line: 49, column: 5, scope: !40)
!93 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !91)
!94 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !91)
!95 = !DILocation(line: 58, column: 32, scope: !40)
!96 = !DILocation(line: 60, column: 44, scope: !40)
!97 = !DILocation(line: 58, column: 51, scope: !40)
!98 = !DILocation(line: 71, column: 96, scope: !40)
!99 = !DILocation(line: 71, column: 13, scope: !40)
!100 = !DILocation(line: 71, column: 85, scope: !40)
!101 = !DILocation(line: 351, column: 10, scope: !102, inlinedAt: !104)
!102 = distinct !DISubprogram(name: "max", scope: !103, file: !103, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!103 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!104 = distinct !DILocation(line: 82, column: 20, scope: !40)
!105 = !DILocation(line: 1018, column: 9, scope: !106, inlinedAt: !107)
!106 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !72, file: !72, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!107 = distinct !DILocation(line: 84, column: 34, scope: !40)
!108 = !DILocation(line: 171, column: 37, scope: !109, inlinedAt: !110)
!109 = distinct !DISubprogram(name: "__lane_id", scope: !72, file: !72, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!110 = distinct !DILocation(line: 990, column: 14, scope: !111, inlinedAt: !112)
!111 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !72, file: !72, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!112 = distinct !DILocation(line: 1019, column: 11, scope: !106, inlinedAt: !107)
!113 = !DILocation(line: 171, column: 10, scope: !109, inlinedAt: !110)
!114 = !DILocation(line: 991, column: 20, scope: !111, inlinedAt: !112)
!115 = !DILocation(line: 992, column: 36, scope: !111, inlinedAt: !112)
!116 = !DILocation(line: 992, column: 17, scope: !111, inlinedAt: !112)
!117 = !DILocation(line: 992, column: 11, scope: !111, inlinedAt: !112)
!118 = !DILocation(line: 993, column: 43, scope: !111, inlinedAt: !112)
!119 = !DILocation(line: 993, column: 10, scope: !111, inlinedAt: !112)
!120 = !DILocation(line: 1020, column: 14, scope: !106, inlinedAt: !107)
!121 = !DILocation(line: 351, column: 10, scope: !102, inlinedAt: !122)
!122 = distinct !DILocation(line: 84, column: 18, scope: !40)
!123 = !DILocation(line: 1018, column: 9, scope: !106, inlinedAt: !124)
!124 = distinct !DILocation(line: 85, column: 34, scope: !40)
!125 = !DILocation(line: 171, column: 37, scope: !109, inlinedAt: !126)
!126 = distinct !DILocation(line: 990, column: 14, scope: !111, inlinedAt: !127)
!127 = distinct !DILocation(line: 1019, column: 11, scope: !106, inlinedAt: !124)
!128 = !DILocation(line: 171, column: 10, scope: !109, inlinedAt: !126)
!129 = !DILocation(line: 991, column: 20, scope: !111, inlinedAt: !127)
!130 = !DILocation(line: 992, column: 36, scope: !111, inlinedAt: !127)
!131 = !DILocation(line: 992, column: 17, scope: !111, inlinedAt: !127)
!132 = !DILocation(line: 992, column: 11, scope: !111, inlinedAt: !127)
!133 = !DILocation(line: 993, column: 43, scope: !111, inlinedAt: !127)
!134 = !DILocation(line: 993, column: 10, scope: !111, inlinedAt: !127)
!135 = !DILocation(line: 1020, column: 14, scope: !106, inlinedAt: !124)
!136 = !DILocation(line: 351, column: 10, scope: !102, inlinedAt: !137)
!137 = distinct !DILocation(line: 85, column: 18, scope: !40)
!138 = !DILocation(line: 97, column: 26, scope: !40)
!139 = !DILocation(line: 98, column: 26, scope: !40)
!140 = !DILocation(line: 99, column: 26, scope: !40)
!141 = !DILocation(line: 100, column: 26, scope: !40)
!142 = !DILocation(line: 102, column: 25, scope: !40)
!143 = !DILocation(line: 103, column: 25, scope: !40)
!144 = !DILocation(line: 104, column: 25, scope: !40)
!145 = !DILocation(line: 105, column: 25, scope: !40)
!146 = !DILocation(line: 107, column: 23, scope: !40)
!147 = !DILocation(line: 108, column: 23, scope: !40)
!148 = !DILocation(line: 109, column: 23, scope: !40)
!149 = !DILocation(line: 110, column: 23, scope: !40)
!150 = !DILocation(line: 285, column: 49, scope: !151, inlinedAt: !152)
!151 = distinct !DISubprogram(name: "exp2f", scope: !103, file: !103, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!152 = distinct !DILocation(line: 111, column: 15, scope: !40)
!153 = !DILocation(line: 285, column: 49, scope: !151, inlinedAt: !154)
!154 = distinct !DILocation(line: 112, column: 15, scope: !40)
!155 = !DILocation(line: 285, column: 49, scope: !151, inlinedAt: !156)
!156 = distinct !DILocation(line: 113, column: 15, scope: !40)
!157 = !DILocation(line: 285, column: 49, scope: !151, inlinedAt: !158)
!158 = distinct !DILocation(line: 114, column: 15, scope: !40)
!159 = !DILocation(line: 1007, column: 10, scope: !160, inlinedAt: !162)
!160 = distinct !DISubprogram(name: "__float2half_rn", scope: !161, file: !161, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!161 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!162 = distinct !DILocation(line: 1077, column: 18, scope: !163, inlinedAt: !164)
!163 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !161, file: !161, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!164 = distinct !DILocation(line: 1295, column: 23, scope: !165, inlinedAt: !166)
!165 = distinct !DISubprogram(name: "__float22half2_rn", scope: !161, file: !161, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!166 = distinct !DILocation(line: 115, column: 29, scope: !40)
!167 = !{!168, !170}
!168 = distinct !{!168, !169, !"_ZL17__floats2half2_rnff: %agg.result"}
!169 = distinct !{!169, !"_ZL17__floats2half2_rnff"}
!170 = distinct !{!170, !171, !"_ZL17__float22half2_rn6float2: %agg.result"}
!171 = distinct !{!171, !"_ZL17__float22half2_rn6float2"}
!172 = !DILocation(line: 1007, column: 10, scope: !160, inlinedAt: !173)
!173 = distinct !DILocation(line: 1077, column: 38, scope: !163, inlinedAt: !164)
!174 = !DILocation(line: 1007, column: 10, scope: !160, inlinedAt: !175)
!175 = distinct !DILocation(line: 1077, column: 18, scope: !163, inlinedAt: !176)
!176 = distinct !DILocation(line: 1295, column: 23, scope: !165, inlinedAt: !177)
!177 = distinct !DILocation(line: 116, column: 29, scope: !40)
!178 = !{!179, !181}
!179 = distinct !{!179, !180, !"_ZL17__floats2half2_rnff: %agg.result"}
!180 = distinct !{!180, !"_ZL17__floats2half2_rnff"}
!181 = distinct !{!181, !182, !"_ZL17__float22half2_rn6float2: %agg.result"}
!182 = distinct !{!182, !"_ZL17__float22half2_rn6float2"}
!183 = !DILocation(line: 1007, column: 10, scope: !160, inlinedAt: !184)
!184 = distinct !DILocation(line: 1077, column: 38, scope: !163, inlinedAt: !176)
!185 = !DILocation(line: 117, column: 51, scope: !40)
!186 = !DILocation(line: 1082, column: 16, scope: !187, inlinedAt: !188)
!187 = distinct !DISubprogram(name: "__half2float", scope: !161, file: !161, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!188 = distinct !DILocation(line: 136, column: 55, scope: !189, inlinedAt: !190)
!189 = distinct !DISubprogram(name: "operator float", scope: !161, file: !161, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!190 = distinct !DILocation(line: 121, column: 50, scope: !40)
!191 = !DILocation(line: 121, column: 40, scope: !40)
!192 = !DILocation(line: 1018, column: 9, scope: !106, inlinedAt: !193)
!193 = distinct !DILocation(line: 123, column: 40, scope: !40)
!194 = !DILocation(line: 171, column: 37, scope: !109, inlinedAt: !195)
!195 = distinct !DILocation(line: 990, column: 14, scope: !111, inlinedAt: !196)
!196 = distinct !DILocation(line: 1019, column: 11, scope: !106, inlinedAt: !193)
!197 = !DILocation(line: 171, column: 10, scope: !109, inlinedAt: !195)
!198 = !DILocation(line: 991, column: 20, scope: !111, inlinedAt: !196)
!199 = !DILocation(line: 992, column: 36, scope: !111, inlinedAt: !196)
!200 = !DILocation(line: 992, column: 17, scope: !111, inlinedAt: !196)
!201 = !DILocation(line: 992, column: 11, scope: !111, inlinedAt: !196)
!202 = !DILocation(line: 993, column: 43, scope: !111, inlinedAt: !196)
!203 = !DILocation(line: 993, column: 10, scope: !111, inlinedAt: !196)
!204 = !DILocation(line: 1020, column: 14, scope: !106, inlinedAt: !193)
!205 = !DILocation(line: 123, column: 38, scope: !40)
!206 = !DILocation(line: 1018, column: 9, scope: !106, inlinedAt: !207)
!207 = distinct !DILocation(line: 124, column: 40, scope: !40)
!208 = !DILocation(line: 171, column: 37, scope: !109, inlinedAt: !209)
!209 = distinct !DILocation(line: 990, column: 14, scope: !111, inlinedAt: !210)
!210 = distinct !DILocation(line: 1019, column: 11, scope: !106, inlinedAt: !207)
!211 = !DILocation(line: 171, column: 10, scope: !109, inlinedAt: !209)
!212 = !DILocation(line: 991, column: 20, scope: !111, inlinedAt: !210)
!213 = !DILocation(line: 992, column: 36, scope: !111, inlinedAt: !210)
!214 = !DILocation(line: 992, column: 17, scope: !111, inlinedAt: !210)
!215 = !DILocation(line: 992, column: 11, scope: !111, inlinedAt: !210)
!216 = !DILocation(line: 993, column: 43, scope: !111, inlinedAt: !210)
!217 = !DILocation(line: 993, column: 10, scope: !111, inlinedAt: !210)
!218 = !DILocation(line: 1020, column: 14, scope: !106, inlinedAt: !207)
!219 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !220)
!220 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !221)
!221 = distinct !DILocation(line: 125, column: 5, scope: !40)
!222 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !220)
!223 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !220)
!224 = !DILocation(line: 132, column: 56, scope: !40)
!225 = !DILocation(line: 132, column: 42, scope: !40)
!226 = !DILocation(line: 139, column: 28, scope: !40)
!227 = !DILocation(line: 139, column: 192, scope: !40)
!228 = !DILocation(line: 139, column: 63, scope: !40)
!229 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !230)
!230 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !231)
!231 = distinct !DILocation(line: 143, column: 5, scope: !40)
!232 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !230)
!233 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !230)
!234 = !DILocation(line: 157, column: 325, scope: !40)
!235 = !DILocation(line: 157, column: 84, scope: !40)
!236 = !DILocation(line: 157, column: 65, scope: !40)
!237 = !DILocation(line: 157, column: 263, scope: !40)
!238 = !DILocation(line: 163, column: 94, scope: !40)
!239 = !DILocation(line: 163, column: 64, scope: !40)
!240 = !DILocation(line: 124, column: 38, scope: !40)
!241 = !DILocation(line: 43, column: 45, scope: !40)
!242 = !DILocation(line: 43, column: 31, scope: !40)
!243 = !DILocation(line: 46, column: 26, scope: !40)
!244 = !DILocation(line: 46, column: 293, scope: !40)
!245 = !DILocation(line: 42, column: 38, scope: !40)
!246 = !DILocation(line: 42, column: 33, scope: !40)
!247 = distinct !{!247, !89, !248, !32, !249}
!248 = !DILocation(line: 48, column: 5, scope: !40)
!249 = !{!"llvm.loop.unroll.disable"}
!250 = !DILocation(line: 0, scope: !40)
!251 = !DILocation(line: 179, column: 23, scope: !40)
!252 = !DILocation(line: 179, column: 38, scope: !40)
!253 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !254)
!254 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !255)
!255 = distinct !DILocation(line: 181, column: 3, scope: !40)
!256 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !254)
!257 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !254)
!258 = !DILocation(line: 984, column: 21, scope: !259, inlinedAt: !260)
!259 = distinct !DISubprogram(name: "__float2half", scope: !161, file: !161, line: 979, type: !7, scopeLine: 979, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!260 = distinct !DILocation(line: 133, column: 53, scope: !261, inlinedAt: !262)
!261 = distinct !DISubprogram(name: "__half", scope: !161, file: !161, line: 133, type: !7, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!262 = distinct !DILocation(line: 185, column: 39, scope: !40)
!263 = !DILocation(line: 187, column: 274, scope: !40)
!264 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !265)
!265 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !266)
!266 = distinct !DILocation(line: 189, column: 3, scope: !40)
!267 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !265)
!268 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !265)
!269 = !DILocation(line: 194, column: 46, scope: !40)
!270 = !DILocation(line: 196, column: 22, scope: !40)
!271 = !DILocation(line: 196, column: 134, scope: !40)
!272 = !DILocation(line: 198, column: 1, scope: !40)
