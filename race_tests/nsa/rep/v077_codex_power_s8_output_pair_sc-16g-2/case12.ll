; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v077_codex_power_s8_output_pair_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v077_codex_power_s8_output_pair_sc-16g-2/codegen/case12.device.cpp"
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
  %xor788 = and i32 %mul11, 56
  %call27.masked = and i32 %2, 1016
  %mul29 = xor i32 %xor788, %call27.masked
  %and33 = lshr i32 %2, 3
  %shr34 = and i32 %and33, 1
  %3 = zext nneg i32 %add9 to i64, !dbg !43
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %3, !dbg !44
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %add.ptr, align 16, !dbg !45
  %qk_fetch.sroa.10.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !45
  %qk_fetch.sroa.10.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0.add.ptr.sroa_idx, align 8, !dbg !45
  %4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul29, !dbg !46
  %5 = getelementptr inbounds %struct.__half, ptr addrspace(3) %4, i32 %mul24, !dbg !46
  %add.ptr39.idx = shl nuw nsw i32 %shr34, 3, !dbg !46
  %add.ptr39 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr39, align 8, !dbg !47
  %xor35.1 = shl nuw nsw i32 %shr34, 3, !dbg !46
  %add.ptr39.idx.1 = xor i32 %xor35.1, 8, !dbg !46
  %add.ptr39.1 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.10.0.copyload, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !47
  %6 = add nuw nsw i64 %3, 512, !dbg !48
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %6, !dbg !44
  %qk_fetch.sroa.0.0.copyload1158 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %qk_fetch.sroa.10.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %qk_fetch.sroa.10.0.copyload1161 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0.add.ptr.1.sroa_idx, align 8, !dbg !45
  %7 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 1024, !dbg !46
  %add.ptr39.1886 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1158, ptr addrspace(3) %add.ptr39.1886, align 8, !dbg !47
  %add.ptr39.1.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.10.0.copyload1161, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !47
  fence syncscope("warp") release, !dbg !49
  tail call void @llvm.mxc.barrier.warp(), !dbg !55
  fence syncscope("warp") acquire, !dbg !56
  %and48 = shl nuw nsw i32 %2, 6
  %mul49 = and i32 %and48, 960
  %shr52 = lshr i32 %2, 5
  %and55 = and i32 %2, 7
  %and60 = lshr i32 %2, 4
  %8 = xor i32 %and33, %and60
  %xor65787 = xor i32 %8, %2
  %xor68 = shl nuw nsw i32 %xor65787, 2
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
  %mul99 = shl nsw i32 %0, 13
  %mul101 = shl nsw i32 %1, 3
  %add102 = add nuw nsw i32 %mul99, %mul101
  %conv = zext nneg i32 %0 to i64
  %mul123 = zext nneg i32 %mul11 to i64
  %invariant.gep873 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul123, !dbg !64
  %13 = lshr i32 %2, 2
  %mul217 = and i32 %13, 252
  %mul408 = shl nuw nsw i64 %conv, 16
  %14 = shl nuw nsw i32 %2, 4
  %15 = and i32 %14, 16128
  %mul412 = zext nneg i32 %15 to i64
  %add413 = or disjoint i64 %mul408, %mul412
  %16 = shl nuw nsw i32 %2, 2
  %17 = and i32 %16, 60
  %mul423 = zext nneg i32 %17 to i64
  %add416 = or disjoint i64 %add413, %mul423
  %mul455 = and i32 %14, 240
  %shr461 = and i32 %13, 3
  %xor462 = xor i32 %shr461, %and60
  %and476 = shl nuw nsw i32 %2, 8
  %mul477 = and i32 %and476, 768
  %mul483 = and i32 %16, 48
  %and489 = and i32 %2, 3
  %18 = xor i32 %and60, %and489
  %19 = zext nneg i32 %add102 to i64, !dbg !64
  %invariant.gep = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %19, !dbg !64
  %.idx878 = shl nuw nsw i64 %conv, 17
  %invariant.gep1167 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep873, i64 %.idx878, !dbg !64
  %20 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add416
  %21 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul455
  %add.ptr467.idx = shl nuw nsw i32 %xor462, 3
  %add.ptr467 = getelementptr inbounds i8, ptr addrspace(3) %21, i32 %add.ptr467.idx
  %add456.1 = or disjoint i32 %mul455, 256
  %22 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.1
  %xor463.1 = shl nuw nsw i32 %xor462, 3
  %add.ptr467.idx.1 = xor i32 %xor463.1, 8
  %add.ptr467.1 = getelementptr inbounds i8, ptr addrspace(3) %22, i32 %add.ptr467.idx.1
  %add456.2 = or disjoint i32 %mul455, 512
  %23 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.2
  %xor463.2 = shl nuw nsw i32 %xor462, 3
  %add.ptr467.idx.2 = xor i32 %xor463.2, 16
  %add.ptr467.2 = getelementptr inbounds i8, ptr addrspace(3) %23, i32 %add.ptr467.idx.2
  %add456.3 = or disjoint i32 %mul455, 768
  %24 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add456.3
  %xor463.3 = shl nuw nsw i32 %xor462, 3
  %add.ptr467.idx.3 = xor i32 %xor463.3, 24
  %add.ptr467.3 = getelementptr inbounds i8, ptr addrspace(3) %24, i32 %add.ptr467.idx.3
  %add484 = or disjoint i32 %mul477, %mul483
  %25 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484
  %add.ptr494.idx = shl nuw nsw i32 %18, 3
  %add.ptr494 = getelementptr inbounds i8, ptr addrspace(3) %25, i32 %add.ptr494.idx
  %add479.1 = or disjoint i32 %mul477, %mul483
  %add484.1 = or disjoint i32 %add479.1, 64
  %26 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.1
  %xor490.1 = shl nuw nsw i32 %18, 3
  %add.ptr494.idx.1 = xor i32 %xor490.1, 8
  %add.ptr494.1 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 %add.ptr494.idx.1
  %add479.2 = or disjoint i32 %mul477, %mul483
  %add484.2 = or disjoint i32 %add479.2, 128
  %27 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.2
  %xor490.2 = shl nuw nsw i32 %18, 3
  %add.ptr494.idx.2 = xor i32 %xor490.2, 16
  %add.ptr494.2 = getelementptr inbounds i8, ptr addrspace(3) %27, i32 %add.ptr494.idx.2
  %add479.3 = or disjoint i32 %mul477, %mul483
  %add484.3 = or disjoint i32 %add479.3, 192
  %28 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add484.3
  %xor490.3 = shl nuw nsw i32 %18, 3
  %add.ptr494.idx.3 = xor i32 %xor490.3, 24
  %add.ptr494.3 = getelementptr inbounds i8, ptr addrspace(3) %28, i32 %add.ptr494.idx.3
  br label %for.body97, !dbg !64

