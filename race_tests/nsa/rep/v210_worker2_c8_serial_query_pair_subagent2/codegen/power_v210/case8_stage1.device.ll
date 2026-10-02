; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v210_worker2_c8_serial_query_pair_subagent2/codegen/power_v210/case8_stage1.device.cpp'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v210_worker2_c8_serial_query_pair_subagent2/codegen/power_v210/case8_stage1.device.cpp"
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
  %mul = shl nsw i32 %0, 22
  %1 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !range !29
  %mul11 = shl nsw i32 %1, 11
  %add = add nuw nsw i32 %mul, %mul11
  %2 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !42
  %mul17 = shl nuw nsw i32 %2, 3
  %add13 = add nuw nsw i32 %add, %mul17
  %mul30 = and i32 %mul17, 8128
  %xor762 = and i32 %mul17, 56
  %call33.masked = and i32 %2, 1016
  %mul35 = xor i32 %xor762, %call33.masked
  %and39 = lshr i32 %2, 3
  %shr40 = and i32 %and39, 1
  %and54 = shl nuw nsw i32 %2, 6
  %mul55 = and i32 %and54, 960
  %shr58 = lshr i32 %2, 5
  %and61 = and i32 %2, 7
  %and66 = lshr i32 %2, 4
  %3 = xor i32 %and39, %and66
  %xor71761 = xor i32 %3, %2
  %xor74 = shl nuw nsw i32 %xor71761, 2
  %mul75 = and i32 %xor74, 4
  %mul101 = shl nsw i32 %0, 12
  %mul103 = shl nuw nsw i32 %1, 1
  %add104 = add nuw nsw i32 %mul101, %mul103
  %xor578 = shl nuw nsw i32 %3, 2
  %mul579 = and i32 %xor578, 4
  %conv = zext nneg i32 %0 to i64
  %mul127 = zext nneg i32 %mul17 to i64
  %invariant.gep839 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul127, !dbg !43
  %4 = lshr i32 %2, 2
  %mul221 = and i32 %4, 252
  %mul362 = shl nuw nsw i64 %conv, 18
  %5 = shl nuw nsw i32 %2, 4
  %6 = and i32 %5, 16256
  %mul366 = zext nneg i32 %6 to i64
  %add367 = or disjoint i64 %mul362, %mul366
  %mul377 = zext nneg i32 %xor762 to i64
  %add370 = or disjoint i64 %add367, %mul377
  %and409 = shl nuw nsw i32 %2, 1
  %mul410 = and i32 %and409, 14
  %call414.mask = and i32 %2, 16
  %and422 = lshr i32 %2, 1
  %shr423 = and i32 %and422, 3
  %xor424 = xor i32 %shr423, %and66
  %mul432 = and i32 %4, 2
  %mul445 = and i32 %5, 48
  %shr450 = and i32 %4, 3
  %7 = or disjoint i32 %mul445, %shr450
  %and461 = and i32 %2, 3
  %8 = xor i32 %and66, %and461
  %9 = zext nneg i32 %add104 to i64, !dbg !43
  %10 = zext nneg i32 %add13 to i64, !dbg !43
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %10, !dbg !44
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %add.ptr, align 16, !dbg !45
  %qk_fetch.sroa.18.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !45
  %qk_fetch.sroa.18.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.add.ptr.sroa_idx, align 8, !dbg !45
  %11 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul35, !dbg !46
  %12 = getelementptr inbounds %struct.__half, ptr addrspace(3) %11, i32 %mul30, !dbg !46
  %add.ptr45.idx = shl nuw nsw i32 %shr40, 3, !dbg !46
  %add.ptr45 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 %add.ptr45.idx, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr45, align 8, !dbg !47
  %xor41.1 = shl nuw nsw i32 %shr40, 3, !dbg !46
  %add.ptr45.idx.1 = xor i32 %xor41.1, 8, !dbg !46
  %add.ptr45.1 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 %add.ptr45.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.18.0.copyload, ptr addrspace(3) %add.ptr45.1, align 8, !dbg !47
  %13 = add nuw nsw i64 %10, 512, !dbg !48
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %13, !dbg !44
  %qk_fetch.sroa.0.0.copyload1464 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %qk_fetch.sroa.18.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %qk_fetch.sroa.18.0.copyload1471 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.add.ptr.1.sroa_idx, align 8, !dbg !45
  %14 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 1024, !dbg !46
  %add.ptr45.1848 = getelementptr inbounds i8, ptr addrspace(3) %14, i32 %add.ptr45.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1464, ptr addrspace(3) %add.ptr45.1848, align 8, !dbg !47
  %add.ptr45.1.1 = getelementptr inbounds i8, ptr addrspace(3) %14, i32 %add.ptr45.idx, !dbg !46
  store i64 %qk_fetch.sroa.18.0.copyload1471, ptr addrspace(3) %add.ptr45.1.1, align 8, !dbg !47
  fence syncscope("warp") release, !dbg !49
  tail call void @llvm.mxc.barrier.warp(), !dbg !55
  fence syncscope("warp") acquire, !dbg !56
  %xor62 = xor i32 %shr58, %and61, !dbg !57
  %mul63 = shl nuw nsw i32 %xor62, 3, !dbg !58
  %add64 = add nuw nsw i32 %mul63, %mul55, !dbg !59
  %add76 = or disjoint i32 %add64, %mul75, !dbg !60
  %add.ptr78 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add76, !dbg !61
  %add59.1 = add nuw nsw i32 %shr58, 2, !dbg !62
  %xor62.1 = xor i32 %add59.1, %and61, !dbg !57
  %mul63.1 = shl nuw nsw i32 %xor62.1, 3, !dbg !58
  %add64.1 = add nuw nsw i32 %mul63.1, %mul55, !dbg !59
  %add76.1 = or disjoint i32 %add64.1, %mul75, !dbg !60
  %add.ptr78.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add76.1, !dbg !61
  %add59.2 = add nuw nsw i32 %shr58, 4, !dbg !62
  %xor62.2 = xor i32 %add59.2, %and61, !dbg !57
  %mul63.2 = shl nuw nsw i32 %xor62.2, 3, !dbg !58
  %add64.2 = add nuw nsw i32 %mul63.2, %mul55, !dbg !59
  %add76.2 = or disjoint i32 %add64.2, %mul75, !dbg !60
  %add.ptr78.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add76.2, !dbg !61
  %add59.3 = add nuw nsw i32 %shr58, 6, !dbg !62
  %xor62.3 = xor i32 %add59.3, %and61, !dbg !57
  %mul63.3 = shl nuw nsw i32 %xor62.3, 3, !dbg !58
  %add64.3 = add nuw nsw i32 %mul63.3, %mul55, !dbg !59
  %add76.3 = or disjoint i32 %add64.3, %mul75, !dbg !60
  %add.ptr78.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add76.3, !dbg !61
  %arrayidx106 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %9, !dbg !63
  %15 = load i32, ptr addrspace(1) %arrayidx106, align 4, !dbg !63, !tbaa !30
  %mul107 = shl nsw i32 %15, 4, !dbg !64
  %cmp108 = icmp slt i32 %15, 0, !dbg !65
  %cmp112.not = icmp sgt i32 %mul107, %mul103
  %or.cond = select i1 %cmp108, i1 true, i1 %cmp112.not, !dbg !66
  br i1 %or.cond, label %if.end492, label %if.then, !dbg !66

