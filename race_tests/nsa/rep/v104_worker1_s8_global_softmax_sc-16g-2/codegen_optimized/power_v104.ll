; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v104_worker1_s8_global_softmax_sc-16g-2/codegen_precompile/power_v104/case12_stage1.device.cpp'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v104_worker1_s8_global_softmax_sc-16g-2/codegen_precompile/power_v104/case12_stage1.device.cpp"
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
  %xor827 = and i32 %mul11, 56
  %call27.masked = and i32 %2, 1016
  %mul29 = xor i32 %xor827, %call27.masked
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
  %qk_fetch.sroa.0.0.copyload2201 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %qk_fetch.sroa.38.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %qk_fetch.sroa.38.0.copyload2218 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr.1.sroa_idx, align 8, !dbg !45
  %7 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 1024, !dbg !46
  %add.ptr39.1927 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload2201, ptr addrspace(3) %add.ptr39.1927, align 8, !dbg !47
  %add.ptr39.1.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.38.0.copyload2218, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !47
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
  %or.cond886 = icmp ugt i32 %15, %invariant.umin, !dbg !66
  br i1 %or.cond886, label %if.end268, label %if.then, !dbg !66

for.body280.preheader:                            ; preds = %if.end268.7
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
  %scores.sroa.23.20.vec.extract2341 = extractelement <4 x float> %scores.sroa.23.0, i64 1, !dbg !67
  %21 = tail call contract noundef float @llvm.maxnum.f32(float %20, float %scores.sroa.23.20.vec.extract2341), !dbg !68
  %scores.sroa.23.24.vec.extract2348 = extractelement <4 x float> %scores.sroa.23.0, i64 2, !dbg !67
  %22 = tail call contract noundef float @llvm.maxnum.f32(float %21, float %scores.sroa.23.24.vec.extract2348), !dbg !68
  %scores.sroa.23.28.vec.extract2355 = extractelement <4 x float> %scores.sroa.23.0, i64 3, !dbg !67
  %23 = tail call contract noundef float @llvm.maxnum.f32(float %22, float %scores.sroa.23.28.vec.extract2355), !dbg !68
  %scores.sroa.44.32.vec.extract = extractelement <4 x float> %scores.sroa.44.0, i64 0, !dbg !67
  %24 = tail call contract noundef float @llvm.maxnum.f32(float %23, float %scores.sroa.44.32.vec.extract), !dbg !68
  %scores.sroa.44.36.vec.extract2370 = extractelement <4 x float> %scores.sroa.44.0, i64 1, !dbg !67
  %25 = tail call contract noundef float @llvm.maxnum.f32(float %24, float %scores.sroa.44.36.vec.extract2370), !dbg !68
  %scores.sroa.44.40.vec.extract2377 = extractelement <4 x float> %scores.sroa.44.0, i64 2, !dbg !67
  %26 = tail call contract noundef float @llvm.maxnum.f32(float %25, float %scores.sroa.44.40.vec.extract2377), !dbg !68
  %scores.sroa.44.44.vec.extract2384 = extractelement <4 x float> %scores.sroa.44.0, i64 3, !dbg !67
  %27 = tail call contract noundef float @llvm.maxnum.f32(float %26, float %scores.sroa.44.44.vec.extract2384), !dbg !68
  %scores.sroa.65.48.vec.extract = extractelement <4 x float> %scores.sroa.65.0, i64 0, !dbg !67
  %28 = tail call contract noundef float @llvm.maxnum.f32(float %27, float %scores.sroa.65.48.vec.extract), !dbg !68
  %scores.sroa.65.52.vec.extract2399 = extractelement <4 x float> %scores.sroa.65.0, i64 1, !dbg !67
  %29 = tail call contract noundef float @llvm.maxnum.f32(float %28, float %scores.sroa.65.52.vec.extract2399), !dbg !68
  %scores.sroa.65.56.vec.extract2406 = extractelement <4 x float> %scores.sroa.65.0, i64 2, !dbg !67
  %30 = tail call contract noundef float @llvm.maxnum.f32(float %29, float %scores.sroa.65.56.vec.extract2406), !dbg !68
  %scores.sroa.65.60.vec.extract2413 = extractelement <4 x float> %scores.sroa.65.0, i64 3, !dbg !67
  %31 = tail call contract noundef float @llvm.maxnum.f32(float %30, float %scores.sroa.65.60.vec.extract2413), !dbg !68
  %scores.sroa.86.64.vec.extract = extractelement <4 x float> %scores.sroa.86.0, i64 0, !dbg !67
  %32 = tail call contract noundef float @llvm.maxnum.f32(float %31, float %scores.sroa.86.64.vec.extract), !dbg !68
  %scores.sroa.86.68.vec.extract2428 = extractelement <4 x float> %scores.sroa.86.0, i64 1, !dbg !67
  %33 = tail call contract noundef float @llvm.maxnum.f32(float %32, float %scores.sroa.86.68.vec.extract2428), !dbg !68
  %scores.sroa.86.72.vec.extract2435 = extractelement <4 x float> %scores.sroa.86.0, i64 2, !dbg !67
  %34 = tail call contract noundef float @llvm.maxnum.f32(float %33, float %scores.sroa.86.72.vec.extract2435), !dbg !68
  %scores.sroa.86.76.vec.extract2442 = extractelement <4 x float> %scores.sroa.86.0, i64 3, !dbg !67
  %35 = tail call contract noundef float @llvm.maxnum.f32(float %34, float %scores.sroa.86.76.vec.extract2442), !dbg !68
  %scores.sroa.107.80.vec.extract = extractelement <4 x float> %scores.sroa.107.0, i64 0, !dbg !67
  %36 = tail call contract noundef float @llvm.maxnum.f32(float %35, float %scores.sroa.107.80.vec.extract), !dbg !68
  %scores.sroa.107.84.vec.extract2457 = extractelement <4 x float> %scores.sroa.107.0, i64 1, !dbg !67
  %37 = tail call contract noundef float @llvm.maxnum.f32(float %36, float %scores.sroa.107.84.vec.extract2457), !dbg !68
  %scores.sroa.107.88.vec.extract2464 = extractelement <4 x float> %scores.sroa.107.0, i64 2, !dbg !67
  %38 = tail call contract noundef float @llvm.maxnum.f32(float %37, float %scores.sroa.107.88.vec.extract2464), !dbg !68
  %scores.sroa.107.92.vec.extract2471 = extractelement <4 x float> %scores.sroa.107.0, i64 3, !dbg !67
  %39 = tail call contract noundef float @llvm.maxnum.f32(float %38, float %scores.sroa.107.92.vec.extract2471), !dbg !68
  %scores.sroa.128.96.vec.extract = extractelement <4 x float> %scores.sroa.128.0, i64 0, !dbg !67
  %40 = tail call contract noundef float @llvm.maxnum.f32(float %39, float %scores.sroa.128.96.vec.extract), !dbg !68
  %scores.sroa.128.100.vec.extract2486 = extractelement <4 x float> %scores.sroa.128.0, i64 1, !dbg !67
  %41 = tail call contract noundef float @llvm.maxnum.f32(float %40, float %scores.sroa.128.100.vec.extract2486), !dbg !68
  %scores.sroa.128.104.vec.extract2493 = extractelement <4 x float> %scores.sroa.128.0, i64 2, !dbg !67
  %42 = tail call contract noundef float @llvm.maxnum.f32(float %41, float %scores.sroa.128.104.vec.extract2493), !dbg !68
  %scores.sroa.128.108.vec.extract2500 = extractelement <4 x float> %scores.sroa.128.0, i64 3, !dbg !67
  %43 = tail call contract noundef float @llvm.maxnum.f32(float %42, float %scores.sroa.128.108.vec.extract2500), !dbg !68
  %scores.sroa.149.112.vec.extract = extractelement <4 x float> %scores.sroa.149.0, i64 0, !dbg !67
  %44 = tail call contract noundef float @llvm.maxnum.f32(float %43, float %scores.sroa.149.112.vec.extract), !dbg !68
  %scores.sroa.149.116.vec.extract2515 = extractelement <4 x float> %scores.sroa.149.0, i64 1, !dbg !67
  %45 = tail call contract noundef float @llvm.maxnum.f32(float %44, float %scores.sroa.149.116.vec.extract2515), !dbg !68
  %scores.sroa.149.120.vec.extract2522 = extractelement <4 x float> %scores.sroa.149.0, i64 2, !dbg !67
  %46 = tail call contract noundef float @llvm.maxnum.f32(float %45, float %scores.sroa.149.120.vec.extract2522), !dbg !68
  %scores.sroa.149.124.vec.extract2529 = extractelement <4 x float> %scores.sroa.149.0, i64 3, !dbg !67
  %47 = tail call contract noundef float @llvm.maxnum.f32(float %46, float %scores.sroa.149.124.vec.extract2529), !dbg !68
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
  %xor.i.i835 = xor i32 %57, 16, !dbg !96
  %58 = and i32 %57, -64, !dbg !97
  %and.i.i836 = add nsw i32 %58, 64, !dbg !97
  %cmp.not.i.i837 = icmp slt i32 %xor.i.i835, %and.i.i836, !dbg !98
  %cond.i.i838 = select i1 %cmp.not.i.i837, i32 %xor.i.i835, i32 %57, !dbg !99
  %shl.i.i839 = shl i32 %cond.i.i838, 2, !dbg !100
  %59 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i839, i32 %55), !dbg !101
  %60 = bitcast i32 %59 to float, !dbg !102
  %61 = tail call contract noundef float @llvm.maxnum.f32(float %54, float %60), !dbg !103
  %scores.sroa.0.0.vec.extract2303 = extractelement <4 x float> %scores.sroa.0.0, i64 0, !dbg !105
  %scores.sroa.0.4.vec.extract2312 = extractelement <4 x float> %scores.sroa.0.0, i64 1, !dbg !105
  %scores.sroa.0.8.vec.extract2319 = extractelement <4 x float> %scores.sroa.0.0, i64 2, !dbg !105
  %scores.sroa.0.12.vec.extract2326 = extractelement <4 x float> %scores.sroa.0.0, i64 3, !dbg !105
  %sub = fsub contract float %scores.sroa.0.0.vec.extract2303, %61, !dbg !106
  %sub315 = fsub contract float %scores.sroa.0.4.vec.extract2312, %61, !dbg !107
  %sub318 = fsub contract float %scores.sroa.0.8.vec.extract2319, %61, !dbg !108
  %sub321 = fsub contract float %scores.sroa.0.12.vec.extract2326, %61, !dbg !109
  %mul326 = fmul contract float %sub, 0x3FC7154760000000, !dbg !110
  %mul330 = fmul contract float %sub315, 0x3FC7154760000000, !dbg !111
  %mul334 = fmul contract float %sub318, 0x3FC7154760000000, !dbg !112
  %mul338 = fmul contract float %sub321, 0x3FC7154760000000, !dbg !113
  %add343 = fadd contract float %mul326, 8.000000e+00, !dbg !114
  %add347 = fadd contract float %mul330, 8.000000e+00, !dbg !115
  %add351 = fadd contract float %mul334, 8.000000e+00, !dbg !116
  %add355 = fadd contract float %mul338, 8.000000e+00, !dbg !117
  %cmp.i.i = fcmp contract olt float %add343, -1.260000e+02, !dbg !118
  %cond.i.i844 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !118
  %add.i.i = fadd contract float %add343, %cond.i.i844, !dbg !118
  %62 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !118
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !118
  %mul.i.i = fmul contract float %cond2.i.i, %62, !dbg !118
  %cmp.i.i845 = fcmp contract olt float %add347, -1.260000e+02, !dbg !121
  %cond.i.i846 = select contract i1 %cmp.i.i845, float 6.400000e+01, float 0.000000e+00, !dbg !121
  %add.i.i847 = fadd contract float %add347, %cond.i.i846, !dbg !121
  %63 = tail call contract float @llvm.exp2.f32(float %add.i.i847), !dbg !121
  %cond2.i.i848 = select contract i1 %cmp.i.i845, float 0x3BF0000000000000, float 1.000000e+00, !dbg !121
  %mul.i.i849 = fmul contract float %cond2.i.i848, %63, !dbg !121
  %cmp.i.i850 = fcmp contract olt float %add351, -1.260000e+02, !dbg !123
  %cond.i.i851 = select contract i1 %cmp.i.i850, float 6.400000e+01, float 0.000000e+00, !dbg !123
  %add.i.i852 = fadd contract float %add351, %cond.i.i851, !dbg !123
  %64 = tail call contract float @llvm.exp2.f32(float %add.i.i852), !dbg !123
  %cond2.i.i853 = select contract i1 %cmp.i.i850, float 0x3BF0000000000000, float 1.000000e+00, !dbg !123
  %mul.i.i854 = fmul contract float %cond2.i.i853, %64, !dbg !123
  %cmp.i.i855 = fcmp contract olt float %add355, -1.260000e+02, !dbg !125
  %cond.i.i856 = select contract i1 %cmp.i.i855, float 6.400000e+01, float 0.000000e+00, !dbg !125
  %add.i.i857 = fadd contract float %add355, %cond.i.i856, !dbg !125
  %65 = tail call contract float @llvm.exp2.f32(float %add.i.i857), !dbg !125
  %cond2.i.i858 = select contract i1 %cmp.i.i855, float 0x3BF0000000000000, float 1.000000e+00, !dbg !125
  %mul.i.i859 = fmul contract float %cond2.i.i858, %65, !dbg !125
  %66 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !127, !noalias !135
  %67 = fptrunc float %mul.i.i to half, !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %66), !dbg !127, !noalias !135
  %68 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !140, !noalias !135
  %69 = fptrunc float %mul.i.i849 to half, !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %68), !dbg !140, !noalias !135
  %70 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !142, !noalias !146
  %71 = fptrunc float %mul.i.i854 to half, !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %70), !dbg !142, !noalias !146
  %72 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !151, !noalias !146
  %73 = fptrunc float %mul.i.i859 to half, !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %72), !dbg !151, !noalias !146
  %74 = insertelement <4 x half> poison, half %67, i64 0, !dbg !153
  %75 = insertelement <4 x half> %74, half %69, i64 1, !dbg !153
  %76 = insertelement <4 x half> %75, half %71, i64 2, !dbg !153
  %77 = insertelement <4 x half> %76, half %73, i64 3, !dbg !153
  %scores.sroa.23.16.vec.extract2334 = extractelement <4 x float> %scores.sroa.23.0, i64 0, !dbg !105
  %scores.sroa.23.20.vec.extract = extractelement <4 x float> %scores.sroa.23.0, i64 1, !dbg !105
  %scores.sroa.23.24.vec.extract = extractelement <4 x float> %scores.sroa.23.0, i64 2, !dbg !105
  %scores.sroa.23.28.vec.extract = extractelement <4 x float> %scores.sroa.23.0, i64 3, !dbg !105
  %sub.1 = fsub contract float %scores.sroa.23.16.vec.extract2334, %61, !dbg !106
  %sub315.1 = fsub contract float %scores.sroa.23.20.vec.extract, %61, !dbg !107
  %sub318.1 = fsub contract float %scores.sroa.23.24.vec.extract, %61, !dbg !108
  %sub321.1 = fsub contract float %scores.sroa.23.28.vec.extract, %61, !dbg !109
  %mul326.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !110
  %mul330.1 = fmul contract float %sub315.1, 0x3FC7154760000000, !dbg !111
  %mul334.1 = fmul contract float %sub318.1, 0x3FC7154760000000, !dbg !112
  %mul338.1 = fmul contract float %sub321.1, 0x3FC7154760000000, !dbg !113
  %add343.1 = fadd contract float %mul326.1, 8.000000e+00, !dbg !114
  %add347.1 = fadd contract float %mul330.1, 8.000000e+00, !dbg !115
  %add351.1 = fadd contract float %mul334.1, 8.000000e+00, !dbg !116
  %add355.1 = fadd contract float %mul338.1, 8.000000e+00, !dbg !117
  %cmp.i.i.1 = fcmp contract olt float %add343.1, -1.260000e+02, !dbg !118
  %cond.i.i844.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !118
  %add.i.i.1 = fadd contract float %add343.1, %cond.i.i844.1, !dbg !118
  %78 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !118
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !118
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %78, !dbg !118
  %cmp.i.i845.1 = fcmp contract olt float %add347.1, -1.260000e+02, !dbg !121
  %cond.i.i846.1 = select contract i1 %cmp.i.i845.1, float 6.400000e+01, float 0.000000e+00, !dbg !121
  %add.i.i847.1 = fadd contract float %add347.1, %cond.i.i846.1, !dbg !121
  %79 = tail call contract float @llvm.exp2.f32(float %add.i.i847.1), !dbg !121
  %cond2.i.i848.1 = select contract i1 %cmp.i.i845.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !121
  %mul.i.i849.1 = fmul contract float %cond2.i.i848.1, %79, !dbg !121
  %cmp.i.i850.1 = fcmp contract olt float %add351.1, -1.260000e+02, !dbg !123
  %cond.i.i851.1 = select contract i1 %cmp.i.i850.1, float 6.400000e+01, float 0.000000e+00, !dbg !123
  %add.i.i852.1 = fadd contract float %add351.1, %cond.i.i851.1, !dbg !123
  %80 = tail call contract float @llvm.exp2.f32(float %add.i.i852.1), !dbg !123
  %cond2.i.i853.1 = select contract i1 %cmp.i.i850.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !123
  %mul.i.i854.1 = fmul contract float %cond2.i.i853.1, %80, !dbg !123
  %cmp.i.i855.1 = fcmp contract olt float %add355.1, -1.260000e+02, !dbg !125
  %cond.i.i856.1 = select contract i1 %cmp.i.i855.1, float 6.400000e+01, float 0.000000e+00, !dbg !125
  %add.i.i857.1 = fadd contract float %add355.1, %cond.i.i856.1, !dbg !125
  %81 = tail call contract float @llvm.exp2.f32(float %add.i.i857.1), !dbg !125
  %cond2.i.i858.1 = select contract i1 %cmp.i.i855.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !125
  %mul.i.i859.1 = fmul contract float %cond2.i.i858.1, %81, !dbg !125
  %82 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !127, !noalias !135
  %83 = fptrunc float %mul.i.i.1 to half, !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %82), !dbg !127, !noalias !135
  %84 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !140, !noalias !135
  %85 = fptrunc float %mul.i.i849.1 to half, !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %84), !dbg !140, !noalias !135
  %86 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !142, !noalias !146
  %87 = fptrunc float %mul.i.i854.1 to half, !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %86), !dbg !142, !noalias !146
  %88 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !151, !noalias !146
  %89 = fptrunc float %mul.i.i859.1 to half, !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %88), !dbg !151, !noalias !146
  %90 = insertelement <4 x half> poison, half %83, i64 0, !dbg !153
  %91 = insertelement <4 x half> %90, half %85, i64 1, !dbg !153
  %92 = insertelement <4 x half> %91, half %87, i64 2, !dbg !153
  %93 = insertelement <4 x half> %92, half %89, i64 3, !dbg !153
  %scores.sroa.44.32.vec.extract2363 = extractelement <4 x float> %scores.sroa.44.0, i64 0, !dbg !105
  %scores.sroa.44.36.vec.extract = extractelement <4 x float> %scores.sroa.44.0, i64 1, !dbg !105
  %scores.sroa.44.40.vec.extract = extractelement <4 x float> %scores.sroa.44.0, i64 2, !dbg !105
  %scores.sroa.44.44.vec.extract = extractelement <4 x float> %scores.sroa.44.0, i64 3, !dbg !105
  %sub.2 = fsub contract float %scores.sroa.44.32.vec.extract2363, %61, !dbg !106
  %sub315.2 = fsub contract float %scores.sroa.44.36.vec.extract, %61, !dbg !107
  %sub318.2 = fsub contract float %scores.sroa.44.40.vec.extract, %61, !dbg !108
  %sub321.2 = fsub contract float %scores.sroa.44.44.vec.extract, %61, !dbg !109
  %mul326.2 = fmul contract float %sub.2, 0x3FC7154760000000, !dbg !110
  %mul330.2 = fmul contract float %sub315.2, 0x3FC7154760000000, !dbg !111
  %mul334.2 = fmul contract float %sub318.2, 0x3FC7154760000000, !dbg !112
  %mul338.2 = fmul contract float %sub321.2, 0x3FC7154760000000, !dbg !113
  %add343.2 = fadd contract float %mul326.2, 8.000000e+00, !dbg !114
  %add347.2 = fadd contract float %mul330.2, 8.000000e+00, !dbg !115
  %add351.2 = fadd contract float %mul334.2, 8.000000e+00, !dbg !116
  %add355.2 = fadd contract float %mul338.2, 8.000000e+00, !dbg !117
  %cmp.i.i.2 = fcmp contract olt float %add343.2, -1.260000e+02, !dbg !118
  %cond.i.i844.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !118
  %add.i.i.2 = fadd contract float %add343.2, %cond.i.i844.2, !dbg !118
  %94 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !118
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !118
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %94, !dbg !118
  %cmp.i.i845.2 = fcmp contract olt float %add347.2, -1.260000e+02, !dbg !121
  %cond.i.i846.2 = select contract i1 %cmp.i.i845.2, float 6.400000e+01, float 0.000000e+00, !dbg !121
  %add.i.i847.2 = fadd contract float %add347.2, %cond.i.i846.2, !dbg !121
  %95 = tail call contract float @llvm.exp2.f32(float %add.i.i847.2), !dbg !121
  %cond2.i.i848.2 = select contract i1 %cmp.i.i845.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !121
  %mul.i.i849.2 = fmul contract float %cond2.i.i848.2, %95, !dbg !121
  %cmp.i.i850.2 = fcmp contract olt float %add351.2, -1.260000e+02, !dbg !123
  %cond.i.i851.2 = select contract i1 %cmp.i.i850.2, float 6.400000e+01, float 0.000000e+00, !dbg !123
  %add.i.i852.2 = fadd contract float %add351.2, %cond.i.i851.2, !dbg !123
  %96 = tail call contract float @llvm.exp2.f32(float %add.i.i852.2), !dbg !123
  %cond2.i.i853.2 = select contract i1 %cmp.i.i850.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !123
  %mul.i.i854.2 = fmul contract float %cond2.i.i853.2, %96, !dbg !123
  %cmp.i.i855.2 = fcmp contract olt float %add355.2, -1.260000e+02, !dbg !125
  %cond.i.i856.2 = select contract i1 %cmp.i.i855.2, float 6.400000e+01, float 0.000000e+00, !dbg !125
  %add.i.i857.2 = fadd contract float %add355.2, %cond.i.i856.2, !dbg !125
  %97 = tail call contract float @llvm.exp2.f32(float %add.i.i857.2), !dbg !125
  %cond2.i.i858.2 = select contract i1 %cmp.i.i855.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !125
  %mul.i.i859.2 = fmul contract float %cond2.i.i858.2, %97, !dbg !125
  %98 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !127, !noalias !135
  %99 = fptrunc float %mul.i.i.2 to half, !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %98), !dbg !127, !noalias !135
  %100 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !140, !noalias !135
  %101 = fptrunc float %mul.i.i849.2 to half, !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %100), !dbg !140, !noalias !135
  %102 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !142, !noalias !146
  %103 = fptrunc float %mul.i.i854.2 to half, !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %102), !dbg !142, !noalias !146
  %104 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !151, !noalias !146
  %105 = fptrunc float %mul.i.i859.2 to half, !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %104), !dbg !151, !noalias !146
  %106 = insertelement <4 x half> poison, half %99, i64 0, !dbg !153
  %107 = insertelement <4 x half> %106, half %101, i64 1, !dbg !153
  %108 = insertelement <4 x half> %107, half %103, i64 2, !dbg !153
  %109 = insertelement <4 x half> %108, half %105, i64 3, !dbg !153
  %scores.sroa.65.48.vec.extract2392 = extractelement <4 x float> %scores.sroa.65.0, i64 0, !dbg !105
  %scores.sroa.65.52.vec.extract = extractelement <4 x float> %scores.sroa.65.0, i64 1, !dbg !105
  %scores.sroa.65.56.vec.extract = extractelement <4 x float> %scores.sroa.65.0, i64 2, !dbg !105
  %scores.sroa.65.60.vec.extract = extractelement <4 x float> %scores.sroa.65.0, i64 3, !dbg !105
  %sub.3 = fsub contract float %scores.sroa.65.48.vec.extract2392, %61, !dbg !106
  %sub315.3 = fsub contract float %scores.sroa.65.52.vec.extract, %61, !dbg !107
  %sub318.3 = fsub contract float %scores.sroa.65.56.vec.extract, %61, !dbg !108
  %sub321.3 = fsub contract float %scores.sroa.65.60.vec.extract, %61, !dbg !109
  %mul326.3 = fmul contract float %sub.3, 0x3FC7154760000000, !dbg !110
  %mul330.3 = fmul contract float %sub315.3, 0x3FC7154760000000, !dbg !111
  %mul334.3 = fmul contract float %sub318.3, 0x3FC7154760000000, !dbg !112
  %mul338.3 = fmul contract float %sub321.3, 0x3FC7154760000000, !dbg !113
  %add343.3 = fadd contract float %mul326.3, 8.000000e+00, !dbg !114
  %add347.3 = fadd contract float %mul330.3, 8.000000e+00, !dbg !115
  %add351.3 = fadd contract float %mul334.3, 8.000000e+00, !dbg !116
  %add355.3 = fadd contract float %mul338.3, 8.000000e+00, !dbg !117
  %cmp.i.i.3 = fcmp contract olt float %add343.3, -1.260000e+02, !dbg !118
  %cond.i.i844.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !118
  %add.i.i.3 = fadd contract float %add343.3, %cond.i.i844.3, !dbg !118
  %110 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !118
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !118
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %110, !dbg !118
  %cmp.i.i845.3 = fcmp contract olt float %add347.3, -1.260000e+02, !dbg !121
  %cond.i.i846.3 = select contract i1 %cmp.i.i845.3, float 6.400000e+01, float 0.000000e+00, !dbg !121
  %add.i.i847.3 = fadd contract float %add347.3, %cond.i.i846.3, !dbg !121
  %111 = tail call contract float @llvm.exp2.f32(float %add.i.i847.3), !dbg !121
  %cond2.i.i848.3 = select contract i1 %cmp.i.i845.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !121
  %mul.i.i849.3 = fmul contract float %cond2.i.i848.3, %111, !dbg !121
  %cmp.i.i850.3 = fcmp contract olt float %add351.3, -1.260000e+02, !dbg !123
  %cond.i.i851.3 = select contract i1 %cmp.i.i850.3, float 6.400000e+01, float 0.000000e+00, !dbg !123
  %add.i.i852.3 = fadd contract float %add351.3, %cond.i.i851.3, !dbg !123
  %112 = tail call contract float @llvm.exp2.f32(float %add.i.i852.3), !dbg !123
  %cond2.i.i853.3 = select contract i1 %cmp.i.i850.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !123
  %mul.i.i854.3 = fmul contract float %cond2.i.i853.3, %112, !dbg !123
  %cmp.i.i855.3 = fcmp contract olt float %add355.3, -1.260000e+02, !dbg !125
  %cond.i.i856.3 = select contract i1 %cmp.i.i855.3, float 6.400000e+01, float 0.000000e+00, !dbg !125
  %add.i.i857.3 = fadd contract float %add355.3, %cond.i.i856.3, !dbg !125
  %113 = tail call contract float @llvm.exp2.f32(float %add.i.i857.3), !dbg !125
  %cond2.i.i858.3 = select contract i1 %cmp.i.i855.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !125
  %mul.i.i859.3 = fmul contract float %cond2.i.i858.3, %113, !dbg !125
  %114 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !127, !noalias !135
  %115 = fptrunc float %mul.i.i.3 to half, !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %114), !dbg !127, !noalias !135
  %116 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !140, !noalias !135
  %117 = fptrunc float %mul.i.i849.3 to half, !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %116), !dbg !140, !noalias !135
  %118 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !142, !noalias !146
  %119 = fptrunc float %mul.i.i854.3 to half, !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %118), !dbg !142, !noalias !146
  %120 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !151, !noalias !146
  %121 = fptrunc float %mul.i.i859.3 to half, !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %120), !dbg !151, !noalias !146
  %122 = insertelement <4 x half> poison, half %115, i64 0, !dbg !153
  %123 = insertelement <4 x half> %122, half %117, i64 1, !dbg !153
  %124 = insertelement <4 x half> %123, half %119, i64 2, !dbg !153
  %125 = insertelement <4 x half> %124, half %121, i64 3, !dbg !153
  %scores.sroa.86.64.vec.extract2421 = extractelement <4 x float> %scores.sroa.86.0, i64 0, !dbg !105
  %scores.sroa.86.68.vec.extract = extractelement <4 x float> %scores.sroa.86.0, i64 1, !dbg !105
  %scores.sroa.86.72.vec.extract = extractelement <4 x float> %scores.sroa.86.0, i64 2, !dbg !105
  %scores.sroa.86.76.vec.extract = extractelement <4 x float> %scores.sroa.86.0, i64 3, !dbg !105
  %sub.4 = fsub contract float %scores.sroa.86.64.vec.extract2421, %61, !dbg !106
  %sub315.4 = fsub contract float %scores.sroa.86.68.vec.extract, %61, !dbg !107
  %sub318.4 = fsub contract float %scores.sroa.86.72.vec.extract, %61, !dbg !108
  %sub321.4 = fsub contract float %scores.sroa.86.76.vec.extract, %61, !dbg !109
  %mul326.4 = fmul contract float %sub.4, 0x3FC7154760000000, !dbg !110
  %mul330.4 = fmul contract float %sub315.4, 0x3FC7154760000000, !dbg !111
  %mul334.4 = fmul contract float %sub318.4, 0x3FC7154760000000, !dbg !112
  %mul338.4 = fmul contract float %sub321.4, 0x3FC7154760000000, !dbg !113
  %add343.4 = fadd contract float %mul326.4, 8.000000e+00, !dbg !114
  %add347.4 = fadd contract float %mul330.4, 8.000000e+00, !dbg !115
  %add351.4 = fadd contract float %mul334.4, 8.000000e+00, !dbg !116
  %add355.4 = fadd contract float %mul338.4, 8.000000e+00, !dbg !117
  %cmp.i.i.4 = fcmp contract olt float %add343.4, -1.260000e+02, !dbg !118
  %cond.i.i844.4 = select contract i1 %cmp.i.i.4, float 6.400000e+01, float 0.000000e+00, !dbg !118
  %add.i.i.4 = fadd contract float %add343.4, %cond.i.i844.4, !dbg !118
  %126 = tail call contract float @llvm.exp2.f32(float %add.i.i.4), !dbg !118
  %cond2.i.i.4 = select contract i1 %cmp.i.i.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !118
  %mul.i.i.4 = fmul contract float %cond2.i.i.4, %126, !dbg !118
  %cmp.i.i845.4 = fcmp contract olt float %add347.4, -1.260000e+02, !dbg !121
  %cond.i.i846.4 = select contract i1 %cmp.i.i845.4, float 6.400000e+01, float 0.000000e+00, !dbg !121
  %add.i.i847.4 = fadd contract float %add347.4, %cond.i.i846.4, !dbg !121
  %127 = tail call contract float @llvm.exp2.f32(float %add.i.i847.4), !dbg !121
  %cond2.i.i848.4 = select contract i1 %cmp.i.i845.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !121
  %mul.i.i849.4 = fmul contract float %cond2.i.i848.4, %127, !dbg !121
  %cmp.i.i850.4 = fcmp contract olt float %add351.4, -1.260000e+02, !dbg !123
  %cond.i.i851.4 = select contract i1 %cmp.i.i850.4, float 6.400000e+01, float 0.000000e+00, !dbg !123
  %add.i.i852.4 = fadd contract float %add351.4, %cond.i.i851.4, !dbg !123
  %128 = tail call contract float @llvm.exp2.f32(float %add.i.i852.4), !dbg !123
  %cond2.i.i853.4 = select contract i1 %cmp.i.i850.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !123
  %mul.i.i854.4 = fmul contract float %cond2.i.i853.4, %128, !dbg !123
  %cmp.i.i855.4 = fcmp contract olt float %add355.4, -1.260000e+02, !dbg !125
  %cond.i.i856.4 = select contract i1 %cmp.i.i855.4, float 6.400000e+01, float 0.000000e+00, !dbg !125
  %add.i.i857.4 = fadd contract float %add355.4, %cond.i.i856.4, !dbg !125
  %129 = tail call contract float @llvm.exp2.f32(float %add.i.i857.4), !dbg !125
  %cond2.i.i858.4 = select contract i1 %cmp.i.i855.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !125
  %mul.i.i859.4 = fmul contract float %cond2.i.i858.4, %129, !dbg !125
  %130 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !127, !noalias !135
  %131 = fptrunc float %mul.i.i.4 to half, !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %130), !dbg !127, !noalias !135
  %132 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !140, !noalias !135
  %133 = fptrunc float %mul.i.i849.4 to half, !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %132), !dbg !140, !noalias !135
  %134 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !142, !noalias !146
  %135 = fptrunc float %mul.i.i854.4 to half, !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %134), !dbg !142, !noalias !146
  %136 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !151, !noalias !146
  %137 = fptrunc float %mul.i.i859.4 to half, !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %136), !dbg !151, !noalias !146
  %138 = insertelement <4 x half> poison, half %131, i64 0, !dbg !153
  %139 = insertelement <4 x half> %138, half %133, i64 1, !dbg !153
  %140 = insertelement <4 x half> %139, half %135, i64 2, !dbg !153
  %141 = insertelement <4 x half> %140, half %137, i64 3, !dbg !153
  %scores.sroa.107.80.vec.extract2450 = extractelement <4 x float> %scores.sroa.107.0, i64 0, !dbg !105
  %scores.sroa.107.84.vec.extract = extractelement <4 x float> %scores.sroa.107.0, i64 1, !dbg !105
  %scores.sroa.107.88.vec.extract = extractelement <4 x float> %scores.sroa.107.0, i64 2, !dbg !105
  %scores.sroa.107.92.vec.extract = extractelement <4 x float> %scores.sroa.107.0, i64 3, !dbg !105
  %sub.5 = fsub contract float %scores.sroa.107.80.vec.extract2450, %61, !dbg !106
  %sub315.5 = fsub contract float %scores.sroa.107.84.vec.extract, %61, !dbg !107
  %sub318.5 = fsub contract float %scores.sroa.107.88.vec.extract, %61, !dbg !108
  %sub321.5 = fsub contract float %scores.sroa.107.92.vec.extract, %61, !dbg !109
  %mul326.5 = fmul contract float %sub.5, 0x3FC7154760000000, !dbg !110
  %mul330.5 = fmul contract float %sub315.5, 0x3FC7154760000000, !dbg !111
  %mul334.5 = fmul contract float %sub318.5, 0x3FC7154760000000, !dbg !112
  %mul338.5 = fmul contract float %sub321.5, 0x3FC7154760000000, !dbg !113
  %add343.5 = fadd contract float %mul326.5, 8.000000e+00, !dbg !114
  %add347.5 = fadd contract float %mul330.5, 8.000000e+00, !dbg !115
  %add351.5 = fadd contract float %mul334.5, 8.000000e+00, !dbg !116
  %add355.5 = fadd contract float %mul338.5, 8.000000e+00, !dbg !117
  %cmp.i.i.5 = fcmp contract olt float %add343.5, -1.260000e+02, !dbg !118
  %cond.i.i844.5 = select contract i1 %cmp.i.i.5, float 6.400000e+01, float 0.000000e+00, !dbg !118
  %add.i.i.5 = fadd contract float %add343.5, %cond.i.i844.5, !dbg !118
  %142 = tail call contract float @llvm.exp2.f32(float %add.i.i.5), !dbg !118
  %cond2.i.i.5 = select contract i1 %cmp.i.i.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !118
  %mul.i.i.5 = fmul contract float %cond2.i.i.5, %142, !dbg !118
  %cmp.i.i845.5 = fcmp contract olt float %add347.5, -1.260000e+02, !dbg !121
  %cond.i.i846.5 = select contract i1 %cmp.i.i845.5, float 6.400000e+01, float 0.000000e+00, !dbg !121
  %add.i.i847.5 = fadd contract float %add347.5, %cond.i.i846.5, !dbg !121
  %143 = tail call contract float @llvm.exp2.f32(float %add.i.i847.5), !dbg !121
  %cond2.i.i848.5 = select contract i1 %cmp.i.i845.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !121
  %mul.i.i849.5 = fmul contract float %cond2.i.i848.5, %143, !dbg !121
  %cmp.i.i850.5 = fcmp contract olt float %add351.5, -1.260000e+02, !dbg !123
  %cond.i.i851.5 = select contract i1 %cmp.i.i850.5, float 6.400000e+01, float 0.000000e+00, !dbg !123
  %add.i.i852.5 = fadd contract float %add351.5, %cond.i.i851.5, !dbg !123
  %144 = tail call contract float @llvm.exp2.f32(float %add.i.i852.5), !dbg !123
  %cond2.i.i853.5 = select contract i1 %cmp.i.i850.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !123
  %mul.i.i854.5 = fmul contract float %cond2.i.i853.5, %144, !dbg !123
  %cmp.i.i855.5 = fcmp contract olt float %add355.5, -1.260000e+02, !dbg !125
  %cond.i.i856.5 = select contract i1 %cmp.i.i855.5, float 6.400000e+01, float 0.000000e+00, !dbg !125
  %add.i.i857.5 = fadd contract float %add355.5, %cond.i.i856.5, !dbg !125
  %145 = tail call contract float @llvm.exp2.f32(float %add.i.i857.5), !dbg !125
  %cond2.i.i858.5 = select contract i1 %cmp.i.i855.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !125
  %mul.i.i859.5 = fmul contract float %cond2.i.i858.5, %145, !dbg !125
  %146 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !127, !noalias !135
  %147 = fptrunc float %mul.i.i.5 to half, !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %146), !dbg !127, !noalias !135
  %148 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !140, !noalias !135
  %149 = fptrunc float %mul.i.i849.5 to half, !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %148), !dbg !140, !noalias !135
  %150 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !142, !noalias !146
  %151 = fptrunc float %mul.i.i854.5 to half, !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %150), !dbg !142, !noalias !146
  %152 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !151, !noalias !146
  %153 = fptrunc float %mul.i.i859.5 to half, !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %152), !dbg !151, !noalias !146
  %154 = insertelement <4 x half> poison, half %147, i64 0, !dbg !153
  %155 = insertelement <4 x half> %154, half %149, i64 1, !dbg !153
  %156 = insertelement <4 x half> %155, half %151, i64 2, !dbg !153
  %157 = insertelement <4 x half> %156, half %153, i64 3, !dbg !153
  %scores.sroa.128.96.vec.extract2479 = extractelement <4 x float> %scores.sroa.128.0, i64 0, !dbg !105
  %scores.sroa.128.100.vec.extract = extractelement <4 x float> %scores.sroa.128.0, i64 1, !dbg !105
  %scores.sroa.128.104.vec.extract = extractelement <4 x float> %scores.sroa.128.0, i64 2, !dbg !105
  %scores.sroa.128.108.vec.extract = extractelement <4 x float> %scores.sroa.128.0, i64 3, !dbg !105
  %sub.6 = fsub contract float %scores.sroa.128.96.vec.extract2479, %61, !dbg !106
  %sub315.6 = fsub contract float %scores.sroa.128.100.vec.extract, %61, !dbg !107
  %sub318.6 = fsub contract float %scores.sroa.128.104.vec.extract, %61, !dbg !108
  %sub321.6 = fsub contract float %scores.sroa.128.108.vec.extract, %61, !dbg !109
  %mul326.6 = fmul contract float %sub.6, 0x3FC7154760000000, !dbg !110
  %mul330.6 = fmul contract float %sub315.6, 0x3FC7154760000000, !dbg !111
  %mul334.6 = fmul contract float %sub318.6, 0x3FC7154760000000, !dbg !112
  %mul338.6 = fmul contract float %sub321.6, 0x3FC7154760000000, !dbg !113
  %add343.6 = fadd contract float %mul326.6, 8.000000e+00, !dbg !114
  %add347.6 = fadd contract float %mul330.6, 8.000000e+00, !dbg !115
  %add351.6 = fadd contract float %mul334.6, 8.000000e+00, !dbg !116
  %add355.6 = fadd contract float %mul338.6, 8.000000e+00, !dbg !117
  %cmp.i.i.6 = fcmp contract olt float %add343.6, -1.260000e+02, !dbg !118
  %cond.i.i844.6 = select contract i1 %cmp.i.i.6, float 6.400000e+01, float 0.000000e+00, !dbg !118
  %add.i.i.6 = fadd contract float %add343.6, %cond.i.i844.6, !dbg !118
  %158 = tail call contract float @llvm.exp2.f32(float %add.i.i.6), !dbg !118
  %cond2.i.i.6 = select contract i1 %cmp.i.i.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !118
  %mul.i.i.6 = fmul contract float %cond2.i.i.6, %158, !dbg !118
  %cmp.i.i845.6 = fcmp contract olt float %add347.6, -1.260000e+02, !dbg !121
  %cond.i.i846.6 = select contract i1 %cmp.i.i845.6, float 6.400000e+01, float 0.000000e+00, !dbg !121
  %add.i.i847.6 = fadd contract float %add347.6, %cond.i.i846.6, !dbg !121
  %159 = tail call contract float @llvm.exp2.f32(float %add.i.i847.6), !dbg !121
  %cond2.i.i848.6 = select contract i1 %cmp.i.i845.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !121
  %mul.i.i849.6 = fmul contract float %cond2.i.i848.6, %159, !dbg !121
  %cmp.i.i850.6 = fcmp contract olt float %add351.6, -1.260000e+02, !dbg !123
  %cond.i.i851.6 = select contract i1 %cmp.i.i850.6, float 6.400000e+01, float 0.000000e+00, !dbg !123
  %add.i.i852.6 = fadd contract float %add351.6, %cond.i.i851.6, !dbg !123
  %160 = tail call contract float @llvm.exp2.f32(float %add.i.i852.6), !dbg !123
  %cond2.i.i853.6 = select contract i1 %cmp.i.i850.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !123
  %mul.i.i854.6 = fmul contract float %cond2.i.i853.6, %160, !dbg !123
  %cmp.i.i855.6 = fcmp contract olt float %add355.6, -1.260000e+02, !dbg !125
  %cond.i.i856.6 = select contract i1 %cmp.i.i855.6, float 6.400000e+01, float 0.000000e+00, !dbg !125
  %add.i.i857.6 = fadd contract float %add355.6, %cond.i.i856.6, !dbg !125
  %161 = tail call contract float @llvm.exp2.f32(float %add.i.i857.6), !dbg !125
  %cond2.i.i858.6 = select contract i1 %cmp.i.i855.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !125
  %mul.i.i859.6 = fmul contract float %cond2.i.i858.6, %161, !dbg !125
  %162 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !127, !noalias !135
  %163 = fptrunc float %mul.i.i.6 to half, !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %162), !dbg !127, !noalias !135
  %164 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !140, !noalias !135
  %165 = fptrunc float %mul.i.i849.6 to half, !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %164), !dbg !140, !noalias !135
  %166 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !142, !noalias !146
  %167 = fptrunc float %mul.i.i854.6 to half, !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %166), !dbg !142, !noalias !146
  %168 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !151, !noalias !146
  %169 = fptrunc float %mul.i.i859.6 to half, !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %168), !dbg !151, !noalias !146
  %170 = insertelement <4 x half> poison, half %163, i64 0, !dbg !153
  %171 = insertelement <4 x half> %170, half %165, i64 1, !dbg !153
  %172 = insertelement <4 x half> %171, half %167, i64 2, !dbg !153
  %173 = insertelement <4 x half> %172, half %169, i64 3, !dbg !153
  %scores.sroa.149.112.vec.extract2508 = extractelement <4 x float> %scores.sroa.149.0, i64 0, !dbg !105
  %scores.sroa.149.116.vec.extract = extractelement <4 x float> %scores.sroa.149.0, i64 1, !dbg !105
  %scores.sroa.149.120.vec.extract = extractelement <4 x float> %scores.sroa.149.0, i64 2, !dbg !105
  %scores.sroa.149.124.vec.extract = extractelement <4 x float> %scores.sroa.149.0, i64 3, !dbg !105
  %sub.7 = fsub contract float %scores.sroa.149.112.vec.extract2508, %61, !dbg !106
  %sub315.7 = fsub contract float %scores.sroa.149.116.vec.extract, %61, !dbg !107
  %sub318.7 = fsub contract float %scores.sroa.149.120.vec.extract, %61, !dbg !108
  %sub321.7 = fsub contract float %scores.sroa.149.124.vec.extract, %61, !dbg !109
  %mul326.7 = fmul contract float %sub.7, 0x3FC7154760000000, !dbg !110
  %mul330.7 = fmul contract float %sub315.7, 0x3FC7154760000000, !dbg !111
  %mul334.7 = fmul contract float %sub318.7, 0x3FC7154760000000, !dbg !112
  %mul338.7 = fmul contract float %sub321.7, 0x3FC7154760000000, !dbg !113
  %add343.7 = fadd contract float %mul326.7, 8.000000e+00, !dbg !114
  %add347.7 = fadd contract float %mul330.7, 8.000000e+00, !dbg !115
  %add351.7 = fadd contract float %mul334.7, 8.000000e+00, !dbg !116
  %add355.7 = fadd contract float %mul338.7, 8.000000e+00, !dbg !117
  %cmp.i.i.7 = fcmp contract olt float %add343.7, -1.260000e+02, !dbg !118
  %cond.i.i844.7 = select contract i1 %cmp.i.i.7, float 6.400000e+01, float 0.000000e+00, !dbg !118
  %add.i.i.7 = fadd contract float %add343.7, %cond.i.i844.7, !dbg !118
  %174 = tail call contract float @llvm.exp2.f32(float %add.i.i.7), !dbg !118
  %cond2.i.i.7 = select contract i1 %cmp.i.i.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !118
  %mul.i.i.7 = fmul contract float %cond2.i.i.7, %174, !dbg !118
  %cmp.i.i845.7 = fcmp contract olt float %add347.7, -1.260000e+02, !dbg !121
  %cond.i.i846.7 = select contract i1 %cmp.i.i845.7, float 6.400000e+01, float 0.000000e+00, !dbg !121
  %add.i.i847.7 = fadd contract float %add347.7, %cond.i.i846.7, !dbg !121
  %175 = tail call contract float @llvm.exp2.f32(float %add.i.i847.7), !dbg !121
  %cond2.i.i848.7 = select contract i1 %cmp.i.i845.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !121
  %mul.i.i849.7 = fmul contract float %cond2.i.i848.7, %175, !dbg !121
  %cmp.i.i850.7 = fcmp contract olt float %add351.7, -1.260000e+02, !dbg !123
  %cond.i.i851.7 = select contract i1 %cmp.i.i850.7, float 6.400000e+01, float 0.000000e+00, !dbg !123
  %add.i.i852.7 = fadd contract float %add351.7, %cond.i.i851.7, !dbg !123
  %176 = tail call contract float @llvm.exp2.f32(float %add.i.i852.7), !dbg !123
  %cond2.i.i853.7 = select contract i1 %cmp.i.i850.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !123
  %mul.i.i854.7 = fmul contract float %cond2.i.i853.7, %176, !dbg !123
  %cmp.i.i855.7 = fcmp contract olt float %add355.7, -1.260000e+02, !dbg !125
  %cond.i.i856.7 = select contract i1 %cmp.i.i855.7, float 6.400000e+01, float 0.000000e+00, !dbg !125
  %add.i.i857.7 = fadd contract float %add355.7, %cond.i.i856.7, !dbg !125
  %177 = tail call contract float @llvm.exp2.f32(float %add.i.i857.7), !dbg !125
  %cond2.i.i858.7 = select contract i1 %cmp.i.i855.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !125
  %mul.i.i859.7 = fmul contract float %cond2.i.i858.7, %177, !dbg !125
  %178 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !127, !noalias !135
  %179 = fptrunc float %mul.i.i.7 to half, !dbg !127
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %178), !dbg !127, !noalias !135
  %180 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !140, !noalias !135
  %181 = fptrunc float %mul.i.i849.7 to half, !dbg !140
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %180), !dbg !140, !noalias !135
  %182 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !142, !noalias !146
  %183 = fptrunc float %mul.i.i854.7 to half, !dbg !142
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %182), !dbg !142, !noalias !146
  %184 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !151, !noalias !146
  %185 = fptrunc float %mul.i.i859.7 to half, !dbg !151
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %184), !dbg !151, !noalias !146
  %186 = insertelement <4 x half> poison, half %179, i64 0, !dbg !153
  %187 = insertelement <4 x half> %186, half %181, i64 1, !dbg !153
  %188 = insertelement <4 x half> %187, half %183, i64 2, !dbg !153
  %189 = insertelement <4 x half> %188, half %185, i64 3, !dbg !153
  %conv.i.i = fpext half %67 to float, !dbg !154
  %add394 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !159
  %conv.i.i.1 = fpext half %69 to float, !dbg !154
  %add394.1 = fadd contract float %add394, %conv.i.i.1, !dbg !159
  %conv.i.i.2 = fpext half %71 to float, !dbg !154
  %add394.2 = fadd contract float %add394.1, %conv.i.i.2, !dbg !159
  %conv.i.i.3 = fpext half %73 to float, !dbg !154
  %add394.3 = fadd contract float %add394.2, %conv.i.i.3, !dbg !159
  %conv.i.i.4 = fpext half %83 to float, !dbg !154
  %add394.4 = fadd contract float %add394.3, %conv.i.i.4, !dbg !159
  %conv.i.i.5 = fpext half %85 to float, !dbg !154
  %add394.5 = fadd contract float %add394.4, %conv.i.i.5, !dbg !159
  %conv.i.i.6 = fpext half %87 to float, !dbg !154
  %add394.6 = fadd contract float %add394.5, %conv.i.i.6, !dbg !159
  %conv.i.i.7 = fpext half %89 to float, !dbg !154
  %add394.7 = fadd contract float %add394.6, %conv.i.i.7, !dbg !159
  %conv.i.i.8 = fpext half %99 to float, !dbg !154
  %add394.8 = fadd contract float %add394.7, %conv.i.i.8, !dbg !159
  %conv.i.i.9 = fpext half %101 to float, !dbg !154
  %add394.9 = fadd contract float %add394.8, %conv.i.i.9, !dbg !159
  %conv.i.i.10 = fpext half %103 to float, !dbg !154
  %add394.10 = fadd contract float %add394.9, %conv.i.i.10, !dbg !159
  %conv.i.i.11 = fpext half %105 to float, !dbg !154
  %add394.11 = fadd contract float %add394.10, %conv.i.i.11, !dbg !159
  %conv.i.i.12 = fpext half %115 to float, !dbg !154
  %add394.12 = fadd contract float %add394.11, %conv.i.i.12, !dbg !159
  %conv.i.i.13 = fpext half %117 to float, !dbg !154
  %add394.13 = fadd contract float %add394.12, %conv.i.i.13, !dbg !159
  %conv.i.i.14 = fpext half %119 to float, !dbg !154
  %add394.14 = fadd contract float %add394.13, %conv.i.i.14, !dbg !159
  %conv.i.i.15 = fpext half %121 to float, !dbg !154
  %add394.15 = fadd contract float %add394.14, %conv.i.i.15, !dbg !159
  %conv.i.i.16 = fpext half %131 to float, !dbg !154
  %add394.16 = fadd contract float %add394.15, %conv.i.i.16, !dbg !159
  %conv.i.i.17 = fpext half %133 to float, !dbg !154
  %add394.17 = fadd contract float %add394.16, %conv.i.i.17, !dbg !159
  %conv.i.i.18 = fpext half %135 to float, !dbg !154
  %add394.18 = fadd contract float %add394.17, %conv.i.i.18, !dbg !159
  %conv.i.i.19 = fpext half %137 to float, !dbg !154
  %add394.19 = fadd contract float %add394.18, %conv.i.i.19, !dbg !159
  %conv.i.i.20 = fpext half %147 to float, !dbg !154
  %add394.20 = fadd contract float %add394.19, %conv.i.i.20, !dbg !159
  %conv.i.i.21 = fpext half %149 to float, !dbg !154
  %add394.21 = fadd contract float %add394.20, %conv.i.i.21, !dbg !159
  %conv.i.i.22 = fpext half %151 to float, !dbg !154
  %add394.22 = fadd contract float %add394.21, %conv.i.i.22, !dbg !159
  %conv.i.i.23 = fpext half %153 to float, !dbg !154
  %add394.23 = fadd contract float %add394.22, %conv.i.i.23, !dbg !159
  %conv.i.i.24 = fpext half %163 to float, !dbg !154
  %add394.24 = fadd contract float %add394.23, %conv.i.i.24, !dbg !159
  %conv.i.i.25 = fpext half %165 to float, !dbg !154
  %add394.25 = fadd contract float %add394.24, %conv.i.i.25, !dbg !159
  %conv.i.i.26 = fpext half %167 to float, !dbg !154
  %add394.26 = fadd contract float %add394.25, %conv.i.i.26, !dbg !159
  %conv.i.i.27 = fpext half %169 to float, !dbg !154
  %add394.27 = fadd contract float %add394.26, %conv.i.i.27, !dbg !159
  %conv.i.i.28 = fpext half %179 to float, !dbg !154
  %add394.28 = fadd contract float %add394.27, %conv.i.i.28, !dbg !159
  %conv.i.i.29 = fpext half %181 to float, !dbg !154
  %add394.29 = fadd contract float %add394.28, %conv.i.i.29, !dbg !159
  %conv.i.i.30 = fpext half %183 to float, !dbg !154
  %add394.30 = fadd contract float %add394.29, %conv.i.i.30, !dbg !159
  %conv.i.i.31 = fpext half %185 to float, !dbg !154
  %add394.31 = fadd contract float %add394.30, %conv.i.i.31, !dbg !159
  %190 = bitcast float %add394.31 to i32, !dbg !160
  %191 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !162
  %192 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %191) #11, !dbg !165
  %xor.i.i861 = xor i32 %192, 32, !dbg !166
  %193 = and i32 %192, -64, !dbg !167
  %and.i.i862 = add nsw i32 %193, 64, !dbg !167
  %cmp.not.i.i863 = icmp slt i32 %xor.i.i861, %and.i.i862, !dbg !168
  %cond.i.i864 = select i1 %cmp.not.i.i863, i32 %xor.i.i861, i32 %192, !dbg !169
  %shl.i.i865 = shl i32 %cond.i.i864, 2, !dbg !170
  %194 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i865, i32 %190), !dbg !171
  %195 = bitcast i32 %194 to float, !dbg !172
  %add402 = fadd contract float %add394.31, %195, !dbg !173
  %196 = bitcast float %add402 to i32, !dbg !174
  %197 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !176
  %198 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %197) #11, !dbg !179
  %xor.i.i866 = xor i32 %198, 16, !dbg !180
  %199 = and i32 %198, -64, !dbg !181
  %and.i.i867 = add nsw i32 %199, 64, !dbg !181
  %cmp.not.i.i868 = icmp slt i32 %xor.i.i866, %and.i.i867, !dbg !182
  %cond.i.i869 = select i1 %cmp.not.i.i868, i32 %xor.i.i866, i32 %198, !dbg !183
  %shl.i.i870 = shl i32 %cond.i.i869, 2, !dbg !184
  %200 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i870, i32 %196), !dbg !185
  %201 = bitcast i32 %200 to float, !dbg !186
  %add407 = fadd contract float %add402, %201, !dbg !187
  br label %if.end409, !dbg !188