for.cond.cleanup96:                               ; preds = %if.end520
  %29 = bitcast float %denominator.sroa.0.1 to i32, !dbg !65
  %30 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !68
  %31 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %30) #10, !dbg !73
  %xor.i.i = xor i32 %31, 32, !dbg !74
  %32 = and i32 %31, -64, !dbg !75
  %and.i.i = add nsw i32 %32, 64, !dbg !75
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !76
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %31, !dbg !77
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !78
  %33 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %29), !dbg !79
  %34 = bitcast i32 %33 to float, !dbg !80
  %add527 = fadd contract float %denominator.sroa.0.1, %34, !dbg !81
  %35 = bitcast float %add527 to i32, !dbg !82
  %36 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !84
  %37 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %36) #10, !dbg !87
  %xor.i.i790 = xor i32 %37, 16, !dbg !88
  %38 = and i32 %37, -64, !dbg !89
  %and.i.i791 = add nsw i32 %38, 64, !dbg !89
  %cmp.not.i.i792 = icmp slt i32 %xor.i.i790, %and.i.i791, !dbg !90
  %cond.i.i793 = select i1 %cmp.not.i.i792, i32 %xor.i.i790, i32 %37, !dbg !91
  %shl.i.i794 = shl i32 %cond.i.i793, 2, !dbg !92
  %39 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i794, i32 %35), !dbg !93
  %40 = bitcast i32 %39 to float, !dbg !94
  %add532 = fadd contract float %add527, %40, !dbg !95
  %numerator.sroa.0.0.vec.extract1009 = extractelement <4 x float> %numerator.sroa.0.1, i64 0, !dbg !96
  %numerator.sroa.0.4.vec.extract1018 = extractelement <4 x float> %numerator.sroa.0.1, i64 1, !dbg !96
  %numerator.sroa.0.8.vec.extract1027 = extractelement <4 x float> %numerator.sroa.0.1, i64 2, !dbg !96
  %numerator.sroa.0.12.vec.extract1036 = extractelement <4 x float> %numerator.sroa.0.1, i64 3, !dbg !96
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract1009, %add532, !dbg !97
  %div552 = fdiv contract float %numerator.sroa.0.4.vec.extract1018, %add532, !dbg !98
  %div556 = fdiv contract float %numerator.sroa.0.8.vec.extract1027, %add532, !dbg !99
  %div560 = fdiv contract float %numerator.sroa.0.12.vec.extract1036, %add532, !dbg !100
  %numerator.sroa.28.16.vec.extract1044 = extractelement <4 x float> %numerator.sroa.28.1, i64 0, !dbg !96
  %numerator.sroa.28.20.vec.extract1053 = extractelement <4 x float> %numerator.sroa.28.1, i64 1, !dbg !96
  %numerator.sroa.28.24.vec.extract1062 = extractelement <4 x float> %numerator.sroa.28.1, i64 2, !dbg !96
  %numerator.sroa.28.28.vec.extract1071 = extractelement <4 x float> %numerator.sroa.28.1, i64 3, !dbg !96
  %div.1 = fdiv contract float %numerator.sroa.28.16.vec.extract1044, %add532, !dbg !97
  %div552.1 = fdiv contract float %numerator.sroa.28.20.vec.extract1053, %add532, !dbg !98
  %div556.1 = fdiv contract float %numerator.sroa.28.24.vec.extract1062, %add532, !dbg !99
  %div560.1 = fdiv contract float %numerator.sroa.28.28.vec.extract1071, %add532, !dbg !100
  %numerator.sroa.54.32.vec.extract1081 = extractelement <4 x float> %numerator.sroa.54.1, i64 0, !dbg !96
  %numerator.sroa.54.36.vec.extract1090 = extractelement <4 x float> %numerator.sroa.54.1, i64 1, !dbg !96
  %numerator.sroa.54.40.vec.extract1099 = extractelement <4 x float> %numerator.sroa.54.1, i64 2, !dbg !96
  %numerator.sroa.54.44.vec.extract1108 = extractelement <4 x float> %numerator.sroa.54.1, i64 3, !dbg !96
  %div.2 = fdiv contract float %numerator.sroa.54.32.vec.extract1081, %add532, !dbg !97
  %div552.2 = fdiv contract float %numerator.sroa.54.36.vec.extract1090, %add532, !dbg !98
  %div556.2 = fdiv contract float %numerator.sroa.54.40.vec.extract1099, %add532, !dbg !99
  %div560.2 = fdiv contract float %numerator.sroa.54.44.vec.extract1108, %add532, !dbg !100
  %numerator.sroa.80.48.vec.extract1118 = extractelement <4 x float> %numerator.sroa.80.1, i64 0, !dbg !96
  %numerator.sroa.80.52.vec.extract1127 = extractelement <4 x float> %numerator.sroa.80.1, i64 1, !dbg !96
  %numerator.sroa.80.56.vec.extract1136 = extractelement <4 x float> %numerator.sroa.80.1, i64 2, !dbg !96
  %numerator.sroa.80.60.vec.extract1145 = extractelement <4 x float> %numerator.sroa.80.1, i64 3, !dbg !96
  %div.3 = fdiv contract float %numerator.sroa.80.48.vec.extract1118, %add532, !dbg !97
  %div552.3 = fdiv contract float %numerator.sroa.80.52.vec.extract1127, %add532, !dbg !98
  %div556.3 = fdiv contract float %numerator.sroa.80.56.vec.extract1136, %add532, !dbg !99
  %div560.3 = fdiv contract float %numerator.sroa.80.60.vec.extract1145, %add532, !dbg !100
  fence syncscope("warp") release, !dbg !101
  tail call void @llvm.mxc.barrier.warp(), !dbg !104
  fence syncscope("warp") acquire, !dbg !105
  %xor609 = shl nuw nsw i32 %8, 2
  %mul610 = and i32 %xor609, 4
  %41 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !106
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !106, !noalias !114
  %42 = fptrunc float %div to half, !dbg !106
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %41), !dbg !106, !noalias !114
  %43 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !119
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !119, !noalias !114
  %44 = fptrunc float %div552 to half, !dbg !119
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %43), !dbg !119, !noalias !114
  %45 = bitcast half %42 to i16, !dbg !121
  %46 = bitcast half %44 to i16, !dbg !124
  %47 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !125
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !125, !noalias !129
  %48 = fptrunc float %div556 to half, !dbg !125
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %47), !dbg !125, !noalias !129
  %49 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !134
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !134, !noalias !129
  %50 = fptrunc float %div560 to half, !dbg !134
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %49), !dbg !134, !noalias !129
  %51 = bitcast half %48 to i16, !dbg !136
  %52 = bitcast half %50 to i16, !dbg !138
  %__8.sroa.6.0.insert.ext = zext i16 %52 to i64, !dbg !139
  %__8.sroa.6.0.insert.shift = shl nuw i64 %__8.sroa.6.0.insert.ext, 48, !dbg !139
  %__8.sroa.5.0.insert.ext = zext i16 %51 to i64, !dbg !139
  %__8.sroa.5.0.insert.shift = shl nuw nsw i64 %__8.sroa.5.0.insert.ext, 32, !dbg !139
  %__8.sroa.5.0.insert.insert = or disjoint i64 %__8.sroa.6.0.insert.shift, %__8.sroa.5.0.insert.shift, !dbg !139
  %__8.sroa.4.0.insert.ext = zext i16 %46 to i64, !dbg !139
  %__8.sroa.4.0.insert.shift = shl nuw nsw i64 %__8.sroa.4.0.insert.ext, 16, !dbg !139
  %__8.sroa.4.0.insert.insert = or disjoint i64 %__8.sroa.5.0.insert.insert, %__8.sroa.4.0.insert.shift, !dbg !139
  %__8.sroa.0.0.insert.ext = zext i16 %45 to i64, !dbg !139
  %__8.sroa.0.0.insert.insert = or disjoint i64 %__8.sroa.4.0.insert.insert, %__8.sroa.0.0.insert.ext, !dbg !139
  %add611 = or disjoint i32 %add58, %mul610, !dbg !140
  %add.ptr613 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add611, !dbg !141
  store i64 %__8.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr613, align 8, !dbg !142
  %53 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !106
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !106, !noalias !114
  %54 = fptrunc float %div.1 to half, !dbg !106
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %53), !dbg !106, !noalias !114
  %55 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !119
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !119, !noalias !114
  %56 = fptrunc float %div552.1 to half, !dbg !119
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %55), !dbg !119, !noalias !114
  %57 = bitcast half %54 to i16, !dbg !121
  %58 = bitcast half %56 to i16, !dbg !124
  %59 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !125
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !125, !noalias !129
  %60 = fptrunc float %div556.1 to half, !dbg !125
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %59), !dbg !125, !noalias !129
  %61 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !134
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !134, !noalias !129
  %62 = fptrunc float %div560.1 to half, !dbg !134
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %61), !dbg !134, !noalias !129
  %63 = bitcast half %60 to i16, !dbg !136
  %64 = bitcast half %62 to i16, !dbg !138
  %__8.sroa.6.0.insert.ext.1 = zext i16 %64 to i64, !dbg !139
  %__8.sroa.6.0.insert.shift.1 = shl nuw i64 %__8.sroa.6.0.insert.ext.1, 48, !dbg !139
  %__8.sroa.5.0.insert.ext.1 = zext i16 %63 to i64, !dbg !139
  %__8.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.1, 32, !dbg !139
  %__8.sroa.5.0.insert.insert.1 = or disjoint i64 %__8.sroa.6.0.insert.shift.1, %__8.sroa.5.0.insert.shift.1, !dbg !139
  %__8.sroa.4.0.insert.ext.1 = zext i16 %58 to i64, !dbg !139
  %__8.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.1, 16, !dbg !139
  %__8.sroa.4.0.insert.insert.1 = or disjoint i64 %__8.sroa.5.0.insert.insert.1, %__8.sroa.4.0.insert.shift.1, !dbg !139
  %__8.sroa.0.0.insert.ext.1 = zext i16 %57 to i64, !dbg !139
  %__8.sroa.0.0.insert.insert.1 = or disjoint i64 %__8.sroa.4.0.insert.insert.1, %__8.sroa.0.0.insert.ext.1, !dbg !139
  %add611.1 = or disjoint i32 %add58.1, %mul610, !dbg !140
  %add.ptr613.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add611.1, !dbg !141
  store i64 %__8.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr613.1, align 8, !dbg !142
  %65 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !106
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !106, !noalias !114
  %66 = fptrunc float %div.2 to half, !dbg !106
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %65), !dbg !106, !noalias !114
  %67 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !119
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !119, !noalias !114
  %68 = fptrunc float %div552.2 to half, !dbg !119
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %67), !dbg !119, !noalias !114
  %69 = bitcast half %66 to i16, !dbg !121
  %70 = bitcast half %68 to i16, !dbg !124
  %71 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !125
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !125, !noalias !129
  %72 = fptrunc float %div556.2 to half, !dbg !125
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %71), !dbg !125, !noalias !129
  %73 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !134
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !134, !noalias !129
  %74 = fptrunc float %div560.2 to half, !dbg !134
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %73), !dbg !134, !noalias !129
  %75 = bitcast half %72 to i16, !dbg !136
  %76 = bitcast half %74 to i16, !dbg !138
  %__8.sroa.6.0.insert.ext.2 = zext i16 %76 to i64, !dbg !139
  %__8.sroa.6.0.insert.shift.2 = shl nuw i64 %__8.sroa.6.0.insert.ext.2, 48, !dbg !139
  %__8.sroa.5.0.insert.ext.2 = zext i16 %75 to i64, !dbg !139
  %__8.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.2, 32, !dbg !139
  %__8.sroa.5.0.insert.insert.2 = or disjoint i64 %__8.sroa.6.0.insert.shift.2, %__8.sroa.5.0.insert.shift.2, !dbg !139
  %__8.sroa.4.0.insert.ext.2 = zext i16 %70 to i64, !dbg !139
  %__8.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.2, 16, !dbg !139
  %__8.sroa.4.0.insert.insert.2 = or disjoint i64 %__8.sroa.5.0.insert.insert.2, %__8.sroa.4.0.insert.shift.2, !dbg !139
  %__8.sroa.0.0.insert.ext.2 = zext i16 %69 to i64, !dbg !139
  %__8.sroa.0.0.insert.insert.2 = or disjoint i64 %__8.sroa.4.0.insert.insert.2, %__8.sroa.0.0.insert.ext.2, !dbg !139
  %add611.2 = or disjoint i32 %add58.2, %mul610, !dbg !140
  %add.ptr613.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add611.2, !dbg !141
  store i64 %__8.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr613.2, align 8, !dbg !142
  %77 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !106
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !106, !noalias !114
  %78 = fptrunc float %div.3 to half, !dbg !106
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %77), !dbg !106, !noalias !114
  %79 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !119
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !119, !noalias !114
  %80 = fptrunc float %div552.3 to half, !dbg !119
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %79), !dbg !119, !noalias !114
  %81 = bitcast half %78 to i16, !dbg !121
  %82 = bitcast half %80 to i16, !dbg !124
  %83 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !125
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !125, !noalias !129
  %84 = fptrunc float %div556.3 to half, !dbg !125
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %83), !dbg !125, !noalias !129
  %85 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !134
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !134, !noalias !129
  %86 = fptrunc float %div560.3 to half, !dbg !134
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %85), !dbg !134, !noalias !129
  %87 = bitcast half %84 to i16, !dbg !136
  %88 = bitcast half %86 to i16, !dbg !138
  %__8.sroa.6.0.insert.ext.3 = zext i16 %88 to i64, !dbg !139
  %__8.sroa.6.0.insert.shift.3 = shl nuw i64 %__8.sroa.6.0.insert.ext.3, 48, !dbg !139
  %__8.sroa.5.0.insert.ext.3 = zext i16 %87 to i64, !dbg !139
  %__8.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.3, 32, !dbg !139
  %__8.sroa.5.0.insert.insert.3 = or disjoint i64 %__8.sroa.6.0.insert.shift.3, %__8.sroa.5.0.insert.shift.3, !dbg !139
  %__8.sroa.4.0.insert.ext.3 = zext i16 %82 to i64, !dbg !139
  %__8.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.3, 16, !dbg !139
  %__8.sroa.4.0.insert.insert.3 = or disjoint i64 %__8.sroa.5.0.insert.insert.3, %__8.sroa.4.0.insert.shift.3, !dbg !139
  %__8.sroa.0.0.insert.ext.3 = zext i16 %81 to i64, !dbg !139
  %__8.sroa.0.0.insert.insert.3 = or disjoint i64 %__8.sroa.4.0.insert.insert.3, %__8.sroa.0.0.insert.ext.3, !dbg !139
  %add611.3 = or disjoint i32 %add58.3, %mul610, !dbg !140
  %add.ptr613.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add611.3, !dbg !141
  store i64 %__8.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr613.3, align 8, !dbg !142
  fence syncscope("warp") release, !dbg !143
  tail call void @llvm.mxc.barrier.warp(), !dbg !146
  fence syncscope("warp") acquire, !dbg !147
  %89 = load i64, ptr addrspace(3) %5, align 16, !dbg !148
  %add.ptr641.1 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 8, !dbg !149
  %90 = load i64, ptr addrspace(3) %add.ptr641.1, align 8, !dbg !148
  %add.ptr662 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !150
  store i64 %89, ptr addrspace(1) %add.ptr662, align 16, !dbg !151
  %output_fetch.sroa.6.0.add.ptr662.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr662, i64 8, !dbg !151
  store i64 %90, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr662.sroa_idx, align 8, !dbg !151
  %add.ptr641.1907 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 1032, !dbg !149
  %91 = load i64, ptr addrspace(3) %add.ptr641.1907, align 8, !dbg !148
  %92 = load i64, ptr addrspace(3) %7, align 16, !dbg !148
  %add.ptr662.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %6, !dbg !150
  store i64 %91, ptr addrspace(1) %add.ptr662.1, align 16, !dbg !151
  %output_fetch.sroa.6.0.add.ptr662.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr662.1, i64 8, !dbg !151
  store i64 %92, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr662.1.sroa_idx, align 8, !dbg !151
  ret void, !dbg !152

