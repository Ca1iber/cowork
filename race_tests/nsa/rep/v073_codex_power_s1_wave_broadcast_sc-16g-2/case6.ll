; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v073_codex_power_s1_wave_broadcast_sc-16g-2/case6.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v073_codex_power_s1_wave_broadcast_sc-16g-2/codegen/case6.device.cpp"
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
  %0 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !dbg !42, !range !46
  %shr = lshr i32 %0, 6, !dbg !47
  %1 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !48
  %2 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %1) #10, !dbg !54
  %and.i = shl i32 %2, 2, !dbg !55
  %shl.i = and i32 %and.i, -256, !dbg !55
  %3 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i, i32 %shr), !dbg !56
  %4 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.y(), !dbg !57, !range !29
  %conv = zext nneg i32 %4 to i64, !dbg !60
  %5 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !dbg !61, !range !29
  %6 = shl nuw i32 %5, 1, !dbg !64
  %mul10 = zext i32 %6 to i64, !dbg !64
  %conv11 = sext i32 %3 to i64, !dbg !65
  %.idx = shl nuw nsw i64 %conv, 12, !dbg !66
  %7 = getelementptr i8, ptr addrspace(1) %Indices.coerce, i64 %.idx, !dbg !66
  %8 = getelementptr i32, ptr addrspace(1) %7, i64 %mul10, !dbg !66
  %arrayidx = getelementptr i32, ptr addrspace(1) %8, i64 %conv11, !dbg !66
  %9 = load i32, ptr addrspace(1) %arrayidx, align 4, !dbg !66, !tbaa !30
  %mul13 = shl nsw i32 %9, 5, !dbg !67
  %cmp = icmp sgt i32 %9, -1, !dbg !68
  br i1 %cmp, label %land.lhs.true, label %if.end702, !dbg !69

land.lhs.true:                                    ; preds = %entry
  %add17 = add nsw i32 %3, %6, !dbg !70
  %cmp18.not = icmp sgt i32 %mul13, %add17, !dbg !71
  br i1 %cmp18.not, label %if.end702, label %for.cond.preheader, !dbg !72