if.then:                                          ; preds = %entry
  fence syncscope("warp") release, !dbg !189
  tail call void @llvm.mxc.barrier.warp(), !dbg !192
  fence syncscope("warp") acquire, !dbg !193
  %mul139 = shl nuw nsw i32 %15, 10
  %add142 = add nuw nsw i32 %add140, %mul139
  %202 = zext nneg i32 %add142 to i64, !dbg !194
  %add.ptr147 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %202, !dbg !195
  %qk_fetch.sroa.0.0.copyload2200 = load i64, ptr addrspace(4) %add.ptr147, align 16, !dbg !196
  %qk_fetch.sroa.38.0.add.ptr147.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr147, i64 8, !dbg !196
  %qk_fetch.sroa.38.0.copyload2217 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload2200, ptr addrspace(3) %add.ptr39, align 8, !dbg !197
  store i64 %qk_fetch.sroa.38.0.copyload2217, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !197
  %203 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %202, !dbg !195
  %add.ptr147.1 = getelementptr inbounds i8, ptr addrspace(4) %203, i64 1024, !dbg !195
  %qk_fetch.sroa.0.0.copyload2202 = load i64, ptr addrspace(4) %add.ptr147.1, align 16, !dbg !196
  %qk_fetch.sroa.38.0.add.ptr147.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %203, i64 1032, !dbg !196
  %qk_fetch.sroa.38.0.copyload2219 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.1.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload2202, ptr addrspace(3) %add.ptr39.1927, align 8, !dbg !197
  store i64 %qk_fetch.sroa.38.0.copyload2219, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !197
  fence syncscope("warp") release, !dbg !198
  tail call void @llvm.mxc.barrier.warp(), !dbg !201
  fence syncscope("warp") acquire, !dbg !202
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !203
  %204 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %9, <4 x float> zeroinitializer), !dbg !204
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !203
  %205 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %10, <4 x float> %204), !dbg !204
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !203
  %206 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %11, <4 x float> %205), !dbg !204
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !203
  %207 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %12, <4 x float> %206), !dbg !204
  %mul246 = shl nuw nsw i32 %15, 4
  %add250 = add nuw nsw i32 %mul246, %mul249
  %cmp253.not = icmp ugt i32 %add250, %1, !dbg !205
  %208 = extractelement <4 x float> %207, i64 1, !dbg !206
  %209 = extractelement <4 x float> %207, i64 2, !dbg !206
  %210 = extractelement <4 x float> %207, i64 3, !dbg !206
  %211 = extractelement <4 x float> %207, i64 0
  %spec.select = select i1 %cmp253.not, float 0xFFF0000000000000, float %211, !dbg !206
  %scores.sroa.0.0.vec.insert2300 = insertelement <4 x float> poison, float %spec.select, i64 0, !dbg !207
  %cmp253.not.1.not = icmp ult i32 %add250, %1, !dbg !205
  %condval.0.1 = select i1 %cmp253.not.1.not, float %208, float 0xFFF0000000000000, !dbg !206
  %scores.sroa.0.4.vec.insert2309 = insertelement <4 x float> %scores.sroa.0.0.vec.insert2300, float %condval.0.1, i64 1, !dbg !207
  %add251.2 = or disjoint i32 %add250, 2, !dbg !208
  %cmp253.not.2 = icmp ugt i32 %add251.2, %1, !dbg !205
  %condval.0.2 = select i1 %cmp253.not.2, float 0xFFF0000000000000, float %209, !dbg !206
  %scores.sroa.0.8.vec.insert2316 = insertelement <4 x float> %scores.sroa.0.4.vec.insert2309, float %condval.0.2, i64 2, !dbg !207
  %add251.3 = or disjoint i32 %add250, 3, !dbg !208
  %cmp253.not.3 = icmp ugt i32 %add251.3, %1, !dbg !205
  %condval.0.3 = select i1 %cmp253.not.3, float 0xFFF0000000000000, float %210, !dbg !206
  %scores.sroa.0.12.vec.insert2323 = insertelement <4 x float> %scores.sroa.0.8.vec.insert2316, float %condval.0.3, i64 3, !dbg !207
  br label %if.end268, !dbg !209

