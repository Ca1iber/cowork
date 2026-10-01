; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v058_codex_power_s1_packed_planes_sc-16g-2/case6.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v058_codex_power_s1_packed_planes_sc-16g-2/codegen/case6.device.cpp"
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
  %0 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.y(), !dbg !42, !range !29
  %mul = shl nsw i32 %0, 10, !dbg !46
  %1 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !dbg !47, !range !29
  %add = add nuw nsw i32 %mul, %1, !dbg !50
  %idxprom = zext nneg i32 %add to i64, !dbg !51
  %arrayidx = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %idxprom, !dbg !51
  %2 = load i32, ptr addrspace(1) %arrayidx, align 4, !dbg !51, !tbaa !30
  %mul7 = shl nsw i32 %2, 5, !dbg !52
  %cmp = icmp slt i32 %2, 0, !dbg !53
  %cmp10.not = icmp sgt i32 %mul7, %1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp10.not, !dbg !54
  br i1 %or.cond, label %for.body533.preheader, label %for.cond.preheader, !dbg !54

for.body533.preheader:                            ; preds = %entry
  %.pre = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  %.pre1749 = shl nuw nsw i32 %.pre, 7
  %.pre1750 = lshr i32 %.pre, 5
  %.pre1751 = and i32 %.pre, 7
  %.pre1752 = lshr i32 %.pre, 2
  %.pre1754 = and i32 %.pre1752, 4
  %.pre1755 = xor i32 %.pre1750, %.pre1751, !dbg !56
  %.pre1756 = add nuw nsw i32 %.pre1750, 2, !dbg !57
  %.pre1757 = xor i32 %.pre1756, %.pre1751, !dbg !56
  %.pre1758 = add nuw nsw i32 %.pre1750, 4, !dbg !57
  %.pre1759 = xor i32 %.pre1758, %.pre1751, !dbg !56
  %.pre1760 = add nuw nsw i32 %.pre1750, 6, !dbg !57
  %.pre1761 = xor i32 %.pre1760, %.pre1751, !dbg !56
  %.pre1762 = shl nuw nsw i32 %.pre, 3
  %.pre1764 = lshr i32 %.pre, 4
  %.pre1765 = shl nsw i32 %0, 21
  %.pre1766 = shl nsw i32 %1, 11
  %.pre1767 = add nuw nsw i32 %.pre1765, %.pre1766
  %.pre1768 = add nuw nsw i32 %.pre1767, %.pre1762
  %.pre1769 = zext nneg i32 %.pre1768 to i64, !dbg !58
  %.pre1771 = add nuw nsw i32 %.pre1764, 4, !dbg !59
  %.pre1772 = add nuw nsw i64 %.pre1769, 512, !dbg !60
  %.pre1774 = add nuw nsw i64 %.pre1769, 1024, !dbg !60
  %.pre1776 = add nuw nsw i64 %.pre1769, 1536, !dbg !60
  br label %if.end543, !dbg !61

