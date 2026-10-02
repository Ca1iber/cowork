; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v125_worker1_c12_valid_block_slot_toggle_sc-16g-2/codegen/candidate125/case12.device.cpp'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v125_worker1_c12_valid_block_slot_toggle_sc-16g-2/codegen/candidate125/case12.device.cpp"
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
  %mul = shl nsw i32 %0, 20
  %1 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !range !29
  %mul7 = shl nsw i32 %1, 10
  %add = add nuw nsw i32 %mul, %mul7
  %2 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !42
  %mul11 = shl nuw nsw i32 %2, 3
  %add9 = add nuw nsw i32 %add, %mul11
  %mul24 = and i32 %mul11, 8128
  %xor904 = and i32 %mul11, 56
  %call27.masked = and i32 %2, 1016
  %mul29 = xor i32 %xor904, %call27.masked
  %and33 = lshr i32 %2, 3
  %shr34 = and i32 %and33, 1
  %3 = zext nneg i32 %add9 to i64, !dbg !43
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %3, !dbg !44
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %add.ptr, align 16, !dbg !45
  %qk_fetch.sroa.38.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !45
  %qk_fetch.sroa.38.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr.sroa_idx, align 8, !dbg !45
  %4 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %mul29, !dbg !46
  %5 = getelementptr %struct.__half, ptr addrspace(3) %4, i32 %mul24, !dbg !46
  %add.ptr39.idx = shl nuw nsw i32 %shr34, 3, !dbg !46
  %add.ptr39 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr39, align 8, !dbg !47
  %xor35.1 = shl nuw nsw i32 %shr34, 3, !dbg !46
  %add.ptr39.idx.1 = xor i32 %xor35.1, 8, !dbg !46
  %add.ptr39.1 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.38.0.copyload, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !47
  %6 = add nuw nsw i64 %3, 512, !dbg !48
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %6, !dbg !44
  %qk_fetch.sroa.0.0.copyload2283 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %qk_fetch.sroa.38.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %qk_fetch.sroa.38.0.copyload2300 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr.1.sroa_idx, align 8, !dbg !45
  %7 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 1024, !dbg !46
  %add.ptr39.11008 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload2283, ptr addrspace(3) %add.ptr39.11008, align 8, !dbg !47
  %add.ptr39.1.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.38.0.copyload2300, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !47
  fence syncscope("warp") release, !dbg !49
  tail call void @llvm.mxc.barrier.warp(), !dbg !55
  fence syncscope("warp") acquire, !dbg !56
  %and48 = shl nuw nsw i32 %2, 6
  %mul49 = and i32 %and48, 960
  %shr52 = lshr i32 %2, 5
  %and55 = and i32 %2, 7
  %and60 = lshr i32 %2, 4
  %8 = xor i32 %and33, %and60
  %xor65903 = xor i32 %8, %2
  %xor68 = shl nuw nsw i32 %xor65903, 2
  %mul69 = and i32 %xor68, 4
  %xor56 = xor i32 %shr52, %and55, !dbg !57
  %mul57 = shl nuw nsw i32 %xor56, 3, !dbg !58
  %add58 = add nuw nsw i32 %mul57, %mul49, !dbg !59
  %add70 = or disjoint i32 %add58, %mul69, !dbg !60
  %add.ptr72 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add70, !dbg !61
  %9 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !62
  %add53.1 = add nuw nsw i32 %shr52, 2, !dbg !63
  %xor56.1 = xor i32 %add53.1, %and55, !dbg !57
  %mul57.1 = shl nuw nsw i32 %xor56.1, 3, !dbg !58
  %add58.1 = add nuw nsw i32 %mul57.1, %mul49, !dbg !59
  %add70.1 = or disjoint i32 %add58.1, %mul69, !dbg !60
  %add.ptr72.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add70.1, !dbg !61
  %10 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !62
  %add53.2 = add nuw nsw i32 %shr52, 4, !dbg !63
  %xor56.2 = xor i32 %add53.2, %and55, !dbg !57
  %mul57.2 = shl nuw nsw i32 %xor56.2, 3, !dbg !58
  %add58.2 = add nuw nsw i32 %mul57.2, %mul49, !dbg !59
  %add70.2 = or disjoint i32 %add58.2, %mul69, !dbg !60
  %add.ptr72.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add70.2, !dbg !61
  %11 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !62
  %add53.3 = add nuw nsw i32 %shr52, 6, !dbg !63
  %xor56.3 = xor i32 %add53.3, %and55, !dbg !57
  %mul57.3 = shl nuw nsw i32 %xor56.3, 3, !dbg !58
  %add58.3 = add nuw nsw i32 %mul57.3, %mul49, !dbg !59
  %add70.3 = or disjoint i32 %add58.3, %mul69, !dbg !60
  %add.ptr72.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add70.3, !dbg !61
  %12 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !62
  %mul121 = shl nsw i32 %0, 13
  %mul123 = shl nsw i32 %1, 3
  %add124 = add nuw nsw i32 %mul121, %mul123
  %shr131 = lshr i32 %1, 4
  %invariant.umin = tail call i32 @llvm.umin.i32(i32 %shr131, i32 63), !dbg !64
  %mul139 = shl nsw i32 %0, 16
  %add141 = or disjoint i32 %mul11, %mul139
  %add217 = or disjoint i32 %mul69, %mul49
  %13 = lshr i32 %2, 2
  %mul269 = and i32 %13, 252
  %14 = zext nneg i32 %add124 to i64, !dbg !64
  %arrayidx126 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %14, !dbg !65
  %15 = load i32, ptr addrspace(1) %arrayidx126, align 4, !dbg !65, !tbaa !30
  %or.cond963 = icmp ugt i32 %15, %invariant.umin, !dbg !66
  br i1 %or.cond963, label %if.end291, label %for.cond134.preheader, !dbg !66

