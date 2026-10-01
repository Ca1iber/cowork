; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v072_codex_power_s1_two_query_waves_sc-16g-2/case6.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v072_codex_power_s1_two_query_waves_sc-16g-2/codegen/case6.device.cpp"
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
  %mul7 = shl nuw nsw i32 %1, 1, !dbg !50
  %2 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !dbg !51, !range !54
  %shr = lshr i32 %2, 6, !dbg !55
  %add = add nuw nsw i32 %shr, %mul7, !dbg !56
  %add9 = add nuw nsw i32 %add, %mul, !dbg !57
  %idxprom = zext nneg i32 %add9 to i64, !dbg !58
  %arrayidx = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %idxprom, !dbg !58
  %3 = load i32, ptr addrspace(1) %arrayidx, align 4, !dbg !58, !tbaa !30
  %mul10 = shl nsw i32 %3, 5, !dbg !59
  %cmp = icmp slt i32 %3, 0, !dbg !60
  %cmp17.not = icmp sgt i32 %mul10, %add
  %or.cond = select i1 %cmp, i1 true, i1 %cmp17.not, !dbg !61
  br i1 %or.cond, label %if.else647, label %for.cond.preheader, !dbg !61

for.cond.preheader:                               ; preds = %entry
  %mul20 = shl nsw i32 %0, 21
  %mul22 = shl nsw i32 %1, 12
  %add23 = add nuw nsw i32 %mul20, %mul22
  %4 = shl nuw nsw i32 %2, 5
  %mul26 = and i32 %4, 30720
  %add27 = add nuw nsw i32 %add23, %mul26
  %and = shl nuw nsw i32 %2, 3
  %mul31 = and i32 %and, 504
  %add29 = or disjoint i32 %add27, %mul31
  %5 = shl nuw nsw i32 %2, 6
  %mul44 = and i32 %5, 61440
  %6 = shl nuw nsw i32 %2, 7
  %mul48 = and i32 %6, 1024
  %add49 = or disjoint i32 %mul44, %mul48
  %7 = shl nuw nsw i32 %2, 2
  %mul55 = and i32 %7, 192
  %and58 = and i32 %2, 7
  %and62 = lshr i32 %2, 4
  %shr63 = and i32 %and62, 3
  %and70 = lshr i32 %2, 3
  %shr71 = and i32 %and70, 1
  %8 = zext nneg i32 %add29 to i64, !dbg !62
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %8, !dbg !63
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %add.ptr, align 16, !dbg !64
  %qk_fetch.sroa.26.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !64
  %qk_fetch.sroa.26.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.sroa_idx, align 8, !dbg !64
  %9 = or disjoint i32 %add49, %mul55
  %xor = xor i32 %shr63, %and58
  %mul65 = shl nuw nsw i32 %xor, 3
  %add66 = or disjoint i32 %mul65, %9
  %.idx = shl nuw nsw i32 %shr71, 3, !dbg !65
  %10 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %.idx, !dbg !65
  %add.ptr76 = getelementptr inbounds %struct.__half, ptr addrspace(3) %10, i32 %add66, !dbg !65
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr76, align 8, !dbg !66
  %xor72.1 = shl nuw nsw i32 %shr71, 3, !dbg !65
  %.idx.1 = xor i32 %xor72.1, 8, !dbg !65
  %11 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %.idx.1, !dbg !65
  %add.ptr76.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %11, i32 %add66, !dbg !65
  store i64 %qk_fetch.sroa.26.0.copyload, ptr addrspace(3) %add.ptr76.1, align 8, !dbg !66
  %12 = or disjoint i64 %8, 512, !dbg !67
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %12, !dbg !63
  %qk_fetch.sroa.0.0.copyload2099 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !64
  %qk_fetch.sroa.26.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !64
  %qk_fetch.sroa.26.0.copyload2110 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.1.sroa_idx, align 8, !dbg !64
  %13 = or disjoint i32 %add49, %mul55
  %14 = or disjoint i32 %13, 256
  %add64.1 = or disjoint i32 %shr63, 4
  %xor.1 = xor i32 %add64.1, %and58
  %mul65.1 = shl nuw nsw i32 %xor.1, 3
  %add66.1 = or disjoint i32 %mul65.1, %14
  %add.ptr76.11031 = getelementptr inbounds %struct.__half, ptr addrspace(3) %10, i32 %add66.1, !dbg !65
  store i64 %qk_fetch.sroa.0.0.copyload2099, ptr addrspace(3) %add.ptr76.11031, align 8, !dbg !66
  %add.ptr76.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %11, i32 %add66.1, !dbg !65
  store i64 %qk_fetch.sroa.26.0.copyload2110, ptr addrspace(3) %add.ptr76.1.1, align 8, !dbg !66
  %15 = or disjoint i64 %8, 1024, !dbg !67
  %add.ptr.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %15, !dbg !63
  %qk_fetch.sroa.0.0.copyload2100 = load i64, ptr addrspace(4) %add.ptr.2, align 16, !dbg !64
  %qk_fetch.sroa.26.0.add.ptr.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.2, i64 8, !dbg !64
  %qk_fetch.sroa.26.0.copyload2111 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.2.sroa_idx, align 8, !dbg !64
  %16 = or disjoint i32 %add49, %mul55
  %17 = or disjoint i32 %16, 512
  %add66.2 = or disjoint i32 %mul65, %17
  %add.ptr76.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) %11, i32 %add66.2, !dbg !65
  store i64 %qk_fetch.sroa.0.0.copyload2100, ptr addrspace(3) %add.ptr76.2, align 8, !dbg !66
  %add.ptr76.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) %10, i32 %add66.2, !dbg !65
  store i64 %qk_fetch.sroa.26.0.copyload2111, ptr addrspace(3) %add.ptr76.1.2, align 8, !dbg !66
  %18 = or disjoint i64 %8, 1536, !dbg !67
  %add.ptr.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %18, !dbg !63
  %qk_fetch.sroa.0.0.copyload2101 = load i64, ptr addrspace(4) %add.ptr.3, align 16, !dbg !64
  %qk_fetch.sroa.26.0.add.ptr.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.3, i64 8, !dbg !64
  %qk_fetch.sroa.26.0.copyload2112 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.3.sroa_idx, align 8, !dbg !64
  %19 = or disjoint i32 %add49, %mul55
  %20 = or disjoint i32 %19, 768
  %add66.3 = or disjoint i32 %mul65.1, %20
  %add.ptr76.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) %11, i32 %add66.3, !dbg !65
  store i64 %qk_fetch.sroa.0.0.copyload2101, ptr addrspace(3) %add.ptr76.3, align 8, !dbg !66
  %add.ptr76.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) %10, i32 %add66.3, !dbg !65
  store i64 %qk_fetch.sroa.26.0.copyload2112, ptr addrspace(3) %add.ptr76.1.3, align 8, !dbg !66
  fence syncscope("warp") release, !dbg !68
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %21 = and i32 %5, 62400
  %and97 = lshr i32 %2, 5
  %shr98 = and i32 %and97, 1
  %shr107945 = xor i32 %and62, %and70
  %xor111 = and i32 %shr107945, 1
  %xor102 = xor i32 %shr98, %and58, !dbg !76
  %mul103 = shl nuw nsw i32 %xor102, 3, !dbg !77
  %add104 = or disjoint i32 %mul103, %21, !dbg !78
  %22 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add104, !dbg !79
  %add.ptr117.idx = shl nuw nsw i32 %xor111, 3, !dbg !79
  %add.ptr117 = getelementptr inbounds i8, ptr addrspace(3) %22, i32 %add.ptr117.idx, !dbg !79
  %23 = load <4 x half>, ptr addrspace(3) %add.ptr117, align 8, !dbg !80
  %add99.1 = or disjoint i32 %shr98, 2, !dbg !81
  %xor102.1 = xor i32 %add99.1, %and58, !dbg !76
  %mul103.1 = shl nuw nsw i32 %xor102.1, 3, !dbg !77
  %add104.1 = or disjoint i32 %mul103.1, %21, !dbg !78
  %24 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add104.1, !dbg !79
  %add.ptr117.1 = getelementptr inbounds i8, ptr addrspace(3) %24, i32 %add.ptr117.idx, !dbg !79
  %25 = load <4 x half>, ptr addrspace(3) %add.ptr117.1, align 8, !dbg !80
  %add99.2 = or disjoint i32 %shr98, 4, !dbg !81
  %xor102.2 = xor i32 %add99.2, %and58, !dbg !76
  %mul103.2 = shl nuw nsw i32 %xor102.2, 3, !dbg !77
  %add104.2 = or disjoint i32 %mul103.2, %21, !dbg !78
  %26 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add104.2, !dbg !79
  %add.ptr117.2 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 %add.ptr117.idx, !dbg !79
  %27 = load <4 x half>, ptr addrspace(3) %add.ptr117.2, align 8, !dbg !80
  %add99.3 = or disjoint i32 %shr98, 6, !dbg !81
  %xor102.3 = xor i32 %add99.3, %and58, !dbg !76
  %mul103.3 = shl nuw nsw i32 %xor102.3, 3, !dbg !77
  %add104.3 = or disjoint i32 %mul103.3, %21, !dbg !78
  %28 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add104.3, !dbg !79
  %add.ptr117.3 = getelementptr inbounds i8, ptr addrspace(3) %28, i32 %add.ptr117.idx, !dbg !79
  %29 = load <4 x half>, ptr addrspace(3) %add.ptr117.3, align 8, !dbg !80
  %add93.4 = or disjoint i32 %21, 1024, !dbg !82
  %add104.4 = or disjoint i32 %mul103, %add93.4, !dbg !78
  %30 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add104.4, !dbg !79
  %xor113.4 = shl nuw nsw i32 %xor111, 3, !dbg !79
  %add.ptr117.idx.4 = xor i32 %xor113.4, 8, !dbg !79
  %add.ptr117.4 = getelementptr inbounds i8, ptr addrspace(3) %30, i32 %add.ptr117.idx.4, !dbg !79
  %31 = load <4 x half>, ptr addrspace(3) %add.ptr117.4, align 8, !dbg !80
  %add104.5 = or disjoint i32 %mul103.1, %add93.4, !dbg !78
  %32 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add104.5, !dbg !79
  %add.ptr117.5 = getelementptr inbounds i8, ptr addrspace(3) %32, i32 %add.ptr117.idx.4, !dbg !79
  %33 = load <4 x half>, ptr addrspace(3) %add.ptr117.5, align 8, !dbg !80
  %add104.6 = or disjoint i32 %mul103.2, %add93.4, !dbg !78
  %34 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add104.6, !dbg !79
  %add.ptr117.6 = getelementptr inbounds i8, ptr addrspace(3) %34, i32 %add.ptr117.idx.4, !dbg !79
  %35 = load <4 x half>, ptr addrspace(3) %add.ptr117.6, align 8, !dbg !80
  %add104.7 = or disjoint i32 %mul103.3, %add93.4, !dbg !78
  %36 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add104.7, !dbg !79
  %add.ptr117.7 = getelementptr inbounds i8, ptr addrspace(3) %36, i32 %add.ptr117.idx.4, !dbg !79
  %37 = load <4 x half>, ptr addrspace(3) %add.ptr117.7, align 8, !dbg !80
  fence syncscope("warp") release, !dbg !83
  tail call void @llvm.mxc.barrier.warp(), !dbg !86
  fence syncscope("warp") acquire, !dbg !87
  %conv = zext nneg i32 %0 to i64
  %mul130 = shl nuw nsw i64 %conv, 17
  %conv134 = zext nneg i32 %mul10 to i64
  %mul140 = zext nneg i32 %mul31 to i64
  %add133 = or disjoint i64 %mul130, %mul140
  %38 = shl nuw nsw i32 %2, 8
  %mul159 = and i32 %38, 2048
  %add160 = or disjoint i32 %mul44, %mul159
  %39 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add133, !dbg !88
  %.idx1017 = shl nuw nsw i64 %conv134, 8, !dbg !88
  %40 = getelementptr inbounds i8, ptr addrspace(4) %39, i64 %.idx1017, !dbg !88
  %qk_fetch.sroa.0.0.copyload2098 = load i64, ptr addrspace(4) %40, align 16, !dbg !89
  %qk_fetch.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %40, i64 8, !dbg !89
  %qk_fetch.sroa.26.0.copyload2109 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0..sroa_idx, align 8, !dbg !89
  %41 = or disjoint i32 %add160, %mul55
  %add178 = or disjoint i32 %mul65, %41
  %add.ptr189 = getelementptr inbounds %struct.__half, ptr addrspace(3) %10, i32 %add178, !dbg !90
  store i64 %qk_fetch.sroa.0.0.copyload2098, ptr addrspace(3) %add.ptr189, align 8, !dbg !91
  %add.ptr189.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %11, i32 %add178, !dbg !90
  store i64 %qk_fetch.sroa.26.0.copyload2109, ptr addrspace(3) %add.ptr189.1, align 8, !dbg !91
  %add.ptr142.1 = getelementptr inbounds i8, ptr addrspace(4) %40, i64 1024, !dbg !88
  %qk_fetch.sroa.0.0.copyload2102 = load i64, ptr addrspace(4) %add.ptr142.1, align 16, !dbg !89
  %qk_fetch.sroa.26.0.add.ptr142.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %40, i64 1032, !dbg !89
  %qk_fetch.sroa.26.0.copyload2113 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr142.1.sroa_idx, align 8, !dbg !89
  %42 = or disjoint i32 %add160, %mul55
  %43 = or disjoint i32 %42, 256
  %add178.1 = or disjoint i32 %mul65.1, %43
  %add.ptr189.11038 = getelementptr inbounds %struct.__half, ptr addrspace(3) %10, i32 %add178.1, !dbg !90
  store i64 %qk_fetch.sroa.0.0.copyload2102, ptr addrspace(3) %add.ptr189.11038, align 8, !dbg !91
  %add.ptr189.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %11, i32 %add178.1, !dbg !90
  store i64 %qk_fetch.sroa.26.0.copyload2113, ptr addrspace(3) %add.ptr189.1.1, align 8, !dbg !91
  %add.ptr142.2 = getelementptr inbounds i8, ptr addrspace(4) %40, i64 2048, !dbg !88
  %qk_fetch.sroa.0.0.copyload2103 = load i64, ptr addrspace(4) %add.ptr142.2, align 16, !dbg !89
  %qk_fetch.sroa.26.0.add.ptr142.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %40, i64 2056, !dbg !89
  %qk_fetch.sroa.26.0.copyload2114 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr142.2.sroa_idx, align 8, !dbg !89
  %44 = or disjoint i32 %add160, %mul55
  %45 = or disjoint i32 %44, 512
  %add178.2 = or disjoint i32 %mul65, %45
  %shr180944.2 = and i32 %and70, 1
  %46 = shl nuw nsw i32 %shr180944.2, 3, !dbg !90
  %.idx1018.2 = xor i32 %46, 8, !dbg !90
  %47 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %.idx1018.2, !dbg !90
  %add.ptr189.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) %47, i32 %add178.2, !dbg !90
  store i64 %qk_fetch.sroa.0.0.copyload2103, ptr addrspace(3) %add.ptr189.2, align 8, !dbg !91
  %.idx1018.1.2 = shl nuw nsw i32 %shr180944.2, 3, !dbg !90
  %48 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %.idx1018.1.2, !dbg !90
  %add.ptr189.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) %48, i32 %add178.2, !dbg !90
  store i64 %qk_fetch.sroa.26.0.copyload2114, ptr addrspace(3) %add.ptr189.1.2, align 8, !dbg !91
  %add.ptr142.3 = getelementptr inbounds i8, ptr addrspace(4) %40, i64 3072, !dbg !88
  %qk_fetch.sroa.0.0.copyload2104 = load i64, ptr addrspace(4) %add.ptr142.3, align 16, !dbg !89
  %qk_fetch.sroa.26.0.add.ptr142.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %40, i64 3080, !dbg !89
  %qk_fetch.sroa.26.0.copyload2115 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr142.3.sroa_idx, align 8, !dbg !89
  %49 = or disjoint i32 %add160, %mul55
  %50 = or disjoint i32 %49, 768
  %add178.3 = or disjoint i32 %mul65.1, %50
  %add.ptr189.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) %47, i32 %add178.3, !dbg !90
  store i64 %qk_fetch.sroa.0.0.copyload2104, ptr addrspace(3) %add.ptr189.3, align 8, !dbg !91
  %add.ptr189.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) %48, i32 %add178.3, !dbg !90
  store i64 %qk_fetch.sroa.26.0.copyload2115, ptr addrspace(3) %add.ptr189.1.3, align 8, !dbg !91
  %add.ptr142.4 = getelementptr inbounds i8, ptr addrspace(4) %40, i64 4096, !dbg !88
  %qk_fetch.sroa.0.0.copyload2105 = load i64, ptr addrspace(4) %add.ptr142.4, align 16, !dbg !89
  %qk_fetch.sroa.26.0.add.ptr142.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %40, i64 4104, !dbg !89
  %qk_fetch.sroa.26.0.copyload2116 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr142.4.sroa_idx, align 8, !dbg !89
  %51 = or disjoint i32 %add160, %mul55
  %52 = or disjoint i32 %51, 1024
  %add178.4 = or disjoint i32 %mul65, %52
  %53 = and i32 %and70, 1
  %.idx1018.4 = shl nuw nsw i32 %53, 3, !dbg !90
  %54 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %.idx1018.4, !dbg !90
  %add.ptr189.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) %54, i32 %add178.4, !dbg !90
  store i64 %qk_fetch.sroa.0.0.copyload2105, ptr addrspace(3) %add.ptr189.4, align 8, !dbg !91
  %xor185.1.4 = shl nuw nsw i32 %53, 3, !dbg !90
  %.idx1018.1.4 = xor i32 %xor185.1.4, 8, !dbg !90
  %55 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %.idx1018.1.4, !dbg !90
  %add.ptr189.1.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) %55, i32 %add178.4, !dbg !90
  store i64 %qk_fetch.sroa.26.0.copyload2116, ptr addrspace(3) %add.ptr189.1.4, align 8, !dbg !91
  %add.ptr142.5 = getelementptr inbounds i8, ptr addrspace(4) %40, i64 5120, !dbg !88
  %qk_fetch.sroa.0.0.copyload2106 = load i64, ptr addrspace(4) %add.ptr142.5, align 16, !dbg !89
  %qk_fetch.sroa.26.0.add.ptr142.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %40, i64 5128, !dbg !89
  %qk_fetch.sroa.26.0.copyload2117 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr142.5.sroa_idx, align 8, !dbg !89
  %56 = or disjoint i32 %add160, %mul55
  %57 = or disjoint i32 %56, 1280
  %add178.5 = or disjoint i32 %mul65.1, %57
  %add.ptr189.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) %54, i32 %add178.5, !dbg !90
  store i64 %qk_fetch.sroa.0.0.copyload2106, ptr addrspace(3) %add.ptr189.5, align 8, !dbg !91
  %add.ptr189.1.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) %55, i32 %add178.5, !dbg !90
  store i64 %qk_fetch.sroa.26.0.copyload2117, ptr addrspace(3) %add.ptr189.1.5, align 8, !dbg !91
  %add.ptr142.6 = getelementptr inbounds i8, ptr addrspace(4) %40, i64 6144, !dbg !88
  %qk_fetch.sroa.0.0.copyload2107 = load i64, ptr addrspace(4) %add.ptr142.6, align 16, !dbg !89
  %qk_fetch.sroa.26.0.add.ptr142.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %40, i64 6152, !dbg !89
  %qk_fetch.sroa.26.0.copyload2118 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr142.6.sroa_idx, align 8, !dbg !89
  %58 = or disjoint i32 %add160, %mul55
  %59 = or disjoint i32 %58, 1536
  %add178.6 = or disjoint i32 %mul65, %59
  %shr180944.6 = and i32 %and70, 1
  %60 = shl nuw nsw i32 %shr180944.6, 3, !dbg !90
  %.idx1018.6 = xor i32 %60, 8, !dbg !90
  %61 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %.idx1018.6, !dbg !90
  %add.ptr189.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) %61, i32 %add178.6, !dbg !90
  store i64 %qk_fetch.sroa.0.0.copyload2107, ptr addrspace(3) %add.ptr189.6, align 8, !dbg !91
  %.idx1018.1.6 = shl nuw nsw i32 %shr180944.6, 3, !dbg !90
  %62 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %.idx1018.1.6, !dbg !90
  %add.ptr189.1.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) %62, i32 %add178.6, !dbg !90
  store i64 %qk_fetch.sroa.26.0.copyload2118, ptr addrspace(3) %add.ptr189.1.6, align 8, !dbg !91
  %add.ptr142.7 = getelementptr inbounds i8, ptr addrspace(4) %40, i64 7168, !dbg !88
  %qk_fetch.sroa.0.0.copyload2108 = load i64, ptr addrspace(4) %add.ptr142.7, align 16, !dbg !89
  %qk_fetch.sroa.26.0.add.ptr142.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %40, i64 7176, !dbg !89
  %qk_fetch.sroa.26.0.copyload2119 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr142.7.sroa_idx, align 8, !dbg !89
  %63 = or disjoint i32 %add160, %mul55
  %64 = or disjoint i32 %63, 1792
  %add178.7 = or disjoint i32 %mul65.1, %64
  %add.ptr189.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) %61, i32 %add178.7, !dbg !90
  store i64 %qk_fetch.sroa.0.0.copyload2108, ptr addrspace(3) %add.ptr189.7, align 8, !dbg !91
  %add.ptr189.1.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) %62, i32 %add178.7, !dbg !90
  store i64 %qk_fetch.sroa.26.0.copyload2119, ptr addrspace(3) %add.ptr189.1.7, align 8, !dbg !91
  fence syncscope("warp") release, !dbg !92
  tail call void @llvm.mxc.barrier.warp(), !dbg !95
  fence syncscope("warp") acquire, !dbg !96
  %mul226 = and i32 %5, 960
  %add227 = and i32 %5, 62400, !dbg !97
  %add238 = or disjoint i32 %add227, %mul103, !dbg !98
  %65 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add238, !dbg !99
  %add.ptr251 = getelementptr inbounds i8, ptr addrspace(3) %65, i32 %add.ptr117.idx, !dbg !99
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr251, align 8, !dbg !100
  %66 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %23, <4 x float> zeroinitializer), !dbg !101
  %add223.1 = and i32 %5, 62400, !dbg !97
  %add227.1 = or disjoint i32 %add223.1, 1024, !dbg !97
  %add238.1 = or disjoint i32 %add227.1, %mul103, !dbg !98
  %67 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add238.1, !dbg !99
  %add.ptr251.1 = getelementptr inbounds i8, ptr addrspace(3) %67, i32 %add.ptr117.idx, !dbg !99
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr251.1, align 8, !dbg !100
  %68 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %23, <4 x float> zeroinitializer), !dbg !101
  %add238.11040 = or disjoint i32 %add227, %mul103.1, !dbg !98
  %69 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add238.11040, !dbg !99
  %add.ptr251.11042 = getelementptr inbounds i8, ptr addrspace(3) %69, i32 %add.ptr117.idx, !dbg !99
  %k_local.sroa.0.0.copyload.11043 = load <4 x half>, ptr addrspace(3) %add.ptr251.11042, align 8, !dbg !100
  %70 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11043, <4 x half> %25, <4 x float> %66), !dbg !101
  %add238.1.1 = or disjoint i32 %add227.1, %mul103.1, !dbg !98
  %71 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add238.1.1, !dbg !99
  %add.ptr251.1.1 = getelementptr inbounds i8, ptr addrspace(3) %71, i32 %add.ptr117.idx, !dbg !99
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr251.1.1, align 8, !dbg !100
  %72 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %25, <4 x float> %68), !dbg !101
  %add238.2 = or disjoint i32 %add227, %mul103.2, !dbg !98
  %73 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add238.2, !dbg !99
  %add.ptr251.2 = getelementptr inbounds i8, ptr addrspace(3) %73, i32 %add.ptr117.idx, !dbg !99
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr251.2, align 8, !dbg !100
  %74 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %27, <4 x float> %70), !dbg !101
  %add238.1.2 = or disjoint i32 %add227.1, %mul103.2, !dbg !98
  %75 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add238.1.2, !dbg !99
  %add.ptr251.1.2 = getelementptr inbounds i8, ptr addrspace(3) %75, i32 %add.ptr117.idx, !dbg !99
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr251.1.2, align 8, !dbg !100
  %76 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %27, <4 x float> %72), !dbg !101
  %add238.3 = or disjoint i32 %add227, %mul103.3, !dbg !98
  %77 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add238.3, !dbg !99
  %add.ptr251.3 = getelementptr inbounds i8, ptr addrspace(3) %77, i32 %add.ptr117.idx, !dbg !99
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr251.3, align 8, !dbg !100
  %78 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %29, <4 x float> %74), !dbg !101
  %add238.1.3 = or disjoint i32 %add227.1, %mul103.3, !dbg !98
  %79 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add238.1.3, !dbg !99
  %add.ptr251.1.3 = getelementptr inbounds i8, ptr addrspace(3) %79, i32 %add.ptr117.idx, !dbg !99
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr251.1.3, align 8, !dbg !100
  %80 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %29, <4 x float> %76), !dbg !101
  %add221.4 = or disjoint i32 %mul44, 2048
  %add227.4 = or disjoint i32 %add221.4, %mul226, !dbg !97
  %add238.4 = or disjoint i32 %add227.4, %mul103, !dbg !98
  %81 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add238.4, !dbg !99
  %add.ptr251.4 = getelementptr inbounds i8, ptr addrspace(3) %81, i32 %add.ptr117.idx.4, !dbg !99
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %add.ptr251.4, align 8, !dbg !100
  %82 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %31, <4 x float> %78), !dbg !101
  %add227.1.4 = or i32 %5, 3072, !dbg !97
  %add238.1.4 = or disjoint i32 %add227.1.4, %mul103, !dbg !98
  %83 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add238.1.4, !dbg !99
  %add.ptr251.1.4 = getelementptr inbounds i8, ptr addrspace(3) %83, i32 %add.ptr117.idx.4, !dbg !99
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr251.1.4, align 8, !dbg !100
  %84 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %31, <4 x float> %80), !dbg !101
  %add238.5 = or disjoint i32 %add227.4, %mul103.1, !dbg !98
  %85 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add238.5, !dbg !99
  %add.ptr251.5 = getelementptr inbounds i8, ptr addrspace(3) %85, i32 %add.ptr117.idx.4, !dbg !99
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %add.ptr251.5, align 8, !dbg !100
  %86 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %33, <4 x float> %82), !dbg !101
  %add238.1.5 = or disjoint i32 %add227.1.4, %mul103.1, !dbg !98
  %87 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add238.1.5, !dbg !99
  %add.ptr251.1.5 = getelementptr inbounds i8, ptr addrspace(3) %87, i32 %add.ptr117.idx.4, !dbg !99
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr251.1.5, align 8, !dbg !100
  %88 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %33, <4 x float> %84), !dbg !101
  %add238.6 = or disjoint i32 %add227.4, %mul103.2, !dbg !98
  %89 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add238.6, !dbg !99
  %add.ptr251.6 = getelementptr inbounds i8, ptr addrspace(3) %89, i32 %add.ptr117.idx.4, !dbg !99
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %add.ptr251.6, align 8, !dbg !100
  %90 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %35, <4 x float> %86), !dbg !101
  %add238.1.6 = or disjoint i32 %add227.1.4, %mul103.2, !dbg !98
  %91 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add238.1.6, !dbg !99
  %add.ptr251.1.6 = getelementptr inbounds i8, ptr addrspace(3) %91, i32 %add.ptr117.idx.4, !dbg !99
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr251.1.6, align 8, !dbg !100
  %92 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %35, <4 x float> %88), !dbg !101
  %add238.7 = or disjoint i32 %add227.4, %mul103.3, !dbg !98
  %93 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add238.7, !dbg !99
  %add.ptr251.7 = getelementptr inbounds i8, ptr addrspace(3) %93, i32 %add.ptr117.idx.4, !dbg !99
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %add.ptr251.7, align 8, !dbg !100
  %94 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %37, <4 x float> %90), !dbg !101
  %add238.1.7 = or disjoint i32 %add227.1.4, %mul103.3, !dbg !98
  %95 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add238.1.7, !dbg !99
  %add.ptr251.1.7 = getelementptr inbounds i8, ptr addrspace(3) %95, i32 %add.ptr117.idx.4, !dbg !99
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr251.1.7, align 8, !dbg !100
  %96 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %37, <4 x float> %92), !dbg !101
  %97 = lshr i32 %2, 2
  %mul283 = and i32 %97, 12
  %add285 = or disjoint i32 %mul283, %mul10
  %cmp292.not = icmp sgt i32 %add285, %add, !dbg !102
  %scores.sroa.0.0.vec.extract = extractelement <4 x float> %94, i64 0
  %spec.select = select i1 %cmp292.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract, !dbg !103
  %cmp292.not.1.not = icmp slt i32 %add285, %add, !dbg !102
  %scores.sroa.0.4.vec.extract = extractelement <4 x float> %94, i64 1, !dbg !103
  %condval.0.1 = select i1 %cmp292.not.1.not, float %scores.sroa.0.4.vec.extract, float 0xFFF0000000000000, !dbg !103
  %add286.2 = or disjoint i32 %add285, 2, !dbg !104
  %cmp292.not.2 = icmp sgt i32 %add286.2, %add, !dbg !102
  %scores.sroa.0.8.vec.extract = extractelement <4 x float> %94, i64 2, !dbg !103
  %condval.0.2 = select i1 %cmp292.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract, !dbg !103
  %add286.3 = or disjoint i32 %add285, 3, !dbg !104
  %cmp292.not.3 = icmp sgt i32 %add286.3, %add, !dbg !102
  %scores.sroa.0.12.vec.extract = extractelement <4 x float> %94, i64 3, !dbg !103
  %condval.0.3 = select i1 %cmp292.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract, !dbg !103
  %add284.1 = or disjoint i32 %mul283, %mul10
  %add285.1 = or disjoint i32 %add284.1, 16
  %cmp292.not.11044 = icmp sgt i32 %add285.1, %add, !dbg !102
  %scores.sroa.38.16.vec.extract = extractelement <4 x float> %96, i64 0, !dbg !103
  %condval.0.11047 = select i1 %cmp292.not.11044, float 0xFFF0000000000000, float %scores.sroa.38.16.vec.extract, !dbg !103
  %add286.1.1 = or disjoint i32 %add284.1, 17, !dbg !104
  %cmp292.not.1.1 = icmp sgt i32 %add286.1.1, %add, !dbg !102
  %scores.sroa.38.20.vec.extract = extractelement <4 x float> %96, i64 1, !dbg !103
  %condval.0.1.1 = select i1 %cmp292.not.1.1, float 0xFFF0000000000000, float %scores.sroa.38.20.vec.extract, !dbg !103
  %add286.2.1 = or disjoint i32 %add284.1, 18, !dbg !104
  %cmp292.not.2.1 = icmp sgt i32 %add286.2.1, %add, !dbg !102
  %scores.sroa.38.24.vec.extract = extractelement <4 x float> %96, i64 2, !dbg !103
  %condval.0.2.1 = select i1 %cmp292.not.2.1, float 0xFFF0000000000000, float %scores.sroa.38.24.vec.extract, !dbg !103
  %add286.3.1 = or disjoint i32 %add284.1, 19, !dbg !104
  %cmp292.not.3.1 = icmp sgt i32 %add286.3.1, %add, !dbg !102
  %scores.sroa.38.28.vec.extract = extractelement <4 x float> %96, i64 3, !dbg !103
  %condval.0.3.1 = select i1 %cmp292.not.3.1, float 0xFFF0000000000000, float %scores.sroa.38.28.vec.extract, !dbg !103
  %98 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !105
  %99 = tail call contract noundef float @llvm.maxnum.f32(float %98, float %condval.0.1), !dbg !105
  %100 = tail call contract noundef float @llvm.maxnum.f32(float %99, float %condval.0.2), !dbg !105
  %101 = tail call contract noundef float @llvm.maxnum.f32(float %100, float %condval.0.3), !dbg !105
  %102 = tail call contract noundef float @llvm.maxnum.f32(float %101, float %condval.0.11047), !dbg !105
  %103 = tail call contract noundef float @llvm.maxnum.f32(float %102, float %condval.0.1.1), !dbg !105
  %104 = tail call contract noundef float @llvm.maxnum.f32(float %103, float %condval.0.2.1), !dbg !105
  %105 = tail call contract noundef float @llvm.maxnum.f32(float %104, float %condval.0.3.1), !dbg !105
  %106 = bitcast float %105 to i32, !dbg !109
  %107 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !112
  %108 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %107) #10, !dbg !117
  %xor.i.i = xor i32 %108, 32, !dbg !118
  %109 = and i32 %108, -64, !dbg !119
  %and.i.i = add nsw i32 %109, 64, !dbg !119
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !120
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %108, !dbg !121
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !122
  %110 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %106), !dbg !123
  %111 = bitcast i32 %110 to float, !dbg !124
  %112 = tail call contract noundef float @llvm.maxnum.f32(float %105, float %111), !dbg !125
  %113 = bitcast float %112 to i32, !dbg !127
  %114 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !129
  %115 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %114) #10, !dbg !132
  %xor.i.i946 = xor i32 %115, 16, !dbg !133
  %116 = and i32 %115, -64, !dbg !134
  %and.i.i947 = add nsw i32 %116, 64, !dbg !134
  %cmp.not.i.i948 = icmp slt i32 %xor.i.i946, %and.i.i947, !dbg !135
  %cond.i.i949 = select i1 %cmp.not.i.i948, i32 %xor.i.i946, i32 %115, !dbg !136
  %shl.i.i950 = shl i32 %cond.i.i949, 2, !dbg !137
  %117 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i950, i32 %113), !dbg !138
  %118 = bitcast i32 %117 to float, !dbg !139
  %119 = tail call contract noundef float @llvm.maxnum.f32(float %112, float %118), !dbg !140
  %sub = fsub contract float %spec.select, %119, !dbg !142
  %sub350 = fsub contract float %condval.0.1, %119, !dbg !143
  %sub353 = fsub contract float %condval.0.2, %119, !dbg !144
  %sub356 = fsub contract float %condval.0.3, %119, !dbg !145
  %mul361 = fmul contract float %sub, 0x3FC0527DC0000000, !dbg !146
  %mul365 = fmul contract float %sub350, 0x3FC0527DC0000000, !dbg !147
  %mul369 = fmul contract float %sub353, 0x3FC0527DC0000000, !dbg !148
  %mul373 = fmul contract float %sub356, 0x3FC0527DC0000000, !dbg !149
  %add378 = fadd contract float %mul361, 8.000000e+00, !dbg !150
  %add382 = fadd contract float %mul365, 8.000000e+00, !dbg !151
  %add386 = fadd contract float %mul369, 8.000000e+00, !dbg !152
  %add390 = fadd contract float %mul373, 8.000000e+00, !dbg !153
  %cmp.i.i = fcmp contract olt float %add378, -1.260000e+02, !dbg !154
  %cond.i.i951 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i = fadd contract float %add378, %cond.i.i951, !dbg !154
  %120 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !154
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i = fmul contract float %cond2.i.i, %120, !dbg !154
  %cmp.i.i952 = fcmp contract olt float %add382, -1.260000e+02, !dbg !157
  %cond.i.i953 = select contract i1 %cmp.i.i952, float 6.400000e+01, float 0.000000e+00, !dbg !157
  %add.i.i954 = fadd contract float %add382, %cond.i.i953, !dbg !157
  %121 = tail call contract float @llvm.exp2.f32(float %add.i.i954), !dbg !157
  %cond2.i.i955 = select contract i1 %cmp.i.i952, float 0x3BF0000000000000, float 1.000000e+00, !dbg !157
  %mul.i.i956 = fmul contract float %cond2.i.i955, %121, !dbg !157
  %cmp.i.i957 = fcmp contract olt float %add386, -1.260000e+02, !dbg !159
  %cond.i.i958 = select contract i1 %cmp.i.i957, float 6.400000e+01, float 0.000000e+00, !dbg !159
  %add.i.i959 = fadd contract float %add386, %cond.i.i958, !dbg !159
  %122 = tail call contract float @llvm.exp2.f32(float %add.i.i959), !dbg !159
  %cond2.i.i960 = select contract i1 %cmp.i.i957, float 0x3BF0000000000000, float 1.000000e+00, !dbg !159
  %mul.i.i961 = fmul contract float %cond2.i.i960, %122, !dbg !159
  %cmp.i.i962 = fcmp contract olt float %add390, -1.260000e+02, !dbg !161
  %cond.i.i963 = select contract i1 %cmp.i.i962, float 6.400000e+01, float 0.000000e+00, !dbg !161
  %add.i.i964 = fadd contract float %add390, %cond.i.i963, !dbg !161
  %123 = tail call contract float @llvm.exp2.f32(float %add.i.i964), !dbg !161
  %cond2.i.i965 = select contract i1 %cmp.i.i962, float 0x3BF0000000000000, float 1.000000e+00, !dbg !161
  %mul.i.i966 = fmul contract float %cond2.i.i965, %123, !dbg !161
  %124 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !163
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !163, !noalias !171
  %125 = fptrunc float %mul.i.i to half, !dbg !163
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %124), !dbg !163, !noalias !171
  %126 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !171
  %127 = fptrunc float %mul.i.i956 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %126), !dbg !176, !noalias !171
  %128 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !182
  %129 = fptrunc float %mul.i.i961 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %128), !dbg !178, !noalias !182
  %130 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !187, !noalias !182
  %131 = fptrunc float %mul.i.i966 to half, !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %130), !dbg !187, !noalias !182
  %132 = insertelement <4 x half> poison, half %125, i64 0, !dbg !189
  %133 = insertelement <4 x half> %132, half %127, i64 1, !dbg !189
  %134 = insertelement <4 x half> %133, half %129, i64 2, !dbg !189
  %135 = insertelement <4 x half> %134, half %131, i64 3, !dbg !189
  %sub.1 = fsub contract float %condval.0.11047, %119, !dbg !142
  %sub350.1 = fsub contract float %condval.0.1.1, %119, !dbg !143
  %sub353.1 = fsub contract float %condval.0.2.1, %119, !dbg !144
  %sub356.1 = fsub contract float %condval.0.3.1, %119, !dbg !145
  %mul361.1 = fmul contract float %sub.1, 0x3FC0527DC0000000, !dbg !146
  %mul365.1 = fmul contract float %sub350.1, 0x3FC0527DC0000000, !dbg !147
  %mul369.1 = fmul contract float %sub353.1, 0x3FC0527DC0000000, !dbg !148
  %mul373.1 = fmul contract float %sub356.1, 0x3FC0527DC0000000, !dbg !149
  %add378.1 = fadd contract float %mul361.1, 8.000000e+00, !dbg !150
  %add382.1 = fadd contract float %mul365.1, 8.000000e+00, !dbg !151
  %add386.1 = fadd contract float %mul369.1, 8.000000e+00, !dbg !152
  %add390.1 = fadd contract float %mul373.1, 8.000000e+00, !dbg !153
  %cmp.i.i.1 = fcmp contract olt float %add378.1, -1.260000e+02, !dbg !154
  %cond.i.i951.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i.1 = fadd contract float %add378.1, %cond.i.i951.1, !dbg !154
  %136 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !154
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %136, !dbg !154
  %cmp.i.i952.1 = fcmp contract olt float %add382.1, -1.260000e+02, !dbg !157
  %cond.i.i953.1 = select contract i1 %cmp.i.i952.1, float 6.400000e+01, float 0.000000e+00, !dbg !157
  %add.i.i954.1 = fadd contract float %add382.1, %cond.i.i953.1, !dbg !157
  %137 = tail call contract float @llvm.exp2.f32(float %add.i.i954.1), !dbg !157
  %cond2.i.i955.1 = select contract i1 %cmp.i.i952.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !157
  %mul.i.i956.1 = fmul contract float %cond2.i.i955.1, %137, !dbg !157
  %cmp.i.i957.1 = fcmp contract olt float %add386.1, -1.260000e+02, !dbg !159
  %cond.i.i958.1 = select contract i1 %cmp.i.i957.1, float 6.400000e+01, float 0.000000e+00, !dbg !159
  %add.i.i959.1 = fadd contract float %add386.1, %cond.i.i958.1, !dbg !159
  %138 = tail call contract float @llvm.exp2.f32(float %add.i.i959.1), !dbg !159
  %cond2.i.i960.1 = select contract i1 %cmp.i.i957.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !159
  %mul.i.i961.1 = fmul contract float %cond2.i.i960.1, %138, !dbg !159
  %cmp.i.i962.1 = fcmp contract olt float %add390.1, -1.260000e+02, !dbg !161
  %cond.i.i963.1 = select contract i1 %cmp.i.i962.1, float 6.400000e+01, float 0.000000e+00, !dbg !161
  %add.i.i964.1 = fadd contract float %add390.1, %cond.i.i963.1, !dbg !161
  %139 = tail call contract float @llvm.exp2.f32(float %add.i.i964.1), !dbg !161
  %cond2.i.i965.1 = select contract i1 %cmp.i.i962.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !161
  %mul.i.i966.1 = fmul contract float %cond2.i.i965.1, %139, !dbg !161
  %140 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !163
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !163, !noalias !171
  %141 = fptrunc float %mul.i.i.1 to half, !dbg !163
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %140), !dbg !163, !noalias !171
  %142 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !171
  %143 = fptrunc float %mul.i.i956.1 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %142), !dbg !176, !noalias !171
  %144 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !182
  %145 = fptrunc float %mul.i.i961.1 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %144), !dbg !178, !noalias !182
  %146 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !187, !noalias !182
  %147 = fptrunc float %mul.i.i966.1 to half, !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %146), !dbg !187, !noalias !182
  %148 = insertelement <4 x half> poison, half %141, i64 0, !dbg !189
  %149 = insertelement <4 x half> %148, half %143, i64 1, !dbg !189
  %150 = insertelement <4 x half> %149, half %145, i64 2, !dbg !189
  %151 = insertelement <4 x half> %150, half %147, i64 3, !dbg !189
  %conv.i.i = fpext half %125 to float, !dbg !190
  %add428 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !195
  %conv.i.i.1 = fpext half %127 to float, !dbg !190
  %add428.1 = fadd contract float %add428, %conv.i.i.1, !dbg !195
  %conv.i.i.2 = fpext half %129 to float, !dbg !190
  %add428.2 = fadd contract float %add428.1, %conv.i.i.2, !dbg !195
  %conv.i.i.3 = fpext half %131 to float, !dbg !190
  %add428.3 = fadd contract float %add428.2, %conv.i.i.3, !dbg !195
  %conv.i.i.4 = fpext half %141 to float, !dbg !190
  %add428.4 = fadd contract float %add428.3, %conv.i.i.4, !dbg !195
  %conv.i.i.5 = fpext half %143 to float, !dbg !190
  %add428.5 = fadd contract float %add428.4, %conv.i.i.5, !dbg !195
  %conv.i.i.6 = fpext half %145 to float, !dbg !190
  %add428.6 = fadd contract float %add428.5, %conv.i.i.6, !dbg !195
  %conv.i.i.7 = fpext half %147 to float, !dbg !190
  %add428.7 = fadd contract float %add428.6, %conv.i.i.7, !dbg !195
  %152 = bitcast float %add428.7 to i32, !dbg !196
  %153 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !198
  %154 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %153) #10, !dbg !201
  %xor.i.i968 = xor i32 %154, 32, !dbg !202
  %155 = and i32 %154, -64, !dbg !203
  %and.i.i969 = add nsw i32 %155, 64, !dbg !203
  %cmp.not.i.i970 = icmp slt i32 %xor.i.i968, %and.i.i969, !dbg !204
  %cond.i.i971 = select i1 %cmp.not.i.i970, i32 %xor.i.i968, i32 %154, !dbg !205
  %shl.i.i972 = shl i32 %cond.i.i971, 2, !dbg !206
  %156 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i972, i32 %152), !dbg !207
  %157 = bitcast i32 %156 to float, !dbg !208
  %add436 = fadd contract float %add428.7, %157, !dbg !209
  %158 = bitcast float %add436 to i32, !dbg !210
  %159 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !212
  %160 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %159) #10, !dbg !215
  %xor.i.i973 = xor i32 %160, 16, !dbg !216
  %161 = and i32 %160, -64, !dbg !217
  %and.i.i974 = add nsw i32 %161, 64, !dbg !217
  %cmp.not.i.i975 = icmp slt i32 %xor.i.i973, %and.i.i974, !dbg !218
  %cond.i.i976 = select i1 %cmp.not.i.i975, i32 %xor.i.i973, i32 %160, !dbg !219
  %shl.i.i977 = shl i32 %cond.i.i976, 2, !dbg !220
  %162 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i977, i32 %158), !dbg !221
  %163 = bitcast i32 %162 to float, !dbg !222
  fence syncscope("warp") release, !dbg !223
  tail call void @llvm.mxc.barrier.warp(), !dbg !226
  fence syncscope("warp") acquire, !dbg !227
  %164 = and i32 %4, 1792
  %mul465 = zext nneg i32 %164 to i64
  %add466 = or disjoint i64 %mul130, %mul465
  %165 = and i32 %and, 56
  %mul479 = zext nneg i32 %165 to i64
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %mul479
  %mul517 = and i32 %4, 224
  %shr522 = and i32 %and70, 7
  %xor526 = xor i32 %shr522, %and58
  %166 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %add466, !dbg !228
  %167 = getelementptr inbounds i8, ptr addrspace(4) %166, i64 %.idx1017, !dbg !228
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %167, align 16, !dbg !229
  %v_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 2, !dbg !229
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4, !dbg !229
  %v_fetch.sroa.14.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 6, !dbg !229
  %v_fetch.sroa.18.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 8, !dbg !229
  %v_fetch.sroa.22.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx, align 8, !dbg !229
  %v_fetch.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 10, !dbg !229
  %v_fetch.sroa.26.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 12, !dbg !229
  %v_fetch.sroa.30.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.34.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 14, !dbg !229
  %v_fetch.sroa.34.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx, align 2, !dbg !229, !tbaa !30
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 256, !dbg !228
  %v_fetch.sroa.38.16.copyload = load i16, ptr addrspace(4) %gep.1, align 16, !dbg !229
  %v_fetch.sroa.46.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 258, !dbg !229
  %v_fetch.sroa.46.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 260, !dbg !229
  %v_fetch.sroa.50.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.54.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 262, !dbg !229
  %v_fetch.sroa.54.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 264, !dbg !229
  %v_fetch.sroa.58.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.sroa_idx, align 8, !dbg !229
  %v_fetch.sroa.62.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 266, !dbg !229
  %v_fetch.sroa.62.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 268, !dbg !229
  %v_fetch.sroa.66.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.70.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 270, !dbg !229
  %v_fetch.sroa.70.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %168 = or disjoint i32 %mul44, %mul517, !dbg !230
  %169 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %168, !dbg !231
  %add.ptr531.idx = shl nuw nsw i32 %xor526, 2, !dbg !231
  %add.ptr531 = getelementptr inbounds i8, ptr addrspace(3) %169, i32 %add.ptr531.idx, !dbg !231
  %v_column.sroa.66.0.insert.ext = zext i16 %v_fetch.sroa.38.16.copyload to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift = shl nuw i32 %v_column.sroa.66.0.insert.ext, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.66.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr531, align 4, !dbg !232, !tbaa !30
  %170 = or disjoint i32 %mul44, %mul517, !dbg !230
  %171 = or disjoint i32 %170, 256, !dbg !230
  %172 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %171, !dbg !231
  %xor527.1 = shl nuw nsw i32 %xor526, 2, !dbg !231
  %add.ptr531.idx.1 = xor i32 %xor527.1, 4, !dbg !231
  %add.ptr531.1 = getelementptr inbounds i8, ptr addrspace(3) %172, i32 %add.ptr531.idx.1, !dbg !231
  %v_column.sroa.66.0.insert.ext1492 = zext i16 %v_fetch.sroa.46.16.copyload to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1493 = shl nuw i32 %v_column.sroa.66.0.insert.ext1492, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1368 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1370 = or disjoint i32 %v_column.sroa.66.0.insert.shift1493, %v_column.sroa.0.0.insert.ext1368, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1370, ptr addrspace(3) %add.ptr531.1, align 4, !dbg !232, !tbaa !30
  %173 = or disjoint i32 %mul44, %mul517, !dbg !230
  %174 = or disjoint i32 %173, 512, !dbg !230
  %175 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %174, !dbg !231
  %xor527.2 = shl nuw nsw i32 %xor526, 2, !dbg !231
  %add.ptr531.idx.2 = xor i32 %xor527.2, 8, !dbg !231
  %add.ptr531.2 = getelementptr inbounds i8, ptr addrspace(3) %175, i32 %add.ptr531.idx.2, !dbg !231
  %v_column.sroa.66.0.insert.ext1497 = zext i16 %v_fetch.sroa.50.16.copyload to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1498 = shl nuw i32 %v_column.sroa.66.0.insert.ext1497, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1372 = zext i16 %v_fetch.sroa.14.0.copyload to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1374 = or disjoint i32 %v_column.sroa.66.0.insert.shift1498, %v_column.sroa.0.0.insert.ext1372, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1374, ptr addrspace(3) %add.ptr531.2, align 4, !dbg !232, !tbaa !30
  %176 = or disjoint i32 %mul44, %mul517, !dbg !230
  %177 = or disjoint i32 %176, 768, !dbg !230
  %178 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %177, !dbg !231
  %xor527.3 = shl nuw nsw i32 %xor526, 2, !dbg !231
  %add.ptr531.idx.3 = xor i32 %xor527.3, 12, !dbg !231
  %add.ptr531.3 = getelementptr inbounds i8, ptr addrspace(3) %178, i32 %add.ptr531.idx.3, !dbg !231
  %v_column.sroa.66.0.insert.ext1502 = zext i16 %v_fetch.sroa.54.16.copyload to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1503 = shl nuw i32 %v_column.sroa.66.0.insert.ext1502, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1376 = zext i16 %v_fetch.sroa.18.0.copyload to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1378 = or disjoint i32 %v_column.sroa.66.0.insert.shift1503, %v_column.sroa.0.0.insert.ext1376, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1378, ptr addrspace(3) %add.ptr531.3, align 4, !dbg !232, !tbaa !30
  %179 = or disjoint i32 %mul44, %mul517, !dbg !230
  %180 = or disjoint i32 %179, 1024, !dbg !230
  %181 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %180, !dbg !231
  %xor527.4 = shl nuw nsw i32 %xor526, 2, !dbg !231
  %add.ptr531.idx.4 = xor i32 %xor527.4, 16, !dbg !231
  %add.ptr531.4 = getelementptr inbounds i8, ptr addrspace(3) %181, i32 %add.ptr531.idx.4, !dbg !231
  %v_column.sroa.66.0.insert.ext1507 = zext i16 %v_fetch.sroa.58.16.copyload to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1508 = shl nuw i32 %v_column.sroa.66.0.insert.ext1507, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1380 = zext i16 %v_fetch.sroa.22.0.copyload to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1382 = or disjoint i32 %v_column.sroa.66.0.insert.shift1508, %v_column.sroa.0.0.insert.ext1380, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1382, ptr addrspace(3) %add.ptr531.4, align 4, !dbg !232, !tbaa !30
  %182 = or disjoint i32 %mul44, %mul517, !dbg !230
  %183 = or disjoint i32 %182, 1280, !dbg !230
  %184 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %183, !dbg !231
  %xor527.5 = shl nuw nsw i32 %xor526, 2, !dbg !231
  %add.ptr531.idx.5 = xor i32 %xor527.5, 20, !dbg !231
  %add.ptr531.5 = getelementptr inbounds i8, ptr addrspace(3) %184, i32 %add.ptr531.idx.5, !dbg !231
  %v_column.sroa.66.0.insert.ext1512 = zext i16 %v_fetch.sroa.62.16.copyload to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1513 = shl nuw i32 %v_column.sroa.66.0.insert.ext1512, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1384 = zext i16 %v_fetch.sroa.26.0.copyload to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1386 = or disjoint i32 %v_column.sroa.66.0.insert.shift1513, %v_column.sroa.0.0.insert.ext1384, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1386, ptr addrspace(3) %add.ptr531.5, align 4, !dbg !232, !tbaa !30
  %185 = or disjoint i32 %mul44, %mul517, !dbg !230
  %186 = or disjoint i32 %185, 1536, !dbg !230
  %187 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %186, !dbg !231
  %xor527.6 = shl nuw nsw i32 %xor526, 2, !dbg !231
  %add.ptr531.idx.6 = xor i32 %xor527.6, 24, !dbg !231
  %add.ptr531.6 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 %add.ptr531.idx.6, !dbg !231
  %v_column.sroa.66.0.insert.ext1517 = zext i16 %v_fetch.sroa.66.16.copyload to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1518 = shl nuw i32 %v_column.sroa.66.0.insert.ext1517, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1388 = zext i16 %v_fetch.sroa.30.0.copyload to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1390 = or disjoint i32 %v_column.sroa.66.0.insert.shift1518, %v_column.sroa.0.0.insert.ext1388, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1390, ptr addrspace(3) %add.ptr531.6, align 4, !dbg !232, !tbaa !30
  %188 = or disjoint i32 %mul44, %mul517, !dbg !230
  %189 = or disjoint i32 %188, 1792, !dbg !230
  %190 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %189, !dbg !231
  %xor527.7 = shl nuw nsw i32 %xor526, 2, !dbg !231
  %add.ptr531.idx.7 = xor i32 %xor527.7, 28, !dbg !231
  %add.ptr531.7 = getelementptr inbounds i8, ptr addrspace(3) %190, i32 %add.ptr531.idx.7, !dbg !231
  %v_column.sroa.66.0.insert.ext1522 = zext i16 %v_fetch.sroa.70.16.copyload to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1523 = shl nuw i32 %v_column.sroa.66.0.insert.ext1522, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1392 = zext i16 %v_fetch.sroa.34.0.copyload to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1394 = or disjoint i32 %v_column.sroa.66.0.insert.shift1523, %v_column.sroa.0.0.insert.ext1392, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1394, ptr addrspace(3) %add.ptr531.7, align 4, !dbg !232, !tbaa !30
  %191 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 128, !dbg !228
  %v_fetch.sroa.0.0.copyload1649 = load i16, ptr addrspace(4) %191, align 16, !dbg !229
  %v_fetch.sroa.10.0..sroa_idx1652 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 130, !dbg !229
  %v_fetch.sroa.10.0.copyload1653 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1652, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1661 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 132, !dbg !229
  %v_fetch.sroa.14.0.copyload1662 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1661, align 4, !dbg !229
  %v_fetch.sroa.18.0..sroa_idx1670 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 134, !dbg !229
  %v_fetch.sroa.18.0.copyload1671 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1670, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1679 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 136, !dbg !229
  %v_fetch.sroa.22.0.copyload1680 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1679, align 8, !dbg !229
  %v_fetch.sroa.26.0..sroa_idx1688 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 138, !dbg !229
  %v_fetch.sroa.26.0.copyload1689 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1688, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1697 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 140, !dbg !229
  %v_fetch.sroa.30.0.copyload1698 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1697, align 4, !dbg !229
  %v_fetch.sroa.34.0..sroa_idx1706 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 142, !dbg !229
  %v_fetch.sroa.34.0.copyload1707 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1706, align 2, !dbg !229, !tbaa !30
  %gep.1.1 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 384, !dbg !228
  %v_fetch.sroa.38.16.copyload1718 = load i16, ptr addrspace(4) %gep.1.1, align 16, !dbg !229
  %v_fetch.sroa.46.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 386, !dbg !229
  %v_fetch.sroa.46.16.copyload1721 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 388, !dbg !229
  %v_fetch.sroa.50.16.copyload1727 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.1.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.54.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 390, !dbg !229
  %v_fetch.sroa.54.16.copyload1733 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 392, !dbg !229
  %v_fetch.sroa.58.16.copyload1739 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.1.sroa_idx, align 8, !dbg !229
  %v_fetch.sroa.62.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 394, !dbg !229
  %v_fetch.sroa.62.16.copyload1745 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 396, !dbg !229
  %v_fetch.sroa.66.16.copyload1751 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.1.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.70.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 398, !dbg !229
  %v_fetch.sroa.70.16.copyload1757 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %192 = or disjoint i32 %mul44, 2048
  %193 = or disjoint i32 %192, %mul517, !dbg !230
  %194 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %193, !dbg !231
  %add.ptr531.11075 = getelementptr inbounds i8, ptr addrspace(3) %194, i32 %add.ptr531.idx, !dbg !231
  %v_column.sroa.66.0.insert.ext1527 = zext i16 %v_fetch.sroa.38.16.copyload1718 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1528 = shl nuw i32 %v_column.sroa.66.0.insert.ext1527, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1396 = zext i16 %v_fetch.sroa.0.0.copyload1649 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1398 = or disjoint i32 %v_column.sroa.66.0.insert.shift1528, %v_column.sroa.0.0.insert.ext1396, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1398, ptr addrspace(3) %add.ptr531.11075, align 4, !dbg !232, !tbaa !30
  %195 = or disjoint i32 %192, %mul517, !dbg !230
  %196 = or disjoint i32 %195, 256, !dbg !230
  %197 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %196, !dbg !231
  %add.ptr531.1.1 = getelementptr inbounds i8, ptr addrspace(3) %197, i32 %add.ptr531.idx.1, !dbg !231
  %v_column.sroa.66.0.insert.ext1532 = zext i16 %v_fetch.sroa.46.16.copyload1721 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1533 = shl nuw i32 %v_column.sroa.66.0.insert.ext1532, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1400 = zext i16 %v_fetch.sroa.10.0.copyload1653 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1402 = or disjoint i32 %v_column.sroa.66.0.insert.shift1533, %v_column.sroa.0.0.insert.ext1400, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1402, ptr addrspace(3) %add.ptr531.1.1, align 4, !dbg !232, !tbaa !30
  %198 = or disjoint i32 %192, %mul517, !dbg !230
  %199 = or disjoint i32 %198, 512, !dbg !230
  %200 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %199, !dbg !231
  %add.ptr531.2.1 = getelementptr inbounds i8, ptr addrspace(3) %200, i32 %add.ptr531.idx.2, !dbg !231
  %v_column.sroa.66.0.insert.ext1537 = zext i16 %v_fetch.sroa.50.16.copyload1727 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1538 = shl nuw i32 %v_column.sroa.66.0.insert.ext1537, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1404 = zext i16 %v_fetch.sroa.14.0.copyload1662 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1406 = or disjoint i32 %v_column.sroa.66.0.insert.shift1538, %v_column.sroa.0.0.insert.ext1404, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1406, ptr addrspace(3) %add.ptr531.2.1, align 4, !dbg !232, !tbaa !30
  %201 = or disjoint i32 %192, %mul517, !dbg !230
  %202 = or disjoint i32 %201, 768, !dbg !230
  %203 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %202, !dbg !231
  %add.ptr531.3.1 = getelementptr inbounds i8, ptr addrspace(3) %203, i32 %add.ptr531.idx.3, !dbg !231
  %v_column.sroa.66.0.insert.ext1542 = zext i16 %v_fetch.sroa.54.16.copyload1733 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1543 = shl nuw i32 %v_column.sroa.66.0.insert.ext1542, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1408 = zext i16 %v_fetch.sroa.18.0.copyload1671 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1410 = or disjoint i32 %v_column.sroa.66.0.insert.shift1543, %v_column.sroa.0.0.insert.ext1408, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1410, ptr addrspace(3) %add.ptr531.3.1, align 4, !dbg !232, !tbaa !30
  %204 = or disjoint i32 %192, %mul517, !dbg !230
  %205 = or disjoint i32 %204, 1024, !dbg !230
  %206 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %205, !dbg !231
  %add.ptr531.4.1 = getelementptr inbounds i8, ptr addrspace(3) %206, i32 %add.ptr531.idx.4, !dbg !231
  %v_column.sroa.66.0.insert.ext1547 = zext i16 %v_fetch.sroa.58.16.copyload1739 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1548 = shl nuw i32 %v_column.sroa.66.0.insert.ext1547, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1412 = zext i16 %v_fetch.sroa.22.0.copyload1680 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1414 = or disjoint i32 %v_column.sroa.66.0.insert.shift1548, %v_column.sroa.0.0.insert.ext1412, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1414, ptr addrspace(3) %add.ptr531.4.1, align 4, !dbg !232, !tbaa !30
  %207 = or disjoint i32 %192, %mul517, !dbg !230
  %208 = or disjoint i32 %207, 1280, !dbg !230
  %209 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %208, !dbg !231
  %add.ptr531.5.1 = getelementptr inbounds i8, ptr addrspace(3) %209, i32 %add.ptr531.idx.5, !dbg !231
  %v_column.sroa.66.0.insert.ext1552 = zext i16 %v_fetch.sroa.62.16.copyload1745 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1553 = shl nuw i32 %v_column.sroa.66.0.insert.ext1552, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1416 = zext i16 %v_fetch.sroa.26.0.copyload1689 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1418 = or disjoint i32 %v_column.sroa.66.0.insert.shift1553, %v_column.sroa.0.0.insert.ext1416, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1418, ptr addrspace(3) %add.ptr531.5.1, align 4, !dbg !232, !tbaa !30
  %210 = or disjoint i32 %192, %mul517, !dbg !230
  %211 = or disjoint i32 %210, 1536, !dbg !230
  %212 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %211, !dbg !231
  %add.ptr531.6.1 = getelementptr inbounds i8, ptr addrspace(3) %212, i32 %add.ptr531.idx.6, !dbg !231
  %v_column.sroa.66.0.insert.ext1557 = zext i16 %v_fetch.sroa.66.16.copyload1751 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1558 = shl nuw i32 %v_column.sroa.66.0.insert.ext1557, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1420 = zext i16 %v_fetch.sroa.30.0.copyload1698 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1422 = or disjoint i32 %v_column.sroa.66.0.insert.shift1558, %v_column.sroa.0.0.insert.ext1420, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1422, ptr addrspace(3) %add.ptr531.6.1, align 4, !dbg !232, !tbaa !30
  %213 = or disjoint i32 %mul44, %mul517, !dbg !230
  %214 = or disjoint i32 %213, 3840, !dbg !230
  %215 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %214, !dbg !231
  %add.ptr531.7.1 = getelementptr inbounds i8, ptr addrspace(3) %215, i32 %add.ptr531.idx.7, !dbg !231
  %v_column.sroa.66.0.insert.ext1562 = zext i16 %v_fetch.sroa.70.16.copyload1757 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1563 = shl nuw i32 %v_column.sroa.66.0.insert.ext1562, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1424 = zext i16 %v_fetch.sroa.34.0.copyload1707 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1426 = or disjoint i32 %v_column.sroa.66.0.insert.shift1563, %v_column.sroa.0.0.insert.ext1424, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1426, ptr addrspace(3) %add.ptr531.7.1, align 4, !dbg !232, !tbaa !30
  %216 = or disjoint i32 %shr522, 8
  %xor526.1 = xor i32 %216, %and58
  %217 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4096, !dbg !228
  %v_fetch.sroa.0.0.copyload1650 = load i16, ptr addrspace(4) %217, align 16, !dbg !229
  %v_fetch.sroa.10.0..sroa_idx1654 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4098, !dbg !229
  %v_fetch.sroa.10.0.copyload1655 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1654, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1663 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4100, !dbg !229
  %v_fetch.sroa.14.0.copyload1664 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1663, align 4, !dbg !229
  %v_fetch.sroa.18.0..sroa_idx1672 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4102, !dbg !229
  %v_fetch.sroa.18.0.copyload1673 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1672, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1681 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4104, !dbg !229
  %v_fetch.sroa.22.0.copyload1682 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1681, align 8, !dbg !229
  %v_fetch.sroa.26.0..sroa_idx1690 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4106, !dbg !229
  %v_fetch.sroa.26.0.copyload1691 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1690, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1699 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4108, !dbg !229
  %v_fetch.sroa.30.0.copyload1700 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1699, align 4, !dbg !229
  %v_fetch.sroa.34.0..sroa_idx1708 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4110, !dbg !229
  %v_fetch.sroa.34.0.copyload1709 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1708, align 2, !dbg !229, !tbaa !30
  %gep.1.11082 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4352, !dbg !228
  %v_fetch.sroa.38.16.copyload1719 = load i16, ptr addrspace(4) %gep.1.11082, align 16, !dbg !229
  %v_fetch.sroa.46.16.gep.1.11082.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4354, !dbg !229
  %v_fetch.sroa.46.16.copyload1722 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.11082.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.11082.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4356, !dbg !229
  %v_fetch.sroa.50.16.copyload1728 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.11082.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.54.16.gep.1.11082.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4358, !dbg !229
  %v_fetch.sroa.54.16.copyload1734 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.11082.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.11082.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4360, !dbg !229
  %v_fetch.sroa.58.16.copyload1740 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.11082.sroa_idx, align 8, !dbg !229
  %v_fetch.sroa.62.16.gep.1.11082.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4362, !dbg !229
  %v_fetch.sroa.62.16.copyload1746 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.11082.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.11082.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4364, !dbg !229
  %v_fetch.sroa.66.16.copyload1752 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.11082.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.70.16.gep.1.11082.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4366, !dbg !229
  %v_fetch.sroa.70.16.copyload1758 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.11082.sroa_idx, align 2, !dbg !229, !tbaa !30
  %add.ptr531.idx.11088 = shl nuw nsw i32 %xor526.1, 2, !dbg !231
  %add.ptr531.11089 = getelementptr inbounds i8, ptr addrspace(3) %169, i32 %add.ptr531.idx.11088, !dbg !231
  %v_column.sroa.66.0.insert.ext1567 = zext i16 %v_fetch.sroa.38.16.copyload1719 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1568 = shl nuw i32 %v_column.sroa.66.0.insert.ext1567, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1428 = zext i16 %v_fetch.sroa.0.0.copyload1650 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1430 = or disjoint i32 %v_column.sroa.66.0.insert.shift1568, %v_column.sroa.0.0.insert.ext1428, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1430, ptr addrspace(3) %add.ptr531.11089, align 4, !dbg !232, !tbaa !30
  %xor527.1.11094 = shl nuw nsw i32 %xor526.1, 2, !dbg !231
  %add.ptr531.idx.1.11095 = xor i32 %xor527.1.11094, 4, !dbg !231
  %add.ptr531.1.11096 = getelementptr inbounds i8, ptr addrspace(3) %172, i32 %add.ptr531.idx.1.11095, !dbg !231
  %v_column.sroa.66.0.insert.ext1572 = zext i16 %v_fetch.sroa.46.16.copyload1722 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1573 = shl nuw i32 %v_column.sroa.66.0.insert.ext1572, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1432 = zext i16 %v_fetch.sroa.10.0.copyload1655 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1434 = or disjoint i32 %v_column.sroa.66.0.insert.shift1573, %v_column.sroa.0.0.insert.ext1432, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1434, ptr addrspace(3) %add.ptr531.1.11096, align 4, !dbg !232, !tbaa !30
  %xor527.2.11101 = shl nuw nsw i32 %xor526.1, 2, !dbg !231
  %add.ptr531.idx.2.11102 = xor i32 %xor527.2.11101, 8, !dbg !231
  %add.ptr531.2.11103 = getelementptr inbounds i8, ptr addrspace(3) %175, i32 %add.ptr531.idx.2.11102, !dbg !231
  %v_column.sroa.66.0.insert.ext1577 = zext i16 %v_fetch.sroa.50.16.copyload1728 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1578 = shl nuw i32 %v_column.sroa.66.0.insert.ext1577, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1436 = zext i16 %v_fetch.sroa.14.0.copyload1664 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1438 = or disjoint i32 %v_column.sroa.66.0.insert.shift1578, %v_column.sroa.0.0.insert.ext1436, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1438, ptr addrspace(3) %add.ptr531.2.11103, align 4, !dbg !232, !tbaa !30
  %xor527.3.11108 = shl nuw nsw i32 %xor526.1, 2, !dbg !231
  %add.ptr531.idx.3.11109 = xor i32 %xor527.3.11108, 12, !dbg !231
  %add.ptr531.3.11110 = getelementptr inbounds i8, ptr addrspace(3) %178, i32 %add.ptr531.idx.3.11109, !dbg !231
  %v_column.sroa.66.0.insert.ext1582 = zext i16 %v_fetch.sroa.54.16.copyload1734 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1583 = shl nuw i32 %v_column.sroa.66.0.insert.ext1582, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1440 = zext i16 %v_fetch.sroa.18.0.copyload1673 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1442 = or disjoint i32 %v_column.sroa.66.0.insert.shift1583, %v_column.sroa.0.0.insert.ext1440, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1442, ptr addrspace(3) %add.ptr531.3.11110, align 4, !dbg !232, !tbaa !30
  %xor527.4.11115 = shl nuw nsw i32 %xor526.1, 2, !dbg !231
  %add.ptr531.idx.4.11116 = xor i32 %xor527.4.11115, 16, !dbg !231
  %add.ptr531.4.11117 = getelementptr inbounds i8, ptr addrspace(3) %181, i32 %add.ptr531.idx.4.11116, !dbg !231
  %v_column.sroa.66.0.insert.ext1587 = zext i16 %v_fetch.sroa.58.16.copyload1740 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1588 = shl nuw i32 %v_column.sroa.66.0.insert.ext1587, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1444 = zext i16 %v_fetch.sroa.22.0.copyload1682 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1446 = or disjoint i32 %v_column.sroa.66.0.insert.shift1588, %v_column.sroa.0.0.insert.ext1444, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1446, ptr addrspace(3) %add.ptr531.4.11117, align 4, !dbg !232, !tbaa !30
  %xor527.5.11122 = shl nuw nsw i32 %xor526.1, 2, !dbg !231
  %add.ptr531.idx.5.11123 = xor i32 %xor527.5.11122, 20, !dbg !231
  %add.ptr531.5.11124 = getelementptr inbounds i8, ptr addrspace(3) %184, i32 %add.ptr531.idx.5.11123, !dbg !231
  %v_column.sroa.66.0.insert.ext1592 = zext i16 %v_fetch.sroa.62.16.copyload1746 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1593 = shl nuw i32 %v_column.sroa.66.0.insert.ext1592, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1448 = zext i16 %v_fetch.sroa.26.0.copyload1691 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1450 = or disjoint i32 %v_column.sroa.66.0.insert.shift1593, %v_column.sroa.0.0.insert.ext1448, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1450, ptr addrspace(3) %add.ptr531.5.11124, align 4, !dbg !232, !tbaa !30
  %xor527.6.11129 = shl nuw nsw i32 %xor526.1, 2, !dbg !231
  %add.ptr531.idx.6.11130 = xor i32 %xor527.6.11129, 24, !dbg !231
  %add.ptr531.6.11131 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 %add.ptr531.idx.6.11130, !dbg !231
  %v_column.sroa.66.0.insert.ext1597 = zext i16 %v_fetch.sroa.66.16.copyload1752 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1598 = shl nuw i32 %v_column.sroa.66.0.insert.ext1597, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1452 = zext i16 %v_fetch.sroa.30.0.copyload1700 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1454 = or disjoint i32 %v_column.sroa.66.0.insert.shift1598, %v_column.sroa.0.0.insert.ext1452, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1454, ptr addrspace(3) %add.ptr531.6.11131, align 4, !dbg !232, !tbaa !30
  %xor527.7.11136 = shl nuw nsw i32 %xor526.1, 2, !dbg !231
  %add.ptr531.idx.7.11137 = xor i32 %xor527.7.11136, 28, !dbg !231
  %add.ptr531.7.11138 = getelementptr inbounds i8, ptr addrspace(3) %190, i32 %add.ptr531.idx.7.11137, !dbg !231
  %v_column.sroa.66.0.insert.ext1602 = zext i16 %v_fetch.sroa.70.16.copyload1758 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1603 = shl nuw i32 %v_column.sroa.66.0.insert.ext1602, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1456 = zext i16 %v_fetch.sroa.34.0.copyload1709 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1458 = or disjoint i32 %v_column.sroa.66.0.insert.shift1603, %v_column.sroa.0.0.insert.ext1456, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1458, ptr addrspace(3) %add.ptr531.7.11138, align 4, !dbg !232, !tbaa !30
  %218 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4224, !dbg !228
  %v_fetch.sroa.0.0.copyload1651 = load i16, ptr addrspace(4) %218, align 16, !dbg !229
  %v_fetch.sroa.10.0..sroa_idx1656 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4226, !dbg !229
  %v_fetch.sroa.10.0.copyload1657 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1656, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1665 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4228, !dbg !229
  %v_fetch.sroa.14.0.copyload1666 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1665, align 4, !dbg !229
  %v_fetch.sroa.18.0..sroa_idx1674 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4230, !dbg !229
  %v_fetch.sroa.18.0.copyload1675 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1674, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1683 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4232, !dbg !229
  %v_fetch.sroa.22.0.copyload1684 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1683, align 8, !dbg !229
  %v_fetch.sroa.26.0..sroa_idx1692 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4234, !dbg !229
  %v_fetch.sroa.26.0.copyload1693 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1692, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1701 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4236, !dbg !229
  %v_fetch.sroa.30.0.copyload1702 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1701, align 4, !dbg !229
  %v_fetch.sroa.34.0..sroa_idx1710 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4238, !dbg !229
  %v_fetch.sroa.34.0.copyload1711 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1710, align 2, !dbg !229, !tbaa !30
  %gep.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4480, !dbg !228
  %v_fetch.sroa.38.16.copyload1720 = load i16, ptr addrspace(4) %gep.1.1.1, align 16, !dbg !229
  %v_fetch.sroa.46.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4482, !dbg !229
  %v_fetch.sroa.46.16.copyload1723 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4484, !dbg !229
  %v_fetch.sroa.50.16.copyload1729 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.1.1.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.54.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4486, !dbg !229
  %v_fetch.sroa.54.16.copyload1735 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4488, !dbg !229
  %v_fetch.sroa.58.16.copyload1741 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.1.1.sroa_idx, align 8, !dbg !229
  %v_fetch.sroa.62.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4490, !dbg !229
  %v_fetch.sroa.62.16.copyload1747 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4492, !dbg !229
  %v_fetch.sroa.66.16.copyload1753 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.1.1.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.70.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %167, i64 4494, !dbg !229
  %v_fetch.sroa.70.16.copyload1759 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %add.ptr531.11075.1 = getelementptr inbounds i8, ptr addrspace(3) %194, i32 %add.ptr531.idx.11088, !dbg !231
  %v_column.sroa.66.0.insert.ext1607 = zext i16 %v_fetch.sroa.38.16.copyload1720 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1608 = shl nuw i32 %v_column.sroa.66.0.insert.ext1607, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1460 = zext i16 %v_fetch.sroa.0.0.copyload1651 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1462 = or disjoint i32 %v_column.sroa.66.0.insert.shift1608, %v_column.sroa.0.0.insert.ext1460, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1462, ptr addrspace(3) %add.ptr531.11075.1, align 4, !dbg !232, !tbaa !30
  %add.ptr531.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %197, i32 %add.ptr531.idx.1.11095, !dbg !231
  %v_column.sroa.66.0.insert.ext1612 = zext i16 %v_fetch.sroa.46.16.copyload1723 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1613 = shl nuw i32 %v_column.sroa.66.0.insert.ext1612, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1464 = zext i16 %v_fetch.sroa.10.0.copyload1657 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1466 = or disjoint i32 %v_column.sroa.66.0.insert.shift1613, %v_column.sroa.0.0.insert.ext1464, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1466, ptr addrspace(3) %add.ptr531.1.1.1, align 4, !dbg !232, !tbaa !30
  %add.ptr531.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %200, i32 %add.ptr531.idx.2.11102, !dbg !231
  %v_column.sroa.66.0.insert.ext1617 = zext i16 %v_fetch.sroa.50.16.copyload1729 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1618 = shl nuw i32 %v_column.sroa.66.0.insert.ext1617, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1468 = zext i16 %v_fetch.sroa.14.0.copyload1666 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1470 = or disjoint i32 %v_column.sroa.66.0.insert.shift1618, %v_column.sroa.0.0.insert.ext1468, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1470, ptr addrspace(3) %add.ptr531.2.1.1, align 4, !dbg !232, !tbaa !30
  %add.ptr531.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %203, i32 %add.ptr531.idx.3.11109, !dbg !231
  %v_column.sroa.66.0.insert.ext1622 = zext i16 %v_fetch.sroa.54.16.copyload1735 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1623 = shl nuw i32 %v_column.sroa.66.0.insert.ext1622, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1472 = zext i16 %v_fetch.sroa.18.0.copyload1675 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1474 = or disjoint i32 %v_column.sroa.66.0.insert.shift1623, %v_column.sroa.0.0.insert.ext1472, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1474, ptr addrspace(3) %add.ptr531.3.1.1, align 4, !dbg !232, !tbaa !30
  %add.ptr531.4.1.1 = getelementptr inbounds i8, ptr addrspace(3) %206, i32 %add.ptr531.idx.4.11116, !dbg !231
  %v_column.sroa.66.0.insert.ext1627 = zext i16 %v_fetch.sroa.58.16.copyload1741 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1628 = shl nuw i32 %v_column.sroa.66.0.insert.ext1627, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1476 = zext i16 %v_fetch.sroa.22.0.copyload1684 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1478 = or disjoint i32 %v_column.sroa.66.0.insert.shift1628, %v_column.sroa.0.0.insert.ext1476, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1478, ptr addrspace(3) %add.ptr531.4.1.1, align 4, !dbg !232, !tbaa !30
  %add.ptr531.5.1.1 = getelementptr inbounds i8, ptr addrspace(3) %209, i32 %add.ptr531.idx.5.11123, !dbg !231
  %v_column.sroa.66.0.insert.ext1632 = zext i16 %v_fetch.sroa.62.16.copyload1747 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1633 = shl nuw i32 %v_column.sroa.66.0.insert.ext1632, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1480 = zext i16 %v_fetch.sroa.26.0.copyload1693 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1482 = or disjoint i32 %v_column.sroa.66.0.insert.shift1633, %v_column.sroa.0.0.insert.ext1480, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1482, ptr addrspace(3) %add.ptr531.5.1.1, align 4, !dbg !232, !tbaa !30
  %add.ptr531.6.1.1 = getelementptr inbounds i8, ptr addrspace(3) %212, i32 %add.ptr531.idx.6.11130, !dbg !231
  %v_column.sroa.66.0.insert.ext1637 = zext i16 %v_fetch.sroa.66.16.copyload1753 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1638 = shl nuw i32 %v_column.sroa.66.0.insert.ext1637, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1484 = zext i16 %v_fetch.sroa.30.0.copyload1702 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1486 = or disjoint i32 %v_column.sroa.66.0.insert.shift1638, %v_column.sroa.0.0.insert.ext1484, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1486, ptr addrspace(3) %add.ptr531.6.1.1, align 4, !dbg !232, !tbaa !30
  %add.ptr531.7.1.1 = getelementptr inbounds i8, ptr addrspace(3) %215, i32 %add.ptr531.idx.7.11137, !dbg !231
  %v_column.sroa.66.0.insert.ext1642 = zext i16 %v_fetch.sroa.70.16.copyload1759 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1643 = shl nuw i32 %v_column.sroa.66.0.insert.ext1642, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1488 = zext i16 %v_fetch.sroa.34.0.copyload1711 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1490 = or disjoint i32 %v_column.sroa.66.0.insert.shift1643, %v_column.sroa.0.0.insert.ext1488, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1490, ptr addrspace(3) %add.ptr531.7.1.1, align 4, !dbg !232, !tbaa !30
  fence syncscope("warp") release, !dbg !233
  tail call void @llvm.mxc.barrier.warp(), !dbg !236
  fence syncscope("warp") acquire, !dbg !237
  %mul577 = and i32 %38, 1792
  %mul584 = and i32 %7, 32
  %mul590 = and i32 %and70, 6
  %add578 = or disjoint i32 %mul44, %mul577
  %add585 = or disjoint i32 %add578, %mul584
  %xor598 = xor i32 %shr71, %and58
  %219 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add585
  %xor601 = xor i32 %xor598, %mul590, !dbg !238
  %add.ptr605.idx = shl nuw nsw i32 %xor601, 2, !dbg !239
  %add.ptr605 = getelementptr inbounds i8, ptr addrspace(3) %219, i32 %add.ptr605.idx, !dbg !239
  %220 = load i32, ptr addrspace(3) %add.ptr605, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.0.0.vec.insert = insertelement <2 x i32> poison, i32 %220, i64 0, !dbg !240
  %add592.1 = or disjoint i32 %mul590, 1, !dbg !241
  %xor601.1 = xor i32 %xor598, %add592.1, !dbg !238
  %add.ptr605.idx.1 = shl nuw nsw i32 %xor601.1, 2, !dbg !239
  %add.ptr605.1 = getelementptr inbounds i8, ptr addrspace(3) %219, i32 %add.ptr605.idx.1, !dbg !239
  %221 = load i32, ptr addrspace(3) %add.ptr605.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.0.4.vec.insert = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert, i32 %221, i64 1, !dbg !240
  %add580.1 = or disjoint i32 %add578, %mul584
  %add585.1 = or disjoint i32 %add580.1, 64
  %add597.1 = or disjoint i32 %shr71, 2
  %xor598.1 = xor i32 %add597.1, %and58
  %222 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add585.1
  %xor601.11140 = xor i32 %xor598.1, %mul590, !dbg !238
  %add.ptr605.idx.11141 = shl nuw nsw i32 %xor601.11140, 2, !dbg !239
  %add.ptr605.11142 = getelementptr inbounds i8, ptr addrspace(3) %222, i32 %add.ptr605.idx.11141, !dbg !239
  %223 = load i32, ptr addrspace(3) %add.ptr605.11142, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.14.8.vec.insert = insertelement <2 x i32> poison, i32 %223, i64 0, !dbg !240
  %xor601.1.1 = xor i32 %xor598.1, %add592.1, !dbg !238
  %add.ptr605.idx.1.1 = shl nuw nsw i32 %xor601.1.1, 2, !dbg !239
  %add.ptr605.1.1 = getelementptr inbounds i8, ptr addrspace(3) %222, i32 %add.ptr605.idx.1.1, !dbg !239
  %224 = load i32, ptr addrspace(3) %add.ptr605.1.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.14.12.vec.insert = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert, i32 %224, i64 1, !dbg !240
  %add580.2 = or disjoint i32 %add578, %mul584
  %add585.2 = or disjoint i32 %add580.2, 128
  %add597.2 = or disjoint i32 %shr71, 4
  %xor598.2 = xor i32 %add597.2, %and58
  %225 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add585.2
  %xor601.2 = xor i32 %xor598.2, %mul590, !dbg !238
  %add.ptr605.idx.2 = shl nuw nsw i32 %xor601.2, 2, !dbg !239
  %add.ptr605.2 = getelementptr inbounds i8, ptr addrspace(3) %225, i32 %add.ptr605.idx.2, !dbg !239
  %226 = load i32, ptr addrspace(3) %add.ptr605.2, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.26.16.vec.insert = insertelement <2 x i32> poison, i32 %226, i64 0, !dbg !240
  %xor601.1.2 = xor i32 %xor598.2, %add592.1, !dbg !238
  %add.ptr605.idx.1.2 = shl nuw nsw i32 %xor601.1.2, 2, !dbg !239
  %add.ptr605.1.2 = getelementptr inbounds i8, ptr addrspace(3) %225, i32 %add.ptr605.idx.1.2, !dbg !239
  %227 = load i32, ptr addrspace(3) %add.ptr605.1.2, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.26.20.vec.insert = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert, i32 %227, i64 1, !dbg !240
  %add580.3 = or disjoint i32 %add578, %mul584
  %add585.3 = or disjoint i32 %add580.3, 192
  %add597.3 = or disjoint i32 %shr71, 6
  %xor598.3 = xor i32 %add597.3, %and58
  %228 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add585.3
  %xor601.3 = xor i32 %xor598.3, %mul590, !dbg !238
  %add.ptr605.idx.3 = shl nuw nsw i32 %xor601.3, 2, !dbg !239
  %add.ptr605.3 = getelementptr inbounds i8, ptr addrspace(3) %228, i32 %add.ptr605.idx.3, !dbg !239
  %229 = load i32, ptr addrspace(3) %add.ptr605.3, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.38.24.vec.insert = insertelement <2 x i32> poison, i32 %229, i64 0, !dbg !240
  %xor601.1.3 = xor i32 %xor598.3, %add592.1, !dbg !238
  %add.ptr605.idx.1.3 = shl nuw nsw i32 %xor601.1.3, 2, !dbg !239
  %add.ptr605.1.3 = getelementptr inbounds i8, ptr addrspace(3) %228, i32 %add.ptr605.idx.1.3, !dbg !239
  %230 = load i32, ptr addrspace(3) %add.ptr605.1.3, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.38.28.vec.insert = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert, i32 %230, i64 1, !dbg !240
  %231 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert to <4 x half>, !dbg !242
  %232 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %231, <4 x half> %135, <4 x float> zeroinitializer), !dbg !243
  %233 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert to <4 x half>, !dbg !242
  %234 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %233, <4 x half> %135, <4 x float> zeroinitializer), !dbg !243
  %235 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert to <4 x half>, !dbg !242
  %236 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %235, <4 x half> %135, <4 x float> zeroinitializer), !dbg !243
  %237 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert to <4 x half>, !dbg !242
  %238 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %237, <4 x half> %135, <4 x float> zeroinitializer), !dbg !243
  %add578.1 = or disjoint i32 %add221.4, %mul577
  %add585.11145 = or disjoint i32 %add578.1, %mul584
  %239 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add585.11145
  %add.ptr605.11149 = getelementptr inbounds i8, ptr addrspace(3) %239, i32 %add.ptr605.idx, !dbg !239
  %240 = load i32, ptr addrspace(3) %add.ptr605.11149, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1308 = insertelement <2 x i32> poison, i32 %240, i64 0, !dbg !240
  %add.ptr605.1.11153 = getelementptr inbounds i8, ptr addrspace(3) %239, i32 %add.ptr605.idx.1, !dbg !239
  %241 = load i32, ptr addrspace(3) %add.ptr605.1.11153, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1314 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1308, i32 %241, i64 1, !dbg !240
  %add580.1.1 = or disjoint i32 %add578.1, %mul584
  %add585.1.1 = or disjoint i32 %add580.1.1, 64
  %242 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add585.1.1
  %add.ptr605.11142.1 = getelementptr inbounds i8, ptr addrspace(3) %242, i32 %add.ptr605.idx.11141, !dbg !239
  %243 = load i32, ptr addrspace(3) %add.ptr605.11142.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1324 = insertelement <2 x i32> poison, i32 %243, i64 0, !dbg !240
  %add.ptr605.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %242, i32 %add.ptr605.idx.1.1, !dbg !239
  %244 = load i32, ptr addrspace(3) %add.ptr605.1.1.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1330 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1324, i32 %244, i64 1, !dbg !240
  %add580.2.1 = or disjoint i32 %add578.1, %mul584
  %add585.2.1 = or disjoint i32 %add580.2.1, 128
  %245 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add585.2.1
  %add.ptr605.2.1 = getelementptr inbounds i8, ptr addrspace(3) %245, i32 %add.ptr605.idx.2, !dbg !239
  %246 = load i32, ptr addrspace(3) %add.ptr605.2.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1340 = insertelement <2 x i32> poison, i32 %246, i64 0, !dbg !240
  %add.ptr605.1.2.1 = getelementptr inbounds i8, ptr addrspace(3) %245, i32 %add.ptr605.idx.1.2, !dbg !239
  %247 = load i32, ptr addrspace(3) %add.ptr605.1.2.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1346 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1340, i32 %247, i64 1, !dbg !240
  %add580.3.1 = or disjoint i32 %add578.1, %mul584
  %add585.3.1 = or disjoint i32 %add580.3.1, 192
  %248 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add585.3.1
  %add.ptr605.3.1 = getelementptr inbounds i8, ptr addrspace(3) %248, i32 %add.ptr605.idx.3, !dbg !239
  %249 = load i32, ptr addrspace(3) %add.ptr605.3.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1356 = insertelement <2 x i32> poison, i32 %249, i64 0, !dbg !240
  %add.ptr605.1.3.1 = getelementptr inbounds i8, ptr addrspace(3) %248, i32 %add.ptr605.idx.1.3, !dbg !239
  %250 = load i32, ptr addrspace(3) %add.ptr605.1.3.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1362 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1356, i32 %250, i64 1, !dbg !240
  %251 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1314 to <4 x half>, !dbg !242
  %252 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %251, <4 x half> %135, <4 x float> zeroinitializer), !dbg !243
  %253 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1330 to <4 x half>, !dbg !242
  %254 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %253, <4 x half> %135, <4 x float> zeroinitializer), !dbg !243
  %255 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1346 to <4 x half>, !dbg !242
  %256 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %255, <4 x half> %135, <4 x float> zeroinitializer), !dbg !243
  %257 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1362 to <4 x half>, !dbg !242
  %258 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %257, <4 x half> %135, <4 x float> zeroinitializer), !dbg !243
  %add591.1 = or disjoint i32 %mul590, 8
  %xor601.11161 = xor i32 %xor598, %add591.1, !dbg !238
  %add.ptr605.idx.11162 = shl nuw nsw i32 %xor601.11161, 2, !dbg !239
  %add.ptr605.11163 = getelementptr inbounds i8, ptr addrspace(3) %219, i32 %add.ptr605.idx.11162, !dbg !239
  %259 = load i32, ptr addrspace(3) %add.ptr605.11163, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1310 = insertelement <2 x i32> poison, i32 %259, i64 0, !dbg !240
  %add592.1.11164 = or disjoint i32 %mul590, 9, !dbg !241
  %xor601.1.11165 = xor i32 %xor598, %add592.1.11164, !dbg !238
  %add.ptr605.idx.1.11166 = shl nuw nsw i32 %xor601.1.11165, 2, !dbg !239
  %add.ptr605.1.11167 = getelementptr inbounds i8, ptr addrspace(3) %219, i32 %add.ptr605.idx.1.11166, !dbg !239
  %260 = load i32, ptr addrspace(3) %add.ptr605.1.11167, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1316 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1310, i32 %260, i64 1, !dbg !240
  %xor601.11140.11173 = xor i32 %xor598.1, %add591.1, !dbg !238
  %add.ptr605.idx.11141.11174 = shl nuw nsw i32 %xor601.11140.11173, 2, !dbg !239
  %add.ptr605.11142.11175 = getelementptr inbounds i8, ptr addrspace(3) %222, i32 %add.ptr605.idx.11141.11174, !dbg !239
  %261 = load i32, ptr addrspace(3) %add.ptr605.11142.11175, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1326 = insertelement <2 x i32> poison, i32 %261, i64 0, !dbg !240
  %xor601.1.1.11178 = xor i32 %xor598.1, %add592.1.11164, !dbg !238
  %add.ptr605.idx.1.1.11179 = shl nuw nsw i32 %xor601.1.1.11178, 2, !dbg !239
  %add.ptr605.1.1.11180 = getelementptr inbounds i8, ptr addrspace(3) %222, i32 %add.ptr605.idx.1.1.11179, !dbg !239
  %262 = load i32, ptr addrspace(3) %add.ptr605.1.1.11180, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1332 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1326, i32 %262, i64 1, !dbg !240
  %xor601.2.11187 = xor i32 %xor598.2, %add591.1, !dbg !238
  %add.ptr605.idx.2.11188 = shl nuw nsw i32 %xor601.2.11187, 2, !dbg !239
  %add.ptr605.2.11189 = getelementptr inbounds i8, ptr addrspace(3) %225, i32 %add.ptr605.idx.2.11188, !dbg !239
  %263 = load i32, ptr addrspace(3) %add.ptr605.2.11189, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1342 = insertelement <2 x i32> poison, i32 %263, i64 0, !dbg !240
  %xor601.1.2.11192 = xor i32 %xor598.2, %add592.1.11164, !dbg !238
  %add.ptr605.idx.1.2.11193 = shl nuw nsw i32 %xor601.1.2.11192, 2, !dbg !239
  %add.ptr605.1.2.11194 = getelementptr inbounds i8, ptr addrspace(3) %225, i32 %add.ptr605.idx.1.2.11193, !dbg !239
  %264 = load i32, ptr addrspace(3) %add.ptr605.1.2.11194, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1348 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1342, i32 %264, i64 1, !dbg !240
  %xor601.3.11201 = xor i32 %xor598.3, %add591.1, !dbg !238
  %add.ptr605.idx.3.11202 = shl nuw nsw i32 %xor601.3.11201, 2, !dbg !239
  %add.ptr605.3.11203 = getelementptr inbounds i8, ptr addrspace(3) %228, i32 %add.ptr605.idx.3.11202, !dbg !239
  %265 = load i32, ptr addrspace(3) %add.ptr605.3.11203, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1358 = insertelement <2 x i32> poison, i32 %265, i64 0, !dbg !240
  %xor601.1.3.11206 = xor i32 %xor598.3, %add592.1.11164, !dbg !238
  %add.ptr605.idx.1.3.11207 = shl nuw nsw i32 %xor601.1.3.11206, 2, !dbg !239
  %add.ptr605.1.3.11208 = getelementptr inbounds i8, ptr addrspace(3) %228, i32 %add.ptr605.idx.1.3.11207, !dbg !239
  %266 = load i32, ptr addrspace(3) %add.ptr605.1.3.11208, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1364 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1358, i32 %266, i64 1, !dbg !240
  %267 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1316 to <4 x half>, !dbg !242
  %268 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %267, <4 x half> %151, <4 x float> %232), !dbg !243
  %269 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1332 to <4 x half>, !dbg !242
  %270 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %269, <4 x half> %151, <4 x float> %234), !dbg !243
  %271 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1348 to <4 x half>, !dbg !242
  %272 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %271, <4 x half> %151, <4 x float> %236), !dbg !243
  %273 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1364 to <4 x half>, !dbg !242
  %274 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %273, <4 x half> %151, <4 x float> %238), !dbg !243
  %add.ptr605.11149.1 = getelementptr inbounds i8, ptr addrspace(3) %239, i32 %add.ptr605.idx.11162, !dbg !239
  %275 = load i32, ptr addrspace(3) %add.ptr605.11149.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1312 = insertelement <2 x i32> poison, i32 %275, i64 0, !dbg !240
  %add.ptr605.1.11153.1 = getelementptr inbounds i8, ptr addrspace(3) %239, i32 %add.ptr605.idx.1.11166, !dbg !239
  %276 = load i32, ptr addrspace(3) %add.ptr605.1.11153.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1318 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1312, i32 %276, i64 1, !dbg !240
  %add.ptr605.11142.1.1 = getelementptr inbounds i8, ptr addrspace(3) %242, i32 %add.ptr605.idx.11141.11174, !dbg !239
  %277 = load i32, ptr addrspace(3) %add.ptr605.11142.1.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1328 = insertelement <2 x i32> poison, i32 %277, i64 0, !dbg !240
  %add.ptr605.1.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %242, i32 %add.ptr605.idx.1.1.11179, !dbg !239
  %278 = load i32, ptr addrspace(3) %add.ptr605.1.1.1.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1334 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1328, i32 %278, i64 1, !dbg !240
  %add.ptr605.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %245, i32 %add.ptr605.idx.2.11188, !dbg !239
  %279 = load i32, ptr addrspace(3) %add.ptr605.2.1.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1344 = insertelement <2 x i32> poison, i32 %279, i64 0, !dbg !240
  %add.ptr605.1.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %245, i32 %add.ptr605.idx.1.2.11193, !dbg !239
  %280 = load i32, ptr addrspace(3) %add.ptr605.1.2.1.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1350 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1344, i32 %280, i64 1, !dbg !240
  %add.ptr605.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %248, i32 %add.ptr605.idx.3.11202, !dbg !239
  %281 = load i32, ptr addrspace(3) %add.ptr605.3.1.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1360 = insertelement <2 x i32> poison, i32 %281, i64 0, !dbg !240
  %add.ptr605.1.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %248, i32 %add.ptr605.idx.1.3.11207, !dbg !239
  %282 = load i32, ptr addrspace(3) %add.ptr605.1.3.1.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1366 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1360, i32 %282, i64 1, !dbg !240
  %283 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1318 to <4 x half>, !dbg !242
  %284 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %283, <4 x half> %151, <4 x float> %252), !dbg !243
  %285 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1334 to <4 x half>, !dbg !242
  %286 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %285, <4 x half> %151, <4 x float> %254), !dbg !243
  %287 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1350 to <4 x half>, !dbg !242
  %288 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %287, <4 x half> %151, <4 x float> %256), !dbg !243
  %289 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1366 to <4 x half>, !dbg !242
  %290 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %289, <4 x half> %151, <4 x float> %258), !dbg !243
  %add441 = fadd contract float %add436, %163, !dbg !244
  br label %if.end661, !dbg !245