for.body97:                                       ; preds = %entry, %if.end520
  %numerator.sroa.80.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %numerator.sroa.80.1, %if.end520 ], !dbg !153
  %numerator.sroa.54.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %numerator.sroa.54.1, %if.end520 ], !dbg !153
  %numerator.sroa.28.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %numerator.sroa.28.1, %if.end520 ], !dbg !153
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %numerator.sroa.0.1, %if.end520 ], !dbg !153
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end520 ]
  %denominator.sroa.0.0872 = phi float [ 0.000000e+00, %entry ], [ %denominator.sroa.0.1, %if.end520 ]
  %maximum.sroa.0.0871 = phi float [ 0xFFF0000000000000, %entry ], [ %maximum.sroa.0.1, %if.end520 ]
  %gep1166 = getelementptr inbounds i32, ptr addrspace(1) %invariant.gep, i64 %indvars.iv, !dbg !154
  %93 = load i32, ptr addrspace(1) %gep1166, align 4, !dbg !154, !tbaa !30
  %mul105 = shl nsw i32 %93, 4, !dbg !155
  %cmp106 = icmp slt i32 %93, 0, !dbg !156
  %cmp108.not = icmp sgt i32 %mul105, %1
  %or.cond = select i1 %cmp106, i1 true, i1 %cmp108.not, !dbg !157
  br i1 %or.cond, label %if.end520, label %if.then, !dbg !157

