; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v217_worker2_c8_qk_shared_store16_branch_subagent2/codegen/power_v217/case8_stage1.device.cpp'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v217_worker2_c8_qk_shared_store16_branch_subagent2/codegen/power_v217/case8_stage1.device.cpp"
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
  %mul7 = shl nsw i32 %1, 10
  %add = add nuw nsw i32 %mul, %mul7
  %2 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !42
  %mul11 = shl nuw nsw i32 %2, 3
  %add9 = add nuw nsw i32 %add, %mul11
  %and = lshr i32 %2, 3
  %shr = and i32 %and, 1
  %mul33 = and i32 %mul11, 8128
  %xor39746 = and i32 %mul11, 56
  %call37.masked = and i32 %2, 1016
  %mul40 = xor i32 %xor39746, %call37.masked
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul33, !dbg !43
  %invariant.gep812 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul40, !dbg !43
  %3 = zext nneg i32 %add9 to i64, !dbg !44
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %3, !dbg !45
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %add.ptr, align 16, !dbg !46
  %qk_fetch.sroa.8.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !46
  %qk_fetch.sroa.8.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.8.0.add.ptr.sroa_idx, align 8, !dbg !46
  %cmp15.not = icmp eq i32 %shr, 0, !dbg !47
  %qk_fetch.sroa.0.0.copyload.qk_fetch.sroa.8.0.copyload = select i1 %cmp15.not, i64 %qk_fetch.sroa.0.0.copyload, i64 %qk_fetch.sroa.8.0.copyload
  %qk_fetch.sroa.8.0.copyload.qk_fetch.sroa.0.0.copyload = select i1 %cmp15.not, i64 %qk_fetch.sroa.8.0.copyload, i64 %qk_fetch.sroa.0.0.copyload
  store i64 %qk_fetch.sroa.0.0.copyload.qk_fetch.sroa.8.0.copyload, ptr addrspace(3) %invariant.gep812, align 16, !dbg !48
  %qk_store.sroa.8.0.add.ptr43.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep812, i32 8, !dbg !48
  store i64 %qk_fetch.sroa.8.0.copyload.qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %qk_store.sroa.8.0.add.ptr43.sroa_idx, align 8, !dbg !48
  %4 = add nuw nsw i64 %3, 512, !dbg !49
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %4, !dbg !45
  %qk_fetch.sroa.0.0.copyload.1 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !46
  %qk_fetch.sroa.8.0.add.ptr.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !46
  %qk_fetch.sroa.8.0.copyload.1 = load i64, ptr addrspace(4) %qk_fetch.sroa.8.0.add.ptr.sroa_idx.1, align 8, !dbg !46
  %cmp15.not.1.not = icmp eq i32 %shr, 0, !dbg !47
  %qk_fetch.sroa.0.0.copyload.qk_fetch.sroa.8.0.copyload.1 = select i1 %cmp15.not.1.not, i64 %qk_fetch.sroa.8.0.copyload.1, i64 %qk_fetch.sroa.0.0.copyload.1
  %qk_fetch.sroa.8.0.copyload.qk_fetch.sroa.0.0.copyload.1 = select i1 %cmp15.not.1.not, i64 %qk_fetch.sroa.0.0.copyload.1, i64 %qk_fetch.sroa.8.0.copyload.1
  %gep813.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep812, i32 1024, !dbg !50
  store i64 %qk_fetch.sroa.0.0.copyload.qk_fetch.sroa.8.0.copyload.1, ptr addrspace(3) %gep813.1, align 16, !dbg !48
  %qk_store.sroa.8.0.add.ptr43.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep812, i32 1032, !dbg !48
  store i64 %qk_fetch.sroa.8.0.copyload.qk_fetch.sroa.0.0.copyload.1, ptr addrspace(3) %qk_store.sroa.8.0.add.ptr43.sroa_idx.1, align 8, !dbg !48
  fence syncscope("warp") release, !dbg !51
  tail call void @llvm.mxc.barrier.warp(), !dbg !57
  fence syncscope("warp") acquire, !dbg !58
  %and50 = shl nuw nsw i32 %2, 6
  %mul51 = and i32 %and50, 960
  %shr54 = lshr i32 %2, 5
  %and57 = and i32 %2, 7
  %and62 = lshr i32 %2, 4
  %5 = xor i32 %and, %and62
  %xor58 = xor i32 %shr54, %and57, !dbg !59
  %mul59 = shl nuw nsw i32 %xor58, 3, !dbg !60
  %add60 = add nuw nsw i32 %mul59, %mul51, !dbg !61
  %add55.1 = add nuw nsw i32 %shr54, 2, !dbg !62
  %xor58.1 = xor i32 %add55.1, %and57, !dbg !59
  %mul59.1 = shl nuw nsw i32 %xor58.1, 3, !dbg !60
  %add60.1 = add nuw nsw i32 %mul59.1, %mul51, !dbg !61
  %add55.2 = add nuw nsw i32 %shr54, 4, !dbg !62
  %xor58.2 = xor i32 %add55.2, %and57, !dbg !59
  %mul59.2 = shl nuw nsw i32 %xor58.2, 3, !dbg !60
  %add60.2 = add nuw nsw i32 %mul59.2, %mul51, !dbg !61
  %add55.3 = add nuw nsw i32 %shr54, 6, !dbg !62
  %xor58.3 = xor i32 %add55.3, %and57, !dbg !59
  %mul59.3 = shl nuw nsw i32 %xor58.3, 3, !dbg !60
  %add60.3 = add nuw nsw i32 %mul59.3, %mul51, !dbg !61
  %mul98 = shl nsw i32 %0, 12, !dbg !63
  %add100 = add nuw nsw i32 %mul98, %1, !dbg !64
  %idxprom = zext nneg i32 %add100 to i64, !dbg !65
  %arrayidx101 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %idxprom, !dbg !65
  %6 = load i32, ptr addrspace(1) %arrayidx101, align 4, !dbg !65, !tbaa !30
  %mul102 = shl nsw i32 %6, 4, !dbg !66
  %cmp103 = icmp slt i32 %6, 0, !dbg !67
  %cmp105.not = icmp sgt i32 %mul102, %1
  %or.cond = select i1 %cmp103, i1 true, i1 %cmp105.not, !dbg !68
  br i1 %or.cond, label %if.end497, label %if.then106, !dbg !68

