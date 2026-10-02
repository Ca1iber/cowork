; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v113_worker1_s4_global_softmax_sc-16g-2/codegen/power_v113/case11.device.cpp'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v113_worker1_s4_global_softmax_sc-16g-2/codegen/power_v113/case11.device.cpp"
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
  %mul = shl nsw i32 %0, 19
  %1 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !range !29
  %mul7 = shl nsw i32 %1, 10
  %add = add nuw nsw i32 %mul, %mul7
  %2 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !42
  %mul11 = shl nuw nsw i32 %2, 3
  %add9 = add nuw nsw i32 %add, %mul11
  %mul24 = and i32 %mul11, 8128
  %xor827 = and i32 %mul11, 56
  %call27.masked = and i32 %2, 1016
  %mul29 = xor i32 %xor827, %call27.masked
  %and33 = lshr i32 %2, 3
  %shr34 = and i32 %and33, 1
  %3 = zext nneg i32 %add9 to i64, !dbg !43
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %3, !dbg !44
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %add.ptr, align 16, !dbg !45
  %qk_fetch.sroa.22.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !45
  %qk_fetch.sroa.22.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.add.ptr.sroa_idx, align 8, !dbg !45
  %4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul29, !dbg !46
  %5 = getelementptr inbounds %struct.__half, ptr addrspace(3) %4, i32 %mul24, !dbg !46
  %add.ptr39.idx = shl nuw nsw i32 %shr34, 3, !dbg !46
  %add.ptr39 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr39, align 8, !dbg !47
  %xor35.1 = shl nuw nsw i32 %shr34, 3, !dbg !46
  %add.ptr39.idx.1 = xor i32 %xor35.1, 8, !dbg !46
  %add.ptr39.1 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.22.0.copyload, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !47
  %6 = add nuw nsw i64 %3, 512, !dbg !48
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %6, !dbg !44
  %qk_fetch.sroa.0.0.copyload1633 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %qk_fetch.sroa.22.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %qk_fetch.sroa.22.0.copyload1642 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.add.ptr.1.sroa_idx, align 8, !dbg !45
  %7 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 1024, !dbg !46
  %add.ptr39.1927 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1633, ptr addrspace(3) %add.ptr39.1927, align 8, !dbg !47
  %add.ptr39.1.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.22.0.copyload1642, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !47
  fence syncscope("warp") release, !dbg !49
  tail call void @llvm.mxc.barrier.warp(), !dbg !55
  fence syncscope("warp") acquire, !dbg !56
  %and48 = shl nuw nsw i32 %2, 6
  %mul49 = and i32 %and48, 960
  %shr52 = lshr i32 %2, 5
  %and55 = and i32 %2, 7
  %and60 = lshr i32 %2, 4
  %8 = xor i32 %and33, %and60
  %xor65826 = xor i32 %8, %2
  %xor68 = shl nuw nsw i32 %xor65826, 2
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
  %mul120 = shl nsw i32 %0, 11
  %mul122 = shl nsw i32 %1, 2
  %add123 = add nuw nsw i32 %mul120, %mul122
  %shr130 = lshr i32 %1, 4
  %invariant.umin = tail call i32 @llvm.umin.i32(i32 %shr130, i32 31), !dbg !64
  %mul138 = shl nsw i32 %0, 15
  %add140 = or disjoint i32 %mul11, %mul138
  %13 = lshr i32 %2, 2
  %mul249 = and i32 %13, 252
  %14 = zext nneg i32 %add123 to i64, !dbg !64
  %arrayidx125 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %14, !dbg !65
  %15 = load i32, ptr addrspace(1) %arrayidx125, align 4, !dbg !65, !tbaa !30
  %or.cond886 = icmp ugt i32 %15, %invariant.umin, !dbg !66
  br i1 %or.cond886, label %if.end268, label %if.then, !dbg !66