if.then:                                          ; preds = %entry
  %16 = load <4 x half>, ptr addrspace(3) %add.ptr78.3, align 8, !dbg !67
  %17 = load <4 x half>, ptr addrspace(3) %add.ptr78.2, align 8, !dbg !67
  %18 = load <4 x half>, ptr addrspace(3) %add.ptr78.1, align 8, !dbg !67
  %19 = load <4 x half>, ptr addrspace(3) %add.ptr78, align 8, !dbg !67
  fence syncscope("warp") release, !dbg !68
  tail call void @llvm.mxc.barrier.warp(), !dbg !71
  fence syncscope("warp") acquire, !dbg !72
  %conv122 = zext nneg i32 %mul107 to i64
  %.idx = shl nuw nsw i64 %conv122, 7
  %gep = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep839, i64 %.idx, !dbg !73
  %.idx840 = shl nuw nsw i64 %conv, 19, !dbg !74
  %20 = getelementptr inbounds i8, ptr addrspace(4) %gep, i64 %.idx840, !dbg !74
  %qk_fetch.sroa.0.0.copyload1463 = load i64, ptr addrspace(4) %20, align 16, !dbg !75
  %qk_fetch.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %20, i64 8, !dbg !75
  %qk_fetch.sroa.18.0.copyload1470 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0..sroa_idx, align 8, !dbg !75
  store i64 %qk_fetch.sroa.0.0.copyload1463, ptr addrspace(3) %add.ptr45, align 8, !dbg !76
  store i64 %qk_fetch.sroa.18.0.copyload1470, ptr addrspace(3) %add.ptr45.1, align 8, !dbg !76
  %gep821.1 = getelementptr inbounds i8, ptr addrspace(4) %20, i64 1024, !dbg !74
  %qk_fetch.sroa.0.0.copyload1465 = load i64, ptr addrspace(4) %gep821.1, align 16, !dbg !75
  %qk_fetch.sroa.18.0.gep821.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %20, i64 1032, !dbg !75
  %qk_fetch.sroa.18.0.copyload1472 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.gep821.1.sroa_idx, align 8, !dbg !75
  store i64 %qk_fetch.sroa.0.0.copyload1465, ptr addrspace(3) %add.ptr45.1848, align 8, !dbg !76
  store i64 %qk_fetch.sroa.18.0.copyload1472, ptr addrspace(3) %add.ptr45.1.1, align 8, !dbg !76
  fence syncscope("warp") release, !dbg !77
  tail call void @llvm.mxc.barrier.warp(), !dbg !80
  fence syncscope("warp") acquire, !dbg !81
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr78, align 8, !dbg !82
  %21 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %19, <4 x float> zeroinitializer), !dbg !83
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr78.1, align 8, !dbg !82
  %22 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %18, <4 x float> %21), !dbg !83
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr78.2, align 8, !dbg !82
  %23 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %17, <4 x float> %22), !dbg !83
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr78.3, align 8, !dbg !82
  %24 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %16, <4 x float> %23), !dbg !83
  %add222 = add nuw nsw i32 %mul107, %mul221
  %cmp227.not = icmp sgt i32 %add222, %mul103, !dbg !84
  %scores.sroa.0.0.vec.extract1162 = extractelement <4 x float> %24, i64 0
  %spec.select = select i1 %cmp227.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1162, !dbg !85
  %cmp227.not.1.not = icmp slt i32 %add222, %mul103, !dbg !84
  %scores.sroa.0.4.vec.extract1183 = extractelement <4 x float> %24, i64 1, !dbg !85
  %condval.0.1 = select i1 %cmp227.not.1.not, float %scores.sroa.0.4.vec.extract1183, float 0xFFF0000000000000, !dbg !85
  %add223.2 = or disjoint i32 %add222, 2, !dbg !86
  %cmp227.not.2 = icmp sgt i32 %add223.2, %mul103, !dbg !84
  %scores.sroa.0.8.vec.extract1200 = extractelement <4 x float> %24, i64 2, !dbg !85
  %condval.0.2 = select i1 %cmp227.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1200, !dbg !85
  %add223.3 = or disjoint i32 %add222, 3, !dbg !86
  %cmp227.not.3 = icmp sgt i32 %add223.3, %mul103, !dbg !84
  %scores.sroa.0.12.vec.extract1217 = extractelement <4 x float> %24, i64 3, !dbg !85
  %condval.0.3 = select i1 %cmp227.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1217, !dbg !85
  %25 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !87
  %26 = tail call contract noundef float @llvm.maxnum.f32(float %25, float %condval.0.1), !dbg !87
  %27 = tail call contract noundef float @llvm.maxnum.f32(float %26, float %condval.0.2), !dbg !87
  %28 = tail call contract noundef float @llvm.maxnum.f32(float %27, float %condval.0.3), !dbg !87
  %29 = bitcast float %28 to i32, !dbg !91
  %30 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !94
  %31 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %30) #10, !dbg !99
  %xor.i.i = xor i32 %31, 32, !dbg !100
  %32 = and i32 %31, -64, !dbg !101
  %and.i.i = add nsw i32 %32, 64, !dbg !101
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !102
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %31, !dbg !103
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !104
  %33 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %29), !dbg !105
  %34 = bitcast i32 %33 to float, !dbg !106
  %35 = tail call contract noundef float @llvm.maxnum.f32(float %28, float %34), !dbg !107
  %36 = bitcast float %35 to i32, !dbg !109
  %37 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !111
  %38 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %37) #10, !dbg !114
  %xor.i.i764 = xor i32 %38, 16, !dbg !115
  %39 = and i32 %38, -64, !dbg !116
  %and.i.i765 = add nsw i32 %39, 64, !dbg !116
  %cmp.not.i.i766 = icmp slt i32 %xor.i.i764, %and.i.i765, !dbg !117
  %cond.i.i767 = select i1 %cmp.not.i.i766, i32 %xor.i.i764, i32 %38, !dbg !118
  %shl.i.i768 = shl i32 %cond.i.i767, 2, !dbg !119
  %40 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i768, i32 %36), !dbg !120
  %41 = bitcast i32 %40 to float, !dbg !121
  %42 = tail call contract noundef float @llvm.maxnum.f32(float %35, float %41), !dbg !122
  %sub = fsub contract float %spec.select, %42, !dbg !124
  %sub273 = fsub contract float %condval.0.1, %42, !dbg !125
  %sub276 = fsub contract float %condval.0.2, %42, !dbg !126
  %sub279 = fsub contract float %condval.0.3, %42, !dbg !127
  %mul284 = fmul contract float %sub, 0x3FC7154760000000, !dbg !128
  %mul288 = fmul contract float %sub273, 0x3FC7154760000000, !dbg !129
  %mul292 = fmul contract float %sub276, 0x3FC7154760000000, !dbg !130
  %mul296 = fmul contract float %sub279, 0x3FC7154760000000, !dbg !131
  %add301 = fadd contract float %mul284, 8.000000e+00, !dbg !132
  %add305 = fadd contract float %mul288, 8.000000e+00, !dbg !133
  %add309 = fadd contract float %mul292, 8.000000e+00, !dbg !134
  %add313 = fadd contract float %mul296, 8.000000e+00, !dbg !135
  %cmp.i.i = fcmp contract olt float %add301, -1.260000e+02, !dbg !136
  %cond.i.i769 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !136
  %add.i.i = fadd contract float %add301, %cond.i.i769, !dbg !136
  %43 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !136
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !136
  %mul.i.i = fmul contract float %cond2.i.i, %43, !dbg !136
  %cmp.i.i770 = fcmp contract olt float %add305, -1.260000e+02, !dbg !139
  %cond.i.i771 = select contract i1 %cmp.i.i770, float 6.400000e+01, float 0.000000e+00, !dbg !139
  %add.i.i772 = fadd contract float %add305, %cond.i.i771, !dbg !139
  %44 = tail call contract float @llvm.exp2.f32(float %add.i.i772), !dbg !139
  %cond2.i.i773 = select contract i1 %cmp.i.i770, float 0x3BF0000000000000, float 1.000000e+00, !dbg !139
  %mul.i.i774 = fmul contract float %cond2.i.i773, %44, !dbg !139
  %cmp.i.i775 = fcmp contract olt float %add309, -1.260000e+02, !dbg !141
  %cond.i.i776 = select contract i1 %cmp.i.i775, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i777 = fadd contract float %add309, %cond.i.i776, !dbg !141
  %45 = tail call contract float @llvm.exp2.f32(float %add.i.i777), !dbg !141
  %cond2.i.i778 = select contract i1 %cmp.i.i775, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %mul.i.i779 = fmul contract float %cond2.i.i778, %45, !dbg !141
  %cmp.i.i780 = fcmp contract olt float %add313, -1.260000e+02, !dbg !143
  %cond.i.i781 = select contract i1 %cmp.i.i780, float 6.400000e+01, float 0.000000e+00, !dbg !143
  %add.i.i782 = fadd contract float %add313, %cond.i.i781, !dbg !143
  %46 = tail call contract float @llvm.exp2.f32(float %add.i.i782), !dbg !143
  %cond2.i.i783 = select contract i1 %cmp.i.i780, float 0x3BF0000000000000, float 1.000000e+00, !dbg !143
  %mul.i.i784 = fmul contract float %cond2.i.i783, %46, !dbg !143
  %47 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !145
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !145, !noalias !153
  %48 = fptrunc float %mul.i.i to half, !dbg !145
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %47), !dbg !145, !noalias !153
  %49 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !158, !noalias !153
  %50 = fptrunc float %mul.i.i774 to half, !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %49), !dbg !158, !noalias !153
  %51 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !160, !noalias !164
  %52 = fptrunc float %mul.i.i779 to half, !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %51), !dbg !160, !noalias !164
  %53 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !164
  %54 = fptrunc float %mul.i.i784 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %53), !dbg !169, !noalias !164
  %55 = insertelement <4 x half> poison, half %48, i64 0, !dbg !171
  %56 = insertelement <4 x half> %55, half %50, i64 1, !dbg !171
  %57 = insertelement <4 x half> %56, half %52, i64 2, !dbg !171
  %58 = insertelement <4 x half> %57, half %54, i64 3, !dbg !171
  %conv.i.i = fpext half %48 to float, !dbg !172
  %add347 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !177
  %conv.i.i.1 = fpext half %50 to float, !dbg !172
  %add347.1 = fadd contract float %add347, %conv.i.i.1, !dbg !177
  %conv.i.i.2 = fpext half %52 to float, !dbg !172
  %add347.2 = fadd contract float %add347.1, %conv.i.i.2, !dbg !177
  %conv.i.i.3 = fpext half %54 to float, !dbg !172
  %add347.3 = fadd contract float %add347.2, %conv.i.i.3, !dbg !177
  fence syncscope("warp") release, !dbg !178
  tail call void @llvm.mxc.barrier.warp(), !dbg !181
  fence syncscope("warp") acquire, !dbg !182
  %59 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add370, !dbg !183
  %60 = getelementptr inbounds i8, ptr addrspace(4) %59, i64 %.idx, !dbg !183
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %60, align 16, !dbg !184
  %v_fetch.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 2, !dbg !184
  %v_fetch.sroa.6.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.6.0..sroa_idx, align 2, !dbg !184, !tbaa !30
  %v_fetch.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 4, !dbg !184
  %v_fetch.sroa.8.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.8.0..sroa_idx, align 4, !dbg !184
  %v_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 6, !dbg !184
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx, align 2, !dbg !184, !tbaa !30
  %v_fetch.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 8, !dbg !184
  %v_fetch.sroa.12.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.12.0..sroa_idx, align 8, !dbg !184
  %v_fetch.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 10, !dbg !184
  %v_fetch.sroa.14.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx, align 2, !dbg !184, !tbaa !30
  %v_fetch.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 12, !dbg !184
  %v_fetch.sroa.16.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.16.0..sroa_idx, align 4, !dbg !184
  %v_fetch.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 14, !dbg !184
  %v_fetch.sroa.18.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx, align 2, !dbg !184, !tbaa !30
  %add.ptr379.1 = getelementptr inbounds i8, ptr addrspace(4) %60, i64 128, !dbg !183
  %v_fetch.sroa.20.16.copyload = load i16, ptr addrspace(4) %add.ptr379.1, align 16, !dbg !184
  %v_fetch.sroa.24.16.add.ptr379.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 130, !dbg !184
  %v_fetch.sroa.24.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.24.16.add.ptr379.1.sroa_idx, align 2, !dbg !184, !tbaa !30
  %v_fetch.sroa.26.16.add.ptr379.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 132, !dbg !184
  %v_fetch.sroa.26.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.26.16.add.ptr379.1.sroa_idx, align 4, !dbg !184
  %v_fetch.sroa.28.16.add.ptr379.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 134, !dbg !184
  %v_fetch.sroa.28.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.28.16.add.ptr379.1.sroa_idx, align 2, !dbg !184, !tbaa !30
  %v_fetch.sroa.30.16.add.ptr379.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 136, !dbg !184
  %v_fetch.sroa.30.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.30.16.add.ptr379.1.sroa_idx, align 8, !dbg !184
  %v_fetch.sroa.32.16.add.ptr379.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 138, !dbg !184
  %v_fetch.sroa.32.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.32.16.add.ptr379.1.sroa_idx, align 2, !dbg !184, !tbaa !30
  %v_fetch.sroa.34.16.add.ptr379.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 140, !dbg !184
  %v_fetch.sroa.34.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.34.16.add.ptr379.1.sroa_idx, align 4, !dbg !184
  %v_fetch.sroa.36.16.add.ptr379.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %60, i64 142, !dbg !184
  %v_fetch.sroa.36.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.36.16.add.ptr379.1.sroa_idx, align 2, !dbg !184, !tbaa !30
  %xor417755 = shl nuw nsw i32 %mul410, 4, !dbg !185
  %mul418 = or disjoint i32 %xor417755, %call414.mask, !dbg !185
  %mul427 = shl nuw nsw i32 %xor424, 2, !dbg !186
  %add428 = add nuw nsw i32 %mul418, %mul427, !dbg !187
  %add433 = or disjoint i32 %add428, %mul432, !dbg !188
  %add.ptr435 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add433, !dbg !189
  %v_column.sroa.34.0.insert.ext = zext i16 %v_fetch.sroa.20.16.copyload to i32, !dbg !190
  %v_column.sroa.34.0.insert.shift = shl nuw i32 %v_column.sroa.34.0.insert.ext, 16, !dbg !190
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !190
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.34.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !190
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr435, align 4, !dbg !190, !tbaa !30
  %add411.1 = shl nuw nsw i32 %mul410, 4, !dbg !185
  %xor417755.1 = or disjoint i32 %add411.1, %call414.mask, !dbg !185
  %mul418.1 = or disjoint i32 %xor417755.1, 256, !dbg !185
  %xor426.1 = shl nuw nsw i32 %xor424, 2, !dbg !186
  %mul427.1 = xor i32 %xor426.1, 4, !dbg !186
  %add428.1 = add nuw nsw i32 %mul418.1, %mul427.1, !dbg !187
  %add433.1 = or disjoint i32 %add428.1, %mul432, !dbg !188
  %add.ptr435.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add433.1, !dbg !189
  %v_column.sroa.34.0.insert.ext1021 = zext i16 %v_fetch.sroa.24.16.copyload to i32, !dbg !190
  %v_column.sroa.34.0.insert.shift1022 = shl nuw i32 %v_column.sroa.34.0.insert.ext1021, 16, !dbg !190
  %v_column.sroa.0.0.insert.ext961 = zext i16 %v_fetch.sroa.6.0.copyload to i32, !dbg !190
  %v_column.sroa.0.0.insert.insert963 = or disjoint i32 %v_column.sroa.34.0.insert.shift1022, %v_column.sroa.0.0.insert.ext961, !dbg !190
  store i32 %v_column.sroa.0.0.insert.insert963, ptr addrspace(3) %add.ptr435.1, align 4, !dbg !190, !tbaa !30
  %add411.2 = shl nuw nsw i32 %mul410, 4, !dbg !185
  %xor417755.2 = or disjoint i32 %add411.2, %call414.mask, !dbg !185
  %mul418.2 = or disjoint i32 %xor417755.2, 512, !dbg !185
  %xor426.2 = shl nuw nsw i32 %xor424, 2, !dbg !186
  %mul427.2 = xor i32 %xor426.2, 8, !dbg !186
  %add428.2 = add nuw nsw i32 %mul418.2, %mul427.2, !dbg !187
  %add433.2 = or disjoint i32 %add428.2, %mul432, !dbg !188
  %add.ptr435.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add433.2, !dbg !189
  %v_column.sroa.34.0.insert.ext1026 = zext i16 %v_fetch.sroa.26.16.copyload to i32, !dbg !190
  %v_column.sroa.34.0.insert.shift1027 = shl nuw i32 %v_column.sroa.34.0.insert.ext1026, 16, !dbg !190
  %v_column.sroa.0.0.insert.ext965 = zext i16 %v_fetch.sroa.8.0.copyload to i32, !dbg !190
  %v_column.sroa.0.0.insert.insert967 = or disjoint i32 %v_column.sroa.34.0.insert.shift1027, %v_column.sroa.0.0.insert.ext965, !dbg !190
  store i32 %v_column.sroa.0.0.insert.insert967, ptr addrspace(3) %add.ptr435.2, align 4, !dbg !190, !tbaa !30
  %add411.3 = shl nuw nsw i32 %mul410, 4, !dbg !185
  %xor417755.3 = or disjoint i32 %add411.3, %call414.mask, !dbg !185
  %mul418.3 = or disjoint i32 %xor417755.3, 768, !dbg !185
  %xor426.3 = shl nuw nsw i32 %xor424, 2, !dbg !186
  %mul427.3 = xor i32 %xor426.3, 12, !dbg !186
  %add428.3 = add nuw nsw i32 %mul418.3, %mul427.3, !dbg !187
  %add433.3 = or disjoint i32 %add428.3, %mul432, !dbg !188
  %add.ptr435.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add433.3, !dbg !189
  %v_column.sroa.34.0.insert.ext1031 = zext i16 %v_fetch.sroa.28.16.copyload to i32, !dbg !190
  %v_column.sroa.34.0.insert.shift1032 = shl nuw i32 %v_column.sroa.34.0.insert.ext1031, 16, !dbg !190
  %v_column.sroa.0.0.insert.ext969 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !190
  %v_column.sroa.0.0.insert.insert971 = or disjoint i32 %v_column.sroa.34.0.insert.shift1032, %v_column.sroa.0.0.insert.ext969, !dbg !190
  store i32 %v_column.sroa.0.0.insert.insert971, ptr addrspace(3) %add.ptr435.3, align 4, !dbg !190, !tbaa !30
  %add413.4 = shl nuw nsw i32 %mul410, 4, !dbg !185
  %xor417755.4 = or disjoint i32 %add413.4, 16, !dbg !185
  %mul418.4 = xor i32 %xor417755.4, %call414.mask, !dbg !185
  %add428.4 = add nuw nsw i32 %mul418.4, %mul427, !dbg !187
  %add433.4 = or disjoint i32 %add428.4, %mul432, !dbg !188
  %add.ptr435.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add433.4, !dbg !189
  %v_column.sroa.34.0.insert.ext1036 = zext i16 %v_fetch.sroa.30.16.copyload to i32, !dbg !190
  %v_column.sroa.34.0.insert.shift1037 = shl nuw i32 %v_column.sroa.34.0.insert.ext1036, 16, !dbg !190
  %v_column.sroa.0.0.insert.ext973 = zext i16 %v_fetch.sroa.12.0.copyload to i32, !dbg !190
  %v_column.sroa.0.0.insert.insert975 = or disjoint i32 %v_column.sroa.34.0.insert.shift1037, %v_column.sroa.0.0.insert.ext973, !dbg !190
  store i32 %v_column.sroa.0.0.insert.insert975, ptr addrspace(3) %add.ptr435.4, align 4, !dbg !190, !tbaa !30
  %add413.5 = shl nuw nsw i32 %mul410, 4, !dbg !185
  %xor417755.5 = or disjoint i32 %add413.5, 272, !dbg !185
  %mul418.5 = xor i32 %xor417755.5, %call414.mask, !dbg !185
  %add428.5 = add nuw nsw i32 %mul418.5, %mul427.1, !dbg !187
  %add433.5 = or disjoint i32 %add428.5, %mul432, !dbg !188
  %add.ptr435.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add433.5, !dbg !189
  %v_column.sroa.34.0.insert.ext1041 = zext i16 %v_fetch.sroa.32.16.copyload to i32, !dbg !190
  %v_column.sroa.34.0.insert.shift1042 = shl nuw i32 %v_column.sroa.34.0.insert.ext1041, 16, !dbg !190
  %v_column.sroa.0.0.insert.ext977 = zext i16 %v_fetch.sroa.14.0.copyload to i32, !dbg !190
  %v_column.sroa.0.0.insert.insert979 = or disjoint i32 %v_column.sroa.34.0.insert.shift1042, %v_column.sroa.0.0.insert.ext977, !dbg !190
  store i32 %v_column.sroa.0.0.insert.insert979, ptr addrspace(3) %add.ptr435.5, align 4, !dbg !190, !tbaa !30
  %add413.6 = shl nuw nsw i32 %mul410, 4, !dbg !185
  %xor417755.6 = or disjoint i32 %add413.6, 528, !dbg !185
  %mul418.6 = xor i32 %xor417755.6, %call414.mask, !dbg !185
  %add428.6 = add nuw nsw i32 %mul418.6, %mul427.2, !dbg !187
  %add433.6 = or disjoint i32 %add428.6, %mul432, !dbg !188
  %add.ptr435.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add433.6, !dbg !189
  %v_column.sroa.34.0.insert.ext1046 = zext i16 %v_fetch.sroa.34.16.copyload to i32, !dbg !190
  %v_column.sroa.34.0.insert.shift1047 = shl nuw i32 %v_column.sroa.34.0.insert.ext1046, 16, !dbg !190
  %v_column.sroa.0.0.insert.ext981 = zext i16 %v_fetch.sroa.16.0.copyload to i32, !dbg !190
  %v_column.sroa.0.0.insert.insert983 = or disjoint i32 %v_column.sroa.34.0.insert.shift1047, %v_column.sroa.0.0.insert.ext981, !dbg !190
  store i32 %v_column.sroa.0.0.insert.insert983, ptr addrspace(3) %add.ptr435.6, align 4, !dbg !190, !tbaa !30
  %add413.7 = shl nuw nsw i32 %mul410, 4, !dbg !185
  %xor417755.7 = or disjoint i32 %add413.7, 784, !dbg !185
  %mul418.7 = xor i32 %xor417755.7, %call414.mask, !dbg !185
  %add428.7 = add nuw nsw i32 %mul418.7, %mul427.3, !dbg !187
  %add433.7 = or disjoint i32 %add428.7, %mul432, !dbg !188
  %add.ptr435.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add433.7, !dbg !189
  %v_column.sroa.34.0.insert.ext1051 = zext i16 %v_fetch.sroa.36.16.copyload to i32, !dbg !190
  %v_column.sroa.34.0.insert.shift1052 = shl nuw i32 %v_column.sroa.34.0.insert.ext1051, 16, !dbg !190
  %v_column.sroa.0.0.insert.ext985 = zext i16 %v_fetch.sroa.18.0.copyload to i32, !dbg !190
  %v_column.sroa.0.0.insert.insert987 = or disjoint i32 %v_column.sroa.34.0.insert.shift1052, %v_column.sroa.0.0.insert.ext985, !dbg !190
  store i32 %v_column.sroa.0.0.insert.insert987, ptr addrspace(3) %add.ptr435.7, align 4, !dbg !190, !tbaa !30
  fence syncscope("warp") release, !dbg !191
  tail call void @llvm.mxc.barrier.warp(), !dbg !194
  fence syncscope("warp") acquire, !dbg !195
  %xor455754 = shl nuw nsw i32 %7, 4, !dbg !196
  %mul456 = xor i32 %xor455754, %call414.mask, !dbg !196
  %61 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul456, !dbg !197
  %add.ptr466.idx = shl nuw nsw i32 %8, 3, !dbg !197
  %add.ptr466 = getelementptr inbounds i8, ptr addrspace(3) %61, i32 %add.ptr466.idx, !dbg !197
  %62 = load <4 x half>, ptr addrspace(3) %add.ptr466, align 8, !dbg !198
  %add451.1 = shl nuw nsw i32 %7, 4, !dbg !196
  %xor455754.1 = or disjoint i32 %add451.1, 64, !dbg !196
  %mul456.1 = xor i32 %xor455754.1, %call414.mask, !dbg !196
  %63 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul456.1, !dbg !197
  %xor462.1 = shl nuw nsw i32 %8, 3, !dbg !197
  %add.ptr466.idx.1 = xor i32 %xor462.1, 8, !dbg !197
  %add.ptr466.1 = getelementptr inbounds i8, ptr addrspace(3) %63, i32 %add.ptr466.idx.1, !dbg !197
  %64 = load <4 x half>, ptr addrspace(3) %add.ptr466.1, align 8, !dbg !198
  %add451.2 = shl nuw nsw i32 %7, 4, !dbg !196
  %xor455754.2 = or disjoint i32 %add451.2, 128, !dbg !196
  %mul456.2 = xor i32 %xor455754.2, %call414.mask, !dbg !196
  %65 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul456.2, !dbg !197
  %xor462.2 = shl nuw nsw i32 %8, 3, !dbg !197
  %add.ptr466.idx.2 = xor i32 %xor462.2, 16, !dbg !197
  %add.ptr466.2 = getelementptr inbounds i8, ptr addrspace(3) %65, i32 %add.ptr466.idx.2, !dbg !197
  %66 = load <4 x half>, ptr addrspace(3) %add.ptr466.2, align 8, !dbg !198
  %add451.3 = shl nuw nsw i32 %7, 4, !dbg !196
  %xor455754.3 = or disjoint i32 %add451.3, 192, !dbg !196
  %mul456.3 = xor i32 %xor455754.3, %call414.mask, !dbg !196
  %67 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul456.3, !dbg !197
  %xor462.3 = shl nuw nsw i32 %8, 3, !dbg !197
  %add.ptr466.idx.3 = xor i32 %xor462.3, 24, !dbg !197
  %add.ptr466.3 = getelementptr inbounds i8, ptr addrspace(3) %67, i32 %add.ptr466.idx.3, !dbg !197
  %68 = load <4 x half>, ptr addrspace(3) %add.ptr466.3, align 8, !dbg !198
  %69 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %62, <4 x half> %58, <4 x float> zeroinitializer), !dbg !199
  %70 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %64, <4 x half> %58, <4 x float> zeroinitializer), !dbg !199
  %71 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %66, <4 x half> %58, <4 x float> zeroinitializer), !dbg !199
  %72 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %68, <4 x half> %58, <4 x float> zeroinitializer), !dbg !199
  %add354 = fadd contract float %add347.3, 0.000000e+00, !dbg !200
  br label %if.end492, !dbg !201