if.then106:                                       ; preds = %entry
  %xor67745 = xor i32 %5, %2
  %xor70 = shl nuw nsw i32 %xor67745, 2
  %mul71 = and i32 %xor70, 4
  %add72.3 = or disjoint i32 %add60.3, %mul71, !dbg !69
  %add.ptr74.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add72.3, !dbg !70
  %7 = load <4 x half>, ptr addrspace(3) %add.ptr74.3, align 8, !dbg !71
  %add72.2 = or disjoint i32 %add60.2, %mul71, !dbg !69
  %add.ptr74.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add72.2, !dbg !70
  %8 = load <4 x half>, ptr addrspace(3) %add.ptr74.2, align 8, !dbg !71
  %add72.1 = or disjoint i32 %add60.1, %mul71, !dbg !69
  %add.ptr74.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add72.1, !dbg !70
  %9 = load <4 x half>, ptr addrspace(3) %add.ptr74.1, align 8, !dbg !71
  %add72 = or disjoint i32 %add60, %mul71, !dbg !69
  %add.ptr74 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add72, !dbg !70
  %10 = load <4 x half>, ptr addrspace(3) %add.ptr74, align 8, !dbg !71
  fence syncscope("warp") release, !dbg !72
  tail call void @llvm.mxc.barrier.warp(), !dbg !75
  fence syncscope("warp") acquire, !dbg !76
  %conv = zext nneg i32 %0 to i64
  %conv117 = zext nneg i32 %mul102 to i64
  %mul122 = zext nneg i32 %mul11 to i64
  %.idx = shl nuw nsw i64 %conv117, 7
  %invariant.gep817 = getelementptr inbounds i8, ptr addrspace(4) %K.coerce, i64 %.idx, !dbg !77
  %invariant.gep818 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep817, i64 %mul122, !dbg !77
  %.idx839 = shl nuw nsw i64 %conv, 19, !dbg !78
  %11 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep818, i64 %.idx839, !dbg !78
  %qk_fetch.sroa.0.0.copyload802 = load i64, ptr addrspace(4) %11, align 16, !dbg !79
  %qk_fetch.sroa.8.0.add.ptr124.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %11, i64 8, !dbg !79
  %qk_fetch.sroa.8.0.copyload803 = load i64, ptr addrspace(4) %qk_fetch.sroa.8.0.add.ptr124.sroa_idx, align 8, !dbg !79
  %qk_fetch.sroa.0.0.copyload802.qk_fetch.sroa.8.0.copyload803 = select i1 %cmp15.not, i64 %qk_fetch.sroa.0.0.copyload802, i64 %qk_fetch.sroa.8.0.copyload803
  %qk_fetch.sroa.8.0.copyload803.qk_fetch.sroa.0.0.copyload802 = select i1 %cmp15.not, i64 %qk_fetch.sroa.8.0.copyload803, i64 %qk_fetch.sroa.0.0.copyload802
  store i64 %qk_fetch.sroa.0.0.copyload802.qk_fetch.sroa.8.0.copyload803, ptr addrspace(3) %invariant.gep812, align 16, !dbg !80
  store i64 %qk_fetch.sroa.8.0.copyload803.qk_fetch.sroa.0.0.copyload802, ptr addrspace(3) %qk_store.sroa.8.0.add.ptr43.sroa_idx, align 8, !dbg !80
  %gep819.1 = getelementptr inbounds i8, ptr addrspace(4) %11, i64 1024, !dbg !78
  %qk_fetch.sroa.0.0.copyload802.1 = load i64, ptr addrspace(4) %gep819.1, align 16, !dbg !79
  %qk_fetch.sroa.8.0.add.ptr124.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %11, i64 1032, !dbg !79
  %qk_fetch.sroa.8.0.copyload803.1 = load i64, ptr addrspace(4) %qk_fetch.sroa.8.0.add.ptr124.sroa_idx.1, align 8, !dbg !79
  %qk_fetch.sroa.0.0.copyload802.qk_fetch.sroa.8.0.copyload803.1 = select i1 %cmp15.not.1.not, i64 %qk_fetch.sroa.8.0.copyload803.1, i64 %qk_fetch.sroa.0.0.copyload802.1
  %qk_fetch.sroa.8.0.copyload803.qk_fetch.sroa.0.0.copyload802.1 = select i1 %cmp15.not.1.not, i64 %qk_fetch.sroa.0.0.copyload802.1, i64 %qk_fetch.sroa.8.0.copyload803.1
  store i64 %qk_fetch.sroa.0.0.copyload802.qk_fetch.sroa.8.0.copyload803.1, ptr addrspace(3) %gep813.1, align 16, !dbg !80
  store i64 %qk_fetch.sroa.8.0.copyload803.qk_fetch.sroa.0.0.copyload802.1, ptr addrspace(3) %qk_store.sroa.8.0.add.ptr43.sroa_idx.1, align 8, !dbg !80
  fence syncscope("warp") release, !dbg !81
  tail call void @llvm.mxc.barrier.warp(), !dbg !84
  fence syncscope("warp") acquire, !dbg !85
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr74, align 8, !dbg !86
  %12 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %10, <4 x float> zeroinitializer), !dbg !87
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr74.1, align 8, !dbg !86
  %13 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %9, <4 x float> %12), !dbg !87
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr74.2, align 8, !dbg !86
  %14 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %8, <4 x float> %13), !dbg !87
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr74.3, align 8, !dbg !86
  %15 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %7, <4 x float> %14), !dbg !87
  %16 = lshr i32 %2, 2
  %mul222 = and i32 %16, 252
  %add223 = add nuw nsw i32 %mul102, %mul222
  %cmp226.not = icmp sgt i32 %add223, %1, !dbg !88
  %scores.sroa.0.0.vec.extract931 = extractelement <4 x float> %15, i64 0
  %spec.select = select i1 %cmp226.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract931, !dbg !89
  %cmp226.not.1.not = icmp slt i32 %add223, %1, !dbg !88
  %scores.sroa.0.4.vec.extract938 = extractelement <4 x float> %15, i64 1, !dbg !89
  %condval.0.1 = select i1 %cmp226.not.1.not, float %scores.sroa.0.4.vec.extract938, float 0xFFF0000000000000, !dbg !89
  %add224.2 = or disjoint i32 %add223, 2, !dbg !90
  %cmp226.not.2 = icmp sgt i32 %add224.2, %1, !dbg !88
  %scores.sroa.0.8.vec.extract945 = extractelement <4 x float> %15, i64 2, !dbg !89
  %condval.0.2 = select i1 %cmp226.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract945, !dbg !89
  %add224.3 = or disjoint i32 %add223, 3, !dbg !90
  %cmp226.not.3 = icmp sgt i32 %add224.3, %1, !dbg !88
  %scores.sroa.0.12.vec.extract952 = extractelement <4 x float> %15, i64 3, !dbg !89
  %condval.0.3 = select i1 %cmp226.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract952, !dbg !89
  %17 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !91
  %18 = tail call contract noundef float @llvm.maxnum.f32(float %17, float %condval.0.1), !dbg !91
  %19 = tail call contract noundef float @llvm.maxnum.f32(float %18, float %condval.0.2), !dbg !91
  %20 = tail call contract noundef float @llvm.maxnum.f32(float %19, float %condval.0.3), !dbg !91
  %21 = bitcast float %20 to i32, !dbg !95
  %22 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !98
  %23 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %22) #10, !dbg !103
  %xor.i.i = xor i32 %23, 32, !dbg !104
  %24 = and i32 %23, -64, !dbg !105
  %and.i.i = add nsw i32 %24, 64, !dbg !105
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !106
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %23, !dbg !107
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !108
  %25 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %21), !dbg !109
  %26 = bitcast i32 %25 to float, !dbg !110
  %27 = tail call contract noundef float @llvm.maxnum.f32(float %20, float %26), !dbg !111
  %28 = bitcast float %27 to i32, !dbg !113
  %29 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !115
  %30 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %29) #10, !dbg !118
  %xor.i.i748 = xor i32 %30, 16, !dbg !119
  %31 = and i32 %30, -64, !dbg !120
  %and.i.i749 = add nsw i32 %31, 64, !dbg !120
  %cmp.not.i.i750 = icmp slt i32 %xor.i.i748, %and.i.i749, !dbg !121
  %cond.i.i751 = select i1 %cmp.not.i.i750, i32 %xor.i.i748, i32 %30, !dbg !122
  %shl.i.i752 = shl i32 %cond.i.i751, 2, !dbg !123
  %32 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i752, i32 %28), !dbg !124
  %33 = bitcast i32 %32 to float, !dbg !125
  %34 = tail call contract noundef float @llvm.maxnum.f32(float %27, float %33), !dbg !126
  %sub = fsub contract float %spec.select, %34, !dbg !128
  %sub275 = fsub contract float %condval.0.1, %34, !dbg !129
  %sub278 = fsub contract float %condval.0.2, %34, !dbg !130
  %sub281 = fsub contract float %condval.0.3, %34, !dbg !131
  %mul286 = fmul contract float %sub, 0x3FC7154760000000, !dbg !132
  %mul290 = fmul contract float %sub275, 0x3FC7154760000000, !dbg !133
  %mul294 = fmul contract float %sub278, 0x3FC7154760000000, !dbg !134
  %mul298 = fmul contract float %sub281, 0x3FC7154760000000, !dbg !135
  %add303 = fadd contract float %mul286, 8.000000e+00, !dbg !136
  %add307 = fadd contract float %mul290, 8.000000e+00, !dbg !137
  %add311 = fadd contract float %mul294, 8.000000e+00, !dbg !138
  %add315 = fadd contract float %mul298, 8.000000e+00, !dbg !139
  %cmp.i.i = fcmp contract olt float %add303, -1.260000e+02, !dbg !140
  %cond.i.i753 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !140
  %add.i.i = fadd contract float %add303, %cond.i.i753, !dbg !140
  %35 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !140
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !140
  %mul.i.i = fmul contract float %cond2.i.i, %35, !dbg !140
  %cmp.i.i754 = fcmp contract olt float %add307, -1.260000e+02, !dbg !143
  %cond.i.i755 = select contract i1 %cmp.i.i754, float 6.400000e+01, float 0.000000e+00, !dbg !143
  %add.i.i756 = fadd contract float %add307, %cond.i.i755, !dbg !143
  %36 = tail call contract float @llvm.exp2.f32(float %add.i.i756), !dbg !143
  %cond2.i.i757 = select contract i1 %cmp.i.i754, float 0x3BF0000000000000, float 1.000000e+00, !dbg !143
  %mul.i.i758 = fmul contract float %cond2.i.i757, %36, !dbg !143
  %cmp.i.i759 = fcmp contract olt float %add311, -1.260000e+02, !dbg !145
  %cond.i.i760 = select contract i1 %cmp.i.i759, float 6.400000e+01, float 0.000000e+00, !dbg !145
  %add.i.i761 = fadd contract float %add311, %cond.i.i760, !dbg !145
  %37 = tail call contract float @llvm.exp2.f32(float %add.i.i761), !dbg !145
  %cond2.i.i762 = select contract i1 %cmp.i.i759, float 0x3BF0000000000000, float 1.000000e+00, !dbg !145
  %mul.i.i763 = fmul contract float %cond2.i.i762, %37, !dbg !145
  %cmp.i.i764 = fcmp contract olt float %add315, -1.260000e+02, !dbg !147
  %cond.i.i765 = select contract i1 %cmp.i.i764, float 6.400000e+01, float 0.000000e+00, !dbg !147
  %add.i.i766 = fadd contract float %add315, %cond.i.i765, !dbg !147
  %38 = tail call contract float @llvm.exp2.f32(float %add.i.i766), !dbg !147
  %cond2.i.i767 = select contract i1 %cmp.i.i764, float 0x3BF0000000000000, float 1.000000e+00, !dbg !147
  %mul.i.i768 = fmul contract float %cond2.i.i767, %38, !dbg !147
  %39 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !149
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !149, !noalias !157
  %40 = fptrunc float %mul.i.i to half, !dbg !149
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %39), !dbg !149, !noalias !157
  %41 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !162
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !162, !noalias !157
  %42 = fptrunc float %mul.i.i758 to half, !dbg !162
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %41), !dbg !162, !noalias !157
  %43 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !164
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !164, !noalias !168
  %44 = fptrunc float %mul.i.i763 to half, !dbg !164
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %43), !dbg !164, !noalias !168
  %45 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !168
  %46 = fptrunc float %mul.i.i768 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %45), !dbg !173, !noalias !168
  %47 = insertelement <4 x half> poison, half %40, i64 0, !dbg !175
  %48 = insertelement <4 x half> %47, half %42, i64 1, !dbg !175
  %49 = insertelement <4 x half> %48, half %44, i64 2, !dbg !175
  %50 = insertelement <4 x half> %49, half %46, i64 3, !dbg !175
  %conv.i.i = fpext half %40 to float, !dbg !176
  %add350 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !181
  %conv.i.i.1 = fpext half %42 to float, !dbg !176
  %add350.1 = fadd contract float %add350, %conv.i.i.1, !dbg !181
  %conv.i.i.2 = fpext half %44 to float, !dbg !176
  %add350.2 = fadd contract float %add350.1, %conv.i.i.2, !dbg !181
  %conv.i.i.3 = fpext half %46 to float, !dbg !176
  %add350.3 = fadd contract float %add350.2, %conv.i.i.3, !dbg !181
  fence syncscope("warp") release, !dbg !182
  tail call void @llvm.mxc.barrier.warp(), !dbg !185
  fence syncscope("warp") acquire, !dbg !186
  %mul366 = shl nuw nsw i64 %conv, 18
  %51 = shl nuw nsw i32 %2, 4
  %52 = and i32 %51, 16256
  %mul370 = zext nneg i32 %52 to i64
  %add371 = or disjoint i64 %mul366, %mul370
  %mul381 = zext nneg i32 %xor39746 to i64
  %add374 = or disjoint i64 %add371, %mul381
  %53 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add374, !dbg !187
  %54 = getelementptr inbounds i8, ptr addrspace(4) %53, i64 %.idx, !dbg !187
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %54, align 16, !dbg !188
  %v_fetch.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 2, !dbg !188
  %v_fetch.sroa.4.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.4.0..sroa_idx, align 2, !dbg !188, !tbaa !30
  %v_fetch.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 4, !dbg !188
  %v_fetch.sroa.5.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.5.0..sroa_idx, align 4, !dbg !188
  %v_fetch.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 6, !dbg !188
  %v_fetch.sroa.6.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.6.0..sroa_idx, align 2, !dbg !188, !tbaa !30
  %v_fetch.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 8, !dbg !188
  %v_fetch.sroa.7.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.7.0..sroa_idx, align 8, !dbg !188
  %v_fetch.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 10, !dbg !188
  %v_fetch.sroa.8.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.8.0..sroa_idx, align 2, !dbg !188, !tbaa !30
  %v_fetch.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 12, !dbg !188
  %v_fetch.sroa.9.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.9.0..sroa_idx, align 4, !dbg !188
  %v_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 14, !dbg !188
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx, align 2, !dbg !188, !tbaa !30
  %add.ptr383.1 = getelementptr inbounds i8, ptr addrspace(4) %54, i64 128, !dbg !187
  %v_fetch.sroa.11.16.copyload = load i16, ptr addrspace(4) %add.ptr383.1, align 16, !dbg !188
  %v_fetch.sroa.13.16.add.ptr383.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 130, !dbg !188
  %v_fetch.sroa.13.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.13.16.add.ptr383.1.sroa_idx, align 2, !dbg !188, !tbaa !30
  %v_fetch.sroa.14.16.add.ptr383.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 132, !dbg !188
  %v_fetch.sroa.14.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.16.add.ptr383.1.sroa_idx, align 4, !dbg !188
  %v_fetch.sroa.15.16.add.ptr383.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 134, !dbg !188
  %v_fetch.sroa.15.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.15.16.add.ptr383.1.sroa_idx, align 2, !dbg !188, !tbaa !30
  %v_fetch.sroa.16.16.add.ptr383.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 136, !dbg !188
  %v_fetch.sroa.16.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.16.16.add.ptr383.1.sroa_idx, align 8, !dbg !188
  %v_fetch.sroa.17.16.add.ptr383.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 138, !dbg !188
  %v_fetch.sroa.17.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.17.16.add.ptr383.1.sroa_idx, align 2, !dbg !188, !tbaa !30
  %v_fetch.sroa.18.16.add.ptr383.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 140, !dbg !188
  %v_fetch.sroa.18.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.16.add.ptr383.1.sroa_idx, align 4, !dbg !188
  %v_fetch.sroa.19.16.add.ptr383.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %54, i64 142, !dbg !188
  %v_fetch.sroa.19.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.19.16.add.ptr383.1.sroa_idx, align 2, !dbg !188, !tbaa !30
  %and414 = shl nuw nsw i32 %2, 1
  %mul415 = and i32 %and414, 14
  %call419.mask = and i32 %2, 16
  %and427 = lshr i32 %2, 1
  %shr428 = and i32 %and427, 3
  %xor429 = xor i32 %shr428, %and62
  %mul437 = and i32 %16, 2
  %xor422739 = shl nuw nsw i32 %mul415, 4, !dbg !189
  %mul423 = or disjoint i32 %xor422739, %call419.mask, !dbg !189
  %mul432 = shl nuw nsw i32 %xor429, 2, !dbg !190
  %add433 = add nuw nsw i32 %mul423, %mul432, !dbg !191
  %add438 = or disjoint i32 %add433, %mul437, !dbg !192
  %add.ptr440 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add438, !dbg !193
  %v_column.sroa.18.0.insert.ext = zext i16 %v_fetch.sroa.11.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift = shl nuw i32 %v_column.sroa.18.0.insert.ext, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.18.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr440, align 4, !dbg !194, !tbaa !30
  %add416.1 = shl nuw nsw i32 %mul415, 4, !dbg !189
  %xor422739.1 = or disjoint i32 %add416.1, %call419.mask, !dbg !189
  %mul423.1 = or disjoint i32 %xor422739.1, 256, !dbg !189
  %xor431.1 = shl nuw nsw i32 %xor429, 2, !dbg !190
  %mul432.1 = xor i32 %xor431.1, 4, !dbg !190
  %add433.1 = add nuw nsw i32 %mul423.1, %mul432.1, !dbg !191
  %add438.1 = or disjoint i32 %add433.1, %mul437, !dbg !192
  %add.ptr440.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add438.1, !dbg !193
  %v_column.sroa.18.0.insert.ext888 = zext i16 %v_fetch.sroa.13.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift889 = shl nuw i32 %v_column.sroa.18.0.insert.ext888, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext860 = zext i16 %v_fetch.sroa.4.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert862 = or disjoint i32 %v_column.sroa.18.0.insert.shift889, %v_column.sroa.0.0.insert.ext860, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert862, ptr addrspace(3) %add.ptr440.1, align 4, !dbg !194, !tbaa !30
  %add416.2 = shl nuw nsw i32 %mul415, 4, !dbg !189
  %xor422739.2 = or disjoint i32 %add416.2, %call419.mask, !dbg !189
  %mul423.2 = or disjoint i32 %xor422739.2, 512, !dbg !189
  %xor431.2 = shl nuw nsw i32 %xor429, 2, !dbg !190
  %mul432.2 = xor i32 %xor431.2, 8, !dbg !190
  %add433.2 = add nuw nsw i32 %mul423.2, %mul432.2, !dbg !191
  %add438.2 = or disjoint i32 %add433.2, %mul437, !dbg !192
  %add.ptr440.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add438.2, !dbg !193
  %v_column.sroa.18.0.insert.ext893 = zext i16 %v_fetch.sroa.14.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift894 = shl nuw i32 %v_column.sroa.18.0.insert.ext893, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext864 = zext i16 %v_fetch.sroa.5.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert866 = or disjoint i32 %v_column.sroa.18.0.insert.shift894, %v_column.sroa.0.0.insert.ext864, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert866, ptr addrspace(3) %add.ptr440.2, align 4, !dbg !194, !tbaa !30
  %add416.3 = shl nuw nsw i32 %mul415, 4, !dbg !189
  %xor422739.3 = or disjoint i32 %add416.3, %call419.mask, !dbg !189
  %mul423.3 = or disjoint i32 %xor422739.3, 768, !dbg !189
  %xor431.3 = shl nuw nsw i32 %xor429, 2, !dbg !190
  %mul432.3 = xor i32 %xor431.3, 12, !dbg !190
  %add433.3 = add nuw nsw i32 %mul423.3, %mul432.3, !dbg !191
  %add438.3 = or disjoint i32 %add433.3, %mul437, !dbg !192
  %add.ptr440.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add438.3, !dbg !193
  %v_column.sroa.18.0.insert.ext898 = zext i16 %v_fetch.sroa.15.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift899 = shl nuw i32 %v_column.sroa.18.0.insert.ext898, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext868 = zext i16 %v_fetch.sroa.6.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert870 = or disjoint i32 %v_column.sroa.18.0.insert.shift899, %v_column.sroa.0.0.insert.ext868, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert870, ptr addrspace(3) %add.ptr440.3, align 4, !dbg !194, !tbaa !30
  %add418.4 = shl nuw nsw i32 %mul415, 4, !dbg !189
  %xor422739.4 = or disjoint i32 %add418.4, 16, !dbg !189
  %mul423.4 = xor i32 %xor422739.4, %call419.mask, !dbg !189
  %add433.4 = add nuw nsw i32 %mul423.4, %mul432, !dbg !191
  %add438.4 = or disjoint i32 %add433.4, %mul437, !dbg !192
  %add.ptr440.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add438.4, !dbg !193
  %v_column.sroa.18.0.insert.ext903 = zext i16 %v_fetch.sroa.16.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift904 = shl nuw i32 %v_column.sroa.18.0.insert.ext903, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext872 = zext i16 %v_fetch.sroa.7.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert874 = or disjoint i32 %v_column.sroa.18.0.insert.shift904, %v_column.sroa.0.0.insert.ext872, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert874, ptr addrspace(3) %add.ptr440.4, align 4, !dbg !194, !tbaa !30
  %add418.5 = shl nuw nsw i32 %mul415, 4, !dbg !189
  %xor422739.5 = or disjoint i32 %add418.5, 272, !dbg !189
  %mul423.5 = xor i32 %xor422739.5, %call419.mask, !dbg !189
  %add433.5 = add nuw nsw i32 %mul423.5, %mul432.1, !dbg !191
  %add438.5 = or disjoint i32 %add433.5, %mul437, !dbg !192
  %add.ptr440.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add438.5, !dbg !193
  %v_column.sroa.18.0.insert.ext908 = zext i16 %v_fetch.sroa.17.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift909 = shl nuw i32 %v_column.sroa.18.0.insert.ext908, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext876 = zext i16 %v_fetch.sroa.8.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert878 = or disjoint i32 %v_column.sroa.18.0.insert.shift909, %v_column.sroa.0.0.insert.ext876, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert878, ptr addrspace(3) %add.ptr440.5, align 4, !dbg !194, !tbaa !30
  %add418.6 = shl nuw nsw i32 %mul415, 4, !dbg !189
  %xor422739.6 = or disjoint i32 %add418.6, 528, !dbg !189
  %mul423.6 = xor i32 %xor422739.6, %call419.mask, !dbg !189
  %add433.6 = add nuw nsw i32 %mul423.6, %mul432.2, !dbg !191
  %add438.6 = or disjoint i32 %add433.6, %mul437, !dbg !192
  %add.ptr440.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add438.6, !dbg !193
  %v_column.sroa.18.0.insert.ext913 = zext i16 %v_fetch.sroa.18.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift914 = shl nuw i32 %v_column.sroa.18.0.insert.ext913, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext880 = zext i16 %v_fetch.sroa.9.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert882 = or disjoint i32 %v_column.sroa.18.0.insert.shift914, %v_column.sroa.0.0.insert.ext880, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert882, ptr addrspace(3) %add.ptr440.6, align 4, !dbg !194, !tbaa !30
  %add418.7 = shl nuw nsw i32 %mul415, 4, !dbg !189
  %xor422739.7 = or disjoint i32 %add418.7, 784, !dbg !189
  %mul423.7 = xor i32 %xor422739.7, %call419.mask, !dbg !189
  %add433.7 = add nuw nsw i32 %mul423.7, %mul432.3, !dbg !191
  %add438.7 = or disjoint i32 %add433.7, %mul437, !dbg !192
  %add.ptr440.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add438.7, !dbg !193
  %v_column.sroa.18.0.insert.ext918 = zext i16 %v_fetch.sroa.19.16.copyload to i32, !dbg !194
  %v_column.sroa.18.0.insert.shift919 = shl nuw i32 %v_column.sroa.18.0.insert.ext918, 16, !dbg !194
  %v_column.sroa.0.0.insert.ext884 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !194
  %v_column.sroa.0.0.insert.insert886 = or disjoint i32 %v_column.sroa.18.0.insert.shift919, %v_column.sroa.0.0.insert.ext884, !dbg !194
  store i32 %v_column.sroa.0.0.insert.insert886, ptr addrspace(3) %add.ptr440.7, align 4, !dbg !194, !tbaa !30
  fence syncscope("warp") release, !dbg !195
  tail call void @llvm.mxc.barrier.warp(), !dbg !198
  fence syncscope("warp") acquire, !dbg !199
  %mul450 = and i32 %51, 48
  %shr455 = and i32 %16, 3
  %55 = or disjoint i32 %mul450, %shr455
  %and466 = and i32 %2, 3
  %56 = xor i32 %and62, %and466
  %xor460738 = shl nuw nsw i32 %55, 4, !dbg !200
  %mul461 = xor i32 %xor460738, %call419.mask, !dbg !200
  %57 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul461, !dbg !201
  %add.ptr471.idx = shl nuw nsw i32 %56, 3, !dbg !201
  %add.ptr471 = getelementptr inbounds i8, ptr addrspace(3) %57, i32 %add.ptr471.idx, !dbg !201
  %58 = load <4 x half>, ptr addrspace(3) %add.ptr471, align 8, !dbg !202
  %add456.1 = shl nuw nsw i32 %55, 4, !dbg !200
  %xor460738.1 = or disjoint i32 %add456.1, 64, !dbg !200
  %mul461.1 = xor i32 %xor460738.1, %call419.mask, !dbg !200
  %59 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul461.1, !dbg !201
  %xor467.1 = shl nuw nsw i32 %56, 3, !dbg !201
  %add.ptr471.idx.1 = xor i32 %xor467.1, 8, !dbg !201
  %add.ptr471.1 = getelementptr inbounds i8, ptr addrspace(3) %59, i32 %add.ptr471.idx.1, !dbg !201
  %60 = load <4 x half>, ptr addrspace(3) %add.ptr471.1, align 8, !dbg !202
  %add456.2 = shl nuw nsw i32 %55, 4, !dbg !200
  %xor460738.2 = or disjoint i32 %add456.2, 128, !dbg !200
  %mul461.2 = xor i32 %xor460738.2, %call419.mask, !dbg !200
  %61 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul461.2, !dbg !201
  %xor467.2 = shl nuw nsw i32 %56, 3, !dbg !201
  %add.ptr471.idx.2 = xor i32 %xor467.2, 16, !dbg !201
  %add.ptr471.2 = getelementptr inbounds i8, ptr addrspace(3) %61, i32 %add.ptr471.idx.2, !dbg !201
  %62 = load <4 x half>, ptr addrspace(3) %add.ptr471.2, align 8, !dbg !202
  %add456.3 = shl nuw nsw i32 %55, 4, !dbg !200
  %xor460738.3 = or disjoint i32 %add456.3, 192, !dbg !200
  %mul461.3 = xor i32 %xor460738.3, %call419.mask, !dbg !200
  %63 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul461.3, !dbg !201
  %xor467.3 = shl nuw nsw i32 %56, 3, !dbg !201
  %add.ptr471.idx.3 = xor i32 %xor467.3, 24, !dbg !201
  %add.ptr471.3 = getelementptr inbounds i8, ptr addrspace(3) %63, i32 %add.ptr471.idx.3, !dbg !201
  %64 = load <4 x half>, ptr addrspace(3) %add.ptr471.3, align 8, !dbg !202
  %65 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %58, <4 x half> %50, <4 x float> zeroinitializer), !dbg !203
  %66 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %60, <4 x half> %50, <4 x float> zeroinitializer), !dbg !203
  %67 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %62, <4 x half> %50, <4 x float> zeroinitializer), !dbg !203
  %68 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %64, <4 x half> %50, <4 x float> zeroinitializer), !dbg !203
  %add357 = fadd contract float %add350.3, 0.000000e+00, !dbg !204
  br label %if.end497, !dbg !205