for.body280.preheader:                            ; preds = %if.end268.3
  %scores.sroa.0.0.vec.extract = extractelement <4 x float> %scores.sroa.0.0, i64 0, !dbg !67
  %16 = tail call contract noundef float @llvm.maxnum.f32(float %scores.sroa.0.0.vec.extract, float 0xFFF0000000000000), !dbg !68
  %scores.sroa.0.4.vec.extract = extractelement <4 x float> %scores.sroa.0.0, i64 1, !dbg !67
  %17 = tail call contract noundef float @llvm.maxnum.f32(float %16, float %scores.sroa.0.4.vec.extract), !dbg !68
  %scores.sroa.0.8.vec.extract = extractelement <4 x float> %scores.sroa.0.0, i64 2, !dbg !67
  %18 = tail call contract noundef float @llvm.maxnum.f32(float %17, float %scores.sroa.0.8.vec.extract), !dbg !68
  %scores.sroa.0.12.vec.extract = extractelement <4 x float> %scores.sroa.0.0, i64 3, !dbg !67
  %19 = tail call contract noundef float @llvm.maxnum.f32(float %18, float %scores.sroa.0.12.vec.extract), !dbg !68
  %scores.sroa.19.16.vec.extract = extractelement <4 x float> %scores.sroa.19.0, i64 0, !dbg !67
  %20 = tail call contract noundef float @llvm.maxnum.f32(float %19, float %scores.sroa.19.16.vec.extract), !dbg !68
  %scores.sroa.19.20.vec.extract1717 = extractelement <4 x float> %scores.sroa.19.0, i64 1, !dbg !67
  %21 = tail call contract noundef float @llvm.maxnum.f32(float %20, float %scores.sroa.19.20.vec.extract1717), !dbg !68
  %scores.sroa.19.24.vec.extract1724 = extractelement <4 x float> %scores.sroa.19.0, i64 2, !dbg !67
  %22 = tail call contract noundef float @llvm.maxnum.f32(float %21, float %scores.sroa.19.24.vec.extract1724), !dbg !68
  %scores.sroa.19.28.vec.extract1731 = extractelement <4 x float> %scores.sroa.19.0, i64 3, !dbg !67
  %23 = tail call contract noundef float @llvm.maxnum.f32(float %22, float %scores.sroa.19.28.vec.extract1731), !dbg !68
  %scores.sroa.40.32.vec.extract = extractelement <4 x float> %scores.sroa.40.0, i64 0, !dbg !67
  %24 = tail call contract noundef float @llvm.maxnum.f32(float %23, float %scores.sroa.40.32.vec.extract), !dbg !68
  %scores.sroa.40.36.vec.extract1746 = extractelement <4 x float> %scores.sroa.40.0, i64 1, !dbg !67
  %25 = tail call contract noundef float @llvm.maxnum.f32(float %24, float %scores.sroa.40.36.vec.extract1746), !dbg !68
  %scores.sroa.40.40.vec.extract1753 = extractelement <4 x float> %scores.sroa.40.0, i64 2, !dbg !67
  %26 = tail call contract noundef float @llvm.maxnum.f32(float %25, float %scores.sroa.40.40.vec.extract1753), !dbg !68
  %scores.sroa.40.44.vec.extract1760 = extractelement <4 x float> %scores.sroa.40.0, i64 3, !dbg !67
  %27 = tail call contract noundef float @llvm.maxnum.f32(float %26, float %scores.sroa.40.44.vec.extract1760), !dbg !68
  %scores.sroa.61.48.vec.extract = extractelement <4 x float> %scores.sroa.61.0, i64 0, !dbg !67
  %28 = tail call contract noundef float @llvm.maxnum.f32(float %27, float %scores.sroa.61.48.vec.extract), !dbg !68
  %scores.sroa.61.52.vec.extract1775 = extractelement <4 x float> %scores.sroa.61.0, i64 1, !dbg !67
  %29 = tail call contract noundef float @llvm.maxnum.f32(float %28, float %scores.sroa.61.52.vec.extract1775), !dbg !68
  %scores.sroa.61.56.vec.extract1782 = extractelement <4 x float> %scores.sroa.61.0, i64 2, !dbg !67
  %30 = tail call contract noundef float @llvm.maxnum.f32(float %29, float %scores.sroa.61.56.vec.extract1782), !dbg !68
  %scores.sroa.61.60.vec.extract1789 = extractelement <4 x float> %scores.sroa.61.0, i64 3, !dbg !67
  %31 = tail call contract noundef float @llvm.maxnum.f32(float %30, float %scores.sroa.61.60.vec.extract1789), !dbg !68
  %32 = bitcast float %31 to i32, !dbg !72
  %33 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !75
  %34 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %33) #11, !dbg !80
  %xor.i.i = xor i32 %34, 32, !dbg !81
  %35 = and i32 %34, -64, !dbg !82
  %and.i.i = add nsw i32 %35, 64, !dbg !82
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !83
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %34, !dbg !84
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !85
  %36 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %32), !dbg !86
  %37 = bitcast i32 %36 to float, !dbg !87
  %38 = tail call contract noundef float @llvm.maxnum.f32(float %31, float %37), !dbg !88
  %39 = bitcast float %38 to i32, !dbg !90
  %40 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !92
  %41 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %40) #11, !dbg !95
  %xor.i.i835 = xor i32 %41, 16, !dbg !96
  %42 = and i32 %41, -64, !dbg !97
  %and.i.i836 = add nsw i32 %42, 64, !dbg !97
  %cmp.not.i.i837 = icmp slt i32 %xor.i.i835, %and.i.i836, !dbg !98
  %cond.i.i838 = select i1 %cmp.not.i.i837, i32 %xor.i.i835, i32 %41, !dbg !99
  %shl.i.i839 = shl i32 %cond.i.i838, 2, !dbg !100
  %43 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i839, i32 %39), !dbg !101
  %44 = bitcast i32 %43 to float, !dbg !102
  %45 = tail call contract noundef float @llvm.maxnum.f32(float %38, float %44), !dbg !103
  %sub = fsub contract float %scores.sroa.0.0.vec.extract, %45, !dbg !105
  %sub315 = fsub contract float %scores.sroa.0.4.vec.extract, %45, !dbg !106
  %sub318 = fsub contract float %scores.sroa.0.8.vec.extract, %45, !dbg !107
  %sub321 = fsub contract float %scores.sroa.0.12.vec.extract, %45, !dbg !108
  %mul326 = fmul contract float %sub, 0x3FC7154760000000, !dbg !109
  %mul330 = fmul contract float %sub315, 0x3FC7154760000000, !dbg !110
  %mul334 = fmul contract float %sub318, 0x3FC7154760000000, !dbg !111
  %mul338 = fmul contract float %sub321, 0x3FC7154760000000, !dbg !112
  %add343 = fadd contract float %mul326, 8.000000e+00, !dbg !113
  %add347 = fadd contract float %mul330, 8.000000e+00, !dbg !114
  %add351 = fadd contract float %mul334, 8.000000e+00, !dbg !115
  %add355 = fadd contract float %mul338, 8.000000e+00, !dbg !116
  %cmp.i.i = fcmp contract olt float %add343, -1.260000e+02, !dbg !117
  %cond.i.i844 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !117
  %add.i.i = fadd contract float %add343, %cond.i.i844, !dbg !117
  %46 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !117
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !117
  %mul.i.i = fmul contract float %cond2.i.i, %46, !dbg !117
  %cmp.i.i845 = fcmp contract olt float %add347, -1.260000e+02, !dbg !120
  %cond.i.i846 = select contract i1 %cmp.i.i845, float 6.400000e+01, float 0.000000e+00, !dbg !120
  %add.i.i847 = fadd contract float %add347, %cond.i.i846, !dbg !120
  %47 = tail call contract float @llvm.exp2.f32(float %add.i.i847), !dbg !120
  %cond2.i.i848 = select contract i1 %cmp.i.i845, float 0x3BF0000000000000, float 1.000000e+00, !dbg !120
  %mul.i.i849 = fmul contract float %cond2.i.i848, %47, !dbg !120
  %cmp.i.i850 = fcmp contract olt float %add351, -1.260000e+02, !dbg !122
  %cond.i.i851 = select contract i1 %cmp.i.i850, float 6.400000e+01, float 0.000000e+00, !dbg !122
  %add.i.i852 = fadd contract float %add351, %cond.i.i851, !dbg !122
  %48 = tail call contract float @llvm.exp2.f32(float %add.i.i852), !dbg !122
  %cond2.i.i853 = select contract i1 %cmp.i.i850, float 0x3BF0000000000000, float 1.000000e+00, !dbg !122
  %mul.i.i854 = fmul contract float %cond2.i.i853, %48, !dbg !122
  %cmp.i.i855 = fcmp contract olt float %add355, -1.260000e+02, !dbg !124
  %cond.i.i856 = select contract i1 %cmp.i.i855, float 6.400000e+01, float 0.000000e+00, !dbg !124
  %add.i.i857 = fadd contract float %add355, %cond.i.i856, !dbg !124
  %49 = tail call contract float @llvm.exp2.f32(float %add.i.i857), !dbg !124
  %cond2.i.i858 = select contract i1 %cmp.i.i855, float 0x3BF0000000000000, float 1.000000e+00, !dbg !124
  %mul.i.i859 = fmul contract float %cond2.i.i858, %49, !dbg !124
  %50 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !126
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !126, !noalias !134
  %51 = fptrunc float %mul.i.i to half, !dbg !126
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %50), !dbg !126, !noalias !134
  %52 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !139
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !139, !noalias !134
  %53 = fptrunc float %mul.i.i849 to half, !dbg !139
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %52), !dbg !139, !noalias !134
  %54 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !141
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !141, !noalias !145
  %55 = fptrunc float %mul.i.i854 to half, !dbg !141
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %54), !dbg !141, !noalias !145
  %56 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !150
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !150, !noalias !145
  %57 = fptrunc float %mul.i.i859 to half, !dbg !150
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %56), !dbg !150, !noalias !145
  %58 = insertelement <4 x half> poison, half %51, i64 0, !dbg !152
  %59 = insertelement <4 x half> %58, half %53, i64 1, !dbg !152
  %60 = insertelement <4 x half> %59, half %55, i64 2, !dbg !152
  %61 = insertelement <4 x half> %60, half %57, i64 3, !dbg !152
  %scores.sroa.19.16.vec.extract1710 = extractelement <4 x float> %scores.sroa.19.0, i64 0, !dbg !153
  %scores.sroa.19.20.vec.extract = extractelement <4 x float> %scores.sroa.19.0, i64 1, !dbg !153
  %scores.sroa.19.24.vec.extract = extractelement <4 x float> %scores.sroa.19.0, i64 2, !dbg !153
  %scores.sroa.19.28.vec.extract = extractelement <4 x float> %scores.sroa.19.0, i64 3, !dbg !153
  %sub.1 = fsub contract float %scores.sroa.19.16.vec.extract1710, %45, !dbg !105
  %sub315.1 = fsub contract float %scores.sroa.19.20.vec.extract, %45, !dbg !106
  %sub318.1 = fsub contract float %scores.sroa.19.24.vec.extract, %45, !dbg !107
  %sub321.1 = fsub contract float %scores.sroa.19.28.vec.extract, %45, !dbg !108
  %mul326.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !109
  %mul330.1 = fmul contract float %sub315.1, 0x3FC7154760000000, !dbg !110
  %mul334.1 = fmul contract float %sub318.1, 0x3FC7154760000000, !dbg !111
  %mul338.1 = fmul contract float %sub321.1, 0x3FC7154760000000, !dbg !112
  %add343.1 = fadd contract float %mul326.1, 8.000000e+00, !dbg !113
  %add347.1 = fadd contract float %mul330.1, 8.000000e+00, !dbg !114
  %add351.1 = fadd contract float %mul334.1, 8.000000e+00, !dbg !115
  %add355.1 = fadd contract float %mul338.1, 8.000000e+00, !dbg !116
  %cmp.i.i.1 = fcmp contract olt float %add343.1, -1.260000e+02, !dbg !117
  %cond.i.i844.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !117
  %add.i.i.1 = fadd contract float %add343.1, %cond.i.i844.1, !dbg !117
  %62 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !117
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !117
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %62, !dbg !117
  %cmp.i.i845.1 = fcmp contract olt float %add347.1, -1.260000e+02, !dbg !120
  %cond.i.i846.1 = select contract i1 %cmp.i.i845.1, float 6.400000e+01, float 0.000000e+00, !dbg !120
  %add.i.i847.1 = fadd contract float %add347.1, %cond.i.i846.1, !dbg !120
  %63 = tail call contract float @llvm.exp2.f32(float %add.i.i847.1), !dbg !120
  %cond2.i.i848.1 = select contract i1 %cmp.i.i845.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !120
  %mul.i.i849.1 = fmul contract float %cond2.i.i848.1, %63, !dbg !120
  %cmp.i.i850.1 = fcmp contract olt float %add351.1, -1.260000e+02, !dbg !122
  %cond.i.i851.1 = select contract i1 %cmp.i.i850.1, float 6.400000e+01, float 0.000000e+00, !dbg !122
  %add.i.i852.1 = fadd contract float %add351.1, %cond.i.i851.1, !dbg !122
  %64 = tail call contract float @llvm.exp2.f32(float %add.i.i852.1), !dbg !122
  %cond2.i.i853.1 = select contract i1 %cmp.i.i850.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !122
  %mul.i.i854.1 = fmul contract float %cond2.i.i853.1, %64, !dbg !122
  %cmp.i.i855.1 = fcmp contract olt float %add355.1, -1.260000e+02, !dbg !124
  %cond.i.i856.1 = select contract i1 %cmp.i.i855.1, float 6.400000e+01, float 0.000000e+00, !dbg !124
  %add.i.i857.1 = fadd contract float %add355.1, %cond.i.i856.1, !dbg !124
  %65 = tail call contract float @llvm.exp2.f32(float %add.i.i857.1), !dbg !124
  %cond2.i.i858.1 = select contract i1 %cmp.i.i855.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !124
  %mul.i.i859.1 = fmul contract float %cond2.i.i858.1, %65, !dbg !124
  %66 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !126
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !126, !noalias !134
  %67 = fptrunc float %mul.i.i.1 to half, !dbg !126
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %66), !dbg !126, !noalias !134
  %68 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !139
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !139, !noalias !134
  %69 = fptrunc float %mul.i.i849.1 to half, !dbg !139
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %68), !dbg !139, !noalias !134
  %70 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !141
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !141, !noalias !145
  %71 = fptrunc float %mul.i.i854.1 to half, !dbg !141
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %70), !dbg !141, !noalias !145
  %72 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !150
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !150, !noalias !145
  %73 = fptrunc float %mul.i.i859.1 to half, !dbg !150
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %72), !dbg !150, !noalias !145
  %74 = insertelement <4 x half> poison, half %67, i64 0, !dbg !152
  %75 = insertelement <4 x half> %74, half %69, i64 1, !dbg !152
  %76 = insertelement <4 x half> %75, half %71, i64 2, !dbg !152
  %77 = insertelement <4 x half> %76, half %73, i64 3, !dbg !152
  %scores.sroa.40.32.vec.extract1739 = extractelement <4 x float> %scores.sroa.40.0, i64 0, !dbg !153
  %scores.sroa.40.36.vec.extract = extractelement <4 x float> %scores.sroa.40.0, i64 1, !dbg !153
  %scores.sroa.40.40.vec.extract = extractelement <4 x float> %scores.sroa.40.0, i64 2, !dbg !153
  %scores.sroa.40.44.vec.extract = extractelement <4 x float> %scores.sroa.40.0, i64 3, !dbg !153
  %sub.2 = fsub contract float %scores.sroa.40.32.vec.extract1739, %45, !dbg !105
  %sub315.2 = fsub contract float %scores.sroa.40.36.vec.extract, %45, !dbg !106
  %sub318.2 = fsub contract float %scores.sroa.40.40.vec.extract, %45, !dbg !107
  %sub321.2 = fsub contract float %scores.sroa.40.44.vec.extract, %45, !dbg !108
  %mul326.2 = fmul contract float %sub.2, 0x3FC7154760000000, !dbg !109
  %mul330.2 = fmul contract float %sub315.2, 0x3FC7154760000000, !dbg !110
  %mul334.2 = fmul contract float %sub318.2, 0x3FC7154760000000, !dbg !111
  %mul338.2 = fmul contract float %sub321.2, 0x3FC7154760000000, !dbg !112
  %add343.2 = fadd contract float %mul326.2, 8.000000e+00, !dbg !113
  %add347.2 = fadd contract float %mul330.2, 8.000000e+00, !dbg !114
  %add351.2 = fadd contract float %mul334.2, 8.000000e+00, !dbg !115
  %add355.2 = fadd contract float %mul338.2, 8.000000e+00, !dbg !116
  %cmp.i.i.2 = fcmp contract olt float %add343.2, -1.260000e+02, !dbg !117
  %cond.i.i844.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !117
  %add.i.i.2 = fadd contract float %add343.2, %cond.i.i844.2, !dbg !117
  %78 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !117
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !117
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %78, !dbg !117
  %cmp.i.i845.2 = fcmp contract olt float %add347.2, -1.260000e+02, !dbg !120
  %cond.i.i846.2 = select contract i1 %cmp.i.i845.2, float 6.400000e+01, float 0.000000e+00, !dbg !120
  %add.i.i847.2 = fadd contract float %add347.2, %cond.i.i846.2, !dbg !120
  %79 = tail call contract float @llvm.exp2.f32(float %add.i.i847.2), !dbg !120
  %cond2.i.i848.2 = select contract i1 %cmp.i.i845.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !120
  %mul.i.i849.2 = fmul contract float %cond2.i.i848.2, %79, !dbg !120
  %cmp.i.i850.2 = fcmp contract olt float %add351.2, -1.260000e+02, !dbg !122
  %cond.i.i851.2 = select contract i1 %cmp.i.i850.2, float 6.400000e+01, float 0.000000e+00, !dbg !122
  %add.i.i852.2 = fadd contract float %add351.2, %cond.i.i851.2, !dbg !122
  %80 = tail call contract float @llvm.exp2.f32(float %add.i.i852.2), !dbg !122
  %cond2.i.i853.2 = select contract i1 %cmp.i.i850.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !122
  %mul.i.i854.2 = fmul contract float %cond2.i.i853.2, %80, !dbg !122
  %cmp.i.i855.2 = fcmp contract olt float %add355.2, -1.260000e+02, !dbg !124
  %cond.i.i856.2 = select contract i1 %cmp.i.i855.2, float 6.400000e+01, float 0.000000e+00, !dbg !124
  %add.i.i857.2 = fadd contract float %add355.2, %cond.i.i856.2, !dbg !124
  %81 = tail call contract float @llvm.exp2.f32(float %add.i.i857.2), !dbg !124
  %cond2.i.i858.2 = select contract i1 %cmp.i.i855.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !124
  %mul.i.i859.2 = fmul contract float %cond2.i.i858.2, %81, !dbg !124
  %82 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !126
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !126, !noalias !134
  %83 = fptrunc float %mul.i.i.2 to half, !dbg !126
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %82), !dbg !126, !noalias !134
  %84 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !139
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !139, !noalias !134
  %85 = fptrunc float %mul.i.i849.2 to half, !dbg !139
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %84), !dbg !139, !noalias !134
  %86 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !141
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !141, !noalias !145
  %87 = fptrunc float %mul.i.i854.2 to half, !dbg !141
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %86), !dbg !141, !noalias !145
  %88 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !150
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !150, !noalias !145
  %89 = fptrunc float %mul.i.i859.2 to half, !dbg !150
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %88), !dbg !150, !noalias !145
  %90 = insertelement <4 x half> poison, half %83, i64 0, !dbg !152
  %91 = insertelement <4 x half> %90, half %85, i64 1, !dbg !152
  %92 = insertelement <4 x half> %91, half %87, i64 2, !dbg !152
  %93 = insertelement <4 x half> %92, half %89, i64 3, !dbg !152
  %scores.sroa.61.48.vec.extract1768 = extractelement <4 x float> %scores.sroa.61.0, i64 0, !dbg !153
  %scores.sroa.61.52.vec.extract = extractelement <4 x float> %scores.sroa.61.0, i64 1, !dbg !153
  %scores.sroa.61.56.vec.extract = extractelement <4 x float> %scores.sroa.61.0, i64 2, !dbg !153
  %scores.sroa.61.60.vec.extract = extractelement <4 x float> %scores.sroa.61.0, i64 3, !dbg !153
  %sub.3 = fsub contract float %scores.sroa.61.48.vec.extract1768, %45, !dbg !105
  %sub315.3 = fsub contract float %scores.sroa.61.52.vec.extract, %45, !dbg !106
  %sub318.3 = fsub contract float %scores.sroa.61.56.vec.extract, %45, !dbg !107
  %sub321.3 = fsub contract float %scores.sroa.61.60.vec.extract, %45, !dbg !108
  %mul326.3 = fmul contract float %sub.3, 0x3FC7154760000000, !dbg !109
  %mul330.3 = fmul contract float %sub315.3, 0x3FC7154760000000, !dbg !110
  %mul334.3 = fmul contract float %sub318.3, 0x3FC7154760000000, !dbg !111
  %mul338.3 = fmul contract float %sub321.3, 0x3FC7154760000000, !dbg !112
  %add343.3 = fadd contract float %mul326.3, 8.000000e+00, !dbg !113
  %add347.3 = fadd contract float %mul330.3, 8.000000e+00, !dbg !114
  %add351.3 = fadd contract float %mul334.3, 8.000000e+00, !dbg !115
  %add355.3 = fadd contract float %mul338.3, 8.000000e+00, !dbg !116
  %cmp.i.i.3 = fcmp contract olt float %add343.3, -1.260000e+02, !dbg !117
  %cond.i.i844.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !117
  %add.i.i.3 = fadd contract float %add343.3, %cond.i.i844.3, !dbg !117
  %94 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !117
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !117
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %94, !dbg !117
  %cmp.i.i845.3 = fcmp contract olt float %add347.3, -1.260000e+02, !dbg !120
  %cond.i.i846.3 = select contract i1 %cmp.i.i845.3, float 6.400000e+01, float 0.000000e+00, !dbg !120
  %add.i.i847.3 = fadd contract float %add347.3, %cond.i.i846.3, !dbg !120
  %95 = tail call contract float @llvm.exp2.f32(float %add.i.i847.3), !dbg !120
  %cond2.i.i848.3 = select contract i1 %cmp.i.i845.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !120
  %mul.i.i849.3 = fmul contract float %cond2.i.i848.3, %95, !dbg !120
  %cmp.i.i850.3 = fcmp contract olt float %add351.3, -1.260000e+02, !dbg !122
  %cond.i.i851.3 = select contract i1 %cmp.i.i850.3, float 6.400000e+01, float 0.000000e+00, !dbg !122
  %add.i.i852.3 = fadd contract float %add351.3, %cond.i.i851.3, !dbg !122
  %96 = tail call contract float @llvm.exp2.f32(float %add.i.i852.3), !dbg !122
  %cond2.i.i853.3 = select contract i1 %cmp.i.i850.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !122
  %mul.i.i854.3 = fmul contract float %cond2.i.i853.3, %96, !dbg !122
  %cmp.i.i855.3 = fcmp contract olt float %add355.3, -1.260000e+02, !dbg !124
  %cond.i.i856.3 = select contract i1 %cmp.i.i855.3, float 6.400000e+01, float 0.000000e+00, !dbg !124
  %add.i.i857.3 = fadd contract float %add355.3, %cond.i.i856.3, !dbg !124
  %97 = tail call contract float @llvm.exp2.f32(float %add.i.i857.3), !dbg !124
  %cond2.i.i858.3 = select contract i1 %cmp.i.i855.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !124
  %mul.i.i859.3 = fmul contract float %cond2.i.i858.3, %97, !dbg !124
  %98 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !126
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !126, !noalias !134
  %99 = fptrunc float %mul.i.i.3 to half, !dbg !126
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %98), !dbg !126, !noalias !134
  %100 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !139
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !139, !noalias !134
  %101 = fptrunc float %mul.i.i849.3 to half, !dbg !139
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %100), !dbg !139, !noalias !134
  %102 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !141
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !141, !noalias !145
  %103 = fptrunc float %mul.i.i854.3 to half, !dbg !141
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %102), !dbg !141, !noalias !145
  %104 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !150
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !150, !noalias !145
  %105 = fptrunc float %mul.i.i859.3 to half, !dbg !150
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %104), !dbg !150, !noalias !145
  %106 = insertelement <4 x half> poison, half %99, i64 0, !dbg !152
  %107 = insertelement <4 x half> %106, half %101, i64 1, !dbg !152
  %108 = insertelement <4 x half> %107, half %103, i64 2, !dbg !152
  %109 = insertelement <4 x half> %108, half %105, i64 3, !dbg !152
  %conv.i.i = fpext half %51 to float, !dbg !154
  %add394 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !159
  %conv.i.i.1 = fpext half %53 to float, !dbg !154
  %add394.1 = fadd contract float %add394, %conv.i.i.1, !dbg !159
  %conv.i.i.2 = fpext half %55 to float, !dbg !154
  %add394.2 = fadd contract float %add394.1, %conv.i.i.2, !dbg !159
  %conv.i.i.3 = fpext half %57 to float, !dbg !154
  %add394.3 = fadd contract float %add394.2, %conv.i.i.3, !dbg !159
  %conv.i.i.4 = fpext half %67 to float, !dbg !154
  %add394.4 = fadd contract float %add394.3, %conv.i.i.4, !dbg !159
  %conv.i.i.5 = fpext half %69 to float, !dbg !154
  %add394.5 = fadd contract float %add394.4, %conv.i.i.5, !dbg !159
  %conv.i.i.6 = fpext half %71 to float, !dbg !154
  %add394.6 = fadd contract float %add394.5, %conv.i.i.6, !dbg !159
  %conv.i.i.7 = fpext half %73 to float, !dbg !154
  %add394.7 = fadd contract float %add394.6, %conv.i.i.7, !dbg !159
  %conv.i.i.8 = fpext half %83 to float, !dbg !154
  %add394.8 = fadd contract float %add394.7, %conv.i.i.8, !dbg !159
  %conv.i.i.9 = fpext half %85 to float, !dbg !154
  %add394.9 = fadd contract float %add394.8, %conv.i.i.9, !dbg !159
  %conv.i.i.10 = fpext half %87 to float, !dbg !154
  %add394.10 = fadd contract float %add394.9, %conv.i.i.10, !dbg !159
  %conv.i.i.11 = fpext half %89 to float, !dbg !154
  %add394.11 = fadd contract float %add394.10, %conv.i.i.11, !dbg !159
  %conv.i.i.12 = fpext half %99 to float, !dbg !154
  %add394.12 = fadd contract float %add394.11, %conv.i.i.12, !dbg !159
  %conv.i.i.13 = fpext half %101 to float, !dbg !154
  %add394.13 = fadd contract float %add394.12, %conv.i.i.13, !dbg !159
  %conv.i.i.14 = fpext half %103 to float, !dbg !154
  %add394.14 = fadd contract float %add394.13, %conv.i.i.14, !dbg !159
  %conv.i.i.15 = fpext half %105 to float, !dbg !154
  %add394.15 = fadd contract float %add394.14, %conv.i.i.15, !dbg !159
  %110 = bitcast float %add394.15 to i32, !dbg !160
  %111 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !162
  %112 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %111) #11, !dbg !165
  %xor.i.i861 = xor i32 %112, 32, !dbg !166
  %113 = and i32 %112, -64, !dbg !167
  %and.i.i862 = add nsw i32 %113, 64, !dbg !167
  %cmp.not.i.i863 = icmp slt i32 %xor.i.i861, %and.i.i862, !dbg !168
  %cond.i.i864 = select i1 %cmp.not.i.i863, i32 %xor.i.i861, i32 %112, !dbg !169
  %shl.i.i865 = shl i32 %cond.i.i864, 2, !dbg !170
  %114 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i865, i32 %110), !dbg !171
  %115 = bitcast i32 %114 to float, !dbg !172
  %add402 = fadd contract float %add394.15, %115, !dbg !173
  %116 = bitcast float %add402 to i32, !dbg !174
  %117 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !176
  %118 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %117) #11, !dbg !179
  %xor.i.i866 = xor i32 %118, 16, !dbg !180
  %119 = and i32 %118, -64, !dbg !181
  %and.i.i867 = add nsw i32 %119, 64, !dbg !181
  %cmp.not.i.i868 = icmp slt i32 %xor.i.i866, %and.i.i867, !dbg !182
  %cond.i.i869 = select i1 %cmp.not.i.i868, i32 %xor.i.i866, i32 %118, !dbg !183
  %shl.i.i870 = shl i32 %cond.i.i869, 2, !dbg !184
  %120 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i870, i32 %116), !dbg !185
  %121 = bitcast i32 %120 to float, !dbg !186
  %add407 = fadd contract float %add402, %121, !dbg !187
  br label %if.end409, !dbg !188

