; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v136_worker1_c12_max4x8_balanced_sc-16g-2/codegen/candidate136/case12.device.cpp'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v136_worker1_c12_max4x8_balanced_sc-16g-2/codegen/candidate136/case12.device.cpp"
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
  %xor851 = and i32 %mul11, 56
  %call27.masked = and i32 %2, 1016
  %mul29 = xor i32 %xor851, %call27.masked
  %and33 = lshr i32 %2, 3
  %shr34 = and i32 %and33, 1
  %3 = zext nneg i32 %add9 to i64, !dbg !43
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %3, !dbg !44
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %add.ptr, align 16, !dbg !45
  %qk_fetch.sroa.38.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !45
  %qk_fetch.sroa.38.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr.sroa_idx, align 8, !dbg !45
  %4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul29, !dbg !46
  %5 = getelementptr inbounds %struct.__half, ptr addrspace(3) %4, i32 %mul24, !dbg !46
  %add.ptr39.idx = shl nuw nsw i32 %shr34, 3, !dbg !46
  %add.ptr39 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr39, align 8, !dbg !47
  %xor35.1 = shl nuw nsw i32 %shr34, 3, !dbg !46
  %add.ptr39.idx.1 = xor i32 %xor35.1, 8, !dbg !46
  %add.ptr39.1 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.38.0.copyload, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !47
  %6 = add nuw nsw i64 %3, 512, !dbg !48
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %6, !dbg !44
  %qk_fetch.sroa.0.0.copyload2229 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %qk_fetch.sroa.38.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %qk_fetch.sroa.38.0.copyload2246 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr.1.sroa_idx, align 8, !dbg !45
  %7 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 1024, !dbg !46
  %add.ptr39.1952 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload2229, ptr addrspace(3) %add.ptr39.1952, align 8, !dbg !47
  %add.ptr39.1.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.38.0.copyload2246, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !47
  fence syncscope("warp") release, !dbg !49
  tail call void @llvm.mxc.barrier.warp(), !dbg !55
  fence syncscope("warp") acquire, !dbg !56
  %and48 = shl nuw nsw i32 %2, 6
  %mul49 = and i32 %and48, 960
  %shr52 = lshr i32 %2, 5
  %and55 = and i32 %2, 7
  %and60 = lshr i32 %2, 4
  %8 = xor i32 %and33, %and60
  %xor65850 = xor i32 %8, %2
  %xor68 = shl nuw nsw i32 %xor65850, 2
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
  %mul120 = shl nsw i32 %0, 13
  %mul122 = shl nsw i32 %1, 3
  %add123 = add nuw nsw i32 %mul120, %mul122
  %shr130 = lshr i32 %1, 4
  %invariant.umin = tail call i32 @llvm.umin.i32(i32 %shr130, i32 63), !dbg !64
  %mul138 = shl nsw i32 %0, 16
  %add140 = or disjoint i32 %mul11, %mul138
  %13 = lshr i32 %2, 2
  %mul249 = and i32 %13, 252
  %14 = zext nneg i32 %add123 to i64, !dbg !64
  %arrayidx125 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %14, !dbg !65
  %15 = load i32, ptr addrspace(1) %arrayidx125, align 4, !dbg !65, !tbaa !30
  %or.cond910 = icmp ugt i32 %15, %invariant.umin, !dbg !66
  br i1 %or.cond910, label %if.end268, label %if.then, !dbg !66