for.cond.preheader:                               ; preds = %entry
  %mul13 = shl nsw i32 %0, 21
  %mul15 = shl nsw i32 %1, 11
  %add16 = add nuw nsw i32 %mul13, %mul15
  %3 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  %mul20 = shl nuw nsw i32 %3, 3
  %add18 = add nuw nsw i32 %add16, %mul20
  %4 = shl nuw nsw i32 %3, 7
  %mul23 = and i32 %4, 1024
  %5 = shl nuw nsw i32 %3, 2
  %mul28 = and i32 %5, 4032
  %and31 = and i32 %3, 7
  %shr35 = lshr i32 %3, 4
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul28, !dbg !62
  %6 = zext nneg i32 %add18 to i64, !dbg !62
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %6, !dbg !63
  %xor = xor i32 %shr35, %and31, !dbg !64
  %gep = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul23, !dbg !65
  %add.ptr40.idx = shl nuw nsw i32 %xor, 4, !dbg !65
  %add.ptr40 = getelementptr inbounds i8, ptr addrspace(3) %gep, i32 %add.ptr40.idx, !dbg !65
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr40, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr, i64 16, i1 false), !dbg !66, !tbaa.struct !67, !call_argsrelate !68
  %7 = add nuw nsw i64 %6, 512, !dbg !69
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !63
  %add36.1 = add nuw nsw i32 %shr35, 4, !dbg !70
  %xor.1 = xor i32 %add36.1, %and31, !dbg !64
  %8 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 512, !dbg !65
  %gep.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %8, i32 %mul23, !dbg !65
  %add.ptr40.idx.1 = shl nuw nsw i32 %xor.1, 4, !dbg !65
  %add.ptr40.1 = getelementptr inbounds i8, ptr addrspace(3) %gep.1, i32 %add.ptr40.idx.1, !dbg !65
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr40.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr.1, i64 16, i1 false), !dbg !66, !tbaa.struct !67, !call_argsrelate !68
  %9 = add nuw nsw i64 %6, 1024, !dbg !69
  %add.ptr.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %9, !dbg !63
  %10 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 1024, !dbg !65
  %gep.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) %10, i32 %mul23, !dbg !65
  %add.ptr40.2 = getelementptr inbounds i8, ptr addrspace(3) %gep.2, i32 %add.ptr40.idx, !dbg !65
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr40.2, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr.2, i64 16, i1 false), !dbg !66, !tbaa.struct !67, !call_argsrelate !68
  %11 = add nuw nsw i64 %6, 1536, !dbg !69
  %add.ptr.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %11, !dbg !63
  %12 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 1536, !dbg !65
  %gep.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) %12, i32 %mul23, !dbg !65
  %add.ptr40.3 = getelementptr inbounds i8, ptr addrspace(3) %gep.3, i32 %add.ptr40.idx.1, !dbg !65
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr40.3, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr.3, i64 16, i1 false), !dbg !66, !tbaa.struct !67, !call_argsrelate !68
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !77
  fence syncscope("warp") acquire, !dbg !78
  %and49 = shl nuw nsw i32 %3, 6
  %mul50 = and i32 %and49, 960
  %shr55 = lshr i32 %3, 5
  %13 = lshr i32 %3, 2
  %mul65 = and i32 %13, 4
  %add51 = or disjoint i32 %mul65, %mul50
  %xor59 = xor i32 %shr55, %and31, !dbg !79
  %14 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add51, !dbg !80
  %add.ptr68.idx = shl nuw nsw i32 %xor59, 4, !dbg !80
  %add.ptr68 = getelementptr inbounds i8, ptr addrspace(3) %14, i32 %add.ptr68.idx, !dbg !80
  %15 = load <4 x half>, ptr addrspace(3) %add.ptr68, align 8, !dbg !81
  %add56.1 = add nuw nsw i32 %shr55, 2, !dbg !82
  %xor59.1 = xor i32 %add56.1, %and31, !dbg !79
  %add.ptr68.idx.1 = shl nuw nsw i32 %xor59.1, 4, !dbg !80
  %add.ptr68.1 = getelementptr inbounds i8, ptr addrspace(3) %14, i32 %add.ptr68.idx.1, !dbg !80
  %16 = load <4 x half>, ptr addrspace(3) %add.ptr68.1, align 8, !dbg !81
  %add56.2 = add nuw nsw i32 %shr55, 4, !dbg !82
  %xor59.2 = xor i32 %add56.2, %and31, !dbg !79
  %add.ptr68.idx.2 = shl nuw nsw i32 %xor59.2, 4, !dbg !80
  %add.ptr68.2 = getelementptr inbounds i8, ptr addrspace(3) %14, i32 %add.ptr68.idx.2, !dbg !80
  %17 = load <4 x half>, ptr addrspace(3) %add.ptr68.2, align 8, !dbg !81
  %add56.3 = add nuw nsw i32 %shr55, 6, !dbg !82
  %xor59.3 = xor i32 %add56.3, %and31, !dbg !79
  %add.ptr68.idx.3 = shl nuw nsw i32 %xor59.3, 4, !dbg !80
  %add.ptr68.3 = getelementptr inbounds i8, ptr addrspace(3) %14, i32 %add.ptr68.idx.3, !dbg !80
  %18 = load <4 x half>, ptr addrspace(3) %add.ptr68.3, align 8, !dbg !81
  %add61.4 = or disjoint i32 %add51, 1024, !dbg !83
  %19 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add61.4, !dbg !80
  %add.ptr68.4 = getelementptr inbounds i8, ptr addrspace(3) %19, i32 %add.ptr68.idx, !dbg !80
  %20 = load <4 x half>, ptr addrspace(3) %add.ptr68.4, align 8, !dbg !81
  %add.ptr68.5 = getelementptr inbounds i8, ptr addrspace(3) %19, i32 %add.ptr68.idx.1, !dbg !80
  %21 = load <4 x half>, ptr addrspace(3) %add.ptr68.5, align 8, !dbg !81
  %add.ptr68.6 = getelementptr inbounds i8, ptr addrspace(3) %19, i32 %add.ptr68.idx.2, !dbg !80
  %22 = load <4 x half>, ptr addrspace(3) %add.ptr68.6, align 8, !dbg !81
  %add.ptr68.7 = getelementptr inbounds i8, ptr addrspace(3) %19, i32 %add.ptr68.idx.3, !dbg !80
  %23 = load <4 x half>, ptr addrspace(3) %add.ptr68.7, align 8, !dbg !81
  fence syncscope("warp") release, !dbg !84
  tail call void @llvm.mxc.barrier.warp(), !dbg !87
  fence syncscope("warp") acquire, !dbg !88
  %conv = zext nneg i32 %0 to i64
  %conv85 = zext nneg i32 %mul7 to i64
  %mul90 = zext nneg i32 %mul20 to i64
  %.idx = shl nuw nsw i64 %conv85, 8
  %invariant.gep807 = getelementptr inbounds i8, ptr addrspace(4) %K.coerce, i64 %.idx, !dbg !89
  %invariant.gep809 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep807, i64 %mul90, !dbg !89
  %24 = and i32 %3, 8
  %.idx843 = shl nuw nsw i64 %conv, 18, !dbg !90
  %25 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep809, i64 %.idx843, !dbg !90
  %26 = shl nuw nsw i32 %24, 9, !dbg !91
  %gep812 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %26, !dbg !91
  %add.ptr114 = getelementptr inbounds i8, ptr addrspace(3) %gep812, i32 %add.ptr40.idx, !dbg !91
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr114, ptr addrspace(4) noundef align 16 dereferenceable(16) %25, i64 16, i1 false), !dbg !92, !tbaa.struct !67, !call_argsrelate !93
  %gep810.1 = getelementptr inbounds i8, ptr addrspace(4) %25, i64 1024, !dbg !90
  %27 = shl nuw nsw i32 %24, 9, !dbg !91
  %28 = or disjoint i32 %27, 512, !dbg !91
  %gep812.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %28, !dbg !91
  %add.ptr114.1 = getelementptr inbounds i8, ptr addrspace(3) %gep812.1, i32 %add.ptr40.idx.1, !dbg !91
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr114.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep810.1, i64 16, i1 false), !dbg !92, !tbaa.struct !67, !call_argsrelate !93
  %gep810.2 = getelementptr inbounds i8, ptr addrspace(4) %25, i64 2048, !dbg !90
  %29 = shl nuw nsw i32 %24, 9, !dbg !91
  %30 = or disjoint i32 %29, 1024, !dbg !91
  %gep812.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %30, !dbg !91
  %add.ptr114.2 = getelementptr inbounds i8, ptr addrspace(3) %gep812.2, i32 %add.ptr40.idx, !dbg !91
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr114.2, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep810.2, i64 16, i1 false), !dbg !92, !tbaa.struct !67, !call_argsrelate !93
  %gep810.3 = getelementptr inbounds i8, ptr addrspace(4) %25, i64 3072, !dbg !90
  %31 = shl nuw nsw i32 %24, 9, !dbg !91
  %32 = or disjoint i32 %31, 1536, !dbg !91
  %gep812.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %32, !dbg !91
  %add.ptr114.3 = getelementptr inbounds i8, ptr addrspace(3) %gep812.3, i32 %add.ptr40.idx.1, !dbg !91
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr114.3, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep810.3, i64 16, i1 false), !dbg !92, !tbaa.struct !67, !call_argsrelate !93
  %gep810.4 = getelementptr inbounds i8, ptr addrspace(4) %25, i64 4096, !dbg !90
  %33 = shl nuw nsw i32 %24, 9, !dbg !91
  %34 = or disjoint i32 %33, 2048, !dbg !91
  %gep812.4 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %34, !dbg !91
  %add.ptr114.4 = getelementptr inbounds i8, ptr addrspace(3) %gep812.4, i32 %add.ptr40.idx, !dbg !91
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr114.4, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep810.4, i64 16, i1 false), !dbg !92, !tbaa.struct !67, !call_argsrelate !93
  %gep810.5 = getelementptr inbounds i8, ptr addrspace(4) %25, i64 5120, !dbg !90
  %35 = shl nuw nsw i32 %24, 9, !dbg !91
  %36 = or disjoint i32 %35, 2560, !dbg !91
  %gep812.5 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %36, !dbg !91
  %add.ptr114.5 = getelementptr inbounds i8, ptr addrspace(3) %gep812.5, i32 %add.ptr40.idx.1, !dbg !91
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr114.5, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep810.5, i64 16, i1 false), !dbg !92, !tbaa.struct !67, !call_argsrelate !93
  %gep810.6 = getelementptr inbounds i8, ptr addrspace(4) %25, i64 6144, !dbg !90
  %37 = shl nuw nsw i32 %24, 9, !dbg !91
  %38 = or disjoint i32 %37, 3072, !dbg !91
  %gep812.6 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %38, !dbg !91
  %add.ptr114.6 = getelementptr inbounds i8, ptr addrspace(3) %gep812.6, i32 %add.ptr40.idx, !dbg !91
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr114.6, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep810.6, i64 16, i1 false), !dbg !92, !tbaa.struct !67, !call_argsrelate !93
  %gep810.7 = getelementptr inbounds i8, ptr addrspace(4) %25, i64 7168, !dbg !90
  %39 = shl nuw nsw i32 %24, 9, !dbg !91
  %40 = or disjoint i32 %39, 3584, !dbg !91
  %gep812.7 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %40, !dbg !91
  %add.ptr114.7 = getelementptr inbounds i8, ptr addrspace(3) %gep812.7, i32 %add.ptr40.idx.1, !dbg !91
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr114.7, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep810.7, i64 16, i1 false), !dbg !92, !tbaa.struct !67, !call_argsrelate !93
  fence syncscope("warp") release, !dbg !94
  tail call void @llvm.mxc.barrier.warp(), !dbg !97
  fence syncscope("warp") acquire, !dbg !98
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr68, align 8, !dbg !99
  %41 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %15, <4 x float> zeroinitializer), !dbg !100
  %add.ptr164.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr68, i32 2048, !dbg !101
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr164.1, align 8, !dbg !99
  %42 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %15, <4 x float> zeroinitializer), !dbg !100
  %k_local.sroa.0.0.copyload.1856 = load <4 x half>, ptr addrspace(3) %add.ptr68.1, align 8, !dbg !99
  %43 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1856, <4 x half> %16, <4 x float> %41), !dbg !100
  %add.ptr164.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr68.1, i32 2048, !dbg !101
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr164.1.1, align 8, !dbg !99
  %44 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %16, <4 x float> %42), !dbg !100
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr68.2, align 8, !dbg !99
  %45 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %17, <4 x float> %43), !dbg !100
  %add.ptr164.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr68.2, i32 2048, !dbg !101
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr164.1.2, align 8, !dbg !99
  %46 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %17, <4 x float> %44), !dbg !100
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr68.3, align 8, !dbg !99
  %47 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %18, <4 x float> %45), !dbg !100
  %add.ptr164.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr68.3, i32 2048, !dbg !101
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr164.1.3, align 8, !dbg !99
  %48 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %18, <4 x float> %46), !dbg !100
  %add143.4 = or disjoint i32 %add51, 2048
  %49 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add143.4, !dbg !101
  %50 = getelementptr inbounds i8, ptr addrspace(3) %49, i32 %add.ptr68.idx, !dbg !101
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %50, align 8, !dbg !99
  %51 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %20, <4 x float> %47), !dbg !100
  %add.ptr164.1.4 = getelementptr inbounds i8, ptr addrspace(3) %50, i32 2048, !dbg !101
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr164.1.4, align 8, !dbg !99
  %52 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %20, <4 x float> %48), !dbg !100
  %53 = getelementptr inbounds i8, ptr addrspace(3) %49, i32 %add.ptr68.idx.1, !dbg !101
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %53, align 8, !dbg !99
  %54 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %21, <4 x float> %51), !dbg !100
  %add.ptr164.1.5 = getelementptr inbounds i8, ptr addrspace(3) %53, i32 2048, !dbg !101
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr164.1.5, align 8, !dbg !99
  %55 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %21, <4 x float> %52), !dbg !100
  %56 = getelementptr inbounds i8, ptr addrspace(3) %49, i32 %add.ptr68.idx.2, !dbg !101
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %56, align 8, !dbg !99
  %57 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %22, <4 x float> %54), !dbg !100
  %add.ptr164.1.6 = getelementptr inbounds i8, ptr addrspace(3) %56, i32 2048, !dbg !101
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr164.1.6, align 8, !dbg !99
  %58 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %22, <4 x float> %55), !dbg !100
  %59 = getelementptr inbounds i8, ptr addrspace(3) %49, i32 %add.ptr68.idx.3, !dbg !101
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %59, align 8, !dbg !99
  %60 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %23, <4 x float> %57), !dbg !100
  %add.ptr164.1.7 = getelementptr inbounds i8, ptr addrspace(3) %59, i32 2048, !dbg !101
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr164.1.7, align 8, !dbg !99
  %61 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %23, <4 x float> %58), !dbg !100
  %mul195 = and i32 %13, 252
  %add196 = add nuw nsw i32 %mul7, %mul195
  %cmp200.not = icmp sgt i32 %add196, %1, !dbg !102
  %scores.sroa.0.0.vec.extract = extractelement <4 x float> %60, i64 0
  %spec.select = select i1 %cmp200.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract, !dbg !103
  %cmp200.not.1.not = icmp slt i32 %add196, %1, !dbg !102
  %scores.sroa.0.4.vec.extract = extractelement <4 x float> %60, i64 1, !dbg !103
  %condval.0.1 = select i1 %cmp200.not.1.not, float %scores.sroa.0.4.vec.extract, float 0xFFF0000000000000, !dbg !103
  %add198.2 = or disjoint i32 %add196, 2, !dbg !104
  %cmp200.not.2 = icmp sgt i32 %add198.2, %1, !dbg !102
  %scores.sroa.0.8.vec.extract = extractelement <4 x float> %60, i64 2, !dbg !103
  %condval.0.2 = select i1 %cmp200.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract, !dbg !103
  %add198.3 = or disjoint i32 %add196, 3, !dbg !104
  %cmp200.not.3 = icmp sgt i32 %add198.3, %1, !dbg !102
  %scores.sroa.0.12.vec.extract = extractelement <4 x float> %60, i64 3, !dbg !103
  %condval.0.3 = select i1 %cmp200.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract, !dbg !103
  %add197.1 = add nuw nsw i32 %add196, 16
  %cmp200.not.1857 = icmp sgt i32 %add197.1, %1, !dbg !102
  %scores.sroa.38.16.vec.extract = extractelement <4 x float> %61, i64 0, !dbg !103
  %condval.0.1860 = select i1 %cmp200.not.1857, float 0xFFF0000000000000, float %scores.sroa.38.16.vec.extract, !dbg !103
  %add198.1.1 = add nuw nsw i32 %add196, 17, !dbg !104
  %cmp200.not.1.1 = icmp sgt i32 %add198.1.1, %1, !dbg !102
  %scores.sroa.38.20.vec.extract = extractelement <4 x float> %61, i64 1, !dbg !103
  %condval.0.1.1 = select i1 %cmp200.not.1.1, float 0xFFF0000000000000, float %scores.sroa.38.20.vec.extract, !dbg !103
  %add198.2.1 = add nuw nsw i32 %add196, 18, !dbg !104
  %cmp200.not.2.1 = icmp sgt i32 %add198.2.1, %1, !dbg !102
  %scores.sroa.38.24.vec.extract = extractelement <4 x float> %61, i64 2, !dbg !103
  %condval.0.2.1 = select i1 %cmp200.not.2.1, float 0xFFF0000000000000, float %scores.sroa.38.24.vec.extract, !dbg !103
  %add198.3.1 = add nuw nsw i32 %add196, 19, !dbg !104
  %cmp200.not.3.1 = icmp sgt i32 %add198.3.1, %1, !dbg !102
  %scores.sroa.38.28.vec.extract = extractelement <4 x float> %61, i64 3, !dbg !103
  %condval.0.3.1 = select i1 %cmp200.not.3.1, float 0xFFF0000000000000, float %scores.sroa.38.28.vec.extract, !dbg !103
  %62 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !105
  %63 = tail call contract noundef float @llvm.maxnum.f32(float %62, float %condval.0.1), !dbg !105
  %64 = tail call contract noundef float @llvm.maxnum.f32(float %63, float %condval.0.2), !dbg !105
  %65 = tail call contract noundef float @llvm.maxnum.f32(float %64, float %condval.0.3), !dbg !105
  %66 = tail call contract noundef float @llvm.maxnum.f32(float %65, float %condval.0.1860), !dbg !105
  %67 = tail call contract noundef float @llvm.maxnum.f32(float %66, float %condval.0.1.1), !dbg !105
  %68 = tail call contract noundef float @llvm.maxnum.f32(float %67, float %condval.0.2.1), !dbg !105
  %69 = tail call contract noundef float @llvm.maxnum.f32(float %68, float %condval.0.3.1), !dbg !105
  %70 = bitcast float %69 to i32, !dbg !109
  %71 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !112
  %72 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %71) #11, !dbg !117
  %xor.i.i = xor i32 %72, 32, !dbg !118
  %73 = and i32 %72, -64, !dbg !119
  %and.i.i = add nsw i32 %73, 64, !dbg !119
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !120
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %72, !dbg !121
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !122
  %74 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %70), !dbg !123
  %75 = bitcast i32 %74 to float, !dbg !124
  %76 = tail call contract noundef float @llvm.maxnum.f32(float %69, float %75), !dbg !125
  %77 = bitcast float %76 to i32, !dbg !127
  %78 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !129
  %79 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %78) #11, !dbg !132
  %xor.i.i756 = xor i32 %79, 16, !dbg !133
  %80 = and i32 %79, -64, !dbg !134
  %and.i.i757 = add nsw i32 %80, 64, !dbg !134
  %cmp.not.i.i758 = icmp slt i32 %xor.i.i756, %and.i.i757, !dbg !135
  %cond.i.i759 = select i1 %cmp.not.i.i758, i32 %xor.i.i756, i32 %79, !dbg !136
  %shl.i.i760 = shl i32 %cond.i.i759, 2, !dbg !137
  %81 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i760, i32 %77), !dbg !138
  %82 = bitcast i32 %81 to float, !dbg !139
  %83 = tail call contract noundef float @llvm.maxnum.f32(float %76, float %82), !dbg !140
  %sub = fsub contract float %spec.select, %83, !dbg !142
  %sub258 = fsub contract float %condval.0.1, %83, !dbg !143
  %sub261 = fsub contract float %condval.0.2, %83, !dbg !144
  %sub264 = fsub contract float %condval.0.3, %83, !dbg !145
  %mul269 = fmul contract float %sub, 0x3FC0527DC0000000, !dbg !146
  %mul273 = fmul contract float %sub258, 0x3FC0527DC0000000, !dbg !147
  %mul277 = fmul contract float %sub261, 0x3FC0527DC0000000, !dbg !148
  %mul281 = fmul contract float %sub264, 0x3FC0527DC0000000, !dbg !149
  %add286 = fadd contract float %mul269, 8.000000e+00, !dbg !150
  %add290 = fadd contract float %mul273, 8.000000e+00, !dbg !151
  %add294 = fadd contract float %mul277, 8.000000e+00, !dbg !152
  %add298 = fadd contract float %mul281, 8.000000e+00, !dbg !153
  %cmp.i.i = fcmp contract olt float %add286, -1.260000e+02, !dbg !154
  %cond.i.i761 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i = fadd contract float %add286, %cond.i.i761, !dbg !154
  %84 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !154
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i = fmul contract float %cond2.i.i, %84, !dbg !154
  %cmp.i.i762 = fcmp contract olt float %add290, -1.260000e+02, !dbg !157
  %cond.i.i763 = select contract i1 %cmp.i.i762, float 6.400000e+01, float 0.000000e+00, !dbg !157
  %add.i.i764 = fadd contract float %add290, %cond.i.i763, !dbg !157
  %85 = tail call contract float @llvm.exp2.f32(float %add.i.i764), !dbg !157
  %cond2.i.i765 = select contract i1 %cmp.i.i762, float 0x3BF0000000000000, float 1.000000e+00, !dbg !157
  %mul.i.i766 = fmul contract float %cond2.i.i765, %85, !dbg !157
  %cmp.i.i767 = fcmp contract olt float %add294, -1.260000e+02, !dbg !159
  %cond.i.i768 = select contract i1 %cmp.i.i767, float 6.400000e+01, float 0.000000e+00, !dbg !159
  %add.i.i769 = fadd contract float %add294, %cond.i.i768, !dbg !159
  %86 = tail call contract float @llvm.exp2.f32(float %add.i.i769), !dbg !159
  %cond2.i.i770 = select contract i1 %cmp.i.i767, float 0x3BF0000000000000, float 1.000000e+00, !dbg !159
  %mul.i.i771 = fmul contract float %cond2.i.i770, %86, !dbg !159
  %cmp.i.i772 = fcmp contract olt float %add298, -1.260000e+02, !dbg !161
  %cond.i.i773 = select contract i1 %cmp.i.i772, float 6.400000e+01, float 0.000000e+00, !dbg !161
  %add.i.i774 = fadd contract float %add298, %cond.i.i773, !dbg !161
  %87 = tail call contract float @llvm.exp2.f32(float %add.i.i774), !dbg !161
  %cond2.i.i775 = select contract i1 %cmp.i.i772, float 0x3BF0000000000000, float 1.000000e+00, !dbg !161
  %mul.i.i776 = fmul contract float %cond2.i.i775, %87, !dbg !161
  %88 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !163
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !163, !noalias !171
  %89 = fptrunc float %mul.i.i to half, !dbg !163
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %88), !dbg !163, !noalias !171
  %90 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !171
  %91 = fptrunc float %mul.i.i766 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %90), !dbg !176, !noalias !171
  %92 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !182
  %93 = fptrunc float %mul.i.i771 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %92), !dbg !178, !noalias !182
  %94 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !187, !noalias !182
  %95 = fptrunc float %mul.i.i776 to half, !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %94), !dbg !187, !noalias !182
  %96 = insertelement <4 x half> poison, half %89, i64 0, !dbg !189
  %97 = insertelement <4 x half> %96, half %91, i64 1, !dbg !189
  %98 = insertelement <4 x half> %97, half %93, i64 2, !dbg !189
  %99 = insertelement <4 x half> %98, half %95, i64 3, !dbg !189
  %sub.1 = fsub contract float %condval.0.1860, %83, !dbg !142
  %sub258.1 = fsub contract float %condval.0.1.1, %83, !dbg !143
  %sub261.1 = fsub contract float %condval.0.2.1, %83, !dbg !144
  %sub264.1 = fsub contract float %condval.0.3.1, %83, !dbg !145
  %mul269.1 = fmul contract float %sub.1, 0x3FC0527DC0000000, !dbg !146
  %mul273.1 = fmul contract float %sub258.1, 0x3FC0527DC0000000, !dbg !147
  %mul277.1 = fmul contract float %sub261.1, 0x3FC0527DC0000000, !dbg !148
  %mul281.1 = fmul contract float %sub264.1, 0x3FC0527DC0000000, !dbg !149
  %add286.1 = fadd contract float %mul269.1, 8.000000e+00, !dbg !150
  %add290.1 = fadd contract float %mul273.1, 8.000000e+00, !dbg !151
  %add294.1 = fadd contract float %mul277.1, 8.000000e+00, !dbg !152
  %add298.1 = fadd contract float %mul281.1, 8.000000e+00, !dbg !153
  %cmp.i.i.1 = fcmp contract olt float %add286.1, -1.260000e+02, !dbg !154
  %cond.i.i761.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i.1 = fadd contract float %add286.1, %cond.i.i761.1, !dbg !154
  %100 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !154
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %100, !dbg !154
  %cmp.i.i762.1 = fcmp contract olt float %add290.1, -1.260000e+02, !dbg !157
  %cond.i.i763.1 = select contract i1 %cmp.i.i762.1, float 6.400000e+01, float 0.000000e+00, !dbg !157
  %add.i.i764.1 = fadd contract float %add290.1, %cond.i.i763.1, !dbg !157
  %101 = tail call contract float @llvm.exp2.f32(float %add.i.i764.1), !dbg !157
  %cond2.i.i765.1 = select contract i1 %cmp.i.i762.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !157
  %mul.i.i766.1 = fmul contract float %cond2.i.i765.1, %101, !dbg !157
  %cmp.i.i767.1 = fcmp contract olt float %add294.1, -1.260000e+02, !dbg !159
  %cond.i.i768.1 = select contract i1 %cmp.i.i767.1, float 6.400000e+01, float 0.000000e+00, !dbg !159
  %add.i.i769.1 = fadd contract float %add294.1, %cond.i.i768.1, !dbg !159
  %102 = tail call contract float @llvm.exp2.f32(float %add.i.i769.1), !dbg !159
  %cond2.i.i770.1 = select contract i1 %cmp.i.i767.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !159
  %mul.i.i771.1 = fmul contract float %cond2.i.i770.1, %102, !dbg !159
  %cmp.i.i772.1 = fcmp contract olt float %add298.1, -1.260000e+02, !dbg !161
  %cond.i.i773.1 = select contract i1 %cmp.i.i772.1, float 6.400000e+01, float 0.000000e+00, !dbg !161
  %add.i.i774.1 = fadd contract float %add298.1, %cond.i.i773.1, !dbg !161
  %103 = tail call contract float @llvm.exp2.f32(float %add.i.i774.1), !dbg !161
  %cond2.i.i775.1 = select contract i1 %cmp.i.i772.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !161
  %mul.i.i776.1 = fmul contract float %cond2.i.i775.1, %103, !dbg !161
  %104 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !163
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !163, !noalias !171
  %105 = fptrunc float %mul.i.i.1 to half, !dbg !163
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %104), !dbg !163, !noalias !171
  %106 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !171
  %107 = fptrunc float %mul.i.i766.1 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %106), !dbg !176, !noalias !171
  %108 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !182
  %109 = fptrunc float %mul.i.i771.1 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %108), !dbg !178, !noalias !182
  %110 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !187, !noalias !182
  %111 = fptrunc float %mul.i.i776.1 to half, !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %110), !dbg !187, !noalias !182
  %112 = insertelement <4 x half> poison, half %105, i64 0, !dbg !189
  %113 = insertelement <4 x half> %112, half %107, i64 1, !dbg !189
  %114 = insertelement <4 x half> %113, half %109, i64 2, !dbg !189
  %115 = insertelement <4 x half> %114, half %111, i64 3, !dbg !189
  %conv.i.i = fpext half %89 to float, !dbg !190
  %add336 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !195
  %conv.i.i.1 = fpext half %91 to float, !dbg !190
  %add336.1 = fadd contract float %add336, %conv.i.i.1, !dbg !195
  %conv.i.i.2 = fpext half %93 to float, !dbg !190
  %add336.2 = fadd contract float %add336.1, %conv.i.i.2, !dbg !195
  %conv.i.i.3 = fpext half %95 to float, !dbg !190
  %add336.3 = fadd contract float %add336.2, %conv.i.i.3, !dbg !195
  %conv.i.i.4 = fpext half %105 to float, !dbg !190
  %add336.4 = fadd contract float %add336.3, %conv.i.i.4, !dbg !195
  %conv.i.i.5 = fpext half %107 to float, !dbg !190
  %add336.5 = fadd contract float %add336.4, %conv.i.i.5, !dbg !195
  %conv.i.i.6 = fpext half %109 to float, !dbg !190
  %add336.6 = fadd contract float %add336.5, %conv.i.i.6, !dbg !195
  %conv.i.i.7 = fpext half %111 to float, !dbg !190
  %add336.7 = fadd contract float %add336.6, %conv.i.i.7, !dbg !195
  %116 = bitcast float %add336.7 to i32, !dbg !196
  %117 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !198
  %118 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %117) #11, !dbg !201
  %xor.i.i778 = xor i32 %118, 32, !dbg !202
  %119 = and i32 %118, -64, !dbg !203
  %and.i.i779 = add nsw i32 %119, 64, !dbg !203
  %cmp.not.i.i780 = icmp slt i32 %xor.i.i778, %and.i.i779, !dbg !204
  %cond.i.i781 = select i1 %cmp.not.i.i780, i32 %xor.i.i778, i32 %118, !dbg !205
  %shl.i.i782 = shl i32 %cond.i.i781, 2, !dbg !206
  %120 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i782, i32 %116), !dbg !207
  %121 = bitcast i32 %120 to float, !dbg !208
  %add344 = fadd contract float %add336.7, %121, !dbg !209
  %122 = bitcast float %add344 to i32, !dbg !210
  %123 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !212
  %124 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %123) #11, !dbg !215
  %xor.i.i783 = xor i32 %124, 16, !dbg !216
  %125 = and i32 %124, -64, !dbg !217
  %and.i.i784 = add nsw i32 %125, 64, !dbg !217
  %cmp.not.i.i785 = icmp slt i32 %xor.i.i783, %and.i.i784, !dbg !218
  %cond.i.i786 = select i1 %cmp.not.i.i785, i32 %xor.i.i783, i32 %124, !dbg !219
  %shl.i.i787 = shl i32 %cond.i.i786, 2, !dbg !220
  %126 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i787, i32 %122), !dbg !221
  %127 = bitcast i32 %126 to float, !dbg !222
  fence syncscope("warp") release, !dbg !223
  tail call void @llvm.mxc.barrier.warp(), !dbg !226
  fence syncscope("warp") acquire, !dbg !227
  %mul365 = shl nuw nsw i64 %conv, 17
  %128 = shl nuw nsw i32 %3, 5
  %129 = and i32 %128, 32256
  %mul372 = zext nneg i32 %129 to i64
  %add368 = or disjoint i64 %mul365, %mul372
  %130 = and i32 %5, 60
  %mul386 = zext nneg i32 %130 to i64
  %invariant.gep824 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %mul386
  %and421 = shl nuw nsw i32 %3, 4
  %mul422 = and i32 %and421, 240
  %shr428 = and i32 %13, 3
  %xor429 = xor i32 %shr428, %shr35
  %131 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep824, i64 %add368, !dbg !228
  %132 = getelementptr inbounds i8, ptr addrspace(4) %131, i64 %.idx, !dbg !228
  %133 = load i64, ptr addrspace(4) %132, align 8, !dbg !229
  %gep825.1 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 256, !dbg !228
  %134 = load i64, ptr addrspace(4) %gep825.1, align 8, !dbg !229
  %gep825.2 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 512, !dbg !228
  %135 = load i64, ptr addrspace(4) %gep825.2, align 8, !dbg !229
  %gep825.3 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 768, !dbg !228
  %136 = load i64, ptr addrspace(4) %gep825.3, align 8, !dbg !229
  %137 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul422, !dbg !230
  %add.ptr434.idx = shl nuw nsw i32 %xor429, 3, !dbg !230
  %add.ptr434 = getelementptr inbounds i8, ptr addrspace(3) %137, i32 %add.ptr434.idx, !dbg !230
  %v_column.sroa.66.0.insert.ext = shl i64 %136, 48, !dbg !231
  %v_column.sroa.50.0.insert.ext = shl i64 %135, 32, !dbg !231
  %v_column.sroa.50.0.insert.shift = and i64 %v_column.sroa.50.0.insert.ext, 281470681743360, !dbg !231
  %v_column.sroa.50.0.insert.insert = or disjoint i64 %v_column.sroa.66.0.insert.ext, %v_column.sroa.50.0.insert.shift, !dbg !231
  %v_column.sroa.34.0.insert.ext = shl i64 %134, 16, !dbg !231
  %v_column.sroa.34.0.insert.shift = and i64 %v_column.sroa.34.0.insert.ext, 4294901760, !dbg !231
  %v_column.sroa.34.0.insert.insert = or disjoint i64 %v_column.sroa.50.0.insert.insert, %v_column.sroa.34.0.insert.shift, !dbg !231
  %v_column.sroa.0.0.insert.ext = and i64 %133, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert = or disjoint i64 %v_column.sroa.34.0.insert.insert, %v_column.sroa.0.0.insert.ext, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr434, align 8, !dbg !231
  %v_fetch.sroa.0.2.extract.shift = lshr i64 %133, 16, !dbg !232
  %138 = or disjoint i32 %mul422, 256, !dbg !233
  %139 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %138, !dbg !230
  %xor430.1 = shl nuw nsw i32 %xor429, 3, !dbg !230
  %add.ptr434.idx.1 = xor i32 %xor430.1, 8, !dbg !230
  %add.ptr434.1 = getelementptr inbounds i8, ptr addrspace(3) %139, i32 %add.ptr434.idx.1, !dbg !230
  %140 = shl i64 %136, 32, !dbg !231
  %v_column.sroa.66.0.insert.ext1219 = and i64 %140, -281474976710656, !dbg !231
  %141 = shl i64 %135, 16, !dbg !231
  %v_column.sroa.50.0.insert.shift1145 = and i64 %141, 281470681743360, !dbg !231
  %v_column.sroa.50.0.insert.insert1147 = or disjoint i64 %v_column.sroa.66.0.insert.ext1219, %v_column.sroa.50.0.insert.shift1145, !dbg !231
  %v_column.sroa.34.0.insert.ext1069 = and i64 %134, 4294901760, !dbg !231
  %v_column.sroa.34.0.insert.insert1072 = or disjoint i64 %v_column.sroa.50.0.insert.insert1147, %v_column.sroa.34.0.insert.ext1069, !dbg !231
  %v_column.sroa.0.0.insert.ext1009 = and i64 %v_fetch.sroa.0.2.extract.shift, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1011 = or disjoint i64 %v_column.sroa.34.0.insert.insert1072, %v_column.sroa.0.0.insert.ext1009, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1011, ptr addrspace(3) %add.ptr434.1, align 8, !dbg !231
  %v_fetch.sroa.0.4.extract.shift = lshr i64 %133, 32, !dbg !232
  %142 = or disjoint i32 %mul422, 512, !dbg !233
  %143 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %142, !dbg !230
  %xor430.2 = shl nuw nsw i32 %xor429, 3, !dbg !230
  %add.ptr434.idx.2 = xor i32 %xor430.2, 16, !dbg !230
  %add.ptr434.2 = getelementptr inbounds i8, ptr addrspace(3) %143, i32 %add.ptr434.idx.2, !dbg !230
  %144 = shl i64 %136, 16, !dbg !231
  %v_column.sroa.66.0.insert.ext1224 = and i64 %144, -281474976710656, !dbg !231
  %v_column.sroa.50.0.insert.ext1149 = and i64 %135, 281470681743360, !dbg !231
  %v_column.sroa.50.0.insert.insert1152 = or disjoint i64 %v_column.sroa.66.0.insert.ext1224, %v_column.sroa.50.0.insert.ext1149, !dbg !231
  %145 = lshr i64 %134, 16, !dbg !231
  %v_column.sroa.34.0.insert.shift1075 = and i64 %145, 4294901760, !dbg !231
  %v_column.sroa.34.0.insert.insert1077 = or disjoint i64 %v_column.sroa.50.0.insert.insert1152, %v_column.sroa.34.0.insert.shift1075, !dbg !231
  %v_column.sroa.0.0.insert.ext1013 = and i64 %v_fetch.sroa.0.4.extract.shift, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1015 = or disjoint i64 %v_column.sroa.34.0.insert.insert1077, %v_column.sroa.0.0.insert.ext1013, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1015, ptr addrspace(3) %add.ptr434.2, align 8, !dbg !231
  %v_fetch.sroa.0.6.extract.shift = lshr i64 %133, 48, !dbg !232
  %v_fetch.sroa.62.30.extract.shift = and i64 %136, -281474976710656, !dbg !231
  %146 = or disjoint i32 %mul422, 768, !dbg !233
  %147 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %146, !dbg !230
  %xor430.3 = shl nuw nsw i32 %xor429, 3, !dbg !230
  %add.ptr434.idx.3 = xor i32 %xor430.3, 24, !dbg !230
  %add.ptr434.3 = getelementptr inbounds i8, ptr addrspace(3) %147, i32 %add.ptr434.idx.3, !dbg !230
  %148 = lshr i64 %135, 16, !dbg !231
  %v_column.sroa.50.0.insert.shift1155 = and i64 %148, 281470681743360, !dbg !231
  %v_column.sroa.50.0.insert.insert1157 = or disjoint i64 %v_fetch.sroa.62.30.extract.shift, %v_column.sroa.50.0.insert.shift1155, !dbg !231
  %149 = lshr i64 %134, 32, !dbg !231
  %v_column.sroa.34.0.insert.shift1080 = and i64 %149, 4294901760, !dbg !231
  %v_column.sroa.34.0.insert.insert1082 = or disjoint i64 %v_column.sroa.50.0.insert.insert1157, %v_column.sroa.34.0.insert.shift1080, !dbg !231
  %v_column.sroa.0.0.insert.insert1019 = or disjoint i64 %v_column.sroa.34.0.insert.insert1082, %v_fetch.sroa.0.6.extract.shift, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1019, ptr addrspace(3) %add.ptr434.3, align 8, !dbg !231
  %150 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 128, !dbg !228
  %151 = load i64, ptr addrspace(4) %150, align 8, !dbg !229
  %gep825.1.1 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 384, !dbg !228
  %152 = load i64, ptr addrspace(4) %gep825.1.1, align 8, !dbg !229
  %gep825.2.1 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 640, !dbg !228
  %153 = load i64, ptr addrspace(4) %gep825.2.1, align 8, !dbg !229
  %gep825.3.1 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 896, !dbg !228
  %154 = load i64, ptr addrspace(4) %gep825.3.1, align 8, !dbg !229
  %155 = or disjoint i32 %mul422, 1024, !dbg !233
  %156 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %155, !dbg !230
  %add.ptr434.1886 = getelementptr inbounds i8, ptr addrspace(3) %156, i32 %add.ptr434.idx, !dbg !230
  %v_column.sroa.66.0.insert.ext1234 = shl i64 %154, 48, !dbg !231
  %v_column.sroa.50.0.insert.ext1159 = shl i64 %153, 32, !dbg !231
  %v_column.sroa.50.0.insert.shift1160 = and i64 %v_column.sroa.50.0.insert.ext1159, 281470681743360, !dbg !231
  %v_column.sroa.50.0.insert.insert1162 = or disjoint i64 %v_column.sroa.66.0.insert.ext1234, %v_column.sroa.50.0.insert.shift1160, !dbg !231
  %v_column.sroa.34.0.insert.ext1084 = shl i64 %152, 16, !dbg !231
  %v_column.sroa.34.0.insert.shift1085 = and i64 %v_column.sroa.34.0.insert.ext1084, 4294901760, !dbg !231
  %v_column.sroa.34.0.insert.insert1087 = or disjoint i64 %v_column.sroa.50.0.insert.insert1162, %v_column.sroa.34.0.insert.shift1085, !dbg !231
  %v_column.sroa.0.0.insert.ext1021 = and i64 %151, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1023 = or disjoint i64 %v_column.sroa.34.0.insert.insert1087, %v_column.sroa.0.0.insert.ext1021, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1023, ptr addrspace(3) %add.ptr434.1886, align 8, !dbg !231
  %v_fetch.sroa.0.2.extract.shift1300 = lshr i64 %151, 16, !dbg !232
  %157 = or disjoint i32 %mul422, 1280, !dbg !233
  %158 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %157, !dbg !230
  %add.ptr434.1.1 = getelementptr inbounds i8, ptr addrspace(3) %158, i32 %add.ptr434.idx.1, !dbg !230
  %159 = shl i64 %154, 32, !dbg !231
  %v_column.sroa.66.0.insert.ext1239 = and i64 %159, -281474976710656, !dbg !231
  %160 = shl i64 %153, 16, !dbg !231
  %v_column.sroa.50.0.insert.shift1165 = and i64 %160, 281470681743360, !dbg !231
  %v_column.sroa.50.0.insert.insert1167 = or disjoint i64 %v_column.sroa.66.0.insert.ext1239, %v_column.sroa.50.0.insert.shift1165, !dbg !231
  %v_column.sroa.34.0.insert.ext1089 = and i64 %152, 4294901760, !dbg !231
  %v_column.sroa.34.0.insert.insert1092 = or disjoint i64 %v_column.sroa.50.0.insert.insert1167, %v_column.sroa.34.0.insert.ext1089, !dbg !231
  %v_column.sroa.0.0.insert.ext1025 = and i64 %v_fetch.sroa.0.2.extract.shift1300, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1027 = or disjoint i64 %v_column.sroa.34.0.insert.insert1092, %v_column.sroa.0.0.insert.ext1025, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1027, ptr addrspace(3) %add.ptr434.1.1, align 8, !dbg !231
  %v_fetch.sroa.0.4.extract.shift1309 = lshr i64 %151, 32, !dbg !232
  %161 = or disjoint i32 %mul422, 1536, !dbg !233
  %162 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %161, !dbg !230
  %add.ptr434.2.1 = getelementptr inbounds i8, ptr addrspace(3) %162, i32 %add.ptr434.idx.2, !dbg !230
  %163 = shl i64 %154, 16, !dbg !231
  %v_column.sroa.66.0.insert.ext1244 = and i64 %163, -281474976710656, !dbg !231
  %v_column.sroa.50.0.insert.ext1169 = and i64 %153, 281470681743360, !dbg !231
  %v_column.sroa.50.0.insert.insert1172 = or disjoint i64 %v_column.sroa.66.0.insert.ext1244, %v_column.sroa.50.0.insert.ext1169, !dbg !231
  %164 = lshr i64 %152, 16, !dbg !231
  %v_column.sroa.34.0.insert.shift1095 = and i64 %164, 4294901760, !dbg !231
  %v_column.sroa.34.0.insert.insert1097 = or disjoint i64 %v_column.sroa.50.0.insert.insert1172, %v_column.sroa.34.0.insert.shift1095, !dbg !231
  %v_column.sroa.0.0.insert.ext1029 = and i64 %v_fetch.sroa.0.4.extract.shift1309, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1031 = or disjoint i64 %v_column.sroa.34.0.insert.insert1097, %v_column.sroa.0.0.insert.ext1029, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1031, ptr addrspace(3) %add.ptr434.2.1, align 8, !dbg !231
  %v_fetch.sroa.0.6.extract.shift1318 = lshr i64 %151, 48, !dbg !232
  %v_fetch.sroa.62.30.extract.shift1417 = and i64 %154, -281474976710656, !dbg !231
  %165 = or disjoint i32 %mul422, 1792, !dbg !233
  %166 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %165, !dbg !230
  %add.ptr434.3.1 = getelementptr inbounds i8, ptr addrspace(3) %166, i32 %add.ptr434.idx.3, !dbg !230
  %167 = lshr i64 %153, 16, !dbg !231
  %v_column.sroa.50.0.insert.shift1175 = and i64 %167, 281470681743360, !dbg !231
  %v_column.sroa.50.0.insert.insert1177 = or disjoint i64 %v_fetch.sroa.62.30.extract.shift1417, %v_column.sroa.50.0.insert.shift1175, !dbg !231
  %168 = lshr i64 %152, 32, !dbg !231
  %v_column.sroa.34.0.insert.shift1100 = and i64 %168, 4294901760, !dbg !231
  %v_column.sroa.34.0.insert.insert1102 = or disjoint i64 %v_column.sroa.50.0.insert.insert1177, %v_column.sroa.34.0.insert.shift1100, !dbg !231
  %v_column.sroa.0.0.insert.insert1035 = or disjoint i64 %v_column.sroa.34.0.insert.insert1102, %v_fetch.sroa.0.6.extract.shift1318, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1035, ptr addrspace(3) %add.ptr434.3.1, align 8, !dbg !231
  %169 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4096, !dbg !228
  %170 = load i64, ptr addrspace(4) %169, align 8, !dbg !229
  %gep825.1.1892 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4352, !dbg !228
  %171 = load i64, ptr addrspace(4) %gep825.1.1892, align 8, !dbg !229
  %gep825.2.1895 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4608, !dbg !228
  %172 = load i64, ptr addrspace(4) %gep825.2.1895, align 8, !dbg !229
  %gep825.3.1898 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4864, !dbg !228
  %173 = load i64, ptr addrspace(4) %gep825.3.1898, align 8, !dbg !229
  %174 = or disjoint i32 %mul422, 2048, !dbg !233
  %175 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %174, !dbg !230
  %add.ptr434.1909 = getelementptr inbounds i8, ptr addrspace(3) %175, i32 %add.ptr434.idx, !dbg !230
  %v_column.sroa.66.0.insert.ext1254 = shl i64 %173, 48, !dbg !231
  %v_column.sroa.50.0.insert.ext1179 = shl i64 %172, 32, !dbg !231
  %v_column.sroa.50.0.insert.shift1180 = and i64 %v_column.sroa.50.0.insert.ext1179, 281470681743360, !dbg !231
  %v_column.sroa.50.0.insert.insert1182 = or disjoint i64 %v_column.sroa.66.0.insert.ext1254, %v_column.sroa.50.0.insert.shift1180, !dbg !231
  %v_column.sroa.34.0.insert.ext1104 = shl i64 %171, 16, !dbg !231
  %v_column.sroa.34.0.insert.shift1105 = and i64 %v_column.sroa.34.0.insert.ext1104, 4294901760, !dbg !231
  %v_column.sroa.34.0.insert.insert1107 = or disjoint i64 %v_column.sroa.50.0.insert.insert1182, %v_column.sroa.34.0.insert.shift1105, !dbg !231
  %v_column.sroa.0.0.insert.ext1037 = and i64 %170, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1039 = or disjoint i64 %v_column.sroa.34.0.insert.insert1107, %v_column.sroa.0.0.insert.ext1037, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1039, ptr addrspace(3) %add.ptr434.1909, align 8, !dbg !231
  %v_fetch.sroa.0.2.extract.shift1303 = lshr i64 %170, 16, !dbg !232
  %176 = or disjoint i32 %mul422, 2304, !dbg !233
  %177 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %176, !dbg !230
  %add.ptr434.1.1920 = getelementptr inbounds i8, ptr addrspace(3) %177, i32 %add.ptr434.idx.1, !dbg !230
  %178 = shl i64 %173, 32, !dbg !231
  %v_column.sroa.66.0.insert.ext1259 = and i64 %178, -281474976710656, !dbg !231
  %179 = shl i64 %172, 16, !dbg !231
  %v_column.sroa.50.0.insert.shift1185 = and i64 %179, 281470681743360, !dbg !231
  %v_column.sroa.50.0.insert.insert1187 = or disjoint i64 %v_column.sroa.66.0.insert.ext1259, %v_column.sroa.50.0.insert.shift1185, !dbg !231
  %v_column.sroa.34.0.insert.ext1109 = and i64 %171, 4294901760, !dbg !231
  %v_column.sroa.34.0.insert.insert1112 = or disjoint i64 %v_column.sroa.50.0.insert.insert1187, %v_column.sroa.34.0.insert.ext1109, !dbg !231
  %v_column.sroa.0.0.insert.ext1041 = and i64 %v_fetch.sroa.0.2.extract.shift1303, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1043 = or disjoint i64 %v_column.sroa.34.0.insert.insert1112, %v_column.sroa.0.0.insert.ext1041, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1043, ptr addrspace(3) %add.ptr434.1.1920, align 8, !dbg !231
  %v_fetch.sroa.0.4.extract.shift1312 = lshr i64 %170, 32, !dbg !232
  %180 = or disjoint i32 %mul422, 2560, !dbg !233
  %181 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %180, !dbg !230
  %add.ptr434.2.1931 = getelementptr inbounds i8, ptr addrspace(3) %181, i32 %add.ptr434.idx.2, !dbg !230
  %182 = shl i64 %173, 16, !dbg !231
  %v_column.sroa.66.0.insert.ext1264 = and i64 %182, -281474976710656, !dbg !231
  %v_column.sroa.50.0.insert.ext1189 = and i64 %172, 281470681743360, !dbg !231
  %v_column.sroa.50.0.insert.insert1192 = or disjoint i64 %v_column.sroa.66.0.insert.ext1264, %v_column.sroa.50.0.insert.ext1189, !dbg !231
  %183 = lshr i64 %171, 16, !dbg !231
  %v_column.sroa.34.0.insert.shift1115 = and i64 %183, 4294901760, !dbg !231
  %v_column.sroa.34.0.insert.insert1117 = or disjoint i64 %v_column.sroa.50.0.insert.insert1192, %v_column.sroa.34.0.insert.shift1115, !dbg !231
  %v_column.sroa.0.0.insert.ext1045 = and i64 %v_fetch.sroa.0.4.extract.shift1312, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1047 = or disjoint i64 %v_column.sroa.34.0.insert.insert1117, %v_column.sroa.0.0.insert.ext1045, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1047, ptr addrspace(3) %add.ptr434.2.1931, align 8, !dbg !231
  %v_fetch.sroa.0.6.extract.shift1321 = lshr i64 %170, 48, !dbg !232
  %v_fetch.sroa.62.30.extract.shift1420 = and i64 %173, -281474976710656, !dbg !231
  %184 = or disjoint i32 %mul422, 2816, !dbg !233
  %185 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %184, !dbg !230
  %add.ptr434.3.1942 = getelementptr inbounds i8, ptr addrspace(3) %185, i32 %add.ptr434.idx.3, !dbg !230
  %186 = lshr i64 %172, 16, !dbg !231
  %v_column.sroa.50.0.insert.shift1195 = and i64 %186, 281470681743360, !dbg !231
  %v_column.sroa.50.0.insert.insert1197 = or disjoint i64 %v_fetch.sroa.62.30.extract.shift1420, %v_column.sroa.50.0.insert.shift1195, !dbg !231
  %187 = lshr i64 %171, 32, !dbg !231
  %v_column.sroa.34.0.insert.shift1120 = and i64 %187, 4294901760, !dbg !231
  %v_column.sroa.34.0.insert.insert1122 = or disjoint i64 %v_column.sroa.50.0.insert.insert1197, %v_column.sroa.34.0.insert.shift1120, !dbg !231
  %v_column.sroa.0.0.insert.insert1051 = or disjoint i64 %v_column.sroa.34.0.insert.insert1122, %v_fetch.sroa.0.6.extract.shift1321, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1051, ptr addrspace(3) %add.ptr434.3.1942, align 8, !dbg !231
  %188 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4224, !dbg !228
  %189 = load i64, ptr addrspace(4) %188, align 8, !dbg !229
  %gep825.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4480, !dbg !228
  %190 = load i64, ptr addrspace(4) %gep825.1.1.1, align 8, !dbg !229
  %gep825.2.1.1 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4736, !dbg !228
  %191 = load i64, ptr addrspace(4) %gep825.2.1.1, align 8, !dbg !229
  %gep825.3.1.1 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4992, !dbg !228
  %192 = load i64, ptr addrspace(4) %gep825.3.1.1, align 8, !dbg !229
  %193 = or disjoint i32 %mul422, 3072, !dbg !233
  %194 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %193, !dbg !230
  %add.ptr434.1886.1 = getelementptr inbounds i8, ptr addrspace(3) %194, i32 %add.ptr434.idx, !dbg !230
  %v_column.sroa.66.0.insert.ext1274 = shl i64 %192, 48, !dbg !231
  %v_column.sroa.50.0.insert.ext1199 = shl i64 %191, 32, !dbg !231
  %v_column.sroa.50.0.insert.shift1200 = and i64 %v_column.sroa.50.0.insert.ext1199, 281470681743360, !dbg !231
  %v_column.sroa.50.0.insert.insert1202 = or disjoint i64 %v_column.sroa.66.0.insert.ext1274, %v_column.sroa.50.0.insert.shift1200, !dbg !231
  %v_column.sroa.34.0.insert.ext1124 = shl i64 %190, 16, !dbg !231
  %v_column.sroa.34.0.insert.shift1125 = and i64 %v_column.sroa.34.0.insert.ext1124, 4294901760, !dbg !231
  %v_column.sroa.34.0.insert.insert1127 = or disjoint i64 %v_column.sroa.50.0.insert.insert1202, %v_column.sroa.34.0.insert.shift1125, !dbg !231
  %v_column.sroa.0.0.insert.ext1053 = and i64 %189, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1055 = or disjoint i64 %v_column.sroa.34.0.insert.insert1127, %v_column.sroa.0.0.insert.ext1053, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1055, ptr addrspace(3) %add.ptr434.1886.1, align 8, !dbg !231
  %v_fetch.sroa.0.2.extract.shift1306 = lshr i64 %189, 16, !dbg !232
  %195 = or disjoint i32 %mul422, 3328, !dbg !233
  %196 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %195, !dbg !230
  %add.ptr434.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %196, i32 %add.ptr434.idx.1, !dbg !230
  %197 = shl i64 %192, 32, !dbg !231
  %v_column.sroa.66.0.insert.ext1279 = and i64 %197, -281474976710656, !dbg !231
  %198 = shl i64 %191, 16, !dbg !231
  %v_column.sroa.50.0.insert.shift1205 = and i64 %198, 281470681743360, !dbg !231
  %v_column.sroa.50.0.insert.insert1207 = or disjoint i64 %v_column.sroa.66.0.insert.ext1279, %v_column.sroa.50.0.insert.shift1205, !dbg !231
  %v_column.sroa.34.0.insert.ext1129 = and i64 %190, 4294901760, !dbg !231
  %v_column.sroa.34.0.insert.insert1132 = or disjoint i64 %v_column.sroa.50.0.insert.insert1207, %v_column.sroa.34.0.insert.ext1129, !dbg !231
  %v_column.sroa.0.0.insert.ext1057 = and i64 %v_fetch.sroa.0.2.extract.shift1306, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1059 = or disjoint i64 %v_column.sroa.34.0.insert.insert1132, %v_column.sroa.0.0.insert.ext1057, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1059, ptr addrspace(3) %add.ptr434.1.1.1, align 8, !dbg !231
  %v_fetch.sroa.0.4.extract.shift1315 = lshr i64 %189, 32, !dbg !232
  %199 = or disjoint i32 %mul422, 3584, !dbg !233
  %200 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %199, !dbg !230
  %add.ptr434.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %200, i32 %add.ptr434.idx.2, !dbg !230
  %201 = shl i64 %192, 16, !dbg !231
  %v_column.sroa.66.0.insert.ext1284 = and i64 %201, -281474976710656, !dbg !231
  %v_column.sroa.50.0.insert.ext1209 = and i64 %191, 281470681743360, !dbg !231
  %v_column.sroa.50.0.insert.insert1212 = or disjoint i64 %v_column.sroa.66.0.insert.ext1284, %v_column.sroa.50.0.insert.ext1209, !dbg !231
  %202 = lshr i64 %190, 16, !dbg !231
  %v_column.sroa.34.0.insert.shift1135 = and i64 %202, 4294901760, !dbg !231
  %v_column.sroa.34.0.insert.insert1137 = or disjoint i64 %v_column.sroa.50.0.insert.insert1212, %v_column.sroa.34.0.insert.shift1135, !dbg !231
  %v_column.sroa.0.0.insert.ext1061 = and i64 %v_fetch.sroa.0.4.extract.shift1315, 65535, !dbg !231
  %v_column.sroa.0.0.insert.insert1063 = or disjoint i64 %v_column.sroa.34.0.insert.insert1137, %v_column.sroa.0.0.insert.ext1061, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1063, ptr addrspace(3) %add.ptr434.2.1.1, align 8, !dbg !231
  %v_fetch.sroa.0.6.extract.shift1324 = lshr i64 %189, 48, !dbg !232
  %v_fetch.sroa.62.30.extract.shift1423 = and i64 %192, -281474976710656, !dbg !231
  %203 = or disjoint i32 %mul422, 3840, !dbg !233
  %204 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %203, !dbg !230
  %add.ptr434.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %204, i32 %add.ptr434.idx.3, !dbg !230
  %205 = lshr i64 %191, 16, !dbg !231
  %v_column.sroa.50.0.insert.shift1215 = and i64 %205, 281470681743360, !dbg !231
  %v_column.sroa.50.0.insert.insert1217 = or disjoint i64 %v_fetch.sroa.62.30.extract.shift1423, %v_column.sroa.50.0.insert.shift1215, !dbg !231
  %206 = lshr i64 %190, 32, !dbg !231
  %v_column.sroa.34.0.insert.shift1140 = and i64 %206, 4294901760, !dbg !231
  %v_column.sroa.34.0.insert.insert1142 = or disjoint i64 %v_column.sroa.50.0.insert.insert1217, %v_column.sroa.34.0.insert.shift1140, !dbg !231
  %v_column.sroa.0.0.insert.insert1067 = or disjoint i64 %v_column.sroa.34.0.insert.insert1142, %v_fetch.sroa.0.6.extract.shift1324, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1067, ptr addrspace(3) %add.ptr434.3.1.1, align 8, !dbg !231
  fence syncscope("warp") release, !dbg !234
  tail call void @llvm.mxc.barrier.warp(), !dbg !237
  fence syncscope("warp") acquire, !dbg !238
  %and473 = shl nuw nsw i32 %3, 8
  %mul474 = and i32 %and473, 768
  %mul481 = and i32 %5, 48
  %and487 = and i32 %3, 3
  %207 = xor i32 %shr35, %and487
  %add482 = or disjoint i32 %mul474, %mul481, !dbg !239
  %208 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add482, !dbg !240
  %add.ptr492.idx = shl nuw nsw i32 %207, 3, !dbg !240
  %add.ptr492 = getelementptr inbounds i8, ptr addrspace(3) %208, i32 %add.ptr492.idx, !dbg !240
  %209 = load <4 x half>, ptr addrspace(3) %add.ptr492, align 8, !dbg !241
  %add477.1 = or disjoint i32 %mul474, %mul481, !dbg !239
  %add482.1 = or disjoint i32 %add477.1, 64, !dbg !239
  %210 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add482.1, !dbg !240
  %xor488.1 = shl nuw nsw i32 %207, 3, !dbg !240
  %add.ptr492.idx.1 = xor i32 %xor488.1, 8, !dbg !240
  %add.ptr492.1 = getelementptr inbounds i8, ptr addrspace(3) %210, i32 %add.ptr492.idx.1, !dbg !240
  %211 = load <4 x half>, ptr addrspace(3) %add.ptr492.1, align 8, !dbg !241
  %add477.2 = or disjoint i32 %mul474, %mul481, !dbg !239
  %add482.2 = or disjoint i32 %add477.2, 128, !dbg !239
  %212 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add482.2, !dbg !240
  %xor488.2 = shl nuw nsw i32 %207, 3, !dbg !240
  %add.ptr492.idx.2 = xor i32 %xor488.2, 16, !dbg !240
  %add.ptr492.2 = getelementptr inbounds i8, ptr addrspace(3) %212, i32 %add.ptr492.idx.2, !dbg !240
  %213 = load <4 x half>, ptr addrspace(3) %add.ptr492.2, align 8, !dbg !241
  %add477.3 = or disjoint i32 %mul474, %mul481, !dbg !239
  %add482.3 = or disjoint i32 %add477.3, 192, !dbg !239
  %214 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add482.3, !dbg !240
  %xor488.3 = shl nuw nsw i32 %207, 3, !dbg !240
  %add.ptr492.idx.3 = xor i32 %xor488.3, 24, !dbg !240
  %add.ptr492.3 = getelementptr inbounds i8, ptr addrspace(3) %214, i32 %add.ptr492.idx.3, !dbg !240
  %215 = load <4 x half>, ptr addrspace(3) %add.ptr492.3, align 8, !dbg !241
  %216 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %209, <4 x half> %99, <4 x float> zeroinitializer), !dbg !242
  %217 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %211, <4 x half> %99, <4 x float> zeroinitializer), !dbg !242
  %218 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %213, <4 x half> %99, <4 x float> zeroinitializer), !dbg !242
  %219 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %215, <4 x half> %99, <4 x float> zeroinitializer), !dbg !242
  %add475.1 = or disjoint i32 %mul474, %mul481, !dbg !239
  %add482.1944 = or disjoint i32 %add475.1, 1024, !dbg !239
  %220 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add482.1944, !dbg !240
  %add.ptr492.1946 = getelementptr inbounds i8, ptr addrspace(3) %220, i32 %add.ptr492.idx, !dbg !240
  %221 = load <4 x half>, ptr addrspace(3) %add.ptr492.1946, align 8, !dbg !241
  %add477.1.1 = or disjoint i32 %mul474, %mul481, !dbg !239
  %add482.1.1 = or disjoint i32 %add477.1.1, 1088, !dbg !239
  %222 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add482.1.1, !dbg !240
  %add.ptr492.1.1 = getelementptr inbounds i8, ptr addrspace(3) %222, i32 %add.ptr492.idx.1, !dbg !240
  %223 = load <4 x half>, ptr addrspace(3) %add.ptr492.1.1, align 8, !dbg !241
  %add477.2.1 = or disjoint i32 %mul474, %mul481, !dbg !239
  %add482.2.1 = or disjoint i32 %add477.2.1, 1152, !dbg !239
  %224 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add482.2.1, !dbg !240
  %add.ptr492.2.1 = getelementptr inbounds i8, ptr addrspace(3) %224, i32 %add.ptr492.idx.2, !dbg !240
  %225 = load <4 x half>, ptr addrspace(3) %add.ptr492.2.1, align 8, !dbg !241
  %add477.3.1 = or disjoint i32 %mul474, %mul481, !dbg !239
  %add482.3.1 = or disjoint i32 %add477.3.1, 1216, !dbg !239
  %226 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add482.3.1, !dbg !240
  %add.ptr492.3.1 = getelementptr inbounds i8, ptr addrspace(3) %226, i32 %add.ptr492.idx.3, !dbg !240
  %227 = load <4 x half>, ptr addrspace(3) %add.ptr492.3.1, align 8, !dbg !241
  %228 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %221, <4 x half> %99, <4 x float> zeroinitializer), !dbg !242
  %229 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %223, <4 x half> %99, <4 x float> zeroinitializer), !dbg !242
  %230 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %225, <4 x half> %99, <4 x float> zeroinitializer), !dbg !242
  %231 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %227, <4 x half> %99, <4 x float> zeroinitializer), !dbg !242
  %add475.1949 = or disjoint i32 %mul474, %mul481, !dbg !239
  %add482.1950 = or disjoint i32 %add475.1949, 2048, !dbg !239
  %232 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add482.1950, !dbg !240
  %add.ptr492.1952 = getelementptr inbounds i8, ptr addrspace(3) %232, i32 %add.ptr492.idx, !dbg !240
  %233 = load <4 x half>, ptr addrspace(3) %add.ptr492.1952, align 8, !dbg !241
  %add477.1.1953 = or disjoint i32 %mul474, %mul481, !dbg !239
  %add482.1.1954 = or disjoint i32 %add477.1.1953, 2112, !dbg !239
  %234 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add482.1.1954, !dbg !240
  %add.ptr492.1.1957 = getelementptr inbounds i8, ptr addrspace(3) %234, i32 %add.ptr492.idx.1, !dbg !240
  %235 = load <4 x half>, ptr addrspace(3) %add.ptr492.1.1957, align 8, !dbg !241
  %add477.2.1959 = or disjoint i32 %mul474, %mul481, !dbg !239
  %add482.2.1960 = or disjoint i32 %add477.2.1959, 2176, !dbg !239
  %236 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add482.2.1960, !dbg !240
  %add.ptr492.2.1963 = getelementptr inbounds i8, ptr addrspace(3) %236, i32 %add.ptr492.idx.2, !dbg !240
  %237 = load <4 x half>, ptr addrspace(3) %add.ptr492.2.1963, align 8, !dbg !241
  %add477.3.1965 = or disjoint i32 %mul474, %mul481, !dbg !239
  %add482.3.1966 = or disjoint i32 %add477.3.1965, 2240, !dbg !239
  %238 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add482.3.1966, !dbg !240
  %add.ptr492.3.1969 = getelementptr inbounds i8, ptr addrspace(3) %238, i32 %add.ptr492.idx.3, !dbg !240
  %239 = load <4 x half>, ptr addrspace(3) %add.ptr492.3.1969, align 8, !dbg !241
  %240 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %233, <4 x half> %115, <4 x float> %216), !dbg !242
  %241 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %235, <4 x half> %115, <4 x float> %217), !dbg !242
  %242 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %237, <4 x half> %115, <4 x float> %218), !dbg !242
  %243 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %239, <4 x half> %115, <4 x float> %219), !dbg !242
  %add475.1.1 = or disjoint i32 %mul474, %mul481, !dbg !239
  %add482.1944.1 = or disjoint i32 %add475.1.1, 3072, !dbg !239
  %244 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add482.1944.1, !dbg !240
  %add.ptr492.1946.1 = getelementptr inbounds i8, ptr addrspace(3) %244, i32 %add.ptr492.idx, !dbg !240
  %245 = load <4 x half>, ptr addrspace(3) %add.ptr492.1946.1, align 8, !dbg !241
  %add477.1.1.1 = or disjoint i32 %mul474, %mul481, !dbg !239
  %add482.1.1.1 = or disjoint i32 %add477.1.1.1, 3136, !dbg !239
  %246 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add482.1.1.1, !dbg !240
  %add.ptr492.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %246, i32 %add.ptr492.idx.1, !dbg !240
  %247 = load <4 x half>, ptr addrspace(3) %add.ptr492.1.1.1, align 8, !dbg !241
  %add477.2.1.1 = or disjoint i32 %mul474, %mul481, !dbg !239
  %add482.2.1.1 = or disjoint i32 %add477.2.1.1, 3200, !dbg !239
  %248 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add482.2.1.1, !dbg !240
  %add.ptr492.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %248, i32 %add.ptr492.idx.2, !dbg !240
  %249 = load <4 x half>, ptr addrspace(3) %add.ptr492.2.1.1, align 8, !dbg !241
  %add477.3.1.1 = or disjoint i32 %mul474, %mul481, !dbg !239
  %add482.3.1.1 = or disjoint i32 %add477.3.1.1, 3264, !dbg !239
  %250 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add482.3.1.1, !dbg !240
  %add.ptr492.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %250, i32 %add.ptr492.idx.3, !dbg !240
  %251 = load <4 x half>, ptr addrspace(3) %add.ptr492.3.1.1, align 8, !dbg !241
  %252 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %245, <4 x half> %115, <4 x float> %228), !dbg !242
  %253 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %247, <4 x half> %115, <4 x float> %229), !dbg !242
  %254 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %249, <4 x half> %115, <4 x float> %230), !dbg !242
  %255 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %251, <4 x half> %115, <4 x float> %231), !dbg !242
  %add349 = fadd contract float %add344, %127, !dbg !243
  br label %if.end543, !dbg !61