for.body303.preheader:                            ; preds = %if.end291.7
  %scores.sroa.0.0.vec.extract = extractelement <4 x float> %scores.sroa.0.0, i64 0, !dbg !67
  %16 = tail call contract noundef float @llvm.maxnum.f32(float %scores.sroa.0.0.vec.extract, float 0xFFF0000000000000), !dbg !68
  %scores.sroa.0.4.vec.extract = extractelement <4 x float> %scores.sroa.0.0, i64 1, !dbg !67
  %17 = tail call contract noundef float @llvm.maxnum.f32(float %16, float %scores.sroa.0.4.vec.extract), !dbg !68
  %scores.sroa.0.8.vec.extract = extractelement <4 x float> %scores.sroa.0.0, i64 2, !dbg !67
  %18 = tail call contract noundef float @llvm.maxnum.f32(float %17, float %scores.sroa.0.8.vec.extract), !dbg !68
  %scores.sroa.0.12.vec.extract = extractelement <4 x float> %scores.sroa.0.0, i64 3, !dbg !67
  %19 = tail call contract noundef float @llvm.maxnum.f32(float %18, float %scores.sroa.0.12.vec.extract), !dbg !68
  %scores.sroa.23.16.vec.extract = extractelement <4 x float> %scores.sroa.23.0, i64 0, !dbg !67
  %20 = tail call contract noundef float @llvm.maxnum.f32(float %19, float %scores.sroa.23.16.vec.extract), !dbg !68
  %scores.sroa.23.20.vec.extract2423 = extractelement <4 x float> %scores.sroa.23.0, i64 1, !dbg !67
  %21 = tail call contract noundef float @llvm.maxnum.f32(float %20, float %scores.sroa.23.20.vec.extract2423), !dbg !68
  %scores.sroa.23.24.vec.extract2430 = extractelement <4 x float> %scores.sroa.23.0, i64 2, !dbg !67
  %22 = tail call contract noundef float @llvm.maxnum.f32(float %21, float %scores.sroa.23.24.vec.extract2430), !dbg !68
  %scores.sroa.23.28.vec.extract2437 = extractelement <4 x float> %scores.sroa.23.0, i64 3, !dbg !67
  %23 = tail call contract noundef float @llvm.maxnum.f32(float %22, float %scores.sroa.23.28.vec.extract2437), !dbg !68
  %scores.sroa.44.32.vec.extract = extractelement <4 x float> %scores.sroa.44.0, i64 0, !dbg !67
  %24 = tail call contract noundef float @llvm.maxnum.f32(float %23, float %scores.sroa.44.32.vec.extract), !dbg !68
  %scores.sroa.44.36.vec.extract2452 = extractelement <4 x float> %scores.sroa.44.0, i64 1, !dbg !67
  %25 = tail call contract noundef float @llvm.maxnum.f32(float %24, float %scores.sroa.44.36.vec.extract2452), !dbg !68
  %scores.sroa.44.40.vec.extract2459 = extractelement <4 x float> %scores.sroa.44.0, i64 2, !dbg !67
  %26 = tail call contract noundef float @llvm.maxnum.f32(float %25, float %scores.sroa.44.40.vec.extract2459), !dbg !68
  %scores.sroa.44.44.vec.extract2466 = extractelement <4 x float> %scores.sroa.44.0, i64 3, !dbg !67
  %27 = tail call contract noundef float @llvm.maxnum.f32(float %26, float %scores.sroa.44.44.vec.extract2466), !dbg !68
  %scores.sroa.65.48.vec.extract = extractelement <4 x float> %scores.sroa.65.0, i64 0, !dbg !67
  %28 = tail call contract noundef float @llvm.maxnum.f32(float %27, float %scores.sroa.65.48.vec.extract), !dbg !68
  %scores.sroa.65.52.vec.extract2481 = extractelement <4 x float> %scores.sroa.65.0, i64 1, !dbg !67
  %29 = tail call contract noundef float @llvm.maxnum.f32(float %28, float %scores.sroa.65.52.vec.extract2481), !dbg !68
  %scores.sroa.65.56.vec.extract2488 = extractelement <4 x float> %scores.sroa.65.0, i64 2, !dbg !67
  %30 = tail call contract noundef float @llvm.maxnum.f32(float %29, float %scores.sroa.65.56.vec.extract2488), !dbg !68
  %scores.sroa.65.60.vec.extract2495 = extractelement <4 x float> %scores.sroa.65.0, i64 3, !dbg !67
  %31 = tail call contract noundef float @llvm.maxnum.f32(float %30, float %scores.sroa.65.60.vec.extract2495), !dbg !68
  %scores.sroa.86.64.vec.extract = extractelement <4 x float> %scores.sroa.86.0, i64 0, !dbg !67
  %32 = tail call contract noundef float @llvm.maxnum.f32(float %31, float %scores.sroa.86.64.vec.extract), !dbg !68
  %scores.sroa.86.68.vec.extract2510 = extractelement <4 x float> %scores.sroa.86.0, i64 1, !dbg !67
  %33 = tail call contract noundef float @llvm.maxnum.f32(float %32, float %scores.sroa.86.68.vec.extract2510), !dbg !68
  %scores.sroa.86.72.vec.extract2517 = extractelement <4 x float> %scores.sroa.86.0, i64 2, !dbg !67
  %34 = tail call contract noundef float @llvm.maxnum.f32(float %33, float %scores.sroa.86.72.vec.extract2517), !dbg !68
  %scores.sroa.86.76.vec.extract2524 = extractelement <4 x float> %scores.sroa.86.0, i64 3, !dbg !67
  %35 = tail call contract noundef float @llvm.maxnum.f32(float %34, float %scores.sroa.86.76.vec.extract2524), !dbg !68
  %scores.sroa.107.80.vec.extract = extractelement <4 x float> %scores.sroa.107.0, i64 0, !dbg !67
  %36 = tail call contract noundef float @llvm.maxnum.f32(float %35, float %scores.sroa.107.80.vec.extract), !dbg !68
  %scores.sroa.107.84.vec.extract2539 = extractelement <4 x float> %scores.sroa.107.0, i64 1, !dbg !67
  %37 = tail call contract noundef float @llvm.maxnum.f32(float %36, float %scores.sroa.107.84.vec.extract2539), !dbg !68
  %scores.sroa.107.88.vec.extract2546 = extractelement <4 x float> %scores.sroa.107.0, i64 2, !dbg !67
  %38 = tail call contract noundef float @llvm.maxnum.f32(float %37, float %scores.sroa.107.88.vec.extract2546), !dbg !68
  %scores.sroa.107.92.vec.extract2553 = extractelement <4 x float> %scores.sroa.107.0, i64 3, !dbg !67
  %39 = tail call contract noundef float @llvm.maxnum.f32(float %38, float %scores.sroa.107.92.vec.extract2553), !dbg !68
  %scores.sroa.128.96.vec.extract = extractelement <4 x float> %scores.sroa.128.0, i64 0, !dbg !67
  %40 = tail call contract noundef float @llvm.maxnum.f32(float %39, float %scores.sroa.128.96.vec.extract), !dbg !68
  %scores.sroa.128.100.vec.extract2568 = extractelement <4 x float> %scores.sroa.128.0, i64 1, !dbg !67
  %41 = tail call contract noundef float @llvm.maxnum.f32(float %40, float %scores.sroa.128.100.vec.extract2568), !dbg !68
  %scores.sroa.128.104.vec.extract2575 = extractelement <4 x float> %scores.sroa.128.0, i64 2, !dbg !67
  %42 = tail call contract noundef float @llvm.maxnum.f32(float %41, float %scores.sroa.128.104.vec.extract2575), !dbg !68
  %scores.sroa.128.108.vec.extract2582 = extractelement <4 x float> %scores.sroa.128.0, i64 3, !dbg !67
  %43 = tail call contract noundef float @llvm.maxnum.f32(float %42, float %scores.sroa.128.108.vec.extract2582), !dbg !68
  %scores.sroa.149.112.vec.extract = extractelement <4 x float> %scores.sroa.149.0, i64 0, !dbg !67
  %44 = tail call contract noundef float @llvm.maxnum.f32(float %43, float %scores.sroa.149.112.vec.extract), !dbg !68
  %scores.sroa.149.116.vec.extract2597 = extractelement <4 x float> %scores.sroa.149.0, i64 1, !dbg !67
  %45 = tail call contract noundef float @llvm.maxnum.f32(float %44, float %scores.sroa.149.116.vec.extract2597), !dbg !68
  %scores.sroa.149.120.vec.extract2604 = extractelement <4 x float> %scores.sroa.149.0, i64 2, !dbg !67
  %46 = tail call contract noundef float @llvm.maxnum.f32(float %45, float %scores.sroa.149.120.vec.extract2604), !dbg !68
  %scores.sroa.149.124.vec.extract2611 = extractelement <4 x float> %scores.sroa.149.0, i64 3, !dbg !67
  %47 = tail call contract noundef float @llvm.maxnum.f32(float %46, float %scores.sroa.149.124.vec.extract2611), !dbg !68
  %48 = bitcast float %47 to i32, !dbg !72
  %49 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !75
  %50 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %49) #11, !dbg !80
  %xor.i.i = xor i32 %50, 32, !dbg !81
  %51 = and i32 %50, -64, !dbg !82
  %and.i.i = add nsw i32 %51, 64, !dbg !82
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !83
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %50, !dbg !84
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !85
  %52 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %48), !dbg !86
  %53 = bitcast i32 %52 to float, !dbg !87
  %54 = tail call contract noundef float @llvm.maxnum.f32(float %47, float %53), !dbg !88
  %55 = bitcast float %54 to i32, !dbg !90
  %56 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !92
  %57 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %56) #11, !dbg !95
  %xor.i.i912 = xor i32 %57, 16, !dbg !96
  %58 = and i32 %57, -64, !dbg !97
  %and.i.i913 = add nsw i32 %58, 64, !dbg !97
  %cmp.not.i.i914 = icmp slt i32 %xor.i.i912, %and.i.i913, !dbg !98
  %cond.i.i915 = select i1 %cmp.not.i.i914, i32 %xor.i.i912, i32 %57, !dbg !99
  %shl.i.i916 = shl i32 %cond.i.i915, 2, !dbg !100
  %59 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i916, i32 %55), !dbg !101
  %60 = bitcast i32 %59 to float, !dbg !102
  %61 = tail call contract noundef float @llvm.maxnum.f32(float %54, float %60), !dbg !103
  %scores.sroa.0.0.vec.extract2385 = extractelement <4 x float> %scores.sroa.0.0, i64 0, !dbg !105
  %scores.sroa.0.4.vec.extract2394 = extractelement <4 x float> %scores.sroa.0.0, i64 1, !dbg !105
  %scores.sroa.0.8.vec.extract2401 = extractelement <4 x float> %scores.sroa.0.0, i64 2, !dbg !105
  %scores.sroa.0.12.vec.extract2408 = extractelement <4 x float> %scores.sroa.0.0, i64 3, !dbg !105
  %sub = fsub contract float %scores.sroa.0.0.vec.extract2385, %61, !dbg !106
  %sub338 = fsub contract float %scores.sroa.0.4.vec.extract2394, %61, !dbg !107
  %sub341 = fsub contract float %scores.sroa.0.8.vec.extract2401, %61, !dbg !108
  %sub344 = fsub contract float %scores.sroa.0.12.vec.extract2408, %61, !dbg !109
  %mul349 = fmul contract float %sub, 0x3FC7154760000000, !dbg !110
  %mul353 = fmul contract float %sub338, 0x3FC7154760000000, !dbg !111
  %mul357 = fmul contract float %sub341, 0x3FC7154760000000, !dbg !112
  %mul361 = fmul contract float %sub344, 0x3FC7154760000000, !dbg !113
  %add366 = fadd contract float %mul349, 8.000000e+00, !dbg !114
  %add370 = fadd contract float %mul353, 8.000000e+00, !dbg !115
  %add374 = fadd contract float %mul357, 8.000000e+00, !dbg !116
  %add378 = fadd contract float %mul361, 8.000000e+00, !dbg !117
  %cmp.i.i = fcmp contract olt float %add366, -1.260000e+02, !dbg !118
  %cond.i.i921 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !118
  %add.i.i = fadd contract float %add366, %cond.i.i921, !dbg !118
  %62 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !118
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !118
  %mul.i.i = fmul contract float %cond2.i.i, %62, !dbg !118
  %cmp.i.i922 = fcmp contract olt float %add370, -1.260000e+02, !dbg !121
  %cond.i.i923 = select contract i1 %cmp.i.i922, float 6.400000e+01, float 0.000000e+00, !dbg !121
  %add.i.i924 = fadd contract float %add370, %cond.i.i923, !dbg !121
  %63 = tail call contract float @llvm.exp2.f32(float %add.i.i924), !dbg !121
  %cond2.i.i925 = select contract i1 %cmp.i.i922, float 0x3BF0000000000000, float 1.000000e+00, !dbg !121
  %mul.i.i926 = fmul contract float %cond2.i.i925, %63, !dbg !121
  %cmp.i.i927 = fcmp contract olt float %add374, -1.260000e+02, !dbg !123
  %cond.i.i928 = select contract i1 %cmp.i.i927, float 6.400000e+01, float 0.000000e+00, !dbg !123
  %add.i.i929 = fadd contract float %add374, %cond.i.i928, !dbg !123
  %64 = tail call contract float @llvm.exp2.f32(float %add.i.i929), !dbg !123
  %cond2.i.i930 = select contract i1 %cmp.i.i927, float 0x3BF0000000000000, float 1.000000e+00, !dbg !123
  %mul.i.i931 = fmul contract float %cond2.i.i930, %64, !dbg !123
  %cmp.i.i932 = fcmp contract olt float %add378, -1.260000e+02, !dbg !125
  %cond.i.i933 = select contract i1 %cmp.i.i932, float 6.400000e+01, float 0.000000e+00, !dbg !125
  %add.i.i934 = fadd contract float %add378, %cond.i.i933, !dbg !125
  %65 = tail call contract float @llvm.exp2.f32(float %add.i.i934), !dbg !125
  %cond2.i.i935 = select contract i1 %cmp.i.i932, float 0x3BF0000000000000, float 1.000000e+00, !dbg !125
  %mul.i.i936 = fmul contract float %cond2.i.i935, %65, !dbg !125
  %66 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !127, !noalias !135
  %67 = fptrunc float %mul.i.i to half, !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %66), !dbg !127, !noalias !135
  %68 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !140, !noalias !135
  %69 = fptrunc float %mul.i.i926 to half, !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %68), !dbg !140, !noalias !135
  %70 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !142, !noalias !146
  %71 = fptrunc float %mul.i.i931 to half, !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %70), !dbg !142, !noalias !146
  %72 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !151, !noalias !146
  %73 = fptrunc float %mul.i.i936 to half, !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %72), !dbg !151, !noalias !146
  %74 = insertelement <4 x half> poison, half %67, i64 0, !dbg !153
  %75 = insertelement <4 x half> %74, half %69, i64 1, !dbg !153
  %76 = insertelement <4 x half> %75, half %71, i64 2, !dbg !153
  %77 = insertelement <4 x half> %76, half %73, i64 3, !dbg !153
  %scores.sroa.23.16.vec.extract2416 = extractelement <4 x float> %scores.sroa.23.0, i64 0, !dbg !105
  %scores.sroa.23.20.vec.extract = extractelement <4 x float> %scores.sroa.23.0, i64 1, !dbg !105
  %scores.sroa.23.24.vec.extract = extractelement <4 x float> %scores.sroa.23.0, i64 2, !dbg !105
  %scores.sroa.23.28.vec.extract = extractelement <4 x float> %scores.sroa.23.0, i64 3, !dbg !105
  %sub.1 = fsub contract float %scores.sroa.23.16.vec.extract2416, %61, !dbg !106
  %sub338.1 = fsub contract float %scores.sroa.23.20.vec.extract, %61, !dbg !107
  %sub341.1 = fsub contract float %scores.sroa.23.24.vec.extract, %61, !dbg !108
  %sub344.1 = fsub contract float %scores.sroa.23.28.vec.extract, %61, !dbg !109
  %mul349.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !110
  %mul353.1 = fmul contract float %sub338.1, 0x3FC7154760000000, !dbg !111
  %mul357.1 = fmul contract float %sub341.1, 0x3FC7154760000000, !dbg !112
  %mul361.1 = fmul contract float %sub344.1, 0x3FC7154760000000, !dbg !113
  %add366.1 = fadd contract float %mul349.1, 8.000000e+00, !dbg !114
  %add370.1 = fadd contract float %mul353.1, 8.000000e+00, !dbg !115
  %add374.1 = fadd contract float %mul357.1, 8.000000e+00, !dbg !116
  %add378.1 = fadd contract float %mul361.1, 8.000000e+00, !dbg !117
  %cmp.i.i.1 = fcmp contract olt float %add366.1, -1.260000e+02, !dbg !118
  %cond.i.i921.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !118
  %add.i.i.1 = fadd contract float %add366.1, %cond.i.i921.1, !dbg !118
  %78 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !118
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !118
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %78, !dbg !118
  %cmp.i.i922.1 = fcmp contract olt float %add370.1, -1.260000e+02, !dbg !121
  %cond.i.i923.1 = select contract i1 %cmp.i.i922.1, float 6.400000e+01, float 0.000000e+00, !dbg !121
  %add.i.i924.1 = fadd contract float %add370.1, %cond.i.i923.1, !dbg !121
  %79 = tail call contract float @llvm.exp2.f32(float %add.i.i924.1), !dbg !121
  %cond2.i.i925.1 = select contract i1 %cmp.i.i922.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !121
  %mul.i.i926.1 = fmul contract float %cond2.i.i925.1, %79, !dbg !121
  %cmp.i.i927.1 = fcmp contract olt float %add374.1, -1.260000e+02, !dbg !123
  %cond.i.i928.1 = select contract i1 %cmp.i.i927.1, float 6.400000e+01, float 0.000000e+00, !dbg !123
  %add.i.i929.1 = fadd contract float %add374.1, %cond.i.i928.1, !dbg !123
  %80 = tail call contract float @llvm.exp2.f32(float %add.i.i929.1), !dbg !123
  %cond2.i.i930.1 = select contract i1 %cmp.i.i927.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !123
  %mul.i.i931.1 = fmul contract float %cond2.i.i930.1, %80, !dbg !123
  %cmp.i.i932.1 = fcmp contract olt float %add378.1, -1.260000e+02, !dbg !125
  %cond.i.i933.1 = select contract i1 %cmp.i.i932.1, float 6.400000e+01, float 0.000000e+00, !dbg !125
  %add.i.i934.1 = fadd contract float %add378.1, %cond.i.i933.1, !dbg !125
  %81 = tail call contract float @llvm.exp2.f32(float %add.i.i934.1), !dbg !125
  %cond2.i.i935.1 = select contract i1 %cmp.i.i932.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !125
  %mul.i.i936.1 = fmul contract float %cond2.i.i935.1, %81, !dbg !125
  %82 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !127, !noalias !135
  %83 = fptrunc float %mul.i.i.1 to half, !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %82), !dbg !127, !noalias !135
  %84 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !140, !noalias !135
  %85 = fptrunc float %mul.i.i926.1 to half, !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %84), !dbg !140, !noalias !135
  %86 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !142, !noalias !146
  %87 = fptrunc float %mul.i.i931.1 to half, !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %86), !dbg !142, !noalias !146
  %88 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !151, !noalias !146
  %89 = fptrunc float %mul.i.i936.1 to half, !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %88), !dbg !151, !noalias !146
  %90 = insertelement <4 x half> poison, half %83, i64 0, !dbg !153
  %91 = insertelement <4 x half> %90, half %85, i64 1, !dbg !153
  %92 = insertelement <4 x half> %91, half %87, i64 2, !dbg !153
  %93 = insertelement <4 x half> %92, half %89, i64 3, !dbg !153
  %scores.sroa.44.32.vec.extract2445 = extractelement <4 x float> %scores.sroa.44.0, i64 0, !dbg !105
  %scores.sroa.44.36.vec.extract = extractelement <4 x float> %scores.sroa.44.0, i64 1, !dbg !105
  %scores.sroa.44.40.vec.extract = extractelement <4 x float> %scores.sroa.44.0, i64 2, !dbg !105
  %scores.sroa.44.44.vec.extract = extractelement <4 x float> %scores.sroa.44.0, i64 3, !dbg !105
  %sub.2 = fsub contract float %scores.sroa.44.32.vec.extract2445, %61, !dbg !106
  %sub338.2 = fsub contract float %scores.sroa.44.36.vec.extract, %61, !dbg !107
  %sub341.2 = fsub contract float %scores.sroa.44.40.vec.extract, %61, !dbg !108
  %sub344.2 = fsub contract float %scores.sroa.44.44.vec.extract, %61, !dbg !109
  %mul349.2 = fmul contract float %sub.2, 0x3FC7154760000000, !dbg !110
  %mul353.2 = fmul contract float %sub338.2, 0x3FC7154760000000, !dbg !111
  %mul357.2 = fmul contract float %sub341.2, 0x3FC7154760000000, !dbg !112
  %mul361.2 = fmul contract float %sub344.2, 0x3FC7154760000000, !dbg !113
  %add366.2 = fadd contract float %mul349.2, 8.000000e+00, !dbg !114
  %add370.2 = fadd contract float %mul353.2, 8.000000e+00, !dbg !115
  %add374.2 = fadd contract float %mul357.2, 8.000000e+00, !dbg !116
  %add378.2 = fadd contract float %mul361.2, 8.000000e+00, !dbg !117
  %cmp.i.i.2 = fcmp contract olt float %add366.2, -1.260000e+02, !dbg !118
  %cond.i.i921.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !118
  %add.i.i.2 = fadd contract float %add366.2, %cond.i.i921.2, !dbg !118
  %94 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !118
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !118
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %94, !dbg !118
  %cmp.i.i922.2 = fcmp contract olt float %add370.2, -1.260000e+02, !dbg !121
  %cond.i.i923.2 = select contract i1 %cmp.i.i922.2, float 6.400000e+01, float 0.000000e+00, !dbg !121
  %add.i.i924.2 = fadd contract float %add370.2, %cond.i.i923.2, !dbg !121
  %95 = tail call contract float @llvm.exp2.f32(float %add.i.i924.2), !dbg !121
  %cond2.i.i925.2 = select contract i1 %cmp.i.i922.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !121
  %mul.i.i926.2 = fmul contract float %cond2.i.i925.2, %95, !dbg !121
  %cmp.i.i927.2 = fcmp contract olt float %add374.2, -1.260000e+02, !dbg !123
  %cond.i.i928.2 = select contract i1 %cmp.i.i927.2, float 6.400000e+01, float 0.000000e+00, !dbg !123
  %add.i.i929.2 = fadd contract float %add374.2, %cond.i.i928.2, !dbg !123
  %96 = tail call contract float @llvm.exp2.f32(float %add.i.i929.2), !dbg !123
  %cond2.i.i930.2 = select contract i1 %cmp.i.i927.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !123
  %mul.i.i931.2 = fmul contract float %cond2.i.i930.2, %96, !dbg !123
  %cmp.i.i932.2 = fcmp contract olt float %add378.2, -1.260000e+02, !dbg !125
  %cond.i.i933.2 = select contract i1 %cmp.i.i932.2, float 6.400000e+01, float 0.000000e+00, !dbg !125
  %add.i.i934.2 = fadd contract float %add378.2, %cond.i.i933.2, !dbg !125
  %97 = tail call contract float @llvm.exp2.f32(float %add.i.i934.2), !dbg !125
  %cond2.i.i935.2 = select contract i1 %cmp.i.i932.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !125
  %mul.i.i936.2 = fmul contract float %cond2.i.i935.2, %97, !dbg !125
  %98 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !127, !noalias !135
  %99 = fptrunc float %mul.i.i.2 to half, !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %98), !dbg !127, !noalias !135
  %100 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !140, !noalias !135
  %101 = fptrunc float %mul.i.i926.2 to half, !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %100), !dbg !140, !noalias !135
  %102 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !142, !noalias !146
  %103 = fptrunc float %mul.i.i931.2 to half, !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %102), !dbg !142, !noalias !146
  %104 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !151, !noalias !146
  %105 = fptrunc float %mul.i.i936.2 to half, !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %104), !dbg !151, !noalias !146
  %106 = insertelement <4 x half> poison, half %99, i64 0, !dbg !153
  %107 = insertelement <4 x half> %106, half %101, i64 1, !dbg !153
  %108 = insertelement <4 x half> %107, half %103, i64 2, !dbg !153
  %109 = insertelement <4 x half> %108, half %105, i64 3, !dbg !153
  %scores.sroa.65.48.vec.extract2474 = extractelement <4 x float> %scores.sroa.65.0, i64 0, !dbg !105
  %scores.sroa.65.52.vec.extract = extractelement <4 x float> %scores.sroa.65.0, i64 1, !dbg !105
  %scores.sroa.65.56.vec.extract = extractelement <4 x float> %scores.sroa.65.0, i64 2, !dbg !105
  %scores.sroa.65.60.vec.extract = extractelement <4 x float> %scores.sroa.65.0, i64 3, !dbg !105
  %sub.3 = fsub contract float %scores.sroa.65.48.vec.extract2474, %61, !dbg !106
  %sub338.3 = fsub contract float %scores.sroa.65.52.vec.extract, %61, !dbg !107
  %sub341.3 = fsub contract float %scores.sroa.65.56.vec.extract, %61, !dbg !108
  %sub344.3 = fsub contract float %scores.sroa.65.60.vec.extract, %61, !dbg !109
  %mul349.3 = fmul contract float %sub.3, 0x3FC7154760000000, !dbg !110
  %mul353.3 = fmul contract float %sub338.3, 0x3FC7154760000000, !dbg !111
  %mul357.3 = fmul contract float %sub341.3, 0x3FC7154760000000, !dbg !112
  %mul361.3 = fmul contract float %sub344.3, 0x3FC7154760000000, !dbg !113
  %add366.3 = fadd contract float %mul349.3, 8.000000e+00, !dbg !114
  %add370.3 = fadd contract float %mul353.3, 8.000000e+00, !dbg !115
  %add374.3 = fadd contract float %mul357.3, 8.000000e+00, !dbg !116
  %add378.3 = fadd contract float %mul361.3, 8.000000e+00, !dbg !117
  %cmp.i.i.3 = fcmp contract olt float %add366.3, -1.260000e+02, !dbg !118
  %cond.i.i921.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !118
  %add.i.i.3 = fadd contract float %add366.3, %cond.i.i921.3, !dbg !118
  %110 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !118
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !118
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %110, !dbg !118
  %cmp.i.i922.3 = fcmp contract olt float %add370.3, -1.260000e+02, !dbg !121
  %cond.i.i923.3 = select contract i1 %cmp.i.i922.3, float 6.400000e+01, float 0.000000e+00, !dbg !121
  %add.i.i924.3 = fadd contract float %add370.3, %cond.i.i923.3, !dbg !121
  %111 = tail call contract float @llvm.exp2.f32(float %add.i.i924.3), !dbg !121
  %cond2.i.i925.3 = select contract i1 %cmp.i.i922.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !121
  %mul.i.i926.3 = fmul contract float %cond2.i.i925.3, %111, !dbg !121
  %cmp.i.i927.3 = fcmp contract olt float %add374.3, -1.260000e+02, !dbg !123
  %cond.i.i928.3 = select contract i1 %cmp.i.i927.3, float 6.400000e+01, float 0.000000e+00, !dbg !123
  %add.i.i929.3 = fadd contract float %add374.3, %cond.i.i928.3, !dbg !123
  %112 = tail call contract float @llvm.exp2.f32(float %add.i.i929.3), !dbg !123
  %cond2.i.i930.3 = select contract i1 %cmp.i.i927.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !123
  %mul.i.i931.3 = fmul contract float %cond2.i.i930.3, %112, !dbg !123
  %cmp.i.i932.3 = fcmp contract olt float %add378.3, -1.260000e+02, !dbg !125
  %cond.i.i933.3 = select contract i1 %cmp.i.i932.3, float 6.400000e+01, float 0.000000e+00, !dbg !125
  %add.i.i934.3 = fadd contract float %add378.3, %cond.i.i933.3, !dbg !125
  %113 = tail call contract float @llvm.exp2.f32(float %add.i.i934.3), !dbg !125
  %cond2.i.i935.3 = select contract i1 %cmp.i.i932.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !125
  %mul.i.i936.3 = fmul contract float %cond2.i.i935.3, %113, !dbg !125
  %114 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !127, !noalias !135
  %115 = fptrunc float %mul.i.i.3 to half, !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %114), !dbg !127, !noalias !135
  %116 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !140, !noalias !135
  %117 = fptrunc float %mul.i.i926.3 to half, !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %116), !dbg !140, !noalias !135
  %118 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !142, !noalias !146
  %119 = fptrunc float %mul.i.i931.3 to half, !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %118), !dbg !142, !noalias !146
  %120 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !151, !noalias !146
  %121 = fptrunc float %mul.i.i936.3 to half, !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %120), !dbg !151, !noalias !146
  %122 = insertelement <4 x half> poison, half %115, i64 0, !dbg !153
  %123 = insertelement <4 x half> %122, half %117, i64 1, !dbg !153
  %124 = insertelement <4 x half> %123, half %119, i64 2, !dbg !153
  %125 = insertelement <4 x half> %124, half %121, i64 3, !dbg !153
  %scores.sroa.86.64.vec.extract2503 = extractelement <4 x float> %scores.sroa.86.0, i64 0, !dbg !105
  %scores.sroa.86.68.vec.extract = extractelement <4 x float> %scores.sroa.86.0, i64 1, !dbg !105
  %scores.sroa.86.72.vec.extract = extractelement <4 x float> %scores.sroa.86.0, i64 2, !dbg !105
  %scores.sroa.86.76.vec.extract = extractelement <4 x float> %scores.sroa.86.0, i64 3, !dbg !105
  %sub.4 = fsub contract float %scores.sroa.86.64.vec.extract2503, %61, !dbg !106
  %sub338.4 = fsub contract float %scores.sroa.86.68.vec.extract, %61, !dbg !107
  %sub341.4 = fsub contract float %scores.sroa.86.72.vec.extract, %61, !dbg !108
  %sub344.4 = fsub contract float %scores.sroa.86.76.vec.extract, %61, !dbg !109
  %mul349.4 = fmul contract float %sub.4, 0x3FC7154760000000, !dbg !110
  %mul353.4 = fmul contract float %sub338.4, 0x3FC7154760000000, !dbg !111
  %mul357.4 = fmul contract float %sub341.4, 0x3FC7154760000000, !dbg !112
  %mul361.4 = fmul contract float %sub344.4, 0x3FC7154760000000, !dbg !113
  %add366.4 = fadd contract float %mul349.4, 8.000000e+00, !dbg !114
  %add370.4 = fadd contract float %mul353.4, 8.000000e+00, !dbg !115
  %add374.4 = fadd contract float %mul357.4, 8.000000e+00, !dbg !116
  %add378.4 = fadd contract float %mul361.4, 8.000000e+00, !dbg !117
  %cmp.i.i.4 = fcmp contract olt float %add366.4, -1.260000e+02, !dbg !118
  %cond.i.i921.4 = select contract i1 %cmp.i.i.4, float 6.400000e+01, float 0.000000e+00, !dbg !118
  %add.i.i.4 = fadd contract float %add366.4, %cond.i.i921.4, !dbg !118
  %126 = tail call contract float @llvm.exp2.f32(float %add.i.i.4), !dbg !118
  %cond2.i.i.4 = select contract i1 %cmp.i.i.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !118
  %mul.i.i.4 = fmul contract float %cond2.i.i.4, %126, !dbg !118
  %cmp.i.i922.4 = fcmp contract olt float %add370.4, -1.260000e+02, !dbg !121
  %cond.i.i923.4 = select contract i1 %cmp.i.i922.4, float 6.400000e+01, float 0.000000e+00, !dbg !121
  %add.i.i924.4 = fadd contract float %add370.4, %cond.i.i923.4, !dbg !121
  %127 = tail call contract float @llvm.exp2.f32(float %add.i.i924.4), !dbg !121
  %cond2.i.i925.4 = select contract i1 %cmp.i.i922.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !121
  %mul.i.i926.4 = fmul contract float %cond2.i.i925.4, %127, !dbg !121
  %cmp.i.i927.4 = fcmp contract olt float %add374.4, -1.260000e+02, !dbg !123
  %cond.i.i928.4 = select contract i1 %cmp.i.i927.4, float 6.400000e+01, float 0.000000e+00, !dbg !123
  %add.i.i929.4 = fadd contract float %add374.4, %cond.i.i928.4, !dbg !123
  %128 = tail call contract float @llvm.exp2.f32(float %add.i.i929.4), !dbg !123
  %cond2.i.i930.4 = select contract i1 %cmp.i.i927.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !123
  %mul.i.i931.4 = fmul contract float %cond2.i.i930.4, %128, !dbg !123
  %cmp.i.i932.4 = fcmp contract olt float %add378.4, -1.260000e+02, !dbg !125
  %cond.i.i933.4 = select contract i1 %cmp.i.i932.4, float 6.400000e+01, float 0.000000e+00, !dbg !125
  %add.i.i934.4 = fadd contract float %add378.4, %cond.i.i933.4, !dbg !125
  %129 = tail call contract float @llvm.exp2.f32(float %add.i.i934.4), !dbg !125
  %cond2.i.i935.4 = select contract i1 %cmp.i.i932.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !125
  %mul.i.i936.4 = fmul contract float %cond2.i.i935.4, %129, !dbg !125
  %130 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !127, !noalias !135
  %131 = fptrunc float %mul.i.i.4 to half, !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %130), !dbg !127, !noalias !135
  %132 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !140, !noalias !135
  %133 = fptrunc float %mul.i.i926.4 to half, !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %132), !dbg !140, !noalias !135
  %134 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !142, !noalias !146
  %135 = fptrunc float %mul.i.i931.4 to half, !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %134), !dbg !142, !noalias !146
  %136 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !151, !noalias !146
  %137 = fptrunc float %mul.i.i936.4 to half, !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %136), !dbg !151, !noalias !146
  %138 = insertelement <4 x half> poison, half %131, i64 0, !dbg !153
  %139 = insertelement <4 x half> %138, half %133, i64 1, !dbg !153
  %140 = insertelement <4 x half> %139, half %135, i64 2, !dbg !153
  %141 = insertelement <4 x half> %140, half %137, i64 3, !dbg !153
  %scores.sroa.107.80.vec.extract2532 = extractelement <4 x float> %scores.sroa.107.0, i64 0, !dbg !105
  %scores.sroa.107.84.vec.extract = extractelement <4 x float> %scores.sroa.107.0, i64 1, !dbg !105
  %scores.sroa.107.88.vec.extract = extractelement <4 x float> %scores.sroa.107.0, i64 2, !dbg !105
  %scores.sroa.107.92.vec.extract = extractelement <4 x float> %scores.sroa.107.0, i64 3, !dbg !105
  %sub.5 = fsub contract float %scores.sroa.107.80.vec.extract2532, %61, !dbg !106
  %sub338.5 = fsub contract float %scores.sroa.107.84.vec.extract, %61, !dbg !107
  %sub341.5 = fsub contract float %scores.sroa.107.88.vec.extract, %61, !dbg !108
  %sub344.5 = fsub contract float %scores.sroa.107.92.vec.extract, %61, !dbg !109
  %mul349.5 = fmul contract float %sub.5, 0x3FC7154760000000, !dbg !110
  %mul353.5 = fmul contract float %sub338.5, 0x3FC7154760000000, !dbg !111
  %mul357.5 = fmul contract float %sub341.5, 0x3FC7154760000000, !dbg !112
  %mul361.5 = fmul contract float %sub344.5, 0x3FC7154760000000, !dbg !113
  %add366.5 = fadd contract float %mul349.5, 8.000000e+00, !dbg !114
  %add370.5 = fadd contract float %mul353.5, 8.000000e+00, !dbg !115
  %add374.5 = fadd contract float %mul357.5, 8.000000e+00, !dbg !116
  %add378.5 = fadd contract float %mul361.5, 8.000000e+00, !dbg !117
  %cmp.i.i.5 = fcmp contract olt float %add366.5, -1.260000e+02, !dbg !118
  %cond.i.i921.5 = select contract i1 %cmp.i.i.5, float 6.400000e+01, float 0.000000e+00, !dbg !118
  %add.i.i.5 = fadd contract float %add366.5, %cond.i.i921.5, !dbg !118
  %142 = tail call contract float @llvm.exp2.f32(float %add.i.i.5), !dbg !118
  %cond2.i.i.5 = select contract i1 %cmp.i.i.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !118
  %mul.i.i.5 = fmul contract float %cond2.i.i.5, %142, !dbg !118
  %cmp.i.i922.5 = fcmp contract olt float %add370.5, -1.260000e+02, !dbg !121
  %cond.i.i923.5 = select contract i1 %cmp.i.i922.5, float 6.400000e+01, float 0.000000e+00, !dbg !121
  %add.i.i924.5 = fadd contract float %add370.5, %cond.i.i923.5, !dbg !121
  %143 = tail call contract float @llvm.exp2.f32(float %add.i.i924.5), !dbg !121
  %cond2.i.i925.5 = select contract i1 %cmp.i.i922.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !121
  %mul.i.i926.5 = fmul contract float %cond2.i.i925.5, %143, !dbg !121
  %cmp.i.i927.5 = fcmp contract olt float %add374.5, -1.260000e+02, !dbg !123
  %cond.i.i928.5 = select contract i1 %cmp.i.i927.5, float 6.400000e+01, float 0.000000e+00, !dbg !123
  %add.i.i929.5 = fadd contract float %add374.5, %cond.i.i928.5, !dbg !123
  %144 = tail call contract float @llvm.exp2.f32(float %add.i.i929.5), !dbg !123
  %cond2.i.i930.5 = select contract i1 %cmp.i.i927.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !123
  %mul.i.i931.5 = fmul contract float %cond2.i.i930.5, %144, !dbg !123
  %cmp.i.i932.5 = fcmp contract olt float %add378.5, -1.260000e+02, !dbg !125
  %cond.i.i933.5 = select contract i1 %cmp.i.i932.5, float 6.400000e+01, float 0.000000e+00, !dbg !125
  %add.i.i934.5 = fadd contract float %add378.5, %cond.i.i933.5, !dbg !125
  %145 = tail call contract float @llvm.exp2.f32(float %add.i.i934.5), !dbg !125
  %cond2.i.i935.5 = select contract i1 %cmp.i.i932.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !125
  %mul.i.i936.5 = fmul contract float %cond2.i.i935.5, %145, !dbg !125
  %146 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !127, !noalias !135
  %147 = fptrunc float %mul.i.i.5 to half, !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %146), !dbg !127, !noalias !135
  %148 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !140, !noalias !135
  %149 = fptrunc float %mul.i.i926.5 to half, !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %148), !dbg !140, !noalias !135
  %150 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !142, !noalias !146
  %151 = fptrunc float %mul.i.i931.5 to half, !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %150), !dbg !142, !noalias !146
  %152 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !151, !noalias !146
  %153 = fptrunc float %mul.i.i936.5 to half, !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %152), !dbg !151, !noalias !146
  %154 = insertelement <4 x half> poison, half %147, i64 0, !dbg !153
  %155 = insertelement <4 x half> %154, half %149, i64 1, !dbg !153
  %156 = insertelement <4 x half> %155, half %151, i64 2, !dbg !153
  %157 = insertelement <4 x half> %156, half %153, i64 3, !dbg !153
  %scores.sroa.128.96.vec.extract2561 = extractelement <4 x float> %scores.sroa.128.0, i64 0, !dbg !105
  %scores.sroa.128.100.vec.extract = extractelement <4 x float> %scores.sroa.128.0, i64 1, !dbg !105
  %scores.sroa.128.104.vec.extract = extractelement <4 x float> %scores.sroa.128.0, i64 2, !dbg !105
  %scores.sroa.128.108.vec.extract = extractelement <4 x float> %scores.sroa.128.0, i64 3, !dbg !105
  %sub.6 = fsub contract float %scores.sroa.128.96.vec.extract2561, %61, !dbg !106
  %sub338.6 = fsub contract float %scores.sroa.128.100.vec.extract, %61, !dbg !107
  %sub341.6 = fsub contract float %scores.sroa.128.104.vec.extract, %61, !dbg !108
  %sub344.6 = fsub contract float %scores.sroa.128.108.vec.extract, %61, !dbg !109
  %mul349.6 = fmul contract float %sub.6, 0x3FC7154760000000, !dbg !110
  %mul353.6 = fmul contract float %sub338.6, 0x3FC7154760000000, !dbg !111
  %mul357.6 = fmul contract float %sub341.6, 0x3FC7154760000000, !dbg !112
  %mul361.6 = fmul contract float %sub344.6, 0x3FC7154760000000, !dbg !113
  %add366.6 = fadd contract float %mul349.6, 8.000000e+00, !dbg !114
  %add370.6 = fadd contract float %mul353.6, 8.000000e+00, !dbg !115
  %add374.6 = fadd contract float %mul357.6, 8.000000e+00, !dbg !116
  %add378.6 = fadd contract float %mul361.6, 8.000000e+00, !dbg !117
  %cmp.i.i.6 = fcmp contract olt float %add366.6, -1.260000e+02, !dbg !118
  %cond.i.i921.6 = select contract i1 %cmp.i.i.6, float 6.400000e+01, float 0.000000e+00, !dbg !118
  %add.i.i.6 = fadd contract float %add366.6, %cond.i.i921.6, !dbg !118
  %158 = tail call contract float @llvm.exp2.f32(float %add.i.i.6), !dbg !118
  %cond2.i.i.6 = select contract i1 %cmp.i.i.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !118
  %mul.i.i.6 = fmul contract float %cond2.i.i.6, %158, !dbg !118
  %cmp.i.i922.6 = fcmp contract olt float %add370.6, -1.260000e+02, !dbg !121
  %cond.i.i923.6 = select contract i1 %cmp.i.i922.6, float 6.400000e+01, float 0.000000e+00, !dbg !121
  %add.i.i924.6 = fadd contract float %add370.6, %cond.i.i923.6, !dbg !121
  %159 = tail call contract float @llvm.exp2.f32(float %add.i.i924.6), !dbg !121
  %cond2.i.i925.6 = select contract i1 %cmp.i.i922.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !121
  %mul.i.i926.6 = fmul contract float %cond2.i.i925.6, %159, !dbg !121
  %cmp.i.i927.6 = fcmp contract olt float %add374.6, -1.260000e+02, !dbg !123
  %cond.i.i928.6 = select contract i1 %cmp.i.i927.6, float 6.400000e+01, float 0.000000e+00, !dbg !123
  %add.i.i929.6 = fadd contract float %add374.6, %cond.i.i928.6, !dbg !123
  %160 = tail call contract float @llvm.exp2.f32(float %add.i.i929.6), !dbg !123
  %cond2.i.i930.6 = select contract i1 %cmp.i.i927.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !123
  %mul.i.i931.6 = fmul contract float %cond2.i.i930.6, %160, !dbg !123
  %cmp.i.i932.6 = fcmp contract olt float %add378.6, -1.260000e+02, !dbg !125
  %cond.i.i933.6 = select contract i1 %cmp.i.i932.6, float 6.400000e+01, float 0.000000e+00, !dbg !125
  %add.i.i934.6 = fadd contract float %add378.6, %cond.i.i933.6, !dbg !125
  %161 = tail call contract float @llvm.exp2.f32(float %add.i.i934.6), !dbg !125
  %cond2.i.i935.6 = select contract i1 %cmp.i.i932.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !125
  %mul.i.i936.6 = fmul contract float %cond2.i.i935.6, %161, !dbg !125
  %162 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !127, !noalias !135
  %163 = fptrunc float %mul.i.i.6 to half, !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %162), !dbg !127, !noalias !135
  %164 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !140, !noalias !135
  %165 = fptrunc float %mul.i.i926.6 to half, !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %164), !dbg !140, !noalias !135
  %166 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !142, !noalias !146
  %167 = fptrunc float %mul.i.i931.6 to half, !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %166), !dbg !142, !noalias !146
  %168 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !151, !noalias !146
  %169 = fptrunc float %mul.i.i936.6 to half, !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %168), !dbg !151, !noalias !146
  %170 = insertelement <4 x half> poison, half %163, i64 0, !dbg !153
  %171 = insertelement <4 x half> %170, half %165, i64 1, !dbg !153
  %172 = insertelement <4 x half> %171, half %167, i64 2, !dbg !153
  %173 = insertelement <4 x half> %172, half %169, i64 3, !dbg !153
  %scores.sroa.149.112.vec.extract2590 = extractelement <4 x float> %scores.sroa.149.0, i64 0, !dbg !105
  %scores.sroa.149.116.vec.extract = extractelement <4 x float> %scores.sroa.149.0, i64 1, !dbg !105
  %scores.sroa.149.120.vec.extract = extractelement <4 x float> %scores.sroa.149.0, i64 2, !dbg !105
  %scores.sroa.149.124.vec.extract = extractelement <4 x float> %scores.sroa.149.0, i64 3, !dbg !105
  %sub.7 = fsub contract float %scores.sroa.149.112.vec.extract2590, %61, !dbg !106
  %sub338.7 = fsub contract float %scores.sroa.149.116.vec.extract, %61, !dbg !107
  %sub341.7 = fsub contract float %scores.sroa.149.120.vec.extract, %61, !dbg !108
  %sub344.7 = fsub contract float %scores.sroa.149.124.vec.extract, %61, !dbg !109
  %mul349.7 = fmul contract float %sub.7, 0x3FC7154760000000, !dbg !110
  %mul353.7 = fmul contract float %sub338.7, 0x3FC7154760000000, !dbg !111
  %mul357.7 = fmul contract float %sub341.7, 0x3FC7154760000000, !dbg !112
  %mul361.7 = fmul contract float %sub344.7, 0x3FC7154760000000, !dbg !113
  %add366.7 = fadd contract float %mul349.7, 8.000000e+00, !dbg !114
  %add370.7 = fadd contract float %mul353.7, 8.000000e+00, !dbg !115
  %add374.7 = fadd contract float %mul357.7, 8.000000e+00, !dbg !116
  %add378.7 = fadd contract float %mul361.7, 8.000000e+00, !dbg !117
  %cmp.i.i.7 = fcmp contract olt float %add366.7, -1.260000e+02, !dbg !118
  %cond.i.i921.7 = select contract i1 %cmp.i.i.7, float 6.400000e+01, float 0.000000e+00, !dbg !118
  %add.i.i.7 = fadd contract float %add366.7, %cond.i.i921.7, !dbg !118
  %174 = tail call contract float @llvm.exp2.f32(float %add.i.i.7), !dbg !118
  %cond2.i.i.7 = select contract i1 %cmp.i.i.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !118
  %mul.i.i.7 = fmul contract float %cond2.i.i.7, %174, !dbg !118
  %cmp.i.i922.7 = fcmp contract olt float %add370.7, -1.260000e+02, !dbg !121
  %cond.i.i923.7 = select contract i1 %cmp.i.i922.7, float 6.400000e+01, float 0.000000e+00, !dbg !121
  %add.i.i924.7 = fadd contract float %add370.7, %cond.i.i923.7, !dbg !121
  %175 = tail call contract float @llvm.exp2.f32(float %add.i.i924.7), !dbg !121
  %cond2.i.i925.7 = select contract i1 %cmp.i.i922.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !121
  %mul.i.i926.7 = fmul contract float %cond2.i.i925.7, %175, !dbg !121
  %cmp.i.i927.7 = fcmp contract olt float %add374.7, -1.260000e+02, !dbg !123
  %cond.i.i928.7 = select contract i1 %cmp.i.i927.7, float 6.400000e+01, float 0.000000e+00, !dbg !123
  %add.i.i929.7 = fadd contract float %add374.7, %cond.i.i928.7, !dbg !123
  %176 = tail call contract float @llvm.exp2.f32(float %add.i.i929.7), !dbg !123
  %cond2.i.i930.7 = select contract i1 %cmp.i.i927.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !123
  %mul.i.i931.7 = fmul contract float %cond2.i.i930.7, %176, !dbg !123
  %cmp.i.i932.7 = fcmp contract olt float %add378.7, -1.260000e+02, !dbg !125
  %cond.i.i933.7 = select contract i1 %cmp.i.i932.7, float 6.400000e+01, float 0.000000e+00, !dbg !125
  %add.i.i934.7 = fadd contract float %add378.7, %cond.i.i933.7, !dbg !125
  %177 = tail call contract float @llvm.exp2.f32(float %add.i.i934.7), !dbg !125
  %cond2.i.i935.7 = select contract i1 %cmp.i.i932.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !125
  %mul.i.i936.7 = fmul contract float %cond2.i.i935.7, %177, !dbg !125
  %178 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !127, !noalias !135
  %179 = fptrunc float %mul.i.i.7 to half, !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %178), !dbg !127, !noalias !135
  %180 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !140, !noalias !135
  %181 = fptrunc float %mul.i.i926.7 to half, !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %180), !dbg !140, !noalias !135
  %182 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !142, !noalias !146
  %183 = fptrunc float %mul.i.i931.7 to half, !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %182), !dbg !142, !noalias !146
  %184 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !151, !noalias !146
  %185 = fptrunc float %mul.i.i936.7 to half, !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %184), !dbg !151, !noalias !146
  %186 = insertelement <4 x half> poison, half %179, i64 0, !dbg !153
  %187 = insertelement <4 x half> %186, half %181, i64 1, !dbg !153
  %188 = insertelement <4 x half> %187, half %183, i64 2, !dbg !153
  %189 = insertelement <4 x half> %188, half %185, i64 3, !dbg !153
  %conv.i.i = fpext half %67 to float, !dbg !154
  %add417 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !159
  %conv.i.i.1 = fpext half %69 to float, !dbg !154
  %add417.1 = fadd contract float %add417, %conv.i.i.1, !dbg !159
  %conv.i.i.2 = fpext half %71 to float, !dbg !154
  %add417.2 = fadd contract float %add417.1, %conv.i.i.2, !dbg !159
  %conv.i.i.3 = fpext half %73 to float, !dbg !154
  %add417.3 = fadd contract float %add417.2, %conv.i.i.3, !dbg !159
  %conv.i.i.4 = fpext half %83 to float, !dbg !154
  %add417.4 = fadd contract float %add417.3, %conv.i.i.4, !dbg !159
  %conv.i.i.5 = fpext half %85 to float, !dbg !154
  %add417.5 = fadd contract float %add417.4, %conv.i.i.5, !dbg !159
  %conv.i.i.6 = fpext half %87 to float, !dbg !154
  %add417.6 = fadd contract float %add417.5, %conv.i.i.6, !dbg !159
  %conv.i.i.7 = fpext half %89 to float, !dbg !154
  %add417.7 = fadd contract float %add417.6, %conv.i.i.7, !dbg !159
  %conv.i.i.8 = fpext half %99 to float, !dbg !154
  %add417.8 = fadd contract float %add417.7, %conv.i.i.8, !dbg !159
  %conv.i.i.9 = fpext half %101 to float, !dbg !154
  %add417.9 = fadd contract float %add417.8, %conv.i.i.9, !dbg !159
  %conv.i.i.10 = fpext half %103 to float, !dbg !154
  %add417.10 = fadd contract float %add417.9, %conv.i.i.10, !dbg !159
  %conv.i.i.11 = fpext half %105 to float, !dbg !154
  %add417.11 = fadd contract float %add417.10, %conv.i.i.11, !dbg !159
  %conv.i.i.12 = fpext half %115 to float, !dbg !154
  %add417.12 = fadd contract float %add417.11, %conv.i.i.12, !dbg !159
  %conv.i.i.13 = fpext half %117 to float, !dbg !154
  %add417.13 = fadd contract float %add417.12, %conv.i.i.13, !dbg !159
  %conv.i.i.14 = fpext half %119 to float, !dbg !154
  %add417.14 = fadd contract float %add417.13, %conv.i.i.14, !dbg !159
  %conv.i.i.15 = fpext half %121 to float, !dbg !154
  %add417.15 = fadd contract float %add417.14, %conv.i.i.15, !dbg !159
  %conv.i.i.16 = fpext half %131 to float, !dbg !154
  %add417.16 = fadd contract float %add417.15, %conv.i.i.16, !dbg !159
  %conv.i.i.17 = fpext half %133 to float, !dbg !154
  %add417.17 = fadd contract float %add417.16, %conv.i.i.17, !dbg !159
  %conv.i.i.18 = fpext half %135 to float, !dbg !154
  %add417.18 = fadd contract float %add417.17, %conv.i.i.18, !dbg !159
  %conv.i.i.19 = fpext half %137 to float, !dbg !154
  %add417.19 = fadd contract float %add417.18, %conv.i.i.19, !dbg !159
  %conv.i.i.20 = fpext half %147 to float, !dbg !154
  %add417.20 = fadd contract float %add417.19, %conv.i.i.20, !dbg !159
  %conv.i.i.21 = fpext half %149 to float, !dbg !154
  %add417.21 = fadd contract float %add417.20, %conv.i.i.21, !dbg !159
  %conv.i.i.22 = fpext half %151 to float, !dbg !154
  %add417.22 = fadd contract float %add417.21, %conv.i.i.22, !dbg !159
  %conv.i.i.23 = fpext half %153 to float, !dbg !154
  %add417.23 = fadd contract float %add417.22, %conv.i.i.23, !dbg !159
  %conv.i.i.24 = fpext half %163 to float, !dbg !154
  %add417.24 = fadd contract float %add417.23, %conv.i.i.24, !dbg !159
  %conv.i.i.25 = fpext half %165 to float, !dbg !154
  %add417.25 = fadd contract float %add417.24, %conv.i.i.25, !dbg !159
  %conv.i.i.26 = fpext half %167 to float, !dbg !154
  %add417.26 = fadd contract float %add417.25, %conv.i.i.26, !dbg !159
  %conv.i.i.27 = fpext half %169 to float, !dbg !154
  %add417.27 = fadd contract float %add417.26, %conv.i.i.27, !dbg !159
  %conv.i.i.28 = fpext half %179 to float, !dbg !154
  %add417.28 = fadd contract float %add417.27, %conv.i.i.28, !dbg !159
  %conv.i.i.29 = fpext half %181 to float, !dbg !154
  %add417.29 = fadd contract float %add417.28, %conv.i.i.29, !dbg !159
  %conv.i.i.30 = fpext half %183 to float, !dbg !154
  %add417.30 = fadd contract float %add417.29, %conv.i.i.30, !dbg !159
  %conv.i.i.31 = fpext half %185 to float, !dbg !154
  %add417.31 = fadd contract float %add417.30, %conv.i.i.31, !dbg !159
  %190 = bitcast float %add417.31 to i32, !dbg !160
  %191 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !162
  %192 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %191) #11, !dbg !165
  %xor.i.i938 = xor i32 %192, 32, !dbg !166
  %193 = and i32 %192, -64, !dbg !167
  %and.i.i939 = add nsw i32 %193, 64, !dbg !167
  %cmp.not.i.i940 = icmp slt i32 %xor.i.i938, %and.i.i939, !dbg !168
  %cond.i.i941 = select i1 %cmp.not.i.i940, i32 %xor.i.i938, i32 %192, !dbg !169
  %shl.i.i942 = shl i32 %cond.i.i941, 2, !dbg !170
  %194 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i942, i32 %190), !dbg !171
  %195 = bitcast i32 %194 to float, !dbg !172
  %add425 = fadd contract float %add417.31, %195, !dbg !173
  %196 = bitcast float %add425 to i32, !dbg !174
  %197 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !176
  %198 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %197) #11, !dbg !179
  %xor.i.i943 = xor i32 %198, 16, !dbg !180
  %199 = and i32 %198, -64, !dbg !181
  %and.i.i944 = add nsw i32 %199, 64, !dbg !181
  %cmp.not.i.i945 = icmp slt i32 %xor.i.i943, %and.i.i944, !dbg !182
  %cond.i.i946 = select i1 %cmp.not.i.i945, i32 %xor.i.i943, i32 %198, !dbg !183
  %shl.i.i947 = shl i32 %cond.i.i946, 2, !dbg !184
  %200 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i947, i32 %196), !dbg !185
  %201 = bitcast i32 %200 to float, !dbg !186
  %add430 = fadd contract float %add425, %201, !dbg !187
  br label %if.end432, !dbg !188