for.body277.preheader:                            ; preds = %if.end268.7
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
  %scores.sroa.23.20.vec.extract2369 = extractelement <4 x float> %scores.sroa.23.0, i64 1, !dbg !67
  %21 = tail call contract noundef float @llvm.maxnum.f32(float %20, float %scores.sroa.23.20.vec.extract2369), !dbg !68
  %scores.sroa.23.24.vec.extract2376 = extractelement <4 x float> %scores.sroa.23.0, i64 2, !dbg !67
  %22 = tail call contract noundef float @llvm.maxnum.f32(float %21, float %scores.sroa.23.24.vec.extract2376), !dbg !68
  %scores.sroa.23.28.vec.extract2383 = extractelement <4 x float> %scores.sroa.23.0, i64 3, !dbg !67
  %23 = tail call contract noundef float @llvm.maxnum.f32(float %22, float %scores.sroa.23.28.vec.extract2383), !dbg !68
  %scores.sroa.44.32.vec.extract = extractelement <4 x float> %scores.sroa.44.0, i64 0, !dbg !67
  %24 = tail call contract noundef float @llvm.maxnum.f32(float %scores.sroa.44.32.vec.extract, float 0xFFF0000000000000), !dbg !68
  %scores.sroa.44.36.vec.extract2398 = extractelement <4 x float> %scores.sroa.44.0, i64 1, !dbg !67
  %25 = tail call contract noundef float @llvm.maxnum.f32(float %24, float %scores.sroa.44.36.vec.extract2398), !dbg !68
  %scores.sroa.44.40.vec.extract2405 = extractelement <4 x float> %scores.sroa.44.0, i64 2, !dbg !67
  %26 = tail call contract noundef float @llvm.maxnum.f32(float %25, float %scores.sroa.44.40.vec.extract2405), !dbg !68
  %scores.sroa.44.44.vec.extract2412 = extractelement <4 x float> %scores.sroa.44.0, i64 3, !dbg !67
  %27 = tail call contract noundef float @llvm.maxnum.f32(float %26, float %scores.sroa.44.44.vec.extract2412), !dbg !68
  %scores.sroa.65.48.vec.extract = extractelement <4 x float> %scores.sroa.65.0, i64 0, !dbg !67
  %28 = tail call contract noundef float @llvm.maxnum.f32(float %27, float %scores.sroa.65.48.vec.extract), !dbg !68
  %scores.sroa.65.52.vec.extract2427 = extractelement <4 x float> %scores.sroa.65.0, i64 1, !dbg !67
  %29 = tail call contract noundef float @llvm.maxnum.f32(float %28, float %scores.sroa.65.52.vec.extract2427), !dbg !68
  %scores.sroa.65.56.vec.extract2434 = extractelement <4 x float> %scores.sroa.65.0, i64 2, !dbg !67
  %30 = tail call contract noundef float @llvm.maxnum.f32(float %29, float %scores.sroa.65.56.vec.extract2434), !dbg !68
  %scores.sroa.65.60.vec.extract2441 = extractelement <4 x float> %scores.sroa.65.0, i64 3, !dbg !67
  %31 = tail call contract noundef float @llvm.maxnum.f32(float %30, float %scores.sroa.65.60.vec.extract2441), !dbg !68
  %scores.sroa.86.64.vec.extract = extractelement <4 x float> %scores.sroa.86.0, i64 0, !dbg !67
  %32 = tail call contract noundef float @llvm.maxnum.f32(float %scores.sroa.86.64.vec.extract, float 0xFFF0000000000000), !dbg !68
  %scores.sroa.86.68.vec.extract2456 = extractelement <4 x float> %scores.sroa.86.0, i64 1, !dbg !67
  %33 = tail call contract noundef float @llvm.maxnum.f32(float %32, float %scores.sroa.86.68.vec.extract2456), !dbg !68
  %scores.sroa.86.72.vec.extract2463 = extractelement <4 x float> %scores.sroa.86.0, i64 2, !dbg !67
  %34 = tail call contract noundef float @llvm.maxnum.f32(float %33, float %scores.sroa.86.72.vec.extract2463), !dbg !68
  %scores.sroa.86.76.vec.extract2470 = extractelement <4 x float> %scores.sroa.86.0, i64 3, !dbg !67
  %35 = tail call contract noundef float @llvm.maxnum.f32(float %34, float %scores.sroa.86.76.vec.extract2470), !dbg !68
  %scores.sroa.107.80.vec.extract = extractelement <4 x float> %scores.sroa.107.0, i64 0, !dbg !67
  %36 = tail call contract noundef float @llvm.maxnum.f32(float %35, float %scores.sroa.107.80.vec.extract), !dbg !68
  %scores.sroa.107.84.vec.extract2485 = extractelement <4 x float> %scores.sroa.107.0, i64 1, !dbg !67
  %37 = tail call contract noundef float @llvm.maxnum.f32(float %36, float %scores.sroa.107.84.vec.extract2485), !dbg !68
  %scores.sroa.107.88.vec.extract2492 = extractelement <4 x float> %scores.sroa.107.0, i64 2, !dbg !67
  %38 = tail call contract noundef float @llvm.maxnum.f32(float %37, float %scores.sroa.107.88.vec.extract2492), !dbg !68
  %scores.sroa.107.92.vec.extract2499 = extractelement <4 x float> %scores.sroa.107.0, i64 3, !dbg !67
  %39 = tail call contract noundef float @llvm.maxnum.f32(float %38, float %scores.sroa.107.92.vec.extract2499), !dbg !68
  %scores.sroa.128.96.vec.extract = extractelement <4 x float> %scores.sroa.128.0, i64 0, !dbg !67
  %40 = tail call contract noundef float @llvm.maxnum.f32(float %scores.sroa.128.96.vec.extract, float 0xFFF0000000000000), !dbg !68
  %scores.sroa.128.100.vec.extract2514 = extractelement <4 x float> %scores.sroa.128.0, i64 1, !dbg !67
  %41 = tail call contract noundef float @llvm.maxnum.f32(float %40, float %scores.sroa.128.100.vec.extract2514), !dbg !68
  %scores.sroa.128.104.vec.extract2521 = extractelement <4 x float> %scores.sroa.128.0, i64 2, !dbg !67
  %42 = tail call contract noundef float @llvm.maxnum.f32(float %41, float %scores.sroa.128.104.vec.extract2521), !dbg !68
  %scores.sroa.128.108.vec.extract2528 = extractelement <4 x float> %scores.sroa.128.0, i64 3, !dbg !67
  %43 = tail call contract noundef float @llvm.maxnum.f32(float %42, float %scores.sroa.128.108.vec.extract2528), !dbg !68
  %scores.sroa.149.112.vec.extract = extractelement <4 x float> %scores.sroa.149.0, i64 0, !dbg !67
  %44 = tail call contract noundef float @llvm.maxnum.f32(float %43, float %scores.sroa.149.112.vec.extract), !dbg !68
  %scores.sroa.149.116.vec.extract2543 = extractelement <4 x float> %scores.sroa.149.0, i64 1, !dbg !67
  %45 = tail call contract noundef float @llvm.maxnum.f32(float %44, float %scores.sroa.149.116.vec.extract2543), !dbg !68
  %scores.sroa.149.120.vec.extract2550 = extractelement <4 x float> %scores.sroa.149.0, i64 2, !dbg !67
  %46 = tail call contract noundef float @llvm.maxnum.f32(float %45, float %scores.sroa.149.120.vec.extract2550), !dbg !68
  %scores.sroa.149.124.vec.extract2557 = extractelement <4 x float> %scores.sroa.149.0, i64 3, !dbg !67
  %47 = tail call contract noundef float @llvm.maxnum.f32(float %46, float %scores.sroa.149.124.vec.extract2557), !dbg !68
  %48 = tail call contract noundef float @llvm.maxnum.f32(float %23, float %31), !dbg !72
  %49 = tail call contract noundef float @llvm.maxnum.f32(float %39, float %47), !dbg !74
  %50 = tail call contract noundef float @llvm.maxnum.f32(float %48, float %49), !dbg !76
  %51 = bitcast float %50 to i32, !dbg !78
  %52 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !81
  %53 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %52) #11, !dbg !86
  %xor.i.i = xor i32 %53, 32, !dbg !87
  %54 = and i32 %53, -64, !dbg !88
  %and.i.i = add nsw i32 %54, 64, !dbg !88
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !89
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %53, !dbg !90
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !91
  %55 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %51), !dbg !92
  %56 = bitcast i32 %55 to float, !dbg !93
  %57 = tail call contract noundef float @llvm.maxnum.f32(float %50, float %56), !dbg !94
  %58 = bitcast float %57 to i32, !dbg !96
  %59 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !98
  %60 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %59) #11, !dbg !101
  %xor.i.i859 = xor i32 %60, 16, !dbg !102
  %61 = and i32 %60, -64, !dbg !103
  %and.i.i860 = add nsw i32 %61, 64, !dbg !103
  %cmp.not.i.i861 = icmp slt i32 %xor.i.i859, %and.i.i860, !dbg !104
  %cond.i.i862 = select i1 %cmp.not.i.i861, i32 %xor.i.i859, i32 %60, !dbg !105
  %shl.i.i863 = shl i32 %cond.i.i862, 2, !dbg !106
  %62 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i863, i32 %58), !dbg !107
  %63 = bitcast i32 %62 to float, !dbg !108
  %64 = tail call contract noundef float @llvm.maxnum.f32(float %57, float %63), !dbg !109
  %scores.sroa.0.0.vec.extract2331 = extractelement <4 x float> %scores.sroa.0.0, i64 0, !dbg !111
  %scores.sroa.0.4.vec.extract2340 = extractelement <4 x float> %scores.sroa.0.0, i64 1, !dbg !111
  %scores.sroa.0.8.vec.extract2347 = extractelement <4 x float> %scores.sroa.0.0, i64 2, !dbg !111
  %scores.sroa.0.12.vec.extract2354 = extractelement <4 x float> %scores.sroa.0.0, i64 3, !dbg !111
  %sub = fsub contract float %scores.sroa.0.0.vec.extract2331, %64, !dbg !112
  %sub335 = fsub contract float %scores.sroa.0.4.vec.extract2340, %64, !dbg !113
  %sub338 = fsub contract float %scores.sroa.0.8.vec.extract2347, %64, !dbg !114
  %sub341 = fsub contract float %scores.sroa.0.12.vec.extract2354, %64, !dbg !115
  %mul346 = fmul contract float %sub, 0x3FC7154760000000, !dbg !116
  %mul350 = fmul contract float %sub335, 0x3FC7154760000000, !dbg !117
  %mul354 = fmul contract float %sub338, 0x3FC7154760000000, !dbg !118
  %mul358 = fmul contract float %sub341, 0x3FC7154760000000, !dbg !119
  %add363 = fadd contract float %mul346, 8.000000e+00, !dbg !120
  %add367 = fadd contract float %mul350, 8.000000e+00, !dbg !121
  %add371 = fadd contract float %mul354, 8.000000e+00, !dbg !122
  %add375 = fadd contract float %mul358, 8.000000e+00, !dbg !123
  %cmp.i.i = fcmp contract olt float %add363, -1.260000e+02, !dbg !124
  %cond.i.i868 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !124
  %add.i.i = fadd contract float %add363, %cond.i.i868, !dbg !124
  %65 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !124
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !124
  %mul.i.i = fmul contract float %cond2.i.i, %65, !dbg !124
  %cmp.i.i869 = fcmp contract olt float %add367, -1.260000e+02, !dbg !127
  %cond.i.i870 = select contract i1 %cmp.i.i869, float 6.400000e+01, float 0.000000e+00, !dbg !127
  %add.i.i871 = fadd contract float %add367, %cond.i.i870, !dbg !127
  %66 = tail call contract float @llvm.exp2.f32(float %add.i.i871), !dbg !127
  %cond2.i.i872 = select contract i1 %cmp.i.i869, float 0x3BF0000000000000, float 1.000000e+00, !dbg !127
  %mul.i.i873 = fmul contract float %cond2.i.i872, %66, !dbg !127
  %cmp.i.i874 = fcmp contract olt float %add371, -1.260000e+02, !dbg !129
  %cond.i.i875 = select contract i1 %cmp.i.i874, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i876 = fadd contract float %add371, %cond.i.i875, !dbg !129
  %67 = tail call contract float @llvm.exp2.f32(float %add.i.i876), !dbg !129
  %cond2.i.i877 = select contract i1 %cmp.i.i874, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i878 = fmul contract float %cond2.i.i877, %67, !dbg !129
  %cmp.i.i879 = fcmp contract olt float %add375, -1.260000e+02, !dbg !131
  %cond.i.i880 = select contract i1 %cmp.i.i879, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i881 = fadd contract float %add375, %cond.i.i880, !dbg !131
  %68 = tail call contract float @llvm.exp2.f32(float %add.i.i881), !dbg !131
  %cond2.i.i882 = select contract i1 %cmp.i.i879, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i883 = fmul contract float %cond2.i.i882, %68, !dbg !131
  %69 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !133
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !133, !noalias !141
  %70 = fptrunc float %mul.i.i to half, !dbg !133
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %69), !dbg !133, !noalias !141
  %71 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !146
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !146, !noalias !141
  %72 = fptrunc float %mul.i.i873 to half, !dbg !146
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %71), !dbg !146, !noalias !141
  %73 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !148
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !148, !noalias !152
  %74 = fptrunc float %mul.i.i878 to half, !dbg !148
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %73), !dbg !148, !noalias !152
  %75 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !152
  %76 = fptrunc float %mul.i.i883 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %75), !dbg !157, !noalias !152
  %77 = insertelement <4 x half> poison, half %70, i64 0, !dbg !159
  %78 = insertelement <4 x half> %77, half %72, i64 1, !dbg !159
  %79 = insertelement <4 x half> %78, half %74, i64 2, !dbg !159
  %80 = insertelement <4 x half> %79, half %76, i64 3, !dbg !159
  %scores.sroa.23.16.vec.extract2362 = extractelement <4 x float> %scores.sroa.23.0, i64 0, !dbg !111
  %scores.sroa.23.20.vec.extract = extractelement <4 x float> %scores.sroa.23.0, i64 1, !dbg !111
  %scores.sroa.23.24.vec.extract = extractelement <4 x float> %scores.sroa.23.0, i64 2, !dbg !111
  %scores.sroa.23.28.vec.extract = extractelement <4 x float> %scores.sroa.23.0, i64 3, !dbg !111
  %sub.1 = fsub contract float %scores.sroa.23.16.vec.extract2362, %64, !dbg !112
  %sub335.1 = fsub contract float %scores.sroa.23.20.vec.extract, %64, !dbg !113
  %sub338.1 = fsub contract float %scores.sroa.23.24.vec.extract, %64, !dbg !114
  %sub341.1 = fsub contract float %scores.sroa.23.28.vec.extract, %64, !dbg !115
  %mul346.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !116
  %mul350.1 = fmul contract float %sub335.1, 0x3FC7154760000000, !dbg !117
  %mul354.1 = fmul contract float %sub338.1, 0x3FC7154760000000, !dbg !118
  %mul358.1 = fmul contract float %sub341.1, 0x3FC7154760000000, !dbg !119
  %add363.1 = fadd contract float %mul346.1, 8.000000e+00, !dbg !120
  %add367.1 = fadd contract float %mul350.1, 8.000000e+00, !dbg !121
  %add371.1 = fadd contract float %mul354.1, 8.000000e+00, !dbg !122
  %add375.1 = fadd contract float %mul358.1, 8.000000e+00, !dbg !123
  %cmp.i.i.1 = fcmp contract olt float %add363.1, -1.260000e+02, !dbg !124
  %cond.i.i868.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !124
  %add.i.i.1 = fadd contract float %add363.1, %cond.i.i868.1, !dbg !124
  %81 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !124
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !124
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %81, !dbg !124
  %cmp.i.i869.1 = fcmp contract olt float %add367.1, -1.260000e+02, !dbg !127
  %cond.i.i870.1 = select contract i1 %cmp.i.i869.1, float 6.400000e+01, float 0.000000e+00, !dbg !127
  %add.i.i871.1 = fadd contract float %add367.1, %cond.i.i870.1, !dbg !127
  %82 = tail call contract float @llvm.exp2.f32(float %add.i.i871.1), !dbg !127
  %cond2.i.i872.1 = select contract i1 %cmp.i.i869.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !127
  %mul.i.i873.1 = fmul contract float %cond2.i.i872.1, %82, !dbg !127
  %cmp.i.i874.1 = fcmp contract olt float %add371.1, -1.260000e+02, !dbg !129
  %cond.i.i875.1 = select contract i1 %cmp.i.i874.1, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i876.1 = fadd contract float %add371.1, %cond.i.i875.1, !dbg !129
  %83 = tail call contract float @llvm.exp2.f32(float %add.i.i876.1), !dbg !129
  %cond2.i.i877.1 = select contract i1 %cmp.i.i874.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i878.1 = fmul contract float %cond2.i.i877.1, %83, !dbg !129
  %cmp.i.i879.1 = fcmp contract olt float %add375.1, -1.260000e+02, !dbg !131
  %cond.i.i880.1 = select contract i1 %cmp.i.i879.1, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i881.1 = fadd contract float %add375.1, %cond.i.i880.1, !dbg !131
  %84 = tail call contract float @llvm.exp2.f32(float %add.i.i881.1), !dbg !131
  %cond2.i.i882.1 = select contract i1 %cmp.i.i879.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i883.1 = fmul contract float %cond2.i.i882.1, %84, !dbg !131
  %85 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !133
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !133, !noalias !141
  %86 = fptrunc float %mul.i.i.1 to half, !dbg !133
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %85), !dbg !133, !noalias !141
  %87 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !146
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !146, !noalias !141
  %88 = fptrunc float %mul.i.i873.1 to half, !dbg !146
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %87), !dbg !146, !noalias !141
  %89 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !148
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !148, !noalias !152
  %90 = fptrunc float %mul.i.i878.1 to half, !dbg !148
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %89), !dbg !148, !noalias !152
  %91 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !152
  %92 = fptrunc float %mul.i.i883.1 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %91), !dbg !157, !noalias !152
  %93 = insertelement <4 x half> poison, half %86, i64 0, !dbg !159
  %94 = insertelement <4 x half> %93, half %88, i64 1, !dbg !159
  %95 = insertelement <4 x half> %94, half %90, i64 2, !dbg !159
  %96 = insertelement <4 x half> %95, half %92, i64 3, !dbg !159
  %scores.sroa.44.32.vec.extract2391 = extractelement <4 x float> %scores.sroa.44.0, i64 0, !dbg !111
  %scores.sroa.44.36.vec.extract = extractelement <4 x float> %scores.sroa.44.0, i64 1, !dbg !111
  %scores.sroa.44.40.vec.extract = extractelement <4 x float> %scores.sroa.44.0, i64 2, !dbg !111
  %scores.sroa.44.44.vec.extract = extractelement <4 x float> %scores.sroa.44.0, i64 3, !dbg !111
  %sub.2 = fsub contract float %scores.sroa.44.32.vec.extract2391, %64, !dbg !112
  %sub335.2 = fsub contract float %scores.sroa.44.36.vec.extract, %64, !dbg !113
  %sub338.2 = fsub contract float %scores.sroa.44.40.vec.extract, %64, !dbg !114
  %sub341.2 = fsub contract float %scores.sroa.44.44.vec.extract, %64, !dbg !115
  %mul346.2 = fmul contract float %sub.2, 0x3FC7154760000000, !dbg !116
  %mul350.2 = fmul contract float %sub335.2, 0x3FC7154760000000, !dbg !117
  %mul354.2 = fmul contract float %sub338.2, 0x3FC7154760000000, !dbg !118
  %mul358.2 = fmul contract float %sub341.2, 0x3FC7154760000000, !dbg !119
  %add363.2 = fadd contract float %mul346.2, 8.000000e+00, !dbg !120
  %add367.2 = fadd contract float %mul350.2, 8.000000e+00, !dbg !121
  %add371.2 = fadd contract float %mul354.2, 8.000000e+00, !dbg !122
  %add375.2 = fadd contract float %mul358.2, 8.000000e+00, !dbg !123
  %cmp.i.i.2 = fcmp contract olt float %add363.2, -1.260000e+02, !dbg !124
  %cond.i.i868.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !124
  %add.i.i.2 = fadd contract float %add363.2, %cond.i.i868.2, !dbg !124
  %97 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !124
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !124
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %97, !dbg !124
  %cmp.i.i869.2 = fcmp contract olt float %add367.2, -1.260000e+02, !dbg !127
  %cond.i.i870.2 = select contract i1 %cmp.i.i869.2, float 6.400000e+01, float 0.000000e+00, !dbg !127
  %add.i.i871.2 = fadd contract float %add367.2, %cond.i.i870.2, !dbg !127
  %98 = tail call contract float @llvm.exp2.f32(float %add.i.i871.2), !dbg !127
  %cond2.i.i872.2 = select contract i1 %cmp.i.i869.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !127
  %mul.i.i873.2 = fmul contract float %cond2.i.i872.2, %98, !dbg !127
  %cmp.i.i874.2 = fcmp contract olt float %add371.2, -1.260000e+02, !dbg !129
  %cond.i.i875.2 = select contract i1 %cmp.i.i874.2, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i876.2 = fadd contract float %add371.2, %cond.i.i875.2, !dbg !129
  %99 = tail call contract float @llvm.exp2.f32(float %add.i.i876.2), !dbg !129
  %cond2.i.i877.2 = select contract i1 %cmp.i.i874.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i878.2 = fmul contract float %cond2.i.i877.2, %99, !dbg !129
  %cmp.i.i879.2 = fcmp contract olt float %add375.2, -1.260000e+02, !dbg !131
  %cond.i.i880.2 = select contract i1 %cmp.i.i879.2, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i881.2 = fadd contract float %add375.2, %cond.i.i880.2, !dbg !131
  %100 = tail call contract float @llvm.exp2.f32(float %add.i.i881.2), !dbg !131
  %cond2.i.i882.2 = select contract i1 %cmp.i.i879.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i883.2 = fmul contract float %cond2.i.i882.2, %100, !dbg !131
  %101 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !133
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !133, !noalias !141
  %102 = fptrunc float %mul.i.i.2 to half, !dbg !133
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %101), !dbg !133, !noalias !141
  %103 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !146
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !146, !noalias !141
  %104 = fptrunc float %mul.i.i873.2 to half, !dbg !146
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %103), !dbg !146, !noalias !141
  %105 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !148
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !148, !noalias !152
  %106 = fptrunc float %mul.i.i878.2 to half, !dbg !148
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %105), !dbg !148, !noalias !152
  %107 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !152
  %108 = fptrunc float %mul.i.i883.2 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %107), !dbg !157, !noalias !152
  %109 = insertelement <4 x half> poison, half %102, i64 0, !dbg !159
  %110 = insertelement <4 x half> %109, half %104, i64 1, !dbg !159
  %111 = insertelement <4 x half> %110, half %106, i64 2, !dbg !159
  %112 = insertelement <4 x half> %111, half %108, i64 3, !dbg !159
  %scores.sroa.65.48.vec.extract2420 = extractelement <4 x float> %scores.sroa.65.0, i64 0, !dbg !111
  %scores.sroa.65.52.vec.extract = extractelement <4 x float> %scores.sroa.65.0, i64 1, !dbg !111
  %scores.sroa.65.56.vec.extract = extractelement <4 x float> %scores.sroa.65.0, i64 2, !dbg !111
  %scores.sroa.65.60.vec.extract = extractelement <4 x float> %scores.sroa.65.0, i64 3, !dbg !111
  %sub.3 = fsub contract float %scores.sroa.65.48.vec.extract2420, %64, !dbg !112
  %sub335.3 = fsub contract float %scores.sroa.65.52.vec.extract, %64, !dbg !113
  %sub338.3 = fsub contract float %scores.sroa.65.56.vec.extract, %64, !dbg !114
  %sub341.3 = fsub contract float %scores.sroa.65.60.vec.extract, %64, !dbg !115
  %mul346.3 = fmul contract float %sub.3, 0x3FC7154760000000, !dbg !116
  %mul350.3 = fmul contract float %sub335.3, 0x3FC7154760000000, !dbg !117
  %mul354.3 = fmul contract float %sub338.3, 0x3FC7154760000000, !dbg !118
  %mul358.3 = fmul contract float %sub341.3, 0x3FC7154760000000, !dbg !119
  %add363.3 = fadd contract float %mul346.3, 8.000000e+00, !dbg !120
  %add367.3 = fadd contract float %mul350.3, 8.000000e+00, !dbg !121
  %add371.3 = fadd contract float %mul354.3, 8.000000e+00, !dbg !122
  %add375.3 = fadd contract float %mul358.3, 8.000000e+00, !dbg !123
  %cmp.i.i.3 = fcmp contract olt float %add363.3, -1.260000e+02, !dbg !124
  %cond.i.i868.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !124
  %add.i.i.3 = fadd contract float %add363.3, %cond.i.i868.3, !dbg !124
  %113 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !124
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !124
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %113, !dbg !124
  %cmp.i.i869.3 = fcmp contract olt float %add367.3, -1.260000e+02, !dbg !127
  %cond.i.i870.3 = select contract i1 %cmp.i.i869.3, float 6.400000e+01, float 0.000000e+00, !dbg !127
  %add.i.i871.3 = fadd contract float %add367.3, %cond.i.i870.3, !dbg !127
  %114 = tail call contract float @llvm.exp2.f32(float %add.i.i871.3), !dbg !127
  %cond2.i.i872.3 = select contract i1 %cmp.i.i869.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !127
  %mul.i.i873.3 = fmul contract float %cond2.i.i872.3, %114, !dbg !127
  %cmp.i.i874.3 = fcmp contract olt float %add371.3, -1.260000e+02, !dbg !129
  %cond.i.i875.3 = select contract i1 %cmp.i.i874.3, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i876.3 = fadd contract float %add371.3, %cond.i.i875.3, !dbg !129
  %115 = tail call contract float @llvm.exp2.f32(float %add.i.i876.3), !dbg !129
  %cond2.i.i877.3 = select contract i1 %cmp.i.i874.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i878.3 = fmul contract float %cond2.i.i877.3, %115, !dbg !129
  %cmp.i.i879.3 = fcmp contract olt float %add375.3, -1.260000e+02, !dbg !131
  %cond.i.i880.3 = select contract i1 %cmp.i.i879.3, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i881.3 = fadd contract float %add375.3, %cond.i.i880.3, !dbg !131
  %116 = tail call contract float @llvm.exp2.f32(float %add.i.i881.3), !dbg !131
  %cond2.i.i882.3 = select contract i1 %cmp.i.i879.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i883.3 = fmul contract float %cond2.i.i882.3, %116, !dbg !131
  %117 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !133
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !133, !noalias !141
  %118 = fptrunc float %mul.i.i.3 to half, !dbg !133
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %117), !dbg !133, !noalias !141
  %119 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !146
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !146, !noalias !141
  %120 = fptrunc float %mul.i.i873.3 to half, !dbg !146
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %119), !dbg !146, !noalias !141
  %121 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !148
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !148, !noalias !152
  %122 = fptrunc float %mul.i.i878.3 to half, !dbg !148
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %121), !dbg !148, !noalias !152
  %123 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !152
  %124 = fptrunc float %mul.i.i883.3 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %123), !dbg !157, !noalias !152
  %125 = insertelement <4 x half> poison, half %118, i64 0, !dbg !159
  %126 = insertelement <4 x half> %125, half %120, i64 1, !dbg !159
  %127 = insertelement <4 x half> %126, half %122, i64 2, !dbg !159
  %128 = insertelement <4 x half> %127, half %124, i64 3, !dbg !159
  %scores.sroa.86.64.vec.extract2449 = extractelement <4 x float> %scores.sroa.86.0, i64 0, !dbg !111
  %scores.sroa.86.68.vec.extract = extractelement <4 x float> %scores.sroa.86.0, i64 1, !dbg !111
  %scores.sroa.86.72.vec.extract = extractelement <4 x float> %scores.sroa.86.0, i64 2, !dbg !111
  %scores.sroa.86.76.vec.extract = extractelement <4 x float> %scores.sroa.86.0, i64 3, !dbg !111
  %sub.4 = fsub contract float %scores.sroa.86.64.vec.extract2449, %64, !dbg !112
  %sub335.4 = fsub contract float %scores.sroa.86.68.vec.extract, %64, !dbg !113
  %sub338.4 = fsub contract float %scores.sroa.86.72.vec.extract, %64, !dbg !114
  %sub341.4 = fsub contract float %scores.sroa.86.76.vec.extract, %64, !dbg !115
  %mul346.4 = fmul contract float %sub.4, 0x3FC7154760000000, !dbg !116
  %mul350.4 = fmul contract float %sub335.4, 0x3FC7154760000000, !dbg !117
  %mul354.4 = fmul contract float %sub338.4, 0x3FC7154760000000, !dbg !118
  %mul358.4 = fmul contract float %sub341.4, 0x3FC7154760000000, !dbg !119
  %add363.4 = fadd contract float %mul346.4, 8.000000e+00, !dbg !120
  %add367.4 = fadd contract float %mul350.4, 8.000000e+00, !dbg !121
  %add371.4 = fadd contract float %mul354.4, 8.000000e+00, !dbg !122
  %add375.4 = fadd contract float %mul358.4, 8.000000e+00, !dbg !123
  %cmp.i.i.4 = fcmp contract olt float %add363.4, -1.260000e+02, !dbg !124
  %cond.i.i868.4 = select contract i1 %cmp.i.i.4, float 6.400000e+01, float 0.000000e+00, !dbg !124
  %add.i.i.4 = fadd contract float %add363.4, %cond.i.i868.4, !dbg !124
  %129 = tail call contract float @llvm.exp2.f32(float %add.i.i.4), !dbg !124
  %cond2.i.i.4 = select contract i1 %cmp.i.i.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !124
  %mul.i.i.4 = fmul contract float %cond2.i.i.4, %129, !dbg !124
  %cmp.i.i869.4 = fcmp contract olt float %add367.4, -1.260000e+02, !dbg !127
  %cond.i.i870.4 = select contract i1 %cmp.i.i869.4, float 6.400000e+01, float 0.000000e+00, !dbg !127
  %add.i.i871.4 = fadd contract float %add367.4, %cond.i.i870.4, !dbg !127
  %130 = tail call contract float @llvm.exp2.f32(float %add.i.i871.4), !dbg !127
  %cond2.i.i872.4 = select contract i1 %cmp.i.i869.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !127
  %mul.i.i873.4 = fmul contract float %cond2.i.i872.4, %130, !dbg !127
  %cmp.i.i874.4 = fcmp contract olt float %add371.4, -1.260000e+02, !dbg !129
  %cond.i.i875.4 = select contract i1 %cmp.i.i874.4, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i876.4 = fadd contract float %add371.4, %cond.i.i875.4, !dbg !129
  %131 = tail call contract float @llvm.exp2.f32(float %add.i.i876.4), !dbg !129
  %cond2.i.i877.4 = select contract i1 %cmp.i.i874.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i878.4 = fmul contract float %cond2.i.i877.4, %131, !dbg !129
  %cmp.i.i879.4 = fcmp contract olt float %add375.4, -1.260000e+02, !dbg !131
  %cond.i.i880.4 = select contract i1 %cmp.i.i879.4, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i881.4 = fadd contract float %add375.4, %cond.i.i880.4, !dbg !131
  %132 = tail call contract float @llvm.exp2.f32(float %add.i.i881.4), !dbg !131
  %cond2.i.i882.4 = select contract i1 %cmp.i.i879.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i883.4 = fmul contract float %cond2.i.i882.4, %132, !dbg !131
  %133 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !133
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !133, !noalias !141
  %134 = fptrunc float %mul.i.i.4 to half, !dbg !133
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %133), !dbg !133, !noalias !141
  %135 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !146
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !146, !noalias !141
  %136 = fptrunc float %mul.i.i873.4 to half, !dbg !146
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %135), !dbg !146, !noalias !141
  %137 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !148
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !148, !noalias !152
  %138 = fptrunc float %mul.i.i878.4 to half, !dbg !148
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %137), !dbg !148, !noalias !152
  %139 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !152
  %140 = fptrunc float %mul.i.i883.4 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %139), !dbg !157, !noalias !152
  %141 = insertelement <4 x half> poison, half %134, i64 0, !dbg !159
  %142 = insertelement <4 x half> %141, half %136, i64 1, !dbg !159
  %143 = insertelement <4 x half> %142, half %138, i64 2, !dbg !159
  %144 = insertelement <4 x half> %143, half %140, i64 3, !dbg !159
  %scores.sroa.107.80.vec.extract2478 = extractelement <4 x float> %scores.sroa.107.0, i64 0, !dbg !111
  %scores.sroa.107.84.vec.extract = extractelement <4 x float> %scores.sroa.107.0, i64 1, !dbg !111
  %scores.sroa.107.88.vec.extract = extractelement <4 x float> %scores.sroa.107.0, i64 2, !dbg !111
  %scores.sroa.107.92.vec.extract = extractelement <4 x float> %scores.sroa.107.0, i64 3, !dbg !111
  %sub.5 = fsub contract float %scores.sroa.107.80.vec.extract2478, %64, !dbg !112
  %sub335.5 = fsub contract float %scores.sroa.107.84.vec.extract, %64, !dbg !113
  %sub338.5 = fsub contract float %scores.sroa.107.88.vec.extract, %64, !dbg !114
  %sub341.5 = fsub contract float %scores.sroa.107.92.vec.extract, %64, !dbg !115
  %mul346.5 = fmul contract float %sub.5, 0x3FC7154760000000, !dbg !116
  %mul350.5 = fmul contract float %sub335.5, 0x3FC7154760000000, !dbg !117
  %mul354.5 = fmul contract float %sub338.5, 0x3FC7154760000000, !dbg !118
  %mul358.5 = fmul contract float %sub341.5, 0x3FC7154760000000, !dbg !119
  %add363.5 = fadd contract float %mul346.5, 8.000000e+00, !dbg !120
  %add367.5 = fadd contract float %mul350.5, 8.000000e+00, !dbg !121
  %add371.5 = fadd contract float %mul354.5, 8.000000e+00, !dbg !122
  %add375.5 = fadd contract float %mul358.5, 8.000000e+00, !dbg !123
  %cmp.i.i.5 = fcmp contract olt float %add363.5, -1.260000e+02, !dbg !124
  %cond.i.i868.5 = select contract i1 %cmp.i.i.5, float 6.400000e+01, float 0.000000e+00, !dbg !124
  %add.i.i.5 = fadd contract float %add363.5, %cond.i.i868.5, !dbg !124
  %145 = tail call contract float @llvm.exp2.f32(float %add.i.i.5), !dbg !124
  %cond2.i.i.5 = select contract i1 %cmp.i.i.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !124
  %mul.i.i.5 = fmul contract float %cond2.i.i.5, %145, !dbg !124
  %cmp.i.i869.5 = fcmp contract olt float %add367.5, -1.260000e+02, !dbg !127
  %cond.i.i870.5 = select contract i1 %cmp.i.i869.5, float 6.400000e+01, float 0.000000e+00, !dbg !127
  %add.i.i871.5 = fadd contract float %add367.5, %cond.i.i870.5, !dbg !127
  %146 = tail call contract float @llvm.exp2.f32(float %add.i.i871.5), !dbg !127
  %cond2.i.i872.5 = select contract i1 %cmp.i.i869.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !127
  %mul.i.i873.5 = fmul contract float %cond2.i.i872.5, %146, !dbg !127
  %cmp.i.i874.5 = fcmp contract olt float %add371.5, -1.260000e+02, !dbg !129
  %cond.i.i875.5 = select contract i1 %cmp.i.i874.5, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i876.5 = fadd contract float %add371.5, %cond.i.i875.5, !dbg !129
  %147 = tail call contract float @llvm.exp2.f32(float %add.i.i876.5), !dbg !129
  %cond2.i.i877.5 = select contract i1 %cmp.i.i874.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i878.5 = fmul contract float %cond2.i.i877.5, %147, !dbg !129
  %cmp.i.i879.5 = fcmp contract olt float %add375.5, -1.260000e+02, !dbg !131
  %cond.i.i880.5 = select contract i1 %cmp.i.i879.5, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i881.5 = fadd contract float %add375.5, %cond.i.i880.5, !dbg !131
  %148 = tail call contract float @llvm.exp2.f32(float %add.i.i881.5), !dbg !131
  %cond2.i.i882.5 = select contract i1 %cmp.i.i879.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i883.5 = fmul contract float %cond2.i.i882.5, %148, !dbg !131
  %149 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !133
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !133, !noalias !141
  %150 = fptrunc float %mul.i.i.5 to half, !dbg !133
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %149), !dbg !133, !noalias !141
  %151 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !146
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !146, !noalias !141
  %152 = fptrunc float %mul.i.i873.5 to half, !dbg !146
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %151), !dbg !146, !noalias !141
  %153 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !148
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !148, !noalias !152
  %154 = fptrunc float %mul.i.i878.5 to half, !dbg !148
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %153), !dbg !148, !noalias !152
  %155 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !152
  %156 = fptrunc float %mul.i.i883.5 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %155), !dbg !157, !noalias !152
  %157 = insertelement <4 x half> poison, half %150, i64 0, !dbg !159
  %158 = insertelement <4 x half> %157, half %152, i64 1, !dbg !159
  %159 = insertelement <4 x half> %158, half %154, i64 2, !dbg !159
  %160 = insertelement <4 x half> %159, half %156, i64 3, !dbg !159
  %scores.sroa.128.96.vec.extract2507 = extractelement <4 x float> %scores.sroa.128.0, i64 0, !dbg !111
  %scores.sroa.128.100.vec.extract = extractelement <4 x float> %scores.sroa.128.0, i64 1, !dbg !111
  %scores.sroa.128.104.vec.extract = extractelement <4 x float> %scores.sroa.128.0, i64 2, !dbg !111
  %scores.sroa.128.108.vec.extract = extractelement <4 x float> %scores.sroa.128.0, i64 3, !dbg !111
  %sub.6 = fsub contract float %scores.sroa.128.96.vec.extract2507, %64, !dbg !112
  %sub335.6 = fsub contract float %scores.sroa.128.100.vec.extract, %64, !dbg !113
  %sub338.6 = fsub contract float %scores.sroa.128.104.vec.extract, %64, !dbg !114
  %sub341.6 = fsub contract float %scores.sroa.128.108.vec.extract, %64, !dbg !115
  %mul346.6 = fmul contract float %sub.6, 0x3FC7154760000000, !dbg !116
  %mul350.6 = fmul contract float %sub335.6, 0x3FC7154760000000, !dbg !117
  %mul354.6 = fmul contract float %sub338.6, 0x3FC7154760000000, !dbg !118
  %mul358.6 = fmul contract float %sub341.6, 0x3FC7154760000000, !dbg !119
  %add363.6 = fadd contract float %mul346.6, 8.000000e+00, !dbg !120
  %add367.6 = fadd contract float %mul350.6, 8.000000e+00, !dbg !121
  %add371.6 = fadd contract float %mul354.6, 8.000000e+00, !dbg !122
  %add375.6 = fadd contract float %mul358.6, 8.000000e+00, !dbg !123
  %cmp.i.i.6 = fcmp contract olt float %add363.6, -1.260000e+02, !dbg !124
  %cond.i.i868.6 = select contract i1 %cmp.i.i.6, float 6.400000e+01, float 0.000000e+00, !dbg !124
  %add.i.i.6 = fadd contract float %add363.6, %cond.i.i868.6, !dbg !124
  %161 = tail call contract float @llvm.exp2.f32(float %add.i.i.6), !dbg !124
  %cond2.i.i.6 = select contract i1 %cmp.i.i.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !124
  %mul.i.i.6 = fmul contract float %cond2.i.i.6, %161, !dbg !124
  %cmp.i.i869.6 = fcmp contract olt float %add367.6, -1.260000e+02, !dbg !127
  %cond.i.i870.6 = select contract i1 %cmp.i.i869.6, float 6.400000e+01, float 0.000000e+00, !dbg !127
  %add.i.i871.6 = fadd contract float %add367.6, %cond.i.i870.6, !dbg !127
  %162 = tail call contract float @llvm.exp2.f32(float %add.i.i871.6), !dbg !127
  %cond2.i.i872.6 = select contract i1 %cmp.i.i869.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !127
  %mul.i.i873.6 = fmul contract float %cond2.i.i872.6, %162, !dbg !127
  %cmp.i.i874.6 = fcmp contract olt float %add371.6, -1.260000e+02, !dbg !129
  %cond.i.i875.6 = select contract i1 %cmp.i.i874.6, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i876.6 = fadd contract float %add371.6, %cond.i.i875.6, !dbg !129
  %163 = tail call contract float @llvm.exp2.f32(float %add.i.i876.6), !dbg !129
  %cond2.i.i877.6 = select contract i1 %cmp.i.i874.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i878.6 = fmul contract float %cond2.i.i877.6, %163, !dbg !129
  %cmp.i.i879.6 = fcmp contract olt float %add375.6, -1.260000e+02, !dbg !131
  %cond.i.i880.6 = select contract i1 %cmp.i.i879.6, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i881.6 = fadd contract float %add375.6, %cond.i.i880.6, !dbg !131
  %164 = tail call contract float @llvm.exp2.f32(float %add.i.i881.6), !dbg !131
  %cond2.i.i882.6 = select contract i1 %cmp.i.i879.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i883.6 = fmul contract float %cond2.i.i882.6, %164, !dbg !131
  %165 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !133
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !133, !noalias !141
  %166 = fptrunc float %mul.i.i.6 to half, !dbg !133
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %165), !dbg !133, !noalias !141
  %167 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !146
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !146, !noalias !141
  %168 = fptrunc float %mul.i.i873.6 to half, !dbg !146
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %167), !dbg !146, !noalias !141
  %169 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !148
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !148, !noalias !152
  %170 = fptrunc float %mul.i.i878.6 to half, !dbg !148
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %169), !dbg !148, !noalias !152
  %171 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !152
  %172 = fptrunc float %mul.i.i883.6 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %171), !dbg !157, !noalias !152
  %173 = insertelement <4 x half> poison, half %166, i64 0, !dbg !159
  %174 = insertelement <4 x half> %173, half %168, i64 1, !dbg !159
  %175 = insertelement <4 x half> %174, half %170, i64 2, !dbg !159
  %176 = insertelement <4 x half> %175, half %172, i64 3, !dbg !159
  %scores.sroa.149.112.vec.extract2536 = extractelement <4 x float> %scores.sroa.149.0, i64 0, !dbg !111
  %scores.sroa.149.116.vec.extract = extractelement <4 x float> %scores.sroa.149.0, i64 1, !dbg !111
  %scores.sroa.149.120.vec.extract = extractelement <4 x float> %scores.sroa.149.0, i64 2, !dbg !111
  %scores.sroa.149.124.vec.extract = extractelement <4 x float> %scores.sroa.149.0, i64 3, !dbg !111
  %sub.7 = fsub contract float %scores.sroa.149.112.vec.extract2536, %64, !dbg !112
  %sub335.7 = fsub contract float %scores.sroa.149.116.vec.extract, %64, !dbg !113
  %sub338.7 = fsub contract float %scores.sroa.149.120.vec.extract, %64, !dbg !114
  %sub341.7 = fsub contract float %scores.sroa.149.124.vec.extract, %64, !dbg !115
  %mul346.7 = fmul contract float %sub.7, 0x3FC7154760000000, !dbg !116
  %mul350.7 = fmul contract float %sub335.7, 0x3FC7154760000000, !dbg !117
  %mul354.7 = fmul contract float %sub338.7, 0x3FC7154760000000, !dbg !118
  %mul358.7 = fmul contract float %sub341.7, 0x3FC7154760000000, !dbg !119
  %add363.7 = fadd contract float %mul346.7, 8.000000e+00, !dbg !120
  %add367.7 = fadd contract float %mul350.7, 8.000000e+00, !dbg !121
  %add371.7 = fadd contract float %mul354.7, 8.000000e+00, !dbg !122
  %add375.7 = fadd contract float %mul358.7, 8.000000e+00, !dbg !123
  %cmp.i.i.7 = fcmp contract olt float %add363.7, -1.260000e+02, !dbg !124
  %cond.i.i868.7 = select contract i1 %cmp.i.i.7, float 6.400000e+01, float 0.000000e+00, !dbg !124
  %add.i.i.7 = fadd contract float %add363.7, %cond.i.i868.7, !dbg !124
  %177 = tail call contract float @llvm.exp2.f32(float %add.i.i.7), !dbg !124
  %cond2.i.i.7 = select contract i1 %cmp.i.i.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !124
  %mul.i.i.7 = fmul contract float %cond2.i.i.7, %177, !dbg !124
  %cmp.i.i869.7 = fcmp contract olt float %add367.7, -1.260000e+02, !dbg !127
  %cond.i.i870.7 = select contract i1 %cmp.i.i869.7, float 6.400000e+01, float 0.000000e+00, !dbg !127
  %add.i.i871.7 = fadd contract float %add367.7, %cond.i.i870.7, !dbg !127
  %178 = tail call contract float @llvm.exp2.f32(float %add.i.i871.7), !dbg !127
  %cond2.i.i872.7 = select contract i1 %cmp.i.i869.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !127
  %mul.i.i873.7 = fmul contract float %cond2.i.i872.7, %178, !dbg !127
  %cmp.i.i874.7 = fcmp contract olt float %add371.7, -1.260000e+02, !dbg !129
  %cond.i.i875.7 = select contract i1 %cmp.i.i874.7, float 6.400000e+01, float 0.000000e+00, !dbg !129
  %add.i.i876.7 = fadd contract float %add371.7, %cond.i.i875.7, !dbg !129
  %179 = tail call contract float @llvm.exp2.f32(float %add.i.i876.7), !dbg !129
  %cond2.i.i877.7 = select contract i1 %cmp.i.i874.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !129
  %mul.i.i878.7 = fmul contract float %cond2.i.i877.7, %179, !dbg !129
  %cmp.i.i879.7 = fcmp contract olt float %add375.7, -1.260000e+02, !dbg !131
  %cond.i.i880.7 = select contract i1 %cmp.i.i879.7, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i881.7 = fadd contract float %add375.7, %cond.i.i880.7, !dbg !131
  %180 = tail call contract float @llvm.exp2.f32(float %add.i.i881.7), !dbg !131
  %cond2.i.i882.7 = select contract i1 %cmp.i.i879.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i883.7 = fmul contract float %cond2.i.i882.7, %180, !dbg !131
  %181 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !133
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !133, !noalias !141
  %182 = fptrunc float %mul.i.i.7 to half, !dbg !133
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %181), !dbg !133, !noalias !141
  %183 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !146
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !146, !noalias !141
  %184 = fptrunc float %mul.i.i873.7 to half, !dbg !146
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %183), !dbg !146, !noalias !141
  %185 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !148
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !148, !noalias !152
  %186 = fptrunc float %mul.i.i878.7 to half, !dbg !148
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %185), !dbg !148, !noalias !152
  %187 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !152
  %188 = fptrunc float %mul.i.i883.7 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %187), !dbg !157, !noalias !152
  %189 = insertelement <4 x half> poison, half %182, i64 0, !dbg !159
  %190 = insertelement <4 x half> %189, half %184, i64 1, !dbg !159
  %191 = insertelement <4 x half> %190, half %186, i64 2, !dbg !159
  %192 = insertelement <4 x half> %191, half %188, i64 3, !dbg !159
  %conv.i.i = fpext half %70 to float, !dbg !160
  %add414 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !165
  %conv.i.i.1 = fpext half %72 to float, !dbg !160
  %add414.1 = fadd contract float %add414, %conv.i.i.1, !dbg !165
  %conv.i.i.2 = fpext half %74 to float, !dbg !160
  %add414.2 = fadd contract float %add414.1, %conv.i.i.2, !dbg !165
  %conv.i.i.3 = fpext half %76 to float, !dbg !160
  %add414.3 = fadd contract float %add414.2, %conv.i.i.3, !dbg !165
  %conv.i.i.4 = fpext half %86 to float, !dbg !160
  %add414.4 = fadd contract float %add414.3, %conv.i.i.4, !dbg !165
  %conv.i.i.5 = fpext half %88 to float, !dbg !160
  %add414.5 = fadd contract float %add414.4, %conv.i.i.5, !dbg !165
  %conv.i.i.6 = fpext half %90 to float, !dbg !160
  %add414.6 = fadd contract float %add414.5, %conv.i.i.6, !dbg !165
  %conv.i.i.7 = fpext half %92 to float, !dbg !160
  %add414.7 = fadd contract float %add414.6, %conv.i.i.7, !dbg !165
  %conv.i.i.8 = fpext half %102 to float, !dbg !160
  %add414.8 = fadd contract float %add414.7, %conv.i.i.8, !dbg !165
  %conv.i.i.9 = fpext half %104 to float, !dbg !160
  %add414.9 = fadd contract float %add414.8, %conv.i.i.9, !dbg !165
  %conv.i.i.10 = fpext half %106 to float, !dbg !160
  %add414.10 = fadd contract float %add414.9, %conv.i.i.10, !dbg !165
  %conv.i.i.11 = fpext half %108 to float, !dbg !160
  %add414.11 = fadd contract float %add414.10, %conv.i.i.11, !dbg !165
  %conv.i.i.12 = fpext half %118 to float, !dbg !160
  %add414.12 = fadd contract float %add414.11, %conv.i.i.12, !dbg !165
  %conv.i.i.13 = fpext half %120 to float, !dbg !160
  %add414.13 = fadd contract float %add414.12, %conv.i.i.13, !dbg !165
  %conv.i.i.14 = fpext half %122 to float, !dbg !160
  %add414.14 = fadd contract float %add414.13, %conv.i.i.14, !dbg !165
  %conv.i.i.15 = fpext half %124 to float, !dbg !160
  %add414.15 = fadd contract float %add414.14, %conv.i.i.15, !dbg !165
  %conv.i.i.16 = fpext half %134 to float, !dbg !160
  %add414.16 = fadd contract float %add414.15, %conv.i.i.16, !dbg !165
  %conv.i.i.17 = fpext half %136 to float, !dbg !160
  %add414.17 = fadd contract float %add414.16, %conv.i.i.17, !dbg !165
  %conv.i.i.18 = fpext half %138 to float, !dbg !160
  %add414.18 = fadd contract float %add414.17, %conv.i.i.18, !dbg !165
  %conv.i.i.19 = fpext half %140 to float, !dbg !160
  %add414.19 = fadd contract float %add414.18, %conv.i.i.19, !dbg !165
  %conv.i.i.20 = fpext half %150 to float, !dbg !160
  %add414.20 = fadd contract float %add414.19, %conv.i.i.20, !dbg !165
  %conv.i.i.21 = fpext half %152 to float, !dbg !160
  %add414.21 = fadd contract float %add414.20, %conv.i.i.21, !dbg !165
  %conv.i.i.22 = fpext half %154 to float, !dbg !160
  %add414.22 = fadd contract float %add414.21, %conv.i.i.22, !dbg !165
  %conv.i.i.23 = fpext half %156 to float, !dbg !160
  %add414.23 = fadd contract float %add414.22, %conv.i.i.23, !dbg !165
  %conv.i.i.24 = fpext half %166 to float, !dbg !160
  %add414.24 = fadd contract float %add414.23, %conv.i.i.24, !dbg !165
  %conv.i.i.25 = fpext half %168 to float, !dbg !160
  %add414.25 = fadd contract float %add414.24, %conv.i.i.25, !dbg !165
  %conv.i.i.26 = fpext half %170 to float, !dbg !160
  %add414.26 = fadd contract float %add414.25, %conv.i.i.26, !dbg !165
  %conv.i.i.27 = fpext half %172 to float, !dbg !160
  %add414.27 = fadd contract float %add414.26, %conv.i.i.27, !dbg !165
  %conv.i.i.28 = fpext half %182 to float, !dbg !160
  %add414.28 = fadd contract float %add414.27, %conv.i.i.28, !dbg !165
  %conv.i.i.29 = fpext half %184 to float, !dbg !160
  %add414.29 = fadd contract float %add414.28, %conv.i.i.29, !dbg !165
  %conv.i.i.30 = fpext half %186 to float, !dbg !160
  %add414.30 = fadd contract float %add414.29, %conv.i.i.30, !dbg !165
  %conv.i.i.31 = fpext half %188 to float, !dbg !160
  %add414.31 = fadd contract float %add414.30, %conv.i.i.31, !dbg !165
  %193 = bitcast float %add414.31 to i32, !dbg !166
  %194 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !168
  %195 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %194) #11, !dbg !171
  %xor.i.i885 = xor i32 %195, 32, !dbg !172
  %196 = and i32 %195, -64, !dbg !173
  %and.i.i886 = add nsw i32 %196, 64, !dbg !173
  %cmp.not.i.i887 = icmp slt i32 %xor.i.i885, %and.i.i886, !dbg !174
  %cond.i.i888 = select i1 %cmp.not.i.i887, i32 %xor.i.i885, i32 %195, !dbg !175
  %shl.i.i889 = shl i32 %cond.i.i888, 2, !dbg !176
  %197 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i889, i32 %193), !dbg !177
  %198 = bitcast i32 %197 to float, !dbg !178
  %add422 = fadd contract float %add414.31, %198, !dbg !179
  %199 = bitcast float %add422 to i32, !dbg !180
  %200 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !182
  %201 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %200) #11, !dbg !185
  %xor.i.i890 = xor i32 %201, 16, !dbg !186
  %202 = and i32 %201, -64, !dbg !187
  %and.i.i891 = add nsw i32 %202, 64, !dbg !187
  %cmp.not.i.i892 = icmp slt i32 %xor.i.i890, %and.i.i891, !dbg !188
  %cond.i.i893 = select i1 %cmp.not.i.i892, i32 %xor.i.i890, i32 %201, !dbg !189
  %shl.i.i894 = shl i32 %cond.i.i893, 2, !dbg !190
  %203 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i894, i32 %199), !dbg !191
  %204 = bitcast i32 %203 to float, !dbg !192
  %add427 = fadd contract float %add422, %204, !dbg !193
  br label %if.end429, !dbg !194