if.then:                                          ; preds = %entry
  fence syncscope("warp") release, !dbg !189
  tail call void @llvm.mxc.barrier.warp(), !dbg !192
  fence syncscope("warp") acquire, !dbg !193
  %mul139 = shl nuw nsw i32 %15, 10
  %add142 = add nuw nsw i32 %add140, %mul139
  %122 = zext nneg i32 %add142 to i64, !dbg !194
  %add.ptr147 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %122, !dbg !195
  %qk_fetch.sroa.0.0.copyload1632 = load i64, ptr addrspace(4) %add.ptr147, align 16, !dbg !196
  %qk_fetch.sroa.22.0.add.ptr147.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr147, i64 8, !dbg !196
  %qk_fetch.sroa.22.0.copyload1641 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.add.ptr147.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload1632, ptr addrspace(3) %add.ptr39, align 8, !dbg !197
  store i64 %qk_fetch.sroa.22.0.copyload1641, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !197
  %123 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %122, !dbg !195
  %add.ptr147.1 = getelementptr inbounds i8, ptr addrspace(4) %123, i64 1024, !dbg !195
  %qk_fetch.sroa.0.0.copyload1634 = load i64, ptr addrspace(4) %add.ptr147.1, align 16, !dbg !196
  %qk_fetch.sroa.22.0.add.ptr147.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %123, i64 1032, !dbg !196
  %qk_fetch.sroa.22.0.copyload1643 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.add.ptr147.1.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload1634, ptr addrspace(3) %add.ptr39.1927, align 8, !dbg !197
  store i64 %qk_fetch.sroa.22.0.copyload1643, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !197
  fence syncscope("warp") release, !dbg !198
  tail call void @llvm.mxc.barrier.warp(), !dbg !201
  fence syncscope("warp") acquire, !dbg !202
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !203
  %124 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %9, <4 x float> zeroinitializer), !dbg !204
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !203
  %125 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %10, <4 x float> %124), !dbg !204
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !203
  %126 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %11, <4 x float> %125), !dbg !204
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !203
  %127 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %12, <4 x float> %126), !dbg !204
  %mul246 = shl nuw nsw i32 %15, 4
  %add250 = add nuw nsw i32 %mul246, %mul249
  %cmp253.not = icmp ugt i32 %add250, %1, !dbg !205
  %128 = extractelement <4 x float> %127, i64 1, !dbg !206
  %129 = extractelement <4 x float> %127, i64 2, !dbg !206
  %130 = extractelement <4 x float> %127, i64 3, !dbg !206
  %131 = extractelement <4 x float> %127, i64 0
  %spec.select = select i1 %cmp253.not, float 0xFFF0000000000000, float %131, !dbg !206
  %scores.sroa.0.0.vec.insert1684 = insertelement <4 x float> poison, float %spec.select, i64 0, !dbg !207
  %cmp253.not.1.not = icmp ult i32 %add250, %1, !dbg !205
  %condval.0.1 = select i1 %cmp253.not.1.not, float %128, float 0xFFF0000000000000, !dbg !206
  %scores.sroa.0.4.vec.insert1691 = insertelement <4 x float> %scores.sroa.0.0.vec.insert1684, float %condval.0.1, i64 1, !dbg !207
  %add251.2 = or disjoint i32 %add250, 2, !dbg !208
  %cmp253.not.2 = icmp ugt i32 %add251.2, %1, !dbg !205
  %condval.0.2 = select i1 %cmp253.not.2, float 0xFFF0000000000000, float %129, !dbg !206
  %scores.sroa.0.8.vec.insert1696 = insertelement <4 x float> %scores.sroa.0.4.vec.insert1691, float %condval.0.2, i64 2, !dbg !207
  %add251.3 = or disjoint i32 %add250, 3, !dbg !208
  %cmp253.not.3 = icmp ugt i32 %add251.3, %1, !dbg !205
  %condval.0.3 = select i1 %cmp253.not.3, float 0xFFF0000000000000, float %130, !dbg !206
  %scores.sroa.0.12.vec.insert1701 = insertelement <4 x float> %scores.sroa.0.8.vec.insert1696, float %condval.0.3, i64 3, !dbg !207
  br label %if.end268, !dbg !209

if.end268:                                        ; preds = %if.then, %entry
  %scores.sroa.0.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %entry ], [ %scores.sroa.0.12.vec.insert1701, %if.then ], !dbg !210
  %has_valid.sroa.0.1 = phi i32 [ 0, %entry ], [ 1, %if.then ], !dbg !210
  %132 = or disjoint i64 %14, 1, !dbg !211
  %arrayidx125.1 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %132, !dbg !65
  %133 = load i32, ptr addrspace(1) %arrayidx125.1, align 4, !dbg !65, !tbaa !30
  %or.cond886.1 = icmp ugt i32 %133, %invariant.umin, !dbg !66
  br i1 %or.cond886.1, label %if.end268.1, label %if.then.1, !dbg !66

if.then.1:                                        ; preds = %if.end268
  fence syncscope("warp") release, !dbg !189
  tail call void @llvm.mxc.barrier.warp(), !dbg !192
  fence syncscope("warp") acquire, !dbg !193
  %mul139.1 = shl nuw nsw i32 %133, 10
  %add142.1 = add nuw nsw i32 %add140, %mul139.1
  %134 = zext nneg i32 %add142.1 to i64, !dbg !194
  %add.ptr147.1947 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %134, !dbg !195
  %qk_fetch.sroa.0.0.copyload1635 = load i64, ptr addrspace(4) %add.ptr147.1947, align 16, !dbg !196
  %qk_fetch.sroa.22.0.add.ptr147.1947.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr147.1947, i64 8, !dbg !196
  %qk_fetch.sroa.22.0.copyload1644 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.add.ptr147.1947.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload1635, ptr addrspace(3) %add.ptr39, align 8, !dbg !197
  store i64 %qk_fetch.sroa.22.0.copyload1644, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !197
  %135 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %134, !dbg !195
  %add.ptr147.1.1 = getelementptr inbounds i8, ptr addrspace(4) %135, i64 1024, !dbg !195
  %qk_fetch.sroa.0.0.copyload1636 = load i64, ptr addrspace(4) %add.ptr147.1.1, align 16, !dbg !196
  %qk_fetch.sroa.22.0.add.ptr147.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %135, i64 1032, !dbg !196
  %qk_fetch.sroa.22.0.copyload1645 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.add.ptr147.1.1.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload1636, ptr addrspace(3) %add.ptr39.1927, align 8, !dbg !197
  store i64 %qk_fetch.sroa.22.0.copyload1645, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !197
  fence syncscope("warp") release, !dbg !198
  tail call void @llvm.mxc.barrier.warp(), !dbg !201
  fence syncscope("warp") acquire, !dbg !202
  %k_local.sroa.0.0.copyload.1960 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !203
  %136 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1960, <4 x half> %9, <4 x float> zeroinitializer), !dbg !204
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !203
  %137 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %10, <4 x float> %136), !dbg !204
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !203
  %138 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %11, <4 x float> %137), !dbg !204
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !203
  %139 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %12, <4 x float> %138), !dbg !204
  %mul246.1 = shl nuw nsw i32 %133, 4
  %add250.1 = add nuw nsw i32 %mul246.1, %mul249
  %cmp253.not.1961 = icmp ugt i32 %add250.1, %1, !dbg !205
  %140 = extractelement <4 x float> %139, i64 1, !dbg !206
  %141 = extractelement <4 x float> %139, i64 2, !dbg !206
  %142 = extractelement <4 x float> %139, i64 3, !dbg !206
  %143 = extractelement <4 x float> %139, i64 0
  %spec.select1679 = select i1 %cmp253.not.1961, float 0xFFF0000000000000, float %143, !dbg !206
  %scores.sroa.19.16.vec.insert1707 = insertelement <4 x float> poison, float %spec.select1679, i64 0, !dbg !207
  %cmp253.not.1.1.not = icmp ult i32 %add250.1, %1, !dbg !205
  %condval.0.1.1 = select i1 %cmp253.not.1.1.not, float %140, float 0xFFF0000000000000, !dbg !206
  %scores.sroa.19.20.vec.insert1713 = insertelement <4 x float> %scores.sroa.19.16.vec.insert1707, float %condval.0.1.1, i64 1, !dbg !207
  %add251.2.1 = or disjoint i32 %add250.1, 2, !dbg !208
  %cmp253.not.2.1 = icmp ugt i32 %add251.2.1, %1, !dbg !205
  %condval.0.2.1 = select i1 %cmp253.not.2.1, float 0xFFF0000000000000, float %141, !dbg !206
  %scores.sroa.19.24.vec.insert1720 = insertelement <4 x float> %scores.sroa.19.20.vec.insert1713, float %condval.0.2.1, i64 2, !dbg !207
  %add251.3.1 = or disjoint i32 %add250.1, 3, !dbg !208
  %cmp253.not.3.1 = icmp ugt i32 %add251.3.1, %1, !dbg !205
  %condval.0.3.1 = select i1 %cmp253.not.3.1, float 0xFFF0000000000000, float %142, !dbg !206
  %scores.sroa.19.28.vec.insert1727 = insertelement <4 x float> %scores.sroa.19.24.vec.insert1720, float %condval.0.3.1, i64 3, !dbg !207
  br label %if.end268.1, !dbg !209

if.end268.1:                                      ; preds = %if.then.1, %if.end268
  %scores.sroa.19.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end268 ], [ %scores.sroa.19.28.vec.insert1727, %if.then.1 ], !dbg !210
  %has_valid.sroa.0.1.1 = phi i32 [ %has_valid.sroa.0.1, %if.end268 ], [ 1, %if.then.1 ], !dbg !210
  %144 = or disjoint i64 %14, 2, !dbg !211
  %arrayidx125.2 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %144, !dbg !65
  %145 = load i32, ptr addrspace(1) %arrayidx125.2, align 4, !dbg !65, !tbaa !30
  %or.cond886.2 = icmp ugt i32 %145, %invariant.umin, !dbg !66
  br i1 %or.cond886.2, label %if.end268.2, label %if.then.2, !dbg !66

if.then.2:                                        ; preds = %if.end268.1
  fence syncscope("warp") release, !dbg !189
  tail call void @llvm.mxc.barrier.warp(), !dbg !192
  fence syncscope("warp") acquire, !dbg !193
  %mul139.2 = shl nuw nsw i32 %145, 10
  %add142.2 = add nuw nsw i32 %add140, %mul139.2
  %146 = zext nneg i32 %add142.2 to i64, !dbg !194
  %add.ptr147.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %146, !dbg !195
  %qk_fetch.sroa.0.0.copyload1637 = load i64, ptr addrspace(4) %add.ptr147.2, align 16, !dbg !196
  %qk_fetch.sroa.22.0.add.ptr147.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr147.2, i64 8, !dbg !196
  %qk_fetch.sroa.22.0.copyload1646 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.add.ptr147.2.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload1637, ptr addrspace(3) %add.ptr39, align 8, !dbg !197
  store i64 %qk_fetch.sroa.22.0.copyload1646, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !197
  %147 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %146, !dbg !195
  %add.ptr147.1.2 = getelementptr inbounds i8, ptr addrspace(4) %147, i64 1024, !dbg !195
  %qk_fetch.sroa.0.0.copyload1638 = load i64, ptr addrspace(4) %add.ptr147.1.2, align 16, !dbg !196
  %qk_fetch.sroa.22.0.add.ptr147.1.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %147, i64 1032, !dbg !196
  %qk_fetch.sroa.22.0.copyload1647 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.add.ptr147.1.2.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload1638, ptr addrspace(3) %add.ptr39.1927, align 8, !dbg !197
  store i64 %qk_fetch.sroa.22.0.copyload1647, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !197
  fence syncscope("warp") release, !dbg !198
  tail call void @llvm.mxc.barrier.warp(), !dbg !201
  fence syncscope("warp") acquire, !dbg !202
  %k_local.sroa.0.0.copyload.2973 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !203
  %148 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2973, <4 x half> %9, <4 x float> zeroinitializer), !dbg !204
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !203
  %149 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %10, <4 x float> %148), !dbg !204
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !203
  %150 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %11, <4 x float> %149), !dbg !204
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !203
  %151 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %12, <4 x float> %150), !dbg !204
  %mul246.2 = shl nuw nsw i32 %145, 4
  %add250.2 = add nuw nsw i32 %mul246.2, %mul249
  %cmp253.not.2974 = icmp ugt i32 %add250.2, %1, !dbg !205
  %152 = extractelement <4 x float> %151, i64 1, !dbg !206
  %153 = extractelement <4 x float> %151, i64 2, !dbg !206
  %154 = extractelement <4 x float> %151, i64 3, !dbg !206
  %155 = extractelement <4 x float> %151, i64 0
  %spec.select1680 = select i1 %cmp253.not.2974, float 0xFFF0000000000000, float %155, !dbg !206
  %scores.sroa.40.32.vec.insert1736 = insertelement <4 x float> poison, float %spec.select1680, i64 0, !dbg !207
  %cmp253.not.1.2.not = icmp ult i32 %add250.2, %1, !dbg !205
  %condval.0.1.2 = select i1 %cmp253.not.1.2.not, float %152, float 0xFFF0000000000000, !dbg !206
  %scores.sroa.40.36.vec.insert1742 = insertelement <4 x float> %scores.sroa.40.32.vec.insert1736, float %condval.0.1.2, i64 1, !dbg !207
  %add251.2.2 = or disjoint i32 %add250.2, 2, !dbg !208
  %cmp253.not.2.2 = icmp ugt i32 %add251.2.2, %1, !dbg !205
  %condval.0.2.2 = select i1 %cmp253.not.2.2, float 0xFFF0000000000000, float %153, !dbg !206
  %scores.sroa.40.40.vec.insert1749 = insertelement <4 x float> %scores.sroa.40.36.vec.insert1742, float %condval.0.2.2, i64 2, !dbg !207
  %add251.3.2 = or disjoint i32 %add250.2, 3, !dbg !208
  %cmp253.not.3.2 = icmp ugt i32 %add251.3.2, %1, !dbg !205
  %condval.0.3.2 = select i1 %cmp253.not.3.2, float 0xFFF0000000000000, float %154, !dbg !206
  %scores.sroa.40.44.vec.insert1756 = insertelement <4 x float> %scores.sroa.40.40.vec.insert1749, float %condval.0.3.2, i64 3, !dbg !207
  br label %if.end268.2, !dbg !209