for.cond134.preheader:                            ; preds = %entry
  %mul140 = shl nuw nsw i32 %15, 10
  %add143 = add nuw nsw i32 %add141, %mul140
  %202 = zext nneg i32 %add143 to i64, !dbg !189
  %add.ptr148 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %202, !dbg !190
  %qk_fetch.sroa.0.0.copyload2282 = load i64, ptr addrspace(4) %add.ptr148, align 16, !dbg !191
  %qk_fetch.sroa.38.0.add.ptr148.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr148, i64 8, !dbg !191
  %qk_fetch.sroa.38.0.copyload2299 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr148.sroa_idx, align 8, !dbg !191
  %203 = getelementptr i8, ptr addrspace(3) %5, i32 2048, !dbg !192
  %add.ptr188 = getelementptr i8, ptr addrspace(3) %203, i32 %add.ptr39.idx, !dbg !192
  store i64 %qk_fetch.sroa.0.0.copyload2282, ptr addrspace(3) %add.ptr188, align 8, !dbg !193
  %add.ptr188.1 = getelementptr i8, ptr addrspace(3) %203, i32 %add.ptr39.idx.1, !dbg !192
  store i64 %qk_fetch.sroa.38.0.copyload2299, ptr addrspace(3) %add.ptr188.1, align 8, !dbg !193
  %204 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %202, !dbg !190
  %add.ptr148.1 = getelementptr inbounds i8, ptr addrspace(4) %204, i64 1024, !dbg !190
  %qk_fetch.sroa.0.0.copyload2284 = load i64, ptr addrspace(4) %add.ptr148.1, align 16, !dbg !191
  %qk_fetch.sroa.38.0.add.ptr148.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %204, i64 1032, !dbg !191
  %qk_fetch.sroa.38.0.copyload2301 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr148.1.sroa_idx, align 8, !dbg !191
  %205 = getelementptr i8, ptr addrspace(3) %5, i32 3072, !dbg !192
  %add.ptr188.11014 = getelementptr i8, ptr addrspace(3) %205, i32 %add.ptr39.idx.1, !dbg !192
  store i64 %qk_fetch.sroa.0.0.copyload2284, ptr addrspace(3) %add.ptr188.11014, align 8, !dbg !193
  %add.ptr188.1.1 = getelementptr i8, ptr addrspace(3) %205, i32 %add.ptr39.idx, !dbg !192
  store i64 %qk_fetch.sroa.38.0.copyload2301, ptr addrspace(3) %add.ptr188.1.1, align 8, !dbg !193
  fence syncscope("warp") release, !dbg !194
  tail call void @llvm.mxc.barrier.warp(), !dbg !197
  fence syncscope("warp") acquire, !dbg !198
  %add229 = or disjoint i32 %add217, 1024
  %206 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add229, !dbg !199
  %add.ptr245.idx = shl nuw nsw i32 %xor56, 4, !dbg !199
  %add.ptr245 = getelementptr i8, ptr addrspace(3) %206, i32 %add.ptr245.idx, !dbg !199
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr245, align 8, !dbg !200
  %207 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %9, <4 x float> zeroinitializer), !dbg !201
  %add.ptr245.idx.1 = shl nuw nsw i32 %xor56.1, 4, !dbg !199
  %add.ptr245.1 = getelementptr i8, ptr addrspace(3) %206, i32 %add.ptr245.idx.1, !dbg !199
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr245.1, align 8, !dbg !200
  %208 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %10, <4 x float> %207), !dbg !201
  %add.ptr245.idx.2 = shl nuw nsw i32 %xor56.2, 4, !dbg !199
  %add.ptr245.2 = getelementptr i8, ptr addrspace(3) %206, i32 %add.ptr245.idx.2, !dbg !199
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr245.2, align 8, !dbg !200
  %209 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %11, <4 x float> %208), !dbg !201
  %add.ptr245.idx.3 = shl nuw nsw i32 %xor56.3, 4, !dbg !199
  %add.ptr245.3 = getelementptr i8, ptr addrspace(3) %206, i32 %add.ptr245.idx.3, !dbg !199
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr245.3, align 8, !dbg !200
  %210 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %12, <4 x float> %209), !dbg !201
  %mul266 = shl nuw nsw i32 %15, 4
  %add270 = add nuw nsw i32 %mul266, %mul269
  %cmp273.not = icmp ugt i32 %add270, %1, !dbg !202
  %211 = extractelement <4 x float> %210, i64 1, !dbg !203
  %212 = extractelement <4 x float> %210, i64 2, !dbg !203
  %213 = extractelement <4 x float> %210, i64 3, !dbg !203
  %214 = extractelement <4 x float> %210, i64 0
  %spec.select = select i1 %cmp273.not, float 0xFFF0000000000000, float %214, !dbg !203
  %scores.sroa.0.0.vec.insert2382 = insertelement <4 x float> poison, float %spec.select, i64 0, !dbg !204
  %cmp273.not.1.not = icmp ult i32 %add270, %1, !dbg !202
  %condval.0.1 = select i1 %cmp273.not.1.not, float %211, float 0xFFF0000000000000, !dbg !203
  %scores.sroa.0.4.vec.insert2391 = insertelement <4 x float> %scores.sroa.0.0.vec.insert2382, float %condval.0.1, i64 1, !dbg !204
  %add271.2 = or disjoint i32 %add270, 2, !dbg !205
  %cmp273.not.2 = icmp ugt i32 %add271.2, %1, !dbg !202
  %condval.0.2 = select i1 %cmp273.not.2, float 0xFFF0000000000000, float %212, !dbg !203
  %scores.sroa.0.8.vec.insert2398 = insertelement <4 x float> %scores.sroa.0.4.vec.insert2391, float %condval.0.2, i64 2, !dbg !204
  %add271.3 = or disjoint i32 %add270, 3, !dbg !205
  %cmp273.not.3 = icmp ugt i32 %add271.3, %1, !dbg !202
  %condval.0.3 = select i1 %cmp273.not.3, float 0xFFF0000000000000, float %213, !dbg !203
  %scores.sroa.0.12.vec.insert2405 = insertelement <4 x float> %scores.sroa.0.8.vec.insert2398, float %condval.0.3, i64 3, !dbg !204
  br label %if.end291, !dbg !206

if.end291:                                        ; preds = %for.cond134.preheader, %entry
  %scores.sroa.0.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %entry ], [ %scores.sroa.0.12.vec.insert2405, %for.cond134.preheader ], !dbg !207
  %has_valid.sroa.0.1 = phi i32 [ 0, %entry ], [ 1, %for.cond134.preheader ], !dbg !207
  %next_slot.sroa.0.1 = phi i32 [ 1, %entry ], [ 0, %for.cond134.preheader ], !dbg !207
  %215 = or disjoint i64 %14, 1, !dbg !208
  %arrayidx126.1 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %215, !dbg !65
  %216 = load i32, ptr addrspace(1) %arrayidx126.1, align 4, !dbg !65, !tbaa !30
  %or.cond963.1 = icmp ugt i32 %216, %invariant.umin, !dbg !66
  br i1 %or.cond963.1, label %if.end291.1, label %for.cond134.preheader.1, !dbg !66

for.cond134.preheader.1:                          ; preds = %if.end291
  %mul140.1 = shl nuw nsw i32 %216, 10
  %add143.1 = add nuw nsw i32 %add141, %mul140.1
  %217 = zext nneg i32 %add143.1 to i64, !dbg !189
  %add.ptr148.11029 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %217, !dbg !190
  %qk_fetch.sroa.0.0.copyload2285 = load i64, ptr addrspace(4) %add.ptr148.11029, align 16, !dbg !191
  %qk_fetch.sroa.38.0.add.ptr148.11029.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr148.11029, i64 8, !dbg !191
  %qk_fetch.sroa.38.0.copyload2302 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr148.11029.sroa_idx, align 8, !dbg !191
  %.idx.11030 = shl nuw nsw i32 %next_slot.sroa.0.1, 11, !dbg !192
  %218 = getelementptr i8, ptr addrspace(3) %5, i32 %.idx.11030, !dbg !192
  %add.ptr188.11032 = getelementptr i8, ptr addrspace(3) %218, i32 %add.ptr39.idx, !dbg !192
  store i64 %qk_fetch.sroa.0.0.copyload2285, ptr addrspace(3) %add.ptr188.11032, align 8, !dbg !193
  %add.ptr188.1.11036 = getelementptr i8, ptr addrspace(3) %218, i32 %add.ptr39.idx.1, !dbg !192
  store i64 %qk_fetch.sroa.38.0.copyload2302, ptr addrspace(3) %add.ptr188.1.11036, align 8, !dbg !193
  %219 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %217, !dbg !190
  %add.ptr148.1.1 = getelementptr inbounds i8, ptr addrspace(4) %219, i64 1024, !dbg !190
  %qk_fetch.sroa.0.0.copyload2286 = load i64, ptr addrspace(4) %add.ptr148.1.1, align 16, !dbg !191
  %qk_fetch.sroa.38.0.add.ptr148.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %219, i64 1032, !dbg !191
  %qk_fetch.sroa.38.0.copyload2303 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr148.1.1.sroa_idx, align 8, !dbg !191
  %220 = getelementptr i8, ptr addrspace(3) %218, i32 1024, !dbg !192
  %add.ptr188.11014.1 = getelementptr i8, ptr addrspace(3) %220, i32 %add.ptr39.idx.1, !dbg !192
  store i64 %qk_fetch.sroa.0.0.copyload2286, ptr addrspace(3) %add.ptr188.11014.1, align 8, !dbg !193
  %add.ptr188.1.1.1 = getelementptr i8, ptr addrspace(3) %220, i32 %add.ptr39.idx, !dbg !192
  store i64 %qk_fetch.sroa.38.0.copyload2303, ptr addrspace(3) %add.ptr188.1.1.1, align 8, !dbg !193
  fence syncscope("warp") release, !dbg !194
  tail call void @llvm.mxc.barrier.warp(), !dbg !197
  fence syncscope("warp") acquire, !dbg !198
  %mul212.1 = shl nuw nsw i32 %next_slot.sroa.0.1, 10
  %add229.1 = or disjoint i32 %add217, %mul212.1
  %221 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add229.1, !dbg !199
  %add.ptr245.idx.11040 = shl nuw nsw i32 %xor56, 4, !dbg !199
  %add.ptr245.11041 = getelementptr i8, ptr addrspace(3) %221, i32 %add.ptr245.idx.11040, !dbg !199
  %k_local.sroa.0.0.copyload.11042 = load <4 x half>, ptr addrspace(3) %add.ptr245.11041, align 8, !dbg !200
  %222 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11042, <4 x half> %9, <4 x float> zeroinitializer), !dbg !201
  %add.ptr245.idx.1.1 = shl nuw nsw i32 %xor56.1, 4, !dbg !199
  %add.ptr245.1.1 = getelementptr i8, ptr addrspace(3) %221, i32 %add.ptr245.idx.1.1, !dbg !199
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr245.1.1, align 8, !dbg !200
  %223 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %10, <4 x float> %222), !dbg !201
  %add.ptr245.idx.2.1 = shl nuw nsw i32 %xor56.2, 4, !dbg !199
  %add.ptr245.2.1 = getelementptr i8, ptr addrspace(3) %221, i32 %add.ptr245.idx.2.1, !dbg !199
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr245.2.1, align 8, !dbg !200
  %224 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %11, <4 x float> %223), !dbg !201
  %add.ptr245.idx.3.1 = shl nuw nsw i32 %xor56.3, 4, !dbg !199
  %add.ptr245.3.1 = getelementptr i8, ptr addrspace(3) %221, i32 %add.ptr245.idx.3.1, !dbg !199
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr245.3.1, align 8, !dbg !200
  %225 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %12, <4 x float> %224), !dbg !201
  %mul266.1 = shl nuw nsw i32 %216, 4
  %add270.1 = add nuw nsw i32 %mul266.1, %mul269
  %cmp273.not.11043 = icmp ugt i32 %add270.1, %1, !dbg !202
  %226 = extractelement <4 x float> %225, i64 1, !dbg !203
  %227 = extractelement <4 x float> %225, i64 2, !dbg !203
  %228 = extractelement <4 x float> %225, i64 3, !dbg !203
  %229 = extractelement <4 x float> %225, i64 0
  %spec.select2373 = select i1 %cmp273.not.11043, float 0xFFF0000000000000, float %229, !dbg !203
  %scores.sroa.23.16.vec.insert2413 = insertelement <4 x float> poison, float %spec.select2373, i64 0, !dbg !204
  %cmp273.not.1.1.not = icmp ult i32 %add270.1, %1, !dbg !202
  %condval.0.1.1 = select i1 %cmp273.not.1.1.not, float %226, float 0xFFF0000000000000, !dbg !203
  %scores.sroa.23.20.vec.insert2419 = insertelement <4 x float> %scores.sroa.23.16.vec.insert2413, float %condval.0.1.1, i64 1, !dbg !204
  %add271.2.1 = or disjoint i32 %add270.1, 2, !dbg !205
  %cmp273.not.2.1 = icmp ugt i32 %add271.2.1, %1, !dbg !202
  %condval.0.2.1 = select i1 %cmp273.not.2.1, float 0xFFF0000000000000, float %227, !dbg !203
  %scores.sroa.23.24.vec.insert2426 = insertelement <4 x float> %scores.sroa.23.20.vec.insert2419, float %condval.0.2.1, i64 2, !dbg !204
  %add271.3.1 = or disjoint i32 %add270.1, 3, !dbg !205
  %cmp273.not.3.1 = icmp ugt i32 %add271.3.1, %1, !dbg !202
  %condval.0.3.1 = select i1 %cmp273.not.3.1, float 0xFFF0000000000000, float %228, !dbg !203
  %scores.sroa.23.28.vec.insert2433 = insertelement <4 x float> %scores.sroa.23.24.vec.insert2426, float %condval.0.3.1, i64 3, !dbg !204
  %xor289.1 = xor i32 %next_slot.sroa.0.1, 1, !dbg !209
  br label %if.end291.1, !dbg !206

if.end291.1:                                      ; preds = %for.cond134.preheader.1, %if.end291
  %scores.sroa.23.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end291 ], [ %scores.sroa.23.28.vec.insert2433, %for.cond134.preheader.1 ], !dbg !207
  %has_valid.sroa.0.1.1 = phi i32 [ %has_valid.sroa.0.1, %if.end291 ], [ 1, %for.cond134.preheader.1 ], !dbg !207
  %next_slot.sroa.0.1.1 = phi i32 [ %next_slot.sroa.0.1, %if.end291 ], [ %xor289.1, %for.cond134.preheader.1 ], !dbg !207
  %230 = or disjoint i64 %14, 2, !dbg !208
  %arrayidx126.2 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %230, !dbg !65
  %231 = load i32, ptr addrspace(1) %arrayidx126.2, align 4, !dbg !65, !tbaa !30
  %or.cond963.2 = icmp ugt i32 %231, %invariant.umin, !dbg !66
  br i1 %or.cond963.2, label %if.end291.2, label %for.cond134.preheader.2, !dbg !66

for.cond134.preheader.2:                          ; preds = %if.end291.1
  %mul140.2 = shl nuw nsw i32 %231, 10
  %add143.2 = add nuw nsw i32 %add141, %mul140.2
  %232 = zext nneg i32 %add143.2 to i64, !dbg !189
  %add.ptr148.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %232, !dbg !190
  %qk_fetch.sroa.0.0.copyload2287 = load i64, ptr addrspace(4) %add.ptr148.2, align 16, !dbg !191
  %qk_fetch.sroa.38.0.add.ptr148.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr148.2, i64 8, !dbg !191
  %qk_fetch.sroa.38.0.copyload2304 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr148.2.sroa_idx, align 8, !dbg !191
  %.idx.2 = shl nuw nsw i32 %next_slot.sroa.0.1.1, 11, !dbg !192
  %233 = getelementptr i8, ptr addrspace(3) %5, i32 %.idx.2, !dbg !192
  %add.ptr188.2 = getelementptr i8, ptr addrspace(3) %233, i32 %add.ptr39.idx, !dbg !192
  store i64 %qk_fetch.sroa.0.0.copyload2287, ptr addrspace(3) %add.ptr188.2, align 8, !dbg !193
  %add.ptr188.1.2 = getelementptr i8, ptr addrspace(3) %233, i32 %add.ptr39.idx.1, !dbg !192
  store i64 %qk_fetch.sroa.38.0.copyload2304, ptr addrspace(3) %add.ptr188.1.2, align 8, !dbg !193
  %234 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %232, !dbg !190
  %add.ptr148.1.2 = getelementptr inbounds i8, ptr addrspace(4) %234, i64 1024, !dbg !190
  %qk_fetch.sroa.0.0.copyload2288 = load i64, ptr addrspace(4) %add.ptr148.1.2, align 16, !dbg !191
  %qk_fetch.sroa.38.0.add.ptr148.1.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %234, i64 1032, !dbg !191
  %qk_fetch.sroa.38.0.copyload2305 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr148.1.2.sroa_idx, align 8, !dbg !191
  %235 = getelementptr i8, ptr addrspace(3) %233, i32 1024, !dbg !192
  %add.ptr188.11014.2 = getelementptr i8, ptr addrspace(3) %235, i32 %add.ptr39.idx.1, !dbg !192
  store i64 %qk_fetch.sroa.0.0.copyload2288, ptr addrspace(3) %add.ptr188.11014.2, align 8, !dbg !193
  %add.ptr188.1.1.2 = getelementptr i8, ptr addrspace(3) %235, i32 %add.ptr39.idx, !dbg !192
  store i64 %qk_fetch.sroa.38.0.copyload2305, ptr addrspace(3) %add.ptr188.1.1.2, align 8, !dbg !193
  fence syncscope("warp") release, !dbg !194
  tail call void @llvm.mxc.barrier.warp(), !dbg !197
  fence syncscope("warp") acquire, !dbg !198
  %mul212.2 = shl nuw nsw i32 %next_slot.sroa.0.1.1, 10
  %add229.2 = or disjoint i32 %add217, %mul212.2
  %236 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add229.2, !dbg !199
  %add.ptr245.idx.21051 = shl nuw nsw i32 %xor56, 4, !dbg !199
  %add.ptr245.21052 = getelementptr i8, ptr addrspace(3) %236, i32 %add.ptr245.idx.21051, !dbg !199
  %k_local.sroa.0.0.copyload.21053 = load <4 x half>, ptr addrspace(3) %add.ptr245.21052, align 8, !dbg !200
  %237 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.21053, <4 x half> %9, <4 x float> zeroinitializer), !dbg !201
  %add.ptr245.idx.1.2 = shl nuw nsw i32 %xor56.1, 4, !dbg !199
  %add.ptr245.1.2 = getelementptr i8, ptr addrspace(3) %236, i32 %add.ptr245.idx.1.2, !dbg !199
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr245.1.2, align 8, !dbg !200
  %238 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %10, <4 x float> %237), !dbg !201
  %add.ptr245.idx.2.2 = shl nuw nsw i32 %xor56.2, 4, !dbg !199
  %add.ptr245.2.2 = getelementptr i8, ptr addrspace(3) %236, i32 %add.ptr245.idx.2.2, !dbg !199
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %add.ptr245.2.2, align 8, !dbg !200
  %239 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %11, <4 x float> %238), !dbg !201
  %add.ptr245.idx.3.2 = shl nuw nsw i32 %xor56.3, 4, !dbg !199
  %add.ptr245.3.2 = getelementptr i8, ptr addrspace(3) %236, i32 %add.ptr245.idx.3.2, !dbg !199
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %add.ptr245.3.2, align 8, !dbg !200
  %240 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %12, <4 x float> %239), !dbg !201
  %mul266.2 = shl nuw nsw i32 %231, 4
  %add270.2 = add nuw nsw i32 %mul266.2, %mul269
  %cmp273.not.21054 = icmp ugt i32 %add270.2, %1, !dbg !202
  %241 = extractelement <4 x float> %240, i64 1, !dbg !203
  %242 = extractelement <4 x float> %240, i64 2, !dbg !203
  %243 = extractelement <4 x float> %240, i64 3, !dbg !203
  %244 = extractelement <4 x float> %240, i64 0
  %spec.select2374 = select i1 %cmp273.not.21054, float 0xFFF0000000000000, float %244, !dbg !203
  %scores.sroa.44.32.vec.insert2442 = insertelement <4 x float> poison, float %spec.select2374, i64 0, !dbg !204
  %cmp273.not.1.2.not = icmp ult i32 %add270.2, %1, !dbg !202
  %condval.0.1.2 = select i1 %cmp273.not.1.2.not, float %241, float 0xFFF0000000000000, !dbg !203
  %scores.sroa.44.36.vec.insert2448 = insertelement <4 x float> %scores.sroa.44.32.vec.insert2442, float %condval.0.1.2, i64 1, !dbg !204
  %add271.2.2 = or disjoint i32 %add270.2, 2, !dbg !205
  %cmp273.not.2.2 = icmp ugt i32 %add271.2.2, %1, !dbg !202
  %condval.0.2.2 = select i1 %cmp273.not.2.2, float 0xFFF0000000000000, float %242, !dbg !203
  %scores.sroa.44.40.vec.insert2455 = insertelement <4 x float> %scores.sroa.44.36.vec.insert2448, float %condval.0.2.2, i64 2, !dbg !204
  %add271.3.2 = or disjoint i32 %add270.2, 3, !dbg !205
  %cmp273.not.3.2 = icmp ugt i32 %add271.3.2, %1, !dbg !202
  %condval.0.3.2 = select i1 %cmp273.not.3.2, float 0xFFF0000000000000, float %243, !dbg !203
  %scores.sroa.44.44.vec.insert2462 = insertelement <4 x float> %scores.sroa.44.40.vec.insert2455, float %condval.0.3.2, i64 3, !dbg !204
  %xor289.2 = xor i32 %next_slot.sroa.0.1.1, 1, !dbg !209
  br label %if.end291.2, !dbg !206

if.end291.2:                                      ; preds = %for.cond134.preheader.2, %if.end291.1
  %scores.sroa.44.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end291.1 ], [ %scores.sroa.44.44.vec.insert2462, %for.cond134.preheader.2 ], !dbg !207
  %has_valid.sroa.0.1.2 = phi i32 [ %has_valid.sroa.0.1.1, %if.end291.1 ], [ 1, %for.cond134.preheader.2 ], !dbg !207
  %next_slot.sroa.0.1.2 = phi i32 [ %next_slot.sroa.0.1.1, %if.end291.1 ], [ %xor289.2, %for.cond134.preheader.2 ], !dbg !207
  %245 = or disjoint i64 %14, 3, !dbg !208
  %arrayidx126.3 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %245, !dbg !65
  %246 = load i32, ptr addrspace(1) %arrayidx126.3, align 4, !dbg !65, !tbaa !30
  %or.cond963.3 = icmp ugt i32 %246, %invariant.umin, !dbg !66
  br i1 %or.cond963.3, label %if.end291.3, label %for.cond134.preheader.3, !dbg !66

for.cond134.preheader.3:                          ; preds = %if.end291.2
  %mul140.3 = shl nuw nsw i32 %246, 10
  %add143.3 = add nuw nsw i32 %add141, %mul140.3
  %247 = zext nneg i32 %add143.3 to i64, !dbg !189
  %add.ptr148.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %247, !dbg !190
  %qk_fetch.sroa.0.0.copyload2289 = load i64, ptr addrspace(4) %add.ptr148.3, align 16, !dbg !191
  %qk_fetch.sroa.38.0.add.ptr148.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr148.3, i64 8, !dbg !191
  %qk_fetch.sroa.38.0.copyload2306 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr148.3.sroa_idx, align 8, !dbg !191
  %.idx.3 = shl nuw nsw i32 %next_slot.sroa.0.1.2, 11, !dbg !192
  %248 = getelementptr i8, ptr addrspace(3) %5, i32 %.idx.3, !dbg !192
  %add.ptr188.3 = getelementptr i8, ptr addrspace(3) %248, i32 %add.ptr39.idx, !dbg !192
  store i64 %qk_fetch.sroa.0.0.copyload2289, ptr addrspace(3) %add.ptr188.3, align 8, !dbg !193
  %add.ptr188.1.3 = getelementptr i8, ptr addrspace(3) %248, i32 %add.ptr39.idx.1, !dbg !192
  store i64 %qk_fetch.sroa.38.0.copyload2306, ptr addrspace(3) %add.ptr188.1.3, align 8, !dbg !193
  %249 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %247, !dbg !190
  %add.ptr148.1.3 = getelementptr inbounds i8, ptr addrspace(4) %249, i64 1024, !dbg !190
  %qk_fetch.sroa.0.0.copyload2290 = load i64, ptr addrspace(4) %add.ptr148.1.3, align 16, !dbg !191
  %qk_fetch.sroa.38.0.add.ptr148.1.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %249, i64 1032, !dbg !191
  %qk_fetch.sroa.38.0.copyload2307 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr148.1.3.sroa_idx, align 8, !dbg !191
  %250 = getelementptr i8, ptr addrspace(3) %248, i32 1024, !dbg !192
  %add.ptr188.11014.3 = getelementptr i8, ptr addrspace(3) %250, i32 %add.ptr39.idx.1, !dbg !192
  store i64 %qk_fetch.sroa.0.0.copyload2290, ptr addrspace(3) %add.ptr188.11014.3, align 8, !dbg !193
  %add.ptr188.1.1.3 = getelementptr i8, ptr addrspace(3) %250, i32 %add.ptr39.idx, !dbg !192
  store i64 %qk_fetch.sroa.38.0.copyload2307, ptr addrspace(3) %add.ptr188.1.1.3, align 8, !dbg !193
  fence syncscope("warp") release, !dbg !194
  tail call void @llvm.mxc.barrier.warp(), !dbg !197
  fence syncscope("warp") acquire, !dbg !198
  %mul212.3 = shl nuw nsw i32 %next_slot.sroa.0.1.2, 10
  %add229.3 = or disjoint i32 %add217, %mul212.3
  %251 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add229.3, !dbg !199
  %add.ptr245.idx.31062 = shl nuw nsw i32 %xor56, 4, !dbg !199
  %add.ptr245.31063 = getelementptr i8, ptr addrspace(3) %251, i32 %add.ptr245.idx.31062, !dbg !199
  %k_local.sroa.0.0.copyload.31064 = load <4 x half>, ptr addrspace(3) %add.ptr245.31063, align 8, !dbg !200
  %252 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.31064, <4 x half> %9, <4 x float> zeroinitializer), !dbg !201
  %add.ptr245.idx.1.3 = shl nuw nsw i32 %xor56.1, 4, !dbg !199
  %add.ptr245.1.3 = getelementptr i8, ptr addrspace(3) %251, i32 %add.ptr245.idx.1.3, !dbg !199
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr245.1.3, align 8, !dbg !200
  %253 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %10, <4 x float> %252), !dbg !201
  %add.ptr245.idx.2.3 = shl nuw nsw i32 %xor56.2, 4, !dbg !199
  %add.ptr245.2.3 = getelementptr i8, ptr addrspace(3) %251, i32 %add.ptr245.idx.2.3, !dbg !199
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %add.ptr245.2.3, align 8, !dbg !200
  %254 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %11, <4 x float> %253), !dbg !201
  %add.ptr245.idx.3.3 = shl nuw nsw i32 %xor56.3, 4, !dbg !199
  %add.ptr245.3.3 = getelementptr i8, ptr addrspace(3) %251, i32 %add.ptr245.idx.3.3, !dbg !199
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %add.ptr245.3.3, align 8, !dbg !200
  %255 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %12, <4 x float> %254), !dbg !201
  %mul266.3 = shl nuw nsw i32 %246, 4
  %add270.3 = add nuw nsw i32 %mul266.3, %mul269
  %cmp273.not.31065 = icmp ugt i32 %add270.3, %1, !dbg !202
  %256 = extractelement <4 x float> %255, i64 1, !dbg !203
  %257 = extractelement <4 x float> %255, i64 2, !dbg !203
  %258 = extractelement <4 x float> %255, i64 3, !dbg !203
  %259 = extractelement <4 x float> %255, i64 0
  %spec.select2375 = select i1 %cmp273.not.31065, float 0xFFF0000000000000, float %259, !dbg !203
  %scores.sroa.65.48.vec.insert2471 = insertelement <4 x float> poison, float %spec.select2375, i64 0, !dbg !204
  %cmp273.not.1.3.not = icmp ult i32 %add270.3, %1, !dbg !202
  %condval.0.1.3 = select i1 %cmp273.not.1.3.not, float %256, float 0xFFF0000000000000, !dbg !203
  %scores.sroa.65.52.vec.insert2477 = insertelement <4 x float> %scores.sroa.65.48.vec.insert2471, float %condval.0.1.3, i64 1, !dbg !204
  %add271.2.3 = or disjoint i32 %add270.3, 2, !dbg !205
  %cmp273.not.2.3 = icmp ugt i32 %add271.2.3, %1, !dbg !202
  %condval.0.2.3 = select i1 %cmp273.not.2.3, float 0xFFF0000000000000, float %257, !dbg !203
  %scores.sroa.65.56.vec.insert2484 = insertelement <4 x float> %scores.sroa.65.52.vec.insert2477, float %condval.0.2.3, i64 2, !dbg !204
  %add271.3.3 = or disjoint i32 %add270.3, 3, !dbg !205
  %cmp273.not.3.3 = icmp ugt i32 %add271.3.3, %1, !dbg !202
  %condval.0.3.3 = select i1 %cmp273.not.3.3, float 0xFFF0000000000000, float %258, !dbg !203
  %scores.sroa.65.60.vec.insert2491 = insertelement <4 x float> %scores.sroa.65.56.vec.insert2484, float %condval.0.3.3, i64 3, !dbg !204
  %xor289.3 = xor i32 %next_slot.sroa.0.1.2, 1, !dbg !209
  br label %if.end291.3, !dbg !206

if.end291.3:                                      ; preds = %for.cond134.preheader.3, %if.end291.2
  %scores.sroa.65.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end291.2 ], [ %scores.sroa.65.60.vec.insert2491, %for.cond134.preheader.3 ], !dbg !207
  %has_valid.sroa.0.1.3 = phi i32 [ %has_valid.sroa.0.1.2, %if.end291.2 ], [ 1, %for.cond134.preheader.3 ], !dbg !207
  %next_slot.sroa.0.1.3 = phi i32 [ %next_slot.sroa.0.1.2, %if.end291.2 ], [ %xor289.3, %for.cond134.preheader.3 ], !dbg !207
  %260 = or disjoint i64 %14, 4, !dbg !208
  %arrayidx126.4 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %260, !dbg !65
  %261 = load i32, ptr addrspace(1) %arrayidx126.4, align 4, !dbg !65, !tbaa !30
  %or.cond963.4 = icmp ugt i32 %261, %invariant.umin, !dbg !66
  br i1 %or.cond963.4, label %if.end291.4, label %for.cond134.preheader.4, !dbg !66