for.cond.preheader:                               ; preds = %land.lhs.true
  %mul22 = shl nuw nsw i64 %conv, 21
  %conv24 = zext nneg i32 %5 to i64
  %mul25 = shl nuw nsw i64 %conv24, 12
  %add26 = add nuw nsw i64 %mul22, %mul25
  %10 = shl nuw nsw i32 %0, 3
  %11 = and i32 %10, 504
  %mul35 = zext nneg i32 %11 to i64
  %add29 = or disjoint i64 %add26, %mul35
  %mul46 = shl i32 %3, 12
  %12 = shl nuw nsw i32 %0, 7
  %13 = and i32 %12, 1024
  %add52 = or disjoint i32 %mul46, %13
  %14 = shl nuw nsw i32 %0, 2
  %15 = and i32 %14, 192
  %16 = and i32 %0, 7
  %17 = lshr i32 %0, 4
  %18 = and i32 %17, 3
  %19 = lshr i32 %0, 3
  %20 = and i32 %19, 1
  %21 = getelementptr %struct.__half, ptr addrspace(4) %Q.coerce, i64 %add29, !dbg !73
  %.idx1102 = shl nsw i64 %conv11, 12, !dbg !73
  %22 = getelementptr i8, ptr addrspace(4) %21, i64 %.idx1102, !dbg !73
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %22, align 16, !dbg !74
  %qk_fetch.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %22, i64 8, !dbg !74
  %qk_fetch.sroa.26.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0..sroa_idx, align 8, !dbg !74
  %23 = or disjoint i32 %add52, %15
  %xor = xor i32 %18, %16
  %mul73 = shl nuw nsw i32 %xor, 3
  %add74 = or disjoint i32 %mul73, %23
  %.idx1103 = shl nuw nsw i32 %20, 3, !dbg !75
  %24 = getelementptr i8, ptr addrspace(3) @shared, i32 %.idx1103, !dbg !75
  %add.ptr86 = getelementptr %struct.__half, ptr addrspace(3) %24, i32 %add74, !dbg !75
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr86, align 8, !dbg !76
  %xor83.1 = shl nuw nsw i32 %20, 3, !dbg !75
  %.idx1103.1 = xor i32 %xor83.1, 8, !dbg !75
  %25 = getelementptr i8, ptr addrspace(3) @shared, i32 %.idx1103.1, !dbg !75
  %add.ptr86.1 = getelementptr %struct.__half, ptr addrspace(3) %25, i32 %add74, !dbg !75
  store i64 %qk_fetch.sroa.26.0.copyload, ptr addrspace(3) %add.ptr86.1, align 8, !dbg !76
  %add.ptr.1 = getelementptr i8, ptr addrspace(4) %22, i64 1024, !dbg !73
  %qk_fetch.sroa.0.0.copyload2169 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !74
  %qk_fetch.sroa.26.0.add.ptr.1.sroa_idx = getelementptr i8, ptr addrspace(4) %22, i64 1032, !dbg !74
  %qk_fetch.sroa.26.0.copyload2181 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.1.sroa_idx, align 8, !dbg !74
  %26 = or disjoint i32 %add52, %15
  %27 = or disjoint i32 %26, 256
  %add72.1 = or disjoint i32 %18, 4
  %xor.1 = xor i32 %add72.1, %16
  %mul73.1 = shl nuw nsw i32 %xor.1, 3
  %add74.1 = or disjoint i32 %mul73.1, %27
  %add.ptr86.11117 = getelementptr %struct.__half, ptr addrspace(3) %24, i32 %add74.1, !dbg !75
  store i64 %qk_fetch.sroa.0.0.copyload2169, ptr addrspace(3) %add.ptr86.11117, align 8, !dbg !76
  %add.ptr86.1.1 = getelementptr %struct.__half, ptr addrspace(3) %25, i32 %add74.1, !dbg !75
  store i64 %qk_fetch.sroa.26.0.copyload2181, ptr addrspace(3) %add.ptr86.1.1, align 8, !dbg !76
  %add.ptr.2 = getelementptr i8, ptr addrspace(4) %22, i64 2048, !dbg !73
  %qk_fetch.sroa.0.0.copyload2170 = load i64, ptr addrspace(4) %add.ptr.2, align 16, !dbg !74
  %qk_fetch.sroa.26.0.add.ptr.2.sroa_idx = getelementptr i8, ptr addrspace(4) %22, i64 2056, !dbg !74
  %qk_fetch.sroa.26.0.copyload2182 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.2.sroa_idx, align 8, !dbg !74
  %28 = or disjoint i32 %add52, %15
  %29 = or disjoint i32 %28, 512
  %add74.2 = or disjoint i32 %mul73, %29
  %add.ptr86.2 = getelementptr %struct.__half, ptr addrspace(3) %25, i32 %add74.2, !dbg !75
  store i64 %qk_fetch.sroa.0.0.copyload2170, ptr addrspace(3) %add.ptr86.2, align 8, !dbg !76
  %add.ptr86.1.2 = getelementptr %struct.__half, ptr addrspace(3) %24, i32 %add74.2, !dbg !75
  store i64 %qk_fetch.sroa.26.0.copyload2182, ptr addrspace(3) %add.ptr86.1.2, align 8, !dbg !76
  %add.ptr.3 = getelementptr i8, ptr addrspace(4) %22, i64 3072, !dbg !73
  %qk_fetch.sroa.0.0.copyload2171 = load i64, ptr addrspace(4) %add.ptr.3, align 16, !dbg !74
  %qk_fetch.sroa.26.0.add.ptr.3.sroa_idx = getelementptr i8, ptr addrspace(4) %22, i64 3080, !dbg !74
  %qk_fetch.sroa.26.0.copyload2183 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.3.sroa_idx, align 8, !dbg !74
  %30 = or disjoint i32 %add52, %15
  %31 = or disjoint i32 %30, 768
  %add74.3 = or disjoint i32 %mul73.1, %31
  %add.ptr86.3 = getelementptr %struct.__half, ptr addrspace(3) %25, i32 %add74.3, !dbg !75
  store i64 %qk_fetch.sroa.0.0.copyload2171, ptr addrspace(3) %add.ptr86.3, align 8, !dbg !76
  %add.ptr86.1.3 = getelementptr %struct.__half, ptr addrspace(3) %24, i32 %add74.3, !dbg !75
  store i64 %qk_fetch.sroa.26.0.copyload2183, ptr addrspace(3) %add.ptr86.1.3, align 8, !dbg !76
  fence syncscope("warp") release, !dbg !77
  tail call void @llvm.mxc.barrier.warp(), !dbg !82
  fence syncscope("warp") acquire, !dbg !83
  %32 = shl nuw nsw i32 %0, 6
  %33 = and i32 %32, 960
  %34 = lshr i32 %0, 5
  %35 = and i32 %34, 1
  %36 = xor i32 %17, %19
  %xor1271026 = and i32 %36, 1
  %add104 = or disjoint i32 %mul46, %33, !dbg !84
  %xor116 = xor i32 %35, %16, !dbg !85
  %mul117 = shl nuw nsw i32 %xor116, 3, !dbg !86
  %add118 = or disjoint i32 %add104, %mul117, !dbg !87
  %mul131 = shl nuw nsw i32 %xor1271026, 2, !dbg !88
  %add132 = or disjoint i32 %add118, %mul131, !dbg !89
  %add.ptr133 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add132, !dbg !90
  %37 = load <4 x half>, ptr addrspace(3) %add.ptr133, align 8, !dbg !91
  %add112.1 = or disjoint i32 %35, 2, !dbg !92
  %xor116.1 = xor i32 %add112.1, %16, !dbg !85
  %mul117.1 = shl nuw nsw i32 %xor116.1, 3, !dbg !86
  %add118.1 = or disjoint i32 %add104, %mul117.1, !dbg !87
  %add132.1 = or disjoint i32 %add118.1, %mul131, !dbg !89
  %add.ptr133.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add132.1, !dbg !90
  %38 = load <4 x half>, ptr addrspace(3) %add.ptr133.1, align 8, !dbg !91
  %add112.2 = or disjoint i32 %35, 4, !dbg !92
  %xor116.2 = xor i32 %add112.2, %16, !dbg !85
  %mul117.2 = shl nuw nsw i32 %xor116.2, 3, !dbg !86
  %add118.2 = or disjoint i32 %add104, %mul117.2, !dbg !87
  %add132.2 = or disjoint i32 %add118.2, %mul131, !dbg !89
  %add.ptr133.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add132.2, !dbg !90
  %39 = load <4 x half>, ptr addrspace(3) %add.ptr133.2, align 8, !dbg !91
  %add112.3 = or disjoint i32 %35, 6, !dbg !92
  %xor116.3 = xor i32 %add112.3, %16, !dbg !85
  %mul117.3 = shl nuw nsw i32 %xor116.3, 3, !dbg !86
  %add118.3 = or disjoint i32 %add104, %mul117.3, !dbg !87
  %add132.3 = or disjoint i32 %add118.3, %mul131, !dbg !89
  %add.ptr133.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add132.3, !dbg !90
  %40 = load <4 x half>, ptr addrspace(3) %add.ptr133.3, align 8, !dbg !91
  %add99.4 = or disjoint i32 %mul46, 1024, !dbg !93
  %add104.4 = or disjoint i32 %add99.4, %33, !dbg !84
  %add118.4 = or disjoint i32 %add104.4, %mul117, !dbg !87
  %xor130.4 = shl nuw nsw i32 %xor1271026, 2, !dbg !88
  %mul131.4 = xor i32 %xor130.4, 4, !dbg !88
  %add132.4 = or disjoint i32 %add118.4, %mul131.4, !dbg !89
  %add.ptr133.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add132.4, !dbg !90
  %41 = load <4 x half>, ptr addrspace(3) %add.ptr133.4, align 8, !dbg !91
  %add118.5 = or disjoint i32 %add104.4, %mul117.1, !dbg !87
  %add132.5 = or disjoint i32 %add118.5, %mul131.4, !dbg !89
  %add.ptr133.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add132.5, !dbg !90
  %42 = load <4 x half>, ptr addrspace(3) %add.ptr133.5, align 8, !dbg !91
  %add118.6 = or disjoint i32 %add104.4, %mul117.2, !dbg !87
  %add132.6 = or disjoint i32 %add118.6, %mul131.4, !dbg !89
  %add.ptr133.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add132.6, !dbg !90
  %43 = load <4 x half>, ptr addrspace(3) %add.ptr133.6, align 8, !dbg !91
  %add118.7 = or disjoint i32 %add104.4, %mul117.3, !dbg !87
  %add132.7 = or disjoint i32 %add118.7, %mul131.4, !dbg !89
  %add.ptr133.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add132.7, !dbg !90
  %44 = load <4 x half>, ptr addrspace(3) %add.ptr133.7, align 8, !dbg !91
  fence syncscope("warp") release, !dbg !94
  tail call void @llvm.mxc.barrier.warp(), !dbg !97
  fence syncscope("warp") acquire, !dbg !98
  %mul147 = shl nuw nsw i64 %conv, 17
  %conv151 = zext nneg i32 %mul13 to i64
  %add150 = or disjoint i64 %mul147, %mul35
  %45 = shl nuw nsw i32 %0, 8
  %46 = and i32 %45, 2048
  %add177 = or disjoint i32 %mul46, %46
  %47 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add150, !dbg !99
  %.idx1104 = shl nuw nsw i64 %conv151, 8, !dbg !99
  %48 = getelementptr inbounds i8, ptr addrspace(4) %47, i64 %.idx1104, !dbg !99
  %qk_fetch.sroa.0.0.copyload2168 = load i64, ptr addrspace(4) %48, align 16, !dbg !100
  %qk_fetch.sroa.26.0..sroa_idx2179 = getelementptr inbounds i8, ptr addrspace(4) %48, i64 8, !dbg !100
  %qk_fetch.sroa.26.0.copyload2180 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0..sroa_idx2179, align 8, !dbg !100
  %49 = or disjoint i32 %add177, %15
  %add200 = or disjoint i32 %mul73, %49
  %add.ptr213 = getelementptr %struct.__half, ptr addrspace(3) %24, i32 %add200, !dbg !101
  store i64 %qk_fetch.sroa.0.0.copyload2168, ptr addrspace(3) %add.ptr213, align 8, !dbg !102
  %add.ptr213.1 = getelementptr %struct.__half, ptr addrspace(3) %25, i32 %add200, !dbg !101
  store i64 %qk_fetch.sroa.26.0.copyload2180, ptr addrspace(3) %add.ptr213.1, align 8, !dbg !102
  %add.ptr159.1 = getelementptr inbounds i8, ptr addrspace(4) %48, i64 1024, !dbg !99
  %qk_fetch.sroa.0.0.copyload2172 = load i64, ptr addrspace(4) %add.ptr159.1, align 16, !dbg !100
  %qk_fetch.sroa.26.0.add.ptr159.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %48, i64 1032, !dbg !100
  %qk_fetch.sroa.26.0.copyload2184 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr159.1.sroa_idx, align 8, !dbg !100
  %50 = or disjoint i32 %add177, %15
  %51 = or disjoint i32 %50, 256
  %add200.1 = or disjoint i32 %mul73.1, %51
  %add.ptr213.11124 = getelementptr %struct.__half, ptr addrspace(3) %24, i32 %add200.1, !dbg !101
  store i64 %qk_fetch.sroa.0.0.copyload2172, ptr addrspace(3) %add.ptr213.11124, align 8, !dbg !102
  %add.ptr213.1.1 = getelementptr %struct.__half, ptr addrspace(3) %25, i32 %add200.1, !dbg !101
  store i64 %qk_fetch.sroa.26.0.copyload2184, ptr addrspace(3) %add.ptr213.1.1, align 8, !dbg !102
  %add.ptr159.2 = getelementptr inbounds i8, ptr addrspace(4) %48, i64 2048, !dbg !99
  %qk_fetch.sroa.0.0.copyload2173 = load i64, ptr addrspace(4) %add.ptr159.2, align 16, !dbg !100
  %qk_fetch.sroa.26.0.add.ptr159.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %48, i64 2056, !dbg !100
  %qk_fetch.sroa.26.0.copyload2185 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr159.2.sroa_idx, align 8, !dbg !100
  %52 = or disjoint i32 %add177, %15
  %53 = or disjoint i32 %52, 512
  %add200.2 = or disjoint i32 %mul73, %53
  %shr2041068.2 = and i32 %19, 1
  %54 = shl nuw nsw i32 %shr2041068.2, 3, !dbg !101
  %.idx1105.2 = xor i32 %54, 8, !dbg !101
  %55 = getelementptr i8, ptr addrspace(3) @shared, i32 %.idx1105.2, !dbg !101
  %add.ptr213.2 = getelementptr %struct.__half, ptr addrspace(3) %55, i32 %add200.2, !dbg !101
  store i64 %qk_fetch.sroa.0.0.copyload2173, ptr addrspace(3) %add.ptr213.2, align 8, !dbg !102
  %.idx1105.1.2 = shl nuw nsw i32 %shr2041068.2, 3, !dbg !101
  %56 = getelementptr i8, ptr addrspace(3) @shared, i32 %.idx1105.1.2, !dbg !101
  %add.ptr213.1.2 = getelementptr %struct.__half, ptr addrspace(3) %56, i32 %add200.2, !dbg !101
  store i64 %qk_fetch.sroa.26.0.copyload2185, ptr addrspace(3) %add.ptr213.1.2, align 8, !dbg !102
  %add.ptr159.3 = getelementptr inbounds i8, ptr addrspace(4) %48, i64 3072, !dbg !99
  %qk_fetch.sroa.0.0.copyload2174 = load i64, ptr addrspace(4) %add.ptr159.3, align 16, !dbg !100
  %qk_fetch.sroa.26.0.add.ptr159.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %48, i64 3080, !dbg !100
  %qk_fetch.sroa.26.0.copyload2186 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr159.3.sroa_idx, align 8, !dbg !100
  %57 = or disjoint i32 %add177, %15
  %58 = or disjoint i32 %57, 768
  %add200.3 = or disjoint i32 %mul73.1, %58
  %add.ptr213.3 = getelementptr %struct.__half, ptr addrspace(3) %55, i32 %add200.3, !dbg !101
  store i64 %qk_fetch.sroa.0.0.copyload2174, ptr addrspace(3) %add.ptr213.3, align 8, !dbg !102
  %add.ptr213.1.3 = getelementptr %struct.__half, ptr addrspace(3) %56, i32 %add200.3, !dbg !101
  store i64 %qk_fetch.sroa.26.0.copyload2186, ptr addrspace(3) %add.ptr213.1.3, align 8, !dbg !102
  %add.ptr159.4 = getelementptr inbounds i8, ptr addrspace(4) %48, i64 4096, !dbg !99
  %qk_fetch.sroa.0.0.copyload2175 = load i64, ptr addrspace(4) %add.ptr159.4, align 16, !dbg !100
  %qk_fetch.sroa.26.0.add.ptr159.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %48, i64 4104, !dbg !100
  %qk_fetch.sroa.26.0.copyload2187 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr159.4.sroa_idx, align 8, !dbg !100
  %59 = or disjoint i32 %add177, %15
  %60 = or disjoint i32 %59, 1024
  %add200.4 = or disjoint i32 %mul73, %60
  %61 = and i32 %19, 1
  %.idx1105.4 = shl nuw nsw i32 %61, 3, !dbg !101
  %62 = getelementptr i8, ptr addrspace(3) @shared, i32 %.idx1105.4, !dbg !101
  %add.ptr213.4 = getelementptr %struct.__half, ptr addrspace(3) %62, i32 %add200.4, !dbg !101
  store i64 %qk_fetch.sroa.0.0.copyload2175, ptr addrspace(3) %add.ptr213.4, align 8, !dbg !102
  %xor210.1.4 = shl nuw nsw i32 %61, 3, !dbg !101
  %.idx1105.1.4 = xor i32 %xor210.1.4, 8, !dbg !101
  %63 = getelementptr i8, ptr addrspace(3) @shared, i32 %.idx1105.1.4, !dbg !101
  %add.ptr213.1.4 = getelementptr %struct.__half, ptr addrspace(3) %63, i32 %add200.4, !dbg !101
  store i64 %qk_fetch.sroa.26.0.copyload2187, ptr addrspace(3) %add.ptr213.1.4, align 8, !dbg !102
  %add.ptr159.5 = getelementptr inbounds i8, ptr addrspace(4) %48, i64 5120, !dbg !99
  %qk_fetch.sroa.0.0.copyload2176 = load i64, ptr addrspace(4) %add.ptr159.5, align 16, !dbg !100
  %qk_fetch.sroa.26.0.add.ptr159.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %48, i64 5128, !dbg !100
  %qk_fetch.sroa.26.0.copyload2188 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr159.5.sroa_idx, align 8, !dbg !100
  %64 = or disjoint i32 %add177, %15
  %65 = or disjoint i32 %64, 1280
  %add200.5 = or disjoint i32 %mul73.1, %65
  %add.ptr213.5 = getelementptr %struct.__half, ptr addrspace(3) %62, i32 %add200.5, !dbg !101
  store i64 %qk_fetch.sroa.0.0.copyload2176, ptr addrspace(3) %add.ptr213.5, align 8, !dbg !102
  %add.ptr213.1.5 = getelementptr %struct.__half, ptr addrspace(3) %63, i32 %add200.5, !dbg !101
  store i64 %qk_fetch.sroa.26.0.copyload2188, ptr addrspace(3) %add.ptr213.1.5, align 8, !dbg !102
  %add.ptr159.6 = getelementptr inbounds i8, ptr addrspace(4) %48, i64 6144, !dbg !99
  %qk_fetch.sroa.0.0.copyload2177 = load i64, ptr addrspace(4) %add.ptr159.6, align 16, !dbg !100
  %qk_fetch.sroa.26.0.add.ptr159.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %48, i64 6152, !dbg !100
  %qk_fetch.sroa.26.0.copyload2189 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr159.6.sroa_idx, align 8, !dbg !100
  %66 = or disjoint i32 %add177, %15
  %67 = or disjoint i32 %66, 1536
  %add200.6 = or disjoint i32 %mul73, %67
  %shr2041068.6 = and i32 %19, 1
  %68 = shl nuw nsw i32 %shr2041068.6, 3, !dbg !101
  %.idx1105.6 = xor i32 %68, 8, !dbg !101
  %69 = getelementptr i8, ptr addrspace(3) @shared, i32 %.idx1105.6, !dbg !101
  %add.ptr213.6 = getelementptr %struct.__half, ptr addrspace(3) %69, i32 %add200.6, !dbg !101
  store i64 %qk_fetch.sroa.0.0.copyload2177, ptr addrspace(3) %add.ptr213.6, align 8, !dbg !102
  %.idx1105.1.6 = shl nuw nsw i32 %shr2041068.6, 3, !dbg !101
  %70 = getelementptr i8, ptr addrspace(3) @shared, i32 %.idx1105.1.6, !dbg !101
  %add.ptr213.1.6 = getelementptr %struct.__half, ptr addrspace(3) %70, i32 %add200.6, !dbg !101
  store i64 %qk_fetch.sroa.26.0.copyload2189, ptr addrspace(3) %add.ptr213.1.6, align 8, !dbg !102
  %add.ptr159.7 = getelementptr inbounds i8, ptr addrspace(4) %48, i64 7168, !dbg !99
  %qk_fetch.sroa.0.0.copyload2178 = load i64, ptr addrspace(4) %add.ptr159.7, align 16, !dbg !100
  %qk_fetch.sroa.26.0.add.ptr159.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %48, i64 7176, !dbg !100
  %qk_fetch.sroa.26.0.copyload2190 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr159.7.sroa_idx, align 8, !dbg !100
  %71 = or disjoint i32 %add177, %15
  %72 = or disjoint i32 %71, 1792
  %add200.7 = or disjoint i32 %mul73.1, %72
  %add.ptr213.7 = getelementptr %struct.__half, ptr addrspace(3) %69, i32 %add200.7, !dbg !101
  store i64 %qk_fetch.sroa.0.0.copyload2178, ptr addrspace(3) %add.ptr213.7, align 8, !dbg !102
  %add.ptr213.1.7 = getelementptr %struct.__half, ptr addrspace(3) %70, i32 %add200.7, !dbg !101
  store i64 %qk_fetch.sroa.26.0.copyload2190, ptr addrspace(3) %add.ptr213.1.7, align 8, !dbg !102
  fence syncscope("warp") release, !dbg !103
  tail call void @llvm.mxc.barrier.warp(), !dbg !106
  fence syncscope("warp") acquire, !dbg !107
  %add253 = or disjoint i32 %mul117, %33
  %add267 = or disjoint i32 %add253, %mul46, !dbg !108
  %add281 = or disjoint i32 %add267, %mul131, !dbg !109
  %add.ptr282 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add281, !dbg !110
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr282, align 8, !dbg !111
  %73 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %37, <4 x float> zeroinitializer), !dbg !112
  %add267.1 = or disjoint i32 %add253, %add99.4, !dbg !108
  %add281.1 = or disjoint i32 %add267.1, %mul131, !dbg !109
  %add.ptr282.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add281.1, !dbg !110
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr282.1, align 8, !dbg !111
  %74 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %37, <4 x float> zeroinitializer), !dbg !112
  %add253.1 = or disjoint i32 %mul117.1, %33
  %add267.11125 = or disjoint i32 %add253.1, %mul46, !dbg !108
  %add281.11126 = or disjoint i32 %add267.11125, %mul131, !dbg !109
  %add.ptr282.11127 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add281.11126, !dbg !110
  %k_local.sroa.0.0.copyload.11128 = load <4 x half>, ptr addrspace(3) %add.ptr282.11127, align 8, !dbg !111
  %75 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11128, <4 x half> %38, <4 x float> %73), !dbg !112
  %add267.1.1 = or disjoint i32 %add253.1, %add99.4, !dbg !108
  %add281.1.1 = or disjoint i32 %add267.1.1, %mul131, !dbg !109
  %add.ptr282.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add281.1.1, !dbg !110
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr282.1.1, align 8, !dbg !111
  %76 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %38, <4 x float> %74), !dbg !112
  %add253.2 = or disjoint i32 %mul117.2, %33
  %add267.2 = or disjoint i32 %add253.2, %mul46, !dbg !108
  %add281.2 = or disjoint i32 %add267.2, %mul131, !dbg !109
  %add.ptr282.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add281.2, !dbg !110
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr282.2, align 8, !dbg !111
  %77 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %39, <4 x float> %75), !dbg !112
  %add267.1.2 = or disjoint i32 %add253.2, %add99.4, !dbg !108
  %add281.1.2 = or disjoint i32 %add267.1.2, %mul131, !dbg !109
  %add.ptr282.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add281.1.2, !dbg !110
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr282.1.2, align 8, !dbg !111
  %78 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %39, <4 x float> %76), !dbg !112
  %add253.3 = or disjoint i32 %mul117.3, %33
  %add267.3 = or disjoint i32 %add253.3, %mul46, !dbg !108
  %add281.3 = or disjoint i32 %add267.3, %mul131, !dbg !109
  %add.ptr282.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add281.3, !dbg !110
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr282.3, align 8, !dbg !111
  %79 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %40, <4 x float> %77), !dbg !112
  %add267.1.3 = or disjoint i32 %add253.3, %add99.4, !dbg !108
  %add281.1.3 = or disjoint i32 %add267.1.3, %mul131, !dbg !109
  %add.ptr282.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add281.1.3, !dbg !110
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr282.1.3, align 8, !dbg !111
  %80 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %40, <4 x float> %78), !dbg !112
  %add245.4 = or disjoint i32 %mul46, 2048
  %add267.4 = or disjoint i32 %add253, %add245.4, !dbg !108
  %add281.4 = or disjoint i32 %add267.4, %mul131.4, !dbg !109
  %add.ptr282.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add281.4, !dbg !110
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %add.ptr282.4, align 8, !dbg !111
  %81 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %41, <4 x float> %79), !dbg !112
  %add248.1.4 = or disjoint i32 %mul46, 3072, !dbg !113
  %add267.1.4 = or disjoint i32 %add253, %add248.1.4, !dbg !108
  %add281.1.4 = or disjoint i32 %add267.1.4, %mul131.4, !dbg !109
  %add.ptr282.1.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add281.1.4, !dbg !110
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr282.1.4, align 8, !dbg !111
  %82 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %41, <4 x float> %80), !dbg !112
  %add267.5 = or disjoint i32 %add253.1, %add245.4, !dbg !108
  %add281.5 = or disjoint i32 %add267.5, %mul131.4, !dbg !109
  %add.ptr282.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add281.5, !dbg !110
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %add.ptr282.5, align 8, !dbg !111
  %83 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %42, <4 x float> %81), !dbg !112
  %add267.1.5 = or disjoint i32 %add253.1, %add248.1.4, !dbg !108
  %add281.1.5 = or disjoint i32 %add267.1.5, %mul131.4, !dbg !109
  %add.ptr282.1.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add281.1.5, !dbg !110
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr282.1.5, align 8, !dbg !111
  %84 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %42, <4 x float> %82), !dbg !112
  %add267.6 = or disjoint i32 %add253.2, %add245.4, !dbg !108
  %add281.6 = or disjoint i32 %add267.6, %mul131.4, !dbg !109
  %add.ptr282.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add281.6, !dbg !110
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %add.ptr282.6, align 8, !dbg !111
  %85 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %43, <4 x float> %83), !dbg !112
  %add267.1.6 = or disjoint i32 %add253.2, %add248.1.4, !dbg !108
  %add281.1.6 = or disjoint i32 %add267.1.6, %mul131.4, !dbg !109
  %add.ptr282.1.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add281.1.6, !dbg !110
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr282.1.6, align 8, !dbg !111
  %86 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %43, <4 x float> %84), !dbg !112
  %add267.7 = or disjoint i32 %add253.3, %add245.4, !dbg !108
  %add281.7 = or disjoint i32 %add267.7, %mul131.4, !dbg !109
  %add.ptr282.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add281.7, !dbg !110
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %add.ptr282.7, align 8, !dbg !111
  %87 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %44, <4 x float> %85), !dbg !112
  %add267.1.7 = or disjoint i32 %add253.3, %add248.1.4, !dbg !108
  %add281.1.7 = or disjoint i32 %add267.1.7, %mul131.4, !dbg !109
  %add.ptr282.1.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add281.1.7, !dbg !110
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr282.1.7, align 8, !dbg !111
  %88 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %44, <4 x float> %86), !dbg !112
  %89 = lshr i32 %0, 2
  %mul314 = and i32 %89, 12
  %add316 = or disjoint i32 %mul314, %mul13
  %cmp321.not = icmp sgt i32 %add316, %add17, !dbg !114
  %scores.sroa.0.0.vec.extract = extractelement <4 x float> %87, i64 0
  %spec.select = select i1 %cmp321.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract, !dbg !115
  %cmp321.not.1.not = icmp slt i32 %add316, %add17, !dbg !114
  %scores.sroa.0.4.vec.extract = extractelement <4 x float> %87, i64 1, !dbg !115
  %condval.0.1 = select i1 %cmp321.not.1.not, float %scores.sroa.0.4.vec.extract, float 0xFFF0000000000000, !dbg !115
  %add317.2 = or disjoint i32 %add316, 2, !dbg !116
  %cmp321.not.2 = icmp sgt i32 %add317.2, %add17, !dbg !114
  %scores.sroa.0.8.vec.extract = extractelement <4 x float> %87, i64 2, !dbg !115
  %condval.0.2 = select i1 %cmp321.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract, !dbg !115
  %add317.3 = or disjoint i32 %add316, 3, !dbg !116
  %cmp321.not.3 = icmp sgt i32 %add317.3, %add17, !dbg !114
  %scores.sroa.0.12.vec.extract = extractelement <4 x float> %87, i64 3, !dbg !115
  %condval.0.3 = select i1 %cmp321.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract, !dbg !115
  %add315.1 = or disjoint i32 %mul314, %mul13
  %add316.1 = or disjoint i32 %add315.1, 16
  %cmp321.not.11129 = icmp sgt i32 %add316.1, %add17, !dbg !114
  %scores.sroa.38.16.vec.extract = extractelement <4 x float> %88, i64 0, !dbg !115
  %condval.0.11132 = select i1 %cmp321.not.11129, float 0xFFF0000000000000, float %scores.sroa.38.16.vec.extract, !dbg !115
  %add317.1.1 = or disjoint i32 %add315.1, 17, !dbg !116
  %cmp321.not.1.1 = icmp sgt i32 %add317.1.1, %add17, !dbg !114
  %scores.sroa.38.20.vec.extract = extractelement <4 x float> %88, i64 1, !dbg !115
  %condval.0.1.1 = select i1 %cmp321.not.1.1, float 0xFFF0000000000000, float %scores.sroa.38.20.vec.extract, !dbg !115
  %add317.2.1 = or disjoint i32 %add315.1, 18, !dbg !116
  %cmp321.not.2.1 = icmp sgt i32 %add317.2.1, %add17, !dbg !114
  %scores.sroa.38.24.vec.extract = extractelement <4 x float> %88, i64 2, !dbg !115
  %condval.0.2.1 = select i1 %cmp321.not.2.1, float 0xFFF0000000000000, float %scores.sroa.38.24.vec.extract, !dbg !115
  %add317.3.1 = or disjoint i32 %add315.1, 19, !dbg !116
  %cmp321.not.3.1 = icmp sgt i32 %add317.3.1, %add17, !dbg !114
  %scores.sroa.38.28.vec.extract = extractelement <4 x float> %88, i64 3, !dbg !115
  %condval.0.3.1 = select i1 %cmp321.not.3.1, float 0xFFF0000000000000, float %scores.sroa.38.28.vec.extract, !dbg !115
  %90 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !117
  %91 = tail call contract noundef float @llvm.maxnum.f32(float %90, float %condval.0.1), !dbg !117
  %92 = tail call contract noundef float @llvm.maxnum.f32(float %91, float %condval.0.2), !dbg !117
  %93 = tail call contract noundef float @llvm.maxnum.f32(float %92, float %condval.0.3), !dbg !117
  %94 = tail call contract noundef float @llvm.maxnum.f32(float %93, float %condval.0.11132), !dbg !117
  %95 = tail call contract noundef float @llvm.maxnum.f32(float %94, float %condval.0.1.1), !dbg !117
  %96 = tail call contract noundef float @llvm.maxnum.f32(float %95, float %condval.0.2.1), !dbg !117
  %97 = tail call contract noundef float @llvm.maxnum.f32(float %96, float %condval.0.3.1), !dbg !117
  %98 = bitcast float %97 to i32, !dbg !121
  %99 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !124
  %100 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %99) #10, !dbg !128
  %xor.i.i = xor i32 %100, 32, !dbg !129
  %101 = and i32 %100, -64, !dbg !130
  %and.i.i = add nsw i32 %101, 64, !dbg !130
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !131
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %100, !dbg !132
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !133
  %102 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %98), !dbg !134
  %103 = bitcast i32 %102 to float, !dbg !135
  %104 = tail call contract noundef float @llvm.maxnum.f32(float %97, float %103), !dbg !136
  %105 = bitcast float %104 to i32, !dbg !138
  %106 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !140
  %107 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %106) #10, !dbg !143
  %xor.i.i1027 = xor i32 %107, 16, !dbg !144
  %108 = and i32 %107, -64, !dbg !145
  %and.i.i1028 = add nsw i32 %108, 64, !dbg !145
  %cmp.not.i.i1029 = icmp slt i32 %xor.i.i1027, %and.i.i1028, !dbg !146
  %cond.i.i1030 = select i1 %cmp.not.i.i1029, i32 %xor.i.i1027, i32 %107, !dbg !147
  %shl.i.i1031 = shl i32 %cond.i.i1030, 2, !dbg !148
  %109 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1031, i32 %105), !dbg !149
  %110 = bitcast i32 %109 to float, !dbg !150
  %111 = tail call contract noundef float @llvm.maxnum.f32(float %104, float %110), !dbg !151
  %sub = fsub contract float %spec.select, %111, !dbg !153
  %sub378 = fsub contract float %condval.0.1, %111, !dbg !154
  %sub381 = fsub contract float %condval.0.2, %111, !dbg !155
  %sub384 = fsub contract float %condval.0.3, %111, !dbg !156
  %mul389 = fmul contract float %sub, 0x3FC0527DC0000000, !dbg !157
  %mul393 = fmul contract float %sub378, 0x3FC0527DC0000000, !dbg !158
  %mul397 = fmul contract float %sub381, 0x3FC0527DC0000000, !dbg !159
  %mul401 = fmul contract float %sub384, 0x3FC0527DC0000000, !dbg !160
  %add406 = fadd contract float %mul389, 8.000000e+00, !dbg !161
  %add410 = fadd contract float %mul393, 8.000000e+00, !dbg !162
  %add414 = fadd contract float %mul397, 8.000000e+00, !dbg !163
  %add418 = fadd contract float %mul401, 8.000000e+00, !dbg !164
  %cmp.i.i = fcmp contract olt float %add406, -1.260000e+02, !dbg !165
  %cond.i.i1032 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !165
  %add.i.i = fadd contract float %add406, %cond.i.i1032, !dbg !165
  %112 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !165
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !165
  %mul.i.i = fmul contract float %cond2.i.i, %112, !dbg !165
  %cmp.i.i1033 = fcmp contract olt float %add410, -1.260000e+02, !dbg !168
  %cond.i.i1034 = select contract i1 %cmp.i.i1033, float 6.400000e+01, float 0.000000e+00, !dbg !168
  %add.i.i1035 = fadd contract float %add410, %cond.i.i1034, !dbg !168
  %113 = tail call contract float @llvm.exp2.f32(float %add.i.i1035), !dbg !168
  %cond2.i.i1036 = select contract i1 %cmp.i.i1033, float 0x3BF0000000000000, float 1.000000e+00, !dbg !168
  %mul.i.i1037 = fmul contract float %cond2.i.i1036, %113, !dbg !168
  %cmp.i.i1038 = fcmp contract olt float %add414, -1.260000e+02, !dbg !170
  %cond.i.i1039 = select contract i1 %cmp.i.i1038, float 6.400000e+01, float 0.000000e+00, !dbg !170
  %add.i.i1040 = fadd contract float %add414, %cond.i.i1039, !dbg !170
  %114 = tail call contract float @llvm.exp2.f32(float %add.i.i1040), !dbg !170
  %cond2.i.i1041 = select contract i1 %cmp.i.i1038, float 0x3BF0000000000000, float 1.000000e+00, !dbg !170
  %mul.i.i1042 = fmul contract float %cond2.i.i1041, %114, !dbg !170
  %cmp.i.i1043 = fcmp contract olt float %add418, -1.260000e+02, !dbg !172
  %cond.i.i1044 = select contract i1 %cmp.i.i1043, float 6.400000e+01, float 0.000000e+00, !dbg !172
  %add.i.i1045 = fadd contract float %add418, %cond.i.i1044, !dbg !172
  %115 = tail call contract float @llvm.exp2.f32(float %add.i.i1045), !dbg !172
  %cond2.i.i1046 = select contract i1 %cmp.i.i1043, float 0x3BF0000000000000, float 1.000000e+00, !dbg !172
  %mul.i.i1047 = fmul contract float %cond2.i.i1046, %115, !dbg !172
  %116 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !174, !noalias !182
  %117 = fptrunc float %mul.i.i to half, !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %116), !dbg !174, !noalias !182
  %118 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !187, !noalias !182
  %119 = fptrunc float %mul.i.i1037 to half, !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %118), !dbg !187, !noalias !182
  %120 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !189
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !189, !noalias !193
  %121 = fptrunc float %mul.i.i1042 to half, !dbg !189
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %120), !dbg !189, !noalias !193
  %122 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !198
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !198, !noalias !193
  %123 = fptrunc float %mul.i.i1047 to half, !dbg !198
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %122), !dbg !198, !noalias !193
  %124 = insertelement <4 x half> poison, half %117, i64 0, !dbg !200
  %125 = insertelement <4 x half> %124, half %119, i64 1, !dbg !200
  %126 = insertelement <4 x half> %125, half %121, i64 2, !dbg !200
  %127 = insertelement <4 x half> %126, half %123, i64 3, !dbg !200
  %sub.1 = fsub contract float %condval.0.11132, %111, !dbg !153
  %sub378.1 = fsub contract float %condval.0.1.1, %111, !dbg !154
  %sub381.1 = fsub contract float %condval.0.2.1, %111, !dbg !155
  %sub384.1 = fsub contract float %condval.0.3.1, %111, !dbg !156
  %mul389.1 = fmul contract float %sub.1, 0x3FC0527DC0000000, !dbg !157
  %mul393.1 = fmul contract float %sub378.1, 0x3FC0527DC0000000, !dbg !158
  %mul397.1 = fmul contract float %sub381.1, 0x3FC0527DC0000000, !dbg !159
  %mul401.1 = fmul contract float %sub384.1, 0x3FC0527DC0000000, !dbg !160
  %add406.1 = fadd contract float %mul389.1, 8.000000e+00, !dbg !161
  %add410.1 = fadd contract float %mul393.1, 8.000000e+00, !dbg !162
  %add414.1 = fadd contract float %mul397.1, 8.000000e+00, !dbg !163
  %add418.1 = fadd contract float %mul401.1, 8.000000e+00, !dbg !164
  %cmp.i.i.1 = fcmp contract olt float %add406.1, -1.260000e+02, !dbg !165
  %cond.i.i1032.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !165
  %add.i.i.1 = fadd contract float %add406.1, %cond.i.i1032.1, !dbg !165
  %128 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !165
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !165
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %128, !dbg !165
  %cmp.i.i1033.1 = fcmp contract olt float %add410.1, -1.260000e+02, !dbg !168
  %cond.i.i1034.1 = select contract i1 %cmp.i.i1033.1, float 6.400000e+01, float 0.000000e+00, !dbg !168
  %add.i.i1035.1 = fadd contract float %add410.1, %cond.i.i1034.1, !dbg !168
  %129 = tail call contract float @llvm.exp2.f32(float %add.i.i1035.1), !dbg !168
  %cond2.i.i1036.1 = select contract i1 %cmp.i.i1033.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !168
  %mul.i.i1037.1 = fmul contract float %cond2.i.i1036.1, %129, !dbg !168
  %cmp.i.i1038.1 = fcmp contract olt float %add414.1, -1.260000e+02, !dbg !170
  %cond.i.i1039.1 = select contract i1 %cmp.i.i1038.1, float 6.400000e+01, float 0.000000e+00, !dbg !170
  %add.i.i1040.1 = fadd contract float %add414.1, %cond.i.i1039.1, !dbg !170
  %130 = tail call contract float @llvm.exp2.f32(float %add.i.i1040.1), !dbg !170
  %cond2.i.i1041.1 = select contract i1 %cmp.i.i1038.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !170
  %mul.i.i1042.1 = fmul contract float %cond2.i.i1041.1, %130, !dbg !170
  %cmp.i.i1043.1 = fcmp contract olt float %add418.1, -1.260000e+02, !dbg !172
  %cond.i.i1044.1 = select contract i1 %cmp.i.i1043.1, float 6.400000e+01, float 0.000000e+00, !dbg !172
  %add.i.i1045.1 = fadd contract float %add418.1, %cond.i.i1044.1, !dbg !172
  %131 = tail call contract float @llvm.exp2.f32(float %add.i.i1045.1), !dbg !172
  %cond2.i.i1046.1 = select contract i1 %cmp.i.i1043.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !172
  %mul.i.i1047.1 = fmul contract float %cond2.i.i1046.1, %131, !dbg !172
  %132 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !174, !noalias !182
  %133 = fptrunc float %mul.i.i.1 to half, !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %132), !dbg !174, !noalias !182
  %134 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !187, !noalias !182
  %135 = fptrunc float %mul.i.i1037.1 to half, !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %134), !dbg !187, !noalias !182
  %136 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !189
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !189, !noalias !193
  %137 = fptrunc float %mul.i.i1042.1 to half, !dbg !189
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %136), !dbg !189, !noalias !193
  %138 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !198
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !198, !noalias !193
  %139 = fptrunc float %mul.i.i1047.1 to half, !dbg !198
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %138), !dbg !198, !noalias !193
  %140 = insertelement <4 x half> poison, half %133, i64 0, !dbg !200
  %141 = insertelement <4 x half> %140, half %135, i64 1, !dbg !200
  %142 = insertelement <4 x half> %141, half %137, i64 2, !dbg !200
  %143 = insertelement <4 x half> %142, half %139, i64 3, !dbg !200
  %conv.i.i = fpext half %117 to float, !dbg !201
  %add456 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !206
  %conv.i.i.1 = fpext half %119 to float, !dbg !201
  %add456.1 = fadd contract float %add456, %conv.i.i.1, !dbg !206
  %conv.i.i.2 = fpext half %121 to float, !dbg !201
  %add456.2 = fadd contract float %add456.1, %conv.i.i.2, !dbg !206
  %conv.i.i.3 = fpext half %123 to float, !dbg !201
  %add456.3 = fadd contract float %add456.2, %conv.i.i.3, !dbg !206
  %conv.i.i.4 = fpext half %133 to float, !dbg !201
  %add456.4 = fadd contract float %add456.3, %conv.i.i.4, !dbg !206
  %conv.i.i.5 = fpext half %135 to float, !dbg !201
  %add456.5 = fadd contract float %add456.4, %conv.i.i.5, !dbg !206
  %conv.i.i.6 = fpext half %137 to float, !dbg !201
  %add456.6 = fadd contract float %add456.5, %conv.i.i.6, !dbg !206
  %conv.i.i.7 = fpext half %139 to float, !dbg !201
  %add456.7 = fadd contract float %add456.6, %conv.i.i.7, !dbg !206
  %144 = bitcast float %add456.7 to i32, !dbg !207
  %145 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !209
  %146 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %145) #10, !dbg !212
  %xor.i.i1049 = xor i32 %146, 32, !dbg !213
  %147 = and i32 %146, -64, !dbg !214
  %and.i.i1050 = add nsw i32 %147, 64, !dbg !214
  %cmp.not.i.i1051 = icmp slt i32 %xor.i.i1049, %and.i.i1050, !dbg !215
  %cond.i.i1052 = select i1 %cmp.not.i.i1051, i32 %xor.i.i1049, i32 %146, !dbg !216
  %shl.i.i1053 = shl i32 %cond.i.i1052, 2, !dbg !217
  %148 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1053, i32 %144), !dbg !218
  %149 = bitcast i32 %148 to float, !dbg !219
  %add464 = fadd contract float %add456.7, %149, !dbg !220
  %150 = bitcast float %add464 to i32, !dbg !221
  %151 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !223
  %152 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %151) #10, !dbg !226
  %xor.i.i1054 = xor i32 %152, 16, !dbg !227
  %153 = and i32 %152, -64, !dbg !228
  %and.i.i1055 = add nsw i32 %153, 64, !dbg !228
  %cmp.not.i.i1056 = icmp slt i32 %xor.i.i1054, %and.i.i1055, !dbg !229
  %cond.i.i1057 = select i1 %cmp.not.i.i1056, i32 %xor.i.i1054, i32 %152, !dbg !230
  %shl.i.i1058 = shl i32 %cond.i.i1057, 2, !dbg !231
  %154 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1058, i32 %150), !dbg !232
  %155 = bitcast i32 %154 to float, !dbg !233
  fence syncscope("warp") release, !dbg !234
  tail call void @llvm.mxc.barrier.warp(), !dbg !237
  fence syncscope("warp") acquire, !dbg !238
  %156 = shl nuw nsw i32 %0, 5
  %157 = and i32 %156, 1792
  %mul493 = zext nneg i32 %157 to i64
  %add494 = or disjoint i64 %mul147, %mul493
  %158 = and i32 %10, 56
  %mul507 = zext nneg i32 %158 to i64
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %mul507
  %159 = and i32 %156, 224
  %160 = and i32 %19, 7
  %xor5591023 = xor i32 %160, %16
  %161 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add494, !dbg !239
  %162 = getelementptr inbounds i8, ptr addrspace(4) %161, i64 %.idx1104, !dbg !239
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %162, align 16, !dbg !240
  %v_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 2, !dbg !240
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4, !dbg !240
  %v_fetch.sroa.14.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx, align 4, !dbg !240
  %v_fetch.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 6, !dbg !240
  %v_fetch.sroa.18.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 8, !dbg !240
  %v_fetch.sroa.22.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx, align 8, !dbg !240
  %v_fetch.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 10, !dbg !240
  %v_fetch.sroa.26.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 12, !dbg !240
  %v_fetch.sroa.30.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx, align 4, !dbg !240
  %v_fetch.sroa.34.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 14, !dbg !240
  %v_fetch.sroa.34.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx, align 2, !dbg !240, !tbaa !30
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 256, !dbg !239
  %v_fetch.sroa.38.16.copyload = load i16, ptr addrspace(4) %gep.1, align 16, !dbg !240
  %v_fetch.sroa.46.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 258, !dbg !240
  %v_fetch.sroa.46.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.sroa_idx, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 260, !dbg !240
  %v_fetch.sroa.50.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.sroa_idx, align 4, !dbg !240
  %v_fetch.sroa.54.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 262, !dbg !240
  %v_fetch.sroa.54.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.sroa_idx, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 264, !dbg !240
  %v_fetch.sroa.58.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.sroa_idx, align 8, !dbg !240
  %v_fetch.sroa.62.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 266, !dbg !240
  %v_fetch.sroa.62.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.sroa_idx, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 268, !dbg !240
  %v_fetch.sroa.66.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.sroa_idx, align 4, !dbg !240
  %v_fetch.sroa.70.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 270, !dbg !240
  %v_fetch.sroa.70.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.sroa_idx, align 2, !dbg !240, !tbaa !30
  %163 = or disjoint i32 %mul46, %159, !dbg !241
  %164 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %163, !dbg !242
  %add.ptr564.idx = shl nuw nsw i32 %xor5591023, 2, !dbg !242
  %add.ptr564 = getelementptr i8, ptr addrspace(3) %164, i32 %add.ptr564.idx, !dbg !242
  %v_column.sroa.66.0.insert.ext = zext i16 %v_fetch.sroa.38.16.copyload to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift = shl nuw i32 %v_column.sroa.66.0.insert.ext, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.66.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr564, align 4, !dbg !243, !tbaa !30
  %165 = or disjoint i32 %mul46, %159, !dbg !241
  %166 = or disjoint i32 %165, 256, !dbg !241
  %167 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %166, !dbg !242
  %xor5611024.1 = shl nuw nsw i32 %xor5591023, 2, !dbg !242
  %add.ptr564.idx.1 = xor i32 %xor5611024.1, 4, !dbg !242
  %add.ptr564.1 = getelementptr i8, ptr addrspace(3) %167, i32 %add.ptr564.idx.1, !dbg !242
  %v_column.sroa.66.0.insert.ext1562 = zext i16 %v_fetch.sroa.46.16.copyload to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1563 = shl nuw i32 %v_column.sroa.66.0.insert.ext1562, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1438 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1440 = or disjoint i32 %v_column.sroa.66.0.insert.shift1563, %v_column.sroa.0.0.insert.ext1438, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1440, ptr addrspace(3) %add.ptr564.1, align 4, !dbg !243, !tbaa !30
  %168 = or disjoint i32 %mul46, %159, !dbg !241
  %169 = or disjoint i32 %168, 512, !dbg !241
  %170 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %169, !dbg !242
  %xor5611024.2 = shl nuw nsw i32 %xor5591023, 2, !dbg !242
  %add.ptr564.idx.2 = xor i32 %xor5611024.2, 8, !dbg !242
  %add.ptr564.2 = getelementptr i8, ptr addrspace(3) %170, i32 %add.ptr564.idx.2, !dbg !242
  %v_column.sroa.66.0.insert.ext1567 = zext i16 %v_fetch.sroa.50.16.copyload to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1568 = shl nuw i32 %v_column.sroa.66.0.insert.ext1567, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1442 = zext i16 %v_fetch.sroa.14.0.copyload to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1444 = or disjoint i32 %v_column.sroa.66.0.insert.shift1568, %v_column.sroa.0.0.insert.ext1442, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1444, ptr addrspace(3) %add.ptr564.2, align 4, !dbg !243, !tbaa !30
  %171 = or disjoint i32 %mul46, %159, !dbg !241
  %172 = or disjoint i32 %171, 768, !dbg !241
  %173 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %172, !dbg !242
  %xor5611024.3 = shl nuw nsw i32 %xor5591023, 2, !dbg !242
  %add.ptr564.idx.3 = xor i32 %xor5611024.3, 12, !dbg !242
  %add.ptr564.3 = getelementptr i8, ptr addrspace(3) %173, i32 %add.ptr564.idx.3, !dbg !242
  %v_column.sroa.66.0.insert.ext1572 = zext i16 %v_fetch.sroa.54.16.copyload to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1573 = shl nuw i32 %v_column.sroa.66.0.insert.ext1572, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1446 = zext i16 %v_fetch.sroa.18.0.copyload to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1448 = or disjoint i32 %v_column.sroa.66.0.insert.shift1573, %v_column.sroa.0.0.insert.ext1446, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1448, ptr addrspace(3) %add.ptr564.3, align 4, !dbg !243, !tbaa !30
  %174 = or disjoint i32 %mul46, %159, !dbg !241
  %175 = or disjoint i32 %174, 1024, !dbg !241
  %176 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %175, !dbg !242
  %xor5611024.4 = shl nuw nsw i32 %xor5591023, 2, !dbg !242
  %add.ptr564.idx.4 = xor i32 %xor5611024.4, 16, !dbg !242
  %add.ptr564.4 = getelementptr i8, ptr addrspace(3) %176, i32 %add.ptr564.idx.4, !dbg !242
  %v_column.sroa.66.0.insert.ext1577 = zext i16 %v_fetch.sroa.58.16.copyload to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1578 = shl nuw i32 %v_column.sroa.66.0.insert.ext1577, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1450 = zext i16 %v_fetch.sroa.22.0.copyload to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1452 = or disjoint i32 %v_column.sroa.66.0.insert.shift1578, %v_column.sroa.0.0.insert.ext1450, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1452, ptr addrspace(3) %add.ptr564.4, align 4, !dbg !243, !tbaa !30
  %177 = or disjoint i32 %mul46, %159, !dbg !241
  %178 = or disjoint i32 %177, 1280, !dbg !241
  %179 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %178, !dbg !242
  %xor5611024.5 = shl nuw nsw i32 %xor5591023, 2, !dbg !242
  %add.ptr564.idx.5 = xor i32 %xor5611024.5, 20, !dbg !242
  %add.ptr564.5 = getelementptr i8, ptr addrspace(3) %179, i32 %add.ptr564.idx.5, !dbg !242
  %v_column.sroa.66.0.insert.ext1582 = zext i16 %v_fetch.sroa.62.16.copyload to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1583 = shl nuw i32 %v_column.sroa.66.0.insert.ext1582, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1454 = zext i16 %v_fetch.sroa.26.0.copyload to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1456 = or disjoint i32 %v_column.sroa.66.0.insert.shift1583, %v_column.sroa.0.0.insert.ext1454, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1456, ptr addrspace(3) %add.ptr564.5, align 4, !dbg !243, !tbaa !30
  %180 = or disjoint i32 %mul46, %159, !dbg !241
  %181 = or disjoint i32 %180, 1536, !dbg !241
  %182 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %181, !dbg !242
  %xor5611024.6 = shl nuw nsw i32 %xor5591023, 2, !dbg !242
  %add.ptr564.idx.6 = xor i32 %xor5611024.6, 24, !dbg !242
  %add.ptr564.6 = getelementptr i8, ptr addrspace(3) %182, i32 %add.ptr564.idx.6, !dbg !242
  %v_column.sroa.66.0.insert.ext1587 = zext i16 %v_fetch.sroa.66.16.copyload to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1588 = shl nuw i32 %v_column.sroa.66.0.insert.ext1587, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1458 = zext i16 %v_fetch.sroa.30.0.copyload to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1460 = or disjoint i32 %v_column.sroa.66.0.insert.shift1588, %v_column.sroa.0.0.insert.ext1458, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1460, ptr addrspace(3) %add.ptr564.6, align 4, !dbg !243, !tbaa !30
  %183 = or disjoint i32 %mul46, %159, !dbg !241
  %184 = or disjoint i32 %183, 1792, !dbg !241
  %185 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %184, !dbg !242
  %xor5611024.7 = shl nuw nsw i32 %xor5591023, 2, !dbg !242
  %add.ptr564.idx.7 = xor i32 %xor5611024.7, 28, !dbg !242
  %add.ptr564.7 = getelementptr i8, ptr addrspace(3) %185, i32 %add.ptr564.idx.7, !dbg !242
  %v_column.sroa.66.0.insert.ext1592 = zext i16 %v_fetch.sroa.70.16.copyload to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1593 = shl nuw i32 %v_column.sroa.66.0.insert.ext1592, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1462 = zext i16 %v_fetch.sroa.34.0.copyload to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1464 = or disjoint i32 %v_column.sroa.66.0.insert.shift1593, %v_column.sroa.0.0.insert.ext1462, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1464, ptr addrspace(3) %add.ptr564.7, align 4, !dbg !243, !tbaa !30
  %186 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 128, !dbg !239
  %v_fetch.sroa.0.0.copyload1719 = load i16, ptr addrspace(4) %186, align 16, !dbg !240
  %v_fetch.sroa.10.0..sroa_idx1722 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 130, !dbg !240
  %v_fetch.sroa.10.0.copyload1723 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1722, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1731 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 132, !dbg !240
  %v_fetch.sroa.14.0.copyload1732 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1731, align 4, !dbg !240
  %v_fetch.sroa.18.0..sroa_idx1740 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 134, !dbg !240
  %v_fetch.sroa.18.0.copyload1741 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1740, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1749 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 136, !dbg !240
  %v_fetch.sroa.22.0.copyload1750 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1749, align 8, !dbg !240
  %v_fetch.sroa.26.0..sroa_idx1758 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 138, !dbg !240
  %v_fetch.sroa.26.0.copyload1759 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1758, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1767 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 140, !dbg !240
  %v_fetch.sroa.30.0.copyload1768 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1767, align 4, !dbg !240
  %v_fetch.sroa.34.0..sroa_idx1776 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 142, !dbg !240
  %v_fetch.sroa.34.0.copyload1777 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1776, align 2, !dbg !240, !tbaa !30
  %gep.1.1 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 384, !dbg !239
  %v_fetch.sroa.38.16.copyload1788 = load i16, ptr addrspace(4) %gep.1.1, align 16, !dbg !240
  %v_fetch.sroa.46.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 386, !dbg !240
  %v_fetch.sroa.46.16.copyload1791 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.1.sroa_idx, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 388, !dbg !240
  %v_fetch.sroa.50.16.copyload1797 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.1.sroa_idx, align 4, !dbg !240
  %v_fetch.sroa.54.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 390, !dbg !240
  %v_fetch.sroa.54.16.copyload1803 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.1.sroa_idx, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 392, !dbg !240
  %v_fetch.sroa.58.16.copyload1809 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.1.sroa_idx, align 8, !dbg !240
  %v_fetch.sroa.62.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 394, !dbg !240
  %v_fetch.sroa.62.16.copyload1815 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.1.sroa_idx, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 396, !dbg !240
  %v_fetch.sroa.66.16.copyload1821 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.1.sroa_idx, align 4, !dbg !240
  %v_fetch.sroa.70.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 398, !dbg !240
  %v_fetch.sroa.70.16.copyload1827 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.1.sroa_idx, align 2, !dbg !240, !tbaa !30
  %187 = or disjoint i32 %mul46, 2048
  %188 = or disjoint i32 %187, %159, !dbg !241
  %189 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %188, !dbg !242
  %add.ptr564.11159 = getelementptr i8, ptr addrspace(3) %189, i32 %add.ptr564.idx, !dbg !242
  %v_column.sroa.66.0.insert.ext1597 = zext i16 %v_fetch.sroa.38.16.copyload1788 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1598 = shl nuw i32 %v_column.sroa.66.0.insert.ext1597, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1466 = zext i16 %v_fetch.sroa.0.0.copyload1719 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1468 = or disjoint i32 %v_column.sroa.66.0.insert.shift1598, %v_column.sroa.0.0.insert.ext1466, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1468, ptr addrspace(3) %add.ptr564.11159, align 4, !dbg !243, !tbaa !30
  %190 = or disjoint i32 %187, %159, !dbg !241
  %191 = or disjoint i32 %190, 256, !dbg !241
  %192 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %191, !dbg !242
  %add.ptr564.1.1 = getelementptr i8, ptr addrspace(3) %192, i32 %add.ptr564.idx.1, !dbg !242
  %v_column.sroa.66.0.insert.ext1602 = zext i16 %v_fetch.sroa.46.16.copyload1791 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1603 = shl nuw i32 %v_column.sroa.66.0.insert.ext1602, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1470 = zext i16 %v_fetch.sroa.10.0.copyload1723 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1472 = or disjoint i32 %v_column.sroa.66.0.insert.shift1603, %v_column.sroa.0.0.insert.ext1470, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1472, ptr addrspace(3) %add.ptr564.1.1, align 4, !dbg !243, !tbaa !30
  %193 = or disjoint i32 %187, %159, !dbg !241
  %194 = or disjoint i32 %193, 512, !dbg !241
  %195 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %194, !dbg !242
  %add.ptr564.2.1 = getelementptr i8, ptr addrspace(3) %195, i32 %add.ptr564.idx.2, !dbg !242
  %v_column.sroa.66.0.insert.ext1607 = zext i16 %v_fetch.sroa.50.16.copyload1797 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1608 = shl nuw i32 %v_column.sroa.66.0.insert.ext1607, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1474 = zext i16 %v_fetch.sroa.14.0.copyload1732 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1476 = or disjoint i32 %v_column.sroa.66.0.insert.shift1608, %v_column.sroa.0.0.insert.ext1474, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1476, ptr addrspace(3) %add.ptr564.2.1, align 4, !dbg !243, !tbaa !30
  %196 = or disjoint i32 %187, %159, !dbg !241
  %197 = or disjoint i32 %196, 768, !dbg !241
  %198 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %197, !dbg !242
  %add.ptr564.3.1 = getelementptr i8, ptr addrspace(3) %198, i32 %add.ptr564.idx.3, !dbg !242
  %v_column.sroa.66.0.insert.ext1612 = zext i16 %v_fetch.sroa.54.16.copyload1803 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1613 = shl nuw i32 %v_column.sroa.66.0.insert.ext1612, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1478 = zext i16 %v_fetch.sroa.18.0.copyload1741 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1480 = or disjoint i32 %v_column.sroa.66.0.insert.shift1613, %v_column.sroa.0.0.insert.ext1478, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1480, ptr addrspace(3) %add.ptr564.3.1, align 4, !dbg !243, !tbaa !30
  %199 = or disjoint i32 %187, %159, !dbg !241
  %200 = or disjoint i32 %199, 1024, !dbg !241
  %201 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %200, !dbg !242
  %add.ptr564.4.1 = getelementptr i8, ptr addrspace(3) %201, i32 %add.ptr564.idx.4, !dbg !242
  %v_column.sroa.66.0.insert.ext1617 = zext i16 %v_fetch.sroa.58.16.copyload1809 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1618 = shl nuw i32 %v_column.sroa.66.0.insert.ext1617, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1482 = zext i16 %v_fetch.sroa.22.0.copyload1750 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1484 = or disjoint i32 %v_column.sroa.66.0.insert.shift1618, %v_column.sroa.0.0.insert.ext1482, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1484, ptr addrspace(3) %add.ptr564.4.1, align 4, !dbg !243, !tbaa !30
  %202 = or disjoint i32 %187, %159, !dbg !241
  %203 = or disjoint i32 %202, 1280, !dbg !241
  %204 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %203, !dbg !242
  %add.ptr564.5.1 = getelementptr i8, ptr addrspace(3) %204, i32 %add.ptr564.idx.5, !dbg !242
  %v_column.sroa.66.0.insert.ext1622 = zext i16 %v_fetch.sroa.62.16.copyload1815 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1623 = shl nuw i32 %v_column.sroa.66.0.insert.ext1622, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1486 = zext i16 %v_fetch.sroa.26.0.copyload1759 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1488 = or disjoint i32 %v_column.sroa.66.0.insert.shift1623, %v_column.sroa.0.0.insert.ext1486, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1488, ptr addrspace(3) %add.ptr564.5.1, align 4, !dbg !243, !tbaa !30
  %205 = or disjoint i32 %187, %159, !dbg !241
  %206 = or disjoint i32 %205, 1536, !dbg !241
  %207 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %206, !dbg !242
  %add.ptr564.6.1 = getelementptr i8, ptr addrspace(3) %207, i32 %add.ptr564.idx.6, !dbg !242
  %v_column.sroa.66.0.insert.ext1627 = zext i16 %v_fetch.sroa.66.16.copyload1821 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1628 = shl nuw i32 %v_column.sroa.66.0.insert.ext1627, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1490 = zext i16 %v_fetch.sroa.30.0.copyload1768 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1492 = or disjoint i32 %v_column.sroa.66.0.insert.shift1628, %v_column.sroa.0.0.insert.ext1490, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1492, ptr addrspace(3) %add.ptr564.6.1, align 4, !dbg !243, !tbaa !30
  %208 = or disjoint i32 %mul46, %159, !dbg !241
  %209 = or disjoint i32 %208, 3840, !dbg !241
  %210 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %209, !dbg !242
  %add.ptr564.7.1 = getelementptr i8, ptr addrspace(3) %210, i32 %add.ptr564.idx.7, !dbg !242
  %v_column.sroa.66.0.insert.ext1632 = zext i16 %v_fetch.sroa.70.16.copyload1827 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1633 = shl nuw i32 %v_column.sroa.66.0.insert.ext1632, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1494 = zext i16 %v_fetch.sroa.34.0.copyload1777 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1496 = or disjoint i32 %v_column.sroa.66.0.insert.shift1633, %v_column.sroa.0.0.insert.ext1494, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1496, ptr addrspace(3) %add.ptr564.7.1, align 4, !dbg !243, !tbaa !30
  %211 = or disjoint i32 %160, 8
  %xor5591023.1 = xor i32 %211, %16
  %212 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4096, !dbg !239
  %v_fetch.sroa.0.0.copyload1720 = load i16, ptr addrspace(4) %212, align 16, !dbg !240
  %v_fetch.sroa.10.0..sroa_idx1724 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4098, !dbg !240
  %v_fetch.sroa.10.0.copyload1725 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1724, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1733 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4100, !dbg !240
  %v_fetch.sroa.14.0.copyload1734 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1733, align 4, !dbg !240
  %v_fetch.sroa.18.0..sroa_idx1742 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4102, !dbg !240
  %v_fetch.sroa.18.0.copyload1743 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1742, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1751 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4104, !dbg !240
  %v_fetch.sroa.22.0.copyload1752 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1751, align 8, !dbg !240
  %v_fetch.sroa.26.0..sroa_idx1760 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4106, !dbg !240
  %v_fetch.sroa.26.0.copyload1761 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1760, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1769 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4108, !dbg !240
  %v_fetch.sroa.30.0.copyload1770 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1769, align 4, !dbg !240
  %v_fetch.sroa.34.0..sroa_idx1778 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4110, !dbg !240
  %v_fetch.sroa.34.0.copyload1779 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1778, align 2, !dbg !240, !tbaa !30
  %gep.1.11165 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4352, !dbg !239
  %v_fetch.sroa.38.16.copyload1789 = load i16, ptr addrspace(4) %gep.1.11165, align 16, !dbg !240
  %v_fetch.sroa.46.16.gep.1.11165.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4354, !dbg !240
  %v_fetch.sroa.46.16.copyload1792 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.11165.sroa_idx, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.11165.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4356, !dbg !240
  %v_fetch.sroa.50.16.copyload1798 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.11165.sroa_idx, align 4, !dbg !240
  %v_fetch.sroa.54.16.gep.1.11165.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4358, !dbg !240
  %v_fetch.sroa.54.16.copyload1804 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.11165.sroa_idx, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.11165.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4360, !dbg !240
  %v_fetch.sroa.58.16.copyload1810 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.11165.sroa_idx, align 8, !dbg !240
  %v_fetch.sroa.62.16.gep.1.11165.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4362, !dbg !240
  %v_fetch.sroa.62.16.copyload1816 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.11165.sroa_idx, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.11165.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4364, !dbg !240
  %v_fetch.sroa.66.16.copyload1822 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.11165.sroa_idx, align 4, !dbg !240
  %v_fetch.sroa.70.16.gep.1.11165.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4366, !dbg !240
  %v_fetch.sroa.70.16.copyload1828 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.11165.sroa_idx, align 2, !dbg !240, !tbaa !30
  %add.ptr564.idx.11171 = shl nuw nsw i32 %xor5591023.1, 2, !dbg !242
  %add.ptr564.11172 = getelementptr i8, ptr addrspace(3) %164, i32 %add.ptr564.idx.11171, !dbg !242
  %v_column.sroa.66.0.insert.ext1637 = zext i16 %v_fetch.sroa.38.16.copyload1789 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1638 = shl nuw i32 %v_column.sroa.66.0.insert.ext1637, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1498 = zext i16 %v_fetch.sroa.0.0.copyload1720 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1500 = or disjoint i32 %v_column.sroa.66.0.insert.shift1638, %v_column.sroa.0.0.insert.ext1498, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1500, ptr addrspace(3) %add.ptr564.11172, align 4, !dbg !243, !tbaa !30
  %xor5611024.1.11177 = shl nuw nsw i32 %xor5591023.1, 2, !dbg !242
  %add.ptr564.idx.1.11178 = xor i32 %xor5611024.1.11177, 4, !dbg !242
  %add.ptr564.1.11179 = getelementptr i8, ptr addrspace(3) %167, i32 %add.ptr564.idx.1.11178, !dbg !242
  %v_column.sroa.66.0.insert.ext1642 = zext i16 %v_fetch.sroa.46.16.copyload1792 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1643 = shl nuw i32 %v_column.sroa.66.0.insert.ext1642, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1502 = zext i16 %v_fetch.sroa.10.0.copyload1725 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1504 = or disjoint i32 %v_column.sroa.66.0.insert.shift1643, %v_column.sroa.0.0.insert.ext1502, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1504, ptr addrspace(3) %add.ptr564.1.11179, align 4, !dbg !243, !tbaa !30
  %xor5611024.2.11184 = shl nuw nsw i32 %xor5591023.1, 2, !dbg !242
  %add.ptr564.idx.2.11185 = xor i32 %xor5611024.2.11184, 8, !dbg !242
  %add.ptr564.2.11186 = getelementptr i8, ptr addrspace(3) %170, i32 %add.ptr564.idx.2.11185, !dbg !242
  %v_column.sroa.66.0.insert.ext1647 = zext i16 %v_fetch.sroa.50.16.copyload1798 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1648 = shl nuw i32 %v_column.sroa.66.0.insert.ext1647, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1506 = zext i16 %v_fetch.sroa.14.0.copyload1734 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1508 = or disjoint i32 %v_column.sroa.66.0.insert.shift1648, %v_column.sroa.0.0.insert.ext1506, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1508, ptr addrspace(3) %add.ptr564.2.11186, align 4, !dbg !243, !tbaa !30
  %xor5611024.3.11191 = shl nuw nsw i32 %xor5591023.1, 2, !dbg !242
  %add.ptr564.idx.3.11192 = xor i32 %xor5611024.3.11191, 12, !dbg !242
  %add.ptr564.3.11193 = getelementptr i8, ptr addrspace(3) %173, i32 %add.ptr564.idx.3.11192, !dbg !242
  %v_column.sroa.66.0.insert.ext1652 = zext i16 %v_fetch.sroa.54.16.copyload1804 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1653 = shl nuw i32 %v_column.sroa.66.0.insert.ext1652, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1510 = zext i16 %v_fetch.sroa.18.0.copyload1743 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1512 = or disjoint i32 %v_column.sroa.66.0.insert.shift1653, %v_column.sroa.0.0.insert.ext1510, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1512, ptr addrspace(3) %add.ptr564.3.11193, align 4, !dbg !243, !tbaa !30
  %xor5611024.4.11198 = shl nuw nsw i32 %xor5591023.1, 2, !dbg !242
  %add.ptr564.idx.4.11199 = xor i32 %xor5611024.4.11198, 16, !dbg !242
  %add.ptr564.4.11200 = getelementptr i8, ptr addrspace(3) %176, i32 %add.ptr564.idx.4.11199, !dbg !242
  %v_column.sroa.66.0.insert.ext1657 = zext i16 %v_fetch.sroa.58.16.copyload1810 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1658 = shl nuw i32 %v_column.sroa.66.0.insert.ext1657, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1514 = zext i16 %v_fetch.sroa.22.0.copyload1752 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1516 = or disjoint i32 %v_column.sroa.66.0.insert.shift1658, %v_column.sroa.0.0.insert.ext1514, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1516, ptr addrspace(3) %add.ptr564.4.11200, align 4, !dbg !243, !tbaa !30
  %xor5611024.5.11205 = shl nuw nsw i32 %xor5591023.1, 2, !dbg !242
  %add.ptr564.idx.5.11206 = xor i32 %xor5611024.5.11205, 20, !dbg !242
  %add.ptr564.5.11207 = getelementptr i8, ptr addrspace(3) %179, i32 %add.ptr564.idx.5.11206, !dbg !242
  %v_column.sroa.66.0.insert.ext1662 = zext i16 %v_fetch.sroa.62.16.copyload1816 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1663 = shl nuw i32 %v_column.sroa.66.0.insert.ext1662, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1518 = zext i16 %v_fetch.sroa.26.0.copyload1761 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1520 = or disjoint i32 %v_column.sroa.66.0.insert.shift1663, %v_column.sroa.0.0.insert.ext1518, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1520, ptr addrspace(3) %add.ptr564.5.11207, align 4, !dbg !243, !tbaa !30
  %xor5611024.6.11212 = shl nuw nsw i32 %xor5591023.1, 2, !dbg !242
  %add.ptr564.idx.6.11213 = xor i32 %xor5611024.6.11212, 24, !dbg !242
  %add.ptr564.6.11214 = getelementptr i8, ptr addrspace(3) %182, i32 %add.ptr564.idx.6.11213, !dbg !242
  %v_column.sroa.66.0.insert.ext1667 = zext i16 %v_fetch.sroa.66.16.copyload1822 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1668 = shl nuw i32 %v_column.sroa.66.0.insert.ext1667, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1522 = zext i16 %v_fetch.sroa.30.0.copyload1770 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1524 = or disjoint i32 %v_column.sroa.66.0.insert.shift1668, %v_column.sroa.0.0.insert.ext1522, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1524, ptr addrspace(3) %add.ptr564.6.11214, align 4, !dbg !243, !tbaa !30
  %xor5611024.7.11219 = shl nuw nsw i32 %xor5591023.1, 2, !dbg !242
  %add.ptr564.idx.7.11220 = xor i32 %xor5611024.7.11219, 28, !dbg !242
  %add.ptr564.7.11221 = getelementptr i8, ptr addrspace(3) %185, i32 %add.ptr564.idx.7.11220, !dbg !242
  %v_column.sroa.66.0.insert.ext1672 = zext i16 %v_fetch.sroa.70.16.copyload1828 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1673 = shl nuw i32 %v_column.sroa.66.0.insert.ext1672, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1526 = zext i16 %v_fetch.sroa.34.0.copyload1779 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1528 = or disjoint i32 %v_column.sroa.66.0.insert.shift1673, %v_column.sroa.0.0.insert.ext1526, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1528, ptr addrspace(3) %add.ptr564.7.11221, align 4, !dbg !243, !tbaa !30
  %213 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4224, !dbg !239
  %v_fetch.sroa.0.0.copyload1721 = load i16, ptr addrspace(4) %213, align 16, !dbg !240
  %v_fetch.sroa.10.0..sroa_idx1726 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4226, !dbg !240
  %v_fetch.sroa.10.0.copyload1727 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1726, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1735 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4228, !dbg !240
  %v_fetch.sroa.14.0.copyload1736 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1735, align 4, !dbg !240
  %v_fetch.sroa.18.0..sroa_idx1744 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4230, !dbg !240
  %v_fetch.sroa.18.0.copyload1745 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1744, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1753 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4232, !dbg !240
  %v_fetch.sroa.22.0.copyload1754 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1753, align 8, !dbg !240
  %v_fetch.sroa.26.0..sroa_idx1762 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4234, !dbg !240
  %v_fetch.sroa.26.0.copyload1763 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1762, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1771 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4236, !dbg !240
  %v_fetch.sroa.30.0.copyload1772 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1771, align 4, !dbg !240
  %v_fetch.sroa.34.0..sroa_idx1780 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4238, !dbg !240
  %v_fetch.sroa.34.0.copyload1781 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1780, align 2, !dbg !240, !tbaa !30
  %gep.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4480, !dbg !239
  %v_fetch.sroa.38.16.copyload1790 = load i16, ptr addrspace(4) %gep.1.1.1, align 16, !dbg !240
  %v_fetch.sroa.46.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4482, !dbg !240
  %v_fetch.sroa.46.16.copyload1793 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.1.1.sroa_idx, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4484, !dbg !240
  %v_fetch.sroa.50.16.copyload1799 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.1.1.sroa_idx, align 4, !dbg !240
  %v_fetch.sroa.54.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4486, !dbg !240
  %v_fetch.sroa.54.16.copyload1805 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.1.1.sroa_idx, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4488, !dbg !240
  %v_fetch.sroa.58.16.copyload1811 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.1.1.sroa_idx, align 8, !dbg !240
  %v_fetch.sroa.62.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4490, !dbg !240
  %v_fetch.sroa.62.16.copyload1817 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.1.1.sroa_idx, align 2, !dbg !240, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4492, !dbg !240
  %v_fetch.sroa.66.16.copyload1823 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.1.1.sroa_idx, align 4, !dbg !240
  %v_fetch.sroa.70.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %162, i64 4494, !dbg !240
  %v_fetch.sroa.70.16.copyload1829 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.1.1.sroa_idx, align 2, !dbg !240, !tbaa !30
  %add.ptr564.11159.1 = getelementptr i8, ptr addrspace(3) %189, i32 %add.ptr564.idx.11171, !dbg !242
  %v_column.sroa.66.0.insert.ext1677 = zext i16 %v_fetch.sroa.38.16.copyload1790 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1678 = shl nuw i32 %v_column.sroa.66.0.insert.ext1677, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1530 = zext i16 %v_fetch.sroa.0.0.copyload1721 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1532 = or disjoint i32 %v_column.sroa.66.0.insert.shift1678, %v_column.sroa.0.0.insert.ext1530, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1532, ptr addrspace(3) %add.ptr564.11159.1, align 4, !dbg !243, !tbaa !30
  %add.ptr564.1.1.1 = getelementptr i8, ptr addrspace(3) %192, i32 %add.ptr564.idx.1.11178, !dbg !242
  %v_column.sroa.66.0.insert.ext1682 = zext i16 %v_fetch.sroa.46.16.copyload1793 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1683 = shl nuw i32 %v_column.sroa.66.0.insert.ext1682, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1534 = zext i16 %v_fetch.sroa.10.0.copyload1727 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1536 = or disjoint i32 %v_column.sroa.66.0.insert.shift1683, %v_column.sroa.0.0.insert.ext1534, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1536, ptr addrspace(3) %add.ptr564.1.1.1, align 4, !dbg !243, !tbaa !30
  %add.ptr564.2.1.1 = getelementptr i8, ptr addrspace(3) %195, i32 %add.ptr564.idx.2.11185, !dbg !242
  %v_column.sroa.66.0.insert.ext1687 = zext i16 %v_fetch.sroa.50.16.copyload1799 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1688 = shl nuw i32 %v_column.sroa.66.0.insert.ext1687, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1538 = zext i16 %v_fetch.sroa.14.0.copyload1736 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1540 = or disjoint i32 %v_column.sroa.66.0.insert.shift1688, %v_column.sroa.0.0.insert.ext1538, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1540, ptr addrspace(3) %add.ptr564.2.1.1, align 4, !dbg !243, !tbaa !30
  %add.ptr564.3.1.1 = getelementptr i8, ptr addrspace(3) %198, i32 %add.ptr564.idx.3.11192, !dbg !242
  %v_column.sroa.66.0.insert.ext1692 = zext i16 %v_fetch.sroa.54.16.copyload1805 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1693 = shl nuw i32 %v_column.sroa.66.0.insert.ext1692, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1542 = zext i16 %v_fetch.sroa.18.0.copyload1745 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1544 = or disjoint i32 %v_column.sroa.66.0.insert.shift1693, %v_column.sroa.0.0.insert.ext1542, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1544, ptr addrspace(3) %add.ptr564.3.1.1, align 4, !dbg !243, !tbaa !30
  %add.ptr564.4.1.1 = getelementptr i8, ptr addrspace(3) %201, i32 %add.ptr564.idx.4.11199, !dbg !242
  %v_column.sroa.66.0.insert.ext1697 = zext i16 %v_fetch.sroa.58.16.copyload1811 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1698 = shl nuw i32 %v_column.sroa.66.0.insert.ext1697, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1546 = zext i16 %v_fetch.sroa.22.0.copyload1754 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1548 = or disjoint i32 %v_column.sroa.66.0.insert.shift1698, %v_column.sroa.0.0.insert.ext1546, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1548, ptr addrspace(3) %add.ptr564.4.1.1, align 4, !dbg !243, !tbaa !30
  %add.ptr564.5.1.1 = getelementptr i8, ptr addrspace(3) %204, i32 %add.ptr564.idx.5.11206, !dbg !242
  %v_column.sroa.66.0.insert.ext1702 = zext i16 %v_fetch.sroa.62.16.copyload1817 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1703 = shl nuw i32 %v_column.sroa.66.0.insert.ext1702, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1550 = zext i16 %v_fetch.sroa.26.0.copyload1763 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1552 = or disjoint i32 %v_column.sroa.66.0.insert.shift1703, %v_column.sroa.0.0.insert.ext1550, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1552, ptr addrspace(3) %add.ptr564.5.1.1, align 4, !dbg !243, !tbaa !30
  %add.ptr564.6.1.1 = getelementptr i8, ptr addrspace(3) %207, i32 %add.ptr564.idx.6.11213, !dbg !242
  %v_column.sroa.66.0.insert.ext1707 = zext i16 %v_fetch.sroa.66.16.copyload1823 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1708 = shl nuw i32 %v_column.sroa.66.0.insert.ext1707, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1554 = zext i16 %v_fetch.sroa.30.0.copyload1772 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1556 = or disjoint i32 %v_column.sroa.66.0.insert.shift1708, %v_column.sroa.0.0.insert.ext1554, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1556, ptr addrspace(3) %add.ptr564.6.1.1, align 4, !dbg !243, !tbaa !30
  %add.ptr564.7.1.1 = getelementptr i8, ptr addrspace(3) %210, i32 %add.ptr564.idx.7.11220, !dbg !242
  %v_column.sroa.66.0.insert.ext1712 = zext i16 %v_fetch.sroa.70.16.copyload1829 to i32, !dbg !243
  %v_column.sroa.66.0.insert.shift1713 = shl nuw i32 %v_column.sroa.66.0.insert.ext1712, 16, !dbg !243
  %v_column.sroa.0.0.insert.ext1558 = zext i16 %v_fetch.sroa.34.0.copyload1781 to i32, !dbg !243
  %v_column.sroa.0.0.insert.insert1560 = or disjoint i32 %v_column.sroa.66.0.insert.shift1713, %v_column.sroa.0.0.insert.ext1558, !dbg !243
  store i32 %v_column.sroa.0.0.insert.insert1560, ptr addrspace(3) %add.ptr564.7.1.1, align 4, !dbg !243, !tbaa !30
  fence syncscope("warp") release, !dbg !244
  tail call void @llvm.mxc.barrier.warp(), !dbg !247
  fence syncscope("warp") acquire, !dbg !248
  %214 = and i32 %45, 1792
  %215 = and i32 %14, 32
  %216 = and i32 %19, 6
  %add612 = or disjoint i32 %mul46, %214
  %add621 = or disjoint i32 %add612, %215
  %xor6391065 = xor i32 %20, %16
  %217 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add621
  %xor6431066 = xor i32 %xor6391065, %216, !dbg !249
  %218 = shl nuw nsw i32 %xor6431066, 2, !dbg !250
  %add.ptr646 = getelementptr i8, ptr addrspace(3) %217, i32 %218, !dbg !250
  %219 = load i32, ptr addrspace(3) %add.ptr646, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.0.0.vec.insert = insertelement <2 x i32> poison, i32 %219, i64 0, !dbg !251
  %add6311021.1 = or disjoint i32 %216, 1, !dbg !252
  %xor6431066.1 = xor i32 %xor6391065, %add6311021.1, !dbg !249
  %220 = shl nuw nsw i32 %xor6431066.1, 2, !dbg !250
  %add.ptr646.1 = getelementptr i8, ptr addrspace(3) %217, i32 %220, !dbg !250
  %221 = load i32, ptr addrspace(3) %add.ptr646.1, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.0.4.vec.insert = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert, i32 %221, i64 1, !dbg !251
  %add615.1 = or disjoint i32 %add612, %215
  %add621.1 = or disjoint i32 %add615.1, 64
  %add6381064.1 = or disjoint i32 %20, 2
  %xor6391065.1 = xor i32 %add6381064.1, %16
  %222 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add621.1
  %xor6431066.11223 = xor i32 %xor6391065.1, %216, !dbg !249
  %223 = shl nuw nsw i32 %xor6431066.11223, 2, !dbg !250
  %add.ptr646.11224 = getelementptr i8, ptr addrspace(3) %222, i32 %223, !dbg !250
  %224 = load i32, ptr addrspace(3) %add.ptr646.11224, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.14.8.vec.insert = insertelement <2 x i32> poison, i32 %224, i64 0, !dbg !251
  %xor6431066.1.1 = xor i32 %xor6391065.1, %add6311021.1, !dbg !249
  %225 = shl nuw nsw i32 %xor6431066.1.1, 2, !dbg !250
  %add.ptr646.1.1 = getelementptr i8, ptr addrspace(3) %222, i32 %225, !dbg !250
  %226 = load i32, ptr addrspace(3) %add.ptr646.1.1, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.14.12.vec.insert = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert, i32 %226, i64 1, !dbg !251
  %add615.2 = or disjoint i32 %add612, %215
  %add621.2 = or disjoint i32 %add615.2, 128
  %add6381064.2 = or disjoint i32 %20, 4
  %xor6391065.2 = xor i32 %add6381064.2, %16
  %227 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add621.2
  %xor6431066.2 = xor i32 %xor6391065.2, %216, !dbg !249
  %228 = shl nuw nsw i32 %xor6431066.2, 2, !dbg !250
  %add.ptr646.2 = getelementptr i8, ptr addrspace(3) %227, i32 %228, !dbg !250
  %229 = load i32, ptr addrspace(3) %add.ptr646.2, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.26.16.vec.insert = insertelement <2 x i32> poison, i32 %229, i64 0, !dbg !251
  %xor6431066.1.2 = xor i32 %xor6391065.2, %add6311021.1, !dbg !249
  %230 = shl nuw nsw i32 %xor6431066.1.2, 2, !dbg !250
  %add.ptr646.1.2 = getelementptr i8, ptr addrspace(3) %227, i32 %230, !dbg !250
  %231 = load i32, ptr addrspace(3) %add.ptr646.1.2, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.26.20.vec.insert = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert, i32 %231, i64 1, !dbg !251
  %add615.3 = or disjoint i32 %add612, %215
  %add621.3 = or disjoint i32 %add615.3, 192
  %add6381064.3 = or disjoint i32 %20, 6
  %xor6391065.3 = xor i32 %add6381064.3, %16
  %232 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add621.3
  %xor6431066.3 = xor i32 %xor6391065.3, %216, !dbg !249
  %233 = shl nuw nsw i32 %xor6431066.3, 2, !dbg !250
  %add.ptr646.3 = getelementptr i8, ptr addrspace(3) %232, i32 %233, !dbg !250
  %234 = load i32, ptr addrspace(3) %add.ptr646.3, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.38.24.vec.insert = insertelement <2 x i32> poison, i32 %234, i64 0, !dbg !251
  %xor6431066.1.3 = xor i32 %xor6391065.3, %add6311021.1, !dbg !249
  %235 = shl nuw nsw i32 %xor6431066.1.3, 2, !dbg !250
  %add.ptr646.1.3 = getelementptr i8, ptr addrspace(3) %232, i32 %235, !dbg !250
  %236 = load i32, ptr addrspace(3) %add.ptr646.1.3, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.38.28.vec.insert = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert, i32 %236, i64 1, !dbg !251
  %237 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert to <4 x half>, !dbg !253
  %238 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %237, <4 x half> %127, <4 x float> zeroinitializer), !dbg !254
  %239 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert to <4 x half>, !dbg !253
  %240 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %239, <4 x half> %127, <4 x float> zeroinitializer), !dbg !254
  %241 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert to <4 x half>, !dbg !253
  %242 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %241, <4 x half> %127, <4 x float> zeroinitializer), !dbg !254
  %243 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert to <4 x half>, !dbg !253
  %244 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %243, <4 x half> %127, <4 x float> zeroinitializer), !dbg !254
  %add607.1 = or disjoint i32 %mul46, %214
  %add612.1 = or disjoint i32 %add607.1, %215
  %add621.11227 = or disjoint i32 %add612.1, 2048
  %245 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add621.11227
  %add.ptr646.11230 = getelementptr i8, ptr addrspace(3) %245, i32 %218, !dbg !250
  %246 = load i32, ptr addrspace(3) %add.ptr646.11230, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1378 = insertelement <2 x i32> poison, i32 %246, i64 0, !dbg !251
  %add.ptr646.1.11233 = getelementptr i8, ptr addrspace(3) %245, i32 %220, !dbg !250
  %247 = load i32, ptr addrspace(3) %add.ptr646.1.11233, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1384 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1378, i32 %247, i64 1, !dbg !251
  %add615.1.1 = or disjoint i32 %add607.1, %215
  %add621.1.1 = or disjoint i32 %add615.1.1, 2112
  %248 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add621.1.1
  %add.ptr646.11224.1 = getelementptr i8, ptr addrspace(3) %248, i32 %223, !dbg !250
  %249 = load i32, ptr addrspace(3) %add.ptr646.11224.1, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1394 = insertelement <2 x i32> poison, i32 %249, i64 0, !dbg !251
  %add.ptr646.1.1.1 = getelementptr i8, ptr addrspace(3) %248, i32 %225, !dbg !250
  %250 = load i32, ptr addrspace(3) %add.ptr646.1.1.1, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1400 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1394, i32 %250, i64 1, !dbg !251
  %add615.2.1 = or disjoint i32 %add607.1, %215
  %add621.2.1 = or disjoint i32 %add615.2.1, 2176
  %251 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add621.2.1
  %add.ptr646.2.1 = getelementptr i8, ptr addrspace(3) %251, i32 %228, !dbg !250
  %252 = load i32, ptr addrspace(3) %add.ptr646.2.1, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1410 = insertelement <2 x i32> poison, i32 %252, i64 0, !dbg !251
  %add.ptr646.1.2.1 = getelementptr i8, ptr addrspace(3) %251, i32 %230, !dbg !250
  %253 = load i32, ptr addrspace(3) %add.ptr646.1.2.1, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1416 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1410, i32 %253, i64 1, !dbg !251
  %add615.3.1 = or disjoint i32 %add607.1, %215
  %add621.3.1 = or disjoint i32 %add615.3.1, 2240
  %254 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add621.3.1
  %add.ptr646.3.1 = getelementptr i8, ptr addrspace(3) %254, i32 %233, !dbg !250
  %255 = load i32, ptr addrspace(3) %add.ptr646.3.1, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1426 = insertelement <2 x i32> poison, i32 %255, i64 0, !dbg !251
  %add.ptr646.1.3.1 = getelementptr i8, ptr addrspace(3) %254, i32 %235, !dbg !250
  %256 = load i32, ptr addrspace(3) %add.ptr646.1.3.1, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1432 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1426, i32 %256, i64 1, !dbg !251
  %257 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1384 to <4 x half>, !dbg !253
  %258 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %257, <4 x half> %127, <4 x float> zeroinitializer), !dbg !254
  %259 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1400 to <4 x half>, !dbg !253
  %260 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %259, <4 x half> %127, <4 x float> zeroinitializer), !dbg !254
  %261 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1416 to <4 x half>, !dbg !253
  %262 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %261, <4 x half> %127, <4 x float> zeroinitializer), !dbg !254
  %263 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1432 to <4 x half>, !dbg !253
  %264 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %263, <4 x half> %127, <4 x float> zeroinitializer), !dbg !254
  %add6291020.1 = or disjoint i32 %216, 8
  %xor6431066.11241 = xor i32 %xor6391065, %add6291020.1, !dbg !249
  %265 = shl nuw nsw i32 %xor6431066.11241, 2, !dbg !250
  %add.ptr646.11242 = getelementptr i8, ptr addrspace(3) %217, i32 %265, !dbg !250
  %266 = load i32, ptr addrspace(3) %add.ptr646.11242, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1380 = insertelement <2 x i32> poison, i32 %266, i64 0, !dbg !251
  %add6311021.1.11243 = or disjoint i32 %216, 9, !dbg !252
  %xor6431066.1.11244 = xor i32 %xor6391065, %add6311021.1.11243, !dbg !249
  %267 = shl nuw nsw i32 %xor6431066.1.11244, 2, !dbg !250
  %add.ptr646.1.11245 = getelementptr i8, ptr addrspace(3) %217, i32 %267, !dbg !250
  %268 = load i32, ptr addrspace(3) %add.ptr646.1.11245, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1386 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1380, i32 %268, i64 1, !dbg !251
  %xor6431066.11223.11251 = xor i32 %xor6391065.1, %add6291020.1, !dbg !249
  %269 = shl nuw nsw i32 %xor6431066.11223.11251, 2, !dbg !250
  %add.ptr646.11224.11252 = getelementptr i8, ptr addrspace(3) %222, i32 %269, !dbg !250
  %270 = load i32, ptr addrspace(3) %add.ptr646.11224.11252, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1396 = insertelement <2 x i32> poison, i32 %270, i64 0, !dbg !251
  %xor6431066.1.1.11255 = xor i32 %xor6391065.1, %add6311021.1.11243, !dbg !249
  %271 = shl nuw nsw i32 %xor6431066.1.1.11255, 2, !dbg !250
  %add.ptr646.1.1.11256 = getelementptr i8, ptr addrspace(3) %222, i32 %271, !dbg !250
  %272 = load i32, ptr addrspace(3) %add.ptr646.1.1.11256, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1402 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1396, i32 %272, i64 1, !dbg !251
  %xor6431066.2.11263 = xor i32 %xor6391065.2, %add6291020.1, !dbg !249
  %273 = shl nuw nsw i32 %xor6431066.2.11263, 2, !dbg !250
  %add.ptr646.2.11264 = getelementptr i8, ptr addrspace(3) %227, i32 %273, !dbg !250
  %274 = load i32, ptr addrspace(3) %add.ptr646.2.11264, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1412 = insertelement <2 x i32> poison, i32 %274, i64 0, !dbg !251
  %xor6431066.1.2.11267 = xor i32 %xor6391065.2, %add6311021.1.11243, !dbg !249
  %275 = shl nuw nsw i32 %xor6431066.1.2.11267, 2, !dbg !250
  %add.ptr646.1.2.11268 = getelementptr i8, ptr addrspace(3) %227, i32 %275, !dbg !250
  %276 = load i32, ptr addrspace(3) %add.ptr646.1.2.11268, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1418 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1412, i32 %276, i64 1, !dbg !251
  %xor6431066.3.11275 = xor i32 %xor6391065.3, %add6291020.1, !dbg !249
  %277 = shl nuw nsw i32 %xor6431066.3.11275, 2, !dbg !250
  %add.ptr646.3.11276 = getelementptr i8, ptr addrspace(3) %232, i32 %277, !dbg !250
  %278 = load i32, ptr addrspace(3) %add.ptr646.3.11276, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1428 = insertelement <2 x i32> poison, i32 %278, i64 0, !dbg !251
  %xor6431066.1.3.11279 = xor i32 %xor6391065.3, %add6311021.1.11243, !dbg !249
  %279 = shl nuw nsw i32 %xor6431066.1.3.11279, 2, !dbg !250
  %add.ptr646.1.3.11280 = getelementptr i8, ptr addrspace(3) %232, i32 %279, !dbg !250
  %280 = load i32, ptr addrspace(3) %add.ptr646.1.3.11280, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1434 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1428, i32 %280, i64 1, !dbg !251
  %281 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1386 to <4 x half>, !dbg !253
  %282 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %281, <4 x half> %143, <4 x float> %238), !dbg !254
  %283 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1402 to <4 x half>, !dbg !253
  %284 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %283, <4 x half> %143, <4 x float> %240), !dbg !254
  %285 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1418 to <4 x half>, !dbg !253
  %286 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %285, <4 x half> %143, <4 x float> %242), !dbg !254
  %287 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1434 to <4 x half>, !dbg !253
  %288 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %287, <4 x half> %143, <4 x float> %244), !dbg !254
  %add.ptr646.11230.1 = getelementptr i8, ptr addrspace(3) %245, i32 %265, !dbg !250
  %289 = load i32, ptr addrspace(3) %add.ptr646.11230.1, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1382 = insertelement <2 x i32> poison, i32 %289, i64 0, !dbg !251
  %add.ptr646.1.11233.1 = getelementptr i8, ptr addrspace(3) %245, i32 %267, !dbg !250
  %290 = load i32, ptr addrspace(3) %add.ptr646.1.11233.1, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1388 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1382, i32 %290, i64 1, !dbg !251
  %add.ptr646.11224.1.1 = getelementptr i8, ptr addrspace(3) %248, i32 %269, !dbg !250
  %291 = load i32, ptr addrspace(3) %add.ptr646.11224.1.1, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1398 = insertelement <2 x i32> poison, i32 %291, i64 0, !dbg !251
  %add.ptr646.1.1.1.1 = getelementptr i8, ptr addrspace(3) %248, i32 %271, !dbg !250
  %292 = load i32, ptr addrspace(3) %add.ptr646.1.1.1.1, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1404 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1398, i32 %292, i64 1, !dbg !251
  %add.ptr646.2.1.1 = getelementptr i8, ptr addrspace(3) %251, i32 %273, !dbg !250
  %293 = load i32, ptr addrspace(3) %add.ptr646.2.1.1, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1414 = insertelement <2 x i32> poison, i32 %293, i64 0, !dbg !251
  %add.ptr646.1.2.1.1 = getelementptr i8, ptr addrspace(3) %251, i32 %275, !dbg !250
  %294 = load i32, ptr addrspace(3) %add.ptr646.1.2.1.1, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1420 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1414, i32 %294, i64 1, !dbg !251
  %add.ptr646.3.1.1 = getelementptr i8, ptr addrspace(3) %254, i32 %277, !dbg !250
  %295 = load i32, ptr addrspace(3) %add.ptr646.3.1.1, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1430 = insertelement <2 x i32> poison, i32 %295, i64 0, !dbg !251
  %add.ptr646.1.3.1.1 = getelementptr i8, ptr addrspace(3) %254, i32 %279, !dbg !250
  %296 = load i32, ptr addrspace(3) %add.ptr646.1.3.1.1, align 4, !dbg !251, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1436 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1430, i32 %296, i64 1, !dbg !251
  %297 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1388 to <4 x half>, !dbg !253
  %298 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %297, <4 x half> %143, <4 x float> %258), !dbg !254
  %299 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1404 to <4 x half>, !dbg !253
  %300 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %299, <4 x half> %143, <4 x float> %260), !dbg !254
  %301 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1420 to <4 x half>, !dbg !253
  %302 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %301, <4 x half> %143, <4 x float> %262), !dbg !254
  %303 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1436 to <4 x half>, !dbg !253
  %304 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %303, <4 x half> %143, <4 x float> %264), !dbg !254
  %add469 = fadd contract float %add464, %155, !dbg !255
  br label %if.end702, !dbg !256