if.end268.2:                                      ; preds = %if.then.2, %if.end268.1
  %scores.sroa.40.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end268.1 ], [ %scores.sroa.40.44.vec.insert1756, %if.then.2 ], !dbg !210
  %has_valid.sroa.0.1.2 = phi i32 [ %has_valid.sroa.0.1.1, %if.end268.1 ], [ 1, %if.then.2 ], !dbg !210
  %156 = or disjoint i64 %14, 3, !dbg !211
  %arrayidx125.3 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %156, !dbg !65
  %157 = load i32, ptr addrspace(1) %arrayidx125.3, align 4, !dbg !65, !tbaa !30
  %or.cond886.3 = icmp ugt i32 %157, %invariant.umin, !dbg !66
  br i1 %or.cond886.3, label %if.end268.3, label %if.then.3, !dbg !66

if.then.3:                                        ; preds = %if.end268.2
  fence syncscope("warp") release, !dbg !189
  tail call void @llvm.mxc.barrier.warp(), !dbg !192
  fence syncscope("warp") acquire, !dbg !193
  %mul139.3 = shl nuw nsw i32 %157, 10
  %add142.3 = add nuw nsw i32 %add140, %mul139.3
  %158 = zext nneg i32 %add142.3 to i64, !dbg !194
  %add.ptr147.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %158, !dbg !195
  %qk_fetch.sroa.0.0.copyload1639 = load i64, ptr addrspace(4) %add.ptr147.3, align 16, !dbg !196
  %qk_fetch.sroa.22.0.add.ptr147.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr147.3, i64 8, !dbg !196
  %qk_fetch.sroa.22.0.copyload1648 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.add.ptr147.3.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload1639, ptr addrspace(3) %add.ptr39, align 8, !dbg !197
  store i64 %qk_fetch.sroa.22.0.copyload1648, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !197
  %159 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %158, !dbg !195
  %add.ptr147.1.3 = getelementptr inbounds i8, ptr addrspace(4) %159, i64 1024, !dbg !195
  %qk_fetch.sroa.0.0.copyload1640 = load i64, ptr addrspace(4) %add.ptr147.1.3, align 16, !dbg !196
  %qk_fetch.sroa.22.0.add.ptr147.1.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %159, i64 1032, !dbg !196
  %qk_fetch.sroa.22.0.copyload1649 = load i64, ptr addrspace(4) %qk_fetch.sroa.22.0.add.ptr147.1.3.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload1640, ptr addrspace(3) %add.ptr39.1927, align 8, !dbg !197
  store i64 %qk_fetch.sroa.22.0.copyload1649, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !197
  fence syncscope("warp") release, !dbg !198
  tail call void @llvm.mxc.barrier.warp(), !dbg !201
  fence syncscope("warp") acquire, !dbg !202
  %k_local.sroa.0.0.copyload.3986 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !203
  %160 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3986, <4 x half> %9, <4 x float> zeroinitializer), !dbg !204
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !203
  %161 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %10, <4 x float> %160), !dbg !204
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !203
  %162 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %11, <4 x float> %161), !dbg !204
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !203
  %163 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %12, <4 x float> %162), !dbg !204
  %mul246.3 = shl nuw nsw i32 %157, 4
  %add250.3 = add nuw nsw i32 %mul246.3, %mul249
  %cmp253.not.3987 = icmp ugt i32 %add250.3, %1, !dbg !205
  %164 = extractelement <4 x float> %163, i64 1, !dbg !206
  %165 = extractelement <4 x float> %163, i64 2, !dbg !206
  %166 = extractelement <4 x float> %163, i64 3, !dbg !206
  %167 = extractelement <4 x float> %163, i64 0
  %spec.select1681 = select i1 %cmp253.not.3987, float 0xFFF0000000000000, float %167, !dbg !206
  %scores.sroa.61.48.vec.insert1765 = insertelement <4 x float> poison, float %spec.select1681, i64 0, !dbg !207
  %cmp253.not.1.3.not = icmp ult i32 %add250.3, %1, !dbg !205
  %condval.0.1.3 = select i1 %cmp253.not.1.3.not, float %164, float 0xFFF0000000000000, !dbg !206
  %scores.sroa.61.52.vec.insert1771 = insertelement <4 x float> %scores.sroa.61.48.vec.insert1765, float %condval.0.1.3, i64 1, !dbg !207
  %add251.2.3 = or disjoint i32 %add250.3, 2, !dbg !208
  %cmp253.not.2.3 = icmp ugt i32 %add251.2.3, %1, !dbg !205
  %condval.0.2.3 = select i1 %cmp253.not.2.3, float 0xFFF0000000000000, float %165, !dbg !206
  %scores.sroa.61.56.vec.insert1778 = insertelement <4 x float> %scores.sroa.61.52.vec.insert1771, float %condval.0.2.3, i64 2, !dbg !207
  %add251.3.3 = or disjoint i32 %add250.3, 3, !dbg !208
  %cmp253.not.3.3 = icmp ugt i32 %add251.3.3, %1, !dbg !205
  %condval.0.3.3 = select i1 %cmp253.not.3.3, float 0xFFF0000000000000, float %166, !dbg !206
  %scores.sroa.61.60.vec.insert1785 = insertelement <4 x float> %scores.sroa.61.56.vec.insert1778, float %condval.0.3.3, i64 3, !dbg !207
  br label %if.end268.3, !dbg !209

if.end268.3:                                      ; preds = %if.then.3, %if.end268.2
  %scores.sroa.61.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end268.2 ], [ %scores.sroa.61.60.vec.insert1785, %if.then.3 ], !dbg !210
  %has_valid.sroa.0.1.3 = phi i32 [ %has_valid.sroa.0.1.2, %if.end268.2 ], [ 1, %if.then.3 ], !dbg !210
  %tobool.not = icmp eq i32 %has_valid.sroa.0.1.3, 0, !dbg !212
  br i1 %tobool.not, label %if.end409, label %for.body280.preheader, !dbg !212

if.end409:                                        ; preds = %for.body280.preheader, %if.end268.3
  %168 = phi <4 x half> [ zeroinitializer, %if.end268.3 ], [ %109, %for.body280.preheader ], !dbg !210
  %169 = phi <4 x half> [ zeroinitializer, %if.end268.3 ], [ %93, %for.body280.preheader ], !dbg !210
  %170 = phi <4 x half> [ zeroinitializer, %if.end268.3 ], [ %77, %for.body280.preheader ], !dbg !210
  %171 = phi <4 x half> [ zeroinitializer, %if.end268.3 ], [ %61, %for.body280.preheader ], !dbg !210
  %denominator.sroa.0.1 = phi float [ 0.000000e+00, %if.end268.3 ], [ %add407, %for.body280.preheader ], !dbg !210
  %172 = shl nuw nsw i32 %2, 4
  %mul453 = and i32 %172, 16128
  %and458 = shl nuw nsw i32 %2, 2
  %mul459 = and i32 %and458, 60
  %173 = or disjoint i32 %mul453, %mul459
  %add454 = or disjoint i32 %173, %mul138
  %mul492 = and i32 %172, 240
  %shr498 = and i32 %13, 3
  %xor499 = xor i32 %shr498, %and60
  %and513 = shl nuw nsw i32 %2, 8
  %mul514 = and i32 %and513, 768
  %mul520 = and i32 %and458, 48
  %and526 = and i32 %2, 3
  %174 = xor i32 %and60, %and526
  %175 = load i32, ptr addrspace(1) %arrayidx125, align 4, !dbg !213, !tbaa !30
  %or.cond887 = icmp ugt i32 %175, %invariant.umin, !dbg !214
  br i1 %or.cond887, label %if.end558, label %if.then442, !dbg !214

if.then442:                                       ; preds = %if.end409
  fence syncscope("warp") release, !dbg !215
  tail call void @llvm.mxc.barrier.warp(), !dbg !218
  fence syncscope("warp") acquire, !dbg !219
  %mul449 = shl nuw nsw i32 %175, 10
  %add456 = add nuw nsw i32 %add454, %mul449
  %176 = zext nneg i32 %add456 to i64, !dbg !220
  %add.ptr462 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %176, !dbg !221
  %177 = load i64, ptr addrspace(4) %add.ptr462, align 8, !dbg !222
  %178 = or disjoint i64 %176, 64, !dbg !223
  %add.ptr462.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %178, !dbg !221
  %179 = load i64, ptr addrspace(4) %add.ptr462.1, align 8, !dbg !222
  %180 = or disjoint i64 %176, 128, !dbg !223
  %add.ptr462.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %180, !dbg !221
  %181 = load i64, ptr addrspace(4) %add.ptr462.2, align 8, !dbg !222
  %182 = or disjoint i64 %176, 192, !dbg !223
  %add.ptr462.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %182, !dbg !221
  %183 = load i64, ptr addrspace(4) %add.ptr462.3, align 8, !dbg !222
  %184 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul492, !dbg !224
  %add.ptr504.idx = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504 = getelementptr inbounds i8, ptr addrspace(3) %184, i32 %add.ptr504.idx, !dbg !224
  %v_column.sroa.66.0.insert.ext = shl i64 %183, 48, !dbg !225
  %v_column.sroa.50.0.insert.ext = shl i64 %181, 32, !dbg !225
  %v_column.sroa.50.0.insert.shift = and i64 %v_column.sroa.50.0.insert.ext, 281470681743360, !dbg !225
  %v_column.sroa.50.0.insert.insert = or disjoint i64 %v_column.sroa.66.0.insert.ext, %v_column.sroa.50.0.insert.shift, !dbg !225
  %v_column.sroa.34.0.insert.ext = shl i64 %179, 16, !dbg !225
  %v_column.sroa.34.0.insert.shift = and i64 %v_column.sroa.34.0.insert.ext, 4294901760, !dbg !225
  %v_column.sroa.34.0.insert.insert = or disjoint i64 %v_column.sroa.50.0.insert.insert, %v_column.sroa.34.0.insert.shift, !dbg !225
  %v_column.sroa.0.0.insert.ext = and i64 %177, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert = or disjoint i64 %v_column.sroa.34.0.insert.insert, %v_column.sroa.0.0.insert.ext, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr504, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift = lshr i64 %177, 16, !dbg !226
  %add493.1 = or disjoint i32 %mul492, 256, !dbg !227
  %185 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.1, !dbg !224
  %xor500.1 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.1 = xor i32 %xor500.1, 8, !dbg !224
  %add.ptr504.1 = getelementptr inbounds i8, ptr addrspace(3) %185, i32 %add.ptr504.idx.1, !dbg !224
  %186 = shl i64 %183, 32, !dbg !225
  %v_column.sroa.66.0.insert.ext1261 = and i64 %186, -281474976710656, !dbg !225
  %187 = shl i64 %181, 16, !dbg !225
  %v_column.sroa.50.0.insert.shift1187 = and i64 %187, 281470681743360, !dbg !225
  %v_column.sroa.50.0.insert.insert1189 = or disjoint i64 %v_column.sroa.66.0.insert.ext1261, %v_column.sroa.50.0.insert.shift1187, !dbg !225
  %v_column.sroa.34.0.insert.ext1111 = and i64 %179, 4294901760, !dbg !225
  %v_column.sroa.34.0.insert.insert1114 = or disjoint i64 %v_column.sroa.50.0.insert.insert1189, %v_column.sroa.34.0.insert.ext1111, !dbg !225
  %v_column.sroa.0.0.insert.ext1051 = and i64 %v_fetch.sroa.0.2.extract.shift, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1053 = or disjoint i64 %v_column.sroa.34.0.insert.insert1114, %v_column.sroa.0.0.insert.ext1051, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1053, ptr addrspace(3) %add.ptr504.1, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift = lshr i64 %177, 32, !dbg !226
  %add493.2 = or disjoint i32 %mul492, 512, !dbg !227
  %188 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.2, !dbg !224
  %xor500.2 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.2 = xor i32 %xor500.2, 16, !dbg !224
  %add.ptr504.2 = getelementptr inbounds i8, ptr addrspace(3) %188, i32 %add.ptr504.idx.2, !dbg !224
  %189 = shl i64 %183, 16, !dbg !225
  %v_column.sroa.66.0.insert.ext1266 = and i64 %189, -281474976710656, !dbg !225
  %v_column.sroa.50.0.insert.ext1191 = and i64 %181, 281470681743360, !dbg !225
  %v_column.sroa.50.0.insert.insert1194 = or disjoint i64 %v_column.sroa.66.0.insert.ext1266, %v_column.sroa.50.0.insert.ext1191, !dbg !225
  %190 = lshr i64 %179, 16, !dbg !225
  %v_column.sroa.34.0.insert.shift1117 = and i64 %190, 4294901760, !dbg !225
  %v_column.sroa.34.0.insert.insert1119 = or disjoint i64 %v_column.sroa.50.0.insert.insert1194, %v_column.sroa.34.0.insert.shift1117, !dbg !225
  %v_column.sroa.0.0.insert.ext1055 = and i64 %v_fetch.sroa.0.4.extract.shift, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1057 = or disjoint i64 %v_column.sroa.34.0.insert.insert1119, %v_column.sroa.0.0.insert.ext1055, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1057, ptr addrspace(3) %add.ptr504.2, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift = lshr i64 %177, 48, !dbg !226
  %v_fetch.sroa.62.30.extract.shift = and i64 %183, -281474976710656, !dbg !225
  %add493.3 = or disjoint i32 %mul492, 768, !dbg !227
  %191 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.3, !dbg !224
  %xor500.3 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.3 = xor i32 %xor500.3, 24, !dbg !224
  %add.ptr504.3 = getelementptr inbounds i8, ptr addrspace(3) %191, i32 %add.ptr504.idx.3, !dbg !224
  %192 = lshr i64 %181, 16, !dbg !225
  %v_column.sroa.50.0.insert.shift1197 = and i64 %192, 281470681743360, !dbg !225
  %v_column.sroa.50.0.insert.insert1199 = or disjoint i64 %v_fetch.sroa.62.30.extract.shift, %v_column.sroa.50.0.insert.shift1197, !dbg !225
  %193 = lshr i64 %179, 32, !dbg !225
  %v_column.sroa.34.0.insert.shift1122 = and i64 %193, 4294901760, !dbg !225
  %v_column.sroa.34.0.insert.insert1124 = or disjoint i64 %v_column.sroa.50.0.insert.insert1199, %v_column.sroa.34.0.insert.shift1122, !dbg !225
  %v_column.sroa.0.0.insert.insert1061 = or disjoint i64 %v_column.sroa.34.0.insert.insert1124, %v_fetch.sroa.0.6.extract.shift, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1061, ptr addrspace(3) %add.ptr504.3, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add521 = or disjoint i32 %mul514, %mul520, !dbg !233
  %194 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521, !dbg !234
  %add.ptr531.idx = shl nuw nsw i32 %174, 3, !dbg !234
  %add.ptr531 = getelementptr inbounds i8, ptr addrspace(3) %194, i32 %add.ptr531.idx, !dbg !234
  %195 = load <4 x half>, ptr addrspace(3) %add.ptr531, align 8, !dbg !235
  %add516.1 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.1 = or disjoint i32 %add516.1, 64, !dbg !233
  %196 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.1, !dbg !234
  %xor527.1 = shl nuw nsw i32 %174, 3, !dbg !234
  %add.ptr531.idx.1 = xor i32 %xor527.1, 8, !dbg !234
  %add.ptr531.1 = getelementptr inbounds i8, ptr addrspace(3) %196, i32 %add.ptr531.idx.1, !dbg !234
  %197 = load <4 x half>, ptr addrspace(3) %add.ptr531.1, align 8, !dbg !235
  %add516.2 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.2 = or disjoint i32 %add516.2, 128, !dbg !233
  %198 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.2, !dbg !234
  %xor527.2 = shl nuw nsw i32 %174, 3, !dbg !234
  %add.ptr531.idx.2 = xor i32 %xor527.2, 16, !dbg !234
  %add.ptr531.2 = getelementptr inbounds i8, ptr addrspace(3) %198, i32 %add.ptr531.idx.2, !dbg !234
  %199 = load <4 x half>, ptr addrspace(3) %add.ptr531.2, align 8, !dbg !235
  %add516.3 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.3 = or disjoint i32 %add516.3, 192, !dbg !233
  %200 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.3, !dbg !234
  %xor527.3 = shl nuw nsw i32 %174, 3, !dbg !234
  %add.ptr531.idx.3 = xor i32 %xor527.3, 24, !dbg !234
  %add.ptr531.3 = getelementptr inbounds i8, ptr addrspace(3) %200, i32 %add.ptr531.idx.3, !dbg !234
  %201 = load <4 x half>, ptr addrspace(3) %add.ptr531.3, align 8, !dbg !235
  %202 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %195, <4 x half> %171, <4 x float> zeroinitializer), !dbg !236
  %203 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %197, <4 x half> %171, <4 x float> zeroinitializer), !dbg !236
  %204 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %199, <4 x half> %171, <4 x float> zeroinitializer), !dbg !236
  %205 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %201, <4 x half> %171, <4 x float> zeroinitializer), !dbg !236
  br label %if.end558, !dbg !237