for.cond134.preheader.4:                          ; preds = %if.end291.3
  %mul140.4 = shl nuw nsw i32 %261, 10
  %add143.4 = add nuw nsw i32 %add141, %mul140.4
  %262 = zext nneg i32 %add143.4 to i64, !dbg !189
  %add.ptr148.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %262, !dbg !190
  %qk_fetch.sroa.0.0.copyload2291 = load i64, ptr addrspace(4) %add.ptr148.4, align 16, !dbg !191
  %qk_fetch.sroa.38.0.add.ptr148.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr148.4, i64 8, !dbg !191
  %qk_fetch.sroa.38.0.copyload2308 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr148.4.sroa_idx, align 8, !dbg !191
  %.idx.4 = shl nuw nsw i32 %next_slot.sroa.0.1.3, 11, !dbg !192
  %263 = getelementptr i8, ptr addrspace(3) %5, i32 %.idx.4, !dbg !192
  %add.ptr188.4 = getelementptr i8, ptr addrspace(3) %263, i32 %add.ptr39.idx, !dbg !192
  store i64 %qk_fetch.sroa.0.0.copyload2291, ptr addrspace(3) %add.ptr188.4, align 8, !dbg !193
  %add.ptr188.1.4 = getelementptr i8, ptr addrspace(3) %263, i32 %add.ptr39.idx.1, !dbg !192
  store i64 %qk_fetch.sroa.38.0.copyload2308, ptr addrspace(3) %add.ptr188.1.4, align 8, !dbg !193
  %264 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %262, !dbg !190
  %add.ptr148.1.4 = getelementptr inbounds i8, ptr addrspace(4) %264, i64 1024, !dbg !190
  %qk_fetch.sroa.0.0.copyload2292 = load i64, ptr addrspace(4) %add.ptr148.1.4, align 16, !dbg !191
  %qk_fetch.sroa.38.0.add.ptr148.1.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %264, i64 1032, !dbg !191
  %qk_fetch.sroa.38.0.copyload2309 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr148.1.4.sroa_idx, align 8, !dbg !191
  %265 = getelementptr i8, ptr addrspace(3) %263, i32 1024, !dbg !192
  %add.ptr188.11014.4 = getelementptr i8, ptr addrspace(3) %265, i32 %add.ptr39.idx.1, !dbg !192
  store i64 %qk_fetch.sroa.0.0.copyload2292, ptr addrspace(3) %add.ptr188.11014.4, align 8, !dbg !193
  %add.ptr188.1.1.4 = getelementptr i8, ptr addrspace(3) %265, i32 %add.ptr39.idx, !dbg !192
  store i64 %qk_fetch.sroa.38.0.copyload2309, ptr addrspace(3) %add.ptr188.1.1.4, align 8, !dbg !193
  fence syncscope("warp") release, !dbg !194
  tail call void @llvm.mxc.barrier.warp(), !dbg !197
  fence syncscope("warp") acquire, !dbg !198
  %mul212.4 = shl nuw nsw i32 %next_slot.sroa.0.1.3, 10
  %add229.4 = or disjoint i32 %add217, %mul212.4
  %266 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add229.4, !dbg !199
  %add.ptr245.idx.4 = shl nuw nsw i32 %xor56, 4, !dbg !199
  %add.ptr245.4 = getelementptr i8, ptr addrspace(3) %266, i32 %add.ptr245.idx.4, !dbg !199
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %add.ptr245.4, align 8, !dbg !200
  %267 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %9, <4 x float> zeroinitializer), !dbg !201
  %add.ptr245.idx.1.4 = shl nuw nsw i32 %xor56.1, 4, !dbg !199
  %add.ptr245.1.4 = getelementptr i8, ptr addrspace(3) %266, i32 %add.ptr245.idx.1.4, !dbg !199
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr245.1.4, align 8, !dbg !200
  %268 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %10, <4 x float> %267), !dbg !201
  %add.ptr245.idx.2.4 = shl nuw nsw i32 %xor56.2, 4, !dbg !199
  %add.ptr245.2.4 = getelementptr i8, ptr addrspace(3) %266, i32 %add.ptr245.idx.2.4, !dbg !199
  %k_local.sroa.0.0.copyload.2.4 = load <4 x half>, ptr addrspace(3) %add.ptr245.2.4, align 8, !dbg !200
  %269 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.4, <4 x half> %11, <4 x float> %268), !dbg !201
  %add.ptr245.idx.3.4 = shl nuw nsw i32 %xor56.3, 4, !dbg !199
  %add.ptr245.3.4 = getelementptr i8, ptr addrspace(3) %266, i32 %add.ptr245.idx.3.4, !dbg !199
  %k_local.sroa.0.0.copyload.3.4 = load <4 x half>, ptr addrspace(3) %add.ptr245.3.4, align 8, !dbg !200
  %270 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.4, <4 x half> %12, <4 x float> %269), !dbg !201
  %mul266.4 = shl nuw nsw i32 %261, 4
  %add270.4 = add nuw nsw i32 %mul266.4, %mul269
  %cmp273.not.4 = icmp ugt i32 %add270.4, %1, !dbg !202
  %271 = extractelement <4 x float> %270, i64 1, !dbg !203
  %272 = extractelement <4 x float> %270, i64 2, !dbg !203
  %273 = extractelement <4 x float> %270, i64 3, !dbg !203
  %274 = extractelement <4 x float> %270, i64 0
  %spec.select2376 = select i1 %cmp273.not.4, float 0xFFF0000000000000, float %274, !dbg !203
  %scores.sroa.86.64.vec.insert2500 = insertelement <4 x float> poison, float %spec.select2376, i64 0, !dbg !204
  %cmp273.not.1.4.not = icmp ult i32 %add270.4, %1, !dbg !202
  %condval.0.1.4 = select i1 %cmp273.not.1.4.not, float %271, float 0xFFF0000000000000, !dbg !203
  %scores.sroa.86.68.vec.insert2506 = insertelement <4 x float> %scores.sroa.86.64.vec.insert2500, float %condval.0.1.4, i64 1, !dbg !204
  %add271.2.4 = or disjoint i32 %add270.4, 2, !dbg !205
  %cmp273.not.2.4 = icmp ugt i32 %add271.2.4, %1, !dbg !202
  %condval.0.2.4 = select i1 %cmp273.not.2.4, float 0xFFF0000000000000, float %272, !dbg !203
  %scores.sroa.86.72.vec.insert2513 = insertelement <4 x float> %scores.sroa.86.68.vec.insert2506, float %condval.0.2.4, i64 2, !dbg !204
  %add271.3.4 = or disjoint i32 %add270.4, 3, !dbg !205
  %cmp273.not.3.4 = icmp ugt i32 %add271.3.4, %1, !dbg !202
  %condval.0.3.4 = select i1 %cmp273.not.3.4, float 0xFFF0000000000000, float %273, !dbg !203
  %scores.sroa.86.76.vec.insert2520 = insertelement <4 x float> %scores.sroa.86.72.vec.insert2513, float %condval.0.3.4, i64 3, !dbg !204
  %xor289.4 = xor i32 %next_slot.sroa.0.1.3, 1, !dbg !209
  br label %if.end291.4, !dbg !206

if.end291.4:                                      ; preds = %for.cond134.preheader.4, %if.end291.3
  %scores.sroa.86.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end291.3 ], [ %scores.sroa.86.76.vec.insert2520, %for.cond134.preheader.4 ], !dbg !207
  %has_valid.sroa.0.1.4 = phi i32 [ %has_valid.sroa.0.1.3, %if.end291.3 ], [ 1, %for.cond134.preheader.4 ], !dbg !207
  %next_slot.sroa.0.1.4 = phi i32 [ %next_slot.sroa.0.1.3, %if.end291.3 ], [ %xor289.4, %for.cond134.preheader.4 ], !dbg !207
  %275 = or disjoint i64 %14, 5, !dbg !208
  %arrayidx126.5 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %275, !dbg !65
  %276 = load i32, ptr addrspace(1) %arrayidx126.5, align 4, !dbg !65, !tbaa !30
  %or.cond963.5 = icmp ugt i32 %276, %invariant.umin, !dbg !66
  br i1 %or.cond963.5, label %if.end291.5, label %for.cond134.preheader.5, !dbg !66

for.cond134.preheader.5:                          ; preds = %if.end291.4
  %mul140.5 = shl nuw nsw i32 %276, 10
  %add143.5 = add nuw nsw i32 %add141, %mul140.5
  %277 = zext nneg i32 %add143.5 to i64, !dbg !189
  %add.ptr148.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %277, !dbg !190
  %qk_fetch.sroa.0.0.copyload2293 = load i64, ptr addrspace(4) %add.ptr148.5, align 16, !dbg !191
  %qk_fetch.sroa.38.0.add.ptr148.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr148.5, i64 8, !dbg !191
  %qk_fetch.sroa.38.0.copyload2310 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr148.5.sroa_idx, align 8, !dbg !191
  %.idx.5 = shl nuw nsw i32 %next_slot.sroa.0.1.4, 11, !dbg !192
  %278 = getelementptr i8, ptr addrspace(3) %5, i32 %.idx.5, !dbg !192
  %add.ptr188.5 = getelementptr i8, ptr addrspace(3) %278, i32 %add.ptr39.idx, !dbg !192
  store i64 %qk_fetch.sroa.0.0.copyload2293, ptr addrspace(3) %add.ptr188.5, align 8, !dbg !193
  %add.ptr188.1.5 = getelementptr i8, ptr addrspace(3) %278, i32 %add.ptr39.idx.1, !dbg !192
  store i64 %qk_fetch.sroa.38.0.copyload2310, ptr addrspace(3) %add.ptr188.1.5, align 8, !dbg !193
  %279 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %277, !dbg !190
  %add.ptr148.1.5 = getelementptr inbounds i8, ptr addrspace(4) %279, i64 1024, !dbg !190
  %qk_fetch.sroa.0.0.copyload2294 = load i64, ptr addrspace(4) %add.ptr148.1.5, align 16, !dbg !191
  %qk_fetch.sroa.38.0.add.ptr148.1.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %279, i64 1032, !dbg !191
  %qk_fetch.sroa.38.0.copyload2311 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr148.1.5.sroa_idx, align 8, !dbg !191
  %280 = getelementptr i8, ptr addrspace(3) %278, i32 1024, !dbg !192
  %add.ptr188.11014.5 = getelementptr i8, ptr addrspace(3) %280, i32 %add.ptr39.idx.1, !dbg !192
  store i64 %qk_fetch.sroa.0.0.copyload2294, ptr addrspace(3) %add.ptr188.11014.5, align 8, !dbg !193
  %add.ptr188.1.1.5 = getelementptr i8, ptr addrspace(3) %280, i32 %add.ptr39.idx, !dbg !192
  store i64 %qk_fetch.sroa.38.0.copyload2311, ptr addrspace(3) %add.ptr188.1.1.5, align 8, !dbg !193
  fence syncscope("warp") release, !dbg !194
  tail call void @llvm.mxc.barrier.warp(), !dbg !197
  fence syncscope("warp") acquire, !dbg !198
  %mul212.5 = shl nuw nsw i32 %next_slot.sroa.0.1.4, 10
  %add229.5 = or disjoint i32 %add217, %mul212.5
  %281 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add229.5, !dbg !199
  %add.ptr245.idx.5 = shl nuw nsw i32 %xor56, 4, !dbg !199
  %add.ptr245.5 = getelementptr i8, ptr addrspace(3) %281, i32 %add.ptr245.idx.5, !dbg !199
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %add.ptr245.5, align 8, !dbg !200
  %282 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %9, <4 x float> zeroinitializer), !dbg !201
  %add.ptr245.idx.1.5 = shl nuw nsw i32 %xor56.1, 4, !dbg !199
  %add.ptr245.1.5 = getelementptr i8, ptr addrspace(3) %281, i32 %add.ptr245.idx.1.5, !dbg !199
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr245.1.5, align 8, !dbg !200
  %283 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %10, <4 x float> %282), !dbg !201
  %add.ptr245.idx.2.5 = shl nuw nsw i32 %xor56.2, 4, !dbg !199
  %add.ptr245.2.5 = getelementptr i8, ptr addrspace(3) %281, i32 %add.ptr245.idx.2.5, !dbg !199
  %k_local.sroa.0.0.copyload.2.5 = load <4 x half>, ptr addrspace(3) %add.ptr245.2.5, align 8, !dbg !200
  %284 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.5, <4 x half> %11, <4 x float> %283), !dbg !201
  %add.ptr245.idx.3.5 = shl nuw nsw i32 %xor56.3, 4, !dbg !199
  %add.ptr245.3.5 = getelementptr i8, ptr addrspace(3) %281, i32 %add.ptr245.idx.3.5, !dbg !199
  %k_local.sroa.0.0.copyload.3.5 = load <4 x half>, ptr addrspace(3) %add.ptr245.3.5, align 8, !dbg !200
  %285 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.5, <4 x half> %12, <4 x float> %284), !dbg !201
  %mul266.5 = shl nuw nsw i32 %276, 4
  %add270.5 = add nuw nsw i32 %mul266.5, %mul269
  %cmp273.not.5 = icmp ugt i32 %add270.5, %1, !dbg !202
  %286 = extractelement <4 x float> %285, i64 1, !dbg !203
  %287 = extractelement <4 x float> %285, i64 2, !dbg !203
  %288 = extractelement <4 x float> %285, i64 3, !dbg !203
  %289 = extractelement <4 x float> %285, i64 0
  %spec.select2377 = select i1 %cmp273.not.5, float 0xFFF0000000000000, float %289, !dbg !203
  %scores.sroa.107.80.vec.insert2529 = insertelement <4 x float> poison, float %spec.select2377, i64 0, !dbg !204
  %cmp273.not.1.5.not = icmp ult i32 %add270.5, %1, !dbg !202
  %condval.0.1.5 = select i1 %cmp273.not.1.5.not, float %286, float 0xFFF0000000000000, !dbg !203
  %scores.sroa.107.84.vec.insert2535 = insertelement <4 x float> %scores.sroa.107.80.vec.insert2529, float %condval.0.1.5, i64 1, !dbg !204
  %add271.2.5 = or disjoint i32 %add270.5, 2, !dbg !205
  %cmp273.not.2.5 = icmp ugt i32 %add271.2.5, %1, !dbg !202
  %condval.0.2.5 = select i1 %cmp273.not.2.5, float 0xFFF0000000000000, float %287, !dbg !203
  %scores.sroa.107.88.vec.insert2542 = insertelement <4 x float> %scores.sroa.107.84.vec.insert2535, float %condval.0.2.5, i64 2, !dbg !204
  %add271.3.5 = or disjoint i32 %add270.5, 3, !dbg !205
  %cmp273.not.3.5 = icmp ugt i32 %add271.3.5, %1, !dbg !202
  %condval.0.3.5 = select i1 %cmp273.not.3.5, float 0xFFF0000000000000, float %288, !dbg !203
  %scores.sroa.107.92.vec.insert2549 = insertelement <4 x float> %scores.sroa.107.88.vec.insert2542, float %condval.0.3.5, i64 3, !dbg !204
  %xor289.5 = xor i32 %next_slot.sroa.0.1.4, 1, !dbg !209
  br label %if.end291.5, !dbg !206

if.end291.5:                                      ; preds = %for.cond134.preheader.5, %if.end291.4
  %scores.sroa.107.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end291.4 ], [ %scores.sroa.107.92.vec.insert2549, %for.cond134.preheader.5 ], !dbg !207
  %has_valid.sroa.0.1.5 = phi i32 [ %has_valid.sroa.0.1.4, %if.end291.4 ], [ 1, %for.cond134.preheader.5 ], !dbg !207
  %next_slot.sroa.0.1.5 = phi i32 [ %next_slot.sroa.0.1.4, %if.end291.4 ], [ %xor289.5, %for.cond134.preheader.5 ], !dbg !207
  %290 = or disjoint i64 %14, 6, !dbg !208
  %arrayidx126.6 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %290, !dbg !65
  %291 = load i32, ptr addrspace(1) %arrayidx126.6, align 4, !dbg !65, !tbaa !30
  %or.cond963.6 = icmp ugt i32 %291, %invariant.umin, !dbg !66
  br i1 %or.cond963.6, label %if.end291.6, label %for.cond134.preheader.6, !dbg !66

for.cond134.preheader.6:                          ; preds = %if.end291.5
  %mul140.6 = shl nuw nsw i32 %291, 10
  %add143.6 = add nuw nsw i32 %add141, %mul140.6
  %292 = zext nneg i32 %add143.6 to i64, !dbg !189
  %add.ptr148.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %292, !dbg !190
  %qk_fetch.sroa.0.0.copyload2295 = load i64, ptr addrspace(4) %add.ptr148.6, align 16, !dbg !191
  %qk_fetch.sroa.38.0.add.ptr148.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr148.6, i64 8, !dbg !191
  %qk_fetch.sroa.38.0.copyload2312 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr148.6.sroa_idx, align 8, !dbg !191
  %.idx.6 = shl nuw nsw i32 %next_slot.sroa.0.1.5, 11, !dbg !192
  %293 = getelementptr i8, ptr addrspace(3) %5, i32 %.idx.6, !dbg !192
  %add.ptr188.6 = getelementptr i8, ptr addrspace(3) %293, i32 %add.ptr39.idx, !dbg !192
  store i64 %qk_fetch.sroa.0.0.copyload2295, ptr addrspace(3) %add.ptr188.6, align 8, !dbg !193
  %add.ptr188.1.6 = getelementptr i8, ptr addrspace(3) %293, i32 %add.ptr39.idx.1, !dbg !192
  store i64 %qk_fetch.sroa.38.0.copyload2312, ptr addrspace(3) %add.ptr188.1.6, align 8, !dbg !193
  %294 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %292, !dbg !190
  %add.ptr148.1.6 = getelementptr inbounds i8, ptr addrspace(4) %294, i64 1024, !dbg !190
  %qk_fetch.sroa.0.0.copyload2296 = load i64, ptr addrspace(4) %add.ptr148.1.6, align 16, !dbg !191
  %qk_fetch.sroa.38.0.add.ptr148.1.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %294, i64 1032, !dbg !191
  %qk_fetch.sroa.38.0.copyload2313 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr148.1.6.sroa_idx, align 8, !dbg !191
  %295 = getelementptr i8, ptr addrspace(3) %293, i32 1024, !dbg !192
  %add.ptr188.11014.6 = getelementptr i8, ptr addrspace(3) %295, i32 %add.ptr39.idx.1, !dbg !192
  store i64 %qk_fetch.sroa.0.0.copyload2296, ptr addrspace(3) %add.ptr188.11014.6, align 8, !dbg !193
  %add.ptr188.1.1.6 = getelementptr i8, ptr addrspace(3) %295, i32 %add.ptr39.idx, !dbg !192
  store i64 %qk_fetch.sroa.38.0.copyload2313, ptr addrspace(3) %add.ptr188.1.1.6, align 8, !dbg !193
  fence syncscope("warp") release, !dbg !194
  tail call void @llvm.mxc.barrier.warp(), !dbg !197
  fence syncscope("warp") acquire, !dbg !198
  %mul212.6 = shl nuw nsw i32 %next_slot.sroa.0.1.5, 10
  %add229.6 = or disjoint i32 %add217, %mul212.6
  %296 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add229.6, !dbg !199
  %add.ptr245.idx.6 = shl nuw nsw i32 %xor56, 4, !dbg !199
  %add.ptr245.6 = getelementptr i8, ptr addrspace(3) %296, i32 %add.ptr245.idx.6, !dbg !199
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %add.ptr245.6, align 8, !dbg !200
  %297 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %9, <4 x float> zeroinitializer), !dbg !201
  %add.ptr245.idx.1.6 = shl nuw nsw i32 %xor56.1, 4, !dbg !199
  %add.ptr245.1.6 = getelementptr i8, ptr addrspace(3) %296, i32 %add.ptr245.idx.1.6, !dbg !199
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr245.1.6, align 8, !dbg !200
  %298 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %10, <4 x float> %297), !dbg !201
  %add.ptr245.idx.2.6 = shl nuw nsw i32 %xor56.2, 4, !dbg !199
  %add.ptr245.2.6 = getelementptr i8, ptr addrspace(3) %296, i32 %add.ptr245.idx.2.6, !dbg !199
  %k_local.sroa.0.0.copyload.2.6 = load <4 x half>, ptr addrspace(3) %add.ptr245.2.6, align 8, !dbg !200
  %299 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.6, <4 x half> %11, <4 x float> %298), !dbg !201
  %add.ptr245.idx.3.6 = shl nuw nsw i32 %xor56.3, 4, !dbg !199
  %add.ptr245.3.6 = getelementptr i8, ptr addrspace(3) %296, i32 %add.ptr245.idx.3.6, !dbg !199
  %k_local.sroa.0.0.copyload.3.6 = load <4 x half>, ptr addrspace(3) %add.ptr245.3.6, align 8, !dbg !200
  %300 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.6, <4 x half> %12, <4 x float> %299), !dbg !201
  %mul266.6 = shl nuw nsw i32 %291, 4
  %add270.6 = add nuw nsw i32 %mul266.6, %mul269
  %cmp273.not.6 = icmp ugt i32 %add270.6, %1, !dbg !202
  %301 = extractelement <4 x float> %300, i64 1, !dbg !203
  %302 = extractelement <4 x float> %300, i64 2, !dbg !203
  %303 = extractelement <4 x float> %300, i64 3, !dbg !203
  %304 = extractelement <4 x float> %300, i64 0
  %spec.select2378 = select i1 %cmp273.not.6, float 0xFFF0000000000000, float %304, !dbg !203
  %scores.sroa.128.96.vec.insert2558 = insertelement <4 x float> poison, float %spec.select2378, i64 0, !dbg !204
  %cmp273.not.1.6.not = icmp ult i32 %add270.6, %1, !dbg !202
  %condval.0.1.6 = select i1 %cmp273.not.1.6.not, float %301, float 0xFFF0000000000000, !dbg !203
  %scores.sroa.128.100.vec.insert2564 = insertelement <4 x float> %scores.sroa.128.96.vec.insert2558, float %condval.0.1.6, i64 1, !dbg !204
  %add271.2.6 = or disjoint i32 %add270.6, 2, !dbg !205
  %cmp273.not.2.6 = icmp ugt i32 %add271.2.6, %1, !dbg !202
  %condval.0.2.6 = select i1 %cmp273.not.2.6, float 0xFFF0000000000000, float %302, !dbg !203
  %scores.sroa.128.104.vec.insert2571 = insertelement <4 x float> %scores.sroa.128.100.vec.insert2564, float %condval.0.2.6, i64 2, !dbg !204
  %add271.3.6 = or disjoint i32 %add270.6, 3, !dbg !205
  %cmp273.not.3.6 = icmp ugt i32 %add271.3.6, %1, !dbg !202
  %condval.0.3.6 = select i1 %cmp273.not.3.6, float 0xFFF0000000000000, float %303, !dbg !203
  %scores.sroa.128.108.vec.insert2578 = insertelement <4 x float> %scores.sroa.128.104.vec.insert2571, float %condval.0.3.6, i64 3, !dbg !204
  %xor289.6 = xor i32 %next_slot.sroa.0.1.5, 1, !dbg !209
  br label %if.end291.6, !dbg !206

if.end291.6:                                      ; preds = %for.cond134.preheader.6, %if.end291.5
  %scores.sroa.128.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end291.5 ], [ %scores.sroa.128.108.vec.insert2578, %for.cond134.preheader.6 ], !dbg !207
  %has_valid.sroa.0.1.6 = phi i32 [ %has_valid.sroa.0.1.5, %if.end291.5 ], [ 1, %for.cond134.preheader.6 ], !dbg !207
  %next_slot.sroa.0.1.6 = phi i32 [ %next_slot.sroa.0.1.5, %if.end291.5 ], [ %xor289.6, %for.cond134.preheader.6 ], !dbg !207
  %305 = or disjoint i64 %14, 7, !dbg !208
  %arrayidx126.7 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %305, !dbg !65
  %306 = load i32, ptr addrspace(1) %arrayidx126.7, align 4, !dbg !65, !tbaa !30
  %or.cond963.7 = icmp ugt i32 %306, %invariant.umin, !dbg !66
  br i1 %or.cond963.7, label %if.end291.7, label %for.cond134.preheader.7, !dbg !66

for.cond134.preheader.7:                          ; preds = %if.end291.6
  %mul140.7 = shl nuw nsw i32 %306, 10
  %add143.7 = add nuw nsw i32 %add141, %mul140.7
  %307 = zext nneg i32 %add143.7 to i64, !dbg !189
  %add.ptr148.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %307, !dbg !190
  %qk_fetch.sroa.0.0.copyload2297 = load i64, ptr addrspace(4) %add.ptr148.7, align 16, !dbg !191
  %qk_fetch.sroa.38.0.add.ptr148.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr148.7, i64 8, !dbg !191
  %qk_fetch.sroa.38.0.copyload2314 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr148.7.sroa_idx, align 8, !dbg !191
  %.idx.7 = shl nuw nsw i32 %next_slot.sroa.0.1.6, 11, !dbg !192
  %308 = getelementptr i8, ptr addrspace(3) %5, i32 %.idx.7, !dbg !192
  %add.ptr188.7 = getelementptr i8, ptr addrspace(3) %308, i32 %add.ptr39.idx, !dbg !192
  store i64 %qk_fetch.sroa.0.0.copyload2297, ptr addrspace(3) %add.ptr188.7, align 8, !dbg !193
  %add.ptr188.1.7 = getelementptr i8, ptr addrspace(3) %308, i32 %add.ptr39.idx.1, !dbg !192
  store i64 %qk_fetch.sroa.38.0.copyload2314, ptr addrspace(3) %add.ptr188.1.7, align 8, !dbg !193
  %309 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %307, !dbg !190
  %add.ptr148.1.7 = getelementptr inbounds i8, ptr addrspace(4) %309, i64 1024, !dbg !190
  %qk_fetch.sroa.0.0.copyload2298 = load i64, ptr addrspace(4) %add.ptr148.1.7, align 16, !dbg !191
  %qk_fetch.sroa.38.0.add.ptr148.1.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %309, i64 1032, !dbg !191
  %qk_fetch.sroa.38.0.copyload2315 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr148.1.7.sroa_idx, align 8, !dbg !191
  %310 = getelementptr i8, ptr addrspace(3) %308, i32 1024, !dbg !192
  %add.ptr188.11014.7 = getelementptr i8, ptr addrspace(3) %310, i32 %add.ptr39.idx.1, !dbg !192
  store i64 %qk_fetch.sroa.0.0.copyload2298, ptr addrspace(3) %add.ptr188.11014.7, align 8, !dbg !193
  %add.ptr188.1.1.7 = getelementptr i8, ptr addrspace(3) %310, i32 %add.ptr39.idx, !dbg !192
  store i64 %qk_fetch.sroa.38.0.copyload2315, ptr addrspace(3) %add.ptr188.1.1.7, align 8, !dbg !193
  fence syncscope("warp") release, !dbg !194
  tail call void @llvm.mxc.barrier.warp(), !dbg !197
  fence syncscope("warp") acquire, !dbg !198
  %mul212.7 = shl nuw nsw i32 %next_slot.sroa.0.1.6, 10
  %add229.7 = or disjoint i32 %add217, %mul212.7
  %311 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add229.7, !dbg !199
  %add.ptr245.idx.7 = shl nuw nsw i32 %xor56, 4, !dbg !199
  %add.ptr245.7 = getelementptr i8, ptr addrspace(3) %311, i32 %add.ptr245.idx.7, !dbg !199
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %add.ptr245.7, align 8, !dbg !200
  %312 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %9, <4 x float> zeroinitializer), !dbg !201
  %add.ptr245.idx.1.7 = shl nuw nsw i32 %xor56.1, 4, !dbg !199
  %add.ptr245.1.7 = getelementptr i8, ptr addrspace(3) %311, i32 %add.ptr245.idx.1.7, !dbg !199
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr245.1.7, align 8, !dbg !200
  %313 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %10, <4 x float> %312), !dbg !201
  %add.ptr245.idx.2.7 = shl nuw nsw i32 %xor56.2, 4, !dbg !199
  %add.ptr245.2.7 = getelementptr i8, ptr addrspace(3) %311, i32 %add.ptr245.idx.2.7, !dbg !199
  %k_local.sroa.0.0.copyload.2.7 = load <4 x half>, ptr addrspace(3) %add.ptr245.2.7, align 8, !dbg !200
  %314 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.7, <4 x half> %11, <4 x float> %313), !dbg !201
  %add.ptr245.idx.3.7 = shl nuw nsw i32 %xor56.3, 4, !dbg !199
  %add.ptr245.3.7 = getelementptr i8, ptr addrspace(3) %311, i32 %add.ptr245.idx.3.7, !dbg !199
  %k_local.sroa.0.0.copyload.3.7 = load <4 x half>, ptr addrspace(3) %add.ptr245.3.7, align 8, !dbg !200
  %315 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.7, <4 x half> %12, <4 x float> %314), !dbg !201
  %mul266.7 = shl nuw nsw i32 %306, 4
  %add270.7 = add nuw nsw i32 %mul266.7, %mul269
  %cmp273.not.7 = icmp ugt i32 %add270.7, %1, !dbg !202
  %316 = extractelement <4 x float> %315, i64 1, !dbg !203
  %317 = extractelement <4 x float> %315, i64 2, !dbg !203
  %318 = extractelement <4 x float> %315, i64 3, !dbg !203
  %319 = extractelement <4 x float> %315, i64 0
  %spec.select2379 = select i1 %cmp273.not.7, float 0xFFF0000000000000, float %319, !dbg !203
  %scores.sroa.149.112.vec.insert2587 = insertelement <4 x float> poison, float %spec.select2379, i64 0, !dbg !204
  %cmp273.not.1.7.not = icmp ult i32 %add270.7, %1, !dbg !202
  %condval.0.1.7 = select i1 %cmp273.not.1.7.not, float %316, float 0xFFF0000000000000, !dbg !203
  %scores.sroa.149.116.vec.insert2593 = insertelement <4 x float> %scores.sroa.149.112.vec.insert2587, float %condval.0.1.7, i64 1, !dbg !204
  %add271.2.7 = or disjoint i32 %add270.7, 2, !dbg !205
  %cmp273.not.2.7 = icmp ugt i32 %add271.2.7, %1, !dbg !202
  %condval.0.2.7 = select i1 %cmp273.not.2.7, float 0xFFF0000000000000, float %317, !dbg !203
  %scores.sroa.149.120.vec.insert2600 = insertelement <4 x float> %scores.sroa.149.116.vec.insert2593, float %condval.0.2.7, i64 2, !dbg !204
  %add271.3.7 = or disjoint i32 %add270.7, 3, !dbg !205
  %cmp273.not.3.7 = icmp ugt i32 %add271.3.7, %1, !dbg !202
  %condval.0.3.7 = select i1 %cmp273.not.3.7, float 0xFFF0000000000000, float %318, !dbg !203
  %scores.sroa.149.124.vec.insert2607 = insertelement <4 x float> %scores.sroa.149.120.vec.insert2600, float %condval.0.3.7, i64 3, !dbg !204
  %xor289.7 = xor i32 %next_slot.sroa.0.1.6, 1, !dbg !209
  br label %if.end291.7, !dbg !206

