; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v069_codex_power_s1_shared_reciprocal_sc-16g-2/case6.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v069_codex_power_s1_shared_reciprocal_sc-16g-2/codegen/case6.device.cpp"
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
  %.pre2073 = shl nuw nsw i32 %.pre, 6
  %.pre2074 = and i32 %.pre2073, 960
  %.pre2075 = lshr i32 %.pre, 5
  %.pre2076 = and i32 %.pre, 7
  %.pre2077 = lshr i32 %.pre, 4
  %.pre2078 = lshr i32 %.pre, 3
  %.pre2079 = xor i32 %.pre2077, %.pre2078
  %.pre2080 = and i32 %.pre2079, 1
  %.pre2081 = xor i32 %.pre2075, %.pre2076, !dbg !56
  %.pre2082 = shl nuw nsw i32 %.pre2080, 3, !dbg !57
  %.pre2083 = shl nuw nsw i32 %.pre2081, 4, !dbg !57
  %.pre2084 = add nuw nsw i32 %.pre2075, 2, !dbg !58
  %.pre2085 = xor i32 %.pre2084, %.pre2076, !dbg !56
  %.pre2086 = shl nuw nsw i32 %.pre2085, 4, !dbg !57
  %.pre2087 = add nuw nsw i32 %.pre2075, 4, !dbg !58
  %.pre2088 = xor i32 %.pre2087, %.pre2076, !dbg !56
  %.pre2089 = shl nuw nsw i32 %.pre2088, 4, !dbg !57
  %.pre2090 = add nuw nsw i32 %.pre2075, 6, !dbg !58
  %.pre2091 = xor i32 %.pre2090, %.pre2076, !dbg !56
  %.pre2092 = shl nuw nsw i32 %.pre2091, 4, !dbg !57
  %.pre2093 = or disjoint i32 %.pre2074, 1024, !dbg !59
  %.pre2094 = shl nuw nsw i32 %.pre2080, 3, !dbg !57
  %.pre2095 = xor i32 %.pre2094, 8, !dbg !57
  %.pre2096 = shl nuw nsw i32 %.pre, 7
  %.pre2098 = and i32 %.pre2096, 1024
  %.pre2099 = shl nuw nsw i32 %.pre, 2
  %.pre2101 = and i32 %.pre2099, 4032
  %.pre2102 = and i32 %.pre2078, 1
  %.pre2103 = shl nsw i32 %0, 21
  %.pre2104 = shl nsw i32 %1, 11
  %.pre2105 = add nuw nsw i32 %.pre2103, %.pre2104
  %.pre2106 = shl nuw nsw i32 %.pre, 3
  %.pre2107 = add nuw nsw i32 %.pre2105, %.pre2106
  %.pre2108 = zext nneg i32 %.pre2107 to i64, !dbg !60
  %.pre2110 = xor i32 %.pre2077, %.pre2076
  %.pre2111 = shl nuw nsw i32 %.pre2110, 4, !dbg !61
  %.pre2112 = shl nuw nsw i32 %.pre2102, 3, !dbg !61
  %.pre2113 = shl nuw nsw i32 %.pre2102, 3, !dbg !61
  %.pre2114 = xor i32 %.pre2113, 8, !dbg !61
  %.pre2115 = add nuw nsw i32 %.pre2077, 4
  %.pre2116 = xor i32 %.pre2115, %.pre2076
  %.pre2117 = shl nuw nsw i32 %.pre2116, 4, !dbg !61
  %.pre2118 = add nuw nsw i64 %.pre2108, 512, !dbg !62
  %.pre2120 = add nuw nsw i64 %.pre2108, 1024, !dbg !62
  %.pre2122 = add nuw nsw i64 %.pre2108, 1536, !dbg !62
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
  %qk_fetch.sroa.26.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !66
  %qk_fetch.sroa.26.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.sroa_idx, align 8, !dbg !66
  %xor = xor i32 %shr44, %and40
  %7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul37, !dbg !67
  %8 = getelementptr inbounds %struct.__half, ptr addrspace(3) %7, i32 %mul32, !dbg !67
  %.idx956 = shl nuw nsw i32 %xor, 4, !dbg !67
  %9 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 %.idx956, !dbg !67
  %add.ptr57.idx = shl nuw nsw i32 %shr52, 3, !dbg !67
  %add.ptr57 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 %add.ptr57.idx, !dbg !67
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr57, align 8, !dbg !68
  %xor53.1 = shl nuw nsw i32 %shr52, 3, !dbg !67
  %add.ptr57.idx.1 = xor i32 %xor53.1, 8, !dbg !67
  %add.ptr57.1 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 %add.ptr57.idx.1, !dbg !67
  store i64 %qk_fetch.sroa.26.0.copyload, ptr addrspace(3) %add.ptr57.1, align 8, !dbg !68
  %10 = add nuw nsw i64 %6, 512, !dbg !69
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %10, !dbg !65
  %qk_fetch.sroa.0.0.copyload2041 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !66
  %qk_fetch.sroa.26.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !66
  %qk_fetch.sroa.26.0.copyload2052 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.1.sroa_idx, align 8, !dbg !66
  %add45.1 = add nuw nsw i32 %shr44, 4
  %xor.1 = xor i32 %add45.1, %and40
  %11 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 512, !dbg !67
  %.idx956.1975 = shl nuw nsw i32 %xor.1, 4, !dbg !67
  %12 = getelementptr inbounds i8, ptr addrspace(3) %11, i32 %.idx956.1975, !dbg !67
  %add.ptr57.1977 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 %add.ptr57.idx, !dbg !67
  store i64 %qk_fetch.sroa.0.0.copyload2041, ptr addrspace(3) %add.ptr57.1977, align 8, !dbg !68
  %add.ptr57.1.1 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 %add.ptr57.idx.1, !dbg !67
  store i64 %qk_fetch.sroa.26.0.copyload2052, ptr addrspace(3) %add.ptr57.1.1, align 8, !dbg !68
  %13 = add nuw nsw i64 %6, 1024, !dbg !69
  %add.ptr.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %13, !dbg !65
  %qk_fetch.sroa.0.0.copyload2042 = load i64, ptr addrspace(4) %add.ptr.2, align 16, !dbg !66
  %qk_fetch.sroa.26.0.add.ptr.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.2, i64 8, !dbg !66
  %qk_fetch.sroa.26.0.copyload2053 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.2.sroa_idx, align 8, !dbg !66
  %14 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 1024, !dbg !67
  %15 = getelementptr inbounds i8, ptr addrspace(3) %14, i32 %.idx956, !dbg !67
  %add.ptr57.2 = getelementptr inbounds i8, ptr addrspace(3) %15, i32 %add.ptr57.idx.1, !dbg !67
  store i64 %qk_fetch.sroa.0.0.copyload2042, ptr addrspace(3) %add.ptr57.2, align 8, !dbg !68
  %add.ptr57.1.2 = getelementptr inbounds i8, ptr addrspace(3) %15, i32 %add.ptr57.idx, !dbg !67
  store i64 %qk_fetch.sroa.26.0.copyload2053, ptr addrspace(3) %add.ptr57.1.2, align 8, !dbg !68
  %16 = add nuw nsw i64 %6, 1536, !dbg !69
  %add.ptr.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %16, !dbg !65
  %qk_fetch.sroa.0.0.copyload2043 = load i64, ptr addrspace(4) %add.ptr.3, align 16, !dbg !66
  %qk_fetch.sroa.26.0.add.ptr.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.3, i64 8, !dbg !66
  %qk_fetch.sroa.26.0.copyload2054 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.3.sroa_idx, align 8, !dbg !66
  %17 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 1536, !dbg !67
  %18 = getelementptr inbounds i8, ptr addrspace(3) %17, i32 %.idx956.1975, !dbg !67
  %add.ptr57.3 = getelementptr inbounds i8, ptr addrspace(3) %18, i32 %add.ptr57.idx.1, !dbg !67
  store i64 %qk_fetch.sroa.0.0.copyload2043, ptr addrspace(3) %add.ptr57.3, align 8, !dbg !68
  %add.ptr57.1.3 = getelementptr inbounds i8, ptr addrspace(3) %18, i32 %add.ptr57.idx, !dbg !67
  store i64 %qk_fetch.sroa.26.0.copyload2054, ptr addrspace(3) %add.ptr57.1.3, align 8, !dbg !68
  fence syncscope("warp") release, !dbg !70
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %and68 = shl nuw nsw i32 %3, 6
  %mul69 = and i32 %and68, 960
  %shr74 = lshr i32 %3, 5
  %shr83880 = xor i32 %shr44, %and51
  %xor87 = and i32 %shr83880, 1
  %xor78 = xor i32 %shr74, %and40, !dbg !78
  %19 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul69, !dbg !79
  %.idx957 = shl nuw nsw i32 %xor87, 3, !dbg !79
  %20 = getelementptr inbounds i8, ptr addrspace(3) %19, i32 %.idx957, !dbg !79
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
  %.idx957.4 = xor i32 %xor89.4, 8, !dbg !79
  %26 = getelementptr inbounds i8, ptr addrspace(3) %25, i32 %.idx957.4, !dbg !79
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
  %invariant.gep924 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %mul115, !dbg !88
  %31 = and i32 %3, 8
  %.idx958 = shl nuw nsw i64 %conv, 18, !dbg !89
  %32 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep924, i64 %.idx958, !dbg !89
  %qk_fetch.sroa.0.0.copyload2040 = load i64, ptr addrspace(4) %32, align 16, !dbg !90
  %qk_fetch.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 8, !dbg !90
  %qk_fetch.sroa.26.0.copyload2051 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0..sroa_idx, align 8, !dbg !90
  %33 = shl nuw nsw i32 %31, 9, !dbg !91
  %34 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %33, !dbg !91
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(3) %34, i32 %mul37, !dbg !91
  %36 = getelementptr inbounds i8, ptr addrspace(3) %35, i32 %.idx956, !dbg !91
  %add.ptr158 = getelementptr inbounds i8, ptr addrspace(3) %36, i32 %add.ptr57.idx, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload2040, ptr addrspace(3) %add.ptr158, align 8, !dbg !92
  %add.ptr158.1 = getelementptr inbounds i8, ptr addrspace(3) %36, i32 %add.ptr57.idx.1, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload2051, ptr addrspace(3) %add.ptr158.1, align 8, !dbg !92
  %gep925.1 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 1024, !dbg !89
  %qk_fetch.sroa.0.0.copyload2044 = load i64, ptr addrspace(4) %gep925.1, align 16, !dbg !90
  %qk_fetch.sroa.26.0.gep925.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 1032, !dbg !90
  %qk_fetch.sroa.26.0.copyload2055 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep925.1.sroa_idx, align 8, !dbg !90
  %37 = shl nuw nsw i32 %31, 9, !dbg !91
  %38 = or disjoint i32 %37, 512, !dbg !91
  %39 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %38, !dbg !91
  %40 = getelementptr inbounds %struct.__half, ptr addrspace(3) %39, i32 %mul37, !dbg !91
  %41 = getelementptr inbounds i8, ptr addrspace(3) %40, i32 %.idx956.1975, !dbg !91
  %add.ptr158.1984 = getelementptr inbounds i8, ptr addrspace(3) %41, i32 %add.ptr57.idx, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload2044, ptr addrspace(3) %add.ptr158.1984, align 8, !dbg !92
  %add.ptr158.1.1 = getelementptr inbounds i8, ptr addrspace(3) %41, i32 %add.ptr57.idx.1, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload2055, ptr addrspace(3) %add.ptr158.1.1, align 8, !dbg !92
  %gep925.2 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 2048, !dbg !89
  %qk_fetch.sroa.0.0.copyload2045 = load i64, ptr addrspace(4) %gep925.2, align 16, !dbg !90
  %qk_fetch.sroa.26.0.gep925.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 2056, !dbg !90
  %qk_fetch.sroa.26.0.copyload2056 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep925.2.sroa_idx, align 8, !dbg !90
  %shr149879.2 = and i32 %and51, 1
  %42 = shl nuw nsw i32 %31, 9, !dbg !91
  %43 = or disjoint i32 %42, 1024, !dbg !91
  %44 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %43, !dbg !91
  %45 = getelementptr inbounds %struct.__half, ptr addrspace(3) %44, i32 %mul37, !dbg !91
  %46 = getelementptr inbounds i8, ptr addrspace(3) %45, i32 %.idx956, !dbg !91
  %47 = shl nuw nsw i32 %shr149879.2, 3, !dbg !91
  %add.ptr158.idx.2 = xor i32 %47, 8, !dbg !91
  %add.ptr158.2 = getelementptr inbounds i8, ptr addrspace(3) %46, i32 %add.ptr158.idx.2, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload2045, ptr addrspace(3) %add.ptr158.2, align 8, !dbg !92
  %add.ptr158.idx.1.2 = shl nuw nsw i32 %shr149879.2, 3, !dbg !91
  %add.ptr158.1.2 = getelementptr inbounds i8, ptr addrspace(3) %46, i32 %add.ptr158.idx.1.2, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload2056, ptr addrspace(3) %add.ptr158.1.2, align 8, !dbg !92
  %gep925.3 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 3072, !dbg !89
  %qk_fetch.sroa.0.0.copyload2046 = load i64, ptr addrspace(4) %gep925.3, align 16, !dbg !90
  %qk_fetch.sroa.26.0.gep925.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 3080, !dbg !90
  %qk_fetch.sroa.26.0.copyload2057 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep925.3.sroa_idx, align 8, !dbg !90
  %48 = shl nuw nsw i32 %31, 9, !dbg !91
  %49 = or disjoint i32 %48, 1536, !dbg !91
  %50 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %49, !dbg !91
  %51 = getelementptr inbounds %struct.__half, ptr addrspace(3) %50, i32 %mul37, !dbg !91
  %52 = getelementptr inbounds i8, ptr addrspace(3) %51, i32 %.idx956.1975, !dbg !91
  %add.ptr158.3 = getelementptr inbounds i8, ptr addrspace(3) %52, i32 %add.ptr158.idx.2, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload2046, ptr addrspace(3) %add.ptr158.3, align 8, !dbg !92
  %add.ptr158.1.3 = getelementptr inbounds i8, ptr addrspace(3) %52, i32 %add.ptr158.idx.1.2, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload2057, ptr addrspace(3) %add.ptr158.1.3, align 8, !dbg !92
  %gep925.4 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 4096, !dbg !89
  %qk_fetch.sroa.0.0.copyload2047 = load i64, ptr addrspace(4) %gep925.4, align 16, !dbg !90
  %qk_fetch.sroa.26.0.gep925.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 4104, !dbg !90
  %qk_fetch.sroa.26.0.copyload2058 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep925.4.sroa_idx, align 8, !dbg !90
  %53 = and i32 %and51, 1
  %54 = shl nuw nsw i32 %31, 9, !dbg !91
  %55 = or disjoint i32 %54, 2048, !dbg !91
  %56 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %55, !dbg !91
  %57 = getelementptr inbounds %struct.__half, ptr addrspace(3) %56, i32 %mul37, !dbg !91
  %58 = getelementptr inbounds i8, ptr addrspace(3) %57, i32 %.idx956, !dbg !91
  %add.ptr158.idx.4 = shl nuw nsw i32 %53, 3, !dbg !91
  %add.ptr158.4 = getelementptr inbounds i8, ptr addrspace(3) %58, i32 %add.ptr158.idx.4, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload2047, ptr addrspace(3) %add.ptr158.4, align 8, !dbg !92
  %xor154.1.4 = shl nuw nsw i32 %53, 3, !dbg !91
  %add.ptr158.idx.1.4 = xor i32 %xor154.1.4, 8, !dbg !91
  %add.ptr158.1.4 = getelementptr inbounds i8, ptr addrspace(3) %58, i32 %add.ptr158.idx.1.4, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload2058, ptr addrspace(3) %add.ptr158.1.4, align 8, !dbg !92
  %gep925.5 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 5120, !dbg !89
  %qk_fetch.sroa.0.0.copyload2048 = load i64, ptr addrspace(4) %gep925.5, align 16, !dbg !90
  %qk_fetch.sroa.26.0.gep925.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 5128, !dbg !90
  %qk_fetch.sroa.26.0.copyload2059 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep925.5.sroa_idx, align 8, !dbg !90
  %59 = shl nuw nsw i32 %31, 9, !dbg !91
  %60 = or disjoint i32 %59, 2560, !dbg !91
  %61 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %60, !dbg !91
  %62 = getelementptr inbounds %struct.__half, ptr addrspace(3) %61, i32 %mul37, !dbg !91
  %63 = getelementptr inbounds i8, ptr addrspace(3) %62, i32 %.idx956.1975, !dbg !91
  %add.ptr158.5 = getelementptr inbounds i8, ptr addrspace(3) %63, i32 %add.ptr158.idx.4, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload2048, ptr addrspace(3) %add.ptr158.5, align 8, !dbg !92
  %add.ptr158.1.5 = getelementptr inbounds i8, ptr addrspace(3) %63, i32 %add.ptr158.idx.1.4, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload2059, ptr addrspace(3) %add.ptr158.1.5, align 8, !dbg !92
  %gep925.6 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 6144, !dbg !89
  %qk_fetch.sroa.0.0.copyload2049 = load i64, ptr addrspace(4) %gep925.6, align 16, !dbg !90
  %qk_fetch.sroa.26.0.gep925.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 6152, !dbg !90
  %qk_fetch.sroa.26.0.copyload2060 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep925.6.sroa_idx, align 8, !dbg !90
  %shr149879.6 = and i32 %and51, 1
  %64 = shl nuw nsw i32 %31, 9, !dbg !91
  %65 = or disjoint i32 %64, 3072, !dbg !91
  %66 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %65, !dbg !91
  %67 = getelementptr inbounds %struct.__half, ptr addrspace(3) %66, i32 %mul37, !dbg !91
  %68 = getelementptr inbounds i8, ptr addrspace(3) %67, i32 %.idx956, !dbg !91
  %69 = shl nuw nsw i32 %shr149879.6, 3, !dbg !91
  %add.ptr158.idx.6 = xor i32 %69, 8, !dbg !91
  %add.ptr158.6 = getelementptr inbounds i8, ptr addrspace(3) %68, i32 %add.ptr158.idx.6, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload2049, ptr addrspace(3) %add.ptr158.6, align 8, !dbg !92
  %add.ptr158.idx.1.6 = shl nuw nsw i32 %shr149879.6, 3, !dbg !91
  %add.ptr158.1.6 = getelementptr inbounds i8, ptr addrspace(3) %68, i32 %add.ptr158.idx.1.6, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload2060, ptr addrspace(3) %add.ptr158.1.6, align 8, !dbg !92
  %gep925.7 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 7168, !dbg !89
  %qk_fetch.sroa.0.0.copyload2050 = load i64, ptr addrspace(4) %gep925.7, align 16, !dbg !90
  %qk_fetch.sroa.26.0.gep925.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 7176, !dbg !90
  %qk_fetch.sroa.26.0.copyload2061 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep925.7.sroa_idx, align 8, !dbg !90
  %70 = shl nuw nsw i32 %31, 9, !dbg !91
  %71 = or disjoint i32 %70, 3584, !dbg !91
  %72 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %71, !dbg !91
  %73 = getelementptr inbounds %struct.__half, ptr addrspace(3) %72, i32 %mul37, !dbg !91
  %74 = getelementptr inbounds i8, ptr addrspace(3) %73, i32 %.idx956.1975, !dbg !91
  %add.ptr158.7 = getelementptr inbounds i8, ptr addrspace(3) %74, i32 %add.ptr158.idx.6, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload2050, ptr addrspace(3) %add.ptr158.7, align 8, !dbg !92
  %add.ptr158.1.7 = getelementptr inbounds i8, ptr addrspace(3) %74, i32 %add.ptr158.idx.1.6, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload2061, ptr addrspace(3) %add.ptr158.1.7, align 8, !dbg !92
  fence syncscope("warp") release, !dbg !93
  tail call void @llvm.mxc.barrier.warp(), !dbg !96
  fence syncscope("warp") acquire, !dbg !97
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr93, align 8, !dbg !98
  %75 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %21, <4 x float> zeroinitializer), !dbg !99
  %add.ptr215.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr215.1, align 8, !dbg !98
  %76 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %21, <4 x float> zeroinitializer), !dbg !99
  %k_local.sroa.0.0.copyload.1987 = load <4 x half>, ptr addrspace(3) %add.ptr93.1, align 8, !dbg !98
  %77 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1987, <4 x half> %22, <4 x float> %75), !dbg !99
  %add.ptr215.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93.1, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.1, align 8, !dbg !98
  %78 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %22, <4 x float> %76), !dbg !99
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr93.2, align 8, !dbg !98
  %79 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %23, <4 x float> %77), !dbg !99
  %add.ptr215.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93.2, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.2, align 8, !dbg !98
  %80 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %23, <4 x float> %78), !dbg !99
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr93.3, align 8, !dbg !98
  %81 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %24, <4 x float> %79), !dbg !99
  %add.ptr215.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93.3, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.3, align 8, !dbg !98
  %82 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %24, <4 x float> %80), !dbg !99
  %add192.4 = or disjoint i32 %mul69, 2048
  %83 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add192.4, !dbg !100
  %84 = getelementptr inbounds i8, ptr addrspace(3) %83, i32 %.idx957.4, !dbg !100
  %85 = getelementptr inbounds i8, ptr addrspace(3) %84, i32 %add.ptr93.idx, !dbg !100
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %85, align 8, !dbg !98
  %86 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %27, <4 x float> %81), !dbg !99
  %add.ptr215.1.4 = getelementptr inbounds i8, ptr addrspace(3) %85, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.4, align 8, !dbg !98
  %87 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %27, <4 x float> %82), !dbg !99
  %88 = getelementptr inbounds i8, ptr addrspace(3) %84, i32 %add.ptr93.idx.1, !dbg !100
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %88, align 8, !dbg !98
  %89 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %28, <4 x float> %86), !dbg !99
  %add.ptr215.1.5 = getelementptr inbounds i8, ptr addrspace(3) %88, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.5, align 8, !dbg !98
  %90 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %28, <4 x float> %87), !dbg !99
  %91 = getelementptr inbounds i8, ptr addrspace(3) %84, i32 %add.ptr93.idx.2, !dbg !100
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %91, align 8, !dbg !98
  %92 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %29, <4 x float> %89), !dbg !99
  %add.ptr215.1.6 = getelementptr inbounds i8, ptr addrspace(3) %91, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.6, align 8, !dbg !98
  %93 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %29, <4 x float> %90), !dbg !99
  %94 = getelementptr inbounds i8, ptr addrspace(3) %84, i32 %add.ptr93.idx.3, !dbg !100
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %94, align 8, !dbg !98
  %95 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %30, <4 x float> %92), !dbg !99
  %add.ptr215.1.7 = getelementptr inbounds i8, ptr addrspace(3) %94, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.7, align 8, !dbg !98
  %96 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %30, <4 x float> %93), !dbg !99
  %97 = lshr i32 %3, 2
  %mul246 = and i32 %97, 252
  %add247 = add nuw nsw i32 %mul7, %mul246
  %cmp251.not = icmp sgt i32 %add247, %1, !dbg !101
  %scores.sroa.0.0.vec.extract = extractelement <4 x float> %95, i64 0
  %spec.select = select i1 %cmp251.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract, !dbg !102
  %cmp251.not.1.not = icmp slt i32 %add247, %1, !dbg !101
  %scores.sroa.0.4.vec.extract = extractelement <4 x float> %95, i64 1, !dbg !102
  %condval.0.1 = select i1 %cmp251.not.1.not, float %scores.sroa.0.4.vec.extract, float 0xFFF0000000000000, !dbg !102
  %add249.2 = or disjoint i32 %add247, 2, !dbg !103
  %cmp251.not.2 = icmp sgt i32 %add249.2, %1, !dbg !101
  %scores.sroa.0.8.vec.extract = extractelement <4 x float> %95, i64 2, !dbg !102
  %condval.0.2 = select i1 %cmp251.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract, !dbg !102
  %add249.3 = or disjoint i32 %add247, 3, !dbg !103
  %cmp251.not.3 = icmp sgt i32 %add249.3, %1, !dbg !101
  %scores.sroa.0.12.vec.extract = extractelement <4 x float> %95, i64 3, !dbg !102
  %condval.0.3 = select i1 %cmp251.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract, !dbg !102
  %add248.1 = add nuw nsw i32 %add247, 16
  %cmp251.not.1988 = icmp sgt i32 %add248.1, %1, !dbg !101
  %scores.sroa.38.16.vec.extract = extractelement <4 x float> %96, i64 0, !dbg !102
  %condval.0.1991 = select i1 %cmp251.not.1988, float 0xFFF0000000000000, float %scores.sroa.38.16.vec.extract, !dbg !102
  %add249.1.1 = add nuw nsw i32 %add247, 17, !dbg !103
  %cmp251.not.1.1 = icmp sgt i32 %add249.1.1, %1, !dbg !101
  %scores.sroa.38.20.vec.extract = extractelement <4 x float> %96, i64 1, !dbg !102
  %condval.0.1.1 = select i1 %cmp251.not.1.1, float 0xFFF0000000000000, float %scores.sroa.38.20.vec.extract, !dbg !102
  %add249.2.1 = add nuw nsw i32 %add247, 18, !dbg !103
  %cmp251.not.2.1 = icmp sgt i32 %add249.2.1, %1, !dbg !101
  %scores.sroa.38.24.vec.extract = extractelement <4 x float> %96, i64 2, !dbg !102
  %condval.0.2.1 = select i1 %cmp251.not.2.1, float 0xFFF0000000000000, float %scores.sroa.38.24.vec.extract, !dbg !102
  %add249.3.1 = add nuw nsw i32 %add247, 19, !dbg !103
  %cmp251.not.3.1 = icmp sgt i32 %add249.3.1, %1, !dbg !101
  %scores.sroa.38.28.vec.extract = extractelement <4 x float> %96, i64 3, !dbg !102
  %condval.0.3.1 = select i1 %cmp251.not.3.1, float 0xFFF0000000000000, float %scores.sroa.38.28.vec.extract, !dbg !102
  %98 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !104
  %99 = tail call contract noundef float @llvm.maxnum.f32(float %98, float %condval.0.1), !dbg !104
  %100 = tail call contract noundef float @llvm.maxnum.f32(float %99, float %condval.0.2), !dbg !104
  %101 = tail call contract noundef float @llvm.maxnum.f32(float %100, float %condval.0.3), !dbg !104
  %102 = tail call contract noundef float @llvm.maxnum.f32(float %101, float %condval.0.1991), !dbg !104
  %103 = tail call contract noundef float @llvm.maxnum.f32(float %102, float %condval.0.1.1), !dbg !104
  %104 = tail call contract noundef float @llvm.maxnum.f32(float %103, float %condval.0.2.1), !dbg !104
  %105 = tail call contract noundef float @llvm.maxnum.f32(float %104, float %condval.0.3.1), !dbg !104
  %106 = bitcast float %105 to i32, !dbg !108
  %107 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !111
  %108 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %107) #10, !dbg !116
  %xor.i.i = xor i32 %108, 32, !dbg !117
  %109 = and i32 %108, -64, !dbg !118
  %and.i.i = add nsw i32 %109, 64, !dbg !118
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !119
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %108, !dbg !120
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !121
  %110 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %106), !dbg !122
  %111 = bitcast i32 %110 to float, !dbg !123
  %112 = tail call contract noundef float @llvm.maxnum.f32(float %105, float %111), !dbg !124
  %113 = bitcast float %112 to i32, !dbg !126
  %114 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !128
  %115 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %114) #10, !dbg !131
  %xor.i.i881 = xor i32 %115, 16, !dbg !132
  %116 = and i32 %115, -64, !dbg !133
  %and.i.i882 = add nsw i32 %116, 64, !dbg !133
  %cmp.not.i.i883 = icmp slt i32 %xor.i.i881, %and.i.i882, !dbg !134
  %cond.i.i884 = select i1 %cmp.not.i.i883, i32 %xor.i.i881, i32 %115, !dbg !135
  %shl.i.i885 = shl i32 %cond.i.i884, 2, !dbg !136
  %117 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i885, i32 %113), !dbg !137
  %118 = bitcast i32 %117 to float, !dbg !138
  %119 = tail call contract noundef float @llvm.maxnum.f32(float %112, float %118), !dbg !139
  %sub = fsub contract float %spec.select, %119, !dbg !141
  %sub309 = fsub contract float %condval.0.1, %119, !dbg !142
  %sub312 = fsub contract float %condval.0.2, %119, !dbg !143
  %sub315 = fsub contract float %condval.0.3, %119, !dbg !144
  %mul320 = fmul contract float %sub, 0x3FC0527DC0000000, !dbg !145
  %mul324 = fmul contract float %sub309, 0x3FC0527DC0000000, !dbg !146
  %mul328 = fmul contract float %sub312, 0x3FC0527DC0000000, !dbg !147
  %mul332 = fmul contract float %sub315, 0x3FC0527DC0000000, !dbg !148
  %add337 = fadd contract float %mul320, 8.000000e+00, !dbg !149
  %add341 = fadd contract float %mul324, 8.000000e+00, !dbg !150
  %add345 = fadd contract float %mul328, 8.000000e+00, !dbg !151
  %add349 = fadd contract float %mul332, 8.000000e+00, !dbg !152
  %cmp.i.i = fcmp contract olt float %add337, -1.260000e+02, !dbg !153
  %cond.i.i886 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i = fadd contract float %add337, %cond.i.i886, !dbg !153
  %120 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !153
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i = fmul contract float %cond2.i.i, %120, !dbg !153
  %cmp.i.i887 = fcmp contract olt float %add341, -1.260000e+02, !dbg !156
  %cond.i.i888 = select contract i1 %cmp.i.i887, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i889 = fadd contract float %add341, %cond.i.i888, !dbg !156
  %121 = tail call contract float @llvm.exp2.f32(float %add.i.i889), !dbg !156
  %cond2.i.i890 = select contract i1 %cmp.i.i887, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i891 = fmul contract float %cond2.i.i890, %121, !dbg !156
  %cmp.i.i892 = fcmp contract olt float %add345, -1.260000e+02, !dbg !158
  %cond.i.i893 = select contract i1 %cmp.i.i892, float 6.400000e+01, float 0.000000e+00, !dbg !158
  %add.i.i894 = fadd contract float %add345, %cond.i.i893, !dbg !158
  %122 = tail call contract float @llvm.exp2.f32(float %add.i.i894), !dbg !158
  %cond2.i.i895 = select contract i1 %cmp.i.i892, float 0x3BF0000000000000, float 1.000000e+00, !dbg !158
  %mul.i.i896 = fmul contract float %cond2.i.i895, %122, !dbg !158
  %cmp.i.i897 = fcmp contract olt float %add349, -1.260000e+02, !dbg !160
  %cond.i.i898 = select contract i1 %cmp.i.i897, float 6.400000e+01, float 0.000000e+00, !dbg !160
  %add.i.i899 = fadd contract float %add349, %cond.i.i898, !dbg !160
  %123 = tail call contract float @llvm.exp2.f32(float %add.i.i899), !dbg !160
  %cond2.i.i900 = select contract i1 %cmp.i.i897, float 0x3BF0000000000000, float 1.000000e+00, !dbg !160
  %mul.i.i901 = fmul contract float %cond2.i.i900, %123, !dbg !160
  %124 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !162
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !162, !noalias !170
  %125 = fptrunc float %mul.i.i to half, !dbg !162
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %124), !dbg !162, !noalias !170
  %126 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !175, !noalias !170
  %127 = fptrunc float %mul.i.i891 to half, !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %126), !dbg !175, !noalias !170
  %128 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !177
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !177, !noalias !181
  %129 = fptrunc float %mul.i.i896 to half, !dbg !177
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %128), !dbg !177, !noalias !181
  %130 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !186
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !186, !noalias !181
  %131 = fptrunc float %mul.i.i901 to half, !dbg !186
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %130), !dbg !186, !noalias !181
  %132 = insertelement <4 x half> poison, half %125, i64 0, !dbg !188
  %133 = insertelement <4 x half> %132, half %127, i64 1, !dbg !188
  %134 = insertelement <4 x half> %133, half %129, i64 2, !dbg !188
  %135 = insertelement <4 x half> %134, half %131, i64 3, !dbg !188
  %sub.1 = fsub contract float %condval.0.1991, %119, !dbg !141
  %sub309.1 = fsub contract float %condval.0.1.1, %119, !dbg !142
  %sub312.1 = fsub contract float %condval.0.2.1, %119, !dbg !143
  %sub315.1 = fsub contract float %condval.0.3.1, %119, !dbg !144
  %mul320.1 = fmul contract float %sub.1, 0x3FC0527DC0000000, !dbg !145
  %mul324.1 = fmul contract float %sub309.1, 0x3FC0527DC0000000, !dbg !146
  %mul328.1 = fmul contract float %sub312.1, 0x3FC0527DC0000000, !dbg !147
  %mul332.1 = fmul contract float %sub315.1, 0x3FC0527DC0000000, !dbg !148
  %add337.1 = fadd contract float %mul320.1, 8.000000e+00, !dbg !149
  %add341.1 = fadd contract float %mul324.1, 8.000000e+00, !dbg !150
  %add345.1 = fadd contract float %mul328.1, 8.000000e+00, !dbg !151
  %add349.1 = fadd contract float %mul332.1, 8.000000e+00, !dbg !152
  %cmp.i.i.1 = fcmp contract olt float %add337.1, -1.260000e+02, !dbg !153
  %cond.i.i886.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i.1 = fadd contract float %add337.1, %cond.i.i886.1, !dbg !153
  %136 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !153
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %136, !dbg !153
  %cmp.i.i887.1 = fcmp contract olt float %add341.1, -1.260000e+02, !dbg !156
  %cond.i.i888.1 = select contract i1 %cmp.i.i887.1, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i889.1 = fadd contract float %add341.1, %cond.i.i888.1, !dbg !156
  %137 = tail call contract float @llvm.exp2.f32(float %add.i.i889.1), !dbg !156
  %cond2.i.i890.1 = select contract i1 %cmp.i.i887.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i891.1 = fmul contract float %cond2.i.i890.1, %137, !dbg !156
  %cmp.i.i892.1 = fcmp contract olt float %add345.1, -1.260000e+02, !dbg !158
  %cond.i.i893.1 = select contract i1 %cmp.i.i892.1, float 6.400000e+01, float 0.000000e+00, !dbg !158
  %add.i.i894.1 = fadd contract float %add345.1, %cond.i.i893.1, !dbg !158
  %138 = tail call contract float @llvm.exp2.f32(float %add.i.i894.1), !dbg !158
  %cond2.i.i895.1 = select contract i1 %cmp.i.i892.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !158
  %mul.i.i896.1 = fmul contract float %cond2.i.i895.1, %138, !dbg !158
  %cmp.i.i897.1 = fcmp contract olt float %add349.1, -1.260000e+02, !dbg !160
  %cond.i.i898.1 = select contract i1 %cmp.i.i897.1, float 6.400000e+01, float 0.000000e+00, !dbg !160
  %add.i.i899.1 = fadd contract float %add349.1, %cond.i.i898.1, !dbg !160
  %139 = tail call contract float @llvm.exp2.f32(float %add.i.i899.1), !dbg !160
  %cond2.i.i900.1 = select contract i1 %cmp.i.i897.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !160
  %mul.i.i901.1 = fmul contract float %cond2.i.i900.1, %139, !dbg !160
  %140 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !162
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !162, !noalias !170
  %141 = fptrunc float %mul.i.i.1 to half, !dbg !162
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %140), !dbg !162, !noalias !170
  %142 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !175, !noalias !170
  %143 = fptrunc float %mul.i.i891.1 to half, !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %142), !dbg !175, !noalias !170
  %144 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !177
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !177, !noalias !181
  %145 = fptrunc float %mul.i.i896.1 to half, !dbg !177
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %144), !dbg !177, !noalias !181
  %146 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !186
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !186, !noalias !181
  %147 = fptrunc float %mul.i.i901.1 to half, !dbg !186
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %146), !dbg !186, !noalias !181
  %148 = insertelement <4 x half> poison, half %141, i64 0, !dbg !188
  %149 = insertelement <4 x half> %148, half %143, i64 1, !dbg !188
  %150 = insertelement <4 x half> %149, half %145, i64 2, !dbg !188
  %151 = insertelement <4 x half> %150, half %147, i64 3, !dbg !188
  %conv.i.i = fpext half %125 to float, !dbg !189
  %add387 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !194
  %conv.i.i.1 = fpext half %127 to float, !dbg !189
  %add387.1 = fadd contract float %add387, %conv.i.i.1, !dbg !194
  %conv.i.i.2 = fpext half %129 to float, !dbg !189
  %add387.2 = fadd contract float %add387.1, %conv.i.i.2, !dbg !194
  %conv.i.i.3 = fpext half %131 to float, !dbg !189
  %add387.3 = fadd contract float %add387.2, %conv.i.i.3, !dbg !194
  %conv.i.i.4 = fpext half %141 to float, !dbg !189
  %add387.4 = fadd contract float %add387.3, %conv.i.i.4, !dbg !194
  %conv.i.i.5 = fpext half %143 to float, !dbg !189
  %add387.5 = fadd contract float %add387.4, %conv.i.i.5, !dbg !194
  %conv.i.i.6 = fpext half %145 to float, !dbg !189
  %add387.6 = fadd contract float %add387.5, %conv.i.i.6, !dbg !194
  %conv.i.i.7 = fpext half %147 to float, !dbg !189
  %add387.7 = fadd contract float %add387.6, %conv.i.i.7, !dbg !194
  %152 = bitcast float %add387.7 to i32, !dbg !195
  %153 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !197
  %154 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %153) #10, !dbg !200
  %xor.i.i903 = xor i32 %154, 32, !dbg !201
  %155 = and i32 %154, -64, !dbg !202
  %and.i.i904 = add nsw i32 %155, 64, !dbg !202
  %cmp.not.i.i905 = icmp slt i32 %xor.i.i903, %and.i.i904, !dbg !203
  %cond.i.i906 = select i1 %cmp.not.i.i905, i32 %xor.i.i903, i32 %154, !dbg !204
  %shl.i.i907 = shl i32 %cond.i.i906, 2, !dbg !205
  %156 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i907, i32 %152), !dbg !206
  %157 = bitcast i32 %156 to float, !dbg !207
  %add395 = fadd contract float %add387.7, %157, !dbg !208
  %158 = bitcast float %add395 to i32, !dbg !209
  %159 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !211
  %160 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %159) #10, !dbg !214
  %xor.i.i908 = xor i32 %160, 16, !dbg !215
  %161 = and i32 %160, -64, !dbg !216
  %and.i.i909 = add nsw i32 %161, 64, !dbg !216
  %cmp.not.i.i910 = icmp slt i32 %xor.i.i908, %and.i.i909, !dbg !217
  %cond.i.i911 = select i1 %cmp.not.i.i910, i32 %xor.i.i908, i32 %160, !dbg !218
  %shl.i.i912 = shl i32 %cond.i.i911, 2, !dbg !219
  %162 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i912, i32 %158), !dbg !220
  %163 = bitcast i32 %162 to float, !dbg !221
  fence syncscope("warp") release, !dbg !222
  tail call void @llvm.mxc.barrier.warp(), !dbg !225
  fence syncscope("warp") acquire, !dbg !226
  %mul416 = shl nuw nsw i64 %conv, 17
  %164 = shl nuw nsw i32 %3, 5
  %165 = and i32 %164, 32512
  %mul423 = zext nneg i32 %165 to i64
  %add419 = or disjoint i64 %mul416, %mul423
  %166 = and i32 %mul20, 56
  %mul437 = zext nneg i32 %166 to i64
  %invariant.gep937 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %mul437
  %mul471 = and i32 %164, 224
  %xor479 = xor i32 %and51, %and40
  %167 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep937, i64 %add419, !dbg !227
  %168 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 %.idx, !dbg !227
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %168, align 16, !dbg !228
  %v_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 2, !dbg !228
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4, !dbg !228
  %v_fetch.sroa.14.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx, align 4, !dbg !228
  %v_fetch.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 6, !dbg !228
  %v_fetch.sroa.18.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 8, !dbg !228
  %v_fetch.sroa.22.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx, align 8, !dbg !228
  %v_fetch.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 10, !dbg !228
  %v_fetch.sroa.26.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 12, !dbg !228
  %v_fetch.sroa.30.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx, align 4, !dbg !228
  %v_fetch.sroa.34.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 14, !dbg !228
  %v_fetch.sroa.34.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx, align 2, !dbg !228, !tbaa !30
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 256, !dbg !227
  %v_fetch.sroa.38.16.copyload = load i16, ptr addrspace(4) %gep.1, align 16, !dbg !228
  %v_fetch.sroa.46.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 258, !dbg !228
  %v_fetch.sroa.46.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 260, !dbg !228
  %v_fetch.sroa.50.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.sroa_idx, align 4, !dbg !228
  %v_fetch.sroa.54.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 262, !dbg !228
  %v_fetch.sroa.54.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 264, !dbg !228
  %v_fetch.sroa.58.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.sroa_idx, align 8, !dbg !228
  %v_fetch.sroa.62.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 266, !dbg !228
  %v_fetch.sroa.62.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 268, !dbg !228
  %v_fetch.sroa.66.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.sroa_idx, align 4, !dbg !228
  %v_fetch.sroa.70.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 270, !dbg !228
  %v_fetch.sroa.70.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %169 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul471, !dbg !229
  %add.ptr484.idx = shl nuw nsw i32 %xor479, 2, !dbg !229
  %add.ptr484 = getelementptr inbounds i8, ptr addrspace(3) %169, i32 %add.ptr484.idx, !dbg !229
  %v_column.sroa.66.0.insert.ext = zext i16 %v_fetch.sroa.38.16.copyload to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift = shl nuw i32 %v_column.sroa.66.0.insert.ext, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.66.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr484, align 4, !dbg !230, !tbaa !30
  %170 = or disjoint i32 %mul471, 256, !dbg !231
  %171 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %170, !dbg !229
  %xor480.1 = shl nuw nsw i32 %xor479, 2, !dbg !229
  %add.ptr484.idx.1 = xor i32 %xor480.1, 4, !dbg !229
  %add.ptr484.1 = getelementptr inbounds i8, ptr addrspace(3) %171, i32 %add.ptr484.idx.1, !dbg !229
  %v_column.sroa.66.0.insert.ext1434 = zext i16 %v_fetch.sroa.46.16.copyload to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1435 = shl nuw i32 %v_column.sroa.66.0.insert.ext1434, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1310 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1312 = or disjoint i32 %v_column.sroa.66.0.insert.shift1435, %v_column.sroa.0.0.insert.ext1310, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1312, ptr addrspace(3) %add.ptr484.1, align 4, !dbg !230, !tbaa !30
  %172 = or disjoint i32 %mul471, 512, !dbg !231
  %173 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %172, !dbg !229
  %xor480.2 = shl nuw nsw i32 %xor479, 2, !dbg !229
  %add.ptr484.idx.2 = xor i32 %xor480.2, 8, !dbg !229
  %add.ptr484.2 = getelementptr inbounds i8, ptr addrspace(3) %173, i32 %add.ptr484.idx.2, !dbg !229
  %v_column.sroa.66.0.insert.ext1439 = zext i16 %v_fetch.sroa.50.16.copyload to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1440 = shl nuw i32 %v_column.sroa.66.0.insert.ext1439, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1314 = zext i16 %v_fetch.sroa.14.0.copyload to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1316 = or disjoint i32 %v_column.sroa.66.0.insert.shift1440, %v_column.sroa.0.0.insert.ext1314, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1316, ptr addrspace(3) %add.ptr484.2, align 4, !dbg !230, !tbaa !30
  %174 = or disjoint i32 %mul471, 768, !dbg !231
  %175 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %174, !dbg !229
  %xor480.3 = shl nuw nsw i32 %xor479, 2, !dbg !229
  %add.ptr484.idx.3 = xor i32 %xor480.3, 12, !dbg !229
  %add.ptr484.3 = getelementptr inbounds i8, ptr addrspace(3) %175, i32 %add.ptr484.idx.3, !dbg !229
  %v_column.sroa.66.0.insert.ext1444 = zext i16 %v_fetch.sroa.54.16.copyload to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1445 = shl nuw i32 %v_column.sroa.66.0.insert.ext1444, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1318 = zext i16 %v_fetch.sroa.18.0.copyload to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1320 = or disjoint i32 %v_column.sroa.66.0.insert.shift1445, %v_column.sroa.0.0.insert.ext1318, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1320, ptr addrspace(3) %add.ptr484.3, align 4, !dbg !230, !tbaa !30
  %176 = or disjoint i32 %mul471, 1024, !dbg !231
  %177 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %176, !dbg !229
  %xor480.4 = shl nuw nsw i32 %xor479, 2, !dbg !229
  %add.ptr484.idx.4 = xor i32 %xor480.4, 16, !dbg !229
  %add.ptr484.4 = getelementptr inbounds i8, ptr addrspace(3) %177, i32 %add.ptr484.idx.4, !dbg !229
  %v_column.sroa.66.0.insert.ext1449 = zext i16 %v_fetch.sroa.58.16.copyload to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1450 = shl nuw i32 %v_column.sroa.66.0.insert.ext1449, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1322 = zext i16 %v_fetch.sroa.22.0.copyload to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1324 = or disjoint i32 %v_column.sroa.66.0.insert.shift1450, %v_column.sroa.0.0.insert.ext1322, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1324, ptr addrspace(3) %add.ptr484.4, align 4, !dbg !230, !tbaa !30
  %178 = or disjoint i32 %mul471, 1280, !dbg !231
  %179 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %178, !dbg !229
  %xor480.5 = shl nuw nsw i32 %xor479, 2, !dbg !229
  %add.ptr484.idx.5 = xor i32 %xor480.5, 20, !dbg !229
  %add.ptr484.5 = getelementptr inbounds i8, ptr addrspace(3) %179, i32 %add.ptr484.idx.5, !dbg !229
  %v_column.sroa.66.0.insert.ext1454 = zext i16 %v_fetch.sroa.62.16.copyload to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1455 = shl nuw i32 %v_column.sroa.66.0.insert.ext1454, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1326 = zext i16 %v_fetch.sroa.26.0.copyload to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1328 = or disjoint i32 %v_column.sroa.66.0.insert.shift1455, %v_column.sroa.0.0.insert.ext1326, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1328, ptr addrspace(3) %add.ptr484.5, align 4, !dbg !230, !tbaa !30
  %180 = or disjoint i32 %mul471, 1536, !dbg !231
  %181 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %180, !dbg !229
  %xor480.6 = shl nuw nsw i32 %xor479, 2, !dbg !229
  %add.ptr484.idx.6 = xor i32 %xor480.6, 24, !dbg !229
  %add.ptr484.6 = getelementptr inbounds i8, ptr addrspace(3) %181, i32 %add.ptr484.idx.6, !dbg !229
  %v_column.sroa.66.0.insert.ext1459 = zext i16 %v_fetch.sroa.66.16.copyload to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1460 = shl nuw i32 %v_column.sroa.66.0.insert.ext1459, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1330 = zext i16 %v_fetch.sroa.30.0.copyload to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1332 = or disjoint i32 %v_column.sroa.66.0.insert.shift1460, %v_column.sroa.0.0.insert.ext1330, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1332, ptr addrspace(3) %add.ptr484.6, align 4, !dbg !230, !tbaa !30
  %182 = or disjoint i32 %mul471, 1792, !dbg !231
  %183 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %182, !dbg !229
  %xor480.7 = shl nuw nsw i32 %xor479, 2, !dbg !229
  %add.ptr484.idx.7 = xor i32 %xor480.7, 28, !dbg !229
  %add.ptr484.7 = getelementptr inbounds i8, ptr addrspace(3) %183, i32 %add.ptr484.idx.7, !dbg !229
  %v_column.sroa.66.0.insert.ext1464 = zext i16 %v_fetch.sroa.70.16.copyload to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1465 = shl nuw i32 %v_column.sroa.66.0.insert.ext1464, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1334 = zext i16 %v_fetch.sroa.34.0.copyload to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1336 = or disjoint i32 %v_column.sroa.66.0.insert.shift1465, %v_column.sroa.0.0.insert.ext1334, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1336, ptr addrspace(3) %add.ptr484.7, align 4, !dbg !230, !tbaa !30
  %184 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 128, !dbg !227
  %v_fetch.sroa.0.0.copyload1591 = load i16, ptr addrspace(4) %184, align 16, !dbg !228
  %v_fetch.sroa.10.0..sroa_idx1594 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 130, !dbg !228
  %v_fetch.sroa.10.0.copyload1595 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1594, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1603 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 132, !dbg !228
  %v_fetch.sroa.14.0.copyload1604 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1603, align 4, !dbg !228
  %v_fetch.sroa.18.0..sroa_idx1612 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 134, !dbg !228
  %v_fetch.sroa.18.0.copyload1613 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1612, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1621 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 136, !dbg !228
  %v_fetch.sroa.22.0.copyload1622 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1621, align 8, !dbg !228
  %v_fetch.sroa.26.0..sroa_idx1630 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 138, !dbg !228
  %v_fetch.sroa.26.0.copyload1631 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1630, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1639 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 140, !dbg !228
  %v_fetch.sroa.30.0.copyload1640 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1639, align 4, !dbg !228
  %v_fetch.sroa.34.0..sroa_idx1648 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 142, !dbg !228
  %v_fetch.sroa.34.0.copyload1649 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1648, align 2, !dbg !228, !tbaa !30
  %gep.1.1 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 384, !dbg !227
  %v_fetch.sroa.38.16.copyload1660 = load i16, ptr addrspace(4) %gep.1.1, align 16, !dbg !228
  %v_fetch.sroa.46.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 386, !dbg !228
  %v_fetch.sroa.46.16.copyload1663 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 388, !dbg !228
  %v_fetch.sroa.50.16.copyload1669 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.1.sroa_idx, align 4, !dbg !228
  %v_fetch.sroa.54.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 390, !dbg !228
  %v_fetch.sroa.54.16.copyload1675 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 392, !dbg !228
  %v_fetch.sroa.58.16.copyload1681 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.1.sroa_idx, align 8, !dbg !228
  %v_fetch.sroa.62.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 394, !dbg !228
  %v_fetch.sroa.62.16.copyload1687 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 396, !dbg !228
  %v_fetch.sroa.66.16.copyload1693 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.1.sroa_idx, align 4, !dbg !228
  %v_fetch.sroa.70.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 398, !dbg !228
  %v_fetch.sroa.70.16.copyload1699 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %185 = or disjoint i32 %mul471, 2048, !dbg !231
  %186 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %185, !dbg !229
  %add.ptr484.11018 = getelementptr inbounds i8, ptr addrspace(3) %186, i32 %add.ptr484.idx, !dbg !229
  %v_column.sroa.66.0.insert.ext1469 = zext i16 %v_fetch.sroa.38.16.copyload1660 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1470 = shl nuw i32 %v_column.sroa.66.0.insert.ext1469, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1338 = zext i16 %v_fetch.sroa.0.0.copyload1591 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1340 = or disjoint i32 %v_column.sroa.66.0.insert.shift1470, %v_column.sroa.0.0.insert.ext1338, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1340, ptr addrspace(3) %add.ptr484.11018, align 4, !dbg !230, !tbaa !30
  %187 = or disjoint i32 %mul471, 2304, !dbg !231
  %188 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %187, !dbg !229
  %add.ptr484.1.1 = getelementptr inbounds i8, ptr addrspace(3) %188, i32 %add.ptr484.idx.1, !dbg !229
  %v_column.sroa.66.0.insert.ext1474 = zext i16 %v_fetch.sroa.46.16.copyload1663 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1475 = shl nuw i32 %v_column.sroa.66.0.insert.ext1474, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1342 = zext i16 %v_fetch.sroa.10.0.copyload1595 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1344 = or disjoint i32 %v_column.sroa.66.0.insert.shift1475, %v_column.sroa.0.0.insert.ext1342, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1344, ptr addrspace(3) %add.ptr484.1.1, align 4, !dbg !230, !tbaa !30
  %189 = or disjoint i32 %mul471, 2560, !dbg !231
  %190 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %189, !dbg !229
  %add.ptr484.2.1 = getelementptr inbounds i8, ptr addrspace(3) %190, i32 %add.ptr484.idx.2, !dbg !229
  %v_column.sroa.66.0.insert.ext1479 = zext i16 %v_fetch.sroa.50.16.copyload1669 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1480 = shl nuw i32 %v_column.sroa.66.0.insert.ext1479, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1346 = zext i16 %v_fetch.sroa.14.0.copyload1604 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1348 = or disjoint i32 %v_column.sroa.66.0.insert.shift1480, %v_column.sroa.0.0.insert.ext1346, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1348, ptr addrspace(3) %add.ptr484.2.1, align 4, !dbg !230, !tbaa !30
  %191 = or disjoint i32 %mul471, 2816, !dbg !231
  %192 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %191, !dbg !229
  %add.ptr484.3.1 = getelementptr inbounds i8, ptr addrspace(3) %192, i32 %add.ptr484.idx.3, !dbg !229
  %v_column.sroa.66.0.insert.ext1484 = zext i16 %v_fetch.sroa.54.16.copyload1675 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1485 = shl nuw i32 %v_column.sroa.66.0.insert.ext1484, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1350 = zext i16 %v_fetch.sroa.18.0.copyload1613 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1352 = or disjoint i32 %v_column.sroa.66.0.insert.shift1485, %v_column.sroa.0.0.insert.ext1350, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1352, ptr addrspace(3) %add.ptr484.3.1, align 4, !dbg !230, !tbaa !30
  %193 = or disjoint i32 %mul471, 3072, !dbg !231
  %194 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %193, !dbg !229
  %add.ptr484.4.1 = getelementptr inbounds i8, ptr addrspace(3) %194, i32 %add.ptr484.idx.4, !dbg !229
  %v_column.sroa.66.0.insert.ext1489 = zext i16 %v_fetch.sroa.58.16.copyload1681 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1490 = shl nuw i32 %v_column.sroa.66.0.insert.ext1489, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1354 = zext i16 %v_fetch.sroa.22.0.copyload1622 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1356 = or disjoint i32 %v_column.sroa.66.0.insert.shift1490, %v_column.sroa.0.0.insert.ext1354, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1356, ptr addrspace(3) %add.ptr484.4.1, align 4, !dbg !230, !tbaa !30
  %195 = or disjoint i32 %mul471, 3328, !dbg !231
  %196 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %195, !dbg !229
  %add.ptr484.5.1 = getelementptr inbounds i8, ptr addrspace(3) %196, i32 %add.ptr484.idx.5, !dbg !229
  %v_column.sroa.66.0.insert.ext1494 = zext i16 %v_fetch.sroa.62.16.copyload1687 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1495 = shl nuw i32 %v_column.sroa.66.0.insert.ext1494, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1358 = zext i16 %v_fetch.sroa.26.0.copyload1631 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1360 = or disjoint i32 %v_column.sroa.66.0.insert.shift1495, %v_column.sroa.0.0.insert.ext1358, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1360, ptr addrspace(3) %add.ptr484.5.1, align 4, !dbg !230, !tbaa !30
  %197 = or disjoint i32 %mul471, 3584, !dbg !231
  %198 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %197, !dbg !229
  %add.ptr484.6.1 = getelementptr inbounds i8, ptr addrspace(3) %198, i32 %add.ptr484.idx.6, !dbg !229
  %v_column.sroa.66.0.insert.ext1499 = zext i16 %v_fetch.sroa.66.16.copyload1693 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1500 = shl nuw i32 %v_column.sroa.66.0.insert.ext1499, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1362 = zext i16 %v_fetch.sroa.30.0.copyload1640 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1364 = or disjoint i32 %v_column.sroa.66.0.insert.shift1500, %v_column.sroa.0.0.insert.ext1362, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1364, ptr addrspace(3) %add.ptr484.6.1, align 4, !dbg !230, !tbaa !30
  %199 = or disjoint i32 %mul471, 3840, !dbg !231
  %200 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %199, !dbg !229
  %add.ptr484.7.1 = getelementptr inbounds i8, ptr addrspace(3) %200, i32 %add.ptr484.idx.7, !dbg !229
  %v_column.sroa.66.0.insert.ext1504 = zext i16 %v_fetch.sroa.70.16.copyload1699 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1505 = shl nuw i32 %v_column.sroa.66.0.insert.ext1504, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1366 = zext i16 %v_fetch.sroa.34.0.copyload1649 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1368 = or disjoint i32 %v_column.sroa.66.0.insert.shift1505, %v_column.sroa.0.0.insert.ext1366, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1368, ptr addrspace(3) %add.ptr484.7.1, align 4, !dbg !230, !tbaa !30
  %narrow = add nuw nsw i32 %and51, 8
  %xor479.1 = xor i32 %narrow, %and40
  %201 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4096, !dbg !227
  %v_fetch.sroa.0.0.copyload1592 = load i16, ptr addrspace(4) %201, align 16, !dbg !228
  %v_fetch.sroa.10.0..sroa_idx1596 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4098, !dbg !228
  %v_fetch.sroa.10.0.copyload1597 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1596, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1605 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4100, !dbg !228
  %v_fetch.sroa.14.0.copyload1606 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1605, align 4, !dbg !228
  %v_fetch.sroa.18.0..sroa_idx1614 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4102, !dbg !228
  %v_fetch.sroa.18.0.copyload1615 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1614, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1623 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4104, !dbg !228
  %v_fetch.sroa.22.0.copyload1624 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1623, align 8, !dbg !228
  %v_fetch.sroa.26.0..sroa_idx1632 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4106, !dbg !228
  %v_fetch.sroa.26.0.copyload1633 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1632, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1641 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4108, !dbg !228
  %v_fetch.sroa.30.0.copyload1642 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1641, align 4, !dbg !228
  %v_fetch.sroa.34.0..sroa_idx1650 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4110, !dbg !228
  %v_fetch.sroa.34.0.copyload1651 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1650, align 2, !dbg !228, !tbaa !30
  %gep.1.11025 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4352, !dbg !227
  %v_fetch.sroa.38.16.copyload1661 = load i16, ptr addrspace(4) %gep.1.11025, align 16, !dbg !228
  %v_fetch.sroa.46.16.gep.1.11025.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4354, !dbg !228
  %v_fetch.sroa.46.16.copyload1664 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.11025.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.11025.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4356, !dbg !228
  %v_fetch.sroa.50.16.copyload1670 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.11025.sroa_idx, align 4, !dbg !228
  %v_fetch.sroa.54.16.gep.1.11025.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4358, !dbg !228
  %v_fetch.sroa.54.16.copyload1676 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.11025.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.11025.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4360, !dbg !228
  %v_fetch.sroa.58.16.copyload1682 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.11025.sroa_idx, align 8, !dbg !228
  %v_fetch.sroa.62.16.gep.1.11025.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4362, !dbg !228
  %v_fetch.sroa.62.16.copyload1688 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.11025.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.11025.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4364, !dbg !228
  %v_fetch.sroa.66.16.copyload1694 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.11025.sroa_idx, align 4, !dbg !228
  %v_fetch.sroa.70.16.gep.1.11025.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4366, !dbg !228
  %v_fetch.sroa.70.16.copyload1700 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.11025.sroa_idx, align 2, !dbg !228, !tbaa !30
  %add.ptr484.idx.11031 = shl nuw nsw i32 %xor479.1, 2, !dbg !229
  %add.ptr484.11032 = getelementptr inbounds i8, ptr addrspace(3) %169, i32 %add.ptr484.idx.11031, !dbg !229
  %v_column.sroa.66.0.insert.ext1509 = zext i16 %v_fetch.sroa.38.16.copyload1661 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1510 = shl nuw i32 %v_column.sroa.66.0.insert.ext1509, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1370 = zext i16 %v_fetch.sroa.0.0.copyload1592 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1372 = or disjoint i32 %v_column.sroa.66.0.insert.shift1510, %v_column.sroa.0.0.insert.ext1370, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1372, ptr addrspace(3) %add.ptr484.11032, align 4, !dbg !230, !tbaa !30
  %xor480.1.11037 = shl nuw nsw i32 %xor479.1, 2, !dbg !229
  %add.ptr484.idx.1.11038 = xor i32 %xor480.1.11037, 4, !dbg !229
  %add.ptr484.1.11039 = getelementptr inbounds i8, ptr addrspace(3) %171, i32 %add.ptr484.idx.1.11038, !dbg !229
  %v_column.sroa.66.0.insert.ext1514 = zext i16 %v_fetch.sroa.46.16.copyload1664 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1515 = shl nuw i32 %v_column.sroa.66.0.insert.ext1514, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1374 = zext i16 %v_fetch.sroa.10.0.copyload1597 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1376 = or disjoint i32 %v_column.sroa.66.0.insert.shift1515, %v_column.sroa.0.0.insert.ext1374, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1376, ptr addrspace(3) %add.ptr484.1.11039, align 4, !dbg !230, !tbaa !30
  %xor480.2.11044 = shl nuw nsw i32 %xor479.1, 2, !dbg !229
  %add.ptr484.idx.2.11045 = xor i32 %xor480.2.11044, 8, !dbg !229
  %add.ptr484.2.11046 = getelementptr inbounds i8, ptr addrspace(3) %173, i32 %add.ptr484.idx.2.11045, !dbg !229
  %v_column.sroa.66.0.insert.ext1519 = zext i16 %v_fetch.sroa.50.16.copyload1670 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1520 = shl nuw i32 %v_column.sroa.66.0.insert.ext1519, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1378 = zext i16 %v_fetch.sroa.14.0.copyload1606 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1380 = or disjoint i32 %v_column.sroa.66.0.insert.shift1520, %v_column.sroa.0.0.insert.ext1378, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1380, ptr addrspace(3) %add.ptr484.2.11046, align 4, !dbg !230, !tbaa !30
  %xor480.3.11051 = shl nuw nsw i32 %xor479.1, 2, !dbg !229
  %add.ptr484.idx.3.11052 = xor i32 %xor480.3.11051, 12, !dbg !229
  %add.ptr484.3.11053 = getelementptr inbounds i8, ptr addrspace(3) %175, i32 %add.ptr484.idx.3.11052, !dbg !229
  %v_column.sroa.66.0.insert.ext1524 = zext i16 %v_fetch.sroa.54.16.copyload1676 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1525 = shl nuw i32 %v_column.sroa.66.0.insert.ext1524, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1382 = zext i16 %v_fetch.sroa.18.0.copyload1615 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1384 = or disjoint i32 %v_column.sroa.66.0.insert.shift1525, %v_column.sroa.0.0.insert.ext1382, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1384, ptr addrspace(3) %add.ptr484.3.11053, align 4, !dbg !230, !tbaa !30
  %xor480.4.11058 = shl nuw nsw i32 %xor479.1, 2, !dbg !229
  %add.ptr484.idx.4.11059 = xor i32 %xor480.4.11058, 16, !dbg !229
  %add.ptr484.4.11060 = getelementptr inbounds i8, ptr addrspace(3) %177, i32 %add.ptr484.idx.4.11059, !dbg !229
  %v_column.sroa.66.0.insert.ext1529 = zext i16 %v_fetch.sroa.58.16.copyload1682 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1530 = shl nuw i32 %v_column.sroa.66.0.insert.ext1529, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1386 = zext i16 %v_fetch.sroa.22.0.copyload1624 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1388 = or disjoint i32 %v_column.sroa.66.0.insert.shift1530, %v_column.sroa.0.0.insert.ext1386, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1388, ptr addrspace(3) %add.ptr484.4.11060, align 4, !dbg !230, !tbaa !30
  %xor480.5.11065 = shl nuw nsw i32 %xor479.1, 2, !dbg !229
  %add.ptr484.idx.5.11066 = xor i32 %xor480.5.11065, 20, !dbg !229
  %add.ptr484.5.11067 = getelementptr inbounds i8, ptr addrspace(3) %179, i32 %add.ptr484.idx.5.11066, !dbg !229
  %v_column.sroa.66.0.insert.ext1534 = zext i16 %v_fetch.sroa.62.16.copyload1688 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1535 = shl nuw i32 %v_column.sroa.66.0.insert.ext1534, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1390 = zext i16 %v_fetch.sroa.26.0.copyload1633 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1392 = or disjoint i32 %v_column.sroa.66.0.insert.shift1535, %v_column.sroa.0.0.insert.ext1390, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1392, ptr addrspace(3) %add.ptr484.5.11067, align 4, !dbg !230, !tbaa !30
  %xor480.6.11072 = shl nuw nsw i32 %xor479.1, 2, !dbg !229
  %add.ptr484.idx.6.11073 = xor i32 %xor480.6.11072, 24, !dbg !229
  %add.ptr484.6.11074 = getelementptr inbounds i8, ptr addrspace(3) %181, i32 %add.ptr484.idx.6.11073, !dbg !229
  %v_column.sroa.66.0.insert.ext1539 = zext i16 %v_fetch.sroa.66.16.copyload1694 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1540 = shl nuw i32 %v_column.sroa.66.0.insert.ext1539, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1394 = zext i16 %v_fetch.sroa.30.0.copyload1642 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1396 = or disjoint i32 %v_column.sroa.66.0.insert.shift1540, %v_column.sroa.0.0.insert.ext1394, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1396, ptr addrspace(3) %add.ptr484.6.11074, align 4, !dbg !230, !tbaa !30
  %xor480.7.11079 = shl nuw nsw i32 %xor479.1, 2, !dbg !229
  %add.ptr484.idx.7.11080 = xor i32 %xor480.7.11079, 28, !dbg !229
  %add.ptr484.7.11081 = getelementptr inbounds i8, ptr addrspace(3) %183, i32 %add.ptr484.idx.7.11080, !dbg !229
  %v_column.sroa.66.0.insert.ext1544 = zext i16 %v_fetch.sroa.70.16.copyload1700 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1545 = shl nuw i32 %v_column.sroa.66.0.insert.ext1544, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1398 = zext i16 %v_fetch.sroa.34.0.copyload1651 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1400 = or disjoint i32 %v_column.sroa.66.0.insert.shift1545, %v_column.sroa.0.0.insert.ext1398, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1400, ptr addrspace(3) %add.ptr484.7.11081, align 4, !dbg !230, !tbaa !30
  %202 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4224, !dbg !227
  %v_fetch.sroa.0.0.copyload1593 = load i16, ptr addrspace(4) %202, align 16, !dbg !228
  %v_fetch.sroa.10.0..sroa_idx1598 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4226, !dbg !228
  %v_fetch.sroa.10.0.copyload1599 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1598, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1607 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4228, !dbg !228
  %v_fetch.sroa.14.0.copyload1608 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1607, align 4, !dbg !228
  %v_fetch.sroa.18.0..sroa_idx1616 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4230, !dbg !228
  %v_fetch.sroa.18.0.copyload1617 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1616, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1625 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4232, !dbg !228
  %v_fetch.sroa.22.0.copyload1626 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1625, align 8, !dbg !228
  %v_fetch.sroa.26.0..sroa_idx1634 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4234, !dbg !228
  %v_fetch.sroa.26.0.copyload1635 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1634, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1643 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4236, !dbg !228
  %v_fetch.sroa.30.0.copyload1644 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1643, align 4, !dbg !228
  %v_fetch.sroa.34.0..sroa_idx1652 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4238, !dbg !228
  %v_fetch.sroa.34.0.copyload1653 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1652, align 2, !dbg !228, !tbaa !30
  %gep.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4480, !dbg !227
  %v_fetch.sroa.38.16.copyload1662 = load i16, ptr addrspace(4) %gep.1.1.1, align 16, !dbg !228
  %v_fetch.sroa.46.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4482, !dbg !228
  %v_fetch.sroa.46.16.copyload1665 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.1.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4484, !dbg !228
  %v_fetch.sroa.50.16.copyload1671 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.1.1.sroa_idx, align 4, !dbg !228
  %v_fetch.sroa.54.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4486, !dbg !228
  %v_fetch.sroa.54.16.copyload1677 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.1.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4488, !dbg !228
  %v_fetch.sroa.58.16.copyload1683 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.1.1.sroa_idx, align 8, !dbg !228
  %v_fetch.sroa.62.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4490, !dbg !228
  %v_fetch.sroa.62.16.copyload1689 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.1.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4492, !dbg !228
  %v_fetch.sroa.66.16.copyload1695 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.1.1.sroa_idx, align 4, !dbg !228
  %v_fetch.sroa.70.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %168, i64 4494, !dbg !228
  %v_fetch.sroa.70.16.copyload1701 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.1.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %add.ptr484.11018.1 = getelementptr inbounds i8, ptr addrspace(3) %186, i32 %add.ptr484.idx.11031, !dbg !229
  %v_column.sroa.66.0.insert.ext1549 = zext i16 %v_fetch.sroa.38.16.copyload1662 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1550 = shl nuw i32 %v_column.sroa.66.0.insert.ext1549, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1402 = zext i16 %v_fetch.sroa.0.0.copyload1593 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1404 = or disjoint i32 %v_column.sroa.66.0.insert.shift1550, %v_column.sroa.0.0.insert.ext1402, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1404, ptr addrspace(3) %add.ptr484.11018.1, align 4, !dbg !230, !tbaa !30
  %add.ptr484.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %188, i32 %add.ptr484.idx.1.11038, !dbg !229
  %v_column.sroa.66.0.insert.ext1554 = zext i16 %v_fetch.sroa.46.16.copyload1665 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1555 = shl nuw i32 %v_column.sroa.66.0.insert.ext1554, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1406 = zext i16 %v_fetch.sroa.10.0.copyload1599 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1408 = or disjoint i32 %v_column.sroa.66.0.insert.shift1555, %v_column.sroa.0.0.insert.ext1406, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1408, ptr addrspace(3) %add.ptr484.1.1.1, align 4, !dbg !230, !tbaa !30
  %add.ptr484.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %190, i32 %add.ptr484.idx.2.11045, !dbg !229
  %v_column.sroa.66.0.insert.ext1559 = zext i16 %v_fetch.sroa.50.16.copyload1671 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1560 = shl nuw i32 %v_column.sroa.66.0.insert.ext1559, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1410 = zext i16 %v_fetch.sroa.14.0.copyload1608 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1412 = or disjoint i32 %v_column.sroa.66.0.insert.shift1560, %v_column.sroa.0.0.insert.ext1410, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1412, ptr addrspace(3) %add.ptr484.2.1.1, align 4, !dbg !230, !tbaa !30
  %add.ptr484.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %192, i32 %add.ptr484.idx.3.11052, !dbg !229
  %v_column.sroa.66.0.insert.ext1564 = zext i16 %v_fetch.sroa.54.16.copyload1677 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1565 = shl nuw i32 %v_column.sroa.66.0.insert.ext1564, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1414 = zext i16 %v_fetch.sroa.18.0.copyload1617 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1416 = or disjoint i32 %v_column.sroa.66.0.insert.shift1565, %v_column.sroa.0.0.insert.ext1414, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1416, ptr addrspace(3) %add.ptr484.3.1.1, align 4, !dbg !230, !tbaa !30
  %add.ptr484.4.1.1 = getelementptr inbounds i8, ptr addrspace(3) %194, i32 %add.ptr484.idx.4.11059, !dbg !229
  %v_column.sroa.66.0.insert.ext1569 = zext i16 %v_fetch.sroa.58.16.copyload1683 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1570 = shl nuw i32 %v_column.sroa.66.0.insert.ext1569, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1418 = zext i16 %v_fetch.sroa.22.0.copyload1626 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1420 = or disjoint i32 %v_column.sroa.66.0.insert.shift1570, %v_column.sroa.0.0.insert.ext1418, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1420, ptr addrspace(3) %add.ptr484.4.1.1, align 4, !dbg !230, !tbaa !30
  %add.ptr484.5.1.1 = getelementptr inbounds i8, ptr addrspace(3) %196, i32 %add.ptr484.idx.5.11066, !dbg !229
  %v_column.sroa.66.0.insert.ext1574 = zext i16 %v_fetch.sroa.62.16.copyload1689 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1575 = shl nuw i32 %v_column.sroa.66.0.insert.ext1574, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1422 = zext i16 %v_fetch.sroa.26.0.copyload1635 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1424 = or disjoint i32 %v_column.sroa.66.0.insert.shift1575, %v_column.sroa.0.0.insert.ext1422, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1424, ptr addrspace(3) %add.ptr484.5.1.1, align 4, !dbg !230, !tbaa !30
  %add.ptr484.6.1.1 = getelementptr inbounds i8, ptr addrspace(3) %198, i32 %add.ptr484.idx.6.11073, !dbg !229
  %v_column.sroa.66.0.insert.ext1579 = zext i16 %v_fetch.sroa.66.16.copyload1695 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1580 = shl nuw i32 %v_column.sroa.66.0.insert.ext1579, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1426 = zext i16 %v_fetch.sroa.30.0.copyload1644 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1428 = or disjoint i32 %v_column.sroa.66.0.insert.shift1580, %v_column.sroa.0.0.insert.ext1426, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1428, ptr addrspace(3) %add.ptr484.6.1.1, align 4, !dbg !230, !tbaa !30
  %add.ptr484.7.1.1 = getelementptr inbounds i8, ptr addrspace(3) %200, i32 %add.ptr484.idx.7.11080, !dbg !229
  %v_column.sroa.66.0.insert.ext1584 = zext i16 %v_fetch.sroa.70.16.copyload1701 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1585 = shl nuw i32 %v_column.sroa.66.0.insert.ext1584, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1430 = zext i16 %v_fetch.sroa.34.0.copyload1653 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1432 = or disjoint i32 %v_column.sroa.66.0.insert.shift1585, %v_column.sroa.0.0.insert.ext1430, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1432, ptr addrspace(3) %add.ptr484.7.1.1, align 4, !dbg !230, !tbaa !30
  fence syncscope("warp") release, !dbg !232
  tail call void @llvm.mxc.barrier.warp(), !dbg !235
  fence syncscope("warp") acquire, !dbg !236
  %and525 = shl nuw nsw i32 %3, 8
  %mul526 = and i32 %and525, 1792
  %mul533 = and i32 %5, 32
  %mul538 = and i32 %and51, 126
  %add534 = or disjoint i32 %mul526, %mul533
  %xor546 = xor i32 %shr52, %and40
  %203 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534
  %xor549 = xor i32 %xor546, %mul538, !dbg !237
  %add.ptr553.idx = shl nuw nsw i32 %xor549, 2, !dbg !238
  %add.ptr553 = getelementptr inbounds i8, ptr addrspace(3) %203, i32 %add.ptr553.idx, !dbg !238
  %204 = load i32, ptr addrspace(3) %add.ptr553, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.0.0.vec.insert = insertelement <2 x i32> poison, i32 %204, i64 0, !dbg !239
  %add540.1 = or i32 %and51, 1, !dbg !240
  %xor549.1 = xor i32 %xor546, %add540.1, !dbg !237
  %add.ptr553.idx.1 = shl nuw nsw i32 %xor549.1, 2, !dbg !238
  %add.ptr553.1 = getelementptr inbounds i8, ptr addrspace(3) %203, i32 %add.ptr553.idx.1, !dbg !238
  %205 = load i32, ptr addrspace(3) %add.ptr553.1, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.0.4.vec.insert = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert, i32 %205, i64 1, !dbg !239
  %add529.1 = or disjoint i32 %mul526, %mul533
  %add534.1 = or disjoint i32 %add529.1, 64
  %add545.1 = or disjoint i32 %shr52, 2
  %xor546.1 = xor i32 %add545.1, %and40
  %206 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534.1
  %xor549.11083 = xor i32 %xor546.1, %mul538, !dbg !237
  %add.ptr553.idx.11084 = shl nuw nsw i32 %xor549.11083, 2, !dbg !238
  %add.ptr553.11085 = getelementptr inbounds i8, ptr addrspace(3) %206, i32 %add.ptr553.idx.11084, !dbg !238
  %207 = load i32, ptr addrspace(3) %add.ptr553.11085, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.14.8.vec.insert = insertelement <2 x i32> poison, i32 %207, i64 0, !dbg !239
  %xor549.1.1 = xor i32 %xor546.1, %add540.1, !dbg !237
  %add.ptr553.idx.1.1 = shl nuw nsw i32 %xor549.1.1, 2, !dbg !238
  %add.ptr553.1.1 = getelementptr inbounds i8, ptr addrspace(3) %206, i32 %add.ptr553.idx.1.1, !dbg !238
  %208 = load i32, ptr addrspace(3) %add.ptr553.1.1, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.14.12.vec.insert = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert, i32 %208, i64 1, !dbg !239
  %add529.2 = or disjoint i32 %mul526, %mul533
  %add534.2 = or disjoint i32 %add529.2, 128
  %add545.2 = or disjoint i32 %shr52, 4
  %xor546.2 = xor i32 %add545.2, %and40
  %209 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534.2
  %xor549.2 = xor i32 %xor546.2, %mul538, !dbg !237
  %add.ptr553.idx.2 = shl nuw nsw i32 %xor549.2, 2, !dbg !238
  %add.ptr553.2 = getelementptr inbounds i8, ptr addrspace(3) %209, i32 %add.ptr553.idx.2, !dbg !238
  %210 = load i32, ptr addrspace(3) %add.ptr553.2, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.26.16.vec.insert = insertelement <2 x i32> poison, i32 %210, i64 0, !dbg !239
  %xor549.1.2 = xor i32 %xor546.2, %add540.1, !dbg !237
  %add.ptr553.idx.1.2 = shl nuw nsw i32 %xor549.1.2, 2, !dbg !238
  %add.ptr553.1.2 = getelementptr inbounds i8, ptr addrspace(3) %209, i32 %add.ptr553.idx.1.2, !dbg !238
  %211 = load i32, ptr addrspace(3) %add.ptr553.1.2, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.26.20.vec.insert = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert, i32 %211, i64 1, !dbg !239
  %add529.3 = or disjoint i32 %mul526, %mul533
  %add534.3 = or disjoint i32 %add529.3, 192
  %add545.3 = or disjoint i32 %shr52, 6
  %xor546.3 = xor i32 %add545.3, %and40
  %212 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534.3
  %xor549.3 = xor i32 %xor546.3, %mul538, !dbg !237
  %add.ptr553.idx.3 = shl nuw nsw i32 %xor549.3, 2, !dbg !238
  %add.ptr553.3 = getelementptr inbounds i8, ptr addrspace(3) %212, i32 %add.ptr553.idx.3, !dbg !238
  %213 = load i32, ptr addrspace(3) %add.ptr553.3, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.38.24.vec.insert = insertelement <2 x i32> poison, i32 %213, i64 0, !dbg !239
  %xor549.1.3 = xor i32 %xor546.3, %add540.1, !dbg !237
  %add.ptr553.idx.1.3 = shl nuw nsw i32 %xor549.1.3, 2, !dbg !238
  %add.ptr553.1.3 = getelementptr inbounds i8, ptr addrspace(3) %212, i32 %add.ptr553.idx.1.3, !dbg !238
  %214 = load i32, ptr addrspace(3) %add.ptr553.1.3, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.38.28.vec.insert = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert, i32 %214, i64 1, !dbg !239
  %215 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert to <4 x half>, !dbg !241
  %216 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %215, <4 x half> %135, <4 x float> zeroinitializer), !dbg !242
  %217 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert to <4 x half>, !dbg !241
  %218 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %217, <4 x half> %135, <4 x float> zeroinitializer), !dbg !242
  %219 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert to <4 x half>, !dbg !241
  %220 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %219, <4 x half> %135, <4 x float> zeroinitializer), !dbg !242
  %221 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert to <4 x half>, !dbg !241
  %222 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %221, <4 x half> %135, <4 x float> zeroinitializer), !dbg !242
  %add527.1 = or disjoint i32 %mul526, %mul533
  %add534.11088 = or disjoint i32 %add527.1, 2048
  %223 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534.11088
  %add.ptr553.11092 = getelementptr inbounds i8, ptr addrspace(3) %223, i32 %add.ptr553.idx, !dbg !238
  %224 = load i32, ptr addrspace(3) %add.ptr553.11092, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1250 = insertelement <2 x i32> poison, i32 %224, i64 0, !dbg !239
  %add.ptr553.1.11096 = getelementptr inbounds i8, ptr addrspace(3) %223, i32 %add.ptr553.idx.1, !dbg !238
  %225 = load i32, ptr addrspace(3) %add.ptr553.1.11096, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1256 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1250, i32 %225, i64 1, !dbg !239
  %add529.1.1 = or disjoint i32 %mul526, %mul533
  %add534.1.1 = or disjoint i32 %add529.1.1, 2112
  %226 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534.1.1
  %add.ptr553.11085.1 = getelementptr inbounds i8, ptr addrspace(3) %226, i32 %add.ptr553.idx.11084, !dbg !238
  %227 = load i32, ptr addrspace(3) %add.ptr553.11085.1, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1266 = insertelement <2 x i32> poison, i32 %227, i64 0, !dbg !239
  %add.ptr553.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %226, i32 %add.ptr553.idx.1.1, !dbg !238
  %228 = load i32, ptr addrspace(3) %add.ptr553.1.1.1, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1272 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1266, i32 %228, i64 1, !dbg !239
  %add529.2.1 = or disjoint i32 %mul526, %mul533
  %add534.2.1 = or disjoint i32 %add529.2.1, 2176
  %229 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534.2.1
  %add.ptr553.2.1 = getelementptr inbounds i8, ptr addrspace(3) %229, i32 %add.ptr553.idx.2, !dbg !238
  %230 = load i32, ptr addrspace(3) %add.ptr553.2.1, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1282 = insertelement <2 x i32> poison, i32 %230, i64 0, !dbg !239
  %add.ptr553.1.2.1 = getelementptr inbounds i8, ptr addrspace(3) %229, i32 %add.ptr553.idx.1.2, !dbg !238
  %231 = load i32, ptr addrspace(3) %add.ptr553.1.2.1, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1288 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1282, i32 %231, i64 1, !dbg !239
  %add529.3.1 = or disjoint i32 %mul526, %mul533
  %add534.3.1 = or disjoint i32 %add529.3.1, 2240
  %232 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add534.3.1
  %add.ptr553.3.1 = getelementptr inbounds i8, ptr addrspace(3) %232, i32 %add.ptr553.idx.3, !dbg !238
  %233 = load i32, ptr addrspace(3) %add.ptr553.3.1, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1298 = insertelement <2 x i32> poison, i32 %233, i64 0, !dbg !239
  %add.ptr553.1.3.1 = getelementptr inbounds i8, ptr addrspace(3) %232, i32 %add.ptr553.idx.1.3, !dbg !238
  %234 = load i32, ptr addrspace(3) %add.ptr553.1.3.1, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1304 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1298, i32 %234, i64 1, !dbg !239
  %235 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1256 to <4 x half>, !dbg !241
  %236 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %235, <4 x half> %135, <4 x float> zeroinitializer), !dbg !242
  %237 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1272 to <4 x half>, !dbg !241
  %238 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %237, <4 x half> %135, <4 x float> zeroinitializer), !dbg !242
  %239 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1288 to <4 x half>, !dbg !241
  %240 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %239, <4 x half> %135, <4 x float> zeroinitializer), !dbg !242
  %241 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1304 to <4 x half>, !dbg !241
  %242 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %241, <4 x half> %135, <4 x float> zeroinitializer), !dbg !242
  %add539.1 = add nuw nsw i32 %mul538, 8
  %xor549.11103 = xor i32 %xor546, %add539.1, !dbg !237
  %add.ptr553.idx.11104 = shl nuw nsw i32 %xor549.11103, 2, !dbg !238
  %add.ptr553.11105 = getelementptr inbounds i8, ptr addrspace(3) %203, i32 %add.ptr553.idx.11104, !dbg !238
  %243 = load i32, ptr addrspace(3) %add.ptr553.11105, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1252 = insertelement <2 x i32> poison, i32 %243, i64 0, !dbg !239
  %add540.1.11106 = add nuw nsw i32 %mul538, 9, !dbg !240
  %xor549.1.11107 = xor i32 %xor546, %add540.1.11106, !dbg !237
  %add.ptr553.idx.1.11108 = shl nuw nsw i32 %xor549.1.11107, 2, !dbg !238
  %add.ptr553.1.11109 = getelementptr inbounds i8, ptr addrspace(3) %203, i32 %add.ptr553.idx.1.11108, !dbg !238
  %244 = load i32, ptr addrspace(3) %add.ptr553.1.11109, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1258 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1252, i32 %244, i64 1, !dbg !239
  %xor549.11083.11115 = xor i32 %xor546.1, %add539.1, !dbg !237
  %add.ptr553.idx.11084.11116 = shl nuw nsw i32 %xor549.11083.11115, 2, !dbg !238
  %add.ptr553.11085.11117 = getelementptr inbounds i8, ptr addrspace(3) %206, i32 %add.ptr553.idx.11084.11116, !dbg !238
  %245 = load i32, ptr addrspace(3) %add.ptr553.11085.11117, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1268 = insertelement <2 x i32> poison, i32 %245, i64 0, !dbg !239
  %xor549.1.1.11120 = xor i32 %xor546.1, %add540.1.11106, !dbg !237
  %add.ptr553.idx.1.1.11121 = shl nuw nsw i32 %xor549.1.1.11120, 2, !dbg !238
  %add.ptr553.1.1.11122 = getelementptr inbounds i8, ptr addrspace(3) %206, i32 %add.ptr553.idx.1.1.11121, !dbg !238
  %246 = load i32, ptr addrspace(3) %add.ptr553.1.1.11122, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1274 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1268, i32 %246, i64 1, !dbg !239
  %xor549.2.11129 = xor i32 %xor546.2, %add539.1, !dbg !237
  %add.ptr553.idx.2.11130 = shl nuw nsw i32 %xor549.2.11129, 2, !dbg !238
  %add.ptr553.2.11131 = getelementptr inbounds i8, ptr addrspace(3) %209, i32 %add.ptr553.idx.2.11130, !dbg !238
  %247 = load i32, ptr addrspace(3) %add.ptr553.2.11131, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1284 = insertelement <2 x i32> poison, i32 %247, i64 0, !dbg !239
  %xor549.1.2.11134 = xor i32 %xor546.2, %add540.1.11106, !dbg !237
  %add.ptr553.idx.1.2.11135 = shl nuw nsw i32 %xor549.1.2.11134, 2, !dbg !238
  %add.ptr553.1.2.11136 = getelementptr inbounds i8, ptr addrspace(3) %209, i32 %add.ptr553.idx.1.2.11135, !dbg !238
  %248 = load i32, ptr addrspace(3) %add.ptr553.1.2.11136, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1290 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1284, i32 %248, i64 1, !dbg !239
  %xor549.3.11143 = xor i32 %xor546.3, %add539.1, !dbg !237
  %add.ptr553.idx.3.11144 = shl nuw nsw i32 %xor549.3.11143, 2, !dbg !238
  %add.ptr553.3.11145 = getelementptr inbounds i8, ptr addrspace(3) %212, i32 %add.ptr553.idx.3.11144, !dbg !238
  %249 = load i32, ptr addrspace(3) %add.ptr553.3.11145, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1300 = insertelement <2 x i32> poison, i32 %249, i64 0, !dbg !239
  %xor549.1.3.11148 = xor i32 %xor546.3, %add540.1.11106, !dbg !237
  %add.ptr553.idx.1.3.11149 = shl nuw nsw i32 %xor549.1.3.11148, 2, !dbg !238
  %add.ptr553.1.3.11150 = getelementptr inbounds i8, ptr addrspace(3) %212, i32 %add.ptr553.idx.1.3.11149, !dbg !238
  %250 = load i32, ptr addrspace(3) %add.ptr553.1.3.11150, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1306 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1300, i32 %250, i64 1, !dbg !239
  %251 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1258 to <4 x half>, !dbg !241
  %252 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %251, <4 x half> %151, <4 x float> %216), !dbg !242
  %253 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1274 to <4 x half>, !dbg !241
  %254 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %253, <4 x half> %151, <4 x float> %218), !dbg !242
  %255 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1290 to <4 x half>, !dbg !241
  %256 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %255, <4 x half> %151, <4 x float> %220), !dbg !242
  %257 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1306 to <4 x half>, !dbg !241
  %258 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %257, <4 x half> %151, <4 x float> %222), !dbg !242
  %add.ptr553.11092.1 = getelementptr inbounds i8, ptr addrspace(3) %223, i32 %add.ptr553.idx.11104, !dbg !238
  %259 = load i32, ptr addrspace(3) %add.ptr553.11092.1, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1254 = insertelement <2 x i32> poison, i32 %259, i64 0, !dbg !239
  %add.ptr553.1.11096.1 = getelementptr inbounds i8, ptr addrspace(3) %223, i32 %add.ptr553.idx.1.11108, !dbg !238
  %260 = load i32, ptr addrspace(3) %add.ptr553.1.11096.1, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1260 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1254, i32 %260, i64 1, !dbg !239
  %add.ptr553.11085.1.1 = getelementptr inbounds i8, ptr addrspace(3) %226, i32 %add.ptr553.idx.11084.11116, !dbg !238
  %261 = load i32, ptr addrspace(3) %add.ptr553.11085.1.1, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1270 = insertelement <2 x i32> poison, i32 %261, i64 0, !dbg !239
  %add.ptr553.1.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %226, i32 %add.ptr553.idx.1.1.11121, !dbg !238
  %262 = load i32, ptr addrspace(3) %add.ptr553.1.1.1.1, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1276 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1270, i32 %262, i64 1, !dbg !239
  %add.ptr553.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %229, i32 %add.ptr553.idx.2.11130, !dbg !238
  %263 = load i32, ptr addrspace(3) %add.ptr553.2.1.1, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1286 = insertelement <2 x i32> poison, i32 %263, i64 0, !dbg !239
  %add.ptr553.1.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %229, i32 %add.ptr553.idx.1.2.11135, !dbg !238
  %264 = load i32, ptr addrspace(3) %add.ptr553.1.2.1.1, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1292 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1286, i32 %264, i64 1, !dbg !239
  %add.ptr553.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %232, i32 %add.ptr553.idx.3.11144, !dbg !238
  %265 = load i32, ptr addrspace(3) %add.ptr553.3.1.1, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1302 = insertelement <2 x i32> poison, i32 %265, i64 0, !dbg !239
  %add.ptr553.1.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %232, i32 %add.ptr553.idx.1.3.11149, !dbg !238
  %266 = load i32, ptr addrspace(3) %add.ptr553.1.3.1.1, align 4, !dbg !239, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1308 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1302, i32 %266, i64 1, !dbg !239
  %267 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1260 to <4 x half>, !dbg !241
  %268 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %267, <4 x half> %151, <4 x float> %236), !dbg !242
  %269 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1276 to <4 x half>, !dbg !241
  %270 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %269, <4 x half> %151, <4 x float> %238), !dbg !242
  %271 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1292 to <4 x half>, !dbg !241
  %272 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %271, <4 x half> %151, <4 x float> %240), !dbg !242
  %273 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1308 to <4 x half>, !dbg !241
  %274 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %273, <4 x half> %151, <4 x float> %242), !dbg !242
  %add400 = fadd contract float %add395, %163, !dbg !243
  br label %if.end609, !dbg !63