if.end268:                                        ; preds = %if.then, %entry
  %scores.sroa.0.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %entry ], [ %scores.sroa.0.12.vec.insert2323, %if.then ], !dbg !210
  %has_valid.sroa.0.1 = phi i32 [ 0, %entry ], [ 1, %if.then ], !dbg !210
  %212 = or disjoint i64 %14, 1, !dbg !211
  %arrayidx125.1 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %212, !dbg !65
  %213 = load i32, ptr addrspace(1) %arrayidx125.1, align 4, !dbg !65, !tbaa !30
  %or.cond886.1 = icmp ugt i32 %213, %invariant.umin, !dbg !66
  br i1 %or.cond886.1, label %if.end268.1, label %if.then.1, !dbg !66

if.then.1:                                        ; preds = %if.end268
  fence syncscope("warp") release, !dbg !189
  tail call void @llvm.mxc.barrier.warp(), !dbg !192
  fence syncscope("warp") acquire, !dbg !193
  %mul139.1 = shl nuw nsw i32 %213, 10
  %add142.1 = add nuw nsw i32 %add140, %mul139.1
  %214 = zext nneg i32 %add142.1 to i64, !dbg !194
  %add.ptr147.1947 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %214, !dbg !195
  %qk_fetch.sroa.0.0.copyload2203 = load i64, ptr addrspace(4) %add.ptr147.1947, align 16, !dbg !196
  %qk_fetch.sroa.38.0.add.ptr147.1947.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr147.1947, i64 8, !dbg !196
  %qk_fetch.sroa.38.0.copyload2220 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.1947.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload2203, ptr addrspace(3) %add.ptr39, align 8, !dbg !197
  store i64 %qk_fetch.sroa.38.0.copyload2220, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !197
  %215 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %214, !dbg !195
  %add.ptr147.1.1 = getelementptr inbounds i8, ptr addrspace(4) %215, i64 1024, !dbg !195
  %qk_fetch.sroa.0.0.copyload2204 = load i64, ptr addrspace(4) %add.ptr147.1.1, align 16, !dbg !196
  %qk_fetch.sroa.38.0.add.ptr147.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %215, i64 1032, !dbg !196
  %qk_fetch.sroa.38.0.copyload2221 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.1.1.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload2204, ptr addrspace(3) %add.ptr39.1927, align 8, !dbg !197
  store i64 %qk_fetch.sroa.38.0.copyload2221, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !197
  fence syncscope("warp") release, !dbg !198
  tail call void @llvm.mxc.barrier.warp(), !dbg !201
  fence syncscope("warp") acquire, !dbg !202
  %k_local.sroa.0.0.copyload.1960 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !203
  %216 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1960, <4 x half> %9, <4 x float> zeroinitializer), !dbg !204
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !203
  %217 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %10, <4 x float> %216), !dbg !204
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !203
  %218 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %11, <4 x float> %217), !dbg !204
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !203
  %219 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %12, <4 x float> %218), !dbg !204
  %mul246.1 = shl nuw nsw i32 %213, 4
  %add250.1 = add nuw nsw i32 %mul246.1, %mul249
  %cmp253.not.1961 = icmp ugt i32 %add250.1, %1, !dbg !205
  %220 = extractelement <4 x float> %219, i64 1, !dbg !206
  %221 = extractelement <4 x float> %219, i64 2, !dbg !206
  %222 = extractelement <4 x float> %219, i64 3, !dbg !206
  %223 = extractelement <4 x float> %219, i64 0
  %spec.select2291 = select i1 %cmp253.not.1961, float 0xFFF0000000000000, float %223, !dbg !206
  %scores.sroa.23.16.vec.insert2331 = insertelement <4 x float> poison, float %spec.select2291, i64 0, !dbg !207
  %cmp253.not.1.1.not = icmp ult i32 %add250.1, %1, !dbg !205
  %condval.0.1.1 = select i1 %cmp253.not.1.1.not, float %220, float 0xFFF0000000000000, !dbg !206
  %scores.sroa.23.20.vec.insert2337 = insertelement <4 x float> %scores.sroa.23.16.vec.insert2331, float %condval.0.1.1, i64 1, !dbg !207
  %add251.2.1 = or disjoint i32 %add250.1, 2, !dbg !208
  %cmp253.not.2.1 = icmp ugt i32 %add251.2.1, %1, !dbg !205
  %condval.0.2.1 = select i1 %cmp253.not.2.1, float 0xFFF0000000000000, float %221, !dbg !206
  %scores.sroa.23.24.vec.insert2344 = insertelement <4 x float> %scores.sroa.23.20.vec.insert2337, float %condval.0.2.1, i64 2, !dbg !207
  %add251.3.1 = or disjoint i32 %add250.1, 3, !dbg !208
  %cmp253.not.3.1 = icmp ugt i32 %add251.3.1, %1, !dbg !205
  %condval.0.3.1 = select i1 %cmp253.not.3.1, float 0xFFF0000000000000, float %222, !dbg !206
  %scores.sroa.23.28.vec.insert2351 = insertelement <4 x float> %scores.sroa.23.24.vec.insert2344, float %condval.0.3.1, i64 3, !dbg !207
  br label %if.end268.1, !dbg !209

if.end268.1:                                      ; preds = %if.then.1, %if.end268
  %scores.sroa.23.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end268 ], [ %scores.sroa.23.28.vec.insert2351, %if.then.1 ], !dbg !210
  %has_valid.sroa.0.1.1 = phi i32 [ %has_valid.sroa.0.1, %if.end268 ], [ 1, %if.then.1 ], !dbg !210
  %224 = or disjoint i64 %14, 2, !dbg !211
  %arrayidx125.2 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %224, !dbg !65
  %225 = load i32, ptr addrspace(1) %arrayidx125.2, align 4, !dbg !65, !tbaa !30
  %or.cond886.2 = icmp ugt i32 %225, %invariant.umin, !dbg !66
  br i1 %or.cond886.2, label %if.end268.2, label %if.then.2, !dbg !66

if.then.2:                                        ; preds = %if.end268.1
  fence syncscope("warp") release, !dbg !189
  tail call void @llvm.mxc.barrier.warp(), !dbg !192
  fence syncscope("warp") acquire, !dbg !193
  %mul139.2 = shl nuw nsw i32 %225, 10
  %add142.2 = add nuw nsw i32 %add140, %mul139.2
  %226 = zext nneg i32 %add142.2 to i64, !dbg !194
  %add.ptr147.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %226, !dbg !195
  %qk_fetch.sroa.0.0.copyload2205 = load i64, ptr addrspace(4) %add.ptr147.2, align 16, !dbg !196
  %qk_fetch.sroa.38.0.add.ptr147.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr147.2, i64 8, !dbg !196
  %qk_fetch.sroa.38.0.copyload2222 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.2.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload2205, ptr addrspace(3) %add.ptr39, align 8, !dbg !197
  store i64 %qk_fetch.sroa.38.0.copyload2222, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !197
  %227 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %226, !dbg !195
  %add.ptr147.1.2 = getelementptr inbounds i8, ptr addrspace(4) %227, i64 1024, !dbg !195
  %qk_fetch.sroa.0.0.copyload2206 = load i64, ptr addrspace(4) %add.ptr147.1.2, align 16, !dbg !196
  %qk_fetch.sroa.38.0.add.ptr147.1.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %227, i64 1032, !dbg !196
  %qk_fetch.sroa.38.0.copyload2223 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.1.2.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload2206, ptr addrspace(3) %add.ptr39.1927, align 8, !dbg !197
  store i64 %qk_fetch.sroa.38.0.copyload2223, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !197
  fence syncscope("warp") release, !dbg !198
  tail call void @llvm.mxc.barrier.warp(), !dbg !201
  fence syncscope("warp") acquire, !dbg !202
  %k_local.sroa.0.0.copyload.2973 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !203
  %228 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2973, <4 x half> %9, <4 x float> zeroinitializer), !dbg !204
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !203
  %229 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %10, <4 x float> %228), !dbg !204
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !203
  %230 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %11, <4 x float> %229), !dbg !204
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !203
  %231 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %12, <4 x float> %230), !dbg !204
  %mul246.2 = shl nuw nsw i32 %225, 4
  %add250.2 = add nuw nsw i32 %mul246.2, %mul249
  %cmp253.not.2974 = icmp ugt i32 %add250.2, %1, !dbg !205
  %232 = extractelement <4 x float> %231, i64 1, !dbg !206
  %233 = extractelement <4 x float> %231, i64 2, !dbg !206
  %234 = extractelement <4 x float> %231, i64 3, !dbg !206
  %235 = extractelement <4 x float> %231, i64 0
  %spec.select2292 = select i1 %cmp253.not.2974, float 0xFFF0000000000000, float %235, !dbg !206
  %scores.sroa.44.32.vec.insert2360 = insertelement <4 x float> poison, float %spec.select2292, i64 0, !dbg !207
  %cmp253.not.1.2.not = icmp ult i32 %add250.2, %1, !dbg !205
  %condval.0.1.2 = select i1 %cmp253.not.1.2.not, float %232, float 0xFFF0000000000000, !dbg !206
  %scores.sroa.44.36.vec.insert2366 = insertelement <4 x float> %scores.sroa.44.32.vec.insert2360, float %condval.0.1.2, i64 1, !dbg !207
  %add251.2.2 = or disjoint i32 %add250.2, 2, !dbg !208
  %cmp253.not.2.2 = icmp ugt i32 %add251.2.2, %1, !dbg !205
  %condval.0.2.2 = select i1 %cmp253.not.2.2, float 0xFFF0000000000000, float %233, !dbg !206
  %scores.sroa.44.40.vec.insert2373 = insertelement <4 x float> %scores.sroa.44.36.vec.insert2366, float %condval.0.2.2, i64 2, !dbg !207
  %add251.3.2 = or disjoint i32 %add250.2, 3, !dbg !208
  %cmp253.not.3.2 = icmp ugt i32 %add251.3.2, %1, !dbg !205
  %condval.0.3.2 = select i1 %cmp253.not.3.2, float 0xFFF0000000000000, float %234, !dbg !206
  %scores.sroa.44.44.vec.insert2380 = insertelement <4 x float> %scores.sroa.44.40.vec.insert2373, float %condval.0.3.2, i64 3, !dbg !207
  br label %if.end268.2, !dbg !209

if.end268.2:                                      ; preds = %if.then.2, %if.end268.1
  %scores.sroa.44.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end268.1 ], [ %scores.sroa.44.44.vec.insert2380, %if.then.2 ], !dbg !210
  %has_valid.sroa.0.1.2 = phi i32 [ %has_valid.sroa.0.1.1, %if.end268.1 ], [ 1, %if.then.2 ], !dbg !210
  %236 = or disjoint i64 %14, 3, !dbg !211
  %arrayidx125.3 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %236, !dbg !65
  %237 = load i32, ptr addrspace(1) %arrayidx125.3, align 4, !dbg !65, !tbaa !30
  %or.cond886.3 = icmp ugt i32 %237, %invariant.umin, !dbg !66
  br i1 %or.cond886.3, label %if.end268.3, label %if.then.3, !dbg !66

