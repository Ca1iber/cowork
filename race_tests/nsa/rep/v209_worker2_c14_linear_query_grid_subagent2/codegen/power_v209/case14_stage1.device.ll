; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v209_worker2_c14_linear_query_grid_subagent2/codegen/power_v209/case14_stage1.device.cpp'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v209_worker2_c14_linear_query_grid_subagent2/codegen/power_v209/case14_stage1.device.cpp"
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
  %0 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !range !29
  %mul = shl nsw i32 %0, 10
  %1 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !42
  %mul8 = shl nuw nsw i32 %1, 3
  %add = add nuw nsw i32 %mul8, %mul
  %mul21 = and i32 %mul8, 8128
  %xor748 = and i32 %mul8, 56
  %call24.masked = and i32 %1, 1016
  %mul26 = xor i32 %xor748, %call24.masked
  %and30 = lshr i32 %1, 3
  %shr31 = and i32 %and30, 1
  %2 = zext nneg i32 %add to i64, !dbg !43
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %2, !dbg !44
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %add.ptr, align 16, !dbg !45
  %qk_fetch.sroa.10.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !45
  %qk_fetch.sroa.10.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0.add.ptr.sroa_idx, align 8, !dbg !45
  %3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul26, !dbg !46
  %4 = getelementptr inbounds %struct.__half, ptr addrspace(3) %3, i32 %mul21, !dbg !46
  %add.ptr36.idx = shl nuw nsw i32 %shr31, 3, !dbg !46
  %add.ptr36 = getelementptr inbounds i8, ptr addrspace(3) %4, i32 %add.ptr36.idx, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr36, align 8, !dbg !47
  %xor32.1 = shl nuw nsw i32 %shr31, 3, !dbg !46
  %add.ptr36.idx.1 = xor i32 %xor32.1, 8, !dbg !46
  %add.ptr36.1 = getelementptr inbounds i8, ptr addrspace(3) %4, i32 %add.ptr36.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.10.0.copyload, ptr addrspace(3) %add.ptr36.1, align 8, !dbg !47
  %5 = add nuw nsw i64 %2, 512, !dbg !48
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %5, !dbg !44
  %qk_fetch.sroa.0.0.copyload1038 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %qk_fetch.sroa.10.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %qk_fetch.sroa.10.0.copyload1041 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0.add.ptr.1.sroa_idx, align 8, !dbg !45
  %6 = getelementptr inbounds i8, ptr addrspace(3) %4, i32 1024, !dbg !46
  %add.ptr36.1830 = getelementptr inbounds i8, ptr addrspace(3) %6, i32 %add.ptr36.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1038, ptr addrspace(3) %add.ptr36.1830, align 8, !dbg !47
  %add.ptr36.1.1 = getelementptr inbounds i8, ptr addrspace(3) %6, i32 %add.ptr36.idx, !dbg !46
  store i64 %qk_fetch.sroa.10.0.copyload1041, ptr addrspace(3) %add.ptr36.1.1, align 8, !dbg !47
  fence syncscope("warp") release, !dbg !49
  tail call void @llvm.mxc.barrier.warp(), !dbg !55
  fence syncscope("warp") acquire, !dbg !56
  %and45 = shl nuw nsw i32 %1, 6
  %mul46 = and i32 %and45, 960
  %shr49 = lshr i32 %1, 5
  %and52 = and i32 %1, 7
  %and57 = lshr i32 %1, 4
  %7 = xor i32 %and30, %and57
  %xor62747 = xor i32 %7, %1
  %xor65 = shl nuw nsw i32 %xor62747, 2
  %mul66 = and i32 %xor65, 4
  %xor53 = xor i32 %shr49, %and52, !dbg !57
  %mul54 = shl nuw nsw i32 %xor53, 3, !dbg !58
  %add55 = add nuw nsw i32 %mul54, %mul46, !dbg !59
  %add67 = or disjoint i32 %add55, %mul66, !dbg !60
  %add.ptr69 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add67, !dbg !61
  %8 = load <4 x half>, ptr addrspace(3) %add.ptr69, align 8, !dbg !62
  %add50.1 = add nuw nsw i32 %shr49, 2, !dbg !63
  %xor53.1 = xor i32 %add50.1, %and52, !dbg !57
  %mul54.1 = shl nuw nsw i32 %xor53.1, 3, !dbg !58
  %add55.1 = add nuw nsw i32 %mul54.1, %mul46, !dbg !59
  %add67.1 = or disjoint i32 %add55.1, %mul66, !dbg !60
  %add.ptr69.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add67.1, !dbg !61
  %9 = load <4 x half>, ptr addrspace(3) %add.ptr69.1, align 8, !dbg !62
  %add50.2 = add nuw nsw i32 %shr49, 4, !dbg !63
  %xor53.2 = xor i32 %add50.2, %and52, !dbg !57
  %mul54.2 = shl nuw nsw i32 %xor53.2, 3, !dbg !58
  %add55.2 = add nuw nsw i32 %mul54.2, %mul46, !dbg !59
  %add67.2 = or disjoint i32 %add55.2, %mul66, !dbg !60
  %add.ptr69.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add67.2, !dbg !61
  %10 = load <4 x half>, ptr addrspace(3) %add.ptr69.2, align 8, !dbg !62
  %add50.3 = add nuw nsw i32 %shr49, 6, !dbg !63
  %xor53.3 = xor i32 %add50.3, %and52, !dbg !57
  %mul54.3 = shl nuw nsw i32 %xor53.3, 3, !dbg !58
  %add55.3 = add nuw nsw i32 %mul54.3, %mul46, !dbg !59
  %add67.3 = or disjoint i32 %add55.3, %mul66, !dbg !60
  %add.ptr69.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add67.3, !dbg !61
  %11 = load <4 x half>, ptr addrspace(3) %add.ptr69.3, align 8, !dbg !62
  %idxprom = zext nneg i32 %0 to i64, !dbg !64
  %arrayidx92 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %idxprom, !dbg !64
  %12 = load i32, ptr addrspace(1) %arrayidx92, align 4, !dbg !64, !tbaa !30
  %mul93 = shl nsw i32 %12, 4, !dbg !65
  %cmp94 = icmp sgt i32 %12, -1, !dbg !66
  br i1 %cmp94, label %land.lhs.true, label %if.end496, !dbg !67

land.lhs.true:                                    ; preds = %entry
  %and96 = lshr i32 %0, 1, !dbg !68
  %shr97 = and i32 %and96, 511, !dbg !68
  %cmp98.not = icmp sgt i32 %mul93, %shr97, !dbg !69
  br i1 %cmp98.not, label %if.end496, label %if.then, !dbg !70