if.then:                                          ; preds = %entry
  fence syncscope("warp") release, !dbg !195
  tail call void @llvm.mxc.barrier.warp(), !dbg !198
  fence syncscope("warp") acquire, !dbg !199
  %mul139 = shl nuw nsw i32 %15, 10
  %add142 = add nuw nsw i32 %add140, %mul139
  %205 = zext nneg i32 %add142 to i64, !dbg !200
  %add.ptr147 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %205, !dbg !201
  %qk_fetch.sroa.0.0.copyload2228 = load i64, ptr addrspace(4) %add.ptr147, align 16, !dbg !202
  %qk_fetch.sroa.38.0.add.ptr147.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr147, i64 8, !dbg !202
  %qk_fetch.sroa.38.0.copyload2245 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.sroa_idx, align 8, !dbg !202
  store i64 %qk_fetch.sroa.0.0.copyload2228, ptr addrspace(3) %add.ptr39, align 8, !dbg !203
  store i64 %qk_fetch.sroa.38.0.copyload2245, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !203
  %206 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %205, !dbg !201
  %add.ptr147.1 = getelementptr inbounds i8, ptr addrspace(4) %206, i64 1024, !dbg !201
  %qk_fetch.sroa.0.0.copyload2230 = load i64, ptr addrspace(4) %add.ptr147.1, align 16, !dbg !202
  %qk_fetch.sroa.38.0.add.ptr147.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %206, i64 1032, !dbg !202
  %qk_fetch.sroa.38.0.copyload2247 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.1.sroa_idx, align 8, !dbg !202
  store i64 %qk_fetch.sroa.0.0.copyload2230, ptr addrspace(3) %add.ptr39.1952, align 8, !dbg !203
  store i64 %qk_fetch.sroa.38.0.copyload2247, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !203
  fence syncscope("warp") release, !dbg !204
  tail call void @llvm.mxc.barrier.warp(), !dbg !207
  fence syncscope("warp") acquire, !dbg !208
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !209
  %207 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %9, <4 x float> zeroinitializer), !dbg !210
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !209
  %208 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %10, <4 x float> %207), !dbg !210
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !209
  %209 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %11, <4 x float> %208), !dbg !210
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !209
  %210 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %12, <4 x float> %209), !dbg !210
  %mul246 = shl nuw nsw i32 %15, 4
  %add250 = add nuw nsw i32 %mul246, %mul249
  %cmp253.not = icmp ugt i32 %add250, %1, !dbg !211
  %211 = extractelement <4 x float> %210, i64 1, !dbg !212
  %212 = extractelement <4 x float> %210, i64 2, !dbg !212
  %213 = extractelement <4 x float> %210, i64 3, !dbg !212
  %214 = extractelement <4 x float> %210, i64 0
  %spec.select = select i1 %cmp253.not, float 0xFFF0000000000000, float %214, !dbg !212
  %scores.sroa.0.0.vec.insert2328 = insertelement <4 x float> poison, float %spec.select, i64 0, !dbg !213
  %cmp253.not.1.not = icmp ult i32 %add250, %1, !dbg !211
  %condval.0.1 = select i1 %cmp253.not.1.not, float %211, float 0xFFF0000000000000, !dbg !212
  %scores.sroa.0.4.vec.insert2337 = insertelement <4 x float> %scores.sroa.0.0.vec.insert2328, float %condval.0.1, i64 1, !dbg !213
  %add251.2 = or disjoint i32 %add250, 2, !dbg !214
  %cmp253.not.2 = icmp ugt i32 %add251.2, %1, !dbg !211
  %condval.0.2 = select i1 %cmp253.not.2, float 0xFFF0000000000000, float %212, !dbg !212
  %scores.sroa.0.8.vec.insert2344 = insertelement <4 x float> %scores.sroa.0.4.vec.insert2337, float %condval.0.2, i64 2, !dbg !213
  %add251.3 = or disjoint i32 %add250, 3, !dbg !214
  %cmp253.not.3 = icmp ugt i32 %add251.3, %1, !dbg !211
  %condval.0.3 = select i1 %cmp253.not.3, float 0xFFF0000000000000, float %213, !dbg !212
  %scores.sroa.0.12.vec.insert2351 = insertelement <4 x float> %scores.sroa.0.8.vec.insert2344, float %condval.0.3, i64 3, !dbg !213
  br label %if.end268, !dbg !215

if.end268:                                        ; preds = %if.then, %entry
  %scores.sroa.0.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %entry ], [ %scores.sroa.0.12.vec.insert2351, %if.then ], !dbg !216
  %has_valid.sroa.0.1 = phi i32 [ 0, %entry ], [ 1, %if.then ], !dbg !216
  %215 = or disjoint i64 %14, 1, !dbg !217
  %arrayidx125.1 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %215, !dbg !65
  %216 = load i32, ptr addrspace(1) %arrayidx125.1, align 4, !dbg !65, !tbaa !30
  %or.cond910.1 = icmp ugt i32 %216, %invariant.umin, !dbg !66
  br i1 %or.cond910.1, label %if.end268.1, label %if.then.1, !dbg !66

if.then.1:                                        ; preds = %if.end268
  fence syncscope("warp") release, !dbg !195
  tail call void @llvm.mxc.barrier.warp(), !dbg !198
  fence syncscope("warp") acquire, !dbg !199
  %mul139.1 = shl nuw nsw i32 %216, 10
  %add142.1 = add nuw nsw i32 %add140, %mul139.1
  %217 = zext nneg i32 %add142.1 to i64, !dbg !200
  %add.ptr147.1972 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %217, !dbg !201
  %qk_fetch.sroa.0.0.copyload2231 = load i64, ptr addrspace(4) %add.ptr147.1972, align 16, !dbg !202
  %qk_fetch.sroa.38.0.add.ptr147.1972.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr147.1972, i64 8, !dbg !202
  %qk_fetch.sroa.38.0.copyload2248 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.1972.sroa_idx, align 8, !dbg !202
  store i64 %qk_fetch.sroa.0.0.copyload2231, ptr addrspace(3) %add.ptr39, align 8, !dbg !203
  store i64 %qk_fetch.sroa.38.0.copyload2248, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !203
  %218 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %217, !dbg !201
  %add.ptr147.1.1 = getelementptr inbounds i8, ptr addrspace(4) %218, i64 1024, !dbg !201
  %qk_fetch.sroa.0.0.copyload2232 = load i64, ptr addrspace(4) %add.ptr147.1.1, align 16, !dbg !202
  %qk_fetch.sroa.38.0.add.ptr147.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %218, i64 1032, !dbg !202
  %qk_fetch.sroa.38.0.copyload2249 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.1.1.sroa_idx, align 8, !dbg !202
  store i64 %qk_fetch.sroa.0.0.copyload2232, ptr addrspace(3) %add.ptr39.1952, align 8, !dbg !203
  store i64 %qk_fetch.sroa.38.0.copyload2249, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !203
  fence syncscope("warp") release, !dbg !204
  tail call void @llvm.mxc.barrier.warp(), !dbg !207
  fence syncscope("warp") acquire, !dbg !208
  %k_local.sroa.0.0.copyload.1985 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !209
  %219 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1985, <4 x half> %9, <4 x float> zeroinitializer), !dbg !210
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !209
  %220 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %10, <4 x float> %219), !dbg !210
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !209
  %221 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %11, <4 x float> %220), !dbg !210
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !209
  %222 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %12, <4 x float> %221), !dbg !210
  %mul246.1 = shl nuw nsw i32 %216, 4
  %add250.1 = add nuw nsw i32 %mul246.1, %mul249
  %cmp253.not.1986 = icmp ugt i32 %add250.1, %1, !dbg !211
  %223 = extractelement <4 x float> %222, i64 1, !dbg !212
  %224 = extractelement <4 x float> %222, i64 2, !dbg !212
  %225 = extractelement <4 x float> %222, i64 3, !dbg !212
  %226 = extractelement <4 x float> %222, i64 0
  %spec.select2319 = select i1 %cmp253.not.1986, float 0xFFF0000000000000, float %226, !dbg !212
  %scores.sroa.23.16.vec.insert2359 = insertelement <4 x float> poison, float %spec.select2319, i64 0, !dbg !213
  %cmp253.not.1.1.not = icmp ult i32 %add250.1, %1, !dbg !211
  %condval.0.1.1 = select i1 %cmp253.not.1.1.not, float %223, float 0xFFF0000000000000, !dbg !212
  %scores.sroa.23.20.vec.insert2365 = insertelement <4 x float> %scores.sroa.23.16.vec.insert2359, float %condval.0.1.1, i64 1, !dbg !213
  %add251.2.1 = or disjoint i32 %add250.1, 2, !dbg !214
  %cmp253.not.2.1 = icmp ugt i32 %add251.2.1, %1, !dbg !211
  %condval.0.2.1 = select i1 %cmp253.not.2.1, float 0xFFF0000000000000, float %224, !dbg !212
  %scores.sroa.23.24.vec.insert2372 = insertelement <4 x float> %scores.sroa.23.20.vec.insert2365, float %condval.0.2.1, i64 2, !dbg !213
  %add251.3.1 = or disjoint i32 %add250.1, 3, !dbg !214
  %cmp253.not.3.1 = icmp ugt i32 %add251.3.1, %1, !dbg !211
  %condval.0.3.1 = select i1 %cmp253.not.3.1, float 0xFFF0000000000000, float %225, !dbg !212
  %scores.sroa.23.28.vec.insert2379 = insertelement <4 x float> %scores.sroa.23.24.vec.insert2372, float %condval.0.3.1, i64 3, !dbg !213
  br label %if.end268.1, !dbg !215

if.end268.1:                                      ; preds = %if.then.1, %if.end268
  %scores.sroa.23.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end268 ], [ %scores.sroa.23.28.vec.insert2379, %if.then.1 ], !dbg !216
  %has_valid.sroa.0.1.1 = phi i32 [ %has_valid.sroa.0.1, %if.end268 ], [ 1, %if.then.1 ], !dbg !216
  %227 = or disjoint i64 %14, 2, !dbg !217
  %arrayidx125.2 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %227, !dbg !65
  %228 = load i32, ptr addrspace(1) %arrayidx125.2, align 4, !dbg !65, !tbaa !30
  %or.cond910.2 = icmp ugt i32 %228, %invariant.umin, !dbg !66
  br i1 %or.cond910.2, label %if.end268.2, label %if.then.2, !dbg !66

if.then.2:                                        ; preds = %if.end268.1
  fence syncscope("warp") release, !dbg !195
  tail call void @llvm.mxc.barrier.warp(), !dbg !198
  fence syncscope("warp") acquire, !dbg !199
  %mul139.2 = shl nuw nsw i32 %228, 10
  %add142.2 = add nuw nsw i32 %add140, %mul139.2
  %229 = zext nneg i32 %add142.2 to i64, !dbg !200
  %add.ptr147.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %229, !dbg !201
  %qk_fetch.sroa.0.0.copyload2233 = load i64, ptr addrspace(4) %add.ptr147.2, align 16, !dbg !202
  %qk_fetch.sroa.38.0.add.ptr147.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr147.2, i64 8, !dbg !202
  %qk_fetch.sroa.38.0.copyload2250 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.2.sroa_idx, align 8, !dbg !202
  store i64 %qk_fetch.sroa.0.0.copyload2233, ptr addrspace(3) %add.ptr39, align 8, !dbg !203
  store i64 %qk_fetch.sroa.38.0.copyload2250, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !203
  %230 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %229, !dbg !201
  %add.ptr147.1.2 = getelementptr inbounds i8, ptr addrspace(4) %230, i64 1024, !dbg !201
  %qk_fetch.sroa.0.0.copyload2234 = load i64, ptr addrspace(4) %add.ptr147.1.2, align 16, !dbg !202
  %qk_fetch.sroa.38.0.add.ptr147.1.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %230, i64 1032, !dbg !202
  %qk_fetch.sroa.38.0.copyload2251 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.1.2.sroa_idx, align 8, !dbg !202
  store i64 %qk_fetch.sroa.0.0.copyload2234, ptr addrspace(3) %add.ptr39.1952, align 8, !dbg !203
  store i64 %qk_fetch.sroa.38.0.copyload2251, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !203
  fence syncscope("warp") release, !dbg !204
  tail call void @llvm.mxc.barrier.warp(), !dbg !207
  fence syncscope("warp") acquire, !dbg !208
  %k_local.sroa.0.0.copyload.2998 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !209
  %231 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2998, <4 x half> %9, <4 x float> zeroinitializer), !dbg !210
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !209
  %232 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %10, <4 x float> %231), !dbg !210
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !209
  %233 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %11, <4 x float> %232), !dbg !210
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !209
  %234 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %12, <4 x float> %233), !dbg !210
  %mul246.2 = shl nuw nsw i32 %228, 4
  %add250.2 = add nuw nsw i32 %mul246.2, %mul249
  %cmp253.not.2999 = icmp ugt i32 %add250.2, %1, !dbg !211
  %235 = extractelement <4 x float> %234, i64 1, !dbg !212
  %236 = extractelement <4 x float> %234, i64 2, !dbg !212
  %237 = extractelement <4 x float> %234, i64 3, !dbg !212
  %238 = extractelement <4 x float> %234, i64 0
  %spec.select2320 = select i1 %cmp253.not.2999, float 0xFFF0000000000000, float %238, !dbg !212
  %scores.sroa.44.32.vec.insert2388 = insertelement <4 x float> poison, float %spec.select2320, i64 0, !dbg !213
  %cmp253.not.1.2.not = icmp ult i32 %add250.2, %1, !dbg !211
  %condval.0.1.2 = select i1 %cmp253.not.1.2.not, float %235, float 0xFFF0000000000000, !dbg !212
  %scores.sroa.44.36.vec.insert2394 = insertelement <4 x float> %scores.sroa.44.32.vec.insert2388, float %condval.0.1.2, i64 1, !dbg !213
  %add251.2.2 = or disjoint i32 %add250.2, 2, !dbg !214
  %cmp253.not.2.2 = icmp ugt i32 %add251.2.2, %1, !dbg !211
  %condval.0.2.2 = select i1 %cmp253.not.2.2, float 0xFFF0000000000000, float %236, !dbg !212
  %scores.sroa.44.40.vec.insert2401 = insertelement <4 x float> %scores.sroa.44.36.vec.insert2394, float %condval.0.2.2, i64 2, !dbg !213
  %add251.3.2 = or disjoint i32 %add250.2, 3, !dbg !214
  %cmp253.not.3.2 = icmp ugt i32 %add251.3.2, %1, !dbg !211
  %condval.0.3.2 = select i1 %cmp253.not.3.2, float 0xFFF0000000000000, float %237, !dbg !212
  %scores.sroa.44.44.vec.insert2408 = insertelement <4 x float> %scores.sroa.44.40.vec.insert2401, float %condval.0.3.2, i64 3, !dbg !213
  br label %if.end268.2, !dbg !215

if.end268.2:                                      ; preds = %if.then.2, %if.end268.1
  %scores.sroa.44.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end268.1 ], [ %scores.sroa.44.44.vec.insert2408, %if.then.2 ], !dbg !216
  %has_valid.sroa.0.1.2 = phi i32 [ %has_valid.sroa.0.1.1, %if.end268.1 ], [ 1, %if.then.2 ], !dbg !216
  %239 = or disjoint i64 %14, 3, !dbg !217
  %arrayidx125.3 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %239, !dbg !65
  %240 = load i32, ptr addrspace(1) %arrayidx125.3, align 4, !dbg !65, !tbaa !30
  %or.cond910.3 = icmp ugt i32 %240, %invariant.umin, !dbg !66
  br i1 %or.cond910.3, label %if.end268.3, label %if.then.3, !dbg !66

if.then.3:                                        ; preds = %if.end268.2
  fence syncscope("warp") release, !dbg !195
  tail call void @llvm.mxc.barrier.warp(), !dbg !198
  fence syncscope("warp") acquire, !dbg !199
  %mul139.3 = shl nuw nsw i32 %240, 10
  %add142.3 = add nuw nsw i32 %add140, %mul139.3
  %241 = zext nneg i32 %add142.3 to i64, !dbg !200
  %add.ptr147.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %241, !dbg !201
  %qk_fetch.sroa.0.0.copyload2235 = load i64, ptr addrspace(4) %add.ptr147.3, align 16, !dbg !202
  %qk_fetch.sroa.38.0.add.ptr147.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr147.3, i64 8, !dbg !202
  %qk_fetch.sroa.38.0.copyload2252 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.3.sroa_idx, align 8, !dbg !202
  store i64 %qk_fetch.sroa.0.0.copyload2235, ptr addrspace(3) %add.ptr39, align 8, !dbg !203
  store i64 %qk_fetch.sroa.38.0.copyload2252, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !203
  %242 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %241, !dbg !201
  %add.ptr147.1.3 = getelementptr inbounds i8, ptr addrspace(4) %242, i64 1024, !dbg !201
  %qk_fetch.sroa.0.0.copyload2236 = load i64, ptr addrspace(4) %add.ptr147.1.3, align 16, !dbg !202
  %qk_fetch.sroa.38.0.add.ptr147.1.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %242, i64 1032, !dbg !202
  %qk_fetch.sroa.38.0.copyload2253 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.1.3.sroa_idx, align 8, !dbg !202
  store i64 %qk_fetch.sroa.0.0.copyload2236, ptr addrspace(3) %add.ptr39.1952, align 8, !dbg !203
  store i64 %qk_fetch.sroa.38.0.copyload2253, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !203
  fence syncscope("warp") release, !dbg !204
  tail call void @llvm.mxc.barrier.warp(), !dbg !207
  fence syncscope("warp") acquire, !dbg !208
  %k_local.sroa.0.0.copyload.31011 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !209
  %243 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.31011, <4 x half> %9, <4 x float> zeroinitializer), !dbg !210
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !209
  %244 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %10, <4 x float> %243), !dbg !210
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !209
  %245 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %11, <4 x float> %244), !dbg !210
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !209
  %246 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %12, <4 x float> %245), !dbg !210
  %mul246.3 = shl nuw nsw i32 %240, 4
  %add250.3 = add nuw nsw i32 %mul246.3, %mul249
  %cmp253.not.31012 = icmp ugt i32 %add250.3, %1, !dbg !211
  %247 = extractelement <4 x float> %246, i64 1, !dbg !212
  %248 = extractelement <4 x float> %246, i64 2, !dbg !212
  %249 = extractelement <4 x float> %246, i64 3, !dbg !212
  %250 = extractelement <4 x float> %246, i64 0
  %spec.select2321 = select i1 %cmp253.not.31012, float 0xFFF0000000000000, float %250, !dbg !212
  %scores.sroa.65.48.vec.insert2417 = insertelement <4 x float> poison, float %spec.select2321, i64 0, !dbg !213
  %cmp253.not.1.3.not = icmp ult i32 %add250.3, %1, !dbg !211
  %condval.0.1.3 = select i1 %cmp253.not.1.3.not, float %247, float 0xFFF0000000000000, !dbg !212
  %scores.sroa.65.52.vec.insert2423 = insertelement <4 x float> %scores.sroa.65.48.vec.insert2417, float %condval.0.1.3, i64 1, !dbg !213
  %add251.2.3 = or disjoint i32 %add250.3, 2, !dbg !214
  %cmp253.not.2.3 = icmp ugt i32 %add251.2.3, %1, !dbg !211
  %condval.0.2.3 = select i1 %cmp253.not.2.3, float 0xFFF0000000000000, float %248, !dbg !212
  %scores.sroa.65.56.vec.insert2430 = insertelement <4 x float> %scores.sroa.65.52.vec.insert2423, float %condval.0.2.3, i64 2, !dbg !213
  %add251.3.3 = or disjoint i32 %add250.3, 3, !dbg !214
  %cmp253.not.3.3 = icmp ugt i32 %add251.3.3, %1, !dbg !211
  %condval.0.3.3 = select i1 %cmp253.not.3.3, float 0xFFF0000000000000, float %249, !dbg !212
  %scores.sroa.65.60.vec.insert2437 = insertelement <4 x float> %scores.sroa.65.56.vec.insert2430, float %condval.0.3.3, i64 3, !dbg !213
  br label %if.end268.3, !dbg !215

if.end268.3:                                      ; preds = %if.then.3, %if.end268.2
  %scores.sroa.65.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end268.2 ], [ %scores.sroa.65.60.vec.insert2437, %if.then.3 ], !dbg !216
  %has_valid.sroa.0.1.3 = phi i32 [ %has_valid.sroa.0.1.2, %if.end268.2 ], [ 1, %if.then.3 ], !dbg !216
  %251 = or disjoint i64 %14, 4, !dbg !217
  %arrayidx125.4 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %251, !dbg !65
  %252 = load i32, ptr addrspace(1) %arrayidx125.4, align 4, !dbg !65, !tbaa !30
  %or.cond910.4 = icmp ugt i32 %252, %invariant.umin, !dbg !66
  br i1 %or.cond910.4, label %if.end268.4, label %if.then.4, !dbg !66