if.end291.7:                                      ; preds = %for.cond134.preheader.7, %if.end291.6
  %scores.sroa.149.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end291.6 ], [ %scores.sroa.149.124.vec.insert2607, %for.cond134.preheader.7 ], !dbg !207
  %has_valid.sroa.0.1.7 = phi i32 [ %has_valid.sroa.0.1.6, %if.end291.6 ], [ 1, %for.cond134.preheader.7 ], !dbg !207
  %next_slot.sroa.0.1.7 = phi i32 [ %next_slot.sroa.0.1.6, %if.end291.6 ], [ %xor289.7, %for.cond134.preheader.7 ], !dbg !207
  %tobool.not = icmp eq i32 %has_valid.sroa.0.1.7, 0, !dbg !210
  br i1 %tobool.not, label %if.end432, label %for.body303.preheader, !dbg !210

if.end432:                                        ; preds = %for.body303.preheader, %if.end291.7
  %320 = phi <4 x half> [ zeroinitializer, %if.end291.7 ], [ %189, %for.body303.preheader ], !dbg !207
  %321 = phi <4 x half> [ zeroinitializer, %if.end291.7 ], [ %173, %for.body303.preheader ], !dbg !207
  %322 = phi <4 x half> [ zeroinitializer, %if.end291.7 ], [ %157, %for.body303.preheader ], !dbg !207
  %323 = phi <4 x half> [ zeroinitializer, %if.end291.7 ], [ %141, %for.body303.preheader ], !dbg !207
  %324 = phi <4 x half> [ zeroinitializer, %if.end291.7 ], [ %125, %for.body303.preheader ], !dbg !207
  %325 = phi <4 x half> [ zeroinitializer, %if.end291.7 ], [ %109, %for.body303.preheader ], !dbg !207
  %326 = phi <4 x half> [ zeroinitializer, %if.end291.7 ], [ %93, %for.body303.preheader ], !dbg !207
  %327 = phi <4 x half> [ zeroinitializer, %if.end291.7 ], [ %77, %for.body303.preheader ], !dbg !207
  %denominator.sroa.0.1 = phi float [ 0.000000e+00, %if.end291.7 ], [ %add430, %for.body303.preheader ], !dbg !207
  %328 = shl nuw nsw i32 %2, 4
  %mul476 = and i32 %328, 16128
  %and481 = shl nuw nsw i32 %2, 2
  %mul482 = and i32 %and481, 60
  %329 = or disjoint i32 %mul476, %mul482
  %add477 = or disjoint i32 %329, %mul139
  %330 = and i32 %328, 240
  %331 = and i32 %13, 3
  %xor530893 = xor i32 %331, %and60
  %332 = shl nuw nsw i32 %2, 8
  %333 = and i32 %332, 768
  %334 = and i32 %and481, 48
  %335 = and i32 %2, 3
  %336 = xor i32 %and60, %335
  %337 = load i32, ptr addrspace(1) %arrayidx126, align 4, !dbg !211, !tbaa !30
  %or.cond964 = icmp ugt i32 %337, %invariant.umin, !dbg !212
  br i1 %or.cond964, label %if.end601, label %for.cond466.preheader, !dbg !212

for.cond466.preheader:                            ; preds = %if.end432
  %mul472 = shl nuw nsw i32 %337, 10
  %add479 = add nuw nsw i32 %add477, %mul472
  %338 = zext nneg i32 %add479 to i64, !dbg !213
  %add.ptr485 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %338, !dbg !214
  %339 = load i64, ptr addrspace(4) %add.ptr485, align 8, !dbg !215
  %340 = or disjoint i64 %338, 64, !dbg !216
  %add.ptr485.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %340, !dbg !214
  %341 = load i64, ptr addrspace(4) %add.ptr485.1, align 8, !dbg !215
  %342 = or disjoint i64 %338, 128, !dbg !216
  %add.ptr485.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %342, !dbg !214
  %343 = load i64, ptr addrspace(4) %add.ptr485.2, align 8, !dbg !215
  %344 = or disjoint i64 %338, 192, !dbg !216
  %add.ptr485.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %344, !dbg !214
  %345 = load i64, ptr addrspace(4) %add.ptr485.3, align 8, !dbg !215
  %mul514 = shl nuw nsw i32 %next_slot.sroa.0.1.7, 10
  %add522 = or disjoint i32 %mul514, %330, !dbg !217
  %346 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522, !dbg !218
  %add.ptr535.idx = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535 = getelementptr i8, ptr addrspace(3) %346, i32 %add.ptr535.idx, !dbg !218
  %v_column.sroa.130.0.insert.ext = shl i64 %345, 48, !dbg !219
  %v_column.sroa.98.0.insert.ext = shl i64 %343, 32, !dbg !219
  %v_column.sroa.98.0.insert.shift = and i64 %v_column.sroa.98.0.insert.ext, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert = or disjoint i64 %v_column.sroa.130.0.insert.ext, %v_column.sroa.98.0.insert.shift, !dbg !219
  %v_column.sroa.66.0.insert.ext = shl i64 %341, 16, !dbg !219
  %v_column.sroa.66.0.insert.shift = and i64 %v_column.sroa.66.0.insert.ext, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert = or disjoint i64 %v_column.sroa.98.0.insert.insert, %v_column.sroa.66.0.insert.shift, !dbg !219
  %v_column.sroa.0.0.insert.ext = and i64 %339, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert = or disjoint i64 %v_column.sroa.66.0.insert.insert, %v_column.sroa.0.0.insert.ext, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr535, align 8, !dbg !219
  %v_fetch.sroa.0.2.extract.shift = lshr i64 %339, 16, !dbg !220
  %add517.1 = or disjoint i32 %mul514, %330, !dbg !217
  %add522.1 = or disjoint i32 %add517.1, 256, !dbg !217
  %347 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.1, !dbg !218
  %xor532894.1 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.1 = xor i32 %xor532894.1, 8, !dbg !218
  %add.ptr535.1 = getelementptr i8, ptr addrspace(3) %347, i32 %add.ptr535.idx.1, !dbg !218
  %348 = shl i64 %345, 32, !dbg !219
  %v_column.sroa.130.0.insert.ext1567 = and i64 %348, -281474976710656, !dbg !219
  %349 = shl i64 %343, 16, !dbg !219
  %v_column.sroa.98.0.insert.shift1413 = and i64 %349, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1415 = or disjoint i64 %v_column.sroa.130.0.insert.ext1567, %v_column.sroa.98.0.insert.shift1413, !dbg !219
  %v_column.sroa.66.0.insert.ext1257 = and i64 %341, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1260 = or disjoint i64 %v_column.sroa.98.0.insert.insert1415, %v_column.sroa.66.0.insert.ext1257, !dbg !219
  %v_column.sroa.0.0.insert.ext1133 = and i64 %v_fetch.sroa.0.2.extract.shift, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1135 = or disjoint i64 %v_column.sroa.66.0.insert.insert1260, %v_column.sroa.0.0.insert.ext1133, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1135, ptr addrspace(3) %add.ptr535.1, align 8, !dbg !219
  %v_fetch.sroa.0.4.extract.shift = lshr i64 %339, 32, !dbg !220
  %add517.2 = or disjoint i32 %mul514, %330, !dbg !217
  %add522.2 = or disjoint i32 %add517.2, 512, !dbg !217
  %350 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.2, !dbg !218
  %xor532894.2 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.2 = xor i32 %xor532894.2, 16, !dbg !218
  %add.ptr535.2 = getelementptr i8, ptr addrspace(3) %350, i32 %add.ptr535.idx.2, !dbg !218
  %351 = shl i64 %345, 16, !dbg !219
  %v_column.sroa.130.0.insert.ext1572 = and i64 %351, -281474976710656, !dbg !219
  %v_column.sroa.98.0.insert.ext1417 = and i64 %343, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1420 = or disjoint i64 %v_column.sroa.130.0.insert.ext1572, %v_column.sroa.98.0.insert.ext1417, !dbg !219
  %352 = lshr i64 %341, 16, !dbg !219
  %v_column.sroa.66.0.insert.shift1263 = and i64 %352, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1265 = or disjoint i64 %v_column.sroa.98.0.insert.insert1420, %v_column.sroa.66.0.insert.shift1263, !dbg !219
  %v_column.sroa.0.0.insert.ext1137 = and i64 %v_fetch.sroa.0.4.extract.shift, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1139 = or disjoint i64 %v_column.sroa.66.0.insert.insert1265, %v_column.sroa.0.0.insert.ext1137, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1139, ptr addrspace(3) %add.ptr535.2, align 8, !dbg !219
  %v_fetch.sroa.0.6.extract.shift = lshr i64 %339, 48, !dbg !220
  %v_fetch.sroa.122.30.extract.shift = and i64 %345, -281474976710656, !dbg !219
  %add517.3 = or disjoint i32 %mul514, %330, !dbg !217
  %add522.3 = or disjoint i32 %add517.3, 768, !dbg !217
  %353 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.3, !dbg !218
  %xor532894.3 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.3 = xor i32 %xor532894.3, 24, !dbg !218
  %add.ptr535.3 = getelementptr i8, ptr addrspace(3) %353, i32 %add.ptr535.idx.3, !dbg !218
  %354 = lshr i64 %343, 16, !dbg !219
  %v_column.sroa.98.0.insert.shift1423 = and i64 %354, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1425 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift, %v_column.sroa.98.0.insert.shift1423, !dbg !219
  %355 = lshr i64 %341, 32, !dbg !219
  %v_column.sroa.66.0.insert.shift1268 = and i64 %355, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1270 = or disjoint i64 %v_column.sroa.98.0.insert.insert1425, %v_column.sroa.66.0.insert.shift1268, !dbg !219
  %v_column.sroa.0.0.insert.insert1143 = or disjoint i64 %v_column.sroa.66.0.insert.insert1270, %v_fetch.sroa.0.6.extract.shift, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1143, ptr addrspace(3) %add.ptr535.3, align 8, !dbg !219
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %add550 = or disjoint i32 %mul514, %333
  %add559 = or disjoint i32 %add550, %334, !dbg !226
  %356 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559, !dbg !227
  %add.ptr571.idx = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571 = getelementptr i8, ptr addrspace(3) %356, i32 %add.ptr571.idx, !dbg !227
  %357 = load <4 x half>, ptr addrspace(3) %add.ptr571, align 8, !dbg !228
  %add553.1 = or disjoint i32 %add550, %334, !dbg !226
  %add559.1 = or disjoint i32 %add553.1, 64, !dbg !226
  %358 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.1, !dbg !227
  %xor568892.1 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.1 = xor i32 %xor568892.1, 8, !dbg !227
  %add.ptr571.1 = getelementptr i8, ptr addrspace(3) %358, i32 %add.ptr571.idx.1, !dbg !227
  %359 = load <4 x half>, ptr addrspace(3) %add.ptr571.1, align 8, !dbg !228
  %add553.2 = or disjoint i32 %add550, %334, !dbg !226
  %add559.2 = or disjoint i32 %add553.2, 128, !dbg !226
  %360 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.2, !dbg !227
  %xor568892.2 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.2 = xor i32 %xor568892.2, 16, !dbg !227
  %add.ptr571.2 = getelementptr i8, ptr addrspace(3) %360, i32 %add.ptr571.idx.2, !dbg !227
  %361 = load <4 x half>, ptr addrspace(3) %add.ptr571.2, align 8, !dbg !228
  %add553.3 = or disjoint i32 %add550, %334, !dbg !226
  %add559.3 = or disjoint i32 %add553.3, 192, !dbg !226
  %362 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.3, !dbg !227
  %xor568892.3 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.3 = xor i32 %xor568892.3, 24, !dbg !227
  %add.ptr571.3 = getelementptr i8, ptr addrspace(3) %362, i32 %add.ptr571.idx.3, !dbg !227
  %363 = load <4 x half>, ptr addrspace(3) %add.ptr571.3, align 8, !dbg !228
  %364 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %357, <4 x half> %327, <4 x float> zeroinitializer), !dbg !229
  %365 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %359, <4 x half> %327, <4 x float> zeroinitializer), !dbg !229
  %366 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %361, <4 x half> %327, <4 x float> zeroinitializer), !dbg !229
  %367 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %363, <4 x half> %327, <4 x float> zeroinitializer), !dbg !229
  %xor599 = xor i32 %next_slot.sroa.0.1.7, 1, !dbg !230
  br label %if.end601, !dbg !231

if.end601:                                        ; preds = %for.cond466.preheader, %if.end432
  %numerator.sroa.98.0 = phi <4 x float> [ zeroinitializer, %if.end432 ], [ %367, %for.cond466.preheader ], !dbg !207
  %numerator.sroa.66.0 = phi <4 x float> [ zeroinitializer, %if.end432 ], [ %366, %for.cond466.preheader ], !dbg !207
  %numerator.sroa.34.0 = phi <4 x float> [ zeroinitializer, %if.end432 ], [ %365, %for.cond466.preheader ], !dbg !207
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %if.end432 ], [ %364, %for.cond466.preheader ], !dbg !207
  %next_slot.sroa.0.3 = phi i32 [ %next_slot.sroa.0.1.7, %if.end432 ], [ %xor599, %for.cond466.preheader ], !dbg !207
  %368 = load i32, ptr addrspace(1) %arrayidx126.1, align 4, !dbg !211, !tbaa !30
  %or.cond964.1 = icmp ugt i32 %368, %invariant.umin, !dbg !212
  br i1 %or.cond964.1, label %if.end601.1, label %for.cond466.preheader.1, !dbg !212

for.cond466.preheader.1:                          ; preds = %if.end601
  %mul472.1 = shl nuw nsw i32 %368, 10
  %add479.1 = add nuw nsw i32 %add477, %mul472.1
  %369 = zext nneg i32 %add479.1 to i64, !dbg !213
  %add.ptr485.11080 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %369, !dbg !214
  %370 = load i64, ptr addrspace(4) %add.ptr485.11080, align 8, !dbg !215
  %371 = or disjoint i64 %369, 64, !dbg !216
  %add.ptr485.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %371, !dbg !214
  %372 = load i64, ptr addrspace(4) %add.ptr485.1.1, align 8, !dbg !215
  %373 = or disjoint i64 %369, 128, !dbg !216
  %add.ptr485.2.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %373, !dbg !214
  %374 = load i64, ptr addrspace(4) %add.ptr485.2.1, align 8, !dbg !215
  %375 = or disjoint i64 %369, 192, !dbg !216
  %add.ptr485.3.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %375, !dbg !214
  %376 = load i64, ptr addrspace(4) %add.ptr485.3.1, align 8, !dbg !215
  %mul514.1 = shl nuw nsw i32 %next_slot.sroa.0.3, 10
  %add522.11087 = or disjoint i32 %mul514.1, %330, !dbg !217
  %377 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.11087, !dbg !218
  %add.ptr535.idx.11088 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.11089 = getelementptr i8, ptr addrspace(3) %377, i32 %add.ptr535.idx.11088, !dbg !218
  %v_column.sroa.130.0.insert.ext1582 = shl i64 %376, 48, !dbg !219
  %v_column.sroa.98.0.insert.ext1427 = shl i64 %374, 32, !dbg !219
  %v_column.sroa.98.0.insert.shift1428 = and i64 %v_column.sroa.98.0.insert.ext1427, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1430 = or disjoint i64 %v_column.sroa.130.0.insert.ext1582, %v_column.sroa.98.0.insert.shift1428, !dbg !219
  %v_column.sroa.66.0.insert.ext1272 = shl i64 %372, 16, !dbg !219
  %v_column.sroa.66.0.insert.shift1273 = and i64 %v_column.sroa.66.0.insert.ext1272, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1275 = or disjoint i64 %v_column.sroa.98.0.insert.insert1430, %v_column.sroa.66.0.insert.shift1273, !dbg !219
  %v_column.sroa.0.0.insert.ext1145 = and i64 %370, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1147 = or disjoint i64 %v_column.sroa.66.0.insert.insert1275, %v_column.sroa.0.0.insert.ext1145, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1147, ptr addrspace(3) %add.ptr535.11089, align 8, !dbg !219
  %v_fetch.sroa.0.2.extract.shift1796 = lshr i64 %370, 16, !dbg !220
  %add517.1.1 = or disjoint i32 %mul514.1, %330, !dbg !217
  %add522.1.1 = or disjoint i32 %add517.1.1, 256, !dbg !217
  %378 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.1.1, !dbg !218
  %xor532894.1.1 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.1.1 = xor i32 %xor532894.1.1, 8, !dbg !218
  %add.ptr535.1.1 = getelementptr i8, ptr addrspace(3) %378, i32 %add.ptr535.idx.1.1, !dbg !218
  %379 = shl i64 %376, 32, !dbg !219
  %v_column.sroa.130.0.insert.ext1587 = and i64 %379, -281474976710656, !dbg !219
  %380 = shl i64 %374, 16, !dbg !219
  %v_column.sroa.98.0.insert.shift1433 = and i64 %380, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1435 = or disjoint i64 %v_column.sroa.130.0.insert.ext1587, %v_column.sroa.98.0.insert.shift1433, !dbg !219
  %v_column.sroa.66.0.insert.ext1277 = and i64 %372, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1280 = or disjoint i64 %v_column.sroa.98.0.insert.insert1435, %v_column.sroa.66.0.insert.ext1277, !dbg !219
  %v_column.sroa.0.0.insert.ext1149 = and i64 %v_fetch.sroa.0.2.extract.shift1796, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1151 = or disjoint i64 %v_column.sroa.66.0.insert.insert1280, %v_column.sroa.0.0.insert.ext1149, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1151, ptr addrspace(3) %add.ptr535.1.1, align 8, !dbg !219
  %v_fetch.sroa.0.4.extract.shift1817 = lshr i64 %370, 32, !dbg !220
  %add517.2.1 = or disjoint i32 %mul514.1, %330, !dbg !217
  %add522.2.1 = or disjoint i32 %add517.2.1, 512, !dbg !217
  %381 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.2.1, !dbg !218
  %xor532894.2.1 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.2.1 = xor i32 %xor532894.2.1, 16, !dbg !218
  %add.ptr535.2.1 = getelementptr i8, ptr addrspace(3) %381, i32 %add.ptr535.idx.2.1, !dbg !218
  %382 = shl i64 %376, 16, !dbg !219
  %v_column.sroa.130.0.insert.ext1592 = and i64 %382, -281474976710656, !dbg !219
  %v_column.sroa.98.0.insert.ext1437 = and i64 %374, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1440 = or disjoint i64 %v_column.sroa.130.0.insert.ext1592, %v_column.sroa.98.0.insert.ext1437, !dbg !219
  %383 = lshr i64 %372, 16, !dbg !219
  %v_column.sroa.66.0.insert.shift1283 = and i64 %383, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1285 = or disjoint i64 %v_column.sroa.98.0.insert.insert1440, %v_column.sroa.66.0.insert.shift1283, !dbg !219
  %v_column.sroa.0.0.insert.ext1153 = and i64 %v_fetch.sroa.0.4.extract.shift1817, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1155 = or disjoint i64 %v_column.sroa.66.0.insert.insert1285, %v_column.sroa.0.0.insert.ext1153, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1155, ptr addrspace(3) %add.ptr535.2.1, align 8, !dbg !219
  %v_fetch.sroa.0.6.extract.shift1838 = lshr i64 %370, 48, !dbg !220
  %v_fetch.sroa.122.30.extract.shift2069 = and i64 %376, -281474976710656, !dbg !219
  %add517.3.1 = or disjoint i32 %mul514.1, %330, !dbg !217
  %add522.3.1 = or disjoint i32 %add517.3.1, 768, !dbg !217
  %384 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.3.1, !dbg !218
  %xor532894.3.1 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.3.1 = xor i32 %xor532894.3.1, 24, !dbg !218
  %add.ptr535.3.1 = getelementptr i8, ptr addrspace(3) %384, i32 %add.ptr535.idx.3.1, !dbg !218
  %385 = lshr i64 %374, 16, !dbg !219
  %v_column.sroa.98.0.insert.shift1443 = and i64 %385, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1445 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2069, %v_column.sroa.98.0.insert.shift1443, !dbg !219
  %386 = lshr i64 %372, 32, !dbg !219
  %v_column.sroa.66.0.insert.shift1288 = and i64 %386, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1290 = or disjoint i64 %v_column.sroa.98.0.insert.insert1445, %v_column.sroa.66.0.insert.shift1288, !dbg !219
  %v_column.sroa.0.0.insert.insert1159 = or disjoint i64 %v_column.sroa.66.0.insert.insert1290, %v_fetch.sroa.0.6.extract.shift1838, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1159, ptr addrspace(3) %add.ptr535.3.1, align 8, !dbg !219
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %add550.1 = or disjoint i32 %mul514.1, %333
  %add559.11091 = or disjoint i32 %add550.1, %334, !dbg !226
  %387 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.11091, !dbg !227
  %add.ptr571.idx.11092 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.11093 = getelementptr i8, ptr addrspace(3) %387, i32 %add.ptr571.idx.11092, !dbg !227
  %388 = load <4 x half>, ptr addrspace(3) %add.ptr571.11093, align 8, !dbg !228
  %add553.1.1 = or disjoint i32 %add550.1, %334, !dbg !226
  %add559.1.1 = or disjoint i32 %add553.1.1, 64, !dbg !226
  %389 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.1.1, !dbg !227
  %xor568892.1.1 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.1.1 = xor i32 %xor568892.1.1, 8, !dbg !227
  %add.ptr571.1.1 = getelementptr i8, ptr addrspace(3) %389, i32 %add.ptr571.idx.1.1, !dbg !227
  %390 = load <4 x half>, ptr addrspace(3) %add.ptr571.1.1, align 8, !dbg !228
  %add553.2.1 = or disjoint i32 %add550.1, %334, !dbg !226
  %add559.2.1 = or disjoint i32 %add553.2.1, 128, !dbg !226
  %391 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.2.1, !dbg !227
  %xor568892.2.1 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.2.1 = xor i32 %xor568892.2.1, 16, !dbg !227
  %add.ptr571.2.1 = getelementptr i8, ptr addrspace(3) %391, i32 %add.ptr571.idx.2.1, !dbg !227
  %392 = load <4 x half>, ptr addrspace(3) %add.ptr571.2.1, align 8, !dbg !228
  %add553.3.1 = or disjoint i32 %add550.1, %334, !dbg !226
  %add559.3.1 = or disjoint i32 %add553.3.1, 192, !dbg !226
  %393 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.3.1, !dbg !227
  %xor568892.3.1 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.3.1 = xor i32 %xor568892.3.1, 24, !dbg !227
  %add.ptr571.3.1 = getelementptr i8, ptr addrspace(3) %393, i32 %add.ptr571.idx.3.1, !dbg !227
  %394 = load <4 x half>, ptr addrspace(3) %add.ptr571.3.1, align 8, !dbg !228
  %395 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %388, <4 x half> %326, <4 x float> %numerator.sroa.0.0), !dbg !229
  %396 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %390, <4 x half> %326, <4 x float> %numerator.sroa.34.0), !dbg !229
  %397 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %392, <4 x half> %326, <4 x float> %numerator.sroa.66.0), !dbg !229
  %398 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %394, <4 x half> %326, <4 x float> %numerator.sroa.98.0), !dbg !229
  %xor599.1 = xor i32 %next_slot.sroa.0.3, 1, !dbg !230
  br label %if.end601.1, !dbg !231

if.end601.1:                                      ; preds = %for.cond466.preheader.1, %if.end601
  %numerator.sroa.98.1 = phi <4 x float> [ %numerator.sroa.98.0, %if.end601 ], [ %398, %for.cond466.preheader.1 ], !dbg !207
  %numerator.sroa.66.1 = phi <4 x float> [ %numerator.sroa.66.0, %if.end601 ], [ %397, %for.cond466.preheader.1 ], !dbg !207
  %numerator.sroa.34.1 = phi <4 x float> [ %numerator.sroa.34.0, %if.end601 ], [ %396, %for.cond466.preheader.1 ], !dbg !207
  %numerator.sroa.0.1 = phi <4 x float> [ %numerator.sroa.0.0, %if.end601 ], [ %395, %for.cond466.preheader.1 ], !dbg !207
  %next_slot.sroa.0.3.1 = phi i32 [ %next_slot.sroa.0.3, %if.end601 ], [ %xor599.1, %for.cond466.preheader.1 ], !dbg !207
  %399 = load i32, ptr addrspace(1) %arrayidx126.2, align 4, !dbg !211, !tbaa !30
  %or.cond964.2 = icmp ugt i32 %399, %invariant.umin, !dbg !212
  br i1 %or.cond964.2, label %if.end601.2, label %for.cond466.preheader.2, !dbg !212

for.cond466.preheader.2:                          ; preds = %if.end601.1
  %mul472.2 = shl nuw nsw i32 %399, 10
  %add479.2 = add nuw nsw i32 %add477, %mul472.2
  %400 = zext nneg i32 %add479.2 to i64, !dbg !213
  %add.ptr485.21094 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %400, !dbg !214
  %401 = load i64, ptr addrspace(4) %add.ptr485.21094, align 8, !dbg !215
  %402 = or disjoint i64 %400, 64, !dbg !216
  %add.ptr485.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %402, !dbg !214
  %403 = load i64, ptr addrspace(4) %add.ptr485.1.2, align 8, !dbg !215
  %404 = or disjoint i64 %400, 128, !dbg !216
  %add.ptr485.2.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %404, !dbg !214
  %405 = load i64, ptr addrspace(4) %add.ptr485.2.2, align 8, !dbg !215
  %406 = or disjoint i64 %400, 192, !dbg !216
  %add.ptr485.3.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %406, !dbg !214
  %407 = load i64, ptr addrspace(4) %add.ptr485.3.2, align 8, !dbg !215
  %mul514.2 = shl nuw nsw i32 %next_slot.sroa.0.3.1, 10
  %add522.21101 = or disjoint i32 %mul514.2, %330, !dbg !217
  %408 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.21101, !dbg !218
  %add.ptr535.idx.21102 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.21103 = getelementptr i8, ptr addrspace(3) %408, i32 %add.ptr535.idx.21102, !dbg !218
  %v_column.sroa.130.0.insert.ext1602 = shl i64 %407, 48, !dbg !219
  %v_column.sroa.98.0.insert.ext1447 = shl i64 %405, 32, !dbg !219
  %v_column.sroa.98.0.insert.shift1448 = and i64 %v_column.sroa.98.0.insert.ext1447, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1450 = or disjoint i64 %v_column.sroa.130.0.insert.ext1602, %v_column.sroa.98.0.insert.shift1448, !dbg !219
  %v_column.sroa.66.0.insert.ext1292 = shl i64 %403, 16, !dbg !219
  %v_column.sroa.66.0.insert.shift1293 = and i64 %v_column.sroa.66.0.insert.ext1292, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1295 = or disjoint i64 %v_column.sroa.98.0.insert.insert1450, %v_column.sroa.66.0.insert.shift1293, !dbg !219
  %v_column.sroa.0.0.insert.ext1161 = and i64 %401, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1163 = or disjoint i64 %v_column.sroa.66.0.insert.insert1295, %v_column.sroa.0.0.insert.ext1161, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1163, ptr addrspace(3) %add.ptr535.21103, align 8, !dbg !219
  %v_fetch.sroa.0.2.extract.shift1799 = lshr i64 %401, 16, !dbg !220
  %add517.1.2 = or disjoint i32 %mul514.2, %330, !dbg !217
  %add522.1.2 = or disjoint i32 %add517.1.2, 256, !dbg !217
  %409 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.1.2, !dbg !218
  %xor532894.1.2 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.1.2 = xor i32 %xor532894.1.2, 8, !dbg !218
  %add.ptr535.1.2 = getelementptr i8, ptr addrspace(3) %409, i32 %add.ptr535.idx.1.2, !dbg !218
  %410 = shl i64 %407, 32, !dbg !219
  %v_column.sroa.130.0.insert.ext1607 = and i64 %410, -281474976710656, !dbg !219
  %411 = shl i64 %405, 16, !dbg !219
  %v_column.sroa.98.0.insert.shift1453 = and i64 %411, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1455 = or disjoint i64 %v_column.sroa.130.0.insert.ext1607, %v_column.sroa.98.0.insert.shift1453, !dbg !219
  %v_column.sroa.66.0.insert.ext1297 = and i64 %403, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1300 = or disjoint i64 %v_column.sroa.98.0.insert.insert1455, %v_column.sroa.66.0.insert.ext1297, !dbg !219
  %v_column.sroa.0.0.insert.ext1165 = and i64 %v_fetch.sroa.0.2.extract.shift1799, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1167 = or disjoint i64 %v_column.sroa.66.0.insert.insert1300, %v_column.sroa.0.0.insert.ext1165, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1167, ptr addrspace(3) %add.ptr535.1.2, align 8, !dbg !219
  %v_fetch.sroa.0.4.extract.shift1820 = lshr i64 %401, 32, !dbg !220
  %add517.2.2 = or disjoint i32 %mul514.2, %330, !dbg !217
  %add522.2.2 = or disjoint i32 %add517.2.2, 512, !dbg !217
  %412 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.2.2, !dbg !218
  %xor532894.2.2 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.2.2 = xor i32 %xor532894.2.2, 16, !dbg !218
  %add.ptr535.2.2 = getelementptr i8, ptr addrspace(3) %412, i32 %add.ptr535.idx.2.2, !dbg !218
  %413 = shl i64 %407, 16, !dbg !219
  %v_column.sroa.130.0.insert.ext1612 = and i64 %413, -281474976710656, !dbg !219
  %v_column.sroa.98.0.insert.ext1457 = and i64 %405, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1460 = or disjoint i64 %v_column.sroa.130.0.insert.ext1612, %v_column.sroa.98.0.insert.ext1457, !dbg !219
  %414 = lshr i64 %403, 16, !dbg !219
  %v_column.sroa.66.0.insert.shift1303 = and i64 %414, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1305 = or disjoint i64 %v_column.sroa.98.0.insert.insert1460, %v_column.sroa.66.0.insert.shift1303, !dbg !219
  %v_column.sroa.0.0.insert.ext1169 = and i64 %v_fetch.sroa.0.4.extract.shift1820, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1171 = or disjoint i64 %v_column.sroa.66.0.insert.insert1305, %v_column.sroa.0.0.insert.ext1169, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1171, ptr addrspace(3) %add.ptr535.2.2, align 8, !dbg !219
  %v_fetch.sroa.0.6.extract.shift1841 = lshr i64 %401, 48, !dbg !220
  %v_fetch.sroa.122.30.extract.shift2072 = and i64 %407, -281474976710656, !dbg !219
  %add517.3.2 = or disjoint i32 %mul514.2, %330, !dbg !217
  %add522.3.2 = or disjoint i32 %add517.3.2, 768, !dbg !217
  %415 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.3.2, !dbg !218
  %xor532894.3.2 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.3.2 = xor i32 %xor532894.3.2, 24, !dbg !218
  %add.ptr535.3.2 = getelementptr i8, ptr addrspace(3) %415, i32 %add.ptr535.idx.3.2, !dbg !218
  %416 = lshr i64 %405, 16, !dbg !219
  %v_column.sroa.98.0.insert.shift1463 = and i64 %416, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1465 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2072, %v_column.sroa.98.0.insert.shift1463, !dbg !219
  %417 = lshr i64 %403, 32, !dbg !219
  %v_column.sroa.66.0.insert.shift1308 = and i64 %417, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1310 = or disjoint i64 %v_column.sroa.98.0.insert.insert1465, %v_column.sroa.66.0.insert.shift1308, !dbg !219
  %v_column.sroa.0.0.insert.insert1175 = or disjoint i64 %v_column.sroa.66.0.insert.insert1310, %v_fetch.sroa.0.6.extract.shift1841, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1175, ptr addrspace(3) %add.ptr535.3.2, align 8, !dbg !219
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %add550.2 = or disjoint i32 %mul514.2, %333
  %add559.21105 = or disjoint i32 %add550.2, %334, !dbg !226
  %418 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.21105, !dbg !227
  %add.ptr571.idx.21106 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.21107 = getelementptr i8, ptr addrspace(3) %418, i32 %add.ptr571.idx.21106, !dbg !227
  %419 = load <4 x half>, ptr addrspace(3) %add.ptr571.21107, align 8, !dbg !228
  %add553.1.2 = or disjoint i32 %add550.2, %334, !dbg !226
  %add559.1.2 = or disjoint i32 %add553.1.2, 64, !dbg !226
  %420 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.1.2, !dbg !227
  %xor568892.1.2 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.1.2 = xor i32 %xor568892.1.2, 8, !dbg !227
  %add.ptr571.1.2 = getelementptr i8, ptr addrspace(3) %420, i32 %add.ptr571.idx.1.2, !dbg !227
  %421 = load <4 x half>, ptr addrspace(3) %add.ptr571.1.2, align 8, !dbg !228
  %add553.2.2 = or disjoint i32 %add550.2, %334, !dbg !226
  %add559.2.2 = or disjoint i32 %add553.2.2, 128, !dbg !226
  %422 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.2.2, !dbg !227
  %xor568892.2.2 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.2.2 = xor i32 %xor568892.2.2, 16, !dbg !227
  %add.ptr571.2.2 = getelementptr i8, ptr addrspace(3) %422, i32 %add.ptr571.idx.2.2, !dbg !227
  %423 = load <4 x half>, ptr addrspace(3) %add.ptr571.2.2, align 8, !dbg !228
  %add553.3.2 = or disjoint i32 %add550.2, %334, !dbg !226
  %add559.3.2 = or disjoint i32 %add553.3.2, 192, !dbg !226
  %424 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.3.2, !dbg !227
  %xor568892.3.2 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.3.2 = xor i32 %xor568892.3.2, 24, !dbg !227
  %add.ptr571.3.2 = getelementptr i8, ptr addrspace(3) %424, i32 %add.ptr571.idx.3.2, !dbg !227
  %425 = load <4 x half>, ptr addrspace(3) %add.ptr571.3.2, align 8, !dbg !228
  %426 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %419, <4 x half> %325, <4 x float> %numerator.sroa.0.1), !dbg !229
  %427 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %421, <4 x half> %325, <4 x float> %numerator.sroa.34.1), !dbg !229
  %428 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %423, <4 x half> %325, <4 x float> %numerator.sroa.66.1), !dbg !229
  %429 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %425, <4 x half> %325, <4 x float> %numerator.sroa.98.1), !dbg !229
  %xor599.2 = xor i32 %next_slot.sroa.0.3.1, 1, !dbg !230
  br label %if.end601.2, !dbg !231