if.end702:                                        ; preds = %entry, %land.lhs.true, %for.cond.preheader
  %numerator.sroa.170.0 = phi <4 x float> [ %304, %for.cond.preheader ], [ zeroinitializer, %land.lhs.true ], [ zeroinitializer, %entry ], !dbg !257
  %numerator.sroa.146.0 = phi <4 x float> [ %302, %for.cond.preheader ], [ zeroinitializer, %land.lhs.true ], [ zeroinitializer, %entry ], !dbg !257
  %numerator.sroa.122.0 = phi <4 x float> [ %300, %for.cond.preheader ], [ zeroinitializer, %land.lhs.true ], [ zeroinitializer, %entry ], !dbg !257
  %numerator.sroa.98.0 = phi <4 x float> [ %298, %for.cond.preheader ], [ zeroinitializer, %land.lhs.true ], [ zeroinitializer, %entry ], !dbg !257
  %numerator.sroa.74.0 = phi <4 x float> [ %288, %for.cond.preheader ], [ zeroinitializer, %land.lhs.true ], [ zeroinitializer, %entry ], !dbg !257
  %numerator.sroa.50.0 = phi <4 x float> [ %286, %for.cond.preheader ], [ zeroinitializer, %land.lhs.true ], [ zeroinitializer, %entry ], !dbg !257
  %numerator.sroa.26.0 = phi <4 x float> [ %284, %for.cond.preheader ], [ zeroinitializer, %land.lhs.true ], [ zeroinitializer, %entry ], !dbg !257
  %numerator.sroa.0.0 = phi <4 x float> [ %282, %for.cond.preheader ], [ zeroinitializer, %land.lhs.true ], [ zeroinitializer, %entry ], !dbg !257
  %denominator.sroa.0.1 = phi float [ %add469, %for.cond.preheader ], [ 0.000000e+00, %land.lhs.true ], [ 0.000000e+00, %entry ], !dbg !257
  fence syncscope("warp") release, !dbg !258
  tail call void @llvm.mxc.barrier.warp(), !dbg !261
  fence syncscope("warp") acquire, !dbg !262
  %mul716 = shl nsw i32 %3, 6, !dbg !263
  %and718 = and i32 %0, 63, !dbg !264
  %add719 = or disjoint i32 %mul716, %and718, !dbg !265
  %cmp720.not = icmp sgt i32 %0, %add719, !dbg !266
  br i1 %cmp720.not, label %if.end702.if.end785_crit_edge, label %for.cond722.preheader, !dbg !267

