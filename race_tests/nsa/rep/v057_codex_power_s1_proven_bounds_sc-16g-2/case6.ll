; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v057_codex_power_s1_proven_bounds_sc-16g-2/case6.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v057_codex_power_s1_proven_bounds_sc-16g-2/codegen/case6.device.cpp"
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
define protected metaxgpu_kernel void @native_sparse_attention_kernel(ptr addrspace(1) noalias nocapture noundef readonly %Indices.coerce, ptr addrspace(4) noalias nocapture noundef readonly %K.coerce, ptr addrspace(1) noalias nocapture noundef writeonly %Output.coerce, ptr addrspace(4) noalias nocapture noundef readonly %Q.coerce, ptr addrspace(4) noalias noundef readonly %V.coerce) local_unnamed_addr #3 !dbg !40 {
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
  br i1 %or.cond, label %for.body548.preheader, label %for.cond.preheader, !dbg !54

for.body548.preheader:                            ; preds = %entry
  %.pre = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  %.pre1834 = shl nuw nsw i32 %.pre, 7
  %.pre1835 = lshr i32 %.pre, 5
  %.pre1836 = and i32 %.pre, 7
  %.pre1837 = lshr i32 %.pre, 2
  %.pre1839 = and i32 %.pre1837, 4
  %.pre1840 = xor i32 %.pre1835, %.pre1836, !dbg !56
  %.pre1841 = add nuw nsw i32 %.pre1835, 2, !dbg !57
  %.pre1842 = xor i32 %.pre1841, %.pre1836, !dbg !56
  %.pre1843 = add nuw nsw i32 %.pre1835, 4, !dbg !57
  %.pre1844 = xor i32 %.pre1843, %.pre1836, !dbg !56
  %.pre1845 = add nuw nsw i32 %.pre1835, 6, !dbg !57
  %.pre1846 = xor i32 %.pre1845, %.pre1836, !dbg !56
  %.pre1847 = shl nuw nsw i32 %.pre, 3
  %.pre1849 = lshr i32 %.pre, 4
  %.pre1850 = shl nsw i32 %0, 21
  %.pre1851 = shl nsw i32 %1, 11
  %.pre1852 = add nuw nsw i32 %.pre1850, %.pre1851
  %.pre1853 = add nuw nsw i32 %.pre1852, %.pre1847
  %.pre1854 = zext nneg i32 %.pre1853 to i64, !dbg !58
  %.pre1856 = add nuw nsw i32 %.pre1849, 4, !dbg !59
  %.pre1857 = add nuw nsw i64 %.pre1854, 512, !dbg !60
  %.pre1859 = add nuw nsw i64 %.pre1854, 1024, !dbg !60
  %.pre1861 = add nuw nsw i64 %.pre1854, 1536, !dbg !60
  br label %if.end558, !dbg !61

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
  %invariant.gep825 = getelementptr inbounds i8, ptr addrspace(4) %K.coerce, i64 %.idx, !dbg !89
  %invariant.gep827 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep825, i64 %mul90, !dbg !89
  %24 = and i32 %3, 8
  %.idx862 = shl nuw nsw i64 %conv, 18, !dbg !90
  %25 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep827, i64 %.idx862, !dbg !90
  %26 = shl nuw nsw i32 %24, 9, !dbg !91
  %gep830 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %26, !dbg !91
  %add.ptr114 = getelementptr inbounds i8, ptr addrspace(3) %gep830, i32 %add.ptr40.idx, !dbg !91
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr114, ptr addrspace(4) noundef align 16 dereferenceable(16) %25, i64 16, i1 false), !dbg !92, !tbaa.struct !67, !call_argsrelate !93
  %gep828.1 = getelementptr inbounds i8, ptr addrspace(4) %25, i64 1024, !dbg !90
  %27 = shl nuw nsw i32 %24, 9, !dbg !91
  %28 = or disjoint i32 %27, 512, !dbg !91
  %gep830.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %28, !dbg !91
  %add.ptr114.1 = getelementptr inbounds i8, ptr addrspace(3) %gep830.1, i32 %add.ptr40.idx.1, !dbg !91
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr114.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep828.1, i64 16, i1 false), !dbg !92, !tbaa.struct !67, !call_argsrelate !93
  %gep828.2 = getelementptr inbounds i8, ptr addrspace(4) %25, i64 2048, !dbg !90
  %29 = shl nuw nsw i32 %24, 9, !dbg !91
  %30 = or disjoint i32 %29, 1024, !dbg !91
  %gep830.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %30, !dbg !91
  %add.ptr114.2 = getelementptr inbounds i8, ptr addrspace(3) %gep830.2, i32 %add.ptr40.idx, !dbg !91
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr114.2, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep828.2, i64 16, i1 false), !dbg !92, !tbaa.struct !67, !call_argsrelate !93
  %gep828.3 = getelementptr inbounds i8, ptr addrspace(4) %25, i64 3072, !dbg !90
  %31 = shl nuw nsw i32 %24, 9, !dbg !91
  %32 = or disjoint i32 %31, 1536, !dbg !91
  %gep830.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %32, !dbg !91
  %add.ptr114.3 = getelementptr inbounds i8, ptr addrspace(3) %gep830.3, i32 %add.ptr40.idx.1, !dbg !91
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr114.3, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep828.3, i64 16, i1 false), !dbg !92, !tbaa.struct !67, !call_argsrelate !93
  %gep828.4 = getelementptr inbounds i8, ptr addrspace(4) %25, i64 4096, !dbg !90
  %33 = shl nuw nsw i32 %24, 9, !dbg !91
  %34 = or disjoint i32 %33, 2048, !dbg !91
  %gep830.4 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %34, !dbg !91
  %add.ptr114.4 = getelementptr inbounds i8, ptr addrspace(3) %gep830.4, i32 %add.ptr40.idx, !dbg !91
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr114.4, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep828.4, i64 16, i1 false), !dbg !92, !tbaa.struct !67, !call_argsrelate !93
  %gep828.5 = getelementptr inbounds i8, ptr addrspace(4) %25, i64 5120, !dbg !90
  %35 = shl nuw nsw i32 %24, 9, !dbg !91
  %36 = or disjoint i32 %35, 2560, !dbg !91
  %gep830.5 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %36, !dbg !91
  %add.ptr114.5 = getelementptr inbounds i8, ptr addrspace(3) %gep830.5, i32 %add.ptr40.idx.1, !dbg !91
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr114.5, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep828.5, i64 16, i1 false), !dbg !92, !tbaa.struct !67, !call_argsrelate !93
  %gep828.6 = getelementptr inbounds i8, ptr addrspace(4) %25, i64 6144, !dbg !90
  %37 = shl nuw nsw i32 %24, 9, !dbg !91
  %38 = or disjoint i32 %37, 3072, !dbg !91
  %gep830.6 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %38, !dbg !91
  %add.ptr114.6 = getelementptr inbounds i8, ptr addrspace(3) %gep830.6, i32 %add.ptr40.idx, !dbg !91
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr114.6, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep828.6, i64 16, i1 false), !dbg !92, !tbaa.struct !67, !call_argsrelate !93
  %gep828.7 = getelementptr inbounds i8, ptr addrspace(4) %25, i64 7168, !dbg !90
  %39 = shl nuw nsw i32 %24, 9, !dbg !91
  %40 = or disjoint i32 %39, 3584, !dbg !91
  %gep830.7 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %40, !dbg !91
  %add.ptr114.7 = getelementptr inbounds i8, ptr addrspace(3) %gep830.7, i32 %add.ptr40.idx.1, !dbg !91
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr114.7, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep828.7, i64 16, i1 false), !dbg !92, !tbaa.struct !67, !call_argsrelate !93
  fence syncscope("warp") release, !dbg !94
  tail call void @llvm.mxc.barrier.warp(), !dbg !97
  fence syncscope("warp") acquire, !dbg !98
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr68, align 8, !dbg !99
  %41 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %15, <4 x float> zeroinitializer), !dbg !100
  %add.ptr164.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr68, i32 2048, !dbg !101
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr164.1, align 8, !dbg !99
  %42 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %15, <4 x float> zeroinitializer), !dbg !100
  %k_local.sroa.0.0.copyload.1876 = load <4 x half>, ptr addrspace(3) %add.ptr68.1, align 8, !dbg !99
  %43 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1876, <4 x half> %16, <4 x float> %41), !dbg !100
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
  %cmp200.not.1877 = icmp sgt i32 %add197.1, %1, !dbg !102
  %scores.sroa.38.16.vec.extract = extractelement <4 x float> %61, i64 0, !dbg !103
  %condval.0.1880 = select i1 %cmp200.not.1877, float 0xFFF0000000000000, float %scores.sroa.38.16.vec.extract, !dbg !103
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
  %66 = tail call contract noundef float @llvm.maxnum.f32(float %65, float %condval.0.1880), !dbg !105
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
  %xor.i.i774 = xor i32 %79, 16, !dbg !133
  %80 = and i32 %79, -64, !dbg !134
  %and.i.i775 = add nsw i32 %80, 64, !dbg !134
  %cmp.not.i.i776 = icmp slt i32 %xor.i.i774, %and.i.i775, !dbg !135
  %cond.i.i777 = select i1 %cmp.not.i.i776, i32 %xor.i.i774, i32 %79, !dbg !136
  %shl.i.i778 = shl i32 %cond.i.i777, 2, !dbg !137
  %81 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i778, i32 %77), !dbg !138
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
  %cond.i.i779 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i = fadd contract float %add286, %cond.i.i779, !dbg !154
  %84 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !154
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i = fmul contract float %cond2.i.i, %84, !dbg !154
  %cmp.i.i780 = fcmp contract olt float %add290, -1.260000e+02, !dbg !157
  %cond.i.i781 = select contract i1 %cmp.i.i780, float 6.400000e+01, float 0.000000e+00, !dbg !157
  %add.i.i782 = fadd contract float %add290, %cond.i.i781, !dbg !157
  %85 = tail call contract float @llvm.exp2.f32(float %add.i.i782), !dbg !157
  %cond2.i.i783 = select contract i1 %cmp.i.i780, float 0x3BF0000000000000, float 1.000000e+00, !dbg !157
  %mul.i.i784 = fmul contract float %cond2.i.i783, %85, !dbg !157
  %cmp.i.i785 = fcmp contract olt float %add294, -1.260000e+02, !dbg !159
  %cond.i.i786 = select contract i1 %cmp.i.i785, float 6.400000e+01, float 0.000000e+00, !dbg !159
  %add.i.i787 = fadd contract float %add294, %cond.i.i786, !dbg !159
  %86 = tail call contract float @llvm.exp2.f32(float %add.i.i787), !dbg !159
  %cond2.i.i788 = select contract i1 %cmp.i.i785, float 0x3BF0000000000000, float 1.000000e+00, !dbg !159
  %mul.i.i789 = fmul contract float %cond2.i.i788, %86, !dbg !159
  %cmp.i.i790 = fcmp contract olt float %add298, -1.260000e+02, !dbg !161
  %cond.i.i791 = select contract i1 %cmp.i.i790, float 6.400000e+01, float 0.000000e+00, !dbg !161
  %add.i.i792 = fadd contract float %add298, %cond.i.i791, !dbg !161
  %87 = tail call contract float @llvm.exp2.f32(float %add.i.i792), !dbg !161
  %cond2.i.i793 = select contract i1 %cmp.i.i790, float 0x3BF0000000000000, float 1.000000e+00, !dbg !161
  %mul.i.i794 = fmul contract float %cond2.i.i793, %87, !dbg !161
  %88 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !163
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !163, !noalias !171
  %89 = fptrunc float %mul.i.i to half, !dbg !163
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %88), !dbg !163, !noalias !171
  %90 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !171
  %91 = fptrunc float %mul.i.i784 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %90), !dbg !176, !noalias !171
  %92 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !182
  %93 = fptrunc float %mul.i.i789 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %92), !dbg !178, !noalias !182
  %94 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !187, !noalias !182
  %95 = fptrunc float %mul.i.i794 to half, !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %94), !dbg !187, !noalias !182
  %96 = insertelement <4 x half> poison, half %89, i64 0, !dbg !189
  %97 = insertelement <4 x half> %96, half %91, i64 1, !dbg !189
  %98 = insertelement <4 x half> %97, half %93, i64 2, !dbg !189
  %99 = insertelement <4 x half> %98, half %95, i64 3, !dbg !189
  %sub.1 = fsub contract float %condval.0.1880, %83, !dbg !142
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
  %cond.i.i779.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i.1 = fadd contract float %add286.1, %cond.i.i779.1, !dbg !154
  %100 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !154
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %100, !dbg !154
  %cmp.i.i780.1 = fcmp contract olt float %add290.1, -1.260000e+02, !dbg !157
  %cond.i.i781.1 = select contract i1 %cmp.i.i780.1, float 6.400000e+01, float 0.000000e+00, !dbg !157
  %add.i.i782.1 = fadd contract float %add290.1, %cond.i.i781.1, !dbg !157
  %101 = tail call contract float @llvm.exp2.f32(float %add.i.i782.1), !dbg !157
  %cond2.i.i783.1 = select contract i1 %cmp.i.i780.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !157
  %mul.i.i784.1 = fmul contract float %cond2.i.i783.1, %101, !dbg !157
  %cmp.i.i785.1 = fcmp contract olt float %add294.1, -1.260000e+02, !dbg !159
  %cond.i.i786.1 = select contract i1 %cmp.i.i785.1, float 6.400000e+01, float 0.000000e+00, !dbg !159
  %add.i.i787.1 = fadd contract float %add294.1, %cond.i.i786.1, !dbg !159
  %102 = tail call contract float @llvm.exp2.f32(float %add.i.i787.1), !dbg !159
  %cond2.i.i788.1 = select contract i1 %cmp.i.i785.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !159
  %mul.i.i789.1 = fmul contract float %cond2.i.i788.1, %102, !dbg !159
  %cmp.i.i790.1 = fcmp contract olt float %add298.1, -1.260000e+02, !dbg !161
  %cond.i.i791.1 = select contract i1 %cmp.i.i790.1, float 6.400000e+01, float 0.000000e+00, !dbg !161
  %add.i.i792.1 = fadd contract float %add298.1, %cond.i.i791.1, !dbg !161
  %103 = tail call contract float @llvm.exp2.f32(float %add.i.i792.1), !dbg !161
  %cond2.i.i793.1 = select contract i1 %cmp.i.i790.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !161
  %mul.i.i794.1 = fmul contract float %cond2.i.i793.1, %103, !dbg !161
  %104 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !163
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !163, !noalias !171
  %105 = fptrunc float %mul.i.i.1 to half, !dbg !163
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %104), !dbg !163, !noalias !171
  %106 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !176, !noalias !171
  %107 = fptrunc float %mul.i.i784.1 to half, !dbg !176
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %106), !dbg !176, !noalias !171
  %108 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !178, !noalias !182
  %109 = fptrunc float %mul.i.i789.1 to half, !dbg !178
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %108), !dbg !178, !noalias !182
  %110 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !187
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !187, !noalias !182
  %111 = fptrunc float %mul.i.i794.1 to half, !dbg !187
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
  %xor.i.i796 = xor i32 %118, 32, !dbg !202
  %119 = and i32 %118, -64, !dbg !203
  %and.i.i797 = add nsw i32 %119, 64, !dbg !203
  %cmp.not.i.i798 = icmp slt i32 %xor.i.i796, %and.i.i797, !dbg !204
  %cond.i.i799 = select i1 %cmp.not.i.i798, i32 %xor.i.i796, i32 %118, !dbg !205
  %shl.i.i800 = shl i32 %cond.i.i799, 2, !dbg !206
  %120 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i800, i32 %116), !dbg !207
  %121 = bitcast i32 %120 to float, !dbg !208
  %add344 = fadd contract float %add336.7, %121, !dbg !209
  %122 = bitcast float %add344 to i32, !dbg !210
  %123 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !212
  %124 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %123) #11, !dbg !215
  %xor.i.i801 = xor i32 %124, 16, !dbg !216
  %125 = and i32 %124, -64, !dbg !217
  %and.i.i802 = add nsw i32 %125, 64, !dbg !217
  %cmp.not.i.i803 = icmp slt i32 %xor.i.i801, %and.i.i802, !dbg !218
  %cond.i.i804 = select i1 %cmp.not.i.i803, i32 %xor.i.i801, i32 %124, !dbg !219
  %shl.i.i805 = shl i32 %cond.i.i804, 2, !dbg !220
  %126 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i805, i32 %122), !dbg !221
  %127 = bitcast i32 %126 to float, !dbg !222
  fence syncscope("warp") release, !dbg !223
  tail call void @llvm.mxc.barrier.warp(), !dbg !226
  fence syncscope("warp") acquire, !dbg !227
  %mul365 = shl nuw nsw i64 %conv, 17
  %128 = shl nuw nsw i32 %3, 5
  %129 = and i32 %128, 32512
  %mul372 = zext nneg i32 %129 to i64
  %add368 = or disjoint i64 %mul365, %mul372
  %130 = and i32 %mul20, 56
  %mul386 = zext nneg i32 %130 to i64
  %invariant.gep842 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %mul386
  %mul420 = and i32 %128, 224
  %shr424 = lshr i32 %3, 3
  %xor428 = xor i32 %shr424, %and31
  %131 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep842, i64 %add368, !dbg !228
  %132 = getelementptr inbounds i8, ptr addrspace(4) %131, i64 %.idx, !dbg !228
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %132, align 16, !dbg !229
  %v_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 2, !dbg !229
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4, !dbg !229
  %v_fetch.sroa.14.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 6, !dbg !229
  %v_fetch.sroa.18.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 8, !dbg !229
  %v_fetch.sroa.22.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx, align 8, !dbg !229
  %v_fetch.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 10, !dbg !229
  %v_fetch.sroa.26.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 12, !dbg !229
  %v_fetch.sroa.30.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.34.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 14, !dbg !229
  %v_fetch.sroa.34.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx, align 2, !dbg !229, !tbaa !30
  %gep843.1 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 256, !dbg !228
  %v_fetch.sroa.38.16.copyload = load i16, ptr addrspace(4) %gep843.1, align 16, !dbg !229
  %v_fetch.sroa.46.16.gep843.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 258, !dbg !229
  %v_fetch.sroa.46.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep843.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.50.16.gep843.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 260, !dbg !229
  %v_fetch.sroa.50.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep843.1.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.54.16.gep843.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 262, !dbg !229
  %v_fetch.sroa.54.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep843.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.58.16.gep843.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 264, !dbg !229
  %v_fetch.sroa.58.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep843.1.sroa_idx, align 8, !dbg !229
  %v_fetch.sroa.62.16.gep843.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 266, !dbg !229
  %v_fetch.sroa.62.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep843.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.66.16.gep843.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 268, !dbg !229
  %v_fetch.sroa.66.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep843.1.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.70.16.gep843.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 270, !dbg !229
  %v_fetch.sroa.70.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep843.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %133 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul420, !dbg !230
  %add.ptr433.idx = shl nuw nsw i32 %xor428, 2, !dbg !230
  %add.ptr433 = getelementptr inbounds i8, ptr addrspace(3) %133, i32 %add.ptr433.idx, !dbg !230
  %v_column.sroa.66.0.insert.ext = zext i16 %v_fetch.sroa.38.16.copyload to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift = shl nuw i32 %v_column.sroa.66.0.insert.ext, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.66.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr433, align 4, !dbg !231, !tbaa !30
  %134 = or disjoint i32 %mul420, 256, !dbg !232
  %135 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %134, !dbg !230
  %xor429.1 = shl nuw nsw i32 %xor428, 2, !dbg !230
  %add.ptr433.idx.1 = xor i32 %xor429.1, 4, !dbg !230
  %add.ptr433.1 = getelementptr inbounds i8, ptr addrspace(3) %135, i32 %add.ptr433.idx.1, !dbg !230
  %v_column.sroa.66.0.insert.ext1239 = zext i16 %v_fetch.sroa.46.16.copyload to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1240 = shl nuw i32 %v_column.sroa.66.0.insert.ext1239, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1115 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1117 = or disjoint i32 %v_column.sroa.66.0.insert.shift1240, %v_column.sroa.0.0.insert.ext1115, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1117, ptr addrspace(3) %add.ptr433.1, align 4, !dbg !231, !tbaa !30
  %136 = or disjoint i32 %mul420, 512, !dbg !232
  %137 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %136, !dbg !230
  %xor429.2 = shl nuw nsw i32 %xor428, 2, !dbg !230
  %add.ptr433.idx.2 = xor i32 %xor429.2, 8, !dbg !230
  %add.ptr433.2 = getelementptr inbounds i8, ptr addrspace(3) %137, i32 %add.ptr433.idx.2, !dbg !230
  %v_column.sroa.66.0.insert.ext1244 = zext i16 %v_fetch.sroa.50.16.copyload to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1245 = shl nuw i32 %v_column.sroa.66.0.insert.ext1244, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1119 = zext i16 %v_fetch.sroa.14.0.copyload to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1121 = or disjoint i32 %v_column.sroa.66.0.insert.shift1245, %v_column.sroa.0.0.insert.ext1119, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1121, ptr addrspace(3) %add.ptr433.2, align 4, !dbg !231, !tbaa !30
  %138 = or disjoint i32 %mul420, 768, !dbg !232
  %139 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %138, !dbg !230
  %xor429.3 = shl nuw nsw i32 %xor428, 2, !dbg !230
  %add.ptr433.idx.3 = xor i32 %xor429.3, 12, !dbg !230
  %add.ptr433.3 = getelementptr inbounds i8, ptr addrspace(3) %139, i32 %add.ptr433.idx.3, !dbg !230
  %v_column.sroa.66.0.insert.ext1249 = zext i16 %v_fetch.sroa.54.16.copyload to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1250 = shl nuw i32 %v_column.sroa.66.0.insert.ext1249, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1123 = zext i16 %v_fetch.sroa.18.0.copyload to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1125 = or disjoint i32 %v_column.sroa.66.0.insert.shift1250, %v_column.sroa.0.0.insert.ext1123, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1125, ptr addrspace(3) %add.ptr433.3, align 4, !dbg !231, !tbaa !30
  %140 = or disjoint i32 %mul420, 1024, !dbg !232
  %141 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %140, !dbg !230
  %xor429.4 = shl nuw nsw i32 %xor428, 2, !dbg !230
  %add.ptr433.idx.4 = xor i32 %xor429.4, 16, !dbg !230
  %add.ptr433.4 = getelementptr inbounds i8, ptr addrspace(3) %141, i32 %add.ptr433.idx.4, !dbg !230
  %v_column.sroa.66.0.insert.ext1254 = zext i16 %v_fetch.sroa.58.16.copyload to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1255 = shl nuw i32 %v_column.sroa.66.0.insert.ext1254, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1127 = zext i16 %v_fetch.sroa.22.0.copyload to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1129 = or disjoint i32 %v_column.sroa.66.0.insert.shift1255, %v_column.sroa.0.0.insert.ext1127, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1129, ptr addrspace(3) %add.ptr433.4, align 4, !dbg !231, !tbaa !30
  %142 = or disjoint i32 %mul420, 1280, !dbg !232
  %143 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %142, !dbg !230
  %xor429.5 = shl nuw nsw i32 %xor428, 2, !dbg !230
  %add.ptr433.idx.5 = xor i32 %xor429.5, 20, !dbg !230
  %add.ptr433.5 = getelementptr inbounds i8, ptr addrspace(3) %143, i32 %add.ptr433.idx.5, !dbg !230
  %v_column.sroa.66.0.insert.ext1259 = zext i16 %v_fetch.sroa.62.16.copyload to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1260 = shl nuw i32 %v_column.sroa.66.0.insert.ext1259, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1131 = zext i16 %v_fetch.sroa.26.0.copyload to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1133 = or disjoint i32 %v_column.sroa.66.0.insert.shift1260, %v_column.sroa.0.0.insert.ext1131, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1133, ptr addrspace(3) %add.ptr433.5, align 4, !dbg !231, !tbaa !30
  %144 = or disjoint i32 %mul420, 1536, !dbg !232
  %145 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %144, !dbg !230
  %xor429.6 = shl nuw nsw i32 %xor428, 2, !dbg !230
  %add.ptr433.idx.6 = xor i32 %xor429.6, 24, !dbg !230
  %add.ptr433.6 = getelementptr inbounds i8, ptr addrspace(3) %145, i32 %add.ptr433.idx.6, !dbg !230
  %v_column.sroa.66.0.insert.ext1264 = zext i16 %v_fetch.sroa.66.16.copyload to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1265 = shl nuw i32 %v_column.sroa.66.0.insert.ext1264, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1135 = zext i16 %v_fetch.sroa.30.0.copyload to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1137 = or disjoint i32 %v_column.sroa.66.0.insert.shift1265, %v_column.sroa.0.0.insert.ext1135, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1137, ptr addrspace(3) %add.ptr433.6, align 4, !dbg !231, !tbaa !30
  %146 = or disjoint i32 %mul420, 1792, !dbg !232
  %147 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %146, !dbg !230
  %xor429.7 = shl nuw nsw i32 %xor428, 2, !dbg !230
  %add.ptr433.idx.7 = xor i32 %xor429.7, 28, !dbg !230
  %add.ptr433.7 = getelementptr inbounds i8, ptr addrspace(3) %147, i32 %add.ptr433.idx.7, !dbg !230
  %v_column.sroa.66.0.insert.ext1269 = zext i16 %v_fetch.sroa.70.16.copyload to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1270 = shl nuw i32 %v_column.sroa.66.0.insert.ext1269, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1139 = zext i16 %v_fetch.sroa.34.0.copyload to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1141 = or disjoint i32 %v_column.sroa.66.0.insert.shift1270, %v_column.sroa.0.0.insert.ext1139, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1141, ptr addrspace(3) %add.ptr433.7, align 4, !dbg !231, !tbaa !30
  %148 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 128, !dbg !228
  %v_fetch.sroa.0.0.copyload1396 = load i16, ptr addrspace(4) %148, align 16, !dbg !229
  %v_fetch.sroa.10.0..sroa_idx1399 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 130, !dbg !229
  %v_fetch.sroa.10.0.copyload1400 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1399, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1408 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 132, !dbg !229
  %v_fetch.sroa.14.0.copyload1409 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1408, align 4, !dbg !229
  %v_fetch.sroa.18.0..sroa_idx1417 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 134, !dbg !229
  %v_fetch.sroa.18.0.copyload1418 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1417, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1426 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 136, !dbg !229
  %v_fetch.sroa.22.0.copyload1427 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1426, align 8, !dbg !229
  %v_fetch.sroa.26.0..sroa_idx1435 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 138, !dbg !229
  %v_fetch.sroa.26.0.copyload1436 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1435, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1444 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 140, !dbg !229
  %v_fetch.sroa.30.0.copyload1445 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1444, align 4, !dbg !229
  %v_fetch.sroa.34.0..sroa_idx1453 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 142, !dbg !229
  %v_fetch.sroa.34.0.copyload1454 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1453, align 2, !dbg !229, !tbaa !30
  %gep843.1.1 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 384, !dbg !228
  %v_fetch.sroa.38.16.copyload1465 = load i16, ptr addrspace(4) %gep843.1.1, align 16, !dbg !229
  %v_fetch.sroa.46.16.gep843.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 386, !dbg !229
  %v_fetch.sroa.46.16.copyload1468 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep843.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.50.16.gep843.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 388, !dbg !229
  %v_fetch.sroa.50.16.copyload1474 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep843.1.1.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.54.16.gep843.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 390, !dbg !229
  %v_fetch.sroa.54.16.copyload1480 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep843.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.58.16.gep843.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 392, !dbg !229
  %v_fetch.sroa.58.16.copyload1486 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep843.1.1.sroa_idx, align 8, !dbg !229
  %v_fetch.sroa.62.16.gep843.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 394, !dbg !229
  %v_fetch.sroa.62.16.copyload1492 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep843.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.66.16.gep843.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 396, !dbg !229
  %v_fetch.sroa.66.16.copyload1498 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep843.1.1.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.70.16.gep843.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 398, !dbg !229
  %v_fetch.sroa.70.16.copyload1504 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep843.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %149 = or disjoint i32 %mul420, 2048, !dbg !232
  %150 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %149, !dbg !230
  %add.ptr433.1907 = getelementptr inbounds i8, ptr addrspace(3) %150, i32 %add.ptr433.idx, !dbg !230
  %v_column.sroa.66.0.insert.ext1274 = zext i16 %v_fetch.sroa.38.16.copyload1465 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1275 = shl nuw i32 %v_column.sroa.66.0.insert.ext1274, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1143 = zext i16 %v_fetch.sroa.0.0.copyload1396 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1145 = or disjoint i32 %v_column.sroa.66.0.insert.shift1275, %v_column.sroa.0.0.insert.ext1143, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1145, ptr addrspace(3) %add.ptr433.1907, align 4, !dbg !231, !tbaa !30
  %151 = or disjoint i32 %mul420, 2304, !dbg !232
  %152 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %151, !dbg !230
  %add.ptr433.1.1 = getelementptr inbounds i8, ptr addrspace(3) %152, i32 %add.ptr433.idx.1, !dbg !230
  %v_column.sroa.66.0.insert.ext1279 = zext i16 %v_fetch.sroa.46.16.copyload1468 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1280 = shl nuw i32 %v_column.sroa.66.0.insert.ext1279, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1147 = zext i16 %v_fetch.sroa.10.0.copyload1400 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1149 = or disjoint i32 %v_column.sroa.66.0.insert.shift1280, %v_column.sroa.0.0.insert.ext1147, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1149, ptr addrspace(3) %add.ptr433.1.1, align 4, !dbg !231, !tbaa !30
  %153 = or disjoint i32 %mul420, 2560, !dbg !232
  %154 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %153, !dbg !230
  %add.ptr433.2.1 = getelementptr inbounds i8, ptr addrspace(3) %154, i32 %add.ptr433.idx.2, !dbg !230
  %v_column.sroa.66.0.insert.ext1284 = zext i16 %v_fetch.sroa.50.16.copyload1474 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1285 = shl nuw i32 %v_column.sroa.66.0.insert.ext1284, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1151 = zext i16 %v_fetch.sroa.14.0.copyload1409 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1153 = or disjoint i32 %v_column.sroa.66.0.insert.shift1285, %v_column.sroa.0.0.insert.ext1151, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1153, ptr addrspace(3) %add.ptr433.2.1, align 4, !dbg !231, !tbaa !30
  %155 = or disjoint i32 %mul420, 2816, !dbg !232
  %156 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %155, !dbg !230
  %add.ptr433.3.1 = getelementptr inbounds i8, ptr addrspace(3) %156, i32 %add.ptr433.idx.3, !dbg !230
  %v_column.sroa.66.0.insert.ext1289 = zext i16 %v_fetch.sroa.54.16.copyload1480 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1290 = shl nuw i32 %v_column.sroa.66.0.insert.ext1289, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1155 = zext i16 %v_fetch.sroa.18.0.copyload1418 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1157 = or disjoint i32 %v_column.sroa.66.0.insert.shift1290, %v_column.sroa.0.0.insert.ext1155, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1157, ptr addrspace(3) %add.ptr433.3.1, align 4, !dbg !231, !tbaa !30
  %157 = or disjoint i32 %mul420, 3072, !dbg !232
  %158 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %157, !dbg !230
  %add.ptr433.4.1 = getelementptr inbounds i8, ptr addrspace(3) %158, i32 %add.ptr433.idx.4, !dbg !230
  %v_column.sroa.66.0.insert.ext1294 = zext i16 %v_fetch.sroa.58.16.copyload1486 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1295 = shl nuw i32 %v_column.sroa.66.0.insert.ext1294, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1159 = zext i16 %v_fetch.sroa.22.0.copyload1427 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1161 = or disjoint i32 %v_column.sroa.66.0.insert.shift1295, %v_column.sroa.0.0.insert.ext1159, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1161, ptr addrspace(3) %add.ptr433.4.1, align 4, !dbg !231, !tbaa !30
  %159 = or disjoint i32 %mul420, 3328, !dbg !232
  %160 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %159, !dbg !230
  %add.ptr433.5.1 = getelementptr inbounds i8, ptr addrspace(3) %160, i32 %add.ptr433.idx.5, !dbg !230
  %v_column.sroa.66.0.insert.ext1299 = zext i16 %v_fetch.sroa.62.16.copyload1492 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1300 = shl nuw i32 %v_column.sroa.66.0.insert.ext1299, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1163 = zext i16 %v_fetch.sroa.26.0.copyload1436 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1165 = or disjoint i32 %v_column.sroa.66.0.insert.shift1300, %v_column.sroa.0.0.insert.ext1163, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1165, ptr addrspace(3) %add.ptr433.5.1, align 4, !dbg !231, !tbaa !30
  %161 = or disjoint i32 %mul420, 3584, !dbg !232
  %162 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %161, !dbg !230
  %add.ptr433.6.1 = getelementptr inbounds i8, ptr addrspace(3) %162, i32 %add.ptr433.idx.6, !dbg !230
  %v_column.sroa.66.0.insert.ext1304 = zext i16 %v_fetch.sroa.66.16.copyload1498 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1305 = shl nuw i32 %v_column.sroa.66.0.insert.ext1304, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1167 = zext i16 %v_fetch.sroa.30.0.copyload1445 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1169 = or disjoint i32 %v_column.sroa.66.0.insert.shift1305, %v_column.sroa.0.0.insert.ext1167, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1169, ptr addrspace(3) %add.ptr433.6.1, align 4, !dbg !231, !tbaa !30
  %163 = or disjoint i32 %mul420, 3840, !dbg !232
  %164 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %163, !dbg !230
  %add.ptr433.7.1 = getelementptr inbounds i8, ptr addrspace(3) %164, i32 %add.ptr433.idx.7, !dbg !230
  %v_column.sroa.66.0.insert.ext1309 = zext i16 %v_fetch.sroa.70.16.copyload1504 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1310 = shl nuw i32 %v_column.sroa.66.0.insert.ext1309, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1171 = zext i16 %v_fetch.sroa.34.0.copyload1454 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1173 = or disjoint i32 %v_column.sroa.66.0.insert.shift1310, %v_column.sroa.0.0.insert.ext1171, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1173, ptr addrspace(3) %add.ptr433.7.1, align 4, !dbg !231, !tbaa !30
  %narrow = add nuw nsw i32 %shr424, 8
  %xor428.1 = xor i32 %narrow, %and31
  %165 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4096, !dbg !228
  %v_fetch.sroa.0.0.copyload1397 = load i16, ptr addrspace(4) %165, align 16, !dbg !229
  %v_fetch.sroa.10.0..sroa_idx1401 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4098, !dbg !229
  %v_fetch.sroa.10.0.copyload1402 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1401, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1410 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4100, !dbg !229
  %v_fetch.sroa.14.0.copyload1411 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1410, align 4, !dbg !229
  %v_fetch.sroa.18.0..sroa_idx1419 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4102, !dbg !229
  %v_fetch.sroa.18.0.copyload1420 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1419, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1428 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4104, !dbg !229
  %v_fetch.sroa.22.0.copyload1429 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1428, align 8, !dbg !229
  %v_fetch.sroa.26.0..sroa_idx1437 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4106, !dbg !229
  %v_fetch.sroa.26.0.copyload1438 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1437, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1446 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4108, !dbg !229
  %v_fetch.sroa.30.0.copyload1447 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1446, align 4, !dbg !229
  %v_fetch.sroa.34.0..sroa_idx1455 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4110, !dbg !229
  %v_fetch.sroa.34.0.copyload1456 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1455, align 2, !dbg !229, !tbaa !30
  %gep843.1.1914 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4352, !dbg !228
  %v_fetch.sroa.38.16.copyload1466 = load i16, ptr addrspace(4) %gep843.1.1914, align 16, !dbg !229
  %v_fetch.sroa.46.16.gep843.1.1914.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4354, !dbg !229
  %v_fetch.sroa.46.16.copyload1469 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep843.1.1914.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.50.16.gep843.1.1914.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4356, !dbg !229
  %v_fetch.sroa.50.16.copyload1475 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep843.1.1914.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.54.16.gep843.1.1914.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4358, !dbg !229
  %v_fetch.sroa.54.16.copyload1481 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep843.1.1914.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.58.16.gep843.1.1914.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4360, !dbg !229
  %v_fetch.sroa.58.16.copyload1487 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep843.1.1914.sroa_idx, align 8, !dbg !229
  %v_fetch.sroa.62.16.gep843.1.1914.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4362, !dbg !229
  %v_fetch.sroa.62.16.copyload1493 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep843.1.1914.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.66.16.gep843.1.1914.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4364, !dbg !229
  %v_fetch.sroa.66.16.copyload1499 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep843.1.1914.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.70.16.gep843.1.1914.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4366, !dbg !229
  %v_fetch.sroa.70.16.copyload1505 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep843.1.1914.sroa_idx, align 2, !dbg !229, !tbaa !30
  %add.ptr433.idx.1920 = shl nuw nsw i32 %xor428.1, 2, !dbg !230
  %add.ptr433.1921 = getelementptr inbounds i8, ptr addrspace(3) %133, i32 %add.ptr433.idx.1920, !dbg !230
  %v_column.sroa.66.0.insert.ext1314 = zext i16 %v_fetch.sroa.38.16.copyload1466 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1315 = shl nuw i32 %v_column.sroa.66.0.insert.ext1314, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1175 = zext i16 %v_fetch.sroa.0.0.copyload1397 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1177 = or disjoint i32 %v_column.sroa.66.0.insert.shift1315, %v_column.sroa.0.0.insert.ext1175, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1177, ptr addrspace(3) %add.ptr433.1921, align 4, !dbg !231, !tbaa !30
  %xor429.1.1926 = shl nuw nsw i32 %xor428.1, 2, !dbg !230
  %add.ptr433.idx.1.1927 = xor i32 %xor429.1.1926, 4, !dbg !230
  %add.ptr433.1.1928 = getelementptr inbounds i8, ptr addrspace(3) %135, i32 %add.ptr433.idx.1.1927, !dbg !230
  %v_column.sroa.66.0.insert.ext1319 = zext i16 %v_fetch.sroa.46.16.copyload1469 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1320 = shl nuw i32 %v_column.sroa.66.0.insert.ext1319, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1179 = zext i16 %v_fetch.sroa.10.0.copyload1402 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1181 = or disjoint i32 %v_column.sroa.66.0.insert.shift1320, %v_column.sroa.0.0.insert.ext1179, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1181, ptr addrspace(3) %add.ptr433.1.1928, align 4, !dbg !231, !tbaa !30
  %xor429.2.1933 = shl nuw nsw i32 %xor428.1, 2, !dbg !230
  %add.ptr433.idx.2.1934 = xor i32 %xor429.2.1933, 8, !dbg !230
  %add.ptr433.2.1935 = getelementptr inbounds i8, ptr addrspace(3) %137, i32 %add.ptr433.idx.2.1934, !dbg !230
  %v_column.sroa.66.0.insert.ext1324 = zext i16 %v_fetch.sroa.50.16.copyload1475 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1325 = shl nuw i32 %v_column.sroa.66.0.insert.ext1324, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1183 = zext i16 %v_fetch.sroa.14.0.copyload1411 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1185 = or disjoint i32 %v_column.sroa.66.0.insert.shift1325, %v_column.sroa.0.0.insert.ext1183, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1185, ptr addrspace(3) %add.ptr433.2.1935, align 4, !dbg !231, !tbaa !30
  %xor429.3.1940 = shl nuw nsw i32 %xor428.1, 2, !dbg !230
  %add.ptr433.idx.3.1941 = xor i32 %xor429.3.1940, 12, !dbg !230
  %add.ptr433.3.1942 = getelementptr inbounds i8, ptr addrspace(3) %139, i32 %add.ptr433.idx.3.1941, !dbg !230
  %v_column.sroa.66.0.insert.ext1329 = zext i16 %v_fetch.sroa.54.16.copyload1481 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1330 = shl nuw i32 %v_column.sroa.66.0.insert.ext1329, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1187 = zext i16 %v_fetch.sroa.18.0.copyload1420 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1189 = or disjoint i32 %v_column.sroa.66.0.insert.shift1330, %v_column.sroa.0.0.insert.ext1187, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1189, ptr addrspace(3) %add.ptr433.3.1942, align 4, !dbg !231, !tbaa !30
  %xor429.4.1947 = shl nuw nsw i32 %xor428.1, 2, !dbg !230
  %add.ptr433.idx.4.1948 = xor i32 %xor429.4.1947, 16, !dbg !230
  %add.ptr433.4.1949 = getelementptr inbounds i8, ptr addrspace(3) %141, i32 %add.ptr433.idx.4.1948, !dbg !230
  %v_column.sroa.66.0.insert.ext1334 = zext i16 %v_fetch.sroa.58.16.copyload1487 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1335 = shl nuw i32 %v_column.sroa.66.0.insert.ext1334, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1191 = zext i16 %v_fetch.sroa.22.0.copyload1429 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1193 = or disjoint i32 %v_column.sroa.66.0.insert.shift1335, %v_column.sroa.0.0.insert.ext1191, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1193, ptr addrspace(3) %add.ptr433.4.1949, align 4, !dbg !231, !tbaa !30
  %xor429.5.1954 = shl nuw nsw i32 %xor428.1, 2, !dbg !230
  %add.ptr433.idx.5.1955 = xor i32 %xor429.5.1954, 20, !dbg !230
  %add.ptr433.5.1956 = getelementptr inbounds i8, ptr addrspace(3) %143, i32 %add.ptr433.idx.5.1955, !dbg !230
  %v_column.sroa.66.0.insert.ext1339 = zext i16 %v_fetch.sroa.62.16.copyload1493 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1340 = shl nuw i32 %v_column.sroa.66.0.insert.ext1339, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1195 = zext i16 %v_fetch.sroa.26.0.copyload1438 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1197 = or disjoint i32 %v_column.sroa.66.0.insert.shift1340, %v_column.sroa.0.0.insert.ext1195, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1197, ptr addrspace(3) %add.ptr433.5.1956, align 4, !dbg !231, !tbaa !30
  %xor429.6.1961 = shl nuw nsw i32 %xor428.1, 2, !dbg !230
  %add.ptr433.idx.6.1962 = xor i32 %xor429.6.1961, 24, !dbg !230
  %add.ptr433.6.1963 = getelementptr inbounds i8, ptr addrspace(3) %145, i32 %add.ptr433.idx.6.1962, !dbg !230
  %v_column.sroa.66.0.insert.ext1344 = zext i16 %v_fetch.sroa.66.16.copyload1499 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1345 = shl nuw i32 %v_column.sroa.66.0.insert.ext1344, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1199 = zext i16 %v_fetch.sroa.30.0.copyload1447 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1201 = or disjoint i32 %v_column.sroa.66.0.insert.shift1345, %v_column.sroa.0.0.insert.ext1199, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1201, ptr addrspace(3) %add.ptr433.6.1963, align 4, !dbg !231, !tbaa !30
  %xor429.7.1968 = shl nuw nsw i32 %xor428.1, 2, !dbg !230
  %add.ptr433.idx.7.1969 = xor i32 %xor429.7.1968, 28, !dbg !230
  %add.ptr433.7.1970 = getelementptr inbounds i8, ptr addrspace(3) %147, i32 %add.ptr433.idx.7.1969, !dbg !230
  %v_column.sroa.66.0.insert.ext1349 = zext i16 %v_fetch.sroa.70.16.copyload1505 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1350 = shl nuw i32 %v_column.sroa.66.0.insert.ext1349, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1203 = zext i16 %v_fetch.sroa.34.0.copyload1456 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1205 = or disjoint i32 %v_column.sroa.66.0.insert.shift1350, %v_column.sroa.0.0.insert.ext1203, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1205, ptr addrspace(3) %add.ptr433.7.1970, align 4, !dbg !231, !tbaa !30
  %166 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4224, !dbg !228
  %v_fetch.sroa.0.0.copyload1398 = load i16, ptr addrspace(4) %166, align 16, !dbg !229
  %v_fetch.sroa.10.0..sroa_idx1403 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4226, !dbg !229
  %v_fetch.sroa.10.0.copyload1404 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1403, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1412 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4228, !dbg !229
  %v_fetch.sroa.14.0.copyload1413 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1412, align 4, !dbg !229
  %v_fetch.sroa.18.0..sroa_idx1421 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4230, !dbg !229
  %v_fetch.sroa.18.0.copyload1422 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1421, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1430 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4232, !dbg !229
  %v_fetch.sroa.22.0.copyload1431 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1430, align 8, !dbg !229
  %v_fetch.sroa.26.0..sroa_idx1439 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4234, !dbg !229
  %v_fetch.sroa.26.0.copyload1440 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1439, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1448 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4236, !dbg !229
  %v_fetch.sroa.30.0.copyload1449 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1448, align 4, !dbg !229
  %v_fetch.sroa.34.0..sroa_idx1457 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4238, !dbg !229
  %v_fetch.sroa.34.0.copyload1458 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1457, align 2, !dbg !229, !tbaa !30
  %gep843.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4480, !dbg !228
  %v_fetch.sroa.38.16.copyload1467 = load i16, ptr addrspace(4) %gep843.1.1.1, align 16, !dbg !229
  %v_fetch.sroa.46.16.gep843.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4482, !dbg !229
  %v_fetch.sroa.46.16.copyload1470 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep843.1.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.50.16.gep843.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4484, !dbg !229
  %v_fetch.sroa.50.16.copyload1476 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep843.1.1.1.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.54.16.gep843.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4486, !dbg !229
  %v_fetch.sroa.54.16.copyload1482 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep843.1.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.58.16.gep843.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4488, !dbg !229
  %v_fetch.sroa.58.16.copyload1488 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep843.1.1.1.sroa_idx, align 8, !dbg !229
  %v_fetch.sroa.62.16.gep843.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4490, !dbg !229
  %v_fetch.sroa.62.16.copyload1494 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep843.1.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.66.16.gep843.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4492, !dbg !229
  %v_fetch.sroa.66.16.copyload1500 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep843.1.1.1.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.70.16.gep843.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %132, i64 4494, !dbg !229
  %v_fetch.sroa.70.16.copyload1506 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep843.1.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %add.ptr433.1907.1 = getelementptr inbounds i8, ptr addrspace(3) %150, i32 %add.ptr433.idx.1920, !dbg !230
  %v_column.sroa.66.0.insert.ext1354 = zext i16 %v_fetch.sroa.38.16.copyload1467 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1355 = shl nuw i32 %v_column.sroa.66.0.insert.ext1354, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1207 = zext i16 %v_fetch.sroa.0.0.copyload1398 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1209 = or disjoint i32 %v_column.sroa.66.0.insert.shift1355, %v_column.sroa.0.0.insert.ext1207, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1209, ptr addrspace(3) %add.ptr433.1907.1, align 4, !dbg !231, !tbaa !30
  %add.ptr433.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %152, i32 %add.ptr433.idx.1.1927, !dbg !230
  %v_column.sroa.66.0.insert.ext1359 = zext i16 %v_fetch.sroa.46.16.copyload1470 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1360 = shl nuw i32 %v_column.sroa.66.0.insert.ext1359, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1211 = zext i16 %v_fetch.sroa.10.0.copyload1404 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1213 = or disjoint i32 %v_column.sroa.66.0.insert.shift1360, %v_column.sroa.0.0.insert.ext1211, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1213, ptr addrspace(3) %add.ptr433.1.1.1, align 4, !dbg !231, !tbaa !30
  %add.ptr433.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %154, i32 %add.ptr433.idx.2.1934, !dbg !230
  %v_column.sroa.66.0.insert.ext1364 = zext i16 %v_fetch.sroa.50.16.copyload1476 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1365 = shl nuw i32 %v_column.sroa.66.0.insert.ext1364, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1215 = zext i16 %v_fetch.sroa.14.0.copyload1413 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1217 = or disjoint i32 %v_column.sroa.66.0.insert.shift1365, %v_column.sroa.0.0.insert.ext1215, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1217, ptr addrspace(3) %add.ptr433.2.1.1, align 4, !dbg !231, !tbaa !30
  %add.ptr433.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %156, i32 %add.ptr433.idx.3.1941, !dbg !230
  %v_column.sroa.66.0.insert.ext1369 = zext i16 %v_fetch.sroa.54.16.copyload1482 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1370 = shl nuw i32 %v_column.sroa.66.0.insert.ext1369, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1219 = zext i16 %v_fetch.sroa.18.0.copyload1422 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1221 = or disjoint i32 %v_column.sroa.66.0.insert.shift1370, %v_column.sroa.0.0.insert.ext1219, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1221, ptr addrspace(3) %add.ptr433.3.1.1, align 4, !dbg !231, !tbaa !30
  %add.ptr433.4.1.1 = getelementptr inbounds i8, ptr addrspace(3) %158, i32 %add.ptr433.idx.4.1948, !dbg !230
  %v_column.sroa.66.0.insert.ext1374 = zext i16 %v_fetch.sroa.58.16.copyload1488 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1375 = shl nuw i32 %v_column.sroa.66.0.insert.ext1374, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1223 = zext i16 %v_fetch.sroa.22.0.copyload1431 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1225 = or disjoint i32 %v_column.sroa.66.0.insert.shift1375, %v_column.sroa.0.0.insert.ext1223, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1225, ptr addrspace(3) %add.ptr433.4.1.1, align 4, !dbg !231, !tbaa !30
  %add.ptr433.5.1.1 = getelementptr inbounds i8, ptr addrspace(3) %160, i32 %add.ptr433.idx.5.1955, !dbg !230
  %v_column.sroa.66.0.insert.ext1379 = zext i16 %v_fetch.sroa.62.16.copyload1494 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1380 = shl nuw i32 %v_column.sroa.66.0.insert.ext1379, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1227 = zext i16 %v_fetch.sroa.26.0.copyload1440 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1229 = or disjoint i32 %v_column.sroa.66.0.insert.shift1380, %v_column.sroa.0.0.insert.ext1227, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1229, ptr addrspace(3) %add.ptr433.5.1.1, align 4, !dbg !231, !tbaa !30
  %add.ptr433.6.1.1 = getelementptr inbounds i8, ptr addrspace(3) %162, i32 %add.ptr433.idx.6.1962, !dbg !230
  %v_column.sroa.66.0.insert.ext1384 = zext i16 %v_fetch.sroa.66.16.copyload1500 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1385 = shl nuw i32 %v_column.sroa.66.0.insert.ext1384, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1231 = zext i16 %v_fetch.sroa.30.0.copyload1449 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1233 = or disjoint i32 %v_column.sroa.66.0.insert.shift1385, %v_column.sroa.0.0.insert.ext1231, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1233, ptr addrspace(3) %add.ptr433.6.1.1, align 4, !dbg !231, !tbaa !30
  %add.ptr433.7.1.1 = getelementptr inbounds i8, ptr addrspace(3) %164, i32 %add.ptr433.idx.7.1969, !dbg !230
  %v_column.sroa.66.0.insert.ext1389 = zext i16 %v_fetch.sroa.70.16.copyload1506 to i32, !dbg !231
  %v_column.sroa.66.0.insert.shift1390 = shl nuw i32 %v_column.sroa.66.0.insert.ext1389, 16, !dbg !231
  %v_column.sroa.0.0.insert.ext1235 = zext i16 %v_fetch.sroa.34.0.copyload1458 to i32, !dbg !231
  %v_column.sroa.0.0.insert.insert1237 = or disjoint i32 %v_column.sroa.66.0.insert.shift1390, %v_column.sroa.0.0.insert.ext1235, !dbg !231
  store i32 %v_column.sroa.0.0.insert.insert1237, ptr addrspace(3) %add.ptr433.7.1.1, align 4, !dbg !231, !tbaa !30
  fence syncscope("warp") release, !dbg !233
  tail call void @llvm.mxc.barrier.warp(), !dbg !236
  fence syncscope("warp") acquire, !dbg !237
  %and474 = shl nuw nsw i32 %3, 8
  %mul475 = and i32 %and474, 1792
  %mul482 = and i32 %5, 32
  %mul487 = and i32 %shr424, 126
  %shr493 = and i32 %shr424, 1
  %add483 = or disjoint i32 %mul475, %mul482
  %xor495 = xor i32 %shr493, %and31
  %167 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add483
  %xor498 = xor i32 %xor495, %mul487, !dbg !238
  %add.ptr502.idx = shl nuw nsw i32 %xor498, 2, !dbg !239
  %add.ptr502 = getelementptr inbounds i8, ptr addrspace(3) %167, i32 %add.ptr502.idx, !dbg !239
  %168 = load i32, ptr addrspace(3) %add.ptr502, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.0.0.vec.insert = insertelement <2 x i32> poison, i32 %168, i64 0, !dbg !240
  %add489.1 = or i32 %shr424, 1, !dbg !241
  %xor498.1 = xor i32 %xor495, %add489.1, !dbg !238
  %add.ptr502.idx.1 = shl nuw nsw i32 %xor498.1, 2, !dbg !239
  %add.ptr502.1 = getelementptr inbounds i8, ptr addrspace(3) %167, i32 %add.ptr502.idx.1, !dbg !239
  %169 = load i32, ptr addrspace(3) %add.ptr502.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.0.4.vec.insert = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert, i32 %169, i64 1, !dbg !240
  %add478.1 = or disjoint i32 %mul475, %mul482
  %add483.1 = or disjoint i32 %add478.1, 64
  %add494.1 = or disjoint i32 %shr493, 2
  %xor495.1 = xor i32 %add494.1, %and31
  %170 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add483.1
  %xor498.1972 = xor i32 %xor495.1, %mul487, !dbg !238
  %add.ptr502.idx.1973 = shl nuw nsw i32 %xor498.1972, 2, !dbg !239
  %add.ptr502.1974 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 %add.ptr502.idx.1973, !dbg !239
  %171 = load i32, ptr addrspace(3) %add.ptr502.1974, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.14.8.vec.insert = insertelement <2 x i32> poison, i32 %171, i64 0, !dbg !240
  %xor498.1.1 = xor i32 %xor495.1, %add489.1, !dbg !238
  %add.ptr502.idx.1.1 = shl nuw nsw i32 %xor498.1.1, 2, !dbg !239
  %add.ptr502.1.1 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 %add.ptr502.idx.1.1, !dbg !239
  %172 = load i32, ptr addrspace(3) %add.ptr502.1.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.14.12.vec.insert = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert, i32 %172, i64 1, !dbg !240
  %add478.2 = or disjoint i32 %mul475, %mul482
  %add483.2 = or disjoint i32 %add478.2, 128
  %add494.2 = or disjoint i32 %shr493, 4
  %xor495.2 = xor i32 %add494.2, %and31
  %173 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add483.2
  %xor498.2 = xor i32 %xor495.2, %mul487, !dbg !238
  %add.ptr502.idx.2 = shl nuw nsw i32 %xor498.2, 2, !dbg !239
  %add.ptr502.2 = getelementptr inbounds i8, ptr addrspace(3) %173, i32 %add.ptr502.idx.2, !dbg !239
  %174 = load i32, ptr addrspace(3) %add.ptr502.2, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.26.16.vec.insert = insertelement <2 x i32> poison, i32 %174, i64 0, !dbg !240
  %xor498.1.2 = xor i32 %xor495.2, %add489.1, !dbg !238
  %add.ptr502.idx.1.2 = shl nuw nsw i32 %xor498.1.2, 2, !dbg !239
  %add.ptr502.1.2 = getelementptr inbounds i8, ptr addrspace(3) %173, i32 %add.ptr502.idx.1.2, !dbg !239
  %175 = load i32, ptr addrspace(3) %add.ptr502.1.2, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.26.20.vec.insert = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert, i32 %175, i64 1, !dbg !240
  %add478.3 = or disjoint i32 %mul475, %mul482
  %add483.3 = or disjoint i32 %add478.3, 192
  %add494.3 = or disjoint i32 %shr493, 6
  %xor495.3 = xor i32 %add494.3, %and31
  %176 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add483.3
  %xor498.3 = xor i32 %xor495.3, %mul487, !dbg !238
  %add.ptr502.idx.3 = shl nuw nsw i32 %xor498.3, 2, !dbg !239
  %add.ptr502.3 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 %add.ptr502.idx.3, !dbg !239
  %177 = load i32, ptr addrspace(3) %add.ptr502.3, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.38.24.vec.insert = insertelement <2 x i32> poison, i32 %177, i64 0, !dbg !240
  %xor498.1.3 = xor i32 %xor495.3, %add489.1, !dbg !238
  %add.ptr502.idx.1.3 = shl nuw nsw i32 %xor498.1.3, 2, !dbg !239
  %add.ptr502.1.3 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 %add.ptr502.idx.1.3, !dbg !239
  %178 = load i32, ptr addrspace(3) %add.ptr502.1.3, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.38.28.vec.insert = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert, i32 %178, i64 1, !dbg !240
  %179 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert to <4 x half>, !dbg !242
  %180 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %179, <4 x half> %99, <4 x float> zeroinitializer), !dbg !243
  %181 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert to <4 x half>, !dbg !242
  %182 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %181, <4 x half> %99, <4 x float> zeroinitializer), !dbg !243
  %183 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert to <4 x half>, !dbg !242
  %184 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %183, <4 x half> %99, <4 x float> zeroinitializer), !dbg !243
  %185 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert to <4 x half>, !dbg !242
  %186 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %185, <4 x half> %99, <4 x float> zeroinitializer), !dbg !243
  %add476.1 = or disjoint i32 %mul475, %mul482
  %add483.1977 = or disjoint i32 %add476.1, 2048
  %187 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add483.1977
  %add.ptr502.1981 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 %add.ptr502.idx, !dbg !239
  %188 = load i32, ptr addrspace(3) %add.ptr502.1981, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1055 = insertelement <2 x i32> poison, i32 %188, i64 0, !dbg !240
  %add.ptr502.1.1985 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 %add.ptr502.idx.1, !dbg !239
  %189 = load i32, ptr addrspace(3) %add.ptr502.1.1985, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1061 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1055, i32 %189, i64 1, !dbg !240
  %add478.1.1 = or disjoint i32 %mul475, %mul482
  %add483.1.1 = or disjoint i32 %add478.1.1, 2112
  %190 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add483.1.1
  %add.ptr502.1974.1 = getelementptr inbounds i8, ptr addrspace(3) %190, i32 %add.ptr502.idx.1973, !dbg !239
  %191 = load i32, ptr addrspace(3) %add.ptr502.1974.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1071 = insertelement <2 x i32> poison, i32 %191, i64 0, !dbg !240
  %add.ptr502.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %190, i32 %add.ptr502.idx.1.1, !dbg !239
  %192 = load i32, ptr addrspace(3) %add.ptr502.1.1.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1077 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1071, i32 %192, i64 1, !dbg !240
  %add478.2.1 = or disjoint i32 %mul475, %mul482
  %add483.2.1 = or disjoint i32 %add478.2.1, 2176
  %193 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add483.2.1
  %add.ptr502.2.1 = getelementptr inbounds i8, ptr addrspace(3) %193, i32 %add.ptr502.idx.2, !dbg !239
  %194 = load i32, ptr addrspace(3) %add.ptr502.2.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1087 = insertelement <2 x i32> poison, i32 %194, i64 0, !dbg !240
  %add.ptr502.1.2.1 = getelementptr inbounds i8, ptr addrspace(3) %193, i32 %add.ptr502.idx.1.2, !dbg !239
  %195 = load i32, ptr addrspace(3) %add.ptr502.1.2.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1093 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1087, i32 %195, i64 1, !dbg !240
  %add478.3.1 = or disjoint i32 %mul475, %mul482
  %add483.3.1 = or disjoint i32 %add478.3.1, 2240
  %196 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add483.3.1
  %add.ptr502.3.1 = getelementptr inbounds i8, ptr addrspace(3) %196, i32 %add.ptr502.idx.3, !dbg !239
  %197 = load i32, ptr addrspace(3) %add.ptr502.3.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1103 = insertelement <2 x i32> poison, i32 %197, i64 0, !dbg !240
  %add.ptr502.1.3.1 = getelementptr inbounds i8, ptr addrspace(3) %196, i32 %add.ptr502.idx.1.3, !dbg !239
  %198 = load i32, ptr addrspace(3) %add.ptr502.1.3.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1109 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1103, i32 %198, i64 1, !dbg !240
  %199 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1061 to <4 x half>, !dbg !242
  %200 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %199, <4 x half> %99, <4 x float> zeroinitializer), !dbg !243
  %201 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1077 to <4 x half>, !dbg !242
  %202 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %201, <4 x half> %99, <4 x float> zeroinitializer), !dbg !243
  %203 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1093 to <4 x half>, !dbg !242
  %204 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %203, <4 x half> %99, <4 x float> zeroinitializer), !dbg !243
  %205 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1109 to <4 x half>, !dbg !242
  %206 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %205, <4 x half> %99, <4 x float> zeroinitializer), !dbg !243
  %add488.1 = add nuw nsw i32 %mul487, 8
  %xor498.1992 = xor i32 %xor495, %add488.1, !dbg !238
  %add.ptr502.idx.1993 = shl nuw nsw i32 %xor498.1992, 2, !dbg !239
  %add.ptr502.1994 = getelementptr inbounds i8, ptr addrspace(3) %167, i32 %add.ptr502.idx.1993, !dbg !239
  %207 = load i32, ptr addrspace(3) %add.ptr502.1994, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1057 = insertelement <2 x i32> poison, i32 %207, i64 0, !dbg !240
  %add489.1.1995 = add nuw nsw i32 %mul487, 9, !dbg !241
  %xor498.1.1996 = xor i32 %xor495, %add489.1.1995, !dbg !238
  %add.ptr502.idx.1.1997 = shl nuw nsw i32 %xor498.1.1996, 2, !dbg !239
  %add.ptr502.1.1998 = getelementptr inbounds i8, ptr addrspace(3) %167, i32 %add.ptr502.idx.1.1997, !dbg !239
  %208 = load i32, ptr addrspace(3) %add.ptr502.1.1998, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1063 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1057, i32 %208, i64 1, !dbg !240
  %xor498.1972.11004 = xor i32 %xor495.1, %add488.1, !dbg !238
  %add.ptr502.idx.1973.11005 = shl nuw nsw i32 %xor498.1972.11004, 2, !dbg !239
  %add.ptr502.1974.11006 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 %add.ptr502.idx.1973.11005, !dbg !239
  %209 = load i32, ptr addrspace(3) %add.ptr502.1974.11006, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1073 = insertelement <2 x i32> poison, i32 %209, i64 0, !dbg !240
  %xor498.1.1.11009 = xor i32 %xor495.1, %add489.1.1995, !dbg !238
  %add.ptr502.idx.1.1.11010 = shl nuw nsw i32 %xor498.1.1.11009, 2, !dbg !239
  %add.ptr502.1.1.11011 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 %add.ptr502.idx.1.1.11010, !dbg !239
  %210 = load i32, ptr addrspace(3) %add.ptr502.1.1.11011, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1079 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1073, i32 %210, i64 1, !dbg !240
  %xor498.2.11018 = xor i32 %xor495.2, %add488.1, !dbg !238
  %add.ptr502.idx.2.11019 = shl nuw nsw i32 %xor498.2.11018, 2, !dbg !239
  %add.ptr502.2.11020 = getelementptr inbounds i8, ptr addrspace(3) %173, i32 %add.ptr502.idx.2.11019, !dbg !239
  %211 = load i32, ptr addrspace(3) %add.ptr502.2.11020, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1089 = insertelement <2 x i32> poison, i32 %211, i64 0, !dbg !240
  %xor498.1.2.11023 = xor i32 %xor495.2, %add489.1.1995, !dbg !238
  %add.ptr502.idx.1.2.11024 = shl nuw nsw i32 %xor498.1.2.11023, 2, !dbg !239
  %add.ptr502.1.2.11025 = getelementptr inbounds i8, ptr addrspace(3) %173, i32 %add.ptr502.idx.1.2.11024, !dbg !239
  %212 = load i32, ptr addrspace(3) %add.ptr502.1.2.11025, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1095 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1089, i32 %212, i64 1, !dbg !240
  %xor498.3.11032 = xor i32 %xor495.3, %add488.1, !dbg !238
  %add.ptr502.idx.3.11033 = shl nuw nsw i32 %xor498.3.11032, 2, !dbg !239
  %add.ptr502.3.11034 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 %add.ptr502.idx.3.11033, !dbg !239
  %213 = load i32, ptr addrspace(3) %add.ptr502.3.11034, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1105 = insertelement <2 x i32> poison, i32 %213, i64 0, !dbg !240
  %xor498.1.3.11037 = xor i32 %xor495.3, %add489.1.1995, !dbg !238
  %add.ptr502.idx.1.3.11038 = shl nuw nsw i32 %xor498.1.3.11037, 2, !dbg !239
  %add.ptr502.1.3.11039 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 %add.ptr502.idx.1.3.11038, !dbg !239
  %214 = load i32, ptr addrspace(3) %add.ptr502.1.3.11039, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1111 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1105, i32 %214, i64 1, !dbg !240
  %215 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1063 to <4 x half>, !dbg !242
  %216 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %215, <4 x half> %115, <4 x float> %180), !dbg !243
  %217 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1079 to <4 x half>, !dbg !242
  %218 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %217, <4 x half> %115, <4 x float> %182), !dbg !243
  %219 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1095 to <4 x half>, !dbg !242
  %220 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %219, <4 x half> %115, <4 x float> %184), !dbg !243
  %221 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1111 to <4 x half>, !dbg !242
  %222 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %221, <4 x half> %115, <4 x float> %186), !dbg !243
  %add.ptr502.1981.1 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 %add.ptr502.idx.1993, !dbg !239
  %223 = load i32, ptr addrspace(3) %add.ptr502.1981.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1059 = insertelement <2 x i32> poison, i32 %223, i64 0, !dbg !240
  %add.ptr502.1.1985.1 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 %add.ptr502.idx.1.1997, !dbg !239
  %224 = load i32, ptr addrspace(3) %add.ptr502.1.1985.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1065 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1059, i32 %224, i64 1, !dbg !240
  %add.ptr502.1974.1.1 = getelementptr inbounds i8, ptr addrspace(3) %190, i32 %add.ptr502.idx.1973.11005, !dbg !239
  %225 = load i32, ptr addrspace(3) %add.ptr502.1974.1.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1075 = insertelement <2 x i32> poison, i32 %225, i64 0, !dbg !240
  %add.ptr502.1.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %190, i32 %add.ptr502.idx.1.1.11010, !dbg !239
  %226 = load i32, ptr addrspace(3) %add.ptr502.1.1.1.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1081 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1075, i32 %226, i64 1, !dbg !240
  %add.ptr502.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %193, i32 %add.ptr502.idx.2.11019, !dbg !239
  %227 = load i32, ptr addrspace(3) %add.ptr502.2.1.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1091 = insertelement <2 x i32> poison, i32 %227, i64 0, !dbg !240
  %add.ptr502.1.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %193, i32 %add.ptr502.idx.1.2.11024, !dbg !239
  %228 = load i32, ptr addrspace(3) %add.ptr502.1.2.1.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1097 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1091, i32 %228, i64 1, !dbg !240
  %add.ptr502.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %196, i32 %add.ptr502.idx.3.11033, !dbg !239
  %229 = load i32, ptr addrspace(3) %add.ptr502.3.1.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1107 = insertelement <2 x i32> poison, i32 %229, i64 0, !dbg !240
  %add.ptr502.1.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %196, i32 %add.ptr502.idx.1.3.11038, !dbg !239
  %230 = load i32, ptr addrspace(3) %add.ptr502.1.3.1.1, align 4, !dbg !240, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1113 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1107, i32 %230, i64 1, !dbg !240
  %231 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1065 to <4 x half>, !dbg !242
  %232 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %231, <4 x half> %115, <4 x float> %200), !dbg !243
  %233 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1081 to <4 x half>, !dbg !242
  %234 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %233, <4 x half> %115, <4 x float> %202), !dbg !243
  %235 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1097 to <4 x half>, !dbg !242
  %236 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %235, <4 x half> %115, <4 x float> %204), !dbg !243
  %237 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1113 to <4 x half>, !dbg !242
  %238 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %237, <4 x half> %115, <4 x float> %206), !dbg !243
  %add349 = fadd contract float %add344, %127, !dbg !244
  br label %if.end558, !dbg !61

