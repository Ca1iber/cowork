; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v234_worker2_case2_bounded_kv_index_subagent2/codegen/power_v234/case2_stage1.device.cpp'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v234_worker2_case2_bounded_kv_index_subagent2/codegen/power_v234/case2_stage1.device.cpp"
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
  %xor716 = and i32 %mul8, 56
  %call24.masked = and i32 %1, 1016
  %mul26 = xor i32 %xor716, %call24.masked
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
  %qk_fetch.sroa.0.0.copyload1007 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %qk_fetch.sroa.10.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %qk_fetch.sroa.10.0.copyload1010 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0.add.ptr.1.sroa_idx, align 8, !dbg !45
  %6 = getelementptr inbounds i8, ptr addrspace(3) %4, i32 1024, !dbg !46
  %add.ptr36.1797 = getelementptr inbounds i8, ptr addrspace(3) %6, i32 %add.ptr36.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1007, ptr addrspace(3) %add.ptr36.1797, align 8, !dbg !47
  %add.ptr36.1.1 = getelementptr inbounds i8, ptr addrspace(3) %6, i32 %add.ptr36.idx, !dbg !46
  store i64 %qk_fetch.sroa.10.0.copyload1010, ptr addrspace(3) %add.ptr36.1.1, align 8, !dbg !47
  fence syncscope("warp") release, !dbg !49
  tail call void @llvm.mxc.barrier.warp(), !dbg !55
  fence syncscope("warp") acquire, !dbg !56
  %and45 = shl nuw nsw i32 %1, 6
  %mul46 = and i32 %and45, 960
  %shr49 = lshr i32 %1, 5
  %and52 = and i32 %1, 7
  %and57 = lshr i32 %1, 4
  %7 = xor i32 %and30, %and57
  %xor53 = xor i32 %shr49, %and52, !dbg !57
  %mul54 = shl nuw nsw i32 %xor53, 3, !dbg !58
  %add55 = add nuw nsw i32 %mul54, %mul46, !dbg !59
  %add50.1 = add nuw nsw i32 %shr49, 2, !dbg !60
  %xor53.1 = xor i32 %add50.1, %and52, !dbg !57
  %mul54.1 = shl nuw nsw i32 %xor53.1, 3, !dbg !58
  %add55.1 = add nuw nsw i32 %mul54.1, %mul46, !dbg !59
  %add50.2 = add nuw nsw i32 %shr49, 4, !dbg !60
  %xor53.2 = xor i32 %add50.2, %and52, !dbg !57
  %mul54.2 = shl nuw nsw i32 %xor53.2, 3, !dbg !58
  %add55.2 = add nuw nsw i32 %mul54.2, %mul46, !dbg !59
  %add50.3 = add nuw nsw i32 %shr49, 6, !dbg !60
  %xor53.3 = xor i32 %add50.3, %and52, !dbg !57
  %mul54.3 = shl nuw nsw i32 %xor53.3, 3, !dbg !58
  %add55.3 = add nuw nsw i32 %mul54.3, %mul46, !dbg !59
  %idxprom = zext nneg i32 %0 to i64, !dbg !61
  %arrayidx92 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %idxprom, !dbg !61
  %8 = load i32, ptr addrspace(1) %arrayidx92, align 4, !dbg !61, !tbaa !30
  %mul93 = shl nsw i32 %8, 4, !dbg !62
  %cmp94 = icmp slt i32 %8, 0, !dbg !63
  %cmp96.not = icmp sgt i32 %mul93, %0
  %or.cond = select i1 %cmp94, i1 true, i1 %cmp96.not, !dbg !64
  br i1 %or.cond, label %if.end464, label %if.then, !dbg !64