if.else647:                                       ; preds = %entry
  %.pre = shl nuw nsw i32 %2, 6
  %.pre2131 = and i32 %.pre, 62400
  %.pre2133 = lshr i32 %2, 5
  %.pre2134 = and i32 %.pre2133, 1
  %.pre2135 = and i32 %2, 7
  %.pre2136 = lshr i32 %2, 4
  %.pre2137 = lshr i32 %2, 3
  %.pre2138 = xor i32 %.pre2136, %.pre2137
  %.pre2139 = and i32 %.pre2138, 1
  %.pre2140 = xor i32 %.pre2134, %.pre2135, !dbg !246
  %.pre2141 = shl nuw nsw i32 %.pre2140, 3, !dbg !247
  %.pre2142 = or disjoint i32 %.pre2141, %.pre2131, !dbg !248
  %.pre2143 = shl nuw nsw i32 %.pre2139, 3, !dbg !249
  %.pre2144 = or disjoint i32 %.pre2134, 2, !dbg !250
  %.pre2145 = xor i32 %.pre2144, %.pre2135, !dbg !246
  %.pre2146 = shl nuw nsw i32 %.pre2145, 3, !dbg !247
  %.pre2147 = or disjoint i32 %.pre2146, %.pre2131, !dbg !248
  %.pre2148 = or disjoint i32 %.pre2134, 4, !dbg !250
  %.pre2149 = xor i32 %.pre2148, %.pre2135, !dbg !246
  %.pre2150 = shl nuw nsw i32 %.pre2149, 3, !dbg !247
  %.pre2151 = or disjoint i32 %.pre2150, %.pre2131, !dbg !248
  %.pre2152 = or disjoint i32 %.pre2134, 6, !dbg !250
  %.pre2153 = xor i32 %.pre2152, %.pre2135, !dbg !246
  %.pre2154 = shl nuw nsw i32 %.pre2153, 3, !dbg !247
  %.pre2155 = or disjoint i32 %.pre2154, %.pre2131, !dbg !248
  %.pre2156 = or disjoint i32 %.pre2131, 1024, !dbg !251
  %.pre2157 = or disjoint i32 %.pre2141, %.pre2156, !dbg !248
  %.pre2158 = shl nuw nsw i32 %.pre2139, 3, !dbg !249
  %.pre2159 = xor i32 %.pre2158, 8, !dbg !249
  %.pre2160 = or disjoint i32 %.pre2146, %.pre2156, !dbg !248
  %.pre2161 = or disjoint i32 %.pre2150, %.pre2156, !dbg !248
  %.pre2162 = or disjoint i32 %.pre2154, %.pre2156, !dbg !248
  %.pre2163 = and i32 %.pre, 61440
  %.pre2164 = shl nuw nsw i32 %2, 7
  %.pre2166 = and i32 %.pre2164, 1024
  %.pre2167 = or disjoint i32 %.pre2163, %.pre2166
  %.pre2168 = shl nuw nsw i32 %2, 2
  %.pre2170 = and i32 %.pre2168, 192
  %.pre2171 = and i32 %.pre2136, 3
  %.pre2172 = and i32 %.pre2137, 1
  %.pre2173 = shl nsw i32 %0, 21
  %.pre2174 = shl nsw i32 %1, 12
  %.pre2175 = add nuw nsw i32 %.pre2173, %.pre2174
  %.pre2176 = shl nuw nsw i32 %2, 5
  %.pre2178 = and i32 %.pre2176, 30720
  %.pre2179 = add nuw nsw i32 %.pre2175, %.pre2178
  %.pre2180 = shl nuw nsw i32 %2, 3
  %.pre2181 = and i32 %.pre2180, 504
  %.pre2182 = or disjoint i32 %.pre2179, %.pre2181
  %.pre2187 = zext nneg i32 %.pre2182 to i64, !dbg !252
  %.pre2189 = or disjoint i32 %.pre2167, %.pre2170
  %.pre2191 = xor i32 %.pre2171, %.pre2135
  %.pre2192 = shl nuw nsw i32 %.pre2191, 3
  %.pre2195 = or disjoint i32 %.pre2192, %.pre2189
  %.pre2196 = shl nuw nsw i32 %.pre2172, 3, !dbg !253
  %.pre2197 = shl nuw nsw i32 %.pre2172, 3, !dbg !253
  %.pre2198 = xor i32 %.pre2197, 8, !dbg !253
  %.pre2199 = or disjoint i32 %.pre2167, %.pre2170
  %.pre2201 = or disjoint i32 %.pre2199, 256
  %.pre2203 = or disjoint i32 %.pre2171, 4
  %.pre2204 = xor i32 %.pre2203, %.pre2135
  %.pre2205 = shl nuw nsw i32 %.pre2204, 3
  %.pre2208 = or disjoint i32 %.pre2205, %.pre2201
  %.pre2209 = or disjoint i64 %.pre2187, 512, !dbg !254
  %.pre2211 = or disjoint i32 %.pre2167, %.pre2170
  %.pre2213 = or disjoint i32 %.pre2211, 512
  %.pre2217 = or disjoint i32 %.pre2192, %.pre2213
  %.pre2218 = or disjoint i64 %.pre2187, 1024, !dbg !254
  %291 = or disjoint i32 %.pre2167, %.pre2170
  %.pre22222229 = or disjoint i32 %291, 768
  %.pre2226 = or disjoint i32 %.pre2205, %.pre22222229
  %.pre2227 = or disjoint i64 %.pre2187, 1536, !dbg !254
  br label %if.end661, !dbg !245