if.then.3:                                        ; preds = %if.end268.2
  fence syncscope("warp") release, !dbg !189
  tail call void @llvm.mxc.barrier.warp(), !dbg !192
  fence syncscope("warp") acquire, !dbg !193
  %mul139.3 = shl nuw nsw i32 %237, 10
  %add142.3 = add nuw nsw i32 %add140, %mul139.3
  %238 = zext nneg i32 %add142.3 to i64, !dbg !194
  %add.ptr147.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %238, !dbg !195
  %qk_fetch.sroa.0.0.copyload2207 = load i64, ptr addrspace(4) %add.ptr147.3, align 16, !dbg !196
  %qk_fetch.sroa.38.0.add.ptr147.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr147.3, i64 8, !dbg !196
  %qk_fetch.sroa.38.0.copyload2224 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.3.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload2207, ptr addrspace(3) %add.ptr39, align 8, !dbg !197
  store i64 %qk_fetch.sroa.38.0.copyload2224, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !197
  %239 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %238, !dbg !195
  %add.ptr147.1.3 = getelementptr inbounds i8, ptr addrspace(4) %239, i64 1024, !dbg !195
  %qk_fetch.sroa.0.0.copyload2208 = load i64, ptr addrspace(4) %add.ptr147.1.3, align 16, !dbg !196
  %qk_fetch.sroa.38.0.add.ptr147.1.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %239, i64 1032, !dbg !196
  %qk_fetch.sroa.38.0.copyload2225 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.1.3.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload2208, ptr addrspace(3) %add.ptr39.1927, align 8, !dbg !197
  store i64 %qk_fetch.sroa.38.0.copyload2225, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !197
  fence syncscope("warp") release, !dbg !198
  tail call void @llvm.mxc.barrier.warp(), !dbg !201
  fence syncscope("warp") acquire, !dbg !202
  %k_local.sroa.0.0.copyload.3986 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !203
  %240 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3986, <4 x half> %9, <4 x float> zeroinitializer), !dbg !204
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !203
  %241 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %10, <4 x float> %240), !dbg !204
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !203
  %242 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %11, <4 x float> %241), !dbg !204
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !203
  %243 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %12, <4 x float> %242), !dbg !204
  %mul246.3 = shl nuw nsw i32 %237, 4
  %add250.3 = add nuw nsw i32 %mul246.3, %mul249
  %cmp253.not.3987 = icmp ugt i32 %add250.3, %1, !dbg !205
  %244 = extractelement <4 x float> %243, i64 1, !dbg !206
  %245 = extractelement <4 x float> %243, i64 2, !dbg !206
  %246 = extractelement <4 x float> %243, i64 3, !dbg !206
  %247 = extractelement <4 x float> %243, i64 0
  %spec.select2293 = select i1 %cmp253.not.3987, float 0xFFF0000000000000, float %247, !dbg !206
  %scores.sroa.65.48.vec.insert2389 = insertelement <4 x float> poison, float %spec.select2293, i64 0, !dbg !207
  %cmp253.not.1.3.not = icmp ult i32 %add250.3, %1, !dbg !205
  %condval.0.1.3 = select i1 %cmp253.not.1.3.not, float %244, float 0xFFF0000000000000, !dbg !206
  %scores.sroa.65.52.vec.insert2395 = insertelement <4 x float> %scores.sroa.65.48.vec.insert2389, float %condval.0.1.3, i64 1, !dbg !207
  %add251.2.3 = or disjoint i32 %add250.3, 2, !dbg !208
  %cmp253.not.2.3 = icmp ugt i32 %add251.2.3, %1, !dbg !205
  %condval.0.2.3 = select i1 %cmp253.not.2.3, float 0xFFF0000000000000, float %245, !dbg !206
  %scores.sroa.65.56.vec.insert2402 = insertelement <4 x float> %scores.sroa.65.52.vec.insert2395, float %condval.0.2.3, i64 2, !dbg !207
  %add251.3.3 = or disjoint i32 %add250.3, 3, !dbg !208
  %cmp253.not.3.3 = icmp ugt i32 %add251.3.3, %1, !dbg !205
  %condval.0.3.3 = select i1 %cmp253.not.3.3, float 0xFFF0000000000000, float %246, !dbg !206
  %scores.sroa.65.60.vec.insert2409 = insertelement <4 x float> %scores.sroa.65.56.vec.insert2402, float %condval.0.3.3, i64 3, !dbg !207
  br label %if.end268.3, !dbg !209

if.end268.3:                                      ; preds = %if.then.3, %if.end268.2
  %scores.sroa.65.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end268.2 ], [ %scores.sroa.65.60.vec.insert2409, %if.then.3 ], !dbg !210
  %has_valid.sroa.0.1.3 = phi i32 [ %has_valid.sroa.0.1.2, %if.end268.2 ], [ 1, %if.then.3 ], !dbg !210
  %248 = or disjoint i64 %14, 4, !dbg !211
  %arrayidx125.4 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %248, !dbg !65
  %249 = load i32, ptr addrspace(1) %arrayidx125.4, align 4, !dbg !65, !tbaa !30
  %or.cond886.4 = icmp ugt i32 %249, %invariant.umin, !dbg !66
  br i1 %or.cond886.4, label %if.end268.4, label %if.then.4, !dbg !66

if.then.4:                                        ; preds = %if.end268.3
  fence syncscope("warp") release, !dbg !189
  tail call void @llvm.mxc.barrier.warp(), !dbg !192
  fence syncscope("warp") acquire, !dbg !193
  %mul139.4 = shl nuw nsw i32 %249, 10
  %add142.4 = add nuw nsw i32 %add140, %mul139.4
  %250 = zext nneg i32 %add142.4 to i64, !dbg !194
  %add.ptr147.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %250, !dbg !195
  %qk_fetch.sroa.0.0.copyload2209 = load i64, ptr addrspace(4) %add.ptr147.4, align 16, !dbg !196
  %qk_fetch.sroa.38.0.add.ptr147.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr147.4, i64 8, !dbg !196
  %qk_fetch.sroa.38.0.copyload2226 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.4.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload2209, ptr addrspace(3) %add.ptr39, align 8, !dbg !197
  store i64 %qk_fetch.sroa.38.0.copyload2226, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !197
  %251 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %250, !dbg !195
  %add.ptr147.1.4 = getelementptr inbounds i8, ptr addrspace(4) %251, i64 1024, !dbg !195
  %qk_fetch.sroa.0.0.copyload2210 = load i64, ptr addrspace(4) %add.ptr147.1.4, align 16, !dbg !196
  %qk_fetch.sroa.38.0.add.ptr147.1.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %251, i64 1032, !dbg !196
  %qk_fetch.sroa.38.0.copyload2227 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.1.4.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload2210, ptr addrspace(3) %add.ptr39.1927, align 8, !dbg !197
  store i64 %qk_fetch.sroa.38.0.copyload2227, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !197
  fence syncscope("warp") release, !dbg !198
  tail call void @llvm.mxc.barrier.warp(), !dbg !201
  fence syncscope("warp") acquire, !dbg !202
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !203
  %252 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %9, <4 x float> zeroinitializer), !dbg !204
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !203
  %253 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %10, <4 x float> %252), !dbg !204
  %k_local.sroa.0.0.copyload.2.4 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !203
  %254 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.4, <4 x half> %11, <4 x float> %253), !dbg !204
  %k_local.sroa.0.0.copyload.3.4 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !203
  %255 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.4, <4 x half> %12, <4 x float> %254), !dbg !204
  %mul246.4 = shl nuw nsw i32 %249, 4
  %add250.4 = add nuw nsw i32 %mul246.4, %mul249
  %cmp253.not.4 = icmp ugt i32 %add250.4, %1, !dbg !205
  %256 = extractelement <4 x float> %255, i64 1, !dbg !206
  %257 = extractelement <4 x float> %255, i64 2, !dbg !206
  %258 = extractelement <4 x float> %255, i64 3, !dbg !206
  %259 = extractelement <4 x float> %255, i64 0
  %spec.select2294 = select i1 %cmp253.not.4, float 0xFFF0000000000000, float %259, !dbg !206
  %scores.sroa.86.64.vec.insert2418 = insertelement <4 x float> poison, float %spec.select2294, i64 0, !dbg !207
  %cmp253.not.1.4.not = icmp ult i32 %add250.4, %1, !dbg !205
  %condval.0.1.4 = select i1 %cmp253.not.1.4.not, float %256, float 0xFFF0000000000000, !dbg !206
  %scores.sroa.86.68.vec.insert2424 = insertelement <4 x float> %scores.sroa.86.64.vec.insert2418, float %condval.0.1.4, i64 1, !dbg !207
  %add251.2.4 = or disjoint i32 %add250.4, 2, !dbg !208
  %cmp253.not.2.4 = icmp ugt i32 %add251.2.4, %1, !dbg !205
  %condval.0.2.4 = select i1 %cmp253.not.2.4, float 0xFFF0000000000000, float %257, !dbg !206
  %scores.sroa.86.72.vec.insert2431 = insertelement <4 x float> %scores.sroa.86.68.vec.insert2424, float %condval.0.2.4, i64 2, !dbg !207
  %add251.3.4 = or disjoint i32 %add250.4, 3, !dbg !208
  %cmp253.not.3.4 = icmp ugt i32 %add251.3.4, %1, !dbg !205
  %condval.0.3.4 = select i1 %cmp253.not.3.4, float 0xFFF0000000000000, float %258, !dbg !206
  %scores.sroa.86.76.vec.insert2438 = insertelement <4 x float> %scores.sroa.86.72.vec.insert2431, float %condval.0.3.4, i64 3, !dbg !207
  br label %if.end268.4, !dbg !209

if.end268.4:                                      ; preds = %if.then.4, %if.end268.3
  %scores.sroa.86.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end268.3 ], [ %scores.sroa.86.76.vec.insert2438, %if.then.4 ], !dbg !210
  %has_valid.sroa.0.1.4 = phi i32 [ %has_valid.sroa.0.1.3, %if.end268.3 ], [ 1, %if.then.4 ], !dbg !210
  %260 = or disjoint i64 %14, 5, !dbg !211
  %arrayidx125.5 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %260, !dbg !65
  %261 = load i32, ptr addrspace(1) %arrayidx125.5, align 4, !dbg !65, !tbaa !30
  %or.cond886.5 = icmp ugt i32 %261, %invariant.umin, !dbg !66
  br i1 %or.cond886.5, label %if.end268.5, label %if.then.5, !dbg !66

if.then.5:                                        ; preds = %if.end268.4
  fence syncscope("warp") release, !dbg !189
  tail call void @llvm.mxc.barrier.warp(), !dbg !192
  fence syncscope("warp") acquire, !dbg !193
  %mul139.5 = shl nuw nsw i32 %261, 10
  %add142.5 = add nuw nsw i32 %add140, %mul139.5
  %262 = zext nneg i32 %add142.5 to i64, !dbg !194
  %add.ptr147.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %262, !dbg !195
  %qk_fetch.sroa.0.0.copyload2211 = load i64, ptr addrspace(4) %add.ptr147.5, align 16, !dbg !196
  %qk_fetch.sroa.38.0.add.ptr147.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr147.5, i64 8, !dbg !196
  %qk_fetch.sroa.38.0.copyload2228 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.5.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload2211, ptr addrspace(3) %add.ptr39, align 8, !dbg !197
  store i64 %qk_fetch.sroa.38.0.copyload2228, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !197
  %263 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %262, !dbg !195
  %add.ptr147.1.5 = getelementptr inbounds i8, ptr addrspace(4) %263, i64 1024, !dbg !195
  %qk_fetch.sroa.0.0.copyload2212 = load i64, ptr addrspace(4) %add.ptr147.1.5, align 16, !dbg !196
  %qk_fetch.sroa.38.0.add.ptr147.1.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %263, i64 1032, !dbg !196
  %qk_fetch.sroa.38.0.copyload2229 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.1.5.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload2212, ptr addrspace(3) %add.ptr39.1927, align 8, !dbg !197
  store i64 %qk_fetch.sroa.38.0.copyload2229, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !197
  fence syncscope("warp") release, !dbg !198
  tail call void @llvm.mxc.barrier.warp(), !dbg !201
  fence syncscope("warp") acquire, !dbg !202
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !203
  %264 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %9, <4 x float> zeroinitializer), !dbg !204
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !203
  %265 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %10, <4 x float> %264), !dbg !204
  %k_local.sroa.0.0.copyload.2.5 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !203
  %266 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.5, <4 x half> %11, <4 x float> %265), !dbg !204
  %k_local.sroa.0.0.copyload.3.5 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !203
  %267 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.5, <4 x half> %12, <4 x float> %266), !dbg !204
  %mul246.5 = shl nuw nsw i32 %261, 4
  %add250.5 = add nuw nsw i32 %mul246.5, %mul249
  %cmp253.not.5 = icmp ugt i32 %add250.5, %1, !dbg !205
  %268 = extractelement <4 x float> %267, i64 1, !dbg !206
  %269 = extractelement <4 x float> %267, i64 2, !dbg !206
  %270 = extractelement <4 x float> %267, i64 3, !dbg !206
  %271 = extractelement <4 x float> %267, i64 0
  %spec.select2295 = select i1 %cmp253.not.5, float 0xFFF0000000000000, float %271, !dbg !206
  %scores.sroa.107.80.vec.insert2447 = insertelement <4 x float> poison, float %spec.select2295, i64 0, !dbg !207
  %cmp253.not.1.5.not = icmp ult i32 %add250.5, %1, !dbg !205
  %condval.0.1.5 = select i1 %cmp253.not.1.5.not, float %268, float 0xFFF0000000000000, !dbg !206
  %scores.sroa.107.84.vec.insert2453 = insertelement <4 x float> %scores.sroa.107.80.vec.insert2447, float %condval.0.1.5, i64 1, !dbg !207
  %add251.2.5 = or disjoint i32 %add250.5, 2, !dbg !208
  %cmp253.not.2.5 = icmp ugt i32 %add251.2.5, %1, !dbg !205
  %condval.0.2.5 = select i1 %cmp253.not.2.5, float 0xFFF0000000000000, float %269, !dbg !206
  %scores.sroa.107.88.vec.insert2460 = insertelement <4 x float> %scores.sroa.107.84.vec.insert2453, float %condval.0.2.5, i64 2, !dbg !207
  %add251.3.5 = or disjoint i32 %add250.5, 3, !dbg !208
  %cmp253.not.3.5 = icmp ugt i32 %add251.3.5, %1, !dbg !205
  %condval.0.3.5 = select i1 %cmp253.not.3.5, float 0xFFF0000000000000, float %270, !dbg !206
  %scores.sroa.107.92.vec.insert2467 = insertelement <4 x float> %scores.sroa.107.88.vec.insert2460, float %condval.0.3.5, i64 3, !dbg !207
  br label %if.end268.5, !dbg !209

if.end268.5:                                      ; preds = %if.then.5, %if.end268.4
  %scores.sroa.107.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end268.4 ], [ %scores.sroa.107.92.vec.insert2467, %if.then.5 ], !dbg !210
  %has_valid.sroa.0.1.5 = phi i32 [ %has_valid.sroa.0.1.4, %if.end268.4 ], [ 1, %if.then.5 ], !dbg !210
  %272 = or disjoint i64 %14, 6, !dbg !211
  %arrayidx125.6 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %272, !dbg !65
  %273 = load i32, ptr addrspace(1) %arrayidx125.6, align 4, !dbg !65, !tbaa !30
  %or.cond886.6 = icmp ugt i32 %273, %invariant.umin, !dbg !66
  br i1 %or.cond886.6, label %if.end268.6, label %if.then.6, !dbg !66

if.then.6:                                        ; preds = %if.end268.5
  fence syncscope("warp") release, !dbg !189
  tail call void @llvm.mxc.barrier.warp(), !dbg !192
  fence syncscope("warp") acquire, !dbg !193
  %mul139.6 = shl nuw nsw i32 %273, 10
  %add142.6 = add nuw nsw i32 %add140, %mul139.6
  %274 = zext nneg i32 %add142.6 to i64, !dbg !194
  %add.ptr147.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %274, !dbg !195
  %qk_fetch.sroa.0.0.copyload2213 = load i64, ptr addrspace(4) %add.ptr147.6, align 16, !dbg !196
  %qk_fetch.sroa.38.0.add.ptr147.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr147.6, i64 8, !dbg !196
  %qk_fetch.sroa.38.0.copyload2230 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.6.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload2213, ptr addrspace(3) %add.ptr39, align 8, !dbg !197
  store i64 %qk_fetch.sroa.38.0.copyload2230, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !197
  %275 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %274, !dbg !195
  %add.ptr147.1.6 = getelementptr inbounds i8, ptr addrspace(4) %275, i64 1024, !dbg !195
  %qk_fetch.sroa.0.0.copyload2214 = load i64, ptr addrspace(4) %add.ptr147.1.6, align 16, !dbg !196
  %qk_fetch.sroa.38.0.add.ptr147.1.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %275, i64 1032, !dbg !196
  %qk_fetch.sroa.38.0.copyload2231 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.1.6.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload2214, ptr addrspace(3) %add.ptr39.1927, align 8, !dbg !197
  store i64 %qk_fetch.sroa.38.0.copyload2231, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !197
  fence syncscope("warp") release, !dbg !198
  tail call void @llvm.mxc.barrier.warp(), !dbg !201
  fence syncscope("warp") acquire, !dbg !202
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !203
  %276 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %9, <4 x float> zeroinitializer), !dbg !204
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !203
  %277 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %10, <4 x float> %276), !dbg !204
  %k_local.sroa.0.0.copyload.2.6 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !203
  %278 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.6, <4 x half> %11, <4 x float> %277), !dbg !204
  %k_local.sroa.0.0.copyload.3.6 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !203
  %279 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.6, <4 x half> %12, <4 x float> %278), !dbg !204
  %mul246.6 = shl nuw nsw i32 %273, 4
  %add250.6 = add nuw nsw i32 %mul246.6, %mul249
  %cmp253.not.6 = icmp ugt i32 %add250.6, %1, !dbg !205
  %280 = extractelement <4 x float> %279, i64 1, !dbg !206
  %281 = extractelement <4 x float> %279, i64 2, !dbg !206
  %282 = extractelement <4 x float> %279, i64 3, !dbg !206
  %283 = extractelement <4 x float> %279, i64 0
  %spec.select2296 = select i1 %cmp253.not.6, float 0xFFF0000000000000, float %283, !dbg !206
  %scores.sroa.128.96.vec.insert2476 = insertelement <4 x float> poison, float %spec.select2296, i64 0, !dbg !207
  %cmp253.not.1.6.not = icmp ult i32 %add250.6, %1, !dbg !205
  %condval.0.1.6 = select i1 %cmp253.not.1.6.not, float %280, float 0xFFF0000000000000, !dbg !206
  %scores.sroa.128.100.vec.insert2482 = insertelement <4 x float> %scores.sroa.128.96.vec.insert2476, float %condval.0.1.6, i64 1, !dbg !207
  %add251.2.6 = or disjoint i32 %add250.6, 2, !dbg !208
  %cmp253.not.2.6 = icmp ugt i32 %add251.2.6, %1, !dbg !205
  %condval.0.2.6 = select i1 %cmp253.not.2.6, float 0xFFF0000000000000, float %281, !dbg !206
  %scores.sroa.128.104.vec.insert2489 = insertelement <4 x float> %scores.sroa.128.100.vec.insert2482, float %condval.0.2.6, i64 2, !dbg !207
  %add251.3.6 = or disjoint i32 %add250.6, 3, !dbg !208
  %cmp253.not.3.6 = icmp ugt i32 %add251.3.6, %1, !dbg !205
  %condval.0.3.6 = select i1 %cmp253.not.3.6, float 0xFFF0000000000000, float %282, !dbg !206
  %scores.sroa.128.108.vec.insert2496 = insertelement <4 x float> %scores.sroa.128.104.vec.insert2489, float %condval.0.3.6, i64 3, !dbg !207
  br label %if.end268.6, !dbg !209

if.end268.6:                                      ; preds = %if.then.6, %if.end268.5
  %scores.sroa.128.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end268.5 ], [ %scores.sroa.128.108.vec.insert2496, %if.then.6 ], !dbg !210
  %has_valid.sroa.0.1.6 = phi i32 [ %has_valid.sroa.0.1.5, %if.end268.5 ], [ 1, %if.then.6 ], !dbg !210
  %284 = or disjoint i64 %14, 7, !dbg !211
  %arrayidx125.7 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %284, !dbg !65
  %285 = load i32, ptr addrspace(1) %arrayidx125.7, align 4, !dbg !65, !tbaa !30
  %or.cond886.7 = icmp ugt i32 %285, %invariant.umin, !dbg !66
  br i1 %or.cond886.7, label %if.end268.7, label %if.then.7, !dbg !66

if.then.7:                                        ; preds = %if.end268.6
  fence syncscope("warp") release, !dbg !189
  tail call void @llvm.mxc.barrier.warp(), !dbg !192
  fence syncscope("warp") acquire, !dbg !193
  %mul139.7 = shl nuw nsw i32 %285, 10
  %add142.7 = add nuw nsw i32 %add140, %mul139.7
  %286 = zext nneg i32 %add142.7 to i64, !dbg !194
  %add.ptr147.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %286, !dbg !195
  %qk_fetch.sroa.0.0.copyload2215 = load i64, ptr addrspace(4) %add.ptr147.7, align 16, !dbg !196
  %qk_fetch.sroa.38.0.add.ptr147.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr147.7, i64 8, !dbg !196
  %qk_fetch.sroa.38.0.copyload2232 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.7.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload2215, ptr addrspace(3) %add.ptr39, align 8, !dbg !197
  store i64 %qk_fetch.sroa.38.0.copyload2232, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !197
  %287 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %286, !dbg !195
  %add.ptr147.1.7 = getelementptr inbounds i8, ptr addrspace(4) %287, i64 1024, !dbg !195
  %qk_fetch.sroa.0.0.copyload2216 = load i64, ptr addrspace(4) %add.ptr147.1.7, align 16, !dbg !196
  %qk_fetch.sroa.38.0.add.ptr147.1.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %287, i64 1032, !dbg !196
  %qk_fetch.sroa.38.0.copyload2233 = load i64, ptr addrspace(4) %qk_fetch.sroa.38.0.add.ptr147.1.7.sroa_idx, align 8, !dbg !196
  store i64 %qk_fetch.sroa.0.0.copyload2216, ptr addrspace(3) %add.ptr39.1927, align 8, !dbg !197
  store i64 %qk_fetch.sroa.38.0.copyload2233, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !197
  fence syncscope("warp") release, !dbg !198
  tail call void @llvm.mxc.barrier.warp(), !dbg !201
  fence syncscope("warp") acquire, !dbg !202
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !203
  %288 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %9, <4 x float> zeroinitializer), !dbg !204
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !203
  %289 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %10, <4 x float> %288), !dbg !204
  %k_local.sroa.0.0.copyload.2.7 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !203
  %290 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.7, <4 x half> %11, <4 x float> %289), !dbg !204
  %k_local.sroa.0.0.copyload.3.7 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !203
  %291 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.7, <4 x half> %12, <4 x float> %290), !dbg !204
  %mul246.7 = shl nuw nsw i32 %285, 4
  %add250.7 = add nuw nsw i32 %mul246.7, %mul249
  %cmp253.not.7 = icmp ugt i32 %add250.7, %1, !dbg !205
  %292 = extractelement <4 x float> %291, i64 1, !dbg !206
  %293 = extractelement <4 x float> %291, i64 2, !dbg !206
  %294 = extractelement <4 x float> %291, i64 3, !dbg !206
  %295 = extractelement <4 x float> %291, i64 0
  %spec.select2297 = select i1 %cmp253.not.7, float 0xFFF0000000000000, float %295, !dbg !206
  %scores.sroa.149.112.vec.insert2505 = insertelement <4 x float> poison, float %spec.select2297, i64 0, !dbg !207
  %cmp253.not.1.7.not = icmp ult i32 %add250.7, %1, !dbg !205
  %condval.0.1.7 = select i1 %cmp253.not.1.7.not, float %292, float 0xFFF0000000000000, !dbg !206
  %scores.sroa.149.116.vec.insert2511 = insertelement <4 x float> %scores.sroa.149.112.vec.insert2505, float %condval.0.1.7, i64 1, !dbg !207
  %add251.2.7 = or disjoint i32 %add250.7, 2, !dbg !208
  %cmp253.not.2.7 = icmp ugt i32 %add251.2.7, %1, !dbg !205
  %condval.0.2.7 = select i1 %cmp253.not.2.7, float 0xFFF0000000000000, float %293, !dbg !206
  %scores.sroa.149.120.vec.insert2518 = insertelement <4 x float> %scores.sroa.149.116.vec.insert2511, float %condval.0.2.7, i64 2, !dbg !207
  %add251.3.7 = or disjoint i32 %add250.7, 3, !dbg !208
  %cmp253.not.3.7 = icmp ugt i32 %add251.3.7, %1, !dbg !205
  %condval.0.3.7 = select i1 %cmp253.not.3.7, float 0xFFF0000000000000, float %294, !dbg !206
  %scores.sroa.149.124.vec.insert2525 = insertelement <4 x float> %scores.sroa.149.120.vec.insert2518, float %condval.0.3.7, i64 3, !dbg !207
  br label %if.end268.7, !dbg !209

if.end268.7:                                      ; preds = %if.then.7, %if.end268.6
  %scores.sroa.149.0 = phi <4 x float> [ <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, %if.end268.6 ], [ %scores.sroa.149.124.vec.insert2525, %if.then.7 ], !dbg !210
  %has_valid.sroa.0.1.7 = phi i32 [ %has_valid.sroa.0.1.6, %if.end268.6 ], [ 1, %if.then.7 ], !dbg !210
  %tobool.not = icmp eq i32 %has_valid.sroa.0.1.7, 0, !dbg !212
  br i1 %tobool.not, label %if.end409, label %for.body280.preheader, !dbg !212