if.then.4:                                        ; preds = %if.end268.3
  fence syncscope("warp") release, !dbg !195
  tail call void @llvm.mxc.barrier.warp(), !dbg !198
  fence syncscope("warp") acquire, !dbg !199
  %mul139.4 = shl nuw nsw i32 %252, 10
  %add142.4 = add nuw nsw i32 %add140, %mul139.4
  %253 = zext nneg i32 %add142.4 to i64, !dbg !200
  %add.ptr147.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %253, !dbg !201
  %qk_fetch.sroa.0.0.copyload2237 = load i64, ptr addrspace(4) %add.ptr147.4, align 16, !dbg !202
  %qk_fetch.sroa.38.0.add.ptr147.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr147.4, i64 8, !dbg !202
  %qk_fetch.sroa.38.0.copyload2254 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.4.sroa_idx, align 8, !dbg !202
  store i64 %qk_fetch.sroa.0.0.copyload2237, ptr addrspace(3) %add.ptr39, align 8, !dbg !203
  store i64 %qk_fetch.sroa.38.0.copyload2254, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !203
  %254 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %253, !dbg !201
  %add.ptr147.1.4 = getelementptr inbounds i8, ptr addrspace(4) %254, i64 1024, !dbg !201
  %qk_fetch.sroa.0.0.copyload2238 = load i64, ptr addrspace(4) %add.ptr147.1.4, align 16, !dbg !202
  %qk_fetch.sroa.38.0.add.ptr147.1.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %254, i64 1032, !dbg !202
  %qk_fetch.sroa.38.0.copyload2255 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.1.4.sroa_idx, align 8, !dbg !202
  store i64 %qk_fetch.sroa.0.0.copyload2238, ptr addrspace(3) %add.ptr39.1952, align 8, !dbg !203
  store i64 %qk_fetch.sroa.38.0.copyload2255, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !203
  fence syncscope("warp") release, !dbg !204
  tail call void @llvm.mxc.barrier.warp(), !dbg !207
  fence syncscope("warp") acquire, !dbg !208
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !209
  %255 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %9, <4 x float> zeroinitializer), !dbg !210
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !209
  %256 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %10, <4 x float> %255), !dbg !210
  %k_local.sroa.0.0.copyload.2.4 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !209
  %257 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.4, <4 x half> %11, <4 x float> %256), !dbg !210
  %k_local.sroa.0.0.copyload.3.4 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !209
  %258 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.4, <4 x half> %12, <4 x float> %257), !dbg !210
  %mul246.4 = shl nuw nsw i32 %252, 4
  %add250.4 = add nuw nsw i32 %mul246.4, %mul249
  %cmp253.not.4 = icmp ugt i32 %add250.4, %1, !dbg !211
  %259 = extractelement <4 x float> %258, i64 1, !dbg !212
  %260 = extractelement <4 x float> %258, i64 2, !dbg !212
  %261 = extractelement <4 x float> %258, i64 3, !dbg !212
  %262 = extractelement <4 x float> %258, i64 0
  %spec.select2322 = select i1 %cmp253.not.4, float 0xFFF0000000000000, float %262, !dbg !212
  %scores.sroa.86.64.vec.insert2446 = insertelement <4 x float> poison, float %spec.select2322, i64 0, !dbg !213
  %cmp253.not.1.4.not = icmp ult i32 %add250.4, %1, !dbg !211
  %condval.0.1.4 = select i1 %cmp253.not.1.4.not, float %259, float 0xFFF0000000000000, !dbg !212
  %scores.sroa.86.68.vec.insert2452 = insertelement <4 x float> %scores.sroa.86.64.vec.insert2446, float %condval.0.1.4, i64 1, !dbg !213
  %add251.2.4 = or disjoint i32 %add250.4, 2, !dbg !214
  %cmp253.not.2.4 = icmp ugt i32 %add251.2.4, %1, !dbg !211
  %condval.0.2.4 = select i1 %cmp253.not.2.4, float 0xFFF0000000000000, float %260, !dbg !212
  %scores.sroa.86.72.vec.insert2459 = insertelement <4 x float> %scores.sroa.86.68.vec.insert2452, float %condval.0.2.4, i64 2, !dbg !213
  %add251.3.4 = or disjoint i32 %add250.4, 3, !dbg !214
  %cmp253.not.3.4 = icmp ugt i32 %add251.3.4, %1, !dbg !211
  %condval.0.3.4 = select i1 %cmp253.not.3.4, float 0xFFF0000000000000, float %261, !dbg !212
  %scores.sroa.86.76.vec.insert2466 = insertelement <4 x float> %scores.sroa.86.72.vec.insert2459, float %condval.0.3.4, i64 3, !dbg !213
  br label %if.end268.4, !dbg !215

if.end268.4:                                      ; preds = %if.then.4, %if.end268.3
  %scores.sroa.86.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end268.3 ], [ %scores.sroa.86.76.vec.insert2466, %if.then.4 ], !dbg !216
  %has_valid.sroa.0.1.4 = phi i32 [ %has_valid.sroa.0.1.3, %if.end268.3 ], [ 1, %if.then.4 ], !dbg !216
  %263 = or disjoint i64 %14, 5, !dbg !217
  %arrayidx125.5 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %263, !dbg !65
  %264 = load i32, ptr addrspace(1) %arrayidx125.5, align 4, !dbg !65, !tbaa !30
  %or.cond910.5 = icmp ugt i32 %264, %invariant.umin, !dbg !66
  br i1 %or.cond910.5, label %if.end268.5, label %if.then.5, !dbg !66

if.then.5:                                        ; preds = %if.end268.4
  fence syncscope("warp") release, !dbg !195
  tail call void @llvm.mxc.barrier.warp(), !dbg !198
  fence syncscope("warp") acquire, !dbg !199
  %mul139.5 = shl nuw nsw i32 %264, 10
  %add142.5 = add nuw nsw i32 %add140, %mul139.5
  %265 = zext nneg i32 %add142.5 to i64, !dbg !200
  %add.ptr147.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %265, !dbg !201
  %qk_fetch.sroa.0.0.copyload2239 = load i64, ptr addrspace(4) %add.ptr147.5, align 16, !dbg !202
  %qk_fetch.sroa.38.0.add.ptr147.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr147.5, i64 8, !dbg !202
  %qk_fetch.sroa.38.0.copyload2256 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.5.sroa_idx, align 8, !dbg !202
  store i64 %qk_fetch.sroa.0.0.copyload2239, ptr addrspace(3) %add.ptr39, align 8, !dbg !203
  store i64 %qk_fetch.sroa.38.0.copyload2256, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !203
  %266 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %265, !dbg !201
  %add.ptr147.1.5 = getelementptr inbounds i8, ptr addrspace(4) %266, i64 1024, !dbg !201
  %qk_fetch.sroa.0.0.copyload2240 = load i64, ptr addrspace(4) %add.ptr147.1.5, align 16, !dbg !202
  %qk_fetch.sroa.38.0.add.ptr147.1.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %266, i64 1032, !dbg !202
  %qk_fetch.sroa.38.0.copyload2257 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.1.5.sroa_idx, align 8, !dbg !202
  store i64 %qk_fetch.sroa.0.0.copyload2240, ptr addrspace(3) %add.ptr39.1952, align 8, !dbg !203
  store i64 %qk_fetch.sroa.38.0.copyload2257, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !203
  fence syncscope("warp") release, !dbg !204
  tail call void @llvm.mxc.barrier.warp(), !dbg !207
  fence syncscope("warp") acquire, !dbg !208
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !209
  %267 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %9, <4 x float> zeroinitializer), !dbg !210
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !209
  %268 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %10, <4 x float> %267), !dbg !210
  %k_local.sroa.0.0.copyload.2.5 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !209
  %269 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.5, <4 x half> %11, <4 x float> %268), !dbg !210
  %k_local.sroa.0.0.copyload.3.5 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !209
  %270 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.5, <4 x half> %12, <4 x float> %269), !dbg !210
  %mul246.5 = shl nuw nsw i32 %264, 4
  %add250.5 = add nuw nsw i32 %mul246.5, %mul249
  %cmp253.not.5 = icmp ugt i32 %add250.5, %1, !dbg !211
  %271 = extractelement <4 x float> %270, i64 1, !dbg !212
  %272 = extractelement <4 x float> %270, i64 2, !dbg !212
  %273 = extractelement <4 x float> %270, i64 3, !dbg !212
  %274 = extractelement <4 x float> %270, i64 0
  %spec.select2323 = select i1 %cmp253.not.5, float 0xFFF0000000000000, float %274, !dbg !212
  %scores.sroa.107.80.vec.insert2475 = insertelement <4 x float> poison, float %spec.select2323, i64 0, !dbg !213
  %cmp253.not.1.5.not = icmp ult i32 %add250.5, %1, !dbg !211
  %condval.0.1.5 = select i1 %cmp253.not.1.5.not, float %271, float 0xFFF0000000000000, !dbg !212
  %scores.sroa.107.84.vec.insert2481 = insertelement <4 x float> %scores.sroa.107.80.vec.insert2475, float %condval.0.1.5, i64 1, !dbg !213
  %add251.2.5 = or disjoint i32 %add250.5, 2, !dbg !214
  %cmp253.not.2.5 = icmp ugt i32 %add251.2.5, %1, !dbg !211
  %condval.0.2.5 = select i1 %cmp253.not.2.5, float 0xFFF0000000000000, float %272, !dbg !212
  %scores.sroa.107.88.vec.insert2488 = insertelement <4 x float> %scores.sroa.107.84.vec.insert2481, float %condval.0.2.5, i64 2, !dbg !213
  %add251.3.5 = or disjoint i32 %add250.5, 3, !dbg !214
  %cmp253.not.3.5 = icmp ugt i32 %add251.3.5, %1, !dbg !211
  %condval.0.3.5 = select i1 %cmp253.not.3.5, float 0xFFF0000000000000, float %273, !dbg !212
  %scores.sroa.107.92.vec.insert2495 = insertelement <4 x float> %scores.sroa.107.88.vec.insert2488, float %condval.0.3.5, i64 3, !dbg !213
  br label %if.end268.5, !dbg !215

if.end268.5:                                      ; preds = %if.then.5, %if.end268.4
  %scores.sroa.107.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end268.4 ], [ %scores.sroa.107.92.vec.insert2495, %if.then.5 ], !dbg !216
  %has_valid.sroa.0.1.5 = phi i32 [ %has_valid.sroa.0.1.4, %if.end268.4 ], [ 1, %if.then.5 ], !dbg !216
  %275 = or disjoint i64 %14, 6, !dbg !217
  %arrayidx125.6 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %275, !dbg !65
  %276 = load i32, ptr addrspace(1) %arrayidx125.6, align 4, !dbg !65, !tbaa !30
  %or.cond910.6 = icmp ugt i32 %276, %invariant.umin, !dbg !66
  br i1 %or.cond910.6, label %if.end268.6, label %if.then.6, !dbg !66

if.then.6:                                        ; preds = %if.end268.5
  fence syncscope("warp") release, !dbg !195
  tail call void @llvm.mxc.barrier.warp(), !dbg !198
  fence syncscope("warp") acquire, !dbg !199
  %mul139.6 = shl nuw nsw i32 %276, 10
  %add142.6 = add nuw nsw i32 %add140, %mul139.6
  %277 = zext nneg i32 %add142.6 to i64, !dbg !200
  %add.ptr147.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %277, !dbg !201
  %qk_fetch.sroa.0.0.copyload2241 = load i64, ptr addrspace(4) %add.ptr147.6, align 16, !dbg !202
  %qk_fetch.sroa.38.0.add.ptr147.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr147.6, i64 8, !dbg !202
  %qk_fetch.sroa.38.0.copyload2258 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.6.sroa_idx, align 8, !dbg !202
  store i64 %qk_fetch.sroa.0.0.copyload2241, ptr addrspace(3) %add.ptr39, align 8, !dbg !203
  store i64 %qk_fetch.sroa.38.0.copyload2258, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !203
  %278 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %277, !dbg !201
  %add.ptr147.1.6 = getelementptr inbounds i8, ptr addrspace(4) %278, i64 1024, !dbg !201
  %qk_fetch.sroa.0.0.copyload2242 = load i64, ptr addrspace(4) %add.ptr147.1.6, align 16, !dbg !202
  %qk_fetch.sroa.38.0.add.ptr147.1.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %278, i64 1032, !dbg !202
  %qk_fetch.sroa.38.0.copyload2259 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.1.6.sroa_idx, align 8, !dbg !202
  store i64 %qk_fetch.sroa.0.0.copyload2242, ptr addrspace(3) %add.ptr39.1952, align 8, !dbg !203
  store i64 %qk_fetch.sroa.38.0.copyload2259, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !203
  fence syncscope("warp") release, !dbg !204
  tail call void @llvm.mxc.barrier.warp(), !dbg !207
  fence syncscope("warp") acquire, !dbg !208
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !209
  %279 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %9, <4 x float> zeroinitializer), !dbg !210
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !209
  %280 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %10, <4 x float> %279), !dbg !210
  %k_local.sroa.0.0.copyload.2.6 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !209
  %281 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.6, <4 x half> %11, <4 x float> %280), !dbg !210
  %k_local.sroa.0.0.copyload.3.6 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !209
  %282 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.6, <4 x half> %12, <4 x float> %281), !dbg !210
  %mul246.6 = shl nuw nsw i32 %276, 4
  %add250.6 = add nuw nsw i32 %mul246.6, %mul249
  %cmp253.not.6 = icmp ugt i32 %add250.6, %1, !dbg !211
  %283 = extractelement <4 x float> %282, i64 1, !dbg !212
  %284 = extractelement <4 x float> %282, i64 2, !dbg !212
  %285 = extractelement <4 x float> %282, i64 3, !dbg !212
  %286 = extractelement <4 x float> %282, i64 0
  %spec.select2324 = select i1 %cmp253.not.6, float 0xFFF0000000000000, float %286, !dbg !212
  %scores.sroa.128.96.vec.insert2504 = insertelement <4 x float> poison, float %spec.select2324, i64 0, !dbg !213
  %cmp253.not.1.6.not = icmp ult i32 %add250.6, %1, !dbg !211
  %condval.0.1.6 = select i1 %cmp253.not.1.6.not, float %283, float 0xFFF0000000000000, !dbg !212
  %scores.sroa.128.100.vec.insert2510 = insertelement <4 x float> %scores.sroa.128.96.vec.insert2504, float %condval.0.1.6, i64 1, !dbg !213
  %add251.2.6 = or disjoint i32 %add250.6, 2, !dbg !214
  %cmp253.not.2.6 = icmp ugt i32 %add251.2.6, %1, !dbg !211
  %condval.0.2.6 = select i1 %cmp253.not.2.6, float 0xFFF0000000000000, float %284, !dbg !212
  %scores.sroa.128.104.vec.insert2517 = insertelement <4 x float> %scores.sroa.128.100.vec.insert2510, float %condval.0.2.6, i64 2, !dbg !213
  %add251.3.6 = or disjoint i32 %add250.6, 3, !dbg !214
  %cmp253.not.3.6 = icmp ugt i32 %add251.3.6, %1, !dbg !211
  %condval.0.3.6 = select i1 %cmp253.not.3.6, float 0xFFF0000000000000, float %285, !dbg !212
  %scores.sroa.128.108.vec.insert2524 = insertelement <4 x float> %scores.sroa.128.104.vec.insert2517, float %condval.0.3.6, i64 3, !dbg !213
  br label %if.end268.6, !dbg !215

if.end268.6:                                      ; preds = %if.then.6, %if.end268.5
  %scores.sroa.128.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end268.5 ], [ %scores.sroa.128.108.vec.insert2524, %if.then.6 ], !dbg !216
  %has_valid.sroa.0.1.6 = phi i32 [ %has_valid.sroa.0.1.5, %if.end268.5 ], [ 1, %if.then.6 ], !dbg !216
  %287 = or disjoint i64 %14, 7, !dbg !217
  %arrayidx125.7 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %287, !dbg !65
  %288 = load i32, ptr addrspace(1) %arrayidx125.7, align 4, !dbg !65, !tbaa !30
  %or.cond910.7 = icmp ugt i32 %288, %invariant.umin, !dbg !66
  br i1 %or.cond910.7, label %if.end268.7, label %if.then.7, !dbg !66

if.then.7:                                        ; preds = %if.end268.6
  fence syncscope("warp") release, !dbg !195
  tail call void @llvm.mxc.barrier.warp(), !dbg !198
  fence syncscope("warp") acquire, !dbg !199
  %mul139.7 = shl nuw nsw i32 %288, 10
  %add142.7 = add nuw nsw i32 %add140, %mul139.7
  %289 = zext nneg i32 %add142.7 to i64, !dbg !200
  %add.ptr147.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %289, !dbg !201
  %qk_fetch.sroa.0.0.copyload2243 = load i64, ptr addrspace(4) %add.ptr147.7, align 16, !dbg !202
  %qk_fetch.sroa.38.0.add.ptr147.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr147.7, i64 8, !dbg !202
  %qk_fetch.sroa.38.0.copyload2260 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.7.sroa_idx, align 8, !dbg !202
  store i64 %qk_fetch.sroa.0.0.copyload2243, ptr addrspace(3) %add.ptr39, align 8, !dbg !203
  store i64 %qk_fetch.sroa.38.0.copyload2260, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !203
  %290 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %289, !dbg !201
  %add.ptr147.1.7 = getelementptr inbounds i8, ptr addrspace(4) %290, i64 1024, !dbg !201
  %qk_fetch.sroa.0.0.copyload2244 = load i64, ptr addrspace(4) %add.ptr147.1.7, align 16, !dbg !202
  %qk_fetch.sroa.38.0.add.ptr147.1.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %290, i64 1032, !dbg !202
  %qk_fetch.sroa.38.0.copyload2261 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.1.7.sroa_idx, align 8, !dbg !202
  store i64 %qk_fetch.sroa.0.0.copyload2244, ptr addrspace(3) %add.ptr39.1952, align 8, !dbg !203
  store i64 %qk_fetch.sroa.38.0.copyload2261, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !203
  fence syncscope("warp") release, !dbg !204
  tail call void @llvm.mxc.barrier.warp(), !dbg !207
  fence syncscope("warp") acquire, !dbg !208
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !209
  %291 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %9, <4 x float> zeroinitializer), !dbg !210
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !209
  %292 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %10, <4 x float> %291), !dbg !210
  %k_local.sroa.0.0.copyload.2.7 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !209
  %293 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.7, <4 x half> %11, <4 x float> %292), !dbg !210
  %k_local.sroa.0.0.copyload.3.7 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !209
  %294 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.7, <4 x half> %12, <4 x float> %293), !dbg !210
  %mul246.7 = shl nuw nsw i32 %288, 4
  %add250.7 = add nuw nsw i32 %mul246.7, %mul249
  %cmp253.not.7 = icmp ugt i32 %add250.7, %1, !dbg !211
  %295 = extractelement <4 x float> %294, i64 1, !dbg !212
  %296 = extractelement <4 x float> %294, i64 2, !dbg !212
  %297 = extractelement <4 x float> %294, i64 3, !dbg !212
  %298 = extractelement <4 x float> %294, i64 0
  %spec.select2325 = select i1 %cmp253.not.7, float 0xFFF0000000000000, float %298, !dbg !212
  %scores.sroa.149.112.vec.insert2533 = insertelement <4 x float> poison, float %spec.select2325, i64 0, !dbg !213
  %cmp253.not.1.7.not = icmp ult i32 %add250.7, %1, !dbg !211
  %condval.0.1.7 = select i1 %cmp253.not.1.7.not, float %295, float 0xFFF0000000000000, !dbg !212
  %scores.sroa.149.116.vec.insert2539 = insertelement <4 x float> %scores.sroa.149.112.vec.insert2533, float %condval.0.1.7, i64 1, !dbg !213
  %add251.2.7 = or disjoint i32 %add250.7, 2, !dbg !214
  %cmp253.not.2.7 = icmp ugt i32 %add251.2.7, %1, !dbg !211
  %condval.0.2.7 = select i1 %cmp253.not.2.7, float 0xFFF0000000000000, float %296, !dbg !212
  %scores.sroa.149.120.vec.insert2546 = insertelement <4 x float> %scores.sroa.149.116.vec.insert2539, float %condval.0.2.7, i64 2, !dbg !213
  %add251.3.7 = or disjoint i32 %add250.7, 3, !dbg !214
  %cmp253.not.3.7 = icmp ugt i32 %add251.3.7, %1, !dbg !211
  %condval.0.3.7 = select i1 %cmp253.not.3.7, float 0xFFF0000000000000, float %297, !dbg !212
  %scores.sroa.149.124.vec.insert2553 = insertelement <4 x float> %scores.sroa.149.120.vec.insert2546, float %condval.0.3.7, i64 3, !dbg !213
  br label %if.end268.7, !dbg !215

if.end268.7:                                      ; preds = %if.then.7, %if.end268.6
  %scores.sroa.149.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end268.6 ], [ %scores.sroa.149.124.vec.insert2553, %if.then.7 ], !dbg !216
  %has_valid.sroa.0.1.7 = phi i32 [ %has_valid.sroa.0.1.6, %if.end268.6 ], [ 1, %if.then.7 ], !dbg !216
  %tobool.not = icmp eq i32 %has_valid.sroa.0.1.7, 0, !dbg !218
  br i1 %tobool.not, label %if.end429, label %for.body277.preheader, !dbg !218

if.end429:                                        ; preds = %for.body277.preheader, %if.end268.7
  %299 = phi <4 x half> [ zeroinitializer, %if.end268.7 ], [ %192, %for.body277.preheader ], !dbg !216
  %300 = phi <4 x half> [ zeroinitializer, %if.end268.7 ], [ %176, %for.body277.preheader ], !dbg !216
  %301 = phi <4 x half> [ zeroinitializer, %if.end268.7 ], [ %160, %for.body277.preheader ], !dbg !216
  %302 = phi <4 x half> [ zeroinitializer, %if.end268.7 ], [ %144, %for.body277.preheader ], !dbg !216
  %303 = phi <4 x half> [ zeroinitializer, %if.end268.7 ], [ %128, %for.body277.preheader ], !dbg !216
  %304 = phi <4 x half> [ zeroinitializer, %if.end268.7 ], [ %112, %for.body277.preheader ], !dbg !216
  %305 = phi <4 x half> [ zeroinitializer, %if.end268.7 ], [ %96, %for.body277.preheader ], !dbg !216
  %306 = phi <4 x half> [ zeroinitializer, %if.end268.7 ], [ %80, %for.body277.preheader ], !dbg !216
  %denominator.sroa.0.1 = phi float [ 0.000000e+00, %if.end268.7 ], [ %add427, %for.body277.preheader ], !dbg !216
  %307 = shl nuw nsw i32 %2, 4
  %mul473 = and i32 %307, 16128
  %and478 = shl nuw nsw i32 %2, 2
  %mul479 = and i32 %and478, 60
  %308 = or disjoint i32 %mul473, %mul479
  %add474 = or disjoint i32 %308, %mul138
  %mul512 = and i32 %307, 240
  %shr518 = and i32 %13, 3
  %xor519 = xor i32 %shr518, %and60
  %and533 = shl nuw nsw i32 %2, 8
  %mul534 = and i32 %and533, 768
  %mul540 = and i32 %and478, 48
  %and546 = and i32 %2, 3
  %309 = xor i32 %and60, %and546
  %310 = load i32, ptr addrspace(1) %arrayidx125, align 4, !dbg !219, !tbaa !30
  %or.cond911 = icmp ugt i32 %310, %invariant.umin, !dbg !220
  br i1 %or.cond911, label %if.end578, label %if.then462, !dbg !220

if.then462:                                       ; preds = %if.end429
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %mul469 = shl nuw nsw i32 %310, 10
  %add476 = add nuw nsw i32 %add474, %mul469
  %311 = zext nneg i32 %add476 to i64, !dbg !226
  %add.ptr482 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %311, !dbg !227
  %312 = load i64, ptr addrspace(4) %add.ptr482, align 8, !dbg !228
  %313 = or disjoint i64 %311, 64, !dbg !229
  %add.ptr482.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %313, !dbg !227
  %314 = load i64, ptr addrspace(4) %add.ptr482.1, align 8, !dbg !228
  %315 = or disjoint i64 %311, 128, !dbg !229
  %add.ptr482.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %315, !dbg !227
  %316 = load i64, ptr addrspace(4) %add.ptr482.2, align 8, !dbg !228
  %317 = or disjoint i64 %311, 192, !dbg !229
  %add.ptr482.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %317, !dbg !227
  %318 = load i64, ptr addrspace(4) %add.ptr482.3, align 8, !dbg !228
  %319 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul512, !dbg !230
  %add.ptr524.idx = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524 = getelementptr inbounds i8, ptr addrspace(3) %319, i32 %add.ptr524.idx, !dbg !230
  %v_column.sroa.130.0.insert.ext = shl i64 %318, 48, !dbg !231
  %v_column.sroa.98.0.insert.ext = shl i64 %316, 32, !dbg !231
  %v_column.sroa.98.0.insert.shift = and i64 %v_column.sroa.98.0.insert.ext, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert = or disjoint i64 %v_column.sroa.130.0.insert.ext, %v_column.sroa.98.0.insert.shift, !dbg !231
  %v_column.sroa.66.0.insert.ext = shl i64 %314, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift = and i64 %v_column.sroa.66.0.insert.ext, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert = or disjoint i64 %v_column.sroa.98.0.insert.insert, %v_column.sroa.66.0.insert.shift, !dbg !231
  %v_column.sroa.0.0.insert.ext = and i64 %312, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert = or disjoint i64 %v_column.sroa.66.0.insert.insert, %v_column.sroa.0.0.insert.ext, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr524, align 8, !dbg !231
  %v_fetch.sroa.0.2.extract.shift = lshr i64 %312, 16, !dbg !232
  %add513.1 = or disjoint i32 %mul512, 256, !dbg !233
  %320 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.1, !dbg !230
  %xor520.1 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.1 = xor i32 %xor520.1, 8, !dbg !230
  %add.ptr524.1 = getelementptr inbounds i8, ptr addrspace(3) %320, i32 %add.ptr524.idx.1, !dbg !230
  %321 = shl i64 %318, 32, !dbg !231
  %v_column.sroa.130.0.insert.ext1513 = and i64 %321, -281474976710656, !dbg !231
  %322 = shl i64 %316, 16, !dbg !231
  %v_column.sroa.98.0.insert.shift1359 = and i64 %322, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1361 = or disjoint i64 %v_column.sroa.130.0.insert.ext1513, %v_column.sroa.98.0.insert.shift1359, !dbg !231
  %v_column.sroa.66.0.insert.ext1203 = and i64 %314, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1206 = or disjoint i64 %v_column.sroa.98.0.insert.insert1361, %v_column.sroa.66.0.insert.ext1203, !dbg !231
  %v_column.sroa.0.0.insert.ext1079 = and i64 %v_fetch.sroa.0.2.extract.shift, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1081 = or disjoint i64 %v_column.sroa.66.0.insert.insert1206, %v_column.sroa.0.0.insert.ext1079, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1081, ptr addrspace(3) %add.ptr524.1, align 8, !dbg !231
  %v_fetch.sroa.0.4.extract.shift = lshr i64 %312, 32, !dbg !232
  %add513.2 = or disjoint i32 %mul512, 512, !dbg !233
  %323 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.2, !dbg !230
  %xor520.2 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.2 = xor i32 %xor520.2, 16, !dbg !230
  %add.ptr524.2 = getelementptr inbounds i8, ptr addrspace(3) %323, i32 %add.ptr524.idx.2, !dbg !230
  %324 = shl i64 %318, 16, !dbg !231
  %v_column.sroa.130.0.insert.ext1518 = and i64 %324, -281474976710656, !dbg !231
  %v_column.sroa.98.0.insert.ext1363 = and i64 %316, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1366 = or disjoint i64 %v_column.sroa.130.0.insert.ext1518, %v_column.sroa.98.0.insert.ext1363, !dbg !231
  %325 = lshr i64 %314, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1209 = and i64 %325, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1211 = or disjoint i64 %v_column.sroa.98.0.insert.insert1366, %v_column.sroa.66.0.insert.shift1209, !dbg !231
  %v_column.sroa.0.0.insert.ext1083 = and i64 %v_fetch.sroa.0.4.extract.shift, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1085 = or disjoint i64 %v_column.sroa.66.0.insert.insert1211, %v_column.sroa.0.0.insert.ext1083, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1085, ptr addrspace(3) %add.ptr524.2, align 8, !dbg !231
  %v_fetch.sroa.0.6.extract.shift = lshr i64 %312, 48, !dbg !232
  %v_fetch.sroa.122.30.extract.shift = and i64 %318, -281474976710656, !dbg !231
  %add513.3 = or disjoint i32 %mul512, 768, !dbg !233
  %326 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.3, !dbg !230
  %xor520.3 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.3 = xor i32 %xor520.3, 24, !dbg !230
  %add.ptr524.3 = getelementptr inbounds i8, ptr addrspace(3) %326, i32 %add.ptr524.idx.3, !dbg !230
  %327 = lshr i64 %316, 16, !dbg !231
  %v_column.sroa.98.0.insert.shift1369 = and i64 %327, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1371 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift, %v_column.sroa.98.0.insert.shift1369, !dbg !231
  %328 = lshr i64 %314, 32, !dbg !231
  %v_column.sroa.66.0.insert.shift1214 = and i64 %328, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1216 = or disjoint i64 %v_column.sroa.98.0.insert.insert1371, %v_column.sroa.66.0.insert.shift1214, !dbg !231
  %v_column.sroa.0.0.insert.insert1089 = or disjoint i64 %v_column.sroa.66.0.insert.insert1216, %v_fetch.sroa.0.6.extract.shift, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1089, ptr addrspace(3) %add.ptr524.3, align 8, !dbg !231
  fence syncscope("warp") release, !dbg !234
  tail call void @llvm.mxc.barrier.warp(), !dbg !237
  fence syncscope("warp") acquire, !dbg !238
  %add541 = or disjoint i32 %mul534, %mul540, !dbg !239
  %329 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541, !dbg !240
  %add.ptr551.idx = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551 = getelementptr inbounds i8, ptr addrspace(3) %329, i32 %add.ptr551.idx, !dbg !240
  %330 = load <4 x half>, ptr addrspace(3) %add.ptr551, align 8, !dbg !241
  %add536.1 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.1 = or disjoint i32 %add536.1, 64, !dbg !239
  %331 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.1, !dbg !240
  %xor547.1 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.1 = xor i32 %xor547.1, 8, !dbg !240
  %add.ptr551.1 = getelementptr inbounds i8, ptr addrspace(3) %331, i32 %add.ptr551.idx.1, !dbg !240
  %332 = load <4 x half>, ptr addrspace(3) %add.ptr551.1, align 8, !dbg !241
  %add536.2 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.2 = or disjoint i32 %add536.2, 128, !dbg !239
  %333 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.2, !dbg !240
  %xor547.2 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.2 = xor i32 %xor547.2, 16, !dbg !240
  %add.ptr551.2 = getelementptr inbounds i8, ptr addrspace(3) %333, i32 %add.ptr551.idx.2, !dbg !240
  %334 = load <4 x half>, ptr addrspace(3) %add.ptr551.2, align 8, !dbg !241
  %add536.3 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.3 = or disjoint i32 %add536.3, 192, !dbg !239
  %335 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.3, !dbg !240
  %xor547.3 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.3 = xor i32 %xor547.3, 24, !dbg !240
  %add.ptr551.3 = getelementptr inbounds i8, ptr addrspace(3) %335, i32 %add.ptr551.idx.3, !dbg !240
  %336 = load <4 x half>, ptr addrspace(3) %add.ptr551.3, align 8, !dbg !241
  %337 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %330, <4 x half> %306, <4 x float> zeroinitializer), !dbg !242
  %338 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %332, <4 x half> %306, <4 x float> zeroinitializer), !dbg !242
  %339 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %334, <4 x half> %306, <4 x float> zeroinitializer), !dbg !242
  %340 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %336, <4 x half> %306, <4 x float> zeroinitializer), !dbg !242
  br label %if.end578, !dbg !243