if.then:                                          ; preds = %entry
  %xor62715 = xor i32 %7, %1
  %xor65 = shl nuw nsw i32 %xor62715, 2
  %mul66 = and i32 %xor65, 4
  %add67.3 = or disjoint i32 %add55.3, %mul66, !dbg !65
  %add.ptr69.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add67.3, !dbg !66
  %9 = load <4 x half>, ptr addrspace(3) %add.ptr69.3, align 8, !dbg !67
  %add67.2 = or disjoint i32 %add55.2, %mul66, !dbg !65
  %add.ptr69.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add67.2, !dbg !66
  %10 = load <4 x half>, ptr addrspace(3) %add.ptr69.2, align 8, !dbg !67
  %add67.1 = or disjoint i32 %add55.1, %mul66, !dbg !65
  %add.ptr69.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add67.1, !dbg !66
  %11 = load <4 x half>, ptr addrspace(3) %add.ptr69.1, align 8, !dbg !67
  %add67 = or disjoint i32 %add55, %mul66, !dbg !65
  %add.ptr69 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add67, !dbg !66
  %12 = load <4 x half>, ptr addrspace(3) %add.ptr69, align 8, !dbg !67
  fence syncscope("warp") release, !dbg !68
  tail call void @llvm.mxc.barrier.warp(), !dbg !71
  fence syncscope("warp") acquire, !dbg !72
  %cond.i.i = tail call noundef range(i32 0, 113) i32 @llvm.smin.i32(i32 %mul93, i32 112)
  %mul103 = shl nuw nsw i32 %cond.i.i, 6
  %add104 = add nuw nsw i32 %mul103, %mul8
  %13 = zext nneg i32 %add104 to i64, !dbg !73
  %add.ptr109 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %13, !dbg !74
  %qk_fetch.sroa.0.0.copyload1006 = load i64, ptr addrspace(4) %add.ptr109, align 16, !dbg !75
  %qk_fetch.sroa.10.0.add.ptr109.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr109, i64 8, !dbg !75
  %qk_fetch.sroa.10.0.copyload1009 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0.add.ptr109.sroa_idx, align 8, !dbg !75
  store i64 %qk_fetch.sroa.0.0.copyload1006, ptr addrspace(3) %add.ptr36, align 8, !dbg !76
  store i64 %qk_fetch.sroa.10.0.copyload1009, ptr addrspace(3) %add.ptr36.1, align 8, !dbg !76
  %14 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %13, !dbg !74
  %add.ptr109.1 = getelementptr inbounds i8, ptr addrspace(4) %14, i64 1024, !dbg !74
  %qk_fetch.sroa.0.0.copyload1008 = load i64, ptr addrspace(4) %add.ptr109.1, align 16, !dbg !75
  %qk_fetch.sroa.10.0.add.ptr109.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %14, i64 1032, !dbg !75
  %qk_fetch.sroa.10.0.copyload1011 = load i64, ptr addrspace(4) %qk_fetch.sroa.10.0.add.ptr109.1.sroa_idx, align 8, !dbg !75
  store i64 %qk_fetch.sroa.0.0.copyload1008, ptr addrspace(3) %add.ptr36.1797, align 8, !dbg !76
  store i64 %qk_fetch.sroa.10.0.copyload1011, ptr addrspace(3) %add.ptr36.1.1, align 8, !dbg !76
  fence syncscope("warp") release, !dbg !77
  tail call void @llvm.mxc.barrier.warp(), !dbg !80
  fence syncscope("warp") acquire, !dbg !81
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr69, align 8, !dbg !82
  %15 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %12, <4 x float> zeroinitializer), !dbg !83
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr69.1, align 8, !dbg !82
  %16 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %11, <4 x float> %15), !dbg !83
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr69.2, align 8, !dbg !82
  %17 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %10, <4 x float> %16), !dbg !83
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr69.3, align 8, !dbg !82
  %18 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %9, <4 x float> %17), !dbg !83
  %19 = lshr i32 %1, 2
  %mul201 = and i32 %19, 252
  %add202 = add nuw nsw i32 %mul93, %mul201
  %cmp205.not = icmp sgt i32 %add202, %0, !dbg !84
  %scores.sroa.0.0.vec.extract889 = extractelement <4 x float> %18, i64 0
  %spec.select = select i1 %cmp205.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract889, !dbg !85
  %cmp205.not.1.not = icmp slt i32 %add202, %0, !dbg !84
  %scores.sroa.0.4.vec.extract896 = extractelement <4 x float> %18, i64 1, !dbg !85
  %condval.0.1 = select i1 %cmp205.not.1.not, float %scores.sroa.0.4.vec.extract896, float 0xFFF0000000000000, !dbg !85
  %add203.2 = or disjoint i32 %add202, 2, !dbg !86
  %cmp205.not.2 = icmp sgt i32 %add203.2, %0, !dbg !84
  %scores.sroa.0.8.vec.extract903 = extractelement <4 x float> %18, i64 2, !dbg !85
  %condval.0.2 = select i1 %cmp205.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract903, !dbg !85
  %add203.3 = or disjoint i32 %add202, 3, !dbg !86
  %cmp205.not.3 = icmp sgt i32 %add203.3, %0, !dbg !84
  %scores.sroa.0.12.vec.extract910 = extractelement <4 x float> %18, i64 3, !dbg !85
  %condval.0.3 = select i1 %cmp205.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract910, !dbg !85
  %20 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !87
  %21 = tail call contract noundef float @llvm.maxnum.f32(float %20, float %condval.0.1), !dbg !87
  %22 = tail call contract noundef float @llvm.maxnum.f32(float %21, float %condval.0.2), !dbg !87
  %23 = tail call contract noundef float @llvm.maxnum.f32(float %22, float %condval.0.3), !dbg !87
  %24 = bitcast float %23 to i32, !dbg !91
  %25 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !94
  %26 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %25) #10, !dbg !99
  %xor.i.i = xor i32 %26, 32, !dbg !100
  %27 = and i32 %26, -64, !dbg !101
  %and.i.i = add nsw i32 %27, 64, !dbg !101
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !102
  %cond.i.i718 = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %26, !dbg !103
  %shl.i.i = shl i32 %cond.i.i718, 2, !dbg !104
  %28 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %24), !dbg !105
  %29 = bitcast i32 %28 to float, !dbg !106
  %30 = tail call contract noundef float @llvm.maxnum.f32(float %23, float %29), !dbg !107
  %31 = bitcast float %30 to i32, !dbg !109
  %32 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !111
  %33 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %32) #10, !dbg !114
  %xor.i.i719 = xor i32 %33, 16, !dbg !115
  %34 = and i32 %33, -64, !dbg !116
  %and.i.i720 = add nsw i32 %34, 64, !dbg !116
  %cmp.not.i.i721 = icmp slt i32 %xor.i.i719, %and.i.i720, !dbg !117
  %cond.i.i722 = select i1 %cmp.not.i.i721, i32 %xor.i.i719, i32 %33, !dbg !118
  %shl.i.i723 = shl i32 %cond.i.i722, 2, !dbg !119
  %35 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i723, i32 %31), !dbg !120
  %36 = bitcast i32 %35 to float, !dbg !121
  %37 = tail call contract noundef float @llvm.maxnum.f32(float %30, float %36), !dbg !122
  %sub = fsub contract float %spec.select, %37, !dbg !124
  %sub251 = fsub contract float %condval.0.1, %37, !dbg !125
  %sub254 = fsub contract float %condval.0.2, %37, !dbg !126
  %sub257 = fsub contract float %condval.0.3, %37, !dbg !127
  %mul262 = fmul contract float %sub, 0x3FC7154760000000, !dbg !128
  %mul266 = fmul contract float %sub251, 0x3FC7154760000000, !dbg !129
  %mul270 = fmul contract float %sub254, 0x3FC7154760000000, !dbg !130
  %mul274 = fmul contract float %sub257, 0x3FC7154760000000, !dbg !131
  %add279 = fadd contract float %mul262, 8.000000e+00, !dbg !132
  %add283 = fadd contract float %mul266, 8.000000e+00, !dbg !133
  %add287 = fadd contract float %mul270, 8.000000e+00, !dbg !134
  %add291 = fadd contract float %mul274, 8.000000e+00, !dbg !135
  %cmp.i.i = fcmp contract olt float %add279, -1.260000e+02, !dbg !136
  %cond.i.i724 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !136
  %add.i.i = fadd contract float %add279, %cond.i.i724, !dbg !136
  %38 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !136
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !136
  %mul.i.i = fmul contract float %cond2.i.i, %38, !dbg !136
  %cmp.i.i725 = fcmp contract olt float %add283, -1.260000e+02, !dbg !139
  %cond.i.i726 = select contract i1 %cmp.i.i725, float 6.400000e+01, float 0.000000e+00, !dbg !139
  %add.i.i727 = fadd contract float %add283, %cond.i.i726, !dbg !139
  %39 = tail call contract float @llvm.exp2.f32(float %add.i.i727), !dbg !139
  %cond2.i.i728 = select contract i1 %cmp.i.i725, float 0x3BF0000000000000, float 1.000000e+00, !dbg !139
  %mul.i.i729 = fmul contract float %cond2.i.i728, %39, !dbg !139
  %cmp.i.i730 = fcmp contract olt float %add287, -1.260000e+02, !dbg !141
  %cond.i.i731 = select contract i1 %cmp.i.i730, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i732 = fadd contract float %add287, %cond.i.i731, !dbg !141
  %40 = tail call contract float @llvm.exp2.f32(float %add.i.i732), !dbg !141
  %cond2.i.i733 = select contract i1 %cmp.i.i730, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %mul.i.i734 = fmul contract float %cond2.i.i733, %40, !dbg !141
  %cmp.i.i735 = fcmp contract olt float %add291, -1.260000e+02, !dbg !143
  %cond.i.i736 = select contract i1 %cmp.i.i735, float 6.400000e+01, float 0.000000e+00, !dbg !143
  %add.i.i737 = fadd contract float %add291, %cond.i.i736, !dbg !143
  %41 = tail call contract float @llvm.exp2.f32(float %add.i.i737), !dbg !143
  %cond2.i.i738 = select contract i1 %cmp.i.i735, float 0x3BF0000000000000, float 1.000000e+00, !dbg !143
  %mul.i.i739 = fmul contract float %cond2.i.i738, %41, !dbg !143
  %42 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !145
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !145, !noalias !153
  %43 = fptrunc float %mul.i.i to half, !dbg !145
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %42), !dbg !145, !noalias !153
  %44 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !158, !noalias !153
  %45 = fptrunc float %mul.i.i729 to half, !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %44), !dbg !158, !noalias !153
  %46 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !160, !noalias !164
  %47 = fptrunc float %mul.i.i734 to half, !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %46), !dbg !160, !noalias !164
  %48 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !164
  %49 = fptrunc float %mul.i.i739 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %48), !dbg !169, !noalias !164
  %50 = insertelement <4 x half> poison, half %43, i64 0, !dbg !171
  %51 = insertelement <4 x half> %50, half %45, i64 1, !dbg !171
  %52 = insertelement <4 x half> %51, half %47, i64 2, !dbg !171
  %53 = insertelement <4 x half> %52, half %49, i64 3, !dbg !171
  %conv.i.i = fpext half %43 to float, !dbg !172
  %add325 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !177
  %conv.i.i.1 = fpext half %45 to float, !dbg !172
  %add325.1 = fadd contract float %add325, %conv.i.i.1, !dbg !177
  %conv.i.i.2 = fpext half %47 to float, !dbg !172
  %add325.2 = fadd contract float %add325.1, %conv.i.i.2, !dbg !177
  %conv.i.i.3 = fpext half %49 to float, !dbg !172
  %add325.3 = fadd contract float %add325.2, %conv.i.i.3, !dbg !177
  fence syncscope("warp") release, !dbg !178
  tail call void @llvm.mxc.barrier.warp(), !dbg !181
  fence syncscope("warp") acquire, !dbg !182
  %54 = shl nuw nsw i32 %1, 4
  %mul340 = and i32 %54, 16256
  %add342 = or disjoint i32 %xor716, %mul340
  %add345 = add nuw nsw i32 %add342, %mul103
  %55 = zext nneg i32 %add345 to i64, !dbg !183
  %add.ptr351 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %55, !dbg !184
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %add.ptr351, align 16, !dbg !185
  %v_fetch.sroa.4.0.add.ptr351.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr351, i64 2, !dbg !185
  %v_fetch.sroa.4.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.4.0.add.ptr351.sroa_idx, align 2, !dbg !185, !tbaa !30
  %v_fetch.sroa.5.0.add.ptr351.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr351, i64 4, !dbg !185
  %v_fetch.sroa.5.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.5.0.add.ptr351.sroa_idx, align 4, !dbg !185
  %v_fetch.sroa.6.0.add.ptr351.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr351, i64 6, !dbg !185
  %v_fetch.sroa.6.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.6.0.add.ptr351.sroa_idx, align 2, !dbg !185, !tbaa !30
  %v_fetch.sroa.7.0.add.ptr351.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr351, i64 8, !dbg !185
  %v_fetch.sroa.7.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.7.0.add.ptr351.sroa_idx, align 8, !dbg !185
  %v_fetch.sroa.8.0.add.ptr351.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr351, i64 10, !dbg !185
  %v_fetch.sroa.8.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.8.0.add.ptr351.sroa_idx, align 2, !dbg !185, !tbaa !30
  %v_fetch.sroa.9.0.add.ptr351.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr351, i64 12, !dbg !185
  %v_fetch.sroa.9.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.9.0.add.ptr351.sroa_idx, align 4, !dbg !185
  %v_fetch.sroa.10.0.add.ptr351.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr351, i64 14, !dbg !185
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0.add.ptr351.sroa_idx, align 2, !dbg !185, !tbaa !30
  %56 = or disjoint i64 %55, 64, !dbg !186
  %add.ptr351.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %56, !dbg !184
  %v_fetch.sroa.11.16.copyload = load i16, ptr addrspace(4) %add.ptr351.1, align 16, !dbg !185
  %v_fetch.sroa.13.16.add.ptr351.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr351.1, i64 2, !dbg !185
  %v_fetch.sroa.13.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.13.16.add.ptr351.1.sroa_idx, align 2, !dbg !185, !tbaa !30
  %v_fetch.sroa.14.16.add.ptr351.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr351.1, i64 4, !dbg !185
  %v_fetch.sroa.14.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.16.add.ptr351.1.sroa_idx, align 4, !dbg !185
  %v_fetch.sroa.15.16.add.ptr351.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr351.1, i64 6, !dbg !185
  %v_fetch.sroa.15.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.15.16.add.ptr351.1.sroa_idx, align 2, !dbg !185, !tbaa !30
  %v_fetch.sroa.16.16.add.ptr351.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr351.1, i64 8, !dbg !185
  %v_fetch.sroa.16.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.16.16.add.ptr351.1.sroa_idx, align 8, !dbg !185
  %v_fetch.sroa.17.16.add.ptr351.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr351.1, i64 10, !dbg !185
  %v_fetch.sroa.17.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.17.16.add.ptr351.1.sroa_idx, align 2, !dbg !185, !tbaa !30
  %v_fetch.sroa.18.16.add.ptr351.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr351.1, i64 12, !dbg !185
  %v_fetch.sroa.18.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.16.add.ptr351.1.sroa_idx, align 4, !dbg !185
  %v_fetch.sroa.19.16.add.ptr351.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr351.1, i64 14, !dbg !185
  %v_fetch.sroa.19.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.19.16.add.ptr351.1.sroa_idx, align 2, !dbg !185, !tbaa !30
  %and381 = shl nuw nsw i32 %1, 1
  %mul382 = and i32 %and381, 14
  %call386.mask = and i32 %1, 16
  %and394 = lshr i32 %1, 1
  %shr395 = and i32 %and394, 3
  %xor396 = xor i32 %shr395, %and57
  %mul404 = and i32 %19, 2
  %xor389709 = shl nuw nsw i32 %mul382, 4, !dbg !187
  %mul390 = or disjoint i32 %xor389709, %call386.mask, !dbg !187
  %mul399 = shl nuw nsw i32 %xor396, 2, !dbg !188
  %add400 = add nuw nsw i32 %mul390, %mul399, !dbg !189
  %add405 = or disjoint i32 %add400, %mul404, !dbg !190
  %add.ptr407 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add405, !dbg !191
  %v_column.sroa.18.0.insert.ext = zext i16 %v_fetch.sroa.11.16.copyload to i32, !dbg !192
  %v_column.sroa.18.0.insert.shift = shl nuw i32 %v_column.sroa.18.0.insert.ext, 16, !dbg !192
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !192
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.18.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !192
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr407, align 4, !dbg !192, !tbaa !30
  %add383.1 = shl nuw nsw i32 %mul382, 4, !dbg !187
  %xor389709.1 = or disjoint i32 %add383.1, %call386.mask, !dbg !187
  %mul390.1 = or disjoint i32 %xor389709.1, 256, !dbg !187
  %xor398.1 = shl nuw nsw i32 %xor396, 2, !dbg !188
  %mul399.1 = xor i32 %xor398.1, 4, !dbg !188
  %add400.1 = add nuw nsw i32 %mul390.1, %mul399.1, !dbg !189
  %add405.1 = or disjoint i32 %add400.1, %mul404, !dbg !190
  %add.ptr407.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add405.1, !dbg !191
  %v_column.sroa.18.0.insert.ext846 = zext i16 %v_fetch.sroa.13.16.copyload to i32, !dbg !192
  %v_column.sroa.18.0.insert.shift847 = shl nuw i32 %v_column.sroa.18.0.insert.ext846, 16, !dbg !192
  %v_column.sroa.0.0.insert.ext818 = zext i16 %v_fetch.sroa.4.0.copyload to i32, !dbg !192
  %v_column.sroa.0.0.insert.insert820 = or disjoint i32 %v_column.sroa.18.0.insert.shift847, %v_column.sroa.0.0.insert.ext818, !dbg !192
  store i32 %v_column.sroa.0.0.insert.insert820, ptr addrspace(3) %add.ptr407.1, align 4, !dbg !192, !tbaa !30
  %add383.2 = shl nuw nsw i32 %mul382, 4, !dbg !187
  %xor389709.2 = or disjoint i32 %add383.2, %call386.mask, !dbg !187
  %mul390.2 = or disjoint i32 %xor389709.2, 512, !dbg !187
  %xor398.2 = shl nuw nsw i32 %xor396, 2, !dbg !188
  %mul399.2 = xor i32 %xor398.2, 8, !dbg !188
  %add400.2 = add nuw nsw i32 %mul390.2, %mul399.2, !dbg !189
  %add405.2 = or disjoint i32 %add400.2, %mul404, !dbg !190
  %add.ptr407.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add405.2, !dbg !191
  %v_column.sroa.18.0.insert.ext851 = zext i16 %v_fetch.sroa.14.16.copyload to i32, !dbg !192
  %v_column.sroa.18.0.insert.shift852 = shl nuw i32 %v_column.sroa.18.0.insert.ext851, 16, !dbg !192
  %v_column.sroa.0.0.insert.ext822 = zext i16 %v_fetch.sroa.5.0.copyload to i32, !dbg !192
  %v_column.sroa.0.0.insert.insert824 = or disjoint i32 %v_column.sroa.18.0.insert.shift852, %v_column.sroa.0.0.insert.ext822, !dbg !192
  store i32 %v_column.sroa.0.0.insert.insert824, ptr addrspace(3) %add.ptr407.2, align 4, !dbg !192, !tbaa !30
  %add383.3 = shl nuw nsw i32 %mul382, 4, !dbg !187
  %xor389709.3 = or disjoint i32 %add383.3, %call386.mask, !dbg !187
  %mul390.3 = or disjoint i32 %xor389709.3, 768, !dbg !187
  %xor398.3 = shl nuw nsw i32 %xor396, 2, !dbg !188
  %mul399.3 = xor i32 %xor398.3, 12, !dbg !188
  %add400.3 = add nuw nsw i32 %mul390.3, %mul399.3, !dbg !189
  %add405.3 = or disjoint i32 %add400.3, %mul404, !dbg !190
  %add.ptr407.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add405.3, !dbg !191
  %v_column.sroa.18.0.insert.ext856 = zext i16 %v_fetch.sroa.15.16.copyload to i32, !dbg !192
  %v_column.sroa.18.0.insert.shift857 = shl nuw i32 %v_column.sroa.18.0.insert.ext856, 16, !dbg !192
  %v_column.sroa.0.0.insert.ext826 = zext i16 %v_fetch.sroa.6.0.copyload to i32, !dbg !192
  %v_column.sroa.0.0.insert.insert828 = or disjoint i32 %v_column.sroa.18.0.insert.shift857, %v_column.sroa.0.0.insert.ext826, !dbg !192
  store i32 %v_column.sroa.0.0.insert.insert828, ptr addrspace(3) %add.ptr407.3, align 4, !dbg !192, !tbaa !30
  %add385.4 = shl nuw nsw i32 %mul382, 4, !dbg !187
  %xor389709.4 = or disjoint i32 %add385.4, 16, !dbg !187
  %mul390.4 = xor i32 %xor389709.4, %call386.mask, !dbg !187
  %add400.4 = add nuw nsw i32 %mul390.4, %mul399, !dbg !189
  %add405.4 = or disjoint i32 %add400.4, %mul404, !dbg !190
  %add.ptr407.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add405.4, !dbg !191
  %v_column.sroa.18.0.insert.ext861 = zext i16 %v_fetch.sroa.16.16.copyload to i32, !dbg !192
  %v_column.sroa.18.0.insert.shift862 = shl nuw i32 %v_column.sroa.18.0.insert.ext861, 16, !dbg !192
  %v_column.sroa.0.0.insert.ext830 = zext i16 %v_fetch.sroa.7.0.copyload to i32, !dbg !192
  %v_column.sroa.0.0.insert.insert832 = or disjoint i32 %v_column.sroa.18.0.insert.shift862, %v_column.sroa.0.0.insert.ext830, !dbg !192
  store i32 %v_column.sroa.0.0.insert.insert832, ptr addrspace(3) %add.ptr407.4, align 4, !dbg !192, !tbaa !30
  %add385.5 = shl nuw nsw i32 %mul382, 4, !dbg !187
  %xor389709.5 = or disjoint i32 %add385.5, 272, !dbg !187
  %mul390.5 = xor i32 %xor389709.5, %call386.mask, !dbg !187
  %add400.5 = add nuw nsw i32 %mul390.5, %mul399.1, !dbg !189
  %add405.5 = or disjoint i32 %add400.5, %mul404, !dbg !190
  %add.ptr407.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add405.5, !dbg !191
  %v_column.sroa.18.0.insert.ext866 = zext i16 %v_fetch.sroa.17.16.copyload to i32, !dbg !192
  %v_column.sroa.18.0.insert.shift867 = shl nuw i32 %v_column.sroa.18.0.insert.ext866, 16, !dbg !192
  %v_column.sroa.0.0.insert.ext834 = zext i16 %v_fetch.sroa.8.0.copyload to i32, !dbg !192
  %v_column.sroa.0.0.insert.insert836 = or disjoint i32 %v_column.sroa.18.0.insert.shift867, %v_column.sroa.0.0.insert.ext834, !dbg !192
  store i32 %v_column.sroa.0.0.insert.insert836, ptr addrspace(3) %add.ptr407.5, align 4, !dbg !192, !tbaa !30
  %add385.6 = shl nuw nsw i32 %mul382, 4, !dbg !187
  %xor389709.6 = or disjoint i32 %add385.6, 528, !dbg !187
  %mul390.6 = xor i32 %xor389709.6, %call386.mask, !dbg !187
  %add400.6 = add nuw nsw i32 %mul390.6, %mul399.2, !dbg !189
  %add405.6 = or disjoint i32 %add400.6, %mul404, !dbg !190
  %add.ptr407.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add405.6, !dbg !191
  %v_column.sroa.18.0.insert.ext871 = zext i16 %v_fetch.sroa.18.16.copyload to i32, !dbg !192
  %v_column.sroa.18.0.insert.shift872 = shl nuw i32 %v_column.sroa.18.0.insert.ext871, 16, !dbg !192
  %v_column.sroa.0.0.insert.ext838 = zext i16 %v_fetch.sroa.9.0.copyload to i32, !dbg !192
  %v_column.sroa.0.0.insert.insert840 = or disjoint i32 %v_column.sroa.18.0.insert.shift872, %v_column.sroa.0.0.insert.ext838, !dbg !192
  store i32 %v_column.sroa.0.0.insert.insert840, ptr addrspace(3) %add.ptr407.6, align 4, !dbg !192, !tbaa !30
  %add385.7 = shl nuw nsw i32 %mul382, 4, !dbg !187
  %xor389709.7 = or disjoint i32 %add385.7, 784, !dbg !187
  %mul390.7 = xor i32 %xor389709.7, %call386.mask, !dbg !187
  %add400.7 = add nuw nsw i32 %mul390.7, %mul399.3, !dbg !189
  %add405.7 = or disjoint i32 %add400.7, %mul404, !dbg !190
  %add.ptr407.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add405.7, !dbg !191
  %v_column.sroa.18.0.insert.ext876 = zext i16 %v_fetch.sroa.19.16.copyload to i32, !dbg !192
  %v_column.sroa.18.0.insert.shift877 = shl nuw i32 %v_column.sroa.18.0.insert.ext876, 16, !dbg !192
  %v_column.sroa.0.0.insert.ext842 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !192
  %v_column.sroa.0.0.insert.insert844 = or disjoint i32 %v_column.sroa.18.0.insert.shift877, %v_column.sroa.0.0.insert.ext842, !dbg !192
  store i32 %v_column.sroa.0.0.insert.insert844, ptr addrspace(3) %add.ptr407.7, align 4, !dbg !192, !tbaa !30
  fence syncscope("warp") release, !dbg !193
  tail call void @llvm.mxc.barrier.warp(), !dbg !196
  fence syncscope("warp") acquire, !dbg !197
  %mul417 = and i32 %54, 48
  %shr422 = and i32 %19, 3
  %57 = or disjoint i32 %mul417, %shr422
  %and433 = and i32 %1, 3
  %58 = xor i32 %and57, %and433
  %xor427708 = shl nuw nsw i32 %57, 4, !dbg !198
  %mul428 = xor i32 %xor427708, %call386.mask, !dbg !198
  %59 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul428, !dbg !199
  %add.ptr438.idx = shl nuw nsw i32 %58, 3, !dbg !199
  %add.ptr438 = getelementptr inbounds i8, ptr addrspace(3) %59, i32 %add.ptr438.idx, !dbg !199
  %60 = load <4 x half>, ptr addrspace(3) %add.ptr438, align 8, !dbg !200
  %add423.1 = shl nuw nsw i32 %57, 4, !dbg !198
  %xor427708.1 = or disjoint i32 %add423.1, 64, !dbg !198
  %mul428.1 = xor i32 %xor427708.1, %call386.mask, !dbg !198
  %61 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul428.1, !dbg !199
  %xor434.1 = shl nuw nsw i32 %58, 3, !dbg !199
  %add.ptr438.idx.1 = xor i32 %xor434.1, 8, !dbg !199
  %add.ptr438.1 = getelementptr inbounds i8, ptr addrspace(3) %61, i32 %add.ptr438.idx.1, !dbg !199
  %62 = load <4 x half>, ptr addrspace(3) %add.ptr438.1, align 8, !dbg !200
  %add423.2 = shl nuw nsw i32 %57, 4, !dbg !198
  %xor427708.2 = or disjoint i32 %add423.2, 128, !dbg !198
  %mul428.2 = xor i32 %xor427708.2, %call386.mask, !dbg !198
  %63 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul428.2, !dbg !199
  %xor434.2 = shl nuw nsw i32 %58, 3, !dbg !199
  %add.ptr438.idx.2 = xor i32 %xor434.2, 16, !dbg !199
  %add.ptr438.2 = getelementptr inbounds i8, ptr addrspace(3) %63, i32 %add.ptr438.idx.2, !dbg !199
  %64 = load <4 x half>, ptr addrspace(3) %add.ptr438.2, align 8, !dbg !200
  %add423.3 = shl nuw nsw i32 %57, 4, !dbg !198
  %xor427708.3 = or disjoint i32 %add423.3, 192, !dbg !198
  %mul428.3 = xor i32 %xor427708.3, %call386.mask, !dbg !198
  %65 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul428.3, !dbg !199
  %xor434.3 = shl nuw nsw i32 %58, 3, !dbg !199
  %add.ptr438.idx.3 = xor i32 %xor434.3, 24, !dbg !199
  %add.ptr438.3 = getelementptr inbounds i8, ptr addrspace(3) %65, i32 %add.ptr438.idx.3, !dbg !199
  %66 = load <4 x half>, ptr addrspace(3) %add.ptr438.3, align 8, !dbg !200
  %67 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %60, <4 x half> %53, <4 x float> zeroinitializer), !dbg !201
  %68 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %62, <4 x half> %53, <4 x float> zeroinitializer), !dbg !201
  %69 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %64, <4 x half> %53, <4 x float> zeroinitializer), !dbg !201
  %70 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %66, <4 x half> %53, <4 x float> zeroinitializer), !dbg !201
  %add332 = fadd contract float %add325.3, 0.000000e+00, !dbg !202
  br label %if.end464, !dbg !203