if.end609:                                        ; preds = %for.cond.preheader, %for.body599.preheader
  %.pre-phi2123 = phi i64 [ %16, %for.cond.preheader ], [ %.pre2122, %for.body599.preheader ], !dbg !62
  %.pre-phi2121 = phi i64 [ %13, %for.cond.preheader ], [ %.pre2120, %for.body599.preheader ], !dbg !62
  %.pre-phi2119 = phi i64 [ %10, %for.cond.preheader ], [ %.pre2118, %for.body599.preheader ], !dbg !62
  %.idx967.11169.pre-phi = phi i32 [ %.idx956.1975, %for.cond.preheader ], [ %.pre2117, %for.body599.preheader ], !dbg !61
  %add.ptr714.idx.1.pre-phi = phi i32 [ %add.ptr57.idx.1, %for.cond.preheader ], [ %.pre2114, %for.body599.preheader ], !dbg !61
  %add.ptr714.idx.pre-phi = phi i32 [ %add.ptr57.idx, %for.cond.preheader ], [ %.pre2112, %for.body599.preheader ], !dbg !61
  %.idx967.pre-phi = phi i32 [ %.idx956, %for.cond.preheader ], [ %.pre2111, %for.body599.preheader ], !dbg !61
  %.pre-phi2109 = phi i64 [ %6, %for.cond.preheader ], [ %.pre2108, %for.body599.preheader ], !dbg !60
  %mul693.pre-phi = phi i32 [ %mul37, %for.cond.preheader ], [ %.pre2101, %for.body599.preheader ]
  %mul688.pre-phi = phi i32 [ %mul32, %for.cond.preheader ], [ %.pre2098, %for.body599.preheader ]
  %.idx965.4.pre-phi = phi i32 [ %.idx957.4, %for.cond.preheader ], [ %.pre2095, %for.body599.preheader ], !dbg !57
  %add650.4.pre-phi = phi i32 [ %add70.4, %for.cond.preheader ], [ %.pre2093, %for.body599.preheader ], !dbg !59
  %add.ptr673.idx.3.pre-phi = phi i32 [ %add.ptr93.idx.3, %for.cond.preheader ], [ %.pre2092, %for.body599.preheader ], !dbg !57
  %add.ptr673.idx.2.pre-phi = phi i32 [ %add.ptr93.idx.2, %for.cond.preheader ], [ %.pre2089, %for.body599.preheader ], !dbg !57
  %add.ptr673.idx.1.pre-phi = phi i32 [ %add.ptr93.idx.1, %for.cond.preheader ], [ %.pre2086, %for.body599.preheader ], !dbg !57
  %add.ptr673.idx.pre-phi = phi i32 [ %add.ptr93.idx, %for.cond.preheader ], [ %.pre2083, %for.body599.preheader ], !dbg !57
  %.idx965.pre-phi = phi i32 [ %.idx957, %for.cond.preheader ], [ %.pre2082, %for.body599.preheader ], !dbg !57
  %mul649.pre-phi = phi i32 [ %mul69, %for.cond.preheader ], [ %.pre2074, %for.body599.preheader ]
  %numerator.sroa.170.0 = phi <4 x float> [ %274, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !244
  %numerator.sroa.146.0 = phi <4 x float> [ %272, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !244
  %numerator.sroa.122.0 = phi <4 x float> [ %270, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !244
  %numerator.sroa.98.0 = phi <4 x float> [ %268, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !244
  %numerator.sroa.74.0 = phi <4 x float> [ %258, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !244
  %numerator.sroa.50.0 = phi <4 x float> [ %256, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !244
  %numerator.sroa.26.0 = phi <4 x float> [ %254, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !244
  %numerator.sroa.0.0 = phi <4 x float> [ %252, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !244
  %denominator.sroa.0.1 = phi float [ %add400, %for.cond.preheader ], [ 0.000000e+00, %for.body599.preheader ], !dbg !244
  %div = fdiv contract float 1.000000e+00, %denominator.sroa.0.1, !dbg !63
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !245
  %mul619 = fmul contract float %div, %numerator.sroa.0.0.vec.extract, !dbg !246
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !245
  %mul619.1 = fmul contract float %div, %numerator.sroa.0.4.vec.extract, !dbg !246
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !245
  %mul619.2 = fmul contract float %div, %numerator.sroa.0.8.vec.extract, !dbg !246
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !245
  %mul619.3 = fmul contract float %div, %numerator.sroa.0.12.vec.extract, !dbg !246
  %numerator.sroa.26.16.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 0, !dbg !245
  %mul619.4 = fmul contract float %div, %numerator.sroa.26.16.vec.extract, !dbg !246
  %numerator.sroa.26.20.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 1, !dbg !245
  %mul619.5 = fmul contract float %div, %numerator.sroa.26.20.vec.extract, !dbg !246
  %numerator.sroa.26.24.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 2, !dbg !245
  %mul619.6 = fmul contract float %div, %numerator.sroa.26.24.vec.extract, !dbg !246
  %numerator.sroa.26.28.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 3, !dbg !245
  %mul619.7 = fmul contract float %div, %numerator.sroa.26.28.vec.extract, !dbg !246
  %numerator.sroa.50.32.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 0, !dbg !245
  %mul619.8 = fmul contract float %div, %numerator.sroa.50.32.vec.extract, !dbg !246
  %numerator.sroa.50.36.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 1, !dbg !245
  %mul619.9 = fmul contract float %div, %numerator.sroa.50.36.vec.extract, !dbg !246
  %numerator.sroa.50.40.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 2, !dbg !245
  %mul619.10 = fmul contract float %div, %numerator.sroa.50.40.vec.extract, !dbg !246
  %numerator.sroa.50.44.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 3, !dbg !245
  %mul619.11 = fmul contract float %div, %numerator.sroa.50.44.vec.extract, !dbg !246
  %numerator.sroa.74.48.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 0, !dbg !245
  %mul619.12 = fmul contract float %div, %numerator.sroa.74.48.vec.extract, !dbg !246
  %numerator.sroa.74.52.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 1, !dbg !245
  %mul619.13 = fmul contract float %div, %numerator.sroa.74.52.vec.extract, !dbg !246
  %numerator.sroa.74.56.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 2, !dbg !245
  %mul619.14 = fmul contract float %div, %numerator.sroa.74.56.vec.extract, !dbg !246
  %numerator.sroa.74.60.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 3, !dbg !245
  %mul619.15 = fmul contract float %div, %numerator.sroa.74.60.vec.extract, !dbg !246
  %numerator.sroa.98.64.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 0, !dbg !245
  %mul619.16 = fmul contract float %div, %numerator.sroa.98.64.vec.extract, !dbg !246
  %numerator.sroa.98.68.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 1, !dbg !245
  %mul619.17 = fmul contract float %div, %numerator.sroa.98.68.vec.extract, !dbg !246
  %numerator.sroa.98.72.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 2, !dbg !245
  %mul619.18 = fmul contract float %div, %numerator.sroa.98.72.vec.extract, !dbg !246
  %numerator.sroa.98.76.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 3, !dbg !245
  %mul619.19 = fmul contract float %div, %numerator.sroa.98.76.vec.extract, !dbg !246
  %numerator.sroa.122.80.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 0, !dbg !245
  %mul619.20 = fmul contract float %div, %numerator.sroa.122.80.vec.extract, !dbg !246
  %numerator.sroa.122.84.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 1, !dbg !245
  %mul619.21 = fmul contract float %div, %numerator.sroa.122.84.vec.extract, !dbg !246
  %numerator.sroa.122.88.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 2, !dbg !245
  %mul619.22 = fmul contract float %div, %numerator.sroa.122.88.vec.extract, !dbg !246
  %numerator.sroa.122.92.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 3, !dbg !245
  %mul619.23 = fmul contract float %div, %numerator.sroa.122.92.vec.extract, !dbg !246
  %numerator.sroa.146.96.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 0, !dbg !245
  %mul619.24 = fmul contract float %div, %numerator.sroa.146.96.vec.extract, !dbg !246
  %numerator.sroa.146.100.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 1, !dbg !245
  %mul619.25 = fmul contract float %div, %numerator.sroa.146.100.vec.extract, !dbg !246
  %numerator.sroa.146.104.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 2, !dbg !245
  %mul619.26 = fmul contract float %div, %numerator.sroa.146.104.vec.extract, !dbg !246
  %numerator.sroa.146.108.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 3, !dbg !245
  %mul619.27 = fmul contract float %div, %numerator.sroa.146.108.vec.extract, !dbg !246
  %numerator.sroa.170.112.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 0, !dbg !245
  %mul619.28 = fmul contract float %div, %numerator.sroa.170.112.vec.extract, !dbg !246
  %numerator.sroa.170.116.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 1, !dbg !245
  %mul619.29 = fmul contract float %div, %numerator.sroa.170.116.vec.extract, !dbg !246
  %numerator.sroa.170.120.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 2, !dbg !245
  %mul619.30 = fmul contract float %div, %numerator.sroa.170.120.vec.extract, !dbg !246
  %numerator.sroa.170.124.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 3, !dbg !245
  %mul619.31 = fmul contract float %div, %numerator.sroa.170.124.vec.extract, !dbg !246
  fence syncscope("warp") release, !dbg !247
  tail call void @llvm.mxc.barrier.warp(), !dbg !250
  fence syncscope("warp") acquire, !dbg !251
  %conv.i.i913 = fptrunc float %mul619 to half, !dbg !252
  %conv.i.i913.1 = fptrunc float %mul619.1 to half, !dbg !252
  %conv.i.i913.2 = fptrunc float %mul619.2 to half, !dbg !252
  %conv.i.i913.3 = fptrunc float %mul619.3 to half, !dbg !252
  %275 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul649.pre-phi, !dbg !57
  %276 = getelementptr inbounds i8, ptr addrspace(3) %275, i32 %.idx965.pre-phi, !dbg !57
  %add.ptr673 = getelementptr inbounds i8, ptr addrspace(3) %276, i32 %add.ptr673.idx.pre-phi, !dbg !57
  store half %conv.i.i913, ptr addrspace(3) %add.ptr673, align 8, !dbg !257
  %add.ptr673.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673, i32 2, !dbg !257
  store half %conv.i.i913.1, ptr addrspace(3) %add.ptr673.sroa_idx, align 2, !dbg !257
  %add.ptr673.sroa_idx1180 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673, i32 4, !dbg !257
  store half %conv.i.i913.2, ptr addrspace(3) %add.ptr673.sroa_idx1180, align 4, !dbg !257
  %add.ptr673.sroa_idx1181 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673, i32 6, !dbg !257
  store half %conv.i.i913.3, ptr addrspace(3) %add.ptr673.sroa_idx1181, align 2, !dbg !257
  %conv.i.i913.11158 = fptrunc float %mul619.4 to half, !dbg !252
  %conv.i.i913.1.1 = fptrunc float %mul619.5 to half, !dbg !252
  %conv.i.i913.2.1 = fptrunc float %mul619.6 to half, !dbg !252
  %conv.i.i913.3.1 = fptrunc float %mul619.7 to half, !dbg !252
  %add.ptr673.1 = getelementptr inbounds i8, ptr addrspace(3) %276, i32 %add.ptr673.idx.1.pre-phi, !dbg !57
  store half %conv.i.i913.11158, ptr addrspace(3) %add.ptr673.1, align 8, !dbg !257
  %add.ptr673.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673.1, i32 2, !dbg !257
  store half %conv.i.i913.1.1, ptr addrspace(3) %add.ptr673.1.sroa_idx, align 2, !dbg !257
  %add.ptr673.1.sroa_idx1185 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673.1, i32 4, !dbg !257
  store half %conv.i.i913.2.1, ptr addrspace(3) %add.ptr673.1.sroa_idx1185, align 4, !dbg !257
  %add.ptr673.1.sroa_idx1186 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673.1, i32 6, !dbg !257
  store half %conv.i.i913.3.1, ptr addrspace(3) %add.ptr673.1.sroa_idx1186, align 2, !dbg !257
  %conv.i.i913.21160 = fptrunc float %mul619.8 to half, !dbg !252
  %conv.i.i913.1.2 = fptrunc float %mul619.9 to half, !dbg !252
  %conv.i.i913.2.2 = fptrunc float %mul619.10 to half, !dbg !252
  %conv.i.i913.3.2 = fptrunc float %mul619.11 to half, !dbg !252
  %add.ptr673.2 = getelementptr inbounds i8, ptr addrspace(3) %276, i32 %add.ptr673.idx.2.pre-phi, !dbg !57
  store half %conv.i.i913.21160, ptr addrspace(3) %add.ptr673.2, align 8, !dbg !257
  %add.ptr673.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673.2, i32 2, !dbg !257
  store half %conv.i.i913.1.2, ptr addrspace(3) %add.ptr673.2.sroa_idx, align 2, !dbg !257
  %add.ptr673.2.sroa_idx1190 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673.2, i32 4, !dbg !257
  store half %conv.i.i913.2.2, ptr addrspace(3) %add.ptr673.2.sroa_idx1190, align 4, !dbg !257
  %add.ptr673.2.sroa_idx1191 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673.2, i32 6, !dbg !257
  store half %conv.i.i913.3.2, ptr addrspace(3) %add.ptr673.2.sroa_idx1191, align 2, !dbg !257
  %conv.i.i913.31162 = fptrunc float %mul619.12 to half, !dbg !252
  %conv.i.i913.1.3 = fptrunc float %mul619.13 to half, !dbg !252
  %conv.i.i913.2.3 = fptrunc float %mul619.14 to half, !dbg !252
  %conv.i.i913.3.3 = fptrunc float %mul619.15 to half, !dbg !252
  %add.ptr673.3 = getelementptr inbounds i8, ptr addrspace(3) %276, i32 %add.ptr673.idx.3.pre-phi, !dbg !57
  store half %conv.i.i913.31162, ptr addrspace(3) %add.ptr673.3, align 8, !dbg !257
  %add.ptr673.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673.3, i32 2, !dbg !257
  store half %conv.i.i913.1.3, ptr addrspace(3) %add.ptr673.3.sroa_idx, align 2, !dbg !257
  %add.ptr673.3.sroa_idx1195 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673.3, i32 4, !dbg !257
  store half %conv.i.i913.2.3, ptr addrspace(3) %add.ptr673.3.sroa_idx1195, align 4, !dbg !257
  %add.ptr673.3.sroa_idx1196 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673.3, i32 6, !dbg !257
  store half %conv.i.i913.3.3, ptr addrspace(3) %add.ptr673.3.sroa_idx1196, align 2, !dbg !257
  %conv.i.i913.4 = fptrunc float %mul619.16 to half, !dbg !252
  %conv.i.i913.1.4 = fptrunc float %mul619.17 to half, !dbg !252
  %conv.i.i913.2.4 = fptrunc float %mul619.18 to half, !dbg !252
  %conv.i.i913.3.4 = fptrunc float %mul619.19 to half, !dbg !252
  %277 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add650.4.pre-phi, !dbg !57
  %278 = getelementptr inbounds i8, ptr addrspace(3) %277, i32 %.idx965.4.pre-phi, !dbg !57
  %add.ptr673.4 = getelementptr inbounds i8, ptr addrspace(3) %278, i32 %add.ptr673.idx.pre-phi, !dbg !57
  store half %conv.i.i913.4, ptr addrspace(3) %add.ptr673.4, align 8, !dbg !257
  %add.ptr673.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673.4, i32 2, !dbg !257
  store half %conv.i.i913.1.4, ptr addrspace(3) %add.ptr673.4.sroa_idx, align 2, !dbg !257
  %add.ptr673.4.sroa_idx1200 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673.4, i32 4, !dbg !257
  store half %conv.i.i913.2.4, ptr addrspace(3) %add.ptr673.4.sroa_idx1200, align 4, !dbg !257
  %add.ptr673.4.sroa_idx1201 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673.4, i32 6, !dbg !257
  store half %conv.i.i913.3.4, ptr addrspace(3) %add.ptr673.4.sroa_idx1201, align 2, !dbg !257
  %conv.i.i913.5 = fptrunc float %mul619.20 to half, !dbg !252
  %conv.i.i913.1.5 = fptrunc float %mul619.21 to half, !dbg !252
  %conv.i.i913.2.5 = fptrunc float %mul619.22 to half, !dbg !252
  %conv.i.i913.3.5 = fptrunc float %mul619.23 to half, !dbg !252
  %add.ptr673.5 = getelementptr inbounds i8, ptr addrspace(3) %278, i32 %add.ptr673.idx.1.pre-phi, !dbg !57
  store half %conv.i.i913.5, ptr addrspace(3) %add.ptr673.5, align 8, !dbg !257
  %add.ptr673.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673.5, i32 2, !dbg !257
  store half %conv.i.i913.1.5, ptr addrspace(3) %add.ptr673.5.sroa_idx, align 2, !dbg !257
  %add.ptr673.5.sroa_idx1205 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673.5, i32 4, !dbg !257
  store half %conv.i.i913.2.5, ptr addrspace(3) %add.ptr673.5.sroa_idx1205, align 4, !dbg !257
  %add.ptr673.5.sroa_idx1206 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673.5, i32 6, !dbg !257
  store half %conv.i.i913.3.5, ptr addrspace(3) %add.ptr673.5.sroa_idx1206, align 2, !dbg !257
  %conv.i.i913.6 = fptrunc float %mul619.24 to half, !dbg !252
  %conv.i.i913.1.6 = fptrunc float %mul619.25 to half, !dbg !252
  %conv.i.i913.2.6 = fptrunc float %mul619.26 to half, !dbg !252
  %conv.i.i913.3.6 = fptrunc float %mul619.27 to half, !dbg !252
  %add.ptr673.6 = getelementptr inbounds i8, ptr addrspace(3) %278, i32 %add.ptr673.idx.2.pre-phi, !dbg !57
  store half %conv.i.i913.6, ptr addrspace(3) %add.ptr673.6, align 8, !dbg !257
  %add.ptr673.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673.6, i32 2, !dbg !257
  store half %conv.i.i913.1.6, ptr addrspace(3) %add.ptr673.6.sroa_idx, align 2, !dbg !257
  %add.ptr673.6.sroa_idx1210 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673.6, i32 4, !dbg !257
  store half %conv.i.i913.2.6, ptr addrspace(3) %add.ptr673.6.sroa_idx1210, align 4, !dbg !257
  %add.ptr673.6.sroa_idx1211 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673.6, i32 6, !dbg !257
  store half %conv.i.i913.3.6, ptr addrspace(3) %add.ptr673.6.sroa_idx1211, align 2, !dbg !257
  %conv.i.i913.7 = fptrunc float %mul619.28 to half, !dbg !252
  %conv.i.i913.1.7 = fptrunc float %mul619.29 to half, !dbg !252
  %conv.i.i913.2.7 = fptrunc float %mul619.30 to half, !dbg !252
  %conv.i.i913.3.7 = fptrunc float %mul619.31 to half, !dbg !252
  %add.ptr673.7 = getelementptr inbounds i8, ptr addrspace(3) %278, i32 %add.ptr673.idx.3.pre-phi, !dbg !57
  store half %conv.i.i913.7, ptr addrspace(3) %add.ptr673.7, align 8, !dbg !257
  %add.ptr673.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673.7, i32 2, !dbg !257
  store half %conv.i.i913.1.7, ptr addrspace(3) %add.ptr673.7.sroa_idx, align 2, !dbg !257
  %add.ptr673.7.sroa_idx1215 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673.7, i32 4, !dbg !257
  store half %conv.i.i913.2.7, ptr addrspace(3) %add.ptr673.7.sroa_idx1215, align 4, !dbg !257
  %add.ptr673.7.sroa_idx1216 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr673.7, i32 6, !dbg !257
  store half %conv.i.i913.3.7, ptr addrspace(3) %add.ptr673.7.sroa_idx1216, align 2, !dbg !257
  fence syncscope("warp") release, !dbg !258
  tail call void @llvm.mxc.barrier.warp(), !dbg !261
  fence syncscope("warp") acquire, !dbg !262
  %279 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul693.pre-phi, !dbg !61
  %280 = getelementptr inbounds %struct.__half, ptr addrspace(3) %279, i32 %mul688.pre-phi, !dbg !61
  %281 = getelementptr inbounds i8, ptr addrspace(3) %280, i32 %.idx967.pre-phi, !dbg !61
  %add.ptr714 = getelementptr inbounds i8, ptr addrspace(3) %281, i32 %add.ptr714.idx.pre-phi, !dbg !61
  %282 = load i64, ptr addrspace(3) %add.ptr714, align 8, !dbg !263
  %add.ptr714.1 = getelementptr inbounds i8, ptr addrspace(3) %281, i32 %add.ptr714.idx.1.pre-phi, !dbg !61
  %283 = load i64, ptr addrspace(3) %add.ptr714.1, align 8, !dbg !263
  %add.ptr735 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2109, !dbg !264
  store i64 %282, ptr addrspace(1) %add.ptr735, align 16, !dbg !265
  %output_fetch.sroa.10.0.add.ptr735.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr735, i64 8, !dbg !265
  store i64 %283, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr735.sroa_idx, align 8, !dbg !265
  %284 = getelementptr inbounds i8, ptr addrspace(3) %280, i32 512, !dbg !61
  %285 = getelementptr inbounds i8, ptr addrspace(3) %284, i32 %.idx967.11169.pre-phi, !dbg !61
  %add.ptr714.11171 = getelementptr inbounds i8, ptr addrspace(3) %285, i32 %add.ptr714.idx.pre-phi, !dbg !61
  %286 = load i64, ptr addrspace(3) %add.ptr714.11171, align 8, !dbg !263
  %add.ptr714.1.1 = getelementptr inbounds i8, ptr addrspace(3) %285, i32 %add.ptr714.idx.1.pre-phi, !dbg !61
  %287 = load i64, ptr addrspace(3) %add.ptr714.1.1, align 8, !dbg !263
  %add.ptr735.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2119, !dbg !264
  store i64 %286, ptr addrspace(1) %add.ptr735.1, align 16, !dbg !265
  %output_fetch.sroa.10.0.add.ptr735.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr735.1, i64 8, !dbg !265
  store i64 %287, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr735.1.sroa_idx, align 8, !dbg !265
  %288 = getelementptr inbounds i8, ptr addrspace(3) %280, i32 1024, !dbg !61
  %289 = getelementptr inbounds i8, ptr addrspace(3) %288, i32 %.idx967.pre-phi, !dbg !61
  %add.ptr714.2 = getelementptr inbounds i8, ptr addrspace(3) %289, i32 %add.ptr714.idx.1.pre-phi, !dbg !61
  %290 = load i64, ptr addrspace(3) %add.ptr714.2, align 8, !dbg !263
  %add.ptr714.1.2 = getelementptr inbounds i8, ptr addrspace(3) %289, i32 %add.ptr714.idx.pre-phi, !dbg !61
  %291 = load i64, ptr addrspace(3) %add.ptr714.1.2, align 8, !dbg !263
  %add.ptr735.2 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2121, !dbg !264
  store i64 %290, ptr addrspace(1) %add.ptr735.2, align 16, !dbg !265
  %output_fetch.sroa.10.0.add.ptr735.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr735.2, i64 8, !dbg !265
  store i64 %291, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr735.2.sroa_idx, align 8, !dbg !265
  %292 = getelementptr inbounds i8, ptr addrspace(3) %280, i32 1536, !dbg !61
  %293 = getelementptr inbounds i8, ptr addrspace(3) %292, i32 %.idx967.11169.pre-phi, !dbg !61
  %add.ptr714.3 = getelementptr inbounds i8, ptr addrspace(3) %293, i32 %add.ptr714.idx.1.pre-phi, !dbg !61
  %294 = load i64, ptr addrspace(3) %add.ptr714.3, align 8, !dbg !263
  %add.ptr714.1.3 = getelementptr inbounds i8, ptr addrspace(3) %293, i32 %add.ptr714.idx.pre-phi, !dbg !61
  %295 = load i64, ptr addrspace(3) %add.ptr714.1.3, align 8, !dbg !263
  %add.ptr735.3 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2123, !dbg !264
  store i64 %294, ptr addrspace(1) %add.ptr735.3, align 16, !dbg !265
  %output_fetch.sroa.10.0.add.ptr735.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr735.3, i64 8, !dbg !265
  store i64 %295, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr735.3.sroa_idx, align 8, !dbg !265
  ret void, !dbg !266
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v069_codex_power_s1_shared_reciprocal_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v069_codex_power_s1_shared_reciprocal_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
!42 = !DILocation(line: 78, column: 3, scope: !43, inlinedAt: !45)
!43 = distinct !DISubprogram(name: "__fetch_builtin_y", scope: !44, file: !44, line: 78, type: !7, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!44 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_builtin_vars.h", directory: "")
!45 = distinct !DILocation(line: 26, column: 38, scope: !40)
!46 = !DILocation(line: 26, column: 50, scope: !40)
!47 = !DILocation(line: 77, column: 3, scope: !48, inlinedAt: !49)
!48 = distinct !DISubprogram(name: "__fetch_builtin_x", scope: !44, file: !44, line: 77, type: !7, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!49 = distinct !DILocation(line: 26, column: 66, scope: !40)
!50 = !DILocation(line: 26, column: 58, scope: !40)
!51 = !DILocation(line: 26, column: 22, scope: !40)
!52 = !DILocation(line: 26, column: 80, scope: !40)
!53 = !DILocation(line: 28, column: 10, scope: !40)
!54 = !DILocation(line: 28, column: 26, scope: !40)
!55 = !{i32 0, i32 1024}
!56 = !DILocation(line: 189, column: 141, scope: !40)
!57 = !DILocation(line: 189, column: 22, scope: !40)
!58 = !DILocation(line: 189, column: 112, scope: !40)
!59 = !DILocation(line: 189, column: 51, scope: !40)
!60 = !DILocation(line: 193, column: 3, scope: !40)
!61 = !DILocation(line: 196, column: 65, scope: !40)
!62 = !DILocation(line: 198, column: 105, scope: !40)
!63 = !DILocation(line: 178, column: 53, scope: !40)
!64 = !DILocation(line: 30, column: 5, scope: !40)
!65 = !DILocation(line: 31, column: 45, scope: !40)
!66 = !DILocation(line: 31, column: 31, scope: !40)
!67 = !DILocation(line: 34, column: 26, scope: !40)
!68 = !DILocation(line: 34, column: 279, scope: !40)
!69 = !DILocation(line: 31, column: 126, scope: !40)
!70 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !73)
!71 = distinct !DISubprogram(name: "__barrier_warp", scope: !72, file: !72, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!72 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!73 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !75)
!74 = distinct !DISubprogram(name: "__syncwarp", scope: !72, file: !72, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!75 = distinct !DILocation(line: 37, column: 5, scope: !40)
!76 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !73)
!77 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !73)
!78 = !DILocation(line: 39, column: 174, scope: !40)
!79 = !DILocation(line: 39, column: 59, scope: !40)
!80 = !DILocation(line: 39, column: 40, scope: !40)
!81 = !DILocation(line: 39, column: 145, scope: !40)
!82 = !DILocation(line: 39, column: 86, scope: !40)
!83 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !84)
!84 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !85)
!85 = distinct !DILocation(line: 41, column: 5, scope: !40)
!86 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !84)
!87 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !84)
!88 = !DILocation(line: 43, column: 10, scope: !40)
!89 = !DILocation(line: 44, column: 45, scope: !40)
!90 = !DILocation(line: 44, column: 31, scope: !40)
!91 = !DILocation(line: 47, column: 26, scope: !40)
!92 = !DILocation(line: 47, column: 293, scope: !40)
!93 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !94)
!94 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !95)
!95 = distinct !DILocation(line: 50, column: 5, scope: !40)
!96 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !94)
!97 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !94)
!98 = !DILocation(line: 59, column: 32, scope: !40)
!99 = !DILocation(line: 61, column: 44, scope: !40)
!100 = !DILocation(line: 59, column: 51, scope: !40)
!101 = !DILocation(line: 72, column: 96, scope: !40)
!102 = !DILocation(line: 72, column: 13, scope: !40)
!103 = !DILocation(line: 72, column: 85, scope: !40)
!104 = !DILocation(line: 351, column: 10, scope: !105, inlinedAt: !107)
!105 = distinct !DISubprogram(name: "max", scope: !106, file: !106, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!106 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!107 = distinct !DILocation(line: 83, column: 20, scope: !40)
!108 = !DILocation(line: 1018, column: 9, scope: !109, inlinedAt: !110)
!109 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !72, file: !72, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!110 = distinct !DILocation(line: 85, column: 34, scope: !40)
!111 = !DILocation(line: 171, column: 37, scope: !112, inlinedAt: !113)
!112 = distinct !DISubprogram(name: "__lane_id", scope: !72, file: !72, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!113 = distinct !DILocation(line: 990, column: 14, scope: !114, inlinedAt: !115)
!114 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !72, file: !72, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!115 = distinct !DILocation(line: 1019, column: 11, scope: !109, inlinedAt: !110)
!116 = !DILocation(line: 171, column: 10, scope: !112, inlinedAt: !113)
!117 = !DILocation(line: 991, column: 20, scope: !114, inlinedAt: !115)
!118 = !DILocation(line: 992, column: 36, scope: !114, inlinedAt: !115)
!119 = !DILocation(line: 992, column: 17, scope: !114, inlinedAt: !115)
!120 = !DILocation(line: 992, column: 11, scope: !114, inlinedAt: !115)
!121 = !DILocation(line: 993, column: 43, scope: !114, inlinedAt: !115)
!122 = !DILocation(line: 993, column: 10, scope: !114, inlinedAt: !115)
!123 = !DILocation(line: 1020, column: 14, scope: !109, inlinedAt: !110)
!124 = !DILocation(line: 351, column: 10, scope: !105, inlinedAt: !125)
!125 = distinct !DILocation(line: 85, column: 18, scope: !40)
!126 = !DILocation(line: 1018, column: 9, scope: !109, inlinedAt: !127)
!127 = distinct !DILocation(line: 86, column: 34, scope: !40)
!128 = !DILocation(line: 171, column: 37, scope: !112, inlinedAt: !129)
!129 = distinct !DILocation(line: 990, column: 14, scope: !114, inlinedAt: !130)
!130 = distinct !DILocation(line: 1019, column: 11, scope: !109, inlinedAt: !127)
!131 = !DILocation(line: 171, column: 10, scope: !112, inlinedAt: !129)
!132 = !DILocation(line: 991, column: 20, scope: !114, inlinedAt: !130)
!133 = !DILocation(line: 992, column: 36, scope: !114, inlinedAt: !130)
!134 = !DILocation(line: 992, column: 17, scope: !114, inlinedAt: !130)
!135 = !DILocation(line: 992, column: 11, scope: !114, inlinedAt: !130)
!136 = !DILocation(line: 993, column: 43, scope: !114, inlinedAt: !130)
!137 = !DILocation(line: 993, column: 10, scope: !114, inlinedAt: !130)
!138 = !DILocation(line: 1020, column: 14, scope: !109, inlinedAt: !127)
!139 = !DILocation(line: 351, column: 10, scope: !105, inlinedAt: !140)
!140 = distinct !DILocation(line: 86, column: 18, scope: !40)
!141 = !DILocation(line: 98, column: 26, scope: !40)
!142 = !DILocation(line: 99, column: 26, scope: !40)
!143 = !DILocation(line: 100, column: 26, scope: !40)
!144 = !DILocation(line: 101, column: 26, scope: !40)
!145 = !DILocation(line: 103, column: 25, scope: !40)
!146 = !DILocation(line: 104, column: 25, scope: !40)
!147 = !DILocation(line: 105, column: 25, scope: !40)
!148 = !DILocation(line: 106, column: 25, scope: !40)
!149 = !DILocation(line: 108, column: 23, scope: !40)
!150 = !DILocation(line: 109, column: 23, scope: !40)
!151 = !DILocation(line: 110, column: 23, scope: !40)
!152 = !DILocation(line: 111, column: 23, scope: !40)
!153 = !DILocation(line: 285, column: 49, scope: !154, inlinedAt: !155)
!154 = distinct !DISubprogram(name: "exp2f", scope: !106, file: !106, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!155 = distinct !DILocation(line: 112, column: 15, scope: !40)
!156 = !DILocation(line: 285, column: 49, scope: !154, inlinedAt: !157)
!157 = distinct !DILocation(line: 113, column: 15, scope: !40)
!158 = !DILocation(line: 285, column: 49, scope: !154, inlinedAt: !159)
!159 = distinct !DILocation(line: 114, column: 15, scope: !40)
!160 = !DILocation(line: 285, column: 49, scope: !154, inlinedAt: !161)
!161 = distinct !DILocation(line: 115, column: 15, scope: !40)
!162 = !DILocation(line: 1007, column: 10, scope: !163, inlinedAt: !165)
!163 = distinct !DISubprogram(name: "__float2half_rn", scope: !164, file: !164, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!164 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!165 = distinct !DILocation(line: 1077, column: 18, scope: !166, inlinedAt: !167)
!166 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !164, file: !164, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!167 = distinct !DILocation(line: 1295, column: 23, scope: !168, inlinedAt: !169)
!168 = distinct !DISubprogram(name: "__float22half2_rn", scope: !164, file: !164, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!169 = distinct !DILocation(line: 116, column: 29, scope: !40)
!170 = !{!171, !173}
!171 = distinct !{!171, !172, !"_ZL17__floats2half2_rnff: %agg.result"}
!172 = distinct !{!172, !"_ZL17__floats2half2_rnff"}
!173 = distinct !{!173, !174, !"_ZL17__float22half2_rn6float2: %agg.result"}
!174 = distinct !{!174, !"_ZL17__float22half2_rn6float2"}
!175 = !DILocation(line: 1007, column: 10, scope: !163, inlinedAt: !176)
!176 = distinct !DILocation(line: 1077, column: 38, scope: !166, inlinedAt: !167)
!177 = !DILocation(line: 1007, column: 10, scope: !163, inlinedAt: !178)
!178 = distinct !DILocation(line: 1077, column: 18, scope: !166, inlinedAt: !179)
!179 = distinct !DILocation(line: 1295, column: 23, scope: !168, inlinedAt: !180)
!180 = distinct !DILocation(line: 117, column: 29, scope: !40)
!181 = !{!182, !184}
!182 = distinct !{!182, !183, !"_ZL17__floats2half2_rnff: %agg.result"}
!183 = distinct !{!183, !"_ZL17__floats2half2_rnff"}
!184 = distinct !{!184, !185, !"_ZL17__float22half2_rn6float2: %agg.result"}
!185 = distinct !{!185, !"_ZL17__float22half2_rn6float2"}
!186 = !DILocation(line: 1007, column: 10, scope: !163, inlinedAt: !187)
!187 = distinct !DILocation(line: 1077, column: 38, scope: !166, inlinedAt: !179)
!188 = !DILocation(line: 118, column: 51, scope: !40)
!189 = !DILocation(line: 1082, column: 16, scope: !190, inlinedAt: !191)
!190 = distinct !DISubprogram(name: "__half2float", scope: !164, file: !164, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!191 = distinct !DILocation(line: 136, column: 55, scope: !192, inlinedAt: !193)
!192 = distinct !DISubprogram(name: "operator float", scope: !164, file: !164, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!193 = distinct !DILocation(line: 122, column: 50, scope: !40)
!194 = !DILocation(line: 122, column: 40, scope: !40)
!195 = !DILocation(line: 1018, column: 9, scope: !109, inlinedAt: !196)
!196 = distinct !DILocation(line: 124, column: 40, scope: !40)
!197 = !DILocation(line: 171, column: 37, scope: !112, inlinedAt: !198)
!198 = distinct !DILocation(line: 990, column: 14, scope: !114, inlinedAt: !199)
!199 = distinct !DILocation(line: 1019, column: 11, scope: !109, inlinedAt: !196)
!200 = !DILocation(line: 171, column: 10, scope: !112, inlinedAt: !198)
!201 = !DILocation(line: 991, column: 20, scope: !114, inlinedAt: !199)
!202 = !DILocation(line: 992, column: 36, scope: !114, inlinedAt: !199)
!203 = !DILocation(line: 992, column: 17, scope: !114, inlinedAt: !199)
!204 = !DILocation(line: 992, column: 11, scope: !114, inlinedAt: !199)
!205 = !DILocation(line: 993, column: 43, scope: !114, inlinedAt: !199)
!206 = !DILocation(line: 993, column: 10, scope: !114, inlinedAt: !199)
!207 = !DILocation(line: 1020, column: 14, scope: !109, inlinedAt: !196)
!208 = !DILocation(line: 124, column: 38, scope: !40)
!209 = !DILocation(line: 1018, column: 9, scope: !109, inlinedAt: !210)
!210 = distinct !DILocation(line: 125, column: 40, scope: !40)
!211 = !DILocation(line: 171, column: 37, scope: !112, inlinedAt: !212)
!212 = distinct !DILocation(line: 990, column: 14, scope: !114, inlinedAt: !213)
!213 = distinct !DILocation(line: 1019, column: 11, scope: !109, inlinedAt: !210)
!214 = !DILocation(line: 171, column: 10, scope: !112, inlinedAt: !212)
!215 = !DILocation(line: 991, column: 20, scope: !114, inlinedAt: !213)
!216 = !DILocation(line: 992, column: 36, scope: !114, inlinedAt: !213)
!217 = !DILocation(line: 992, column: 17, scope: !114, inlinedAt: !213)
!218 = !DILocation(line: 992, column: 11, scope: !114, inlinedAt: !213)
!219 = !DILocation(line: 993, column: 43, scope: !114, inlinedAt: !213)
!220 = !DILocation(line: 993, column: 10, scope: !114, inlinedAt: !213)
!221 = !DILocation(line: 1020, column: 14, scope: !109, inlinedAt: !210)
!222 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !223)
!223 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !224)
!224 = distinct !DILocation(line: 126, column: 5, scope: !40)
!225 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !223)
!226 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !223)
!227 = !DILocation(line: 133, column: 56, scope: !40)
!228 = !DILocation(line: 133, column: 42, scope: !40)
!229 = !DILocation(line: 140, column: 28, scope: !40)
!230 = !DILocation(line: 140, column: 192, scope: !40)
!231 = !DILocation(line: 140, column: 63, scope: !40)
!232 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !233)
!233 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !234)
!234 = distinct !DILocation(line: 144, column: 5, scope: !40)
!235 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !233)
!236 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !233)
!237 = !DILocation(line: 158, column: 325, scope: !40)
!238 = !DILocation(line: 158, column: 84, scope: !40)
!239 = !DILocation(line: 158, column: 65, scope: !40)
!240 = !DILocation(line: 158, column: 263, scope: !40)
!241 = !DILocation(line: 164, column: 94, scope: !40)
!242 = !DILocation(line: 164, column: 64, scope: !40)
!243 = !DILocation(line: 125, column: 38, scope: !40)
!244 = !DILocation(line: 0, scope: !40)
!245 = !DILocation(line: 181, column: 23, scope: !40)
!246 = !DILocation(line: 181, column: 38, scope: !40)
!247 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !248)
!248 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !249)
!249 = distinct !DILocation(line: 183, column: 3, scope: !40)
!250 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !248)
!251 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !248)
!252 = !DILocation(line: 984, column: 21, scope: !253, inlinedAt: !254)
!253 = distinct !DISubprogram(name: "__float2half", scope: !164, file: !164, line: 979, type: !7, scopeLine: 979, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!254 = distinct !DILocation(line: 133, column: 53, scope: !255, inlinedAt: !256)
!255 = distinct !DISubprogram(name: "__half", scope: !164, file: !164, line: 133, type: !7, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!256 = distinct !DILocation(line: 187, column: 39, scope: !40)
!257 = !DILocation(line: 189, column: 274, scope: !40)
!258 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !259)
!259 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !260)
!260 = distinct !DILocation(line: 191, column: 3, scope: !40)
!261 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !259)
!262 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !259)
!263 = !DILocation(line: 196, column: 46, scope: !40)
!264 = !DILocation(line: 198, column: 22, scope: !40)
!265 = !DILocation(line: 198, column: 134, scope: !40)
!266 = !DILocation(line: 200, column: 1, scope: !40)