if.end409:                                        ; preds = %for.body280.preheader, %if.end268.7
  %296 = phi <4 x half> [ zeroinitializer, %if.end268.7 ], [ %189, %for.body280.preheader ], !dbg !210
  %297 = phi <4 x half> [ zeroinitializer, %if.end268.7 ], [ %173, %for.body280.preheader ], !dbg !210
  %298 = phi <4 x half> [ zeroinitializer, %if.end268.7 ], [ %157, %for.body280.preheader ], !dbg !210
  %299 = phi <4 x half> [ zeroinitializer, %if.end268.7 ], [ %141, %for.body280.preheader ], !dbg !210
  %300 = phi <4 x half> [ zeroinitializer, %if.end268.7 ], [ %125, %for.body280.preheader ], !dbg !210
  %301 = phi <4 x half> [ zeroinitializer, %if.end268.7 ], [ %109, %for.body280.preheader ], !dbg !210
  %302 = phi <4 x half> [ zeroinitializer, %if.end268.7 ], [ %93, %for.body280.preheader ], !dbg !210
  %303 = phi <4 x half> [ zeroinitializer, %if.end268.7 ], [ %77, %for.body280.preheader ], !dbg !210
  %denominator.sroa.0.1 = phi float [ 0.000000e+00, %if.end268.7 ], [ %add407, %for.body280.preheader ], !dbg !210
  %304 = shl nuw nsw i32 %2, 4
  %mul453 = and i32 %304, 16128
  %and458 = shl nuw nsw i32 %2, 2
  %mul459 = and i32 %and458, 60
  %305 = or disjoint i32 %mul453, %mul459
  %add454 = or disjoint i32 %305, %mul138
  %mul492 = and i32 %304, 240
  %shr498 = and i32 %13, 3
  %xor499 = xor i32 %shr498, %and60
  %and513 = shl nuw nsw i32 %2, 8
  %mul514 = and i32 %and513, 768
  %mul520 = and i32 %and458, 48
  %and526 = and i32 %2, 3
  %306 = xor i32 %and60, %and526
  %307 = load i32, ptr addrspace(1) %arrayidx125, align 4, !dbg !213, !tbaa !30
  %or.cond887 = icmp ugt i32 %307, %invariant.umin, !dbg !214
  br i1 %or.cond887, label %if.end558, label %if.then442, !dbg !214

if.then442:                                       ; preds = %if.end409
  fence syncscope("warp") release, !dbg !215
  tail call void @llvm.mxc.barrier.warp(), !dbg !218
  fence syncscope("warp") acquire, !dbg !219
  %mul449 = shl nuw nsw i32 %307, 10
  %add456 = add nuw nsw i32 %add454, %mul449
  %308 = zext nneg i32 %add456 to i64, !dbg !220
  %add.ptr462 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %308, !dbg !221
  %309 = load i64, ptr addrspace(4) %add.ptr462, align 8, !dbg !222
  %310 = or disjoint i64 %308, 64, !dbg !223
  %add.ptr462.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %310, !dbg !221
  %311 = load i64, ptr addrspace(4) %add.ptr462.1, align 8, !dbg !222
  %312 = or disjoint i64 %308, 128, !dbg !223
  %add.ptr462.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %312, !dbg !221
  %313 = load i64, ptr addrspace(4) %add.ptr462.2, align 8, !dbg !222
  %314 = or disjoint i64 %308, 192, !dbg !223
  %add.ptr462.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %314, !dbg !221
  %315 = load i64, ptr addrspace(4) %add.ptr462.3, align 8, !dbg !222
  %316 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul492, !dbg !224
  %add.ptr504.idx = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504 = getelementptr inbounds i8, ptr addrspace(3) %316, i32 %add.ptr504.idx, !dbg !224
  %v_column.sroa.130.0.insert.ext = shl i64 %315, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext = shl i64 %313, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift = and i64 %v_column.sroa.98.0.insert.ext, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert = or disjoint i64 %v_column.sroa.130.0.insert.ext, %v_column.sroa.98.0.insert.shift, !dbg !225
  %v_column.sroa.66.0.insert.ext = shl i64 %311, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift = and i64 %v_column.sroa.66.0.insert.ext, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert = or disjoint i64 %v_column.sroa.98.0.insert.insert, %v_column.sroa.66.0.insert.shift, !dbg !225
  %v_column.sroa.0.0.insert.ext = and i64 %309, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert = or disjoint i64 %v_column.sroa.66.0.insert.insert, %v_column.sroa.0.0.insert.ext, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr504, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift = lshr i64 %309, 16, !dbg !226
  %add493.1 = or disjoint i32 %mul492, 256, !dbg !227
  %317 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.1, !dbg !224
  %xor500.1 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.1 = xor i32 %xor500.1, 8, !dbg !224
  %add.ptr504.1 = getelementptr inbounds i8, ptr addrspace(3) %317, i32 %add.ptr504.idx.1, !dbg !224
  %318 = shl i64 %315, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1485 = and i64 %318, -281474976710656, !dbg !225
  %319 = shl i64 %313, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1331 = and i64 %319, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1333 = or disjoint i64 %v_column.sroa.130.0.insert.ext1485, %v_column.sroa.98.0.insert.shift1331, !dbg !225
  %v_column.sroa.66.0.insert.ext1175 = and i64 %311, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1178 = or disjoint i64 %v_column.sroa.98.0.insert.insert1333, %v_column.sroa.66.0.insert.ext1175, !dbg !225
  %v_column.sroa.0.0.insert.ext1051 = and i64 %v_fetch.sroa.0.2.extract.shift, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1053 = or disjoint i64 %v_column.sroa.66.0.insert.insert1178, %v_column.sroa.0.0.insert.ext1051, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1053, ptr addrspace(3) %add.ptr504.1, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift = lshr i64 %309, 32, !dbg !226
  %add493.2 = or disjoint i32 %mul492, 512, !dbg !227
  %320 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.2, !dbg !224
  %xor500.2 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.2 = xor i32 %xor500.2, 16, !dbg !224
  %add.ptr504.2 = getelementptr inbounds i8, ptr addrspace(3) %320, i32 %add.ptr504.idx.2, !dbg !224
  %321 = shl i64 %315, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1490 = and i64 %321, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1335 = and i64 %313, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1338 = or disjoint i64 %v_column.sroa.130.0.insert.ext1490, %v_column.sroa.98.0.insert.ext1335, !dbg !225
  %322 = lshr i64 %311, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1181 = and i64 %322, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1183 = or disjoint i64 %v_column.sroa.98.0.insert.insert1338, %v_column.sroa.66.0.insert.shift1181, !dbg !225
  %v_column.sroa.0.0.insert.ext1055 = and i64 %v_fetch.sroa.0.4.extract.shift, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1057 = or disjoint i64 %v_column.sroa.66.0.insert.insert1183, %v_column.sroa.0.0.insert.ext1055, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1057, ptr addrspace(3) %add.ptr504.2, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift = lshr i64 %309, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift = and i64 %315, -281474976710656, !dbg !225
  %add493.3 = or disjoint i32 %mul492, 768, !dbg !227
  %323 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.3, !dbg !224
  %xor500.3 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.3 = xor i32 %xor500.3, 24, !dbg !224
  %add.ptr504.3 = getelementptr inbounds i8, ptr addrspace(3) %323, i32 %add.ptr504.idx.3, !dbg !224
  %324 = lshr i64 %313, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1341 = and i64 %324, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1343 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift, %v_column.sroa.98.0.insert.shift1341, !dbg !225
  %325 = lshr i64 %311, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1186 = and i64 %325, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1188 = or disjoint i64 %v_column.sroa.98.0.insert.insert1343, %v_column.sroa.66.0.insert.shift1186, !dbg !225
  %v_column.sroa.0.0.insert.insert1061 = or disjoint i64 %v_column.sroa.66.0.insert.insert1188, %v_fetch.sroa.0.6.extract.shift, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1061, ptr addrspace(3) %add.ptr504.3, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add521 = or disjoint i32 %mul514, %mul520, !dbg !233
  %326 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521, !dbg !234
  %add.ptr531.idx = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531 = getelementptr inbounds i8, ptr addrspace(3) %326, i32 %add.ptr531.idx, !dbg !234
  %327 = load <4 x half>, ptr addrspace(3) %add.ptr531, align 8, !dbg !235
  %add516.1 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.1 = or disjoint i32 %add516.1, 64, !dbg !233
  %328 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.1, !dbg !234
  %xor527.1 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.1 = xor i32 %xor527.1, 8, !dbg !234
  %add.ptr531.1 = getelementptr inbounds i8, ptr addrspace(3) %328, i32 %add.ptr531.idx.1, !dbg !234
  %329 = load <4 x half>, ptr addrspace(3) %add.ptr531.1, align 8, !dbg !235
  %add516.2 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.2 = or disjoint i32 %add516.2, 128, !dbg !233
  %330 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.2, !dbg !234
  %xor527.2 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.2 = xor i32 %xor527.2, 16, !dbg !234
  %add.ptr531.2 = getelementptr inbounds i8, ptr addrspace(3) %330, i32 %add.ptr531.idx.2, !dbg !234
  %331 = load <4 x half>, ptr addrspace(3) %add.ptr531.2, align 8, !dbg !235
  %add516.3 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.3 = or disjoint i32 %add516.3, 192, !dbg !233
  %332 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.3, !dbg !234
  %xor527.3 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.3 = xor i32 %xor527.3, 24, !dbg !234
  %add.ptr531.3 = getelementptr inbounds i8, ptr addrspace(3) %332, i32 %add.ptr531.idx.3, !dbg !234
  %333 = load <4 x half>, ptr addrspace(3) %add.ptr531.3, align 8, !dbg !235
  %334 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %327, <4 x half> %303, <4 x float> zeroinitializer), !dbg !236
  %335 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %329, <4 x half> %303, <4 x float> zeroinitializer), !dbg !236
  %336 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %331, <4 x half> %303, <4 x float> zeroinitializer), !dbg !236
  %337 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %333, <4 x half> %303, <4 x float> zeroinitializer), !dbg !236
  br label %if.end558, !dbg !237

if.end558:                                        ; preds = %if.then442, %if.end409
  %numerator.sroa.98.0 = phi <4 x float> [ zeroinitializer, %if.end409 ], [ %337, %if.then442 ], !dbg !210
  %numerator.sroa.66.0 = phi <4 x float> [ zeroinitializer, %if.end409 ], [ %336, %if.then442 ], !dbg !210
  %numerator.sroa.34.0 = phi <4 x float> [ zeroinitializer, %if.end409 ], [ %335, %if.then442 ], !dbg !210
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %if.end409 ], [ %334, %if.then442 ], !dbg !210
  %338 = load i32, ptr addrspace(1) %arrayidx125.1, align 4, !dbg !213, !tbaa !30
  %or.cond887.1 = icmp ugt i32 %338, %invariant.umin, !dbg !214
  br i1 %or.cond887.1, label %if.end558.1, label %if.then442.1, !dbg !214

if.then442.1:                                     ; preds = %if.end558
  fence syncscope("warp") release, !dbg !215
  tail call void @llvm.mxc.barrier.warp(), !dbg !218
  fence syncscope("warp") acquire, !dbg !219
  %mul449.1 = shl nuw nsw i32 %338, 10
  %add456.1 = add nuw nsw i32 %add454, %mul449.1
  %339 = zext nneg i32 %add456.1 to i64, !dbg !220
  %add.ptr462.11002 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %339, !dbg !221
  %340 = load i64, ptr addrspace(4) %add.ptr462.11002, align 8, !dbg !222
  %341 = or disjoint i64 %339, 64, !dbg !223
  %add.ptr462.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %341, !dbg !221
  %342 = load i64, ptr addrspace(4) %add.ptr462.1.1, align 8, !dbg !222
  %343 = or disjoint i64 %339, 128, !dbg !223
  %add.ptr462.2.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %343, !dbg !221
  %344 = load i64, ptr addrspace(4) %add.ptr462.2.1, align 8, !dbg !222
  %345 = or disjoint i64 %339, 192, !dbg !223
  %add.ptr462.3.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %345, !dbg !221
  %346 = load i64, ptr addrspace(4) %add.ptr462.3.1, align 8, !dbg !222
  %347 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul492, !dbg !224
  %add.ptr504.idx.11009 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.11010 = getelementptr inbounds i8, ptr addrspace(3) %347, i32 %add.ptr504.idx.11009, !dbg !224
  %v_column.sroa.130.0.insert.ext1500 = shl i64 %346, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext1345 = shl i64 %344, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift1346 = and i64 %v_column.sroa.98.0.insert.ext1345, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1348 = or disjoint i64 %v_column.sroa.130.0.insert.ext1500, %v_column.sroa.98.0.insert.shift1346, !dbg !225
  %v_column.sroa.66.0.insert.ext1190 = shl i64 %342, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1191 = and i64 %v_column.sroa.66.0.insert.ext1190, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1193 = or disjoint i64 %v_column.sroa.98.0.insert.insert1348, %v_column.sroa.66.0.insert.shift1191, !dbg !225
  %v_column.sroa.0.0.insert.ext1063 = and i64 %340, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1065 = or disjoint i64 %v_column.sroa.66.0.insert.insert1193, %v_column.sroa.0.0.insert.ext1063, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1065, ptr addrspace(3) %add.ptr504.11010, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1714 = lshr i64 %340, 16, !dbg !226
  %add493.1.1 = or disjoint i32 %mul492, 256, !dbg !227
  %348 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.1.1, !dbg !224
  %xor500.1.1 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.1.1 = xor i32 %xor500.1.1, 8, !dbg !224
  %add.ptr504.1.1 = getelementptr inbounds i8, ptr addrspace(3) %348, i32 %add.ptr504.idx.1.1, !dbg !224
  %349 = shl i64 %346, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1505 = and i64 %349, -281474976710656, !dbg !225
  %350 = shl i64 %344, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1351 = and i64 %350, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1353 = or disjoint i64 %v_column.sroa.130.0.insert.ext1505, %v_column.sroa.98.0.insert.shift1351, !dbg !225
  %v_column.sroa.66.0.insert.ext1195 = and i64 %342, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1198 = or disjoint i64 %v_column.sroa.98.0.insert.insert1353, %v_column.sroa.66.0.insert.ext1195, !dbg !225
  %v_column.sroa.0.0.insert.ext1067 = and i64 %v_fetch.sroa.0.2.extract.shift1714, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1069 = or disjoint i64 %v_column.sroa.66.0.insert.insert1198, %v_column.sroa.0.0.insert.ext1067, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1069, ptr addrspace(3) %add.ptr504.1.1, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1735 = lshr i64 %340, 32, !dbg !226
  %add493.2.1 = or disjoint i32 %mul492, 512, !dbg !227
  %351 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.2.1, !dbg !224
  %xor500.2.1 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.2.1 = xor i32 %xor500.2.1, 16, !dbg !224
  %add.ptr504.2.1 = getelementptr inbounds i8, ptr addrspace(3) %351, i32 %add.ptr504.idx.2.1, !dbg !224
  %352 = shl i64 %346, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1510 = and i64 %352, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1355 = and i64 %344, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1358 = or disjoint i64 %v_column.sroa.130.0.insert.ext1510, %v_column.sroa.98.0.insert.ext1355, !dbg !225
  %353 = lshr i64 %342, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1201 = and i64 %353, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1203 = or disjoint i64 %v_column.sroa.98.0.insert.insert1358, %v_column.sroa.66.0.insert.shift1201, !dbg !225
  %v_column.sroa.0.0.insert.ext1071 = and i64 %v_fetch.sroa.0.4.extract.shift1735, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1073 = or disjoint i64 %v_column.sroa.66.0.insert.insert1203, %v_column.sroa.0.0.insert.ext1071, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1073, ptr addrspace(3) %add.ptr504.2.1, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1756 = lshr i64 %340, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift1987 = and i64 %346, -281474976710656, !dbg !225
  %add493.3.1 = or disjoint i32 %mul492, 768, !dbg !227
  %354 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.3.1, !dbg !224
  %xor500.3.1 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.3.1 = xor i32 %xor500.3.1, 24, !dbg !224
  %add.ptr504.3.1 = getelementptr inbounds i8, ptr addrspace(3) %354, i32 %add.ptr504.idx.3.1, !dbg !224
  %355 = lshr i64 %344, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1361 = and i64 %355, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1363 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1987, %v_column.sroa.98.0.insert.shift1361, !dbg !225
  %356 = lshr i64 %342, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1206 = and i64 %356, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1208 = or disjoint i64 %v_column.sroa.98.0.insert.insert1363, %v_column.sroa.66.0.insert.shift1206, !dbg !225
  %v_column.sroa.0.0.insert.insert1077 = or disjoint i64 %v_column.sroa.66.0.insert.insert1208, %v_fetch.sroa.0.6.extract.shift1756, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1077, ptr addrspace(3) %add.ptr504.3.1, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add521.11012 = or disjoint i32 %mul514, %mul520, !dbg !233
  %357 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.11012, !dbg !234
  %add.ptr531.idx.11013 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.11014 = getelementptr inbounds i8, ptr addrspace(3) %357, i32 %add.ptr531.idx.11013, !dbg !234
  %358 = load <4 x half>, ptr addrspace(3) %add.ptr531.11014, align 8, !dbg !235
  %add516.1.1 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.1.1 = or disjoint i32 %add516.1.1, 64, !dbg !233
  %359 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.1.1, !dbg !234
  %xor527.1.1 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.1.1 = xor i32 %xor527.1.1, 8, !dbg !234
  %add.ptr531.1.1 = getelementptr inbounds i8, ptr addrspace(3) %359, i32 %add.ptr531.idx.1.1, !dbg !234
  %360 = load <4 x half>, ptr addrspace(3) %add.ptr531.1.1, align 8, !dbg !235
  %add516.2.1 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.2.1 = or disjoint i32 %add516.2.1, 128, !dbg !233
  %361 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.2.1, !dbg !234
  %xor527.2.1 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.2.1 = xor i32 %xor527.2.1, 16, !dbg !234
  %add.ptr531.2.1 = getelementptr inbounds i8, ptr addrspace(3) %361, i32 %add.ptr531.idx.2.1, !dbg !234
  %362 = load <4 x half>, ptr addrspace(3) %add.ptr531.2.1, align 8, !dbg !235
  %add516.3.1 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.3.1 = or disjoint i32 %add516.3.1, 192, !dbg !233
  %363 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.3.1, !dbg !234
  %xor527.3.1 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.3.1 = xor i32 %xor527.3.1, 24, !dbg !234
  %add.ptr531.3.1 = getelementptr inbounds i8, ptr addrspace(3) %363, i32 %add.ptr531.idx.3.1, !dbg !234
  %364 = load <4 x half>, ptr addrspace(3) %add.ptr531.3.1, align 8, !dbg !235
  %365 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %358, <4 x half> %302, <4 x float> %numerator.sroa.0.0), !dbg !236
  %366 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %360, <4 x half> %302, <4 x float> %numerator.sroa.34.0), !dbg !236
  %367 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %362, <4 x half> %302, <4 x float> %numerator.sroa.66.0), !dbg !236
  %368 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %364, <4 x half> %302, <4 x float> %numerator.sroa.98.0), !dbg !236
  br label %if.end558.1, !dbg !237

if.end558.1:                                      ; preds = %if.then442.1, %if.end558
  %numerator.sroa.98.1 = phi <4 x float> [ %numerator.sroa.98.0, %if.end558 ], [ %368, %if.then442.1 ], !dbg !210
  %numerator.sroa.66.1 = phi <4 x float> [ %numerator.sroa.66.0, %if.end558 ], [ %367, %if.then442.1 ], !dbg !210
  %numerator.sroa.34.1 = phi <4 x float> [ %numerator.sroa.34.0, %if.end558 ], [ %366, %if.then442.1 ], !dbg !210
  %numerator.sroa.0.1 = phi <4 x float> [ %numerator.sroa.0.0, %if.end558 ], [ %365, %if.then442.1 ], !dbg !210
  %369 = load i32, ptr addrspace(1) %arrayidx125.2, align 4, !dbg !213, !tbaa !30
  %or.cond887.2 = icmp ugt i32 %369, %invariant.umin, !dbg !214
  br i1 %or.cond887.2, label %if.end558.2, label %if.then442.2, !dbg !214