if.end492:                                        ; preds = %if.then, %entry
  %numerator.sroa.110.0 = phi <4 x float> [ %72, %if.then ], [ zeroinitializer, %entry ], !dbg !203
  %numerator.sroa.74.0 = phi <4 x float> [ %71, %if.then ], [ zeroinitializer, %entry ], !dbg !203
  %numerator.sroa.38.0 = phi <4 x float> [ %70, %if.then ], [ zeroinitializer, %entry ], !dbg !203
  %numerator.sroa.0.0 = phi <4 x float> [ %69, %if.then ], [ zeroinitializer, %entry ], !dbg !203
  %denominator.sroa.0.0 = phi float [ %add354, %if.then ], [ 0.000000e+00, %entry ], !dbg !203
  %73 = bitcast float %denominator.sroa.0.0 to i32, !dbg !201
  %74 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !204
  %75 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %74) #10, !dbg !207
  %xor.i.i786 = xor i32 %75, 32, !dbg !208
  %76 = and i32 %75, -64, !dbg !209
  %and.i.i787 = add nsw i32 %76, 64, !dbg !209
  %cmp.not.i.i788 = icmp slt i32 %xor.i.i786, %and.i.i787, !dbg !210
  %cond.i.i789 = select i1 %cmp.not.i.i788, i32 %xor.i.i786, i32 %75, !dbg !211
  %shl.i.i790 = shl i32 %cond.i.i789, 2, !dbg !212
  %77 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i790, i32 %73), !dbg !213
  %78 = bitcast i32 %77 to float, !dbg !214
  %add496 = fadd contract float %denominator.sroa.0.0, %78, !dbg !215
  %79 = bitcast float %add496 to i32, !dbg !216
  %80 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !218
  %81 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %80) #10, !dbg !221
  %xor.i.i791 = xor i32 %81, 16, !dbg !222
  %82 = and i32 %81, -64, !dbg !223
  %and.i.i792 = add nsw i32 %82, 64, !dbg !223
  %cmp.not.i.i793 = icmp slt i32 %xor.i.i791, %and.i.i792, !dbg !224
  %cond.i.i794 = select i1 %cmp.not.i.i793, i32 %xor.i.i791, i32 %81, !dbg !225
  %shl.i.i795 = shl i32 %cond.i.i794, 2, !dbg !226
  %83 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i795, i32 %79), !dbg !227
  %84 = bitcast i32 %83 to float, !dbg !228
  %add501 = fadd contract float %add496, %84, !dbg !229
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !230
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !230
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !230
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !230
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %add501, !dbg !231
  %div521 = fdiv contract float %numerator.sroa.0.4.vec.extract, %add501, !dbg !232
  %div525 = fdiv contract float %numerator.sroa.0.8.vec.extract, %add501, !dbg !233
  %div529 = fdiv contract float %numerator.sroa.0.12.vec.extract, %add501, !dbg !234
  %numerator.sroa.38.16.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 0, !dbg !230
  %numerator.sroa.38.20.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 1, !dbg !230
  %numerator.sroa.38.24.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 2, !dbg !230
  %numerator.sroa.38.28.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 3, !dbg !230
  %div.1 = fdiv contract float %numerator.sroa.38.16.vec.extract, %add501, !dbg !231
  %div521.1 = fdiv contract float %numerator.sroa.38.20.vec.extract, %add501, !dbg !232
  %div525.1 = fdiv contract float %numerator.sroa.38.24.vec.extract, %add501, !dbg !233
  %div529.1 = fdiv contract float %numerator.sroa.38.28.vec.extract, %add501, !dbg !234
  %numerator.sroa.74.32.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 0, !dbg !230
  %numerator.sroa.74.36.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 1, !dbg !230
  %numerator.sroa.74.40.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 2, !dbg !230
  %numerator.sroa.74.44.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 3, !dbg !230
  %div.2 = fdiv contract float %numerator.sroa.74.32.vec.extract, %add501, !dbg !231
  %div521.2 = fdiv contract float %numerator.sroa.74.36.vec.extract, %add501, !dbg !232
  %div525.2 = fdiv contract float %numerator.sroa.74.40.vec.extract, %add501, !dbg !233
  %div529.2 = fdiv contract float %numerator.sroa.74.44.vec.extract, %add501, !dbg !234
  %numerator.sroa.110.48.vec.extract = extractelement <4 x float> %numerator.sroa.110.0, i64 0, !dbg !230
  %numerator.sroa.110.52.vec.extract = extractelement <4 x float> %numerator.sroa.110.0, i64 1, !dbg !230
  %numerator.sroa.110.56.vec.extract = extractelement <4 x float> %numerator.sroa.110.0, i64 2, !dbg !230
  %numerator.sroa.110.60.vec.extract = extractelement <4 x float> %numerator.sroa.110.0, i64 3, !dbg !230
  %div.3 = fdiv contract float %numerator.sroa.110.48.vec.extract, %add501, !dbg !231
  %div521.3 = fdiv contract float %numerator.sroa.110.52.vec.extract, %add501, !dbg !232
  %div525.3 = fdiv contract float %numerator.sroa.110.56.vec.extract, %add501, !dbg !233
  %div529.3 = fdiv contract float %numerator.sroa.110.60.vec.extract, %add501, !dbg !234
  fence syncscope("warp") release, !dbg !235
  tail call void @llvm.mxc.barrier.warp(), !dbg !238
  fence syncscope("warp") acquire, !dbg !239
  %85 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %86 = fptrunc float %div to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %85), !dbg !240, !noalias !244
  %87 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %88 = fptrunc float %div521 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %87), !dbg !249, !noalias !244
  %89 = bitcast half %86 to i16, !dbg !251
  %90 = bitcast half %88 to i16, !dbg !254
  %91 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %92 = fptrunc float %div525 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %91), !dbg !255, !noalias !259
  %93 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %94 = fptrunc float %div529 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %93), !dbg !264, !noalias !259
  %95 = bitcast half %92 to i16, !dbg !266
  %96 = bitcast half %94 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext = zext i16 %96 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift = shl nuw i64 %__7.sroa.6.0.insert.ext, 48, !dbg !269
  %__7.sroa.5.0.insert.ext = zext i16 %95 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift = shl nuw nsw i64 %__7.sroa.5.0.insert.ext, 32, !dbg !269
  %__7.sroa.5.0.insert.insert = or disjoint i64 %__7.sroa.6.0.insert.shift, %__7.sroa.5.0.insert.shift, !dbg !269
  %__7.sroa.4.0.insert.ext = zext i16 %90 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift = shl nuw nsw i64 %__7.sroa.4.0.insert.ext, 16, !dbg !269
  %__7.sroa.4.0.insert.insert = or disjoint i64 %__7.sroa.5.0.insert.insert, %__7.sroa.4.0.insert.shift, !dbg !269
  %__7.sroa.0.0.insert.ext = zext i16 %89 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert = or disjoint i64 %__7.sroa.4.0.insert.insert, %__7.sroa.0.0.insert.ext, !dbg !269
  %add580 = or disjoint i32 %add64, %mul579, !dbg !270
  %add.ptr582 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add580, !dbg !271
  store i64 %__7.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr582, align 8, !dbg !272
  %97 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %98 = fptrunc float %div.1 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %97), !dbg !240, !noalias !244
  %99 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %100 = fptrunc float %div521.1 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %99), !dbg !249, !noalias !244
  %101 = bitcast half %98 to i16, !dbg !251
  %102 = bitcast half %100 to i16, !dbg !254
  %103 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %104 = fptrunc float %div525.1 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %103), !dbg !255, !noalias !259
  %105 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %106 = fptrunc float %div529.1 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %105), !dbg !264, !noalias !259
  %107 = bitcast half %104 to i16, !dbg !266
  %108 = bitcast half %106 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext.1 = zext i16 %108 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.1, 48, !dbg !269
  %__7.sroa.5.0.insert.ext.1 = zext i16 %107 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1, 32, !dbg !269
  %__7.sroa.5.0.insert.insert.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.1, %__7.sroa.5.0.insert.shift.1, !dbg !269
  %__7.sroa.4.0.insert.ext.1 = zext i16 %102 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1, 16, !dbg !269
  %__7.sroa.4.0.insert.insert.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.1, %__7.sroa.4.0.insert.shift.1, !dbg !269
  %__7.sroa.0.0.insert.ext.1 = zext i16 %101 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.1, %__7.sroa.0.0.insert.ext.1, !dbg !269
  %add580.1 = or disjoint i32 %add64.1, %mul579, !dbg !270
  %add.ptr582.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add580.1, !dbg !271
  store i64 %__7.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr582.1, align 8, !dbg !272
  %109 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %110 = fptrunc float %div.2 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %109), !dbg !240, !noalias !244
  %111 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %112 = fptrunc float %div521.2 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %111), !dbg !249, !noalias !244
  %113 = bitcast half %110 to i16, !dbg !251
  %114 = bitcast half %112 to i16, !dbg !254
  %115 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %116 = fptrunc float %div525.2 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %115), !dbg !255, !noalias !259
  %117 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %118 = fptrunc float %div529.2 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %117), !dbg !264, !noalias !259
  %119 = bitcast half %116 to i16, !dbg !266
  %120 = bitcast half %118 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext.2 = zext i16 %120 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift.2 = shl nuw i64 %__7.sroa.6.0.insert.ext.2, 48, !dbg !269
  %__7.sroa.5.0.insert.ext.2 = zext i16 %119 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.2, 32, !dbg !269
  %__7.sroa.5.0.insert.insert.2 = or disjoint i64 %__7.sroa.6.0.insert.shift.2, %__7.sroa.5.0.insert.shift.2, !dbg !269
  %__7.sroa.4.0.insert.ext.2 = zext i16 %114 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.2, 16, !dbg !269
  %__7.sroa.4.0.insert.insert.2 = or disjoint i64 %__7.sroa.5.0.insert.insert.2, %__7.sroa.4.0.insert.shift.2, !dbg !269
  %__7.sroa.0.0.insert.ext.2 = zext i16 %113 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert.2 = or disjoint i64 %__7.sroa.4.0.insert.insert.2, %__7.sroa.0.0.insert.ext.2, !dbg !269
  %add580.2 = or disjoint i32 %add64.2, %mul579, !dbg !270
  %add.ptr582.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add580.2, !dbg !271
  store i64 %__7.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr582.2, align 8, !dbg !272
  %121 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %122 = fptrunc float %div.3 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %121), !dbg !240, !noalias !244
  %123 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %124 = fptrunc float %div521.3 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %123), !dbg !249, !noalias !244
  %125 = bitcast half %122 to i16, !dbg !251
  %126 = bitcast half %124 to i16, !dbg !254
  %127 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %128 = fptrunc float %div525.3 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %127), !dbg !255, !noalias !259
  %129 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %130 = fptrunc float %div529.3 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %129), !dbg !264, !noalias !259
  %131 = bitcast half %128 to i16, !dbg !266
  %132 = bitcast half %130 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext.3 = zext i16 %132 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift.3 = shl nuw i64 %__7.sroa.6.0.insert.ext.3, 48, !dbg !269
  %__7.sroa.5.0.insert.ext.3 = zext i16 %131 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.3, 32, !dbg !269
  %__7.sroa.5.0.insert.insert.3 = or disjoint i64 %__7.sroa.6.0.insert.shift.3, %__7.sroa.5.0.insert.shift.3, !dbg !269
  %__7.sroa.4.0.insert.ext.3 = zext i16 %126 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.3, 16, !dbg !269
  %__7.sroa.4.0.insert.insert.3 = or disjoint i64 %__7.sroa.5.0.insert.insert.3, %__7.sroa.4.0.insert.shift.3, !dbg !269
  %__7.sroa.0.0.insert.ext.3 = zext i16 %125 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert.3 = or disjoint i64 %__7.sroa.4.0.insert.insert.3, %__7.sroa.0.0.insert.ext.3, !dbg !269
  %add580.3 = or disjoint i32 %add64.3, %mul579, !dbg !270
  %add.ptr582.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add580.3, !dbg !271
  store i64 %__7.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr582.3, align 8, !dbg !272
  fence syncscope("warp") release, !dbg !273
  tail call void @llvm.mxc.barrier.warp(), !dbg !276
  fence syncscope("warp") acquire, !dbg !277
  %133 = load i64, ptr addrspace(3) %12, align 16, !dbg !278
  %add.ptr610.1 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 8, !dbg !279
  %134 = load i64, ptr addrspace(3) %add.ptr610.1, align 8, !dbg !278
  %add.ptr633 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %10, !dbg !280
  store i64 %133, ptr addrspace(1) %add.ptr633, align 16, !dbg !281
  %output_fetch.sroa.10.0.add.ptr633.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr633, i64 8, !dbg !281
  store i64 %134, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr633.sroa_idx, align 8, !dbg !281
  %add.ptr610.1861 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 1032, !dbg !279
  %135 = load i64, ptr addrspace(3) %add.ptr610.1861, align 8, !dbg !278
  %136 = load i64, ptr addrspace(3) %14, align 16, !dbg !278
  %add.ptr633.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %13, !dbg !280
  store i64 %135, ptr addrspace(1) %add.ptr633.1, align 16, !dbg !281
  %output_fetch.sroa.10.0.add.ptr633.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr633.1, i64 8, !dbg !281
  store i64 %136, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr633.1.sroa_idx, align 8, !dbg !281
  fence syncscope("warp") release, !dbg !282
  tail call void @llvm.mxc.barrier.warp(), !dbg !285
  fence syncscope("warp") acquire, !dbg !286
  %137 = add nuw nsw i64 %10, 1024
  %add.ptr.1869 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %137, !dbg !44
  %qk_fetch.sroa.0.0.copyload1466 = load i64, ptr addrspace(4) %add.ptr.1869, align 16, !dbg !45
  %qk_fetch.sroa.18.0.add.ptr.1869.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1869, i64 8, !dbg !45
  %qk_fetch.sroa.18.0.copyload1473 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.add.ptr.1869.sroa_idx, align 8, !dbg !45
  store i64 %qk_fetch.sroa.0.0.copyload1466, ptr addrspace(3) %add.ptr45, align 8, !dbg !47
  store i64 %qk_fetch.sroa.18.0.copyload1473, ptr addrspace(3) %add.ptr45.1, align 8, !dbg !47
  %138 = add nuw nsw i64 %10, 1536, !dbg !48
  %add.ptr.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %138, !dbg !44
  %qk_fetch.sroa.0.0.copyload1467 = load i64, ptr addrspace(4) %add.ptr.1.1, align 16, !dbg !45
  %qk_fetch.sroa.18.0.add.ptr.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1.1, i64 8, !dbg !45
  %qk_fetch.sroa.18.0.copyload1474 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.add.ptr.1.1.sroa_idx, align 8, !dbg !45
  store i64 %qk_fetch.sroa.0.0.copyload1467, ptr addrspace(3) %add.ptr45.1848, align 8, !dbg !47
  store i64 %qk_fetch.sroa.18.0.copyload1474, ptr addrspace(3) %add.ptr45.1.1, align 8, !dbg !47
  fence syncscope("warp") release, !dbg !49
  tail call void @llvm.mxc.barrier.warp(), !dbg !55
  fence syncscope("warp") acquire, !dbg !56
  %139 = load <4 x half>, ptr addrspace(3) %add.ptr78, align 8, !dbg !67
  %140 = load <4 x half>, ptr addrspace(3) %add.ptr78.1, align 8, !dbg !67
  %141 = load <4 x half>, ptr addrspace(3) %add.ptr78.2, align 8, !dbg !67
  %142 = load <4 x half>, ptr addrspace(3) %add.ptr78.3, align 8, !dbg !67
  %143 = or disjoint i64 %9, 1, !dbg !287
  %arrayidx106.1 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %143, !dbg !63
  %144 = load i32, ptr addrspace(1) %arrayidx106.1, align 4, !dbg !63, !tbaa !30
  %mul107.1 = shl nsw i32 %144, 4, !dbg !64
  %cmp108.1 = icmp sgt i32 %144, -1, !dbg !65
  br i1 %cmp108.1, label %land.lhs.true.1, label %if.end492.1, !dbg !66

