; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v074_codex_power_s1_blockstart_broadcast_sc-16g-2/case6.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v074_codex_power_s1_blockstart_broadcast_sc-16g-2/codegen/case6.device.cpp"
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
  %3 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !53
  %4 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %3) #10, !dbg !59
  %and.i = shl i32 %4, 2, !dbg !60
  %shl.i = and i32 %and.i, -256, !dbg !60
  %5 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i, i32 %mul7), !dbg !61
  %or.cond = icmp ugt i32 %5, %1, !dbg !62
  br i1 %or.cond, label %for.body600.preheader, label %for.cond.preheader, !dbg !62

for.body600.preheader:                            ; preds = %entry
  %.pre = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !63
  %.pre2071 = shl nuw nsw i32 %.pre, 6
  %.pre2072 = and i32 %.pre2071, 960
  %.pre2073 = lshr i32 %.pre, 5
  %.pre2074 = and i32 %.pre, 7
  %.pre2075 = lshr i32 %.pre, 4
  %.pre2076 = lshr i32 %.pre, 3
  %.pre2077 = xor i32 %.pre2075, %.pre2076
  %.pre2078 = and i32 %.pre2077, 1
  %.pre2079 = xor i32 %.pre2073, %.pre2074, !dbg !64
  %.pre2080 = shl nuw nsw i32 %.pre2078, 3, !dbg !65
  %.pre2081 = shl nuw nsw i32 %.pre2079, 4, !dbg !65
  %.pre2082 = add nuw nsw i32 %.pre2073, 2, !dbg !66
  %.pre2083 = xor i32 %.pre2082, %.pre2074, !dbg !64
  %.pre2084 = shl nuw nsw i32 %.pre2083, 4, !dbg !65
  %.pre2085 = add nuw nsw i32 %.pre2073, 4, !dbg !66
  %.pre2086 = xor i32 %.pre2085, %.pre2074, !dbg !64
  %.pre2087 = shl nuw nsw i32 %.pre2086, 4, !dbg !65
  %.pre2088 = add nuw nsw i32 %.pre2073, 6, !dbg !66
  %.pre2089 = xor i32 %.pre2088, %.pre2074, !dbg !64
  %.pre2090 = shl nuw nsw i32 %.pre2089, 4, !dbg !65
  %.pre2091 = or disjoint i32 %.pre2072, 1024, !dbg !67
  %.pre2092 = shl nuw nsw i32 %.pre2078, 3, !dbg !65
  %.pre2093 = xor i32 %.pre2092, 8, !dbg !65
  %.pre2094 = shl nuw nsw i32 %.pre, 7
  %.pre2096 = and i32 %.pre2094, 1024
  %.pre2097 = shl nuw nsw i32 %.pre, 2
  %.pre2099 = and i32 %.pre2097, 4032
  %.pre2100 = and i32 %.pre2076, 1
  %.pre2101 = shl nsw i32 %0, 21
  %.pre2102 = shl nsw i32 %1, 11
  %.pre2103 = add nuw nsw i32 %.pre2101, %.pre2102
  %.pre2104 = shl nuw nsw i32 %.pre, 3
  %.pre2105 = add nuw nsw i32 %.pre2103, %.pre2104
  %.pre2106 = zext nneg i32 %.pre2105 to i64, !dbg !68
  %.pre2108 = xor i32 %.pre2075, %.pre2074
  %.pre2109 = shl nuw nsw i32 %.pre2108, 4, !dbg !69
  %.pre2110 = shl nuw nsw i32 %.pre2100, 3, !dbg !69
  %.pre2111 = shl nuw nsw i32 %.pre2100, 3, !dbg !69
  %.pre2112 = xor i32 %.pre2111, 8, !dbg !69
  %.pre2113 = add nuw nsw i32 %.pre2075, 4
  %.pre2114 = xor i32 %.pre2113, %.pre2074
  %.pre2115 = shl nuw nsw i32 %.pre2114, 4, !dbg !69
  %.pre2116 = add nuw nsw i64 %.pre2106, 512, !dbg !70
  %.pre2118 = add nuw nsw i64 %.pre2106, 1024, !dbg !70
  %.pre2120 = add nuw nsw i64 %.pre2106, 1536, !dbg !70
  br label %if.end610, !dbg !71