if.then442.2:                                     ; preds = %if.end558.1
  fence syncscope("warp") release, !dbg !215
  tail call void @llvm.mxc.barrier.warp(), !dbg !218
  fence syncscope("warp") acquire, !dbg !219
  %mul449.2 = shl nuw nsw i32 %369, 10
  %add456.2 = add nuw nsw i32 %add454, %mul449.2
  %370 = zext nneg i32 %add456.2 to i64, !dbg !220
  %add.ptr462.21015 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %370, !dbg !221
  %371 = load i64, ptr addrspace(4) %add.ptr462.21015, align 8, !dbg !222
  %372 = or disjoint i64 %370, 64, !dbg !223
  %add.ptr462.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %372, !dbg !221
  %373 = load i64, ptr addrspace(4) %add.ptr462.1.2, align 8, !dbg !222
  %374 = or disjoint i64 %370, 128, !dbg !223
  %add.ptr462.2.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %374, !dbg !221
  %375 = load i64, ptr addrspace(4) %add.ptr462.2.2, align 8, !dbg !222
  %376 = or disjoint i64 %370, 192, !dbg !223
  %add.ptr462.3.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %376, !dbg !221
  %377 = load i64, ptr addrspace(4) %add.ptr462.3.2, align 8, !dbg !222
  %378 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul492, !dbg !224
  %add.ptr504.idx.21022 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.21023 = getelementptr inbounds i8, ptr addrspace(3) %378, i32 %add.ptr504.idx.21022, !dbg !224
  %v_column.sroa.130.0.insert.ext1520 = shl i64 %377, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext1365 = shl i64 %375, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift1366 = and i64 %v_column.sroa.98.0.insert.ext1365, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1368 = or disjoint i64 %v_column.sroa.130.0.insert.ext1520, %v_column.sroa.98.0.insert.shift1366, !dbg !225
  %v_column.sroa.66.0.insert.ext1210 = shl i64 %373, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1211 = and i64 %v_column.sroa.66.0.insert.ext1210, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1213 = or disjoint i64 %v_column.sroa.98.0.insert.insert1368, %v_column.sroa.66.0.insert.shift1211, !dbg !225
  %v_column.sroa.0.0.insert.ext1079 = and i64 %371, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1081 = or disjoint i64 %v_column.sroa.66.0.insert.insert1213, %v_column.sroa.0.0.insert.ext1079, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1081, ptr addrspace(3) %add.ptr504.21023, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1717 = lshr i64 %371, 16, !dbg !226
  %add493.1.2 = or disjoint i32 %mul492, 256, !dbg !227
  %379 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.1.2, !dbg !224
  %xor500.1.2 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.1.2 = xor i32 %xor500.1.2, 8, !dbg !224
  %add.ptr504.1.2 = getelementptr inbounds i8, ptr addrspace(3) %379, i32 %add.ptr504.idx.1.2, !dbg !224
  %380 = shl i64 %377, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1525 = and i64 %380, -281474976710656, !dbg !225
  %381 = shl i64 %375, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1371 = and i64 %381, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1373 = or disjoint i64 %v_column.sroa.130.0.insert.ext1525, %v_column.sroa.98.0.insert.shift1371, !dbg !225
  %v_column.sroa.66.0.insert.ext1215 = and i64 %373, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1218 = or disjoint i64 %v_column.sroa.98.0.insert.insert1373, %v_column.sroa.66.0.insert.ext1215, !dbg !225
  %v_column.sroa.0.0.insert.ext1083 = and i64 %v_fetch.sroa.0.2.extract.shift1717, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1085 = or disjoint i64 %v_column.sroa.66.0.insert.insert1218, %v_column.sroa.0.0.insert.ext1083, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1085, ptr addrspace(3) %add.ptr504.1.2, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1738 = lshr i64 %371, 32, !dbg !226
  %add493.2.2 = or disjoint i32 %mul492, 512, !dbg !227
  %382 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.2.2, !dbg !224
  %xor500.2.2 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.2.2 = xor i32 %xor500.2.2, 16, !dbg !224
  %add.ptr504.2.2 = getelementptr inbounds i8, ptr addrspace(3) %382, i32 %add.ptr504.idx.2.2, !dbg !224
  %383 = shl i64 %377, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1530 = and i64 %383, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1375 = and i64 %375, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1378 = or disjoint i64 %v_column.sroa.130.0.insert.ext1530, %v_column.sroa.98.0.insert.ext1375, !dbg !225
  %384 = lshr i64 %373, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1221 = and i64 %384, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1223 = or disjoint i64 %v_column.sroa.98.0.insert.insert1378, %v_column.sroa.66.0.insert.shift1221, !dbg !225
  %v_column.sroa.0.0.insert.ext1087 = and i64 %v_fetch.sroa.0.4.extract.shift1738, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1089 = or disjoint i64 %v_column.sroa.66.0.insert.insert1223, %v_column.sroa.0.0.insert.ext1087, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1089, ptr addrspace(3) %add.ptr504.2.2, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1759 = lshr i64 %371, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift1990 = and i64 %377, -281474976710656, !dbg !225
  %add493.3.2 = or disjoint i32 %mul492, 768, !dbg !227
  %385 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.3.2, !dbg !224
  %xor500.3.2 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.3.2 = xor i32 %xor500.3.2, 24, !dbg !224
  %add.ptr504.3.2 = getelementptr inbounds i8, ptr addrspace(3) %385, i32 %add.ptr504.idx.3.2, !dbg !224
  %386 = lshr i64 %375, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1381 = and i64 %386, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1383 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1990, %v_column.sroa.98.0.insert.shift1381, !dbg !225
  %387 = lshr i64 %373, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1226 = and i64 %387, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1228 = or disjoint i64 %v_column.sroa.98.0.insert.insert1383, %v_column.sroa.66.0.insert.shift1226, !dbg !225
  %v_column.sroa.0.0.insert.insert1093 = or disjoint i64 %v_column.sroa.66.0.insert.insert1228, %v_fetch.sroa.0.6.extract.shift1759, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1093, ptr addrspace(3) %add.ptr504.3.2, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add521.21025 = or disjoint i32 %mul514, %mul520, !dbg !233
  %388 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.21025, !dbg !234
  %add.ptr531.idx.21026 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.21027 = getelementptr inbounds i8, ptr addrspace(3) %388, i32 %add.ptr531.idx.21026, !dbg !234
  %389 = load <4 x half>, ptr addrspace(3) %add.ptr531.21027, align 8, !dbg !235
  %add516.1.2 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.1.2 = or disjoint i32 %add516.1.2, 64, !dbg !233
  %390 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.1.2, !dbg !234
  %xor527.1.2 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.1.2 = xor i32 %xor527.1.2, 8, !dbg !234
  %add.ptr531.1.2 = getelementptr inbounds i8, ptr addrspace(3) %390, i32 %add.ptr531.idx.1.2, !dbg !234
  %391 = load <4 x half>, ptr addrspace(3) %add.ptr531.1.2, align 8, !dbg !235
  %add516.2.2 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.2.2 = or disjoint i32 %add516.2.2, 128, !dbg !233
  %392 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.2.2, !dbg !234
  %xor527.2.2 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.2.2 = xor i32 %xor527.2.2, 16, !dbg !234
  %add.ptr531.2.2 = getelementptr inbounds i8, ptr addrspace(3) %392, i32 %add.ptr531.idx.2.2, !dbg !234
  %393 = load <4 x half>, ptr addrspace(3) %add.ptr531.2.2, align 8, !dbg !235
  %add516.3.2 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.3.2 = or disjoint i32 %add516.3.2, 192, !dbg !233
  %394 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.3.2, !dbg !234
  %xor527.3.2 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.3.2 = xor i32 %xor527.3.2, 24, !dbg !234
  %add.ptr531.3.2 = getelementptr inbounds i8, ptr addrspace(3) %394, i32 %add.ptr531.idx.3.2, !dbg !234
  %395 = load <4 x half>, ptr addrspace(3) %add.ptr531.3.2, align 8, !dbg !235
  %396 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %389, <4 x half> %301, <4 x float> %numerator.sroa.0.1), !dbg !236
  %397 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %391, <4 x half> %301, <4 x float> %numerator.sroa.34.1), !dbg !236
  %398 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %393, <4 x half> %301, <4 x float> %numerator.sroa.66.1), !dbg !236
  %399 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %395, <4 x half> %301, <4 x float> %numerator.sroa.98.1), !dbg !236
  br label %if.end558.2, !dbg !237

if.end558.2:                                      ; preds = %if.then442.2, %if.end558.1
  %numerator.sroa.98.2 = phi <4 x float> [ %numerator.sroa.98.1, %if.end558.1 ], [ %399, %if.then442.2 ], !dbg !210
  %numerator.sroa.66.2 = phi <4 x float> [ %numerator.sroa.66.1, %if.end558.1 ], [ %398, %if.then442.2 ], !dbg !210
  %numerator.sroa.34.2 = phi <4 x float> [ %numerator.sroa.34.1, %if.end558.1 ], [ %397, %if.then442.2 ], !dbg !210
  %numerator.sroa.0.2 = phi <4 x float> [ %numerator.sroa.0.1, %if.end558.1 ], [ %396, %if.then442.2 ], !dbg !210
  %400 = load i32, ptr addrspace(1) %arrayidx125.3, align 4, !dbg !213, !tbaa !30
  %or.cond887.3 = icmp ugt i32 %400, %invariant.umin, !dbg !214
  br i1 %or.cond887.3, label %if.end558.3, label %if.then442.3, !dbg !214

if.then442.3:                                     ; preds = %if.end558.2
  fence syncscope("warp") release, !dbg !215
  tail call void @llvm.mxc.barrier.warp(), !dbg !218
  fence syncscope("warp") acquire, !dbg !219
  %mul449.3 = shl nuw nsw i32 %400, 10
  %add456.3 = add nuw nsw i32 %add454, %mul449.3
  %401 = zext nneg i32 %add456.3 to i64, !dbg !220
  %add.ptr462.31028 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %401, !dbg !221
  %402 = load i64, ptr addrspace(4) %add.ptr462.31028, align 8, !dbg !222
  %403 = or disjoint i64 %401, 64, !dbg !223
  %add.ptr462.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %403, !dbg !221
  %404 = load i64, ptr addrspace(4) %add.ptr462.1.3, align 8, !dbg !222
  %405 = or disjoint i64 %401, 128, !dbg !223
  %add.ptr462.2.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %405, !dbg !221
  %406 = load i64, ptr addrspace(4) %add.ptr462.2.3, align 8, !dbg !222
  %407 = or disjoint i64 %401, 192, !dbg !223
  %add.ptr462.3.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %407, !dbg !221
  %408 = load i64, ptr addrspace(4) %add.ptr462.3.3, align 8, !dbg !222
  %409 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul492, !dbg !224
  %add.ptr504.idx.31035 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.31036 = getelementptr inbounds i8, ptr addrspace(3) %409, i32 %add.ptr504.idx.31035, !dbg !224
  %v_column.sroa.130.0.insert.ext1540 = shl i64 %408, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext1385 = shl i64 %406, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift1386 = and i64 %v_column.sroa.98.0.insert.ext1385, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1388 = or disjoint i64 %v_column.sroa.130.0.insert.ext1540, %v_column.sroa.98.0.insert.shift1386, !dbg !225
  %v_column.sroa.66.0.insert.ext1230 = shl i64 %404, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1231 = and i64 %v_column.sroa.66.0.insert.ext1230, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1233 = or disjoint i64 %v_column.sroa.98.0.insert.insert1388, %v_column.sroa.66.0.insert.shift1231, !dbg !225
  %v_column.sroa.0.0.insert.ext1095 = and i64 %402, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1097 = or disjoint i64 %v_column.sroa.66.0.insert.insert1233, %v_column.sroa.0.0.insert.ext1095, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1097, ptr addrspace(3) %add.ptr504.31036, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1720 = lshr i64 %402, 16, !dbg !226
  %add493.1.3 = or disjoint i32 %mul492, 256, !dbg !227
  %410 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.1.3, !dbg !224
  %xor500.1.3 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.1.3 = xor i32 %xor500.1.3, 8, !dbg !224
  %add.ptr504.1.3 = getelementptr inbounds i8, ptr addrspace(3) %410, i32 %add.ptr504.idx.1.3, !dbg !224
  %411 = shl i64 %408, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1545 = and i64 %411, -281474976710656, !dbg !225
  %412 = shl i64 %406, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1391 = and i64 %412, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1393 = or disjoint i64 %v_column.sroa.130.0.insert.ext1545, %v_column.sroa.98.0.insert.shift1391, !dbg !225
  %v_column.sroa.66.0.insert.ext1235 = and i64 %404, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1238 = or disjoint i64 %v_column.sroa.98.0.insert.insert1393, %v_column.sroa.66.0.insert.ext1235, !dbg !225
  %v_column.sroa.0.0.insert.ext1099 = and i64 %v_fetch.sroa.0.2.extract.shift1720, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1101 = or disjoint i64 %v_column.sroa.66.0.insert.insert1238, %v_column.sroa.0.0.insert.ext1099, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1101, ptr addrspace(3) %add.ptr504.1.3, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1741 = lshr i64 %402, 32, !dbg !226
  %add493.2.3 = or disjoint i32 %mul492, 512, !dbg !227
  %413 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.2.3, !dbg !224
  %xor500.2.3 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.2.3 = xor i32 %xor500.2.3, 16, !dbg !224
  %add.ptr504.2.3 = getelementptr inbounds i8, ptr addrspace(3) %413, i32 %add.ptr504.idx.2.3, !dbg !224
  %414 = shl i64 %408, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1550 = and i64 %414, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1395 = and i64 %406, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1398 = or disjoint i64 %v_column.sroa.130.0.insert.ext1550, %v_column.sroa.98.0.insert.ext1395, !dbg !225
  %415 = lshr i64 %404, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1241 = and i64 %415, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1243 = or disjoint i64 %v_column.sroa.98.0.insert.insert1398, %v_column.sroa.66.0.insert.shift1241, !dbg !225
  %v_column.sroa.0.0.insert.ext1103 = and i64 %v_fetch.sroa.0.4.extract.shift1741, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1105 = or disjoint i64 %v_column.sroa.66.0.insert.insert1243, %v_column.sroa.0.0.insert.ext1103, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1105, ptr addrspace(3) %add.ptr504.2.3, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1762 = lshr i64 %402, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift1993 = and i64 %408, -281474976710656, !dbg !225
  %add493.3.3 = or disjoint i32 %mul492, 768, !dbg !227
  %416 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.3.3, !dbg !224
  %xor500.3.3 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.3.3 = xor i32 %xor500.3.3, 24, !dbg !224
  %add.ptr504.3.3 = getelementptr inbounds i8, ptr addrspace(3) %416, i32 %add.ptr504.idx.3.3, !dbg !224
  %417 = lshr i64 %406, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1401 = and i64 %417, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1403 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1993, %v_column.sroa.98.0.insert.shift1401, !dbg !225
  %418 = lshr i64 %404, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1246 = and i64 %418, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1248 = or disjoint i64 %v_column.sroa.98.0.insert.insert1403, %v_column.sroa.66.0.insert.shift1246, !dbg !225
  %v_column.sroa.0.0.insert.insert1109 = or disjoint i64 %v_column.sroa.66.0.insert.insert1248, %v_fetch.sroa.0.6.extract.shift1762, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1109, ptr addrspace(3) %add.ptr504.3.3, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add521.31038 = or disjoint i32 %mul514, %mul520, !dbg !233
  %419 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.31038, !dbg !234
  %add.ptr531.idx.31039 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.31040 = getelementptr inbounds i8, ptr addrspace(3) %419, i32 %add.ptr531.idx.31039, !dbg !234
  %420 = load <4 x half>, ptr addrspace(3) %add.ptr531.31040, align 8, !dbg !235
  %add516.1.3 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.1.3 = or disjoint i32 %add516.1.3, 64, !dbg !233
  %421 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.1.3, !dbg !234
  %xor527.1.3 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.1.3 = xor i32 %xor527.1.3, 8, !dbg !234
  %add.ptr531.1.3 = getelementptr inbounds i8, ptr addrspace(3) %421, i32 %add.ptr531.idx.1.3, !dbg !234
  %422 = load <4 x half>, ptr addrspace(3) %add.ptr531.1.3, align 8, !dbg !235
  %add516.2.3 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.2.3 = or disjoint i32 %add516.2.3, 128, !dbg !233
  %423 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.2.3, !dbg !234
  %xor527.2.3 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.2.3 = xor i32 %xor527.2.3, 16, !dbg !234
  %add.ptr531.2.3 = getelementptr inbounds i8, ptr addrspace(3) %423, i32 %add.ptr531.idx.2.3, !dbg !234
  %424 = load <4 x half>, ptr addrspace(3) %add.ptr531.2.3, align 8, !dbg !235
  %add516.3.3 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.3.3 = or disjoint i32 %add516.3.3, 192, !dbg !233
  %425 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.3.3, !dbg !234
  %xor527.3.3 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.3.3 = xor i32 %xor527.3.3, 24, !dbg !234
  %add.ptr531.3.3 = getelementptr inbounds i8, ptr addrspace(3) %425, i32 %add.ptr531.idx.3.3, !dbg !234
  %426 = load <4 x half>, ptr addrspace(3) %add.ptr531.3.3, align 8, !dbg !235
  %427 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %420, <4 x half> %300, <4 x float> %numerator.sroa.0.2), !dbg !236
  %428 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %422, <4 x half> %300, <4 x float> %numerator.sroa.34.2), !dbg !236
  %429 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %424, <4 x half> %300, <4 x float> %numerator.sroa.66.2), !dbg !236
  %430 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %426, <4 x half> %300, <4 x float> %numerator.sroa.98.2), !dbg !236
  br label %if.end558.3, !dbg !237

if.end558.3:                                      ; preds = %if.then442.3, %if.end558.2
  %numerator.sroa.98.3 = phi <4 x float> [ %numerator.sroa.98.2, %if.end558.2 ], [ %430, %if.then442.3 ], !dbg !210
  %numerator.sroa.66.3 = phi <4 x float> [ %numerator.sroa.66.2, %if.end558.2 ], [ %429, %if.then442.3 ], !dbg !210
  %numerator.sroa.34.3 = phi <4 x float> [ %numerator.sroa.34.2, %if.end558.2 ], [ %428, %if.then442.3 ], !dbg !210
  %numerator.sroa.0.3 = phi <4 x float> [ %numerator.sroa.0.2, %if.end558.2 ], [ %427, %if.then442.3 ], !dbg !210
  %431 = load i32, ptr addrspace(1) %arrayidx125.4, align 4, !dbg !213, !tbaa !30
  %or.cond887.4 = icmp ugt i32 %431, %invariant.umin, !dbg !214
  br i1 %or.cond887.4, label %if.end558.4, label %if.then442.4, !dbg !214

if.then442.4:                                     ; preds = %if.end558.3
  fence syncscope("warp") release, !dbg !215
  tail call void @llvm.mxc.barrier.warp(), !dbg !218
  fence syncscope("warp") acquire, !dbg !219
  %mul449.4 = shl nuw nsw i32 %431, 10
  %add456.4 = add nuw nsw i32 %add454, %mul449.4
  %432 = zext nneg i32 %add456.4 to i64, !dbg !220
  %add.ptr462.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %432, !dbg !221
  %433 = load i64, ptr addrspace(4) %add.ptr462.4, align 8, !dbg !222
  %434 = or disjoint i64 %432, 64, !dbg !223
  %add.ptr462.1.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %434, !dbg !221
  %435 = load i64, ptr addrspace(4) %add.ptr462.1.4, align 8, !dbg !222
  %436 = or disjoint i64 %432, 128, !dbg !223
  %add.ptr462.2.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %436, !dbg !221
  %437 = load i64, ptr addrspace(4) %add.ptr462.2.4, align 8, !dbg !222
  %438 = or disjoint i64 %432, 192, !dbg !223
  %add.ptr462.3.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %438, !dbg !221
  %439 = load i64, ptr addrspace(4) %add.ptr462.3.4, align 8, !dbg !222
  %440 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul492, !dbg !224
  %add.ptr504.idx.4 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.4 = getelementptr inbounds i8, ptr addrspace(3) %440, i32 %add.ptr504.idx.4, !dbg !224
  %v_column.sroa.130.0.insert.ext1560 = shl i64 %439, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext1405 = shl i64 %437, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift1406 = and i64 %v_column.sroa.98.0.insert.ext1405, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1408 = or disjoint i64 %v_column.sroa.130.0.insert.ext1560, %v_column.sroa.98.0.insert.shift1406, !dbg !225
  %v_column.sroa.66.0.insert.ext1250 = shl i64 %435, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1251 = and i64 %v_column.sroa.66.0.insert.ext1250, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1253 = or disjoint i64 %v_column.sroa.98.0.insert.insert1408, %v_column.sroa.66.0.insert.shift1251, !dbg !225
  %v_column.sroa.0.0.insert.ext1111 = and i64 %433, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1113 = or disjoint i64 %v_column.sroa.66.0.insert.insert1253, %v_column.sroa.0.0.insert.ext1111, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1113, ptr addrspace(3) %add.ptr504.4, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1723 = lshr i64 %433, 16, !dbg !226
  %add493.1.4 = or disjoint i32 %mul492, 256, !dbg !227
  %441 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.1.4, !dbg !224
  %xor500.1.4 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.1.4 = xor i32 %xor500.1.4, 8, !dbg !224
  %add.ptr504.1.4 = getelementptr inbounds i8, ptr addrspace(3) %441, i32 %add.ptr504.idx.1.4, !dbg !224
  %442 = shl i64 %439, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1565 = and i64 %442, -281474976710656, !dbg !225
  %443 = shl i64 %437, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1411 = and i64 %443, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1413 = or disjoint i64 %v_column.sroa.130.0.insert.ext1565, %v_column.sroa.98.0.insert.shift1411, !dbg !225
  %v_column.sroa.66.0.insert.ext1255 = and i64 %435, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1258 = or disjoint i64 %v_column.sroa.98.0.insert.insert1413, %v_column.sroa.66.0.insert.ext1255, !dbg !225
  %v_column.sroa.0.0.insert.ext1115 = and i64 %v_fetch.sroa.0.2.extract.shift1723, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1117 = or disjoint i64 %v_column.sroa.66.0.insert.insert1258, %v_column.sroa.0.0.insert.ext1115, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1117, ptr addrspace(3) %add.ptr504.1.4, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1744 = lshr i64 %433, 32, !dbg !226
  %add493.2.4 = or disjoint i32 %mul492, 512, !dbg !227
  %444 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.2.4, !dbg !224
  %xor500.2.4 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.2.4 = xor i32 %xor500.2.4, 16, !dbg !224
  %add.ptr504.2.4 = getelementptr inbounds i8, ptr addrspace(3) %444, i32 %add.ptr504.idx.2.4, !dbg !224
  %445 = shl i64 %439, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1570 = and i64 %445, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1415 = and i64 %437, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1418 = or disjoint i64 %v_column.sroa.130.0.insert.ext1570, %v_column.sroa.98.0.insert.ext1415, !dbg !225
  %446 = lshr i64 %435, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1261 = and i64 %446, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1263 = or disjoint i64 %v_column.sroa.98.0.insert.insert1418, %v_column.sroa.66.0.insert.shift1261, !dbg !225
  %v_column.sroa.0.0.insert.ext1119 = and i64 %v_fetch.sroa.0.4.extract.shift1744, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1121 = or disjoint i64 %v_column.sroa.66.0.insert.insert1263, %v_column.sroa.0.0.insert.ext1119, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1121, ptr addrspace(3) %add.ptr504.2.4, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1765 = lshr i64 %433, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift1996 = and i64 %439, -281474976710656, !dbg !225
  %add493.3.4 = or disjoint i32 %mul492, 768, !dbg !227
  %447 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.3.4, !dbg !224
  %xor500.3.4 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.3.4 = xor i32 %xor500.3.4, 24, !dbg !224
  %add.ptr504.3.4 = getelementptr inbounds i8, ptr addrspace(3) %447, i32 %add.ptr504.idx.3.4, !dbg !224
  %448 = lshr i64 %437, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1421 = and i64 %448, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1423 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1996, %v_column.sroa.98.0.insert.shift1421, !dbg !225
  %449 = lshr i64 %435, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1266 = and i64 %449, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1268 = or disjoint i64 %v_column.sroa.98.0.insert.insert1423, %v_column.sroa.66.0.insert.shift1266, !dbg !225
  %v_column.sroa.0.0.insert.insert1125 = or disjoint i64 %v_column.sroa.66.0.insert.insert1268, %v_fetch.sroa.0.6.extract.shift1765, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1125, ptr addrspace(3) %add.ptr504.3.4, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add521.4 = or disjoint i32 %mul514, %mul520, !dbg !233
  %450 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.4, !dbg !234
  %add.ptr531.idx.4 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.4 = getelementptr inbounds i8, ptr addrspace(3) %450, i32 %add.ptr531.idx.4, !dbg !234
  %451 = load <4 x half>, ptr addrspace(3) %add.ptr531.4, align 8, !dbg !235
  %add516.1.4 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.1.4 = or disjoint i32 %add516.1.4, 64, !dbg !233
  %452 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.1.4, !dbg !234
  %xor527.1.4 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.1.4 = xor i32 %xor527.1.4, 8, !dbg !234
  %add.ptr531.1.4 = getelementptr inbounds i8, ptr addrspace(3) %452, i32 %add.ptr531.idx.1.4, !dbg !234
  %453 = load <4 x half>, ptr addrspace(3) %add.ptr531.1.4, align 8, !dbg !235
  %add516.2.4 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.2.4 = or disjoint i32 %add516.2.4, 128, !dbg !233
  %454 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.2.4, !dbg !234
  %xor527.2.4 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.2.4 = xor i32 %xor527.2.4, 16, !dbg !234
  %add.ptr531.2.4 = getelementptr inbounds i8, ptr addrspace(3) %454, i32 %add.ptr531.idx.2.4, !dbg !234
  %455 = load <4 x half>, ptr addrspace(3) %add.ptr531.2.4, align 8, !dbg !235
  %add516.3.4 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.3.4 = or disjoint i32 %add516.3.4, 192, !dbg !233
  %456 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.3.4, !dbg !234
  %xor527.3.4 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.3.4 = xor i32 %xor527.3.4, 24, !dbg !234
  %add.ptr531.3.4 = getelementptr inbounds i8, ptr addrspace(3) %456, i32 %add.ptr531.idx.3.4, !dbg !234
  %457 = load <4 x half>, ptr addrspace(3) %add.ptr531.3.4, align 8, !dbg !235
  %458 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %451, <4 x half> %299, <4 x float> %numerator.sroa.0.3), !dbg !236
  %459 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %453, <4 x half> %299, <4 x float> %numerator.sroa.34.3), !dbg !236
  %460 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %455, <4 x half> %299, <4 x float> %numerator.sroa.66.3), !dbg !236
  %461 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %457, <4 x half> %299, <4 x float> %numerator.sroa.98.3), !dbg !236
  br label %if.end558.4, !dbg !237

if.end558.4:                                      ; preds = %if.then442.4, %if.end558.3
  %numerator.sroa.98.4 = phi <4 x float> [ %numerator.sroa.98.3, %if.end558.3 ], [ %461, %if.then442.4 ], !dbg !210
  %numerator.sroa.66.4 = phi <4 x float> [ %numerator.sroa.66.3, %if.end558.3 ], [ %460, %if.then442.4 ], !dbg !210
  %numerator.sroa.34.4 = phi <4 x float> [ %numerator.sroa.34.3, %if.end558.3 ], [ %459, %if.then442.4 ], !dbg !210
  %numerator.sroa.0.4 = phi <4 x float> [ %numerator.sroa.0.3, %if.end558.3 ], [ %458, %if.then442.4 ], !dbg !210
  %462 = load i32, ptr addrspace(1) %arrayidx125.5, align 4, !dbg !213, !tbaa !30
  %or.cond887.5 = icmp ugt i32 %462, %invariant.umin, !dbg !214
  br i1 %or.cond887.5, label %if.end558.5, label %if.then442.5, !dbg !214