if.end558:                                        ; preds = %if.then442, %if.end409
  %numerator.sroa.74.0 = phi <4 x float> [ zeroinitializer, %if.end409 ], [ %205, %if.then442 ], !dbg !210
  %numerator.sroa.50.0 = phi <4 x float> [ zeroinitializer, %if.end409 ], [ %204, %if.then442 ], !dbg !210
  %numerator.sroa.26.0 = phi <4 x float> [ zeroinitializer, %if.end409 ], [ %203, %if.then442 ], !dbg !210
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %if.end409 ], [ %202, %if.then442 ], !dbg !210
  %206 = load i32, ptr addrspace(1) %arrayidx125.1, align 4, !dbg !213, !tbaa !30
  %or.cond887.1 = icmp ugt i32 %206, %invariant.umin, !dbg !214
  br i1 %or.cond887.1, label %if.end558.1, label %if.then442.1, !dbg !214

if.then442.1:                                     ; preds = %if.end558
  fence syncscope("warp") release, !dbg !215
  tail call void @llvm.mxc.barrier.warp(), !dbg !218
  fence syncscope("warp") acquire, !dbg !219
  %mul449.1 = shl nuw nsw i32 %206, 10
  %add456.1 = add nuw nsw i32 %add454, %mul449.1
  %207 = zext nneg i32 %add456.1 to i64, !dbg !220
  %add.ptr462.11002 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %207, !dbg !221
  %208 = load i64, ptr addrspace(4) %add.ptr462.11002, align 8, !dbg !222
  %209 = or disjoint i64 %207, 64, !dbg !223
  %add.ptr462.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %209, !dbg !221
  %210 = load i64, ptr addrspace(4) %add.ptr462.1.1, align 8, !dbg !222
  %211 = or disjoint i64 %207, 128, !dbg !223
  %add.ptr462.2.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %211, !dbg !221
  %212 = load i64, ptr addrspace(4) %add.ptr462.2.1, align 8, !dbg !222
  %213 = or disjoint i64 %207, 192, !dbg !223
  %add.ptr462.3.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %213, !dbg !221
  %214 = load i64, ptr addrspace(4) %add.ptr462.3.1, align 8, !dbg !222
  %215 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul492, !dbg !224
  %add.ptr504.idx.11009 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.11010 = getelementptr inbounds i8, ptr addrspace(3) %215, i32 %add.ptr504.idx.11009, !dbg !224
  %v_column.sroa.66.0.insert.ext1276 = shl i64 %214, 48, !dbg !225
  %v_column.sroa.50.0.insert.ext1201 = shl i64 %212, 32, !dbg !225
  %v_column.sroa.50.0.insert.shift1202 = and i64 %v_column.sroa.50.0.insert.ext1201, 281470681743360, !dbg !225
  %v_column.sroa.50.0.insert.insert1204 = or disjoint i64 %v_column.sroa.66.0.insert.ext1276, %v_column.sroa.50.0.insert.shift1202, !dbg !225
  %v_column.sroa.34.0.insert.ext1126 = shl i64 %210, 16, !dbg !225
  %v_column.sroa.34.0.insert.shift1127 = and i64 %v_column.sroa.34.0.insert.ext1126, 4294901760, !dbg !225
  %v_column.sroa.34.0.insert.insert1129 = or disjoint i64 %v_column.sroa.50.0.insert.insert1204, %v_column.sroa.34.0.insert.shift1127, !dbg !225
  %v_column.sroa.0.0.insert.ext1063 = and i64 %208, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1065 = or disjoint i64 %v_column.sroa.34.0.insert.insert1129, %v_column.sroa.0.0.insert.ext1063, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1065, ptr addrspace(3) %add.ptr504.11010, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1370 = lshr i64 %208, 16, !dbg !226
  %add493.1.1 = or disjoint i32 %mul492, 256, !dbg !227
  %216 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.1.1, !dbg !224
  %xor500.1.1 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.1.1 = xor i32 %xor500.1.1, 8, !dbg !224
  %add.ptr504.1.1 = getelementptr inbounds i8, ptr addrspace(3) %216, i32 %add.ptr504.idx.1.1, !dbg !224
  %217 = shl i64 %214, 32, !dbg !225
  %v_column.sroa.66.0.insert.ext1281 = and i64 %217, -281474976710656, !dbg !225
  %218 = shl i64 %212, 16, !dbg !225
  %v_column.sroa.50.0.insert.shift1207 = and i64 %218, 281470681743360, !dbg !225
  %v_column.sroa.50.0.insert.insert1209 = or disjoint i64 %v_column.sroa.66.0.insert.ext1281, %v_column.sroa.50.0.insert.shift1207, !dbg !225
  %v_column.sroa.34.0.insert.ext1131 = and i64 %210, 4294901760, !dbg !225
  %v_column.sroa.34.0.insert.insert1134 = or disjoint i64 %v_column.sroa.50.0.insert.insert1209, %v_column.sroa.34.0.insert.ext1131, !dbg !225
  %v_column.sroa.0.0.insert.ext1067 = and i64 %v_fetch.sroa.0.2.extract.shift1370, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1069 = or disjoint i64 %v_column.sroa.34.0.insert.insert1134, %v_column.sroa.0.0.insert.ext1067, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1069, ptr addrspace(3) %add.ptr504.1.1, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1379 = lshr i64 %208, 32, !dbg !226
  %add493.2.1 = or disjoint i32 %mul492, 512, !dbg !227
  %219 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.2.1, !dbg !224
  %xor500.2.1 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.2.1 = xor i32 %xor500.2.1, 16, !dbg !224
  %add.ptr504.2.1 = getelementptr inbounds i8, ptr addrspace(3) %219, i32 %add.ptr504.idx.2.1, !dbg !224
  %220 = shl i64 %214, 16, !dbg !225
  %v_column.sroa.66.0.insert.ext1286 = and i64 %220, -281474976710656, !dbg !225
  %v_column.sroa.50.0.insert.ext1211 = and i64 %212, 281470681743360, !dbg !225
  %v_column.sroa.50.0.insert.insert1214 = or disjoint i64 %v_column.sroa.66.0.insert.ext1286, %v_column.sroa.50.0.insert.ext1211, !dbg !225
  %221 = lshr i64 %210, 16, !dbg !225
  %v_column.sroa.34.0.insert.shift1137 = and i64 %221, 4294901760, !dbg !225
  %v_column.sroa.34.0.insert.insert1139 = or disjoint i64 %v_column.sroa.50.0.insert.insert1214, %v_column.sroa.34.0.insert.shift1137, !dbg !225
  %v_column.sroa.0.0.insert.ext1071 = and i64 %v_fetch.sroa.0.4.extract.shift1379, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1073 = or disjoint i64 %v_column.sroa.34.0.insert.insert1139, %v_column.sroa.0.0.insert.ext1071, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1073, ptr addrspace(3) %add.ptr504.2.1, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1388 = lshr i64 %208, 48, !dbg !226
  %v_fetch.sroa.62.30.extract.shift1487 = and i64 %214, -281474976710656, !dbg !225
  %add493.3.1 = or disjoint i32 %mul492, 768, !dbg !227
  %222 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.3.1, !dbg !224
  %xor500.3.1 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.3.1 = xor i32 %xor500.3.1, 24, !dbg !224
  %add.ptr504.3.1 = getelementptr inbounds i8, ptr addrspace(3) %222, i32 %add.ptr504.idx.3.1, !dbg !224
  %223 = lshr i64 %212, 16, !dbg !225
  %v_column.sroa.50.0.insert.shift1217 = and i64 %223, 281470681743360, !dbg !225
  %v_column.sroa.50.0.insert.insert1219 = or disjoint i64 %v_fetch.sroa.62.30.extract.shift1487, %v_column.sroa.50.0.insert.shift1217, !dbg !225
  %224 = lshr i64 %210, 32, !dbg !225
  %v_column.sroa.34.0.insert.shift1142 = and i64 %224, 4294901760, !dbg !225
  %v_column.sroa.34.0.insert.insert1144 = or disjoint i64 %v_column.sroa.50.0.insert.insert1219, %v_column.sroa.34.0.insert.shift1142, !dbg !225
  %v_column.sroa.0.0.insert.insert1077 = or disjoint i64 %v_column.sroa.34.0.insert.insert1144, %v_fetch.sroa.0.6.extract.shift1388, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1077, ptr addrspace(3) %add.ptr504.3.1, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add521.11012 = or disjoint i32 %mul514, %mul520, !dbg !233
  %225 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.11012, !dbg !234
  %add.ptr531.idx.11013 = shl nuw nsw i32 %174, 3, !dbg !234
  %add.ptr531.11014 = getelementptr inbounds i8, ptr addrspace(3) %225, i32 %add.ptr531.idx.11013, !dbg !234
  %226 = load <4 x half>, ptr addrspace(3) %add.ptr531.11014, align 8, !dbg !235
  %add516.1.1 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.1.1 = or disjoint i32 %add516.1.1, 64, !dbg !233
  %227 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.1.1, !dbg !234
  %xor527.1.1 = shl nuw nsw i32 %174, 3, !dbg !234
  %add.ptr531.idx.1.1 = xor i32 %xor527.1.1, 8, !dbg !234
  %add.ptr531.1.1 = getelementptr inbounds i8, ptr addrspace(3) %227, i32 %add.ptr531.idx.1.1, !dbg !234
  %228 = load <4 x half>, ptr addrspace(3) %add.ptr531.1.1, align 8, !dbg !235
  %add516.2.1 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.2.1 = or disjoint i32 %add516.2.1, 128, !dbg !233
  %229 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.2.1, !dbg !234
  %xor527.2.1 = shl nuw nsw i32 %174, 3, !dbg !234
  %add.ptr531.idx.2.1 = xor i32 %xor527.2.1, 16, !dbg !234
  %add.ptr531.2.1 = getelementptr inbounds i8, ptr addrspace(3) %229, i32 %add.ptr531.idx.2.1, !dbg !234
  %230 = load <4 x half>, ptr addrspace(3) %add.ptr531.2.1, align 8, !dbg !235
  %add516.3.1 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.3.1 = or disjoint i32 %add516.3.1, 192, !dbg !233
  %231 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.3.1, !dbg !234
  %xor527.3.1 = shl nuw nsw i32 %174, 3, !dbg !234
  %add.ptr531.idx.3.1 = xor i32 %xor527.3.1, 24, !dbg !234
  %add.ptr531.3.1 = getelementptr inbounds i8, ptr addrspace(3) %231, i32 %add.ptr531.idx.3.1, !dbg !234
  %232 = load <4 x half>, ptr addrspace(3) %add.ptr531.3.1, align 8, !dbg !235
  %233 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %226, <4 x half> %170, <4 x float> %numerator.sroa.0.0), !dbg !236
  %234 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %228, <4 x half> %170, <4 x float> %numerator.sroa.26.0), !dbg !236
  %235 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %230, <4 x half> %170, <4 x float> %numerator.sroa.50.0), !dbg !236
  %236 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %232, <4 x half> %170, <4 x float> %numerator.sroa.74.0), !dbg !236
  br label %if.end558.1, !dbg !237

if.end558.1:                                      ; preds = %if.then442.1, %if.end558
  %numerator.sroa.74.1 = phi <4 x float> [ %numerator.sroa.74.0, %if.end558 ], [ %236, %if.then442.1 ], !dbg !210
  %numerator.sroa.50.1 = phi <4 x float> [ %numerator.sroa.50.0, %if.end558 ], [ %235, %if.then442.1 ], !dbg !210
  %numerator.sroa.26.1 = phi <4 x float> [ %numerator.sroa.26.0, %if.end558 ], [ %234, %if.then442.1 ], !dbg !210
  %numerator.sroa.0.1 = phi <4 x float> [ %numerator.sroa.0.0, %if.end558 ], [ %233, %if.then442.1 ], !dbg !210
  %237 = load i32, ptr addrspace(1) %arrayidx125.2, align 4, !dbg !213, !tbaa !30
  %or.cond887.2 = icmp ugt i32 %237, %invariant.umin, !dbg !214
  br i1 %or.cond887.2, label %if.end558.2, label %if.then442.2, !dbg !214