if.end578:                                        ; preds = %if.then462, %if.end429
  %numerator.sroa.98.0 = phi <4 x float> [ zeroinitializer, %if.end429 ], [ %340, %if.then462 ], !dbg !216
  %numerator.sroa.66.0 = phi <4 x float> [ zeroinitializer, %if.end429 ], [ %339, %if.then462 ], !dbg !216
  %numerator.sroa.34.0 = phi <4 x float> [ zeroinitializer, %if.end429 ], [ %338, %if.then462 ], !dbg !216
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %if.end429 ], [ %337, %if.then462 ], !dbg !216
  %341 = load i32, ptr addrspace(1) %arrayidx125.1, align 4, !dbg !219, !tbaa !30
  %or.cond911.1 = icmp ugt i32 %341, %invariant.umin, !dbg !220
  br i1 %or.cond911.1, label %if.end578.1, label %if.then462.1, !dbg !220

if.then462.1:                                     ; preds = %if.end578
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %mul469.1 = shl nuw nsw i32 %341, 10
  %add476.1 = add nuw nsw i32 %add474, %mul469.1
  %342 = zext nneg i32 %add476.1 to i64, !dbg !226
  %add.ptr482.11030 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %342, !dbg !227
  %343 = load i64, ptr addrspace(4) %add.ptr482.11030, align 8, !dbg !228
  %344 = or disjoint i64 %342, 64, !dbg !229
  %add.ptr482.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %344, !dbg !227
  %345 = load i64, ptr addrspace(4) %add.ptr482.1.1, align 8, !dbg !228
  %346 = or disjoint i64 %342, 128, !dbg !229
  %add.ptr482.2.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %346, !dbg !227
  %347 = load i64, ptr addrspace(4) %add.ptr482.2.1, align 8, !dbg !228
  %348 = or disjoint i64 %342, 192, !dbg !229
  %add.ptr482.3.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %348, !dbg !227
  %349 = load i64, ptr addrspace(4) %add.ptr482.3.1, align 8, !dbg !228
  %350 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul512, !dbg !230
  %add.ptr524.idx.11037 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.11038 = getelementptr inbounds i8, ptr addrspace(3) %350, i32 %add.ptr524.idx.11037, !dbg !230
  %v_column.sroa.130.0.insert.ext1528 = shl i64 %349, 48, !dbg !231
  %v_column.sroa.98.0.insert.ext1373 = shl i64 %347, 32, !dbg !231
  %v_column.sroa.98.0.insert.shift1374 = and i64 %v_column.sroa.98.0.insert.ext1373, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1376 = or disjoint i64 %v_column.sroa.130.0.insert.ext1528, %v_column.sroa.98.0.insert.shift1374, !dbg !231
  %v_column.sroa.66.0.insert.ext1218 = shl i64 %345, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1219 = and i64 %v_column.sroa.66.0.insert.ext1218, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1221 = or disjoint i64 %v_column.sroa.98.0.insert.insert1376, %v_column.sroa.66.0.insert.shift1219, !dbg !231
  %v_column.sroa.0.0.insert.ext1091 = and i64 %343, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1093 = or disjoint i64 %v_column.sroa.66.0.insert.insert1221, %v_column.sroa.0.0.insert.ext1091, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1093, ptr addrspace(3) %add.ptr524.11038, align 8, !dbg !231
  %v_fetch.sroa.0.2.extract.shift1742 = lshr i64 %343, 16, !dbg !232
  %add513.1.1 = or disjoint i32 %mul512, 256, !dbg !233
  %351 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.1.1, !dbg !230
  %xor520.1.1 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.1.1 = xor i32 %xor520.1.1, 8, !dbg !230
  %add.ptr524.1.1 = getelementptr inbounds i8, ptr addrspace(3) %351, i32 %add.ptr524.idx.1.1, !dbg !230
  %352 = shl i64 %349, 32, !dbg !231
  %v_column.sroa.130.0.insert.ext1533 = and i64 %352, -281474976710656, !dbg !231
  %353 = shl i64 %347, 16, !dbg !231
  %v_column.sroa.98.0.insert.shift1379 = and i64 %353, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1381 = or disjoint i64 %v_column.sroa.130.0.insert.ext1533, %v_column.sroa.98.0.insert.shift1379, !dbg !231
  %v_column.sroa.66.0.insert.ext1223 = and i64 %345, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1226 = or disjoint i64 %v_column.sroa.98.0.insert.insert1381, %v_column.sroa.66.0.insert.ext1223, !dbg !231
  %v_column.sroa.0.0.insert.ext1095 = and i64 %v_fetch.sroa.0.2.extract.shift1742, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1097 = or disjoint i64 %v_column.sroa.66.0.insert.insert1226, %v_column.sroa.0.0.insert.ext1095, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1097, ptr addrspace(3) %add.ptr524.1.1, align 8, !dbg !231
  %v_fetch.sroa.0.4.extract.shift1763 = lshr i64 %343, 32, !dbg !232
  %add513.2.1 = or disjoint i32 %mul512, 512, !dbg !233
  %354 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.2.1, !dbg !230
  %xor520.2.1 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.2.1 = xor i32 %xor520.2.1, 16, !dbg !230
  %add.ptr524.2.1 = getelementptr inbounds i8, ptr addrspace(3) %354, i32 %add.ptr524.idx.2.1, !dbg !230
  %355 = shl i64 %349, 16, !dbg !231
  %v_column.sroa.130.0.insert.ext1538 = and i64 %355, -281474976710656, !dbg !231
  %v_column.sroa.98.0.insert.ext1383 = and i64 %347, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1386 = or disjoint i64 %v_column.sroa.130.0.insert.ext1538, %v_column.sroa.98.0.insert.ext1383, !dbg !231
  %356 = lshr i64 %345, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1229 = and i64 %356, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1231 = or disjoint i64 %v_column.sroa.98.0.insert.insert1386, %v_column.sroa.66.0.insert.shift1229, !dbg !231
  %v_column.sroa.0.0.insert.ext1099 = and i64 %v_fetch.sroa.0.4.extract.shift1763, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1101 = or disjoint i64 %v_column.sroa.66.0.insert.insert1231, %v_column.sroa.0.0.insert.ext1099, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1101, ptr addrspace(3) %add.ptr524.2.1, align 8, !dbg !231
  %v_fetch.sroa.0.6.extract.shift1784 = lshr i64 %343, 48, !dbg !232
  %v_fetch.sroa.122.30.extract.shift2015 = and i64 %349, -281474976710656, !dbg !231
  %add513.3.1 = or disjoint i32 %mul512, 768, !dbg !233
  %357 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.3.1, !dbg !230
  %xor520.3.1 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.3.1 = xor i32 %xor520.3.1, 24, !dbg !230
  %add.ptr524.3.1 = getelementptr inbounds i8, ptr addrspace(3) %357, i32 %add.ptr524.idx.3.1, !dbg !230
  %358 = lshr i64 %347, 16, !dbg !231
  %v_column.sroa.98.0.insert.shift1389 = and i64 %358, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1391 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2015, %v_column.sroa.98.0.insert.shift1389, !dbg !231
  %359 = lshr i64 %345, 32, !dbg !231
  %v_column.sroa.66.0.insert.shift1234 = and i64 %359, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1236 = or disjoint i64 %v_column.sroa.98.0.insert.insert1391, %v_column.sroa.66.0.insert.shift1234, !dbg !231
  %v_column.sroa.0.0.insert.insert1105 = or disjoint i64 %v_column.sroa.66.0.insert.insert1236, %v_fetch.sroa.0.6.extract.shift1784, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1105, ptr addrspace(3) %add.ptr524.3.1, align 8, !dbg !231
  fence syncscope("warp") release, !dbg !234
  tail call void @llvm.mxc.barrier.warp(), !dbg !237
  fence syncscope("warp") acquire, !dbg !238
  %add541.11040 = or disjoint i32 %mul534, %mul540, !dbg !239
  %360 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.11040, !dbg !240
  %add.ptr551.idx.11041 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.11042 = getelementptr inbounds i8, ptr addrspace(3) %360, i32 %add.ptr551.idx.11041, !dbg !240
  %361 = load <4 x half>, ptr addrspace(3) %add.ptr551.11042, align 8, !dbg !241
  %add536.1.1 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.1.1 = or disjoint i32 %add536.1.1, 64, !dbg !239
  %362 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.1.1, !dbg !240
  %xor547.1.1 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.1.1 = xor i32 %xor547.1.1, 8, !dbg !240
  %add.ptr551.1.1 = getelementptr inbounds i8, ptr addrspace(3) %362, i32 %add.ptr551.idx.1.1, !dbg !240
  %363 = load <4 x half>, ptr addrspace(3) %add.ptr551.1.1, align 8, !dbg !241
  %add536.2.1 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.2.1 = or disjoint i32 %add536.2.1, 128, !dbg !239
  %364 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.2.1, !dbg !240
  %xor547.2.1 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.2.1 = xor i32 %xor547.2.1, 16, !dbg !240
  %add.ptr551.2.1 = getelementptr inbounds i8, ptr addrspace(3) %364, i32 %add.ptr551.idx.2.1, !dbg !240
  %365 = load <4 x half>, ptr addrspace(3) %add.ptr551.2.1, align 8, !dbg !241
  %add536.3.1 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.3.1 = or disjoint i32 %add536.3.1, 192, !dbg !239
  %366 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.3.1, !dbg !240
  %xor547.3.1 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.3.1 = xor i32 %xor547.3.1, 24, !dbg !240
  %add.ptr551.3.1 = getelementptr inbounds i8, ptr addrspace(3) %366, i32 %add.ptr551.idx.3.1, !dbg !240
  %367 = load <4 x half>, ptr addrspace(3) %add.ptr551.3.1, align 8, !dbg !241
  %368 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %361, <4 x half> %305, <4 x float> %numerator.sroa.0.0), !dbg !242
  %369 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %363, <4 x half> %305, <4 x float> %numerator.sroa.34.0), !dbg !242
  %370 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %365, <4 x half> %305, <4 x float> %numerator.sroa.66.0), !dbg !242
  %371 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %367, <4 x half> %305, <4 x float> %numerator.sroa.98.0), !dbg !242
  br label %if.end578.1, !dbg !243

if.end578.1:                                      ; preds = %if.then462.1, %if.end578
  %numerator.sroa.98.1 = phi <4 x float> [ %numerator.sroa.98.0, %if.end578 ], [ %371, %if.then462.1 ], !dbg !216
  %numerator.sroa.66.1 = phi <4 x float> [ %numerator.sroa.66.0, %if.end578 ], [ %370, %if.then462.1 ], !dbg !216
  %numerator.sroa.34.1 = phi <4 x float> [ %numerator.sroa.34.0, %if.end578 ], [ %369, %if.then462.1 ], !dbg !216
  %numerator.sroa.0.1 = phi <4 x float> [ %numerator.sroa.0.0, %if.end578 ], [ %368, %if.then462.1 ], !dbg !216
  %372 = load i32, ptr addrspace(1) %arrayidx125.2, align 4, !dbg !219, !tbaa !30
  %or.cond911.2 = icmp ugt i32 %372, %invariant.umin, !dbg !220
  br i1 %or.cond911.2, label %if.end578.2, label %if.then462.2, !dbg !220

if.then462.2:                                     ; preds = %if.end578.1
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %mul469.2 = shl nuw nsw i32 %372, 10
  %add476.2 = add nuw nsw i32 %add474, %mul469.2
  %373 = zext nneg i32 %add476.2 to i64, !dbg !226
  %add.ptr482.21043 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %373, !dbg !227
  %374 = load i64, ptr addrspace(4) %add.ptr482.21043, align 8, !dbg !228
  %375 = or disjoint i64 %373, 64, !dbg !229
  %add.ptr482.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %375, !dbg !227
  %376 = load i64, ptr addrspace(4) %add.ptr482.1.2, align 8, !dbg !228
  %377 = or disjoint i64 %373, 128, !dbg !229
  %add.ptr482.2.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %377, !dbg !227
  %378 = load i64, ptr addrspace(4) %add.ptr482.2.2, align 8, !dbg !228
  %379 = or disjoint i64 %373, 192, !dbg !229
  %add.ptr482.3.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %379, !dbg !227
  %380 = load i64, ptr addrspace(4) %add.ptr482.3.2, align 8, !dbg !228
  %381 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul512, !dbg !230
  %add.ptr524.idx.21050 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.21051 = getelementptr inbounds i8, ptr addrspace(3) %381, i32 %add.ptr524.idx.21050, !dbg !230
  %v_column.sroa.130.0.insert.ext1548 = shl i64 %380, 48, !dbg !231
  %v_column.sroa.98.0.insert.ext1393 = shl i64 %378, 32, !dbg !231
  %v_column.sroa.98.0.insert.shift1394 = and i64 %v_column.sroa.98.0.insert.ext1393, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1396 = or disjoint i64 %v_column.sroa.130.0.insert.ext1548, %v_column.sroa.98.0.insert.shift1394, !dbg !231
  %v_column.sroa.66.0.insert.ext1238 = shl i64 %376, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1239 = and i64 %v_column.sroa.66.0.insert.ext1238, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1241 = or disjoint i64 %v_column.sroa.98.0.insert.insert1396, %v_column.sroa.66.0.insert.shift1239, !dbg !231
  %v_column.sroa.0.0.insert.ext1107 = and i64 %374, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1109 = or disjoint i64 %v_column.sroa.66.0.insert.insert1241, %v_column.sroa.0.0.insert.ext1107, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1109, ptr addrspace(3) %add.ptr524.21051, align 8, !dbg !231
  %v_fetch.sroa.0.2.extract.shift1745 = lshr i64 %374, 16, !dbg !232
  %add513.1.2 = or disjoint i32 %mul512, 256, !dbg !233
  %382 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.1.2, !dbg !230
  %xor520.1.2 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.1.2 = xor i32 %xor520.1.2, 8, !dbg !230
  %add.ptr524.1.2 = getelementptr inbounds i8, ptr addrspace(3) %382, i32 %add.ptr524.idx.1.2, !dbg !230
  %383 = shl i64 %380, 32, !dbg !231
  %v_column.sroa.130.0.insert.ext1553 = and i64 %383, -281474976710656, !dbg !231
  %384 = shl i64 %378, 16, !dbg !231
  %v_column.sroa.98.0.insert.shift1399 = and i64 %384, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1401 = or disjoint i64 %v_column.sroa.130.0.insert.ext1553, %v_column.sroa.98.0.insert.shift1399, !dbg !231
  %v_column.sroa.66.0.insert.ext1243 = and i64 %376, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1246 = or disjoint i64 %v_column.sroa.98.0.insert.insert1401, %v_column.sroa.66.0.insert.ext1243, !dbg !231
  %v_column.sroa.0.0.insert.ext1111 = and i64 %v_fetch.sroa.0.2.extract.shift1745, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1113 = or disjoint i64 %v_column.sroa.66.0.insert.insert1246, %v_column.sroa.0.0.insert.ext1111, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1113, ptr addrspace(3) %add.ptr524.1.2, align 8, !dbg !231
  %v_fetch.sroa.0.4.extract.shift1766 = lshr i64 %374, 32, !dbg !232
  %add513.2.2 = or disjoint i32 %mul512, 512, !dbg !233
  %385 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.2.2, !dbg !230
  %xor520.2.2 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.2.2 = xor i32 %xor520.2.2, 16, !dbg !230
  %add.ptr524.2.2 = getelementptr inbounds i8, ptr addrspace(3) %385, i32 %add.ptr524.idx.2.2, !dbg !230
  %386 = shl i64 %380, 16, !dbg !231
  %v_column.sroa.130.0.insert.ext1558 = and i64 %386, -281474976710656, !dbg !231
  %v_column.sroa.98.0.insert.ext1403 = and i64 %378, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1406 = or disjoint i64 %v_column.sroa.130.0.insert.ext1558, %v_column.sroa.98.0.insert.ext1403, !dbg !231
  %387 = lshr i64 %376, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1249 = and i64 %387, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1251 = or disjoint i64 %v_column.sroa.98.0.insert.insert1406, %v_column.sroa.66.0.insert.shift1249, !dbg !231
  %v_column.sroa.0.0.insert.ext1115 = and i64 %v_fetch.sroa.0.4.extract.shift1766, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1117 = or disjoint i64 %v_column.sroa.66.0.insert.insert1251, %v_column.sroa.0.0.insert.ext1115, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1117, ptr addrspace(3) %add.ptr524.2.2, align 8, !dbg !231
  %v_fetch.sroa.0.6.extract.shift1787 = lshr i64 %374, 48, !dbg !232
  %v_fetch.sroa.122.30.extract.shift2018 = and i64 %380, -281474976710656, !dbg !231
  %add513.3.2 = or disjoint i32 %mul512, 768, !dbg !233
  %388 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.3.2, !dbg !230
  %xor520.3.2 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.3.2 = xor i32 %xor520.3.2, 24, !dbg !230
  %add.ptr524.3.2 = getelementptr inbounds i8, ptr addrspace(3) %388, i32 %add.ptr524.idx.3.2, !dbg !230
  %389 = lshr i64 %378, 16, !dbg !231
  %v_column.sroa.98.0.insert.shift1409 = and i64 %389, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1411 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2018, %v_column.sroa.98.0.insert.shift1409, !dbg !231
  %390 = lshr i64 %376, 32, !dbg !231
  %v_column.sroa.66.0.insert.shift1254 = and i64 %390, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1256 = or disjoint i64 %v_column.sroa.98.0.insert.insert1411, %v_column.sroa.66.0.insert.shift1254, !dbg !231
  %v_column.sroa.0.0.insert.insert1121 = or disjoint i64 %v_column.sroa.66.0.insert.insert1256, %v_fetch.sroa.0.6.extract.shift1787, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1121, ptr addrspace(3) %add.ptr524.3.2, align 8, !dbg !231
  fence syncscope("warp") release, !dbg !234
  tail call void @llvm.mxc.barrier.warp(), !dbg !237
  fence syncscope("warp") acquire, !dbg !238
  %add541.21053 = or disjoint i32 %mul534, %mul540, !dbg !239
  %391 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.21053, !dbg !240
  %add.ptr551.idx.21054 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.21055 = getelementptr inbounds i8, ptr addrspace(3) %391, i32 %add.ptr551.idx.21054, !dbg !240
  %392 = load <4 x half>, ptr addrspace(3) %add.ptr551.21055, align 8, !dbg !241
  %add536.1.2 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.1.2 = or disjoint i32 %add536.1.2, 64, !dbg !239
  %393 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.1.2, !dbg !240
  %xor547.1.2 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.1.2 = xor i32 %xor547.1.2, 8, !dbg !240
  %add.ptr551.1.2 = getelementptr inbounds i8, ptr addrspace(3) %393, i32 %add.ptr551.idx.1.2, !dbg !240
  %394 = load <4 x half>, ptr addrspace(3) %add.ptr551.1.2, align 8, !dbg !241
  %add536.2.2 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.2.2 = or disjoint i32 %add536.2.2, 128, !dbg !239
  %395 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.2.2, !dbg !240
  %xor547.2.2 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.2.2 = xor i32 %xor547.2.2, 16, !dbg !240
  %add.ptr551.2.2 = getelementptr inbounds i8, ptr addrspace(3) %395, i32 %add.ptr551.idx.2.2, !dbg !240
  %396 = load <4 x half>, ptr addrspace(3) %add.ptr551.2.2, align 8, !dbg !241
  %add536.3.2 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.3.2 = or disjoint i32 %add536.3.2, 192, !dbg !239
  %397 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.3.2, !dbg !240
  %xor547.3.2 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.3.2 = xor i32 %xor547.3.2, 24, !dbg !240
  %add.ptr551.3.2 = getelementptr inbounds i8, ptr addrspace(3) %397, i32 %add.ptr551.idx.3.2, !dbg !240
  %398 = load <4 x half>, ptr addrspace(3) %add.ptr551.3.2, align 8, !dbg !241
  %399 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %392, <4 x half> %304, <4 x float> %numerator.sroa.0.1), !dbg !242
  %400 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %394, <4 x half> %304, <4 x float> %numerator.sroa.34.1), !dbg !242
  %401 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %396, <4 x half> %304, <4 x float> %numerator.sroa.66.1), !dbg !242
  %402 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %398, <4 x half> %304, <4 x float> %numerator.sroa.98.1), !dbg !242
  br label %if.end578.2, !dbg !243

if.end578.2:                                      ; preds = %if.then462.2, %if.end578.1
  %numerator.sroa.98.2 = phi <4 x float> [ %numerator.sroa.98.1, %if.end578.1 ], [ %402, %if.then462.2 ], !dbg !216
  %numerator.sroa.66.2 = phi <4 x float> [ %numerator.sroa.66.1, %if.end578.1 ], [ %401, %if.then462.2 ], !dbg !216
  %numerator.sroa.34.2 = phi <4 x float> [ %numerator.sroa.34.1, %if.end578.1 ], [ %400, %if.then462.2 ], !dbg !216
  %numerator.sroa.0.2 = phi <4 x float> [ %numerator.sroa.0.1, %if.end578.1 ], [ %399, %if.then462.2 ], !dbg !216
  %403 = load i32, ptr addrspace(1) %arrayidx125.3, align 4, !dbg !219, !tbaa !30
  %or.cond911.3 = icmp ugt i32 %403, %invariant.umin, !dbg !220
  br i1 %or.cond911.3, label %if.end578.3, label %if.then462.3, !dbg !220