if.then442.5:                                     ; preds = %if.end558.4
  fence syncscope("warp") release, !dbg !215
  tail call void @llvm.mxc.barrier.warp(), !dbg !218
  fence syncscope("warp") acquire, !dbg !219
  %mul449.5 = shl nuw nsw i32 %462, 10
  %add456.5 = add nuw nsw i32 %add454, %mul449.5
  %463 = zext nneg i32 %add456.5 to i64, !dbg !220
  %add.ptr462.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %463, !dbg !221
  %464 = load i64, ptr addrspace(4) %add.ptr462.5, align 8, !dbg !222
  %465 = or disjoint i64 %463, 64, !dbg !223
  %add.ptr462.1.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %465, !dbg !221
  %466 = load i64, ptr addrspace(4) %add.ptr462.1.5, align 8, !dbg !222
  %467 = or disjoint i64 %463, 128, !dbg !223
  %add.ptr462.2.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %467, !dbg !221
  %468 = load i64, ptr addrspace(4) %add.ptr462.2.5, align 8, !dbg !222
  %469 = or disjoint i64 %463, 192, !dbg !223
  %add.ptr462.3.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %469, !dbg !221
  %470 = load i64, ptr addrspace(4) %add.ptr462.3.5, align 8, !dbg !222
  %471 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul492, !dbg !224
  %add.ptr504.idx.5 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.5 = getelementptr inbounds i8, ptr addrspace(3) %471, i32 %add.ptr504.idx.5, !dbg !224
  %v_column.sroa.130.0.insert.ext1580 = shl i64 %470, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext1425 = shl i64 %468, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift1426 = and i64 %v_column.sroa.98.0.insert.ext1425, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1428 = or disjoint i64 %v_column.sroa.130.0.insert.ext1580, %v_column.sroa.98.0.insert.shift1426, !dbg !225
  %v_column.sroa.66.0.insert.ext1270 = shl i64 %466, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1271 = and i64 %v_column.sroa.66.0.insert.ext1270, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1273 = or disjoint i64 %v_column.sroa.98.0.insert.insert1428, %v_column.sroa.66.0.insert.shift1271, !dbg !225
  %v_column.sroa.0.0.insert.ext1127 = and i64 %464, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1129 = or disjoint i64 %v_column.sroa.66.0.insert.insert1273, %v_column.sroa.0.0.insert.ext1127, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1129, ptr addrspace(3) %add.ptr504.5, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1726 = lshr i64 %464, 16, !dbg !226
  %add493.1.5 = or disjoint i32 %mul492, 256, !dbg !227
  %472 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.1.5, !dbg !224
  %xor500.1.5 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.1.5 = xor i32 %xor500.1.5, 8, !dbg !224
  %add.ptr504.1.5 = getelementptr inbounds i8, ptr addrspace(3) %472, i32 %add.ptr504.idx.1.5, !dbg !224
  %473 = shl i64 %470, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1585 = and i64 %473, -281474976710656, !dbg !225
  %474 = shl i64 %468, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1431 = and i64 %474, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1433 = or disjoint i64 %v_column.sroa.130.0.insert.ext1585, %v_column.sroa.98.0.insert.shift1431, !dbg !225
  %v_column.sroa.66.0.insert.ext1275 = and i64 %466, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1278 = or disjoint i64 %v_column.sroa.98.0.insert.insert1433, %v_column.sroa.66.0.insert.ext1275, !dbg !225
  %v_column.sroa.0.0.insert.ext1131 = and i64 %v_fetch.sroa.0.2.extract.shift1726, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1133 = or disjoint i64 %v_column.sroa.66.0.insert.insert1278, %v_column.sroa.0.0.insert.ext1131, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1133, ptr addrspace(3) %add.ptr504.1.5, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1747 = lshr i64 %464, 32, !dbg !226
  %add493.2.5 = or disjoint i32 %mul492, 512, !dbg !227
  %475 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.2.5, !dbg !224
  %xor500.2.5 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.2.5 = xor i32 %xor500.2.5, 16, !dbg !224
  %add.ptr504.2.5 = getelementptr inbounds i8, ptr addrspace(3) %475, i32 %add.ptr504.idx.2.5, !dbg !224
  %476 = shl i64 %470, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1590 = and i64 %476, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1435 = and i64 %468, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1438 = or disjoint i64 %v_column.sroa.130.0.insert.ext1590, %v_column.sroa.98.0.insert.ext1435, !dbg !225
  %477 = lshr i64 %466, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1281 = and i64 %477, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1283 = or disjoint i64 %v_column.sroa.98.0.insert.insert1438, %v_column.sroa.66.0.insert.shift1281, !dbg !225
  %v_column.sroa.0.0.insert.ext1135 = and i64 %v_fetch.sroa.0.4.extract.shift1747, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1137 = or disjoint i64 %v_column.sroa.66.0.insert.insert1283, %v_column.sroa.0.0.insert.ext1135, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1137, ptr addrspace(3) %add.ptr504.2.5, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1768 = lshr i64 %464, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift1999 = and i64 %470, -281474976710656, !dbg !225
  %add493.3.5 = or disjoint i32 %mul492, 768, !dbg !227
  %478 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.3.5, !dbg !224
  %xor500.3.5 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.3.5 = xor i32 %xor500.3.5, 24, !dbg !224
  %add.ptr504.3.5 = getelementptr inbounds i8, ptr addrspace(3) %478, i32 %add.ptr504.idx.3.5, !dbg !224
  %479 = lshr i64 %468, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1441 = and i64 %479, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1443 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1999, %v_column.sroa.98.0.insert.shift1441, !dbg !225
  %480 = lshr i64 %466, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1286 = and i64 %480, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1288 = or disjoint i64 %v_column.sroa.98.0.insert.insert1443, %v_column.sroa.66.0.insert.shift1286, !dbg !225
  %v_column.sroa.0.0.insert.insert1141 = or disjoint i64 %v_column.sroa.66.0.insert.insert1288, %v_fetch.sroa.0.6.extract.shift1768, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1141, ptr addrspace(3) %add.ptr504.3.5, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add521.5 = or disjoint i32 %mul514, %mul520, !dbg !233
  %481 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.5, !dbg !234
  %add.ptr531.idx.5 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.5 = getelementptr inbounds i8, ptr addrspace(3) %481, i32 %add.ptr531.idx.5, !dbg !234
  %482 = load <4 x half>, ptr addrspace(3) %add.ptr531.5, align 8, !dbg !235
  %add516.1.5 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.1.5 = or disjoint i32 %add516.1.5, 64, !dbg !233
  %483 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.1.5, !dbg !234
  %xor527.1.5 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.1.5 = xor i32 %xor527.1.5, 8, !dbg !234
  %add.ptr531.1.5 = getelementptr inbounds i8, ptr addrspace(3) %483, i32 %add.ptr531.idx.1.5, !dbg !234
  %484 = load <4 x half>, ptr addrspace(3) %add.ptr531.1.5, align 8, !dbg !235
  %add516.2.5 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.2.5 = or disjoint i32 %add516.2.5, 128, !dbg !233
  %485 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.2.5, !dbg !234
  %xor527.2.5 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.2.5 = xor i32 %xor527.2.5, 16, !dbg !234
  %add.ptr531.2.5 = getelementptr inbounds i8, ptr addrspace(3) %485, i32 %add.ptr531.idx.2.5, !dbg !234
  %486 = load <4 x half>, ptr addrspace(3) %add.ptr531.2.5, align 8, !dbg !235
  %add516.3.5 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.3.5 = or disjoint i32 %add516.3.5, 192, !dbg !233
  %487 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.3.5, !dbg !234
  %xor527.3.5 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.3.5 = xor i32 %xor527.3.5, 24, !dbg !234
  %add.ptr531.3.5 = getelementptr inbounds i8, ptr addrspace(3) %487, i32 %add.ptr531.idx.3.5, !dbg !234
  %488 = load <4 x half>, ptr addrspace(3) %add.ptr531.3.5, align 8, !dbg !235
  %489 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %482, <4 x half> %298, <4 x float> %numerator.sroa.0.4), !dbg !236
  %490 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %484, <4 x half> %298, <4 x float> %numerator.sroa.34.4), !dbg !236
  %491 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %486, <4 x half> %298, <4 x float> %numerator.sroa.66.4), !dbg !236
  %492 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %488, <4 x half> %298, <4 x float> %numerator.sroa.98.4), !dbg !236
  br label %if.end558.5, !dbg !237

if.end558.5:                                      ; preds = %if.then442.5, %if.end558.4
  %numerator.sroa.98.5 = phi <4 x float> [ %numerator.sroa.98.4, %if.end558.4 ], [ %492, %if.then442.5 ], !dbg !210
  %numerator.sroa.66.5 = phi <4 x float> [ %numerator.sroa.66.4, %if.end558.4 ], [ %491, %if.then442.5 ], !dbg !210
  %numerator.sroa.34.5 = phi <4 x float> [ %numerator.sroa.34.4, %if.end558.4 ], [ %490, %if.then442.5 ], !dbg !210
  %numerator.sroa.0.5 = phi <4 x float> [ %numerator.sroa.0.4, %if.end558.4 ], [ %489, %if.then442.5 ], !dbg !210
  %493 = load i32, ptr addrspace(1) %arrayidx125.6, align 4, !dbg !213, !tbaa !30
  %or.cond887.6 = icmp ugt i32 %493, %invariant.umin, !dbg !214
  br i1 %or.cond887.6, label %if.end558.6, label %if.then442.6, !dbg !214

if.then442.6:                                     ; preds = %if.end558.5
  fence syncscope("warp") release, !dbg !215
  tail call void @llvm.mxc.barrier.warp(), !dbg !218
  fence syncscope("warp") acquire, !dbg !219
  %mul449.6 = shl nuw nsw i32 %493, 10
  %add456.6 = add nuw nsw i32 %add454, %mul449.6
  %494 = zext nneg i32 %add456.6 to i64, !dbg !220
  %add.ptr462.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %494, !dbg !221
  %495 = load i64, ptr addrspace(4) %add.ptr462.6, align 8, !dbg !222
  %496 = or disjoint i64 %494, 64, !dbg !223
  %add.ptr462.1.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %496, !dbg !221
  %497 = load i64, ptr addrspace(4) %add.ptr462.1.6, align 8, !dbg !222
  %498 = or disjoint i64 %494, 128, !dbg !223
  %add.ptr462.2.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %498, !dbg !221
  %499 = load i64, ptr addrspace(4) %add.ptr462.2.6, align 8, !dbg !222
  %500 = or disjoint i64 %494, 192, !dbg !223
  %add.ptr462.3.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %500, !dbg !221
  %501 = load i64, ptr addrspace(4) %add.ptr462.3.6, align 8, !dbg !222
  %502 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul492, !dbg !224
  %add.ptr504.idx.6 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.6 = getelementptr inbounds i8, ptr addrspace(3) %502, i32 %add.ptr504.idx.6, !dbg !224
  %v_column.sroa.130.0.insert.ext1600 = shl i64 %501, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext1445 = shl i64 %499, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift1446 = and i64 %v_column.sroa.98.0.insert.ext1445, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1448 = or disjoint i64 %v_column.sroa.130.0.insert.ext1600, %v_column.sroa.98.0.insert.shift1446, !dbg !225
  %v_column.sroa.66.0.insert.ext1290 = shl i64 %497, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1291 = and i64 %v_column.sroa.66.0.insert.ext1290, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1293 = or disjoint i64 %v_column.sroa.98.0.insert.insert1448, %v_column.sroa.66.0.insert.shift1291, !dbg !225
  %v_column.sroa.0.0.insert.ext1143 = and i64 %495, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1145 = or disjoint i64 %v_column.sroa.66.0.insert.insert1293, %v_column.sroa.0.0.insert.ext1143, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1145, ptr addrspace(3) %add.ptr504.6, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1729 = lshr i64 %495, 16, !dbg !226
  %add493.1.6 = or disjoint i32 %mul492, 256, !dbg !227
  %503 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.1.6, !dbg !224
  %xor500.1.6 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.1.6 = xor i32 %xor500.1.6, 8, !dbg !224
  %add.ptr504.1.6 = getelementptr inbounds i8, ptr addrspace(3) %503, i32 %add.ptr504.idx.1.6, !dbg !224
  %504 = shl i64 %501, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1605 = and i64 %504, -281474976710656, !dbg !225
  %505 = shl i64 %499, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1451 = and i64 %505, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1453 = or disjoint i64 %v_column.sroa.130.0.insert.ext1605, %v_column.sroa.98.0.insert.shift1451, !dbg !225
  %v_column.sroa.66.0.insert.ext1295 = and i64 %497, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1298 = or disjoint i64 %v_column.sroa.98.0.insert.insert1453, %v_column.sroa.66.0.insert.ext1295, !dbg !225
  %v_column.sroa.0.0.insert.ext1147 = and i64 %v_fetch.sroa.0.2.extract.shift1729, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1149 = or disjoint i64 %v_column.sroa.66.0.insert.insert1298, %v_column.sroa.0.0.insert.ext1147, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1149, ptr addrspace(3) %add.ptr504.1.6, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1750 = lshr i64 %495, 32, !dbg !226
  %add493.2.6 = or disjoint i32 %mul492, 512, !dbg !227
  %506 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.2.6, !dbg !224
  %xor500.2.6 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.2.6 = xor i32 %xor500.2.6, 16, !dbg !224
  %add.ptr504.2.6 = getelementptr inbounds i8, ptr addrspace(3) %506, i32 %add.ptr504.idx.2.6, !dbg !224
  %507 = shl i64 %501, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1610 = and i64 %507, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1455 = and i64 %499, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1458 = or disjoint i64 %v_column.sroa.130.0.insert.ext1610, %v_column.sroa.98.0.insert.ext1455, !dbg !225
  %508 = lshr i64 %497, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1301 = and i64 %508, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1303 = or disjoint i64 %v_column.sroa.98.0.insert.insert1458, %v_column.sroa.66.0.insert.shift1301, !dbg !225
  %v_column.sroa.0.0.insert.ext1151 = and i64 %v_fetch.sroa.0.4.extract.shift1750, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1153 = or disjoint i64 %v_column.sroa.66.0.insert.insert1303, %v_column.sroa.0.0.insert.ext1151, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1153, ptr addrspace(3) %add.ptr504.2.6, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1771 = lshr i64 %495, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift2002 = and i64 %501, -281474976710656, !dbg !225
  %add493.3.6 = or disjoint i32 %mul492, 768, !dbg !227
  %509 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.3.6, !dbg !224
  %xor500.3.6 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.3.6 = xor i32 %xor500.3.6, 24, !dbg !224
  %add.ptr504.3.6 = getelementptr inbounds i8, ptr addrspace(3) %509, i32 %add.ptr504.idx.3.6, !dbg !224
  %510 = lshr i64 %499, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1461 = and i64 %510, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1463 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2002, %v_column.sroa.98.0.insert.shift1461, !dbg !225
  %511 = lshr i64 %497, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1306 = and i64 %511, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1308 = or disjoint i64 %v_column.sroa.98.0.insert.insert1463, %v_column.sroa.66.0.insert.shift1306, !dbg !225
  %v_column.sroa.0.0.insert.insert1157 = or disjoint i64 %v_column.sroa.66.0.insert.insert1308, %v_fetch.sroa.0.6.extract.shift1771, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1157, ptr addrspace(3) %add.ptr504.3.6, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add521.6 = or disjoint i32 %mul514, %mul520, !dbg !233
  %512 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.6, !dbg !234
  %add.ptr531.idx.6 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.6 = getelementptr inbounds i8, ptr addrspace(3) %512, i32 %add.ptr531.idx.6, !dbg !234
  %513 = load <4 x half>, ptr addrspace(3) %add.ptr531.6, align 8, !dbg !235
  %add516.1.6 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.1.6 = or disjoint i32 %add516.1.6, 64, !dbg !233
  %514 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.1.6, !dbg !234
  %xor527.1.6 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.1.6 = xor i32 %xor527.1.6, 8, !dbg !234
  %add.ptr531.1.6 = getelementptr inbounds i8, ptr addrspace(3) %514, i32 %add.ptr531.idx.1.6, !dbg !234
  %515 = load <4 x half>, ptr addrspace(3) %add.ptr531.1.6, align 8, !dbg !235
  %add516.2.6 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.2.6 = or disjoint i32 %add516.2.6, 128, !dbg !233
  %516 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.2.6, !dbg !234
  %xor527.2.6 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.2.6 = xor i32 %xor527.2.6, 16, !dbg !234
  %add.ptr531.2.6 = getelementptr inbounds i8, ptr addrspace(3) %516, i32 %add.ptr531.idx.2.6, !dbg !234
  %517 = load <4 x half>, ptr addrspace(3) %add.ptr531.2.6, align 8, !dbg !235
  %add516.3.6 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.3.6 = or disjoint i32 %add516.3.6, 192, !dbg !233
  %518 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.3.6, !dbg !234
  %xor527.3.6 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.3.6 = xor i32 %xor527.3.6, 24, !dbg !234
  %add.ptr531.3.6 = getelementptr inbounds i8, ptr addrspace(3) %518, i32 %add.ptr531.idx.3.6, !dbg !234
  %519 = load <4 x half>, ptr addrspace(3) %add.ptr531.3.6, align 8, !dbg !235
  %520 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %513, <4 x half> %297, <4 x float> %numerator.sroa.0.5), !dbg !236
  %521 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %515, <4 x half> %297, <4 x float> %numerator.sroa.34.5), !dbg !236
  %522 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %517, <4 x half> %297, <4 x float> %numerator.sroa.66.5), !dbg !236
  %523 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %519, <4 x half> %297, <4 x float> %numerator.sroa.98.5), !dbg !236
  br label %if.end558.6, !dbg !237

if.end558.6:                                      ; preds = %if.then442.6, %if.end558.5
  %numerator.sroa.98.6 = phi <4 x float> [ %numerator.sroa.98.5, %if.end558.5 ], [ %523, %if.then442.6 ], !dbg !210
  %numerator.sroa.66.6 = phi <4 x float> [ %numerator.sroa.66.5, %if.end558.5 ], [ %522, %if.then442.6 ], !dbg !210
  %numerator.sroa.34.6 = phi <4 x float> [ %numerator.sroa.34.5, %if.end558.5 ], [ %521, %if.then442.6 ], !dbg !210
  %numerator.sroa.0.6 = phi <4 x float> [ %numerator.sroa.0.5, %if.end558.5 ], [ %520, %if.then442.6 ], !dbg !210
  %524 = load i32, ptr addrspace(1) %arrayidx125.7, align 4, !dbg !213, !tbaa !30
  %or.cond887.7 = icmp ugt i32 %524, %invariant.umin, !dbg !214
  br i1 %or.cond887.7, label %if.end558.7, label %if.then442.7, !dbg !214

if.then442.7:                                     ; preds = %if.end558.6
  fence syncscope("warp") release, !dbg !215
  tail call void @llvm.mxc.barrier.warp(), !dbg !218
  fence syncscope("warp") acquire, !dbg !219
  %mul449.7 = shl nuw nsw i32 %524, 10
  %add456.7 = add nuw nsw i32 %add454, %mul449.7
  %525 = zext nneg i32 %add456.7 to i64, !dbg !220
  %add.ptr462.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %525, !dbg !221
  %526 = load i64, ptr addrspace(4) %add.ptr462.7, align 8, !dbg !222
  %527 = or disjoint i64 %525, 64, !dbg !223
  %add.ptr462.1.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %527, !dbg !221
  %528 = load i64, ptr addrspace(4) %add.ptr462.1.7, align 8, !dbg !222
  %529 = or disjoint i64 %525, 128, !dbg !223
  %add.ptr462.2.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %529, !dbg !221
  %530 = load i64, ptr addrspace(4) %add.ptr462.2.7, align 8, !dbg !222
  %531 = or disjoint i64 %525, 192, !dbg !223
  %add.ptr462.3.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %531, !dbg !221
  %532 = load i64, ptr addrspace(4) %add.ptr462.3.7, align 8, !dbg !222
  %533 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul492, !dbg !224
  %add.ptr504.idx.7 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.7 = getelementptr inbounds i8, ptr addrspace(3) %533, i32 %add.ptr504.idx.7, !dbg !224
  %v_column.sroa.130.0.insert.ext1620 = shl i64 %532, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext1465 = shl i64 %530, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift1466 = and i64 %v_column.sroa.98.0.insert.ext1465, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1468 = or disjoint i64 %v_column.sroa.130.0.insert.ext1620, %v_column.sroa.98.0.insert.shift1466, !dbg !225
  %v_column.sroa.66.0.insert.ext1310 = shl i64 %528, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1311 = and i64 %v_column.sroa.66.0.insert.ext1310, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1313 = or disjoint i64 %v_column.sroa.98.0.insert.insert1468, %v_column.sroa.66.0.insert.shift1311, !dbg !225
  %v_column.sroa.0.0.insert.ext1159 = and i64 %526, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1161 = or disjoint i64 %v_column.sroa.66.0.insert.insert1313, %v_column.sroa.0.0.insert.ext1159, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1161, ptr addrspace(3) %add.ptr504.7, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1732 = lshr i64 %526, 16, !dbg !226
  %add493.1.7 = or disjoint i32 %mul492, 256, !dbg !227
  %534 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.1.7, !dbg !224
  %xor500.1.7 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.1.7 = xor i32 %xor500.1.7, 8, !dbg !224
  %add.ptr504.1.7 = getelementptr inbounds i8, ptr addrspace(3) %534, i32 %add.ptr504.idx.1.7, !dbg !224
  %535 = shl i64 %532, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1625 = and i64 %535, -281474976710656, !dbg !225
  %536 = shl i64 %530, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1471 = and i64 %536, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1473 = or disjoint i64 %v_column.sroa.130.0.insert.ext1625, %v_column.sroa.98.0.insert.shift1471, !dbg !225
  %v_column.sroa.66.0.insert.ext1315 = and i64 %528, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1318 = or disjoint i64 %v_column.sroa.98.0.insert.insert1473, %v_column.sroa.66.0.insert.ext1315, !dbg !225
  %v_column.sroa.0.0.insert.ext1163 = and i64 %v_fetch.sroa.0.2.extract.shift1732, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1165 = or disjoint i64 %v_column.sroa.66.0.insert.insert1318, %v_column.sroa.0.0.insert.ext1163, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1165, ptr addrspace(3) %add.ptr504.1.7, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1753 = lshr i64 %526, 32, !dbg !226
  %add493.2.7 = or disjoint i32 %mul492, 512, !dbg !227
  %537 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.2.7, !dbg !224
  %xor500.2.7 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.2.7 = xor i32 %xor500.2.7, 16, !dbg !224
  %add.ptr504.2.7 = getelementptr inbounds i8, ptr addrspace(3) %537, i32 %add.ptr504.idx.2.7, !dbg !224
  %538 = shl i64 %532, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1630 = and i64 %538, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1475 = and i64 %530, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1478 = or disjoint i64 %v_column.sroa.130.0.insert.ext1630, %v_column.sroa.98.0.insert.ext1475, !dbg !225
  %539 = lshr i64 %528, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1321 = and i64 %539, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1323 = or disjoint i64 %v_column.sroa.98.0.insert.insert1478, %v_column.sroa.66.0.insert.shift1321, !dbg !225
  %v_column.sroa.0.0.insert.ext1167 = and i64 %v_fetch.sroa.0.4.extract.shift1753, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1169 = or disjoint i64 %v_column.sroa.66.0.insert.insert1323, %v_column.sroa.0.0.insert.ext1167, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1169, ptr addrspace(3) %add.ptr504.2.7, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1774 = lshr i64 %526, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift2005 = and i64 %532, -281474976710656, !dbg !225
  %add493.3.7 = or disjoint i32 %mul492, 768, !dbg !227
  %540 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add493.3.7, !dbg !224
  %xor500.3.7 = shl nuw nsw i32 %xor499, 3, !dbg !224
  %add.ptr504.idx.3.7 = xor i32 %xor500.3.7, 24, !dbg !224
  %add.ptr504.3.7 = getelementptr inbounds i8, ptr addrspace(3) %540, i32 %add.ptr504.idx.3.7, !dbg !224
  %541 = lshr i64 %530, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1481 = and i64 %541, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1483 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift2005, %v_column.sroa.98.0.insert.shift1481, !dbg !225
  %542 = lshr i64 %528, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1326 = and i64 %542, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1328 = or disjoint i64 %v_column.sroa.98.0.insert.insert1483, %v_column.sroa.66.0.insert.shift1326, !dbg !225
  %v_column.sroa.0.0.insert.insert1173 = or disjoint i64 %v_column.sroa.66.0.insert.insert1328, %v_fetch.sroa.0.6.extract.shift1774, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1173, ptr addrspace(3) %add.ptr504.3.7, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add521.7 = or disjoint i32 %mul514, %mul520, !dbg !233
  %543 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.7, !dbg !234
  %add.ptr531.idx.7 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.7 = getelementptr inbounds i8, ptr addrspace(3) %543, i32 %add.ptr531.idx.7, !dbg !234
  %544 = load <4 x half>, ptr addrspace(3) %add.ptr531.7, align 8, !dbg !235
  %add516.1.7 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.1.7 = or disjoint i32 %add516.1.7, 64, !dbg !233
  %545 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.1.7, !dbg !234
  %xor527.1.7 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.1.7 = xor i32 %xor527.1.7, 8, !dbg !234
  %add.ptr531.1.7 = getelementptr inbounds i8, ptr addrspace(3) %545, i32 %add.ptr531.idx.1.7, !dbg !234
  %546 = load <4 x half>, ptr addrspace(3) %add.ptr531.1.7, align 8, !dbg !235
  %add516.2.7 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.2.7 = or disjoint i32 %add516.2.7, 128, !dbg !233
  %547 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.2.7, !dbg !234
  %xor527.2.7 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.2.7 = xor i32 %xor527.2.7, 16, !dbg !234
  %add.ptr531.2.7 = getelementptr inbounds i8, ptr addrspace(3) %547, i32 %add.ptr531.idx.2.7, !dbg !234
  %548 = load <4 x half>, ptr addrspace(3) %add.ptr531.2.7, align 8, !dbg !235
  %add516.3.7 = or disjoint i32 %mul514, %mul520, !dbg !233
  %add521.3.7 = or disjoint i32 %add516.3.7, 192, !dbg !233
  %549 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add521.3.7, !dbg !234
  %xor527.3.7 = shl nuw nsw i32 %306, 3, !dbg !234
  %add.ptr531.idx.3.7 = xor i32 %xor527.3.7, 24, !dbg !234
  %add.ptr531.3.7 = getelementptr inbounds i8, ptr addrspace(3) %549, i32 %add.ptr531.idx.3.7, !dbg !234
  %550 = load <4 x half>, ptr addrspace(3) %add.ptr531.3.7, align 8, !dbg !235
  %551 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %544, <4 x half> %296, <4 x float> %numerator.sroa.0.6), !dbg !236
  %552 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %546, <4 x half> %296, <4 x float> %numerator.sroa.34.6), !dbg !236
  %553 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %548, <4 x half> %296, <4 x float> %numerator.sroa.66.6), !dbg !236
  %554 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %550, <4 x half> %296, <4 x float> %numerator.sroa.98.6), !dbg !236
  br label %if.end558.7, !dbg !237