if.then442.2:                                     ; preds = %if.end558.1
  fence syncscope("warp") release, !dbg !215
  tail call void @llvm.mxc.barrier.warp(), !dbg !218
  fence syncscope("warp") acquire, !dbg !219
  %mul449.2 = shl nuw nsw i32 %237, 10
  %add456.2 = add nuw nsw i32 %add454, %mul449.2
  %238 = zext nneg i32 %add456.2 to i64, !dbg !220
  %add.ptr462.21015 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %238, !dbg !221
  %239 = load i64, ptr addrspace(4) %add.ptr462.21015, align 8, !dbg !222
  %240 = or disjoint i64 %238, 64, !dbg !223
  %add.ptr462.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %240, !dbg !221
  %241 = load i64, ptr addrspace(4) %add.ptr462.1.2, align 8, !dbg !222
  %242 = or disjoint i64 %238, 128, !dbg !223
  %add.ptr462.2.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %242, !dbg !221
  %243 = load i64, ptr addrspace(4) %add.ptr462.2.2, align 8, !dbg !222
  %244 = or disjoint i64 %238, 192, !dbg !223
  %add.ptr462.3.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %244, !dbg !221
  %245 = load i64, ptr addrspace(4) %add.ptr462.3.2, align 8, !dbg !222
  %246 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul492, !dbg !224
  %add.ptr504.idx.21022 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.21023 = getelementptr inbounds i8, ptr addrspace(3) %246, i32 %add.ptr504.idx.21022, !dbg !224
  %v_column.sroa.66.0.insert.ext1296 = shl i64 %245, 48, !dbg !225
  %v_column.sroa.50.0.insert.ext1221 = shl i64 %243, 32, !dbg !225
  %v_column.sroa.50.0.insert.shift1222 = and i64 %v_column.sroa.50.0.insert.ext1221, 281470681743360, !dbg !225
  %v_column.sroa.50.0.insert.insert1224 = or disjoint i64 %v_column.sroa.66.0.insert.ext1296, %v_column.sroa.50.0.insert.shift1222, !dbg !225
  %v_column.sroa.34.0.insert.ext1146 = shl i64 %241, 16, !dbg !225
  %v_column.sroa.34.0.insert.shift1147 = and i64 %v_column.sroa.34.0.insert.ext1146, 4294901760, !dbg !225
  %v_column.sroa.34.0.insert.insert1149 = or disjoint i64 %v_column.sroa.50.0.insert.insert1224, %v_column.sroa.34.0.insert.shift1147, !dbg !225
  %v_column.sroa.0.0.insert.ext1079 = and i64 %239, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1081 = or disjoint i64 %v_column.sroa.34.0.insert.insert1149, %v_column.sroa.0.0.insert.ext1079, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1081, ptr addrspace(3) %add.ptr504.21023, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1373 = lshr i64 %239, 16, !dbg !226
  %add493.1.2 = or disjoint i32 %mul492, 256, !dbg !227
  %247 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.1.2, !dbg !224
  %xor500.1.2 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.1.2 = xor i32 %xor500.1.2, 8, !dbg !224
  %add.ptr504.1.2 = getelementptr inbounds i8, ptr addrspace(3) %247, i32 %add.ptr504.idx.1.2, !dbg !224
  %248 = shl i64 %245, 32, !dbg !225
  %v_column.sroa.66.0.insert.ext1301 = and i64 %248, -281474976710656, !dbg !225
  %249 = shl i64 %243, 16, !dbg !225
  %v_column.sroa.50.0.insert.shift1227 = and i64 %249, 281470681743360, !dbg !225
  %v_column.sroa.50.0.insert.insert1229 = or disjoint i64 %v_column.sroa.66.0.insert.ext1301, %v_column.sroa.50.0.insert.shift1227, !dbg !225
  %v_column.sroa.34.0.insert.ext1151 = and i64 %241, 4294901760, !dbg !225
  %v_column.sroa.34.0.insert.insert1154 = or disjoint i64 %v_column.sroa.50.0.insert.insert1229, %v_column.sroa.34.0.insert.ext1151, !dbg !225
  %v_column.sroa.0.0.insert.ext1083 = and i64 %v_fetch.sroa.0.2.extract.shift1373, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1085 = or disjoint i64 %v_column.sroa.34.0.insert.insert1154, %v_column.sroa.0.0.insert.ext1083, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1085, ptr addrspace(3) %add.ptr504.1.2, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1382 = lshr i64 %239, 32, !dbg !226
  %add493.2.2 = or disjoint i32 %mul492, 512, !dbg !227
  %250 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.2.2, !dbg !224
  %xor500.2.2 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.2.2 = xor i32 %xor500.2.2, 16, !dbg !224
  %add.ptr504.2.2 = getelementptr inbounds i8, ptr addrspace(3) %250, i32 %add.ptr504.idx.2.2, !dbg !224
  %251 = shl i64 %245, 16, !dbg !225
  %v_column.sroa.66.0.insert.ext1306 = and i64 %251, -281474976710656, !dbg !225
  %v_column.sroa.50.0.insert.ext1231 = and i64 %243, 281470681743360, !dbg !225
  %v_column.sroa.50.0.insert.insert1234 = or disjoint i64 %v_column.sroa.66.0.insert.ext1306, %v_column.sroa.50.0.insert.ext1231, !dbg !225
  %252 = lshr i64 %241, 16, !dbg !225
  %v_column.sroa.34.0.insert.shift1157 = and i64 %252, 4294901760, !dbg !225
  %v_column.sroa.34.0.insert.insert1159 = or disjoint i64 %v_column.sroa.50.0.insert.insert1234, %v_column.sroa.34.0.insert.shift1157, !dbg !225
  %v_column.sroa.0.0.insert.ext1087 = and i64 %v_fetch.sroa.0.4.extract.shift1382, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1089 = or disjoint i64 %v_column.sroa.34.0.insert.insert1159, %v_column.sroa.0.0.insert.ext1087, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1089, ptr addrspace(3) %add.ptr504.2.2, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1391 = lshr i64 %239, 48, !dbg !226
  %v_fetch.sroa.62.30.extract.shift1490 = and i64 %245, -281474976710656, !dbg !225
  %add493.3.2 = or disjoint i32 %mul492, 768, !dbg !227
  %253 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.3.2, !dbg !224
  %xor500.3.2 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.3.2 = xor i32 %xor500.3.2, 24, !dbg !224
  %add.ptr504.3.2 = getelementptr inbounds i8, ptr addrspace(3) %253, i32 %add.ptr504.idx.3.2, !dbg !224
  %254 = lshr i64 %243, 16, !dbg !225
  %v_column.sroa.50.0.insert.shift1237 = and i64 %254, 281470681743360, !dbg !225
  %v_column.sroa.50.0.insert.insert1239 = or disjoint i64 %v_fetch.sroa.62.30.extract.shift1490, %v_column.sroa.50.0.insert.shift1237, !dbg !225
  %255 = lshr i64 %241, 32, !dbg !225
  %v_column.sroa.34.0.insert.shift1162 = and i64 %255, 4294901760, !dbg !225
  %v_column.sroa.34.0.insert.insert1164 = or disjoint i64 %v_column.sroa.50.0.insert.insert1239, %v_column.sroa.34.0.insert.shift1162, !dbg !225
  %v_column.sroa.0.0.insert.insert1093 = or disjoint i64 %v_column.sroa.34.0.insert.insert1164, %v_fetch.sroa.0.6.extract.shift1391, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1093, ptr addrspace(3) %add.ptr504.3.2, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add521.21025 = or disjoint i32 %mul514, %mul520, !dbg !233
  %256 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.21025, !dbg !234
  %add.ptr531.idx.21026 = shl nuw nsw i32 %174, 3, !dbg !234
  %add.ptr531.21027 = getelementptr inbounds i8, ptr addrspace(3) %256, i32 %add.ptr531.idx.21026, !dbg !234
  %257 = load <4 x half>, ptr addrspace(3) %add.ptr531.21027, align 8, !dbg !235
  %add516.1.2 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.1.2 = or disjoint i32 %add516.1.2, 64, !dbg !233
  %258 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.1.2, !dbg !234
  %xor527.1.2 = shl nuw nsw i32 %174, 3, !dbg !234
  %add.ptr531.idx.1.2 = xor i32 %xor527.1.2, 8, !dbg !234
  %add.ptr531.1.2 = getelementptr inbounds i8, ptr addrspace(3) %258, i32 %add.ptr531.idx.1.2, !dbg !234
  %259 = load <4 x half>, ptr addrspace(3) %add.ptr531.1.2, align 8, !dbg !235
  %add516.2.2 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.2.2 = or disjoint i32 %add516.2.2, 128, !dbg !233
  %260 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.2.2, !dbg !234
  %xor527.2.2 = shl nuw nsw i32 %174, 3, !dbg !234
  %add.ptr531.idx.2.2 = xor i32 %xor527.2.2, 16, !dbg !234
  %add.ptr531.2.2 = getelementptr inbounds i8, ptr addrspace(3) %260, i32 %add.ptr531.idx.2.2, !dbg !234
  %261 = load <4 x half>, ptr addrspace(3) %add.ptr531.2.2, align 8, !dbg !235
  %add516.3.2 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.3.2 = or disjoint i32 %add516.3.2, 192, !dbg !233
  %262 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.3.2, !dbg !234
  %xor527.3.2 = shl nuw nsw i32 %174, 3, !dbg !234
  %add.ptr531.idx.3.2 = xor i32 %xor527.3.2, 24, !dbg !234
  %add.ptr531.3.2 = getelementptr inbounds i8, ptr addrspace(3) %262, i32 %add.ptr531.idx.3.2, !dbg !234
  %263 = load <4 x half>, ptr addrspace(3) %add.ptr531.3.2, align 8, !dbg !235
  %264 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %257, <4 x half> %169, <4 x float> %numerator.sroa.0.1), !dbg !236
  %265 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %259, <4 x half> %169, <4 x float> %numerator.sroa.26.1), !dbg !236
  %266 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %261, <4 x half> %169, <4 x float> %numerator.sroa.50.1), !dbg !236
  %267 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %263, <4 x half> %169, <4 x float> %numerator.sroa.74.1), !dbg !236
  br label %if.end558.2, !dbg !237

if.end558.2:                                      ; preds = %if.then442.2, %if.end558.1
  %numerator.sroa.74.2 = phi <4 x float> [ %numerator.sroa.74.1, %if.end558.1 ], [ %267, %if.then442.2 ], !dbg !210
  %numerator.sroa.50.2 = phi <4 x float> [ %numerator.sroa.50.1, %if.end558.1 ], [ %266, %if.then442.2 ], !dbg !210
  %numerator.sroa.26.2 = phi <4 x float> [ %numerator.sroa.26.1, %if.end558.1 ], [ %265, %if.then442.2 ], !dbg !210
  %numerator.sroa.0.2 = phi <4 x float> [ %numerator.sroa.0.1, %if.end558.1 ], [ %264, %if.then442.2 ], !dbg !210
  %268 = load i32, ptr addrspace(1) %arrayidx125.3, align 4, !dbg !213, !tbaa !30
  %or.cond887.3 = icmp ugt i32 %268, %invariant.umin, !dbg !214
  br i1 %or.cond887.3, label %if.end558.3, label %if.then442.3, !dbg !214

if.then442.3:                                     ; preds = %if.end558.2
  fence syncscope("warp") release, !dbg !215
  tail call void @llvm.mxc.barrier.warp(), !dbg !218
  fence syncscope("warp") acquire, !dbg !219
  %mul449.3 = shl nuw nsw i32 %268, 10
  %add456.3 = add nuw nsw i32 %add454, %mul449.3
  %269 = zext nneg i32 %add456.3 to i64, !dbg !220
  %add.ptr462.31028 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %269, !dbg !221
  %270 = load i64, ptr addrspace(4) %add.ptr462.31028, align 8, !dbg !222
  %271 = or disjoint i64 %269, 64, !dbg !223
  %add.ptr462.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %271, !dbg !221
  %272 = load i64, ptr addrspace(4) %add.ptr462.1.3, align 8, !dbg !222
  %273 = or disjoint i64 %269, 128, !dbg !223
  %add.ptr462.2.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %273, !dbg !221
  %274 = load i64, ptr addrspace(4) %add.ptr462.2.3, align 8, !dbg !222
  %275 = or disjoint i64 %269, 192, !dbg !223
  %add.ptr462.3.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %275, !dbg !221
  %276 = load i64, ptr addrspace(4) %add.ptr462.3.3, align 8, !dbg !222
  %277 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul492, !dbg !224
  %add.ptr504.idx.31035 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.31036 = getelementptr inbounds i8, ptr addrspace(3) %277, i32 %add.ptr504.idx.31035, !dbg !224
  %v_column.sroa.66.0.insert.ext1316 = shl i64 %276, 48, !dbg !225
  %v_column.sroa.50.0.insert.ext1241 = shl i64 %274, 32, !dbg !225
  %v_column.sroa.50.0.insert.shift1242 = and i64 %v_column.sroa.50.0.insert.ext1241, 281470681743360, !dbg !225
  %v_column.sroa.50.0.insert.insert1244 = or disjoint i64 %v_column.sroa.66.0.insert.ext1316, %v_column.sroa.50.0.insert.shift1242, !dbg !225
  %v_column.sroa.34.0.insert.ext1166 = shl i64 %272, 16, !dbg !225
  %v_column.sroa.34.0.insert.shift1167 = and i64 %v_column.sroa.34.0.insert.ext1166, 4294901760, !dbg !225
  %v_column.sroa.34.0.insert.insert1169 = or disjoint i64 %v_column.sroa.50.0.insert.insert1244, %v_column.sroa.34.0.insert.shift1167, !dbg !225
  %v_column.sroa.0.0.insert.ext1095 = and i64 %270, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1097 = or disjoint i64 %v_column.sroa.34.0.insert.insert1169, %v_column.sroa.0.0.insert.ext1095, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1097, ptr addrspace(3) %add.ptr504.31036, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1376 = lshr i64 %270, 16, !dbg !226
  %add493.1.3 = or disjoint i32 %mul492, 256, !dbg !227
  %278 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.1.3, !dbg !224
  %xor500.1.3 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.1.3 = xor i32 %xor500.1.3, 8, !dbg !224
  %add.ptr504.1.3 = getelementptr inbounds i8, ptr addrspace(3) %278, i32 %add.ptr504.idx.1.3, !dbg !224
  %279 = shl i64 %276, 32, !dbg !225
  %v_column.sroa.66.0.insert.ext1321 = and i64 %279, -281474976710656, !dbg !225
  %280 = shl i64 %274, 16, !dbg !225
  %v_column.sroa.50.0.insert.shift1247 = and i64 %280, 281470681743360, !dbg !225
  %v_column.sroa.50.0.insert.insert1249 = or disjoint i64 %v_column.sroa.66.0.insert.ext1321, %v_column.sroa.50.0.insert.shift1247, !dbg !225
  %v_column.sroa.34.0.insert.ext1171 = and i64 %272, 4294901760, !dbg !225
  %v_column.sroa.34.0.insert.insert1174 = or disjoint i64 %v_column.sroa.50.0.insert.insert1249, %v_column.sroa.34.0.insert.ext1171, !dbg !225
  %v_column.sroa.0.0.insert.ext1099 = and i64 %v_fetch.sroa.0.2.extract.shift1376, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1101 = or disjoint i64 %v_column.sroa.34.0.insert.insert1174, %v_column.sroa.0.0.insert.ext1099, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1101, ptr addrspace(3) %add.ptr504.1.3, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1385 = lshr i64 %270, 32, !dbg !226
  %add493.2.3 = or disjoint i32 %mul492, 512, !dbg !227
  %281 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.2.3, !dbg !224
  %xor500.2.3 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.2.3 = xor i32 %xor500.2.3, 16, !dbg !224
  %add.ptr504.2.3 = getelementptr inbounds i8, ptr addrspace(3) %281, i32 %add.ptr504.idx.2.3, !dbg !224
  %282 = shl i64 %276, 16, !dbg !225
  %v_column.sroa.66.0.insert.ext1326 = and i64 %282, -281474976710656, !dbg !225
  %v_column.sroa.50.0.insert.ext1251 = and i64 %274, 281470681743360, !dbg !225
  %v_column.sroa.50.0.insert.insert1254 = or disjoint i64 %v_column.sroa.66.0.insert.ext1326, %v_column.sroa.50.0.insert.ext1251, !dbg !225
  %283 = lshr i64 %272, 16, !dbg !225
  %v_column.sroa.34.0.insert.shift1177 = and i64 %283, 4294901760, !dbg !225
  %v_column.sroa.34.0.insert.insert1179 = or disjoint i64 %v_column.sroa.50.0.insert.insert1254, %v_column.sroa.34.0.insert.shift1177, !dbg !225
  %v_column.sroa.0.0.insert.ext1103 = and i64 %v_fetch.sroa.0.4.extract.shift1385, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1105 = or disjoint i64 %v_column.sroa.34.0.insert.insert1179, %v_column.sroa.0.0.insert.ext1103, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1105, ptr addrspace(3) %add.ptr504.2.3, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1394 = lshr i64 %270, 48, !dbg !226
  %v_fetch.sroa.62.30.extract.shift1493 = and i64 %276, -281474976710656, !dbg !225
  %add493.3.3 = or disjoint i32 %mul492, 768, !dbg !227
  %284 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.3.3, !dbg !224
  %xor500.3.3 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.3.3 = xor i32 %xor500.3.3, 24, !dbg !224
  %add.ptr504.3.3 = getelementptr inbounds i8, ptr addrspace(3) %284, i32 %add.ptr504.idx.3.3, !dbg !224
  %285 = lshr i64 %274, 16, !dbg !225
  %v_column.sroa.50.0.insert.shift1257 = and i64 %285, 281470681743360, !dbg !225
  %v_column.sroa.50.0.insert.insert1259 = or disjoint i64 %v_fetch.sroa.62.30.extract.shift1493, %v_column.sroa.50.0.insert.shift1257, !dbg !225
  %286 = lshr i64 %272, 32, !dbg !225
  %v_column.sroa.34.0.insert.shift1182 = and i64 %286, 4294901760, !dbg !225
  %v_column.sroa.34.0.insert.insert1184 = or disjoint i64 %v_column.sroa.50.0.insert.insert1259, %v_column.sroa.34.0.insert.shift1182, !dbg !225
  %v_column.sroa.0.0.insert.insert1109 = or disjoint i64 %v_column.sroa.34.0.insert.insert1184, %v_fetch.sroa.0.6.extract.shift1394, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1109, ptr addrspace(3) %add.ptr504.3.3, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add521.31038 = or disjoint i32 %mul514, %mul520, !dbg !233
  %287 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.31038, !dbg !234
  %add.ptr531.idx.31039 = shl nuw nsw i32 %174, 3, !dbg !234
  %add.ptr531.31040 = getelementptr inbounds i8, ptr addrspace(3) %287, i32 %add.ptr531.idx.31039, !dbg !234
  %288 = load <4 x half>, ptr addrspace(3) %add.ptr531.31040, align 8, !dbg !235
  %add516.1.3 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.1.3 = or disjoint i32 %add516.1.3, 64, !dbg !233
  %289 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.1.3, !dbg !234
  %xor527.1.3 = shl nuw nsw i32 %174, 3, !dbg !234
  %add.ptr531.idx.1.3 = xor i32 %xor527.1.3, 8, !dbg !234
  %add.ptr531.1.3 = getelementptr inbounds i8, ptr addrspace(3) %289, i32 %add.ptr531.idx.1.3, !dbg !234
  %290 = load <4 x half>, ptr addrspace(3) %add.ptr531.1.3, align 8, !dbg !235
  %add516.2.3 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.2.3 = or disjoint i32 %add516.2.3, 128, !dbg !233
  %291 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.2.3, !dbg !234
  %xor527.2.3 = shl nuw nsw i32 %174, 3, !dbg !234
  %add.ptr531.idx.2.3 = xor i32 %xor527.2.3, 16, !dbg !234
  %add.ptr531.2.3 = getelementptr inbounds i8, ptr addrspace(3) %291, i32 %add.ptr531.idx.2.3, !dbg !234
  %292 = load <4 x half>, ptr addrspace(3) %add.ptr531.2.3, align 8, !dbg !235
  %add516.3.3 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.3.3 = or disjoint i32 %add516.3.3, 192, !dbg !233
  %293 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.3.3, !dbg !234
  %xor527.3.3 = shl nuw nsw i32 %174, 3, !dbg !234
  %add.ptr531.idx.3.3 = xor i32 %xor527.3.3, 24, !dbg !234
  %add.ptr531.3.3 = getelementptr inbounds i8, ptr addrspace(3) %293, i32 %add.ptr531.idx.3.3, !dbg !234
  %294 = load <4 x half>, ptr addrspace(3) %add.ptr531.3.3, align 8, !dbg !235
  %295 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %288, <4 x half> %168, <4 x float> %numerator.sroa.0.2), !dbg !236
  %296 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %290, <4 x half> %168, <4 x float> %numerator.sroa.26.2), !dbg !236
  %297 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %292, <4 x half> %168, <4 x float> %numerator.sroa.50.2), !dbg !236
  %298 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %294, <4 x half> %168, <4 x float> %numerator.sroa.74.2), !dbg !236
  br label %if.end558.3, !dbg !237