if.end601.2:                                      ; preds = %for.cond466.preheader.2, %if.end601.1
  %numerator.sroa.98.2 = phi <4 x float> [ %numerator.sroa.98.1, %if.end601.1 ], [ %429, %for.cond466.preheader.2 ], !dbg !207
  %numerator.sroa.66.2 = phi <4 x float> [ %numerator.sroa.66.1, %if.end601.1 ], [ %428, %for.cond466.preheader.2 ], !dbg !207
  %numerator.sroa.34.2 = phi <4 x float> [ %numerator.sroa.34.1, %if.end601.1 ], [ %427, %for.cond466.preheader.2 ], !dbg !207
  %numerator.sroa.0.2 = phi <4 x float> [ %numerator.sroa.0.1, %if.end601.1 ], [ %426, %for.cond466.preheader.2 ], !dbg !207
  %next_slot.sroa.0.3.2 = phi i32 [ %next_slot.sroa.0.3.1, %if.end601.1 ], [ %xor599.2, %for.cond466.preheader.2 ], !dbg !207
  %430 = load i32, ptr addrspace(1) %arrayidx126.3, align 4, !dbg !211, !tbaa !30
  %or.cond964.3 = icmp ugt i32 %430, %invariant.umin, !dbg !212
  br i1 %or.cond964.3, label %if.end601.3, label %for.cond466.preheader.3, !dbg !212

for.cond466.preheader.3:                          ; preds = %if.end601.2
  %mul472.3 = shl nuw nsw i32 %430, 10
  %add479.3 = add nuw nsw i32 %add477, %mul472.3
  %431 = zext nneg i32 %add479.3 to i64, !dbg !213
  %add.ptr485.31108 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %431, !dbg !214
  %432 = load i64, ptr addrspace(4) %add.ptr485.31108, align 8, !dbg !215
  %433 = or disjoint i64 %431, 64, !dbg !216
  %add.ptr485.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %433, !dbg !214
  %434 = load i64, ptr addrspace(4) %add.ptr485.1.3, align 8, !dbg !215
  %435 = or disjoint i64 %431, 128, !dbg !216
  %add.ptr485.2.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %435, !dbg !214
  %436 = load i64, ptr addrspace(4) %add.ptr485.2.3, align 8, !dbg !215
  %437 = or disjoint i64 %431, 192, !dbg !216
  %add.ptr485.3.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %437, !dbg !214
  %438 = load i64, ptr addrspace(4) %add.ptr485.3.3, align 8, !dbg !215
  %mul514.3 = shl nuw nsw i32 %next_slot.sroa.0.3.2, 10
  %add522.31115 = or disjoint i32 %mul514.3, %330, !dbg !217
  %439 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.31115, !dbg !218
  %add.ptr535.idx.31116 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.31117 = getelementptr i8, ptr addrspace(3) %439, i32 %add.ptr535.idx.31116, !dbg !218
  %v_column.sroa.130.0.insert.ext1622 = shl i64 %438, 48, !dbg !219
  %v_column.sroa.98.0.insert.ext1467 = shl i64 %436, 32, !dbg !219
  %v_column.sroa.98.0.insert.shift1468 = and i64 %v_column.sroa.98.0.insert.ext1467, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1470 = or disjoint i64 %v_column.sroa.130.0.insert.ext1622, %v_column.sroa.98.0.insert.shift1468, !dbg !219
  %v_column.sroa.66.0.insert.ext1312 = shl i64 %434, 16, !dbg !219
  %v_column.sroa.66.0.insert.shift1313 = and i64 %v_column.sroa.66.0.insert.ext1312, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1315 = or disjoint i64 %v_column.sroa.98.0.insert.insert1470, %v_column.sroa.66.0.insert.shift1313, !dbg !219
  %v_column.sroa.0.0.insert.ext1177 = and i64 %432, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1179 = or disjoint i64 %v_column.sroa.66.0.insert.insert1315, %v_column.sroa.0.0.insert.ext1177, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1179, ptr addrspace(3) %add.ptr535.31117, align 8, !dbg !219
  %v_fetch.sroa.0.2.extract.shift1802 = lshr i64 %432, 16, !dbg !220
  %add517.1.3 = or disjoint i32 %mul514.3, %330, !dbg !217
  %add522.1.3 = or disjoint i32 %add517.1.3, 256, !dbg !217
  %440 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.1.3, !dbg !218
  %xor532894.1.3 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.1.3 = xor i32 %xor532894.1.3, 8, !dbg !218
  %add.ptr535.1.3 = getelementptr i8, ptr addrspace(3) %440, i32 %add.ptr535.idx.1.3, !dbg !218
  %441 = shl i64 %438, 32, !dbg !219
  %v_column.sroa.130.0.insert.ext1627 = and i64 %441, -281474976710656, !dbg !219
  %442 = shl i64 %436, 16, !dbg !219
  %v_column.sroa.98.0.insert.shift1473 = and i64 %442, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1475 = or disjoint i64 %v_column.sroa.130.0.insert.ext1627, %v_column.sroa.98.0.insert.shift1473, !dbg !219
  %v_column.sroa.66.0.insert.ext1317 = and i64 %434, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1320 = or disjoint i64 %v_column.sroa.98.0.insert.insert1475, %v_column.sroa.66.0.insert.ext1317, !dbg !219
  %v_column.sroa.0.0.insert.ext1181 = and i64 %v_fetch.sroa.0.2.extract.shift1802, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1183 = or disjoint i64 %v_column.sroa.66.0.insert.insert1320, %v_column.sroa.0.0.insert.ext1181, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1183, ptr addrspace(3) %add.ptr535.1.3, align 8, !dbg !219
  %v_fetch.sroa.0.4.extract.shift1823 = lshr i64 %432, 32, !dbg !220
  %add517.2.3 = or disjoint i32 %mul514.3, %330, !dbg !217
  %add522.2.3 = or disjoint i32 %add517.2.3, 512, !dbg !217
  %443 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.2.3, !dbg !218
  %xor532894.2.3 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.2.3 = xor i32 %xor532894.2.3, 16, !dbg !218
  %add.ptr535.2.3 = getelementptr i8, ptr addrspace(3) %443, i32 %add.ptr535.idx.2.3, !dbg !218
  %444 = shl i64 %438, 16, !dbg !219
  %v_column.sroa.130.0.insert.ext1632 = and i64 %444, -281474976710656, !dbg !219
  %v_column.sroa.98.0.insert.ext1477 = and i64 %436, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1480 = or disjoint i64 %v_column.sroa.130.0.insert.ext1632, %v_column.sroa.98.0.insert.ext1477, !dbg !219
  %445 = lshr i64 %434, 16, !dbg !219
  %v_column.sroa.66.0.insert.shift1323 = and i64 %445, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1325 = or disjoint i64 %v_column.sroa.98.0.insert.insert1480, %v_column.sroa.66.0.insert.shift1323, !dbg !219
  %v_column.sroa.0.0.insert.ext1185 = and i64 %v_fetch.sroa.0.4.extract.shift1823, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1187 = or disjoint i64 %v_column.sroa.66.0.insert.insert1325, %v_column.sroa.0.0.insert.ext1185, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1187, ptr addrspace(3) %add.ptr535.2.3, align 8, !dbg !219
  %v_fetch.sroa.0.6.extract.shift1844 = lshr i64 %432, 48, !dbg !220
  %v_fetch.sroa.122.30.extract.shift2075 = and i64 %438, -281474976710656, !dbg !219
  %add517.3.3 = or disjoint i32 %mul514.3, %330, !dbg !217
  %add522.3.3 = or disjoint i32 %add517.3.3, 768, !dbg !217
  %446 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.3.3, !dbg !218
  %xor532894.3.3 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.3.3 = xor i32 %xor532894.3.3, 24, !dbg !218
  %add.ptr535.3.3 = getelementptr i8, ptr addrspace(3) %446, i32 %add.ptr535.idx.3.3, !dbg !218
  %447 = lshr i64 %436, 16, !dbg !219
  %v_column.sroa.98.0.insert.shift1483 = and i64 %447, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1485 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2075, %v_column.sroa.98.0.insert.shift1483, !dbg !219
  %448 = lshr i64 %434, 32, !dbg !219
  %v_column.sroa.66.0.insert.shift1328 = and i64 %448, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1330 = or disjoint i64 %v_column.sroa.98.0.insert.insert1485, %v_column.sroa.66.0.insert.shift1328, !dbg !219
  %v_column.sroa.0.0.insert.insert1191 = or disjoint i64 %v_column.sroa.66.0.insert.insert1330, %v_fetch.sroa.0.6.extract.shift1844, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1191, ptr addrspace(3) %add.ptr535.3.3, align 8, !dbg !219
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %add550.3 = or disjoint i32 %mul514.3, %333
  %add559.31119 = or disjoint i32 %add550.3, %334, !dbg !226
  %449 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.31119, !dbg !227
  %add.ptr571.idx.31120 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.31121 = getelementptr i8, ptr addrspace(3) %449, i32 %add.ptr571.idx.31120, !dbg !227
  %450 = load <4 x half>, ptr addrspace(3) %add.ptr571.31121, align 8, !dbg !228
  %add553.1.3 = or disjoint i32 %add550.3, %334, !dbg !226
  %add559.1.3 = or disjoint i32 %add553.1.3, 64, !dbg !226
  %451 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.1.3, !dbg !227
  %xor568892.1.3 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.1.3 = xor i32 %xor568892.1.3, 8, !dbg !227
  %add.ptr571.1.3 = getelementptr i8, ptr addrspace(3) %451, i32 %add.ptr571.idx.1.3, !dbg !227
  %452 = load <4 x half>, ptr addrspace(3) %add.ptr571.1.3, align 8, !dbg !228
  %add553.2.3 = or disjoint i32 %add550.3, %334, !dbg !226
  %add559.2.3 = or disjoint i32 %add553.2.3, 128, !dbg !226
  %453 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.2.3, !dbg !227
  %xor568892.2.3 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.2.3 = xor i32 %xor568892.2.3, 16, !dbg !227
  %add.ptr571.2.3 = getelementptr i8, ptr addrspace(3) %453, i32 %add.ptr571.idx.2.3, !dbg !227
  %454 = load <4 x half>, ptr addrspace(3) %add.ptr571.2.3, align 8, !dbg !228
  %add553.3.3 = or disjoint i32 %add550.3, %334, !dbg !226
  %add559.3.3 = or disjoint i32 %add553.3.3, 192, !dbg !226
  %455 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.3.3, !dbg !227
  %xor568892.3.3 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.3.3 = xor i32 %xor568892.3.3, 24, !dbg !227
  %add.ptr571.3.3 = getelementptr i8, ptr addrspace(3) %455, i32 %add.ptr571.idx.3.3, !dbg !227
  %456 = load <4 x half>, ptr addrspace(3) %add.ptr571.3.3, align 8, !dbg !228
  %457 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %450, <4 x half> %324, <4 x float> %numerator.sroa.0.2), !dbg !229
  %458 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %452, <4 x half> %324, <4 x float> %numerator.sroa.34.2), !dbg !229
  %459 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %454, <4 x half> %324, <4 x float> %numerator.sroa.66.2), !dbg !229
  %460 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %456, <4 x half> %324, <4 x float> %numerator.sroa.98.2), !dbg !229
  %xor599.3 = xor i32 %next_slot.sroa.0.3.2, 1, !dbg !230
  br label %if.end601.3, !dbg !231

if.end601.3:                                      ; preds = %for.cond466.preheader.3, %if.end601.2
  %numerator.sroa.98.3 = phi <4 x float> [ %numerator.sroa.98.2, %if.end601.2 ], [ %460, %for.cond466.preheader.3 ], !dbg !207
  %numerator.sroa.66.3 = phi <4 x float> [ %numerator.sroa.66.2, %if.end601.2 ], [ %459, %for.cond466.preheader.3 ], !dbg !207
  %numerator.sroa.34.3 = phi <4 x float> [ %numerator.sroa.34.2, %if.end601.2 ], [ %458, %for.cond466.preheader.3 ], !dbg !207
  %numerator.sroa.0.3 = phi <4 x float> [ %numerator.sroa.0.2, %if.end601.2 ], [ %457, %for.cond466.preheader.3 ], !dbg !207
  %next_slot.sroa.0.3.3 = phi i32 [ %next_slot.sroa.0.3.2, %if.end601.2 ], [ %xor599.3, %for.cond466.preheader.3 ], !dbg !207
  %461 = load i32, ptr addrspace(1) %arrayidx126.4, align 4, !dbg !211, !tbaa !30
  %or.cond964.4 = icmp ugt i32 %461, %invariant.umin, !dbg !212
  br i1 %or.cond964.4, label %if.end601.4, label %for.cond466.preheader.4, !dbg !212

for.cond466.preheader.4:                          ; preds = %if.end601.3
  %mul472.4 = shl nuw nsw i32 %461, 10
  %add479.4 = add nuw nsw i32 %add477, %mul472.4
  %462 = zext nneg i32 %add479.4 to i64, !dbg !213
  %add.ptr485.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %462, !dbg !214
  %463 = load i64, ptr addrspace(4) %add.ptr485.4, align 8, !dbg !215
  %464 = or disjoint i64 %462, 64, !dbg !216
  %add.ptr485.1.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %464, !dbg !214
  %465 = load i64, ptr addrspace(4) %add.ptr485.1.4, align 8, !dbg !215
  %466 = or disjoint i64 %462, 128, !dbg !216
  %add.ptr485.2.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %466, !dbg !214
  %467 = load i64, ptr addrspace(4) %add.ptr485.2.4, align 8, !dbg !215
  %468 = or disjoint i64 %462, 192, !dbg !216
  %add.ptr485.3.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %468, !dbg !214
  %469 = load i64, ptr addrspace(4) %add.ptr485.3.4, align 8, !dbg !215
  %mul514.4 = shl nuw nsw i32 %next_slot.sroa.0.3.3, 10
  %add522.4 = or disjoint i32 %mul514.4, %330, !dbg !217
  %470 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.4, !dbg !218
  %add.ptr535.idx.4 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.4 = getelementptr i8, ptr addrspace(3) %470, i32 %add.ptr535.idx.4, !dbg !218
  %v_column.sroa.130.0.insert.ext1642 = shl i64 %469, 48, !dbg !219
  %v_column.sroa.98.0.insert.ext1487 = shl i64 %467, 32, !dbg !219
  %v_column.sroa.98.0.insert.shift1488 = and i64 %v_column.sroa.98.0.insert.ext1487, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1490 = or disjoint i64 %v_column.sroa.130.0.insert.ext1642, %v_column.sroa.98.0.insert.shift1488, !dbg !219
  %v_column.sroa.66.0.insert.ext1332 = shl i64 %465, 16, !dbg !219
  %v_column.sroa.66.0.insert.shift1333 = and i64 %v_column.sroa.66.0.insert.ext1332, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1335 = or disjoint i64 %v_column.sroa.98.0.insert.insert1490, %v_column.sroa.66.0.insert.shift1333, !dbg !219
  %v_column.sroa.0.0.insert.ext1193 = and i64 %463, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1195 = or disjoint i64 %v_column.sroa.66.0.insert.insert1335, %v_column.sroa.0.0.insert.ext1193, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1195, ptr addrspace(3) %add.ptr535.4, align 8, !dbg !219
  %v_fetch.sroa.0.2.extract.shift1805 = lshr i64 %463, 16, !dbg !220
  %add517.1.4 = or disjoint i32 %mul514.4, %330, !dbg !217
  %add522.1.4 = or disjoint i32 %add517.1.4, 256, !dbg !217
  %471 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.1.4, !dbg !218
  %xor532894.1.4 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.1.4 = xor i32 %xor532894.1.4, 8, !dbg !218
  %add.ptr535.1.4 = getelementptr i8, ptr addrspace(3) %471, i32 %add.ptr535.idx.1.4, !dbg !218
  %472 = shl i64 %469, 32, !dbg !219
  %v_column.sroa.130.0.insert.ext1647 = and i64 %472, -281474976710656, !dbg !219
  %473 = shl i64 %467, 16, !dbg !219
  %v_column.sroa.98.0.insert.shift1493 = and i64 %473, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1495 = or disjoint i64 %v_column.sroa.130.0.insert.ext1647, %v_column.sroa.98.0.insert.shift1493, !dbg !219
  %v_column.sroa.66.0.insert.ext1337 = and i64 %465, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1340 = or disjoint i64 %v_column.sroa.98.0.insert.insert1495, %v_column.sroa.66.0.insert.ext1337, !dbg !219
  %v_column.sroa.0.0.insert.ext1197 = and i64 %v_fetch.sroa.0.2.extract.shift1805, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1199 = or disjoint i64 %v_column.sroa.66.0.insert.insert1340, %v_column.sroa.0.0.insert.ext1197, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1199, ptr addrspace(3) %add.ptr535.1.4, align 8, !dbg !219
  %v_fetch.sroa.0.4.extract.shift1826 = lshr i64 %463, 32, !dbg !220
  %add517.2.4 = or disjoint i32 %mul514.4, %330, !dbg !217
  %add522.2.4 = or disjoint i32 %add517.2.4, 512, !dbg !217
  %474 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.2.4, !dbg !218
  %xor532894.2.4 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.2.4 = xor i32 %xor532894.2.4, 16, !dbg !218
  %add.ptr535.2.4 = getelementptr i8, ptr addrspace(3) %474, i32 %add.ptr535.idx.2.4, !dbg !218
  %475 = shl i64 %469, 16, !dbg !219
  %v_column.sroa.130.0.insert.ext1652 = and i64 %475, -281474976710656, !dbg !219
  %v_column.sroa.98.0.insert.ext1497 = and i64 %467, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1500 = or disjoint i64 %v_column.sroa.130.0.insert.ext1652, %v_column.sroa.98.0.insert.ext1497, !dbg !219
  %476 = lshr i64 %465, 16, !dbg !219
  %v_column.sroa.66.0.insert.shift1343 = and i64 %476, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1345 = or disjoint i64 %v_column.sroa.98.0.insert.insert1500, %v_column.sroa.66.0.insert.shift1343, !dbg !219
  %v_column.sroa.0.0.insert.ext1201 = and i64 %v_fetch.sroa.0.4.extract.shift1826, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1203 = or disjoint i64 %v_column.sroa.66.0.insert.insert1345, %v_column.sroa.0.0.insert.ext1201, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1203, ptr addrspace(3) %add.ptr535.2.4, align 8, !dbg !219
  %v_fetch.sroa.0.6.extract.shift1847 = lshr i64 %463, 48, !dbg !220
  %v_fetch.sroa.122.30.extract.shift2078 = and i64 %469, -281474976710656, !dbg !219
  %add517.3.4 = or disjoint i32 %mul514.4, %330, !dbg !217
  %add522.3.4 = or disjoint i32 %add517.3.4, 768, !dbg !217
  %477 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.3.4, !dbg !218
  %xor532894.3.4 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.3.4 = xor i32 %xor532894.3.4, 24, !dbg !218
  %add.ptr535.3.4 = getelementptr i8, ptr addrspace(3) %477, i32 %add.ptr535.idx.3.4, !dbg !218
  %478 = lshr i64 %467, 16, !dbg !219
  %v_column.sroa.98.0.insert.shift1503 = and i64 %478, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1505 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2078, %v_column.sroa.98.0.insert.shift1503, !dbg !219
  %479 = lshr i64 %465, 32, !dbg !219
  %v_column.sroa.66.0.insert.shift1348 = and i64 %479, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1350 = or disjoint i64 %v_column.sroa.98.0.insert.insert1505, %v_column.sroa.66.0.insert.shift1348, !dbg !219
  %v_column.sroa.0.0.insert.insert1207 = or disjoint i64 %v_column.sroa.66.0.insert.insert1350, %v_fetch.sroa.0.6.extract.shift1847, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1207, ptr addrspace(3) %add.ptr535.3.4, align 8, !dbg !219
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %add550.4 = or disjoint i32 %mul514.4, %333
  %add559.4 = or disjoint i32 %add550.4, %334, !dbg !226
  %480 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.4, !dbg !227
  %add.ptr571.idx.4 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.4 = getelementptr i8, ptr addrspace(3) %480, i32 %add.ptr571.idx.4, !dbg !227
  %481 = load <4 x half>, ptr addrspace(3) %add.ptr571.4, align 8, !dbg !228
  %add553.1.4 = or disjoint i32 %add550.4, %334, !dbg !226
  %add559.1.4 = or disjoint i32 %add553.1.4, 64, !dbg !226
  %482 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.1.4, !dbg !227
  %xor568892.1.4 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.1.4 = xor i32 %xor568892.1.4, 8, !dbg !227
  %add.ptr571.1.4 = getelementptr i8, ptr addrspace(3) %482, i32 %add.ptr571.idx.1.4, !dbg !227
  %483 = load <4 x half>, ptr addrspace(3) %add.ptr571.1.4, align 8, !dbg !228
  %add553.2.4 = or disjoint i32 %add550.4, %334, !dbg !226
  %add559.2.4 = or disjoint i32 %add553.2.4, 128, !dbg !226
  %484 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.2.4, !dbg !227
  %xor568892.2.4 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.2.4 = xor i32 %xor568892.2.4, 16, !dbg !227
  %add.ptr571.2.4 = getelementptr i8, ptr addrspace(3) %484, i32 %add.ptr571.idx.2.4, !dbg !227
  %485 = load <4 x half>, ptr addrspace(3) %add.ptr571.2.4, align 8, !dbg !228
  %add553.3.4 = or disjoint i32 %add550.4, %334, !dbg !226
  %add559.3.4 = or disjoint i32 %add553.3.4, 192, !dbg !226
  %486 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.3.4, !dbg !227
  %xor568892.3.4 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.3.4 = xor i32 %xor568892.3.4, 24, !dbg !227
  %add.ptr571.3.4 = getelementptr i8, ptr addrspace(3) %486, i32 %add.ptr571.idx.3.4, !dbg !227
  %487 = load <4 x half>, ptr addrspace(3) %add.ptr571.3.4, align 8, !dbg !228
  %488 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %481, <4 x half> %323, <4 x float> %numerator.sroa.0.3), !dbg !229
  %489 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %483, <4 x half> %323, <4 x float> %numerator.sroa.34.3), !dbg !229
  %490 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %485, <4 x half> %323, <4 x float> %numerator.sroa.66.3), !dbg !229
  %491 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %487, <4 x half> %323, <4 x float> %numerator.sroa.98.3), !dbg !229
  %xor599.4 = xor i32 %next_slot.sroa.0.3.3, 1, !dbg !230
  br label %if.end601.4, !dbg !231

if.end601.4:                                      ; preds = %for.cond466.preheader.4, %if.end601.3
  %numerator.sroa.98.4 = phi <4 x float> [ %numerator.sroa.98.3, %if.end601.3 ], [ %491, %for.cond466.preheader.4 ], !dbg !207
  %numerator.sroa.66.4 = phi <4 x float> [ %numerator.sroa.66.3, %if.end601.3 ], [ %490, %for.cond466.preheader.4 ], !dbg !207
  %numerator.sroa.34.4 = phi <4 x float> [ %numerator.sroa.34.3, %if.end601.3 ], [ %489, %for.cond466.preheader.4 ], !dbg !207
  %numerator.sroa.0.4 = phi <4 x float> [ %numerator.sroa.0.3, %if.end601.3 ], [ %488, %for.cond466.preheader.4 ], !dbg !207
  %next_slot.sroa.0.3.4 = phi i32 [ %next_slot.sroa.0.3.3, %if.end601.3 ], [ %xor599.4, %for.cond466.preheader.4 ], !dbg !207
  %492 = load i32, ptr addrspace(1) %arrayidx126.5, align 4, !dbg !211, !tbaa !30
  %or.cond964.5 = icmp ugt i32 %492, %invariant.umin, !dbg !212
  br i1 %or.cond964.5, label %if.end601.5, label %for.cond466.preheader.5, !dbg !212