if.end543:                                        ; preds = %for.cond.preheader, %for.body533.preheader
  %.pre-phi1777 = phi i64 [ %11, %for.cond.preheader ], [ %.pre1776, %for.body533.preheader ], !dbg !60
  %.pre-phi1775 = phi i64 [ %9, %for.cond.preheader ], [ %.pre1774, %for.body533.preheader ], !dbg !60
  %.pre-phi1773 = phi i64 [ %7, %for.cond.preheader ], [ %.pre1772, %for.body533.preheader ], !dbg !60
  %add615.1.pre-phi = phi i32 [ %add36.1, %for.cond.preheader ], [ %.pre1771, %for.body533.preheader ], !dbg !59
  %.pre-phi1770 = phi i64 [ %6, %for.cond.preheader ], [ %.pre1769, %for.body533.preheader ], !dbg !58
  %shr614.pre-phi = phi i32 [ %shr35, %for.cond.preheader ], [ %.pre1764, %for.body533.preheader ]
  %.pre-phi1763 = phi i32 [ %mul20, %for.cond.preheader ], [ %.pre1762, %for.body533.preheader ]
  %xor587.3.pre-phi = phi i32 [ %xor59.3, %for.cond.preheader ], [ %.pre1761, %for.body533.preheader ], !dbg !56
  %xor587.2.pre-phi = phi i32 [ %xor59.2, %for.cond.preheader ], [ %.pre1759, %for.body533.preheader ], !dbg !56
  %xor587.1.pre-phi = phi i32 [ %xor59.1, %for.cond.preheader ], [ %.pre1757, %for.body533.preheader ], !dbg !56
  %xor587.pre-phi = phi i32 [ %xor59, %for.cond.preheader ], [ %.pre1755, %for.body533.preheader ], !dbg !56
  %mul593.pre-phi = phi i32 [ %mul65, %for.cond.preheader ], [ %.pre1754, %for.body533.preheader ]
  %and586.pre-phi = phi i32 [ %and31, %for.cond.preheader ], [ %.pre1751, %for.body533.preheader ]
  %shr583.pre-phi = phi i32 [ %shr55, %for.cond.preheader ], [ %.pre1750, %for.body533.preheader ]
  %and579.pre-phi = phi i32 [ %4, %for.cond.preheader ], [ %.pre1749, %for.body533.preheader ]
  %.pre-phi = phi i32 [ %3, %for.cond.preheader ], [ %.pre, %for.body533.preheader ]
  %numerator.sroa.170.0 = phi <4 x float> [ %255, %for.cond.preheader ], [ zeroinitializer, %for.body533.preheader ], !dbg !244
  %numerator.sroa.146.0 = phi <4 x float> [ %254, %for.cond.preheader ], [ zeroinitializer, %for.body533.preheader ], !dbg !244
  %numerator.sroa.122.0 = phi <4 x float> [ %253, %for.cond.preheader ], [ zeroinitializer, %for.body533.preheader ], !dbg !244
  %numerator.sroa.98.0 = phi <4 x float> [ %252, %for.cond.preheader ], [ zeroinitializer, %for.body533.preheader ], !dbg !244
  %numerator.sroa.74.0 = phi <4 x float> [ %243, %for.cond.preheader ], [ zeroinitializer, %for.body533.preheader ], !dbg !244
  %numerator.sroa.50.0 = phi <4 x float> [ %242, %for.cond.preheader ], [ zeroinitializer, %for.body533.preheader ], !dbg !244
  %numerator.sroa.26.0 = phi <4 x float> [ %241, %for.cond.preheader ], [ zeroinitializer, %for.body533.preheader ], !dbg !244
  %numerator.sroa.0.0 = phi <4 x float> [ %240, %for.cond.preheader ], [ zeroinitializer, %for.body533.preheader ], !dbg !244
  %denominator.sroa.0.1 = phi float [ %add349, %for.cond.preheader ], [ 0.000000e+00, %for.body533.preheader ], !dbg !244
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !245
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !245
  %div.1 = fdiv contract float %numerator.sroa.0.4.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !245
  %div.2 = fdiv contract float %numerator.sroa.0.8.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !245
  %div.3 = fdiv contract float %numerator.sroa.0.12.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.26.16.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 0, !dbg !245
  %div.4 = fdiv contract float %numerator.sroa.26.16.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.26.20.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 1, !dbg !245
  %div.5 = fdiv contract float %numerator.sroa.26.20.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.26.24.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 2, !dbg !245
  %div.6 = fdiv contract float %numerator.sroa.26.24.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.26.28.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 3, !dbg !245
  %div.7 = fdiv contract float %numerator.sroa.26.28.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.50.32.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 0, !dbg !245
  %div.8 = fdiv contract float %numerator.sroa.50.32.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.50.36.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 1, !dbg !245
  %div.9 = fdiv contract float %numerator.sroa.50.36.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.50.40.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 2, !dbg !245
  %div.10 = fdiv contract float %numerator.sroa.50.40.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.50.44.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 3, !dbg !245
  %div.11 = fdiv contract float %numerator.sroa.50.44.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.74.48.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 0, !dbg !245
  %div.12 = fdiv contract float %numerator.sroa.74.48.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.74.52.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 1, !dbg !245
  %div.13 = fdiv contract float %numerator.sroa.74.52.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.74.56.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 2, !dbg !245
  %div.14 = fdiv contract float %numerator.sroa.74.56.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.74.60.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 3, !dbg !245
  %div.15 = fdiv contract float %numerator.sroa.74.60.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.98.64.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 0, !dbg !245
  %div.16 = fdiv contract float %numerator.sroa.98.64.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.98.68.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 1, !dbg !245
  %div.17 = fdiv contract float %numerator.sroa.98.68.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.98.72.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 2, !dbg !245
  %div.18 = fdiv contract float %numerator.sroa.98.72.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.98.76.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 3, !dbg !245
  %div.19 = fdiv contract float %numerator.sroa.98.76.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.122.80.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 0, !dbg !245
  %div.20 = fdiv contract float %numerator.sroa.122.80.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.122.84.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 1, !dbg !245
  %div.21 = fdiv contract float %numerator.sroa.122.84.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.122.88.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 2, !dbg !245
  %div.22 = fdiv contract float %numerator.sroa.122.88.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.122.92.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 3, !dbg !245
  %div.23 = fdiv contract float %numerator.sroa.122.92.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.146.96.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 0, !dbg !245
  %div.24 = fdiv contract float %numerator.sroa.146.96.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.146.100.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 1, !dbg !245
  %div.25 = fdiv contract float %numerator.sroa.146.100.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.146.104.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 2, !dbg !245
  %div.26 = fdiv contract float %numerator.sroa.146.104.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.146.108.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 3, !dbg !245
  %div.27 = fdiv contract float %numerator.sroa.146.108.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.170.112.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 0, !dbg !245
  %div.28 = fdiv contract float %numerator.sroa.170.112.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.170.116.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 1, !dbg !245
  %div.29 = fdiv contract float %numerator.sroa.170.116.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.170.120.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 2, !dbg !245
  %div.30 = fdiv contract float %numerator.sroa.170.120.vec.extract, %denominator.sroa.0.1, !dbg !246
  %numerator.sroa.170.124.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 3, !dbg !245
  %div.31 = fdiv contract float %numerator.sroa.170.124.vec.extract, %denominator.sroa.0.1, !dbg !246
  fence syncscope("warp") release, !dbg !247
  tail call void @llvm.mxc.barrier.warp(), !dbg !250
  fence syncscope("warp") acquire, !dbg !251
  %mul580 = and i32 %and579.pre-phi, 1920
  %256 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !252, !noalias !256
  %257 = fptrunc float %div to half, !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %256), !dbg !252, !noalias !256
  %258 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !256
  %259 = fptrunc float %div.1 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %258), !dbg !261, !noalias !256
  %260 = bitcast half %257 to i16, !dbg !263
  %261 = bitcast half %259 to i16, !dbg !266
  %262 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !271
  %263 = fptrunc float %div.2 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %262), !dbg !267, !noalias !271
  %264 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !271
  %265 = fptrunc float %div.3 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %264), !dbg !276, !noalias !271
  %266 = bitcast half %263 to i16, !dbg !278
  %267 = bitcast half %265 to i16, !dbg !280
  %__6.sroa.6.0.insert.ext = zext i16 %267 to i64, !dbg !281
  %__6.sroa.6.0.insert.shift = shl nuw i64 %__6.sroa.6.0.insert.ext, 48, !dbg !281
  %__6.sroa.5.0.insert.ext = zext i16 %266 to i64, !dbg !281
  %__6.sroa.5.0.insert.shift = shl nuw nsw i64 %__6.sroa.5.0.insert.ext, 32, !dbg !281
  %__6.sroa.5.0.insert.insert = or disjoint i64 %__6.sroa.6.0.insert.shift, %__6.sroa.5.0.insert.shift, !dbg !281
  %__6.sroa.4.0.insert.ext = zext i16 %261 to i64, !dbg !281
  %__6.sroa.4.0.insert.shift = shl nuw nsw i64 %__6.sroa.4.0.insert.ext, 16, !dbg !281
  %__6.sroa.4.0.insert.insert = or disjoint i64 %__6.sroa.5.0.insert.insert, %__6.sroa.4.0.insert.shift, !dbg !281
  %__6.sroa.0.0.insert.ext = zext i16 %260 to i64, !dbg !281
  %__6.sroa.0.0.insert.insert = or disjoint i64 %__6.sroa.4.0.insert.insert, %__6.sroa.0.0.insert.ext, !dbg !281
  %mul588 = shl nuw nsw i32 %xor587.pre-phi, 3, !dbg !282
  %add589 = add nuw nsw i32 %mul588, %mul580, !dbg !283
  %add594 = or disjoint i32 %add589, %mul593.pre-phi, !dbg !284
  %add.ptr596 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add594, !dbg !285
  store i64 %__6.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr596, align 8, !dbg !286
  %268 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !252, !noalias !256
  %269 = fptrunc float %div.4 to half, !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %268), !dbg !252, !noalias !256
  %270 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !256
  %271 = fptrunc float %div.5 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %270), !dbg !261, !noalias !256
  %272 = bitcast half %269 to i16, !dbg !263
  %273 = bitcast half %271 to i16, !dbg !266
  %274 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !271
  %275 = fptrunc float %div.6 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %274), !dbg !267, !noalias !271
  %276 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !271
  %277 = fptrunc float %div.7 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %276), !dbg !276, !noalias !271
  %278 = bitcast half %275 to i16, !dbg !278
  %279 = bitcast half %277 to i16, !dbg !280
  %__6.sroa.6.0.insert.ext.1 = zext i16 %279 to i64, !dbg !281
  %__6.sroa.6.0.insert.shift.1 = shl nuw i64 %__6.sroa.6.0.insert.ext.1, 48, !dbg !281
  %__6.sroa.5.0.insert.ext.1 = zext i16 %278 to i64, !dbg !281
  %__6.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.1, 32, !dbg !281
  %__6.sroa.5.0.insert.insert.1 = or disjoint i64 %__6.sroa.6.0.insert.shift.1, %__6.sroa.5.0.insert.shift.1, !dbg !281
  %__6.sroa.4.0.insert.ext.1 = zext i16 %273 to i64, !dbg !281
  %__6.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.1, 16, !dbg !281
  %__6.sroa.4.0.insert.insert.1 = or disjoint i64 %__6.sroa.5.0.insert.insert.1, %__6.sroa.4.0.insert.shift.1, !dbg !281
  %__6.sroa.0.0.insert.ext.1 = zext i16 %272 to i64, !dbg !281
  %__6.sroa.0.0.insert.insert.1 = or disjoint i64 %__6.sroa.4.0.insert.insert.1, %__6.sroa.0.0.insert.ext.1, !dbg !281
  %mul588.1 = shl nuw nsw i32 %xor587.1.pre-phi, 3, !dbg !282
  %add589.1 = add nuw nsw i32 %mul588.1, %mul580, !dbg !283
  %add594.1 = or disjoint i32 %add589.1, %mul593.pre-phi, !dbg !284
  %add.ptr596.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add594.1, !dbg !285
  store i64 %__6.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr596.1, align 8, !dbg !286
  %280 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !252, !noalias !256
  %281 = fptrunc float %div.8 to half, !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %280), !dbg !252, !noalias !256
  %282 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !256
  %283 = fptrunc float %div.9 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %282), !dbg !261, !noalias !256
  %284 = bitcast half %281 to i16, !dbg !263
  %285 = bitcast half %283 to i16, !dbg !266
  %286 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !271
  %287 = fptrunc float %div.10 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %286), !dbg !267, !noalias !271
  %288 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !271
  %289 = fptrunc float %div.11 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %288), !dbg !276, !noalias !271
  %290 = bitcast half %287 to i16, !dbg !278
  %291 = bitcast half %289 to i16, !dbg !280
  %__6.sroa.6.0.insert.ext.2 = zext i16 %291 to i64, !dbg !281
  %__6.sroa.6.0.insert.shift.2 = shl nuw i64 %__6.sroa.6.0.insert.ext.2, 48, !dbg !281
  %__6.sroa.5.0.insert.ext.2 = zext i16 %290 to i64, !dbg !281
  %__6.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.2, 32, !dbg !281
  %__6.sroa.5.0.insert.insert.2 = or disjoint i64 %__6.sroa.6.0.insert.shift.2, %__6.sroa.5.0.insert.shift.2, !dbg !281
  %__6.sroa.4.0.insert.ext.2 = zext i16 %285 to i64, !dbg !281
  %__6.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.2, 16, !dbg !281
  %__6.sroa.4.0.insert.insert.2 = or disjoint i64 %__6.sroa.5.0.insert.insert.2, %__6.sroa.4.0.insert.shift.2, !dbg !281
  %__6.sroa.0.0.insert.ext.2 = zext i16 %284 to i64, !dbg !281
  %__6.sroa.0.0.insert.insert.2 = or disjoint i64 %__6.sroa.4.0.insert.insert.2, %__6.sroa.0.0.insert.ext.2, !dbg !281
  %mul588.2 = shl nuw nsw i32 %xor587.2.pre-phi, 3, !dbg !282
  %add589.2 = add nuw nsw i32 %mul588.2, %mul580, !dbg !283
  %add594.2 = or disjoint i32 %add589.2, %mul593.pre-phi, !dbg !284
  %add.ptr596.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add594.2, !dbg !285
  store i64 %__6.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr596.2, align 8, !dbg !286
  %292 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !252, !noalias !256
  %293 = fptrunc float %div.12 to half, !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %292), !dbg !252, !noalias !256
  %294 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !256
  %295 = fptrunc float %div.13 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %294), !dbg !261, !noalias !256
  %296 = bitcast half %293 to i16, !dbg !263
  %297 = bitcast half %295 to i16, !dbg !266
  %298 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !271
  %299 = fptrunc float %div.14 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %298), !dbg !267, !noalias !271
  %300 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !271
  %301 = fptrunc float %div.15 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %300), !dbg !276, !noalias !271
  %302 = bitcast half %299 to i16, !dbg !278
  %303 = bitcast half %301 to i16, !dbg !280
  %__6.sroa.6.0.insert.ext.3 = zext i16 %303 to i64, !dbg !281
  %__6.sroa.6.0.insert.shift.3 = shl nuw i64 %__6.sroa.6.0.insert.ext.3, 48, !dbg !281
  %__6.sroa.5.0.insert.ext.3 = zext i16 %302 to i64, !dbg !281
  %__6.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.3, 32, !dbg !281
  %__6.sroa.5.0.insert.insert.3 = or disjoint i64 %__6.sroa.6.0.insert.shift.3, %__6.sroa.5.0.insert.shift.3, !dbg !281
  %__6.sroa.4.0.insert.ext.3 = zext i16 %297 to i64, !dbg !281
  %__6.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.3, 16, !dbg !281
  %__6.sroa.4.0.insert.insert.3 = or disjoint i64 %__6.sroa.5.0.insert.insert.3, %__6.sroa.4.0.insert.shift.3, !dbg !281
  %__6.sroa.0.0.insert.ext.3 = zext i16 %296 to i64, !dbg !281
  %__6.sroa.0.0.insert.insert.3 = or disjoint i64 %__6.sroa.4.0.insert.insert.3, %__6.sroa.0.0.insert.ext.3, !dbg !281
  %mul588.3 = shl nuw nsw i32 %xor587.3.pre-phi, 3, !dbg !282
  %add589.3 = add nuw nsw i32 %mul588.3, %mul580, !dbg !283
  %add594.3 = or disjoint i32 %add589.3, %mul593.pre-phi, !dbg !284
  %add.ptr596.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add594.3, !dbg !285
  store i64 %__6.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr596.3, align 8, !dbg !286
  %304 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !252, !noalias !256
  %305 = fptrunc float %div.16 to half, !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %304), !dbg !252, !noalias !256
  %306 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !256
  %307 = fptrunc float %div.17 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %306), !dbg !261, !noalias !256
  %308 = bitcast half %305 to i16, !dbg !263
  %309 = bitcast half %307 to i16, !dbg !266
  %310 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !271
  %311 = fptrunc float %div.18 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %310), !dbg !267, !noalias !271
  %312 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !271
  %313 = fptrunc float %div.19 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %312), !dbg !276, !noalias !271
  %314 = bitcast half %311 to i16, !dbg !278
  %315 = bitcast half %313 to i16, !dbg !280
  %__6.sroa.6.0.insert.ext.4 = zext i16 %315 to i64, !dbg !281
  %__6.sroa.6.0.insert.shift.4 = shl nuw i64 %__6.sroa.6.0.insert.ext.4, 48, !dbg !281
  %__6.sroa.5.0.insert.ext.4 = zext i16 %314 to i64, !dbg !281
  %__6.sroa.5.0.insert.shift.4 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.4, 32, !dbg !281
  %__6.sroa.5.0.insert.insert.4 = or disjoint i64 %__6.sroa.6.0.insert.shift.4, %__6.sroa.5.0.insert.shift.4, !dbg !281
  %__6.sroa.4.0.insert.ext.4 = zext i16 %309 to i64, !dbg !281
  %__6.sroa.4.0.insert.shift.4 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.4, 16, !dbg !281
  %__6.sroa.4.0.insert.insert.4 = or disjoint i64 %__6.sroa.5.0.insert.insert.4, %__6.sroa.4.0.insert.shift.4, !dbg !281
  %__6.sroa.0.0.insert.ext.4 = zext i16 %308 to i64, !dbg !281
  %__6.sroa.0.0.insert.insert.4 = or disjoint i64 %__6.sroa.4.0.insert.insert.4, %__6.sroa.0.0.insert.ext.4, !dbg !281
  %add584.4 = add nuw nsw i32 %shr583.pre-phi, 8, !dbg !57
  %xor587.4 = xor i32 %add584.4, %and586.pre-phi, !dbg !56
  %mul588.4 = shl nuw nsw i32 %xor587.4, 3, !dbg !282
  %add589.4 = add nuw nsw i32 %mul588.4, %mul580, !dbg !283
  %add594.4 = or disjoint i32 %add589.4, %mul593.pre-phi, !dbg !284
  %add.ptr596.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add594.4, !dbg !285
  store i64 %__6.sroa.0.0.insert.insert.4, ptr addrspace(3) %add.ptr596.4, align 8, !dbg !286
  %316 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !252, !noalias !256
  %317 = fptrunc float %div.20 to half, !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %316), !dbg !252, !noalias !256
  %318 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !256
  %319 = fptrunc float %div.21 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %318), !dbg !261, !noalias !256
  %320 = bitcast half %317 to i16, !dbg !263
  %321 = bitcast half %319 to i16, !dbg !266
  %322 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !271
  %323 = fptrunc float %div.22 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %322), !dbg !267, !noalias !271
  %324 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !271
  %325 = fptrunc float %div.23 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %324), !dbg !276, !noalias !271
  %326 = bitcast half %323 to i16, !dbg !278
  %327 = bitcast half %325 to i16, !dbg !280
  %__6.sroa.6.0.insert.ext.5 = zext i16 %327 to i64, !dbg !281
  %__6.sroa.6.0.insert.shift.5 = shl nuw i64 %__6.sroa.6.0.insert.ext.5, 48, !dbg !281
  %__6.sroa.5.0.insert.ext.5 = zext i16 %326 to i64, !dbg !281
  %__6.sroa.5.0.insert.shift.5 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.5, 32, !dbg !281
  %__6.sroa.5.0.insert.insert.5 = or disjoint i64 %__6.sroa.6.0.insert.shift.5, %__6.sroa.5.0.insert.shift.5, !dbg !281
  %__6.sroa.4.0.insert.ext.5 = zext i16 %321 to i64, !dbg !281
  %__6.sroa.4.0.insert.shift.5 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.5, 16, !dbg !281
  %__6.sroa.4.0.insert.insert.5 = or disjoint i64 %__6.sroa.5.0.insert.insert.5, %__6.sroa.4.0.insert.shift.5, !dbg !281
  %__6.sroa.0.0.insert.ext.5 = zext i16 %320 to i64, !dbg !281
  %__6.sroa.0.0.insert.insert.5 = or disjoint i64 %__6.sroa.4.0.insert.insert.5, %__6.sroa.0.0.insert.ext.5, !dbg !281
  %add584.5 = add nuw nsw i32 %shr583.pre-phi, 10, !dbg !57
  %xor587.5 = xor i32 %add584.5, %and586.pre-phi, !dbg !56
  %mul588.5 = shl nuw nsw i32 %xor587.5, 3, !dbg !282
  %add589.5 = add nuw nsw i32 %mul588.5, %mul580, !dbg !283
  %add594.5 = or disjoint i32 %add589.5, %mul593.pre-phi, !dbg !284
  %add.ptr596.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add594.5, !dbg !285
  store i64 %__6.sroa.0.0.insert.insert.5, ptr addrspace(3) %add.ptr596.5, align 8, !dbg !286
  %328 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !252, !noalias !256
  %329 = fptrunc float %div.24 to half, !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %328), !dbg !252, !noalias !256
  %330 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !256
  %331 = fptrunc float %div.25 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %330), !dbg !261, !noalias !256
  %332 = bitcast half %329 to i16, !dbg !263
  %333 = bitcast half %331 to i16, !dbg !266
  %334 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !271
  %335 = fptrunc float %div.26 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %334), !dbg !267, !noalias !271
  %336 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !271
  %337 = fptrunc float %div.27 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %336), !dbg !276, !noalias !271
  %338 = bitcast half %335 to i16, !dbg !278
  %339 = bitcast half %337 to i16, !dbg !280
  %__6.sroa.6.0.insert.ext.6 = zext i16 %339 to i64, !dbg !281
  %__6.sroa.6.0.insert.shift.6 = shl nuw i64 %__6.sroa.6.0.insert.ext.6, 48, !dbg !281
  %__6.sroa.5.0.insert.ext.6 = zext i16 %338 to i64, !dbg !281
  %__6.sroa.5.0.insert.shift.6 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.6, 32, !dbg !281
  %__6.sroa.5.0.insert.insert.6 = or disjoint i64 %__6.sroa.6.0.insert.shift.6, %__6.sroa.5.0.insert.shift.6, !dbg !281
  %__6.sroa.4.0.insert.ext.6 = zext i16 %333 to i64, !dbg !281
  %__6.sroa.4.0.insert.shift.6 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.6, 16, !dbg !281
  %__6.sroa.4.0.insert.insert.6 = or disjoint i64 %__6.sroa.5.0.insert.insert.6, %__6.sroa.4.0.insert.shift.6, !dbg !281
  %__6.sroa.0.0.insert.ext.6 = zext i16 %332 to i64, !dbg !281
  %__6.sroa.0.0.insert.insert.6 = or disjoint i64 %__6.sroa.4.0.insert.insert.6, %__6.sroa.0.0.insert.ext.6, !dbg !281
  %add584.6 = add nuw nsw i32 %shr583.pre-phi, 12, !dbg !57
  %xor587.6 = xor i32 %add584.6, %and586.pre-phi, !dbg !56
  %mul588.6 = shl nuw nsw i32 %xor587.6, 3, !dbg !282
  %add589.6 = add nuw nsw i32 %mul588.6, %mul580, !dbg !283
  %add594.6 = or disjoint i32 %add589.6, %mul593.pre-phi, !dbg !284
  %add.ptr596.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add594.6, !dbg !285
  store i64 %__6.sroa.0.0.insert.insert.6, ptr addrspace(3) %add.ptr596.6, align 8, !dbg !286
  %340 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !252, !noalias !256
  %341 = fptrunc float %div.28 to half, !dbg !252
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %340), !dbg !252, !noalias !256
  %342 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !256
  %343 = fptrunc float %div.29 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %342), !dbg !261, !noalias !256
  %344 = bitcast half %341 to i16, !dbg !263
  %345 = bitcast half %343 to i16, !dbg !266
  %346 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !271
  %347 = fptrunc float %div.30 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %346), !dbg !267, !noalias !271
  %348 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !271
  %349 = fptrunc float %div.31 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %348), !dbg !276, !noalias !271
  %350 = bitcast half %347 to i16, !dbg !278
  %351 = bitcast half %349 to i16, !dbg !280
  %__6.sroa.6.0.insert.ext.7 = zext i16 %351 to i64, !dbg !281
  %__6.sroa.6.0.insert.shift.7 = shl nuw i64 %__6.sroa.6.0.insert.ext.7, 48, !dbg !281
  %__6.sroa.5.0.insert.ext.7 = zext i16 %350 to i64, !dbg !281
  %__6.sroa.5.0.insert.shift.7 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.7, 32, !dbg !281
  %__6.sroa.5.0.insert.insert.7 = or disjoint i64 %__6.sroa.6.0.insert.shift.7, %__6.sroa.5.0.insert.shift.7, !dbg !281
  %__6.sroa.4.0.insert.ext.7 = zext i16 %345 to i64, !dbg !281
  %__6.sroa.4.0.insert.shift.7 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.7, 16, !dbg !281
  %__6.sroa.4.0.insert.insert.7 = or disjoint i64 %__6.sroa.5.0.insert.insert.7, %__6.sroa.4.0.insert.shift.7, !dbg !281
  %__6.sroa.0.0.insert.ext.7 = zext i16 %344 to i64, !dbg !281
  %__6.sroa.0.0.insert.insert.7 = or disjoint i64 %__6.sroa.4.0.insert.insert.7, %__6.sroa.0.0.insert.ext.7, !dbg !281
  %add584.7 = add nuw nsw i32 %shr583.pre-phi, 14, !dbg !57
  %xor587.7 = xor i32 %add584.7, %and586.pre-phi, !dbg !56
  %mul588.7 = shl nuw nsw i32 %xor587.7, 3, !dbg !282
  %add589.7 = add nuw nsw i32 %mul588.7, %mul580, !dbg !283
  %add594.7 = or disjoint i32 %add589.7, %mul593.pre-phi, !dbg !284
  %add.ptr596.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add594.7, !dbg !285
  store i64 %__6.sroa.0.0.insert.insert.7, ptr addrspace(3) %add.ptr596.7, align 8, !dbg !286
  fence syncscope("warp") release, !dbg !287
  tail call void @llvm.mxc.barrier.warp(), !dbg !290
  fence syncscope("warp") acquire, !dbg !291
  %mul607 = and i32 %.pre-phi1763, 8064
  %and610 = and i32 %.pre-phi, 15
  %invariant.gep839 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul607, !dbg !292
  %xor616 = xor i32 %shr614.pre-phi, %and610, !dbg !293
  %add.ptr620.idx = shl nuw nsw i32 %xor616, 4, !dbg !294
  %add.ptr620 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep839, i32 %add.ptr620.idx, !dbg !294
  %add.ptr632 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi1770, !dbg !295
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr632, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr620, i64 16, i1 false), !dbg !296, !tbaa.struct !67, !call_argsrelate !297
  %xor616.1 = xor i32 %add615.1.pre-phi, %and610, !dbg !293
  %gep840.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep839, i32 1024, !dbg !294
  %add.ptr620.idx.1 = shl nuw nsw i32 %xor616.1, 4, !dbg !294
  %add.ptr620.1 = getelementptr inbounds i8, ptr addrspace(3) %gep840.1, i32 %add.ptr620.idx.1, !dbg !294
  %add.ptr632.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi1773, !dbg !295
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr632.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr620.1, i64 16, i1 false), !dbg !296, !tbaa.struct !67, !call_argsrelate !297
  %gep840.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep839, i32 2048, !dbg !294
  %add.ptr620.2 = getelementptr inbounds i8, ptr addrspace(3) %gep840.2, i32 %add.ptr620.idx, !dbg !294
  %add.ptr632.2 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi1775, !dbg !295
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr632.2, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr620.2, i64 16, i1 false), !dbg !296, !tbaa.struct !67, !call_argsrelate !297
  %gep840.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep839, i32 3072, !dbg !294
  %add.ptr620.3 = getelementptr inbounds i8, ptr addrspace(3) %gep840.3, i32 %add.ptr620.idx.1, !dbg !294
  %add.ptr632.3 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi1777, !dbg !295
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr632.3, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr620.3, i64 16, i1 false), !dbg !296, !tbaa.struct !67, !call_argsrelate !297
  ret void, !dbg !298
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noalias nocapture writeonly, ptr addrspace(3) noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noalias nocapture writeonly, ptr addrspace(4) noalias nocapture readonly, i64, i1 immarg) #10