if.end497:                                        ; preds = %if.then106, %entry
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %65, %if.then106 ], !dbg !207
  %numerator.sroa.20.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %66, %if.then106 ], !dbg !207
  %numerator.sroa.38.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %67, %if.then106 ], !dbg !207
  %numerator.sroa.56.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %68, %if.then106 ], !dbg !207
  %denominator.sroa.0.0 = phi float [ 0.000000e+00, %entry ], [ %add357, %if.then106 ], !dbg !207
  %69 = bitcast float %denominator.sroa.0.0 to i32, !dbg !205
  %70 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !208
  %71 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %70) #10, !dbg !211
  %xor.i.i770 = xor i32 %71, 32, !dbg !212
  %72 = and i32 %71, -64, !dbg !213
  %and.i.i771 = add nsw i32 %72, 64, !dbg !213
  %cmp.not.i.i772 = icmp slt i32 %xor.i.i770, %and.i.i771, !dbg !214
  %cond.i.i773 = select i1 %cmp.not.i.i772, i32 %xor.i.i770, i32 %71, !dbg !215
  %shl.i.i774 = shl i32 %cond.i.i773, 2, !dbg !216
  %73 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i774, i32 %69), !dbg !217
  %74 = bitcast i32 %73 to float, !dbg !218
  %add501 = fadd contract float %denominator.sroa.0.0, %74, !dbg !219
  %75 = bitcast float %add501 to i32, !dbg !220
  %76 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !222
  %77 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %76) #10, !dbg !225
  %xor.i.i775 = xor i32 %77, 16, !dbg !226
  %78 = and i32 %77, -64, !dbg !227
  %and.i.i776 = add nsw i32 %78, 64, !dbg !227
  %cmp.not.i.i777 = icmp slt i32 %xor.i.i775, %and.i.i776, !dbg !228
  %cond.i.i778 = select i1 %cmp.not.i.i777, i32 %xor.i.i775, i32 %77, !dbg !229
  %shl.i.i779 = shl i32 %cond.i.i778, 2, !dbg !230
  %79 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i779, i32 %75), !dbg !231
  %80 = bitcast i32 %79 to float, !dbg !232
  %add506 = fadd contract float %add501, %80, !dbg !233
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !234
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !234
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !234
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !234
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %add506, !dbg !235
  %div526 = fdiv contract float %numerator.sroa.0.4.vec.extract, %add506, !dbg !236
  %div530 = fdiv contract float %numerator.sroa.0.8.vec.extract, %add506, !dbg !237
  %div534 = fdiv contract float %numerator.sroa.0.12.vec.extract, %add506, !dbg !238
  %numerator.sroa.20.16.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 0, !dbg !234
  %numerator.sroa.20.20.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 1, !dbg !234
  %numerator.sroa.20.24.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 2, !dbg !234
  %numerator.sroa.20.28.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 3, !dbg !234
  %div.1 = fdiv contract float %numerator.sroa.20.16.vec.extract, %add506, !dbg !235
  %div526.1 = fdiv contract float %numerator.sroa.20.20.vec.extract, %add506, !dbg !236
  %div530.1 = fdiv contract float %numerator.sroa.20.24.vec.extract, %add506, !dbg !237
  %div534.1 = fdiv contract float %numerator.sroa.20.28.vec.extract, %add506, !dbg !238
  %numerator.sroa.38.32.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 0, !dbg !234
  %numerator.sroa.38.36.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 1, !dbg !234
  %numerator.sroa.38.40.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 2, !dbg !234
  %numerator.sroa.38.44.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 3, !dbg !234
  %div.2 = fdiv contract float %numerator.sroa.38.32.vec.extract, %add506, !dbg !235
  %div526.2 = fdiv contract float %numerator.sroa.38.36.vec.extract, %add506, !dbg !236
  %div530.2 = fdiv contract float %numerator.sroa.38.40.vec.extract, %add506, !dbg !237
  %div534.2 = fdiv contract float %numerator.sroa.38.44.vec.extract, %add506, !dbg !238
  %numerator.sroa.56.48.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 0, !dbg !234
  %numerator.sroa.56.52.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 1, !dbg !234
  %numerator.sroa.56.56.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 2, !dbg !234
  %numerator.sroa.56.60.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 3, !dbg !234
  %div.3 = fdiv contract float %numerator.sroa.56.48.vec.extract, %add506, !dbg !235
  %div526.3 = fdiv contract float %numerator.sroa.56.52.vec.extract, %add506, !dbg !236
  %div530.3 = fdiv contract float %numerator.sroa.56.56.vec.extract, %add506, !dbg !237
  %div534.3 = fdiv contract float %numerator.sroa.56.60.vec.extract, %add506, !dbg !238
  fence syncscope("warp") release, !dbg !239
  tail call void @llvm.mxc.barrier.warp(), !dbg !242
  fence syncscope("warp") acquire, !dbg !243
  %xor583 = shl nuw nsw i32 %5, 2
  %mul584 = and i32 %xor583, 4
  %81 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !244, !noalias !248
  %82 = fptrunc float %div to half, !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %81), !dbg !244, !noalias !248
  %83 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !248
  %84 = fptrunc float %div526 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %83), !dbg !253, !noalias !248
  %85 = bitcast half %82 to i16, !dbg !255
  %86 = bitcast half %84 to i16, !dbg !258
  %87 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !263
  %88 = fptrunc float %div530 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %87), !dbg !259, !noalias !263
  %89 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !263
  %90 = fptrunc float %div534 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %89), !dbg !268, !noalias !263
  %91 = bitcast half %88 to i16, !dbg !270
  %92 = bitcast half %90 to i16, !dbg !272
  %__7.sroa.6.0.insert.ext = zext i16 %92 to i64, !dbg !273
  %__7.sroa.6.0.insert.shift = shl nuw i64 %__7.sroa.6.0.insert.ext, 48, !dbg !273
  %__7.sroa.5.0.insert.ext = zext i16 %91 to i64, !dbg !273
  %__7.sroa.5.0.insert.shift = shl nuw nsw i64 %__7.sroa.5.0.insert.ext, 32, !dbg !273
  %__7.sroa.5.0.insert.insert = or disjoint i64 %__7.sroa.6.0.insert.shift, %__7.sroa.5.0.insert.shift, !dbg !273
  %__7.sroa.4.0.insert.ext = zext i16 %86 to i64, !dbg !273
  %__7.sroa.4.0.insert.shift = shl nuw nsw i64 %__7.sroa.4.0.insert.ext, 16, !dbg !273
  %__7.sroa.4.0.insert.insert = or disjoint i64 %__7.sroa.5.0.insert.insert, %__7.sroa.4.0.insert.shift, !dbg !273
  %__7.sroa.0.0.insert.ext = zext i16 %85 to i64, !dbg !273
  %__7.sroa.0.0.insert.insert = or disjoint i64 %__7.sroa.4.0.insert.insert, %__7.sroa.0.0.insert.ext, !dbg !273
  %add585 = or disjoint i32 %add60, %mul584, !dbg !274
  %add.ptr587 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add585, !dbg !275
  store i64 %__7.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr587, align 8, !dbg !276
  %93 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !244, !noalias !248
  %94 = fptrunc float %div.1 to half, !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %93), !dbg !244, !noalias !248
  %95 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !248
  %96 = fptrunc float %div526.1 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %95), !dbg !253, !noalias !248
  %97 = bitcast half %94 to i16, !dbg !255
  %98 = bitcast half %96 to i16, !dbg !258
  %99 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !263
  %100 = fptrunc float %div530.1 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %99), !dbg !259, !noalias !263
  %101 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !263
  %102 = fptrunc float %div534.1 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %101), !dbg !268, !noalias !263
  %103 = bitcast half %100 to i16, !dbg !270
  %104 = bitcast half %102 to i16, !dbg !272
  %__7.sroa.6.0.insert.ext.1 = zext i16 %104 to i64, !dbg !273
  %__7.sroa.6.0.insert.shift.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.1, 48, !dbg !273
  %__7.sroa.5.0.insert.ext.1 = zext i16 %103 to i64, !dbg !273
  %__7.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1, 32, !dbg !273
  %__7.sroa.5.0.insert.insert.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.1, %__7.sroa.5.0.insert.shift.1, !dbg !273
  %__7.sroa.4.0.insert.ext.1 = zext i16 %98 to i64, !dbg !273
  %__7.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1, 16, !dbg !273
  %__7.sroa.4.0.insert.insert.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.1, %__7.sroa.4.0.insert.shift.1, !dbg !273
  %__7.sroa.0.0.insert.ext.1 = zext i16 %97 to i64, !dbg !273
  %__7.sroa.0.0.insert.insert.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.1, %__7.sroa.0.0.insert.ext.1, !dbg !273
  %add585.1 = or disjoint i32 %add60.1, %mul584, !dbg !274
  %add.ptr587.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add585.1, !dbg !275
  store i64 %__7.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr587.1, align 8, !dbg !276
  %105 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !244, !noalias !248
  %106 = fptrunc float %div.2 to half, !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %105), !dbg !244, !noalias !248
  %107 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !248
  %108 = fptrunc float %div526.2 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %107), !dbg !253, !noalias !248
  %109 = bitcast half %106 to i16, !dbg !255
  %110 = bitcast half %108 to i16, !dbg !258
  %111 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !263
  %112 = fptrunc float %div530.2 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %111), !dbg !259, !noalias !263
  %113 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !263
  %114 = fptrunc float %div534.2 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %113), !dbg !268, !noalias !263
  %115 = bitcast half %112 to i16, !dbg !270
  %116 = bitcast half %114 to i16, !dbg !272
  %__7.sroa.6.0.insert.ext.2 = zext i16 %116 to i64, !dbg !273
  %__7.sroa.6.0.insert.shift.2 = shl nuw i64 %__7.sroa.6.0.insert.ext.2, 48, !dbg !273
  %__7.sroa.5.0.insert.ext.2 = zext i16 %115 to i64, !dbg !273
  %__7.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.2, 32, !dbg !273
  %__7.sroa.5.0.insert.insert.2 = or disjoint i64 %__7.sroa.6.0.insert.shift.2, %__7.sroa.5.0.insert.shift.2, !dbg !273
  %__7.sroa.4.0.insert.ext.2 = zext i16 %110 to i64, !dbg !273
  %__7.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.2, 16, !dbg !273
  %__7.sroa.4.0.insert.insert.2 = or disjoint i64 %__7.sroa.5.0.insert.insert.2, %__7.sroa.4.0.insert.shift.2, !dbg !273
  %__7.sroa.0.0.insert.ext.2 = zext i16 %109 to i64, !dbg !273
  %__7.sroa.0.0.insert.insert.2 = or disjoint i64 %__7.sroa.4.0.insert.insert.2, %__7.sroa.0.0.insert.ext.2, !dbg !273
  %add585.2 = or disjoint i32 %add60.2, %mul584, !dbg !274
  %add.ptr587.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add585.2, !dbg !275
  store i64 %__7.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr587.2, align 8, !dbg !276
  %117 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !244, !noalias !248
  %118 = fptrunc float %div.3 to half, !dbg !244
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %117), !dbg !244, !noalias !248
  %119 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !248
  %120 = fptrunc float %div526.3 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %119), !dbg !253, !noalias !248
  %121 = bitcast half %118 to i16, !dbg !255
  %122 = bitcast half %120 to i16, !dbg !258
  %123 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !259, !noalias !263
  %124 = fptrunc float %div530.3 to half, !dbg !259
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %123), !dbg !259, !noalias !263
  %125 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !263
  %126 = fptrunc float %div534.3 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %125), !dbg !268, !noalias !263
  %127 = bitcast half %124 to i16, !dbg !270
  %128 = bitcast half %126 to i16, !dbg !272
  %__7.sroa.6.0.insert.ext.3 = zext i16 %128 to i64, !dbg !273
  %__7.sroa.6.0.insert.shift.3 = shl nuw i64 %__7.sroa.6.0.insert.ext.3, 48, !dbg !273
  %__7.sroa.5.0.insert.ext.3 = zext i16 %127 to i64, !dbg !273
  %__7.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.3, 32, !dbg !273
  %__7.sroa.5.0.insert.insert.3 = or disjoint i64 %__7.sroa.6.0.insert.shift.3, %__7.sroa.5.0.insert.shift.3, !dbg !273
  %__7.sroa.4.0.insert.ext.3 = zext i16 %122 to i64, !dbg !273
  %__7.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.3, 16, !dbg !273
  %__7.sroa.4.0.insert.insert.3 = or disjoint i64 %__7.sroa.5.0.insert.insert.3, %__7.sroa.4.0.insert.shift.3, !dbg !273
  %__7.sroa.0.0.insert.ext.3 = zext i16 %121 to i64, !dbg !273
  %__7.sroa.0.0.insert.insert.3 = or disjoint i64 %__7.sroa.4.0.insert.insert.3, %__7.sroa.0.0.insert.ext.3, !dbg !273
  %add585.3 = or disjoint i32 %add60.3, %mul584, !dbg !274
  %add.ptr587.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add585.3, !dbg !275
  store i64 %__7.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr587.3, align 8, !dbg !276
  fence syncscope("warp") release, !dbg !277
  tail call void @llvm.mxc.barrier.warp(), !dbg !280
  fence syncscope("warp") acquire, !dbg !281
  %129 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul40, !dbg !282
  %130 = getelementptr inbounds %struct.__half, ptr addrspace(3) %129, i32 %mul33, !dbg !282
  %131 = load i64, ptr addrspace(3) %130, align 16, !dbg !283
  %add.ptr615.1 = getelementptr inbounds i8, ptr addrspace(3) %130, i32 8, !dbg !282
  %132 = load i64, ptr addrspace(3) %add.ptr615.1, align 8, !dbg !283
  %add.ptr636 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !284
  store i64 %131, ptr addrspace(1) %add.ptr636, align 16, !dbg !285
  %output_fetch.sroa.6.0.add.ptr636.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr636, i64 8, !dbg !285
  store i64 %132, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr636.sroa_idx, align 8, !dbg !285
  %133 = getelementptr inbounds i8, ptr addrspace(3) %130, i32 1024, !dbg !282
  %add.ptr615.1856 = getelementptr inbounds i8, ptr addrspace(3) %130, i32 1032, !dbg !282
  %134 = load i64, ptr addrspace(3) %add.ptr615.1856, align 8, !dbg !283
  %135 = load i64, ptr addrspace(3) %133, align 16, !dbg !283
  %add.ptr636.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %4, !dbg !284
  store i64 %134, ptr addrspace(1) %add.ptr636.1, align 16, !dbg !285
  %output_fetch.sroa.6.0.add.ptr636.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr636.1, i64 8, !dbg !285
  store i64 %135, ptr addrspace(1) %output_fetch.sroa.6.0.add.ptr636.1.sroa_idx, align 8, !dbg !285
  ret void, !dbg !286
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v217_worker2_c8_qk_shared_store16_branch_subagent2/codegen/power_v217/case8_stage1.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v217_worker2_c8_qk_shared_store16_branch_subagent2/codegen/power_v217/case8_stage1.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 28, column: 8, scope: !40)
!44 = !DILocation(line: 28, column: 3, scope: !40)
!45 = !DILocation(line: 29, column: 43, scope: !40)
!46 = !DILocation(line: 29, column: 29, scope: !40)
!47 = !DILocation(line: 30, column: 11, scope: !40)
!48 = !DILocation(line: 36, column: 140, scope: !40)
!49 = !DILocation(line: 29, column: 124, scope: !40)
!50 = !DILocation(line: 36, column: 22, scope: !40)
!51 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !54)
!52 = distinct !DISubprogram(name: "__barrier_warp", scope: !53, file: !53, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!53 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!54 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !56)
!55 = distinct !DISubprogram(name: "__syncwarp", scope: !53, file: !53, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!56 = distinct !DILocation(line: 38, column: 3, scope: !40)
!57 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !54)
!58 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !54)
!59 = !DILocation(line: 41, column: 140, scope: !40)
!60 = !DILocation(line: 41, column: 168, scope: !40)
!61 = !DILocation(line: 41, column: 94, scope: !40)
!62 = !DILocation(line: 41, column: 111, scope: !40)
!63 = !DILocation(line: 50, column: 50, scope: !40)
!64 = !DILocation(line: 50, column: 58, scope: !40)
!65 = !DILocation(line: 50, column: 22, scope: !40)
!66 = !DILocation(line: 50, column: 80, scope: !40)
!67 = !DILocation(line: 51, column: 10, scope: !40)
!68 = !DILocation(line: 51, column: 26, scope: !40)
!69 = !DILocation(line: 41, column: 174, scope: !40)
!70 = !DILocation(line: 41, column: 57, scope: !40)
!71 = !DILocation(line: 41, column: 38, scope: !40)
!72 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !73)
!73 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !74)
!74 = distinct !DILocation(line: 52, column: 5, scope: !40)
!75 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !73)
!76 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !73)
!77 = !DILocation(line: 54, column: 10, scope: !40)
!78 = !DILocation(line: 55, column: 45, scope: !40)
!79 = !DILocation(line: 55, column: 31, scope: !40)
!80 = !DILocation(line: 62, column: 144, scope: !40)
!81 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !82)
!82 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !83)
!83 = distinct !DILocation(line: 64, column: 5, scope: !40)
!84 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !82)
!85 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !82)
!86 = !DILocation(line: 69, column: 30, scope: !40)
!87 = !DILocation(line: 71, column: 37, scope: !40)
!88 = !DILocation(line: 79, column: 72, scope: !40)
!89 = !DILocation(line: 79, column: 11, scope: !40)
!90 = !DILocation(line: 79, column: 61, scope: !40)
!91 = !DILocation(line: 351, column: 10, scope: !92, inlinedAt: !94)
!92 = distinct !DISubprogram(name: "max", scope: !93, file: !93, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!93 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!94 = distinct !DILocation(line: 89, column: 20, scope: !40)
!95 = !DILocation(line: 1018, column: 9, scope: !96, inlinedAt: !97)
!96 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !53, file: !53, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!97 = distinct !DILocation(line: 91, column: 34, scope: !40)
!98 = !DILocation(line: 171, column: 37, scope: !99, inlinedAt: !100)
!99 = distinct !DISubprogram(name: "__lane_id", scope: !53, file: !53, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!100 = distinct !DILocation(line: 990, column: 14, scope: !101, inlinedAt: !102)
!101 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !53, file: !53, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!102 = distinct !DILocation(line: 1019, column: 11, scope: !96, inlinedAt: !97)
!103 = !DILocation(line: 171, column: 10, scope: !99, inlinedAt: !100)
!104 = !DILocation(line: 991, column: 20, scope: !101, inlinedAt: !102)
!105 = !DILocation(line: 992, column: 36, scope: !101, inlinedAt: !102)
!106 = !DILocation(line: 992, column: 17, scope: !101, inlinedAt: !102)
!107 = !DILocation(line: 992, column: 11, scope: !101, inlinedAt: !102)
!108 = !DILocation(line: 993, column: 43, scope: !101, inlinedAt: !102)
!109 = !DILocation(line: 993, column: 10, scope: !101, inlinedAt: !102)
!110 = !DILocation(line: 1020, column: 14, scope: !96, inlinedAt: !97)
!111 = !DILocation(line: 351, column: 10, scope: !92, inlinedAt: !112)
!112 = distinct !DILocation(line: 91, column: 18, scope: !40)
!113 = !DILocation(line: 1018, column: 9, scope: !96, inlinedAt: !114)
!114 = distinct !DILocation(line: 92, column: 34, scope: !40)
!115 = !DILocation(line: 171, column: 37, scope: !99, inlinedAt: !116)
!116 = distinct !DILocation(line: 990, column: 14, scope: !101, inlinedAt: !117)
!117 = distinct !DILocation(line: 1019, column: 11, scope: !96, inlinedAt: !114)
!118 = !DILocation(line: 171, column: 10, scope: !99, inlinedAt: !116)
!119 = !DILocation(line: 991, column: 20, scope: !101, inlinedAt: !117)
!120 = !DILocation(line: 992, column: 36, scope: !101, inlinedAt: !117)
!121 = !DILocation(line: 992, column: 17, scope: !101, inlinedAt: !117)
!122 = !DILocation(line: 992, column: 11, scope: !101, inlinedAt: !117)
!123 = !DILocation(line: 993, column: 43, scope: !101, inlinedAt: !117)
!124 = !DILocation(line: 993, column: 10, scope: !101, inlinedAt: !117)
!125 = !DILocation(line: 1020, column: 14, scope: !96, inlinedAt: !114)
!126 = !DILocation(line: 351, column: 10, scope: !92, inlinedAt: !127)
!127 = distinct !DILocation(line: 92, column: 18, scope: !40)
!128 = !DILocation(line: 102, column: 24, scope: !40)
!129 = !DILocation(line: 103, column: 24, scope: !40)
!130 = !DILocation(line: 104, column: 24, scope: !40)
!131 = !DILocation(line: 105, column: 24, scope: !40)
!132 = !DILocation(line: 107, column: 23, scope: !40)
!133 = !DILocation(line: 108, column: 23, scope: !40)
!134 = !DILocation(line: 109, column: 23, scope: !40)
!135 = !DILocation(line: 110, column: 23, scope: !40)
!136 = !DILocation(line: 112, column: 21, scope: !40)
!137 = !DILocation(line: 113, column: 21, scope: !40)
!138 = !DILocation(line: 114, column: 21, scope: !40)
!139 = !DILocation(line: 115, column: 21, scope: !40)
!140 = !DILocation(line: 285, column: 49, scope: !141, inlinedAt: !142)
!141 = distinct !DISubprogram(name: "exp2f", scope: !93, file: !93, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!142 = distinct !DILocation(line: 116, column: 13, scope: !40)
!143 = !DILocation(line: 285, column: 49, scope: !141, inlinedAt: !144)
!144 = distinct !DILocation(line: 117, column: 13, scope: !40)
!145 = !DILocation(line: 285, column: 49, scope: !141, inlinedAt: !146)
!146 = distinct !DILocation(line: 118, column: 13, scope: !40)
!147 = !DILocation(line: 285, column: 49, scope: !141, inlinedAt: !148)
!148 = distinct !DILocation(line: 119, column: 13, scope: !40)
!149 = !DILocation(line: 1007, column: 10, scope: !150, inlinedAt: !152)
!150 = distinct !DISubprogram(name: "__float2half_rn", scope: !151, file: !151, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!151 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!152 = distinct !DILocation(line: 1077, column: 18, scope: !153, inlinedAt: !154)
!153 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !151, file: !151, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!154 = distinct !DILocation(line: 1295, column: 23, scope: !155, inlinedAt: !156)
!155 = distinct !DISubprogram(name: "__float22half2_rn", scope: !151, file: !151, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!156 = distinct !DILocation(line: 120, column: 27, scope: !40)
!157 = !{!158, !160}
!158 = distinct !{!158, !159, !"_ZL17__floats2half2_rnff: %agg.result"}
!159 = distinct !{!159, !"_ZL17__floats2half2_rnff"}
!160 = distinct !{!160, !161, !"_ZL17__float22half2_rn6float2: %agg.result"}
!161 = distinct !{!161, !"_ZL17__float22half2_rn6float2"}
!162 = !DILocation(line: 1007, column: 10, scope: !150, inlinedAt: !163)
!163 = distinct !DILocation(line: 1077, column: 38, scope: !153, inlinedAt: !154)
!164 = !DILocation(line: 1007, column: 10, scope: !150, inlinedAt: !165)
!165 = distinct !DILocation(line: 1077, column: 18, scope: !153, inlinedAt: !166)
!166 = distinct !DILocation(line: 1295, column: 23, scope: !155, inlinedAt: !167)
!167 = distinct !DILocation(line: 121, column: 27, scope: !40)
!168 = !{!169, !171}
!169 = distinct !{!169, !170, !"_ZL17__floats2half2_rnff: %agg.result"}
!170 = distinct !{!170, !"_ZL17__floats2half2_rnff"}
!171 = distinct !{!171, !172, !"_ZL17__float22half2_rn6float2: %agg.result"}
!172 = distinct !{!172, !"_ZL17__float22half2_rn6float2"}
!173 = !DILocation(line: 1007, column: 10, scope: !150, inlinedAt: !174)
!174 = distinct !DILocation(line: 1077, column: 38, scope: !153, inlinedAt: !166)
!175 = !DILocation(line: 122, column: 34, scope: !40)
!176 = !DILocation(line: 1082, column: 16, scope: !177, inlinedAt: !178)
!177 = distinct !DISubprogram(name: "__half2float", scope: !151, file: !151, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!178 = distinct !DILocation(line: 136, column: 55, scope: !179, inlinedAt: !180)
!179 = distinct !DISubprogram(name: "operator float", scope: !151, file: !151, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!180 = distinct !DILocation(line: 126, column: 50, scope: !40)
!181 = !DILocation(line: 126, column: 40, scope: !40)
!182 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !183)
!183 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !184)
!184 = distinct !DILocation(line: 129, column: 5, scope: !40)
!185 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !183)
!186 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !183)
!187 = !DILocation(line: 132, column: 52, scope: !40)
!188 = !DILocation(line: 132, column: 38, scope: !40)
!189 = !DILocation(line: 139, column: 133, scope: !40)
!190 = !DILocation(line: 139, column: 218, scope: !40)
!191 = !DILocation(line: 139, column: 139, scope: !40)
!192 = !DILocation(line: 139, column: 224, scope: !40)
!193 = !DILocation(line: 139, column: 24, scope: !40)
!194 = !DILocation(line: 139, column: 267, scope: !40)
!195 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !196)
!196 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !197)
!197 = distinct !DILocation(line: 141, column: 5, scope: !40)
!198 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !196)
!199 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !196)
!200 = !DILocation(line: 144, column: 191, scope: !40)
!201 = !DILocation(line: 144, column: 63, scope: !40)
!202 = !DILocation(line: 144, column: 44, scope: !40)
!203 = !DILocation(line: 149, column: 46, scope: !40)
!204 = !DILocation(line: 128, column: 38, scope: !40)
!205 = !DILocation(line: 1018, column: 9, scope: !96, inlinedAt: !206)
!206 = distinct !DILocation(line: 155, column: 38, scope: !40)
!207 = !DILocation(line: 0, scope: !40)
!208 = !DILocation(line: 171, column: 37, scope: !99, inlinedAt: !209)
!209 = distinct !DILocation(line: 990, column: 14, scope: !101, inlinedAt: !210)
!210 = distinct !DILocation(line: 1019, column: 11, scope: !96, inlinedAt: !206)
!211 = !DILocation(line: 171, column: 10, scope: !99, inlinedAt: !209)
!212 = !DILocation(line: 991, column: 20, scope: !101, inlinedAt: !210)
!213 = !DILocation(line: 992, column: 36, scope: !101, inlinedAt: !210)
!214 = !DILocation(line: 992, column: 17, scope: !101, inlinedAt: !210)
!215 = !DILocation(line: 992, column: 11, scope: !101, inlinedAt: !210)
!216 = !DILocation(line: 993, column: 43, scope: !101, inlinedAt: !210)
!217 = !DILocation(line: 993, column: 10, scope: !101, inlinedAt: !210)
!218 = !DILocation(line: 1020, column: 14, scope: !96, inlinedAt: !206)
!219 = !DILocation(line: 155, column: 36, scope: !40)
!220 = !DILocation(line: 1018, column: 9, scope: !96, inlinedAt: !221)
!221 = distinct !DILocation(line: 156, column: 38, scope: !40)
!222 = !DILocation(line: 171, column: 37, scope: !99, inlinedAt: !223)
!223 = distinct !DILocation(line: 990, column: 14, scope: !101, inlinedAt: !224)
!224 = distinct !DILocation(line: 1019, column: 11, scope: !96, inlinedAt: !221)
!225 = !DILocation(line: 171, column: 10, scope: !99, inlinedAt: !223)
!226 = !DILocation(line: 991, column: 20, scope: !101, inlinedAt: !224)
!227 = !DILocation(line: 992, column: 36, scope: !101, inlinedAt: !224)
!228 = !DILocation(line: 992, column: 17, scope: !101, inlinedAt: !224)
!229 = !DILocation(line: 992, column: 11, scope: !101, inlinedAt: !224)
!230 = !DILocation(line: 993, column: 43, scope: !101, inlinedAt: !224)
!231 = !DILocation(line: 993, column: 10, scope: !101, inlinedAt: !224)
!232 = !DILocation(line: 1020, column: 14, scope: !96, inlinedAt: !221)
!233 = !DILocation(line: 156, column: 36, scope: !40)
!234 = !DILocation(line: 160, column: 21, scope: !40)
!235 = !DILocation(line: 162, column: 22, scope: !40)
!236 = !DILocation(line: 163, column: 22, scope: !40)
!237 = !DILocation(line: 164, column: 22, scope: !40)
!238 = !DILocation(line: 165, column: 22, scope: !40)
!239 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !240)
!240 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !241)
!241 = distinct !DILocation(line: 168, column: 3, scope: !40)
!242 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !240)
!243 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !240)
!244 = !DILocation(line: 1007, column: 10, scope: !150, inlinedAt: !245)
!245 = distinct !DILocation(line: 1077, column: 18, scope: !153, inlinedAt: !246)
!246 = distinct !DILocation(line: 1295, column: 23, scope: !155, inlinedAt: !247)
!247 = distinct !DILocation(line: 173, column: 27, scope: !40)
!248 = !{!249, !251}
!249 = distinct !{!249, !250, !"_ZL17__floats2half2_rnff: %agg.result"}
!250 = distinct !{!250, !"_ZL17__floats2half2_rnff"}
!251 = distinct !{!251, !252, !"_ZL17__float22half2_rn6float2: %agg.result"}
!252 = distinct !{!252, !"_ZL17__float22half2_rn6float2"}
!253 = !DILocation(line: 1007, column: 10, scope: !150, inlinedAt: !254)
!254 = distinct !DILocation(line: 1077, column: 38, scope: !153, inlinedAt: !246)
!255 = !DILocation(line: 596, column: 67, scope: !256, inlinedAt: !257)
!256 = distinct !DISubprogram(name: "__half2", scope: !151, file: !151, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!257 = distinct !DILocation(line: 1077, column: 10, scope: !153, inlinedAt: !246)
!258 = !DILocation(line: 596, column: 73, scope: !256, inlinedAt: !257)
!259 = !DILocation(line: 1007, column: 10, scope: !150, inlinedAt: !260)
!260 = distinct !DILocation(line: 1077, column: 18, scope: !153, inlinedAt: !261)
!261 = distinct !DILocation(line: 1295, column: 23, scope: !155, inlinedAt: !262)
!262 = distinct !DILocation(line: 174, column: 27, scope: !40)
!263 = !{!264, !266}
!264 = distinct !{!264, !265, !"_ZL17__floats2half2_rnff: %agg.result"}
!265 = distinct !{!265, !"_ZL17__floats2half2_rnff"}
!266 = distinct !{!266, !267, !"_ZL17__float22half2_rn6float2: %agg.result"}
!267 = distinct !{!267, !"_ZL17__float22half2_rn6float2"}
!268 = !DILocation(line: 1007, column: 10, scope: !150, inlinedAt: !269)
!269 = distinct !DILocation(line: 1077, column: 38, scope: !153, inlinedAt: !261)
!270 = !DILocation(line: 596, column: 67, scope: !256, inlinedAt: !271)
!271 = distinct !DILocation(line: 1077, column: 10, scope: !153, inlinedAt: !261)
!272 = !DILocation(line: 596, column: 73, scope: !256, inlinedAt: !271)
!273 = !DILocation(line: 175, column: 38, scope: !40)
!274 = !DILocation(line: 176, column: 141, scope: !40)
!275 = !DILocation(line: 176, column: 22, scope: !40)
!276 = !DILocation(line: 176, column: 221, scope: !40)
!277 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !278)
!278 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !279)
!279 = distinct !DILocation(line: 178, column: 3, scope: !40)
!280 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !278)
!281 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !278)
!282 = !DILocation(line: 183, column: 63, scope: !40)
!283 = !DILocation(line: 183, column: 44, scope: !40)
!284 = !DILocation(line: 185, column: 22, scope: !40)
!285 = !DILocation(line: 185, column: 134, scope: !40)
!286 = !DILocation(line: 187, column: 1, scope: !40)