if.then:                                          ; preds = %for.body97
  fence syncscope("warp") release, !dbg !158
  tail call void @llvm.mxc.barrier.warp(), !dbg !161
  fence syncscope("warp") acquire, !dbg !162
  %conv118 = zext nneg i32 %mul105 to i64
  %.idx = shl nuw nsw i64 %conv118, 7
  %gep1168 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1167, i64 %.idx, !dbg !163
  %qk_fetch.sroa.0.0.copyload1157 = load i64, ptr addrspace(4) %gep1168, align 16, !dbg !164
  %qk_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1168, i64 8, !dbg !164
  %qk_fetch.sroa.10.0.copyload1160 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0..sroa_idx, align 8, !dbg !164
  store i64 %qk_fetch.sroa.0.0.copyload1157, ptr addrspace(3) %add.ptr39, align 8, !dbg !165
  store i64 %qk_fetch.sroa.10.0.copyload1160, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !165
  %gep856.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1168, i64 1024, !dbg !163
  %qk_fetch.sroa.0.0.copyload1159 = load i64, ptr addrspace(4) %gep856.1, align 16, !dbg !164
  %qk_fetch.sroa.10.0.gep856.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1168, i64 1032, !dbg !164
  %qk_fetch.sroa.10.0.copyload1162 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0.gep856.1.sroa_idx, align 8, !dbg !164
  store i64 %qk_fetch.sroa.0.0.copyload1159, ptr addrspace(3) %add.ptr39.1886, align 8, !dbg !165
  store i64 %qk_fetch.sroa.10.0.copyload1162, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !165
  fence syncscope("warp") release, !dbg !166
  tail call void @llvm.mxc.barrier.warp(), !dbg !169
  fence syncscope("warp") acquire, !dbg !170
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !171
  %94 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %9, <4 x float> zeroinitializer), !dbg !172
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !171
  %95 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %10, <4 x float> %94), !dbg !172
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !171
  %96 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %11, <4 x float> %95), !dbg !172
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !171
  %97 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %12, <4 x float> %96), !dbg !172
  %add218 = add nuw nsw i32 %mul105, %mul217
  %cmp221.not = icmp sgt i32 %add218, %1, !dbg !173
  %scores.sroa.0.0.vec.extract976 = extractelement <4 x float> %97, i64 0
  %spec.select = select i1 %cmp221.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract976, !dbg !174
  %cmp221.not.1.not = icmp slt i32 %add218, %1, !dbg !173
  %scores.sroa.0.4.vec.extract983 = extractelement <4 x float> %97, i64 1, !dbg !174
  %condval.0.1 = select i1 %cmp221.not.1.not, float %scores.sroa.0.4.vec.extract983, float 0xFFF0000000000000, !dbg !174
  %add219.2 = or disjoint i32 %add218, 2, !dbg !175
  %cmp221.not.2 = icmp sgt i32 %add219.2, %1, !dbg !173
  %scores.sroa.0.8.vec.extract990 = extractelement <4 x float> %97, i64 2, !dbg !174
  %condval.0.2 = select i1 %cmp221.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract990, !dbg !174
  %add219.3 = or disjoint i32 %add218, 3, !dbg !175
  %cmp221.not.3 = icmp sgt i32 %add219.3, %1, !dbg !173
  %scores.sroa.0.12.vec.extract997 = extractelement <4 x float> %97, i64 3, !dbg !174
  %condval.0.3 = select i1 %cmp221.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract997, !dbg !174
  %98 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !176
  %99 = tail call contract noundef float @llvm.maxnum.f32(float %98, float %condval.0.1), !dbg !176
  %100 = tail call contract noundef float @llvm.maxnum.f32(float %99, float %condval.0.2), !dbg !176
  %101 = tail call contract noundef float @llvm.maxnum.f32(float %100, float %condval.0.3), !dbg !176
  %102 = bitcast float %101 to i32, !dbg !180
  %103 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !182
  %104 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %103) #10, !dbg !185
  %xor.i.i795 = xor i32 %104, 32, !dbg !186
  %105 = and i32 %104, -64, !dbg !187
  %and.i.i796 = add nsw i32 %105, 64, !dbg !187
  %cmp.not.i.i797 = icmp slt i32 %xor.i.i795, %and.i.i796, !dbg !188
  %cond.i.i798 = select i1 %cmp.not.i.i797, i32 %xor.i.i795, i32 %104, !dbg !189
  %shl.i.i799 = shl i32 %cond.i.i798, 2, !dbg !190
  %106 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i799, i32 %102), !dbg !191
  %107 = bitcast i32 %106 to float, !dbg !192
  %108 = tail call contract noundef float @llvm.maxnum.f32(float %101, float %107), !dbg !193
  %109 = bitcast float %108 to i32, !dbg !195
  %110 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !197
  %111 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %110) #10, !dbg !200
  %xor.i.i800 = xor i32 %111, 16, !dbg !201
  %112 = and i32 %111, -64, !dbg !202
  %and.i.i801 = add nsw i32 %112, 64, !dbg !202
  %cmp.not.i.i802 = icmp slt i32 %xor.i.i800, %and.i.i801, !dbg !203
  %cond.i.i803 = select i1 %cmp.not.i.i802, i32 %xor.i.i800, i32 %111, !dbg !204
  %shl.i.i804 = shl i32 %cond.i.i803, 2, !dbg !205
  %113 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i804, i32 %109), !dbg !206
  %114 = bitcast i32 %113 to float, !dbg !207
  %115 = tail call contract noundef float @llvm.maxnum.f32(float %108, float %114), !dbg !208
  %116 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.0871, float %115), !dbg !210
  %sub = fsub contract float %maximum.sroa.0.0871, %116, !dbg !212
  %mul263 = fmul contract float %sub, 0x3FC7154760000000, !dbg !213
  %cmp.i.i = fcmp contract olt float %mul263, -1.260000e+02, !dbg !214
  %cond.i.i805 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !214
  %add.i.i = fadd contract float %mul263, %cond.i.i805, !dbg !214
  %117 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !214
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !214
  %mul.i.i = fmul contract float %cond2.i.i, %117, !dbg !214
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !217
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !217
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !217
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !217
  %mul280 = fmul contract float %mul.i.i, %numerator.sroa.0.0.vec.extract, !dbg !218
  %mul283 = fmul contract float %mul.i.i, %numerator.sroa.0.4.vec.extract, !dbg !219
  %mul286 = fmul contract float %mul.i.i, %numerator.sroa.0.8.vec.extract, !dbg !220
  %mul289 = fmul contract float %mul.i.i, %numerator.sroa.0.12.vec.extract, !dbg !221
  %numerator.sroa.0.0.vec.insert1004 = insertelement <4 x float> poison, float %mul280, i64 0, !dbg !222
  %numerator.sroa.0.4.vec.insert1013 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert1004, float %mul283, i64 1, !dbg !222
  %numerator.sroa.0.8.vec.insert1022 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert1013, float %mul286, i64 2, !dbg !222
  %numerator.sroa.0.12.vec.insert1031 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert1022, float %mul289, i64 3, !dbg !222
  %numerator.sroa.28.16.vec.extract = extractelement <4 x float> %numerator.sroa.28.0, i64 0, !dbg !217
  %numerator.sroa.28.20.vec.extract = extractelement <4 x float> %numerator.sroa.28.0, i64 1, !dbg !217
  %numerator.sroa.28.24.vec.extract = extractelement <4 x float> %numerator.sroa.28.0, i64 2, !dbg !217
  %numerator.sroa.28.28.vec.extract = extractelement <4 x float> %numerator.sroa.28.0, i64 3, !dbg !217
  %mul280.1 = fmul contract float %mul.i.i, %numerator.sroa.28.16.vec.extract, !dbg !218
  %mul283.1 = fmul contract float %mul.i.i, %numerator.sroa.28.20.vec.extract, !dbg !219
  %mul286.1 = fmul contract float %mul.i.i, %numerator.sroa.28.24.vec.extract, !dbg !220
  %mul289.1 = fmul contract float %mul.i.i, %numerator.sroa.28.28.vec.extract, !dbg !221
  %numerator.sroa.28.16.vec.insert1042 = insertelement <4 x float> poison, float %mul280.1, i64 0, !dbg !222
  %numerator.sroa.28.20.vec.insert1051 = insertelement <4 x float> %numerator.sroa.28.16.vec.insert1042, float %mul283.1, i64 1, !dbg !222
  %numerator.sroa.28.24.vec.insert1060 = insertelement <4 x float> %numerator.sroa.28.20.vec.insert1051, float %mul286.1, i64 2, !dbg !222
  %numerator.sroa.28.28.vec.insert1069 = insertelement <4 x float> %numerator.sroa.28.24.vec.insert1060, float %mul289.1, i64 3, !dbg !222
  %numerator.sroa.54.32.vec.extract = extractelement <4 x float> %numerator.sroa.54.0, i64 0, !dbg !217
  %numerator.sroa.54.36.vec.extract = extractelement <4 x float> %numerator.sroa.54.0, i64 1, !dbg !217
  %numerator.sroa.54.40.vec.extract = extractelement <4 x float> %numerator.sroa.54.0, i64 2, !dbg !217
  %numerator.sroa.54.44.vec.extract = extractelement <4 x float> %numerator.sroa.54.0, i64 3, !dbg !217
  %mul280.2 = fmul contract float %mul.i.i, %numerator.sroa.54.32.vec.extract, !dbg !218
  %mul283.2 = fmul contract float %mul.i.i, %numerator.sroa.54.36.vec.extract, !dbg !219
  %mul286.2 = fmul contract float %mul.i.i, %numerator.sroa.54.40.vec.extract, !dbg !220
  %mul289.2 = fmul contract float %mul.i.i, %numerator.sroa.54.44.vec.extract, !dbg !221
  %numerator.sroa.54.32.vec.insert1079 = insertelement <4 x float> poison, float %mul280.2, i64 0, !dbg !222
  %numerator.sroa.54.36.vec.insert1088 = insertelement <4 x float> %numerator.sroa.54.32.vec.insert1079, float %mul283.2, i64 1, !dbg !222
  %numerator.sroa.54.40.vec.insert1097 = insertelement <4 x float> %numerator.sroa.54.36.vec.insert1088, float %mul286.2, i64 2, !dbg !222
  %numerator.sroa.54.44.vec.insert1106 = insertelement <4 x float> %numerator.sroa.54.40.vec.insert1097, float %mul289.2, i64 3, !dbg !222
  %numerator.sroa.80.48.vec.extract = extractelement <4 x float> %numerator.sroa.80.0, i64 0, !dbg !217
  %numerator.sroa.80.52.vec.extract = extractelement <4 x float> %numerator.sroa.80.0, i64 1, !dbg !217
  %numerator.sroa.80.56.vec.extract = extractelement <4 x float> %numerator.sroa.80.0, i64 2, !dbg !217
  %numerator.sroa.80.60.vec.extract = extractelement <4 x float> %numerator.sroa.80.0, i64 3, !dbg !217
  %mul280.3 = fmul contract float %mul.i.i, %numerator.sroa.80.48.vec.extract, !dbg !218
  %mul283.3 = fmul contract float %mul.i.i, %numerator.sroa.80.52.vec.extract, !dbg !219
  %mul286.3 = fmul contract float %mul.i.i, %numerator.sroa.80.56.vec.extract, !dbg !220
  %mul289.3 = fmul contract float %mul.i.i, %numerator.sroa.80.60.vec.extract, !dbg !221
  %numerator.sroa.80.48.vec.insert1116 = insertelement <4 x float> poison, float %mul280.3, i64 0, !dbg !222
  %numerator.sroa.80.52.vec.insert1125 = insertelement <4 x float> %numerator.sroa.80.48.vec.insert1116, float %mul283.3, i64 1, !dbg !222
  %numerator.sroa.80.56.vec.insert1134 = insertelement <4 x float> %numerator.sroa.80.52.vec.insert1125, float %mul286.3, i64 2, !dbg !222
  %numerator.sroa.80.60.vec.insert1143 = insertelement <4 x float> %numerator.sroa.80.56.vec.insert1134, float %mul289.3, i64 3, !dbg !222
  %sub313 = fsub contract float %spec.select, %116, !dbg !223
  %sub317 = fsub contract float %condval.0.1, %116, !dbg !224
  %sub321 = fsub contract float %condval.0.2, %116, !dbg !225
  %sub325 = fsub contract float %condval.0.3, %116, !dbg !226
  %mul330 = fmul contract float %sub313, 0x3FC7154760000000, !dbg !227
  %mul334 = fmul contract float %sub317, 0x3FC7154760000000, !dbg !228
  %mul338 = fmul contract float %sub321, 0x3FC7154760000000, !dbg !229
  %mul342 = fmul contract float %sub325, 0x3FC7154760000000, !dbg !230
  %add347 = fadd contract float %mul330, 8.000000e+00, !dbg !231
  %add351 = fadd contract float %mul334, 8.000000e+00, !dbg !232
  %add355 = fadd contract float %mul338, 8.000000e+00, !dbg !233
  %add359 = fadd contract float %mul342, 8.000000e+00, !dbg !234
  %cmp.i.i806 = fcmp contract olt float %add347, -1.260000e+02, !dbg !235
  %cond.i.i807 = select contract i1 %cmp.i.i806, float 6.400000e+01, float 0.000000e+00, !dbg !235
  %add.i.i808 = fadd contract float %add347, %cond.i.i807, !dbg !235
  %118 = tail call contract float @llvm.exp2.f32(float %add.i.i808), !dbg !235
  %cond2.i.i809 = select contract i1 %cmp.i.i806, float 0x3BF0000000000000, float 1.000000e+00, !dbg !235
  %mul.i.i810 = fmul contract float %cond2.i.i809, %118, !dbg !235
  %cmp.i.i811 = fcmp contract olt float %add351, -1.260000e+02, !dbg !237
  %cond.i.i812 = select contract i1 %cmp.i.i811, float 6.400000e+01, float 0.000000e+00, !dbg !237
  %add.i.i813 = fadd contract float %add351, %cond.i.i812, !dbg !237
  %119 = tail call contract float @llvm.exp2.f32(float %add.i.i813), !dbg !237
  %cond2.i.i814 = select contract i1 %cmp.i.i811, float 0x3BF0000000000000, float 1.000000e+00, !dbg !237
  %mul.i.i815 = fmul contract float %cond2.i.i814, %119, !dbg !237
  %cmp.i.i816 = fcmp contract olt float %add355, -1.260000e+02, !dbg !239
  %cond.i.i817 = select contract i1 %cmp.i.i816, float 6.400000e+01, float 0.000000e+00, !dbg !239
  %add.i.i818 = fadd contract float %add355, %cond.i.i817, !dbg !239
  %120 = tail call contract float @llvm.exp2.f32(float %add.i.i818), !dbg !239
  %cond2.i.i819 = select contract i1 %cmp.i.i816, float 0x3BF0000000000000, float 1.000000e+00, !dbg !239
  %mul.i.i820 = fmul contract float %cond2.i.i819, %120, !dbg !239
  %cmp.i.i821 = fcmp contract olt float %add359, -1.260000e+02, !dbg !241
  %cond.i.i822 = select contract i1 %cmp.i.i821, float 6.400000e+01, float 0.000000e+00, !dbg !241
  %add.i.i823 = fadd contract float %add359, %cond.i.i822, !dbg !241
  %121 = tail call contract float @llvm.exp2.f32(float %add.i.i823), !dbg !241
  %cond2.i.i824 = select contract i1 %cmp.i.i821, float 0x3BF0000000000000, float 1.000000e+00, !dbg !241
  %mul.i.i825 = fmul contract float %cond2.i.i824, %121, !dbg !241
  %122 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !243
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !243, !noalias !247
  %123 = fptrunc float %mul.i.i810 to half, !dbg !243
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %122), !dbg !243, !noalias !247
  %124 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !252, !noalias !247
  %125 = fptrunc float %mul.i.i815 to half, !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %124), !dbg !252, !noalias !247
  %126 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !254, !noalias !258
  %127 = fptrunc float %mul.i.i820 to half, !dbg !254
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %126), !dbg !254, !noalias !258
  %128 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !263, !noalias !258
  %129 = fptrunc float %mul.i.i825 to half, !dbg !263
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %128), !dbg !263, !noalias !258
  %130 = insertelement <4 x half> poison, half %123, i64 0, !dbg !265
  %131 = insertelement <4 x half> %130, half %125, i64 1, !dbg !265
  %132 = insertelement <4 x half> %131, half %127, i64 2, !dbg !265
  %133 = insertelement <4 x half> %132, half %129, i64 3, !dbg !265
  %conv.i.i = fpext half %123 to float, !dbg !266
  %conv.i.i.1 = fpext half %125 to float, !dbg !266
  %conv.i.i.2 = fpext half %127 to float, !dbg !266
  %conv.i.i.3 = fpext half %129 to float, !dbg !266
  %mul300 = fmul contract float %denominator.sroa.0.0872, %mul.i.i, !dbg !271
  fence syncscope("warp") release, !dbg !272
  tail call void @llvm.mxc.barrier.warp(), !dbg !275
  fence syncscope("warp") acquire, !dbg !276
  %134 = getelementptr inbounds i8, ptr addrspace(4) %20, i64 %.idx, !dbg !277
  %135 = load i64, ptr addrspace(4) %134, align 8, !dbg !278
  %add.ptr425.1 = getelementptr inbounds i8, ptr addrspace(4) %134, i64 128, !dbg !277
  %136 = load i64, ptr addrspace(4) %add.ptr425.1, align 8, !dbg !278
  %add.ptr425.2 = getelementptr inbounds i8, ptr addrspace(4) %134, i64 256, !dbg !277
  %137 = load i64, ptr addrspace(4) %add.ptr425.2, align 8, !dbg !278
  %add.ptr425.3 = getelementptr inbounds i8, ptr addrspace(4) %134, i64 384, !dbg !277
  %138 = load i64, ptr addrspace(4) %add.ptr425.3, align 8, !dbg !278
  %add393 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !279
  %add393.1 = fadd contract float %add393, %conv.i.i.1, !dbg !279
  %add393.2 = fadd contract float %add393.1, %conv.i.i.2, !dbg !279
  %add393.3 = fadd contract float %add393.2, %conv.i.i.3, !dbg !279
  %v_column.sroa.18.0.insert.ext = shl i64 %138, 48, !dbg !280
  %v_column.sroa.14.0.insert.ext = shl i64 %137, 32, !dbg !280
  %v_column.sroa.14.0.insert.shift = and i64 %v_column.sroa.14.0.insert.ext, 281470681743360, !dbg !280
  %v_column.sroa.14.0.insert.insert = or disjoint i64 %v_column.sroa.18.0.insert.ext, %v_column.sroa.14.0.insert.shift, !dbg !280
  %v_column.sroa.10.0.insert.ext = shl i64 %136, 16, !dbg !280
  %v_column.sroa.10.0.insert.shift = and i64 %v_column.sroa.10.0.insert.ext, 4294901760, !dbg !280
  %v_column.sroa.10.0.insert.insert = or disjoint i64 %v_column.sroa.14.0.insert.insert, %v_column.sroa.10.0.insert.shift, !dbg !280
  %v_column.sroa.0.0.insert.ext = and i64 %135, 65535, !dbg !280
  %v_column.sroa.0.0.insert.insert = or disjoint i64 %v_column.sroa.10.0.insert.insert, %v_column.sroa.0.0.insert.ext, !dbg !280
  store i64 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr467, align 8, !dbg !280
  %v_fetch.sroa.0.2.extract.shift = lshr i64 %135, 16, !dbg !281
  %139 = shl i64 %138, 32, !dbg !280
  %v_column.sroa.18.0.insert.ext953 = and i64 %139, -281474976710656, !dbg !280
  %140 = shl i64 %137, 16, !dbg !280
  %v_column.sroa.14.0.insert.shift939 = and i64 %140, 281470681743360, !dbg !280
  %v_column.sroa.14.0.insert.insert941 = or disjoint i64 %v_column.sroa.18.0.insert.ext953, %v_column.sroa.14.0.insert.shift939, !dbg !280
  %v_column.sroa.10.0.insert.ext923 = and i64 %136, 4294901760, !dbg !280
  %v_column.sroa.10.0.insert.insert926 = or disjoint i64 %v_column.sroa.14.0.insert.insert941, %v_column.sroa.10.0.insert.ext923, !dbg !280
  %v_column.sroa.0.0.insert.ext911 = and i64 %v_fetch.sroa.0.2.extract.shift, 65535, !dbg !280
  %v_column.sroa.0.0.insert.insert913 = or disjoint i64 %v_column.sroa.10.0.insert.insert926, %v_column.sroa.0.0.insert.ext911, !dbg !280
  store i64 %v_column.sroa.0.0.insert.insert913, ptr addrspace(3) %add.ptr467.1, align 8, !dbg !280
  %v_fetch.sroa.0.4.extract.shift = lshr i64 %135, 32, !dbg !281
  %141 = shl i64 %138, 16, !dbg !280
  %v_column.sroa.18.0.insert.ext958 = and i64 %141, -281474976710656, !dbg !280
  %v_column.sroa.14.0.insert.ext943 = and i64 %137, 281470681743360, !dbg !280
  %v_column.sroa.14.0.insert.insert946 = or disjoint i64 %v_column.sroa.18.0.insert.ext958, %v_column.sroa.14.0.insert.ext943, !dbg !280
  %142 = lshr i64 %136, 16, !dbg !280
  %v_column.sroa.10.0.insert.shift929 = and i64 %142, 4294901760, !dbg !280
  %v_column.sroa.10.0.insert.insert931 = or disjoint i64 %v_column.sroa.14.0.insert.insert946, %v_column.sroa.10.0.insert.shift929, !dbg !280
  %v_column.sroa.0.0.insert.ext915 = and i64 %v_fetch.sroa.0.4.extract.shift, 65535, !dbg !280
  %v_column.sroa.0.0.insert.insert917 = or disjoint i64 %v_column.sroa.10.0.insert.insert931, %v_column.sroa.0.0.insert.ext915, !dbg !280
  store i64 %v_column.sroa.0.0.insert.insert917, ptr addrspace(3) %add.ptr467.2, align 8, !dbg !280
  %v_fetch.sroa.0.6.extract.shift = lshr i64 %135, 48, !dbg !281
  %v_fetch.sroa.17.30.extract.shift = and i64 %138, -281474976710656, !dbg !280
  %143 = lshr i64 %137, 16, !dbg !280
  %v_column.sroa.14.0.insert.shift949 = and i64 %143, 281470681743360, !dbg !280
  %v_column.sroa.14.0.insert.insert951 = or disjoint i64 %v_fetch.sroa.17.30.extract.shift, %v_column.sroa.14.0.insert.shift949, !dbg !280
  %144 = lshr i64 %136, 32, !dbg !280
  %v_column.sroa.10.0.insert.shift934 = and i64 %144, 4294901760, !dbg !280
  %v_column.sroa.10.0.insert.insert936 = or disjoint i64 %v_column.sroa.14.0.insert.insert951, %v_column.sroa.10.0.insert.shift934, !dbg !280
  %v_column.sroa.0.0.insert.insert921 = or disjoint i64 %v_column.sroa.10.0.insert.insert936, %v_fetch.sroa.0.6.extract.shift, !dbg !280
  store i64 %v_column.sroa.0.0.insert.insert921, ptr addrspace(3) %add.ptr467.3, align 8, !dbg !280
  fence syncscope("warp") release, !dbg !282
  tail call void @llvm.mxc.barrier.warp(), !dbg !285
  fence syncscope("warp") acquire, !dbg !286
  %145 = load <4 x half>, ptr addrspace(3) %add.ptr494, align 8, !dbg !287
  %146 = load <4 x half>, ptr addrspace(3) %add.ptr494.1, align 8, !dbg !287
  %147 = load <4 x half>, ptr addrspace(3) %add.ptr494.2, align 8, !dbg !287
  %148 = load <4 x half>, ptr addrspace(3) %add.ptr494.3, align 8, !dbg !287
  %149 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %145, <4 x half> %133, <4 x float> %numerator.sroa.0.12.vec.insert1031), !dbg !288
  %150 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %146, <4 x half> %133, <4 x float> %numerator.sroa.28.28.vec.insert1069), !dbg !288
  %151 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %147, <4 x half> %133, <4 x float> %numerator.sroa.54.44.vec.insert1106), !dbg !288
  %152 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %148, <4 x half> %133, <4 x float> %numerator.sroa.80.60.vec.insert1143), !dbg !288
  %add400 = fadd contract float %mul300, %add393.3, !dbg !289
  br label %if.end520, !dbg !290