if.end702.if.end785_crit_edge:                    ; preds = %if.end702
  %.pre = shl i32 %3, 12
  %.pre2202 = and i32 %0, 7
  %.pre2203 = lshr i32 %0, 4
  %.pre2205 = lshr i32 %0, 3
  br label %if.end785, !dbg !267

for.cond722.preheader:                            ; preds = %if.end702
  %numerator.sroa.170.124.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 3, !dbg !268
  %div.31 = fdiv contract float %numerator.sroa.170.124.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.170.112.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 0, !dbg !268
  %div.28 = fdiv contract float %numerator.sroa.170.112.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.170.116.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 1, !dbg !268
  %div.29 = fdiv contract float %numerator.sroa.170.116.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.170.120.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 2, !dbg !268
  %div.30 = fdiv contract float %numerator.sroa.170.120.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.146.108.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 3, !dbg !268
  %div.27 = fdiv contract float %numerator.sroa.146.108.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.146.96.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 0, !dbg !268
  %div.24 = fdiv contract float %numerator.sroa.146.96.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.146.100.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 1, !dbg !268
  %div.25 = fdiv contract float %numerator.sroa.146.100.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.146.104.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 2, !dbg !268
  %div.26 = fdiv contract float %numerator.sroa.146.104.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.122.92.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 3, !dbg !268
  %div.23 = fdiv contract float %numerator.sroa.122.92.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.122.80.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 0, !dbg !268
  %div.20 = fdiv contract float %numerator.sroa.122.80.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.122.84.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 1, !dbg !268
  %div.21 = fdiv contract float %numerator.sroa.122.84.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.122.88.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 2, !dbg !268
  %div.22 = fdiv contract float %numerator.sroa.122.88.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.98.76.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 3, !dbg !268
  %div.19 = fdiv contract float %numerator.sroa.98.76.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.98.64.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 0, !dbg !268
  %div.16 = fdiv contract float %numerator.sroa.98.64.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.98.68.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 1, !dbg !268
  %div.17 = fdiv contract float %numerator.sroa.98.68.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.98.72.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 2, !dbg !268
  %div.18 = fdiv contract float %numerator.sroa.98.72.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.74.60.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 3, !dbg !268
  %div.15 = fdiv contract float %numerator.sroa.74.60.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.74.48.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 0, !dbg !268
  %div.12 = fdiv contract float %numerator.sroa.74.48.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.74.52.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 1, !dbg !268
  %div.13 = fdiv contract float %numerator.sroa.74.52.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.74.56.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 2, !dbg !268
  %div.14 = fdiv contract float %numerator.sroa.74.56.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.50.44.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 3, !dbg !268
  %div.11 = fdiv contract float %numerator.sroa.50.44.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.50.32.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 0, !dbg !268
  %div.8 = fdiv contract float %numerator.sroa.50.32.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.50.36.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 1, !dbg !268
  %div.9 = fdiv contract float %numerator.sroa.50.36.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.50.40.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 2, !dbg !268
  %div.10 = fdiv contract float %numerator.sroa.50.40.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.26.28.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 3, !dbg !268
  %div.7 = fdiv contract float %numerator.sroa.26.28.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.26.16.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 0, !dbg !268
  %div.4 = fdiv contract float %numerator.sroa.26.16.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.26.20.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 1, !dbg !268
  %div.5 = fdiv contract float %numerator.sroa.26.20.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.26.24.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 2, !dbg !268
  %div.6 = fdiv contract float %numerator.sroa.26.24.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !268
  %div.3 = fdiv contract float %numerator.sroa.0.12.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !268
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !268
  %div.1 = fdiv contract float %numerator.sroa.0.4.vec.extract, %denominator.sroa.0.1, !dbg !269
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !268
  %div.2 = fdiv contract float %numerator.sroa.0.8.vec.extract, %denominator.sroa.0.1, !dbg !269
  %mul743 = shl i32 %3, 12
  %305 = shl nuw nsw i32 %0, 6
  %306 = and i32 %305, 960
  %307 = lshr i32 %0, 5
  %308 = and i32 %307, 1
  %309 = and i32 %0, 7
  %310 = lshr i32 %0, 4
  %311 = lshr i32 %0, 3
  %312 = xor i32 %310, %311
  %xor7751019 = and i32 %312, 1
  %conv.i.i1059 = fptrunc float %div to half, !dbg !270
  %conv.i.i1059.1 = fptrunc float %div.1 to half, !dbg !270
  %conv.i.i1059.2 = fptrunc float %div.2 to half, !dbg !270
  %conv.i.i1059.3 = fptrunc float %div.3 to half, !dbg !270
  %add752 = or disjoint i32 %mul743, %306, !dbg !275
  %xor764 = xor i32 %308, %309, !dbg !276
  %mul765 = shl nuw nsw i32 %xor764, 3, !dbg !277
  %add766 = or disjoint i32 %add752, %mul765, !dbg !278
  %mul779 = shl nuw nsw i32 %xor7751019, 2, !dbg !279
  %add780 = or disjoint i32 %add766, %mul779, !dbg !280
  %add.ptr781 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add780, !dbg !281
  store half %conv.i.i1059, ptr addrspace(3) %add.ptr781, align 8, !dbg !282
  %add.ptr781.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781, i32 2, !dbg !282
  store half %conv.i.i1059.1, ptr addrspace(3) %add.ptr781.sroa_idx, align 2, !dbg !282
  %add.ptr781.sroa_idx1308 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781, i32 4, !dbg !282
  store half %conv.i.i1059.2, ptr addrspace(3) %add.ptr781.sroa_idx1308, align 4, !dbg !282
  %add.ptr781.sroa_idx1309 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781, i32 6, !dbg !282
  store half %conv.i.i1059.3, ptr addrspace(3) %add.ptr781.sroa_idx1309, align 2, !dbg !282
  %conv.i.i1059.11288 = fptrunc float %div.4 to half, !dbg !270
  %conv.i.i1059.1.1 = fptrunc float %div.5 to half, !dbg !270
  %conv.i.i1059.2.1 = fptrunc float %div.6 to half, !dbg !270
  %conv.i.i1059.3.1 = fptrunc float %div.7 to half, !dbg !270
  %add760.1 = or disjoint i32 %308, 2, !dbg !283
  %xor764.1 = xor i32 %add760.1, %309, !dbg !276
  %mul765.1 = shl nuw nsw i32 %xor764.1, 3, !dbg !277
  %add766.1 = or disjoint i32 %add752, %mul765.1, !dbg !278
  %add780.1 = or disjoint i32 %add766.1, %mul779, !dbg !280
  %add.ptr781.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add780.1, !dbg !281
  store half %conv.i.i1059.11288, ptr addrspace(3) %add.ptr781.1, align 8, !dbg !282
  %add.ptr781.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781.1, i32 2, !dbg !282
  store half %conv.i.i1059.1.1, ptr addrspace(3) %add.ptr781.1.sroa_idx, align 2, !dbg !282
  %add.ptr781.1.sroa_idx1313 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781.1, i32 4, !dbg !282
  store half %conv.i.i1059.2.1, ptr addrspace(3) %add.ptr781.1.sroa_idx1313, align 4, !dbg !282
  %add.ptr781.1.sroa_idx1314 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781.1, i32 6, !dbg !282
  store half %conv.i.i1059.3.1, ptr addrspace(3) %add.ptr781.1.sroa_idx1314, align 2, !dbg !282
  %conv.i.i1059.21290 = fptrunc float %div.8 to half, !dbg !270
  %conv.i.i1059.1.2 = fptrunc float %div.9 to half, !dbg !270
  %conv.i.i1059.2.2 = fptrunc float %div.10 to half, !dbg !270
  %conv.i.i1059.3.2 = fptrunc float %div.11 to half, !dbg !270
  %add760.2 = or disjoint i32 %308, 4, !dbg !283
  %xor764.2 = xor i32 %add760.2, %309, !dbg !276
  %mul765.2 = shl nuw nsw i32 %xor764.2, 3, !dbg !277
  %add766.2 = or disjoint i32 %add752, %mul765.2, !dbg !278
  %add780.2 = or disjoint i32 %add766.2, %mul779, !dbg !280
  %add.ptr781.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add780.2, !dbg !281
  store half %conv.i.i1059.21290, ptr addrspace(3) %add.ptr781.2, align 8, !dbg !282
  %add.ptr781.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781.2, i32 2, !dbg !282
  store half %conv.i.i1059.1.2, ptr addrspace(3) %add.ptr781.2.sroa_idx, align 2, !dbg !282
  %add.ptr781.2.sroa_idx1318 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781.2, i32 4, !dbg !282
  store half %conv.i.i1059.2.2, ptr addrspace(3) %add.ptr781.2.sroa_idx1318, align 4, !dbg !282
  %add.ptr781.2.sroa_idx1319 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781.2, i32 6, !dbg !282
  store half %conv.i.i1059.3.2, ptr addrspace(3) %add.ptr781.2.sroa_idx1319, align 2, !dbg !282
  %conv.i.i1059.31292 = fptrunc float %div.12 to half, !dbg !270
  %conv.i.i1059.1.3 = fptrunc float %div.13 to half, !dbg !270
  %conv.i.i1059.2.3 = fptrunc float %div.14 to half, !dbg !270
  %conv.i.i1059.3.3 = fptrunc float %div.15 to half, !dbg !270
  %add760.3 = or disjoint i32 %308, 6, !dbg !283
  %xor764.3 = xor i32 %add760.3, %309, !dbg !276
  %mul765.3 = shl nuw nsw i32 %xor764.3, 3, !dbg !277
  %add766.3 = or disjoint i32 %add752, %mul765.3, !dbg !278
  %add780.3 = or disjoint i32 %add766.3, %mul779, !dbg !280
  %add.ptr781.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add780.3, !dbg !281
  store half %conv.i.i1059.31292, ptr addrspace(3) %add.ptr781.3, align 8, !dbg !282
  %add.ptr781.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781.3, i32 2, !dbg !282
  store half %conv.i.i1059.1.3, ptr addrspace(3) %add.ptr781.3.sroa_idx, align 2, !dbg !282
  %add.ptr781.3.sroa_idx1323 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781.3, i32 4, !dbg !282
  store half %conv.i.i1059.2.3, ptr addrspace(3) %add.ptr781.3.sroa_idx1323, align 4, !dbg !282
  %add.ptr781.3.sroa_idx1324 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781.3, i32 6, !dbg !282
  store half %conv.i.i1059.3.3, ptr addrspace(3) %add.ptr781.3.sroa_idx1324, align 2, !dbg !282
  %conv.i.i1059.4 = fptrunc float %div.16 to half, !dbg !270
  %conv.i.i1059.1.4 = fptrunc float %div.17 to half, !dbg !270
  %conv.i.i1059.2.4 = fptrunc float %div.18 to half, !dbg !270
  %conv.i.i1059.3.4 = fptrunc float %div.19 to half, !dbg !270
  %add747.4 = or disjoint i32 %mul743, %306, !dbg !275
  %add752.4 = or disjoint i32 %add747.4, 1024, !dbg !275
  %add766.4 = or disjoint i32 %add752.4, %mul765, !dbg !278
  %xor778.4 = shl nuw nsw i32 %xor7751019, 2, !dbg !279
  %mul779.4 = xor i32 %xor778.4, 4, !dbg !279
  %add780.4 = or disjoint i32 %add766.4, %mul779.4, !dbg !280
  %add.ptr781.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add780.4, !dbg !281
  store half %conv.i.i1059.4, ptr addrspace(3) %add.ptr781.4, align 8, !dbg !282
  %add.ptr781.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781.4, i32 2, !dbg !282
  store half %conv.i.i1059.1.4, ptr addrspace(3) %add.ptr781.4.sroa_idx, align 2, !dbg !282
  %add.ptr781.4.sroa_idx1328 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781.4, i32 4, !dbg !282
  store half %conv.i.i1059.2.4, ptr addrspace(3) %add.ptr781.4.sroa_idx1328, align 4, !dbg !282
  %add.ptr781.4.sroa_idx1329 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781.4, i32 6, !dbg !282
  store half %conv.i.i1059.3.4, ptr addrspace(3) %add.ptr781.4.sroa_idx1329, align 2, !dbg !282
  %conv.i.i1059.5 = fptrunc float %div.20 to half, !dbg !270
  %conv.i.i1059.1.5 = fptrunc float %div.21 to half, !dbg !270
  %conv.i.i1059.2.5 = fptrunc float %div.22 to half, !dbg !270
  %conv.i.i1059.3.5 = fptrunc float %div.23 to half, !dbg !270
  %add766.5 = or disjoint i32 %add752.4, %mul765.1, !dbg !278
  %add780.5 = or disjoint i32 %add766.5, %mul779.4, !dbg !280
  %add.ptr781.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add780.5, !dbg !281
  store half %conv.i.i1059.5, ptr addrspace(3) %add.ptr781.5, align 8, !dbg !282
  %add.ptr781.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781.5, i32 2, !dbg !282
  store half %conv.i.i1059.1.5, ptr addrspace(3) %add.ptr781.5.sroa_idx, align 2, !dbg !282
  %add.ptr781.5.sroa_idx1333 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781.5, i32 4, !dbg !282
  store half %conv.i.i1059.2.5, ptr addrspace(3) %add.ptr781.5.sroa_idx1333, align 4, !dbg !282
  %add.ptr781.5.sroa_idx1334 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781.5, i32 6, !dbg !282
  store half %conv.i.i1059.3.5, ptr addrspace(3) %add.ptr781.5.sroa_idx1334, align 2, !dbg !282
  %conv.i.i1059.6 = fptrunc float %div.24 to half, !dbg !270
  %conv.i.i1059.1.6 = fptrunc float %div.25 to half, !dbg !270
  %conv.i.i1059.2.6 = fptrunc float %div.26 to half, !dbg !270
  %conv.i.i1059.3.6 = fptrunc float %div.27 to half, !dbg !270
  %add766.6 = or disjoint i32 %add752.4, %mul765.2, !dbg !278
  %add780.6 = or disjoint i32 %add766.6, %mul779.4, !dbg !280
  %add.ptr781.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add780.6, !dbg !281
  store half %conv.i.i1059.6, ptr addrspace(3) %add.ptr781.6, align 8, !dbg !282
  %add.ptr781.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781.6, i32 2, !dbg !282
  store half %conv.i.i1059.1.6, ptr addrspace(3) %add.ptr781.6.sroa_idx, align 2, !dbg !282
  %add.ptr781.6.sroa_idx1338 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781.6, i32 4, !dbg !282
  store half %conv.i.i1059.2.6, ptr addrspace(3) %add.ptr781.6.sroa_idx1338, align 4, !dbg !282
  %add.ptr781.6.sroa_idx1339 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781.6, i32 6, !dbg !282
  store half %conv.i.i1059.3.6, ptr addrspace(3) %add.ptr781.6.sroa_idx1339, align 2, !dbg !282
  %conv.i.i1059.7 = fptrunc float %div.28 to half, !dbg !270
  %conv.i.i1059.1.7 = fptrunc float %div.29 to half, !dbg !270
  %conv.i.i1059.2.7 = fptrunc float %div.30 to half, !dbg !270
  %conv.i.i1059.3.7 = fptrunc float %div.31 to half, !dbg !270
  %add766.7 = or disjoint i32 %add752.4, %mul765.3, !dbg !278
  %add780.7 = or disjoint i32 %add766.7, %mul779.4, !dbg !280
  %add.ptr781.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add780.7, !dbg !281
  store half %conv.i.i1059.7, ptr addrspace(3) %add.ptr781.7, align 8, !dbg !282
  %add.ptr781.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781.7, i32 2, !dbg !282
  store half %conv.i.i1059.1.7, ptr addrspace(3) %add.ptr781.7.sroa_idx, align 2, !dbg !282
  %add.ptr781.7.sroa_idx1343 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781.7, i32 4, !dbg !282
  store half %conv.i.i1059.2.7, ptr addrspace(3) %add.ptr781.7.sroa_idx1343, align 4, !dbg !282
  %add.ptr781.7.sroa_idx1344 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr781.7, i32 6, !dbg !282
  store half %conv.i.i1059.3.7, ptr addrspace(3) %add.ptr781.7.sroa_idx1344, align 2, !dbg !282
  br label %if.end785, !dbg !284