if.end558.3:                                      ; preds = %if.then442.3, %if.end558.2
  %numerator.sroa.74.3 = phi <4 x float> [ %numerator.sroa.74.2, %if.end558.2 ], [ %298, %if.then442.3 ], !dbg !210
  %numerator.sroa.50.3 = phi <4 x float> [ %numerator.sroa.50.2, %if.end558.2 ], [ %297, %if.then442.3 ], !dbg !210
  %numerator.sroa.26.3 = phi <4 x float> [ %numerator.sroa.26.2, %if.end558.2 ], [ %296, %if.then442.3 ], !dbg !210
  %numerator.sroa.0.3 = phi <4 x float> [ %numerator.sroa.0.2, %if.end558.2 ], [ %295, %if.then442.3 ], !dbg !210
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.3, i64 0, !dbg !238
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.3, i64 1, !dbg !238
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.3, i64 2, !dbg !238
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.3, i64 3, !dbg !238
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %denominator.sroa.0.1, !dbg !239
  %div580 = fdiv contract float %numerator.sroa.0.4.vec.extract, %denominator.sroa.0.1, !dbg !240
  %div584 = fdiv contract float %numerator.sroa.0.8.vec.extract, %denominator.sroa.0.1, !dbg !241
  %div588 = fdiv contract float %numerator.sroa.0.12.vec.extract, %denominator.sroa.0.1, !dbg !242
  %numerator.sroa.26.16.vec.extract = extractelement <4 x float> %numerator.sroa.26.3, i64 0, !dbg !238
  %numerator.sroa.26.20.vec.extract = extractelement <4 x float> %numerator.sroa.26.3, i64 1, !dbg !238
  %numerator.sroa.26.24.vec.extract = extractelement <4 x float> %numerator.sroa.26.3, i64 2, !dbg !238
  %numerator.sroa.26.28.vec.extract = extractelement <4 x float> %numerator.sroa.26.3, i64 3, !dbg !238
  %div.1 = fdiv contract float %numerator.sroa.26.16.vec.extract, %denominator.sroa.0.1, !dbg !239
  %div580.1 = fdiv contract float %numerator.sroa.26.20.vec.extract, %denominator.sroa.0.1, !dbg !240
  %div584.1 = fdiv contract float %numerator.sroa.26.24.vec.extract, %denominator.sroa.0.1, !dbg !241
  %div588.1 = fdiv contract float %numerator.sroa.26.28.vec.extract, %denominator.sroa.0.1, !dbg !242
  %numerator.sroa.50.32.vec.extract = extractelement <4 x float> %numerator.sroa.50.3, i64 0, !dbg !238
  %numerator.sroa.50.36.vec.extract = extractelement <4 x float> %numerator.sroa.50.3, i64 1, !dbg !238
  %numerator.sroa.50.40.vec.extract = extractelement <4 x float> %numerator.sroa.50.3, i64 2, !dbg !238
  %numerator.sroa.50.44.vec.extract = extractelement <4 x float> %numerator.sroa.50.3, i64 3, !dbg !238
  %div.2 = fdiv contract float %numerator.sroa.50.32.vec.extract, %denominator.sroa.0.1, !dbg !239
  %div580.2 = fdiv contract float %numerator.sroa.50.36.vec.extract, %denominator.sroa.0.1, !dbg !240
  %div584.2 = fdiv contract float %numerator.sroa.50.40.vec.extract, %denominator.sroa.0.1, !dbg !241
  %div588.2 = fdiv contract float %numerator.sroa.50.44.vec.extract, %denominator.sroa.0.1, !dbg !242
  %numerator.sroa.74.48.vec.extract = extractelement <4 x float> %numerator.sroa.74.3, i64 0, !dbg !238
  %numerator.sroa.74.52.vec.extract = extractelement <4 x float> %numerator.sroa.74.3, i64 1, !dbg !238
  %numerator.sroa.74.56.vec.extract = extractelement <4 x float> %numerator.sroa.74.3, i64 2, !dbg !238
  %numerator.sroa.74.60.vec.extract = extractelement <4 x float> %numerator.sroa.74.3, i64 3, !dbg !238
  %div.3 = fdiv contract float %numerator.sroa.74.48.vec.extract, %denominator.sroa.0.1, !dbg !239
  %div580.3 = fdiv contract float %numerator.sroa.74.52.vec.extract, %denominator.sroa.0.1, !dbg !240
  %div584.3 = fdiv contract float %numerator.sroa.74.56.vec.extract, %denominator.sroa.0.1, !dbg !241
  %div588.3 = fdiv contract float %numerator.sroa.74.60.vec.extract, %denominator.sroa.0.1, !dbg !242
  fence syncscope("warp") release, !dbg !243
  tail call void @llvm.mxc.barrier.warp(), !dbg !246
  fence syncscope("warp") acquire, !dbg !247
  %xor637 = shl nuw nsw i32 %8, 2
  %mul638 = and i32 %xor637, 4
  %299 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !248, !noalias !252
  %300 = fptrunc float %div to half, !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %299), !dbg !248, !noalias !252
  %301 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !252
  %302 = fptrunc float %div580 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %301), !dbg !257, !noalias !252
  %303 = bitcast half %300 to i16, !dbg !259
  %304 = bitcast half %302 to i16, !dbg !262
  %305 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !267
  %306 = fptrunc float %div584 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %305), !dbg !263, !noalias !267
  %307 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !267
  %308 = fptrunc float %div588 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %307), !dbg !272, !noalias !267
  %309 = bitcast half %306 to i16, !dbg !274
  %310 = bitcast half %308 to i16, !dbg !276
  %__7.sroa.6.0.insert.ext = zext i16 %310 to i64, !dbg !277
  %__7.sroa.6.0.insert.shift = shl nuw i64 %__7.sroa.6.0.insert.ext, 48, !dbg !277
  %__7.sroa.5.0.insert.ext = zext i16 %309 to i64, !dbg !277
  %__7.sroa.5.0.insert.shift = shl nuw nsw i64 %__7.sroa.5.0.insert.ext, 32, !dbg !277
  %__7.sroa.5.0.insert.insert = or disjoint i64 %__7.sroa.6.0.insert.shift, %__7.sroa.5.0.insert.shift, !dbg !277
  %__7.sroa.4.0.insert.ext = zext i16 %304 to i64, !dbg !277
  %__7.sroa.4.0.insert.shift = shl nuw nsw i64 %__7.sroa.4.0.insert.ext, 16, !dbg !277
  %__7.sroa.4.0.insert.insert = or disjoint i64 %__7.sroa.5.0.insert.insert, %__7.sroa.4.0.insert.shift, !dbg !277
  %__7.sroa.0.0.insert.ext = zext i16 %303 to i64, !dbg !277
  %__7.sroa.0.0.insert.insert = or disjoint i64 %__7.sroa.4.0.insert.insert, %__7.sroa.0.0.insert.ext, !dbg !277
  %add639 = or disjoint i32 %add58, %mul638, !dbg !278
  %add.ptr641 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add639, !dbg !279
  store i64 %__7.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr641, align 8, !dbg !280
  %311 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !248, !noalias !252
  %312 = fptrunc float %div.1 to half, !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %311), !dbg !248, !noalias !252
  %313 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !252
  %314 = fptrunc float %div580.1 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %313), !dbg !257, !noalias !252
  %315 = bitcast half %312 to i16, !dbg !259
  %316 = bitcast half %314 to i16, !dbg !262
  %317 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !267
  %318 = fptrunc float %div584.1 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %317), !dbg !263, !noalias !267
  %319 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !267
  %320 = fptrunc float %div588.1 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %319), !dbg !272, !noalias !267
  %321 = bitcast half %318 to i16, !dbg !274
  %322 = bitcast half %320 to i16, !dbg !276
  %__7.sroa.6.0.insert.ext.1 = zext i16 %322 to i64, !dbg !277
  %__7.sroa.6.0.insert.shift.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.1, 48, !dbg !277
  %__7.sroa.5.0.insert.ext.1 = zext i16 %321 to i64, !dbg !277
  %__7.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1, 32, !dbg !277
  %__7.sroa.5.0.insert.insert.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.1, %__7.sroa.5.0.insert.shift.1, !dbg !277
  %__7.sroa.4.0.insert.ext.1 = zext i16 %316 to i64, !dbg !277
  %__7.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1, 16, !dbg !277
  %__7.sroa.4.0.insert.insert.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.1, %__7.sroa.4.0.insert.shift.1, !dbg !277
  %__7.sroa.0.0.insert.ext.1 = zext i16 %315 to i64, !dbg !277
  %__7.sroa.0.0.insert.insert.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.1, %__7.sroa.0.0.insert.ext.1, !dbg !277
  %add639.1 = or disjoint i32 %add58.1, %mul638, !dbg !278
  %add.ptr641.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add639.1, !dbg !279
  store i64 %__7.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr641.1, align 8, !dbg !280
  %323 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !248, !noalias !252
  %324 = fptrunc float %div.2 to half, !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %323), !dbg !248, !noalias !252
  %325 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !252
  %326 = fptrunc float %div580.2 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %325), !dbg !257, !noalias !252
  %327 = bitcast half %324 to i16, !dbg !259
  %328 = bitcast half %326 to i16, !dbg !262
  %329 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !267
  %330 = fptrunc float %div584.2 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %329), !dbg !263, !noalias !267
  %331 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !267
  %332 = fptrunc float %div588.2 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %331), !dbg !272, !noalias !267
  %333 = bitcast half %330 to i16, !dbg !274
  %334 = bitcast half %332 to i16, !dbg !276
  %__7.sroa.6.0.insert.ext.2 = zext i16 %334 to i64, !dbg !277
  %__7.sroa.6.0.insert.shift.2 = shl nuw i64 %__7.sroa.6.0.insert.ext.2, 48, !dbg !277
  %__7.sroa.5.0.insert.ext.2 = zext i16 %333 to i64, !dbg !277
  %__7.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.2, 32, !dbg !277
  %__7.sroa.5.0.insert.insert.2 = or disjoint i64 %__7.sroa.6.0.insert.shift.2, %__7.sroa.5.0.insert.shift.2, !dbg !277
  %__7.sroa.4.0.insert.ext.2 = zext i16 %328 to i64, !dbg !277
  %__7.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.2, 16, !dbg !277
  %__7.sroa.4.0.insert.insert.2 = or disjoint i64 %__7.sroa.5.0.insert.insert.2, %__7.sroa.4.0.insert.shift.2, !dbg !277
  %__7.sroa.0.0.insert.ext.2 = zext i16 %327 to i64, !dbg !277
  %__7.sroa.0.0.insert.insert.2 = or disjoint i64 %__7.sroa.4.0.insert.insert.2, %__7.sroa.0.0.insert.ext.2, !dbg !277
  %add639.2 = or disjoint i32 %add58.2, %mul638, !dbg !278
  %add.ptr641.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add639.2, !dbg !279
  store i64 %__7.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr641.2, align 8, !dbg !280
  %335 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !248, !noalias !252
  %336 = fptrunc float %div.3 to half, !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %335), !dbg !248, !noalias !252
  %337 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !252
  %338 = fptrunc float %div580.3 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %337), !dbg !257, !noalias !252
  %339 = bitcast half %336 to i16, !dbg !259
  %340 = bitcast half %338 to i16, !dbg !262
  %341 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !267
  %342 = fptrunc float %div584.3 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %341), !dbg !263, !noalias !267
  %343 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !267
  %344 = fptrunc float %div588.3 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %343), !dbg !272, !noalias !267
  %345 = bitcast half %342 to i16, !dbg !274
  %346 = bitcast half %344 to i16, !dbg !276
  %__7.sroa.6.0.insert.ext.3 = zext i16 %346 to i64, !dbg !277
  %__7.sroa.6.0.insert.shift.3 = shl nuw i64 %__7.sroa.6.0.insert.ext.3, 48, !dbg !277
  %__7.sroa.5.0.insert.ext.3 = zext i16 %345 to i64, !dbg !277
  %__7.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.3, 32, !dbg !277
  %__7.sroa.5.0.insert.insert.3 = or disjoint i64 %__7.sroa.6.0.insert.shift.3, %__7.sroa.5.0.insert.shift.3, !dbg !277
  %__7.sroa.4.0.insert.ext.3 = zext i16 %340 to i64, !dbg !277
  %__7.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.3, 16, !dbg !277
  %__7.sroa.4.0.insert.insert.3 = or disjoint i64 %__7.sroa.5.0.insert.insert.3, %__7.sroa.4.0.insert.shift.3, !dbg !277
  %__7.sroa.0.0.insert.ext.3 = zext i16 %339 to i64, !dbg !277
  %__7.sroa.0.0.insert.insert.3 = or disjoint i64 %__7.sroa.4.0.insert.insert.3, %__7.sroa.0.0.insert.ext.3, !dbg !277
  %add639.3 = or disjoint i32 %add58.3, %mul638, !dbg !278
  %add.ptr641.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add639.3, !dbg !279
  store i64 %__7.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr641.3, align 8, !dbg !280
  fence syncscope("warp") release, !dbg !281
  tail call void @llvm.mxc.barrier.warp(), !dbg !284
  fence syncscope("warp") acquire, !dbg !285
  %347 = load i64, ptr addrspace(3) %5, align 16, !dbg !286
  %add.ptr669.1 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 8, !dbg !287
  %348 = load i64, ptr addrspace(3) %add.ptr669.1, align 8, !dbg !286
  %add.ptr690 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !288
  store i64 %347, ptr addrspace(1) %add.ptr690, align 16, !dbg !289
  %output_fetch.sroa.6.0.add.ptr690.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr690, i64 8, !dbg !289
  store i64 %348, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr690.sroa_idx, align 8, !dbg !289
  %add.ptr669.11047 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 1032, !dbg !287
  %349 = load i64, ptr addrspace(3) %add.ptr669.11047, align 8, !dbg !286
  %350 = load i64, ptr addrspace(3) %7, align 16, !dbg !286
  %add.ptr690.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %6, !dbg !288
  store i64 %349, ptr addrspace(1) %add.ptr690.1, align 16, !dbg !289
  %output_fetch.sroa.6.0.add.ptr690.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr690.1, i64 8, !dbg !289
  store i64 %350, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr690.1.sroa_idx, align 8, !dbg !289
  ret void, !dbg !290
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v113_worker1_s4_global_softmax_sc-16g-2/codegen/power_v113/case11.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v113_worker1_s4_global_softmax_sc-16g-2/codegen/power_v113/case11.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 27, column: 3, scope: !40)
!44 = !DILocation(line: 28, column: 43, scope: !40)
!45 = !DILocation(line: 28, column: 29, scope: !40)
!46 = !DILocation(line: 31, column: 24, scope: !40)
!47 = !DILocation(line: 31, column: 203, scope: !40)
!48 = !DILocation(line: 28, column: 123, scope: !40)
!49 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !52)
!50 = distinct !DISubprogram(name: "__barrier_warp", scope: !51, file: !51, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!51 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!52 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !54)
!53 = distinct !DISubprogram(name: "__syncwarp", scope: !51, file: !51, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!54 = distinct !DILocation(line: 34, column: 3, scope: !40)
!55 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !52)
!56 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !52)
!57 = !DILocation(line: 37, column: 140, scope: !40)
!58 = !DILocation(line: 37, column: 168, scope: !40)
!59 = !DILocation(line: 37, column: 94, scope: !40)
!60 = !DILocation(line: 37, column: 174, scope: !40)
!61 = !DILocation(line: 37, column: 57, scope: !40)
!62 = !DILocation(line: 37, column: 38, scope: !40)
!63 = !DILocation(line: 37, column: 111, scope: !40)
!64 = !DILocation(line: 52, column: 3, scope: !40)
!65 = !DILocation(line: 53, column: 21, scope: !40)
!66 = !DILocation(line: 54, column: 27, scope: !40)
!67 = !DILocation(line: 95, column: 36, scope: !40)
!68 = !DILocation(line: 351, column: 10, scope: !69, inlinedAt: !71)
!69 = distinct !DISubprogram(name: "max", scope: !70, file: !70, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!70 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!71 = distinct !DILocation(line: 95, column: 20, scope: !40)
!72 = !DILocation(line: 1018, column: 9, scope: !73, inlinedAt: !74)
!73 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!74 = distinct !DILocation(line: 97, column: 34, scope: !40)
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
!89 = distinct !DILocation(line: 97, column: 18, scope: !40)
!90 = !DILocation(line: 1018, column: 9, scope: !73, inlinedAt: !91)
!91 = distinct !DILocation(line: 98, column: 34, scope: !40)
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
!104 = distinct !DILocation(line: 98, column: 18, scope: !40)
!105 = !DILocation(line: 110, column: 26, scope: !40)
!106 = !DILocation(line: 111, column: 26, scope: !40)
!107 = !DILocation(line: 112, column: 26, scope: !40)
!108 = !DILocation(line: 113, column: 26, scope: !40)
!109 = !DILocation(line: 115, column: 25, scope: !40)
!110 = !DILocation(line: 116, column: 25, scope: !40)
!111 = !DILocation(line: 117, column: 25, scope: !40)
!112 = !DILocation(line: 118, column: 25, scope: !40)
!113 = !DILocation(line: 120, column: 23, scope: !40)
!114 = !DILocation(line: 121, column: 23, scope: !40)
!115 = !DILocation(line: 122, column: 23, scope: !40)
!116 = !DILocation(line: 123, column: 23, scope: !40)
!117 = !DILocation(line: 285, column: 49, scope: !118, inlinedAt: !119)
!118 = distinct !DISubprogram(name: "exp2f", scope: !70, file: !70, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!119 = distinct !DILocation(line: 124, column: 15, scope: !40)
!120 = !DILocation(line: 285, column: 49, scope: !118, inlinedAt: !121)
!121 = distinct !DILocation(line: 125, column: 15, scope: !40)
!122 = !DILocation(line: 285, column: 49, scope: !118, inlinedAt: !123)
!123 = distinct !DILocation(line: 126, column: 15, scope: !40)
!124 = !DILocation(line: 285, column: 49, scope: !118, inlinedAt: !125)
!125 = distinct !DILocation(line: 127, column: 15, scope: !40)
!126 = !DILocation(line: 1007, column: 10, scope: !127, inlinedAt: !129)
!127 = distinct !DISubprogram(name: "__float2half_rn", scope: !128, file: !128, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!128 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!129 = distinct !DILocation(line: 1077, column: 18, scope: !130, inlinedAt: !131)
!130 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !128, file: !128, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!131 = distinct !DILocation(line: 1295, column: 23, scope: !132, inlinedAt: !133)
!132 = distinct !DISubprogram(name: "__float22half2_rn", scope: !128, file: !128, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!133 = distinct !DILocation(line: 128, column: 29, scope: !40)
!134 = !{!135, !137}
!135 = distinct !{!135, !136, !"_ZL17__floats2half2_rnff: %agg.result"}
!136 = distinct !{!136, !"_ZL17__floats2half2_rnff"}
!137 = distinct !{!137, !138, !"_ZL17__float22half2_rn6float2: %agg.result"}
!138 = distinct !{!138, !"_ZL17__float22half2_rn6float2"}
!139 = !DILocation(line: 1007, column: 10, scope: !127, inlinedAt: !140)
!140 = distinct !DILocation(line: 1077, column: 38, scope: !130, inlinedAt: !131)
!141 = !DILocation(line: 1007, column: 10, scope: !127, inlinedAt: !142)
!142 = distinct !DILocation(line: 1077, column: 18, scope: !130, inlinedAt: !143)
!143 = distinct !DILocation(line: 1295, column: 23, scope: !132, inlinedAt: !144)
!144 = distinct !DILocation(line: 129, column: 29, scope: !40)
!145 = !{!146, !148}
!146 = distinct !{!146, !147, !"_ZL17__floats2half2_rnff: %agg.result"}
!147 = distinct !{!147, !"_ZL17__floats2half2_rnff"}
!148 = distinct !{!148, !149, !"_ZL17__float22half2_rn6float2: %agg.result"}
!149 = distinct !{!149, !"_ZL17__float22half2_rn6float2"}
!150 = !DILocation(line: 1007, column: 10, scope: !127, inlinedAt: !151)
!151 = distinct !DILocation(line: 1077, column: 38, scope: !130, inlinedAt: !143)
!152 = !DILocation(line: 130, column: 51, scope: !40)
!153 = !DILocation(line: 108, column: 25, scope: !40)
!154 = !DILocation(line: 1082, column: 16, scope: !155, inlinedAt: !156)
!155 = distinct !DISubprogram(name: "__half2float", scope: !128, file: !128, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!156 = distinct !DILocation(line: 136, column: 55, scope: !157, inlinedAt: !158)
!157 = distinct !DISubprogram(name: "operator float", scope: !128, file: !128, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!158 = distinct !DILocation(line: 134, column: 50, scope: !40)
!159 = !DILocation(line: 134, column: 40, scope: !40)
!160 = !DILocation(line: 1018, column: 9, scope: !73, inlinedAt: !161)
!161 = distinct !DILocation(line: 136, column: 40, scope: !40)
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
!173 = !DILocation(line: 136, column: 38, scope: !40)
!174 = !DILocation(line: 1018, column: 9, scope: !73, inlinedAt: !175)
!175 = distinct !DILocation(line: 137, column: 40, scope: !40)
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
!187 = !DILocation(line: 137, column: 38, scope: !40)
!188 = !DILocation(line: 138, column: 3, scope: !40)
!189 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !190)
!190 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !191)
!191 = distinct !DILocation(line: 56, column: 7, scope: !40)
!192 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !190)
!193 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !190)
!194 = !DILocation(line: 58, column: 7, scope: !40)
!195 = !DILocation(line: 59, column: 47, scope: !40)
!196 = !DILocation(line: 59, column: 33, scope: !40)
!197 = !DILocation(line: 62, column: 213, scope: !40)
!198 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !199)
!199 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !200)
!200 = distinct !DILocation(line: 65, column: 7, scope: !40)
!201 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !199)
!202 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !199)
!203 = !DILocation(line: 72, column: 32, scope: !40)
!204 = !DILocation(line: 74, column: 44, scope: !40)
!205 = !DILocation(line: 82, column: 81, scope: !40)
!206 = !DILocation(line: 82, column: 13, scope: !40)
!207 = !DILocation(line: 87, column: 46, scope: !40)
!208 = !DILocation(line: 82, column: 68, scope: !40)
!209 = !DILocation(line: 52, column: 40, scope: !40)
!210 = !DILocation(line: 0, scope: !40)
!211 = !DILocation(line: 53, column: 85, scope: !40)
!212 = !DILocation(line: 91, column: 7, scope: !40)
!213 = !DILocation(line: 146, column: 23, scope: !40)
!214 = !DILocation(line: 147, column: 29, scope: !40)
!215 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !216)
!216 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !217)
!217 = distinct !DILocation(line: 148, column: 7, scope: !40)
!218 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !216)
!219 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !216)
!220 = !DILocation(line: 150, column: 7, scope: !40)
!221 = !DILocation(line: 151, column: 54, scope: !40)
!222 = !DILocation(line: 151, column: 40, scope: !40)
!223 = !DILocation(line: 151, column: 163, scope: !40)
!224 = !DILocation(line: 158, column: 26, scope: !40)
!225 = !DILocation(line: 158, column: 159, scope: !40)
!226 = !DILocation(line: 156, column: 27, scope: !40)
!227 = !DILocation(line: 158, column: 42, scope: !40)
!228 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !229)
!229 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !230)
!230 = distinct !DILocation(line: 160, column: 7, scope: !40)
!231 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !229)
!232 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !229)
!233 = !DILocation(line: 163, column: 121, scope: !40)
!234 = !DILocation(line: 163, column: 65, scope: !40)
!235 = !DILocation(line: 163, column: 46, scope: !40)
!236 = !DILocation(line: 168, column: 46, scope: !40)
!237 = !DILocation(line: 145, column: 44, scope: !40)
!238 = !DILocation(line: 178, column: 21, scope: !40)
!239 = !DILocation(line: 180, column: 22, scope: !40)
!240 = !DILocation(line: 181, column: 22, scope: !40)
!241 = !DILocation(line: 182, column: 22, scope: !40)
!242 = !DILocation(line: 183, column: 22, scope: !40)
!243 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !244)
!244 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !245)
!245 = distinct !DILocation(line: 186, column: 3, scope: !40)
!246 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !244)
!247 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !244)
!248 = !DILocation(line: 1007, column: 10, scope: !127, inlinedAt: !249)
!249 = distinct !DILocation(line: 1077, column: 18, scope: !130, inlinedAt: !250)
!250 = distinct !DILocation(line: 1295, column: 23, scope: !132, inlinedAt: !251)
!251 = distinct !DILocation(line: 191, column: 27, scope: !40)
!252 = !{!253, !255}
!253 = distinct !{!253, !254, !"_ZL17__floats2half2_rnff: %agg.result"}
!254 = distinct !{!254, !"_ZL17__floats2half2_rnff"}
!255 = distinct !{!255, !256, !"_ZL17__float22half2_rn6float2: %agg.result"}
!256 = distinct !{!256, !"_ZL17__float22half2_rn6float2"}
!257 = !DILocation(line: 1007, column: 10, scope: !127, inlinedAt: !258)
!258 = distinct !DILocation(line: 1077, column: 38, scope: !130, inlinedAt: !250)
!259 = !DILocation(line: 596, column: 67, scope: !260, inlinedAt: !261)
!260 = distinct !DISubprogram(name: "__half2", scope: !128, file: !128, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!261 = distinct !DILocation(line: 1077, column: 10, scope: !130, inlinedAt: !250)
!262 = !DILocation(line: 596, column: 73, scope: !260, inlinedAt: !261)
!263 = !DILocation(line: 1007, column: 10, scope: !127, inlinedAt: !264)
!264 = distinct !DILocation(line: 1077, column: 18, scope: !130, inlinedAt: !265)
!265 = distinct !DILocation(line: 1295, column: 23, scope: !132, inlinedAt: !266)
!266 = distinct !DILocation(line: 192, column: 27, scope: !40)
!267 = !{!268, !270}
!268 = distinct !{!268, !269, !"_ZL17__floats2half2_rnff: %agg.result"}
!269 = distinct !{!269, !"_ZL17__floats2half2_rnff"}
!270 = distinct !{!270, !271, !"_ZL17__float22half2_rn6float2: %agg.result"}
!271 = distinct !{!271, !"_ZL17__float22half2_rn6float2"}
!272 = !DILocation(line: 1007, column: 10, scope: !127, inlinedAt: !273)
!273 = distinct !DILocation(line: 1077, column: 38, scope: !130, inlinedAt: !265)
!274 = !DILocation(line: 596, column: 67, scope: !260, inlinedAt: !275)
!275 = distinct !DILocation(line: 1077, column: 10, scope: !130, inlinedAt: !265)
!276 = !DILocation(line: 596, column: 73, scope: !260, inlinedAt: !275)
!277 = !DILocation(line: 193, column: 38, scope: !40)
!278 = !DILocation(line: 194, column: 141, scope: !40)
!279 = !DILocation(line: 194, column: 22, scope: !40)
!280 = !DILocation(line: 194, column: 221, scope: !40)
!281 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !282)
!282 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !283)
!283 = distinct !DILocation(line: 196, column: 3, scope: !40)
!284 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !282)
!285 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !282)
!286 = !DILocation(line: 201, column: 46, scope: !40)
!287 = !DILocation(line: 201, column: 65, scope: !40)
!288 = !DILocation(line: 203, column: 22, scope: !40)
!289 = !DILocation(line: 203, column: 133, scope: !40)
!290 = !DILocation(line: 205, column: 1, scope: !40)