if.end520:                                        ; preds = %if.then, %for.body97
  %numerator.sroa.80.1 = phi <4 x float> [ %numerator.sroa.80.0, %for.body97 ], [ %152, %if.then ], !dbg !291
  %numerator.sroa.54.1 = phi <4 x float> [ %numerator.sroa.54.0, %for.body97 ], [ %151, %if.then ], !dbg !291
  %numerator.sroa.28.1 = phi <4 x float> [ %numerator.sroa.28.0, %for.body97 ], [ %150, %if.then ], !dbg !291
  %numerator.sroa.0.1 = phi <4 x float> [ %numerator.sroa.0.0, %for.body97 ], [ %149, %if.then ], !dbg !291
  %maximum.sroa.0.1 = phi float [ %maximum.sroa.0.0871, %for.body97 ], [ %116, %if.then ], !dbg !291
  %denominator.sroa.0.1 = phi float [ %denominator.sroa.0.0872, %for.body97 ], [ %add400, %if.then ], !dbg !291
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !290
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !292
  br i1 %exitcond.not, label %for.cond.cleanup96, label %for.body97, !dbg !64, !llvm.loop !293
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v077_codex_power_s8_output_pair_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v077_codex_power_s8_output_pair_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 30, column: 3, scope: !40)
!44 = !DILocation(line: 31, column: 43, scope: !40)
!45 = !DILocation(line: 31, column: 29, scope: !40)
!46 = !DILocation(line: 34, column: 24, scope: !40)
!47 = !DILocation(line: 34, column: 203, scope: !40)
!48 = !DILocation(line: 31, column: 124, scope: !40)
!49 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !52)
!50 = distinct !DISubprogram(name: "__barrier_warp", scope: !51, file: !51, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!51 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!52 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !54)
!53 = distinct !DISubprogram(name: "__syncwarp", scope: !51, file: !51, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!54 = distinct !DILocation(line: 37, column: 3, scope: !40)
!55 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !52)
!56 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !52)
!57 = !DILocation(line: 40, column: 140, scope: !40)
!58 = !DILocation(line: 40, column: 168, scope: !40)
!59 = !DILocation(line: 40, column: 94, scope: !40)
!60 = !DILocation(line: 40, column: 174, scope: !40)
!61 = !DILocation(line: 40, column: 57, scope: !40)
!62 = !DILocation(line: 40, column: 38, scope: !40)
!63 = !DILocation(line: 40, column: 111, scope: !40)
!64 = !DILocation(line: 50, column: 3, scope: !40)
!65 = !DILocation(line: 1018, column: 9, scope: !66, inlinedAt: !67)
!66 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!67 = distinct !DILocation(line: 169, column: 38, scope: !40)
!68 = !DILocation(line: 171, column: 37, scope: !69, inlinedAt: !70)
!69 = distinct !DISubprogram(name: "__lane_id", scope: !51, file: !51, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!70 = distinct !DILocation(line: 990, column: 14, scope: !71, inlinedAt: !72)
!71 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!72 = distinct !DILocation(line: 1019, column: 11, scope: !66, inlinedAt: !67)
!73 = !DILocation(line: 171, column: 10, scope: !69, inlinedAt: !70)
!74 = !DILocation(line: 991, column: 20, scope: !71, inlinedAt: !72)
!75 = !DILocation(line: 992, column: 36, scope: !71, inlinedAt: !72)
!76 = !DILocation(line: 992, column: 17, scope: !71, inlinedAt: !72)
!77 = !DILocation(line: 992, column: 11, scope: !71, inlinedAt: !72)
!78 = !DILocation(line: 993, column: 43, scope: !71, inlinedAt: !72)
!79 = !DILocation(line: 993, column: 10, scope: !71, inlinedAt: !72)
!80 = !DILocation(line: 1020, column: 14, scope: !66, inlinedAt: !67)
!81 = !DILocation(line: 169, column: 36, scope: !40)
!82 = !DILocation(line: 1018, column: 9, scope: !66, inlinedAt: !83)
!83 = distinct !DILocation(line: 170, column: 38, scope: !40)
!84 = !DILocation(line: 171, column: 37, scope: !69, inlinedAt: !85)
!85 = distinct !DILocation(line: 990, column: 14, scope: !71, inlinedAt: !86)
!86 = distinct !DILocation(line: 1019, column: 11, scope: !66, inlinedAt: !83)
!87 = !DILocation(line: 171, column: 10, scope: !69, inlinedAt: !85)
!88 = !DILocation(line: 991, column: 20, scope: !71, inlinedAt: !86)
!89 = !DILocation(line: 992, column: 36, scope: !71, inlinedAt: !86)
!90 = !DILocation(line: 992, column: 17, scope: !71, inlinedAt: !86)
!91 = !DILocation(line: 992, column: 11, scope: !71, inlinedAt: !86)
!92 = !DILocation(line: 993, column: 43, scope: !71, inlinedAt: !86)
!93 = !DILocation(line: 993, column: 10, scope: !71, inlinedAt: !86)
!94 = !DILocation(line: 1020, column: 14, scope: !66, inlinedAt: !83)
!95 = !DILocation(line: 170, column: 36, scope: !40)
!96 = !DILocation(line: 174, column: 21, scope: !40)
!97 = !DILocation(line: 176, column: 22, scope: !40)
!98 = !DILocation(line: 177, column: 22, scope: !40)
!99 = !DILocation(line: 178, column: 22, scope: !40)
!100 = !DILocation(line: 179, column: 22, scope: !40)
!101 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !102)
!102 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !103)
!103 = distinct !DILocation(line: 182, column: 3, scope: !40)
!104 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !102)
!105 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !102)
!106 = !DILocation(line: 1007, column: 10, scope: !107, inlinedAt: !109)
!107 = distinct !DISubprogram(name: "__float2half_rn", scope: !108, file: !108, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!108 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!109 = distinct !DILocation(line: 1077, column: 18, scope: !110, inlinedAt: !111)
!110 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !108, file: !108, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!111 = distinct !DILocation(line: 1295, column: 23, scope: !112, inlinedAt: !113)
!112 = distinct !DISubprogram(name: "__float22half2_rn", scope: !108, file: !108, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!113 = distinct !DILocation(line: 187, column: 27, scope: !40)
!114 = !{!115, !117}
!115 = distinct !{!115, !116, !"_ZL17__floats2half2_rnff: %agg.result"}
!116 = distinct !{!116, !"_ZL17__floats2half2_rnff"}
!117 = distinct !{!117, !118, !"_ZL17__float22half2_rn6float2: %agg.result"}
!118 = distinct !{!118, !"_ZL17__float22half2_rn6float2"}
!119 = !DILocation(line: 1007, column: 10, scope: !107, inlinedAt: !120)
!120 = distinct !DILocation(line: 1077, column: 38, scope: !110, inlinedAt: !111)
!121 = !DILocation(line: 596, column: 67, scope: !122, inlinedAt: !123)
!122 = distinct !DISubprogram(name: "__half2", scope: !108, file: !108, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!123 = distinct !DILocation(line: 1077, column: 10, scope: !110, inlinedAt: !111)
!124 = !DILocation(line: 596, column: 73, scope: !122, inlinedAt: !123)
!125 = !DILocation(line: 1007, column: 10, scope: !107, inlinedAt: !126)
!126 = distinct !DILocation(line: 1077, column: 18, scope: !110, inlinedAt: !127)
!127 = distinct !DILocation(line: 1295, column: 23, scope: !112, inlinedAt: !128)
!128 = distinct !DILocation(line: 188, column: 27, scope: !40)
!129 = !{!130, !132}
!130 = distinct !{!130, !131, !"_ZL17__floats2half2_rnff: %agg.result"}
!131 = distinct !{!131, !"_ZL17__floats2half2_rnff"}
!132 = distinct !{!132, !133, !"_ZL17__float22half2_rn6float2: %agg.result"}
!133 = distinct !{!133, !"_ZL17__float22half2_rn6float2"}
!134 = !DILocation(line: 1007, column: 10, scope: !107, inlinedAt: !135)
!135 = distinct !DILocation(line: 1077, column: 38, scope: !110, inlinedAt: !127)
!136 = !DILocation(line: 596, column: 67, scope: !122, inlinedAt: !137)
!137 = distinct !DILocation(line: 1077, column: 10, scope: !110, inlinedAt: !127)
!138 = !DILocation(line: 596, column: 73, scope: !122, inlinedAt: !137)
!139 = !DILocation(line: 189, column: 38, scope: !40)
!140 = !DILocation(line: 190, column: 141, scope: !40)
!141 = !DILocation(line: 190, column: 22, scope: !40)
!142 = !DILocation(line: 190, column: 221, scope: !40)
!143 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !144)
!144 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !145)
!145 = distinct !DILocation(line: 192, column: 3, scope: !40)
!146 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !144)
!147 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !144)
!148 = !DILocation(line: 197, column: 46, scope: !40)
!149 = !DILocation(line: 197, column: 65, scope: !40)
!150 = !DILocation(line: 199, column: 22, scope: !40)
!151 = !DILocation(line: 199, column: 134, scope: !40)
!152 = !DILocation(line: 201, column: 1, scope: !40)
!153 = !DILocation(line: 45, column: 37, scope: !40)
!154 = !DILocation(line: 51, column: 24, scope: !40)
!155 = !DILocation(line: 51, column: 101, scope: !40)
!156 = !DILocation(line: 52, column: 12, scope: !40)
!157 = !DILocation(line: 52, column: 28, scope: !40)
!158 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !159)
!159 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !160)
!160 = distinct !DILocation(line: 53, column: 7, scope: !40)
!161 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !159)
!162 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !159)
!163 = !DILocation(line: 56, column: 47, scope: !40)
!164 = !DILocation(line: 56, column: 33, scope: !40)
!165 = !DILocation(line: 59, column: 213, scope: !40)
!166 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !167)
!167 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !168)
!168 = distinct !DILocation(line: 62, column: 7, scope: !40)
!169 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !167)
!170 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !167)
!171 = !DILocation(line: 67, column: 32, scope: !40)
!172 = !DILocation(line: 69, column: 37, scope: !40)
!173 = !DILocation(line: 77, column: 74, scope: !40)
!174 = !DILocation(line: 77, column: 13, scope: !40)
!175 = !DILocation(line: 77, column: 63, scope: !40)
!176 = !DILocation(line: 351, column: 10, scope: !177, inlinedAt: !179)
!177 = distinct !DISubprogram(name: "max", scope: !178, file: !178, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!178 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!179 = distinct !DILocation(line: 87, column: 28, scope: !40)
!180 = !DILocation(line: 1018, column: 9, scope: !66, inlinedAt: !181)
!181 = distinct !DILocation(line: 89, column: 48, scope: !40)
!182 = !DILocation(line: 171, column: 37, scope: !69, inlinedAt: !183)
!183 = distinct !DILocation(line: 990, column: 14, scope: !71, inlinedAt: !184)
!184 = distinct !DILocation(line: 1019, column: 11, scope: !66, inlinedAt: !181)
!185 = !DILocation(line: 171, column: 10, scope: !69, inlinedAt: !183)
!186 = !DILocation(line: 991, column: 20, scope: !71, inlinedAt: !184)
!187 = !DILocation(line: 992, column: 36, scope: !71, inlinedAt: !184)
!188 = !DILocation(line: 992, column: 17, scope: !71, inlinedAt: !184)
!189 = !DILocation(line: 992, column: 11, scope: !71, inlinedAt: !184)
!190 = !DILocation(line: 993, column: 43, scope: !71, inlinedAt: !184)
!191 = !DILocation(line: 993, column: 10, scope: !71, inlinedAt: !184)
!192 = !DILocation(line: 1020, column: 14, scope: !66, inlinedAt: !181)
!193 = !DILocation(line: 351, column: 10, scope: !177, inlinedAt: !194)
!194 = distinct !DILocation(line: 89, column: 26, scope: !40)
!195 = !DILocation(line: 1018, column: 9, scope: !66, inlinedAt: !196)
!196 = distinct !DILocation(line: 90, column: 48, scope: !40)
!197 = !DILocation(line: 171, column: 37, scope: !69, inlinedAt: !198)
!198 = distinct !DILocation(line: 990, column: 14, scope: !71, inlinedAt: !199)
!199 = distinct !DILocation(line: 1019, column: 11, scope: !66, inlinedAt: !196)
!200 = !DILocation(line: 171, column: 10, scope: !69, inlinedAt: !198)
!201 = !DILocation(line: 991, column: 20, scope: !71, inlinedAt: !199)
!202 = !DILocation(line: 992, column: 36, scope: !71, inlinedAt: !199)
!203 = !DILocation(line: 992, column: 17, scope: !71, inlinedAt: !199)
!204 = !DILocation(line: 992, column: 11, scope: !71, inlinedAt: !199)
!205 = !DILocation(line: 993, column: 43, scope: !71, inlinedAt: !199)
!206 = !DILocation(line: 993, column: 10, scope: !71, inlinedAt: !199)
!207 = !DILocation(line: 1020, column: 14, scope: !66, inlinedAt: !196)
!208 = !DILocation(line: 351, column: 10, scope: !177, inlinedAt: !209)
!209 = distinct !DILocation(line: 90, column: 26, scope: !40)
!210 = !DILocation(line: 351, column: 10, scope: !177, inlinedAt: !211)
!211 = distinct !DILocation(line: 91, column: 24, scope: !40)
!212 = !DILocation(line: 92, column: 39, scope: !40)
!213 = !DILocation(line: 92, column: 57, scope: !40)
!214 = !DILocation(line: 285, column: 49, scope: !215, inlinedAt: !216)
!215 = distinct !DISubprogram(name: "exp2f", scope: !178, file: !178, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!216 = distinct !DILocation(line: 92, column: 20, scope: !40)
!217 = !DILocation(line: 96, column: 23, scope: !40)
!218 = !DILocation(line: 98, column: 24, scope: !40)
!219 = !DILocation(line: 99, column: 24, scope: !40)
!220 = !DILocation(line: 100, column: 24, scope: !40)
!221 = !DILocation(line: 101, column: 24, scope: !40)
!222 = !DILocation(line: 102, column: 47, scope: !40)
!223 = !DILocation(line: 115, column: 28, scope: !40)
!224 = !DILocation(line: 116, column: 28, scope: !40)
!225 = !DILocation(line: 117, column: 28, scope: !40)
!226 = !DILocation(line: 118, column: 28, scope: !40)
!227 = !DILocation(line: 120, column: 25, scope: !40)
!228 = !DILocation(line: 121, column: 25, scope: !40)
!229 = !DILocation(line: 122, column: 25, scope: !40)
!230 = !DILocation(line: 123, column: 25, scope: !40)
!231 = !DILocation(line: 125, column: 23, scope: !40)
!232 = !DILocation(line: 126, column: 23, scope: !40)
!233 = !DILocation(line: 127, column: 23, scope: !40)
!234 = !DILocation(line: 128, column: 23, scope: !40)
!235 = !DILocation(line: 285, column: 49, scope: !215, inlinedAt: !236)
!236 = distinct !DILocation(line: 129, column: 15, scope: !40)
!237 = !DILocation(line: 285, column: 49, scope: !215, inlinedAt: !238)
!238 = distinct !DILocation(line: 130, column: 15, scope: !40)
!239 = !DILocation(line: 285, column: 49, scope: !215, inlinedAt: !240)
!240 = distinct !DILocation(line: 131, column: 15, scope: !40)
!241 = !DILocation(line: 285, column: 49, scope: !215, inlinedAt: !242)
!242 = distinct !DILocation(line: 132, column: 15, scope: !40)
!243 = !DILocation(line: 1007, column: 10, scope: !107, inlinedAt: !244)
!244 = distinct !DILocation(line: 1077, column: 18, scope: !110, inlinedAt: !245)
!245 = distinct !DILocation(line: 1295, column: 23, scope: !112, inlinedAt: !246)
!246 = distinct !DILocation(line: 133, column: 29, scope: !40)
!247 = !{!248, !250}
!248 = distinct !{!248, !249, !"_ZL17__floats2half2_rnff: %agg.result"}
!249 = distinct !{!249, !"_ZL17__floats2half2_rnff"}
!250 = distinct !{!250, !251, !"_ZL17__float22half2_rn6float2: %agg.result"}
!251 = distinct !{!251, !"_ZL17__float22half2_rn6float2"}
!252 = !DILocation(line: 1007, column: 10, scope: !107, inlinedAt: !253)
!253 = distinct !DILocation(line: 1077, column: 38, scope: !110, inlinedAt: !245)
!254 = !DILocation(line: 1007, column: 10, scope: !107, inlinedAt: !255)
!255 = distinct !DILocation(line: 1077, column: 18, scope: !110, inlinedAt: !256)
!256 = distinct !DILocation(line: 1295, column: 23, scope: !112, inlinedAt: !257)
!257 = distinct !DILocation(line: 134, column: 29, scope: !40)
!258 = !{!259, !261}
!259 = distinct !{!259, !260, !"_ZL17__floats2half2_rnff: %agg.result"}
!260 = distinct !{!260, !"_ZL17__floats2half2_rnff"}
!261 = distinct !{!261, !262, !"_ZL17__float22half2_rn6float2: %agg.result"}
!262 = distinct !{!262, !"_ZL17__float22half2_rn6float2"}
!263 = !DILocation(line: 1007, column: 10, scope: !107, inlinedAt: !264)
!264 = distinct !DILocation(line: 1077, column: 38, scope: !110, inlinedAt: !256)
!265 = !DILocation(line: 135, column: 36, scope: !40)
!266 = !DILocation(line: 1082, column: 16, scope: !267, inlinedAt: !268)
!267 = distinct !DISubprogram(name: "__half2float", scope: !108, file: !108, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!268 = distinct !DILocation(line: 136, column: 55, scope: !269, inlinedAt: !270)
!269 = distinct !DISubprogram(name: "operator float", scope: !108, file: !108, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!270 = distinct !DILocation(line: 139, column: 52, scope: !40)
!271 = !DILocation(line: 104, column: 40, scope: !40)
!272 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !273)
!273 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !274)
!274 = distinct !DILocation(line: 142, column: 7, scope: !40)
!275 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !273)
!276 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !273)
!277 = !DILocation(line: 145, column: 54, scope: !40)
!278 = !DILocation(line: 145, column: 40, scope: !40)
!279 = !DILocation(line: 139, column: 42, scope: !40)
!280 = !DILocation(line: 152, column: 159, scope: !40)
!281 = !DILocation(line: 150, column: 27, scope: !40)
!282 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !283)
!283 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !284)
!284 = distinct !DILocation(line: 154, column: 7, scope: !40)
!285 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !283)
!286 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !283)
!287 = !DILocation(line: 157, column: 46, scope: !40)
!288 = !DILocation(line: 162, column: 46, scope: !40)
!289 = !DILocation(line: 141, column: 40, scope: !40)
!290 = !DILocation(line: 50, column: 40, scope: !40)
!291 = !DILocation(line: 0, scope: !40)
!292 = !DILocation(line: 50, column: 35, scope: !40)
!293 = distinct !{!293, !64, !294, !32, !295}
!294 = !DILocation(line: 168, column: 3, scope: !40)
!295 = !{!"llvm.loop.unroll.disable"}