for.cond466.preheader.5:                          ; preds = %if.end601.4
  %mul472.5 = shl nuw nsw i32 %492, 10
  %add479.5 = add nuw nsw i32 %add477, %mul472.5
  %493 = zext nneg i32 %add479.5 to i64, !dbg !213
  %add.ptr485.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %493, !dbg !214
  %494 = load i64, ptr addrspace(4) %add.ptr485.5, align 8, !dbg !215
  %495 = or disjoint i64 %493, 64, !dbg !216
  %add.ptr485.1.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %495, !dbg !214
  %496 = load i64, ptr addrspace(4) %add.ptr485.1.5, align 8, !dbg !215
  %497 = or disjoint i64 %493, 128, !dbg !216
  %add.ptr485.2.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %497, !dbg !214
  %498 = load i64, ptr addrspace(4) %add.ptr485.2.5, align 8, !dbg !215
  %499 = or disjoint i64 %493, 192, !dbg !216
  %add.ptr485.3.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %499, !dbg !214
  %500 = load i64, ptr addrspace(4) %add.ptr485.3.5, align 8, !dbg !215
  %mul514.5 = shl nuw nsw i32 %next_slot.sroa.0.3.4, 10
  %add522.5 = or disjoint i32 %mul514.5, %330, !dbg !217
  %501 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.5, !dbg !218
  %add.ptr535.idx.5 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.5 = getelementptr i8, ptr addrspace(3) %501, i32 %add.ptr535.idx.5, !dbg !218
  %v_column.sroa.130.0.insert.ext1662 = shl i64 %500, 48, !dbg !219
  %v_column.sroa.98.0.insert.ext1507 = shl i64 %498, 32, !dbg !219
  %v_column.sroa.98.0.insert.shift1508 = and i64 %v_column.sroa.98.0.insert.ext1507, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1510 = or disjoint i64 %v_column.sroa.130.0.insert.ext1662, %v_column.sroa.98.0.insert.shift1508, !dbg !219
  %v_column.sroa.66.0.insert.ext1352 = shl i64 %496, 16, !dbg !219
  %v_column.sroa.66.0.insert.shift1353 = and i64 %v_column.sroa.66.0.insert.ext1352, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1355 = or disjoint i64 %v_column.sroa.98.0.insert.insert1510, %v_column.sroa.66.0.insert.shift1353, !dbg !219
  %v_column.sroa.0.0.insert.ext1209 = and i64 %494, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1211 = or disjoint i64 %v_column.sroa.66.0.insert.insert1355, %v_column.sroa.0.0.insert.ext1209, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1211, ptr addrspace(3) %add.ptr535.5, align 8, !dbg !219
  %v_fetch.sroa.0.2.extract.shift1808 = lshr i64 %494, 16, !dbg !220
  %add517.1.5 = or disjoint i32 %mul514.5, %330, !dbg !217
  %add522.1.5 = or disjoint i32 %add517.1.5, 256, !dbg !217
  %502 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.1.5, !dbg !218
  %xor532894.1.5 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.1.5 = xor i32 %xor532894.1.5, 8, !dbg !218
  %add.ptr535.1.5 = getelementptr i8, ptr addrspace(3) %502, i32 %add.ptr535.idx.1.5, !dbg !218
  %503 = shl i64 %500, 32, !dbg !219
  %v_column.sroa.130.0.insert.ext1667 = and i64 %503, -281474976710656, !dbg !219
  %504 = shl i64 %498, 16, !dbg !219
  %v_column.sroa.98.0.insert.shift1513 = and i64 %504, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1515 = or disjoint i64 %v_column.sroa.130.0.insert.ext1667, %v_column.sroa.98.0.insert.shift1513, !dbg !219
  %v_column.sroa.66.0.insert.ext1357 = and i64 %496, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1360 = or disjoint i64 %v_column.sroa.98.0.insert.insert1515, %v_column.sroa.66.0.insert.ext1357, !dbg !219
  %v_column.sroa.0.0.insert.ext1213 = and i64 %v_fetch.sroa.0.2.extract.shift1808, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1215 = or disjoint i64 %v_column.sroa.66.0.insert.insert1360, %v_column.sroa.0.0.insert.ext1213, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1215, ptr addrspace(3) %add.ptr535.1.5, align 8, !dbg !219
  %v_fetch.sroa.0.4.extract.shift1829 = lshr i64 %494, 32, !dbg !220
  %add517.2.5 = or disjoint i32 %mul514.5, %330, !dbg !217
  %add522.2.5 = or disjoint i32 %add517.2.5, 512, !dbg !217
  %505 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.2.5, !dbg !218
  %xor532894.2.5 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.2.5 = xor i32 %xor532894.2.5, 16, !dbg !218
  %add.ptr535.2.5 = getelementptr i8, ptr addrspace(3) %505, i32 %add.ptr535.idx.2.5, !dbg !218
  %506 = shl i64 %500, 16, !dbg !219
  %v_column.sroa.130.0.insert.ext1672 = and i64 %506, -281474976710656, !dbg !219
  %v_column.sroa.98.0.insert.ext1517 = and i64 %498, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1520 = or disjoint i64 %v_column.sroa.130.0.insert.ext1672, %v_column.sroa.98.0.insert.ext1517, !dbg !219
  %507 = lshr i64 %496, 16, !dbg !219
  %v_column.sroa.66.0.insert.shift1363 = and i64 %507, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1365 = or disjoint i64 %v_column.sroa.98.0.insert.insert1520, %v_column.sroa.66.0.insert.shift1363, !dbg !219
  %v_column.sroa.0.0.insert.ext1217 = and i64 %v_fetch.sroa.0.4.extract.shift1829, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1219 = or disjoint i64 %v_column.sroa.66.0.insert.insert1365, %v_column.sroa.0.0.insert.ext1217, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1219, ptr addrspace(3) %add.ptr535.2.5, align 8, !dbg !219
  %v_fetch.sroa.0.6.extract.shift1850 = lshr i64 %494, 48, !dbg !220
  %v_fetch.sroa.122.30.extract.shift2081 = and i64 %500, -281474976710656, !dbg !219
  %add517.3.5 = or disjoint i32 %mul514.5, %330, !dbg !217
  %add522.3.5 = or disjoint i32 %add517.3.5, 768, !dbg !217
  %508 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.3.5, !dbg !218
  %xor532894.3.5 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.3.5 = xor i32 %xor532894.3.5, 24, !dbg !218
  %add.ptr535.3.5 = getelementptr i8, ptr addrspace(3) %508, i32 %add.ptr535.idx.3.5, !dbg !218
  %509 = lshr i64 %498, 16, !dbg !219
  %v_column.sroa.98.0.insert.shift1523 = and i64 %509, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1525 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2081, %v_column.sroa.98.0.insert.shift1523, !dbg !219
  %510 = lshr i64 %496, 32, !dbg !219
  %v_column.sroa.66.0.insert.shift1368 = and i64 %510, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1370 = or disjoint i64 %v_column.sroa.98.0.insert.insert1525, %v_column.sroa.66.0.insert.shift1368, !dbg !219
  %v_column.sroa.0.0.insert.insert1223 = or disjoint i64 %v_column.sroa.66.0.insert.insert1370, %v_fetch.sroa.0.6.extract.shift1850, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1223, ptr addrspace(3) %add.ptr535.3.5, align 8, !dbg !219
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %add550.5 = or disjoint i32 %mul514.5, %333
  %add559.5 = or disjoint i32 %add550.5, %334, !dbg !226
  %511 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.5, !dbg !227
  %add.ptr571.idx.5 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.5 = getelementptr i8, ptr addrspace(3) %511, i32 %add.ptr571.idx.5, !dbg !227
  %512 = load <4 x half>, ptr addrspace(3) %add.ptr571.5, align 8, !dbg !228
  %add553.1.5 = or disjoint i32 %add550.5, %334, !dbg !226
  %add559.1.5 = or disjoint i32 %add553.1.5, 64, !dbg !226
  %513 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.1.5, !dbg !227
  %xor568892.1.5 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.1.5 = xor i32 %xor568892.1.5, 8, !dbg !227
  %add.ptr571.1.5 = getelementptr i8, ptr addrspace(3) %513, i32 %add.ptr571.idx.1.5, !dbg !227
  %514 = load <4 x half>, ptr addrspace(3) %add.ptr571.1.5, align 8, !dbg !228
  %add553.2.5 = or disjoint i32 %add550.5, %334, !dbg !226
  %add559.2.5 = or disjoint i32 %add553.2.5, 128, !dbg !226
  %515 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.2.5, !dbg !227
  %xor568892.2.5 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.2.5 = xor i32 %xor568892.2.5, 16, !dbg !227
  %add.ptr571.2.5 = getelementptr i8, ptr addrspace(3) %515, i32 %add.ptr571.idx.2.5, !dbg !227
  %516 = load <4 x half>, ptr addrspace(3) %add.ptr571.2.5, align 8, !dbg !228
  %add553.3.5 = or disjoint i32 %add550.5, %334, !dbg !226
  %add559.3.5 = or disjoint i32 %add553.3.5, 192, !dbg !226
  %517 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.3.5, !dbg !227
  %xor568892.3.5 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.3.5 = xor i32 %xor568892.3.5, 24, !dbg !227
  %add.ptr571.3.5 = getelementptr i8, ptr addrspace(3) %517, i32 %add.ptr571.idx.3.5, !dbg !227
  %518 = load <4 x half>, ptr addrspace(3) %add.ptr571.3.5, align 8, !dbg !228
  %519 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %512, <4 x half> %322, <4 x float> %numerator.sroa.0.4), !dbg !229
  %520 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %514, <4 x half> %322, <4 x float> %numerator.sroa.34.4), !dbg !229
  %521 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %516, <4 x half> %322, <4 x float> %numerator.sroa.66.4), !dbg !229
  %522 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %518, <4 x half> %322, <4 x float> %numerator.sroa.98.4), !dbg !229
  %xor599.5 = xor i32 %next_slot.sroa.0.3.4, 1, !dbg !230
  br label %if.end601.5, !dbg !231

if.end601.5:                                      ; preds = %for.cond466.preheader.5, %if.end601.4
  %numerator.sroa.98.5 = phi <4 x float> [ %numerator.sroa.98.4, %if.end601.4 ], [ %522, %for.cond466.preheader.5 ], !dbg !207
  %numerator.sroa.66.5 = phi <4 x float> [ %numerator.sroa.66.4, %if.end601.4 ], [ %521, %for.cond466.preheader.5 ], !dbg !207
  %numerator.sroa.34.5 = phi <4 x float> [ %numerator.sroa.34.4, %if.end601.4 ], [ %520, %for.cond466.preheader.5 ], !dbg !207
  %numerator.sroa.0.5 = phi <4 x float> [ %numerator.sroa.0.4, %if.end601.4 ], [ %519, %for.cond466.preheader.5 ], !dbg !207
  %next_slot.sroa.0.3.5 = phi i32 [ %next_slot.sroa.0.3.4, %if.end601.4 ], [ %xor599.5, %for.cond466.preheader.5 ], !dbg !207
  %523 = load i32, ptr addrspace(1) %arrayidx126.6, align 4, !dbg !211, !tbaa !30
  %or.cond964.6 = icmp ugt i32 %523, %invariant.umin, !dbg !212
  br i1 %or.cond964.6, label %if.end601.6, label %for.cond466.preheader.6, !dbg !212

for.cond466.preheader.6:                          ; preds = %if.end601.5
  %mul472.6 = shl nuw nsw i32 %523, 10
  %add479.6 = add nuw nsw i32 %add477, %mul472.6
  %524 = zext nneg i32 %add479.6 to i64, !dbg !213
  %add.ptr485.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %524, !dbg !214
  %525 = load i64, ptr addrspace(4) %add.ptr485.6, align 8, !dbg !215
  %526 = or disjoint i64 %524, 64, !dbg !216
  %add.ptr485.1.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %526, !dbg !214
  %527 = load i64, ptr addrspace(4) %add.ptr485.1.6, align 8, !dbg !215
  %528 = or disjoint i64 %524, 128, !dbg !216
  %add.ptr485.2.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %528, !dbg !214
  %529 = load i64, ptr addrspace(4) %add.ptr485.2.6, align 8, !dbg !215
  %530 = or disjoint i64 %524, 192, !dbg !216
  %add.ptr485.3.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %530, !dbg !214
  %531 = load i64, ptr addrspace(4) %add.ptr485.3.6, align 8, !dbg !215
  %mul514.6 = shl nuw nsw i32 %next_slot.sroa.0.3.5, 10
  %add522.6 = or disjoint i32 %mul514.6, %330, !dbg !217
  %532 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.6, !dbg !218
  %add.ptr535.idx.6 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.6 = getelementptr i8, ptr addrspace(3) %532, i32 %add.ptr535.idx.6, !dbg !218
  %v_column.sroa.130.0.insert.ext1682 = shl i64 %531, 48, !dbg !219
  %v_column.sroa.98.0.insert.ext1527 = shl i64 %529, 32, !dbg !219
  %v_column.sroa.98.0.insert.shift1528 = and i64 %v_column.sroa.98.0.insert.ext1527, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1530 = or disjoint i64 %v_column.sroa.130.0.insert.ext1682, %v_column.sroa.98.0.insert.shift1528, !dbg !219
  %v_column.sroa.66.0.insert.ext1372 = shl i64 %527, 16, !dbg !219
  %v_column.sroa.66.0.insert.shift1373 = and i64 %v_column.sroa.66.0.insert.ext1372, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1375 = or disjoint i64 %v_column.sroa.98.0.insert.insert1530, %v_column.sroa.66.0.insert.shift1373, !dbg !219
  %v_column.sroa.0.0.insert.ext1225 = and i64 %525, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1227 = or disjoint i64 %v_column.sroa.66.0.insert.insert1375, %v_column.sroa.0.0.insert.ext1225, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1227, ptr addrspace(3) %add.ptr535.6, align 8, !dbg !219
  %v_fetch.sroa.0.2.extract.shift1811 = lshr i64 %525, 16, !dbg !220
  %add517.1.6 = or disjoint i32 %mul514.6, %330, !dbg !217
  %add522.1.6 = or disjoint i32 %add517.1.6, 256, !dbg !217
  %533 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.1.6, !dbg !218
  %xor532894.1.6 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.1.6 = xor i32 %xor532894.1.6, 8, !dbg !218
  %add.ptr535.1.6 = getelementptr i8, ptr addrspace(3) %533, i32 %add.ptr535.idx.1.6, !dbg !218
  %534 = shl i64 %531, 32, !dbg !219
  %v_column.sroa.130.0.insert.ext1687 = and i64 %534, -281474976710656, !dbg !219
  %535 = shl i64 %529, 16, !dbg !219
  %v_column.sroa.98.0.insert.shift1533 = and i64 %535, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1535 = or disjoint i64 %v_column.sroa.130.0.insert.ext1687, %v_column.sroa.98.0.insert.shift1533, !dbg !219
  %v_column.sroa.66.0.insert.ext1377 = and i64 %527, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1380 = or disjoint i64 %v_column.sroa.98.0.insert.insert1535, %v_column.sroa.66.0.insert.ext1377, !dbg !219
  %v_column.sroa.0.0.insert.ext1229 = and i64 %v_fetch.sroa.0.2.extract.shift1811, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1231 = or disjoint i64 %v_column.sroa.66.0.insert.insert1380, %v_column.sroa.0.0.insert.ext1229, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1231, ptr addrspace(3) %add.ptr535.1.6, align 8, !dbg !219
  %v_fetch.sroa.0.4.extract.shift1832 = lshr i64 %525, 32, !dbg !220
  %add517.2.6 = or disjoint i32 %mul514.6, %330, !dbg !217
  %add522.2.6 = or disjoint i32 %add517.2.6, 512, !dbg !217
  %536 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.2.6, !dbg !218
  %xor532894.2.6 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.2.6 = xor i32 %xor532894.2.6, 16, !dbg !218
  %add.ptr535.2.6 = getelementptr i8, ptr addrspace(3) %536, i32 %add.ptr535.idx.2.6, !dbg !218
  %537 = shl i64 %531, 16, !dbg !219
  %v_column.sroa.130.0.insert.ext1692 = and i64 %537, -281474976710656, !dbg !219
  %v_column.sroa.98.0.insert.ext1537 = and i64 %529, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1540 = or disjoint i64 %v_column.sroa.130.0.insert.ext1692, %v_column.sroa.98.0.insert.ext1537, !dbg !219
  %538 = lshr i64 %527, 16, !dbg !219
  %v_column.sroa.66.0.insert.shift1383 = and i64 %538, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1385 = or disjoint i64 %v_column.sroa.98.0.insert.insert1540, %v_column.sroa.66.0.insert.shift1383, !dbg !219
  %v_column.sroa.0.0.insert.ext1233 = and i64 %v_fetch.sroa.0.4.extract.shift1832, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1235 = or disjoint i64 %v_column.sroa.66.0.insert.insert1385, %v_column.sroa.0.0.insert.ext1233, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1235, ptr addrspace(3) %add.ptr535.2.6, align 8, !dbg !219
  %v_fetch.sroa.0.6.extract.shift1853 = lshr i64 %525, 48, !dbg !220
  %v_fetch.sroa.122.30.extract.shift2084 = and i64 %531, -281474976710656, !dbg !219
  %add517.3.6 = or disjoint i32 %mul514.6, %330, !dbg !217
  %add522.3.6 = or disjoint i32 %add517.3.6, 768, !dbg !217
  %539 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.3.6, !dbg !218
  %xor532894.3.6 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.3.6 = xor i32 %xor532894.3.6, 24, !dbg !218
  %add.ptr535.3.6 = getelementptr i8, ptr addrspace(3) %539, i32 %add.ptr535.idx.3.6, !dbg !218
  %540 = lshr i64 %529, 16, !dbg !219
  %v_column.sroa.98.0.insert.shift1543 = and i64 %540, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1545 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2084, %v_column.sroa.98.0.insert.shift1543, !dbg !219
  %541 = lshr i64 %527, 32, !dbg !219
  %v_column.sroa.66.0.insert.shift1388 = and i64 %541, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1390 = or disjoint i64 %v_column.sroa.98.0.insert.insert1545, %v_column.sroa.66.0.insert.shift1388, !dbg !219
  %v_column.sroa.0.0.insert.insert1239 = or disjoint i64 %v_column.sroa.66.0.insert.insert1390, %v_fetch.sroa.0.6.extract.shift1853, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1239, ptr addrspace(3) %add.ptr535.3.6, align 8, !dbg !219
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %add550.6 = or disjoint i32 %mul514.6, %333
  %add559.6 = or disjoint i32 %add550.6, %334, !dbg !226
  %542 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.6, !dbg !227
  %add.ptr571.idx.6 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.6 = getelementptr i8, ptr addrspace(3) %542, i32 %add.ptr571.idx.6, !dbg !227
  %543 = load <4 x half>, ptr addrspace(3) %add.ptr571.6, align 8, !dbg !228
  %add553.1.6 = or disjoint i32 %add550.6, %334, !dbg !226
  %add559.1.6 = or disjoint i32 %add553.1.6, 64, !dbg !226
  %544 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.1.6, !dbg !227
  %xor568892.1.6 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.1.6 = xor i32 %xor568892.1.6, 8, !dbg !227
  %add.ptr571.1.6 = getelementptr i8, ptr addrspace(3) %544, i32 %add.ptr571.idx.1.6, !dbg !227
  %545 = load <4 x half>, ptr addrspace(3) %add.ptr571.1.6, align 8, !dbg !228
  %add553.2.6 = or disjoint i32 %add550.6, %334, !dbg !226
  %add559.2.6 = or disjoint i32 %add553.2.6, 128, !dbg !226
  %546 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.2.6, !dbg !227
  %xor568892.2.6 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.2.6 = xor i32 %xor568892.2.6, 16, !dbg !227
  %add.ptr571.2.6 = getelementptr i8, ptr addrspace(3) %546, i32 %add.ptr571.idx.2.6, !dbg !227
  %547 = load <4 x half>, ptr addrspace(3) %add.ptr571.2.6, align 8, !dbg !228
  %add553.3.6 = or disjoint i32 %add550.6, %334, !dbg !226
  %add559.3.6 = or disjoint i32 %add553.3.6, 192, !dbg !226
  %548 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.3.6, !dbg !227
  %xor568892.3.6 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.3.6 = xor i32 %xor568892.3.6, 24, !dbg !227
  %add.ptr571.3.6 = getelementptr i8, ptr addrspace(3) %548, i32 %add.ptr571.idx.3.6, !dbg !227
  %549 = load <4 x half>, ptr addrspace(3) %add.ptr571.3.6, align 8, !dbg !228
  %550 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %543, <4 x half> %321, <4 x float> %numerator.sroa.0.5), !dbg !229
  %551 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %545, <4 x half> %321, <4 x float> %numerator.sroa.34.5), !dbg !229
  %552 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %547, <4 x half> %321, <4 x float> %numerator.sroa.66.5), !dbg !229
  %553 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %549, <4 x half> %321, <4 x float> %numerator.sroa.98.5), !dbg !229
  %xor599.6 = xor i32 %next_slot.sroa.0.3.5, 1, !dbg !230
  br label %if.end601.6, !dbg !231

if.end601.6:                                      ; preds = %for.cond466.preheader.6, %if.end601.5
  %numerator.sroa.98.6 = phi <4 x float> [ %numerator.sroa.98.5, %if.end601.5 ], [ %553, %for.cond466.preheader.6 ], !dbg !207
  %numerator.sroa.66.6 = phi <4 x float> [ %numerator.sroa.66.5, %if.end601.5 ], [ %552, %for.cond466.preheader.6 ], !dbg !207
  %numerator.sroa.34.6 = phi <4 x float> [ %numerator.sroa.34.5, %if.end601.5 ], [ %551, %for.cond466.preheader.6 ], !dbg !207
  %numerator.sroa.0.6 = phi <4 x float> [ %numerator.sroa.0.5, %if.end601.5 ], [ %550, %for.cond466.preheader.6 ], !dbg !207
  %next_slot.sroa.0.3.6 = phi i32 [ %next_slot.sroa.0.3.5, %if.end601.5 ], [ %xor599.6, %for.cond466.preheader.6 ], !dbg !207
  %554 = load i32, ptr addrspace(1) %arrayidx126.7, align 4, !dbg !211, !tbaa !30
  %or.cond964.7 = icmp ugt i32 %554, %invariant.umin, !dbg !212
  br i1 %or.cond964.7, label %if.end601.7, label %for.cond466.preheader.7, !dbg !212

for.cond466.preheader.7:                          ; preds = %if.end601.6
  %mul472.7 = shl nuw nsw i32 %554, 10
  %add479.7 = add nuw nsw i32 %add477, %mul472.7
  %555 = zext nneg i32 %add479.7 to i64, !dbg !213
  %add.ptr485.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %555, !dbg !214
  %556 = load i64, ptr addrspace(4) %add.ptr485.7, align 8, !dbg !215
  %557 = or disjoint i64 %555, 64, !dbg !216
  %add.ptr485.1.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %557, !dbg !214
  %558 = load i64, ptr addrspace(4) %add.ptr485.1.7, align 8, !dbg !215
  %559 = or disjoint i64 %555, 128, !dbg !216
  %add.ptr485.2.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %559, !dbg !214
  %560 = load i64, ptr addrspace(4) %add.ptr485.2.7, align 8, !dbg !215
  %561 = or disjoint i64 %555, 192, !dbg !216
  %add.ptr485.3.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %561, !dbg !214
  %562 = load i64, ptr addrspace(4) %add.ptr485.3.7, align 8, !dbg !215
  %mul514.7 = shl nuw nsw i32 %next_slot.sroa.0.3.6, 10
  %add522.7 = or disjoint i32 %mul514.7, %330, !dbg !217
  %563 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.7, !dbg !218
  %add.ptr535.idx.7 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.7 = getelementptr i8, ptr addrspace(3) %563, i32 %add.ptr535.idx.7, !dbg !218
  %v_column.sroa.130.0.insert.ext1702 = shl i64 %562, 48, !dbg !219
  %v_column.sroa.98.0.insert.ext1547 = shl i64 %560, 32, !dbg !219
  %v_column.sroa.98.0.insert.shift1548 = and i64 %v_column.sroa.98.0.insert.ext1547, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1550 = or disjoint i64 %v_column.sroa.130.0.insert.ext1702, %v_column.sroa.98.0.insert.shift1548, !dbg !219
  %v_column.sroa.66.0.insert.ext1392 = shl i64 %558, 16, !dbg !219
  %v_column.sroa.66.0.insert.shift1393 = and i64 %v_column.sroa.66.0.insert.ext1392, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1395 = or disjoint i64 %v_column.sroa.98.0.insert.insert1550, %v_column.sroa.66.0.insert.shift1393, !dbg !219
  %v_column.sroa.0.0.insert.ext1241 = and i64 %556, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1243 = or disjoint i64 %v_column.sroa.66.0.insert.insert1395, %v_column.sroa.0.0.insert.ext1241, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1243, ptr addrspace(3) %add.ptr535.7, align 8, !dbg !219
  %v_fetch.sroa.0.2.extract.shift1814 = lshr i64 %556, 16, !dbg !220
  %add517.1.7 = or disjoint i32 %mul514.7, %330, !dbg !217
  %add522.1.7 = or disjoint i32 %add517.1.7, 256, !dbg !217
  %564 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.1.7, !dbg !218
  %xor532894.1.7 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.1.7 = xor i32 %xor532894.1.7, 8, !dbg !218
  %add.ptr535.1.7 = getelementptr i8, ptr addrspace(3) %564, i32 %add.ptr535.idx.1.7, !dbg !218
  %565 = shl i64 %562, 32, !dbg !219
  %v_column.sroa.130.0.insert.ext1707 = and i64 %565, -281474976710656, !dbg !219
  %566 = shl i64 %560, 16, !dbg !219
  %v_column.sroa.98.0.insert.shift1553 = and i64 %566, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1555 = or disjoint i64 %v_column.sroa.130.0.insert.ext1707, %v_column.sroa.98.0.insert.shift1553, !dbg !219
  %v_column.sroa.66.0.insert.ext1397 = and i64 %558, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1400 = or disjoint i64 %v_column.sroa.98.0.insert.insert1555, %v_column.sroa.66.0.insert.ext1397, !dbg !219
  %v_column.sroa.0.0.insert.ext1245 = and i64 %v_fetch.sroa.0.2.extract.shift1814, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1247 = or disjoint i64 %v_column.sroa.66.0.insert.insert1400, %v_column.sroa.0.0.insert.ext1245, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1247, ptr addrspace(3) %add.ptr535.1.7, align 8, !dbg !219
  %v_fetch.sroa.0.4.extract.shift1835 = lshr i64 %556, 32, !dbg !220
  %add517.2.7 = or disjoint i32 %mul514.7, %330, !dbg !217
  %add522.2.7 = or disjoint i32 %add517.2.7, 512, !dbg !217
  %567 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.2.7, !dbg !218
  %xor532894.2.7 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.2.7 = xor i32 %xor532894.2.7, 16, !dbg !218
  %add.ptr535.2.7 = getelementptr i8, ptr addrspace(3) %567, i32 %add.ptr535.idx.2.7, !dbg !218
  %568 = shl i64 %562, 16, !dbg !219
  %v_column.sroa.130.0.insert.ext1712 = and i64 %568, -281474976710656, !dbg !219
  %v_column.sroa.98.0.insert.ext1557 = and i64 %560, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1560 = or disjoint i64 %v_column.sroa.130.0.insert.ext1712, %v_column.sroa.98.0.insert.ext1557, !dbg !219
  %569 = lshr i64 %558, 16, !dbg !219
  %v_column.sroa.66.0.insert.shift1403 = and i64 %569, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1405 = or disjoint i64 %v_column.sroa.98.0.insert.insert1560, %v_column.sroa.66.0.insert.shift1403, !dbg !219
  %v_column.sroa.0.0.insert.ext1249 = and i64 %v_fetch.sroa.0.4.extract.shift1835, 65535, !dbg !219
  %v_column.sroa.0.0.insert.insert1251 = or disjoint i64 %v_column.sroa.66.0.insert.insert1405, %v_column.sroa.0.0.insert.ext1249, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1251, ptr addrspace(3) %add.ptr535.2.7, align 8, !dbg !219
  %v_fetch.sroa.0.6.extract.shift1856 = lshr i64 %556, 48, !dbg !220
  %v_fetch.sroa.122.30.extract.shift2087 = and i64 %562, -281474976710656, !dbg !219
  %add517.3.7 = or disjoint i32 %mul514.7, %330, !dbg !217
  %add522.3.7 = or disjoint i32 %add517.3.7, 768, !dbg !217
  %570 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add522.3.7, !dbg !218
  %xor532894.3.7 = shl nuw nsw i32 %xor530893, 3, !dbg !218
  %add.ptr535.idx.3.7 = xor i32 %xor532894.3.7, 24, !dbg !218
  %add.ptr535.3.7 = getelementptr i8, ptr addrspace(3) %570, i32 %add.ptr535.idx.3.7, !dbg !218
  %571 = lshr i64 %560, 16, !dbg !219
  %v_column.sroa.98.0.insert.shift1563 = and i64 %571, 281470681743360, !dbg !219
  %v_column.sroa.98.0.insert.insert1565 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2087, %v_column.sroa.98.0.insert.shift1563, !dbg !219
  %572 = lshr i64 %558, 32, !dbg !219
  %v_column.sroa.66.0.insert.shift1408 = and i64 %572, 4294901760, !dbg !219
  %v_column.sroa.66.0.insert.insert1410 = or disjoint i64 %v_column.sroa.98.0.insert.insert1565, %v_column.sroa.66.0.insert.shift1408, !dbg !219
  %v_column.sroa.0.0.insert.insert1255 = or disjoint i64 %v_column.sroa.66.0.insert.insert1410, %v_fetch.sroa.0.6.extract.shift1856, !dbg !219
  store i64 %v_column.sroa.0.0.insert.insert1255, ptr addrspace(3) %add.ptr535.3.7, align 8, !dbg !219
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %add550.7 = or disjoint i32 %mul514.7, %333
  %add559.7 = or disjoint i32 %add550.7, %334, !dbg !226
  %573 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.7, !dbg !227
  %add.ptr571.idx.7 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.7 = getelementptr i8, ptr addrspace(3) %573, i32 %add.ptr571.idx.7, !dbg !227
  %574 = load <4 x half>, ptr addrspace(3) %add.ptr571.7, align 8, !dbg !228
  %add553.1.7 = or disjoint i32 %add550.7, %334, !dbg !226
  %add559.1.7 = or disjoint i32 %add553.1.7, 64, !dbg !226
  %575 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.1.7, !dbg !227
  %xor568892.1.7 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.1.7 = xor i32 %xor568892.1.7, 8, !dbg !227
  %add.ptr571.1.7 = getelementptr i8, ptr addrspace(3) %575, i32 %add.ptr571.idx.1.7, !dbg !227
  %576 = load <4 x half>, ptr addrspace(3) %add.ptr571.1.7, align 8, !dbg !228
  %add553.2.7 = or disjoint i32 %add550.7, %334, !dbg !226
  %add559.2.7 = or disjoint i32 %add553.2.7, 128, !dbg !226
  %577 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.2.7, !dbg !227
  %xor568892.2.7 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.2.7 = xor i32 %xor568892.2.7, 16, !dbg !227
  %add.ptr571.2.7 = getelementptr i8, ptr addrspace(3) %577, i32 %add.ptr571.idx.2.7, !dbg !227
  %578 = load <4 x half>, ptr addrspace(3) %add.ptr571.2.7, align 8, !dbg !228
  %add553.3.7 = or disjoint i32 %add550.7, %334, !dbg !226
  %add559.3.7 = or disjoint i32 %add553.3.7, 192, !dbg !226
  %579 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add559.3.7, !dbg !227
  %xor568892.3.7 = shl nuw nsw i32 %336, 3, !dbg !227
  %add.ptr571.idx.3.7 = xor i32 %xor568892.3.7, 24, !dbg !227
  %add.ptr571.3.7 = getelementptr i8, ptr addrspace(3) %579, i32 %add.ptr571.idx.3.7, !dbg !227
  %580 = load <4 x half>, ptr addrspace(3) %add.ptr571.3.7, align 8, !dbg !228
  %581 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %574, <4 x half> %320, <4 x float> %numerator.sroa.0.6), !dbg !229
  %582 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %576, <4 x half> %320, <4 x float> %numerator.sroa.34.6), !dbg !229
  %583 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %578, <4 x half> %320, <4 x float> %numerator.sroa.66.6), !dbg !229
  %584 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %580, <4 x half> %320, <4 x float> %numerator.sroa.98.6), !dbg !229
  %xor599.7 = xor i32 %next_slot.sroa.0.3.6, 1, !dbg !230
  br label %if.end601.7, !dbg !231