for.cond.preheader:                               ; preds = %entry
  %mul14 = shl nsw i32 %0, 21
  %mul16 = shl nsw i32 %1, 11
  %add17 = add nuw nsw i32 %mul14, %mul16
  %6 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !63
  %mul21 = shl nuw nsw i32 %6, 3
  %add19 = add nuw nsw i32 %add17, %mul21
  %7 = shl nuw nsw i32 %6, 7
  %mul33 = and i32 %7, 1024
  %8 = shl nuw nsw i32 %6, 2
  %mul38 = and i32 %8, 4032
  %and41 = and i32 %6, 7
  %shr45 = lshr i32 %6, 4
  %and52 = lshr i32 %6, 3
  %shr53 = and i32 %and52, 1
  %9 = zext nneg i32 %add19 to i64, !dbg !72
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %9, !dbg !73
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %add.ptr, align 16, !dbg !74
  %qk_fetch.sroa.26.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !74
  %qk_fetch.sroa.26.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.sroa_idx, align 8, !dbg !74
  %xor = xor i32 %shr45, %and41
  %10 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul38, !dbg !75
  %11 = getelementptr inbounds %struct.__half, ptr addrspace(3) %10, i32 %mul33, !dbg !75
  %.idx954 = shl nuw nsw i32 %xor, 4, !dbg !75
  %12 = getelementptr inbounds i8, ptr addrspace(3) %11, i32 %.idx954, !dbg !75
  %add.ptr58.idx = shl nuw nsw i32 %shr53, 3, !dbg !75
  %add.ptr58 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 %add.ptr58.idx, !dbg !75
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr58, align 8, !dbg !76
  %xor54.1 = shl nuw nsw i32 %shr53, 3, !dbg !75
  %add.ptr58.idx.1 = xor i32 %xor54.1, 8, !dbg !75
  %add.ptr58.1 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 %add.ptr58.idx.1, !dbg !75
  store i64 %qk_fetch.sroa.26.0.copyload, ptr addrspace(3) %add.ptr58.1, align 8, !dbg !76
  %13 = add nuw nsw i64 %9, 512, !dbg !77
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %13, !dbg !73
  %qk_fetch.sroa.0.0.copyload2039 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !74
  %qk_fetch.sroa.26.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !74
  %qk_fetch.sroa.26.0.copyload2050 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.1.sroa_idx, align 8, !dbg !74
  %add46.1 = add nuw nsw i32 %shr45, 4
  %xor.1 = xor i32 %add46.1, %and41
  %14 = getelementptr inbounds i8, ptr addrspace(3) %11, i32 512, !dbg !75
  %.idx954.1973 = shl nuw nsw i32 %xor.1, 4, !dbg !75
  %15 = getelementptr inbounds i8, ptr addrspace(3) %14, i32 %.idx954.1973, !dbg !75
  %add.ptr58.1975 = getelementptr inbounds i8, ptr addrspace(3) %15, i32 %add.ptr58.idx, !dbg !75
  store i64 %qk_fetch.sroa.0.0.copyload2039, ptr addrspace(3) %add.ptr58.1975, align 8, !dbg !76
  %add.ptr58.1.1 = getelementptr inbounds i8, ptr addrspace(3) %15, i32 %add.ptr58.idx.1, !dbg !75
  store i64 %qk_fetch.sroa.26.0.copyload2050, ptr addrspace(3) %add.ptr58.1.1, align 8, !dbg !76
  %16 = add nuw nsw i64 %9, 1024, !dbg !77
  %add.ptr.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %16, !dbg !73
  %qk_fetch.sroa.0.0.copyload2040 = load i64, ptr addrspace(4) %add.ptr.2, align 16, !dbg !74
  %qk_fetch.sroa.26.0.add.ptr.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.2, i64 8, !dbg !74
  %qk_fetch.sroa.26.0.copyload2051 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.2.sroa_idx, align 8, !dbg !74
  %17 = getelementptr inbounds i8, ptr addrspace(3) %11, i32 1024, !dbg !75
  %18 = getelementptr inbounds i8, ptr addrspace(3) %17, i32 %.idx954, !dbg !75
  %add.ptr58.2 = getelementptr inbounds i8, ptr addrspace(3) %18, i32 %add.ptr58.idx.1, !dbg !75
  store i64 %qk_fetch.sroa.0.0.copyload2040, ptr addrspace(3) %add.ptr58.2, align 8, !dbg !76
  %add.ptr58.1.2 = getelementptr inbounds i8, ptr addrspace(3) %18, i32 %add.ptr58.idx, !dbg !75
  store i64 %qk_fetch.sroa.26.0.copyload2051, ptr addrspace(3) %add.ptr58.1.2, align 8, !dbg !76
  %19 = add nuw nsw i64 %9, 1536, !dbg !77
  %add.ptr.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %19, !dbg !73
  %qk_fetch.sroa.0.0.copyload2041 = load i64, ptr addrspace(4) %add.ptr.3, align 16, !dbg !74
  %qk_fetch.sroa.26.0.add.ptr.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.3, i64 8, !dbg !74
  %qk_fetch.sroa.26.0.copyload2052 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.3.sroa_idx, align 8, !dbg !74
  %20 = getelementptr inbounds i8, ptr addrspace(3) %11, i32 1536, !dbg !75
  %21 = getelementptr inbounds i8, ptr addrspace(3) %20, i32 %.idx954.1973, !dbg !75
  %add.ptr58.3 = getelementptr inbounds i8, ptr addrspace(3) %21, i32 %add.ptr58.idx.1, !dbg !75
  store i64 %qk_fetch.sroa.0.0.copyload2041, ptr addrspace(3) %add.ptr58.3, align 8, !dbg !76
  %add.ptr58.1.3 = getelementptr inbounds i8, ptr addrspace(3) %21, i32 %add.ptr58.idx, !dbg !75
  store i64 %qk_fetch.sroa.26.0.copyload2052, ptr addrspace(3) %add.ptr58.1.3, align 8, !dbg !76
  fence syncscope("warp") release, !dbg !78
  tail call void @llvm.mxc.barrier.warp(), !dbg !83
  fence syncscope("warp") acquire, !dbg !84
  %and69 = shl nuw nsw i32 %6, 6
  %mul70 = and i32 %and69, 960
  %shr75 = lshr i32 %6, 5
  %shr84878 = xor i32 %shr45, %and52
  %xor88 = and i32 %shr84878, 1
  %xor79 = xor i32 %shr75, %and41, !dbg !85
  %22 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul70, !dbg !86
  %.idx955 = shl nuw nsw i32 %xor88, 3, !dbg !86
  %23 = getelementptr inbounds i8, ptr addrspace(3) %22, i32 %.idx955, !dbg !86
  %add.ptr94.idx = shl nuw nsw i32 %xor79, 4, !dbg !86
  %add.ptr94 = getelementptr inbounds i8, ptr addrspace(3) %23, i32 %add.ptr94.idx, !dbg !86
  %24 = load <4 x half>, ptr addrspace(3) %add.ptr94, align 8, !dbg !87
  %add76.1 = add nuw nsw i32 %shr75, 2, !dbg !88
  %xor79.1 = xor i32 %add76.1, %and41, !dbg !85
  %add.ptr94.idx.1 = shl nuw nsw i32 %xor79.1, 4, !dbg !86
  %add.ptr94.1 = getelementptr inbounds i8, ptr addrspace(3) %23, i32 %add.ptr94.idx.1, !dbg !86
  %25 = load <4 x half>, ptr addrspace(3) %add.ptr94.1, align 8, !dbg !87
  %add76.2 = add nuw nsw i32 %shr75, 4, !dbg !88
  %xor79.2 = xor i32 %add76.2, %and41, !dbg !85
  %add.ptr94.idx.2 = shl nuw nsw i32 %xor79.2, 4, !dbg !86
  %add.ptr94.2 = getelementptr inbounds i8, ptr addrspace(3) %23, i32 %add.ptr94.idx.2, !dbg !86
  %26 = load <4 x half>, ptr addrspace(3) %add.ptr94.2, align 8, !dbg !87
  %add76.3 = add nuw nsw i32 %shr75, 6, !dbg !88
  %xor79.3 = xor i32 %add76.3, %and41, !dbg !85
  %add.ptr94.idx.3 = shl nuw nsw i32 %xor79.3, 4, !dbg !86
  %add.ptr94.3 = getelementptr inbounds i8, ptr addrspace(3) %23, i32 %add.ptr94.idx.3, !dbg !86
  %27 = load <4 x half>, ptr addrspace(3) %add.ptr94.3, align 8, !dbg !87
  %add71.4 = or disjoint i32 %mul70, 1024, !dbg !89
  %28 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add71.4, !dbg !86
  %xor90.4 = shl nuw nsw i32 %xor88, 3, !dbg !86
  %.idx955.4 = xor i32 %xor90.4, 8, !dbg !86
  %29 = getelementptr inbounds i8, ptr addrspace(3) %28, i32 %.idx955.4, !dbg !86
  %add.ptr94.4 = getelementptr inbounds i8, ptr addrspace(3) %29, i32 %add.ptr94.idx, !dbg !86
  %30 = load <4 x half>, ptr addrspace(3) %add.ptr94.4, align 8, !dbg !87
  %add.ptr94.5 = getelementptr inbounds i8, ptr addrspace(3) %29, i32 %add.ptr94.idx.1, !dbg !86
  %31 = load <4 x half>, ptr addrspace(3) %add.ptr94.5, align 8, !dbg !87
  %add.ptr94.6 = getelementptr inbounds i8, ptr addrspace(3) %29, i32 %add.ptr94.idx.2, !dbg !86
  %32 = load <4 x half>, ptr addrspace(3) %add.ptr94.6, align 8, !dbg !87
  %add.ptr94.7 = getelementptr inbounds i8, ptr addrspace(3) %29, i32 %add.ptr94.idx.3, !dbg !86
  %33 = load <4 x half>, ptr addrspace(3) %add.ptr94.7, align 8, !dbg !87
  fence syncscope("warp") release, !dbg !90
  tail call void @llvm.mxc.barrier.warp(), !dbg !93
  fence syncscope("warp") acquire, !dbg !94
  %conv = zext nneg i32 %0 to i64
  %conv111 = zext nneg i32 %5 to i64
  %mul116 = zext nneg i32 %mul21 to i64
  %.idx = shl nuw nsw i64 %conv111, 8
  %invariant.gep = getelementptr inbounds i8, ptr addrspace(4) %K.coerce, i64 %.idx, !dbg !95
  %invariant.gep922 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %mul116, !dbg !95
  %34 = and i32 %6, 8
  %.idx956 = shl nuw nsw i64 %conv, 18, !dbg !96
  %35 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep922, i64 %.idx956, !dbg !96
  %qk_fetch.sroa.0.0.copyload2038 = load i64, ptr addrspace(4) %35, align 16, !dbg !97
  %qk_fetch.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %35, i64 8, !dbg !97
  %qk_fetch.sroa.26.0.copyload2049 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0..sroa_idx, align 8, !dbg !97
  %36 = shl nuw nsw i32 %34, 9, !dbg !98
  %37 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %36, !dbg !98
  %38 = getelementptr inbounds %struct.__half, ptr addrspace(3) %37, i32 %mul38, !dbg !98
  %39 = getelementptr inbounds i8, ptr addrspace(3) %38, i32 %.idx954, !dbg !98
  %add.ptr159 = getelementptr inbounds i8, ptr addrspace(3) %39, i32 %add.ptr58.idx, !dbg !98
  store i64 %qk_fetch.sroa.0.0.copyload2038, ptr addrspace(3) %add.ptr159, align 8, !dbg !99
  %add.ptr159.1 = getelementptr inbounds i8, ptr addrspace(3) %39, i32 %add.ptr58.idx.1, !dbg !98
  store i64 %qk_fetch.sroa.26.0.copyload2049, ptr addrspace(3) %add.ptr159.1, align 8, !dbg !99
  %gep923.1 = getelementptr inbounds i8, ptr addrspace(4) %35, i64 1024, !dbg !96
  %qk_fetch.sroa.0.0.copyload2042 = load i64, ptr addrspace(4) %gep923.1, align 16, !dbg !97
  %qk_fetch.sroa.26.0.gep923.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %35, i64 1032, !dbg !97
  %qk_fetch.sroa.26.0.copyload2053 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep923.1.sroa_idx, align 8, !dbg !97
  %40 = shl nuw nsw i32 %34, 9, !dbg !98
  %41 = or disjoint i32 %40, 512, !dbg !98
  %42 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %41, !dbg !98
  %43 = getelementptr inbounds %struct.__half, ptr addrspace(3) %42, i32 %mul38, !dbg !98
  %44 = getelementptr inbounds i8, ptr addrspace(3) %43, i32 %.idx954.1973, !dbg !98
  %add.ptr159.1982 = getelementptr inbounds i8, ptr addrspace(3) %44, i32 %add.ptr58.idx, !dbg !98
  store i64 %qk_fetch.sroa.0.0.copyload2042, ptr addrspace(3) %add.ptr159.1982, align 8, !dbg !99
  %add.ptr159.1.1 = getelementptr inbounds i8, ptr addrspace(3) %44, i32 %add.ptr58.idx.1, !dbg !98
  store i64 %qk_fetch.sroa.26.0.copyload2053, ptr addrspace(3) %add.ptr159.1.1, align 8, !dbg !99
  %gep923.2 = getelementptr inbounds i8, ptr addrspace(4) %35, i64 2048, !dbg !96
  %qk_fetch.sroa.0.0.copyload2043 = load i64, ptr addrspace(4) %gep923.2, align 16, !dbg !97
  %qk_fetch.sroa.26.0.gep923.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %35, i64 2056, !dbg !97
  %qk_fetch.sroa.26.0.copyload2054 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep923.2.sroa_idx, align 8, !dbg !97
  %shr150877.2 = and i32 %and52, 1
  %45 = shl nuw nsw i32 %34, 9, !dbg !98
  %46 = or disjoint i32 %45, 1024, !dbg !98
  %47 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %46, !dbg !98
  %48 = getelementptr inbounds %struct.__half, ptr addrspace(3) %47, i32 %mul38, !dbg !98
  %49 = getelementptr inbounds i8, ptr addrspace(3) %48, i32 %.idx954, !dbg !98
  %50 = shl nuw nsw i32 %shr150877.2, 3, !dbg !98
  %add.ptr159.idx.2 = xor i32 %50, 8, !dbg !98
  %add.ptr159.2 = getelementptr inbounds i8, ptr addrspace(3) %49, i32 %add.ptr159.idx.2, !dbg !98
  store i64 %qk_fetch.sroa.0.0.copyload2043, ptr addrspace(3) %add.ptr159.2, align 8, !dbg !99
  %add.ptr159.idx.1.2 = shl nuw nsw i32 %shr150877.2, 3, !dbg !98
  %add.ptr159.1.2 = getelementptr inbounds i8, ptr addrspace(3) %49, i32 %add.ptr159.idx.1.2, !dbg !98
  store i64 %qk_fetch.sroa.26.0.copyload2054, ptr addrspace(3) %add.ptr159.1.2, align 8, !dbg !99
  %gep923.3 = getelementptr inbounds i8, ptr addrspace(4) %35, i64 3072, !dbg !96
  %qk_fetch.sroa.0.0.copyload2044 = load i64, ptr addrspace(4) %gep923.3, align 16, !dbg !97
  %qk_fetch.sroa.26.0.gep923.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %35, i64 3080, !dbg !97
  %qk_fetch.sroa.26.0.copyload2055 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep923.3.sroa_idx, align 8, !dbg !97
  %51 = shl nuw nsw i32 %34, 9, !dbg !98
  %52 = or disjoint i32 %51, 1536, !dbg !98
  %53 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %52, !dbg !98
  %54 = getelementptr inbounds %struct.__half, ptr addrspace(3) %53, i32 %mul38, !dbg !98
  %55 = getelementptr inbounds i8, ptr addrspace(3) %54, i32 %.idx954.1973, !dbg !98
  %add.ptr159.3 = getelementptr inbounds i8, ptr addrspace(3) %55, i32 %add.ptr159.idx.2, !dbg !98
  store i64 %qk_fetch.sroa.0.0.copyload2044, ptr addrspace(3) %add.ptr159.3, align 8, !dbg !99
  %add.ptr159.1.3 = getelementptr inbounds i8, ptr addrspace(3) %55, i32 %add.ptr159.idx.1.2, !dbg !98
  store i64 %qk_fetch.sroa.26.0.copyload2055, ptr addrspace(3) %add.ptr159.1.3, align 8, !dbg !99
  %gep923.4 = getelementptr inbounds i8, ptr addrspace(4) %35, i64 4096, !dbg !96
  %qk_fetch.sroa.0.0.copyload2045 = load i64, ptr addrspace(4) %gep923.4, align 16, !dbg !97
  %qk_fetch.sroa.26.0.gep923.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %35, i64 4104, !dbg !97
  %qk_fetch.sroa.26.0.copyload2056 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep923.4.sroa_idx, align 8, !dbg !97
  %56 = and i32 %and52, 1
  %57 = shl nuw nsw i32 %34, 9, !dbg !98
  %58 = or disjoint i32 %57, 2048, !dbg !98
  %59 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %58, !dbg !98
  %60 = getelementptr inbounds %struct.__half, ptr addrspace(3) %59, i32 %mul38, !dbg !98
  %61 = getelementptr inbounds i8, ptr addrspace(3) %60, i32 %.idx954, !dbg !98
  %add.ptr159.idx.4 = shl nuw nsw i32 %56, 3, !dbg !98
  %add.ptr159.4 = getelementptr inbounds i8, ptr addrspace(3) %61, i32 %add.ptr159.idx.4, !dbg !98
  store i64 %qk_fetch.sroa.0.0.copyload2045, ptr addrspace(3) %add.ptr159.4, align 8, !dbg !99
  %xor155.1.4 = shl nuw nsw i32 %56, 3, !dbg !98
  %add.ptr159.idx.1.4 = xor i32 %xor155.1.4, 8, !dbg !98
  %add.ptr159.1.4 = getelementptr inbounds i8, ptr addrspace(3) %61, i32 %add.ptr159.idx.1.4, !dbg !98
  store i64 %qk_fetch.sroa.26.0.copyload2056, ptr addrspace(3) %add.ptr159.1.4, align 8, !dbg !99
  %gep923.5 = getelementptr inbounds i8, ptr addrspace(4) %35, i64 5120, !dbg !96
  %qk_fetch.sroa.0.0.copyload2046 = load i64, ptr addrspace(4) %gep923.5, align 16, !dbg !97
  %qk_fetch.sroa.26.0.gep923.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %35, i64 5128, !dbg !97
  %qk_fetch.sroa.26.0.copyload2057 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep923.5.sroa_idx, align 8, !dbg !97
  %62 = shl nuw nsw i32 %34, 9, !dbg !98
  %63 = or disjoint i32 %62, 2560, !dbg !98
  %64 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %63, !dbg !98
  %65 = getelementptr inbounds %struct.__half, ptr addrspace(3) %64, i32 %mul38, !dbg !98
  %66 = getelementptr inbounds i8, ptr addrspace(3) %65, i32 %.idx954.1973, !dbg !98
  %add.ptr159.5 = getelementptr inbounds i8, ptr addrspace(3) %66, i32 %add.ptr159.idx.4, !dbg !98
  store i64 %qk_fetch.sroa.0.0.copyload2046, ptr addrspace(3) %add.ptr159.5, align 8, !dbg !99
  %add.ptr159.1.5 = getelementptr inbounds i8, ptr addrspace(3) %66, i32 %add.ptr159.idx.1.4, !dbg !98
  store i64 %qk_fetch.sroa.26.0.copyload2057, ptr addrspace(3) %add.ptr159.1.5, align 8, !dbg !99
  %gep923.6 = getelementptr inbounds i8, ptr addrspace(4) %35, i64 6144, !dbg !96
  %qk_fetch.sroa.0.0.copyload2047 = load i64, ptr addrspace(4) %gep923.6, align 16, !dbg !97
  %qk_fetch.sroa.26.0.gep923.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %35, i64 6152, !dbg !97
  %qk_fetch.sroa.26.0.copyload2058 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep923.6.sroa_idx, align 8, !dbg !97
  %shr150877.6 = and i32 %and52, 1
  %67 = shl nuw nsw i32 %34, 9, !dbg !98
  %68 = or disjoint i32 %67, 3072, !dbg !98
  %69 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %68, !dbg !98
  %70 = getelementptr inbounds %struct.__half, ptr addrspace(3) %69, i32 %mul38, !dbg !98
  %71 = getelementptr inbounds i8, ptr addrspace(3) %70, i32 %.idx954, !dbg !98
  %72 = shl nuw nsw i32 %shr150877.6, 3, !dbg !98
  %add.ptr159.idx.6 = xor i32 %72, 8, !dbg !98
  %add.ptr159.6 = getelementptr inbounds i8, ptr addrspace(3) %71, i32 %add.ptr159.idx.6, !dbg !98
  store i64 %qk_fetch.sroa.0.0.copyload2047, ptr addrspace(3) %add.ptr159.6, align 8, !dbg !99
  %add.ptr159.idx.1.6 = shl nuw nsw i32 %shr150877.6, 3, !dbg !98
  %add.ptr159.1.6 = getelementptr inbounds i8, ptr addrspace(3) %71, i32 %add.ptr159.idx.1.6, !dbg !98
  store i64 %qk_fetch.sroa.26.0.copyload2058, ptr addrspace(3) %add.ptr159.1.6, align 8, !dbg !99
  %gep923.7 = getelementptr inbounds i8, ptr addrspace(4) %35, i64 7168, !dbg !96
  %qk_fetch.sroa.0.0.copyload2048 = load i64, ptr addrspace(4) %gep923.7, align 16, !dbg !97
  %qk_fetch.sroa.26.0.gep923.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %35, i64 7176, !dbg !97
  %qk_fetch.sroa.26.0.copyload2059 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep923.7.sroa_idx, align 8, !dbg !97
  %73 = shl nuw nsw i32 %34, 9, !dbg !98
  %74 = or disjoint i32 %73, 3584, !dbg !98
  %75 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %74, !dbg !98
  %76 = getelementptr inbounds %struct.__half, ptr addrspace(3) %75, i32 %mul38, !dbg !98
  %77 = getelementptr inbounds i8, ptr addrspace(3) %76, i32 %.idx954.1973, !dbg !98
  %add.ptr159.7 = getelementptr inbounds i8, ptr addrspace(3) %77, i32 %add.ptr159.idx.6, !dbg !98
  store i64 %qk_fetch.sroa.0.0.copyload2048, ptr addrspace(3) %add.ptr159.7, align 8, !dbg !99
  %add.ptr159.1.7 = getelementptr inbounds i8, ptr addrspace(3) %77, i32 %add.ptr159.idx.1.6, !dbg !98
  store i64 %qk_fetch.sroa.26.0.copyload2059, ptr addrspace(3) %add.ptr159.1.7, align 8, !dbg !99
  fence syncscope("warp") release, !dbg !100
  tail call void @llvm.mxc.barrier.warp(), !dbg !103
  fence syncscope("warp") acquire, !dbg !104
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr94, align 8, !dbg !105
  %78 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %24, <4 x float> zeroinitializer), !dbg !106
  %add.ptr216.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr94, i32 2048, !dbg !107
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr216.1, align 8, !dbg !105
  %79 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %24, <4 x float> zeroinitializer), !dbg !106
  %k_local.sroa.0.0.copyload.1985 = load <4 x half>, ptr addrspace(3) %add.ptr94.1, align 8, !dbg !105
  %80 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1985, <4 x half> %25, <4 x float> %78), !dbg !106
  %add.ptr216.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr94.1, i32 2048, !dbg !107
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr216.1.1, align 8, !dbg !105
  %81 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %25, <4 x float> %79), !dbg !106
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr94.2, align 8, !dbg !105
  %82 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %26, <4 x float> %80), !dbg !106
  %add.ptr216.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr94.2, i32 2048, !dbg !107
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr216.1.2, align 8, !dbg !105
  %83 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %26, <4 x float> %81), !dbg !106
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr94.3, align 8, !dbg !105
  %84 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %27, <4 x float> %82), !dbg !106
  %add.ptr216.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr94.3, i32 2048, !dbg !107
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr216.1.3, align 8, !dbg !105
  %85 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %27, <4 x float> %83), !dbg !106
  %add193.4 = or disjoint i32 %mul70, 2048
  %86 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add193.4, !dbg !107
  %87 = getelementptr inbounds i8, ptr addrspace(3) %86, i32 %.idx955.4, !dbg !107
  %88 = getelementptr inbounds i8, ptr addrspace(3) %87, i32 %add.ptr94.idx, !dbg !107
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %88, align 8, !dbg !105
  %89 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %30, <4 x float> %84), !dbg !106
  %add.ptr216.1.4 = getelementptr inbounds i8, ptr addrspace(3) %88, i32 2048, !dbg !107
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr216.1.4, align 8, !dbg !105
  %90 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %30, <4 x float> %85), !dbg !106
  %91 = getelementptr inbounds i8, ptr addrspace(3) %87, i32 %add.ptr94.idx.1, !dbg !107
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %91, align 8, !dbg !105
  %92 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %31, <4 x float> %89), !dbg !106
  %add.ptr216.1.5 = getelementptr inbounds i8, ptr addrspace(3) %91, i32 2048, !dbg !107
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr216.1.5, align 8, !dbg !105
  %93 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %31, <4 x float> %90), !dbg !106
  %94 = getelementptr inbounds i8, ptr addrspace(3) %87, i32 %add.ptr94.idx.2, !dbg !107
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %94, align 8, !dbg !105
  %95 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %32, <4 x float> %92), !dbg !106
  %add.ptr216.1.6 = getelementptr inbounds i8, ptr addrspace(3) %94, i32 2048, !dbg !107
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr216.1.6, align 8, !dbg !105
  %96 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %32, <4 x float> %93), !dbg !106
  %97 = getelementptr inbounds i8, ptr addrspace(3) %87, i32 %add.ptr94.idx.3, !dbg !107
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %97, align 8, !dbg !105
  %98 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %33, <4 x float> %95), !dbg !106
  %add.ptr216.1.7 = getelementptr inbounds i8, ptr addrspace(3) %97, i32 2048, !dbg !107
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr216.1.7, align 8, !dbg !105
  %99 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %33, <4 x float> %96), !dbg !106
  %100 = lshr i32 %6, 2
  %mul247 = and i32 %100, 252
  %add248 = add nuw nsw i32 %5, %mul247
  %cmp252.not = icmp sgt i32 %add248, %1, !dbg !108
  %scores.sroa.0.0.vec.extract = extractelement <4 x float> %98, i64 0
  %spec.select = select i1 %cmp252.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract, !dbg !109
  %cmp252.not.1.not = icmp slt i32 %add248, %1, !dbg !108
  %scores.sroa.0.4.vec.extract = extractelement <4 x float> %98, i64 1, !dbg !109
  %condval.0.1 = select i1 %cmp252.not.1.not, float %scores.sroa.0.4.vec.extract, float 0xFFF0000000000000, !dbg !109
  %add250.2 = add nuw nsw i32 %add248, 2, !dbg !110
  %cmp252.not.2 = icmp sgt i32 %add250.2, %1, !dbg !108
  %scores.sroa.0.8.vec.extract = extractelement <4 x float> %98, i64 2, !dbg !109
  %condval.0.2 = select i1 %cmp252.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract, !dbg !109
  %add250.3 = add nuw nsw i32 %add248, 3, !dbg !110
  %cmp252.not.3 = icmp sgt i32 %add250.3, %1, !dbg !108
  %scores.sroa.0.12.vec.extract = extractelement <4 x float> %98, i64 3, !dbg !109
  %condval.0.3 = select i1 %cmp252.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract, !dbg !109
  %add249.1 = add nuw nsw i32 %add248, 16
  %cmp252.not.1986 = icmp sgt i32 %add249.1, %1, !dbg !108
  %scores.sroa.38.16.vec.extract = extractelement <4 x float> %99, i64 0, !dbg !109
  %condval.0.1989 = select i1 %cmp252.not.1986, float 0xFFF0000000000000, float %scores.sroa.38.16.vec.extract, !dbg !109
  %add250.1.1 = add nuw nsw i32 %add248, 17, !dbg !110
  %cmp252.not.1.1 = icmp sgt i32 %add250.1.1, %1, !dbg !108
  %scores.sroa.38.20.vec.extract = extractelement <4 x float> %99, i64 1, !dbg !109
  %condval.0.1.1 = select i1 %cmp252.not.1.1, float 0xFFF0000000000000, float %scores.sroa.38.20.vec.extract, !dbg !109
  %add250.2.1 = add nuw nsw i32 %add248, 18, !dbg !110
  %cmp252.not.2.1 = icmp sgt i32 %add250.2.1, %1, !dbg !108
  %scores.sroa.38.24.vec.extract = extractelement <4 x float> %99, i64 2, !dbg !109
  %condval.0.2.1 = select i1 %cmp252.not.2.1, float 0xFFF0000000000000, float %scores.sroa.38.24.vec.extract, !dbg !109
  %add250.3.1 = add nuw nsw i32 %add248, 19, !dbg !110
  %cmp252.not.3.1 = icmp sgt i32 %add250.3.1, %1, !dbg !108
  %scores.sroa.38.28.vec.extract = extractelement <4 x float> %99, i64 3, !dbg !109
  %condval.0.3.1 = select i1 %cmp252.not.3.1, float 0xFFF0000000000000, float %scores.sroa.38.28.vec.extract, !dbg !109
  %101 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !111
  %102 = tail call contract noundef float @llvm.maxnum.f32(float %101, float %condval.0.1), !dbg !111
  %103 = tail call contract noundef float @llvm.maxnum.f32(float %102, float %condval.0.2), !dbg !111
  %104 = tail call contract noundef float @llvm.maxnum.f32(float %103, float %condval.0.3), !dbg !111
  %105 = tail call contract noundef float @llvm.maxnum.f32(float %104, float %condval.0.1989), !dbg !111
  %106 = tail call contract noundef float @llvm.maxnum.f32(float %105, float %condval.0.1.1), !dbg !111
  %107 = tail call contract noundef float @llvm.maxnum.f32(float %106, float %condval.0.2.1), !dbg !111
  %108 = tail call contract noundef float @llvm.maxnum.f32(float %107, float %condval.0.3.1), !dbg !111
  %109 = bitcast float %108 to i32, !dbg !115
  %110 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !118
  %111 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %110) #10, !dbg !122
  %xor.i.i = xor i32 %111, 32, !dbg !123
  %112 = and i32 %111, -64, !dbg !124
  %and.i.i = add nsw i32 %112, 64, !dbg !124
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !125
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %111, !dbg !126
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !127
  %113 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %109), !dbg !128
  %114 = bitcast i32 %113 to float, !dbg !129
  %115 = tail call contract noundef float @llvm.maxnum.f32(float %108, float %114), !dbg !130
  %116 = bitcast float %115 to i32, !dbg !132
  %117 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !134
  %118 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %117) #10, !dbg !137
  %xor.i.i879 = xor i32 %118, 16, !dbg !138
  %119 = and i32 %118, -64, !dbg !139
  %and.i.i880 = add nsw i32 %119, 64, !dbg !139
  %cmp.not.i.i881 = icmp slt i32 %xor.i.i879, %and.i.i880, !dbg !140
  %cond.i.i882 = select i1 %cmp.not.i.i881, i32 %xor.i.i879, i32 %118, !dbg !141
  %shl.i.i883 = shl i32 %cond.i.i882, 2, !dbg !142
  %120 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i883, i32 %116), !dbg !143
  %121 = bitcast i32 %120 to float, !dbg !144
  %122 = tail call contract noundef float @llvm.maxnum.f32(float %115, float %121), !dbg !145
  %sub = fsub contract float %spec.select, %122, !dbg !147
  %sub310 = fsub contract float %condval.0.1, %122, !dbg !148
  %sub313 = fsub contract float %condval.0.2, %122, !dbg !149
  %sub316 = fsub contract float %condval.0.3, %122, !dbg !150
  %mul321 = fmul contract float %sub, 0x3FC0527DC0000000, !dbg !151
  %mul325 = fmul contract float %sub310, 0x3FC0527DC0000000, !dbg !152
  %mul329 = fmul contract float %sub313, 0x3FC0527DC0000000, !dbg !153
  %mul333 = fmul contract float %sub316, 0x3FC0527DC0000000, !dbg !154
  %add338 = fadd contract float %mul321, 8.000000e+00, !dbg !155
  %add342 = fadd contract float %mul325, 8.000000e+00, !dbg !156
  %add346 = fadd contract float %mul329, 8.000000e+00, !dbg !157
  %add350 = fadd contract float %mul333, 8.000000e+00, !dbg !158
  %cmp.i.i = fcmp contract olt float %add338, -1.260000e+02, !dbg !159
  %cond.i.i884 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !159
  %add.i.i = fadd contract float %add338, %cond.i.i884, !dbg !159
  %123 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !159
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !159
  %mul.i.i = fmul contract float %cond2.i.i, %123, !dbg !159
  %cmp.i.i885 = fcmp contract olt float %add342, -1.260000e+02, !dbg !162
  %cond.i.i886 = select contract i1 %cmp.i.i885, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i887 = fadd contract float %add342, %cond.i.i886, !dbg !162
  %124 = tail call contract float @llvm.exp2.f32(float %add.i.i887), !dbg !162
  %cond2.i.i888 = select contract i1 %cmp.i.i885, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i889 = fmul contract float %cond2.i.i888, %124, !dbg !162
  %cmp.i.i890 = fcmp contract olt float %add346, -1.260000e+02, !dbg !164
  %cond.i.i891 = select contract i1 %cmp.i.i890, float 6.400000e+01, float 0.000000e+00, !dbg !164
  %add.i.i892 = fadd contract float %add346, %cond.i.i891, !dbg !164
  %125 = tail call contract float @llvm.exp2.f32(float %add.i.i892), !dbg !164
  %cond2.i.i893 = select contract i1 %cmp.i.i890, float 0x3BF0000000000000, float 1.000000e+00, !dbg !164
  %mul.i.i894 = fmul contract float %cond2.i.i893, %125, !dbg !164
  %cmp.i.i895 = fcmp contract olt float %add350, -1.260000e+02, !dbg !166
  %cond.i.i896 = select contract i1 %cmp.i.i895, float 6.400000e+01, float 0.000000e+00, !dbg !166
  %add.i.i897 = fadd contract float %add350, %cond.i.i896, !dbg !166
  %126 = tail call contract float @llvm.exp2.f32(float %add.i.i897), !dbg !166
  %cond2.i.i898 = select contract i1 %cmp.i.i895, float 0x3BF0000000000000, float 1.000000e+00, !dbg !166
  %mul.i.i899 = fmul contract float %cond2.i.i898, %126, !dbg !166
  %127 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !168, !noalias !176
  %128 = fptrunc float %mul.i.i to half, !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %127), !dbg !168, !noalias !176
  %129 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %130 = fptrunc float %mul.i.i889 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %129), !dbg !181, !noalias !176
  %131 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !183, !noalias !187
  %132 = fptrunc float %mul.i.i894 to half, !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %131), !dbg !183, !noalias !187
  %133 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !192, !noalias !187
  %134 = fptrunc float %mul.i.i899 to half, !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %133), !dbg !192, !noalias !187
  %135 = insertelement <4 x half> poison, half %128, i64 0, !dbg !194
  %136 = insertelement <4 x half> %135, half %130, i64 1, !dbg !194
  %137 = insertelement <4 x half> %136, half %132, i64 2, !dbg !194
  %138 = insertelement <4 x half> %137, half %134, i64 3, !dbg !194
  %sub.1 = fsub contract float %condval.0.1989, %122, !dbg !147
  %sub310.1 = fsub contract float %condval.0.1.1, %122, !dbg !148
  %sub313.1 = fsub contract float %condval.0.2.1, %122, !dbg !149
  %sub316.1 = fsub contract float %condval.0.3.1, %122, !dbg !150
  %mul321.1 = fmul contract float %sub.1, 0x3FC0527DC0000000, !dbg !151
  %mul325.1 = fmul contract float %sub310.1, 0x3FC0527DC0000000, !dbg !152
  %mul329.1 = fmul contract float %sub313.1, 0x3FC0527DC0000000, !dbg !153
  %mul333.1 = fmul contract float %sub316.1, 0x3FC0527DC0000000, !dbg !154
  %add338.1 = fadd contract float %mul321.1, 8.000000e+00, !dbg !155
  %add342.1 = fadd contract float %mul325.1, 8.000000e+00, !dbg !156
  %add346.1 = fadd contract float %mul329.1, 8.000000e+00, !dbg !157
  %add350.1 = fadd contract float %mul333.1, 8.000000e+00, !dbg !158
  %cmp.i.i.1 = fcmp contract olt float %add338.1, -1.260000e+02, !dbg !159
  %cond.i.i884.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !159
  %add.i.i.1 = fadd contract float %add338.1, %cond.i.i884.1, !dbg !159
  %139 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !159
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !159
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %139, !dbg !159
  %cmp.i.i885.1 = fcmp contract olt float %add342.1, -1.260000e+02, !dbg !162
  %cond.i.i886.1 = select contract i1 %cmp.i.i885.1, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i887.1 = fadd contract float %add342.1, %cond.i.i886.1, !dbg !162
  %140 = tail call contract float @llvm.exp2.f32(float %add.i.i887.1), !dbg !162
  %cond2.i.i888.1 = select contract i1 %cmp.i.i885.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i889.1 = fmul contract float %cond2.i.i888.1, %140, !dbg !162
  %cmp.i.i890.1 = fcmp contract olt float %add346.1, -1.260000e+02, !dbg !164
  %cond.i.i891.1 = select contract i1 %cmp.i.i890.1, float 6.400000e+01, float 0.000000e+00, !dbg !164
  %add.i.i892.1 = fadd contract float %add346.1, %cond.i.i891.1, !dbg !164
  %141 = tail call contract float @llvm.exp2.f32(float %add.i.i892.1), !dbg !164
  %cond2.i.i893.1 = select contract i1 %cmp.i.i890.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !164
  %mul.i.i894.1 = fmul contract float %cond2.i.i893.1, %141, !dbg !164
  %cmp.i.i895.1 = fcmp contract olt float %add350.1, -1.260000e+02, !dbg !166
  %cond.i.i896.1 = select contract i1 %cmp.i.i895.1, float 6.400000e+01, float 0.000000e+00, !dbg !166
  %add.i.i897.1 = fadd contract float %add350.1, %cond.i.i896.1, !dbg !166
  %142 = tail call contract float @llvm.exp2.f32(float %add.i.i897.1), !dbg !166
  %cond2.i.i898.1 = select contract i1 %cmp.i.i895.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !166
  %mul.i.i899.1 = fmul contract float %cond2.i.i898.1, %142, !dbg !166
  %143 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !168, !noalias !176
  %144 = fptrunc float %mul.i.i.1 to half, !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %143), !dbg !168, !noalias !176
  %145 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %146 = fptrunc float %mul.i.i889.1 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %145), !dbg !181, !noalias !176
  %147 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !183, !noalias !187
  %148 = fptrunc float %mul.i.i894.1 to half, !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %147), !dbg !183, !noalias !187
  %149 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !192, !noalias !187
  %150 = fptrunc float %mul.i.i899.1 to half, !dbg !192
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %149), !dbg !192, !noalias !187
  %151 = insertelement <4 x half> poison, half %144, i64 0, !dbg !194
  %152 = insertelement <4 x half> %151, half %146, i64 1, !dbg !194
  %153 = insertelement <4 x half> %152, half %148, i64 2, !dbg !194
  %154 = insertelement <4 x half> %153, half %150, i64 3, !dbg !194
  %conv.i.i = fpext half %128 to float, !dbg !195
  %add388 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !200
  %conv.i.i.1 = fpext half %130 to float, !dbg !195
  %add388.1 = fadd contract float %add388, %conv.i.i.1, !dbg !200
  %conv.i.i.2 = fpext half %132 to float, !dbg !195
  %add388.2 = fadd contract float %add388.1, %conv.i.i.2, !dbg !200
  %conv.i.i.3 = fpext half %134 to float, !dbg !195
  %add388.3 = fadd contract float %add388.2, %conv.i.i.3, !dbg !200
  %conv.i.i.4 = fpext half %144 to float, !dbg !195
  %add388.4 = fadd contract float %add388.3, %conv.i.i.4, !dbg !200
  %conv.i.i.5 = fpext half %146 to float, !dbg !195
  %add388.5 = fadd contract float %add388.4, %conv.i.i.5, !dbg !200
  %conv.i.i.6 = fpext half %148 to float, !dbg !195
  %add388.6 = fadd contract float %add388.5, %conv.i.i.6, !dbg !200
  %conv.i.i.7 = fpext half %150 to float, !dbg !195
  %add388.7 = fadd contract float %add388.6, %conv.i.i.7, !dbg !200
  %155 = bitcast float %add388.7 to i32, !dbg !201
  %156 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !203
  %157 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %156) #10, !dbg !206
  %xor.i.i901 = xor i32 %157, 32, !dbg !207
  %158 = and i32 %157, -64, !dbg !208
  %and.i.i902 = add nsw i32 %158, 64, !dbg !208
  %cmp.not.i.i903 = icmp slt i32 %xor.i.i901, %and.i.i902, !dbg !209
  %cond.i.i904 = select i1 %cmp.not.i.i903, i32 %xor.i.i901, i32 %157, !dbg !210
  %shl.i.i905 = shl i32 %cond.i.i904, 2, !dbg !211
  %159 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i905, i32 %155), !dbg !212
  %160 = bitcast i32 %159 to float, !dbg !213
  %add396 = fadd contract float %add388.7, %160, !dbg !214
  %161 = bitcast float %add396 to i32, !dbg !215
  %162 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !217
  %163 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %162) #10, !dbg !220
  %xor.i.i906 = xor i32 %163, 16, !dbg !221
  %164 = and i32 %163, -64, !dbg !222
  %and.i.i907 = add nsw i32 %164, 64, !dbg !222
  %cmp.not.i.i908 = icmp slt i32 %xor.i.i906, %and.i.i907, !dbg !223
  %cond.i.i909 = select i1 %cmp.not.i.i908, i32 %xor.i.i906, i32 %163, !dbg !224
  %shl.i.i910 = shl i32 %cond.i.i909, 2, !dbg !225
  %165 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i910, i32 %161), !dbg !226
  %166 = bitcast i32 %165 to float, !dbg !227
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %mul417 = shl nuw nsw i64 %conv, 17
  %167 = shl nuw nsw i32 %6, 5
  %168 = and i32 %167, 32512
  %mul424 = zext nneg i32 %168 to i64
  %add420 = or disjoint i64 %mul417, %mul424
  %169 = and i32 %mul21, 56
  %mul438 = zext nneg i32 %169 to i64
  %invariant.gep935 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %mul438
  %mul472 = and i32 %167, 224
  %xor480 = xor i32 %and52, %and41
  %170 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep935, i64 %add420, !dbg !233
  %171 = getelementptr inbounds i8, ptr addrspace(4) %170, i64 %.idx, !dbg !233
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %171, align 16, !dbg !234
  %v_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 2, !dbg !234
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4, !dbg !234
  %v_fetch.sroa.14.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx, align 4, !dbg !234
  %v_fetch.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 6, !dbg !234
  %v_fetch.sroa.18.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 8, !dbg !234
  %v_fetch.sroa.22.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx, align 8, !dbg !234
  %v_fetch.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 10, !dbg !234
  %v_fetch.sroa.26.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 12, !dbg !234
  %v_fetch.sroa.30.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx, align 4, !dbg !234
  %v_fetch.sroa.34.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 14, !dbg !234
  %v_fetch.sroa.34.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx, align 2, !dbg !234, !tbaa !30
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 256, !dbg !233
  %v_fetch.sroa.38.16.copyload = load i16, ptr addrspace(4) %gep.1, align 16, !dbg !234
  %v_fetch.sroa.46.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 258, !dbg !234
  %v_fetch.sroa.46.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.sroa_idx, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 260, !dbg !234
  %v_fetch.sroa.50.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.sroa_idx, align 4, !dbg !234
  %v_fetch.sroa.54.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 262, !dbg !234
  %v_fetch.sroa.54.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.sroa_idx, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 264, !dbg !234
  %v_fetch.sroa.58.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.sroa_idx, align 8, !dbg !234
  %v_fetch.sroa.62.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 266, !dbg !234
  %v_fetch.sroa.62.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.sroa_idx, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 268, !dbg !234
  %v_fetch.sroa.66.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.sroa_idx, align 4, !dbg !234
  %v_fetch.sroa.70.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 270, !dbg !234
  %v_fetch.sroa.70.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.sroa_idx, align 2, !dbg !234, !tbaa !30
  %172 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul472, !dbg !235
  %add.ptr485.idx = shl nuw nsw i32 %xor480, 2, !dbg !235
  %add.ptr485 = getelementptr inbounds i8, ptr addrspace(3) %172, i32 %add.ptr485.idx, !dbg !235
  %v_column.sroa.66.0.insert.ext = zext i16 %v_fetch.sroa.38.16.copyload to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift = shl nuw i32 %v_column.sroa.66.0.insert.ext, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.66.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr485, align 4, !dbg !236, !tbaa !30
  %173 = or disjoint i32 %mul472, 256, !dbg !237
  %174 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %173, !dbg !235
  %xor481.1 = shl nuw nsw i32 %xor480, 2, !dbg !235
  %add.ptr485.idx.1 = xor i32 %xor481.1, 4, !dbg !235
  %add.ptr485.1 = getelementptr inbounds i8, ptr addrspace(3) %174, i32 %add.ptr485.idx.1, !dbg !235
  %v_column.sroa.66.0.insert.ext1432 = zext i16 %v_fetch.sroa.46.16.copyload to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1433 = shl nuw i32 %v_column.sroa.66.0.insert.ext1432, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1308 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1310 = or disjoint i32 %v_column.sroa.66.0.insert.shift1433, %v_column.sroa.0.0.insert.ext1308, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1310, ptr addrspace(3) %add.ptr485.1, align 4, !dbg !236, !tbaa !30
  %175 = or disjoint i32 %mul472, 512, !dbg !237
  %176 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %175, !dbg !235
  %xor481.2 = shl nuw nsw i32 %xor480, 2, !dbg !235
  %add.ptr485.idx.2 = xor i32 %xor481.2, 8, !dbg !235
  %add.ptr485.2 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 %add.ptr485.idx.2, !dbg !235
  %v_column.sroa.66.0.insert.ext1437 = zext i16 %v_fetch.sroa.50.16.copyload to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1438 = shl nuw i32 %v_column.sroa.66.0.insert.ext1437, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1312 = zext i16 %v_fetch.sroa.14.0.copyload to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1314 = or disjoint i32 %v_column.sroa.66.0.insert.shift1438, %v_column.sroa.0.0.insert.ext1312, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1314, ptr addrspace(3) %add.ptr485.2, align 4, !dbg !236, !tbaa !30
  %177 = or disjoint i32 %mul472, 768, !dbg !237
  %178 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %177, !dbg !235
  %xor481.3 = shl nuw nsw i32 %xor480, 2, !dbg !235
  %add.ptr485.idx.3 = xor i32 %xor481.3, 12, !dbg !235
  %add.ptr485.3 = getelementptr inbounds i8, ptr addrspace(3) %178, i32 %add.ptr485.idx.3, !dbg !235
  %v_column.sroa.66.0.insert.ext1442 = zext i16 %v_fetch.sroa.54.16.copyload to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1443 = shl nuw i32 %v_column.sroa.66.0.insert.ext1442, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1316 = zext i16 %v_fetch.sroa.18.0.copyload to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1318 = or disjoint i32 %v_column.sroa.66.0.insert.shift1443, %v_column.sroa.0.0.insert.ext1316, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1318, ptr addrspace(3) %add.ptr485.3, align 4, !dbg !236, !tbaa !30
  %179 = or disjoint i32 %mul472, 1024, !dbg !237
  %180 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %179, !dbg !235
  %xor481.4 = shl nuw nsw i32 %xor480, 2, !dbg !235
  %add.ptr485.idx.4 = xor i32 %xor481.4, 16, !dbg !235
  %add.ptr485.4 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 %add.ptr485.idx.4, !dbg !235
  %v_column.sroa.66.0.insert.ext1447 = zext i16 %v_fetch.sroa.58.16.copyload to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1448 = shl nuw i32 %v_column.sroa.66.0.insert.ext1447, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1320 = zext i16 %v_fetch.sroa.22.0.copyload to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1322 = or disjoint i32 %v_column.sroa.66.0.insert.shift1448, %v_column.sroa.0.0.insert.ext1320, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1322, ptr addrspace(3) %add.ptr485.4, align 4, !dbg !236, !tbaa !30
  %181 = or disjoint i32 %mul472, 1280, !dbg !237
  %182 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %181, !dbg !235
  %xor481.5 = shl nuw nsw i32 %xor480, 2, !dbg !235
  %add.ptr485.idx.5 = xor i32 %xor481.5, 20, !dbg !235
  %add.ptr485.5 = getelementptr inbounds i8, ptr addrspace(3) %182, i32 %add.ptr485.idx.5, !dbg !235
  %v_column.sroa.66.0.insert.ext1452 = zext i16 %v_fetch.sroa.62.16.copyload to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1453 = shl nuw i32 %v_column.sroa.66.0.insert.ext1452, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1324 = zext i16 %v_fetch.sroa.26.0.copyload to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1326 = or disjoint i32 %v_column.sroa.66.0.insert.shift1453, %v_column.sroa.0.0.insert.ext1324, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1326, ptr addrspace(3) %add.ptr485.5, align 4, !dbg !236, !tbaa !30
  %183 = or disjoint i32 %mul472, 1536, !dbg !237
  %184 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %183, !dbg !235
  %xor481.6 = shl nuw nsw i32 %xor480, 2, !dbg !235
  %add.ptr485.idx.6 = xor i32 %xor481.6, 24, !dbg !235
  %add.ptr485.6 = getelementptr inbounds i8, ptr addrspace(3) %184, i32 %add.ptr485.idx.6, !dbg !235
  %v_column.sroa.66.0.insert.ext1457 = zext i16 %v_fetch.sroa.66.16.copyload to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1458 = shl nuw i32 %v_column.sroa.66.0.insert.ext1457, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1328 = zext i16 %v_fetch.sroa.30.0.copyload to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1330 = or disjoint i32 %v_column.sroa.66.0.insert.shift1458, %v_column.sroa.0.0.insert.ext1328, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1330, ptr addrspace(3) %add.ptr485.6, align 4, !dbg !236, !tbaa !30
  %185 = or disjoint i32 %mul472, 1792, !dbg !237
  %186 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %185, !dbg !235
  %xor481.7 = shl nuw nsw i32 %xor480, 2, !dbg !235
  %add.ptr485.idx.7 = xor i32 %xor481.7, 28, !dbg !235
  %add.ptr485.7 = getelementptr inbounds i8, ptr addrspace(3) %186, i32 %add.ptr485.idx.7, !dbg !235
  %v_column.sroa.66.0.insert.ext1462 = zext i16 %v_fetch.sroa.70.16.copyload to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1463 = shl nuw i32 %v_column.sroa.66.0.insert.ext1462, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1332 = zext i16 %v_fetch.sroa.34.0.copyload to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1334 = or disjoint i32 %v_column.sroa.66.0.insert.shift1463, %v_column.sroa.0.0.insert.ext1332, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1334, ptr addrspace(3) %add.ptr485.7, align 4, !dbg !236, !tbaa !30
  %187 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 128, !dbg !233
  %v_fetch.sroa.0.0.copyload1589 = load i16, ptr addrspace(4) %187, align 16, !dbg !234
  %v_fetch.sroa.10.0..sroa_idx1592 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 130, !dbg !234
  %v_fetch.sroa.10.0.copyload1593 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1592, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1601 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 132, !dbg !234
  %v_fetch.sroa.14.0.copyload1602 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1601, align 4, !dbg !234
  %v_fetch.sroa.18.0..sroa_idx1610 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 134, !dbg !234
  %v_fetch.sroa.18.0.copyload1611 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1610, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1619 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 136, !dbg !234
  %v_fetch.sroa.22.0.copyload1620 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1619, align 8, !dbg !234
  %v_fetch.sroa.26.0..sroa_idx1628 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 138, !dbg !234
  %v_fetch.sroa.26.0.copyload1629 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1628, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1637 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 140, !dbg !234
  %v_fetch.sroa.30.0.copyload1638 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1637, align 4, !dbg !234
  %v_fetch.sroa.34.0..sroa_idx1646 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 142, !dbg !234
  %v_fetch.sroa.34.0.copyload1647 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1646, align 2, !dbg !234, !tbaa !30
  %gep.1.1 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 384, !dbg !233
  %v_fetch.sroa.38.16.copyload1658 = load i16, ptr addrspace(4) %gep.1.1, align 16, !dbg !234
  %v_fetch.sroa.46.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 386, !dbg !234
  %v_fetch.sroa.46.16.copyload1661 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.1.sroa_idx, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 388, !dbg !234
  %v_fetch.sroa.50.16.copyload1667 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.1.sroa_idx, align 4, !dbg !234
  %v_fetch.sroa.54.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 390, !dbg !234
  %v_fetch.sroa.54.16.copyload1673 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.1.sroa_idx, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 392, !dbg !234
  %v_fetch.sroa.58.16.copyload1679 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.1.sroa_idx, align 8, !dbg !234
  %v_fetch.sroa.62.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 394, !dbg !234
  %v_fetch.sroa.62.16.copyload1685 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.1.sroa_idx, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 396, !dbg !234
  %v_fetch.sroa.66.16.copyload1691 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.1.sroa_idx, align 4, !dbg !234
  %v_fetch.sroa.70.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 398, !dbg !234
  %v_fetch.sroa.70.16.copyload1697 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.1.sroa_idx, align 2, !dbg !234, !tbaa !30
  %188 = or disjoint i32 %mul472, 2048, !dbg !237
  %189 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %188, !dbg !235
  %add.ptr485.11016 = getelementptr inbounds i8, ptr addrspace(3) %189, i32 %add.ptr485.idx, !dbg !235
  %v_column.sroa.66.0.insert.ext1467 = zext i16 %v_fetch.sroa.38.16.copyload1658 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1468 = shl nuw i32 %v_column.sroa.66.0.insert.ext1467, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1336 = zext i16 %v_fetch.sroa.0.0.copyload1589 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1338 = or disjoint i32 %v_column.sroa.66.0.insert.shift1468, %v_column.sroa.0.0.insert.ext1336, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1338, ptr addrspace(3) %add.ptr485.11016, align 4, !dbg !236, !tbaa !30
  %190 = or disjoint i32 %mul472, 2304, !dbg !237
  %191 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %190, !dbg !235
  %add.ptr485.1.1 = getelementptr inbounds i8, ptr addrspace(3) %191, i32 %add.ptr485.idx.1, !dbg !235
  %v_column.sroa.66.0.insert.ext1472 = zext i16 %v_fetch.sroa.46.16.copyload1661 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1473 = shl nuw i32 %v_column.sroa.66.0.insert.ext1472, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1340 = zext i16 %v_fetch.sroa.10.0.copyload1593 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1342 = or disjoint i32 %v_column.sroa.66.0.insert.shift1473, %v_column.sroa.0.0.insert.ext1340, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1342, ptr addrspace(3) %add.ptr485.1.1, align 4, !dbg !236, !tbaa !30
  %192 = or disjoint i32 %mul472, 2560, !dbg !237
  %193 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %192, !dbg !235
  %add.ptr485.2.1 = getelementptr inbounds i8, ptr addrspace(3) %193, i32 %add.ptr485.idx.2, !dbg !235
  %v_column.sroa.66.0.insert.ext1477 = zext i16 %v_fetch.sroa.50.16.copyload1667 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1478 = shl nuw i32 %v_column.sroa.66.0.insert.ext1477, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1344 = zext i16 %v_fetch.sroa.14.0.copyload1602 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1346 = or disjoint i32 %v_column.sroa.66.0.insert.shift1478, %v_column.sroa.0.0.insert.ext1344, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1346, ptr addrspace(3) %add.ptr485.2.1, align 4, !dbg !236, !tbaa !30
  %194 = or disjoint i32 %mul472, 2816, !dbg !237
  %195 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %194, !dbg !235
  %add.ptr485.3.1 = getelementptr inbounds i8, ptr addrspace(3) %195, i32 %add.ptr485.idx.3, !dbg !235
  %v_column.sroa.66.0.insert.ext1482 = zext i16 %v_fetch.sroa.54.16.copyload1673 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1483 = shl nuw i32 %v_column.sroa.66.0.insert.ext1482, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1348 = zext i16 %v_fetch.sroa.18.0.copyload1611 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1350 = or disjoint i32 %v_column.sroa.66.0.insert.shift1483, %v_column.sroa.0.0.insert.ext1348, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1350, ptr addrspace(3) %add.ptr485.3.1, align 4, !dbg !236, !tbaa !30
  %196 = or disjoint i32 %mul472, 3072, !dbg !237
  %197 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %196, !dbg !235
  %add.ptr485.4.1 = getelementptr inbounds i8, ptr addrspace(3) %197, i32 %add.ptr485.idx.4, !dbg !235
  %v_column.sroa.66.0.insert.ext1487 = zext i16 %v_fetch.sroa.58.16.copyload1679 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1488 = shl nuw i32 %v_column.sroa.66.0.insert.ext1487, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1352 = zext i16 %v_fetch.sroa.22.0.copyload1620 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1354 = or disjoint i32 %v_column.sroa.66.0.insert.shift1488, %v_column.sroa.0.0.insert.ext1352, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1354, ptr addrspace(3) %add.ptr485.4.1, align 4, !dbg !236, !tbaa !30
  %198 = or disjoint i32 %mul472, 3328, !dbg !237
  %199 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %198, !dbg !235
  %add.ptr485.5.1 = getelementptr inbounds i8, ptr addrspace(3) %199, i32 %add.ptr485.idx.5, !dbg !235
  %v_column.sroa.66.0.insert.ext1492 = zext i16 %v_fetch.sroa.62.16.copyload1685 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1493 = shl nuw i32 %v_column.sroa.66.0.insert.ext1492, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1356 = zext i16 %v_fetch.sroa.26.0.copyload1629 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1358 = or disjoint i32 %v_column.sroa.66.0.insert.shift1493, %v_column.sroa.0.0.insert.ext1356, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1358, ptr addrspace(3) %add.ptr485.5.1, align 4, !dbg !236, !tbaa !30
  %200 = or disjoint i32 %mul472, 3584, !dbg !237
  %201 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %200, !dbg !235
  %add.ptr485.6.1 = getelementptr inbounds i8, ptr addrspace(3) %201, i32 %add.ptr485.idx.6, !dbg !235
  %v_column.sroa.66.0.insert.ext1497 = zext i16 %v_fetch.sroa.66.16.copyload1691 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1498 = shl nuw i32 %v_column.sroa.66.0.insert.ext1497, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1360 = zext i16 %v_fetch.sroa.30.0.copyload1638 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1362 = or disjoint i32 %v_column.sroa.66.0.insert.shift1498, %v_column.sroa.0.0.insert.ext1360, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1362, ptr addrspace(3) %add.ptr485.6.1, align 4, !dbg !236, !tbaa !30
  %202 = or disjoint i32 %mul472, 3840, !dbg !237
  %203 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %202, !dbg !235
  %add.ptr485.7.1 = getelementptr inbounds i8, ptr addrspace(3) %203, i32 %add.ptr485.idx.7, !dbg !235
  %v_column.sroa.66.0.insert.ext1502 = zext i16 %v_fetch.sroa.70.16.copyload1697 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1503 = shl nuw i32 %v_column.sroa.66.0.insert.ext1502, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1364 = zext i16 %v_fetch.sroa.34.0.copyload1647 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1366 = or disjoint i32 %v_column.sroa.66.0.insert.shift1503, %v_column.sroa.0.0.insert.ext1364, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1366, ptr addrspace(3) %add.ptr485.7.1, align 4, !dbg !236, !tbaa !30
  %narrow = add nuw nsw i32 %and52, 8
  %xor480.1 = xor i32 %narrow, %and41
  %204 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4096, !dbg !233
  %v_fetch.sroa.0.0.copyload1590 = load i16, ptr addrspace(4) %204, align 16, !dbg !234
  %v_fetch.sroa.10.0..sroa_idx1594 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4098, !dbg !234
  %v_fetch.sroa.10.0.copyload1595 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1594, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1603 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4100, !dbg !234
  %v_fetch.sroa.14.0.copyload1604 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1603, align 4, !dbg !234
  %v_fetch.sroa.18.0..sroa_idx1612 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4102, !dbg !234
  %v_fetch.sroa.18.0.copyload1613 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1612, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1621 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4104, !dbg !234
  %v_fetch.sroa.22.0.copyload1622 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1621, align 8, !dbg !234
  %v_fetch.sroa.26.0..sroa_idx1630 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4106, !dbg !234
  %v_fetch.sroa.26.0.copyload1631 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1630, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1639 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4108, !dbg !234
  %v_fetch.sroa.30.0.copyload1640 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1639, align 4, !dbg !234
  %v_fetch.sroa.34.0..sroa_idx1648 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4110, !dbg !234
  %v_fetch.sroa.34.0.copyload1649 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1648, align 2, !dbg !234, !tbaa !30
  %gep.1.11023 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4352, !dbg !233
  %v_fetch.sroa.38.16.copyload1659 = load i16, ptr addrspace(4) %gep.1.11023, align 16, !dbg !234
  %v_fetch.sroa.46.16.gep.1.11023.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4354, !dbg !234
  %v_fetch.sroa.46.16.copyload1662 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.11023.sroa_idx, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.11023.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4356, !dbg !234
  %v_fetch.sroa.50.16.copyload1668 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.11023.sroa_idx, align 4, !dbg !234
  %v_fetch.sroa.54.16.gep.1.11023.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4358, !dbg !234
  %v_fetch.sroa.54.16.copyload1674 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.11023.sroa_idx, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.11023.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4360, !dbg !234
  %v_fetch.sroa.58.16.copyload1680 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.11023.sroa_idx, align 8, !dbg !234
  %v_fetch.sroa.62.16.gep.1.11023.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4362, !dbg !234
  %v_fetch.sroa.62.16.copyload1686 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.11023.sroa_idx, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.11023.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4364, !dbg !234
  %v_fetch.sroa.66.16.copyload1692 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.11023.sroa_idx, align 4, !dbg !234
  %v_fetch.sroa.70.16.gep.1.11023.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4366, !dbg !234
  %v_fetch.sroa.70.16.copyload1698 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.11023.sroa_idx, align 2, !dbg !234, !tbaa !30
  %add.ptr485.idx.11029 = shl nuw nsw i32 %xor480.1, 2, !dbg !235
  %add.ptr485.11030 = getelementptr inbounds i8, ptr addrspace(3) %172, i32 %add.ptr485.idx.11029, !dbg !235
  %v_column.sroa.66.0.insert.ext1507 = zext i16 %v_fetch.sroa.38.16.copyload1659 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1508 = shl nuw i32 %v_column.sroa.66.0.insert.ext1507, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1368 = zext i16 %v_fetch.sroa.0.0.copyload1590 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1370 = or disjoint i32 %v_column.sroa.66.0.insert.shift1508, %v_column.sroa.0.0.insert.ext1368, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1370, ptr addrspace(3) %add.ptr485.11030, align 4, !dbg !236, !tbaa !30
  %xor481.1.11035 = shl nuw nsw i32 %xor480.1, 2, !dbg !235
  %add.ptr485.idx.1.11036 = xor i32 %xor481.1.11035, 4, !dbg !235
  %add.ptr485.1.11037 = getelementptr inbounds i8, ptr addrspace(3) %174, i32 %add.ptr485.idx.1.11036, !dbg !235
  %v_column.sroa.66.0.insert.ext1512 = zext i16 %v_fetch.sroa.46.16.copyload1662 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1513 = shl nuw i32 %v_column.sroa.66.0.insert.ext1512, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1372 = zext i16 %v_fetch.sroa.10.0.copyload1595 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1374 = or disjoint i32 %v_column.sroa.66.0.insert.shift1513, %v_column.sroa.0.0.insert.ext1372, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1374, ptr addrspace(3) %add.ptr485.1.11037, align 4, !dbg !236, !tbaa !30
  %xor481.2.11042 = shl nuw nsw i32 %xor480.1, 2, !dbg !235
  %add.ptr485.idx.2.11043 = xor i32 %xor481.2.11042, 8, !dbg !235
  %add.ptr485.2.11044 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 %add.ptr485.idx.2.11043, !dbg !235
  %v_column.sroa.66.0.insert.ext1517 = zext i16 %v_fetch.sroa.50.16.copyload1668 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1518 = shl nuw i32 %v_column.sroa.66.0.insert.ext1517, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1376 = zext i16 %v_fetch.sroa.14.0.copyload1604 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1378 = or disjoint i32 %v_column.sroa.66.0.insert.shift1518, %v_column.sroa.0.0.insert.ext1376, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1378, ptr addrspace(3) %add.ptr485.2.11044, align 4, !dbg !236, !tbaa !30
  %xor481.3.11049 = shl nuw nsw i32 %xor480.1, 2, !dbg !235
  %add.ptr485.idx.3.11050 = xor i32 %xor481.3.11049, 12, !dbg !235
  %add.ptr485.3.11051 = getelementptr inbounds i8, ptr addrspace(3) %178, i32 %add.ptr485.idx.3.11050, !dbg !235
  %v_column.sroa.66.0.insert.ext1522 = zext i16 %v_fetch.sroa.54.16.copyload1674 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1523 = shl nuw i32 %v_column.sroa.66.0.insert.ext1522, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1380 = zext i16 %v_fetch.sroa.18.0.copyload1613 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1382 = or disjoint i32 %v_column.sroa.66.0.insert.shift1523, %v_column.sroa.0.0.insert.ext1380, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1382, ptr addrspace(3) %add.ptr485.3.11051, align 4, !dbg !236, !tbaa !30
  %xor481.4.11056 = shl nuw nsw i32 %xor480.1, 2, !dbg !235
  %add.ptr485.idx.4.11057 = xor i32 %xor481.4.11056, 16, !dbg !235
  %add.ptr485.4.11058 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 %add.ptr485.idx.4.11057, !dbg !235
  %v_column.sroa.66.0.insert.ext1527 = zext i16 %v_fetch.sroa.58.16.copyload1680 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1528 = shl nuw i32 %v_column.sroa.66.0.insert.ext1527, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1384 = zext i16 %v_fetch.sroa.22.0.copyload1622 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1386 = or disjoint i32 %v_column.sroa.66.0.insert.shift1528, %v_column.sroa.0.0.insert.ext1384, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1386, ptr addrspace(3) %add.ptr485.4.11058, align 4, !dbg !236, !tbaa !30
  %xor481.5.11063 = shl nuw nsw i32 %xor480.1, 2, !dbg !235
  %add.ptr485.idx.5.11064 = xor i32 %xor481.5.11063, 20, !dbg !235
  %add.ptr485.5.11065 = getelementptr inbounds i8, ptr addrspace(3) %182, i32 %add.ptr485.idx.5.11064, !dbg !235
  %v_column.sroa.66.0.insert.ext1532 = zext i16 %v_fetch.sroa.62.16.copyload1686 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1533 = shl nuw i32 %v_column.sroa.66.0.insert.ext1532, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1388 = zext i16 %v_fetch.sroa.26.0.copyload1631 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1390 = or disjoint i32 %v_column.sroa.66.0.insert.shift1533, %v_column.sroa.0.0.insert.ext1388, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1390, ptr addrspace(3) %add.ptr485.5.11065, align 4, !dbg !236, !tbaa !30
  %xor481.6.11070 = shl nuw nsw i32 %xor480.1, 2, !dbg !235
  %add.ptr485.idx.6.11071 = xor i32 %xor481.6.11070, 24, !dbg !235
  %add.ptr485.6.11072 = getelementptr inbounds i8, ptr addrspace(3) %184, i32 %add.ptr485.idx.6.11071, !dbg !235
  %v_column.sroa.66.0.insert.ext1537 = zext i16 %v_fetch.sroa.66.16.copyload1692 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1538 = shl nuw i32 %v_column.sroa.66.0.insert.ext1537, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1392 = zext i16 %v_fetch.sroa.30.0.copyload1640 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1394 = or disjoint i32 %v_column.sroa.66.0.insert.shift1538, %v_column.sroa.0.0.insert.ext1392, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1394, ptr addrspace(3) %add.ptr485.6.11072, align 4, !dbg !236, !tbaa !30
  %xor481.7.11077 = shl nuw nsw i32 %xor480.1, 2, !dbg !235
  %add.ptr485.idx.7.11078 = xor i32 %xor481.7.11077, 28, !dbg !235
  %add.ptr485.7.11079 = getelementptr inbounds i8, ptr addrspace(3) %186, i32 %add.ptr485.idx.7.11078, !dbg !235
  %v_column.sroa.66.0.insert.ext1542 = zext i16 %v_fetch.sroa.70.16.copyload1698 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1543 = shl nuw i32 %v_column.sroa.66.0.insert.ext1542, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1396 = zext i16 %v_fetch.sroa.34.0.copyload1649 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1398 = or disjoint i32 %v_column.sroa.66.0.insert.shift1543, %v_column.sroa.0.0.insert.ext1396, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1398, ptr addrspace(3) %add.ptr485.7.11079, align 4, !dbg !236, !tbaa !30
  %205 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4224, !dbg !233
  %v_fetch.sroa.0.0.copyload1591 = load i16, ptr addrspace(4) %205, align 16, !dbg !234
  %v_fetch.sroa.10.0..sroa_idx1596 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4226, !dbg !234
  %v_fetch.sroa.10.0.copyload1597 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1596, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1605 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4228, !dbg !234
  %v_fetch.sroa.14.0.copyload1606 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1605, align 4, !dbg !234
  %v_fetch.sroa.18.0..sroa_idx1614 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4230, !dbg !234
  %v_fetch.sroa.18.0.copyload1615 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1614, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1623 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4232, !dbg !234
  %v_fetch.sroa.22.0.copyload1624 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1623, align 8, !dbg !234
  %v_fetch.sroa.26.0..sroa_idx1632 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4234, !dbg !234
  %v_fetch.sroa.26.0.copyload1633 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1632, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1641 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4236, !dbg !234
  %v_fetch.sroa.30.0.copyload1642 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1641, align 4, !dbg !234
  %v_fetch.sroa.34.0..sroa_idx1650 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4238, !dbg !234
  %v_fetch.sroa.34.0.copyload1651 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1650, align 2, !dbg !234, !tbaa !30
  %gep.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4480, !dbg !233
  %v_fetch.sroa.38.16.copyload1660 = load i16, ptr addrspace(4) %gep.1.1.1, align 16, !dbg !234
  %v_fetch.sroa.46.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4482, !dbg !234
  %v_fetch.sroa.46.16.copyload1663 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.1.1.sroa_idx, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4484, !dbg !234
  %v_fetch.sroa.50.16.copyload1669 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.1.1.sroa_idx, align 4, !dbg !234
  %v_fetch.sroa.54.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4486, !dbg !234
  %v_fetch.sroa.54.16.copyload1675 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.1.1.sroa_idx, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4488, !dbg !234
  %v_fetch.sroa.58.16.copyload1681 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.1.1.sroa_idx, align 8, !dbg !234
  %v_fetch.sroa.62.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4490, !dbg !234
  %v_fetch.sroa.62.16.copyload1687 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.1.1.sroa_idx, align 2, !dbg !234, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4492, !dbg !234
  %v_fetch.sroa.66.16.copyload1693 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.1.1.sroa_idx, align 4, !dbg !234
  %v_fetch.sroa.70.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %171, i64 4494, !dbg !234
  %v_fetch.sroa.70.16.copyload1699 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.1.1.sroa_idx, align 2, !dbg !234, !tbaa !30
  %add.ptr485.11016.1 = getelementptr inbounds i8, ptr addrspace(3) %189, i32 %add.ptr485.idx.11029, !dbg !235
  %v_column.sroa.66.0.insert.ext1547 = zext i16 %v_fetch.sroa.38.16.copyload1660 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1548 = shl nuw i32 %v_column.sroa.66.0.insert.ext1547, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1400 = zext i16 %v_fetch.sroa.0.0.copyload1591 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1402 = or disjoint i32 %v_column.sroa.66.0.insert.shift1548, %v_column.sroa.0.0.insert.ext1400, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1402, ptr addrspace(3) %add.ptr485.11016.1, align 4, !dbg !236, !tbaa !30
  %add.ptr485.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %191, i32 %add.ptr485.idx.1.11036, !dbg !235
  %v_column.sroa.66.0.insert.ext1552 = zext i16 %v_fetch.sroa.46.16.copyload1663 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1553 = shl nuw i32 %v_column.sroa.66.0.insert.ext1552, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1404 = zext i16 %v_fetch.sroa.10.0.copyload1597 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1406 = or disjoint i32 %v_column.sroa.66.0.insert.shift1553, %v_column.sroa.0.0.insert.ext1404, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1406, ptr addrspace(3) %add.ptr485.1.1.1, align 4, !dbg !236, !tbaa !30
  %add.ptr485.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %193, i32 %add.ptr485.idx.2.11043, !dbg !235
  %v_column.sroa.66.0.insert.ext1557 = zext i16 %v_fetch.sroa.50.16.copyload1669 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1558 = shl nuw i32 %v_column.sroa.66.0.insert.ext1557, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1408 = zext i16 %v_fetch.sroa.14.0.copyload1606 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1410 = or disjoint i32 %v_column.sroa.66.0.insert.shift1558, %v_column.sroa.0.0.insert.ext1408, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1410, ptr addrspace(3) %add.ptr485.2.1.1, align 4, !dbg !236, !tbaa !30
  %add.ptr485.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %195, i32 %add.ptr485.idx.3.11050, !dbg !235
  %v_column.sroa.66.0.insert.ext1562 = zext i16 %v_fetch.sroa.54.16.copyload1675 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1563 = shl nuw i32 %v_column.sroa.66.0.insert.ext1562, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1412 = zext i16 %v_fetch.sroa.18.0.copyload1615 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1414 = or disjoint i32 %v_column.sroa.66.0.insert.shift1563, %v_column.sroa.0.0.insert.ext1412, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1414, ptr addrspace(3) %add.ptr485.3.1.1, align 4, !dbg !236, !tbaa !30
  %add.ptr485.4.1.1 = getelementptr inbounds i8, ptr addrspace(3) %197, i32 %add.ptr485.idx.4.11057, !dbg !235
  %v_column.sroa.66.0.insert.ext1567 = zext i16 %v_fetch.sroa.58.16.copyload1681 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1568 = shl nuw i32 %v_column.sroa.66.0.insert.ext1567, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1416 = zext i16 %v_fetch.sroa.22.0.copyload1624 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1418 = or disjoint i32 %v_column.sroa.66.0.insert.shift1568, %v_column.sroa.0.0.insert.ext1416, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1418, ptr addrspace(3) %add.ptr485.4.1.1, align 4, !dbg !236, !tbaa !30
  %add.ptr485.5.1.1 = getelementptr inbounds i8, ptr addrspace(3) %199, i32 %add.ptr485.idx.5.11064, !dbg !235
  %v_column.sroa.66.0.insert.ext1572 = zext i16 %v_fetch.sroa.62.16.copyload1687 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1573 = shl nuw i32 %v_column.sroa.66.0.insert.ext1572, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1420 = zext i16 %v_fetch.sroa.26.0.copyload1633 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1422 = or disjoint i32 %v_column.sroa.66.0.insert.shift1573, %v_column.sroa.0.0.insert.ext1420, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1422, ptr addrspace(3) %add.ptr485.5.1.1, align 4, !dbg !236, !tbaa !30
  %add.ptr485.6.1.1 = getelementptr inbounds i8, ptr addrspace(3) %201, i32 %add.ptr485.idx.6.11071, !dbg !235
  %v_column.sroa.66.0.insert.ext1577 = zext i16 %v_fetch.sroa.66.16.copyload1693 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1578 = shl nuw i32 %v_column.sroa.66.0.insert.ext1577, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1424 = zext i16 %v_fetch.sroa.30.0.copyload1642 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1426 = or disjoint i32 %v_column.sroa.66.0.insert.shift1578, %v_column.sroa.0.0.insert.ext1424, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1426, ptr addrspace(3) %add.ptr485.6.1.1, align 4, !dbg !236, !tbaa !30
  %add.ptr485.7.1.1 = getelementptr inbounds i8, ptr addrspace(3) %203, i32 %add.ptr485.idx.7.11078, !dbg !235
  %v_column.sroa.66.0.insert.ext1582 = zext i16 %v_fetch.sroa.70.16.copyload1699 to i32, !dbg !236
  %v_column.sroa.66.0.insert.shift1583 = shl nuw i32 %v_column.sroa.66.0.insert.ext1582, 16, !dbg !236
  %v_column.sroa.0.0.insert.ext1428 = zext i16 %v_fetch.sroa.34.0.copyload1651 to i32, !dbg !236
  %v_column.sroa.0.0.insert.insert1430 = or disjoint i32 %v_column.sroa.66.0.insert.shift1583, %v_column.sroa.0.0.insert.ext1428, !dbg !236
  store i32 %v_column.sroa.0.0.insert.insert1430, ptr addrspace(3) %add.ptr485.7.1.1, align 4, !dbg !236, !tbaa !30
  fence syncscope("warp") release, !dbg !238
  tail call void @llvm.mxc.barrier.warp(), !dbg !241
  fence syncscope("warp") acquire, !dbg !242
  %and526 = shl nuw nsw i32 %6, 8
  %mul527 = and i32 %and526, 1792
  %mul534 = and i32 %8, 32
  %mul539 = and i32 %and52, 126
  %add535 = or disjoint i32 %mul527, %mul534
  %xor547 = xor i32 %shr53, %and41
  %206 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535
  %xor550 = xor i32 %xor547, %mul539, !dbg !243
  %add.ptr554.idx = shl nuw nsw i32 %xor550, 2, !dbg !244
  %add.ptr554 = getelementptr inbounds i8, ptr addrspace(3) %206, i32 %add.ptr554.idx, !dbg !244
  %207 = load i32, ptr addrspace(3) %add.ptr554, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.0.0.vec.insert = insertelement <2 x i32> poison, i32 %207, i64 0, !dbg !245
  %add541.1 = or i32 %and52, 1, !dbg !246
  %xor550.1 = xor i32 %xor547, %add541.1, !dbg !243
  %add.ptr554.idx.1 = shl nuw nsw i32 %xor550.1, 2, !dbg !244
  %add.ptr554.1 = getelementptr inbounds i8, ptr addrspace(3) %206, i32 %add.ptr554.idx.1, !dbg !244
  %208 = load i32, ptr addrspace(3) %add.ptr554.1, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.0.4.vec.insert = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert, i32 %208, i64 1, !dbg !245
  %add530.1 = or disjoint i32 %mul527, %mul534
  %add535.1 = or disjoint i32 %add530.1, 64
  %add546.1 = or disjoint i32 %shr53, 2
  %xor547.1 = xor i32 %add546.1, %and41
  %209 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.1
  %xor550.11081 = xor i32 %xor547.1, %mul539, !dbg !243
  %add.ptr554.idx.11082 = shl nuw nsw i32 %xor550.11081, 2, !dbg !244
  %add.ptr554.11083 = getelementptr inbounds i8, ptr addrspace(3) %209, i32 %add.ptr554.idx.11082, !dbg !244
  %210 = load i32, ptr addrspace(3) %add.ptr554.11083, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.14.8.vec.insert = insertelement <2 x i32> poison, i32 %210, i64 0, !dbg !245
  %xor550.1.1 = xor i32 %xor547.1, %add541.1, !dbg !243
  %add.ptr554.idx.1.1 = shl nuw nsw i32 %xor550.1.1, 2, !dbg !244
  %add.ptr554.1.1 = getelementptr inbounds i8, ptr addrspace(3) %209, i32 %add.ptr554.idx.1.1, !dbg !244
  %211 = load i32, ptr addrspace(3) %add.ptr554.1.1, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.14.12.vec.insert = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert, i32 %211, i64 1, !dbg !245
  %add530.2 = or disjoint i32 %mul527, %mul534
  %add535.2 = or disjoint i32 %add530.2, 128
  %add546.2 = or disjoint i32 %shr53, 4
  %xor547.2 = xor i32 %add546.2, %and41
  %212 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.2
  %xor550.2 = xor i32 %xor547.2, %mul539, !dbg !243
  %add.ptr554.idx.2 = shl nuw nsw i32 %xor550.2, 2, !dbg !244
  %add.ptr554.2 = getelementptr inbounds i8, ptr addrspace(3) %212, i32 %add.ptr554.idx.2, !dbg !244
  %213 = load i32, ptr addrspace(3) %add.ptr554.2, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.26.16.vec.insert = insertelement <2 x i32> poison, i32 %213, i64 0, !dbg !245
  %xor550.1.2 = xor i32 %xor547.2, %add541.1, !dbg !243
  %add.ptr554.idx.1.2 = shl nuw nsw i32 %xor550.1.2, 2, !dbg !244
  %add.ptr554.1.2 = getelementptr inbounds i8, ptr addrspace(3) %212, i32 %add.ptr554.idx.1.2, !dbg !244
  %214 = load i32, ptr addrspace(3) %add.ptr554.1.2, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.26.20.vec.insert = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert, i32 %214, i64 1, !dbg !245
  %add530.3 = or disjoint i32 %mul527, %mul534
  %add535.3 = or disjoint i32 %add530.3, 192
  %add546.3 = or disjoint i32 %shr53, 6
  %xor547.3 = xor i32 %add546.3, %and41
  %215 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.3
  %xor550.3 = xor i32 %xor547.3, %mul539, !dbg !243
  %add.ptr554.idx.3 = shl nuw nsw i32 %xor550.3, 2, !dbg !244
  %add.ptr554.3 = getelementptr inbounds i8, ptr addrspace(3) %215, i32 %add.ptr554.idx.3, !dbg !244
  %216 = load i32, ptr addrspace(3) %add.ptr554.3, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.38.24.vec.insert = insertelement <2 x i32> poison, i32 %216, i64 0, !dbg !245
  %xor550.1.3 = xor i32 %xor547.3, %add541.1, !dbg !243
  %add.ptr554.idx.1.3 = shl nuw nsw i32 %xor550.1.3, 2, !dbg !244
  %add.ptr554.1.3 = getelementptr inbounds i8, ptr addrspace(3) %215, i32 %add.ptr554.idx.1.3, !dbg !244
  %217 = load i32, ptr addrspace(3) %add.ptr554.1.3, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.38.28.vec.insert = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert, i32 %217, i64 1, !dbg !245
  %218 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert to <4 x half>, !dbg !247
  %219 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %218, <4 x half> %138, <4 x float> zeroinitializer), !dbg !248
  %220 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert to <4 x half>, !dbg !247
  %221 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %220, <4 x half> %138, <4 x float> zeroinitializer), !dbg !248
  %222 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert to <4 x half>, !dbg !247
  %223 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %222, <4 x half> %138, <4 x float> zeroinitializer), !dbg !248
  %224 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert to <4 x half>, !dbg !247
  %225 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %224, <4 x half> %138, <4 x float> zeroinitializer), !dbg !248
  %add528.1 = or disjoint i32 %mul527, %mul534
  %add535.11086 = or disjoint i32 %add528.1, 2048
  %226 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.11086
  %add.ptr554.11090 = getelementptr inbounds i8, ptr addrspace(3) %226, i32 %add.ptr554.idx, !dbg !244
  %227 = load i32, ptr addrspace(3) %add.ptr554.11090, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1248 = insertelement <2 x i32> poison, i32 %227, i64 0, !dbg !245
  %add.ptr554.1.11094 = getelementptr inbounds i8, ptr addrspace(3) %226, i32 %add.ptr554.idx.1, !dbg !244
  %228 = load i32, ptr addrspace(3) %add.ptr554.1.11094, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1254 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1248, i32 %228, i64 1, !dbg !245
  %add530.1.1 = or disjoint i32 %mul527, %mul534
  %add535.1.1 = or disjoint i32 %add530.1.1, 2112
  %229 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.1.1
  %add.ptr554.11083.1 = getelementptr inbounds i8, ptr addrspace(3) %229, i32 %add.ptr554.idx.11082, !dbg !244
  %230 = load i32, ptr addrspace(3) %add.ptr554.11083.1, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1264 = insertelement <2 x i32> poison, i32 %230, i64 0, !dbg !245
  %add.ptr554.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %229, i32 %add.ptr554.idx.1.1, !dbg !244
  %231 = load i32, ptr addrspace(3) %add.ptr554.1.1.1, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1270 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1264, i32 %231, i64 1, !dbg !245
  %add530.2.1 = or disjoint i32 %mul527, %mul534
  %add535.2.1 = or disjoint i32 %add530.2.1, 2176
  %232 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.2.1
  %add.ptr554.2.1 = getelementptr inbounds i8, ptr addrspace(3) %232, i32 %add.ptr554.idx.2, !dbg !244
  %233 = load i32, ptr addrspace(3) %add.ptr554.2.1, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1280 = insertelement <2 x i32> poison, i32 %233, i64 0, !dbg !245
  %add.ptr554.1.2.1 = getelementptr inbounds i8, ptr addrspace(3) %232, i32 %add.ptr554.idx.1.2, !dbg !244
  %234 = load i32, ptr addrspace(3) %add.ptr554.1.2.1, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1286 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1280, i32 %234, i64 1, !dbg !245
  %add530.3.1 = or disjoint i32 %mul527, %mul534
  %add535.3.1 = or disjoint i32 %add530.3.1, 2240
  %235 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.3.1
  %add.ptr554.3.1 = getelementptr inbounds i8, ptr addrspace(3) %235, i32 %add.ptr554.idx.3, !dbg !244
  %236 = load i32, ptr addrspace(3) %add.ptr554.3.1, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1296 = insertelement <2 x i32> poison, i32 %236, i64 0, !dbg !245
  %add.ptr554.1.3.1 = getelementptr inbounds i8, ptr addrspace(3) %235, i32 %add.ptr554.idx.1.3, !dbg !244
  %237 = load i32, ptr addrspace(3) %add.ptr554.1.3.1, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1302 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1296, i32 %237, i64 1, !dbg !245
  %238 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1254 to <4 x half>, !dbg !247
  %239 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %238, <4 x half> %138, <4 x float> zeroinitializer), !dbg !248
  %240 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1270 to <4 x half>, !dbg !247
  %241 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %240, <4 x half> %138, <4 x float> zeroinitializer), !dbg !248
  %242 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1286 to <4 x half>, !dbg !247
  %243 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %242, <4 x half> %138, <4 x float> zeroinitializer), !dbg !248
  %244 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1302 to <4 x half>, !dbg !247
  %245 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %244, <4 x half> %138, <4 x float> zeroinitializer), !dbg !248
  %add540.1 = add nuw nsw i32 %mul539, 8
  %xor550.11101 = xor i32 %xor547, %add540.1, !dbg !243
  %add.ptr554.idx.11102 = shl nuw nsw i32 %xor550.11101, 2, !dbg !244
  %add.ptr554.11103 = getelementptr inbounds i8, ptr addrspace(3) %206, i32 %add.ptr554.idx.11102, !dbg !244
  %246 = load i32, ptr addrspace(3) %add.ptr554.11103, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1250 = insertelement <2 x i32> poison, i32 %246, i64 0, !dbg !245
  %add541.1.11104 = add nuw nsw i32 %mul539, 9, !dbg !246
  %xor550.1.11105 = xor i32 %xor547, %add541.1.11104, !dbg !243
  %add.ptr554.idx.1.11106 = shl nuw nsw i32 %xor550.1.11105, 2, !dbg !244
  %add.ptr554.1.11107 = getelementptr inbounds i8, ptr addrspace(3) %206, i32 %add.ptr554.idx.1.11106, !dbg !244
  %247 = load i32, ptr addrspace(3) %add.ptr554.1.11107, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1256 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1250, i32 %247, i64 1, !dbg !245
  %xor550.11081.11113 = xor i32 %xor547.1, %add540.1, !dbg !243
  %add.ptr554.idx.11082.11114 = shl nuw nsw i32 %xor550.11081.11113, 2, !dbg !244
  %add.ptr554.11083.11115 = getelementptr inbounds i8, ptr addrspace(3) %209, i32 %add.ptr554.idx.11082.11114, !dbg !244
  %248 = load i32, ptr addrspace(3) %add.ptr554.11083.11115, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1266 = insertelement <2 x i32> poison, i32 %248, i64 0, !dbg !245
  %xor550.1.1.11118 = xor i32 %xor547.1, %add541.1.11104, !dbg !243
  %add.ptr554.idx.1.1.11119 = shl nuw nsw i32 %xor550.1.1.11118, 2, !dbg !244
  %add.ptr554.1.1.11120 = getelementptr inbounds i8, ptr addrspace(3) %209, i32 %add.ptr554.idx.1.1.11119, !dbg !244
  %249 = load i32, ptr addrspace(3) %add.ptr554.1.1.11120, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1272 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1266, i32 %249, i64 1, !dbg !245
  %xor550.2.11127 = xor i32 %xor547.2, %add540.1, !dbg !243
  %add.ptr554.idx.2.11128 = shl nuw nsw i32 %xor550.2.11127, 2, !dbg !244
  %add.ptr554.2.11129 = getelementptr inbounds i8, ptr addrspace(3) %212, i32 %add.ptr554.idx.2.11128, !dbg !244
  %250 = load i32, ptr addrspace(3) %add.ptr554.2.11129, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1282 = insertelement <2 x i32> poison, i32 %250, i64 0, !dbg !245
  %xor550.1.2.11132 = xor i32 %xor547.2, %add541.1.11104, !dbg !243
  %add.ptr554.idx.1.2.11133 = shl nuw nsw i32 %xor550.1.2.11132, 2, !dbg !244
  %add.ptr554.1.2.11134 = getelementptr inbounds i8, ptr addrspace(3) %212, i32 %add.ptr554.idx.1.2.11133, !dbg !244
  %251 = load i32, ptr addrspace(3) %add.ptr554.1.2.11134, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1288 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1282, i32 %251, i64 1, !dbg !245
  %xor550.3.11141 = xor i32 %xor547.3, %add540.1, !dbg !243
  %add.ptr554.idx.3.11142 = shl nuw nsw i32 %xor550.3.11141, 2, !dbg !244
  %add.ptr554.3.11143 = getelementptr inbounds i8, ptr addrspace(3) %215, i32 %add.ptr554.idx.3.11142, !dbg !244
  %252 = load i32, ptr addrspace(3) %add.ptr554.3.11143, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1298 = insertelement <2 x i32> poison, i32 %252, i64 0, !dbg !245
  %xor550.1.3.11146 = xor i32 %xor547.3, %add541.1.11104, !dbg !243
  %add.ptr554.idx.1.3.11147 = shl nuw nsw i32 %xor550.1.3.11146, 2, !dbg !244
  %add.ptr554.1.3.11148 = getelementptr inbounds i8, ptr addrspace(3) %215, i32 %add.ptr554.idx.1.3.11147, !dbg !244
  %253 = load i32, ptr addrspace(3) %add.ptr554.1.3.11148, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1304 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1298, i32 %253, i64 1, !dbg !245
  %254 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1256 to <4 x half>, !dbg !247
  %255 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %254, <4 x half> %154, <4 x float> %219), !dbg !248
  %256 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1272 to <4 x half>, !dbg !247
  %257 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %256, <4 x half> %154, <4 x float> %221), !dbg !248
  %258 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1288 to <4 x half>, !dbg !247
  %259 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %258, <4 x half> %154, <4 x float> %223), !dbg !248
  %260 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1304 to <4 x half>, !dbg !247
  %261 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %260, <4 x half> %154, <4 x float> %225), !dbg !248
  %add.ptr554.11090.1 = getelementptr inbounds i8, ptr addrspace(3) %226, i32 %add.ptr554.idx.11102, !dbg !244
  %262 = load i32, ptr addrspace(3) %add.ptr554.11090.1, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1252 = insertelement <2 x i32> poison, i32 %262, i64 0, !dbg !245
  %add.ptr554.1.11094.1 = getelementptr inbounds i8, ptr addrspace(3) %226, i32 %add.ptr554.idx.1.11106, !dbg !244
  %263 = load i32, ptr addrspace(3) %add.ptr554.1.11094.1, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1258 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1252, i32 %263, i64 1, !dbg !245
  %add.ptr554.11083.1.1 = getelementptr inbounds i8, ptr addrspace(3) %229, i32 %add.ptr554.idx.11082.11114, !dbg !244
  %264 = load i32, ptr addrspace(3) %add.ptr554.11083.1.1, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1268 = insertelement <2 x i32> poison, i32 %264, i64 0, !dbg !245
  %add.ptr554.1.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %229, i32 %add.ptr554.idx.1.1.11119, !dbg !244
  %265 = load i32, ptr addrspace(3) %add.ptr554.1.1.1.1, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1274 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1268, i32 %265, i64 1, !dbg !245
  %add.ptr554.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %232, i32 %add.ptr554.idx.2.11128, !dbg !244
  %266 = load i32, ptr addrspace(3) %add.ptr554.2.1.1, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1284 = insertelement <2 x i32> poison, i32 %266, i64 0, !dbg !245
  %add.ptr554.1.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %232, i32 %add.ptr554.idx.1.2.11133, !dbg !244
  %267 = load i32, ptr addrspace(3) %add.ptr554.1.2.1.1, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1290 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1284, i32 %267, i64 1, !dbg !245
  %add.ptr554.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %235, i32 %add.ptr554.idx.3.11142, !dbg !244
  %268 = load i32, ptr addrspace(3) %add.ptr554.3.1.1, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1300 = insertelement <2 x i32> poison, i32 %268, i64 0, !dbg !245
  %add.ptr554.1.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %235, i32 %add.ptr554.idx.1.3.11147, !dbg !244
  %269 = load i32, ptr addrspace(3) %add.ptr554.1.3.1.1, align 4, !dbg !245, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1306 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1300, i32 %269, i64 1, !dbg !245
  %270 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1258 to <4 x half>, !dbg !247
  %271 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %270, <4 x half> %154, <4 x float> %239), !dbg !248
  %272 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1274 to <4 x half>, !dbg !247
  %273 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %272, <4 x half> %154, <4 x float> %241), !dbg !248
  %274 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1290 to <4 x half>, !dbg !247
  %275 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %274, <4 x half> %154, <4 x float> %243), !dbg !248
  %276 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1306 to <4 x half>, !dbg !247
  %277 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %276, <4 x half> %154, <4 x float> %245), !dbg !248
  %add401 = fadd contract float %add396, %166, !dbg !249
  br label %if.end610, !dbg !71