if.end558:                                        ; preds = %for.cond.preheader, %for.body548.preheader
  %.pre-phi1862 = phi i64 [ %11, %for.cond.preheader ], [ %.pre1861, %for.body548.preheader ], !dbg !60
  %.pre-phi1860 = phi i64 [ %9, %for.cond.preheader ], [ %.pre1859, %for.body548.preheader ], !dbg !60
  %.pre-phi1858 = phi i64 [ %7, %for.cond.preheader ], [ %.pre1857, %for.body548.preheader ], !dbg !60
  %add630.1.pre-phi = phi i32 [ %add36.1, %for.cond.preheader ], [ %.pre1856, %for.body548.preheader ], !dbg !59
  %.pre-phi1855 = phi i64 [ %6, %for.cond.preheader ], [ %.pre1854, %for.body548.preheader ], !dbg !58
  %shr629.pre-phi = phi i32 [ %shr35, %for.cond.preheader ], [ %.pre1849, %for.body548.preheader ]
  %.pre-phi1848 = phi i32 [ %mul20, %for.cond.preheader ], [ %.pre1847, %for.body548.preheader ]
  %xor602.3.pre-phi = phi i32 [ %xor59.3, %for.cond.preheader ], [ %.pre1846, %for.body548.preheader ], !dbg !56
  %xor602.2.pre-phi = phi i32 [ %xor59.2, %for.cond.preheader ], [ %.pre1844, %for.body548.preheader ], !dbg !56
  %xor602.1.pre-phi = phi i32 [ %xor59.1, %for.cond.preheader ], [ %.pre1842, %for.body548.preheader ], !dbg !56
  %xor602.pre-phi = phi i32 [ %xor59, %for.cond.preheader ], [ %.pre1840, %for.body548.preheader ], !dbg !56
  %mul608.pre-phi = phi i32 [ %mul65, %for.cond.preheader ], [ %.pre1839, %for.body548.preheader ]
  %and601.pre-phi = phi i32 [ %and31, %for.cond.preheader ], [ %.pre1836, %for.body548.preheader ]
  %shr598.pre-phi = phi i32 [ %shr55, %for.cond.preheader ], [ %.pre1835, %for.body548.preheader ]
  %and594.pre-phi = phi i32 [ %4, %for.cond.preheader ], [ %.pre1834, %for.body548.preheader ]
  %.pre-phi = phi i32 [ %3, %for.cond.preheader ], [ %.pre, %for.body548.preheader ]
  %numerator.sroa.170.0 = phi <4 x float> [ %238, %for.cond.preheader ], [ zeroinitializer, %for.body548.preheader ], !dbg !245
  %numerator.sroa.146.0 = phi <4 x float> [ %236, %for.cond.preheader ], [ zeroinitializer, %for.body548.preheader ], !dbg !245
  %numerator.sroa.122.0 = phi <4 x float> [ %234, %for.cond.preheader ], [ zeroinitializer, %for.body548.preheader ], !dbg !245
  %numerator.sroa.98.0 = phi <4 x float> [ %232, %for.cond.preheader ], [ zeroinitializer, %for.body548.preheader ], !dbg !245
  %numerator.sroa.74.0 = phi <4 x float> [ %222, %for.cond.preheader ], [ zeroinitializer, %for.body548.preheader ], !dbg !245
  %numerator.sroa.50.0 = phi <4 x float> [ %220, %for.cond.preheader ], [ zeroinitializer, %for.body548.preheader ], !dbg !245
  %numerator.sroa.26.0 = phi <4 x float> [ %218, %for.cond.preheader ], [ zeroinitializer, %for.body548.preheader ], !dbg !245
  %numerator.sroa.0.0 = phi <4 x float> [ %216, %for.cond.preheader ], [ zeroinitializer, %for.body548.preheader ], !dbg !245
  %denominator.sroa.0.1 = phi float [ %add349, %for.cond.preheader ], [ 0.000000e+00, %for.body548.preheader ], !dbg !245
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !246
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !246
  %div.1 = fdiv contract float %numerator.sroa.0.4.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !246
  %div.2 = fdiv contract float %numerator.sroa.0.8.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !246
  %div.3 = fdiv contract float %numerator.sroa.0.12.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.26.16.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 0, !dbg !246
  %div.4 = fdiv contract float %numerator.sroa.26.16.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.26.20.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 1, !dbg !246
  %div.5 = fdiv contract float %numerator.sroa.26.20.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.26.24.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 2, !dbg !246
  %div.6 = fdiv contract float %numerator.sroa.26.24.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.26.28.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 3, !dbg !246
  %div.7 = fdiv contract float %numerator.sroa.26.28.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.50.32.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 0, !dbg !246
  %div.8 = fdiv contract float %numerator.sroa.50.32.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.50.36.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 1, !dbg !246
  %div.9 = fdiv contract float %numerator.sroa.50.36.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.50.40.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 2, !dbg !246
  %div.10 = fdiv contract float %numerator.sroa.50.40.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.50.44.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 3, !dbg !246
  %div.11 = fdiv contract float %numerator.sroa.50.44.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.74.48.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 0, !dbg !246
  %div.12 = fdiv contract float %numerator.sroa.74.48.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.74.52.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 1, !dbg !246
  %div.13 = fdiv contract float %numerator.sroa.74.52.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.74.56.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 2, !dbg !246
  %div.14 = fdiv contract float %numerator.sroa.74.56.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.74.60.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 3, !dbg !246
  %div.15 = fdiv contract float %numerator.sroa.74.60.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.98.64.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 0, !dbg !246
  %div.16 = fdiv contract float %numerator.sroa.98.64.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.98.68.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 1, !dbg !246
  %div.17 = fdiv contract float %numerator.sroa.98.68.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.98.72.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 2, !dbg !246
  %div.18 = fdiv contract float %numerator.sroa.98.72.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.98.76.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 3, !dbg !246
  %div.19 = fdiv contract float %numerator.sroa.98.76.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.122.80.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 0, !dbg !246
  %div.20 = fdiv contract float %numerator.sroa.122.80.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.122.84.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 1, !dbg !246
  %div.21 = fdiv contract float %numerator.sroa.122.84.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.122.88.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 2, !dbg !246
  %div.22 = fdiv contract float %numerator.sroa.122.88.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.122.92.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 3, !dbg !246
  %div.23 = fdiv contract float %numerator.sroa.122.92.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.146.96.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 0, !dbg !246
  %div.24 = fdiv contract float %numerator.sroa.146.96.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.146.100.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 1, !dbg !246
  %div.25 = fdiv contract float %numerator.sroa.146.100.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.146.104.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 2, !dbg !246
  %div.26 = fdiv contract float %numerator.sroa.146.104.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.146.108.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 3, !dbg !246
  %div.27 = fdiv contract float %numerator.sroa.146.108.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.170.112.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 0, !dbg !246
  %div.28 = fdiv contract float %numerator.sroa.170.112.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.170.116.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 1, !dbg !246
  %div.29 = fdiv contract float %numerator.sroa.170.116.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.170.120.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 2, !dbg !246
  %div.30 = fdiv contract float %numerator.sroa.170.120.vec.extract, %denominator.sroa.0.1, !dbg !247
  %numerator.sroa.170.124.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 3, !dbg !246
  %div.31 = fdiv contract float %numerator.sroa.170.124.vec.extract, %denominator.sroa.0.1, !dbg !247
  fence syncscope("warp") release, !dbg !248
  tail call void @llvm.mxc.barrier.warp(), !dbg !251
  fence syncscope("warp") acquire, !dbg !252
  %mul595 = and i32 %and594.pre-phi, 1920
  %239 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !257
  %240 = fptrunc float %div to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %239), !dbg !253, !noalias !257
  %241 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !262
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !262, !noalias !257
  %242 = fptrunc float %div.1 to half, !dbg !262
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %241), !dbg !262, !noalias !257
  %243 = bitcast half %240 to i16, !dbg !264
  %244 = bitcast half %242 to i16, !dbg !267
  %245 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !272
  %246 = fptrunc float %div.2 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %245), !dbg !268, !noalias !272
  %247 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !277
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !277, !noalias !272
  %248 = fptrunc float %div.3 to half, !dbg !277
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %247), !dbg !277, !noalias !272
  %249 = bitcast half %246 to i16, !dbg !279
  %250 = bitcast half %248 to i16, !dbg !281
  %__6.sroa.6.0.insert.ext = zext i16 %250 to i64, !dbg !282
  %__6.sroa.6.0.insert.shift = shl nuw i64 %__6.sroa.6.0.insert.ext, 48, !dbg !282
  %__6.sroa.5.0.insert.ext = zext i16 %249 to i64, !dbg !282
  %__6.sroa.5.0.insert.shift = shl nuw nsw i64 %__6.sroa.5.0.insert.ext, 32, !dbg !282
  %__6.sroa.5.0.insert.insert = or disjoint i64 %__6.sroa.6.0.insert.shift, %__6.sroa.5.0.insert.shift, !dbg !282
  %__6.sroa.4.0.insert.ext = zext i16 %244 to i64, !dbg !282
  %__6.sroa.4.0.insert.shift = shl nuw nsw i64 %__6.sroa.4.0.insert.ext, 16, !dbg !282
  %__6.sroa.4.0.insert.insert = or disjoint i64 %__6.sroa.5.0.insert.insert, %__6.sroa.4.0.insert.shift, !dbg !282
  %__6.sroa.0.0.insert.ext = zext i16 %243 to i64, !dbg !282
  %__6.sroa.0.0.insert.insert = or disjoint i64 %__6.sroa.4.0.insert.insert, %__6.sroa.0.0.insert.ext, !dbg !282
  %mul603 = shl nuw nsw i32 %xor602.pre-phi, 3, !dbg !283
  %add604 = add nuw nsw i32 %mul603, %mul595, !dbg !284
  %add609 = or disjoint i32 %add604, %mul608.pre-phi, !dbg !285
  %add.ptr611 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add609, !dbg !286
  store i64 %__6.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr611, align 8, !dbg !287
  %251 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !257
  %252 = fptrunc float %div.4 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %251), !dbg !253, !noalias !257
  %253 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !262
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !262, !noalias !257
  %254 = fptrunc float %div.5 to half, !dbg !262
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %253), !dbg !262, !noalias !257
  %255 = bitcast half %252 to i16, !dbg !264
  %256 = bitcast half %254 to i16, !dbg !267
  %257 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !272
  %258 = fptrunc float %div.6 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %257), !dbg !268, !noalias !272
  %259 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !277
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !277, !noalias !272
  %260 = fptrunc float %div.7 to half, !dbg !277
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %259), !dbg !277, !noalias !272
  %261 = bitcast half %258 to i16, !dbg !279
  %262 = bitcast half %260 to i16, !dbg !281
  %__6.sroa.6.0.insert.ext.1 = zext i16 %262 to i64, !dbg !282
  %__6.sroa.6.0.insert.shift.1 = shl nuw i64 %__6.sroa.6.0.insert.ext.1, 48, !dbg !282
  %__6.sroa.5.0.insert.ext.1 = zext i16 %261 to i64, !dbg !282
  %__6.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.1, 32, !dbg !282
  %__6.sroa.5.0.insert.insert.1 = or disjoint i64 %__6.sroa.6.0.insert.shift.1, %__6.sroa.5.0.insert.shift.1, !dbg !282
  %__6.sroa.4.0.insert.ext.1 = zext i16 %256 to i64, !dbg !282
  %__6.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.1, 16, !dbg !282
  %__6.sroa.4.0.insert.insert.1 = or disjoint i64 %__6.sroa.5.0.insert.insert.1, %__6.sroa.4.0.insert.shift.1, !dbg !282
  %__6.sroa.0.0.insert.ext.1 = zext i16 %255 to i64, !dbg !282
  %__6.sroa.0.0.insert.insert.1 = or disjoint i64 %__6.sroa.4.0.insert.insert.1, %__6.sroa.0.0.insert.ext.1, !dbg !282
  %mul603.1 = shl nuw nsw i32 %xor602.1.pre-phi, 3, !dbg !283
  %add604.1 = add nuw nsw i32 %mul603.1, %mul595, !dbg !284
  %add609.1 = or disjoint i32 %add604.1, %mul608.pre-phi, !dbg !285
  %add.ptr611.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add609.1, !dbg !286
  store i64 %__6.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr611.1, align 8, !dbg !287
  %263 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !257
  %264 = fptrunc float %div.8 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %263), !dbg !253, !noalias !257
  %265 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !262
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !262, !noalias !257
  %266 = fptrunc float %div.9 to half, !dbg !262
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %265), !dbg !262, !noalias !257
  %267 = bitcast half %264 to i16, !dbg !264
  %268 = bitcast half %266 to i16, !dbg !267
  %269 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !272
  %270 = fptrunc float %div.10 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %269), !dbg !268, !noalias !272
  %271 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !277
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !277, !noalias !272
  %272 = fptrunc float %div.11 to half, !dbg !277
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %271), !dbg !277, !noalias !272
  %273 = bitcast half %270 to i16, !dbg !279
  %274 = bitcast half %272 to i16, !dbg !281
  %__6.sroa.6.0.insert.ext.2 = zext i16 %274 to i64, !dbg !282
  %__6.sroa.6.0.insert.shift.2 = shl nuw i64 %__6.sroa.6.0.insert.ext.2, 48, !dbg !282
  %__6.sroa.5.0.insert.ext.2 = zext i16 %273 to i64, !dbg !282
  %__6.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.2, 32, !dbg !282
  %__6.sroa.5.0.insert.insert.2 = or disjoint i64 %__6.sroa.6.0.insert.shift.2, %__6.sroa.5.0.insert.shift.2, !dbg !282
  %__6.sroa.4.0.insert.ext.2 = zext i16 %268 to i64, !dbg !282
  %__6.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.2, 16, !dbg !282
  %__6.sroa.4.0.insert.insert.2 = or disjoint i64 %__6.sroa.5.0.insert.insert.2, %__6.sroa.4.0.insert.shift.2, !dbg !282
  %__6.sroa.0.0.insert.ext.2 = zext i16 %267 to i64, !dbg !282
  %__6.sroa.0.0.insert.insert.2 = or disjoint i64 %__6.sroa.4.0.insert.insert.2, %__6.sroa.0.0.insert.ext.2, !dbg !282
  %mul603.2 = shl nuw nsw i32 %xor602.2.pre-phi, 3, !dbg !283
  %add604.2 = add nuw nsw i32 %mul603.2, %mul595, !dbg !284
  %add609.2 = or disjoint i32 %add604.2, %mul608.pre-phi, !dbg !285
  %add.ptr611.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add609.2, !dbg !286
  store i64 %__6.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr611.2, align 8, !dbg !287
  %275 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !257
  %276 = fptrunc float %div.12 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %275), !dbg !253, !noalias !257
  %277 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !262
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !262, !noalias !257
  %278 = fptrunc float %div.13 to half, !dbg !262
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %277), !dbg !262, !noalias !257
  %279 = bitcast half %276 to i16, !dbg !264
  %280 = bitcast half %278 to i16, !dbg !267
  %281 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !272
  %282 = fptrunc float %div.14 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %281), !dbg !268, !noalias !272
  %283 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !277
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !277, !noalias !272
  %284 = fptrunc float %div.15 to half, !dbg !277
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %283), !dbg !277, !noalias !272
  %285 = bitcast half %282 to i16, !dbg !279
  %286 = bitcast half %284 to i16, !dbg !281
  %__6.sroa.6.0.insert.ext.3 = zext i16 %286 to i64, !dbg !282
  %__6.sroa.6.0.insert.shift.3 = shl nuw i64 %__6.sroa.6.0.insert.ext.3, 48, !dbg !282
  %__6.sroa.5.0.insert.ext.3 = zext i16 %285 to i64, !dbg !282
  %__6.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.3, 32, !dbg !282
  %__6.sroa.5.0.insert.insert.3 = or disjoint i64 %__6.sroa.6.0.insert.shift.3, %__6.sroa.5.0.insert.shift.3, !dbg !282
  %__6.sroa.4.0.insert.ext.3 = zext i16 %280 to i64, !dbg !282
  %__6.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.3, 16, !dbg !282
  %__6.sroa.4.0.insert.insert.3 = or disjoint i64 %__6.sroa.5.0.insert.insert.3, %__6.sroa.4.0.insert.shift.3, !dbg !282
  %__6.sroa.0.0.insert.ext.3 = zext i16 %279 to i64, !dbg !282
  %__6.sroa.0.0.insert.insert.3 = or disjoint i64 %__6.sroa.4.0.insert.insert.3, %__6.sroa.0.0.insert.ext.3, !dbg !282
  %mul603.3 = shl nuw nsw i32 %xor602.3.pre-phi, 3, !dbg !283
  %add604.3 = add nuw nsw i32 %mul603.3, %mul595, !dbg !284
  %add609.3 = or disjoint i32 %add604.3, %mul608.pre-phi, !dbg !285
  %add.ptr611.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add609.3, !dbg !286
  store i64 %__6.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr611.3, align 8, !dbg !287
  %287 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !257
  %288 = fptrunc float %div.16 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %287), !dbg !253, !noalias !257
  %289 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !262
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !262, !noalias !257
  %290 = fptrunc float %div.17 to half, !dbg !262
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %289), !dbg !262, !noalias !257
  %291 = bitcast half %288 to i16, !dbg !264
  %292 = bitcast half %290 to i16, !dbg !267
  %293 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !272
  %294 = fptrunc float %div.18 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %293), !dbg !268, !noalias !272
  %295 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !277
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !277, !noalias !272
  %296 = fptrunc float %div.19 to half, !dbg !277
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %295), !dbg !277, !noalias !272
  %297 = bitcast half %294 to i16, !dbg !279
  %298 = bitcast half %296 to i16, !dbg !281
  %__6.sroa.6.0.insert.ext.4 = zext i16 %298 to i64, !dbg !282
  %__6.sroa.6.0.insert.shift.4 = shl nuw i64 %__6.sroa.6.0.insert.ext.4, 48, !dbg !282
  %__6.sroa.5.0.insert.ext.4 = zext i16 %297 to i64, !dbg !282
  %__6.sroa.5.0.insert.shift.4 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.4, 32, !dbg !282
  %__6.sroa.5.0.insert.insert.4 = or disjoint i64 %__6.sroa.6.0.insert.shift.4, %__6.sroa.5.0.insert.shift.4, !dbg !282
  %__6.sroa.4.0.insert.ext.4 = zext i16 %292 to i64, !dbg !282
  %__6.sroa.4.0.insert.shift.4 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.4, 16, !dbg !282
  %__6.sroa.4.0.insert.insert.4 = or disjoint i64 %__6.sroa.5.0.insert.insert.4, %__6.sroa.4.0.insert.shift.4, !dbg !282
  %__6.sroa.0.0.insert.ext.4 = zext i16 %291 to i64, !dbg !282
  %__6.sroa.0.0.insert.insert.4 = or disjoint i64 %__6.sroa.4.0.insert.insert.4, %__6.sroa.0.0.insert.ext.4, !dbg !282
  %add599.4 = add nuw nsw i32 %shr598.pre-phi, 8, !dbg !57
  %xor602.4 = xor i32 %add599.4, %and601.pre-phi, !dbg !56
  %mul603.4 = shl nuw nsw i32 %xor602.4, 3, !dbg !283
  %add604.4 = add nuw nsw i32 %mul603.4, %mul595, !dbg !284
  %add609.4 = or disjoint i32 %add604.4, %mul608.pre-phi, !dbg !285
  %add.ptr611.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add609.4, !dbg !286
  store i64 %__6.sroa.0.0.insert.insert.4, ptr addrspace(3) %add.ptr611.4, align 8, !dbg !287
  %299 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !257
  %300 = fptrunc float %div.20 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %299), !dbg !253, !noalias !257
  %301 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !262
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !262, !noalias !257
  %302 = fptrunc float %div.21 to half, !dbg !262
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %301), !dbg !262, !noalias !257
  %303 = bitcast half %300 to i16, !dbg !264
  %304 = bitcast half %302 to i16, !dbg !267
  %305 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !272
  %306 = fptrunc float %div.22 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %305), !dbg !268, !noalias !272
  %307 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !277
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !277, !noalias !272
  %308 = fptrunc float %div.23 to half, !dbg !277
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %307), !dbg !277, !noalias !272
  %309 = bitcast half %306 to i16, !dbg !279
  %310 = bitcast half %308 to i16, !dbg !281
  %__6.sroa.6.0.insert.ext.5 = zext i16 %310 to i64, !dbg !282
  %__6.sroa.6.0.insert.shift.5 = shl nuw i64 %__6.sroa.6.0.insert.ext.5, 48, !dbg !282
  %__6.sroa.5.0.insert.ext.5 = zext i16 %309 to i64, !dbg !282
  %__6.sroa.5.0.insert.shift.5 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.5, 32, !dbg !282
  %__6.sroa.5.0.insert.insert.5 = or disjoint i64 %__6.sroa.6.0.insert.shift.5, %__6.sroa.5.0.insert.shift.5, !dbg !282
  %__6.sroa.4.0.insert.ext.5 = zext i16 %304 to i64, !dbg !282
  %__6.sroa.4.0.insert.shift.5 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.5, 16, !dbg !282
  %__6.sroa.4.0.insert.insert.5 = or disjoint i64 %__6.sroa.5.0.insert.insert.5, %__6.sroa.4.0.insert.shift.5, !dbg !282
  %__6.sroa.0.0.insert.ext.5 = zext i16 %303 to i64, !dbg !282
  %__6.sroa.0.0.insert.insert.5 = or disjoint i64 %__6.sroa.4.0.insert.insert.5, %__6.sroa.0.0.insert.ext.5, !dbg !282
  %add599.5 = add nuw nsw i32 %shr598.pre-phi, 10, !dbg !57
  %xor602.5 = xor i32 %add599.5, %and601.pre-phi, !dbg !56
  %mul603.5 = shl nuw nsw i32 %xor602.5, 3, !dbg !283
  %add604.5 = add nuw nsw i32 %mul603.5, %mul595, !dbg !284
  %add609.5 = or disjoint i32 %add604.5, %mul608.pre-phi, !dbg !285
  %add.ptr611.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add609.5, !dbg !286
  store i64 %__6.sroa.0.0.insert.insert.5, ptr addrspace(3) %add.ptr611.5, align 8, !dbg !287
  %311 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !257
  %312 = fptrunc float %div.24 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %311), !dbg !253, !noalias !257
  %313 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !262
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !262, !noalias !257
  %314 = fptrunc float %div.25 to half, !dbg !262
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %313), !dbg !262, !noalias !257
  %315 = bitcast half %312 to i16, !dbg !264
  %316 = bitcast half %314 to i16, !dbg !267
  %317 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !272
  %318 = fptrunc float %div.26 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %317), !dbg !268, !noalias !272
  %319 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !277
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !277, !noalias !272
  %320 = fptrunc float %div.27 to half, !dbg !277
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %319), !dbg !277, !noalias !272
  %321 = bitcast half %318 to i16, !dbg !279
  %322 = bitcast half %320 to i16, !dbg !281
  %__6.sroa.6.0.insert.ext.6 = zext i16 %322 to i64, !dbg !282
  %__6.sroa.6.0.insert.shift.6 = shl nuw i64 %__6.sroa.6.0.insert.ext.6, 48, !dbg !282
  %__6.sroa.5.0.insert.ext.6 = zext i16 %321 to i64, !dbg !282
  %__6.sroa.5.0.insert.shift.6 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.6, 32, !dbg !282
  %__6.sroa.5.0.insert.insert.6 = or disjoint i64 %__6.sroa.6.0.insert.shift.6, %__6.sroa.5.0.insert.shift.6, !dbg !282
  %__6.sroa.4.0.insert.ext.6 = zext i16 %316 to i64, !dbg !282
  %__6.sroa.4.0.insert.shift.6 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.6, 16, !dbg !282
  %__6.sroa.4.0.insert.insert.6 = or disjoint i64 %__6.sroa.5.0.insert.insert.6, %__6.sroa.4.0.insert.shift.6, !dbg !282
  %__6.sroa.0.0.insert.ext.6 = zext i16 %315 to i64, !dbg !282
  %__6.sroa.0.0.insert.insert.6 = or disjoint i64 %__6.sroa.4.0.insert.insert.6, %__6.sroa.0.0.insert.ext.6, !dbg !282
  %add599.6 = add nuw nsw i32 %shr598.pre-phi, 12, !dbg !57
  %xor602.6 = xor i32 %add599.6, %and601.pre-phi, !dbg !56
  %mul603.6 = shl nuw nsw i32 %xor602.6, 3, !dbg !283
  %add604.6 = add nuw nsw i32 %mul603.6, %mul595, !dbg !284
  %add609.6 = or disjoint i32 %add604.6, %mul608.pre-phi, !dbg !285
  %add.ptr611.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add609.6, !dbg !286
  store i64 %__6.sroa.0.0.insert.insert.6, ptr addrspace(3) %add.ptr611.6, align 8, !dbg !287
  %323 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !253, !noalias !257
  %324 = fptrunc float %div.28 to half, !dbg !253
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %323), !dbg !253, !noalias !257
  %325 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !262
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !262, !noalias !257
  %326 = fptrunc float %div.29 to half, !dbg !262
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %325), !dbg !262, !noalias !257
  %327 = bitcast half %324 to i16, !dbg !264
  %328 = bitcast half %326 to i16, !dbg !267
  %329 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !268, !noalias !272
  %330 = fptrunc float %div.30 to half, !dbg !268
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %329), !dbg !268, !noalias !272
  %331 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !277
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !277, !noalias !272
  %332 = fptrunc float %div.31 to half, !dbg !277
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %331), !dbg !277, !noalias !272
  %333 = bitcast half %330 to i16, !dbg !279
  %334 = bitcast half %332 to i16, !dbg !281
  %__6.sroa.6.0.insert.ext.7 = zext i16 %334 to i64, !dbg !282
  %__6.sroa.6.0.insert.shift.7 = shl nuw i64 %__6.sroa.6.0.insert.ext.7, 48, !dbg !282
  %__6.sroa.5.0.insert.ext.7 = zext i16 %333 to i64, !dbg !282
  %__6.sroa.5.0.insert.shift.7 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.7, 32, !dbg !282
  %__6.sroa.5.0.insert.insert.7 = or disjoint i64 %__6.sroa.6.0.insert.shift.7, %__6.sroa.5.0.insert.shift.7, !dbg !282
  %__6.sroa.4.0.insert.ext.7 = zext i16 %328 to i64, !dbg !282
  %__6.sroa.4.0.insert.shift.7 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.7, 16, !dbg !282
  %__6.sroa.4.0.insert.insert.7 = or disjoint i64 %__6.sroa.5.0.insert.insert.7, %__6.sroa.4.0.insert.shift.7, !dbg !282
  %__6.sroa.0.0.insert.ext.7 = zext i16 %327 to i64, !dbg !282
  %__6.sroa.0.0.insert.insert.7 = or disjoint i64 %__6.sroa.4.0.insert.insert.7, %__6.sroa.0.0.insert.ext.7, !dbg !282
  %add599.7 = add nuw nsw i32 %shr598.pre-phi, 14, !dbg !57
  %xor602.7 = xor i32 %add599.7, %and601.pre-phi, !dbg !56
  %mul603.7 = shl nuw nsw i32 %xor602.7, 3, !dbg !283
  %add604.7 = add nuw nsw i32 %mul603.7, %mul595, !dbg !284
  %add609.7 = or disjoint i32 %add604.7, %mul608.pre-phi, !dbg !285
  %add.ptr611.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add609.7, !dbg !286
  store i64 %__6.sroa.0.0.insert.insert.7, ptr addrspace(3) %add.ptr611.7, align 8, !dbg !287
  fence syncscope("warp") release, !dbg !288
  tail call void @llvm.mxc.barrier.warp(), !dbg !291
  fence syncscope("warp") acquire, !dbg !292
  %mul622 = and i32 %.pre-phi1848, 8064
  %and625 = and i32 %.pre-phi, 15
  %invariant.gep858 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul622, !dbg !293
  %xor631 = xor i32 %shr629.pre-phi, %and625, !dbg !294
  %add.ptr635.idx = shl nuw nsw i32 %xor631, 4, !dbg !295
  %add.ptr635 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep858, i32 %add.ptr635.idx, !dbg !295
  %add.ptr647 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi1855, !dbg !296
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr647, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr635, i64 16, i1 false), !dbg !297, !tbaa.struct !67, !call_argsrelate !298
  %xor631.1 = xor i32 %add630.1.pre-phi, %and625, !dbg !294
  %gep859.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep858, i32 1024, !dbg !295
  %add.ptr635.idx.1 = shl nuw nsw i32 %xor631.1, 4, !dbg !295
  %add.ptr635.1 = getelementptr inbounds i8, ptr addrspace(3) %gep859.1, i32 %add.ptr635.idx.1, !dbg !295
  %add.ptr647.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi1858, !dbg !296
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr647.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr635.1, i64 16, i1 false), !dbg !297, !tbaa.struct !67, !call_argsrelate !298
  %gep859.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep858, i32 2048, !dbg !295
  %add.ptr635.2 = getelementptr inbounds i8, ptr addrspace(3) %gep859.2, i32 %add.ptr635.idx, !dbg !295
  %add.ptr647.2 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi1860, !dbg !296
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr647.2, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr635.2, i64 16, i1 false), !dbg !297, !tbaa.struct !67, !call_argsrelate !298
  %gep859.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep858, i32 3072, !dbg !295
  %add.ptr635.3 = getelementptr inbounds i8, ptr addrspace(3) %gep859.3, i32 %add.ptr635.idx.1, !dbg !295
  %add.ptr647.3 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi1862, !dbg !296
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr647.3, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr635.3, i64 16, i1 false), !dbg !297, !tbaa.struct !67, !call_argsrelate !298
  ret void, !dbg !299
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v057_codex_power_s1_proven_bounds_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v057_codex_power_s1_proven_bounds_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
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
!56 = !DILocation(line: 179, column: 104, scope: !40)
!57 = !DILocation(line: 179, column: 75, scope: !40)
!58 = !DILocation(line: 183, column: 3, scope: !40)
!59 = !DILocation(line: 184, column: 261, scope: !40)
!60 = !DILocation(line: 184, column: 105, scope: !40)
!61 = !DILocation(line: 168, column: 3, scope: !40)
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
!231 = !DILocation(line: 129, column: 192, scope: !40)
!232 = !DILocation(line: 129, column: 63, scope: !40)
!233 = !DILocation(line: 68, column: 3, scope: !72, inlinedAt: !234)
!234 = distinct !DILocation(line: 192, column: 3, scope: !75, inlinedAt: !235)
!235 = distinct !DILocation(line: 133, column: 5, scope: !40)
!236 = !DILocation(line: 69, column: 3, scope: !72, inlinedAt: !234)
!237 = !DILocation(line: 70, column: 3, scope: !72, inlinedAt: !234)
!238 = !DILocation(line: 147, column: 325, scope: !40)
!239 = !DILocation(line: 147, column: 84, scope: !40)
!240 = !DILocation(line: 147, column: 65, scope: !40)
!241 = !DILocation(line: 147, column: 263, scope: !40)
!242 = !DILocation(line: 153, column: 94, scope: !40)
!243 = !DILocation(line: 153, column: 64, scope: !40)
!244 = !DILocation(line: 114, column: 38, scope: !40)
!245 = !DILocation(line: 0, scope: !40)
!246 = !DILocation(line: 169, column: 23, scope: !40)
!247 = !DILocation(line: 169, column: 38, scope: !40)
!248 = !DILocation(line: 68, column: 3, scope: !72, inlinedAt: !249)
!249 = distinct !DILocation(line: 192, column: 3, scope: !75, inlinedAt: !250)
!250 = distinct !DILocation(line: 171, column: 3, scope: !40)
!251 = !DILocation(line: 69, column: 3, scope: !72, inlinedAt: !249)
!252 = !DILocation(line: 70, column: 3, scope: !72, inlinedAt: !249)
!253 = !DILocation(line: 1007, column: 10, scope: !164, inlinedAt: !254)
!254 = distinct !DILocation(line: 1077, column: 18, scope: !167, inlinedAt: !255)
!255 = distinct !DILocation(line: 1295, column: 23, scope: !169, inlinedAt: !256)
!256 = distinct !DILocation(line: 176, column: 27, scope: !40)
!257 = !{!258, !260}
!258 = distinct !{!258, !259, !"_ZL17__floats2half2_rnff: %agg.result"}
!259 = distinct !{!259, !"_ZL17__floats2half2_rnff"}
!260 = distinct !{!260, !261, !"_ZL17__float22half2_rn6float2: %agg.result"}
!261 = distinct !{!261, !"_ZL17__float22half2_rn6float2"}
!262 = !DILocation(line: 1007, column: 10, scope: !164, inlinedAt: !263)
!263 = distinct !DILocation(line: 1077, column: 38, scope: !167, inlinedAt: !255)
!264 = !DILocation(line: 596, column: 67, scope: !265, inlinedAt: !266)
!265 = distinct !DISubprogram(name: "__half2", scope: !165, file: !165, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!266 = distinct !DILocation(line: 1077, column: 10, scope: !167, inlinedAt: !255)
!267 = !DILocation(line: 596, column: 73, scope: !265, inlinedAt: !266)
!268 = !DILocation(line: 1007, column: 10, scope: !164, inlinedAt: !269)
!269 = distinct !DILocation(line: 1077, column: 18, scope: !167, inlinedAt: !270)
!270 = distinct !DILocation(line: 1295, column: 23, scope: !169, inlinedAt: !271)
!271 = distinct !DILocation(line: 177, column: 27, scope: !40)
!272 = !{!273, !275}
!273 = distinct !{!273, !274, !"_ZL17__floats2half2_rnff: %agg.result"}
!274 = distinct !{!274, !"_ZL17__floats2half2_rnff"}
!275 = distinct !{!275, !276, !"_ZL17__float22half2_rn6float2: %agg.result"}
!276 = distinct !{!276, !"_ZL17__float22half2_rn6float2"}
!277 = !DILocation(line: 1007, column: 10, scope: !164, inlinedAt: !278)
!278 = distinct !DILocation(line: 1077, column: 38, scope: !167, inlinedAt: !270)
!279 = !DILocation(line: 596, column: 67, scope: !265, inlinedAt: !280)
!280 = distinct !DILocation(line: 1077, column: 10, scope: !167, inlinedAt: !270)
!281 = !DILocation(line: 596, column: 73, scope: !265, inlinedAt: !280)
!282 = !DILocation(line: 178, column: 38, scope: !40)
!283 = !DILocation(line: 179, column: 132, scope: !40)
!284 = !DILocation(line: 179, column: 60, scope: !40)
!285 = !DILocation(line: 179, column: 138, scope: !40)
!286 = !DILocation(line: 179, column: 22, scope: !40)
!287 = !DILocation(line: 179, column: 181, scope: !40)
!288 = !DILocation(line: 68, column: 3, scope: !72, inlinedAt: !289)
!289 = distinct !DILocation(line: 192, column: 3, scope: !75, inlinedAt: !290)
!290 = distinct !DILocation(line: 181, column: 3, scope: !40)
!291 = !DILocation(line: 69, column: 3, scope: !72, inlinedAt: !289)
!292 = !DILocation(line: 70, column: 3, scope: !72, inlinedAt: !289)
!293 = !DILocation(line: 183, column: 8, scope: !40)
!294 = !DILocation(line: 184, column: 239, scope: !40)
!295 = !DILocation(line: 184, column: 153, scope: !40)
!296 = !DILocation(line: 184, column: 22, scope: !40)
!297 = !DILocation(line: 184, column: 134, scope: !40)
!298 = !{i32 2, i32 -1, i32 -1, i32 -1}
!299 = !DILocation(line: 186, column: 1, scope: !40)