if.then462.3:                                     ; preds = %if.end578.2
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %mul469.3 = shl nuw nsw i32 %403, 10
  %add476.3 = add nuw nsw i32 %add474, %mul469.3
  %404 = zext nneg i32 %add476.3 to i64, !dbg !226
  %add.ptr482.31056 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %404, !dbg !227
  %405 = load i64, ptr addrspace(4) %add.ptr482.31056, align 8, !dbg !228
  %406 = or disjoint i64 %404, 64, !dbg !229
  %add.ptr482.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %406, !dbg !227
  %407 = load i64, ptr addrspace(4) %add.ptr482.1.3, align 8, !dbg !228
  %408 = or disjoint i64 %404, 128, !dbg !229
  %add.ptr482.2.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %408, !dbg !227
  %409 = load i64, ptr addrspace(4) %add.ptr482.2.3, align 8, !dbg !228
  %410 = or disjoint i64 %404, 192, !dbg !229
  %add.ptr482.3.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %410, !dbg !227
  %411 = load i64, ptr addrspace(4) %add.ptr482.3.3, align 8, !dbg !228
  %412 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul512, !dbg !230
  %add.ptr524.idx.31063 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.31064 = getelementptr inbounds i8, ptr addrspace(3) %412, i32 %add.ptr524.idx.31063, !dbg !230
  %v_column.sroa.130.0.insert.ext1568 = shl i64 %411, 48, !dbg !231
  %v_column.sroa.98.0.insert.ext1413 = shl i64 %409, 32, !dbg !231
  %v_column.sroa.98.0.insert.shift1414 = and i64 %v_column.sroa.98.0.insert.ext1413, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1416 = or disjoint i64 %v_column.sroa.130.0.insert.ext1568, %v_column.sroa.98.0.insert.shift1414, !dbg !231
  %v_column.sroa.66.0.insert.ext1258 = shl i64 %407, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1259 = and i64 %v_column.sroa.66.0.insert.ext1258, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1261 = or disjoint i64 %v_column.sroa.98.0.insert.insert1416, %v_column.sroa.66.0.insert.shift1259, !dbg !231
  %v_column.sroa.0.0.insert.ext1123 = and i64 %405, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1125 = or disjoint i64 %v_column.sroa.66.0.insert.insert1261, %v_column.sroa.0.0.insert.ext1123, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1125, ptr addrspace(3) %add.ptr524.31064, align 8, !dbg !231
  %v_fetch.sroa.0.2.extract.shift1748 = lshr i64 %405, 16, !dbg !232
  %add513.1.3 = or disjoint i32 %mul512, 256, !dbg !233
  %413 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.1.3, !dbg !230
  %xor520.1.3 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.1.3 = xor i32 %xor520.1.3, 8, !dbg !230
  %add.ptr524.1.3 = getelementptr inbounds i8, ptr addrspace(3) %413, i32 %add.ptr524.idx.1.3, !dbg !230
  %414 = shl i64 %411, 32, !dbg !231
  %v_column.sroa.130.0.insert.ext1573 = and i64 %414, -281474976710656, !dbg !231
  %415 = shl i64 %409, 16, !dbg !231
  %v_column.sroa.98.0.insert.shift1419 = and i64 %415, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1421 = or disjoint i64 %v_column.sroa.130.0.insert.ext1573, %v_column.sroa.98.0.insert.shift1419, !dbg !231
  %v_column.sroa.66.0.insert.ext1263 = and i64 %407, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1266 = or disjoint i64 %v_column.sroa.98.0.insert.insert1421, %v_column.sroa.66.0.insert.ext1263, !dbg !231
  %v_column.sroa.0.0.insert.ext1127 = and i64 %v_fetch.sroa.0.2.extract.shift1748, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1129 = or disjoint i64 %v_column.sroa.66.0.insert.insert1266, %v_column.sroa.0.0.insert.ext1127, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1129, ptr addrspace(3) %add.ptr524.1.3, align 8, !dbg !231
  %v_fetch.sroa.0.4.extract.shift1769 = lshr i64 %405, 32, !dbg !232
  %add513.2.3 = or disjoint i32 %mul512, 512, !dbg !233
  %416 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.2.3, !dbg !230
  %xor520.2.3 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.2.3 = xor i32 %xor520.2.3, 16, !dbg !230
  %add.ptr524.2.3 = getelementptr inbounds i8, ptr addrspace(3) %416, i32 %add.ptr524.idx.2.3, !dbg !230
  %417 = shl i64 %411, 16, !dbg !231
  %v_column.sroa.130.0.insert.ext1578 = and i64 %417, -281474976710656, !dbg !231
  %v_column.sroa.98.0.insert.ext1423 = and i64 %409, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1426 = or disjoint i64 %v_column.sroa.130.0.insert.ext1578, %v_column.sroa.98.0.insert.ext1423, !dbg !231
  %418 = lshr i64 %407, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1269 = and i64 %418, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1271 = or disjoint i64 %v_column.sroa.98.0.insert.insert1426, %v_column.sroa.66.0.insert.shift1269, !dbg !231
  %v_column.sroa.0.0.insert.ext1131 = and i64 %v_fetch.sroa.0.4.extract.shift1769, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1133 = or disjoint i64 %v_column.sroa.66.0.insert.insert1271, %v_column.sroa.0.0.insert.ext1131, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1133, ptr addrspace(3) %add.ptr524.2.3, align 8, !dbg !231
  %v_fetch.sroa.0.6.extract.shift1790 = lshr i64 %405, 48, !dbg !232
  %v_fetch.sroa.122.30.extract.shift2021 = and i64 %411, -281474976710656, !dbg !231
  %add513.3.3 = or disjoint i32 %mul512, 768, !dbg !233
  %419 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.3.3, !dbg !230
  %xor520.3.3 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.3.3 = xor i32 %xor520.3.3, 24, !dbg !230
  %add.ptr524.3.3 = getelementptr inbounds i8, ptr addrspace(3) %419, i32 %add.ptr524.idx.3.3, !dbg !230
  %420 = lshr i64 %409, 16, !dbg !231
  %v_column.sroa.98.0.insert.shift1429 = and i64 %420, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1431 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2021, %v_column.sroa.98.0.insert.shift1429, !dbg !231
  %421 = lshr i64 %407, 32, !dbg !231
  %v_column.sroa.66.0.insert.shift1274 = and i64 %421, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1276 = or disjoint i64 %v_column.sroa.98.0.insert.insert1431, %v_column.sroa.66.0.insert.shift1274, !dbg !231
  %v_column.sroa.0.0.insert.insert1137 = or disjoint i64 %v_column.sroa.66.0.insert.insert1276, %v_fetch.sroa.0.6.extract.shift1790, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1137, ptr addrspace(3) %add.ptr524.3.3, align 8, !dbg !231
  fence syncscope("warp") release, !dbg !234
  tail call void @llvm.mxc.barrier.warp(), !dbg !237
  fence syncscope("warp") acquire, !dbg !238
  %add541.31066 = or disjoint i32 %mul534, %mul540, !dbg !239
  %422 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.31066, !dbg !240
  %add.ptr551.idx.31067 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.31068 = getelementptr inbounds i8, ptr addrspace(3) %422, i32 %add.ptr551.idx.31067, !dbg !240
  %423 = load <4 x half>, ptr addrspace(3) %add.ptr551.31068, align 8, !dbg !241
  %add536.1.3 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.1.3 = or disjoint i32 %add536.1.3, 64, !dbg !239
  %424 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.1.3, !dbg !240
  %xor547.1.3 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.1.3 = xor i32 %xor547.1.3, 8, !dbg !240
  %add.ptr551.1.3 = getelementptr inbounds i8, ptr addrspace(3) %424, i32 %add.ptr551.idx.1.3, !dbg !240
  %425 = load <4 x half>, ptr addrspace(3) %add.ptr551.1.3, align 8, !dbg !241
  %add536.2.3 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.2.3 = or disjoint i32 %add536.2.3, 128, !dbg !239
  %426 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.2.3, !dbg !240
  %xor547.2.3 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.2.3 = xor i32 %xor547.2.3, 16, !dbg !240
  %add.ptr551.2.3 = getelementptr inbounds i8, ptr addrspace(3) %426, i32 %add.ptr551.idx.2.3, !dbg !240
  %427 = load <4 x half>, ptr addrspace(3) %add.ptr551.2.3, align 8, !dbg !241
  %add536.3.3 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.3.3 = or disjoint i32 %add536.3.3, 192, !dbg !239
  %428 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.3.3, !dbg !240
  %xor547.3.3 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.3.3 = xor i32 %xor547.3.3, 24, !dbg !240
  %add.ptr551.3.3 = getelementptr inbounds i8, ptr addrspace(3) %428, i32 %add.ptr551.idx.3.3, !dbg !240
  %429 = load <4 x half>, ptr addrspace(3) %add.ptr551.3.3, align 8, !dbg !241
  %430 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %423, <4 x half> %303, <4 x float> %numerator.sroa.0.2), !dbg !242
  %431 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %425, <4 x half> %303, <4 x float> %numerator.sroa.34.2), !dbg !242
  %432 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %427, <4 x half> %303, <4 x float> %numerator.sroa.66.2), !dbg !242
  %433 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %429, <4 x half> %303, <4 x float> %numerator.sroa.98.2), !dbg !242
  br label %if.end578.3, !dbg !243

if.end578.3:                                      ; preds = %if.then462.3, %if.end578.2
  %numerator.sroa.98.3 = phi <4 x float> [ %numerator.sroa.98.2, %if.end578.2 ], [ %433, %if.then462.3 ], !dbg !216
  %numerator.sroa.66.3 = phi <4 x float> [ %numerator.sroa.66.2, %if.end578.2 ], [ %432, %if.then462.3 ], !dbg !216
  %numerator.sroa.34.3 = phi <4 x float> [ %numerator.sroa.34.2, %if.end578.2 ], [ %431, %if.then462.3 ], !dbg !216
  %numerator.sroa.0.3 = phi <4 x float> [ %numerator.sroa.0.2, %if.end578.2 ], [ %430, %if.then462.3 ], !dbg !216
  %434 = load i32, ptr addrspace(1) %arrayidx125.4, align 4, !dbg !219, !tbaa !30
  %or.cond911.4 = icmp ugt i32 %434, %invariant.umin, !dbg !220
  br i1 %or.cond911.4, label %if.end578.4, label %if.then462.4, !dbg !220

if.then462.4:                                     ; preds = %if.end578.3
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %mul469.4 = shl nuw nsw i32 %434, 10
  %add476.4 = add nuw nsw i32 %add474, %mul469.4
  %435 = zext nneg i32 %add476.4 to i64, !dbg !226
  %add.ptr482.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %435, !dbg !227
  %436 = load i64, ptr addrspace(4) %add.ptr482.4, align 8, !dbg !228
  %437 = or disjoint i64 %435, 64, !dbg !229
  %add.ptr482.1.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %437, !dbg !227
  %438 = load i64, ptr addrspace(4) %add.ptr482.1.4, align 8, !dbg !228
  %439 = or disjoint i64 %435, 128, !dbg !229
  %add.ptr482.2.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %439, !dbg !227
  %440 = load i64, ptr addrspace(4) %add.ptr482.2.4, align 8, !dbg !228
  %441 = or disjoint i64 %435, 192, !dbg !229
  %add.ptr482.3.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %441, !dbg !227
  %442 = load i64, ptr addrspace(4) %add.ptr482.3.4, align 8, !dbg !228
  %443 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul512, !dbg !230
  %add.ptr524.idx.4 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.4 = getelementptr inbounds i8, ptr addrspace(3) %443, i32 %add.ptr524.idx.4, !dbg !230
  %v_column.sroa.130.0.insert.ext1588 = shl i64 %442, 48, !dbg !231
  %v_column.sroa.98.0.insert.ext1433 = shl i64 %440, 32, !dbg !231
  %v_column.sroa.98.0.insert.shift1434 = and i64 %v_column.sroa.98.0.insert.ext1433, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1436 = or disjoint i64 %v_column.sroa.130.0.insert.ext1588, %v_column.sroa.98.0.insert.shift1434, !dbg !231
  %v_column.sroa.66.0.insert.ext1278 = shl i64 %438, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1279 = and i64 %v_column.sroa.66.0.insert.ext1278, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1281 = or disjoint i64 %v_column.sroa.98.0.insert.insert1436, %v_column.sroa.66.0.insert.shift1279, !dbg !231
  %v_column.sroa.0.0.insert.ext1139 = and i64 %436, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1141 = or disjoint i64 %v_column.sroa.66.0.insert.insert1281, %v_column.sroa.0.0.insert.ext1139, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1141, ptr addrspace(3) %add.ptr524.4, align 8, !dbg !231
  %v_fetch.sroa.0.2.extract.shift1751 = lshr i64 %436, 16, !dbg !232
  %add513.1.4 = or disjoint i32 %mul512, 256, !dbg !233
  %444 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.1.4, !dbg !230
  %xor520.1.4 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.1.4 = xor i32 %xor520.1.4, 8, !dbg !230
  %add.ptr524.1.4 = getelementptr inbounds i8, ptr addrspace(3) %444, i32 %add.ptr524.idx.1.4, !dbg !230
  %445 = shl i64 %442, 32, !dbg !231
  %v_column.sroa.130.0.insert.ext1593 = and i64 %445, -281474976710656, !dbg !231
  %446 = shl i64 %440, 16, !dbg !231
  %v_column.sroa.98.0.insert.shift1439 = and i64 %446, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1441 = or disjoint i64 %v_column.sroa.130.0.insert.ext1593, %v_column.sroa.98.0.insert.shift1439, !dbg !231
  %v_column.sroa.66.0.insert.ext1283 = and i64 %438, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1286 = or disjoint i64 %v_column.sroa.98.0.insert.insert1441, %v_column.sroa.66.0.insert.ext1283, !dbg !231
  %v_column.sroa.0.0.insert.ext1143 = and i64 %v_fetch.sroa.0.2.extract.shift1751, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1145 = or disjoint i64 %v_column.sroa.66.0.insert.insert1286, %v_column.sroa.0.0.insert.ext1143, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1145, ptr addrspace(3) %add.ptr524.1.4, align 8, !dbg !231
  %v_fetch.sroa.0.4.extract.shift1772 = lshr i64 %436, 32, !dbg !232
  %add513.2.4 = or disjoint i32 %mul512, 512, !dbg !233
  %447 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.2.4, !dbg !230
  %xor520.2.4 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.2.4 = xor i32 %xor520.2.4, 16, !dbg !230
  %add.ptr524.2.4 = getelementptr inbounds i8, ptr addrspace(3) %447, i32 %add.ptr524.idx.2.4, !dbg !230
  %448 = shl i64 %442, 16, !dbg !231
  %v_column.sroa.130.0.insert.ext1598 = and i64 %448, -281474976710656, !dbg !231
  %v_column.sroa.98.0.insert.ext1443 = and i64 %440, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1446 = or disjoint i64 %v_column.sroa.130.0.insert.ext1598, %v_column.sroa.98.0.insert.ext1443, !dbg !231
  %449 = lshr i64 %438, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1289 = and i64 %449, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1291 = or disjoint i64 %v_column.sroa.98.0.insert.insert1446, %v_column.sroa.66.0.insert.shift1289, !dbg !231
  %v_column.sroa.0.0.insert.ext1147 = and i64 %v_fetch.sroa.0.4.extract.shift1772, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1149 = or disjoint i64 %v_column.sroa.66.0.insert.insert1291, %v_column.sroa.0.0.insert.ext1147, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1149, ptr addrspace(3) %add.ptr524.2.4, align 8, !dbg !231
  %v_fetch.sroa.0.6.extract.shift1793 = lshr i64 %436, 48, !dbg !232
  %v_fetch.sroa.122.30.extract.shift2024 = and i64 %442, -281474976710656, !dbg !231
  %add513.3.4 = or disjoint i32 %mul512, 768, !dbg !233
  %450 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.3.4, !dbg !230
  %xor520.3.4 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.3.4 = xor i32 %xor520.3.4, 24, !dbg !230
  %add.ptr524.3.4 = getelementptr inbounds i8, ptr addrspace(3) %450, i32 %add.ptr524.idx.3.4, !dbg !230
  %451 = lshr i64 %440, 16, !dbg !231
  %v_column.sroa.98.0.insert.shift1449 = and i64 %451, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1451 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2024, %v_column.sroa.98.0.insert.shift1449, !dbg !231
  %452 = lshr i64 %438, 32, !dbg !231
  %v_column.sroa.66.0.insert.shift1294 = and i64 %452, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1296 = or disjoint i64 %v_column.sroa.98.0.insert.insert1451, %v_column.sroa.66.0.insert.shift1294, !dbg !231
  %v_column.sroa.0.0.insert.insert1153 = or disjoint i64 %v_column.sroa.66.0.insert.insert1296, %v_fetch.sroa.0.6.extract.shift1793, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1153, ptr addrspace(3) %add.ptr524.3.4, align 8, !dbg !231
  fence syncscope("warp") release, !dbg !234
  tail call void @llvm.mxc.barrier.warp(), !dbg !237
  fence syncscope("warp") acquire, !dbg !238
  %add541.4 = or disjoint i32 %mul534, %mul540, !dbg !239
  %453 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.4, !dbg !240
  %add.ptr551.idx.4 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.4 = getelementptr inbounds i8, ptr addrspace(3) %453, i32 %add.ptr551.idx.4, !dbg !240
  %454 = load <4 x half>, ptr addrspace(3) %add.ptr551.4, align 8, !dbg !241
  %add536.1.4 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.1.4 = or disjoint i32 %add536.1.4, 64, !dbg !239
  %455 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.1.4, !dbg !240
  %xor547.1.4 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.1.4 = xor i32 %xor547.1.4, 8, !dbg !240
  %add.ptr551.1.4 = getelementptr inbounds i8, ptr addrspace(3) %455, i32 %add.ptr551.idx.1.4, !dbg !240
  %456 = load <4 x half>, ptr addrspace(3) %add.ptr551.1.4, align 8, !dbg !241
  %add536.2.4 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.2.4 = or disjoint i32 %add536.2.4, 128, !dbg !239
  %457 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.2.4, !dbg !240
  %xor547.2.4 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.2.4 = xor i32 %xor547.2.4, 16, !dbg !240
  %add.ptr551.2.4 = getelementptr inbounds i8, ptr addrspace(3) %457, i32 %add.ptr551.idx.2.4, !dbg !240
  %458 = load <4 x half>, ptr addrspace(3) %add.ptr551.2.4, align 8, !dbg !241
  %add536.3.4 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.3.4 = or disjoint i32 %add536.3.4, 192, !dbg !239
  %459 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.3.4, !dbg !240
  %xor547.3.4 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.3.4 = xor i32 %xor547.3.4, 24, !dbg !240
  %add.ptr551.3.4 = getelementptr inbounds i8, ptr addrspace(3) %459, i32 %add.ptr551.idx.3.4, !dbg !240
  %460 = load <4 x half>, ptr addrspace(3) %add.ptr551.3.4, align 8, !dbg !241
  %461 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %454, <4 x half> %302, <4 x float> %numerator.sroa.0.3), !dbg !242
  %462 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %456, <4 x half> %302, <4 x float> %numerator.sroa.34.3), !dbg !242
  %463 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %458, <4 x half> %302, <4 x float> %numerator.sroa.66.3), !dbg !242
  %464 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %460, <4 x half> %302, <4 x float> %numerator.sroa.98.3), !dbg !242
  br label %if.end578.4, !dbg !243

if.end578.4:                                      ; preds = %if.then462.4, %if.end578.3
  %numerator.sroa.98.4 = phi <4 x float> [ %numerator.sroa.98.3, %if.end578.3 ], [ %464, %if.then462.4 ], !dbg !216
  %numerator.sroa.66.4 = phi <4 x float> [ %numerator.sroa.66.3, %if.end578.3 ], [ %463, %if.then462.4 ], !dbg !216
  %numerator.sroa.34.4 = phi <4 x float> [ %numerator.sroa.34.3, %if.end578.3 ], [ %462, %if.then462.4 ], !dbg !216
  %numerator.sroa.0.4 = phi <4 x float> [ %numerator.sroa.0.3, %if.end578.3 ], [ %461, %if.then462.4 ], !dbg !216
  %465 = load i32, ptr addrspace(1) %arrayidx125.5, align 4, !dbg !219, !tbaa !30
  %or.cond911.5 = icmp ugt i32 %465, %invariant.umin, !dbg !220
  br i1 %or.cond911.5, label %if.end578.5, label %if.then462.5, !dbg !220

if.then462.5:                                     ; preds = %if.end578.4
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %mul469.5 = shl nuw nsw i32 %465, 10
  %add476.5 = add nuw nsw i32 %add474, %mul469.5
  %466 = zext nneg i32 %add476.5 to i64, !dbg !226
  %add.ptr482.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %466, !dbg !227
  %467 = load i64, ptr addrspace(4) %add.ptr482.5, align 8, !dbg !228
  %468 = or disjoint i64 %466, 64, !dbg !229
  %add.ptr482.1.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %468, !dbg !227
  %469 = load i64, ptr addrspace(4) %add.ptr482.1.5, align 8, !dbg !228
  %470 = or disjoint i64 %466, 128, !dbg !229
  %add.ptr482.2.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %470, !dbg !227
  %471 = load i64, ptr addrspace(4) %add.ptr482.2.5, align 8, !dbg !228
  %472 = or disjoint i64 %466, 192, !dbg !229
  %add.ptr482.3.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %472, !dbg !227
  %473 = load i64, ptr addrspace(4) %add.ptr482.3.5, align 8, !dbg !228
  %474 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul512, !dbg !230
  %add.ptr524.idx.5 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.5 = getelementptr inbounds i8, ptr addrspace(3) %474, i32 %add.ptr524.idx.5, !dbg !230
  %v_column.sroa.130.0.insert.ext1608 = shl i64 %473, 48, !dbg !231
  %v_column.sroa.98.0.insert.ext1453 = shl i64 %471, 32, !dbg !231
  %v_column.sroa.98.0.insert.shift1454 = and i64 %v_column.sroa.98.0.insert.ext1453, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1456 = or disjoint i64 %v_column.sroa.130.0.insert.ext1608, %v_column.sroa.98.0.insert.shift1454, !dbg !231
  %v_column.sroa.66.0.insert.ext1298 = shl i64 %469, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1299 = and i64 %v_column.sroa.66.0.insert.ext1298, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1301 = or disjoint i64 %v_column.sroa.98.0.insert.insert1456, %v_column.sroa.66.0.insert.shift1299, !dbg !231
  %v_column.sroa.0.0.insert.ext1155 = and i64 %467, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1157 = or disjoint i64 %v_column.sroa.66.0.insert.insert1301, %v_column.sroa.0.0.insert.ext1155, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1157, ptr addrspace(3) %add.ptr524.5, align 8, !dbg !231
  %v_fetch.sroa.0.2.extract.shift1754 = lshr i64 %467, 16, !dbg !232
  %add513.1.5 = or disjoint i32 %mul512, 256, !dbg !233
  %475 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.1.5, !dbg !230
  %xor520.1.5 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.1.5 = xor i32 %xor520.1.5, 8, !dbg !230
  %add.ptr524.1.5 = getelementptr inbounds i8, ptr addrspace(3) %475, i32 %add.ptr524.idx.1.5, !dbg !230
  %476 = shl i64 %473, 32, !dbg !231
  %v_column.sroa.130.0.insert.ext1613 = and i64 %476, -281474976710656, !dbg !231
  %477 = shl i64 %471, 16, !dbg !231
  %v_column.sroa.98.0.insert.shift1459 = and i64 %477, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1461 = or disjoint i64 %v_column.sroa.130.0.insert.ext1613, %v_column.sroa.98.0.insert.shift1459, !dbg !231
  %v_column.sroa.66.0.insert.ext1303 = and i64 %469, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1306 = or disjoint i64 %v_column.sroa.98.0.insert.insert1461, %v_column.sroa.66.0.insert.ext1303, !dbg !231
  %v_column.sroa.0.0.insert.ext1159 = and i64 %v_fetch.sroa.0.2.extract.shift1754, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1161 = or disjoint i64 %v_column.sroa.66.0.insert.insert1306, %v_column.sroa.0.0.insert.ext1159, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1161, ptr addrspace(3) %add.ptr524.1.5, align 8, !dbg !231
  %v_fetch.sroa.0.4.extract.shift1775 = lshr i64 %467, 32, !dbg !232
  %add513.2.5 = or disjoint i32 %mul512, 512, !dbg !233
  %478 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.2.5, !dbg !230
  %xor520.2.5 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.2.5 = xor i32 %xor520.2.5, 16, !dbg !230
  %add.ptr524.2.5 = getelementptr inbounds i8, ptr addrspace(3) %478, i32 %add.ptr524.idx.2.5, !dbg !230
  %479 = shl i64 %473, 16, !dbg !231
  %v_column.sroa.130.0.insert.ext1618 = and i64 %479, -281474976710656, !dbg !231
  %v_column.sroa.98.0.insert.ext1463 = and i64 %471, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1466 = or disjoint i64 %v_column.sroa.130.0.insert.ext1618, %v_column.sroa.98.0.insert.ext1463, !dbg !231
  %480 = lshr i64 %469, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1309 = and i64 %480, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1311 = or disjoint i64 %v_column.sroa.98.0.insert.insert1466, %v_column.sroa.66.0.insert.shift1309, !dbg !231
  %v_column.sroa.0.0.insert.ext1163 = and i64 %v_fetch.sroa.0.4.extract.shift1775, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1165 = or disjoint i64 %v_column.sroa.66.0.insert.insert1311, %v_column.sroa.0.0.insert.ext1163, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1165, ptr addrspace(3) %add.ptr524.2.5, align 8, !dbg !231
  %v_fetch.sroa.0.6.extract.shift1796 = lshr i64 %467, 48, !dbg !232
  %v_fetch.sroa.122.30.extract.shift2027 = and i64 %473, -281474976710656, !dbg !231
  %add513.3.5 = or disjoint i32 %mul512, 768, !dbg !233
  %481 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.3.5, !dbg !230
  %xor520.3.5 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.3.5 = xor i32 %xor520.3.5, 24, !dbg !230
  %add.ptr524.3.5 = getelementptr inbounds i8, ptr addrspace(3) %481, i32 %add.ptr524.idx.3.5, !dbg !230
  %482 = lshr i64 %471, 16, !dbg !231
  %v_column.sroa.98.0.insert.shift1469 = and i64 %482, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1471 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2027, %v_column.sroa.98.0.insert.shift1469, !dbg !231
  %483 = lshr i64 %469, 32, !dbg !231
  %v_column.sroa.66.0.insert.shift1314 = and i64 %483, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1316 = or disjoint i64 %v_column.sroa.98.0.insert.insert1471, %v_column.sroa.66.0.insert.shift1314, !dbg !231
  %v_column.sroa.0.0.insert.insert1169 = or disjoint i64 %v_column.sroa.66.0.insert.insert1316, %v_fetch.sroa.0.6.extract.shift1796, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1169, ptr addrspace(3) %add.ptr524.3.5, align 8, !dbg !231
  fence syncscope("warp") release, !dbg !234
  tail call void @llvm.mxc.barrier.warp(), !dbg !237
  fence syncscope("warp") acquire, !dbg !238
  %add541.5 = or disjoint i32 %mul534, %mul540, !dbg !239
  %484 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.5, !dbg !240
  %add.ptr551.idx.5 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.5 = getelementptr inbounds i8, ptr addrspace(3) %484, i32 %add.ptr551.idx.5, !dbg !240
  %485 = load <4 x half>, ptr addrspace(3) %add.ptr551.5, align 8, !dbg !241
  %add536.1.5 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.1.5 = or disjoint i32 %add536.1.5, 64, !dbg !239
  %486 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.1.5, !dbg !240
  %xor547.1.5 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.1.5 = xor i32 %xor547.1.5, 8, !dbg !240
  %add.ptr551.1.5 = getelementptr inbounds i8, ptr addrspace(3) %486, i32 %add.ptr551.idx.1.5, !dbg !240
  %487 = load <4 x half>, ptr addrspace(3) %add.ptr551.1.5, align 8, !dbg !241
  %add536.2.5 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.2.5 = or disjoint i32 %add536.2.5, 128, !dbg !239
  %488 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.2.5, !dbg !240
  %xor547.2.5 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.2.5 = xor i32 %xor547.2.5, 16, !dbg !240
  %add.ptr551.2.5 = getelementptr inbounds i8, ptr addrspace(3) %488, i32 %add.ptr551.idx.2.5, !dbg !240
  %489 = load <4 x half>, ptr addrspace(3) %add.ptr551.2.5, align 8, !dbg !241
  %add536.3.5 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.3.5 = or disjoint i32 %add536.3.5, 192, !dbg !239
  %490 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.3.5, !dbg !240
  %xor547.3.5 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.3.5 = xor i32 %xor547.3.5, 24, !dbg !240
  %add.ptr551.3.5 = getelementptr inbounds i8, ptr addrspace(3) %490, i32 %add.ptr551.idx.3.5, !dbg !240
  %491 = load <4 x half>, ptr addrspace(3) %add.ptr551.3.5, align 8, !dbg !241
  %492 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %485, <4 x half> %301, <4 x float> %numerator.sroa.0.4), !dbg !242
  %493 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %487, <4 x half> %301, <4 x float> %numerator.sroa.34.4), !dbg !242
  %494 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %489, <4 x half> %301, <4 x float> %numerator.sroa.66.4), !dbg !242
  %495 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %491, <4 x half> %301, <4 x float> %numerator.sroa.98.4), !dbg !242
  br label %if.end578.5, !dbg !243