attributes #0 = { mustprogress noreturn nounwind "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="512" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="512" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" }
attributes #3 = { convergent mustprogress norecurse nounwind willreturn "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-implicitarg-num-bytes"="80" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="64" "metaxgpu-min-blocks"="1" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" "uniform-work-group-size"="true" }
attributes #4 = { convergent nounwind willreturn memory(none) }
attributes #5 = { nounwind speculatable willreturn memory(none) }
attributes #6 = { convergent nounwind willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind speculatable willreturn memory(inaccessiblemem: read) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nomerge }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "mxcc version 1.0.0 (d9102a1572)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v058_codex_power_s1_packed_planes_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v058_codex_power_s1_packed_planes_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
!42 = !DILocation(line: 78, column: 3, scope: !43, inlinedAt: !45)
!43 = distinct !DISubprogram(name: "__fetch_builtin_y", scope: !44, file: !44, line: 78, type: !7, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!44 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_builtin_vars.h", directory: "")
!45 = distinct !DILocation(line: 23, column: 38, scope: !40)
!46 = !DILocation(line: 23, column: 50, scope: !40)
!47 = !DILocation(line: 77, column: 3, scope: !48, inlinedAt: !49)
!48 = distinct !DISubprogram(name: "__fetch_builtin_x", scope: !44, file: !44, line: 77, type: !7, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!49 = distinct !DILocation(line: 23, column: 66, scope: !40)
!50 = !DILocation(line: 23, column: 58, scope: !40)
!51 = !DILocation(line: 23, column: 22, scope: !40)
!52 = !DILocation(line: 23, column: 80, scope: !40)
!53 = !DILocation(line: 25, column: 10, scope: !40)
!54 = !DILocation(line: 25, column: 26, scope: !40)
!55 = !{i32 0, i32 1024}
!56 = !DILocation(line: 176, column: 104, scope: !40)
!57 = !DILocation(line: 176, column: 75, scope: !40)
!58 = !DILocation(line: 180, column: 3, scope: !40)
!59 = !DILocation(line: 181, column: 261, scope: !40)
!60 = !DILocation(line: 181, column: 105, scope: !40)
!61 = !DILocation(line: 165, column: 3, scope: !40)
!62 = !DILocation(line: 27, column: 5, scope: !40)
!63 = !DILocation(line: 28, column: 223, scope: !40)
!64 = !DILocation(line: 28, column: 152, scope: !40)
!65 = !DILocation(line: 28, column: 24, scope: !40)
!66 = !DILocation(line: 28, column: 209, scope: !40)
!67 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!68 = !{i32 -1, i32 3, i32 -1, i32 -1}
!69 = !DILocation(line: 28, column: 304, scope: !40)
!70 = !DILocation(line: 28, column: 172, scope: !40)
!71 = !DILocation(line: 68, column: 3, scope: !72, inlinedAt: !74)
!72 = distinct !DISubprogram(name: "__barrier_warp", scope: !73, file: !73, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!73 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!74 = distinct !DILocation(line: 192, column: 3, scope: !75, inlinedAt: !76)
!75 = distinct !DISubprogram(name: "__syncwarp", scope: !73, file: !73, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!76 = distinct !DILocation(line: 30, column: 5, scope: !40)
!77 = !DILocation(line: 69, column: 3, scope: !72, inlinedAt: !74)
!78 = !DILocation(line: 70, column: 3, scope: !72, inlinedAt: !74)
!79 = !DILocation(line: 32, column: 174, scope: !40)
!80 = !DILocation(line: 32, column: 59, scope: !40)
!81 = !DILocation(line: 32, column: 40, scope: !40)
!82 = !DILocation(line: 32, column: 145, scope: !40)
!83 = !DILocation(line: 32, column: 122, scope: !40)
!84 = !DILocation(line: 68, column: 3, scope: !72, inlinedAt: !85)
!85 = distinct !DILocation(line: 192, column: 3, scope: !75, inlinedAt: !86)
!86 = distinct !DILocation(line: 34, column: 5, scope: !40)
!87 = !DILocation(line: 69, column: 3, scope: !72, inlinedAt: !85)
!88 = !DILocation(line: 70, column: 3, scope: !72, inlinedAt: !85)
!89 = !DILocation(line: 36, column: 10, scope: !40)
!90 = !DILocation(line: 37, column: 227, scope: !40)
!91 = !DILocation(line: 37, column: 24, scope: !40)
!92 = !DILocation(line: 37, column: 213, scope: !40)
!93 = !{i32 -1, i32 1, i32 -1, i32 -1}
!94 = !DILocation(line: 68, column: 3, scope: !72, inlinedAt: !95)
!95 = distinct !DILocation(line: 192, column: 3, scope: !75, inlinedAt: !96)
!96 = distinct !DILocation(line: 39, column: 5, scope: !40)
!97 = !DILocation(line: 69, column: 3, scope: !72, inlinedAt: !95)
!98 = !DILocation(line: 70, column: 3, scope: !72, inlinedAt: !95)
!99 = !DILocation(line: 48, column: 32, scope: !40)
!100 = !DILocation(line: 50, column: 44, scope: !40)
!101 = !DILocation(line: 48, column: 51, scope: !40)
!102 = !DILocation(line: 61, column: 96, scope: !40)
!103 = !DILocation(line: 61, column: 13, scope: !40)
!104 = !DILocation(line: 61, column: 85, scope: !40)
!105 = !DILocation(line: 351, column: 10, scope: !106, inlinedAt: !108)
!106 = distinct !DISubprogram(name: "max", scope: !107, file: !107, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!107 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!108 = distinct !DILocation(line: 72, column: 20, scope: !40)
!109 = !DILocation(line: 1018, column: 9, scope: !110, inlinedAt: !111)
!110 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !73, file: !73, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!111 = distinct !DILocation(line: 74, column: 34, scope: !40)
!112 = !DILocation(line: 171, column: 37, scope: !113, inlinedAt: !114)
!113 = distinct !DISubprogram(name: "__lane_id", scope: !73, file: !73, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!114 = distinct !DILocation(line: 990, column: 14, scope: !115, inlinedAt: !116)
!115 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !73, file: !73, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
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
!126 = distinct !DILocation(line: 74, column: 18, scope: !40)
!127 = !DILocation(line: 1018, column: 9, scope: !110, inlinedAt: !128)
!128 = distinct !DILocation(line: 75, column: 34, scope: !40)
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
!141 = distinct !DILocation(line: 75, column: 18, scope: !40)
!142 = !DILocation(line: 87, column: 26, scope: !40)
!143 = !DILocation(line: 88, column: 26, scope: !40)
!144 = !DILocation(line: 89, column: 26, scope: !40)
!145 = !DILocation(line: 90, column: 26, scope: !40)
!146 = !DILocation(line: 92, column: 25, scope: !40)
!147 = !DILocation(line: 93, column: 25, scope: !40)
!148 = !DILocation(line: 94, column: 25, scope: !40)
!149 = !DILocation(line: 95, column: 25, scope: !40)
!150 = !DILocation(line: 97, column: 23, scope: !40)
!151 = !DILocation(line: 98, column: 23, scope: !40)
!152 = !DILocation(line: 99, column: 23, scope: !40)
!153 = !DILocation(line: 100, column: 23, scope: !40)
!154 = !DILocation(line: 285, column: 49, scope: !155, inlinedAt: !156)
!155 = distinct !DISubprogram(name: "exp2f", scope: !107, file: !107, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!156 = distinct !DILocation(line: 101, column: 15, scope: !40)
!157 = !DILocation(line: 285, column: 49, scope: !155, inlinedAt: !158)
!158 = distinct !DILocation(line: 102, column: 15, scope: !40)
!159 = !DILocation(line: 285, column: 49, scope: !155, inlinedAt: !160)
!160 = distinct !DILocation(line: 103, column: 15, scope: !40)
!161 = !DILocation(line: 285, column: 49, scope: !155, inlinedAt: !162)
!162 = distinct !DILocation(line: 104, column: 15, scope: !40)
!163 = !DILocation(line: 1007, column: 10, scope: !164, inlinedAt: !166)
!164 = distinct !DISubprogram(name: "__float2half_rn", scope: !165, file: !165, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!165 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!166 = distinct !DILocation(line: 1077, column: 18, scope: !167, inlinedAt: !168)
!167 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !165, file: !165, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!168 = distinct !DILocation(line: 1295, column: 23, scope: !169, inlinedAt: !170)
!169 = distinct !DISubprogram(name: "__float22half2_rn", scope: !165, file: !165, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!170 = distinct !DILocation(line: 105, column: 29, scope: !40)
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
!181 = distinct !DILocation(line: 106, column: 29, scope: !40)
!182 = !{!183, !185}
!183 = distinct !{!183, !184, !"_ZL17__floats2half2_rnff: %agg.result"}
!184 = distinct !{!184, !"_ZL17__floats2half2_rnff"}
!185 = distinct !{!185, !186, !"_ZL17__float22half2_rn6float2: %agg.result"}
!186 = distinct !{!186, !"_ZL17__float22half2_rn6float2"}
!187 = !DILocation(line: 1007, column: 10, scope: !164, inlinedAt: !188)
!188 = distinct !DILocation(line: 1077, column: 38, scope: !167, inlinedAt: !180)
!189 = !DILocation(line: 107, column: 51, scope: !40)
!190 = !DILocation(line: 1082, column: 16, scope: !191, inlinedAt: !192)
!191 = distinct !DISubprogram(name: "__half2float", scope: !165, file: !165, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!192 = distinct !DILocation(line: 136, column: 55, scope: !193, inlinedAt: !194)
!193 = distinct !DISubprogram(name: "operator float", scope: !165, file: !165, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!194 = distinct !DILocation(line: 111, column: 50, scope: !40)
!195 = !DILocation(line: 111, column: 40, scope: !40)
!196 = !DILocation(line: 1018, column: 9, scope: !110, inlinedAt: !197)
!197 = distinct !DILocation(line: 113, column: 40, scope: !40)
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
!209 = !DILocation(line: 113, column: 38, scope: !40)
!210 = !DILocation(line: 1018, column: 9, scope: !110, inlinedAt: !211)
!211 = distinct !DILocation(line: 114, column: 40, scope: !40)
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
!223 = !DILocation(line: 68, column: 3, scope: !72, inlinedAt: !224)
!224 = distinct !DILocation(line: 192, column: 3, scope: !75, inlinedAt: !225)
!225 = distinct !DILocation(line: 115, column: 5, scope: !40)
!226 = !DILocation(line: 69, column: 3, scope: !72, inlinedAt: !224)
!227 = !DILocation(line: 70, column: 3, scope: !72, inlinedAt: !224)
!228 = !DILocation(line: 122, column: 56, scope: !40)
!229 = !DILocation(line: 122, column: 42, scope: !40)
!230 = !DILocation(line: 129, column: 28, scope: !40)
!231 = !DILocation(line: 129, column: 204, scope: !40)
!232 = !DILocation(line: 127, column: 29, scope: !40)
!233 = !DILocation(line: 129, column: 87, scope: !40)
!234 = !DILocation(line: 68, column: 3, scope: !72, inlinedAt: !235)
!235 = distinct !DILocation(line: 192, column: 3, scope: !75, inlinedAt: !236)
!236 = distinct !DILocation(line: 133, column: 5, scope: !40)
!237 = !DILocation(line: 69, column: 3, scope: !72, inlinedAt: !235)
!238 = !DILocation(line: 70, column: 3, scope: !72, inlinedAt: !235)
!239 = !DILocation(line: 145, column: 168, scope: !40)
!240 = !DILocation(line: 145, column: 67, scope: !40)
!241 = !DILocation(line: 145, column: 48, scope: !40)
!242 = !DILocation(line: 150, column: 64, scope: !40)
!243 = !DILocation(line: 114, column: 38, scope: !40)
!244 = !DILocation(line: 0, scope: !40)
!245 = !DILocation(line: 166, column: 23, scope: !40)
!246 = !DILocation(line: 166, column: 38, scope: !40)
!247 = !DILocation(line: 68, column: 3, scope: !72, inlinedAt: !248)
!248 = distinct !DILocation(line: 192, column: 3, scope: !75, inlinedAt: !249)
!249 = distinct !DILocation(line: 168, column: 3, scope: !40)
!250 = !DILocation(line: 69, column: 3, scope: !72, inlinedAt: !248)
!251 = !DILocation(line: 70, column: 3, scope: !72, inlinedAt: !248)
!252 = !DILocation(line: 1007, column: 10, scope: !164, inlinedAt: !253)
!253 = distinct !DILocation(line: 1077, column: 18, scope: !167, inlinedAt: !254)
!254 = distinct !DILocation(line: 1295, column: 23, scope: !169, inlinedAt: !255)
!255 = distinct !DILocation(line: 173, column: 27, scope: !40)
!256 = !{!257, !259}
!257 = distinct !{!257, !258, !"_ZL17__floats2half2_rnff: %agg.result"}
!258 = distinct !{!258, !"_ZL17__floats2half2_rnff"}
!259 = distinct !{!259, !260, !"_ZL17__float22half2_rn6float2: %agg.result"}
!260 = distinct !{!260, !"_ZL17__float22half2_rn6float2"}
!261 = !DILocation(line: 1007, column: 10, scope: !164, inlinedAt: !262)
!262 = distinct !DILocation(line: 1077, column: 38, scope: !167, inlinedAt: !254)
!263 = !DILocation(line: 596, column: 67, scope: !264, inlinedAt: !265)
!264 = distinct !DISubprogram(name: "__half2", scope: !165, file: !165, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!265 = distinct !DILocation(line: 1077, column: 10, scope: !167, inlinedAt: !254)
!266 = !DILocation(line: 596, column: 73, scope: !264, inlinedAt: !265)
!267 = !DILocation(line: 1007, column: 10, scope: !164, inlinedAt: !268)
!268 = distinct !DILocation(line: 1077, column: 18, scope: !167, inlinedAt: !269)
!269 = distinct !DILocation(line: 1295, column: 23, scope: !169, inlinedAt: !270)
!270 = distinct !DILocation(line: 174, column: 27, scope: !40)
!271 = !{!272, !274}
!272 = distinct !{!272, !273, !"_ZL17__floats2half2_rnff: %agg.result"}
!273 = distinct !{!273, !"_ZL17__floats2half2_rnff"}
!274 = distinct !{!274, !275, !"_ZL17__float22half2_rn6float2: %agg.result"}
!275 = distinct !{!275, !"_ZL17__float22half2_rn6float2"}
!276 = !DILocation(line: 1007, column: 10, scope: !164, inlinedAt: !277)
!277 = distinct !DILocation(line: 1077, column: 38, scope: !167, inlinedAt: !269)
!278 = !DILocation(line: 596, column: 67, scope: !264, inlinedAt: !279)
!279 = distinct !DILocation(line: 1077, column: 10, scope: !167, inlinedAt: !269)
!280 = !DILocation(line: 596, column: 73, scope: !264, inlinedAt: !279)
!281 = !DILocation(line: 175, column: 38, scope: !40)
!282 = !DILocation(line: 176, column: 132, scope: !40)
!283 = !DILocation(line: 176, column: 60, scope: !40)
!284 = !DILocation(line: 176, column: 138, scope: !40)
!285 = !DILocation(line: 176, column: 22, scope: !40)
!286 = !DILocation(line: 176, column: 181, scope: !40)
!287 = !DILocation(line: 68, column: 3, scope: !72, inlinedAt: !288)
!288 = distinct !DILocation(line: 192, column: 3, scope: !75, inlinedAt: !289)
!289 = distinct !DILocation(line: 178, column: 3, scope: !40)
!290 = !DILocation(line: 69, column: 3, scope: !72, inlinedAt: !288)
!291 = !DILocation(line: 70, column: 3, scope: !72, inlinedAt: !288)
!292 = !DILocation(line: 180, column: 8, scope: !40)
!293 = !DILocation(line: 181, column: 239, scope: !40)
!294 = !DILocation(line: 181, column: 153, scope: !40)
!295 = !DILocation(line: 181, column: 22, scope: !40)
!296 = !DILocation(line: 181, column: 134, scope: !40)
!297 = !{i32 2, i32 -1, i32 -1, i32 -1}
!298 = !DILocation(line: 183, column: 1, scope: !40)