if.end610:                                        ; preds = %for.cond.preheader, %for.body600.preheader
  %.pre-phi2121 = phi i64 [ %19, %for.cond.preheader ], [ %.pre2120, %for.body600.preheader ], !dbg !70
  %.pre-phi2119 = phi i64 [ %16, %for.cond.preheader ], [ %.pre2118, %for.body600.preheader ], !dbg !70
  %.pre-phi2117 = phi i64 [ %13, %for.cond.preheader ], [ %.pre2116, %for.body600.preheader ], !dbg !70
  %.idx965.11167.pre-phi = phi i32 [ %.idx954.1973, %for.cond.preheader ], [ %.pre2115, %for.body600.preheader ], !dbg !69
  %add.ptr712.idx.1.pre-phi = phi i32 [ %add.ptr58.idx.1, %for.cond.preheader ], [ %.pre2112, %for.body600.preheader ], !dbg !69
  %add.ptr712.idx.pre-phi = phi i32 [ %add.ptr58.idx, %for.cond.preheader ], [ %.pre2110, %for.body600.preheader ], !dbg !69
  %.idx965.pre-phi = phi i32 [ %.idx954, %for.cond.preheader ], [ %.pre2109, %for.body600.preheader ], !dbg !69
  %.pre-phi2107 = phi i64 [ %9, %for.cond.preheader ], [ %.pre2106, %for.body600.preheader ], !dbg !68
  %mul691.pre-phi = phi i32 [ %mul38, %for.cond.preheader ], [ %.pre2099, %for.body600.preheader ]
  %mul686.pre-phi = phi i32 [ %mul33, %for.cond.preheader ], [ %.pre2096, %for.body600.preheader ]
  %.idx963.4.pre-phi = phi i32 [ %.idx955.4, %for.cond.preheader ], [ %.pre2093, %for.body600.preheader ], !dbg !65
  %add648.4.pre-phi = phi i32 [ %add71.4, %for.cond.preheader ], [ %.pre2091, %for.body600.preheader ], !dbg !67
  %add.ptr671.idx.3.pre-phi = phi i32 [ %add.ptr94.idx.3, %for.cond.preheader ], [ %.pre2090, %for.body600.preheader ], !dbg !65
  %add.ptr671.idx.2.pre-phi = phi i32 [ %add.ptr94.idx.2, %for.cond.preheader ], [ %.pre2087, %for.body600.preheader ], !dbg !65
  %add.ptr671.idx.1.pre-phi = phi i32 [ %add.ptr94.idx.1, %for.cond.preheader ], [ %.pre2084, %for.body600.preheader ], !dbg !65
  %add.ptr671.idx.pre-phi = phi i32 [ %add.ptr94.idx, %for.cond.preheader ], [ %.pre2081, %for.body600.preheader ], !dbg !65
  %.idx963.pre-phi = phi i32 [ %.idx955, %for.cond.preheader ], [ %.pre2080, %for.body600.preheader ], !dbg !65
  %mul647.pre-phi = phi i32 [ %mul70, %for.cond.preheader ], [ %.pre2072, %for.body600.preheader ]
  %numerator.sroa.170.0 = phi <4 x float> [ %277, %for.cond.preheader ], [ zeroinitializer, %for.body600.preheader ], !dbg !250
  %numerator.sroa.146.0 = phi <4 x float> [ %275, %for.cond.preheader ], [ zeroinitializer, %for.body600.preheader ], !dbg !250
  %numerator.sroa.122.0 = phi <4 x float> [ %273, %for.cond.preheader ], [ zeroinitializer, %for.body600.preheader ], !dbg !250
  %numerator.sroa.98.0 = phi <4 x float> [ %271, %for.cond.preheader ], [ zeroinitializer, %for.body600.preheader ], !dbg !250
  %numerator.sroa.74.0 = phi <4 x float> [ %261, %for.cond.preheader ], [ zeroinitializer, %for.body600.preheader ], !dbg !250
  %numerator.sroa.50.0 = phi <4 x float> [ %259, %for.cond.preheader ], [ zeroinitializer, %for.body600.preheader ], !dbg !250
  %numerator.sroa.26.0 = phi <4 x float> [ %257, %for.cond.preheader ], [ zeroinitializer, %for.body600.preheader ], !dbg !250
  %numerator.sroa.0.0 = phi <4 x float> [ %255, %for.cond.preheader ], [ zeroinitializer, %for.body600.preheader ], !dbg !250
  %denominator.sroa.0.1 = phi float [ %add401, %for.cond.preheader ], [ 0.000000e+00, %for.body600.preheader ], !dbg !250
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
  %conv.i.i911 = fptrunc float %div to half, !dbg !258
  %conv.i.i911.1 = fptrunc float %div.1 to half, !dbg !258
  %conv.i.i911.2 = fptrunc float %div.2 to half, !dbg !258
  %conv.i.i911.3 = fptrunc float %div.3 to half, !dbg !258
  %278 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul647.pre-phi, !dbg !65
  %279 = getelementptr inbounds i8, ptr addrspace(3) %278, i32 %.idx963.pre-phi, !dbg !65
  %add.ptr671 = getelementptr inbounds i8, ptr addrspace(3) %279, i32 %add.ptr671.idx.pre-phi, !dbg !65
  store half %conv.i.i911, ptr addrspace(3) %add.ptr671, align 8, !dbg !263
  %add.ptr671.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671, i32 2, !dbg !263
  store half %conv.i.i911.1, ptr addrspace(3) %add.ptr671.sroa_idx, align 2, !dbg !263
  %add.ptr671.sroa_idx1178 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671, i32 4, !dbg !263
  store half %conv.i.i911.2, ptr addrspace(3) %add.ptr671.sroa_idx1178, align 4, !dbg !263
  %add.ptr671.sroa_idx1179 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671, i32 6, !dbg !263
  store half %conv.i.i911.3, ptr addrspace(3) %add.ptr671.sroa_idx1179, align 2, !dbg !263
  %conv.i.i911.11156 = fptrunc float %div.4 to half, !dbg !258
  %conv.i.i911.1.1 = fptrunc float %div.5 to half, !dbg !258
  %conv.i.i911.2.1 = fptrunc float %div.6 to half, !dbg !258
  %conv.i.i911.3.1 = fptrunc float %div.7 to half, !dbg !258
  %add.ptr671.1 = getelementptr inbounds i8, ptr addrspace(3) %279, i32 %add.ptr671.idx.1.pre-phi, !dbg !65
  store half %conv.i.i911.11156, ptr addrspace(3) %add.ptr671.1, align 8, !dbg !263
  %add.ptr671.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671.1, i32 2, !dbg !263
  store half %conv.i.i911.1.1, ptr addrspace(3) %add.ptr671.1.sroa_idx, align 2, !dbg !263
  %add.ptr671.1.sroa_idx1183 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671.1, i32 4, !dbg !263
  store half %conv.i.i911.2.1, ptr addrspace(3) %add.ptr671.1.sroa_idx1183, align 4, !dbg !263
  %add.ptr671.1.sroa_idx1184 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671.1, i32 6, !dbg !263
  store half %conv.i.i911.3.1, ptr addrspace(3) %add.ptr671.1.sroa_idx1184, align 2, !dbg !263
  %conv.i.i911.21158 = fptrunc float %div.8 to half, !dbg !258
  %conv.i.i911.1.2 = fptrunc float %div.9 to half, !dbg !258
  %conv.i.i911.2.2 = fptrunc float %div.10 to half, !dbg !258
  %conv.i.i911.3.2 = fptrunc float %div.11 to half, !dbg !258
  %add.ptr671.2 = getelementptr inbounds i8, ptr addrspace(3) %279, i32 %add.ptr671.idx.2.pre-phi, !dbg !65
  store half %conv.i.i911.21158, ptr addrspace(3) %add.ptr671.2, align 8, !dbg !263
  %add.ptr671.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671.2, i32 2, !dbg !263
  store half %conv.i.i911.1.2, ptr addrspace(3) %add.ptr671.2.sroa_idx, align 2, !dbg !263
  %add.ptr671.2.sroa_idx1188 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671.2, i32 4, !dbg !263
  store half %conv.i.i911.2.2, ptr addrspace(3) %add.ptr671.2.sroa_idx1188, align 4, !dbg !263
  %add.ptr671.2.sroa_idx1189 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671.2, i32 6, !dbg !263
  store half %conv.i.i911.3.2, ptr addrspace(3) %add.ptr671.2.sroa_idx1189, align 2, !dbg !263
  %conv.i.i911.31160 = fptrunc float %div.12 to half, !dbg !258
  %conv.i.i911.1.3 = fptrunc float %div.13 to half, !dbg !258
  %conv.i.i911.2.3 = fptrunc float %div.14 to half, !dbg !258
  %conv.i.i911.3.3 = fptrunc float %div.15 to half, !dbg !258
  %add.ptr671.3 = getelementptr inbounds i8, ptr addrspace(3) %279, i32 %add.ptr671.idx.3.pre-phi, !dbg !65
  store half %conv.i.i911.31160, ptr addrspace(3) %add.ptr671.3, align 8, !dbg !263
  %add.ptr671.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671.3, i32 2, !dbg !263
  store half %conv.i.i911.1.3, ptr addrspace(3) %add.ptr671.3.sroa_idx, align 2, !dbg !263
  %add.ptr671.3.sroa_idx1193 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671.3, i32 4, !dbg !263
  store half %conv.i.i911.2.3, ptr addrspace(3) %add.ptr671.3.sroa_idx1193, align 4, !dbg !263
  %add.ptr671.3.sroa_idx1194 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671.3, i32 6, !dbg !263
  store half %conv.i.i911.3.3, ptr addrspace(3) %add.ptr671.3.sroa_idx1194, align 2, !dbg !263
  %conv.i.i911.4 = fptrunc float %div.16 to half, !dbg !258
  %conv.i.i911.1.4 = fptrunc float %div.17 to half, !dbg !258
  %conv.i.i911.2.4 = fptrunc float %div.18 to half, !dbg !258
  %conv.i.i911.3.4 = fptrunc float %div.19 to half, !dbg !258
  %280 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add648.4.pre-phi, !dbg !65
  %281 = getelementptr inbounds i8, ptr addrspace(3) %280, i32 %.idx963.4.pre-phi, !dbg !65
  %add.ptr671.4 = getelementptr inbounds i8, ptr addrspace(3) %281, i32 %add.ptr671.idx.pre-phi, !dbg !65
  store half %conv.i.i911.4, ptr addrspace(3) %add.ptr671.4, align 8, !dbg !263
  %add.ptr671.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671.4, i32 2, !dbg !263
  store half %conv.i.i911.1.4, ptr addrspace(3) %add.ptr671.4.sroa_idx, align 2, !dbg !263
  %add.ptr671.4.sroa_idx1198 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671.4, i32 4, !dbg !263
  store half %conv.i.i911.2.4, ptr addrspace(3) %add.ptr671.4.sroa_idx1198, align 4, !dbg !263
  %add.ptr671.4.sroa_idx1199 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671.4, i32 6, !dbg !263
  store half %conv.i.i911.3.4, ptr addrspace(3) %add.ptr671.4.sroa_idx1199, align 2, !dbg !263
  %conv.i.i911.5 = fptrunc float %div.20 to half, !dbg !258
  %conv.i.i911.1.5 = fptrunc float %div.21 to half, !dbg !258
  %conv.i.i911.2.5 = fptrunc float %div.22 to half, !dbg !258
  %conv.i.i911.3.5 = fptrunc float %div.23 to half, !dbg !258
  %add.ptr671.5 = getelementptr inbounds i8, ptr addrspace(3) %281, i32 %add.ptr671.idx.1.pre-phi, !dbg !65
  store half %conv.i.i911.5, ptr addrspace(3) %add.ptr671.5, align 8, !dbg !263
  %add.ptr671.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671.5, i32 2, !dbg !263
  store half %conv.i.i911.1.5, ptr addrspace(3) %add.ptr671.5.sroa_idx, align 2, !dbg !263
  %add.ptr671.5.sroa_idx1203 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671.5, i32 4, !dbg !263
  store half %conv.i.i911.2.5, ptr addrspace(3) %add.ptr671.5.sroa_idx1203, align 4, !dbg !263
  %add.ptr671.5.sroa_idx1204 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671.5, i32 6, !dbg !263
  store half %conv.i.i911.3.5, ptr addrspace(3) %add.ptr671.5.sroa_idx1204, align 2, !dbg !263
  %conv.i.i911.6 = fptrunc float %div.24 to half, !dbg !258
  %conv.i.i911.1.6 = fptrunc float %div.25 to half, !dbg !258
  %conv.i.i911.2.6 = fptrunc float %div.26 to half, !dbg !258
  %conv.i.i911.3.6 = fptrunc float %div.27 to half, !dbg !258
  %add.ptr671.6 = getelementptr inbounds i8, ptr addrspace(3) %281, i32 %add.ptr671.idx.2.pre-phi, !dbg !65
  store half %conv.i.i911.6, ptr addrspace(3) %add.ptr671.6, align 8, !dbg !263
  %add.ptr671.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671.6, i32 2, !dbg !263
  store half %conv.i.i911.1.6, ptr addrspace(3) %add.ptr671.6.sroa_idx, align 2, !dbg !263
  %add.ptr671.6.sroa_idx1208 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671.6, i32 4, !dbg !263
  store half %conv.i.i911.2.6, ptr addrspace(3) %add.ptr671.6.sroa_idx1208, align 4, !dbg !263
  %add.ptr671.6.sroa_idx1209 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671.6, i32 6, !dbg !263
  store half %conv.i.i911.3.6, ptr addrspace(3) %add.ptr671.6.sroa_idx1209, align 2, !dbg !263
  %conv.i.i911.7 = fptrunc float %div.28 to half, !dbg !258
  %conv.i.i911.1.7 = fptrunc float %div.29 to half, !dbg !258
  %conv.i.i911.2.7 = fptrunc float %div.30 to half, !dbg !258
  %conv.i.i911.3.7 = fptrunc float %div.31 to half, !dbg !258
  %add.ptr671.7 = getelementptr inbounds i8, ptr addrspace(3) %281, i32 %add.ptr671.idx.3.pre-phi, !dbg !65
  store half %conv.i.i911.7, ptr addrspace(3) %add.ptr671.7, align 8, !dbg !263
  %add.ptr671.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671.7, i32 2, !dbg !263
  store half %conv.i.i911.1.7, ptr addrspace(3) %add.ptr671.7.sroa_idx, align 2, !dbg !263
  %add.ptr671.7.sroa_idx1213 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671.7, i32 4, !dbg !263
  store half %conv.i.i911.2.7, ptr addrspace(3) %add.ptr671.7.sroa_idx1213, align 4, !dbg !263
  %add.ptr671.7.sroa_idx1214 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr671.7, i32 6, !dbg !263
  store half %conv.i.i911.3.7, ptr addrspace(3) %add.ptr671.7.sroa_idx1214, align 2, !dbg !263
  fence syncscope("warp") release, !dbg !264
  tail call void @llvm.mxc.barrier.warp(), !dbg !267
  fence syncscope("warp") acquire, !dbg !268
  %282 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul691.pre-phi, !dbg !69
  %283 = getelementptr inbounds %struct.__half, ptr addrspace(3) %282, i32 %mul686.pre-phi, !dbg !69
  %284 = getelementptr inbounds i8, ptr addrspace(3) %283, i32 %.idx965.pre-phi, !dbg !69
  %add.ptr712 = getelementptr inbounds i8, ptr addrspace(3) %284, i32 %add.ptr712.idx.pre-phi, !dbg !69
  %285 = load i64, ptr addrspace(3) %add.ptr712, align 8, !dbg !269
  %add.ptr712.1 = getelementptr inbounds i8, ptr addrspace(3) %284, i32 %add.ptr712.idx.1.pre-phi, !dbg !69
  %286 = load i64, ptr addrspace(3) %add.ptr712.1, align 8, !dbg !269
  %add.ptr733 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2107, !dbg !270
  store i64 %285, ptr addrspace(1) %add.ptr733, align 16, !dbg !271
  %output_fetch.sroa.10.0.add.ptr733.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr733, i64 8, !dbg !271
  store i64 %286, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr733.sroa_idx, align 8, !dbg !271
  %287 = getelementptr inbounds i8, ptr addrspace(3) %283, i32 512, !dbg !69
  %288 = getelementptr inbounds i8, ptr addrspace(3) %287, i32 %.idx965.11167.pre-phi, !dbg !69
  %add.ptr712.11169 = getelementptr inbounds i8, ptr addrspace(3) %288, i32 %add.ptr712.idx.pre-phi, !dbg !69
  %289 = load i64, ptr addrspace(3) %add.ptr712.11169, align 8, !dbg !269
  %add.ptr712.1.1 = getelementptr inbounds i8, ptr addrspace(3) %288, i32 %add.ptr712.idx.1.pre-phi, !dbg !69
  %290 = load i64, ptr addrspace(3) %add.ptr712.1.1, align 8, !dbg !269
  %add.ptr733.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2117, !dbg !270
  store i64 %289, ptr addrspace(1) %add.ptr733.1, align 16, !dbg !271
  %output_fetch.sroa.10.0.add.ptr733.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr733.1, i64 8, !dbg !271
  store i64 %290, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr733.1.sroa_idx, align 8, !dbg !271
  %291 = getelementptr inbounds i8, ptr addrspace(3) %283, i32 1024, !dbg !69
  %292 = getelementptr inbounds i8, ptr addrspace(3) %291, i32 %.idx965.pre-phi, !dbg !69
  %add.ptr712.2 = getelementptr inbounds i8, ptr addrspace(3) %292, i32 %add.ptr712.idx.1.pre-phi, !dbg !69
  %293 = load i64, ptr addrspace(3) %add.ptr712.2, align 8, !dbg !269
  %add.ptr712.1.2 = getelementptr inbounds i8, ptr addrspace(3) %292, i32 %add.ptr712.idx.pre-phi, !dbg !69
  %294 = load i64, ptr addrspace(3) %add.ptr712.1.2, align 8, !dbg !269
  %add.ptr733.2 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2119, !dbg !270
  store i64 %293, ptr addrspace(1) %add.ptr733.2, align 16, !dbg !271
  %output_fetch.sroa.10.0.add.ptr733.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr733.2, i64 8, !dbg !271
  store i64 %294, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr733.2.sroa_idx, align 8, !dbg !271
  %295 = getelementptr inbounds i8, ptr addrspace(3) %283, i32 1536, !dbg !69
  %296 = getelementptr inbounds i8, ptr addrspace(3) %295, i32 %.idx965.11167.pre-phi, !dbg !69
  %add.ptr712.3 = getelementptr inbounds i8, ptr addrspace(3) %296, i32 %add.ptr712.idx.1.pre-phi, !dbg !69
  %297 = load i64, ptr addrspace(3) %add.ptr712.3, align 8, !dbg !269
  %add.ptr712.1.3 = getelementptr inbounds i8, ptr addrspace(3) %296, i32 %add.ptr712.idx.pre-phi, !dbg !69
  %298 = load i64, ptr addrspace(3) %add.ptr712.1.3, align 8, !dbg !269
  %add.ptr733.3 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2121, !dbg !270
  store i64 %297, ptr addrspace(1) %add.ptr733.3, align 16, !dbg !271
  %output_fetch.sroa.10.0.add.ptr733.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr733.3, i64 8, !dbg !271
  store i64 %298, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr733.3.sroa_idx, align 8, !dbg !271
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