if.end558.7:                                      ; preds = %if.then442.7, %if.end558.6
  %numerator.sroa.98.7 = phi <4 x float> [ %numerator.sroa.98.6, %if.end558.6 ], [ %554, %if.then442.7 ], !dbg !210
  %numerator.sroa.66.7 = phi <4 x float> [ %numerator.sroa.66.6, %if.end558.6 ], [ %553, %if.then442.7 ], !dbg !210
  %numerator.sroa.34.7 = phi <4 x float> [ %numerator.sroa.34.6, %if.end558.6 ], [ %552, %if.then442.7 ], !dbg !210
  %numerator.sroa.0.7 = phi <4 x float> [ %numerator.sroa.0.6, %if.end558.6 ], [ %551, %if.then442.7 ], !dbg !210
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.7, i64 0, !dbg !238
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.7, i64 1, !dbg !238
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.7, i64 2, !dbg !238
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.7, i64 3, !dbg !238
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %denominator.sroa.0.1, !dbg !239
  %div580 = fdiv contract float %numerator.sroa.0.4.vec.extract, %denominator.sroa.0.1, !dbg !240
  %div584 = fdiv contract float %numerator.sroa.0.8.vec.extract, %denominator.sroa.0.1, !dbg !241
  %div588 = fdiv contract float %numerator.sroa.0.12.vec.extract, %denominator.sroa.0.1, !dbg !242
  %numerator.sroa.34.16.vec.extract = extractelement <4 x float> %numerator.sroa.34.7, i64 0, !dbg !238
  %numerator.sroa.34.20.vec.extract = extractelement <4 x float> %numerator.sroa.34.7, i64 1, !dbg !238
  %numerator.sroa.34.24.vec.extract = extractelement <4 x float> %numerator.sroa.34.7, i64 2, !dbg !238
  %numerator.sroa.34.28.vec.extract = extractelement <4 x float> %numerator.sroa.34.7, i64 3, !dbg !238
  %div.1 = fdiv contract float %numerator.sroa.34.16.vec.extract, %denominator.sroa.0.1, !dbg !239
  %div580.1 = fdiv contract float %numerator.sroa.34.20.vec.extract, %denominator.sroa.0.1, !dbg !240
  %div584.1 = fdiv contract float %numerator.sroa.34.24.vec.extract, %denominator.sroa.0.1, !dbg !241
  %div588.1 = fdiv contract float %numerator.sroa.34.28.vec.extract, %denominator.sroa.0.1, !dbg !242
  %numerator.sroa.66.32.vec.extract = extractelement <4 x float> %numerator.sroa.66.7, i64 0, !dbg !238
  %numerator.sroa.66.36.vec.extract = extractelement <4 x float> %numerator.sroa.66.7, i64 1, !dbg !238
  %numerator.sroa.66.40.vec.extract = extractelement <4 x float> %numerator.sroa.66.7, i64 2, !dbg !238
  %numerator.sroa.66.44.vec.extract = extractelement <4 x float> %numerator.sroa.66.7, i64 3, !dbg !238
  %div.2 = fdiv contract float %numerator.sroa.66.32.vec.extract, %denominator.sroa.0.1, !dbg !239
  %div580.2 = fdiv contract float %numerator.sroa.66.36.vec.extract, %denominator.sroa.0.1, !dbg !240
  %div584.2 = fdiv contract float %numerator.sroa.66.40.vec.extract, %denominator.sroa.0.1, !dbg !241
  %div588.2 = fdiv contract float %numerator.sroa.66.44.vec.extract, %denominator.sroa.0.1, !dbg !242
  %numerator.sroa.98.48.vec.extract = extractelement <4 x float> %numerator.sroa.98.7, i64 0, !dbg !238
  %numerator.sroa.98.52.vec.extract = extractelement <4 x float> %numerator.sroa.98.7, i64 1, !dbg !238
  %numerator.sroa.98.56.vec.extract = extractelement <4 x float> %numerator.sroa.98.7, i64 2, !dbg !238
  %numerator.sroa.98.60.vec.extract = extractelement <4 x float> %numerator.sroa.98.7, i64 3, !dbg !238
  %div.3 = fdiv contract float %numerator.sroa.98.48.vec.extract, %denominator.sroa.0.1, !dbg !239
  %div580.3 = fdiv contract float %numerator.sroa.98.52.vec.extract, %denominator.sroa.0.1, !dbg !240
  %div584.3 = fdiv contract float %numerator.sroa.98.56.vec.extract, %denominator.sroa.0.1, !dbg !241
  %div588.3 = fdiv contract float %numerator.sroa.98.60.vec.extract, %denominator.sroa.0.1, !dbg !242
  fence syncscope("warp") release, !dbg !243
  tail call void @llvm.mxc.barrier.warp(), !dbg !246
  fence syncscope("warp") acquire, !dbg !247
  %xor637 = shl nuw nsw i32 %8, 2
  %mul638 = and i32 %xor637, 4
  %555 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !248, !noalias !252
  %556 = fptrunc float %div to half, !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %555), !dbg !248, !noalias !252
  %557 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !252
  %558 = fptrunc float %div580 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %557), !dbg !257, !noalias !252
  %559 = bitcast half %556 to i16, !dbg !259
  %560 = bitcast half %558 to i16, !dbg !262
  %561 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !267
  %562 = fptrunc float %div584 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %561), !dbg !263, !noalias !267
  %563 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !267
  %564 = fptrunc float %div588 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %563), !dbg !272, !noalias !267
  %565 = bitcast half %562 to i16, !dbg !274
  %566 = bitcast half %564 to i16, !dbg !276
  %__7.sroa.6.0.insert.ext = zext i16 %566 to i64, !dbg !277
  %__7.sroa.6.0.insert.shift = shl nuw i64 %__7.sroa.6.0.insert.ext, 48, !dbg !277
  %__7.sroa.5.0.insert.ext = zext i16 %565 to i64, !dbg !277
  %__7.sroa.5.0.insert.shift = shl nuw nsw i64 %__7.sroa.5.0.insert.ext, 32, !dbg !277
  %__7.sroa.5.0.insert.insert = or disjoint i64 %__7.sroa.6.0.insert.shift, %__7.sroa.5.0.insert.shift, !dbg !277
  %__7.sroa.4.0.insert.ext = zext i16 %560 to i64, !dbg !277
  %__7.sroa.4.0.insert.shift = shl nuw nsw i64 %__7.sroa.4.0.insert.ext, 16, !dbg !277
  %__7.sroa.4.0.insert.insert = or disjoint i64 %__7.sroa.5.0.insert.insert, %__7.sroa.4.0.insert.shift, !dbg !277
  %__7.sroa.0.0.insert.ext = zext i16 %559 to i64, !dbg !277
  %__7.sroa.0.0.insert.insert = or disjoint i64 %__7.sroa.4.0.insert.insert, %__7.sroa.0.0.insert.ext, !dbg !277
  %add639 = or disjoint i32 %add58, %mul638, !dbg !278
  %add.ptr641 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add639, !dbg !279
  store i64 %__7.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr641, align 8, !dbg !280
  %567 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !248, !noalias !252
  %568 = fptrunc float %div.1 to half, !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %567), !dbg !248, !noalias !252
  %569 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !252
  %570 = fptrunc float %div580.1 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %569), !dbg !257, !noalias !252
  %571 = bitcast half %568 to i16, !dbg !259
  %572 = bitcast half %570 to i16, !dbg !262
  %573 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !267
  %574 = fptrunc float %div584.1 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %573), !dbg !263, !noalias !267
  %575 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !267
  %576 = fptrunc float %div588.1 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %575), !dbg !272, !noalias !267
  %577 = bitcast half %574 to i16, !dbg !274
  %578 = bitcast half %576 to i16, !dbg !276
  %__7.sroa.6.0.insert.ext.1 = zext i16 %578 to i64, !dbg !277
  %__7.sroa.6.0.insert.shift.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.1, 48, !dbg !277
  %__7.sroa.5.0.insert.ext.1 = zext i16 %577 to i64, !dbg !277
  %__7.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1, 32, !dbg !277
  %__7.sroa.5.0.insert.insert.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.1, %__7.sroa.5.0.insert.shift.1, !dbg !277
  %__7.sroa.4.0.insert.ext.1 = zext i16 %572 to i64, !dbg !277
  %__7.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1, 16, !dbg !277
  %__7.sroa.4.0.insert.insert.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.1, %__7.sroa.4.0.insert.shift.1, !dbg !277
  %__7.sroa.0.0.insert.ext.1 = zext i16 %571 to i64, !dbg !277
  %__7.sroa.0.0.insert.insert.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.1, %__7.sroa.0.0.insert.ext.1, !dbg !277
  %add639.1 = or disjoint i32 %add58.1, %mul638, !dbg !278
  %add.ptr641.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add639.1, !dbg !279
  store i64 %__7.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr641.1, align 8, !dbg !280
  %579 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !248, !noalias !252
  %580 = fptrunc float %div.2 to half, !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %579), !dbg !248, !noalias !252
  %581 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !252
  %582 = fptrunc float %div580.2 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %581), !dbg !257, !noalias !252
  %583 = bitcast half %580 to i16, !dbg !259
  %584 = bitcast half %582 to i16, !dbg !262
  %585 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !267
  %586 = fptrunc float %div584.2 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %585), !dbg !263, !noalias !267
  %587 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !267
  %588 = fptrunc float %div588.2 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %587), !dbg !272, !noalias !267
  %589 = bitcast half %586 to i16, !dbg !274
  %590 = bitcast half %588 to i16, !dbg !276
  %__7.sroa.6.0.insert.ext.2 = zext i16 %590 to i64, !dbg !277
  %__7.sroa.6.0.insert.shift.2 = shl nuw i64 %__7.sroa.6.0.insert.ext.2, 48, !dbg !277
  %__7.sroa.5.0.insert.ext.2 = zext i16 %589 to i64, !dbg !277
  %__7.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.2, 32, !dbg !277
  %__7.sroa.5.0.insert.insert.2 = or disjoint i64 %__7.sroa.6.0.insert.shift.2, %__7.sroa.5.0.insert.shift.2, !dbg !277
  %__7.sroa.4.0.insert.ext.2 = zext i16 %584 to i64, !dbg !277
  %__7.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.2, 16, !dbg !277
  %__7.sroa.4.0.insert.insert.2 = or disjoint i64 %__7.sroa.5.0.insert.insert.2, %__7.sroa.4.0.insert.shift.2, !dbg !277
  %__7.sroa.0.0.insert.ext.2 = zext i16 %583 to i64, !dbg !277
  %__7.sroa.0.0.insert.insert.2 = or disjoint i64 %__7.sroa.4.0.insert.insert.2, %__7.sroa.0.0.insert.ext.2, !dbg !277
  %add639.2 = or disjoint i32 %add58.2, %mul638, !dbg !278
  %add.ptr641.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add639.2, !dbg !279
  store i64 %__7.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr641.2, align 8, !dbg !280
  %591 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !248, !noalias !252
  %592 = fptrunc float %div.3 to half, !dbg !248
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %591), !dbg !248, !noalias !252
  %593 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !252
  %594 = fptrunc float %div580.3 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %593), !dbg !257, !noalias !252
  %595 = bitcast half %592 to i16, !dbg !259
  %596 = bitcast half %594 to i16, !dbg !262
  %597 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !267
  %598 = fptrunc float %div584.3 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %597), !dbg !263, !noalias !267
  %599 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !272, !noalias !267
  %600 = fptrunc float %div588.3 to half, !dbg !272
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %599), !dbg !272, !noalias !267
  %601 = bitcast half %598 to i16, !dbg !274
  %602 = bitcast half %600 to i16, !dbg !276
  %__7.sroa.6.0.insert.ext.3 = zext i16 %602 to i64, !dbg !277
  %__7.sroa.6.0.insert.shift.3 = shl nuw i64 %__7.sroa.6.0.insert.ext.3, 48, !dbg !277
  %__7.sroa.5.0.insert.ext.3 = zext i16 %601 to i64, !dbg !277
  %__7.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.3, 32, !dbg !277
  %__7.sroa.5.0.insert.insert.3 = or disjoint i64 %__7.sroa.6.0.insert.shift.3, %__7.sroa.5.0.insert.shift.3, !dbg !277
  %__7.sroa.4.0.insert.ext.3 = zext i16 %596 to i64, !dbg !277
  %__7.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.3, 16, !dbg !277
  %__7.sroa.4.0.insert.insert.3 = or disjoint i64 %__7.sroa.5.0.insert.insert.3, %__7.sroa.4.0.insert.shift.3, !dbg !277
  %__7.sroa.0.0.insert.ext.3 = zext i16 %595 to i64, !dbg !277
  %__7.sroa.0.0.insert.insert.3 = or disjoint i64 %__7.sroa.4.0.insert.insert.3, %__7.sroa.0.0.insert.ext.3, !dbg !277
  %add639.3 = or disjoint i32 %add58.3, %mul638, !dbg !278
  %add.ptr641.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add639.3, !dbg !279
  store i64 %__7.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr641.3, align 8, !dbg !280
  fence syncscope("warp") release, !dbg !281
  tail call void @llvm.mxc.barrier.warp(), !dbg !284
  fence syncscope("warp") acquire, !dbg !285
  %603 = load i64, ptr addrspace(3) %5, align 16, !dbg !286
  %add.ptr669.1 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 8, !dbg !287
  %604 = load i64, ptr addrspace(3) %add.ptr669.1, align 8, !dbg !286
  %add.ptr690 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !288
  store i64 %603, ptr addrspace(1) %add.ptr690, align 16, !dbg !289
  %output_fetch.sroa.6.0.add.ptr690.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr690, i64 8, !dbg !289
  store i64 %604, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr690.sroa_idx, align 8, !dbg !289
  %add.ptr669.11047 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 1032, !dbg !287
  %605 = load i64, ptr addrspace(3) %add.ptr669.11047, align 8, !dbg !286
  %606 = load i64, ptr addrspace(3) %7, align 16, !dbg !286
  %add.ptr690.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %6, !dbg !288
  store i64 %605, ptr addrspace(1) %add.ptr690.1, align 16, !dbg !289
  %output_fetch.sroa.6.0.add.ptr690.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr690.1, i64 8, !dbg !289
  store i64 %606, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr690.1.sroa_idx, align 8, !dbg !289
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v104_worker1_s8_global_softmax_sc-16g-2/codegen_precompile/power_v104/case12_stage1.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v104_worker1_s8_global_softmax_sc-16g-2/codegen_precompile/power_v104/case12_stage1.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 27, column: 3, scope: !40)
!44 = !DILocation(line: 28, column: 43, scope: !40)
!45 = !DILocation(line: 28, column: 29, scope: !40)
!46 = !DILocation(line: 31, column: 24, scope: !40)
!47 = !DILocation(line: 31, column: 203, scope: !40)
!48 = !DILocation(line: 28, column: 124, scope: !40)
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
!105 = !DILocation(line: 108, column: 25, scope: !40)
!106 = !DILocation(line: 110, column: 26, scope: !40)
!107 = !DILocation(line: 111, column: 26, scope: !40)
!108 = !DILocation(line: 112, column: 26, scope: !40)
!109 = !DILocation(line: 113, column: 26, scope: !40)
!110 = !DILocation(line: 115, column: 25, scope: !40)
!111 = !DILocation(line: 116, column: 25, scope: !40)
!112 = !DILocation(line: 117, column: 25, scope: !40)
!113 = !DILocation(line: 118, column: 25, scope: !40)
!114 = !DILocation(line: 120, column: 23, scope: !40)
!115 = !DILocation(line: 121, column: 23, scope: !40)
!116 = !DILocation(line: 122, column: 23, scope: !40)
!117 = !DILocation(line: 123, column: 23, scope: !40)
!118 = !DILocation(line: 285, column: 49, scope: !119, inlinedAt: !120)
!119 = distinct !DISubprogram(name: "exp2f", scope: !70, file: !70, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!120 = distinct !DILocation(line: 124, column: 15, scope: !40)
!121 = !DILocation(line: 285, column: 49, scope: !119, inlinedAt: !122)
!122 = distinct !DILocation(line: 125, column: 15, scope: !40)
!123 = !DILocation(line: 285, column: 49, scope: !119, inlinedAt: !124)
!124 = distinct !DILocation(line: 126, column: 15, scope: !40)
!125 = !DILocation(line: 285, column: 49, scope: !119, inlinedAt: !126)
!126 = distinct !DILocation(line: 127, column: 15, scope: !40)
!127 = !DILocation(line: 1007, column: 10, scope: !128, inlinedAt: !130)
!128 = distinct !DISubprogram(name: "__float2half_rn", scope: !129, file: !129, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!129 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!130 = distinct !DILocation(line: 1077, column: 18, scope: !131, inlinedAt: !132)
!131 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !129, file: !129, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!132 = distinct !DILocation(line: 1295, column: 23, scope: !133, inlinedAt: !134)
!133 = distinct !DISubprogram(name: "__float22half2_rn", scope: !129, file: !129, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!134 = distinct !DILocation(line: 128, column: 29, scope: !40)
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
!145 = distinct !DILocation(line: 129, column: 29, scope: !40)
!146 = !{!147, !149}
!147 = distinct !{!147, !148, !"_ZL17__floats2half2_rnff: %agg.result"}
!148 = distinct !{!148, !"_ZL17__floats2half2_rnff"}
!149 = distinct !{!149, !150, !"_ZL17__float22half2_rn6float2: %agg.result"}
!150 = distinct !{!150, !"_ZL17__float22half2_rn6float2"}
!151 = !DILocation(line: 1007, column: 10, scope: !128, inlinedAt: !152)
!152 = distinct !DILocation(line: 1077, column: 38, scope: !131, inlinedAt: !144)
!153 = !DILocation(line: 130, column: 51, scope: !40)
!154 = !DILocation(line: 1082, column: 16, scope: !155, inlinedAt: !156)
!155 = distinct !DISubprogram(name: "__half2float", scope: !129, file: !129, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!156 = distinct !DILocation(line: 136, column: 55, scope: !157, inlinedAt: !158)
!157 = distinct !DISubprogram(name: "operator float", scope: !129, file: !129, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
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
!248 = !DILocation(line: 1007, column: 10, scope: !128, inlinedAt: !249)
!249 = distinct !DILocation(line: 1077, column: 18, scope: !131, inlinedAt: !250)
!250 = distinct !DILocation(line: 1295, column: 23, scope: !133, inlinedAt: !251)
!251 = distinct !DILocation(line: 191, column: 27, scope: !40)
!252 = !{!253, !255}
!253 = distinct !{!253, !254, !"_ZL17__floats2half2_rnff: %agg.result"}
!254 = distinct !{!254, !"_ZL17__floats2half2_rnff"}
!255 = distinct !{!255, !256, !"_ZL17__float22half2_rn6float2: %agg.result"}
!256 = distinct !{!256, !"_ZL17__float22half2_rn6float2"}
!257 = !DILocation(line: 1007, column: 10, scope: !128, inlinedAt: !258)
!258 = distinct !DILocation(line: 1077, column: 38, scope: !131, inlinedAt: !250)
!259 = !DILocation(line: 596, column: 67, scope: !260, inlinedAt: !261)
!260 = distinct !DISubprogram(name: "__half2", scope: !129, file: !129, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!261 = distinct !DILocation(line: 1077, column: 10, scope: !131, inlinedAt: !250)
!262 = !DILocation(line: 596, column: 73, scope: !260, inlinedAt: !261)
!263 = !DILocation(line: 1007, column: 10, scope: !128, inlinedAt: !264)
!264 = distinct !DILocation(line: 1077, column: 18, scope: !131, inlinedAt: !265)
!265 = distinct !DILocation(line: 1295, column: 23, scope: !133, inlinedAt: !266)
!266 = distinct !DILocation(line: 192, column: 27, scope: !40)
!267 = !{!268, !270}
!268 = distinct !{!268, !269, !"_ZL17__floats2half2_rnff: %agg.result"}
!269 = distinct !{!269, !"_ZL17__floats2half2_rnff"}
!270 = distinct !{!270, !271, !"_ZL17__float22half2_rn6float2: %agg.result"}
!271 = distinct !{!271, !"_ZL17__float22half2_rn6float2"}
!272 = !DILocation(line: 1007, column: 10, scope: !128, inlinedAt: !273)
!273 = distinct !DILocation(line: 1077, column: 38, scope: !131, inlinedAt: !265)
!274 = !DILocation(line: 596, column: 67, scope: !260, inlinedAt: !275)
!275 = distinct !DILocation(line: 1077, column: 10, scope: !131, inlinedAt: !265)
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
!289 = !DILocation(line: 203, column: 134, scope: !40)
!290 = !DILocation(line: 205, column: 1, scope: !40)