if.end464:                                        ; preds = %if.then, %entry
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %67, %if.then ], !dbg !205
  %numerator.sroa.20.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %68, %if.then ], !dbg !205
  %numerator.sroa.38.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %69, %if.then ], !dbg !205
  %numerator.sroa.56.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %70, %if.then ], !dbg !205
  %denominator.sroa.0.0 = phi float [ 0.000000e+00, %entry ], [ %add332, %if.then ], !dbg !205
  %71 = bitcast float %denominator.sroa.0.0 to i32, !dbg !203
  %72 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !206
  %73 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %72) #10, !dbg !209
  %xor.i.i742 = xor i32 %73, 32, !dbg !210
  %74 = and i32 %73, -64, !dbg !211
  %and.i.i743 = add nsw i32 %74, 64, !dbg !211
  %cmp.not.i.i744 = icmp slt i32 %xor.i.i742, %and.i.i743, !dbg !212
  %cond.i.i745 = select i1 %cmp.not.i.i744, i32 %xor.i.i742, i32 %73, !dbg !213
  %shl.i.i746 = shl i32 %cond.i.i745, 2, !dbg !214
  %75 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i746, i32 %71), !dbg !215
  %76 = bitcast i32 %75 to float, !dbg !216
  %add468 = fadd contract float %denominator.sroa.0.0, %76, !dbg !217
  %77 = bitcast float %add468 to i32, !dbg !218
  %78 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !220
  %79 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %78) #10, !dbg !223
  %xor.i.i747 = xor i32 %79, 16, !dbg !224
  %80 = and i32 %79, -64, !dbg !225
  %and.i.i748 = add nsw i32 %80, 64, !dbg !225
  %cmp.not.i.i749 = icmp slt i32 %xor.i.i747, %and.i.i748, !dbg !226
  %cond.i.i750 = select i1 %cmp.not.i.i749, i32 %xor.i.i747, i32 %79, !dbg !227
  %shl.i.i751 = shl i32 %cond.i.i750, 2, !dbg !228
  %81 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i751, i32 %77), !dbg !229
  %82 = bitcast i32 %81 to float, !dbg !230
  %add473 = fadd contract float %add468, %82, !dbg !231
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !232
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !232
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !232
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !232
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %add473, !dbg !233
  %div493 = fdiv contract float %numerator.sroa.0.4.vec.extract, %add473, !dbg !234
  %div497 = fdiv contract float %numerator.sroa.0.8.vec.extract, %add473, !dbg !235
  %div501 = fdiv contract float %numerator.sroa.0.12.vec.extract, %add473, !dbg !236
  %numerator.sroa.20.16.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 0, !dbg !232
  %numerator.sroa.20.20.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 1, !dbg !232
  %numerator.sroa.20.24.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 2, !dbg !232
  %numerator.sroa.20.28.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 3, !dbg !232
  %div.1 = fdiv contract float %numerator.sroa.20.16.vec.extract, %add473, !dbg !233
  %div493.1 = fdiv contract float %numerator.sroa.20.20.vec.extract, %add473, !dbg !234
  %div497.1 = fdiv contract float %numerator.sroa.20.24.vec.extract, %add473, !dbg !235
  %div501.1 = fdiv contract float %numerator.sroa.20.28.vec.extract, %add473, !dbg !236
  %numerator.sroa.38.32.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 0, !dbg !232
  %numerator.sroa.38.36.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 1, !dbg !232
  %numerator.sroa.38.40.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 2, !dbg !232
  %numerator.sroa.38.44.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 3, !dbg !232
  %div.2 = fdiv contract float %numerator.sroa.38.32.vec.extract, %add473, !dbg !233
  %div493.2 = fdiv contract float %numerator.sroa.38.36.vec.extract, %add473, !dbg !234
  %div497.2 = fdiv contract float %numerator.sroa.38.40.vec.extract, %add473, !dbg !235
  %div501.2 = fdiv contract float %numerator.sroa.38.44.vec.extract, %add473, !dbg !236
  %numerator.sroa.56.48.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 0, !dbg !232
  %numerator.sroa.56.52.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 1, !dbg !232
  %numerator.sroa.56.56.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 2, !dbg !232
  %numerator.sroa.56.60.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 3, !dbg !232
  %div.3 = fdiv contract float %numerator.sroa.56.48.vec.extract, %add473, !dbg !233
  %div493.3 = fdiv contract float %numerator.sroa.56.52.vec.extract, %add473, !dbg !234
  %div497.3 = fdiv contract float %numerator.sroa.56.56.vec.extract, %add473, !dbg !235
  %div501.3 = fdiv contract float %numerator.sroa.56.60.vec.extract, %add473, !dbg !236
  fence syncscope("warp") release, !dbg !237
  tail call void @llvm.mxc.barrier.warp(), !dbg !240
  fence syncscope("warp") acquire, !dbg !241
  %xor550 = shl nuw nsw i32 %7, 2
  %mul551 = and i32 %xor550, 4
  %83 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !242, !noalias !246
  %84 = fptrunc float %div to half, !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %83), !dbg !242, !noalias !246
  %85 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !246
  %86 = fptrunc float %div493 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %85), !dbg !251, !noalias !246
  %87 = bitcast half %84 to i16, !dbg !253
  %88 = bitcast half %86 to i16, !dbg !256
  %89 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %90 = fptrunc float %div497 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %89), !dbg !257, !noalias !261
  %91 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %92 = fptrunc float %div501 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %91), !dbg !266, !noalias !261
  %93 = bitcast half %90 to i16, !dbg !268
  %94 = bitcast half %92 to i16, !dbg !270
  %__7.sroa.6.0.insert.ext = zext i16 %94 to i64, !dbg !271
  %__7.sroa.6.0.insert.shift = shl nuw i64 %__7.sroa.6.0.insert.ext, 48, !dbg !271
  %__7.sroa.5.0.insert.ext = zext i16 %93 to i64, !dbg !271
  %__7.sroa.5.0.insert.shift = shl nuw nsw i64 %__7.sroa.5.0.insert.ext, 32, !dbg !271
  %__7.sroa.5.0.insert.insert = or disjoint i64 %__7.sroa.6.0.insert.shift, %__7.sroa.5.0.insert.shift, !dbg !271
  %__7.sroa.4.0.insert.ext = zext i16 %88 to i64, !dbg !271
  %__7.sroa.4.0.insert.shift = shl nuw nsw i64 %__7.sroa.4.0.insert.ext, 16, !dbg !271
  %__7.sroa.4.0.insert.insert = or disjoint i64 %__7.sroa.5.0.insert.insert, %__7.sroa.4.0.insert.shift, !dbg !271
  %__7.sroa.0.0.insert.ext = zext i16 %87 to i64, !dbg !271
  %__7.sroa.0.0.insert.insert = or disjoint i64 %__7.sroa.4.0.insert.insert, %__7.sroa.0.0.insert.ext, !dbg !271
  %add552 = or disjoint i32 %add55, %mul551, !dbg !272
  %add.ptr554 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add552, !dbg !273
  store i64 %__7.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr554, align 8, !dbg !274
  %95 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !242, !noalias !246
  %96 = fptrunc float %div.1 to half, !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %95), !dbg !242, !noalias !246
  %97 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !246
  %98 = fptrunc float %div493.1 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %97), !dbg !251, !noalias !246
  %99 = bitcast half %96 to i16, !dbg !253
  %100 = bitcast half %98 to i16, !dbg !256
  %101 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %102 = fptrunc float %div497.1 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %101), !dbg !257, !noalias !261
  %103 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %104 = fptrunc float %div501.1 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %103), !dbg !266, !noalias !261
  %105 = bitcast half %102 to i16, !dbg !268
  %106 = bitcast half %104 to i16, !dbg !270
  %__7.sroa.6.0.insert.ext.1 = zext i16 %106 to i64, !dbg !271
  %__7.sroa.6.0.insert.shift.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.1, 48, !dbg !271
  %__7.sroa.5.0.insert.ext.1 = zext i16 %105 to i64, !dbg !271
  %__7.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1, 32, !dbg !271
  %__7.sroa.5.0.insert.insert.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.1, %__7.sroa.5.0.insert.shift.1, !dbg !271
  %__7.sroa.4.0.insert.ext.1 = zext i16 %100 to i64, !dbg !271
  %__7.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1, 16, !dbg !271
  %__7.sroa.4.0.insert.insert.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.1, %__7.sroa.4.0.insert.shift.1, !dbg !271
  %__7.sroa.0.0.insert.ext.1 = zext i16 %99 to i64, !dbg !271
  %__7.sroa.0.0.insert.insert.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.1, %__7.sroa.0.0.insert.ext.1, !dbg !271
  %add552.1 = or disjoint i32 %add55.1, %mul551, !dbg !272
  %add.ptr554.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add552.1, !dbg !273
  store i64 %__7.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr554.1, align 8, !dbg !274
  %107 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !242, !noalias !246
  %108 = fptrunc float %div.2 to half, !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %107), !dbg !242, !noalias !246
  %109 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !246
  %110 = fptrunc float %div493.2 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %109), !dbg !251, !noalias !246
  %111 = bitcast half %108 to i16, !dbg !253
  %112 = bitcast half %110 to i16, !dbg !256
  %113 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %114 = fptrunc float %div497.2 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %113), !dbg !257, !noalias !261
  %115 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %116 = fptrunc float %div501.2 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %115), !dbg !266, !noalias !261
  %117 = bitcast half %114 to i16, !dbg !268
  %118 = bitcast half %116 to i16, !dbg !270
  %__7.sroa.6.0.insert.ext.2 = zext i16 %118 to i64, !dbg !271
  %__7.sroa.6.0.insert.shift.2 = shl nuw i64 %__7.sroa.6.0.insert.ext.2, 48, !dbg !271
  %__7.sroa.5.0.insert.ext.2 = zext i16 %117 to i64, !dbg !271
  %__7.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.2, 32, !dbg !271
  %__7.sroa.5.0.insert.insert.2 = or disjoint i64 %__7.sroa.6.0.insert.shift.2, %__7.sroa.5.0.insert.shift.2, !dbg !271
  %__7.sroa.4.0.insert.ext.2 = zext i16 %112 to i64, !dbg !271
  %__7.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.2, 16, !dbg !271
  %__7.sroa.4.0.insert.insert.2 = or disjoint i64 %__7.sroa.5.0.insert.insert.2, %__7.sroa.4.0.insert.shift.2, !dbg !271
  %__7.sroa.0.0.insert.ext.2 = zext i16 %111 to i64, !dbg !271
  %__7.sroa.0.0.insert.insert.2 = or disjoint i64 %__7.sroa.4.0.insert.insert.2, %__7.sroa.0.0.insert.ext.2, !dbg !271
  %add552.2 = or disjoint i32 %add55.2, %mul551, !dbg !272
  %add.ptr554.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add552.2, !dbg !273
  store i64 %__7.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr554.2, align 8, !dbg !274
  %119 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !242, !noalias !246
  %120 = fptrunc float %div.3 to half, !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %119), !dbg !242, !noalias !246
  %121 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !246
  %122 = fptrunc float %div493.3 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %121), !dbg !251, !noalias !246
  %123 = bitcast half %120 to i16, !dbg !253
  %124 = bitcast half %122 to i16, !dbg !256
  %125 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %126 = fptrunc float %div497.3 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %125), !dbg !257, !noalias !261
  %127 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %128 = fptrunc float %div501.3 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %127), !dbg !266, !noalias !261
  %129 = bitcast half %126 to i16, !dbg !268
  %130 = bitcast half %128 to i16, !dbg !270
  %__7.sroa.6.0.insert.ext.3 = zext i16 %130 to i64, !dbg !271
  %__7.sroa.6.0.insert.shift.3 = shl nuw i64 %__7.sroa.6.0.insert.ext.3, 48, !dbg !271
  %__7.sroa.5.0.insert.ext.3 = zext i16 %129 to i64, !dbg !271
  %__7.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.3, 32, !dbg !271
  %__7.sroa.5.0.insert.insert.3 = or disjoint i64 %__7.sroa.6.0.insert.shift.3, %__7.sroa.5.0.insert.shift.3, !dbg !271
  %__7.sroa.4.0.insert.ext.3 = zext i16 %124 to i64, !dbg !271
  %__7.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.3, 16, !dbg !271
  %__7.sroa.4.0.insert.insert.3 = or disjoint i64 %__7.sroa.5.0.insert.insert.3, %__7.sroa.4.0.insert.shift.3, !dbg !271
  %__7.sroa.0.0.insert.ext.3 = zext i16 %123 to i64, !dbg !271
  %__7.sroa.0.0.insert.insert.3 = or disjoint i64 %__7.sroa.4.0.insert.insert.3, %__7.sroa.0.0.insert.ext.3, !dbg !271
  %add552.3 = or disjoint i32 %add55.3, %mul551, !dbg !272
  %add.ptr554.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add552.3, !dbg !273
  store i64 %__7.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr554.3, align 8, !dbg !274
  fence syncscope("warp") release, !dbg !275
  tail call void @llvm.mxc.barrier.warp(), !dbg !278
  fence syncscope("warp") acquire, !dbg !279
  %131 = load i64, ptr addrspace(3) %4, align 16, !dbg !280
  %add.ptr582.1 = getelementptr inbounds i8, ptr addrspace(3) %4, i32 8, !dbg !281
  %132 = load i64, ptr addrspace(3) %add.ptr582.1, align 8, !dbg !280
  %add.ptr600 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %2, !dbg !282
  store i64 %131, ptr addrspace(1) %add.ptr600, align 16, !dbg !283
  %output_fetch.sroa.6.0.add.ptr600.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr600, i64 8, !dbg !283
  store i64 %132, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr600.sroa_idx, align 8, !dbg !283
  %add.ptr582.1814 = getelementptr inbounds i8, ptr addrspace(3) %4, i32 1032, !dbg !281
  %133 = load i64, ptr addrspace(3) %add.ptr582.1814, align 8, !dbg !280
  %134 = load i64, ptr addrspace(3) %6, align 16, !dbg !280
  %add.ptr600.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %5, !dbg !282
  store i64 %133, ptr addrspace(1) %add.ptr600.1, align 16, !dbg !283
  %output_fetch.sroa.6.0.add.ptr600.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr600.1, i64 8, !dbg !283
  store i64 %134, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr600.1.sroa_idx, align 8, !dbg !283
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v234_worker2_case2_bounded_kv_index_subagent2/codegen/power_v234/case2_stage1.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v234_worker2_case2_bounded_kv_index_subagent2/codegen/power_v234/case2_stage1.device.cpp", directory: "/root/tilelang-metax")
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
!60 = !DILocation(line: 37, column: 111, scope: !40)
!61 = !DILocation(line: 46, column: 22, scope: !40)
!62 = !DILocation(line: 46, column: 49, scope: !40)
!63 = !DILocation(line: 47, column: 10, scope: !40)
!64 = !DILocation(line: 47, column: 26, scope: !40)
!65 = !DILocation(line: 37, column: 174, scope: !40)
!66 = !DILocation(line: 37, column: 57, scope: !40)
!67 = !DILocation(line: 37, column: 38, scope: !40)
!68 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !69)
!69 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !70)
!70 = distinct !DILocation(line: 48, column: 5, scope: !40)
!71 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !69)
!72 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !69)
!73 = !DILocation(line: 50, column: 5, scope: !40)
!74 = !DILocation(line: 51, column: 45, scope: !40)
!75 = !DILocation(line: 51, column: 31, scope: !40)
!76 = !DILocation(line: 54, column: 211, scope: !40)
!77 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !78)
!78 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !79)
!79 = distinct !DILocation(line: 57, column: 5, scope: !40)
!80 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !78)
!81 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !78)
!82 = !DILocation(line: 62, column: 30, scope: !40)
!83 = !DILocation(line: 64, column: 37, scope: !40)
!84 = !DILocation(line: 72, column: 72, scope: !40)
!85 = !DILocation(line: 72, column: 11, scope: !40)
!86 = !DILocation(line: 72, column: 61, scope: !40)
!87 = !DILocation(line: 351, column: 10, scope: !88, inlinedAt: !90)
!88 = distinct !DISubprogram(name: "max", scope: !89, file: !89, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!89 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!90 = distinct !DILocation(line: 82, column: 20, scope: !40)
!91 = !DILocation(line: 1018, column: 9, scope: !92, inlinedAt: !93)
!92 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!93 = distinct !DILocation(line: 84, column: 34, scope: !40)
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
!108 = distinct !DILocation(line: 84, column: 18, scope: !40)
!109 = !DILocation(line: 1018, column: 9, scope: !92, inlinedAt: !110)
!110 = distinct !DILocation(line: 85, column: 34, scope: !40)
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
!123 = distinct !DILocation(line: 85, column: 18, scope: !40)
!124 = !DILocation(line: 95, column: 24, scope: !40)
!125 = !DILocation(line: 96, column: 24, scope: !40)
!126 = !DILocation(line: 97, column: 24, scope: !40)
!127 = !DILocation(line: 98, column: 24, scope: !40)
!128 = !DILocation(line: 100, column: 23, scope: !40)
!129 = !DILocation(line: 101, column: 23, scope: !40)
!130 = !DILocation(line: 102, column: 23, scope: !40)
!131 = !DILocation(line: 103, column: 23, scope: !40)
!132 = !DILocation(line: 105, column: 21, scope: !40)
!133 = !DILocation(line: 106, column: 21, scope: !40)
!134 = !DILocation(line: 107, column: 21, scope: !40)
!135 = !DILocation(line: 108, column: 21, scope: !40)
!136 = !DILocation(line: 285, column: 49, scope: !137, inlinedAt: !138)
!137 = distinct !DISubprogram(name: "exp2f", scope: !89, file: !89, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!138 = distinct !DILocation(line: 109, column: 13, scope: !40)
!139 = !DILocation(line: 285, column: 49, scope: !137, inlinedAt: !140)
!140 = distinct !DILocation(line: 110, column: 13, scope: !40)
!141 = !DILocation(line: 285, column: 49, scope: !137, inlinedAt: !142)
!142 = distinct !DILocation(line: 111, column: 13, scope: !40)
!143 = !DILocation(line: 285, column: 49, scope: !137, inlinedAt: !144)
!144 = distinct !DILocation(line: 112, column: 13, scope: !40)
!145 = !DILocation(line: 1007, column: 10, scope: !146, inlinedAt: !148)
!146 = distinct !DISubprogram(name: "__float2half_rn", scope: !147, file: !147, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!147 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!148 = distinct !DILocation(line: 1077, column: 18, scope: !149, inlinedAt: !150)
!149 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !147, file: !147, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!150 = distinct !DILocation(line: 1295, column: 23, scope: !151, inlinedAt: !152)
!151 = distinct !DISubprogram(name: "__float22half2_rn", scope: !147, file: !147, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!152 = distinct !DILocation(line: 113, column: 27, scope: !40)
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
!163 = distinct !DILocation(line: 114, column: 27, scope: !40)
!164 = !{!165, !167}
!165 = distinct !{!165, !166, !"_ZL17__floats2half2_rnff: %agg.result"}
!166 = distinct !{!166, !"_ZL17__floats2half2_rnff"}
!167 = distinct !{!167, !168, !"_ZL17__float22half2_rn6float2: %agg.result"}
!168 = distinct !{!168, !"_ZL17__float22half2_rn6float2"}
!169 = !DILocation(line: 1007, column: 10, scope: !146, inlinedAt: !170)
!170 = distinct !DILocation(line: 1077, column: 38, scope: !149, inlinedAt: !162)
!171 = !DILocation(line: 115, column: 34, scope: !40)
!172 = !DILocation(line: 1082, column: 16, scope: !173, inlinedAt: !174)
!173 = distinct !DISubprogram(name: "__half2float", scope: !147, file: !147, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!174 = distinct !DILocation(line: 136, column: 55, scope: !175, inlinedAt: !176)
!175 = distinct !DISubprogram(name: "operator float", scope: !147, file: !147, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!176 = distinct !DILocation(line: 119, column: 50, scope: !40)
!177 = !DILocation(line: 119, column: 40, scope: !40)
!178 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !179)
!179 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !180)
!180 = distinct !DILocation(line: 122, column: 5, scope: !40)
!181 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !179)
!182 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !179)
!183 = !DILocation(line: 124, column: 5, scope: !40)
!184 = !DILocation(line: 125, column: 52, scope: !40)
!185 = !DILocation(line: 125, column: 38, scope: !40)
!186 = !DILocation(line: 125, column: 137, scope: !40)
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
!203 = !DILocation(line: 1018, column: 9, scope: !92, inlinedAt: !204)
!204 = distinct !DILocation(line: 148, column: 38, scope: !40)
!205 = !DILocation(line: 0, scope: !40)
!206 = !DILocation(line: 171, column: 37, scope: !95, inlinedAt: !207)
!207 = distinct !DILocation(line: 990, column: 14, scope: !97, inlinedAt: !208)
!208 = distinct !DILocation(line: 1019, column: 11, scope: !92, inlinedAt: !204)
!209 = !DILocation(line: 171, column: 10, scope: !95, inlinedAt: !207)
!210 = !DILocation(line: 991, column: 20, scope: !97, inlinedAt: !208)
!211 = !DILocation(line: 992, column: 36, scope: !97, inlinedAt: !208)
!212 = !DILocation(line: 992, column: 17, scope: !97, inlinedAt: !208)
!213 = !DILocation(line: 992, column: 11, scope: !97, inlinedAt: !208)
!214 = !DILocation(line: 993, column: 43, scope: !97, inlinedAt: !208)
!215 = !DILocation(line: 993, column: 10, scope: !97, inlinedAt: !208)
!216 = !DILocation(line: 1020, column: 14, scope: !92, inlinedAt: !204)
!217 = !DILocation(line: 148, column: 36, scope: !40)
!218 = !DILocation(line: 1018, column: 9, scope: !92, inlinedAt: !219)
!219 = distinct !DILocation(line: 149, column: 38, scope: !40)
!220 = !DILocation(line: 171, column: 37, scope: !95, inlinedAt: !221)
!221 = distinct !DILocation(line: 990, column: 14, scope: !97, inlinedAt: !222)
!222 = distinct !DILocation(line: 1019, column: 11, scope: !92, inlinedAt: !219)
!223 = !DILocation(line: 171, column: 10, scope: !95, inlinedAt: !221)
!224 = !DILocation(line: 991, column: 20, scope: !97, inlinedAt: !222)
!225 = !DILocation(line: 992, column: 36, scope: !97, inlinedAt: !222)
!226 = !DILocation(line: 992, column: 17, scope: !97, inlinedAt: !222)
!227 = !DILocation(line: 992, column: 11, scope: !97, inlinedAt: !222)
!228 = !DILocation(line: 993, column: 43, scope: !97, inlinedAt: !222)
!229 = !DILocation(line: 993, column: 10, scope: !97, inlinedAt: !222)
!230 = !DILocation(line: 1020, column: 14, scope: !92, inlinedAt: !219)
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
!242 = !DILocation(line: 1007, column: 10, scope: !146, inlinedAt: !243)
!243 = distinct !DILocation(line: 1077, column: 18, scope: !149, inlinedAt: !244)
!244 = distinct !DILocation(line: 1295, column: 23, scope: !151, inlinedAt: !245)
!245 = distinct !DILocation(line: 166, column: 27, scope: !40)
!246 = !{!247, !249}
!247 = distinct !{!247, !248, !"_ZL17__floats2half2_rnff: %agg.result"}
!248 = distinct !{!248, !"_ZL17__floats2half2_rnff"}
!249 = distinct !{!249, !250, !"_ZL17__float22half2_rn6float2: %agg.result"}
!250 = distinct !{!250, !"_ZL17__float22half2_rn6float2"}
!251 = !DILocation(line: 1007, column: 10, scope: !146, inlinedAt: !252)
!252 = distinct !DILocation(line: 1077, column: 38, scope: !149, inlinedAt: !244)
!253 = !DILocation(line: 596, column: 67, scope: !254, inlinedAt: !255)
!254 = distinct !DISubprogram(name: "__half2", scope: !147, file: !147, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!255 = distinct !DILocation(line: 1077, column: 10, scope: !149, inlinedAt: !244)
!256 = !DILocation(line: 596, column: 73, scope: !254, inlinedAt: !255)
!257 = !DILocation(line: 1007, column: 10, scope: !146, inlinedAt: !258)
!258 = distinct !DILocation(line: 1077, column: 18, scope: !149, inlinedAt: !259)
!259 = distinct !DILocation(line: 1295, column: 23, scope: !151, inlinedAt: !260)
!260 = distinct !DILocation(line: 167, column: 27, scope: !40)
!261 = !{!262, !264}
!262 = distinct !{!262, !263, !"_ZL17__floats2half2_rnff: %agg.result"}
!263 = distinct !{!263, !"_ZL17__floats2half2_rnff"}
!264 = distinct !{!264, !265, !"_ZL17__float22half2_rn6float2: %agg.result"}
!265 = distinct !{!265, !"_ZL17__float22half2_rn6float2"}
!266 = !DILocation(line: 1007, column: 10, scope: !146, inlinedAt: !267)
!267 = distinct !DILocation(line: 1077, column: 38, scope: !149, inlinedAt: !259)
!268 = !DILocation(line: 596, column: 67, scope: !254, inlinedAt: !269)
!269 = distinct !DILocation(line: 1077, column: 10, scope: !149, inlinedAt: !259)
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