land.lhs.true.1:                                  ; preds = %if.end492
  %145 = or disjoint i32 %mul103, 1, !dbg !288
  %cmp112.not.1 = icmp sgt i32 %mul107.1, %145, !dbg !289
  br i1 %cmp112.not.1, label %if.end492.1, label %if.then.1, !dbg !290

if.then.1:                                        ; preds = %land.lhs.true.1
  fence syncscope("warp") release, !dbg !68
  tail call void @llvm.mxc.barrier.warp(), !dbg !71
  fence syncscope("warp") acquire, !dbg !72
  %conv122.1 = zext nneg i32 %mul107.1 to i64
  %.idx.1 = shl nuw nsw i64 %conv122.1, 7
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep839, i64 %.idx.1, !dbg !73
  %.idx840.1884 = shl nuw nsw i64 %conv, 19, !dbg !74
  %146 = getelementptr inbounds i8, ptr addrspace(4) %gep.1, i64 %.idx840.1884, !dbg !74
  %qk_fetch.sroa.0.0.copyload1468 = load i64, ptr addrspace(4) %146, align 16, !dbg !75
  %qk_fetch.sroa.18.0..sroa_idx1475 = getelementptr inbounds i8, ptr addrspace(4) %146, i64 8, !dbg !75
  %qk_fetch.sroa.18.0.copyload1476 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0..sroa_idx1475, align 8, !dbg !75
  store i64 %qk_fetch.sroa.0.0.copyload1468, ptr addrspace(3) %add.ptr45, align 8, !dbg !76
  store i64 %qk_fetch.sroa.18.0.copyload1476, ptr addrspace(3) %add.ptr45.1, align 8, !dbg !76
  %gep821.1.1 = getelementptr inbounds i8, ptr addrspace(4) %146, i64 1024, !dbg !74
  %qk_fetch.sroa.0.0.copyload1469 = load i64, ptr addrspace(4) %gep821.1.1, align 16, !dbg !75
  %qk_fetch.sroa.18.0.gep821.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %146, i64 1032, !dbg !75
  %qk_fetch.sroa.18.0.copyload1477 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.gep821.1.1.sroa_idx, align 8, !dbg !75
  store i64 %qk_fetch.sroa.0.0.copyload1469, ptr addrspace(3) %add.ptr45.1848, align 8, !dbg !76
  store i64 %qk_fetch.sroa.18.0.copyload1477, ptr addrspace(3) %add.ptr45.1.1, align 8, !dbg !76
  fence syncscope("warp") release, !dbg !77
  tail call void @llvm.mxc.barrier.warp(), !dbg !80
  fence syncscope("warp") acquire, !dbg !81
  %k_local.sroa.0.0.copyload.1896 = load <4 x half>, ptr addrspace(3) %add.ptr78, align 8, !dbg !82
  %147 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1896, <4 x half> %139, <4 x float> zeroinitializer), !dbg !83
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr78.1, align 8, !dbg !82
  %148 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %140, <4 x float> %147), !dbg !83
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr78.2, align 8, !dbg !82
  %149 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %141, <4 x float> %148), !dbg !83
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr78.3, align 8, !dbg !82
  %150 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %142, <4 x float> %149), !dbg !83
  %add222.1 = add nuw nsw i32 %mul107.1, %mul221
  %cmp227.not.1897 = icmp sgt i32 %add222.1, %145, !dbg !84
  %scores.sroa.0.0.vec.extract1170 = extractelement <4 x float> %150, i64 0
  %spec.select1485 = select i1 %cmp227.not.1897, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1170, !dbg !85
  %cmp227.not.1.1 = icmp sgt i32 %add222.1, %mul103, !dbg !84
  %scores.sroa.0.4.vec.extract1189 = extractelement <4 x float> %150, i64 1, !dbg !85
  %condval.0.1.1 = select i1 %cmp227.not.1.1, float 0xFFF0000000000000, float %scores.sroa.0.4.vec.extract1189, !dbg !85
  %cmp227.not.2.1.not = icmp slt i32 %add222.1, %mul103, !dbg !84
  %scores.sroa.0.8.vec.extract1206 = extractelement <4 x float> %150, i64 2, !dbg !85
  %condval.0.2.1 = select i1 %cmp227.not.2.1.not, float %scores.sroa.0.8.vec.extract1206, float 0xFFF0000000000000, !dbg !85
  %151 = or disjoint i32 %add222.1, 2, !dbg !84
  %cmp227.not.3.1 = icmp sgt i32 %151, %mul103, !dbg !84
  %scores.sroa.0.12.vec.extract1223 = extractelement <4 x float> %150, i64 3, !dbg !85
  %condval.0.3.1 = select i1 %cmp227.not.3.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1223, !dbg !85
  %152 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select1485, float 0xFFF0000000000000), !dbg !87
  %153 = tail call contract noundef float @llvm.maxnum.f32(float %152, float %condval.0.1.1), !dbg !87
  %154 = tail call contract noundef float @llvm.maxnum.f32(float %153, float %condval.0.2.1), !dbg !87
  %155 = tail call contract noundef float @llvm.maxnum.f32(float %154, float %condval.0.3.1), !dbg !87
  %156 = bitcast float %155 to i32, !dbg !91
  %157 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !94
  %158 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %157) #10, !dbg !99
  %xor.i.i.1 = xor i32 %158, 32, !dbg !100
  %159 = and i32 %158, -64, !dbg !101
  %and.i.i.1 = add nsw i32 %159, 64, !dbg !101
  %cmp.not.i.i.1 = icmp slt i32 %xor.i.i.1, %and.i.i.1, !dbg !102
  %cond.i.i.1 = select i1 %cmp.not.i.i.1, i32 %xor.i.i.1, i32 %158, !dbg !103
  %shl.i.i.1 = shl i32 %cond.i.i.1, 2, !dbg !104
  %160 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.1, i32 %156), !dbg !105
  %161 = bitcast i32 %160 to float, !dbg !106
  %162 = tail call contract noundef float @llvm.maxnum.f32(float %155, float %161), !dbg !107
  %163 = bitcast float %162 to i32, !dbg !109
  %164 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !111
  %165 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %164) #10, !dbg !114
  %xor.i.i764.1 = xor i32 %165, 16, !dbg !115
  %166 = and i32 %165, -64, !dbg !116
  %and.i.i765.1 = add nsw i32 %166, 64, !dbg !116
  %cmp.not.i.i766.1 = icmp slt i32 %xor.i.i764.1, %and.i.i765.1, !dbg !117
  %cond.i.i767.1 = select i1 %cmp.not.i.i766.1, i32 %xor.i.i764.1, i32 %165, !dbg !118
  %shl.i.i768.1 = shl i32 %cond.i.i767.1, 2, !dbg !119
  %167 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i768.1, i32 %163), !dbg !120
  %168 = bitcast i32 %167 to float, !dbg !121
  %169 = tail call contract noundef float @llvm.maxnum.f32(float %162, float %168), !dbg !122
  %sub.1 = fsub contract float %spec.select1485, %169, !dbg !124
  %sub273.1 = fsub contract float %condval.0.1.1, %169, !dbg !125
  %sub276.1 = fsub contract float %condval.0.2.1, %169, !dbg !126
  %sub279.1 = fsub contract float %condval.0.3.1, %169, !dbg !127
  %mul284.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !128
  %mul288.1 = fmul contract float %sub273.1, 0x3FC7154760000000, !dbg !129
  %mul292.1 = fmul contract float %sub276.1, 0x3FC7154760000000, !dbg !130
  %mul296.1 = fmul contract float %sub279.1, 0x3FC7154760000000, !dbg !131
  %add301.1 = fadd contract float %mul284.1, 8.000000e+00, !dbg !132
  %add305.1 = fadd contract float %mul288.1, 8.000000e+00, !dbg !133
  %add309.1 = fadd contract float %mul292.1, 8.000000e+00, !dbg !134
  %add313.1 = fadd contract float %mul296.1, 8.000000e+00, !dbg !135
  %cmp.i.i.1 = fcmp contract olt float %add301.1, -1.260000e+02, !dbg !136
  %cond.i.i769.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !136
  %add.i.i.1 = fadd contract float %add301.1, %cond.i.i769.1, !dbg !136
  %170 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !136
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !136
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %170, !dbg !136
  %cmp.i.i770.1 = fcmp contract olt float %add305.1, -1.260000e+02, !dbg !139
  %cond.i.i771.1 = select contract i1 %cmp.i.i770.1, float 6.400000e+01, float 0.000000e+00, !dbg !139
  %add.i.i772.1 = fadd contract float %add305.1, %cond.i.i771.1, !dbg !139
  %171 = tail call contract float @llvm.exp2.f32(float %add.i.i772.1), !dbg !139
  %cond2.i.i773.1 = select contract i1 %cmp.i.i770.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !139
  %mul.i.i774.1 = fmul contract float %cond2.i.i773.1, %171, !dbg !139
  %cmp.i.i775.1 = fcmp contract olt float %add309.1, -1.260000e+02, !dbg !141
  %cond.i.i776.1 = select contract i1 %cmp.i.i775.1, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i777.1 = fadd contract float %add309.1, %cond.i.i776.1, !dbg !141
  %172 = tail call contract float @llvm.exp2.f32(float %add.i.i777.1), !dbg !141
  %cond2.i.i778.1 = select contract i1 %cmp.i.i775.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %mul.i.i779.1 = fmul contract float %cond2.i.i778.1, %172, !dbg !141
  %cmp.i.i780.1 = fcmp contract olt float %add313.1, -1.260000e+02, !dbg !143
  %cond.i.i781.1 = select contract i1 %cmp.i.i780.1, float 6.400000e+01, float 0.000000e+00, !dbg !143
  %add.i.i782.1 = fadd contract float %add313.1, %cond.i.i781.1, !dbg !143
  %173 = tail call contract float @llvm.exp2.f32(float %add.i.i782.1), !dbg !143
  %cond2.i.i783.1 = select contract i1 %cmp.i.i780.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !143
  %mul.i.i784.1 = fmul contract float %cond2.i.i783.1, %173, !dbg !143
  %174 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !145
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !145, !noalias !153
  %175 = fptrunc float %mul.i.i.1 to half, !dbg !145
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %174), !dbg !145, !noalias !153
  %176 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !158, !noalias !153
  %177 = fptrunc float %mul.i.i774.1 to half, !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %176), !dbg !158, !noalias !153
  %178 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !160, !noalias !164
  %179 = fptrunc float %mul.i.i779.1 to half, !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %178), !dbg !160, !noalias !164
  %180 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !164
  %181 = fptrunc float %mul.i.i784.1 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %180), !dbg !169, !noalias !164
  %182 = insertelement <4 x half> poison, half %175, i64 0, !dbg !171
  %183 = insertelement <4 x half> %182, half %177, i64 1, !dbg !171
  %184 = insertelement <4 x half> %183, half %179, i64 2, !dbg !171
  %185 = insertelement <4 x half> %184, half %181, i64 3, !dbg !171
  %conv.i.i.1902 = fpext half %175 to float, !dbg !172
  %add347.1903 = fadd contract float %conv.i.i.1902, 0.000000e+00, !dbg !177
  %conv.i.i.1.1 = fpext half %177 to float, !dbg !172
  %add347.1.1 = fadd contract float %add347.1903, %conv.i.i.1.1, !dbg !177
  %conv.i.i.2.1 = fpext half %179 to float, !dbg !172
  %add347.2.1 = fadd contract float %add347.1.1, %conv.i.i.2.1, !dbg !177
  %conv.i.i.3.1 = fpext half %181 to float, !dbg !172
  %add347.3.1 = fadd contract float %add347.2.1, %conv.i.i.3.1, !dbg !177
  fence syncscope("warp") release, !dbg !178
  tail call void @llvm.mxc.barrier.warp(), !dbg !181
  fence syncscope("warp") acquire, !dbg !182
  %186 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add370, !dbg !183
  %187 = getelementptr inbounds i8, ptr addrspace(4) %186, i64 %.idx.1, !dbg !183
  %v_fetch.sroa.0.0.copyload1108 = load i16, ptr addrspace(4) %187, align 16, !dbg !184
  %v_fetch.sroa.6.0..sroa_idx1109 = getelementptr inbounds i8, ptr addrspace(4) %187, i64 2, !dbg !184
  %v_fetch.sroa.6.0.copyload1110 = load i16, ptr addrspace(4) %v_fetch.sroa.6.0..sroa_idx1109, align 2, !dbg !184, !tbaa !30
  %v_fetch.sroa.8.0..sroa_idx1112 = getelementptr inbounds i8, ptr addrspace(4) %187, i64 4, !dbg !184
  %v_fetch.sroa.8.0.copyload1113 = load i16, ptr addrspace(4) %v_fetch.sroa.8.0..sroa_idx1112, align 4, !dbg !184
  %v_fetch.sroa.10.0..sroa_idx1115 = getelementptr inbounds i8, ptr addrspace(4) %187, i64 6, !dbg !184
  %v_fetch.sroa.10.0.copyload1116 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1115, align 2, !dbg !184, !tbaa !30
  %v_fetch.sroa.12.0..sroa_idx1118 = getelementptr inbounds i8, ptr addrspace(4) %187, i64 8, !dbg !184
  %v_fetch.sroa.12.0.copyload1119 = load i16, ptr addrspace(4) %v_fetch.sroa.12.0..sroa_idx1118, align 8, !dbg !184
  %v_fetch.sroa.14.0..sroa_idx1121 = getelementptr inbounds i8, ptr addrspace(4) %187, i64 10, !dbg !184
  %v_fetch.sroa.14.0.copyload1122 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1121, align 2, !dbg !184, !tbaa !30
  %v_fetch.sroa.16.0..sroa_idx1124 = getelementptr inbounds i8, ptr addrspace(4) %187, i64 12, !dbg !184
  %v_fetch.sroa.16.0.copyload1125 = load i16, ptr addrspace(4) %v_fetch.sroa.16.0..sroa_idx1124, align 4, !dbg !184
  %v_fetch.sroa.18.0..sroa_idx1127 = getelementptr inbounds i8, ptr addrspace(4) %187, i64 14, !dbg !184
  %v_fetch.sroa.18.0.copyload1128 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1127, align 2, !dbg !184, !tbaa !30
  %add.ptr379.1.1 = getelementptr inbounds i8, ptr addrspace(4) %187, i64 128, !dbg !183
  %v_fetch.sroa.20.16.copyload1131 = load i16, ptr addrspace(4) %add.ptr379.1.1, align 16, !dbg !184
  %v_fetch.sroa.24.16.add.ptr379.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %187, i64 130, !dbg !184
  %v_fetch.sroa.24.16.copyload1132 = load i16, ptr addrspace(4) %v_fetch.sroa.24.16.add.ptr379.1.1.sroa_idx, align 2, !dbg !184, !tbaa !30
  %v_fetch.sroa.26.16.add.ptr379.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %187, i64 132, !dbg !184
  %v_fetch.sroa.26.16.copyload1134 = load i16, ptr addrspace(4) %v_fetch.sroa.26.16.add.ptr379.1.1.sroa_idx, align 4, !dbg !184
  %v_fetch.sroa.28.16.add.ptr379.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %187, i64 134, !dbg !184
  %v_fetch.sroa.28.16.copyload1136 = load i16, ptr addrspace(4) %v_fetch.sroa.28.16.add.ptr379.1.1.sroa_idx, align 2, !dbg !184, !tbaa !30
  %v_fetch.sroa.30.16.add.ptr379.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %187, i64 136, !dbg !184
  %v_fetch.sroa.30.16.copyload1138 = load i16, ptr addrspace(4) %v_fetch.sroa.30.16.add.ptr379.1.1.sroa_idx, align 8, !dbg !184
  %v_fetch.sroa.32.16.add.ptr379.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %187, i64 138, !dbg !184
  %v_fetch.sroa.32.16.copyload1140 = load i16, ptr addrspace(4) %v_fetch.sroa.32.16.add.ptr379.1.1.sroa_idx, align 2, !dbg !184, !tbaa !30
  %v_fetch.sroa.34.16.add.ptr379.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %187, i64 140, !dbg !184
  %v_fetch.sroa.34.16.copyload1142 = load i16, ptr addrspace(4) %v_fetch.sroa.34.16.add.ptr379.1.1.sroa_idx, align 4, !dbg !184
  %v_fetch.sroa.36.16.add.ptr379.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %187, i64 142, !dbg !184
  %v_fetch.sroa.36.16.copyload1144 = load i16, ptr addrspace(4) %v_fetch.sroa.36.16.add.ptr379.1.1.sroa_idx, align 2, !dbg !184, !tbaa !30
  %xor417755.1907 = shl nuw nsw i32 %mul410, 4, !dbg !185
  %mul418.1908 = or disjoint i32 %xor417755.1907, %call414.mask, !dbg !185
  %mul427.1909 = shl nuw nsw i32 %xor424, 2, !dbg !186
  %add428.1910 = add nuw nsw i32 %mul418.1908, %mul427.1909, !dbg !187
  %add433.1911 = or disjoint i32 %add428.1910, %mul432, !dbg !188
  %add.ptr435.1912 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add433.1911, !dbg !189
  %v_column.sroa.34.0.insert.ext1056 = zext i16 %v_fetch.sroa.20.16.copyload1131 to i32, !dbg !190
  %v_column.sroa.34.0.insert.shift1057 = shl nuw i32 %v_column.sroa.34.0.insert.ext1056, 16, !dbg !190
  %v_column.sroa.0.0.insert.ext989 = zext i16 %v_fetch.sroa.0.0.copyload1108 to i32, !dbg !190
  %v_column.sroa.0.0.insert.insert991 = or disjoint i32 %v_column.sroa.34.0.insert.shift1057, %v_column.sroa.0.0.insert.ext989, !dbg !190
  store i32 %v_column.sroa.0.0.insert.insert991, ptr addrspace(3) %add.ptr435.1912, align 4, !dbg !190, !tbaa !30
  %add411.1.1 = shl nuw nsw i32 %mul410, 4, !dbg !185
  %xor417755.1.1 = or disjoint i32 %add411.1.1, %call414.mask, !dbg !185
  %mul418.1.1 = or disjoint i32 %xor417755.1.1, 256, !dbg !185
  %xor426.1.1 = shl nuw nsw i32 %xor424, 2, !dbg !186
  %mul427.1.1 = xor i32 %xor426.1.1, 4, !dbg !186
  %add428.1.1 = add nuw nsw i32 %mul418.1.1, %mul427.1.1, !dbg !187
  %add433.1.1 = or disjoint i32 %add428.1.1, %mul432, !dbg !188
  %add.ptr435.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add433.1.1, !dbg !189
  %v_column.sroa.34.0.insert.ext1061 = zext i16 %v_fetch.sroa.24.16.copyload1132 to i32, !dbg !190
  %v_column.sroa.34.0.insert.shift1062 = shl nuw i32 %v_column.sroa.34.0.insert.ext1061, 16, !dbg !190
  %v_column.sroa.0.0.insert.ext993 = zext i16 %v_fetch.sroa.6.0.copyload1110 to i32, !dbg !190
  %v_column.sroa.0.0.insert.insert995 = or disjoint i32 %v_column.sroa.34.0.insert.shift1062, %v_column.sroa.0.0.insert.ext993, !dbg !190
  store i32 %v_column.sroa.0.0.insert.insert995, ptr addrspace(3) %add.ptr435.1.1, align 4, !dbg !190, !tbaa !30
  %add411.2.1 = shl nuw nsw i32 %mul410, 4, !dbg !185
  %xor417755.2.1 = or disjoint i32 %add411.2.1, %call414.mask, !dbg !185
  %mul418.2.1 = or disjoint i32 %xor417755.2.1, 512, !dbg !185
  %xor426.2.1 = shl nuw nsw i32 %xor424, 2, !dbg !186
  %mul427.2.1 = xor i32 %xor426.2.1, 8, !dbg !186
  %add428.2.1 = add nuw nsw i32 %mul418.2.1, %mul427.2.1, !dbg !187
  %add433.2.1 = or disjoint i32 %add428.2.1, %mul432, !dbg !188
  %add.ptr435.2.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add433.2.1, !dbg !189
  %v_column.sroa.34.0.insert.ext1066 = zext i16 %v_fetch.sroa.26.16.copyload1134 to i32, !dbg !190
  %v_column.sroa.34.0.insert.shift1067 = shl nuw i32 %v_column.sroa.34.0.insert.ext1066, 16, !dbg !190
  %v_column.sroa.0.0.insert.ext997 = zext i16 %v_fetch.sroa.8.0.copyload1113 to i32, !dbg !190
  %v_column.sroa.0.0.insert.insert999 = or disjoint i32 %v_column.sroa.34.0.insert.shift1067, %v_column.sroa.0.0.insert.ext997, !dbg !190
  store i32 %v_column.sroa.0.0.insert.insert999, ptr addrspace(3) %add.ptr435.2.1, align 4, !dbg !190, !tbaa !30
  %add411.3.1 = shl nuw nsw i32 %mul410, 4, !dbg !185
  %xor417755.3.1 = or disjoint i32 %add411.3.1, %call414.mask, !dbg !185
  %mul418.3.1 = or disjoint i32 %xor417755.3.1, 768, !dbg !185
  %xor426.3.1 = shl nuw nsw i32 %xor424, 2, !dbg !186
  %mul427.3.1 = xor i32 %xor426.3.1, 12, !dbg !186
  %add428.3.1 = add nuw nsw i32 %mul418.3.1, %mul427.3.1, !dbg !187
  %add433.3.1 = or disjoint i32 %add428.3.1, %mul432, !dbg !188
  %add.ptr435.3.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add433.3.1, !dbg !189
  %v_column.sroa.34.0.insert.ext1071 = zext i16 %v_fetch.sroa.28.16.copyload1136 to i32, !dbg !190
  %v_column.sroa.34.0.insert.shift1072 = shl nuw i32 %v_column.sroa.34.0.insert.ext1071, 16, !dbg !190
  %v_column.sroa.0.0.insert.ext1001 = zext i16 %v_fetch.sroa.10.0.copyload1116 to i32, !dbg !190
  %v_column.sroa.0.0.insert.insert1003 = or disjoint i32 %v_column.sroa.34.0.insert.shift1072, %v_column.sroa.0.0.insert.ext1001, !dbg !190
  store i32 %v_column.sroa.0.0.insert.insert1003, ptr addrspace(3) %add.ptr435.3.1, align 4, !dbg !190, !tbaa !30
  %add413.4.1 = shl nuw nsw i32 %mul410, 4, !dbg !185
  %xor417755.4.1 = or disjoint i32 %add413.4.1, 16, !dbg !185
  %mul418.4.1 = xor i32 %xor417755.4.1, %call414.mask, !dbg !185
  %add428.4.1 = add nuw nsw i32 %mul418.4.1, %mul427.1909, !dbg !187
  %add433.4.1 = or disjoint i32 %add428.4.1, %mul432, !dbg !188
  %add.ptr435.4.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add433.4.1, !dbg !189
  %v_column.sroa.34.0.insert.ext1076 = zext i16 %v_fetch.sroa.30.16.copyload1138 to i32, !dbg !190
  %v_column.sroa.34.0.insert.shift1077 = shl nuw i32 %v_column.sroa.34.0.insert.ext1076, 16, !dbg !190
  %v_column.sroa.0.0.insert.ext1005 = zext i16 %v_fetch.sroa.12.0.copyload1119 to i32, !dbg !190
  %v_column.sroa.0.0.insert.insert1007 = or disjoint i32 %v_column.sroa.34.0.insert.shift1077, %v_column.sroa.0.0.insert.ext1005, !dbg !190
  store i32 %v_column.sroa.0.0.insert.insert1007, ptr addrspace(3) %add.ptr435.4.1, align 4, !dbg !190, !tbaa !30
  %add413.5.1 = shl nuw nsw i32 %mul410, 4, !dbg !185
  %xor417755.5.1 = or disjoint i32 %add413.5.1, 272, !dbg !185
  %mul418.5.1 = xor i32 %xor417755.5.1, %call414.mask, !dbg !185
  %add428.5.1 = add nuw nsw i32 %mul418.5.1, %mul427.1.1, !dbg !187
  %add433.5.1 = or disjoint i32 %add428.5.1, %mul432, !dbg !188
  %add.ptr435.5.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add433.5.1, !dbg !189
  %v_column.sroa.34.0.insert.ext1081 = zext i16 %v_fetch.sroa.32.16.copyload1140 to i32, !dbg !190
  %v_column.sroa.34.0.insert.shift1082 = shl nuw i32 %v_column.sroa.34.0.insert.ext1081, 16, !dbg !190
  %v_column.sroa.0.0.insert.ext1009 = zext i16 %v_fetch.sroa.14.0.copyload1122 to i32, !dbg !190
  %v_column.sroa.0.0.insert.insert1011 = or disjoint i32 %v_column.sroa.34.0.insert.shift1082, %v_column.sroa.0.0.insert.ext1009, !dbg !190
  store i32 %v_column.sroa.0.0.insert.insert1011, ptr addrspace(3) %add.ptr435.5.1, align 4, !dbg !190, !tbaa !30
  %add413.6.1 = shl nuw nsw i32 %mul410, 4, !dbg !185
  %xor417755.6.1 = or disjoint i32 %add413.6.1, 528, !dbg !185
  %mul418.6.1 = xor i32 %xor417755.6.1, %call414.mask, !dbg !185
  %add428.6.1 = add nuw nsw i32 %mul418.6.1, %mul427.2.1, !dbg !187
  %add433.6.1 = or disjoint i32 %add428.6.1, %mul432, !dbg !188
  %add.ptr435.6.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add433.6.1, !dbg !189
  %v_column.sroa.34.0.insert.ext1086 = zext i16 %v_fetch.sroa.34.16.copyload1142 to i32, !dbg !190
  %v_column.sroa.34.0.insert.shift1087 = shl nuw i32 %v_column.sroa.34.0.insert.ext1086, 16, !dbg !190
  %v_column.sroa.0.0.insert.ext1013 = zext i16 %v_fetch.sroa.16.0.copyload1125 to i32, !dbg !190
  %v_column.sroa.0.0.insert.insert1015 = or disjoint i32 %v_column.sroa.34.0.insert.shift1087, %v_column.sroa.0.0.insert.ext1013, !dbg !190
  store i32 %v_column.sroa.0.0.insert.insert1015, ptr addrspace(3) %add.ptr435.6.1, align 4, !dbg !190, !tbaa !30
  %add413.7.1 = shl nuw nsw i32 %mul410, 4, !dbg !185
  %xor417755.7.1 = or disjoint i32 %add413.7.1, 784, !dbg !185
  %mul418.7.1 = xor i32 %xor417755.7.1, %call414.mask, !dbg !185
  %add428.7.1 = add nuw nsw i32 %mul418.7.1, %mul427.3.1, !dbg !187
  %add433.7.1 = or disjoint i32 %add428.7.1, %mul432, !dbg !188
  %add.ptr435.7.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add433.7.1, !dbg !189
  %v_column.sroa.34.0.insert.ext1091 = zext i16 %v_fetch.sroa.36.16.copyload1144 to i32, !dbg !190
  %v_column.sroa.34.0.insert.shift1092 = shl nuw i32 %v_column.sroa.34.0.insert.ext1091, 16, !dbg !190
  %v_column.sroa.0.0.insert.ext1017 = zext i16 %v_fetch.sroa.18.0.copyload1128 to i32, !dbg !190
  %v_column.sroa.0.0.insert.insert1019 = or disjoint i32 %v_column.sroa.34.0.insert.shift1092, %v_column.sroa.0.0.insert.ext1017, !dbg !190
  store i32 %v_column.sroa.0.0.insert.insert1019, ptr addrspace(3) %add.ptr435.7.1, align 4, !dbg !190, !tbaa !30
  fence syncscope("warp") release, !dbg !191
  tail call void @llvm.mxc.barrier.warp(), !dbg !194
  fence syncscope("warp") acquire, !dbg !195
  %xor455754.1914 = shl nuw nsw i32 %7, 4, !dbg !196
  %mul456.1915 = xor i32 %xor455754.1914, %call414.mask, !dbg !196
  %188 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul456.1915, !dbg !197
  %add.ptr466.idx.1916 = shl nuw nsw i32 %8, 3, !dbg !197
  %add.ptr466.1917 = getelementptr inbounds i8, ptr addrspace(3) %188, i32 %add.ptr466.idx.1916, !dbg !197
  %189 = load <4 x half>, ptr addrspace(3) %add.ptr466.1917, align 8, !dbg !198
  %add451.1.1 = shl nuw nsw i32 %7, 4, !dbg !196
  %xor455754.1.1 = or disjoint i32 %add451.1.1, 64, !dbg !196
  %mul456.1.1 = xor i32 %xor455754.1.1, %call414.mask, !dbg !196
  %190 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul456.1.1, !dbg !197
  %xor462.1.1 = shl nuw nsw i32 %8, 3, !dbg !197
  %add.ptr466.idx.1.1 = xor i32 %xor462.1.1, 8, !dbg !197
  %add.ptr466.1.1 = getelementptr inbounds i8, ptr addrspace(3) %190, i32 %add.ptr466.idx.1.1, !dbg !197
  %191 = load <4 x half>, ptr addrspace(3) %add.ptr466.1.1, align 8, !dbg !198
  %add451.2.1 = shl nuw nsw i32 %7, 4, !dbg !196
  %xor455754.2.1 = or disjoint i32 %add451.2.1, 128, !dbg !196
  %mul456.2.1 = xor i32 %xor455754.2.1, %call414.mask, !dbg !196
  %192 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul456.2.1, !dbg !197
  %xor462.2.1 = shl nuw nsw i32 %8, 3, !dbg !197
  %add.ptr466.idx.2.1 = xor i32 %xor462.2.1, 16, !dbg !197
  %add.ptr466.2.1 = getelementptr inbounds i8, ptr addrspace(3) %192, i32 %add.ptr466.idx.2.1, !dbg !197
  %193 = load <4 x half>, ptr addrspace(3) %add.ptr466.2.1, align 8, !dbg !198
  %add451.3.1 = shl nuw nsw i32 %7, 4, !dbg !196
  %xor455754.3.1 = or disjoint i32 %add451.3.1, 192, !dbg !196
  %mul456.3.1 = xor i32 %xor455754.3.1, %call414.mask, !dbg !196
  %194 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul456.3.1, !dbg !197
  %xor462.3.1 = shl nuw nsw i32 %8, 3, !dbg !197
  %add.ptr466.idx.3.1 = xor i32 %xor462.3.1, 24, !dbg !197
  %add.ptr466.3.1 = getelementptr inbounds i8, ptr addrspace(3) %194, i32 %add.ptr466.idx.3.1, !dbg !197
  %195 = load <4 x half>, ptr addrspace(3) %add.ptr466.3.1, align 8, !dbg !198
  %196 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %189, <4 x half> %185, <4 x float> zeroinitializer), !dbg !199
  %197 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %191, <4 x half> %185, <4 x float> zeroinitializer), !dbg !199
  %198 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %193, <4 x half> %185, <4 x float> zeroinitializer), !dbg !199
  %199 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %195, <4 x half> %185, <4 x float> zeroinitializer), !dbg !199
  %add354.1 = fadd contract float %add347.3.1, 0.000000e+00, !dbg !200
  br label %if.end492.1, !dbg !201