if.end578.5:                                      ; preds = %if.then462.5, %if.end578.4
  %numerator.sroa.98.5 = phi <4 x float> [ %numerator.sroa.98.4, %if.end578.4 ], [ %495, %if.then462.5 ], !dbg !216
  %numerator.sroa.66.5 = phi <4 x float> [ %numerator.sroa.66.4, %if.end578.4 ], [ %494, %if.then462.5 ], !dbg !216
  %numerator.sroa.34.5 = phi <4 x float> [ %numerator.sroa.34.4, %if.end578.4 ], [ %493, %if.then462.5 ], !dbg !216
  %numerator.sroa.0.5 = phi <4 x float> [ %numerator.sroa.0.4, %if.end578.4 ], [ %492, %if.then462.5 ], !dbg !216
  %496 = load i32, ptr addrspace(1) %arrayidx125.6, align 4, !dbg !219, !tbaa !30
  %or.cond911.6 = icmp ugt i32 %496, %invariant.umin, !dbg !220
  br i1 %or.cond911.6, label %if.end578.6, label %if.then462.6, !dbg !220

if.then462.6:                                     ; preds = %if.end578.5
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %mul469.6 = shl nuw nsw i32 %496, 10
  %add476.6 = add nuw nsw i32 %add474, %mul469.6
  %497 = zext nneg i32 %add476.6 to i64, !dbg !226
  %add.ptr482.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %497, !dbg !227
  %498 = load i64, ptr addrspace(4) %add.ptr482.6, align 8, !dbg !228
  %499 = or disjoint i64 %497, 64, !dbg !229
  %add.ptr482.1.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %499, !dbg !227
  %500 = load i64, ptr addrspace(4) %add.ptr482.1.6, align 8, !dbg !228
  %501 = or disjoint i64 %497, 128, !dbg !229
  %add.ptr482.2.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %501, !dbg !227
  %502 = load i64, ptr addrspace(4) %add.ptr482.2.6, align 8, !dbg !228
  %503 = or disjoint i64 %497, 192, !dbg !229
  %add.ptr482.3.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %503, !dbg !227
  %504 = load i64, ptr addrspace(4) %add.ptr482.3.6, align 8, !dbg !228
  %505 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul512, !dbg !230
  %add.ptr524.idx.6 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.6 = getelementptr inbounds i8, ptr addrspace(3) %505, i32 %add.ptr524.idx.6, !dbg !230
  %v_column.sroa.130.0.insert.ext1628 = shl i64 %504, 48, !dbg !231
  %v_column.sroa.98.0.insert.ext1473 = shl i64 %502, 32, !dbg !231
  %v_column.sroa.98.0.insert.shift1474 = and i64 %v_column.sroa.98.0.insert.ext1473, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1476 = or disjoint i64 %v_column.sroa.130.0.insert.ext1628, %v_column.sroa.98.0.insert.shift1474, !dbg !231
  %v_column.sroa.66.0.insert.ext1318 = shl i64 %500, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1319 = and i64 %v_column.sroa.66.0.insert.ext1318, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1321 = or disjoint i64 %v_column.sroa.98.0.insert.insert1476, %v_column.sroa.66.0.insert.shift1319, !dbg !231
  %v_column.sroa.0.0.insert.ext1171 = and i64 %498, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1173 = or disjoint i64 %v_column.sroa.66.0.insert.insert1321, %v_column.sroa.0.0.insert.ext1171, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1173, ptr addrspace(3) %add.ptr524.6, align 8, !dbg !231
  %v_fetch.sroa.0.2.extract.shift1757 = lshr i64 %498, 16, !dbg !232
  %add513.1.6 = or disjoint i32 %mul512, 256, !dbg !233
  %506 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.1.6, !dbg !230
  %xor520.1.6 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.1.6 = xor i32 %xor520.1.6, 8, !dbg !230
  %add.ptr524.1.6 = getelementptr inbounds i8, ptr addrspace(3) %506, i32 %add.ptr524.idx.1.6, !dbg !230
  %507 = shl i64 %504, 32, !dbg !231
  %v_column.sroa.130.0.insert.ext1633 = and i64 %507, -281474976710656, !dbg !231
  %508 = shl i64 %502, 16, !dbg !231
  %v_column.sroa.98.0.insert.shift1479 = and i64 %508, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1481 = or disjoint i64 %v_column.sroa.130.0.insert.ext1633, %v_column.sroa.98.0.insert.shift1479, !dbg !231
  %v_column.sroa.66.0.insert.ext1323 = and i64 %500, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1326 = or disjoint i64 %v_column.sroa.98.0.insert.insert1481, %v_column.sroa.66.0.insert.ext1323, !dbg !231
  %v_column.sroa.0.0.insert.ext1175 = and i64 %v_fetch.sroa.0.2.extract.shift1757, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1177 = or disjoint i64 %v_column.sroa.66.0.insert.insert1326, %v_column.sroa.0.0.insert.ext1175, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1177, ptr addrspace(3) %add.ptr524.1.6, align 8, !dbg !231
  %v_fetch.sroa.0.4.extract.shift1778 = lshr i64 %498, 32, !dbg !232
  %add513.2.6 = or disjoint i32 %mul512, 512, !dbg !233
  %509 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.2.6, !dbg !230
  %xor520.2.6 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.2.6 = xor i32 %xor520.2.6, 16, !dbg !230
  %add.ptr524.2.6 = getelementptr inbounds i8, ptr addrspace(3) %509, i32 %add.ptr524.idx.2.6, !dbg !230
  %510 = shl i64 %504, 16, !dbg !231
  %v_column.sroa.130.0.insert.ext1638 = and i64 %510, -281474976710656, !dbg !231
  %v_column.sroa.98.0.insert.ext1483 = and i64 %502, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1486 = or disjoint i64 %v_column.sroa.130.0.insert.ext1638, %v_column.sroa.98.0.insert.ext1483, !dbg !231
  %511 = lshr i64 %500, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1329 = and i64 %511, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1331 = or disjoint i64 %v_column.sroa.98.0.insert.insert1486, %v_column.sroa.66.0.insert.shift1329, !dbg !231
  %v_column.sroa.0.0.insert.ext1179 = and i64 %v_fetch.sroa.0.4.extract.shift1778, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1181 = or disjoint i64 %v_column.sroa.66.0.insert.insert1331, %v_column.sroa.0.0.insert.ext1179, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1181, ptr addrspace(3) %add.ptr524.2.6, align 8, !dbg !231
  %v_fetch.sroa.0.6.extract.shift1799 = lshr i64 %498, 48, !dbg !232
  %v_fetch.sroa.122.30.extract.shift2030 = and i64 %504, -281474976710656, !dbg !231
  %add513.3.6 = or disjoint i32 %mul512, 768, !dbg !233
  %512 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.3.6, !dbg !230
  %xor520.3.6 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.3.6 = xor i32 %xor520.3.6, 24, !dbg !230
  %add.ptr524.3.6 = getelementptr inbounds i8, ptr addrspace(3) %512, i32 %add.ptr524.idx.3.6, !dbg !230
  %513 = lshr i64 %502, 16, !dbg !231
  %v_column.sroa.98.0.insert.shift1489 = and i64 %513, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1491 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2030, %v_column.sroa.98.0.insert.shift1489, !dbg !231
  %514 = lshr i64 %500, 32, !dbg !231
  %v_column.sroa.66.0.insert.shift1334 = and i64 %514, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1336 = or disjoint i64 %v_column.sroa.98.0.insert.insert1491, %v_column.sroa.66.0.insert.shift1334, !dbg !231
  %v_column.sroa.0.0.insert.insert1185 = or disjoint i64 %v_column.sroa.66.0.insert.insert1336, %v_fetch.sroa.0.6.extract.shift1799, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1185, ptr addrspace(3) %add.ptr524.3.6, align 8, !dbg !231
  fence syncscope("warp") release, !dbg !234
  tail call void @llvm.mxc.barrier.warp(), !dbg !237
  fence syncscope("warp") acquire, !dbg !238
  %add541.6 = or disjoint i32 %mul534, %mul540, !dbg !239
  %515 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.6, !dbg !240
  %add.ptr551.idx.6 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.6 = getelementptr inbounds i8, ptr addrspace(3) %515, i32 %add.ptr551.idx.6, !dbg !240
  %516 = load <4 x half>, ptr addrspace(3) %add.ptr551.6, align 8, !dbg !241
  %add536.1.6 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.1.6 = or disjoint i32 %add536.1.6, 64, !dbg !239
  %517 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.1.6, !dbg !240
  %xor547.1.6 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.1.6 = xor i32 %xor547.1.6, 8, !dbg !240
  %add.ptr551.1.6 = getelementptr inbounds i8, ptr addrspace(3) %517, i32 %add.ptr551.idx.1.6, !dbg !240
  %518 = load <4 x half>, ptr addrspace(3) %add.ptr551.1.6, align 8, !dbg !241
  %add536.2.6 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.2.6 = or disjoint i32 %add536.2.6, 128, !dbg !239
  %519 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.2.6, !dbg !240
  %xor547.2.6 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.2.6 = xor i32 %xor547.2.6, 16, !dbg !240
  %add.ptr551.2.6 = getelementptr inbounds i8, ptr addrspace(3) %519, i32 %add.ptr551.idx.2.6, !dbg !240
  %520 = load <4 x half>, ptr addrspace(3) %add.ptr551.2.6, align 8, !dbg !241
  %add536.3.6 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.3.6 = or disjoint i32 %add536.3.6, 192, !dbg !239
  %521 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.3.6, !dbg !240
  %xor547.3.6 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.3.6 = xor i32 %xor547.3.6, 24, !dbg !240
  %add.ptr551.3.6 = getelementptr inbounds i8, ptr addrspace(3) %521, i32 %add.ptr551.idx.3.6, !dbg !240
  %522 = load <4 x half>, ptr addrspace(3) %add.ptr551.3.6, align 8, !dbg !241
  %523 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %516, <4 x half> %300, <4 x float> %numerator.sroa.0.5), !dbg !242
  %524 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %518, <4 x half> %300, <4 x float> %numerator.sroa.34.5), !dbg !242
  %525 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %520, <4 x half> %300, <4 x float> %numerator.sroa.66.5), !dbg !242
  %526 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %522, <4 x half> %300, <4 x float> %numerator.sroa.98.5), !dbg !242
  br label %if.end578.6, !dbg !243

if.end578.6:                                      ; preds = %if.then462.6, %if.end578.5
  %numerator.sroa.98.6 = phi <4 x float> [ %numerator.sroa.98.5, %if.end578.5 ], [ %526, %if.then462.6 ], !dbg !216
  %numerator.sroa.66.6 = phi <4 x float> [ %numerator.sroa.66.5, %if.end578.5 ], [ %525, %if.then462.6 ], !dbg !216
  %numerator.sroa.34.6 = phi <4 x float> [ %numerator.sroa.34.5, %if.end578.5 ], [ %524, %if.then462.6 ], !dbg !216
  %numerator.sroa.0.6 = phi <4 x float> [ %numerator.sroa.0.5, %if.end578.5 ], [ %523, %if.then462.6 ], !dbg !216
  %527 = load i32, ptr addrspace(1) %arrayidx125.7, align 4, !dbg !219, !tbaa !30
  %or.cond911.7 = icmp ugt i32 %527, %invariant.umin, !dbg !220
  br i1 %or.cond911.7, label %if.end578.7, label %if.then462.7, !dbg !220

if.then462.7:                                     ; preds = %if.end578.6
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %mul469.7 = shl nuw nsw i32 %527, 10
  %add476.7 = add nuw nsw i32 %add474, %mul469.7
  %528 = zext nneg i32 %add476.7 to i64, !dbg !226
  %add.ptr482.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %528, !dbg !227
  %529 = load i64, ptr addrspace(4) %add.ptr482.7, align 8, !dbg !228
  %530 = or disjoint i64 %528, 64, !dbg !229
  %add.ptr482.1.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %530, !dbg !227
  %531 = load i64, ptr addrspace(4) %add.ptr482.1.7, align 8, !dbg !228
  %532 = or disjoint i64 %528, 128, !dbg !229
  %add.ptr482.2.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %532, !dbg !227
  %533 = load i64, ptr addrspace(4) %add.ptr482.2.7, align 8, !dbg !228
  %534 = or disjoint i64 %528, 192, !dbg !229
  %add.ptr482.3.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %534, !dbg !227
  %535 = load i64, ptr addrspace(4) %add.ptr482.3.7, align 8, !dbg !228
  %536 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul512, !dbg !230
  %add.ptr524.idx.7 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.7 = getelementptr inbounds i8, ptr addrspace(3) %536, i32 %add.ptr524.idx.7, !dbg !230
  %v_column.sroa.130.0.insert.ext1648 = shl i64 %535, 48, !dbg !231
  %v_column.sroa.98.0.insert.ext1493 = shl i64 %533, 32, !dbg !231
  %v_column.sroa.98.0.insert.shift1494 = and i64 %v_column.sroa.98.0.insert.ext1493, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1496 = or disjoint i64 %v_column.sroa.130.0.insert.ext1648, %v_column.sroa.98.0.insert.shift1494, !dbg !231
  %v_column.sroa.66.0.insert.ext1338 = shl i64 %531, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1339 = and i64 %v_column.sroa.66.0.insert.ext1338, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1341 = or disjoint i64 %v_column.sroa.98.0.insert.insert1496, %v_column.sroa.66.0.insert.shift1339, !dbg !231
  %v_column.sroa.0.0.insert.ext1187 = and i64 %529, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1189 = or disjoint i64 %v_column.sroa.66.0.insert.insert1341, %v_column.sroa.0.0.insert.ext1187, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1189, ptr addrspace(3) %add.ptr524.7, align 8, !dbg !231
  %v_fetch.sroa.0.2.extract.shift1760 = lshr i64 %529, 16, !dbg !232
  %add513.1.7 = or disjoint i32 %mul512, 256, !dbg !233
  %537 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.1.7, !dbg !230
  %xor520.1.7 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.1.7 = xor i32 %xor520.1.7, 8, !dbg !230
  %add.ptr524.1.7 = getelementptr inbounds i8, ptr addrspace(3) %537, i32 %add.ptr524.idx.1.7, !dbg !230
  %538 = shl i64 %535, 32, !dbg !231
  %v_column.sroa.130.0.insert.ext1653 = and i64 %538, -281474976710656, !dbg !231
  %539 = shl i64 %533, 16, !dbg !231
  %v_column.sroa.98.0.insert.shift1499 = and i64 %539, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1501 = or disjoint i64 %v_column.sroa.130.0.insert.ext1653, %v_column.sroa.98.0.insert.shift1499, !dbg !231
  %v_column.sroa.66.0.insert.ext1343 = and i64 %531, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1346 = or disjoint i64 %v_column.sroa.98.0.insert.insert1501, %v_column.sroa.66.0.insert.ext1343, !dbg !231
  %v_column.sroa.0.0.insert.ext1191 = and i64 %v_fetch.sroa.0.2.extract.shift1760, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1193 = or disjoint i64 %v_column.sroa.66.0.insert.insert1346, %v_column.sroa.0.0.insert.ext1191, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1193, ptr addrspace(3) %add.ptr524.1.7, align 8, !dbg !231
  %v_fetch.sroa.0.4.extract.shift1781 = lshr i64 %529, 32, !dbg !232
  %add513.2.7 = or disjoint i32 %mul512, 512, !dbg !233
  %540 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.2.7, !dbg !230
  %xor520.2.7 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.2.7 = xor i32 %xor520.2.7, 16, !dbg !230
  %add.ptr524.2.7 = getelementptr inbounds i8, ptr addrspace(3) %540, i32 %add.ptr524.idx.2.7, !dbg !230
  %541 = shl i64 %535, 16, !dbg !231
  %v_column.sroa.130.0.insert.ext1658 = and i64 %541, -281474976710656, !dbg !231
  %v_column.sroa.98.0.insert.ext1503 = and i64 %533, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1506 = or disjoint i64 %v_column.sroa.130.0.insert.ext1658, %v_column.sroa.98.0.insert.ext1503, !dbg !231
  %542 = lshr i64 %531, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1349 = and i64 %542, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1351 = or disjoint i64 %v_column.sroa.98.0.insert.insert1506, %v_column.sroa.66.0.insert.shift1349, !dbg !231
  %v_column.sroa.0.0.insert.ext1195 = and i64 %v_fetch.sroa.0.4.extract.shift1781, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1197 = or disjoint i64 %v_column.sroa.66.0.insert.insert1351, %v_column.sroa.0.0.insert.ext1195, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1197, ptr addrspace(3) %add.ptr524.2.7, align 8, !dbg !231
  %v_fetch.sroa.0.6.extract.shift1802 = lshr i64 %529, 48, !dbg !232
  %v_fetch.sroa.122.30.extract.shift2033 = and i64 %535, -281474976710656, !dbg !231
  %add513.3.7 = or disjoint i32 %mul512, 768, !dbg !233
  %543 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add513.3.7, !dbg !230
  %xor520.3.7 = shl nuw nsw i32 %xor519, 3, !dbg !230
  %add.ptr524.idx.3.7 = xor i32 %xor520.3.7, 24, !dbg !230
  %add.ptr524.3.7 = getelementptr inbounds i8, ptr addrspace(3) %543, i32 %add.ptr524.idx.3.7, !dbg !230
  %544 = lshr i64 %533, 16, !dbg !231
  %v_column.sroa.98.0.insert.shift1509 = and i64 %544, 281470681743360, !dbg !231
  %v_column.sroa.98.0.insert.insert1511 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2033, %v_column.sroa.98.0.insert.shift1509, !dbg !231
  %545 = lshr i64 %531, 32, !dbg !231
  %v_column.sroa.66.0.insert.shift1354 = and i64 %545, 4294901760, !dbg !231
  %v_column.sroa.66.0.insert.insert1356 = or disjoint i64 %v_column.sroa.98.0.insert.insert1511, %v_column.sroa.66.0.insert.shift1354, !dbg !231
  %v_column.sroa.0.0.insert.insert1201 = or disjoint i64 %v_column.sroa.66.0.insert.insert1356, %v_fetch.sroa.0.6.extract.shift1802, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1201, ptr addrspace(3) %add.ptr524.3.7, align 8, !dbg !231
  fence syncscope("warp") release, !dbg !234
  tail call void @llvm.mxc.barrier.warp(), !dbg !237
  fence syncscope("warp") acquire, !dbg !238
  %add541.7 = or disjoint i32 %mul534, %mul540, !dbg !239
  %546 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.7, !dbg !240
  %add.ptr551.idx.7 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.7 = getelementptr inbounds i8, ptr addrspace(3) %546, i32 %add.ptr551.idx.7, !dbg !240
  %547 = load <4 x half>, ptr addrspace(3) %add.ptr551.7, align 8, !dbg !241
  %add536.1.7 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.1.7 = or disjoint i32 %add536.1.7, 64, !dbg !239
  %548 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.1.7, !dbg !240
  %xor547.1.7 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.1.7 = xor i32 %xor547.1.7, 8, !dbg !240
  %add.ptr551.1.7 = getelementptr inbounds i8, ptr addrspace(3) %548, i32 %add.ptr551.idx.1.7, !dbg !240
  %549 = load <4 x half>, ptr addrspace(3) %add.ptr551.1.7, align 8, !dbg !241
  %add536.2.7 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.2.7 = or disjoint i32 %add536.2.7, 128, !dbg !239
  %550 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.2.7, !dbg !240
  %xor547.2.7 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.2.7 = xor i32 %xor547.2.7, 16, !dbg !240
  %add.ptr551.2.7 = getelementptr inbounds i8, ptr addrspace(3) %550, i32 %add.ptr551.idx.2.7, !dbg !240
  %551 = load <4 x half>, ptr addrspace(3) %add.ptr551.2.7, align 8, !dbg !241
  %add536.3.7 = or disjoint i32 %mul534, %mul540, !dbg !239
  %add541.3.7 = or disjoint i32 %add536.3.7, 192, !dbg !239
  %552 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.3.7, !dbg !240
  %xor547.3.7 = shl nuw nsw i32 %309, 3, !dbg !240
  %add.ptr551.idx.3.7 = xor i32 %xor547.3.7, 24, !dbg !240
  %add.ptr551.3.7 = getelementptr inbounds i8, ptr addrspace(3) %552, i32 %add.ptr551.idx.3.7, !dbg !240
  %553 = load <4 x half>, ptr addrspace(3) %add.ptr551.3.7, align 8, !dbg !241
  %554 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %547, <4 x half> %299, <4 x float> %numerator.sroa.0.6), !dbg !242
  %555 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %549, <4 x half> %299, <4 x float> %numerator.sroa.34.6), !dbg !242
  %556 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %551, <4 x half> %299, <4 x float> %numerator.sroa.66.6), !dbg !242
  %557 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %553, <4 x half> %299, <4 x float> %numerator.sroa.98.6), !dbg !242
  br label %if.end578.7, !dbg !243