if.end785:                                        ; preds = %if.end702.if.end785_crit_edge, %for.cond722.preheader
  %.pre-phi2206 = phi i32 [ %.pre2205, %if.end702.if.end785_crit_edge ], [ %311, %for.cond722.preheader ]
  %.pre-phi2204 = phi i32 [ %.pre2203, %if.end702.if.end785_crit_edge ], [ %310, %for.cond722.preheader ]
  %.pre-phi = phi i32 [ %.pre2202, %if.end702.if.end785_crit_edge ], [ %309, %for.cond722.preheader ]
  %mul795.pre-phi = phi i32 [ %.pre, %if.end702.if.end785_crit_edge ], [ %mul743, %for.cond722.preheader ]
  fence syncscope("warp") release, !dbg !284
  tail call void @llvm.mxc.barrier.warp(), !dbg !287
  fence syncscope("warp") acquire, !dbg !288
  %313 = shl nuw nsw i32 %0, 7
  %314 = and i32 %313, 1024
  %add801 = or disjoint i32 %mul795.pre-phi, %314
  %315 = shl nuw nsw i32 %0, 2
  %316 = and i32 %315, 192
  %317 = and i32 %.pre-phi2204, 3
  %318 = and i32 %.pre-phi2206, 1
  %mul848 = shl nuw nsw i64 %conv, 21
  %conv850 = zext nneg i32 %5 to i64
  %mul851 = shl nuw nsw i64 %conv850, 12
  %add852 = add nuw nsw i64 %mul848, %mul851
  %319 = shl nuw nsw i32 %0, 3
  %320 = and i32 %319, 504
  %mul862 = zext nneg i32 %320 to i64
  %add855 = or disjoint i64 %add852, %mul862
  %321 = or disjoint i32 %add801, %316
  %xor822 = xor i32 %317, %.pre-phi
  %mul823 = shl nuw nsw i32 %xor822, 3
  %add824 = or disjoint i32 %mul823, %321
  %.idx1108 = shl nuw nsw i32 %318, 3, !dbg !289
  %322 = getelementptr i8, ptr addrspace(3) @shared, i32 %.idx1108, !dbg !289
  %add.ptr836 = getelementptr %struct.__half, ptr addrspace(3) %322, i32 %add824, !dbg !289
  %323 = load i64, ptr addrspace(3) %add.ptr836, align 8, !dbg !290
  %xor833.1 = shl nuw nsw i32 %318, 3, !dbg !289
  %.idx1108.1 = xor i32 %xor833.1, 8, !dbg !289
  %324 = getelementptr i8, ptr addrspace(3) @shared, i32 %.idx1108.1, !dbg !289
  %add.ptr836.1 = getelementptr %struct.__half, ptr addrspace(3) %324, i32 %add824, !dbg !289
  %325 = load i64, ptr addrspace(3) %add.ptr836.1, align 8, !dbg !290
  %326 = getelementptr %struct.__half, ptr addrspace(1) %Output.coerce, i64 %add855, !dbg !291
  %.idx1109 = shl nsw i64 %conv11, 12, !dbg !291
  %327 = getelementptr i8, ptr addrspace(1) %326, i64 %.idx1109, !dbg !291
  store i64 %323, ptr addrspace(1) %327, align 16, !dbg !292
  %output_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %327, i64 8, !dbg !292
  store i64 %325, ptr addrspace(1) %output_fetch.sroa.10.0..sroa_idx, align 8, !dbg !292
  %328 = or disjoint i32 %add801, %316
  %329 = or disjoint i32 %328, 256
  %add821.1 = or disjoint i32 %317, 4
  %xor822.1 = xor i32 %add821.1, %.pre-phi
  %mul823.1 = shl nuw nsw i32 %xor822.1, 3
  %add824.1 = or disjoint i32 %mul823.1, %329
  %add.ptr836.11299 = getelementptr %struct.__half, ptr addrspace(3) %322, i32 %add824.1, !dbg !289
  %330 = load i64, ptr addrspace(3) %add.ptr836.11299, align 8, !dbg !290
  %add.ptr836.1.1 = getelementptr %struct.__half, ptr addrspace(3) %324, i32 %add824.1, !dbg !289
  %331 = load i64, ptr addrspace(3) %add.ptr836.1.1, align 8, !dbg !290
  %add.ptr864.1 = getelementptr i8, ptr addrspace(1) %327, i64 1024, !dbg !291
  store i64 %330, ptr addrspace(1) %add.ptr864.1, align 16, !dbg !292
  %output_fetch.sroa.10.0.add.ptr864.1.sroa_idx = getelementptr i8, ptr addrspace(1) %327, i64 1032, !dbg !292
  store i64 %331, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr864.1.sroa_idx, align 8, !dbg !292
  %332 = or disjoint i32 %add801, %316
  %333 = or disjoint i32 %332, 512
  %add824.2 = or disjoint i32 %mul823, %333
  %add.ptr836.2 = getelementptr %struct.__half, ptr addrspace(3) %324, i32 %add824.2, !dbg !289
  %334 = load i64, ptr addrspace(3) %add.ptr836.2, align 8, !dbg !290
  %add.ptr836.1.2 = getelementptr %struct.__half, ptr addrspace(3) %322, i32 %add824.2, !dbg !289
  %335 = load i64, ptr addrspace(3) %add.ptr836.1.2, align 8, !dbg !290
  %add.ptr864.2 = getelementptr i8, ptr addrspace(1) %327, i64 2048, !dbg !291
  store i64 %334, ptr addrspace(1) %add.ptr864.2, align 16, !dbg !292
  %output_fetch.sroa.10.0.add.ptr864.2.sroa_idx = getelementptr i8, ptr addrspace(1) %327, i64 2056, !dbg !292
  store i64 %335, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr864.2.sroa_idx, align 8, !dbg !292
  %336 = or disjoint i32 %add801, %316
  %337 = or disjoint i32 %336, 768
  %add824.3 = or disjoint i32 %mul823.1, %337
  %add.ptr836.3 = getelementptr %struct.__half, ptr addrspace(3) %324, i32 %add824.3, !dbg !289
  %338 = load i64, ptr addrspace(3) %add.ptr836.3, align 8, !dbg !290
  %add.ptr836.1.3 = getelementptr %struct.__half, ptr addrspace(3) %322, i32 %add824.3, !dbg !289
  %339 = load i64, ptr addrspace(3) %add.ptr836.1.3, align 8, !dbg !290
  %add.ptr864.3 = getelementptr i8, ptr addrspace(1) %327, i64 3072, !dbg !291
  store i64 %338, ptr addrspace(1) %add.ptr864.3, align 16, !dbg !292
  %output_fetch.sroa.10.0.add.ptr864.3.sroa_idx = getelementptr i8, ptr addrspace(1) %327, i64 3080, !dbg !292
  store i64 %339, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr864.3.sroa_idx, align 8, !dbg !292
  ret void, !dbg !293
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
attributes #3 = { convergent mustprogress norecurse nounwind willreturn "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-implicitarg-num-bytes"="80" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="128" "metaxgpu-min-blocks"="1" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" "uniform-work-group-size"="true" }
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v073_codex_power_s1_wave_broadcast_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v073_codex_power_s1_wave_broadcast_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
!42 = !DILocation(line: 67, column: 3, scope: !43, inlinedAt: !45)
!43 = distinct !DISubprogram(name: "__fetch_builtin_x", scope: !44, file: !44, line: 67, type: !7, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!44 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_builtin_vars.h", directory: "")
!45 = distinct !DILocation(line: 25, column: 65, scope: !40)
!46 = !{i32 0, i32 1024}
!47 = !DILocation(line: 25, column: 78, scope: !40)
!48 = !DILocation(line: 171, column: 37, scope: !49, inlinedAt: !51)
!49 = distinct !DISubprogram(name: "__lane_id", scope: !50, file: !50, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!50 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!51 = distinct !DILocation(line: 580, column: 14, scope: !52, inlinedAt: !53)
!52 = distinct !DISubprogram(name: "__shfl_sync", scope: !50, file: !50, line: 578, type: !7, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!53 = distinct !DILocation(line: 25, column: 14, scope: !40)
!54 = !DILocation(line: 171, column: 10, scope: !49, inlinedAt: !51)
!55 = !DILocation(line: 583, column: 43, scope: !52, inlinedAt: !53)
!56 = !DILocation(line: 583, column: 10, scope: !52, inlinedAt: !53)
!57 = !DILocation(line: 78, column: 3, scope: !58, inlinedAt: !59)
!58 = distinct !DISubprogram(name: "__fetch_builtin_y", scope: !44, file: !44, line: 78, type: !7, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!59 = distinct !DILocation(line: 26, column: 49, scope: !40)
!60 = !DILocation(line: 26, column: 43, scope: !40)
!61 = !DILocation(line: 77, column: 3, scope: !62, inlinedAt: !63)
!62 = distinct !DISubprogram(name: "__fetch_builtin_x", scope: !44, file: !44, line: 77, type: !7, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!63 = distinct !DILocation(line: 26, column: 98, scope: !40)
!64 = !DILocation(line: 26, column: 111, scope: !40)
!65 = !DILocation(line: 26, column: 138, scope: !40)
!66 = !DILocation(line: 26, column: 22, scope: !40)
!67 = !DILocation(line: 26, column: 146, scope: !40)
!68 = !DILocation(line: 28, column: 10, scope: !40)
!69 = !DILocation(line: 28, column: 26, scope: !40)
!70 = !DILocation(line: 28, column: 70, scope: !40)
!71 = !DILocation(line: 28, column: 42, scope: !40)
!72 = !DILocation(line: 28, column: 7, scope: !40)
!73 = !DILocation(line: 31, column: 45, scope: !40)
!74 = !DILocation(line: 31, column: 31, scope: !40)
!75 = !DILocation(line: 34, column: 26, scope: !40)
!76 = !DILocation(line: 34, column: 583, scope: !40)
!77 = !DILocation(line: 68, column: 3, scope: !78, inlinedAt: !79)
!78 = distinct !DISubprogram(name: "__barrier_warp", scope: !50, file: !50, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!79 = distinct !DILocation(line: 192, column: 3, scope: !80, inlinedAt: !81)
!80 = distinct !DISubprogram(name: "__syncwarp", scope: !50, file: !50, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!81 = distinct !DILocation(line: 37, column: 5, scope: !40)
!82 = !DILocation(line: 69, column: 3, scope: !78, inlinedAt: !79)
!83 = !DILocation(line: 70, column: 3, scope: !78, inlinedAt: !79)
!84 = !DILocation(line: 39, column: 153, scope: !40)
!85 = !DILocation(line: 39, column: 335, scope: !40)
!86 = !DILocation(line: 39, column: 383, scope: !40)
!87 = !DILocation(line: 39, column: 218, scope: !40)
!88 = !DILocation(line: 39, column: 566, scope: !40)
!89 = !DILocation(line: 39, column: 398, scope: !40)
!90 = !DILocation(line: 39, column: 59, scope: !40)
!91 = !DILocation(line: 39, column: 40, scope: !40)
!92 = !DILocation(line: 39, column: 270, scope: !40)
!93 = !DILocation(line: 39, column: 99, scope: !40)
!94 = !DILocation(line: 68, column: 3, scope: !78, inlinedAt: !95)
!95 = distinct !DILocation(line: 192, column: 3, scope: !80, inlinedAt: !96)
!96 = distinct !DILocation(line: 41, column: 5, scope: !40)
!97 = !DILocation(line: 69, column: 3, scope: !78, inlinedAt: !95)
!98 = !DILocation(line: 70, column: 3, scope: !78, inlinedAt: !95)
!99 = !DILocation(line: 44, column: 45, scope: !40)
!100 = !DILocation(line: 44, column: 31, scope: !40)
!101 = !DILocation(line: 47, column: 26, scope: !40)
!102 = !DILocation(line: 47, column: 606, scope: !40)
!103 = !DILocation(line: 68, column: 3, scope: !78, inlinedAt: !104)
!104 = distinct !DILocation(line: 192, column: 3, scope: !80, inlinedAt: !105)
!105 = distinct !DILocation(line: 50, column: 5, scope: !40)
!106 = !DILocation(line: 69, column: 3, scope: !78, inlinedAt: !104)
!107 = !DILocation(line: 70, column: 3, scope: !78, inlinedAt: !104)
!108 = !DILocation(line: 59, column: 254, scope: !40)
!109 = !DILocation(line: 59, column: 436, scope: !40)
!110 = !DILocation(line: 59, column: 51, scope: !40)
!111 = !DILocation(line: 59, column: 32, scope: !40)
!112 = !DILocation(line: 61, column: 44, scope: !40)
!113 = !DILocation(line: 59, column: 148, scope: !40)
!114 = !DILocation(line: 72, column: 103, scope: !40)
!115 = !DILocation(line: 72, column: 13, scope: !40)
!116 = !DILocation(line: 72, column: 92, scope: !40)
!117 = !DILocation(line: 351, column: 10, scope: !118, inlinedAt: !120)
!118 = distinct !DISubprogram(name: "max", scope: !119, file: !119, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!119 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!120 = distinct !DILocation(line: 83, column: 20, scope: !40)
!121 = !DILocation(line: 1018, column: 9, scope: !122, inlinedAt: !123)
!122 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !50, file: !50, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!123 = distinct !DILocation(line: 85, column: 34, scope: !40)
!124 = !DILocation(line: 171, column: 37, scope: !49, inlinedAt: !125)
!125 = distinct !DILocation(line: 990, column: 14, scope: !126, inlinedAt: !127)
!126 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !50, file: !50, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!127 = distinct !DILocation(line: 1019, column: 11, scope: !122, inlinedAt: !123)
!128 = !DILocation(line: 171, column: 10, scope: !49, inlinedAt: !125)
!129 = !DILocation(line: 991, column: 20, scope: !126, inlinedAt: !127)
!130 = !DILocation(line: 992, column: 36, scope: !126, inlinedAt: !127)
!131 = !DILocation(line: 992, column: 17, scope: !126, inlinedAt: !127)
!132 = !DILocation(line: 992, column: 11, scope: !126, inlinedAt: !127)
!133 = !DILocation(line: 993, column: 43, scope: !126, inlinedAt: !127)
!134 = !DILocation(line: 993, column: 10, scope: !126, inlinedAt: !127)
!135 = !DILocation(line: 1020, column: 14, scope: !122, inlinedAt: !123)
!136 = !DILocation(line: 351, column: 10, scope: !118, inlinedAt: !137)
!137 = distinct !DILocation(line: 85, column: 18, scope: !40)
!138 = !DILocation(line: 1018, column: 9, scope: !122, inlinedAt: !139)
!139 = distinct !DILocation(line: 86, column: 34, scope: !40)
!140 = !DILocation(line: 171, column: 37, scope: !49, inlinedAt: !141)
!141 = distinct !DILocation(line: 990, column: 14, scope: !126, inlinedAt: !142)
!142 = distinct !DILocation(line: 1019, column: 11, scope: !122, inlinedAt: !139)
!143 = !DILocation(line: 171, column: 10, scope: !49, inlinedAt: !141)
!144 = !DILocation(line: 991, column: 20, scope: !126, inlinedAt: !142)
!145 = !DILocation(line: 992, column: 36, scope: !126, inlinedAt: !142)
!146 = !DILocation(line: 992, column: 17, scope: !126, inlinedAt: !142)
!147 = !DILocation(line: 992, column: 11, scope: !126, inlinedAt: !142)
!148 = !DILocation(line: 993, column: 43, scope: !126, inlinedAt: !142)
!149 = !DILocation(line: 993, column: 10, scope: !126, inlinedAt: !142)
!150 = !DILocation(line: 1020, column: 14, scope: !122, inlinedAt: !139)
!151 = !DILocation(line: 351, column: 10, scope: !118, inlinedAt: !152)
!152 = distinct !DILocation(line: 86, column: 18, scope: !40)
!153 = !DILocation(line: 98, column: 26, scope: !40)
!154 = !DILocation(line: 99, column: 26, scope: !40)
!155 = !DILocation(line: 100, column: 26, scope: !40)
!156 = !DILocation(line: 101, column: 26, scope: !40)
!157 = !DILocation(line: 103, column: 25, scope: !40)
!158 = !DILocation(line: 104, column: 25, scope: !40)
!159 = !DILocation(line: 105, column: 25, scope: !40)
!160 = !DILocation(line: 106, column: 25, scope: !40)
!161 = !DILocation(line: 108, column: 23, scope: !40)
!162 = !DILocation(line: 109, column: 23, scope: !40)
!163 = !DILocation(line: 110, column: 23, scope: !40)
!164 = !DILocation(line: 111, column: 23, scope: !40)
!165 = !DILocation(line: 285, column: 49, scope: !166, inlinedAt: !167)
!166 = distinct !DISubprogram(name: "exp2f", scope: !119, file: !119, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!167 = distinct !DILocation(line: 112, column: 15, scope: !40)
!168 = !DILocation(line: 285, column: 49, scope: !166, inlinedAt: !169)
!169 = distinct !DILocation(line: 113, column: 15, scope: !40)
!170 = !DILocation(line: 285, column: 49, scope: !166, inlinedAt: !171)
!171 = distinct !DILocation(line: 114, column: 15, scope: !40)
!172 = !DILocation(line: 285, column: 49, scope: !166, inlinedAt: !173)
!173 = distinct !DILocation(line: 115, column: 15, scope: !40)
!174 = !DILocation(line: 1007, column: 10, scope: !175, inlinedAt: !177)
!175 = distinct !DISubprogram(name: "__float2half_rn", scope: !176, file: !176, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!176 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!177 = distinct !DILocation(line: 1077, column: 18, scope: !178, inlinedAt: !179)
!178 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !176, file: !176, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!179 = distinct !DILocation(line: 1295, column: 23, scope: !180, inlinedAt: !181)
!180 = distinct !DISubprogram(name: "__float22half2_rn", scope: !176, file: !176, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!181 = distinct !DILocation(line: 116, column: 29, scope: !40)
!182 = !{!183, !185}
!183 = distinct !{!183, !184, !"_ZL17__floats2half2_rnff: %agg.result"}
!184 = distinct !{!184, !"_ZL17__floats2half2_rnff"}
!185 = distinct !{!185, !186, !"_ZL17__float22half2_rn6float2: %agg.result"}
!186 = distinct !{!186, !"_ZL17__float22half2_rn6float2"}
!187 = !DILocation(line: 1007, column: 10, scope: !175, inlinedAt: !188)
!188 = distinct !DILocation(line: 1077, column: 38, scope: !178, inlinedAt: !179)
!189 = !DILocation(line: 1007, column: 10, scope: !175, inlinedAt: !190)
!190 = distinct !DILocation(line: 1077, column: 18, scope: !178, inlinedAt: !191)
!191 = distinct !DILocation(line: 1295, column: 23, scope: !180, inlinedAt: !192)
!192 = distinct !DILocation(line: 117, column: 29, scope: !40)
!193 = !{!194, !196}
!194 = distinct !{!194, !195, !"_ZL17__floats2half2_rnff: %agg.result"}
!195 = distinct !{!195, !"_ZL17__floats2half2_rnff"}
!196 = distinct !{!196, !197, !"_ZL17__float22half2_rn6float2: %agg.result"}
!197 = distinct !{!197, !"_ZL17__float22half2_rn6float2"}
!198 = !DILocation(line: 1007, column: 10, scope: !175, inlinedAt: !199)
!199 = distinct !DILocation(line: 1077, column: 38, scope: !178, inlinedAt: !191)
!200 = !DILocation(line: 118, column: 51, scope: !40)
!201 = !DILocation(line: 1082, column: 16, scope: !202, inlinedAt: !203)
!202 = distinct !DISubprogram(name: "__half2float", scope: !176, file: !176, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!203 = distinct !DILocation(line: 136, column: 55, scope: !204, inlinedAt: !205)
!204 = distinct !DISubprogram(name: "operator float", scope: !176, file: !176, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!205 = distinct !DILocation(line: 122, column: 50, scope: !40)
!206 = !DILocation(line: 122, column: 40, scope: !40)
!207 = !DILocation(line: 1018, column: 9, scope: !122, inlinedAt: !208)
!208 = distinct !DILocation(line: 124, column: 40, scope: !40)
!209 = !DILocation(line: 171, column: 37, scope: !49, inlinedAt: !210)
!210 = distinct !DILocation(line: 990, column: 14, scope: !126, inlinedAt: !211)
!211 = distinct !DILocation(line: 1019, column: 11, scope: !122, inlinedAt: !208)
!212 = !DILocation(line: 171, column: 10, scope: !49, inlinedAt: !210)
!213 = !DILocation(line: 991, column: 20, scope: !126, inlinedAt: !211)
!214 = !DILocation(line: 992, column: 36, scope: !126, inlinedAt: !211)
!215 = !DILocation(line: 992, column: 17, scope: !126, inlinedAt: !211)
!216 = !DILocation(line: 992, column: 11, scope: !126, inlinedAt: !211)
!217 = !DILocation(line: 993, column: 43, scope: !126, inlinedAt: !211)
!218 = !DILocation(line: 993, column: 10, scope: !126, inlinedAt: !211)
!219 = !DILocation(line: 1020, column: 14, scope: !122, inlinedAt: !208)
!220 = !DILocation(line: 124, column: 38, scope: !40)
!221 = !DILocation(line: 1018, column: 9, scope: !122, inlinedAt: !222)
!222 = distinct !DILocation(line: 125, column: 40, scope: !40)
!223 = !DILocation(line: 171, column: 37, scope: !49, inlinedAt: !224)
!224 = distinct !DILocation(line: 990, column: 14, scope: !126, inlinedAt: !225)
!225 = distinct !DILocation(line: 1019, column: 11, scope: !122, inlinedAt: !222)
!226 = !DILocation(line: 171, column: 10, scope: !49, inlinedAt: !224)
!227 = !DILocation(line: 991, column: 20, scope: !126, inlinedAt: !225)
!228 = !DILocation(line: 992, column: 36, scope: !126, inlinedAt: !225)
!229 = !DILocation(line: 992, column: 17, scope: !126, inlinedAt: !225)
!230 = !DILocation(line: 992, column: 11, scope: !126, inlinedAt: !225)
!231 = !DILocation(line: 993, column: 43, scope: !126, inlinedAt: !225)
!232 = !DILocation(line: 993, column: 10, scope: !126, inlinedAt: !225)
!233 = !DILocation(line: 1020, column: 14, scope: !122, inlinedAt: !222)
!234 = !DILocation(line: 68, column: 3, scope: !78, inlinedAt: !235)
!235 = distinct !DILocation(line: 192, column: 3, scope: !80, inlinedAt: !236)
!236 = distinct !DILocation(line: 126, column: 5, scope: !40)
!237 = !DILocation(line: 69, column: 3, scope: !78, inlinedAt: !235)
!238 = !DILocation(line: 70, column: 3, scope: !78, inlinedAt: !235)
!239 = !DILocation(line: 133, column: 56, scope: !40)
!240 = !DILocation(line: 133, column: 42, scope: !40)
!241 = !DILocation(line: 140, column: 141, scope: !40)
!242 = !DILocation(line: 140, column: 28, scope: !40)
!243 = !DILocation(line: 140, column: 395, scope: !40)
!244 = !DILocation(line: 68, column: 3, scope: !78, inlinedAt: !245)
!245 = distinct !DILocation(line: 192, column: 3, scope: !80, inlinedAt: !246)
!246 = distinct !DILocation(line: 144, column: 5, scope: !40)
!247 = !DILocation(line: 69, column: 3, scope: !78, inlinedAt: !245)
!248 = !DILocation(line: 70, column: 3, scope: !78, inlinedAt: !245)
!249 = !DILocation(line: 158, column: 595, scope: !40)
!250 = !DILocation(line: 158, column: 84, scope: !40)
!251 = !DILocation(line: 158, column: 65, scope: !40)
!252 = !DILocation(line: 158, column: 473, scope: !40)
!253 = !DILocation(line: 164, column: 94, scope: !40)
!254 = !DILocation(line: 164, column: 64, scope: !40)
!255 = !DILocation(line: 125, column: 38, scope: !40)
!256 = !DILocation(line: 179, column: 3, scope: !40)
!257 = !DILocation(line: 0, scope: !40)
!258 = !DILocation(line: 68, column: 3, scope: !78, inlinedAt: !259)
!259 = distinct !DILocation(line: 192, column: 3, scope: !80, inlinedAt: !260)
!260 = distinct !DILocation(line: 182, column: 3, scope: !40)
!261 = !DILocation(line: 69, column: 3, scope: !78, inlinedAt: !259)
!262 = !DILocation(line: 70, column: 3, scope: !78, inlinedAt: !259)
!263 = !DILocation(line: 183, column: 36, scope: !40)
!264 = !DILocation(line: 183, column: 64, scope: !40)
!265 = !DILocation(line: 183, column: 42, scope: !40)
!266 = !DILocation(line: 183, column: 26, scope: !40)
!267 = !DILocation(line: 183, column: 7, scope: !40)
!268 = !DILocation(line: 180, column: 23, scope: !40)
!269 = !DILocation(line: 180, column: 38, scope: !40)
!270 = !DILocation(line: 984, column: 21, scope: !271, inlinedAt: !272)
!271 = distinct !DISubprogram(name: "__float2half", scope: !176, file: !176, line: 979, type: !7, scopeLine: 979, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!272 = distinct !DILocation(line: 133, column: 53, scope: !273, inlinedAt: !274)
!273 = distinct !DISubprogram(name: "__half", scope: !176, file: !176, line: 133, type: !7, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!274 = distinct !DILocation(line: 187, column: 41, scope: !40)
!275 = !DILocation(line: 189, column: 120, scope: !40)
!276 = !DILocation(line: 189, column: 304, scope: !40)
!277 = !DILocation(line: 189, column: 352, scope: !40)
!278 = !DILocation(line: 189, column: 185, scope: !40)
!279 = !DILocation(line: 189, column: 537, scope: !40)
!280 = !DILocation(line: 189, column: 367, scope: !40)
!281 = !DILocation(line: 189, column: 24, scope: !40)
!282 = !DILocation(line: 189, column: 553, scope: !40)
!283 = !DILocation(line: 189, column: 239, scope: !40)
!284 = !DILocation(line: 68, column: 3, scope: !78, inlinedAt: !285)
!285 = distinct !DILocation(line: 192, column: 3, scope: !80, inlinedAt: !286)
!286 = distinct !DILocation(line: 192, column: 3, scope: !40)
!287 = !DILocation(line: 69, column: 3, scope: !78, inlinedAt: !285)
!288 = !DILocation(line: 70, column: 3, scope: !78, inlinedAt: !285)
!289 = !DILocation(line: 197, column: 65, scope: !40)
!290 = !DILocation(line: 197, column: 46, scope: !40)
!291 = !DILocation(line: 199, column: 22, scope: !40)
!292 = !DILocation(line: 199, column: 268, scope: !40)
!293 = !DILocation(line: 201, column: 1, scope: !40)