if.end492.1:                                      ; preds = %if.then.1, %land.lhs.true.1, %if.end492
  %numerator.sroa.110.1 = phi <4 x float> [ zeroinitializer, %land.lhs.true.1 ], [ %199, %if.then.1 ], [ zeroinitializer, %if.end492 ], !dbg !203
  %numerator.sroa.74.1 = phi <4 x float> [ zeroinitializer, %land.lhs.true.1 ], [ %198, %if.then.1 ], [ zeroinitializer, %if.end492 ], !dbg !203
  %numerator.sroa.38.1 = phi <4 x float> [ zeroinitializer, %land.lhs.true.1 ], [ %197, %if.then.1 ], [ zeroinitializer, %if.end492 ], !dbg !203
  %numerator.sroa.0.1 = phi <4 x float> [ zeroinitializer, %land.lhs.true.1 ], [ %196, %if.then.1 ], [ zeroinitializer, %if.end492 ], !dbg !203
  %denominator.sroa.0.0.1 = phi float [ 0.000000e+00, %land.lhs.true.1 ], [ %add354.1, %if.then.1 ], [ 0.000000e+00, %if.end492 ], !dbg !203
  %200 = bitcast float %denominator.sroa.0.0.1 to i32, !dbg !201
  %201 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !204
  %202 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %201) #10, !dbg !207
  %xor.i.i786.1 = xor i32 %202, 32, !dbg !208
  %203 = and i32 %202, -64, !dbg !209
  %and.i.i787.1 = add nsw i32 %203, 64, !dbg !209
  %cmp.not.i.i788.1 = icmp slt i32 %xor.i.i786.1, %and.i.i787.1, !dbg !210
  %cond.i.i789.1 = select i1 %cmp.not.i.i788.1, i32 %xor.i.i786.1, i32 %202, !dbg !211
  %shl.i.i790.1 = shl i32 %cond.i.i789.1, 2, !dbg !212
  %204 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i790.1, i32 %200), !dbg !213
  %205 = bitcast i32 %204 to float, !dbg !214
  %add496.1 = fadd contract float %denominator.sroa.0.0.1, %205, !dbg !215
  %206 = bitcast float %add496.1 to i32, !dbg !216
  %207 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !218
  %208 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %207) #10, !dbg !221
  %xor.i.i791.1 = xor i32 %208, 16, !dbg !222
  %209 = and i32 %208, -64, !dbg !223
  %and.i.i792.1 = add nsw i32 %209, 64, !dbg !223
  %cmp.not.i.i793.1 = icmp slt i32 %xor.i.i791.1, %and.i.i792.1, !dbg !224
  %cond.i.i794.1 = select i1 %cmp.not.i.i793.1, i32 %xor.i.i791.1, i32 %208, !dbg !225
  %shl.i.i795.1 = shl i32 %cond.i.i794.1, 2, !dbg !226
  %210 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i795.1, i32 %206), !dbg !227
  %211 = bitcast i32 %210 to float, !dbg !228
  %add501.1 = fadd contract float %add496.1, %211, !dbg !229
  %numerator.sroa.0.0.vec.extract1238 = extractelement <4 x float> %numerator.sroa.0.1, i64 0, !dbg !230
  %numerator.sroa.0.4.vec.extract1251 = extractelement <4 x float> %numerator.sroa.0.1, i64 1, !dbg !230
  %numerator.sroa.0.8.vec.extract1264 = extractelement <4 x float> %numerator.sroa.0.1, i64 2, !dbg !230
  %numerator.sroa.0.12.vec.extract1277 = extractelement <4 x float> %numerator.sroa.0.1, i64 3, !dbg !230
  %div.1925 = fdiv contract float %numerator.sroa.0.0.vec.extract1238, %add501.1, !dbg !231
  %div521.1926 = fdiv contract float %numerator.sroa.0.4.vec.extract1251, %add501.1, !dbg !232
  %div525.1927 = fdiv contract float %numerator.sroa.0.8.vec.extract1264, %add501.1, !dbg !233
  %div529.1928 = fdiv contract float %numerator.sroa.0.12.vec.extract1277, %add501.1, !dbg !234
  %numerator.sroa.38.16.vec.extract1292 = extractelement <4 x float> %numerator.sroa.38.1, i64 0, !dbg !230
  %numerator.sroa.38.20.vec.extract1305 = extractelement <4 x float> %numerator.sroa.38.1, i64 1, !dbg !230
  %numerator.sroa.38.24.vec.extract1318 = extractelement <4 x float> %numerator.sroa.38.1, i64 2, !dbg !230
  %numerator.sroa.38.28.vec.extract1331 = extractelement <4 x float> %numerator.sroa.38.1, i64 3, !dbg !230
  %div.1.1 = fdiv contract float %numerator.sroa.38.16.vec.extract1292, %add501.1, !dbg !231
  %div521.1.1 = fdiv contract float %numerator.sroa.38.20.vec.extract1305, %add501.1, !dbg !232
  %div525.1.1 = fdiv contract float %numerator.sroa.38.24.vec.extract1318, %add501.1, !dbg !233
  %div529.1.1 = fdiv contract float %numerator.sroa.38.28.vec.extract1331, %add501.1, !dbg !234
  %numerator.sroa.74.32.vec.extract1346 = extractelement <4 x float> %numerator.sroa.74.1, i64 0, !dbg !230
  %numerator.sroa.74.36.vec.extract1359 = extractelement <4 x float> %numerator.sroa.74.1, i64 1, !dbg !230
  %numerator.sroa.74.40.vec.extract1372 = extractelement <4 x float> %numerator.sroa.74.1, i64 2, !dbg !230
  %numerator.sroa.74.44.vec.extract1385 = extractelement <4 x float> %numerator.sroa.74.1, i64 3, !dbg !230
  %div.2.1 = fdiv contract float %numerator.sroa.74.32.vec.extract1346, %add501.1, !dbg !231
  %div521.2.1 = fdiv contract float %numerator.sroa.74.36.vec.extract1359, %add501.1, !dbg !232
  %div525.2.1 = fdiv contract float %numerator.sroa.74.40.vec.extract1372, %add501.1, !dbg !233
  %div529.2.1 = fdiv contract float %numerator.sroa.74.44.vec.extract1385, %add501.1, !dbg !234
  %numerator.sroa.110.48.vec.extract1400 = extractelement <4 x float> %numerator.sroa.110.1, i64 0, !dbg !230
  %numerator.sroa.110.52.vec.extract1413 = extractelement <4 x float> %numerator.sroa.110.1, i64 1, !dbg !230
  %numerator.sroa.110.56.vec.extract1426 = extractelement <4 x float> %numerator.sroa.110.1, i64 2, !dbg !230
  %numerator.sroa.110.60.vec.extract1439 = extractelement <4 x float> %numerator.sroa.110.1, i64 3, !dbg !230
  %div.3.1 = fdiv contract float %numerator.sroa.110.48.vec.extract1400, %add501.1, !dbg !231
  %div521.3.1 = fdiv contract float %numerator.sroa.110.52.vec.extract1413, %add501.1, !dbg !232
  %div525.3.1 = fdiv contract float %numerator.sroa.110.56.vec.extract1426, %add501.1, !dbg !233
  %div529.3.1 = fdiv contract float %numerator.sroa.110.60.vec.extract1439, %add501.1, !dbg !234
  fence syncscope("warp") release, !dbg !235
  tail call void @llvm.mxc.barrier.warp(), !dbg !238
  fence syncscope("warp") acquire, !dbg !239
  %212 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %213 = fptrunc float %div.1925 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %212), !dbg !240, !noalias !244
  %214 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %215 = fptrunc float %div521.1926 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %214), !dbg !249, !noalias !244
  %216 = bitcast half %213 to i16, !dbg !251
  %217 = bitcast half %215 to i16, !dbg !254
  %218 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %219 = fptrunc float %div525.1927 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %218), !dbg !255, !noalias !259
  %220 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %221 = fptrunc float %div529.1928 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %220), !dbg !264, !noalias !259
  %222 = bitcast half %219 to i16, !dbg !266
  %223 = bitcast half %221 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext.1936 = zext i16 %223 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift.1937 = shl nuw i64 %__7.sroa.6.0.insert.ext.1936, 48, !dbg !269
  %__7.sroa.5.0.insert.ext.1938 = zext i16 %222 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift.1939 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1938, 32, !dbg !269
  %__7.sroa.5.0.insert.insert.1940 = or disjoint i64 %__7.sroa.6.0.insert.shift.1937, %__7.sroa.5.0.insert.shift.1939, !dbg !269
  %__7.sroa.4.0.insert.ext.1941 = zext i16 %217 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift.1942 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1941, 16, !dbg !269
  %__7.sroa.4.0.insert.insert.1943 = or disjoint i64 %__7.sroa.5.0.insert.insert.1940, %__7.sroa.4.0.insert.shift.1942, !dbg !269
  %__7.sroa.0.0.insert.ext.1944 = zext i16 %216 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert.1945 = or disjoint i64 %__7.sroa.4.0.insert.insert.1943, %__7.sroa.0.0.insert.ext.1944, !dbg !269
  store i64 %__7.sroa.0.0.insert.insert.1945, ptr addrspace(3) %add.ptr582, align 8, !dbg !272
  %224 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %225 = fptrunc float %div.1.1 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %224), !dbg !240, !noalias !244
  %226 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %227 = fptrunc float %div521.1.1 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %226), !dbg !249, !noalias !244
  %228 = bitcast half %225 to i16, !dbg !251
  %229 = bitcast half %227 to i16, !dbg !254
  %230 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %231 = fptrunc float %div525.1.1 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %230), !dbg !255, !noalias !259
  %232 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %233 = fptrunc float %div529.1.1 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %232), !dbg !264, !noalias !259
  %234 = bitcast half %231 to i16, !dbg !266
  %235 = bitcast half %233 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext.1.1 = zext i16 %235 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift.1.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.1.1, 48, !dbg !269
  %__7.sroa.5.0.insert.ext.1.1 = zext i16 %234 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift.1.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1.1, 32, !dbg !269
  %__7.sroa.5.0.insert.insert.1.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.1.1, %__7.sroa.5.0.insert.shift.1.1, !dbg !269
  %__7.sroa.4.0.insert.ext.1.1 = zext i16 %229 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift.1.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1.1, 16, !dbg !269
  %__7.sroa.4.0.insert.insert.1.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.1.1, %__7.sroa.4.0.insert.shift.1.1, !dbg !269
  %__7.sroa.0.0.insert.ext.1.1 = zext i16 %228 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert.1.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.1.1, %__7.sroa.0.0.insert.ext.1.1, !dbg !269
  store i64 %__7.sroa.0.0.insert.insert.1.1, ptr addrspace(3) %add.ptr582.1, align 8, !dbg !272
  %236 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %237 = fptrunc float %div.2.1 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %236), !dbg !240, !noalias !244
  %238 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %239 = fptrunc float %div521.2.1 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %238), !dbg !249, !noalias !244
  %240 = bitcast half %237 to i16, !dbg !251
  %241 = bitcast half %239 to i16, !dbg !254
  %242 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %243 = fptrunc float %div525.2.1 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %242), !dbg !255, !noalias !259
  %244 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %245 = fptrunc float %div529.2.1 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %244), !dbg !264, !noalias !259
  %246 = bitcast half %243 to i16, !dbg !266
  %247 = bitcast half %245 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext.2.1 = zext i16 %247 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift.2.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.2.1, 48, !dbg !269
  %__7.sroa.5.0.insert.ext.2.1 = zext i16 %246 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift.2.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.2.1, 32, !dbg !269
  %__7.sroa.5.0.insert.insert.2.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.2.1, %__7.sroa.5.0.insert.shift.2.1, !dbg !269
  %__7.sroa.4.0.insert.ext.2.1 = zext i16 %241 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift.2.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.2.1, 16, !dbg !269
  %__7.sroa.4.0.insert.insert.2.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.2.1, %__7.sroa.4.0.insert.shift.2.1, !dbg !269
  %__7.sroa.0.0.insert.ext.2.1 = zext i16 %240 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert.2.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.2.1, %__7.sroa.0.0.insert.ext.2.1, !dbg !269
  store i64 %__7.sroa.0.0.insert.insert.2.1, ptr addrspace(3) %add.ptr582.2, align 8, !dbg !272
  %248 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %249 = fptrunc float %div.3.1 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %248), !dbg !240, !noalias !244
  %250 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %251 = fptrunc float %div521.3.1 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %250), !dbg !249, !noalias !244
  %252 = bitcast half %249 to i16, !dbg !251
  %253 = bitcast half %251 to i16, !dbg !254
  %254 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %255 = fptrunc float %div525.3.1 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %254), !dbg !255, !noalias !259
  %256 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %257 = fptrunc float %div529.3.1 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %256), !dbg !264, !noalias !259
  %258 = bitcast half %255 to i16, !dbg !266
  %259 = bitcast half %257 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext.3.1 = zext i16 %259 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift.3.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.3.1, 48, !dbg !269
  %__7.sroa.5.0.insert.ext.3.1 = zext i16 %258 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift.3.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.3.1, 32, !dbg !269
  %__7.sroa.5.0.insert.insert.3.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.3.1, %__7.sroa.5.0.insert.shift.3.1, !dbg !269
  %__7.sroa.4.0.insert.ext.3.1 = zext i16 %253 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift.3.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.3.1, 16, !dbg !269
  %__7.sroa.4.0.insert.insert.3.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.3.1, %__7.sroa.4.0.insert.shift.3.1, !dbg !269
  %__7.sroa.0.0.insert.ext.3.1 = zext i16 %252 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert.3.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.3.1, %__7.sroa.0.0.insert.ext.3.1, !dbg !269
  store i64 %__7.sroa.0.0.insert.insert.3.1, ptr addrspace(3) %add.ptr582.3, align 8, !dbg !272
  fence syncscope("warp") release, !dbg !273
  tail call void @llvm.mxc.barrier.warp(), !dbg !276
  fence syncscope("warp") acquire, !dbg !277
  %260 = load i64, ptr addrspace(3) %12, align 16, !dbg !278
  %261 = load i64, ptr addrspace(3) %add.ptr610.1, align 8, !dbg !278
  %add.ptr633.1952 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %137, !dbg !280
  store i64 %260, ptr addrspace(1) %add.ptr633.1952, align 16, !dbg !281
  %output_fetch.sroa.10.0.add.ptr633.1952.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr633.1952, i64 8, !dbg !281
  store i64 %261, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr633.1952.sroa_idx, align 8, !dbg !281
  %262 = load i64, ptr addrspace(3) %add.ptr610.1861, align 8, !dbg !278
  %263 = load i64, ptr addrspace(3) %14, align 16, !dbg !278
  %add.ptr633.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %138, !dbg !280
  store i64 %262, ptr addrspace(1) %add.ptr633.1.1, align 16, !dbg !281
  %output_fetch.sroa.10.0.add.ptr633.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr633.1.1, i64 8, !dbg !281
  store i64 %263, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr633.1.1.sroa_idx, align 8, !dbg !281
  ret void, !dbg !291
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
attributes #10 = { nomerge }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "mxcc version 1.0.0 (d9102a1572)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v210_worker2_c8_serial_query_pair_subagent2/codegen/power_v210/case8_stage1.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v210_worker2_c8_serial_query_pair_subagent2/codegen/power_v210/case8_stage1.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 26, column: 3, scope: !40)
!44 = !DILocation(line: 29, column: 45, scope: !40)
!45 = !DILocation(line: 29, column: 31, scope: !40)
!46 = !DILocation(line: 32, column: 26, scope: !40)
!47 = !DILocation(line: 32, column: 205, scope: !40)
!48 = !DILocation(line: 29, column: 150, scope: !40)
!49 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !52)
!50 = distinct !DISubprogram(name: "__barrier_warp", scope: !51, file: !51, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!51 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!52 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !54)
!53 = distinct !DISubprogram(name: "__syncwarp", scope: !51, file: !51, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!54 = distinct !DILocation(line: 35, column: 5, scope: !40)
!55 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !52)
!56 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !52)
!57 = !DILocation(line: 38, column: 142, scope: !40)
!58 = !DILocation(line: 38, column: 170, scope: !40)
!59 = !DILocation(line: 38, column: 96, scope: !40)
!60 = !DILocation(line: 38, column: 176, scope: !40)
!61 = !DILocation(line: 38, column: 59, scope: !40)
!62 = !DILocation(line: 38, column: 113, scope: !40)
!63 = !DILocation(line: 47, column: 24, scope: !40)
!64 = !DILocation(line: 47, column: 103, scope: !40)
!65 = !DILocation(line: 48, column: 12, scope: !40)
!66 = !DILocation(line: 48, column: 28, scope: !40)
!67 = !DILocation(line: 38, column: 40, scope: !40)
!68 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !69)
!69 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !70)
!70 = distinct !DILocation(line: 49, column: 7, scope: !40)
!71 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !69)
!72 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !69)
!73 = !DILocation(line: 51, column: 12, scope: !40)
!74 = !DILocation(line: 52, column: 47, scope: !40)
!75 = !DILocation(line: 52, column: 33, scope: !40)
!76 = !DILocation(line: 55, column: 213, scope: !40)
!77 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !78)
!78 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !79)
!79 = distinct !DILocation(line: 58, column: 7, scope: !40)
!80 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !78)
!81 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !78)
!82 = !DILocation(line: 63, column: 32, scope: !40)
!83 = !DILocation(line: 65, column: 37, scope: !40)
!84 = !DILocation(line: 73, column: 74, scope: !40)
!85 = !DILocation(line: 73, column: 13, scope: !40)
!86 = !DILocation(line: 73, column: 63, scope: !40)
!87 = !DILocation(line: 351, column: 10, scope: !88, inlinedAt: !90)
!88 = distinct !DISubprogram(name: "max", scope: !89, file: !89, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!89 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!90 = distinct !DILocation(line: 83, column: 22, scope: !40)
!91 = !DILocation(line: 1018, column: 9, scope: !92, inlinedAt: !93)
!92 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!93 = distinct !DILocation(line: 85, column: 36, scope: !40)
!94 = !DILocation(line: 171, column: 37, scope: !95, inlinedAt: !96)
!95 = distinct !DISubprogram(name: "__lane_id", scope: !51, file: !51, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!96 = distinct !DILocation(line: 990, column: 14, scope: !97, inlinedAt: !98)
!97 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!98 = distinct !DILocation(line: 1019, column: 11, scope: !92, inlinedAt: !93)
!99 = !DILocation(line: 171, column: 10, scope: !95, inlinedAt: !96)
!100 = !DILocation(line: 991, column: 20, scope: !97, inlinedAt: !98)
!101 = !DILocation(line: 992, column: 36, scope: !97, inlinedAt: !98)
!102 = !DILocation(line: 992, column: 17, scope: !97, inlinedAt: !98)
!103 = !DILocation(line: 992, column: 11, scope: !97, inlinedAt: !98)
!104 = !DILocation(line: 993, column: 43, scope: !97, inlinedAt: !98)
!105 = !DILocation(line: 993, column: 10, scope: !97, inlinedAt: !98)
!106 = !DILocation(line: 1020, column: 14, scope: !92, inlinedAt: !93)
!107 = !DILocation(line: 351, column: 10, scope: !88, inlinedAt: !108)
!108 = distinct !DILocation(line: 85, column: 20, scope: !40)
!109 = !DILocation(line: 1018, column: 9, scope: !92, inlinedAt: !110)
!110 = distinct !DILocation(line: 86, column: 36, scope: !40)
!111 = !DILocation(line: 171, column: 37, scope: !95, inlinedAt: !112)
!112 = distinct !DILocation(line: 990, column: 14, scope: !97, inlinedAt: !113)
!113 = distinct !DILocation(line: 1019, column: 11, scope: !92, inlinedAt: !110)
!114 = !DILocation(line: 171, column: 10, scope: !95, inlinedAt: !112)
!115 = !DILocation(line: 991, column: 20, scope: !97, inlinedAt: !113)
!116 = !DILocation(line: 992, column: 36, scope: !97, inlinedAt: !113)
!117 = !DILocation(line: 992, column: 17, scope: !97, inlinedAt: !113)
!118 = !DILocation(line: 992, column: 11, scope: !97, inlinedAt: !113)
!119 = !DILocation(line: 993, column: 43, scope: !97, inlinedAt: !113)
!120 = !DILocation(line: 993, column: 10, scope: !97, inlinedAt: !113)
!121 = !DILocation(line: 1020, column: 14, scope: !92, inlinedAt: !110)
!122 = !DILocation(line: 351, column: 10, scope: !88, inlinedAt: !123)
!123 = distinct !DILocation(line: 86, column: 20, scope: !40)
!124 = !DILocation(line: 96, column: 26, scope: !40)
!125 = !DILocation(line: 97, column: 26, scope: !40)
!126 = !DILocation(line: 98, column: 26, scope: !40)
!127 = !DILocation(line: 99, column: 26, scope: !40)
!128 = !DILocation(line: 101, column: 25, scope: !40)
!129 = !DILocation(line: 102, column: 25, scope: !40)
!130 = !DILocation(line: 103, column: 25, scope: !40)
!131 = !DILocation(line: 104, column: 25, scope: !40)
!132 = !DILocation(line: 106, column: 23, scope: !40)
!133 = !DILocation(line: 107, column: 23, scope: !40)
!134 = !DILocation(line: 108, column: 23, scope: !40)
!135 = !DILocation(line: 109, column: 23, scope: !40)
!136 = !DILocation(line: 285, column: 49, scope: !137, inlinedAt: !138)
!137 = distinct !DISubprogram(name: "exp2f", scope: !89, file: !89, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!138 = distinct !DILocation(line: 110, column: 15, scope: !40)
!139 = !DILocation(line: 285, column: 49, scope: !137, inlinedAt: !140)
!140 = distinct !DILocation(line: 111, column: 15, scope: !40)
!141 = !DILocation(line: 285, column: 49, scope: !137, inlinedAt: !142)
!142 = distinct !DILocation(line: 112, column: 15, scope: !40)
!143 = !DILocation(line: 285, column: 49, scope: !137, inlinedAt: !144)
!144 = distinct !DILocation(line: 113, column: 15, scope: !40)
!145 = !DILocation(line: 1007, column: 10, scope: !146, inlinedAt: !148)
!146 = distinct !DISubprogram(name: "__float2half_rn", scope: !147, file: !147, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!147 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!148 = distinct !DILocation(line: 1077, column: 18, scope: !149, inlinedAt: !150)
!149 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !147, file: !147, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!150 = distinct !DILocation(line: 1295, column: 23, scope: !151, inlinedAt: !152)
!151 = distinct !DISubprogram(name: "__float22half2_rn", scope: !147, file: !147, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!152 = distinct !DILocation(line: 114, column: 29, scope: !40)
!153 = !{!154, !156}
!154 = distinct !{!154, !155, !"_ZL17__floats2half2_rnff: %agg.result"}
!155 = distinct !{!155, !"_ZL17__floats2half2_rnff"}
!156 = distinct !{!156, !157, !"_ZL17__float22half2_rn6float2: %agg.result"}
!157 = distinct !{!157, !"_ZL17__float22half2_rn6float2"}
!158 = !DILocation(line: 1007, column: 10, scope: !146, inlinedAt: !159)
!159 = distinct !DILocation(line: 1077, column: 38, scope: !149, inlinedAt: !150)
!160 = !DILocation(line: 1007, column: 10, scope: !146, inlinedAt: !161)
!161 = distinct !DILocation(line: 1077, column: 18, scope: !149, inlinedAt: !162)
!162 = distinct !DILocation(line: 1295, column: 23, scope: !151, inlinedAt: !163)
!163 = distinct !DILocation(line: 115, column: 29, scope: !40)
!164 = !{!165, !167}
!165 = distinct !{!165, !166, !"_ZL17__floats2half2_rnff: %agg.result"}
!166 = distinct !{!166, !"_ZL17__floats2half2_rnff"}
!167 = distinct !{!167, !168, !"_ZL17__float22half2_rn6float2: %agg.result"}
!168 = distinct !{!168, !"_ZL17__float22half2_rn6float2"}
!169 = !DILocation(line: 1007, column: 10, scope: !146, inlinedAt: !170)
!170 = distinct !DILocation(line: 1077, column: 38, scope: !149, inlinedAt: !162)
!171 = !DILocation(line: 116, column: 36, scope: !40)
!172 = !DILocation(line: 1082, column: 16, scope: !173, inlinedAt: !174)
!173 = distinct !DISubprogram(name: "__half2float", scope: !147, file: !147, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!174 = distinct !DILocation(line: 136, column: 55, scope: !175, inlinedAt: !176)
!175 = distinct !DISubprogram(name: "operator float", scope: !147, file: !147, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!176 = distinct !DILocation(line: 120, column: 52, scope: !40)
!177 = !DILocation(line: 120, column: 42, scope: !40)
!178 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !179)
!179 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !180)
!180 = distinct !DILocation(line: 123, column: 7, scope: !40)
!181 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !179)
!182 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !179)
!183 = !DILocation(line: 126, column: 54, scope: !40)
!184 = !DILocation(line: 126, column: 40, scope: !40)
!185 = !DILocation(line: 133, column: 135, scope: !40)
!186 = !DILocation(line: 133, column: 220, scope: !40)
!187 = !DILocation(line: 133, column: 141, scope: !40)
!188 = !DILocation(line: 133, column: 226, scope: !40)
!189 = !DILocation(line: 133, column: 26, scope: !40)
!190 = !DILocation(line: 133, column: 269, scope: !40)
!191 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !192)
!192 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !193)
!193 = distinct !DILocation(line: 135, column: 7, scope: !40)
!194 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !192)
!195 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !192)
!196 = !DILocation(line: 138, column: 193, scope: !40)
!197 = !DILocation(line: 138, column: 65, scope: !40)
!198 = !DILocation(line: 138, column: 46, scope: !40)
!199 = !DILocation(line: 143, column: 46, scope: !40)
!200 = !DILocation(line: 122, column: 40, scope: !40)
!201 = !DILocation(line: 1018, column: 9, scope: !92, inlinedAt: !202)
!202 = distinct !DILocation(line: 149, column: 40, scope: !40)
!203 = !DILocation(line: 0, scope: !40)
!204 = !DILocation(line: 171, column: 37, scope: !95, inlinedAt: !205)
!205 = distinct !DILocation(line: 990, column: 14, scope: !97, inlinedAt: !206)
!206 = distinct !DILocation(line: 1019, column: 11, scope: !92, inlinedAt: !202)
!207 = !DILocation(line: 171, column: 10, scope: !95, inlinedAt: !205)
!208 = !DILocation(line: 991, column: 20, scope: !97, inlinedAt: !206)
!209 = !DILocation(line: 992, column: 36, scope: !97, inlinedAt: !206)
!210 = !DILocation(line: 992, column: 17, scope: !97, inlinedAt: !206)
!211 = !DILocation(line: 992, column: 11, scope: !97, inlinedAt: !206)
!212 = !DILocation(line: 993, column: 43, scope: !97, inlinedAt: !206)
!213 = !DILocation(line: 993, column: 10, scope: !97, inlinedAt: !206)
!214 = !DILocation(line: 1020, column: 14, scope: !92, inlinedAt: !202)
!215 = !DILocation(line: 149, column: 38, scope: !40)
!216 = !DILocation(line: 1018, column: 9, scope: !92, inlinedAt: !217)
!217 = distinct !DILocation(line: 150, column: 40, scope: !40)
!218 = !DILocation(line: 171, column: 37, scope: !95, inlinedAt: !219)
!219 = distinct !DILocation(line: 990, column: 14, scope: !97, inlinedAt: !220)
!220 = distinct !DILocation(line: 1019, column: 11, scope: !92, inlinedAt: !217)
!221 = !DILocation(line: 171, column: 10, scope: !95, inlinedAt: !219)
!222 = !DILocation(line: 991, column: 20, scope: !97, inlinedAt: !220)
!223 = !DILocation(line: 992, column: 36, scope: !97, inlinedAt: !220)
!224 = !DILocation(line: 992, column: 17, scope: !97, inlinedAt: !220)
!225 = !DILocation(line: 992, column: 11, scope: !97, inlinedAt: !220)
!226 = !DILocation(line: 993, column: 43, scope: !97, inlinedAt: !220)
!227 = !DILocation(line: 993, column: 10, scope: !97, inlinedAt: !220)
!228 = !DILocation(line: 1020, column: 14, scope: !92, inlinedAt: !217)
!229 = !DILocation(line: 150, column: 38, scope: !40)
!230 = !DILocation(line: 154, column: 23, scope: !40)
!231 = !DILocation(line: 156, column: 24, scope: !40)
!232 = !DILocation(line: 157, column: 24, scope: !40)
!233 = !DILocation(line: 158, column: 24, scope: !40)
!234 = !DILocation(line: 159, column: 24, scope: !40)
!235 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !236)
!236 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !237)
!237 = distinct !DILocation(line: 162, column: 5, scope: !40)
!238 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !236)
!239 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !236)
!240 = !DILocation(line: 1007, column: 10, scope: !146, inlinedAt: !241)
!241 = distinct !DILocation(line: 1077, column: 18, scope: !149, inlinedAt: !242)
!242 = distinct !DILocation(line: 1295, column: 23, scope: !151, inlinedAt: !243)
!243 = distinct !DILocation(line: 167, column: 29, scope: !40)
!244 = !{!245, !247}
!245 = distinct !{!245, !246, !"_ZL17__floats2half2_rnff: %agg.result"}
!246 = distinct !{!246, !"_ZL17__floats2half2_rnff"}
!247 = distinct !{!247, !248, !"_ZL17__float22half2_rn6float2: %agg.result"}
!248 = distinct !{!248, !"_ZL17__float22half2_rn6float2"}
!249 = !DILocation(line: 1007, column: 10, scope: !146, inlinedAt: !250)
!250 = distinct !DILocation(line: 1077, column: 38, scope: !149, inlinedAt: !242)
!251 = !DILocation(line: 596, column: 67, scope: !252, inlinedAt: !253)
!252 = distinct !DISubprogram(name: "__half2", scope: !147, file: !147, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!253 = distinct !DILocation(line: 1077, column: 10, scope: !149, inlinedAt: !242)
!254 = !DILocation(line: 596, column: 73, scope: !252, inlinedAt: !253)
!255 = !DILocation(line: 1007, column: 10, scope: !146, inlinedAt: !256)
!256 = distinct !DILocation(line: 1077, column: 18, scope: !149, inlinedAt: !257)
!257 = distinct !DILocation(line: 1295, column: 23, scope: !151, inlinedAt: !258)
!258 = distinct !DILocation(line: 168, column: 29, scope: !40)
!259 = !{!260, !262}
!260 = distinct !{!260, !261, !"_ZL17__floats2half2_rnff: %agg.result"}
!261 = distinct !{!261, !"_ZL17__floats2half2_rnff"}
!262 = distinct !{!262, !263, !"_ZL17__float22half2_rn6float2: %agg.result"}
!263 = distinct !{!263, !"_ZL17__float22half2_rn6float2"}
!264 = !DILocation(line: 1007, column: 10, scope: !146, inlinedAt: !265)
!265 = distinct !DILocation(line: 1077, column: 38, scope: !149, inlinedAt: !257)
!266 = !DILocation(line: 596, column: 67, scope: !252, inlinedAt: !267)
!267 = distinct !DILocation(line: 1077, column: 10, scope: !149, inlinedAt: !257)
!268 = !DILocation(line: 596, column: 73, scope: !252, inlinedAt: !267)
!269 = !DILocation(line: 169, column: 40, scope: !40)
!270 = !DILocation(line: 170, column: 143, scope: !40)
!271 = !DILocation(line: 170, column: 24, scope: !40)
!272 = !DILocation(line: 170, column: 223, scope: !40)
!273 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !274)
!274 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !275)
!275 = distinct !DILocation(line: 172, column: 5, scope: !40)
!276 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !274)
!277 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !274)
!278 = !DILocation(line: 177, column: 48, scope: !40)
!279 = !DILocation(line: 177, column: 67, scope: !40)
!280 = !DILocation(line: 179, column: 24, scope: !40)
!281 = !DILocation(line: 179, column: 160, scope: !40)
!282 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !283)
!283 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !284)
!284 = distinct !DILocation(line: 182, column: 7, scope: !40)
!285 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !283)
!286 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !283)
!287 = !DILocation(line: 47, column: 88, scope: !40)
!288 = !DILocation(line: 48, column: 72, scope: !40)
!289 = !DILocation(line: 48, column: 44, scope: !40)
!290 = !DILocation(line: 48, column: 9, scope: !40)
!291 = !DILocation(line: 185, column: 1, scope: !40)