if.then:                                          ; preds = %land.lhs.true
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %13 = lshr i32 %0, 10
  %shr104 = zext nneg i32 %13 to i64
  %mul105 = shl nuw nsw i64 %shr104, 16
  %14 = shl nuw nsw i32 %1, 4
  %15 = and i32 %14, 16256
  %mul112 = zext nneg i32 %15 to i64
  %conv114 = zext nneg i32 %mul93 to i64
  %add108 = or disjoint i64 %mul105, %mul112
  %16 = shl i32 %0, 6
  %17 = and i32 %16, 64
  %mul120 = zext nneg i32 %17 to i64
  %mul125 = zext nneg i32 %xor748 to i64
  %add113 = or disjoint i64 %add108, %mul120
  %add116 = or disjoint i64 %add113, %mul125
  %18 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %add116, !dbg !76
  %.idx = shl nuw nsw i64 %conv114, 8, !dbg !76
  %19 = getelementptr inbounds i8, ptr addrspace(4) %18, i64 %.idx, !dbg !76
  %qk_fetch.sroa.0.0.copyload1037 = load i64, ptr addrspace(4) %19, align 16, !dbg !77
  %qk_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %19, i64 8, !dbg !77
  %qk_fetch.sroa.10.0.copyload1040 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0..sroa_idx, align 8, !dbg !77
  store i64 %qk_fetch.sroa.0.0.copyload1037, ptr addrspace(3) %add.ptr36, align 8, !dbg !78
  store i64 %qk_fetch.sroa.10.0.copyload1040, ptr addrspace(3) %add.ptr36.1, align 8, !dbg !78
  %add.ptr127.1 = getelementptr inbounds i8, ptr addrspace(4) %19, i64 2048, !dbg !76
  %qk_fetch.sroa.0.0.copyload1039 = load i64, ptr addrspace(4) %add.ptr127.1, align 16, !dbg !77
  %qk_fetch.sroa.10.0.add.ptr127.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %19, i64 2056, !dbg !77
  %qk_fetch.sroa.10.0.copyload1042 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0.add.ptr127.1.sroa_idx, align 8, !dbg !77
  store i64 %qk_fetch.sroa.0.0.copyload1039, ptr addrspace(3) %add.ptr36.1830, align 8, !dbg !78
  store i64 %qk_fetch.sroa.10.0.copyload1042, ptr addrspace(3) %add.ptr36.1.1, align 8, !dbg !78
  fence syncscope("warp") release, !dbg !79
  tail call void @llvm.mxc.barrier.warp(), !dbg !82
  fence syncscope("warp") acquire, !dbg !83
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr69, align 8, !dbg !84
  %20 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %8, <4 x float> zeroinitializer), !dbg !85
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr69.1, align 8, !dbg !84
  %21 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %9, <4 x float> %20), !dbg !85
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr69.2, align 8, !dbg !84
  %22 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %10, <4 x float> %21), !dbg !85
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr69.3, align 8, !dbg !84
  %23 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %11, <4 x float> %22), !dbg !85
  %24 = lshr i32 %1, 2
  %mul219 = and i32 %24, 252
  %add220 = add nuw nsw i32 %mul93, %mul219
  %cmp225.not = icmp sgt i32 %add220, %shr97, !dbg !86
  %scores.sroa.0.0.vec.extract920 = extractelement <4 x float> %23, i64 0
  %spec.select = select i1 %cmp225.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract920, !dbg !87
  %cmp225.not.1.not = icmp slt i32 %add220, %shr97, !dbg !86
  %scores.sroa.0.4.vec.extract927 = extractelement <4 x float> %23, i64 1, !dbg !87
  %condval.0.1 = select i1 %cmp225.not.1.not, float %scores.sroa.0.4.vec.extract927, float 0xFFF0000000000000, !dbg !87
  %add221.2 = or disjoint i32 %add220, 2, !dbg !88
  %cmp225.not.2 = icmp sgt i32 %add221.2, %shr97, !dbg !86
  %scores.sroa.0.8.vec.extract934 = extractelement <4 x float> %23, i64 2, !dbg !87
  %condval.0.2 = select i1 %cmp225.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract934, !dbg !87
  %add221.3 = or disjoint i32 %add220, 3, !dbg !88
  %cmp225.not.3 = icmp sgt i32 %add221.3, %shr97, !dbg !86
  %scores.sroa.0.12.vec.extract941 = extractelement <4 x float> %23, i64 3, !dbg !87
  %condval.0.3 = select i1 %cmp225.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract941, !dbg !87
  %25 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !89
  %26 = tail call contract noundef float @llvm.maxnum.f32(float %25, float %condval.0.1), !dbg !89
  %27 = tail call contract noundef float @llvm.maxnum.f32(float %26, float %condval.0.2), !dbg !89
  %28 = tail call contract noundef float @llvm.maxnum.f32(float %27, float %condval.0.3), !dbg !89
  %29 = bitcast float %28 to i32, !dbg !93
  %30 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !96
  %31 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %30) #10, !dbg !101
  %xor.i.i = xor i32 %31, 32, !dbg !102
  %32 = and i32 %31, -64, !dbg !103
  %and.i.i = add nsw i32 %32, 64, !dbg !103
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !104
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %31, !dbg !105
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !106
  %33 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %29), !dbg !107
  %34 = bitcast i32 %33 to float, !dbg !108
  %35 = tail call contract noundef float @llvm.maxnum.f32(float %28, float %34), !dbg !109
  %36 = bitcast float %35 to i32, !dbg !111
  %37 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !113
  %38 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %37) #10, !dbg !116
  %xor.i.i750 = xor i32 %38, 16, !dbg !117
  %39 = and i32 %38, -64, !dbg !118
  %and.i.i751 = add nsw i32 %39, 64, !dbg !118
  %cmp.not.i.i752 = icmp slt i32 %xor.i.i750, %and.i.i751, !dbg !119
  %cond.i.i753 = select i1 %cmp.not.i.i752, i32 %xor.i.i750, i32 %38, !dbg !120
  %shl.i.i754 = shl i32 %cond.i.i753, 2, !dbg !121
  %40 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i754, i32 %36), !dbg !122
  %41 = bitcast i32 %40 to float, !dbg !123
  %42 = tail call contract noundef float @llvm.maxnum.f32(float %35, float %41), !dbg !124
  %sub = fsub contract float %spec.select, %42, !dbg !126
  %sub271 = fsub contract float %condval.0.1, %42, !dbg !127
  %sub274 = fsub contract float %condval.0.2, %42, !dbg !128
  %sub277 = fsub contract float %condval.0.3, %42, !dbg !129
  %mul282 = fmul contract float %sub, 0x3FC7154760000000, !dbg !130
  %mul286 = fmul contract float %sub271, 0x3FC7154760000000, !dbg !131
  %mul290 = fmul contract float %sub274, 0x3FC7154760000000, !dbg !132
  %mul294 = fmul contract float %sub277, 0x3FC7154760000000, !dbg !133
  %add299 = fadd contract float %mul282, 8.000000e+00, !dbg !134
  %add303 = fadd contract float %mul286, 8.000000e+00, !dbg !135
  %add307 = fadd contract float %mul290, 8.000000e+00, !dbg !136
  %add311 = fadd contract float %mul294, 8.000000e+00, !dbg !137
  %cmp.i.i = fcmp contract olt float %add299, -1.260000e+02, !dbg !138
  %cond.i.i755 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !138
  %add.i.i = fadd contract float %add299, %cond.i.i755, !dbg !138
  %43 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !138
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !138
  %mul.i.i = fmul contract float %cond2.i.i, %43, !dbg !138
  %cmp.i.i756 = fcmp contract olt float %add303, -1.260000e+02, !dbg !141
  %cond.i.i757 = select contract i1 %cmp.i.i756, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i758 = fadd contract float %add303, %cond.i.i757, !dbg !141
  %44 = tail call contract float @llvm.exp2.f32(float %add.i.i758), !dbg !141
  %cond2.i.i759 = select contract i1 %cmp.i.i756, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %mul.i.i760 = fmul contract float %cond2.i.i759, %44, !dbg !141
  %cmp.i.i761 = fcmp contract olt float %add307, -1.260000e+02, !dbg !143
  %cond.i.i762 = select contract i1 %cmp.i.i761, float 6.400000e+01, float 0.000000e+00, !dbg !143
  %add.i.i763 = fadd contract float %add307, %cond.i.i762, !dbg !143
  %45 = tail call contract float @llvm.exp2.f32(float %add.i.i763), !dbg !143
  %cond2.i.i764 = select contract i1 %cmp.i.i761, float 0x3BF0000000000000, float 1.000000e+00, !dbg !143
  %mul.i.i765 = fmul contract float %cond2.i.i764, %45, !dbg !143
  %cmp.i.i766 = fcmp contract olt float %add311, -1.260000e+02, !dbg !145
  %cond.i.i767 = select contract i1 %cmp.i.i766, float 6.400000e+01, float 0.000000e+00, !dbg !145
  %add.i.i768 = fadd contract float %add311, %cond.i.i767, !dbg !145
  %46 = tail call contract float @llvm.exp2.f32(float %add.i.i768), !dbg !145
  %cond2.i.i769 = select contract i1 %cmp.i.i766, float 0x3BF0000000000000, float 1.000000e+00, !dbg !145
  %mul.i.i770 = fmul contract float %cond2.i.i769, %46, !dbg !145
  %47 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !147
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !147, !noalias !155
  %48 = fptrunc float %mul.i.i to half, !dbg !147
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %47), !dbg !147, !noalias !155
  %49 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !160, !noalias !155
  %50 = fptrunc float %mul.i.i760 to half, !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %49), !dbg !160, !noalias !155
  %51 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !162
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !162, !noalias !166
  %52 = fptrunc float %mul.i.i765 to half, !dbg !162
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %51), !dbg !162, !noalias !166
  %53 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !166
  %54 = fptrunc float %mul.i.i770 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %53), !dbg !171, !noalias !166
  %55 = insertelement <4 x half> poison, half %48, i64 0, !dbg !173
  %56 = insertelement <4 x half> %55, half %50, i64 1, !dbg !173
  %57 = insertelement <4 x half> %56, half %52, i64 2, !dbg !173
  %58 = insertelement <4 x half> %57, half %54, i64 3, !dbg !173
  %conv.i.i = fpext half %48 to float, !dbg !174
  %add345 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !179
  %conv.i.i.1 = fpext half %50 to float, !dbg !174
  %add345.1 = fadd contract float %add345, %conv.i.i.1, !dbg !179
  %conv.i.i.2 = fpext half %52 to float, !dbg !174
  %add345.2 = fadd contract float %add345.1, %conv.i.i.2, !dbg !179
  %conv.i.i.3 = fpext half %54 to float, !dbg !174
  %add345.3 = fadd contract float %add345.2, %conv.i.i.3, !dbg !179
  fence syncscope("warp") release, !dbg !180
  tail call void @llvm.mxc.barrier.warp(), !dbg !183
  fence syncscope("warp") acquire, !dbg !184
  %59 = shl nuw nsw i32 %1, 5
  %60 = and i32 %59, 32512
  %mul365 = zext nneg i32 %60 to i64
  %add366 = or disjoint i64 %mul105, %mul365
  %add369 = or disjoint i64 %add366, %mul120
  %add372 = or disjoint i64 %add369, %mul125
  %61 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add372, !dbg !185
  %62 = getelementptr inbounds i8, ptr addrspace(4) %61, i64 %.idx, !dbg !185
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %62, align 16, !dbg !186
  %v_fetch.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %62, i64 2, !dbg !186
  %v_fetch.sroa.4.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.4.0..sroa_idx, align 2, !dbg !186, !tbaa !30
  %v_fetch.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %62, i64 4, !dbg !186
  %v_fetch.sroa.5.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.5.0..sroa_idx, align 4, !dbg !186
  %v_fetch.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %62, i64 6, !dbg !186
  %v_fetch.sroa.6.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.6.0..sroa_idx, align 2, !dbg !186, !tbaa !30
  %v_fetch.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %62, i64 8, !dbg !186
  %v_fetch.sroa.7.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.7.0..sroa_idx, align 8, !dbg !186
  %v_fetch.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %62, i64 10, !dbg !186
  %v_fetch.sroa.8.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.8.0..sroa_idx, align 2, !dbg !186, !tbaa !30
  %v_fetch.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %62, i64 12, !dbg !186
  %v_fetch.sroa.9.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.9.0..sroa_idx, align 4, !dbg !186
  %v_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %62, i64 14, !dbg !186
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx, align 2, !dbg !186, !tbaa !30
  %add.ptr383.1 = getelementptr inbounds i8, ptr addrspace(4) %62, i64 256, !dbg !185
  %v_fetch.sroa.11.16.copyload = load i16, ptr addrspace(4) %add.ptr383.1, align 16, !dbg !186
  %v_fetch.sroa.13.16.add.ptr383.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %62, i64 258, !dbg !186
  %v_fetch.sroa.13.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.13.16.add.ptr383.1.sroa_idx, align 2, !dbg !186, !tbaa !30
  %v_fetch.sroa.14.16.add.ptr383.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %62, i64 260, !dbg !186
  %v_fetch.sroa.14.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.16.add.ptr383.1.sroa_idx, align 4, !dbg !186
  %v_fetch.sroa.15.16.add.ptr383.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %62, i64 262, !dbg !186
  %v_fetch.sroa.15.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.15.16.add.ptr383.1.sroa_idx, align 2, !dbg !186, !tbaa !30
  %v_fetch.sroa.16.16.add.ptr383.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %62, i64 264, !dbg !186
  %v_fetch.sroa.16.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.16.16.add.ptr383.1.sroa_idx, align 8, !dbg !186
  %v_fetch.sroa.17.16.add.ptr383.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %62, i64 266, !dbg !186
  %v_fetch.sroa.17.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.17.16.add.ptr383.1.sroa_idx, align 2, !dbg !186, !tbaa !30
  %v_fetch.sroa.18.16.add.ptr383.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %62, i64 268, !dbg !186
  %v_fetch.sroa.18.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.16.add.ptr383.1.sroa_idx, align 4, !dbg !186
  %v_fetch.sroa.19.16.add.ptr383.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %62, i64 270, !dbg !186
  %v_fetch.sroa.19.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.19.16.add.ptr383.1.sroa_idx, align 2, !dbg !186, !tbaa !30
  %and413 = shl nuw nsw i32 %1, 1
  %mul414 = and i32 %and413, 14
  %call418.mask = and i32 %1, 16
  %and426 = lshr i32 %1, 1
  %shr427 = and i32 %and426, 3
  %xor428 = xor i32 %shr427, %and57
  %mul436 = and i32 %24, 2
  %xor421741 = shl nuw nsw i32 %mul414, 4, !dbg !187
  %mul422 = or disjoint i32 %xor421741, %call418.mask, !dbg !187
  %mul431 = shl nuw nsw i32 %xor428, 2, !dbg !188
  %add432 = add nuw nsw i32 %mul422, %mul431, !dbg !189
  %add437 = or disjoint i32 %add432, %mul436, !dbg !190
  %add.ptr439 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add437, !dbg !191
  %v_column.sroa.18.0.insert.ext = zext i16 %v_fetch.sroa.11.16.copyload to i32, !dbg !192
  %v_column.sroa.18.0.insert.shift = shl nuw i32 %v_column.sroa.18.0.insert.ext, 16, !dbg !192
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !192
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.18.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !192
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr439, align 4, !dbg !192, !tbaa !30
  %add415.1 = shl nuw nsw i32 %mul414, 4, !dbg !187
  %xor421741.1 = or disjoint i32 %add415.1, %call418.mask, !dbg !187
  %mul422.1 = or disjoint i32 %xor421741.1, 256, !dbg !187
  %xor430.1 = shl nuw nsw i32 %xor428, 2, !dbg !188
  %mul431.1 = xor i32 %xor430.1, 4, !dbg !188
  %add432.1 = add nuw nsw i32 %mul422.1, %mul431.1, !dbg !189
  %add437.1 = or disjoint i32 %add432.1, %mul436, !dbg !190
  %add.ptr439.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add437.1, !dbg !191
  %v_column.sroa.18.0.insert.ext877 = zext i16 %v_fetch.sroa.13.16.copyload to i32, !dbg !192
  %v_column.sroa.18.0.insert.shift878 = shl nuw i32 %v_column.sroa.18.0.insert.ext877, 16, !dbg !192
  %v_column.sroa.0.0.insert.ext849 = zext i16 %v_fetch.sroa.4.0.copyload to i32, !dbg !192
  %v_column.sroa.0.0.insert.insert851 = or disjoint i32 %v_column.sroa.18.0.insert.shift878, %v_column.sroa.0.0.insert.ext849, !dbg !192
  store i32 %v_column.sroa.0.0.insert.insert851, ptr addrspace(3) %add.ptr439.1, align 4, !dbg !192, !tbaa !30
  %add415.2 = shl nuw nsw i32 %mul414, 4, !dbg !187
  %xor421741.2 = or disjoint i32 %add415.2, %call418.mask, !dbg !187
  %mul422.2 = or disjoint i32 %xor421741.2, 512, !dbg !187
  %xor430.2 = shl nuw nsw i32 %xor428, 2, !dbg !188
  %mul431.2 = xor i32 %xor430.2, 8, !dbg !188
  %add432.2 = add nuw nsw i32 %mul422.2, %mul431.2, !dbg !189
  %add437.2 = or disjoint i32 %add432.2, %mul436, !dbg !190
  %add.ptr439.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add437.2, !dbg !191
  %v_column.sroa.18.0.insert.ext882 = zext i16 %v_fetch.sroa.14.16.copyload to i32, !dbg !192
  %v_column.sroa.18.0.insert.shift883 = shl nuw i32 %v_column.sroa.18.0.insert.ext882, 16, !dbg !192
  %v_column.sroa.0.0.insert.ext853 = zext i16 %v_fetch.sroa.5.0.copyload to i32, !dbg !192
  %v_column.sroa.0.0.insert.insert855 = or disjoint i32 %v_column.sroa.18.0.insert.shift883, %v_column.sroa.0.0.insert.ext853, !dbg !192
  store i32 %v_column.sroa.0.0.insert.insert855, ptr addrspace(3) %add.ptr439.2, align 4, !dbg !192, !tbaa !30
  %add415.3 = shl nuw nsw i32 %mul414, 4, !dbg !187
  %xor421741.3 = or disjoint i32 %add415.3, %call418.mask, !dbg !187
  %mul422.3 = or disjoint i32 %xor421741.3, 768, !dbg !187
  %xor430.3 = shl nuw nsw i32 %xor428, 2, !dbg !188
  %mul431.3 = xor i32 %xor430.3, 12, !dbg !188
  %add432.3 = add nuw nsw i32 %mul422.3, %mul431.3, !dbg !189
  %add437.3 = or disjoint i32 %add432.3, %mul436, !dbg !190
  %add.ptr439.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add437.3, !dbg !191
  %v_column.sroa.18.0.insert.ext887 = zext i16 %v_fetch.sroa.15.16.copyload to i32, !dbg !192
  %v_column.sroa.18.0.insert.shift888 = shl nuw i32 %v_column.sroa.18.0.insert.ext887, 16, !dbg !192
  %v_column.sroa.0.0.insert.ext857 = zext i16 %v_fetch.sroa.6.0.copyload to i32, !dbg !192
  %v_column.sroa.0.0.insert.insert859 = or disjoint i32 %v_column.sroa.18.0.insert.shift888, %v_column.sroa.0.0.insert.ext857, !dbg !192
  store i32 %v_column.sroa.0.0.insert.insert859, ptr addrspace(3) %add.ptr439.3, align 4, !dbg !192, !tbaa !30
  %add417.4 = shl nuw nsw i32 %mul414, 4, !dbg !187
  %xor421741.4 = or disjoint i32 %add417.4, 16, !dbg !187
  %mul422.4 = xor i32 %xor421741.4, %call418.mask, !dbg !187
  %add432.4 = add nuw nsw i32 %mul422.4, %mul431, !dbg !189
  %add437.4 = or disjoint i32 %add432.4, %mul436, !dbg !190
  %add.ptr439.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add437.4, !dbg !191
  %v_column.sroa.18.0.insert.ext892 = zext i16 %v_fetch.sroa.16.16.copyload to i32, !dbg !192
  %v_column.sroa.18.0.insert.shift893 = shl nuw i32 %v_column.sroa.18.0.insert.ext892, 16, !dbg !192
  %v_column.sroa.0.0.insert.ext861 = zext i16 %v_fetch.sroa.7.0.copyload to i32, !dbg !192
  %v_column.sroa.0.0.insert.insert863 = or disjoint i32 %v_column.sroa.18.0.insert.shift893, %v_column.sroa.0.0.insert.ext861, !dbg !192
  store i32 %v_column.sroa.0.0.insert.insert863, ptr addrspace(3) %add.ptr439.4, align 4, !dbg !192, !tbaa !30
  %add417.5 = shl nuw nsw i32 %mul414, 4, !dbg !187
  %xor421741.5 = or disjoint i32 %add417.5, 272, !dbg !187
  %mul422.5 = xor i32 %xor421741.5, %call418.mask, !dbg !187
  %add432.5 = add nuw nsw i32 %mul422.5, %mul431.1, !dbg !189
  %add437.5 = or disjoint i32 %add432.5, %mul436, !dbg !190
  %add.ptr439.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add437.5, !dbg !191
  %v_column.sroa.18.0.insert.ext897 = zext i16 %v_fetch.sroa.17.16.copyload to i32, !dbg !192
  %v_column.sroa.18.0.insert.shift898 = shl nuw i32 %v_column.sroa.18.0.insert.ext897, 16, !dbg !192
  %v_column.sroa.0.0.insert.ext865 = zext i16 %v_fetch.sroa.8.0.copyload to i32, !dbg !192
  %v_column.sroa.0.0.insert.insert867 = or disjoint i32 %v_column.sroa.18.0.insert.shift898, %v_column.sroa.0.0.insert.ext865, !dbg !192
  store i32 %v_column.sroa.0.0.insert.insert867, ptr addrspace(3) %add.ptr439.5, align 4, !dbg !192, !tbaa !30
  %add417.6 = shl nuw nsw i32 %mul414, 4, !dbg !187
  %xor421741.6 = or disjoint i32 %add417.6, 528, !dbg !187
  %mul422.6 = xor i32 %xor421741.6, %call418.mask, !dbg !187
  %add432.6 = add nuw nsw i32 %mul422.6, %mul431.2, !dbg !189
  %add437.6 = or disjoint i32 %add432.6, %mul436, !dbg !190
  %add.ptr439.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add437.6, !dbg !191
  %v_column.sroa.18.0.insert.ext902 = zext i16 %v_fetch.sroa.18.16.copyload to i32, !dbg !192
  %v_column.sroa.18.0.insert.shift903 = shl nuw i32 %v_column.sroa.18.0.insert.ext902, 16, !dbg !192
  %v_column.sroa.0.0.insert.ext869 = zext i16 %v_fetch.sroa.9.0.copyload to i32, !dbg !192
  %v_column.sroa.0.0.insert.insert871 = or disjoint i32 %v_column.sroa.18.0.insert.shift903, %v_column.sroa.0.0.insert.ext869, !dbg !192
  store i32 %v_column.sroa.0.0.insert.insert871, ptr addrspace(3) %add.ptr439.6, align 4, !dbg !192, !tbaa !30
  %add417.7 = shl nuw nsw i32 %mul414, 4, !dbg !187
  %xor421741.7 = or disjoint i32 %add417.7, 784, !dbg !187
  %mul422.7 = xor i32 %xor421741.7, %call418.mask, !dbg !187
  %add432.7 = add nuw nsw i32 %mul422.7, %mul431.3, !dbg !189
  %add437.7 = or disjoint i32 %add432.7, %mul436, !dbg !190
  %add.ptr439.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add437.7, !dbg !191
  %v_column.sroa.18.0.insert.ext907 = zext i16 %v_fetch.sroa.19.16.copyload to i32, !dbg !192
  %v_column.sroa.18.0.insert.shift908 = shl nuw i32 %v_column.sroa.18.0.insert.ext907, 16, !dbg !192
  %v_column.sroa.0.0.insert.ext873 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !192
  %v_column.sroa.0.0.insert.insert875 = or disjoint i32 %v_column.sroa.18.0.insert.shift908, %v_column.sroa.0.0.insert.ext873, !dbg !192
  store i32 %v_column.sroa.0.0.insert.insert875, ptr addrspace(3) %add.ptr439.7, align 4, !dbg !192, !tbaa !30
  fence syncscope("warp") release, !dbg !193
  tail call void @llvm.mxc.barrier.warp(), !dbg !196
  fence syncscope("warp") acquire, !dbg !197
  %mul449 = and i32 %14, 48
  %shr454 = and i32 %24, 3
  %63 = or disjoint i32 %mul449, %shr454
  %and465 = and i32 %1, 3
  %64 = xor i32 %and57, %and465
  %xor459740 = shl nuw nsw i32 %63, 4, !dbg !198
  %mul460 = xor i32 %xor459740, %call418.mask, !dbg !198
  %65 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul460, !dbg !199
  %add.ptr470.idx = shl nuw nsw i32 %64, 3, !dbg !199
  %add.ptr470 = getelementptr inbounds i8, ptr addrspace(3) %65, i32 %add.ptr470.idx, !dbg !199
  %66 = load <4 x half>, ptr addrspace(3) %add.ptr470, align 8, !dbg !200
  %add455.1 = shl nuw nsw i32 %63, 4, !dbg !198
  %xor459740.1 = or disjoint i32 %add455.1, 64, !dbg !198
  %mul460.1 = xor i32 %xor459740.1, %call418.mask, !dbg !198
  %67 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul460.1, !dbg !199
  %xor466.1 = shl nuw nsw i32 %64, 3, !dbg !199
  %add.ptr470.idx.1 = xor i32 %xor466.1, 8, !dbg !199
  %add.ptr470.1 = getelementptr inbounds i8, ptr addrspace(3) %67, i32 %add.ptr470.idx.1, !dbg !199
  %68 = load <4 x half>, ptr addrspace(3) %add.ptr470.1, align 8, !dbg !200
  %add455.2 = shl nuw nsw i32 %63, 4, !dbg !198
  %xor459740.2 = or disjoint i32 %add455.2, 128, !dbg !198
  %mul460.2 = xor i32 %xor459740.2, %call418.mask, !dbg !198
  %69 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul460.2, !dbg !199
  %xor466.2 = shl nuw nsw i32 %64, 3, !dbg !199
  %add.ptr470.idx.2 = xor i32 %xor466.2, 16, !dbg !199
  %add.ptr470.2 = getelementptr inbounds i8, ptr addrspace(3) %69, i32 %add.ptr470.idx.2, !dbg !199
  %70 = load <4 x half>, ptr addrspace(3) %add.ptr470.2, align 8, !dbg !200
  %add455.3 = shl nuw nsw i32 %63, 4, !dbg !198
  %xor459740.3 = or disjoint i32 %add455.3, 192, !dbg !198
  %mul460.3 = xor i32 %xor459740.3, %call418.mask, !dbg !198
  %71 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul460.3, !dbg !199
  %xor466.3 = shl nuw nsw i32 %64, 3, !dbg !199
  %add.ptr470.idx.3 = xor i32 %xor466.3, 24, !dbg !199
  %add.ptr470.3 = getelementptr inbounds i8, ptr addrspace(3) %71, i32 %add.ptr470.idx.3, !dbg !199
  %72 = load <4 x half>, ptr addrspace(3) %add.ptr470.3, align 8, !dbg !200
  %73 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %66, <4 x half> %58, <4 x float> zeroinitializer), !dbg !201
  %74 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %68, <4 x half> %58, <4 x float> zeroinitializer), !dbg !201
  %75 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %70, <4 x half> %58, <4 x float> zeroinitializer), !dbg !201
  %76 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %72, <4 x half> %58, <4 x float> zeroinitializer), !dbg !201
  %add352 = fadd contract float %add345.3, 0.000000e+00, !dbg !202
  br label %if.end496, !dbg !203