if.end578.7:                                      ; preds = %if.then462.7, %if.end578.6
  %numerator.sroa.98.7 = phi <4 x float> [ %numerator.sroa.98.6, %if.end578.6 ], [ %557, %if.then462.7 ], !dbg !216
  %numerator.sroa.66.7 = phi <4 x float> [ %numerator.sroa.66.6, %if.end578.6 ], [ %556, %if.then462.7 ], !dbg !216
  %numerator.sroa.34.7 = phi <4 x float> [ %numerator.sroa.34.6, %if.end578.6 ], [ %555, %if.then462.7 ], !dbg !216
  %numerator.sroa.0.7 = phi <4 x float> [ %numerator.sroa.0.6, %if.end578.6 ], [ %554, %if.then462.7 ], !dbg !216
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.7, i64 0, !dbg !244
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.7, i64 1, !dbg !244
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.7, i64 2, !dbg !244
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.7, i64 3, !dbg !244
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %denominator.sroa.0.1, !dbg !245
  %div600 = fdiv contract float %numerator.sroa.0.4.vec.extract, %denominator.sroa.0.1, !dbg !246
  %div604 = fdiv contract float %numerator.sroa.0.8.vec.extract, %denominator.sroa.0.1, !dbg !247
  %div608 = fdiv contract float %numerator.sroa.0.12.vec.extract, %denominator.sroa.0.1, !dbg !248
  %numerator.sroa.34.16.vec.extract = extractelement <4 x float> %numerator.sroa.34.7, i64 0, !dbg !244
  %numerator.sroa.34.20.vec.extract = extractelement <4 x float> %numerator.sroa.34.7, i64 1, !dbg !244
  %numerator.sroa.34.24.vec.extract = extractelement <4 x float> %numerator.sroa.34.7, i64 2, !dbg !244
  %numerator.sroa.34.28.vec.extract = extractelement <4 x float> %numerator.sroa.34.7, i64 3, !dbg !244
  %div.1 = fdiv contract float %numerator.sroa.34.16.vec.extract, %denominator.sroa.0.1, !dbg !245
  %div600.1 = fdiv contract float %numerator.sroa.34.20.vec.extract, %denominator.sroa.0.1, !dbg !246
  %div604.1 = fdiv contract float %numerator.sroa.34.24.vec.extract, %denominator.sroa.0.1, !dbg !247
  %div608.1 = fdiv contract float %numerator.sroa.34.28.vec.extract, %denominator.sroa.0.1, !dbg !248
  %numerator.sroa.66.32.vec.extract = extractelement <4 x float> %numerator.sroa.66.7, i64 0, !dbg !244
  %numerator.sroa.66.36.vec.extract = extractelement <4 x float> %numerator.sroa.66.7, i64 1, !dbg !244
  %numerator.sroa.66.40.vec.extract = extractelement <4 x float> %numerator.sroa.66.7, i64 2, !dbg !244
  %numerator.sroa.66.44.vec.extract = extractelement <4 x float> %numerator.sroa.66.7, i64 3, !dbg !244
  %div.2 = fdiv contract float %numerator.sroa.66.32.vec.extract, %denominator.sroa.0.1, !dbg !245
  %div600.2 = fdiv contract float %numerator.sroa.66.36.vec.extract, %denominator.sroa.0.1, !dbg !246
  %div604.2 = fdiv contract float %numerator.sroa.66.40.vec.extract, %denominator.sroa.0.1, !dbg !247
  %div608.2 = fdiv contract float %numerator.sroa.66.44.vec.extract, %denominator.sroa.0.1, !dbg !248
  %numerator.sroa.98.48.vec.extract = extractelement <4 x float> %numerator.sroa.98.7, i64 0, !dbg !244
  %numerator.sroa.98.52.vec.extract = extractelement <4 x float> %numerator.sroa.98.7, i64 1, !dbg !244
  %numerator.sroa.98.56.vec.extract = extractelement <4 x float> %numerator.sroa.98.7, i64 2, !dbg !244
  %numerator.sroa.98.60.vec.extract = extractelement <4 x float> %numerator.sroa.98.7, i64 3, !dbg !244
  %div.3 = fdiv contract float %numerator.sroa.98.48.vec.extract, %denominator.sroa.0.1, !dbg !245
  %div600.3 = fdiv contract float %numerator.sroa.98.52.vec.extract, %denominator.sroa.0.1, !dbg !246
  %div604.3 = fdiv contract float %numerator.sroa.98.56.vec.extract, %denominator.sroa.0.1, !dbg !247
  %div608.3 = fdiv contract float %numerator.sroa.98.60.vec.extract, %denominator.sroa.0.1, !dbg !248
  fence syncscope("warp") release, !dbg !249
  tail call void @llvm.mxc.barrier.warp(), !dbg !252
  fence syncscope("warp") acquire, !dbg !253
  %xor657 = shl nuw nsw i32 %8, 2
  %mul658 = and i32 %xor657, 4
  %558 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !254, !noalias !258
  %559 = fptrunc float %div to half, !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %558), !dbg !254, !noalias !258
  %560 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !258
  %561 = fptrunc float %div600 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %560), !dbg !263, !noalias !258
  %562 = bitcast half %559 to i16, !dbg !265
  %563 = bitcast half %561 to i16, !dbg !268
  %564 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !273
  %565 = fptrunc float %div604 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %564), !dbg !269, !noalias !273
  %566 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !278, !noalias !273
  %567 = fptrunc float %div608 to half, !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %566), !dbg !278, !noalias !273
  %568 = bitcast half %565 to i16, !dbg !280
  %569 = bitcast half %567 to i16, !dbg !282
  %__7.sroa.6.0.insert.ext = zext i16 %569 to i64, !dbg !283
  %__7.sroa.6.0.insert.shift = shl nuw i64 %__7.sroa.6.0.insert.ext, 48, !dbg !283
  %__7.sroa.5.0.insert.ext = zext i16 %568 to i64, !dbg !283
  %__7.sroa.5.0.insert.shift = shl nuw nsw i64 %__7.sroa.5.0.insert.ext, 32, !dbg !283
  %__7.sroa.5.0.insert.insert = or disjoint i64 %__7.sroa.6.0.insert.shift, %__7.sroa.5.0.insert.shift, !dbg !283
  %__7.sroa.4.0.insert.ext = zext i16 %563 to i64, !dbg !283
  %__7.sroa.4.0.insert.shift = shl nuw nsw i64 %__7.sroa.4.0.insert.ext, 16, !dbg !283
  %__7.sroa.4.0.insert.insert = or disjoint i64 %__7.sroa.5.0.insert.insert, %__7.sroa.4.0.insert.shift, !dbg !283
  %__7.sroa.0.0.insert.ext = zext i16 %562 to i64, !dbg !283
  %__7.sroa.0.0.insert.insert = or disjoint i64 %__7.sroa.4.0.insert.insert, %__7.sroa.0.0.insert.ext, !dbg !283
  %add659 = or disjoint i32 %add58, %mul658, !dbg !284
  %add.ptr661 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add659, !dbg !285
  store i64 %__7.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr661, align 8, !dbg !286
  %570 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !254, !noalias !258
  %571 = fptrunc float %div.1 to half, !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %570), !dbg !254, !noalias !258
  %572 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !258
  %573 = fptrunc float %div600.1 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %572), !dbg !263, !noalias !258
  %574 = bitcast half %571 to i16, !dbg !265
  %575 = bitcast half %573 to i16, !dbg !268
  %576 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !273
  %577 = fptrunc float %div604.1 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %576), !dbg !269, !noalias !273
  %578 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !278, !noalias !273
  %579 = fptrunc float %div608.1 to half, !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %578), !dbg !278, !noalias !273
  %580 = bitcast half %577 to i16, !dbg !280
  %581 = bitcast half %579 to i16, !dbg !282
  %__7.sroa.6.0.insert.ext.1 = zext i16 %581 to i64, !dbg !283
  %__7.sroa.6.0.insert.shift.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.1, 48, !dbg !283
  %__7.sroa.5.0.insert.ext.1 = zext i16 %580 to i64, !dbg !283
  %__7.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1, 32, !dbg !283
  %__7.sroa.5.0.insert.insert.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.1, %__7.sroa.5.0.insert.shift.1, !dbg !283
  %__7.sroa.4.0.insert.ext.1 = zext i16 %575 to i64, !dbg !283
  %__7.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1, 16, !dbg !283
  %__7.sroa.4.0.insert.insert.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.1, %__7.sroa.4.0.insert.shift.1, !dbg !283
  %__7.sroa.0.0.insert.ext.1 = zext i16 %574 to i64, !dbg !283
  %__7.sroa.0.0.insert.insert.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.1, %__7.sroa.0.0.insert.ext.1, !dbg !283
  %add659.1 = or disjoint i32 %add58.1, %mul658, !dbg !284
  %add.ptr661.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add659.1, !dbg !285
  store i64 %__7.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr661.1, align 8, !dbg !286
  %582 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !254, !noalias !258
  %583 = fptrunc float %div.2 to half, !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %582), !dbg !254, !noalias !258
  %584 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !258
  %585 = fptrunc float %div600.2 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %584), !dbg !263, !noalias !258
  %586 = bitcast half %583 to i16, !dbg !265
  %587 = bitcast half %585 to i16, !dbg !268
  %588 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !273
  %589 = fptrunc float %div604.2 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %588), !dbg !269, !noalias !273
  %590 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !278, !noalias !273
  %591 = fptrunc float %div608.2 to half, !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %590), !dbg !278, !noalias !273
  %592 = bitcast half %589 to i16, !dbg !280
  %593 = bitcast half %591 to i16, !dbg !282
  %__7.sroa.6.0.insert.ext.2 = zext i16 %593 to i64, !dbg !283
  %__7.sroa.6.0.insert.shift.2 = shl nuw i64 %__7.sroa.6.0.insert.ext.2, 48, !dbg !283
  %__7.sroa.5.0.insert.ext.2 = zext i16 %592 to i64, !dbg !283
  %__7.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.2, 32, !dbg !283
  %__7.sroa.5.0.insert.insert.2 = or disjoint i64 %__7.sroa.6.0.insert.shift.2, %__7.sroa.5.0.insert.shift.2, !dbg !283
  %__7.sroa.4.0.insert.ext.2 = zext i16 %587 to i64, !dbg !283
  %__7.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.2, 16, !dbg !283
  %__7.sroa.4.0.insert.insert.2 = or disjoint i64 %__7.sroa.5.0.insert.insert.2, %__7.sroa.4.0.insert.shift.2, !dbg !283
  %__7.sroa.0.0.insert.ext.2 = zext i16 %586 to i64, !dbg !283
  %__7.sroa.0.0.insert.insert.2 = or disjoint i64 %__7.sroa.4.0.insert.insert.2, %__7.sroa.0.0.insert.ext.2, !dbg !283
  %add659.2 = or disjoint i32 %add58.2, %mul658, !dbg !284
  %add.ptr661.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add659.2, !dbg !285
  store i64 %__7.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr661.2, align 8, !dbg !286
  %594 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !254, !noalias !258
  %595 = fptrunc float %div.3 to half, !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %594), !dbg !254, !noalias !258
  %596 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !258
  %597 = fptrunc float %div600.3 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %596), !dbg !263, !noalias !258
  %598 = bitcast half %595 to i16, !dbg !265
  %599 = bitcast half %597 to i16, !dbg !268
  %600 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !273
  %601 = fptrunc float %div604.3 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %600), !dbg !269, !noalias !273
  %602 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !278, !noalias !273
  %603 = fptrunc float %div608.3 to half, !dbg !278
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %602), !dbg !278, !noalias !273
  %604 = bitcast half %601 to i16, !dbg !280
  %605 = bitcast half %603 to i16, !dbg !282
  %__7.sroa.6.0.insert.ext.3 = zext i16 %605 to i64, !dbg !283
  %__7.sroa.6.0.insert.shift.3 = shl nuw i64 %__7.sroa.6.0.insert.ext.3, 48, !dbg !283
  %__7.sroa.5.0.insert.ext.3 = zext i16 %604 to i64, !dbg !283
  %__7.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.3, 32, !dbg !283
  %__7.sroa.5.0.insert.insert.3 = or disjoint i64 %__7.sroa.6.0.insert.shift.3, %__7.sroa.5.0.insert.shift.3, !dbg !283
  %__7.sroa.4.0.insert.ext.3 = zext i16 %599 to i64, !dbg !283
  %__7.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.3, 16, !dbg !283
  %__7.sroa.4.0.insert.insert.3 = or disjoint i64 %__7.sroa.5.0.insert.insert.3, %__7.sroa.4.0.insert.shift.3, !dbg !283
  %__7.sroa.0.0.insert.ext.3 = zext i16 %598 to i64, !dbg !283
  %__7.sroa.0.0.insert.insert.3 = or disjoint i64 %__7.sroa.4.0.insert.insert.3, %__7.sroa.0.0.insert.ext.3, !dbg !283
  %add659.3 = or disjoint i32 %add58.3, %mul658, !dbg !284
  %add.ptr661.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add659.3, !dbg !285
  store i64 %__7.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr661.3, align 8, !dbg !286
  fence syncscope("warp") release, !dbg !287
  tail call void @llvm.mxc.barrier.warp(), !dbg !290
  fence syncscope("warp") acquire, !dbg !291
  %606 = load i64, ptr addrspace(3) %5, align 16, !dbg !292
  %add.ptr689.1 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 8, !dbg !293
  %607 = load i64, ptr addrspace(3) %add.ptr689.1, align 8, !dbg !292
  %add.ptr710 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !294
  store i64 %606, ptr addrspace(1) %add.ptr710, align 16, !dbg !295
  %output_fetch.sroa.6.0.add.ptr710.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr710, i64 8, !dbg !295
  store i64 %607, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr710.sroa_idx, align 8, !dbg !295
  %add.ptr689.11075 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 1032, !dbg !293
  %608 = load i64, ptr addrspace(3) %add.ptr689.11075, align 8, !dbg !292
  %609 = load i64, ptr addrspace(3) %7, align 16, !dbg !292
  %add.ptr710.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %6, !dbg !294
  store i64 %608, ptr addrspace(1) %add.ptr710.1, align 16, !dbg !295
  %output_fetch.sroa.6.0.add.ptr710.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr710.1, i64 8, !dbg !295
  store i64 %609, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr710.1.sroa_idx, align 8, !dbg !295
  ret void, !dbg !296
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v136_worker1_c12_max4x8_balanced_sc-16g-2/codegen/candidate136/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v136_worker1_c12_max4x8_balanced_sc-16g-2/codegen/candidate136/case12.device.cpp", directory: "/root/tilelang-metax")
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
!64 = !DILocation(line: 53, column: 3, scope: !40)
!65 = !DILocation(line: 54, column: 21, scope: !40)
!66 = !DILocation(line: 55, column: 27, scope: !40)
!67 = !DILocation(line: 98, column: 62, scope: !40)
!68 = !DILocation(line: 351, column: 10, scope: !69, inlinedAt: !71)
!69 = distinct !DISubprogram(name: "max", scope: !70, file: !70, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!70 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!71 = distinct !DILocation(line: 98, column: 34, scope: !40)
!72 = !DILocation(line: 351, column: 10, scope: !69, inlinedAt: !73)
!73 = distinct !DILocation(line: 101, column: 22, scope: !40)
!74 = !DILocation(line: 351, column: 10, scope: !69, inlinedAt: !75)
!75 = distinct !DILocation(line: 101, column: 67, scope: !40)
!76 = !DILocation(line: 351, column: 10, scope: !69, inlinedAt: !77)
!77 = distinct !DILocation(line: 101, column: 18, scope: !40)
!78 = !DILocation(line: 1018, column: 9, scope: !79, inlinedAt: !80)
!79 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!80 = distinct !DILocation(line: 102, column: 34, scope: !40)
!81 = !DILocation(line: 171, column: 37, scope: !82, inlinedAt: !83)
!82 = distinct !DISubprogram(name: "__lane_id", scope: !51, file: !51, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!83 = distinct !DILocation(line: 990, column: 14, scope: !84, inlinedAt: !85)
!84 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!85 = distinct !DILocation(line: 1019, column: 11, scope: !79, inlinedAt: !80)
!86 = !DILocation(line: 171, column: 10, scope: !82, inlinedAt: !83)
!87 = !DILocation(line: 991, column: 20, scope: !84, inlinedAt: !85)
!88 = !DILocation(line: 992, column: 36, scope: !84, inlinedAt: !85)
!89 = !DILocation(line: 992, column: 17, scope: !84, inlinedAt: !85)
!90 = !DILocation(line: 992, column: 11, scope: !84, inlinedAt: !85)
!91 = !DILocation(line: 993, column: 43, scope: !84, inlinedAt: !85)
!92 = !DILocation(line: 993, column: 10, scope: !84, inlinedAt: !85)
!93 = !DILocation(line: 1020, column: 14, scope: !79, inlinedAt: !80)
!94 = !DILocation(line: 351, column: 10, scope: !69, inlinedAt: !95)
!95 = distinct !DILocation(line: 102, column: 18, scope: !40)
!96 = !DILocation(line: 1018, column: 9, scope: !79, inlinedAt: !97)
!97 = distinct !DILocation(line: 103, column: 34, scope: !40)
!98 = !DILocation(line: 171, column: 37, scope: !82, inlinedAt: !99)
!99 = distinct !DILocation(line: 990, column: 14, scope: !84, inlinedAt: !100)
!100 = distinct !DILocation(line: 1019, column: 11, scope: !79, inlinedAt: !97)
!101 = !DILocation(line: 171, column: 10, scope: !82, inlinedAt: !99)
!102 = !DILocation(line: 991, column: 20, scope: !84, inlinedAt: !100)
!103 = !DILocation(line: 992, column: 36, scope: !84, inlinedAt: !100)
!104 = !DILocation(line: 992, column: 17, scope: !84, inlinedAt: !100)
!105 = !DILocation(line: 992, column: 11, scope: !84, inlinedAt: !100)
!106 = !DILocation(line: 993, column: 43, scope: !84, inlinedAt: !100)
!107 = !DILocation(line: 993, column: 10, scope: !84, inlinedAt: !100)
!108 = !DILocation(line: 1020, column: 14, scope: !79, inlinedAt: !97)
!109 = !DILocation(line: 351, column: 10, scope: !69, inlinedAt: !110)
!110 = distinct !DILocation(line: 103, column: 18, scope: !40)
!111 = !DILocation(line: 113, column: 25, scope: !40)
!112 = !DILocation(line: 115, column: 26, scope: !40)
!113 = !DILocation(line: 116, column: 26, scope: !40)
!114 = !DILocation(line: 117, column: 26, scope: !40)
!115 = !DILocation(line: 118, column: 26, scope: !40)
!116 = !DILocation(line: 120, column: 25, scope: !40)
!117 = !DILocation(line: 121, column: 25, scope: !40)
!118 = !DILocation(line: 122, column: 25, scope: !40)
!119 = !DILocation(line: 123, column: 25, scope: !40)
!120 = !DILocation(line: 125, column: 23, scope: !40)
!121 = !DILocation(line: 126, column: 23, scope: !40)
!122 = !DILocation(line: 127, column: 23, scope: !40)
!123 = !DILocation(line: 128, column: 23, scope: !40)
!124 = !DILocation(line: 285, column: 49, scope: !125, inlinedAt: !126)
!125 = distinct !DISubprogram(name: "exp2f", scope: !70, file: !70, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!126 = distinct !DILocation(line: 129, column: 15, scope: !40)
!127 = !DILocation(line: 285, column: 49, scope: !125, inlinedAt: !128)
!128 = distinct !DILocation(line: 130, column: 15, scope: !40)
!129 = !DILocation(line: 285, column: 49, scope: !125, inlinedAt: !130)
!130 = distinct !DILocation(line: 131, column: 15, scope: !40)
!131 = !DILocation(line: 285, column: 49, scope: !125, inlinedAt: !132)
!132 = distinct !DILocation(line: 132, column: 15, scope: !40)
!133 = !DILocation(line: 1007, column: 10, scope: !134, inlinedAt: !136)
!134 = distinct !DISubprogram(name: "__float2half_rn", scope: !135, file: !135, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!135 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!136 = distinct !DILocation(line: 1077, column: 18, scope: !137, inlinedAt: !138)
!137 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !135, file: !135, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!138 = distinct !DILocation(line: 1295, column: 23, scope: !139, inlinedAt: !140)
!139 = distinct !DISubprogram(name: "__float22half2_rn", scope: !135, file: !135, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!140 = distinct !DILocation(line: 133, column: 29, scope: !40)
!141 = !{!142, !144}
!142 = distinct !{!142, !143, !"_ZL17__floats2half2_rnff: %agg.result"}
!143 = distinct !{!143, !"_ZL17__floats2half2_rnff"}
!144 = distinct !{!144, !145, !"_ZL17__float22half2_rn6float2: %agg.result"}
!145 = distinct !{!145, !"_ZL17__float22half2_rn6float2"}
!146 = !DILocation(line: 1007, column: 10, scope: !134, inlinedAt: !147)
!147 = distinct !DILocation(line: 1077, column: 38, scope: !137, inlinedAt: !138)
!148 = !DILocation(line: 1007, column: 10, scope: !134, inlinedAt: !149)
!149 = distinct !DILocation(line: 1077, column: 18, scope: !137, inlinedAt: !150)
!150 = distinct !DILocation(line: 1295, column: 23, scope: !139, inlinedAt: !151)
!151 = distinct !DILocation(line: 134, column: 29, scope: !40)
!152 = !{!153, !155}
!153 = distinct !{!153, !154, !"_ZL17__floats2half2_rnff: %agg.result"}
!154 = distinct !{!154, !"_ZL17__floats2half2_rnff"}
!155 = distinct !{!155, !156, !"_ZL17__float22half2_rn6float2: %agg.result"}
!156 = distinct !{!156, !"_ZL17__float22half2_rn6float2"}
!157 = !DILocation(line: 1007, column: 10, scope: !134, inlinedAt: !158)
!158 = distinct !DILocation(line: 1077, column: 38, scope: !137, inlinedAt: !150)
!159 = !DILocation(line: 135, column: 51, scope: !40)
!160 = !DILocation(line: 1082, column: 16, scope: !161, inlinedAt: !162)
!161 = distinct !DISubprogram(name: "__half2float", scope: !135, file: !135, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!162 = distinct !DILocation(line: 136, column: 55, scope: !163, inlinedAt: !164)
!163 = distinct !DISubprogram(name: "operator float", scope: !135, file: !135, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!164 = distinct !DILocation(line: 139, column: 50, scope: !40)
!165 = !DILocation(line: 139, column: 40, scope: !40)
!166 = !DILocation(line: 1018, column: 9, scope: !79, inlinedAt: !167)
!167 = distinct !DILocation(line: 141, column: 40, scope: !40)
!168 = !DILocation(line: 171, column: 37, scope: !82, inlinedAt: !169)
!169 = distinct !DILocation(line: 990, column: 14, scope: !84, inlinedAt: !170)
!170 = distinct !DILocation(line: 1019, column: 11, scope: !79, inlinedAt: !167)
!171 = !DILocation(line: 171, column: 10, scope: !82, inlinedAt: !169)
!172 = !DILocation(line: 991, column: 20, scope: !84, inlinedAt: !170)
!173 = !DILocation(line: 992, column: 36, scope: !84, inlinedAt: !170)
!174 = !DILocation(line: 992, column: 17, scope: !84, inlinedAt: !170)
!175 = !DILocation(line: 992, column: 11, scope: !84, inlinedAt: !170)
!176 = !DILocation(line: 993, column: 43, scope: !84, inlinedAt: !170)
!177 = !DILocation(line: 993, column: 10, scope: !84, inlinedAt: !170)
!178 = !DILocation(line: 1020, column: 14, scope: !79, inlinedAt: !167)
!179 = !DILocation(line: 141, column: 38, scope: !40)
!180 = !DILocation(line: 1018, column: 9, scope: !79, inlinedAt: !181)
!181 = distinct !DILocation(line: 142, column: 40, scope: !40)
!182 = !DILocation(line: 171, column: 37, scope: !82, inlinedAt: !183)
!183 = distinct !DILocation(line: 990, column: 14, scope: !84, inlinedAt: !184)
!184 = distinct !DILocation(line: 1019, column: 11, scope: !79, inlinedAt: !181)
!185 = !DILocation(line: 171, column: 10, scope: !82, inlinedAt: !183)
!186 = !DILocation(line: 991, column: 20, scope: !84, inlinedAt: !184)
!187 = !DILocation(line: 992, column: 36, scope: !84, inlinedAt: !184)
!188 = !DILocation(line: 992, column: 17, scope: !84, inlinedAt: !184)
!189 = !DILocation(line: 992, column: 11, scope: !84, inlinedAt: !184)
!190 = !DILocation(line: 993, column: 43, scope: !84, inlinedAt: !184)
!191 = !DILocation(line: 993, column: 10, scope: !84, inlinedAt: !184)
!192 = !DILocation(line: 1020, column: 14, scope: !79, inlinedAt: !181)
!193 = !DILocation(line: 142, column: 38, scope: !40)
!194 = !DILocation(line: 143, column: 3, scope: !40)
!195 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !196)
!196 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !197)
!197 = distinct !DILocation(line: 57, column: 7, scope: !40)
!198 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !196)
!199 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !196)
!200 = !DILocation(line: 59, column: 7, scope: !40)
!201 = !DILocation(line: 60, column: 47, scope: !40)
!202 = !DILocation(line: 60, column: 33, scope: !40)
!203 = !DILocation(line: 63, column: 213, scope: !40)
!204 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !205)
!205 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !206)
!206 = distinct !DILocation(line: 66, column: 7, scope: !40)
!207 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !205)
!208 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !205)
!209 = !DILocation(line: 73, column: 32, scope: !40)
!210 = !DILocation(line: 75, column: 44, scope: !40)
!211 = !DILocation(line: 83, column: 81, scope: !40)
!212 = !DILocation(line: 83, column: 13, scope: !40)
!213 = !DILocation(line: 88, column: 46, scope: !40)
!214 = !DILocation(line: 83, column: 68, scope: !40)
!215 = !DILocation(line: 53, column: 40, scope: !40)
!216 = !DILocation(line: 0, scope: !40)
!217 = !DILocation(line: 54, column: 85, scope: !40)
!218 = !DILocation(line: 92, column: 7, scope: !40)
!219 = !DILocation(line: 151, column: 23, scope: !40)
!220 = !DILocation(line: 152, column: 29, scope: !40)
!221 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !222)
!222 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !223)
!223 = distinct !DILocation(line: 153, column: 7, scope: !40)
!224 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !222)
!225 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !222)
!226 = !DILocation(line: 155, column: 7, scope: !40)
!227 = !DILocation(line: 156, column: 54, scope: !40)
!228 = !DILocation(line: 156, column: 40, scope: !40)
!229 = !DILocation(line: 156, column: 163, scope: !40)
!230 = !DILocation(line: 163, column: 26, scope: !40)
!231 = !DILocation(line: 163, column: 159, scope: !40)
!232 = !DILocation(line: 161, column: 27, scope: !40)
!233 = !DILocation(line: 163, column: 42, scope: !40)
!234 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !235)
!235 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !236)
!236 = distinct !DILocation(line: 165, column: 7, scope: !40)
!237 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !235)
!238 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !235)
!239 = !DILocation(line: 168, column: 121, scope: !40)
!240 = !DILocation(line: 168, column: 65, scope: !40)
!241 = !DILocation(line: 168, column: 46, scope: !40)
!242 = !DILocation(line: 173, column: 46, scope: !40)
!243 = !DILocation(line: 150, column: 44, scope: !40)
!244 = !DILocation(line: 183, column: 21, scope: !40)
!245 = !DILocation(line: 185, column: 22, scope: !40)
!246 = !DILocation(line: 186, column: 22, scope: !40)
!247 = !DILocation(line: 187, column: 22, scope: !40)
!248 = !DILocation(line: 188, column: 22, scope: !40)
!249 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !250)
!250 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !251)
!251 = distinct !DILocation(line: 191, column: 3, scope: !40)
!252 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !250)
!253 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !250)
!254 = !DILocation(line: 1007, column: 10, scope: !134, inlinedAt: !255)
!255 = distinct !DILocation(line: 1077, column: 18, scope: !137, inlinedAt: !256)
!256 = distinct !DILocation(line: 1295, column: 23, scope: !139, inlinedAt: !257)
!257 = distinct !DILocation(line: 196, column: 27, scope: !40)
!258 = !{!259, !261}
!259 = distinct !{!259, !260, !"_ZL17__floats2half2_rnff: %agg.result"}
!260 = distinct !{!260, !"_ZL17__floats2half2_rnff"}
!261 = distinct !{!261, !262, !"_ZL17__float22half2_rn6float2: %agg.result"}
!262 = distinct !{!262, !"_ZL17__float22half2_rn6float2"}
!263 = !DILocation(line: 1007, column: 10, scope: !134, inlinedAt: !264)
!264 = distinct !DILocation(line: 1077, column: 38, scope: !137, inlinedAt: !256)
!265 = !DILocation(line: 596, column: 67, scope: !266, inlinedAt: !267)
!266 = distinct !DISubprogram(name: "__half2", scope: !135, file: !135, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!267 = distinct !DILocation(line: 1077, column: 10, scope: !137, inlinedAt: !256)
!268 = !DILocation(line: 596, column: 73, scope: !266, inlinedAt: !267)
!269 = !DILocation(line: 1007, column: 10, scope: !134, inlinedAt: !270)
!270 = distinct !DILocation(line: 1077, column: 18, scope: !137, inlinedAt: !271)
!271 = distinct !DILocation(line: 1295, column: 23, scope: !139, inlinedAt: !272)
!272 = distinct !DILocation(line: 197, column: 27, scope: !40)
!273 = !{!274, !276}
!274 = distinct !{!274, !275, !"_ZL17__floats2half2_rnff: %agg.result"}
!275 = distinct !{!275, !"_ZL17__floats2half2_rnff"}
!276 = distinct !{!276, !277, !"_ZL17__float22half2_rn6float2: %agg.result"}
!277 = distinct !{!277, !"_ZL17__float22half2_rn6float2"}
!278 = !DILocation(line: 1007, column: 10, scope: !134, inlinedAt: !279)
!279 = distinct !DILocation(line: 1077, column: 38, scope: !137, inlinedAt: !271)
!280 = !DILocation(line: 596, column: 67, scope: !266, inlinedAt: !281)
!281 = distinct !DILocation(line: 1077, column: 10, scope: !137, inlinedAt: !271)
!282 = !DILocation(line: 596, column: 73, scope: !266, inlinedAt: !281)
!283 = !DILocation(line: 198, column: 38, scope: !40)
!284 = !DILocation(line: 199, column: 141, scope: !40)
!285 = !DILocation(line: 199, column: 22, scope: !40)
!286 = !DILocation(line: 199, column: 221, scope: !40)
!287 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !288)
!288 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !289)
!289 = distinct !DILocation(line: 201, column: 3, scope: !40)
!290 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !288)
!291 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !288)
!292 = !DILocation(line: 206, column: 46, scope: !40)
!293 = !DILocation(line: 206, column: 65, scope: !40)
!294 = !DILocation(line: 208, column: 22, scope: !40)
!295 = !DILocation(line: 208, column: 134, scope: !40)
!296 = !DILocation(line: 210, column: 1, scope: !40)