if.end661:                                        ; preds = %for.cond.preheader, %if.else647
  %.pre-phi2228 = phi i64 [ %18, %for.cond.preheader ], [ %.pre2227, %if.else647 ], !dbg !254
  %add764.3.pre-phi = phi i32 [ %add66.3, %for.cond.preheader ], [ %.pre2226, %if.else647 ]
  %.pre-phi2219 = phi i64 [ %15, %for.cond.preheader ], [ %.pre2218, %if.else647 ], !dbg !254
  %add764.2.pre-phi = phi i32 [ %add66.2, %for.cond.preheader ], [ %.pre2217, %if.else647 ]
  %.pre-phi2210 = phi i64 [ %12, %for.cond.preheader ], [ %.pre2209, %if.else647 ], !dbg !254
  %add764.1.pre-phi = phi i32 [ %add66.1, %for.cond.preheader ], [ %.pre2208, %if.else647 ]
  %.idx1021.1.pre-phi = phi i32 [ %.idx.1, %for.cond.preheader ], [ %.pre2198, %if.else647 ], !dbg !253
  %.idx1021.pre-phi = phi i32 [ %.idx, %for.cond.preheader ], [ %.pre2196, %if.else647 ], !dbg !253
  %add764.pre-phi = phi i32 [ %add66, %for.cond.preheader ], [ %.pre2195, %if.else647 ]
  %.pre-phi2188 = phi i64 [ %8, %for.cond.preheader ], [ %.pre2187, %if.else647 ], !dbg !252
  %add714.7.pre-phi = phi i32 [ %add104.7, %for.cond.preheader ], [ %.pre2162, %if.else647 ], !dbg !248
  %add714.6.pre-phi = phi i32 [ %add104.6, %for.cond.preheader ], [ %.pre2161, %if.else647 ], !dbg !248
  %add714.5.pre-phi = phi i32 [ %add104.5, %for.cond.preheader ], [ %.pre2160, %if.else647 ], !dbg !248
  %add.ptr727.idx.4.pre-phi = phi i32 [ %add.ptr117.idx.4, %for.cond.preheader ], [ %.pre2159, %if.else647 ], !dbg !249
  %add714.4.pre-phi = phi i32 [ %add104.4, %for.cond.preheader ], [ %.pre2157, %if.else647 ], !dbg !248
  %add714.3.pre-phi = phi i32 [ %add104.3, %for.cond.preheader ], [ %.pre2155, %if.else647 ], !dbg !248
  %add714.2.pre-phi = phi i32 [ %add104.2, %for.cond.preheader ], [ %.pre2151, %if.else647 ], !dbg !248
  %add714.1.pre-phi = phi i32 [ %add104.1, %for.cond.preheader ], [ %.pre2147, %if.else647 ], !dbg !248
  %add.ptr727.idx.pre-phi = phi i32 [ %add.ptr117.idx, %for.cond.preheader ], [ %.pre2143, %if.else647 ], !dbg !249
  %add714.pre-phi = phi i32 [ %add104, %for.cond.preheader ], [ %.pre2142, %if.else647 ], !dbg !248
  %numerator.sroa.170.0 = phi <4 x float> [ %290, %for.cond.preheader ], [ zeroinitializer, %if.else647 ], !dbg !255
  %numerator.sroa.146.0 = phi <4 x float> [ %288, %for.cond.preheader ], [ zeroinitializer, %if.else647 ], !dbg !255
  %numerator.sroa.122.0 = phi <4 x float> [ %286, %for.cond.preheader ], [ zeroinitializer, %if.else647 ], !dbg !255
  %numerator.sroa.98.0 = phi <4 x float> [ %284, %for.cond.preheader ], [ zeroinitializer, %if.else647 ], !dbg !255
  %numerator.sroa.74.0 = phi <4 x float> [ %274, %for.cond.preheader ], [ zeroinitializer, %if.else647 ], !dbg !255
  %numerator.sroa.50.0 = phi <4 x float> [ %272, %for.cond.preheader ], [ zeroinitializer, %if.else647 ], !dbg !255
  %numerator.sroa.26.0 = phi <4 x float> [ %270, %for.cond.preheader ], [ zeroinitializer, %if.else647 ], !dbg !255
  %numerator.sroa.0.0 = phi <4 x float> [ %268, %for.cond.preheader ], [ zeroinitializer, %if.else647 ], !dbg !255
  %denominator.sroa.0.1 = phi float [ %add441, %for.cond.preheader ], [ 0.000000e+00, %if.else647 ], !dbg !255
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !256
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !256
  %div.1 = fdiv contract float %numerator.sroa.0.4.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !256
  %div.2 = fdiv contract float %numerator.sroa.0.8.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !256
  %div.3 = fdiv contract float %numerator.sroa.0.12.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.26.16.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 0, !dbg !256
  %div.4 = fdiv contract float %numerator.sroa.26.16.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.26.20.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 1, !dbg !256
  %div.5 = fdiv contract float %numerator.sroa.26.20.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.26.24.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 2, !dbg !256
  %div.6 = fdiv contract float %numerator.sroa.26.24.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.26.28.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 3, !dbg !256
  %div.7 = fdiv contract float %numerator.sroa.26.28.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.50.32.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 0, !dbg !256
  %div.8 = fdiv contract float %numerator.sroa.50.32.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.50.36.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 1, !dbg !256
  %div.9 = fdiv contract float %numerator.sroa.50.36.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.50.40.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 2, !dbg !256
  %div.10 = fdiv contract float %numerator.sroa.50.40.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.50.44.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 3, !dbg !256
  %div.11 = fdiv contract float %numerator.sroa.50.44.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.74.48.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 0, !dbg !256
  %div.12 = fdiv contract float %numerator.sroa.74.48.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.74.52.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 1, !dbg !256
  %div.13 = fdiv contract float %numerator.sroa.74.52.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.74.56.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 2, !dbg !256
  %div.14 = fdiv contract float %numerator.sroa.74.56.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.74.60.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 3, !dbg !256
  %div.15 = fdiv contract float %numerator.sroa.74.60.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.98.64.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 0, !dbg !256
  %div.16 = fdiv contract float %numerator.sroa.98.64.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.98.68.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 1, !dbg !256
  %div.17 = fdiv contract float %numerator.sroa.98.68.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.98.72.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 2, !dbg !256
  %div.18 = fdiv contract float %numerator.sroa.98.72.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.98.76.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 3, !dbg !256
  %div.19 = fdiv contract float %numerator.sroa.98.76.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.122.80.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 0, !dbg !256
  %div.20 = fdiv contract float %numerator.sroa.122.80.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.122.84.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 1, !dbg !256
  %div.21 = fdiv contract float %numerator.sroa.122.84.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.122.88.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 2, !dbg !256
  %div.22 = fdiv contract float %numerator.sroa.122.88.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.122.92.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 3, !dbg !256
  %div.23 = fdiv contract float %numerator.sroa.122.92.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.146.96.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 0, !dbg !256
  %div.24 = fdiv contract float %numerator.sroa.146.96.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.146.100.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 1, !dbg !256
  %div.25 = fdiv contract float %numerator.sroa.146.100.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.146.104.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 2, !dbg !256
  %div.26 = fdiv contract float %numerator.sroa.146.104.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.146.108.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 3, !dbg !256
  %div.27 = fdiv contract float %numerator.sroa.146.108.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.170.112.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 0, !dbg !256
  %div.28 = fdiv contract float %numerator.sroa.170.112.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.170.116.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 1, !dbg !256
  %div.29 = fdiv contract float %numerator.sroa.170.116.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.170.120.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 2, !dbg !256
  %div.30 = fdiv contract float %numerator.sroa.170.120.vec.extract, %denominator.sroa.0.1, !dbg !257
  %numerator.sroa.170.124.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 3, !dbg !256
  %div.31 = fdiv contract float %numerator.sroa.170.124.vec.extract, %denominator.sroa.0.1, !dbg !257
  fence syncscope("warp") release, !dbg !258
  tail call void @llvm.mxc.barrier.warp(), !dbg !261
  fence syncscope("warp") acquire, !dbg !262
  %conv.i.i978 = fptrunc float %div to half, !dbg !263
  %conv.i.i978.1 = fptrunc float %div.1 to half, !dbg !263
  %conv.i.i978.2 = fptrunc float %div.2 to half, !dbg !263
  %conv.i.i978.3 = fptrunc float %div.3 to half, !dbg !263
  %292 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add714.pre-phi, !dbg !249
  %add.ptr727 = getelementptr inbounds i8, ptr addrspace(3) %292, i32 %add.ptr727.idx.pre-phi, !dbg !249
  store half %conv.i.i978, ptr addrspace(3) %add.ptr727, align 8, !dbg !268
  %add.ptr727.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727, i32 2, !dbg !268
  store half %conv.i.i978.1, ptr addrspace(3) %add.ptr727.sroa_idx, align 2, !dbg !268
  %add.ptr727.sroa_idx1238 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727, i32 4, !dbg !268
  store half %conv.i.i978.2, ptr addrspace(3) %add.ptr727.sroa_idx1238, align 4, !dbg !268
  %add.ptr727.sroa_idx1239 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727, i32 6, !dbg !268
  store half %conv.i.i978.3, ptr addrspace(3) %add.ptr727.sroa_idx1239, align 2, !dbg !268
  %conv.i.i978.11216 = fptrunc float %div.4 to half, !dbg !263
  %conv.i.i978.1.1 = fptrunc float %div.5 to half, !dbg !263
  %conv.i.i978.2.1 = fptrunc float %div.6 to half, !dbg !263
  %conv.i.i978.3.1 = fptrunc float %div.7 to half, !dbg !263
  %293 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add714.1.pre-phi, !dbg !249
  %add.ptr727.1 = getelementptr inbounds i8, ptr addrspace(3) %293, i32 %add.ptr727.idx.pre-phi, !dbg !249
  store half %conv.i.i978.11216, ptr addrspace(3) %add.ptr727.1, align 8, !dbg !268
  %add.ptr727.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727.1, i32 2, !dbg !268
  store half %conv.i.i978.1.1, ptr addrspace(3) %add.ptr727.1.sroa_idx, align 2, !dbg !268
  %add.ptr727.1.sroa_idx1243 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727.1, i32 4, !dbg !268
  store half %conv.i.i978.2.1, ptr addrspace(3) %add.ptr727.1.sroa_idx1243, align 4, !dbg !268
  %add.ptr727.1.sroa_idx1244 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727.1, i32 6, !dbg !268
  store half %conv.i.i978.3.1, ptr addrspace(3) %add.ptr727.1.sroa_idx1244, align 2, !dbg !268
  %conv.i.i978.21218 = fptrunc float %div.8 to half, !dbg !263
  %conv.i.i978.1.2 = fptrunc float %div.9 to half, !dbg !263
  %conv.i.i978.2.2 = fptrunc float %div.10 to half, !dbg !263
  %conv.i.i978.3.2 = fptrunc float %div.11 to half, !dbg !263
  %294 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add714.2.pre-phi, !dbg !249
  %add.ptr727.2 = getelementptr inbounds i8, ptr addrspace(3) %294, i32 %add.ptr727.idx.pre-phi, !dbg !249
  store half %conv.i.i978.21218, ptr addrspace(3) %add.ptr727.2, align 8, !dbg !268
  %add.ptr727.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727.2, i32 2, !dbg !268
  store half %conv.i.i978.1.2, ptr addrspace(3) %add.ptr727.2.sroa_idx, align 2, !dbg !268
  %add.ptr727.2.sroa_idx1248 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727.2, i32 4, !dbg !268
  store half %conv.i.i978.2.2, ptr addrspace(3) %add.ptr727.2.sroa_idx1248, align 4, !dbg !268
  %add.ptr727.2.sroa_idx1249 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727.2, i32 6, !dbg !268
  store half %conv.i.i978.3.2, ptr addrspace(3) %add.ptr727.2.sroa_idx1249, align 2, !dbg !268
  %conv.i.i978.31220 = fptrunc float %div.12 to half, !dbg !263
  %conv.i.i978.1.3 = fptrunc float %div.13 to half, !dbg !263
  %conv.i.i978.2.3 = fptrunc float %div.14 to half, !dbg !263
  %conv.i.i978.3.3 = fptrunc float %div.15 to half, !dbg !263
  %295 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add714.3.pre-phi, !dbg !249
  %add.ptr727.3 = getelementptr inbounds i8, ptr addrspace(3) %295, i32 %add.ptr727.idx.pre-phi, !dbg !249
  store half %conv.i.i978.31220, ptr addrspace(3) %add.ptr727.3, align 8, !dbg !268
  %add.ptr727.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727.3, i32 2, !dbg !268
  store half %conv.i.i978.1.3, ptr addrspace(3) %add.ptr727.3.sroa_idx, align 2, !dbg !268
  %add.ptr727.3.sroa_idx1253 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727.3, i32 4, !dbg !268
  store half %conv.i.i978.2.3, ptr addrspace(3) %add.ptr727.3.sroa_idx1253, align 4, !dbg !268
  %add.ptr727.3.sroa_idx1254 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727.3, i32 6, !dbg !268
  store half %conv.i.i978.3.3, ptr addrspace(3) %add.ptr727.3.sroa_idx1254, align 2, !dbg !268
  %conv.i.i978.4 = fptrunc float %div.16 to half, !dbg !263
  %conv.i.i978.1.4 = fptrunc float %div.17 to half, !dbg !263
  %conv.i.i978.2.4 = fptrunc float %div.18 to half, !dbg !263
  %conv.i.i978.3.4 = fptrunc float %div.19 to half, !dbg !263
  %296 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add714.4.pre-phi, !dbg !249
  %add.ptr727.4 = getelementptr inbounds i8, ptr addrspace(3) %296, i32 %add.ptr727.idx.4.pre-phi, !dbg !249
  store half %conv.i.i978.4, ptr addrspace(3) %add.ptr727.4, align 8, !dbg !268
  %add.ptr727.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727.4, i32 2, !dbg !268
  store half %conv.i.i978.1.4, ptr addrspace(3) %add.ptr727.4.sroa_idx, align 2, !dbg !268
  %add.ptr727.4.sroa_idx1258 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727.4, i32 4, !dbg !268
  store half %conv.i.i978.2.4, ptr addrspace(3) %add.ptr727.4.sroa_idx1258, align 4, !dbg !268
  %add.ptr727.4.sroa_idx1259 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727.4, i32 6, !dbg !268
  store half %conv.i.i978.3.4, ptr addrspace(3) %add.ptr727.4.sroa_idx1259, align 2, !dbg !268
  %conv.i.i978.5 = fptrunc float %div.20 to half, !dbg !263
  %conv.i.i978.1.5 = fptrunc float %div.21 to half, !dbg !263
  %conv.i.i978.2.5 = fptrunc float %div.22 to half, !dbg !263
  %conv.i.i978.3.5 = fptrunc float %div.23 to half, !dbg !263
  %297 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add714.5.pre-phi, !dbg !249
  %add.ptr727.5 = getelementptr inbounds i8, ptr addrspace(3) %297, i32 %add.ptr727.idx.4.pre-phi, !dbg !249
  store half %conv.i.i978.5, ptr addrspace(3) %add.ptr727.5, align 8, !dbg !268
  %add.ptr727.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727.5, i32 2, !dbg !268
  store half %conv.i.i978.1.5, ptr addrspace(3) %add.ptr727.5.sroa_idx, align 2, !dbg !268
  %add.ptr727.5.sroa_idx1263 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727.5, i32 4, !dbg !268
  store half %conv.i.i978.2.5, ptr addrspace(3) %add.ptr727.5.sroa_idx1263, align 4, !dbg !268
  %add.ptr727.5.sroa_idx1264 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727.5, i32 6, !dbg !268
  store half %conv.i.i978.3.5, ptr addrspace(3) %add.ptr727.5.sroa_idx1264, align 2, !dbg !268
  %conv.i.i978.6 = fptrunc float %div.24 to half, !dbg !263
  %conv.i.i978.1.6 = fptrunc float %div.25 to half, !dbg !263
  %conv.i.i978.2.6 = fptrunc float %div.26 to half, !dbg !263
  %conv.i.i978.3.6 = fptrunc float %div.27 to half, !dbg !263
  %298 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add714.6.pre-phi, !dbg !249
  %add.ptr727.6 = getelementptr inbounds i8, ptr addrspace(3) %298, i32 %add.ptr727.idx.4.pre-phi, !dbg !249
  store half %conv.i.i978.6, ptr addrspace(3) %add.ptr727.6, align 8, !dbg !268
  %add.ptr727.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727.6, i32 2, !dbg !268
  store half %conv.i.i978.1.6, ptr addrspace(3) %add.ptr727.6.sroa_idx, align 2, !dbg !268
  %add.ptr727.6.sroa_idx1268 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727.6, i32 4, !dbg !268
  store half %conv.i.i978.2.6, ptr addrspace(3) %add.ptr727.6.sroa_idx1268, align 4, !dbg !268
  %add.ptr727.6.sroa_idx1269 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727.6, i32 6, !dbg !268
  store half %conv.i.i978.3.6, ptr addrspace(3) %add.ptr727.6.sroa_idx1269, align 2, !dbg !268
  %conv.i.i978.7 = fptrunc float %div.28 to half, !dbg !263
  %conv.i.i978.1.7 = fptrunc float %div.29 to half, !dbg !263
  %conv.i.i978.2.7 = fptrunc float %div.30 to half, !dbg !263
  %conv.i.i978.3.7 = fptrunc float %div.31 to half, !dbg !263
  %299 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add714.7.pre-phi, !dbg !249
  %add.ptr727.7 = getelementptr inbounds i8, ptr addrspace(3) %299, i32 %add.ptr727.idx.4.pre-phi, !dbg !249
  store half %conv.i.i978.7, ptr addrspace(3) %add.ptr727.7, align 8, !dbg !268
  %add.ptr727.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727.7, i32 2, !dbg !268
  store half %conv.i.i978.1.7, ptr addrspace(3) %add.ptr727.7.sroa_idx, align 2, !dbg !268
  %add.ptr727.7.sroa_idx1273 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727.7, i32 4, !dbg !268
  store half %conv.i.i978.2.7, ptr addrspace(3) %add.ptr727.7.sroa_idx1273, align 4, !dbg !268
  %add.ptr727.7.sroa_idx1274 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr727.7, i32 6, !dbg !268
  store half %conv.i.i978.3.7, ptr addrspace(3) %add.ptr727.7.sroa_idx1274, align 2, !dbg !268
  fence syncscope("warp") release, !dbg !269
  tail call void @llvm.mxc.barrier.warp(), !dbg !272
  fence syncscope("warp") acquire, !dbg !273
  %300 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %.idx1021.pre-phi, !dbg !253
  %add.ptr774 = getelementptr inbounds %struct.__half, ptr addrspace(3) %300, i32 %add764.pre-phi, !dbg !253
  %301 = load i64, ptr addrspace(3) %add.ptr774, align 8, !dbg !274
  %302 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %.idx1021.1.pre-phi, !dbg !253
  %add.ptr774.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %302, i32 %add764.pre-phi, !dbg !253
  %303 = load i64, ptr addrspace(3) %add.ptr774.1, align 8, !dbg !274
  %add.ptr800 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2188, !dbg !275
  store i64 %301, ptr addrspace(1) %add.ptr800, align 16, !dbg !276
  %output_fetch.sroa.10.0.add.ptr800.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr800, i64 8, !dbg !276
  store i64 %303, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr800.sroa_idx, align 8, !dbg !276
  %add.ptr774.11229 = getelementptr inbounds %struct.__half, ptr addrspace(3) %300, i32 %add764.1.pre-phi, !dbg !253
  %304 = load i64, ptr addrspace(3) %add.ptr774.11229, align 8, !dbg !274
  %add.ptr774.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %302, i32 %add764.1.pre-phi, !dbg !253
  %305 = load i64, ptr addrspace(3) %add.ptr774.1.1, align 8, !dbg !274
  %add.ptr800.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2210, !dbg !275
  store i64 %304, ptr addrspace(1) %add.ptr800.1, align 16, !dbg !276
  %output_fetch.sroa.10.0.add.ptr800.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr800.1, i64 8, !dbg !276
  store i64 %305, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr800.1.sroa_idx, align 8, !dbg !276
  %add.ptr774.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) %302, i32 %add764.2.pre-phi, !dbg !253
  %306 = load i64, ptr addrspace(3) %add.ptr774.2, align 8, !dbg !274
  %add.ptr774.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) %300, i32 %add764.2.pre-phi, !dbg !253
  %307 = load i64, ptr addrspace(3) %add.ptr774.1.2, align 8, !dbg !274
  %add.ptr800.2 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2219, !dbg !275
  store i64 %306, ptr addrspace(1) %add.ptr800.2, align 16, !dbg !276
  %output_fetch.sroa.10.0.add.ptr800.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr800.2, i64 8, !dbg !276
  store i64 %307, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr800.2.sroa_idx, align 8, !dbg !276
  %add.ptr774.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) %302, i32 %add764.3.pre-phi, !dbg !253
  %308 = load i64, ptr addrspace(3) %add.ptr774.3, align 8, !dbg !274
  %add.ptr774.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) %300, i32 %add764.3.pre-phi, !dbg !253
  %309 = load i64, ptr addrspace(3) %add.ptr774.1.3, align 8, !dbg !274
  %add.ptr800.3 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2228, !dbg !275
  store i64 %308, ptr addrspace(1) %add.ptr800.3, align 16, !dbg !276
  %output_fetch.sroa.10.0.add.ptr800.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr800.3, i64 8, !dbg !276
  store i64 %309, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr800.3.sroa_idx, align 8, !dbg !276
  ret void, !dbg !277
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v072_codex_power_s1_two_query_waves_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v072_codex_power_s1_two_query_waves_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
!42 = !DILocation(line: 78, column: 3, scope: !43, inlinedAt: !45)
!43 = distinct !DISubprogram(name: "__fetch_builtin_y", scope: !44, file: !44, line: 78, type: !7, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!44 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_builtin_vars.h", directory: "")
!45 = distinct !DILocation(line: 25, column: 39, scope: !40)
!46 = !DILocation(line: 25, column: 51, scope: !40)
!47 = !DILocation(line: 77, column: 3, scope: !48, inlinedAt: !49)
!48 = distinct !DISubprogram(name: "__fetch_builtin_x", scope: !44, file: !44, line: 77, type: !7, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!49 = distinct !DILocation(line: 25, column: 68, scope: !40)
!50 = !DILocation(line: 25, column: 80, scope: !40)
!51 = !DILocation(line: 67, column: 3, scope: !52, inlinedAt: !53)
!52 = distinct !DISubprogram(name: "__fetch_builtin_x", scope: !44, file: !44, line: 67, type: !7, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!53 = distinct !DILocation(line: 25, column: 95, scope: !40)
!54 = !{i32 0, i32 1024}
!55 = !DILocation(line: 25, column: 108, scope: !40)
!56 = !DILocation(line: 25, column: 59, scope: !40)
!57 = !DILocation(line: 25, column: 86, scope: !40)
!58 = !DILocation(line: 25, column: 22, scope: !40)
!59 = !DILocation(line: 25, column: 116, scope: !40)
!60 = !DILocation(line: 27, column: 10, scope: !40)
!61 = !DILocation(line: 27, column: 26, scope: !40)
!62 = !DILocation(line: 29, column: 5, scope: !40)
!63 = !DILocation(line: 30, column: 45, scope: !40)
!64 = !DILocation(line: 30, column: 31, scope: !40)
!65 = !DILocation(line: 33, column: 26, scope: !40)
!66 = !DILocation(line: 33, column: 332, scope: !40)
!67 = !DILocation(line: 30, column: 165, scope: !40)
!68 = !DILocation(line: 68, column: 3, scope: !69, inlinedAt: !71)
!69 = distinct !DISubprogram(name: "__barrier_warp", scope: !70, file: !70, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!70 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!71 = distinct !DILocation(line: 192, column: 3, scope: !72, inlinedAt: !73)
!72 = distinct !DISubprogram(name: "__syncwarp", scope: !70, file: !70, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!73 = distinct !DILocation(line: 36, column: 5, scope: !40)
!74 = !DILocation(line: 69, column: 3, scope: !69, inlinedAt: !71)
!75 = !DILocation(line: 70, column: 3, scope: !69, inlinedAt: !71)
!76 = !DILocation(line: 38, column: 220, scope: !40)
!77 = !DILocation(line: 38, column: 248, scope: !40)
!78 = !DILocation(line: 38, column: 161, scope: !40)
!79 = !DILocation(line: 38, column: 59, scope: !40)
!80 = !DILocation(line: 38, column: 40, scope: !40)
!81 = !DILocation(line: 38, column: 184, scope: !40)
!82 = !DILocation(line: 38, column: 125, scope: !40)
!83 = !DILocation(line: 68, column: 3, scope: !69, inlinedAt: !84)
!84 = distinct !DILocation(line: 192, column: 3, scope: !72, inlinedAt: !85)
!85 = distinct !DILocation(line: 40, column: 5, scope: !40)
!86 = !DILocation(line: 69, column: 3, scope: !69, inlinedAt: !84)
!87 = !DILocation(line: 70, column: 3, scope: !69, inlinedAt: !84)
!88 = !DILocation(line: 43, column: 45, scope: !40)
!89 = !DILocation(line: 43, column: 31, scope: !40)
!90 = !DILocation(line: 46, column: 26, scope: !40)
!91 = !DILocation(line: 46, column: 346, scope: !40)
!92 = !DILocation(line: 68, column: 3, scope: !69, inlinedAt: !93)
!93 = distinct !DILocation(line: 192, column: 3, scope: !72, inlinedAt: !94)
!94 = distinct !DILocation(line: 49, column: 5, scope: !40)
!95 = !DILocation(line: 69, column: 3, scope: !69, inlinedAt: !93)
!96 = !DILocation(line: 70, column: 3, scope: !69, inlinedAt: !93)
!97 = !DILocation(line: 58, column: 141, scope: !40)
!98 = !DILocation(line: 58, column: 177, scope: !40)
!99 = !DILocation(line: 58, column: 51, scope: !40)
!100 = !DILocation(line: 58, column: 32, scope: !40)
!101 = !DILocation(line: 60, column: 44, scope: !40)
!102 = !DILocation(line: 71, column: 103, scope: !40)
!103 = !DILocation(line: 71, column: 13, scope: !40)
!104 = !DILocation(line: 71, column: 92, scope: !40)
!105 = !DILocation(line: 351, column: 10, scope: !106, inlinedAt: !108)
!106 = distinct !DISubprogram(name: "max", scope: !107, file: !107, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!107 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!108 = distinct !DILocation(line: 82, column: 20, scope: !40)
!109 = !DILocation(line: 1018, column: 9, scope: !110, inlinedAt: !111)
!110 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !70, file: !70, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!111 = distinct !DILocation(line: 84, column: 34, scope: !40)
!112 = !DILocation(line: 171, column: 37, scope: !113, inlinedAt: !114)
!113 = distinct !DISubprogram(name: "__lane_id", scope: !70, file: !70, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!114 = distinct !DILocation(line: 990, column: 14, scope: !115, inlinedAt: !116)
!115 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !70, file: !70, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
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
!126 = distinct !DILocation(line: 84, column: 18, scope: !40)
!127 = !DILocation(line: 1018, column: 9, scope: !110, inlinedAt: !128)
!128 = distinct !DILocation(line: 85, column: 34, scope: !40)
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
!141 = distinct !DILocation(line: 85, column: 18, scope: !40)
!142 = !DILocation(line: 97, column: 26, scope: !40)
!143 = !DILocation(line: 98, column: 26, scope: !40)
!144 = !DILocation(line: 99, column: 26, scope: !40)
!145 = !DILocation(line: 100, column: 26, scope: !40)
!146 = !DILocation(line: 102, column: 25, scope: !40)
!147 = !DILocation(line: 103, column: 25, scope: !40)
!148 = !DILocation(line: 104, column: 25, scope: !40)
!149 = !DILocation(line: 105, column: 25, scope: !40)
!150 = !DILocation(line: 107, column: 23, scope: !40)
!151 = !DILocation(line: 108, column: 23, scope: !40)
!152 = !DILocation(line: 109, column: 23, scope: !40)
!153 = !DILocation(line: 110, column: 23, scope: !40)
!154 = !DILocation(line: 285, column: 49, scope: !155, inlinedAt: !156)
!155 = distinct !DISubprogram(name: "exp2f", scope: !107, file: !107, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!156 = distinct !DILocation(line: 111, column: 15, scope: !40)
!157 = !DILocation(line: 285, column: 49, scope: !155, inlinedAt: !158)
!158 = distinct !DILocation(line: 112, column: 15, scope: !40)
!159 = !DILocation(line: 285, column: 49, scope: !155, inlinedAt: !160)
!160 = distinct !DILocation(line: 113, column: 15, scope: !40)
!161 = !DILocation(line: 285, column: 49, scope: !155, inlinedAt: !162)
!162 = distinct !DILocation(line: 114, column: 15, scope: !40)
!163 = !DILocation(line: 1007, column: 10, scope: !164, inlinedAt: !166)
!164 = distinct !DISubprogram(name: "__float2half_rn", scope: !165, file: !165, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!165 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!166 = distinct !DILocation(line: 1077, column: 18, scope: !167, inlinedAt: !168)
!167 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !165, file: !165, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!168 = distinct !DILocation(line: 1295, column: 23, scope: !169, inlinedAt: !170)
!169 = distinct !DISubprogram(name: "__float22half2_rn", scope: !165, file: !165, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!170 = distinct !DILocation(line: 115, column: 29, scope: !40)
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
!181 = distinct !DILocation(line: 116, column: 29, scope: !40)
!182 = !{!183, !185}
!183 = distinct !{!183, !184, !"_ZL17__floats2half2_rnff: %agg.result"}
!184 = distinct !{!184, !"_ZL17__floats2half2_rnff"}
!185 = distinct !{!185, !186, !"_ZL17__float22half2_rn6float2: %agg.result"}
!186 = distinct !{!186, !"_ZL17__float22half2_rn6float2"}
!187 = !DILocation(line: 1007, column: 10, scope: !164, inlinedAt: !188)
!188 = distinct !DILocation(line: 1077, column: 38, scope: !167, inlinedAt: !180)
!189 = !DILocation(line: 117, column: 51, scope: !40)
!190 = !DILocation(line: 1082, column: 16, scope: !191, inlinedAt: !192)
!191 = distinct !DISubprogram(name: "__half2float", scope: !165, file: !165, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!192 = distinct !DILocation(line: 136, column: 55, scope: !193, inlinedAt: !194)
!193 = distinct !DISubprogram(name: "operator float", scope: !165, file: !165, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!194 = distinct !DILocation(line: 121, column: 50, scope: !40)
!195 = !DILocation(line: 121, column: 40, scope: !40)
!196 = !DILocation(line: 1018, column: 9, scope: !110, inlinedAt: !197)
!197 = distinct !DILocation(line: 123, column: 40, scope: !40)
!198 = !DILocation(line: 171, column: 37, scope: !113, inlinedAt: !199)
!199 = distinct !DILocation(line: 990, column: 14, scope: !115, inlinedAt: !200)
!200 = distinct !DILocation(line: 1019, column: 11, scope: !110, inlinedAt: !197)
!201 = !DILocation(line: 171, column: 10, scope: !113, inlinedAt: !199)
!202 = !DILocation(line: 991, column: 20, scope: !115, inlinedAt: !200)
!203 = !DILocation(line: 992, column: 36, scope: !115, inlinedAt: !200)
!204 = !DILocation(line: 992, column: 17, scope: !115, inlinedAt: !200)
!205 = !DILocation(line: 992, column: 11, scope: !115, inlinedAt: !200)
!206 = !DILocation(line: 993, column: 43, scope: !115, inlinedAt: !200)
!207 = !DILocation(line: 993, column: 10, scope: !115, inlinedAt: !200)
!208 = !DILocation(line: 1020, column: 14, scope: !110, inlinedAt: !197)
!209 = !DILocation(line: 123, column: 38, scope: !40)
!210 = !DILocation(line: 1018, column: 9, scope: !110, inlinedAt: !211)
!211 = distinct !DILocation(line: 124, column: 40, scope: !40)
!212 = !DILocation(line: 171, column: 37, scope: !113, inlinedAt: !213)
!213 = distinct !DILocation(line: 990, column: 14, scope: !115, inlinedAt: !214)
!214 = distinct !DILocation(line: 1019, column: 11, scope: !110, inlinedAt: !211)
!215 = !DILocation(line: 171, column: 10, scope: !113, inlinedAt: !213)
!216 = !DILocation(line: 991, column: 20, scope: !115, inlinedAt: !214)
!217 = !DILocation(line: 992, column: 36, scope: !115, inlinedAt: !214)
!218 = !DILocation(line: 992, column: 17, scope: !115, inlinedAt: !214)
!219 = !DILocation(line: 992, column: 11, scope: !115, inlinedAt: !214)
!220 = !DILocation(line: 993, column: 43, scope: !115, inlinedAt: !214)
!221 = !DILocation(line: 993, column: 10, scope: !115, inlinedAt: !214)
!222 = !DILocation(line: 1020, column: 14, scope: !110, inlinedAt: !211)
!223 = !DILocation(line: 68, column: 3, scope: !69, inlinedAt: !224)
!224 = distinct !DILocation(line: 192, column: 3, scope: !72, inlinedAt: !225)
!225 = distinct !DILocation(line: 125, column: 5, scope: !40)
!226 = !DILocation(line: 69, column: 3, scope: !69, inlinedAt: !224)
!227 = !DILocation(line: 70, column: 3, scope: !69, inlinedAt: !224)
!228 = !DILocation(line: 132, column: 56, scope: !40)
!229 = !DILocation(line: 132, column: 42, scope: !40)
!230 = !DILocation(line: 139, column: 102, scope: !40)
!231 = !DILocation(line: 139, column: 28, scope: !40)
!232 = !DILocation(line: 139, column: 238, scope: !40)
!233 = !DILocation(line: 68, column: 3, scope: !69, inlinedAt: !234)
!234 = distinct !DILocation(line: 192, column: 3, scope: !72, inlinedAt: !235)
!235 = distinct !DILocation(line: 143, column: 5, scope: !40)
!236 = !DILocation(line: 69, column: 3, scope: !69, inlinedAt: !234)
!237 = !DILocation(line: 70, column: 3, scope: !69, inlinedAt: !234)
!238 = !DILocation(line: 157, column: 371, scope: !40)
!239 = !DILocation(line: 157, column: 84, scope: !40)
!240 = !DILocation(line: 157, column: 65, scope: !40)
!241 = !DILocation(line: 157, column: 309, scope: !40)
!242 = !DILocation(line: 163, column: 94, scope: !40)
!243 = !DILocation(line: 163, column: 64, scope: !40)
!244 = !DILocation(line: 124, column: 38, scope: !40)
!245 = !DILocation(line: 178, column: 3, scope: !40)
!246 = !DILocation(line: 187, column: 187, scope: !40)
!247 = !DILocation(line: 187, column: 215, scope: !40)
!248 = !DILocation(line: 187, column: 126, scope: !40)
!249 = !DILocation(line: 187, column: 22, scope: !40)
!250 = !DILocation(line: 187, column: 151, scope: !40)
!251 = !DILocation(line: 187, column: 90, scope: !40)
!252 = !DILocation(line: 191, column: 3, scope: !40)
!253 = !DILocation(line: 194, column: 65, scope: !40)
!254 = !DILocation(line: 196, column: 144, scope: !40)
!255 = !DILocation(line: 0, scope: !40)
!256 = !DILocation(line: 179, column: 23, scope: !40)
!257 = !DILocation(line: 179, column: 38, scope: !40)
!258 = !DILocation(line: 68, column: 3, scope: !69, inlinedAt: !259)
!259 = distinct !DILocation(line: 192, column: 3, scope: !72, inlinedAt: !260)
!260 = distinct !DILocation(line: 181, column: 3, scope: !40)
!261 = !DILocation(line: 69, column: 3, scope: !69, inlinedAt: !259)
!262 = !DILocation(line: 70, column: 3, scope: !69, inlinedAt: !259)
!263 = !DILocation(line: 984, column: 21, scope: !264, inlinedAt: !265)
!264 = distinct !DISubprogram(name: "__float2half", scope: !165, file: !165, line: 979, type: !7, scopeLine: 979, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!265 = distinct !DILocation(line: 133, column: 53, scope: !266, inlinedAt: !267)
!266 = distinct !DISubprogram(name: "__half", scope: !165, file: !165, line: 133, type: !7, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!267 = distinct !DILocation(line: 185, column: 39, scope: !40)
!268 = !DILocation(line: 187, column: 320, scope: !40)
!269 = !DILocation(line: 68, column: 3, scope: !69, inlinedAt: !270)
!270 = distinct !DILocation(line: 192, column: 3, scope: !72, inlinedAt: !271)
!271 = distinct !DILocation(line: 189, column: 3, scope: !40)
!272 = !DILocation(line: 69, column: 3, scope: !69, inlinedAt: !270)
!273 = !DILocation(line: 70, column: 3, scope: !69, inlinedAt: !270)
!274 = !DILocation(line: 194, column: 46, scope: !40)
!275 = !DILocation(line: 196, column: 22, scope: !40)
!276 = !DILocation(line: 196, column: 180, scope: !40)
!277 = !DILocation(line: 198, column: 1, scope: !40)