if.end496:                                        ; preds = %if.then, %land.lhs.true, %entry
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %land.lhs.true ], [ %73, %if.then ], [ zeroinitializer, %entry ], !dbg !205
  %numerator.sroa.20.0 = phi <4 x float> [ zeroinitializer, %land.lhs.true ], [ %74, %if.then ], [ zeroinitializer, %entry ], !dbg !205
  %numerator.sroa.38.0 = phi <4 x float> [ zeroinitializer, %land.lhs.true ], [ %75, %if.then ], [ zeroinitializer, %entry ], !dbg !205
  %numerator.sroa.56.0 = phi <4 x float> [ zeroinitializer, %land.lhs.true ], [ %76, %if.then ], [ zeroinitializer, %entry ], !dbg !205
  %denominator.sroa.0.0 = phi float [ 0.000000e+00, %land.lhs.true ], [ %add352, %if.then ], [ 0.000000e+00, %entry ], !dbg !205
  %77 = bitcast float %denominator.sroa.0.0 to i32, !dbg !203
  %78 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !206
  %79 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %78) #10, !dbg !209
  %xor.i.i772 = xor i32 %79, 32, !dbg !210
  %80 = and i32 %79, -64, !dbg !211
  %and.i.i773 = add nsw i32 %80, 64, !dbg !211
  %cmp.not.i.i774 = icmp slt i32 %xor.i.i772, %and.i.i773, !dbg !212
  %cond.i.i775 = select i1 %cmp.not.i.i774, i32 %xor.i.i772, i32 %79, !dbg !213
  %shl.i.i776 = shl i32 %cond.i.i775, 2, !dbg !214
  %81 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i776, i32 %77), !dbg !215
  %82 = bitcast i32 %81 to float, !dbg !216
  %add500 = fadd contract float %denominator.sroa.0.0, %82, !dbg !217
  %83 = bitcast float %add500 to i32, !dbg !218
  %84 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !220
  %85 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %84) #10, !dbg !223
  %xor.i.i777 = xor i32 %85, 16, !dbg !224
  %86 = and i32 %85, -64, !dbg !225
  %and.i.i778 = add nsw i32 %86, 64, !dbg !225
  %cmp.not.i.i779 = icmp slt i32 %xor.i.i777, %and.i.i778, !dbg !226
  %cond.i.i780 = select i1 %cmp.not.i.i779, i32 %xor.i.i777, i32 %85, !dbg !227
  %shl.i.i781 = shl i32 %cond.i.i780, 2, !dbg !228
  %87 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i781, i32 %83), !dbg !229
  %88 = bitcast i32 %87 to float, !dbg !230
  %add505 = fadd contract float %add500, %88, !dbg !231
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !232
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !232
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !232
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !232
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %add505, !dbg !233
  %div525 = fdiv contract float %numerator.sroa.0.4.vec.extract, %add505, !dbg !234
  %div529 = fdiv contract float %numerator.sroa.0.8.vec.extract, %add505, !dbg !235
  %div533 = fdiv contract float %numerator.sroa.0.12.vec.extract, %add505, !dbg !236
  %numerator.sroa.20.16.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 0, !dbg !232
  %numerator.sroa.20.20.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 1, !dbg !232
  %numerator.sroa.20.24.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 2, !dbg !232
  %numerator.sroa.20.28.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 3, !dbg !232
  %div.1 = fdiv contract float %numerator.sroa.20.16.vec.extract, %add505, !dbg !233
  %div525.1 = fdiv contract float %numerator.sroa.20.20.vec.extract, %add505, !dbg !234
  %div529.1 = fdiv contract float %numerator.sroa.20.24.vec.extract, %add505, !dbg !235
  %div533.1 = fdiv contract float %numerator.sroa.20.28.vec.extract, %add505, !dbg !236
  %numerator.sroa.38.32.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 0, !dbg !232
  %numerator.sroa.38.36.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 1, !dbg !232
  %numerator.sroa.38.40.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 2, !dbg !232
  %numerator.sroa.38.44.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 3, !dbg !232
  %div.2 = fdiv contract float %numerator.sroa.38.32.vec.extract, %add505, !dbg !233
  %div525.2 = fdiv contract float %numerator.sroa.38.36.vec.extract, %add505, !dbg !234
  %div529.2 = fdiv contract float %numerator.sroa.38.40.vec.extract, %add505, !dbg !235
  %div533.2 = fdiv contract float %numerator.sroa.38.44.vec.extract, %add505, !dbg !236
  %numerator.sroa.56.48.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 0, !dbg !232
  %numerator.sroa.56.52.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 1, !dbg !232
  %numerator.sroa.56.56.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 2, !dbg !232
  %numerator.sroa.56.60.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 3, !dbg !232
  %div.3 = fdiv contract float %numerator.sroa.56.48.vec.extract, %add505, !dbg !233
  %div525.3 = fdiv contract float %numerator.sroa.56.52.vec.extract, %add505, !dbg !234
  %div529.3 = fdiv contract float %numerator.sroa.56.56.vec.extract, %add505, !dbg !235
  %div533.3 = fdiv contract float %numerator.sroa.56.60.vec.extract, %add505, !dbg !236
  fence syncscope("warp") release, !dbg !237
  tail call void @llvm.mxc.barrier.warp(), !dbg !240
  fence syncscope("warp") acquire, !dbg !241
  %xor582 = shl nuw nsw i32 %7, 2
  %mul583 = and i32 %xor582, 4
  %89 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !242, !noalias !246
  %90 = fptrunc float %div to half, !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %89), !dbg !242, !noalias !246
  %91 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !246
  %92 = fptrunc float %div525 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %91), !dbg !251, !noalias !246
  %93 = bitcast half %90 to i16, !dbg !253
  %94 = bitcast half %92 to i16, !dbg !256
  %95 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %96 = fptrunc float %div529 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %95), !dbg !257, !noalias !261
  %97 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %98 = fptrunc float %div533 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %97), !dbg !266, !noalias !261
  %99 = bitcast half %96 to i16, !dbg !268
  %100 = bitcast half %98 to i16, !dbg !270
  %__7.sroa.6.0.insert.ext = zext i16 %100 to i64, !dbg !271
  %__7.sroa.6.0.insert.shift = shl nuw i64 %__7.sroa.6.0.insert.ext, 48, !dbg !271
  %__7.sroa.5.0.insert.ext = zext i16 %99 to i64, !dbg !271
  %__7.sroa.5.0.insert.shift = shl nuw nsw i64 %__7.sroa.5.0.insert.ext, 32, !dbg !271
  %__7.sroa.5.0.insert.insert = or disjoint i64 %__7.sroa.6.0.insert.shift, %__7.sroa.5.0.insert.shift, !dbg !271
  %__7.sroa.4.0.insert.ext = zext i16 %94 to i64, !dbg !271
  %__7.sroa.4.0.insert.shift = shl nuw nsw i64 %__7.sroa.4.0.insert.ext, 16, !dbg !271
  %__7.sroa.4.0.insert.insert = or disjoint i64 %__7.sroa.5.0.insert.insert, %__7.sroa.4.0.insert.shift, !dbg !271
  %__7.sroa.0.0.insert.ext = zext i16 %93 to i64, !dbg !271
  %__7.sroa.0.0.insert.insert = or disjoint i64 %__7.sroa.4.0.insert.insert, %__7.sroa.0.0.insert.ext, !dbg !271
  %add584 = or disjoint i32 %add55, %mul583, !dbg !272
  %add.ptr586 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add584, !dbg !273
  store i64 %__7.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr586, align 8, !dbg !274
  %101 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !242, !noalias !246
  %102 = fptrunc float %div.1 to half, !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %101), !dbg !242, !noalias !246
  %103 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !246
  %104 = fptrunc float %div525.1 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %103), !dbg !251, !noalias !246
  %105 = bitcast half %102 to i16, !dbg !253
  %106 = bitcast half %104 to i16, !dbg !256
  %107 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %108 = fptrunc float %div529.1 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %107), !dbg !257, !noalias !261
  %109 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %110 = fptrunc float %div533.1 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %109), !dbg !266, !noalias !261
  %111 = bitcast half %108 to i16, !dbg !268
  %112 = bitcast half %110 to i16, !dbg !270
  %__7.sroa.6.0.insert.ext.1 = zext i16 %112 to i64, !dbg !271
  %__7.sroa.6.0.insert.shift.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.1, 48, !dbg !271
  %__7.sroa.5.0.insert.ext.1 = zext i16 %111 to i64, !dbg !271
  %__7.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1, 32, !dbg !271
  %__7.sroa.5.0.insert.insert.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.1, %__7.sroa.5.0.insert.shift.1, !dbg !271
  %__7.sroa.4.0.insert.ext.1 = zext i16 %106 to i64, !dbg !271
  %__7.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1, 16, !dbg !271
  %__7.sroa.4.0.insert.insert.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.1, %__7.sroa.4.0.insert.shift.1, !dbg !271
  %__7.sroa.0.0.insert.ext.1 = zext i16 %105 to i64, !dbg !271
  %__7.sroa.0.0.insert.insert.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.1, %__7.sroa.0.0.insert.ext.1, !dbg !271
  %add584.1 = or disjoint i32 %add55.1, %mul583, !dbg !272
  %add.ptr586.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add584.1, !dbg !273
  store i64 %__7.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr586.1, align 8, !dbg !274
  %113 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !242, !noalias !246
  %114 = fptrunc float %div.2 to half, !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %113), !dbg !242, !noalias !246
  %115 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !246
  %116 = fptrunc float %div525.2 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %115), !dbg !251, !noalias !246
  %117 = bitcast half %114 to i16, !dbg !253
  %118 = bitcast half %116 to i16, !dbg !256
  %119 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %120 = fptrunc float %div529.2 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %119), !dbg !257, !noalias !261
  %121 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %122 = fptrunc float %div533.2 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %121), !dbg !266, !noalias !261
  %123 = bitcast half %120 to i16, !dbg !268
  %124 = bitcast half %122 to i16, !dbg !270
  %__7.sroa.6.0.insert.ext.2 = zext i16 %124 to i64, !dbg !271
  %__7.sroa.6.0.insert.shift.2 = shl nuw i64 %__7.sroa.6.0.insert.ext.2, 48, !dbg !271
  %__7.sroa.5.0.insert.ext.2 = zext i16 %123 to i64, !dbg !271
  %__7.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.2, 32, !dbg !271
  %__7.sroa.5.0.insert.insert.2 = or disjoint i64 %__7.sroa.6.0.insert.shift.2, %__7.sroa.5.0.insert.shift.2, !dbg !271
  %__7.sroa.4.0.insert.ext.2 = zext i16 %118 to i64, !dbg !271
  %__7.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.2, 16, !dbg !271
  %__7.sroa.4.0.insert.insert.2 = or disjoint i64 %__7.sroa.5.0.insert.insert.2, %__7.sroa.4.0.insert.shift.2, !dbg !271
  %__7.sroa.0.0.insert.ext.2 = zext i16 %117 to i64, !dbg !271
  %__7.sroa.0.0.insert.insert.2 = or disjoint i64 %__7.sroa.4.0.insert.insert.2, %__7.sroa.0.0.insert.ext.2, !dbg !271
  %add584.2 = or disjoint i32 %add55.2, %mul583, !dbg !272
  %add.ptr586.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add584.2, !dbg !273
  store i64 %__7.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr586.2, align 8, !dbg !274
  %125 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !242, !noalias !246
  %126 = fptrunc float %div.3 to half, !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %125), !dbg !242, !noalias !246
  %127 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !246
  %128 = fptrunc float %div525.3 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %127), !dbg !251, !noalias !246
  %129 = bitcast half %126 to i16, !dbg !253
  %130 = bitcast half %128 to i16, !dbg !256
  %131 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %132 = fptrunc float %div529.3 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %131), !dbg !257, !noalias !261
  %133 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %134 = fptrunc float %div533.3 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %133), !dbg !266, !noalias !261
  %135 = bitcast half %132 to i16, !dbg !268
  %136 = bitcast half %134 to i16, !dbg !270
  %__7.sroa.6.0.insert.ext.3 = zext i16 %136 to i64, !dbg !271
  %__7.sroa.6.0.insert.shift.3 = shl nuw i64 %__7.sroa.6.0.insert.ext.3, 48, !dbg !271
  %__7.sroa.5.0.insert.ext.3 = zext i16 %135 to i64, !dbg !271
  %__7.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.3, 32, !dbg !271
  %__7.sroa.5.0.insert.insert.3 = or disjoint i64 %__7.sroa.6.0.insert.shift.3, %__7.sroa.5.0.insert.shift.3, !dbg !271
  %__7.sroa.4.0.insert.ext.3 = zext i16 %130 to i64, !dbg !271
  %__7.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.3, 16, !dbg !271
  %__7.sroa.4.0.insert.insert.3 = or disjoint i64 %__7.sroa.5.0.insert.insert.3, %__7.sroa.4.0.insert.shift.3, !dbg !271
  %__7.sroa.0.0.insert.ext.3 = zext i16 %129 to i64, !dbg !271
  %__7.sroa.0.0.insert.insert.3 = or disjoint i64 %__7.sroa.4.0.insert.insert.3, %__7.sroa.0.0.insert.ext.3, !dbg !271
  %add584.3 = or disjoint i32 %add55.3, %mul583, !dbg !272
  %add.ptr586.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add584.3, !dbg !273
  store i64 %__7.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr586.3, align 8, !dbg !274
  fence syncscope("warp") release, !dbg !275
  tail call void @llvm.mxc.barrier.warp(), !dbg !278
  fence syncscope("warp") acquire, !dbg !279
  %137 = load i64, ptr addrspace(3) %4, align 16, !dbg !280
  %add.ptr614.1 = getelementptr inbounds i8, ptr addrspace(3) %4, i32 8, !dbg !281
  %138 = load i64, ptr addrspace(3) %add.ptr614.1, align 8, !dbg !280
  %add.ptr632 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %2, !dbg !282
  store i64 %137, ptr addrspace(1) %add.ptr632, align 16, !dbg !283
  %output_fetch.sroa.6.0.add.ptr632.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr632, i64 8, !dbg !283
  store i64 %138, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr632.sroa_idx, align 8, !dbg !283
  %add.ptr614.1845 = getelementptr inbounds i8, ptr addrspace(3) %4, i32 1032, !dbg !281
  %139 = load i64, ptr addrspace(3) %add.ptr614.1845, align 8, !dbg !280
  %140 = load i64, ptr addrspace(3) %6, align 16, !dbg !280
  %add.ptr632.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %5, !dbg !282
  store i64 %139, ptr addrspace(1) %add.ptr632.1, align 16, !dbg !283
  %output_fetch.sroa.6.0.add.ptr632.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr632.1, i64 8, !dbg !283
  store i64 %140, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr632.1.sroa_idx, align 8, !dbg !283
  ret void, !dbg !284
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v209_worker2_c14_linear_query_grid_subagent2/codegen/power_v209/case14_stage1.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v209_worker2_c14_linear_query_grid_subagent2/codegen/power_v209/case14_stage1.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 27, column: 3, scope: !40)
!44 = !DILocation(line: 28, column: 43, scope: !40)
!45 = !DILocation(line: 28, column: 29, scope: !40)
!46 = !DILocation(line: 31, column: 24, scope: !40)
!47 = !DILocation(line: 31, column: 203, scope: !40)
!48 = !DILocation(line: 28, column: 90, scope: !40)
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
!64 = !DILocation(line: 46, column: 22, scope: !40)
!65 = !DILocation(line: 46, column: 49, scope: !40)
!66 = !DILocation(line: 47, column: 10, scope: !40)
!67 = !DILocation(line: 47, column: 26, scope: !40)
!68 = !DILocation(line: 47, column: 73, scope: !40)
!69 = !DILocation(line: 47, column: 42, scope: !40)
!70 = !DILocation(line: 47, column: 7, scope: !40)
!71 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !72)
!72 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !73)
!73 = distinct !DILocation(line: 48, column: 5, scope: !40)
!74 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !72)
!75 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !72)
!76 = !DILocation(line: 51, column: 45, scope: !40)
!77 = !DILocation(line: 51, column: 31, scope: !40)
!78 = !DILocation(line: 54, column: 211, scope: !40)
!79 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !80)
!80 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !81)
!81 = distinct !DILocation(line: 57, column: 5, scope: !40)
!82 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !80)
!83 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !80)
!84 = !DILocation(line: 62, column: 30, scope: !40)
!85 = !DILocation(line: 64, column: 37, scope: !40)
!86 = !DILocation(line: 72, column: 72, scope: !40)
!87 = !DILocation(line: 72, column: 11, scope: !40)
!88 = !DILocation(line: 72, column: 61, scope: !40)
!89 = !DILocation(line: 351, column: 10, scope: !90, inlinedAt: !92)
!90 = distinct !DISubprogram(name: "max", scope: !91, file: !91, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!91 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!92 = distinct !DILocation(line: 82, column: 20, scope: !40)
!93 = !DILocation(line: 1018, column: 9, scope: !94, inlinedAt: !95)
!94 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!95 = distinct !DILocation(line: 84, column: 34, scope: !40)
!96 = !DILocation(line: 171, column: 37, scope: !97, inlinedAt: !98)
!97 = distinct !DISubprogram(name: "__lane_id", scope: !51, file: !51, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!98 = distinct !DILocation(line: 990, column: 14, scope: !99, inlinedAt: !100)
!99 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!100 = distinct !DILocation(line: 1019, column: 11, scope: !94, inlinedAt: !95)
!101 = !DILocation(line: 171, column: 10, scope: !97, inlinedAt: !98)
!102 = !DILocation(line: 991, column: 20, scope: !99, inlinedAt: !100)
!103 = !DILocation(line: 992, column: 36, scope: !99, inlinedAt: !100)
!104 = !DILocation(line: 992, column: 17, scope: !99, inlinedAt: !100)
!105 = !DILocation(line: 992, column: 11, scope: !99, inlinedAt: !100)
!106 = !DILocation(line: 993, column: 43, scope: !99, inlinedAt: !100)
!107 = !DILocation(line: 993, column: 10, scope: !99, inlinedAt: !100)
!108 = !DILocation(line: 1020, column: 14, scope: !94, inlinedAt: !95)
!109 = !DILocation(line: 351, column: 10, scope: !90, inlinedAt: !110)
!110 = distinct !DILocation(line: 84, column: 18, scope: !40)
!111 = !DILocation(line: 1018, column: 9, scope: !94, inlinedAt: !112)
!112 = distinct !DILocation(line: 85, column: 34, scope: !40)
!113 = !DILocation(line: 171, column: 37, scope: !97, inlinedAt: !114)
!114 = distinct !DILocation(line: 990, column: 14, scope: !99, inlinedAt: !115)
!115 = distinct !DILocation(line: 1019, column: 11, scope: !94, inlinedAt: !112)
!116 = !DILocation(line: 171, column: 10, scope: !97, inlinedAt: !114)
!117 = !DILocation(line: 991, column: 20, scope: !99, inlinedAt: !115)
!118 = !DILocation(line: 992, column: 36, scope: !99, inlinedAt: !115)
!119 = !DILocation(line: 992, column: 17, scope: !99, inlinedAt: !115)
!120 = !DILocation(line: 992, column: 11, scope: !99, inlinedAt: !115)
!121 = !DILocation(line: 993, column: 43, scope: !99, inlinedAt: !115)
!122 = !DILocation(line: 993, column: 10, scope: !99, inlinedAt: !115)
!123 = !DILocation(line: 1020, column: 14, scope: !94, inlinedAt: !112)
!124 = !DILocation(line: 351, column: 10, scope: !90, inlinedAt: !125)
!125 = distinct !DILocation(line: 85, column: 18, scope: !40)
!126 = !DILocation(line: 95, column: 24, scope: !40)
!127 = !DILocation(line: 96, column: 24, scope: !40)
!128 = !DILocation(line: 97, column: 24, scope: !40)
!129 = !DILocation(line: 98, column: 24, scope: !40)
!130 = !DILocation(line: 100, column: 23, scope: !40)
!131 = !DILocation(line: 101, column: 23, scope: !40)
!132 = !DILocation(line: 102, column: 23, scope: !40)
!133 = !DILocation(line: 103, column: 23, scope: !40)
!134 = !DILocation(line: 105, column: 21, scope: !40)
!135 = !DILocation(line: 106, column: 21, scope: !40)
!136 = !DILocation(line: 107, column: 21, scope: !40)
!137 = !DILocation(line: 108, column: 21, scope: !40)
!138 = !DILocation(line: 285, column: 49, scope: !139, inlinedAt: !140)
!139 = distinct !DISubprogram(name: "exp2f", scope: !91, file: !91, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!140 = distinct !DILocation(line: 109, column: 13, scope: !40)
!141 = !DILocation(line: 285, column: 49, scope: !139, inlinedAt: !142)
!142 = distinct !DILocation(line: 110, column: 13, scope: !40)
!143 = !DILocation(line: 285, column: 49, scope: !139, inlinedAt: !144)
!144 = distinct !DILocation(line: 111, column: 13, scope: !40)
!145 = !DILocation(line: 285, column: 49, scope: !139, inlinedAt: !146)
!146 = distinct !DILocation(line: 112, column: 13, scope: !40)
!147 = !DILocation(line: 1007, column: 10, scope: !148, inlinedAt: !150)
!148 = distinct !DISubprogram(name: "__float2half_rn", scope: !149, file: !149, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!149 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!150 = distinct !DILocation(line: 1077, column: 18, scope: !151, inlinedAt: !152)
!151 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !149, file: !149, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!152 = distinct !DILocation(line: 1295, column: 23, scope: !153, inlinedAt: !154)
!153 = distinct !DISubprogram(name: "__float22half2_rn", scope: !149, file: !149, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!154 = distinct !DILocation(line: 113, column: 27, scope: !40)
!155 = !{!156, !158}
!156 = distinct !{!156, !157, !"_ZL17__floats2half2_rnff: %agg.result"}
!157 = distinct !{!157, !"_ZL17__floats2half2_rnff"}
!158 = distinct !{!158, !159, !"_ZL17__float22half2_rn6float2: %agg.result"}
!159 = distinct !{!159, !"_ZL17__float22half2_rn6float2"}
!160 = !DILocation(line: 1007, column: 10, scope: !148, inlinedAt: !161)
!161 = distinct !DILocation(line: 1077, column: 38, scope: !151, inlinedAt: !152)
!162 = !DILocation(line: 1007, column: 10, scope: !148, inlinedAt: !163)
!163 = distinct !DILocation(line: 1077, column: 18, scope: !151, inlinedAt: !164)
!164 = distinct !DILocation(line: 1295, column: 23, scope: !153, inlinedAt: !165)
!165 = distinct !DILocation(line: 114, column: 27, scope: !40)
!166 = !{!167, !169}
!167 = distinct !{!167, !168, !"_ZL17__floats2half2_rnff: %agg.result"}
!168 = distinct !{!168, !"_ZL17__floats2half2_rnff"}
!169 = distinct !{!169, !170, !"_ZL17__float22half2_rn6float2: %agg.result"}
!170 = distinct !{!170, !"_ZL17__float22half2_rn6float2"}
!171 = !DILocation(line: 1007, column: 10, scope: !148, inlinedAt: !172)
!172 = distinct !DILocation(line: 1077, column: 38, scope: !151, inlinedAt: !164)
!173 = !DILocation(line: 115, column: 34, scope: !40)
!174 = !DILocation(line: 1082, column: 16, scope: !175, inlinedAt: !176)
!175 = distinct !DISubprogram(name: "__half2float", scope: !149, file: !149, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!176 = distinct !DILocation(line: 136, column: 55, scope: !177, inlinedAt: !178)
!177 = distinct !DISubprogram(name: "operator float", scope: !149, file: !149, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!178 = distinct !DILocation(line: 119, column: 50, scope: !40)
!179 = !DILocation(line: 119, column: 40, scope: !40)
!180 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !181)
!181 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !182)
!182 = distinct !DILocation(line: 122, column: 5, scope: !40)
!183 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !181)
!184 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !181)
!185 = !DILocation(line: 125, column: 52, scope: !40)
!186 = !DILocation(line: 125, column: 38, scope: !40)
!187 = !DILocation(line: 132, column: 133, scope: !40)
!188 = !DILocation(line: 132, column: 218, scope: !40)
!189 = !DILocation(line: 132, column: 139, scope: !40)
!190 = !DILocation(line: 132, column: 224, scope: !40)
!191 = !DILocation(line: 132, column: 24, scope: !40)
!192 = !DILocation(line: 132, column: 267, scope: !40)
!193 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !194)
!194 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !195)
!195 = distinct !DILocation(line: 134, column: 5, scope: !40)
!196 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !194)
!197 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !194)
!198 = !DILocation(line: 137, column: 191, scope: !40)
!199 = !DILocation(line: 137, column: 63, scope: !40)
!200 = !DILocation(line: 137, column: 44, scope: !40)
!201 = !DILocation(line: 142, column: 46, scope: !40)
!202 = !DILocation(line: 121, column: 38, scope: !40)
!203 = !DILocation(line: 1018, column: 9, scope: !94, inlinedAt: !204)
!204 = distinct !DILocation(line: 148, column: 38, scope: !40)
!205 = !DILocation(line: 0, scope: !40)
!206 = !DILocation(line: 171, column: 37, scope: !97, inlinedAt: !207)
!207 = distinct !DILocation(line: 990, column: 14, scope: !99, inlinedAt: !208)
!208 = distinct !DILocation(line: 1019, column: 11, scope: !94, inlinedAt: !204)
!209 = !DILocation(line: 171, column: 10, scope: !97, inlinedAt: !207)
!210 = !DILocation(line: 991, column: 20, scope: !99, inlinedAt: !208)
!211 = !DILocation(line: 992, column: 36, scope: !99, inlinedAt: !208)
!212 = !DILocation(line: 992, column: 17, scope: !99, inlinedAt: !208)
!213 = !DILocation(line: 992, column: 11, scope: !99, inlinedAt: !208)
!214 = !DILocation(line: 993, column: 43, scope: !99, inlinedAt: !208)
!215 = !DILocation(line: 993, column: 10, scope: !99, inlinedAt: !208)
!216 = !DILocation(line: 1020, column: 14, scope: !94, inlinedAt: !204)
!217 = !DILocation(line: 148, column: 36, scope: !40)
!218 = !DILocation(line: 1018, column: 9, scope: !94, inlinedAt: !219)
!219 = distinct !DILocation(line: 149, column: 38, scope: !40)
!220 = !DILocation(line: 171, column: 37, scope: !97, inlinedAt: !221)
!221 = distinct !DILocation(line: 990, column: 14, scope: !99, inlinedAt: !222)
!222 = distinct !DILocation(line: 1019, column: 11, scope: !94, inlinedAt: !219)
!223 = !DILocation(line: 171, column: 10, scope: !97, inlinedAt: !221)
!224 = !DILocation(line: 991, column: 20, scope: !99, inlinedAt: !222)
!225 = !DILocation(line: 992, column: 36, scope: !99, inlinedAt: !222)
!226 = !DILocation(line: 992, column: 17, scope: !99, inlinedAt: !222)
!227 = !DILocation(line: 992, column: 11, scope: !99, inlinedAt: !222)
!228 = !DILocation(line: 993, column: 43, scope: !99, inlinedAt: !222)
!229 = !DILocation(line: 993, column: 10, scope: !99, inlinedAt: !222)
!230 = !DILocation(line: 1020, column: 14, scope: !94, inlinedAt: !219)
!231 = !DILocation(line: 149, column: 36, scope: !40)
!232 = !DILocation(line: 153, column: 21, scope: !40)
!233 = !DILocation(line: 155, column: 22, scope: !40)
!234 = !DILocation(line: 156, column: 22, scope: !40)
!235 = !DILocation(line: 157, column: 22, scope: !40)
!236 = !DILocation(line: 158, column: 22, scope: !40)
!237 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !238)
!238 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !239)
!239 = distinct !DILocation(line: 161, column: 3, scope: !40)
!240 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !238)
!241 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !238)
!242 = !DILocation(line: 1007, column: 10, scope: !148, inlinedAt: !243)
!243 = distinct !DILocation(line: 1077, column: 18, scope: !151, inlinedAt: !244)
!244 = distinct !DILocation(line: 1295, column: 23, scope: !153, inlinedAt: !245)
!245 = distinct !DILocation(line: 166, column: 27, scope: !40)
!246 = !{!247, !249}
!247 = distinct !{!247, !248, !"_ZL17__floats2half2_rnff: %agg.result"}
!248 = distinct !{!248, !"_ZL17__floats2half2_rnff"}
!249 = distinct !{!249, !250, !"_ZL17__float22half2_rn6float2: %agg.result"}
!250 = distinct !{!250, !"_ZL17__float22half2_rn6float2"}
!251 = !DILocation(line: 1007, column: 10, scope: !148, inlinedAt: !252)
!252 = distinct !DILocation(line: 1077, column: 38, scope: !151, inlinedAt: !244)
!253 = !DILocation(line: 596, column: 67, scope: !254, inlinedAt: !255)
!254 = distinct !DISubprogram(name: "__half2", scope: !149, file: !149, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!255 = distinct !DILocation(line: 1077, column: 10, scope: !151, inlinedAt: !244)
!256 = !DILocation(line: 596, column: 73, scope: !254, inlinedAt: !255)
!257 = !DILocation(line: 1007, column: 10, scope: !148, inlinedAt: !258)
!258 = distinct !DILocation(line: 1077, column: 18, scope: !151, inlinedAt: !259)
!259 = distinct !DILocation(line: 1295, column: 23, scope: !153, inlinedAt: !260)
!260 = distinct !DILocation(line: 167, column: 27, scope: !40)
!261 = !{!262, !264}
!262 = distinct !{!262, !263, !"_ZL17__floats2half2_rnff: %agg.result"}
!263 = distinct !{!263, !"_ZL17__floats2half2_rnff"}
!264 = distinct !{!264, !265, !"_ZL17__float22half2_rn6float2: %agg.result"}
!265 = distinct !{!265, !"_ZL17__float22half2_rn6float2"}
!266 = !DILocation(line: 1007, column: 10, scope: !148, inlinedAt: !267)
!267 = distinct !DILocation(line: 1077, column: 38, scope: !151, inlinedAt: !259)
!268 = !DILocation(line: 596, column: 67, scope: !254, inlinedAt: !269)
!269 = distinct !DILocation(line: 1077, column: 10, scope: !151, inlinedAt: !259)
!270 = !DILocation(line: 596, column: 73, scope: !254, inlinedAt: !269)
!271 = !DILocation(line: 168, column: 38, scope: !40)
!272 = !DILocation(line: 169, column: 141, scope: !40)
!273 = !DILocation(line: 169, column: 22, scope: !40)
!274 = !DILocation(line: 169, column: 221, scope: !40)
!275 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !276)
!276 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !277)
!277 = distinct !DILocation(line: 171, column: 3, scope: !40)
!278 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !276)
!279 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !276)
!280 = !DILocation(line: 176, column: 46, scope: !40)
!281 = !DILocation(line: 176, column: 65, scope: !40)
!282 = !DILocation(line: 178, column: 22, scope: !40)
!283 = !DILocation(line: 178, column: 100, scope: !40)
!284 = !DILocation(line: 180, column: 1, scope: !40)