; Function Attrs: convergent nounwind willreturn memory(none)
declare i32 @llvm.mxc.bsm.bpermute(i32, i32) #4

; Function Attrs: convergent nounwind willreturn memory(none)
declare i32 @llvm.mxc.mbcnt.lo(i32, i32) #4

; Function Attrs: convergent nounwind willreturn memory(none)
declare i32 @llvm.mxc.mbcnt.hi(i32, i32) #4

; Function Attrs: convergent nounwind willreturn
declare void @llvm.mxc.barrier.warp() #6

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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v074_codex_power_s1_blockstart_broadcast_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v074_codex_power_s1_blockstart_broadcast_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
!42 = !DILocation(line: 78, column: 3, scope: !43, inlinedAt: !45)
!43 = distinct !DISubprogram(name: "__fetch_builtin_y", scope: !44, file: !44, line: 78, type: !7, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!44 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_builtin_vars.h", directory: "")
!45 = distinct !DILocation(line: 25, column: 82, scope: !40)
!46 = !DILocation(line: 25, column: 94, scope: !40)
!47 = !DILocation(line: 77, column: 3, scope: !48, inlinedAt: !49)
!48 = distinct !DISubprogram(name: "__fetch_builtin_x", scope: !44, file: !44, line: 77, type: !7, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!49 = distinct !DILocation(line: 25, column: 110, scope: !40)
!50 = !DILocation(line: 25, column: 102, scope: !40)
!51 = !DILocation(line: 25, column: 66, scope: !40)
!52 = !DILocation(line: 25, column: 124, scope: !40)
!53 = !DILocation(line: 171, column: 37, scope: !54, inlinedAt: !56)
!54 = distinct !DISubprogram(name: "__lane_id", scope: !55, file: !55, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!55 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!56 = distinct !DILocation(line: 580, column: 14, scope: !57, inlinedAt: !58)
!57 = distinct !DISubprogram(name: "__shfl_sync", scope: !55, file: !55, line: 578, type: !7, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!58 = distinct !DILocation(line: 25, column: 21, scope: !40)
!59 = !DILocation(line: 171, column: 10, scope: !54, inlinedAt: !56)
!60 = !DILocation(line: 583, column: 43, scope: !57, inlinedAt: !58)
!61 = !DILocation(line: 583, column: 10, scope: !57, inlinedAt: !58)
!62 = !DILocation(line: 27, column: 26, scope: !40)
!63 = !{i32 0, i32 1024}
!64 = !DILocation(line: 187, column: 141, scope: !40)
!65 = !DILocation(line: 187, column: 22, scope: !40)
!66 = !DILocation(line: 187, column: 112, scope: !40)
!67 = !DILocation(line: 187, column: 51, scope: !40)
!68 = !DILocation(line: 191, column: 3, scope: !40)
!69 = !DILocation(line: 194, column: 65, scope: !40)
!70 = !DILocation(line: 196, column: 105, scope: !40)
!71 = !DILocation(line: 178, column: 3, scope: !40)
!72 = !DILocation(line: 29, column: 5, scope: !40)
!73 = !DILocation(line: 30, column: 45, scope: !40)
!74 = !DILocation(line: 30, column: 31, scope: !40)
!75 = !DILocation(line: 33, column: 26, scope: !40)
!76 = !DILocation(line: 33, column: 279, scope: !40)
!77 = !DILocation(line: 30, column: 126, scope: !40)
!78 = !DILocation(line: 68, column: 3, scope: !79, inlinedAt: !80)
!79 = distinct !DISubprogram(name: "__barrier_warp", scope: !55, file: !55, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!80 = distinct !DILocation(line: 192, column: 3, scope: !81, inlinedAt: !82)
!81 = distinct !DISubprogram(name: "__syncwarp", scope: !55, file: !55, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!82 = distinct !DILocation(line: 36, column: 5, scope: !40)
!83 = !DILocation(line: 69, column: 3, scope: !79, inlinedAt: !80)
!84 = !DILocation(line: 70, column: 3, scope: !79, inlinedAt: !80)
!85 = !DILocation(line: 38, column: 174, scope: !40)
!86 = !DILocation(line: 38, column: 59, scope: !40)
!87 = !DILocation(line: 38, column: 40, scope: !40)
!88 = !DILocation(line: 38, column: 145, scope: !40)
!89 = !DILocation(line: 38, column: 86, scope: !40)
!90 = !DILocation(line: 68, column: 3, scope: !79, inlinedAt: !91)
!91 = distinct !DILocation(line: 192, column: 3, scope: !81, inlinedAt: !92)
!92 = distinct !DILocation(line: 40, column: 5, scope: !40)
!93 = !DILocation(line: 69, column: 3, scope: !79, inlinedAt: !91)
!94 = !DILocation(line: 70, column: 3, scope: !79, inlinedAt: !91)
!95 = !DILocation(line: 42, column: 10, scope: !40)
!96 = !DILocation(line: 43, column: 45, scope: !40)
!97 = !DILocation(line: 43, column: 31, scope: !40)
!98 = !DILocation(line: 46, column: 26, scope: !40)
!99 = !DILocation(line: 46, column: 293, scope: !40)
!100 = !DILocation(line: 68, column: 3, scope: !79, inlinedAt: !101)
!101 = distinct !DILocation(line: 192, column: 3, scope: !81, inlinedAt: !102)
!102 = distinct !DILocation(line: 49, column: 5, scope: !40)
!103 = !DILocation(line: 69, column: 3, scope: !79, inlinedAt: !101)
!104 = !DILocation(line: 70, column: 3, scope: !79, inlinedAt: !101)
!105 = !DILocation(line: 58, column: 32, scope: !40)
!106 = !DILocation(line: 60, column: 44, scope: !40)
!107 = !DILocation(line: 58, column: 51, scope: !40)
!108 = !DILocation(line: 71, column: 96, scope: !40)
!109 = !DILocation(line: 71, column: 13, scope: !40)
!110 = !DILocation(line: 71, column: 85, scope: !40)
!111 = !DILocation(line: 351, column: 10, scope: !112, inlinedAt: !114)
!112 = distinct !DISubprogram(name: "max", scope: !113, file: !113, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!113 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!114 = distinct !DILocation(line: 82, column: 20, scope: !40)
!115 = !DILocation(line: 1018, column: 9, scope: !116, inlinedAt: !117)
!116 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !55, file: !55, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!117 = distinct !DILocation(line: 84, column: 34, scope: !40)
!118 = !DILocation(line: 171, column: 37, scope: !54, inlinedAt: !119)
!119 = distinct !DILocation(line: 990, column: 14, scope: !120, inlinedAt: !121)
!120 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !55, file: !55, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!121 = distinct !DILocation(line: 1019, column: 11, scope: !116, inlinedAt: !117)
!122 = !DILocation(line: 171, column: 10, scope: !54, inlinedAt: !119)
!123 = !DILocation(line: 991, column: 20, scope: !120, inlinedAt: !121)
!124 = !DILocation(line: 992, column: 36, scope: !120, inlinedAt: !121)
!125 = !DILocation(line: 992, column: 17, scope: !120, inlinedAt: !121)
!126 = !DILocation(line: 992, column: 11, scope: !120, inlinedAt: !121)
!127 = !DILocation(line: 993, column: 43, scope: !120, inlinedAt: !121)
!128 = !DILocation(line: 993, column: 10, scope: !120, inlinedAt: !121)
!129 = !DILocation(line: 1020, column: 14, scope: !116, inlinedAt: !117)
!130 = !DILocation(line: 351, column: 10, scope: !112, inlinedAt: !131)
!131 = distinct !DILocation(line: 84, column: 18, scope: !40)
!132 = !DILocation(line: 1018, column: 9, scope: !116, inlinedAt: !133)
!133 = distinct !DILocation(line: 85, column: 34, scope: !40)
!134 = !DILocation(line: 171, column: 37, scope: !54, inlinedAt: !135)
!135 = distinct !DILocation(line: 990, column: 14, scope: !120, inlinedAt: !136)
!136 = distinct !DILocation(line: 1019, column: 11, scope: !116, inlinedAt: !133)
!137 = !DILocation(line: 171, column: 10, scope: !54, inlinedAt: !135)
!138 = !DILocation(line: 991, column: 20, scope: !120, inlinedAt: !136)
!139 = !DILocation(line: 992, column: 36, scope: !120, inlinedAt: !136)
!140 = !DILocation(line: 992, column: 17, scope: !120, inlinedAt: !136)
!141 = !DILocation(line: 992, column: 11, scope: !120, inlinedAt: !136)
!142 = !DILocation(line: 993, column: 43, scope: !120, inlinedAt: !136)
!143 = !DILocation(line: 993, column: 10, scope: !120, inlinedAt: !136)
!144 = !DILocation(line: 1020, column: 14, scope: !116, inlinedAt: !133)
!145 = !DILocation(line: 351, column: 10, scope: !112, inlinedAt: !146)
!146 = distinct !DILocation(line: 85, column: 18, scope: !40)
!147 = !DILocation(line: 97, column: 26, scope: !40)
!148 = !DILocation(line: 98, column: 26, scope: !40)
!149 = !DILocation(line: 99, column: 26, scope: !40)
!150 = !DILocation(line: 100, column: 26, scope: !40)
!151 = !DILocation(line: 102, column: 25, scope: !40)
!152 = !DILocation(line: 103, column: 25, scope: !40)
!153 = !DILocation(line: 104, column: 25, scope: !40)
!154 = !DILocation(line: 105, column: 25, scope: !40)
!155 = !DILocation(line: 107, column: 23, scope: !40)
!156 = !DILocation(line: 108, column: 23, scope: !40)
!157 = !DILocation(line: 109, column: 23, scope: !40)
!158 = !DILocation(line: 110, column: 23, scope: !40)
!159 = !DILocation(line: 285, column: 49, scope: !160, inlinedAt: !161)
!160 = distinct !DISubprogram(name: "exp2f", scope: !113, file: !113, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!161 = distinct !DILocation(line: 111, column: 15, scope: !40)
!162 = !DILocation(line: 285, column: 49, scope: !160, inlinedAt: !163)
!163 = distinct !DILocation(line: 112, column: 15, scope: !40)
!164 = !DILocation(line: 285, column: 49, scope: !160, inlinedAt: !165)
!165 = distinct !DILocation(line: 113, column: 15, scope: !40)
!166 = !DILocation(line: 285, column: 49, scope: !160, inlinedAt: !167)
!167 = distinct !DILocation(line: 114, column: 15, scope: !40)
!168 = !DILocation(line: 1007, column: 10, scope: !169, inlinedAt: !171)
!169 = distinct !DISubprogram(name: "__float2half_rn", scope: !170, file: !170, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!170 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!171 = distinct !DILocation(line: 1077, column: 18, scope: !172, inlinedAt: !173)
!172 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !170, file: !170, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!173 = distinct !DILocation(line: 1295, column: 23, scope: !174, inlinedAt: !175)
!174 = distinct !DISubprogram(name: "__float22half2_rn", scope: !170, file: !170, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!175 = distinct !DILocation(line: 115, column: 29, scope: !40)
!176 = !{!177, !179}
!177 = distinct !{!177, !178, !"_ZL17__floats2half2_rnff: %agg.result"}
!178 = distinct !{!178, !"_ZL17__floats2half2_rnff"}
!179 = distinct !{!179, !180, !"_ZL17__float22half2_rn6float2: %agg.result"}
!180 = distinct !{!180, !"_ZL17__float22half2_rn6float2"}
!181 = !DILocation(line: 1007, column: 10, scope: !169, inlinedAt: !182)
!182 = distinct !DILocation(line: 1077, column: 38, scope: !172, inlinedAt: !173)
!183 = !DILocation(line: 1007, column: 10, scope: !169, inlinedAt: !184)
!184 = distinct !DILocation(line: 1077, column: 18, scope: !172, inlinedAt: !185)
!185 = distinct !DILocation(line: 1295, column: 23, scope: !174, inlinedAt: !186)
!186 = distinct !DILocation(line: 116, column: 29, scope: !40)
!187 = !{!188, !190}
!188 = distinct !{!188, !189, !"_ZL17__floats2half2_rnff: %agg.result"}
!189 = distinct !{!189, !"_ZL17__floats2half2_rnff"}
!190 = distinct !{!190, !191, !"_ZL17__float22half2_rn6float2: %agg.result"}
!191 = distinct !{!191, !"_ZL17__float22half2_rn6float2"}
!192 = !DILocation(line: 1007, column: 10, scope: !169, inlinedAt: !193)
!193 = distinct !DILocation(line: 1077, column: 38, scope: !172, inlinedAt: !185)
!194 = !DILocation(line: 117, column: 51, scope: !40)
!195 = !DILocation(line: 1082, column: 16, scope: !196, inlinedAt: !197)
!196 = distinct !DISubprogram(name: "__half2float", scope: !170, file: !170, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!197 = distinct !DILocation(line: 136, column: 55, scope: !198, inlinedAt: !199)
!198 = distinct !DISubprogram(name: "operator float", scope: !170, file: !170, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!199 = distinct !DILocation(line: 121, column: 50, scope: !40)
!200 = !DILocation(line: 121, column: 40, scope: !40)
!201 = !DILocation(line: 1018, column: 9, scope: !116, inlinedAt: !202)
!202 = distinct !DILocation(line: 123, column: 40, scope: !40)
!203 = !DILocation(line: 171, column: 37, scope: !54, inlinedAt: !204)
!204 = distinct !DILocation(line: 990, column: 14, scope: !120, inlinedAt: !205)
!205 = distinct !DILocation(line: 1019, column: 11, scope: !116, inlinedAt: !202)
!206 = !DILocation(line: 171, column: 10, scope: !54, inlinedAt: !204)
!207 = !DILocation(line: 991, column: 20, scope: !120, inlinedAt: !205)
!208 = !DILocation(line: 992, column: 36, scope: !120, inlinedAt: !205)
!209 = !DILocation(line: 992, column: 17, scope: !120, inlinedAt: !205)
!210 = !DILocation(line: 992, column: 11, scope: !120, inlinedAt: !205)
!211 = !DILocation(line: 993, column: 43, scope: !120, inlinedAt: !205)
!212 = !DILocation(line: 993, column: 10, scope: !120, inlinedAt: !205)
!213 = !DILocation(line: 1020, column: 14, scope: !116, inlinedAt: !202)
!214 = !DILocation(line: 123, column: 38, scope: !40)
!215 = !DILocation(line: 1018, column: 9, scope: !116, inlinedAt: !216)
!216 = distinct !DILocation(line: 124, column: 40, scope: !40)
!217 = !DILocation(line: 171, column: 37, scope: !54, inlinedAt: !218)
!218 = distinct !DILocation(line: 990, column: 14, scope: !120, inlinedAt: !219)
!219 = distinct !DILocation(line: 1019, column: 11, scope: !116, inlinedAt: !216)
!220 = !DILocation(line: 171, column: 10, scope: !54, inlinedAt: !218)
!221 = !DILocation(line: 991, column: 20, scope: !120, inlinedAt: !219)
!222 = !DILocation(line: 992, column: 36, scope: !120, inlinedAt: !219)
!223 = !DILocation(line: 992, column: 17, scope: !120, inlinedAt: !219)
!224 = !DILocation(line: 992, column: 11, scope: !120, inlinedAt: !219)
!225 = !DILocation(line: 993, column: 43, scope: !120, inlinedAt: !219)
!226 = !DILocation(line: 993, column: 10, scope: !120, inlinedAt: !219)
!227 = !DILocation(line: 1020, column: 14, scope: !116, inlinedAt: !216)
!228 = !DILocation(line: 68, column: 3, scope: !79, inlinedAt: !229)
!229 = distinct !DILocation(line: 192, column: 3, scope: !81, inlinedAt: !230)
!230 = distinct !DILocation(line: 125, column: 5, scope: !40)
!231 = !DILocation(line: 69, column: 3, scope: !79, inlinedAt: !229)
!232 = !DILocation(line: 70, column: 3, scope: !79, inlinedAt: !229)
!233 = !DILocation(line: 132, column: 56, scope: !40)
!234 = !DILocation(line: 132, column: 42, scope: !40)
!235 = !DILocation(line: 139, column: 28, scope: !40)
!236 = !DILocation(line: 139, column: 192, scope: !40)
!237 = !DILocation(line: 139, column: 63, scope: !40)
!238 = !DILocation(line: 68, column: 3, scope: !79, inlinedAt: !239)
!239 = distinct !DILocation(line: 192, column: 3, scope: !81, inlinedAt: !240)
!240 = distinct !DILocation(line: 143, column: 5, scope: !40)
!241 = !DILocation(line: 69, column: 3, scope: !79, inlinedAt: !239)
!242 = !DILocation(line: 70, column: 3, scope: !79, inlinedAt: !239)
!243 = !DILocation(line: 157, column: 325, scope: !40)
!244 = !DILocation(line: 157, column: 84, scope: !40)
!245 = !DILocation(line: 157, column: 65, scope: !40)
!246 = !DILocation(line: 157, column: 263, scope: !40)
!247 = !DILocation(line: 163, column: 94, scope: !40)
!248 = !DILocation(line: 163, column: 64, scope: !40)
!249 = !DILocation(line: 124, column: 38, scope: !40)
!250 = !DILocation(line: 0, scope: !40)
!251 = !DILocation(line: 179, column: 23, scope: !40)
!252 = !DILocation(line: 179, column: 38, scope: !40)
!253 = !DILocation(line: 68, column: 3, scope: !79, inlinedAt: !254)
!254 = distinct !DILocation(line: 192, column: 3, scope: !81, inlinedAt: !255)
!255 = distinct !DILocation(line: 181, column: 3, scope: !40)
!256 = !DILocation(line: 69, column: 3, scope: !79, inlinedAt: !254)
!257 = !DILocation(line: 70, column: 3, scope: !79, inlinedAt: !254)
!258 = !DILocation(line: 984, column: 21, scope: !259, inlinedAt: !260)
!259 = distinct !DISubprogram(name: "__float2half", scope: !170, file: !170, line: 979, type: !7, scopeLine: 979, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!260 = distinct !DILocation(line: 133, column: 53, scope: !261, inlinedAt: !262)
!261 = distinct !DISubprogram(name: "__half", scope: !170, file: !170, line: 133, type: !7, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!262 = distinct !DILocation(line: 185, column: 39, scope: !40)
!263 = !DILocation(line: 187, column: 274, scope: !40)
!264 = !DILocation(line: 68, column: 3, scope: !79, inlinedAt: !265)
!265 = distinct !DILocation(line: 192, column: 3, scope: !81, inlinedAt: !266)
!266 = distinct !DILocation(line: 189, column: 3, scope: !40)
!267 = !DILocation(line: 69, column: 3, scope: !79, inlinedAt: !265)
!268 = !DILocation(line: 70, column: 3, scope: !79, inlinedAt: !265)
!269 = !DILocation(line: 194, column: 46, scope: !40)
!270 = !DILocation(line: 196, column: 22, scope: !40)
!271 = !DILocation(line: 196, column: 134, scope: !40)
!272 = !DILocation(line: 198, column: 1, scope: !40)