if.end601.7:                                      ; preds = %for.cond466.preheader.7, %if.end601.6
  %numerator.sroa.98.7 = phi <4 x float> [ %numerator.sroa.98.6, %if.end601.6 ], [ %584, %for.cond466.preheader.7 ], !dbg !207
  %numerator.sroa.66.7 = phi <4 x float> [ %numerator.sroa.66.6, %if.end601.6 ], [ %583, %for.cond466.preheader.7 ], !dbg !207
  %numerator.sroa.34.7 = phi <4 x float> [ %numerator.sroa.34.6, %if.end601.6 ], [ %582, %for.cond466.preheader.7 ], !dbg !207
  %numerator.sroa.0.7 = phi <4 x float> [ %numerator.sroa.0.6, %if.end601.6 ], [ %581, %for.cond466.preheader.7 ], !dbg !207
  %next_slot.sroa.0.3.7 = phi i32 [ %next_slot.sroa.0.3.6, %if.end601.6 ], [ %xor599.7, %for.cond466.preheader.7 ], !dbg !207
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.7, i64 0, !dbg !232
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.7, i64 1, !dbg !232
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.7, i64 2, !dbg !232
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.7, i64 3, !dbg !232
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %denominator.sroa.0.1, !dbg !233
  %div623 = fdiv contract float %numerator.sroa.0.4.vec.extract, %denominator.sroa.0.1, !dbg !234
  %div627 = fdiv contract float %numerator.sroa.0.8.vec.extract, %denominator.sroa.0.1, !dbg !235
  %div631 = fdiv contract float %numerator.sroa.0.12.vec.extract, %denominator.sroa.0.1, !dbg !236
  %numerator.sroa.34.16.vec.extract = extractelement <4 x float> %numerator.sroa.34.7, i64 0, !dbg !232
  %numerator.sroa.34.20.vec.extract = extractelement <4 x float> %numerator.sroa.34.7, i64 1, !dbg !232
  %numerator.sroa.34.24.vec.extract = extractelement <4 x float> %numerator.sroa.34.7, i64 2, !dbg !232
  %numerator.sroa.34.28.vec.extract = extractelement <4 x float> %numerator.sroa.34.7, i64 3, !dbg !232
  %div.1 = fdiv contract float %numerator.sroa.34.16.vec.extract, %denominator.sroa.0.1, !dbg !233
  %div623.1 = fdiv contract float %numerator.sroa.34.20.vec.extract, %denominator.sroa.0.1, !dbg !234
  %div627.1 = fdiv contract float %numerator.sroa.34.24.vec.extract, %denominator.sroa.0.1, !dbg !235
  %div631.1 = fdiv contract float %numerator.sroa.34.28.vec.extract, %denominator.sroa.0.1, !dbg !236
  %numerator.sroa.66.32.vec.extract = extractelement <4 x float> %numerator.sroa.66.7, i64 0, !dbg !232
  %numerator.sroa.66.36.vec.extract = extractelement <4 x float> %numerator.sroa.66.7, i64 1, !dbg !232
  %numerator.sroa.66.40.vec.extract = extractelement <4 x float> %numerator.sroa.66.7, i64 2, !dbg !232
  %numerator.sroa.66.44.vec.extract = extractelement <4 x float> %numerator.sroa.66.7, i64 3, !dbg !232
  %div.2 = fdiv contract float %numerator.sroa.66.32.vec.extract, %denominator.sroa.0.1, !dbg !233
  %div623.2 = fdiv contract float %numerator.sroa.66.36.vec.extract, %denominator.sroa.0.1, !dbg !234
  %div627.2 = fdiv contract float %numerator.sroa.66.40.vec.extract, %denominator.sroa.0.1, !dbg !235
  %div631.2 = fdiv contract float %numerator.sroa.66.44.vec.extract, %denominator.sroa.0.1, !dbg !236
  %numerator.sroa.98.48.vec.extract = extractelement <4 x float> %numerator.sroa.98.7, i64 0, !dbg !232
  %numerator.sroa.98.52.vec.extract = extractelement <4 x float> %numerator.sroa.98.7, i64 1, !dbg !232
  %numerator.sroa.98.56.vec.extract = extractelement <4 x float> %numerator.sroa.98.7, i64 2, !dbg !232
  %numerator.sroa.98.60.vec.extract = extractelement <4 x float> %numerator.sroa.98.7, i64 3, !dbg !232
  %div.3 = fdiv contract float %numerator.sroa.98.48.vec.extract, %denominator.sroa.0.1, !dbg !233
  %div623.3 = fdiv contract float %numerator.sroa.98.52.vec.extract, %denominator.sroa.0.1, !dbg !234
  %div627.3 = fdiv contract float %numerator.sroa.98.56.vec.extract, %denominator.sroa.0.1, !dbg !235
  %div631.3 = fdiv contract float %numerator.sroa.98.60.vec.extract, %denominator.sroa.0.1, !dbg !236
  %mul664 = shl nuw nsw i32 %next_slot.sroa.0.3.7, 10
  %xor690890 = shl nuw nsw i32 %8, 2
  %585 = and i32 %xor690890, 4
  %586 = or disjoint i32 %585, %mul664
  %add681 = or disjoint i32 %586, %mul49
  %587 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %588 = fptrunc float %div to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %587), !dbg !237, !noalias !241
  %589 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %590 = fptrunc float %div623 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %589), !dbg !246, !noalias !241
  %591 = bitcast half %588 to i16, !dbg !248
  %592 = bitcast half %590 to i16, !dbg !251
  %593 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !252, !noalias !256
  %594 = fptrunc float %div627 to half, !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %593), !dbg !252, !noalias !256
  %595 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !256
  %596 = fptrunc float %div631 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %595), !dbg !261, !noalias !256
  %597 = bitcast half %594 to i16, !dbg !263
  %598 = bitcast half %596 to i16, !dbg !265
  %__7.sroa.6.0.insert.ext = zext i16 %598 to i64, !dbg !266
  %__7.sroa.6.0.insert.shift = shl nuw i64 %__7.sroa.6.0.insert.ext, 48, !dbg !266
  %__7.sroa.5.0.insert.ext = zext i16 %597 to i64, !dbg !266
  %__7.sroa.5.0.insert.shift = shl nuw nsw i64 %__7.sroa.5.0.insert.ext, 32, !dbg !266
  %__7.sroa.5.0.insert.insert = or disjoint i64 %__7.sroa.6.0.insert.shift, %__7.sroa.5.0.insert.shift, !dbg !266
  %__7.sroa.4.0.insert.ext = zext i16 %592 to i64, !dbg !266
  %__7.sroa.4.0.insert.shift = shl nuw nsw i64 %__7.sroa.4.0.insert.ext, 16, !dbg !266
  %__7.sroa.4.0.insert.insert = or disjoint i64 %__7.sroa.5.0.insert.insert, %__7.sroa.4.0.insert.shift, !dbg !266
  %__7.sroa.0.0.insert.ext = zext i16 %591 to i64, !dbg !266
  %__7.sroa.0.0.insert.insert = or disjoint i64 %__7.sroa.4.0.insert.insert, %__7.sroa.0.0.insert.ext, !dbg !266
  %599 = getelementptr %struct.__half, ptr addrspace(3) @shared, i32 %add681, !dbg !267
  %add.ptr693.idx = shl nuw nsw i32 %xor56, 4, !dbg !267
  %add.ptr693 = getelementptr i8, ptr addrspace(3) %599, i32 %add.ptr693.idx, !dbg !267
  store i64 %__7.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr693, align 8, !dbg !268
  %600 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %601 = fptrunc float %div.1 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %600), !dbg !237, !noalias !241
  %602 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %603 = fptrunc float %div623.1 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %602), !dbg !246, !noalias !241
  %604 = bitcast half %601 to i16, !dbg !248
  %605 = bitcast half %603 to i16, !dbg !251
  %606 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !252, !noalias !256
  %607 = fptrunc float %div627.1 to half, !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %606), !dbg !252, !noalias !256
  %608 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !256
  %609 = fptrunc float %div631.1 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %608), !dbg !261, !noalias !256
  %610 = bitcast half %607 to i16, !dbg !263
  %611 = bitcast half %609 to i16, !dbg !265
  %__7.sroa.6.0.insert.ext.1 = zext i16 %611 to i64, !dbg !266
  %__7.sroa.6.0.insert.shift.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.1, 48, !dbg !266
  %__7.sroa.5.0.insert.ext.1 = zext i16 %610 to i64, !dbg !266
  %__7.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1, 32, !dbg !266
  %__7.sroa.5.0.insert.insert.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.1, %__7.sroa.5.0.insert.shift.1, !dbg !266
  %__7.sroa.4.0.insert.ext.1 = zext i16 %605 to i64, !dbg !266
  %__7.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1, 16, !dbg !266
  %__7.sroa.4.0.insert.insert.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.1, %__7.sroa.4.0.insert.shift.1, !dbg !266
  %__7.sroa.0.0.insert.ext.1 = zext i16 %604 to i64, !dbg !266
  %__7.sroa.0.0.insert.insert.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.1, %__7.sroa.0.0.insert.ext.1, !dbg !266
  %add.ptr693.idx.1 = shl nuw nsw i32 %xor56.1, 4, !dbg !267
  %add.ptr693.1 = getelementptr i8, ptr addrspace(3) %599, i32 %add.ptr693.idx.1, !dbg !267
  store i64 %__7.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr693.1, align 8, !dbg !268
  %612 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %613 = fptrunc float %div.2 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %612), !dbg !237, !noalias !241
  %614 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %615 = fptrunc float %div623.2 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %614), !dbg !246, !noalias !241
  %616 = bitcast half %613 to i16, !dbg !248
  %617 = bitcast half %615 to i16, !dbg !251
  %618 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !252, !noalias !256
  %619 = fptrunc float %div627.2 to half, !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %618), !dbg !252, !noalias !256
  %620 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !256
  %621 = fptrunc float %div631.2 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %620), !dbg !261, !noalias !256
  %622 = bitcast half %619 to i16, !dbg !263
  %623 = bitcast half %621 to i16, !dbg !265
  %__7.sroa.6.0.insert.ext.2 = zext i16 %623 to i64, !dbg !266
  %__7.sroa.6.0.insert.shift.2 = shl nuw i64 %__7.sroa.6.0.insert.ext.2, 48, !dbg !266
  %__7.sroa.5.0.insert.ext.2 = zext i16 %622 to i64, !dbg !266
  %__7.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.2, 32, !dbg !266
  %__7.sroa.5.0.insert.insert.2 = or disjoint i64 %__7.sroa.6.0.insert.shift.2, %__7.sroa.5.0.insert.shift.2, !dbg !266
  %__7.sroa.4.0.insert.ext.2 = zext i16 %617 to i64, !dbg !266
  %__7.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.2, 16, !dbg !266
  %__7.sroa.4.0.insert.insert.2 = or disjoint i64 %__7.sroa.5.0.insert.insert.2, %__7.sroa.4.0.insert.shift.2, !dbg !266
  %__7.sroa.0.0.insert.ext.2 = zext i16 %616 to i64, !dbg !266
  %__7.sroa.0.0.insert.insert.2 = or disjoint i64 %__7.sroa.4.0.insert.insert.2, %__7.sroa.0.0.insert.ext.2, !dbg !266
  %add.ptr693.idx.2 = shl nuw nsw i32 %xor56.2, 4, !dbg !267
  %add.ptr693.2 = getelementptr i8, ptr addrspace(3) %599, i32 %add.ptr693.idx.2, !dbg !267
  store i64 %__7.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr693.2, align 8, !dbg !268
  %624 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %625 = fptrunc float %div.3 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %624), !dbg !237, !noalias !241
  %626 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %627 = fptrunc float %div623.3 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %626), !dbg !246, !noalias !241
  %628 = bitcast half %625 to i16, !dbg !248
  %629 = bitcast half %627 to i16, !dbg !251
  %630 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !252, !noalias !256
  %631 = fptrunc float %div627.3 to half, !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %630), !dbg !252, !noalias !256
  %632 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !256
  %633 = fptrunc float %div631.3 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %632), !dbg !261, !noalias !256
  %634 = bitcast half %631 to i16, !dbg !263
  %635 = bitcast half %633 to i16, !dbg !265
  %__7.sroa.6.0.insert.ext.3 = zext i16 %635 to i64, !dbg !266
  %__7.sroa.6.0.insert.shift.3 = shl nuw i64 %__7.sroa.6.0.insert.ext.3, 48, !dbg !266
  %__7.sroa.5.0.insert.ext.3 = zext i16 %634 to i64, !dbg !266
  %__7.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.3, 32, !dbg !266
  %__7.sroa.5.0.insert.insert.3 = or disjoint i64 %__7.sroa.6.0.insert.shift.3, %__7.sroa.5.0.insert.shift.3, !dbg !266
  %__7.sroa.4.0.insert.ext.3 = zext i16 %629 to i64, !dbg !266
  %__7.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.3, 16, !dbg !266
  %__7.sroa.4.0.insert.insert.3 = or disjoint i64 %__7.sroa.5.0.insert.insert.3, %__7.sroa.4.0.insert.shift.3, !dbg !266
  %__7.sroa.0.0.insert.ext.3 = zext i16 %628 to i64, !dbg !266
  %__7.sroa.0.0.insert.insert.3 = or disjoint i64 %__7.sroa.4.0.insert.insert.3, %__7.sroa.0.0.insert.ext.3, !dbg !266
  %add.ptr693.idx.3 = shl nuw nsw i32 %xor56.3, 4, !dbg !267
  %add.ptr693.3 = getelementptr i8, ptr addrspace(3) %599, i32 %add.ptr693.idx.3, !dbg !267
  store i64 %__7.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr693.3, align 8, !dbg !268
  fence syncscope("warp") release, !dbg !269
  tail call void @llvm.mxc.barrier.warp(), !dbg !272
  fence syncscope("warp") acquire, !dbg !273
  %.idx1001 = shl nuw nsw i32 %next_slot.sroa.0.3.7, 11, !dbg !274
  %636 = getelementptr i8, ptr addrspace(3) %5, i32 %.idx1001, !dbg !274
  %637 = load i64, ptr addrspace(3) %636, align 16, !dbg !275
  %add.ptr730.1 = getelementptr i8, ptr addrspace(3) %636, i32 8, !dbg !274
  %638 = load i64, ptr addrspace(3) %add.ptr730.1, align 8, !dbg !275
  %add.ptr751 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !276
  store i64 %637, ptr addrspace(1) %add.ptr751, align 16, !dbg !277
  %output_fetch.sroa.6.0.add.ptr751.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr751, i64 8, !dbg !277
  store i64 %638, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr751.sroa_idx, align 8, !dbg !277
  %639 = getelementptr i8, ptr addrspace(3) %636, i32 1024, !dbg !274
  %add.ptr730.11129 = getelementptr i8, ptr addrspace(3) %636, i32 1032, !dbg !274
  %640 = load i64, ptr addrspace(3) %add.ptr730.11129, align 8, !dbg !275
  %641 = load i64, ptr addrspace(3) %639, align 16, !dbg !275
  %add.ptr751.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %6, !dbg !276
  store i64 %640, ptr addrspace(1) %add.ptr751.1, align 16, !dbg !277
  %output_fetch.sroa.6.0.add.ptr751.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr751.1, i64 8, !dbg !277
  store i64 %641, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr751.1.sroa_idx, align 8, !dbg !277
  ret void, !dbg !278
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

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
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nomerge }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "mxcc version 1.0.0 (d9102a1572)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v125_worker1_c12_valid_block_slot_toggle_sc-16g-2/codegen/candidate125/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v125_worker1_c12_valid_block_slot_toggle_sc-16g-2/codegen/candidate125/case12.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 28, column: 3, scope: !40)
!44 = !DILocation(line: 29, column: 43, scope: !40)
!45 = !DILocation(line: 29, column: 29, scope: !40)
!46 = !DILocation(line: 32, column: 24, scope: !40)
!47 = !DILocation(line: 32, column: 203, scope: !40)
!48 = !DILocation(line: 29, column: 124, scope: !40)
!49 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !52)
!50 = distinct !DISubprogram(name: "__barrier_warp", scope: !51, file: !51, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!51 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!52 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !54)
!53 = distinct !DISubprogram(name: "__syncwarp", scope: !51, file: !51, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!54 = distinct !DILocation(line: 35, column: 3, scope: !40)
!55 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !52)
!56 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !52)
!57 = !DILocation(line: 38, column: 140, scope: !40)
!58 = !DILocation(line: 38, column: 168, scope: !40)
!59 = !DILocation(line: 38, column: 94, scope: !40)
!60 = !DILocation(line: 38, column: 174, scope: !40)
!61 = !DILocation(line: 38, column: 57, scope: !40)
!62 = !DILocation(line: 38, column: 38, scope: !40)
!63 = !DILocation(line: 38, column: 111, scope: !40)
!64 = !DILocation(line: 54, column: 3, scope: !40)
!65 = !DILocation(line: 55, column: 21, scope: !40)
!66 = !DILocation(line: 56, column: 27, scope: !40)
!67 = !DILocation(line: 97, column: 36, scope: !40)
!68 = !DILocation(line: 351, column: 10, scope: !69, inlinedAt: !71)
!69 = distinct !DISubprogram(name: "max", scope: !70, file: !70, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!70 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!71 = distinct !DILocation(line: 97, column: 20, scope: !40)
!72 = !DILocation(line: 1018, column: 9, scope: !73, inlinedAt: !74)
!73 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!74 = distinct !DILocation(line: 99, column: 34, scope: !40)
!75 = !DILocation(line: 171, column: 37, scope: !76, inlinedAt: !77)
!76 = distinct !DISubprogram(name: "__lane_id", scope: !51, file: !51, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!77 = distinct !DILocation(line: 990, column: 14, scope: !78, inlinedAt: !79)
!78 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!79 = distinct !DILocation(line: 1019, column: 11, scope: !73, inlinedAt: !74)
!80 = !DILocation(line: 171, column: 10, scope: !76, inlinedAt: !77)
!81 = !DILocation(line: 991, column: 20, scope: !78, inlinedAt: !79)
!82 = !DILocation(line: 992, column: 36, scope: !78, inlinedAt: !79)
!83 = !DILocation(line: 992, column: 17, scope: !78, inlinedAt: !79)
!84 = !DILocation(line: 992, column: 11, scope: !78, inlinedAt: !79)
!85 = !DILocation(line: 993, column: 43, scope: !78, inlinedAt: !79)
!86 = !DILocation(line: 993, column: 10, scope: !78, inlinedAt: !79)
!87 = !DILocation(line: 1020, column: 14, scope: !73, inlinedAt: !74)
!88 = !DILocation(line: 351, column: 10, scope: !69, inlinedAt: !89)
!89 = distinct !DILocation(line: 99, column: 18, scope: !40)
!90 = !DILocation(line: 1018, column: 9, scope: !73, inlinedAt: !91)
!91 = distinct !DILocation(line: 100, column: 34, scope: !40)
!92 = !DILocation(line: 171, column: 37, scope: !76, inlinedAt: !93)
!93 = distinct !DILocation(line: 990, column: 14, scope: !78, inlinedAt: !94)
!94 = distinct !DILocation(line: 1019, column: 11, scope: !73, inlinedAt: !91)
!95 = !DILocation(line: 171, column: 10, scope: !76, inlinedAt: !93)
!96 = !DILocation(line: 991, column: 20, scope: !78, inlinedAt: !94)
!97 = !DILocation(line: 992, column: 36, scope: !78, inlinedAt: !94)
!98 = !DILocation(line: 992, column: 17, scope: !78, inlinedAt: !94)
!99 = !DILocation(line: 992, column: 11, scope: !78, inlinedAt: !94)
!100 = !DILocation(line: 993, column: 43, scope: !78, inlinedAt: !94)
!101 = !DILocation(line: 993, column: 10, scope: !78, inlinedAt: !94)
!102 = !DILocation(line: 1020, column: 14, scope: !73, inlinedAt: !91)
!103 = !DILocation(line: 351, column: 10, scope: !69, inlinedAt: !104)
!104 = distinct !DILocation(line: 100, column: 18, scope: !40)
!105 = !DILocation(line: 110, column: 25, scope: !40)
!106 = !DILocation(line: 112, column: 26, scope: !40)
!107 = !DILocation(line: 113, column: 26, scope: !40)
!108 = !DILocation(line: 114, column: 26, scope: !40)
!109 = !DILocation(line: 115, column: 26, scope: !40)
!110 = !DILocation(line: 117, column: 25, scope: !40)
!111 = !DILocation(line: 118, column: 25, scope: !40)
!112 = !DILocation(line: 119, column: 25, scope: !40)
!113 = !DILocation(line: 120, column: 25, scope: !40)
!114 = !DILocation(line: 122, column: 23, scope: !40)
!115 = !DILocation(line: 123, column: 23, scope: !40)
!116 = !DILocation(line: 124, column: 23, scope: !40)
!117 = !DILocation(line: 125, column: 23, scope: !40)
!118 = !DILocation(line: 285, column: 49, scope: !119, inlinedAt: !120)
!119 = distinct !DISubprogram(name: "exp2f", scope: !70, file: !70, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!120 = distinct !DILocation(line: 126, column: 15, scope: !40)
!121 = !DILocation(line: 285, column: 49, scope: !119, inlinedAt: !122)
!122 = distinct !DILocation(line: 127, column: 15, scope: !40)
!123 = !DILocation(line: 285, column: 49, scope: !119, inlinedAt: !124)
!124 = distinct !DILocation(line: 128, column: 15, scope: !40)
!125 = !DILocation(line: 285, column: 49, scope: !119, inlinedAt: !126)
!126 = distinct !DILocation(line: 129, column: 15, scope: !40)
!127 = !DILocation(line: 1007, column: 10, scope: !128, inlinedAt: !130)
!128 = distinct !DISubprogram(name: "__float2half_rn", scope: !129, file: !129, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!129 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!130 = distinct !DILocation(line: 1077, column: 18, scope: !131, inlinedAt: !132)
!131 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !129, file: !129, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!132 = distinct !DILocation(line: 1295, column: 23, scope: !133, inlinedAt: !134)
!133 = distinct !DISubprogram(name: "__float22half2_rn", scope: !129, file: !129, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!134 = distinct !DILocation(line: 130, column: 29, scope: !40)
!135 = !{!136, !138}
!136 = distinct !{!136, !137, !"_ZL17__floats2half2_rnff: %agg.result"}
!137 = distinct !{!137, !"_ZL17__floats2half2_rnff"}
!138 = distinct !{!138, !139, !"_ZL17__float22half2_rn6float2: %agg.result"}
!139 = distinct !{!139, !"_ZL17__float22half2_rn6float2"}
!140 = !DILocation(line: 1007, column: 10, scope: !128, inlinedAt: !141)
!141 = distinct !DILocation(line: 1077, column: 38, scope: !131, inlinedAt: !132)
!142 = !DILocation(line: 1007, column: 10, scope: !128, inlinedAt: !143)
!143 = distinct !DILocation(line: 1077, column: 18, scope: !131, inlinedAt: !144)
!144 = distinct !DILocation(line: 1295, column: 23, scope: !133, inlinedAt: !145)
!145 = distinct !DILocation(line: 131, column: 29, scope: !40)
!146 = !{!147, !149}
!147 = distinct !{!147, !148, !"_ZL17__floats2half2_rnff: %agg.result"}
!148 = distinct !{!148, !"_ZL17__floats2half2_rnff"}
!149 = distinct !{!149, !150, !"_ZL17__float22half2_rn6float2: %agg.result"}
!150 = distinct !{!150, !"_ZL17__float22half2_rn6float2"}
!151 = !DILocation(line: 1007, column: 10, scope: !128, inlinedAt: !152)
!152 = distinct !DILocation(line: 1077, column: 38, scope: !131, inlinedAt: !144)
!153 = !DILocation(line: 132, column: 51, scope: !40)
!154 = !DILocation(line: 1082, column: 16, scope: !155, inlinedAt: !156)
!155 = distinct !DISubprogram(name: "__half2float", scope: !129, file: !129, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!156 = distinct !DILocation(line: 136, column: 55, scope: !157, inlinedAt: !158)
!157 = distinct !DISubprogram(name: "operator float", scope: !129, file: !129, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!158 = distinct !DILocation(line: 136, column: 50, scope: !40)
!159 = !DILocation(line: 136, column: 40, scope: !40)
!160 = !DILocation(line: 1018, column: 9, scope: !73, inlinedAt: !161)
!161 = distinct !DILocation(line: 138, column: 40, scope: !40)
!162 = !DILocation(line: 171, column: 37, scope: !76, inlinedAt: !163)
!163 = distinct !DILocation(line: 990, column: 14, scope: !78, inlinedAt: !164)
!164 = distinct !DILocation(line: 1019, column: 11, scope: !73, inlinedAt: !161)
!165 = !DILocation(line: 171, column: 10, scope: !76, inlinedAt: !163)
!166 = !DILocation(line: 991, column: 20, scope: !78, inlinedAt: !164)
!167 = !DILocation(line: 992, column: 36, scope: !78, inlinedAt: !164)
!168 = !DILocation(line: 992, column: 17, scope: !78, inlinedAt: !164)
!169 = !DILocation(line: 992, column: 11, scope: !78, inlinedAt: !164)
!170 = !DILocation(line: 993, column: 43, scope: !78, inlinedAt: !164)
!171 = !DILocation(line: 993, column: 10, scope: !78, inlinedAt: !164)
!172 = !DILocation(line: 1020, column: 14, scope: !73, inlinedAt: !161)
!173 = !DILocation(line: 138, column: 38, scope: !40)
!174 = !DILocation(line: 1018, column: 9, scope: !73, inlinedAt: !175)
!175 = distinct !DILocation(line: 139, column: 40, scope: !40)
!176 = !DILocation(line: 171, column: 37, scope: !76, inlinedAt: !177)
!177 = distinct !DILocation(line: 990, column: 14, scope: !78, inlinedAt: !178)
!178 = distinct !DILocation(line: 1019, column: 11, scope: !73, inlinedAt: !175)
!179 = !DILocation(line: 171, column: 10, scope: !76, inlinedAt: !177)
!180 = !DILocation(line: 991, column: 20, scope: !78, inlinedAt: !178)
!181 = !DILocation(line: 992, column: 36, scope: !78, inlinedAt: !178)
!182 = !DILocation(line: 992, column: 17, scope: !78, inlinedAt: !178)
!183 = !DILocation(line: 992, column: 11, scope: !78, inlinedAt: !178)
!184 = !DILocation(line: 993, column: 43, scope: !78, inlinedAt: !178)
!185 = !DILocation(line: 993, column: 10, scope: !78, inlinedAt: !178)
!186 = !DILocation(line: 1020, column: 14, scope: !73, inlinedAt: !175)
!187 = !DILocation(line: 139, column: 38, scope: !40)
!188 = !DILocation(line: 140, column: 3, scope: !40)
!189 = !DILocation(line: 59, column: 7, scope: !40)
!190 = !DILocation(line: 60, column: 47, scope: !40)
!191 = !DILocation(line: 60, column: 33, scope: !40)
!192 = !DILocation(line: 63, column: 28, scope: !40)
!193 = !DILocation(line: 63, column: 426, scope: !40)
!194 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !195)
!195 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !196)
!196 = distinct !DILocation(line: 66, column: 7, scope: !40)
!197 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !195)
!198 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !195)
!199 = !DILocation(line: 73, column: 51, scope: !40)
!200 = !DILocation(line: 73, column: 32, scope: !40)
!201 = !DILocation(line: 75, column: 44, scope: !40)
!202 = !DILocation(line: 83, column: 81, scope: !40)
!203 = !DILocation(line: 83, column: 13, scope: !40)
!204 = !DILocation(line: 88, column: 46, scope: !40)
!205 = !DILocation(line: 83, column: 68, scope: !40)
!206 = !DILocation(line: 91, column: 5, scope: !40)
!207 = !DILocation(line: 0, scope: !40)
!208 = !DILocation(line: 55, column: 85, scope: !40)
!209 = !DILocation(line: 90, column: 36, scope: !40)
!210 = !DILocation(line: 93, column: 7, scope: !40)
!211 = !DILocation(line: 148, column: 23, scope: !40)
!212 = !DILocation(line: 149, column: 29, scope: !40)
!213 = !DILocation(line: 151, column: 7, scope: !40)
!214 = !DILocation(line: 152, column: 54, scope: !40)
!215 = !DILocation(line: 152, column: 40, scope: !40)
!216 = !DILocation(line: 152, column: 163, scope: !40)
!217 = !DILocation(line: 159, column: 117, scope: !40)
!218 = !DILocation(line: 159, column: 26, scope: !40)
!219 = !DILocation(line: 159, column: 332, scope: !40)
!220 = !DILocation(line: 157, column: 27, scope: !40)
!221 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !222)
!222 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !223)
!223 = distinct !DILocation(line: 161, column: 7, scope: !40)
!224 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !222)
!225 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !222)
!226 = !DILocation(line: 164, column: 225, scope: !40)
!227 = !DILocation(line: 164, column: 65, scope: !40)
!228 = !DILocation(line: 164, column: 46, scope: !40)
!229 = !DILocation(line: 169, column: 46, scope: !40)
!230 = !DILocation(line: 174, column: 36, scope: !40)
!231 = !DILocation(line: 175, column: 5, scope: !40)
!232 = !DILocation(line: 180, column: 21, scope: !40)
!233 = !DILocation(line: 182, column: 22, scope: !40)
!234 = !DILocation(line: 183, column: 22, scope: !40)
!235 = !DILocation(line: 184, column: 22, scope: !40)
!236 = !DILocation(line: 185, column: 22, scope: !40)
!237 = !DILocation(line: 1007, column: 10, scope: !128, inlinedAt: !238)
!238 = distinct !DILocation(line: 1077, column: 18, scope: !131, inlinedAt: !239)
!239 = distinct !DILocation(line: 1295, column: 23, scope: !133, inlinedAt: !240)
!240 = distinct !DILocation(line: 192, column: 27, scope: !40)
!241 = !{!242, !244}
!242 = distinct !{!242, !243, !"_ZL17__floats2half2_rnff: %agg.result"}
!243 = distinct !{!243, !"_ZL17__floats2half2_rnff"}
!244 = distinct !{!244, !245, !"_ZL17__float22half2_rn6float2: %agg.result"}
!245 = distinct !{!245, !"_ZL17__float22half2_rn6float2"}
!246 = !DILocation(line: 1007, column: 10, scope: !128, inlinedAt: !247)
!247 = distinct !DILocation(line: 1077, column: 38, scope: !131, inlinedAt: !239)
!248 = !DILocation(line: 596, column: 67, scope: !249, inlinedAt: !250)
!249 = distinct !DISubprogram(name: "__half2", scope: !129, file: !129, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!250 = distinct !DILocation(line: 1077, column: 10, scope: !131, inlinedAt: !239)
!251 = !DILocation(line: 596, column: 73, scope: !249, inlinedAt: !250)
!252 = !DILocation(line: 1007, column: 10, scope: !128, inlinedAt: !253)
!253 = distinct !DILocation(line: 1077, column: 18, scope: !131, inlinedAt: !254)
!254 = distinct !DILocation(line: 1295, column: 23, scope: !133, inlinedAt: !255)
!255 = distinct !DILocation(line: 193, column: 27, scope: !40)
!256 = !{!257, !259}
!257 = distinct !{!257, !258, !"_ZL17__floats2half2_rnff: %agg.result"}
!258 = distinct !{!258, !"_ZL17__floats2half2_rnff"}
!259 = distinct !{!259, !260, !"_ZL17__float22half2_rn6float2: %agg.result"}
!260 = distinct !{!260, !"_ZL17__float22half2_rn6float2"}
!261 = !DILocation(line: 1007, column: 10, scope: !128, inlinedAt: !262)
!262 = distinct !DILocation(line: 1077, column: 38, scope: !131, inlinedAt: !254)
!263 = !DILocation(line: 596, column: 67, scope: !249, inlinedAt: !264)
!264 = distinct !DILocation(line: 1077, column: 10, scope: !131, inlinedAt: !254)
!265 = !DILocation(line: 596, column: 73, scope: !249, inlinedAt: !264)
!266 = !DILocation(line: 194, column: 38, scope: !40)
!267 = !DILocation(line: 195, column: 22, scope: !40)
!268 = !DILocation(line: 195, column: 441, scope: !40)
!269 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !270)
!270 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !271)
!271 = distinct !DILocation(line: 197, column: 3, scope: !40)
!272 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !270)
!273 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !270)
!274 = !DILocation(line: 202, column: 65, scope: !40)
!275 = !DILocation(line: 202, column: 46, scope: !40)
!276 = !DILocation(line: 204, column: 22, scope: !40)
!277 = !DILocation(line: 204, column: 134, scope: !40)
!278 = !DILocation(line: 206, column: 1, scope: !40)
