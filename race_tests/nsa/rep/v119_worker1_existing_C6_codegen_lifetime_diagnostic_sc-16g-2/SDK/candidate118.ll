; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v118_worker1_c6_num16_v4_plane_lifetimes_sc-16g-2/codegen/candidate118/case6.device.cpp'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v118_worker1_c6_num16_v4_plane_lifetimes_sc-16g-2/codegen/candidate118/case6.device.cpp"
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
  br i1 %or.cond, label %entry.if.end505_crit_edge, label %for.cond.preheader, !dbg !54

entry.if.end505_crit_edge:                        ; preds = %entry
  %.pre = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  %.pre1903 = shl nuw nsw i32 %.pre, 6
  %.pre1904 = and i32 %.pre1903, 960
  %.pre1905 = lshr i32 %.pre, 5
  %.pre1906 = and i32 %.pre, 7
  %.pre1907 = lshr i32 %.pre, 4
  %.pre1908 = lshr i32 %.pre, 3
  %.pre1909 = xor i32 %.pre1907, %.pre1908
  %.pre1910 = and i32 %.pre1909, 1
  %.pre1911 = shl nuw nsw i32 %.pre, 2
  %.pre1913 = lshr i32 %.pre, 2
  %.pre1915 = and i32 %.pre1913, 4
  %.pre1916 = add nuw nsw i32 %.pre1915, %.pre1905
  br label %if.end505, !dbg !54

for.cond.preheader:                               ; preds = %entry
  %mul13 = shl nsw i32 %0, 21
  %mul15 = shl nsw i32 %1, 11
  %add16 = add nuw nsw i32 %mul13, %mul15
  %3 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  %mul20 = shl nuw nsw i32 %3, 3
  %add18 = add nuw nsw i32 %add16, %mul20
  %4 = shl nuw nsw i32 %3, 7
  %mul32 = and i32 %4, 1024
  %5 = shl nuw nsw i32 %3, 2
  %mul37 = and i32 %5, 4032
  %and40 = and i32 %3, 7
  %shr44 = lshr i32 %3, 4
  %and51 = lshr i32 %3, 3
  %shr52 = and i32 %and51, 1
  %6 = zext nneg i32 %add18 to i64, !dbg !56
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %6, !dbg !57
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %add.ptr, align 16, !dbg !58
  %qk_fetch.sroa.26.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !58
  %qk_fetch.sroa.26.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.sroa_idx, align 8, !dbg !58
  %xor = xor i32 %shr44, %and40
  %7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul37, !dbg !59
  %8 = getelementptr inbounds %struct.__half, ptr addrspace(3) %7, i32 %mul32, !dbg !59
  %.idx960 = shl nuw nsw i32 %xor, 4, !dbg !59
  %9 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 %.idx960, !dbg !59
  %add.ptr57.idx = shl nuw nsw i32 %shr52, 3, !dbg !59
  %add.ptr57 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 %add.ptr57.idx, !dbg !59
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr57, align 8, !dbg !60
  %xor53.1 = shl nuw nsw i32 %shr52, 3, !dbg !59
  %add.ptr57.idx.1 = xor i32 %xor53.1, 8, !dbg !59
  %add.ptr57.1 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 %add.ptr57.idx.1, !dbg !59
  store i64 %qk_fetch.sroa.26.0.copyload, ptr addrspace(3) %add.ptr57.1, align 8, !dbg !60
  %10 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %6, !dbg !57
  %add.ptr.1 = getelementptr inbounds i8, ptr addrspace(4) %10, i64 1024, !dbg !57
  %qk_fetch.sroa.0.0.copyload1871 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !58
  %qk_fetch.sroa.26.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %10, i64 1032, !dbg !58
  %qk_fetch.sroa.26.0.copyload1882 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.1.sroa_idx, align 8, !dbg !58
  %add45.1 = add nuw nsw i32 %shr44, 4
  %xor.1 = xor i32 %add45.1, %and40
  %11 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 512, !dbg !59
  %.idx960.1978 = shl nuw nsw i32 %xor.1, 4, !dbg !59
  %12 = getelementptr inbounds i8, ptr addrspace(3) %11, i32 %.idx960.1978, !dbg !59
  %add.ptr57.1980 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 %add.ptr57.idx, !dbg !59
  store i64 %qk_fetch.sroa.0.0.copyload1871, ptr addrspace(3) %add.ptr57.1980, align 8, !dbg !60
  %add.ptr57.1.1 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 %add.ptr57.idx.1, !dbg !59
  store i64 %qk_fetch.sroa.26.0.copyload1882, ptr addrspace(3) %add.ptr57.1.1, align 8, !dbg !60
  %13 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %6, !dbg !57
  %add.ptr.2 = getelementptr inbounds i8, ptr addrspace(4) %13, i64 2048, !dbg !57
  %qk_fetch.sroa.0.0.copyload1872 = load i64, ptr addrspace(4) %add.ptr.2, align 16, !dbg !58
  %qk_fetch.sroa.26.0.add.ptr.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %13, i64 2056, !dbg !58
  %qk_fetch.sroa.26.0.copyload1883 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.2.sroa_idx, align 8, !dbg !58
  %14 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 1024, !dbg !59
  %15 = getelementptr inbounds i8, ptr addrspace(3) %14, i32 %.idx960, !dbg !59
  %add.ptr57.2 = getelementptr inbounds i8, ptr addrspace(3) %15, i32 %add.ptr57.idx.1, !dbg !59
  store i64 %qk_fetch.sroa.0.0.copyload1872, ptr addrspace(3) %add.ptr57.2, align 8, !dbg !60
  %add.ptr57.1.2 = getelementptr inbounds i8, ptr addrspace(3) %15, i32 %add.ptr57.idx, !dbg !59
  store i64 %qk_fetch.sroa.26.0.copyload1883, ptr addrspace(3) %add.ptr57.1.2, align 8, !dbg !60
  %16 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %6, !dbg !57
  %add.ptr.3 = getelementptr inbounds i8, ptr addrspace(4) %16, i64 3072, !dbg !57
  %qk_fetch.sroa.0.0.copyload1873 = load i64, ptr addrspace(4) %add.ptr.3, align 16, !dbg !58
  %qk_fetch.sroa.26.0.add.ptr.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %16, i64 3080, !dbg !58
  %qk_fetch.sroa.26.0.copyload1884 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.3.sroa_idx, align 8, !dbg !58
  %17 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 1536, !dbg !59
  %18 = getelementptr inbounds i8, ptr addrspace(3) %17, i32 %.idx960.1978, !dbg !59
  %add.ptr57.3 = getelementptr inbounds i8, ptr addrspace(3) %18, i32 %add.ptr57.idx.1, !dbg !59
  store i64 %qk_fetch.sroa.0.0.copyload1873, ptr addrspace(3) %add.ptr57.3, align 8, !dbg !60
  %add.ptr57.1.3 = getelementptr inbounds i8, ptr addrspace(3) %18, i32 %add.ptr57.idx, !dbg !59
  store i64 %qk_fetch.sroa.26.0.copyload1884, ptr addrspace(3) %add.ptr57.1.3, align 8, !dbg !60
  fence syncscope("warp") release, !dbg !61
  tail call void @llvm.mxc.barrier.warp(), !dbg !67
  fence syncscope("warp") acquire, !dbg !68
  %and68 = shl nuw nsw i32 %3, 6
  %mul69 = and i32 %and68, 960
  %shr74 = lshr i32 %3, 5
  %shr83874 = xor i32 %shr44, %and51
  %xor87 = and i32 %shr83874, 1
  %xor78 = xor i32 %shr74, %and40, !dbg !69
  %19 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul69, !dbg !70
  %.idx961 = shl nuw nsw i32 %xor87, 3, !dbg !70
  %20 = getelementptr inbounds i8, ptr addrspace(3) %19, i32 %.idx961, !dbg !70
  %add.ptr93.idx = shl nuw nsw i32 %xor78, 4, !dbg !70
  %add.ptr93 = getelementptr inbounds i8, ptr addrspace(3) %20, i32 %add.ptr93.idx, !dbg !70
  %21 = load <4 x half>, ptr addrspace(3) %add.ptr93, align 8, !dbg !71
  %add75.1 = add nuw nsw i32 %shr74, 2, !dbg !72
  %xor78.1 = xor i32 %add75.1, %and40, !dbg !69
  %add.ptr93.idx.1 = shl nuw nsw i32 %xor78.1, 4, !dbg !70
  %add.ptr93.1 = getelementptr inbounds i8, ptr addrspace(3) %20, i32 %add.ptr93.idx.1, !dbg !70
  %22 = load <4 x half>, ptr addrspace(3) %add.ptr93.1, align 8, !dbg !71
  %add75.2 = add nuw nsw i32 %shr74, 4, !dbg !72
  %xor78.2 = xor i32 %add75.2, %and40, !dbg !69
  %add.ptr93.idx.2 = shl nuw nsw i32 %xor78.2, 4, !dbg !70
  %add.ptr93.2 = getelementptr inbounds i8, ptr addrspace(3) %20, i32 %add.ptr93.idx.2, !dbg !70
  %23 = load <4 x half>, ptr addrspace(3) %add.ptr93.2, align 8, !dbg !71
  %add75.3 = add nuw nsw i32 %shr74, 6, !dbg !72
  %xor78.3 = xor i32 %add75.3, %and40, !dbg !69
  %add.ptr93.idx.3 = shl nuw nsw i32 %xor78.3, 4, !dbg !70
  %add.ptr93.3 = getelementptr inbounds i8, ptr addrspace(3) %20, i32 %add.ptr93.idx.3, !dbg !70
  %24 = load <4 x half>, ptr addrspace(3) %add.ptr93.3, align 8, !dbg !71
  %add70.4 = or disjoint i32 %mul69, 1024, !dbg !73
  %25 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add70.4, !dbg !70
  %xor89.4 = shl nuw nsw i32 %xor87, 3, !dbg !70
  %.idx961.4 = xor i32 %xor89.4, 8, !dbg !70
  %26 = getelementptr inbounds i8, ptr addrspace(3) %25, i32 %.idx961.4, !dbg !70
  %add.ptr93.4 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 %add.ptr93.idx, !dbg !70
  %27 = load <4 x half>, ptr addrspace(3) %add.ptr93.4, align 8, !dbg !71
  %add.ptr93.5 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 %add.ptr93.idx.1, !dbg !70
  %28 = load <4 x half>, ptr addrspace(3) %add.ptr93.5, align 8, !dbg !71
  %add.ptr93.6 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 %add.ptr93.idx.2, !dbg !70
  %29 = load <4 x half>, ptr addrspace(3) %add.ptr93.6, align 8, !dbg !71
  %add.ptr93.7 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 %add.ptr93.idx.3, !dbg !70
  %30 = load <4 x half>, ptr addrspace(3) %add.ptr93.7, align 8, !dbg !71
  fence syncscope("warp") release, !dbg !74
  tail call void @llvm.mxc.barrier.warp(), !dbg !77
  fence syncscope("warp") acquire, !dbg !78
  %conv = zext nneg i32 %0 to i64
  %conv110 = zext nneg i32 %mul7 to i64
  %mul115 = zext nneg i32 %mul20 to i64
  %.idx = shl nuw nsw i64 %conv110, 8
  %invariant.gep = getelementptr inbounds i8, ptr addrspace(4) %K.coerce, i64 %.idx, !dbg !79
  %invariant.gep932 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %mul115, !dbg !79
  %31 = and i32 %3, 8
  %.idx962 = shl nuw nsw i64 %conv, 18, !dbg !80
  %32 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep932, i64 %.idx962, !dbg !80
  %qk_fetch.sroa.0.0.copyload1870 = load i64, ptr addrspace(4) %32, align 16, !dbg !81
  %qk_fetch.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 8, !dbg !81
  %qk_fetch.sroa.26.0.copyload1881 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0..sroa_idx, align 8, !dbg !81
  %33 = shl nuw nsw i32 %31, 9, !dbg !82
  %34 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %33, !dbg !82
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(3) %34, i32 %mul37, !dbg !82
  %36 = getelementptr inbounds i8, ptr addrspace(3) %35, i32 %.idx960, !dbg !82
  %add.ptr158 = getelementptr inbounds i8, ptr addrspace(3) %36, i32 %add.ptr57.idx, !dbg !82
  store i64 %qk_fetch.sroa.0.0.copyload1870, ptr addrspace(3) %add.ptr158, align 8, !dbg !83
  %add.ptr158.1 = getelementptr inbounds i8, ptr addrspace(3) %36, i32 %add.ptr57.idx.1, !dbg !82
  store i64 %qk_fetch.sroa.26.0.copyload1881, ptr addrspace(3) %add.ptr158.1, align 8, !dbg !83
  %gep933.1 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 1024, !dbg !80
  %qk_fetch.sroa.0.0.copyload1874 = load i64, ptr addrspace(4) %gep933.1, align 16, !dbg !81
  %qk_fetch.sroa.26.0.gep933.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 1032, !dbg !81
  %qk_fetch.sroa.26.0.copyload1885 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep933.1.sroa_idx, align 8, !dbg !81
  %37 = shl nuw nsw i32 %31, 9, !dbg !82
  %38 = or disjoint i32 %37, 512, !dbg !82
  %39 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %38, !dbg !82
  %40 = getelementptr inbounds %struct.__half, ptr addrspace(3) %39, i32 %mul37, !dbg !82
  %41 = getelementptr inbounds i8, ptr addrspace(3) %40, i32 %.idx960.1978, !dbg !82
  %add.ptr158.1987 = getelementptr inbounds i8, ptr addrspace(3) %41, i32 %add.ptr57.idx, !dbg !82
  store i64 %qk_fetch.sroa.0.0.copyload1874, ptr addrspace(3) %add.ptr158.1987, align 8, !dbg !83
  %add.ptr158.1.1 = getelementptr inbounds i8, ptr addrspace(3) %41, i32 %add.ptr57.idx.1, !dbg !82
  store i64 %qk_fetch.sroa.26.0.copyload1885, ptr addrspace(3) %add.ptr158.1.1, align 8, !dbg !83
  %gep933.2 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 2048, !dbg !80
  %qk_fetch.sroa.0.0.copyload1875 = load i64, ptr addrspace(4) %gep933.2, align 16, !dbg !81
  %qk_fetch.sroa.26.0.gep933.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 2056, !dbg !81
  %qk_fetch.sroa.26.0.copyload1886 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep933.2.sroa_idx, align 8, !dbg !81
  %shr149873.2 = and i32 %and51, 1
  %42 = shl nuw nsw i32 %31, 9, !dbg !82
  %43 = or disjoint i32 %42, 1024, !dbg !82
  %44 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %43, !dbg !82
  %45 = getelementptr inbounds %struct.__half, ptr addrspace(3) %44, i32 %mul37, !dbg !82
  %46 = getelementptr inbounds i8, ptr addrspace(3) %45, i32 %.idx960, !dbg !82
  %47 = shl nuw nsw i32 %shr149873.2, 3, !dbg !82
  %add.ptr158.idx.2 = xor i32 %47, 8, !dbg !82
  %add.ptr158.2 = getelementptr inbounds i8, ptr addrspace(3) %46, i32 %add.ptr158.idx.2, !dbg !82
  store i64 %qk_fetch.sroa.0.0.copyload1875, ptr addrspace(3) %add.ptr158.2, align 8, !dbg !83
  %add.ptr158.idx.1.2 = shl nuw nsw i32 %shr149873.2, 3, !dbg !82
  %add.ptr158.1.2 = getelementptr inbounds i8, ptr addrspace(3) %46, i32 %add.ptr158.idx.1.2, !dbg !82
  store i64 %qk_fetch.sroa.26.0.copyload1886, ptr addrspace(3) %add.ptr158.1.2, align 8, !dbg !83
  %gep933.3 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 3072, !dbg !80
  %qk_fetch.sroa.0.0.copyload1876 = load i64, ptr addrspace(4) %gep933.3, align 16, !dbg !81
  %qk_fetch.sroa.26.0.gep933.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 3080, !dbg !81
  %qk_fetch.sroa.26.0.copyload1887 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep933.3.sroa_idx, align 8, !dbg !81
  %48 = shl nuw nsw i32 %31, 9, !dbg !82
  %49 = or disjoint i32 %48, 1536, !dbg !82
  %50 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %49, !dbg !82
  %51 = getelementptr inbounds %struct.__half, ptr addrspace(3) %50, i32 %mul37, !dbg !82
  %52 = getelementptr inbounds i8, ptr addrspace(3) %51, i32 %.idx960.1978, !dbg !82
  %add.ptr158.3 = getelementptr inbounds i8, ptr addrspace(3) %52, i32 %add.ptr158.idx.2, !dbg !82
  store i64 %qk_fetch.sroa.0.0.copyload1876, ptr addrspace(3) %add.ptr158.3, align 8, !dbg !83
  %add.ptr158.1.3 = getelementptr inbounds i8, ptr addrspace(3) %52, i32 %add.ptr158.idx.1.2, !dbg !82
  store i64 %qk_fetch.sroa.26.0.copyload1887, ptr addrspace(3) %add.ptr158.1.3, align 8, !dbg !83
  %gep933.4 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 4096, !dbg !80
  %qk_fetch.sroa.0.0.copyload1877 = load i64, ptr addrspace(4) %gep933.4, align 16, !dbg !81
  %qk_fetch.sroa.26.0.gep933.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 4104, !dbg !81
  %qk_fetch.sroa.26.0.copyload1888 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep933.4.sroa_idx, align 8, !dbg !81
  %53 = and i32 %and51, 1
  %54 = shl nuw nsw i32 %31, 9, !dbg !82
  %55 = or disjoint i32 %54, 2048, !dbg !82
  %56 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %55, !dbg !82
  %57 = getelementptr inbounds %struct.__half, ptr addrspace(3) %56, i32 %mul37, !dbg !82
  %58 = getelementptr inbounds i8, ptr addrspace(3) %57, i32 %.idx960, !dbg !82
  %add.ptr158.idx.4 = shl nuw nsw i32 %53, 3, !dbg !82
  %add.ptr158.4 = getelementptr inbounds i8, ptr addrspace(3) %58, i32 %add.ptr158.idx.4, !dbg !82
  store i64 %qk_fetch.sroa.0.0.copyload1877, ptr addrspace(3) %add.ptr158.4, align 8, !dbg !83
  %xor154.1.4 = shl nuw nsw i32 %53, 3, !dbg !82
  %add.ptr158.idx.1.4 = xor i32 %xor154.1.4, 8, !dbg !82
  %add.ptr158.1.4 = getelementptr inbounds i8, ptr addrspace(3) %58, i32 %add.ptr158.idx.1.4, !dbg !82
  store i64 %qk_fetch.sroa.26.0.copyload1888, ptr addrspace(3) %add.ptr158.1.4, align 8, !dbg !83
  %gep933.5 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 5120, !dbg !80
  %qk_fetch.sroa.0.0.copyload1878 = load i64, ptr addrspace(4) %gep933.5, align 16, !dbg !81
  %qk_fetch.sroa.26.0.gep933.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 5128, !dbg !81
  %qk_fetch.sroa.26.0.copyload1889 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep933.5.sroa_idx, align 8, !dbg !81
  %59 = shl nuw nsw i32 %31, 9, !dbg !82
  %60 = or disjoint i32 %59, 2560, !dbg !82
  %61 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %60, !dbg !82
  %62 = getelementptr inbounds %struct.__half, ptr addrspace(3) %61, i32 %mul37, !dbg !82
  %63 = getelementptr inbounds i8, ptr addrspace(3) %62, i32 %.idx960.1978, !dbg !82
  %add.ptr158.5 = getelementptr inbounds i8, ptr addrspace(3) %63, i32 %add.ptr158.idx.4, !dbg !82
  store i64 %qk_fetch.sroa.0.0.copyload1878, ptr addrspace(3) %add.ptr158.5, align 8, !dbg !83
  %add.ptr158.1.5 = getelementptr inbounds i8, ptr addrspace(3) %63, i32 %add.ptr158.idx.1.4, !dbg !82
  store i64 %qk_fetch.sroa.26.0.copyload1889, ptr addrspace(3) %add.ptr158.1.5, align 8, !dbg !83
  %gep933.6 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 6144, !dbg !80
  %qk_fetch.sroa.0.0.copyload1879 = load i64, ptr addrspace(4) %gep933.6, align 16, !dbg !81
  %qk_fetch.sroa.26.0.gep933.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 6152, !dbg !81
  %qk_fetch.sroa.26.0.copyload1890 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep933.6.sroa_idx, align 8, !dbg !81
  %shr149873.6 = and i32 %and51, 1
  %64 = shl nuw nsw i32 %31, 9, !dbg !82
  %65 = or disjoint i32 %64, 3072, !dbg !82
  %66 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %65, !dbg !82
  %67 = getelementptr inbounds %struct.__half, ptr addrspace(3) %66, i32 %mul37, !dbg !82
  %68 = getelementptr inbounds i8, ptr addrspace(3) %67, i32 %.idx960, !dbg !82
  %69 = shl nuw nsw i32 %shr149873.6, 3, !dbg !82
  %add.ptr158.idx.6 = xor i32 %69, 8, !dbg !82
  %add.ptr158.6 = getelementptr inbounds i8, ptr addrspace(3) %68, i32 %add.ptr158.idx.6, !dbg !82
  store i64 %qk_fetch.sroa.0.0.copyload1879, ptr addrspace(3) %add.ptr158.6, align 8, !dbg !83
  %add.ptr158.idx.1.6 = shl nuw nsw i32 %shr149873.6, 3, !dbg !82
  %add.ptr158.1.6 = getelementptr inbounds i8, ptr addrspace(3) %68, i32 %add.ptr158.idx.1.6, !dbg !82
  store i64 %qk_fetch.sroa.26.0.copyload1890, ptr addrspace(3) %add.ptr158.1.6, align 8, !dbg !83
  %gep933.7 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 7168, !dbg !80
  %qk_fetch.sroa.0.0.copyload1880 = load i64, ptr addrspace(4) %gep933.7, align 16, !dbg !81
  %qk_fetch.sroa.26.0.gep933.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 7176, !dbg !81
  %qk_fetch.sroa.26.0.copyload1891 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep933.7.sroa_idx, align 8, !dbg !81
  %70 = shl nuw nsw i32 %31, 9, !dbg !82
  %71 = or disjoint i32 %70, 3584, !dbg !82
  %72 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %71, !dbg !82
  %73 = getelementptr inbounds %struct.__half, ptr addrspace(3) %72, i32 %mul37, !dbg !82
  %74 = getelementptr inbounds i8, ptr addrspace(3) %73, i32 %.idx960.1978, !dbg !82
  %add.ptr158.7 = getelementptr inbounds i8, ptr addrspace(3) %74, i32 %add.ptr158.idx.6, !dbg !82
  store i64 %qk_fetch.sroa.0.0.copyload1880, ptr addrspace(3) %add.ptr158.7, align 8, !dbg !83
  %add.ptr158.1.7 = getelementptr inbounds i8, ptr addrspace(3) %74, i32 %add.ptr158.idx.1.6, !dbg !82
  store i64 %qk_fetch.sroa.26.0.copyload1891, ptr addrspace(3) %add.ptr158.1.7, align 8, !dbg !83
  fence syncscope("warp") release, !dbg !84
  tail call void @llvm.mxc.barrier.warp(), !dbg !87
  fence syncscope("warp") acquire, !dbg !88
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr93, align 8, !dbg !89
  %75 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %21, <4 x float> zeroinitializer), !dbg !90
  %add.ptr215.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93, i32 2048, !dbg !91
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr215.1, align 8, !dbg !89
  %76 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %21, <4 x float> zeroinitializer), !dbg !90
  %k_local.sroa.0.0.copyload.1990 = load <4 x half>, ptr addrspace(3) %add.ptr93.1, align 8, !dbg !89
  %77 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1990, <4 x half> %22, <4 x float> %75), !dbg !90
  %add.ptr215.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93.1, i32 2048, !dbg !91
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.1, align 8, !dbg !89
  %78 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %22, <4 x float> %76), !dbg !90
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr93.2, align 8, !dbg !89
  %79 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %23, <4 x float> %77), !dbg !90
  %add.ptr215.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93.2, i32 2048, !dbg !91
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.2, align 8, !dbg !89
  %80 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %23, <4 x float> %78), !dbg !90
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr93.3, align 8, !dbg !89
  %81 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %24, <4 x float> %79), !dbg !90
  %add.ptr215.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93.3, i32 2048, !dbg !91
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.3, align 8, !dbg !89
  %82 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %24, <4 x float> %80), !dbg !90
  %add192.4 = or disjoint i32 %mul69, 2048
  %83 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add192.4, !dbg !91
  %84 = getelementptr inbounds i8, ptr addrspace(3) %83, i32 %.idx961.4, !dbg !91
  %85 = getelementptr inbounds i8, ptr addrspace(3) %84, i32 %add.ptr93.idx, !dbg !91
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %85, align 8, !dbg !89
  %86 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %27, <4 x float> %81), !dbg !90
  %add.ptr215.1.4 = getelementptr inbounds i8, ptr addrspace(3) %85, i32 2048, !dbg !91
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.4, align 8, !dbg !89
  %87 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %27, <4 x float> %82), !dbg !90
  %88 = getelementptr inbounds i8, ptr addrspace(3) %84, i32 %add.ptr93.idx.1, !dbg !91
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %88, align 8, !dbg !89
  %89 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %28, <4 x float> %86), !dbg !90
  %add.ptr215.1.5 = getelementptr inbounds i8, ptr addrspace(3) %88, i32 2048, !dbg !91
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.5, align 8, !dbg !89
  %90 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %28, <4 x float> %87), !dbg !90
  %91 = getelementptr inbounds i8, ptr addrspace(3) %84, i32 %add.ptr93.idx.2, !dbg !91
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %91, align 8, !dbg !89
  %92 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %29, <4 x float> %89), !dbg !90
  %add.ptr215.1.6 = getelementptr inbounds i8, ptr addrspace(3) %91, i32 2048, !dbg !91
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.6, align 8, !dbg !89
  %93 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %29, <4 x float> %90), !dbg !90
  %94 = getelementptr inbounds i8, ptr addrspace(3) %84, i32 %add.ptr93.idx.3, !dbg !91
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %94, align 8, !dbg !89
  %95 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %30, <4 x float> %92), !dbg !90
  %add.ptr215.1.7 = getelementptr inbounds i8, ptr addrspace(3) %94, i32 2048, !dbg !91
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.7, align 8, !dbg !89
  %96 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %30, <4 x float> %93), !dbg !90
  %97 = lshr i32 %3, 2
  %mul246 = and i32 %97, 252
  %add247 = add nuw nsw i32 %mul7, %mul246
  %cmp251.not = icmp sgt i32 %add247, %1, !dbg !92
  %scores.sroa.0.0.vec.extract = extractelement <4 x float> %95, i64 0
  %spec.select = select i1 %cmp251.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract, !dbg !93
  %cmp251.not.1.not = icmp slt i32 %add247, %1, !dbg !92
  %scores.sroa.0.4.vec.extract = extractelement <4 x float> %95, i64 1, !dbg !93
  %condval.0.1 = select i1 %cmp251.not.1.not, float %scores.sroa.0.4.vec.extract, float 0xFFF0000000000000, !dbg !93
  %add249.2 = or disjoint i32 %add247, 2, !dbg !94
  %cmp251.not.2 = icmp sgt i32 %add249.2, %1, !dbg !92
  %scores.sroa.0.8.vec.extract = extractelement <4 x float> %95, i64 2, !dbg !93
  %condval.0.2 = select i1 %cmp251.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract, !dbg !93
  %add249.3 = or disjoint i32 %add247, 3, !dbg !94
  %cmp251.not.3 = icmp sgt i32 %add249.3, %1, !dbg !92
  %scores.sroa.0.12.vec.extract = extractelement <4 x float> %95, i64 3, !dbg !93
  %condval.0.3 = select i1 %cmp251.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract, !dbg !93
  %add248.1 = add nuw nsw i32 %add247, 16
  %cmp251.not.1991 = icmp sgt i32 %add248.1, %1, !dbg !92
  %scores.sroa.38.16.vec.extract = extractelement <4 x float> %96, i64 0, !dbg !93
  %condval.0.1994 = select i1 %cmp251.not.1991, float 0xFFF0000000000000, float %scores.sroa.38.16.vec.extract, !dbg !93
  %add249.1.1 = add nuw nsw i32 %add247, 17, !dbg !94
  %cmp251.not.1.1 = icmp sgt i32 %add249.1.1, %1, !dbg !92
  %scores.sroa.38.20.vec.extract = extractelement <4 x float> %96, i64 1, !dbg !93
  %condval.0.1.1 = select i1 %cmp251.not.1.1, float 0xFFF0000000000000, float %scores.sroa.38.20.vec.extract, !dbg !93
  %add249.2.1 = add nuw nsw i32 %add247, 18, !dbg !94
  %cmp251.not.2.1 = icmp sgt i32 %add249.2.1, %1, !dbg !92
  %scores.sroa.38.24.vec.extract = extractelement <4 x float> %96, i64 2, !dbg !93
  %condval.0.2.1 = select i1 %cmp251.not.2.1, float 0xFFF0000000000000, float %scores.sroa.38.24.vec.extract, !dbg !93
  %add249.3.1 = add nuw nsw i32 %add247, 19, !dbg !94
  %cmp251.not.3.1 = icmp sgt i32 %add249.3.1, %1, !dbg !92
  %scores.sroa.38.28.vec.extract = extractelement <4 x float> %96, i64 3, !dbg !93
  %condval.0.3.1 = select i1 %cmp251.not.3.1, float 0xFFF0000000000000, float %scores.sroa.38.28.vec.extract, !dbg !93
  %98 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !95
  %99 = tail call contract noundef float @llvm.maxnum.f32(float %98, float %condval.0.1), !dbg !95
  %100 = tail call contract noundef float @llvm.maxnum.f32(float %99, float %condval.0.2), !dbg !95
  %101 = tail call contract noundef float @llvm.maxnum.f32(float %100, float %condval.0.3), !dbg !95
  %102 = tail call contract noundef float @llvm.maxnum.f32(float %101, float %condval.0.1994), !dbg !95
  %103 = tail call contract noundef float @llvm.maxnum.f32(float %102, float %condval.0.1.1), !dbg !95
  %104 = tail call contract noundef float @llvm.maxnum.f32(float %103, float %condval.0.2.1), !dbg !95
  %105 = tail call contract noundef float @llvm.maxnum.f32(float %104, float %condval.0.3.1), !dbg !95
  %106 = bitcast float %105 to i32, !dbg !99
  %107 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !102
  %108 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %107) #10, !dbg !107
  %xor.i.i = xor i32 %108, 32, !dbg !108
  %109 = and i32 %108, -64, !dbg !109
  %and.i.i = add nsw i32 %109, 64, !dbg !109
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !110
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %108, !dbg !111
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !112
  %110 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %106), !dbg !113
  %111 = bitcast i32 %110 to float, !dbg !114
  %112 = tail call contract noundef float @llvm.maxnum.f32(float %105, float %111), !dbg !115
  %113 = bitcast float %112 to i32, !dbg !117
  %114 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !119
  %115 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %114) #10, !dbg !122
  %xor.i.i875 = xor i32 %115, 16, !dbg !123
  %116 = and i32 %115, -64, !dbg !124
  %and.i.i876 = add nsw i32 %116, 64, !dbg !124
  %cmp.not.i.i877 = icmp slt i32 %xor.i.i875, %and.i.i876, !dbg !125
  %cond.i.i878 = select i1 %cmp.not.i.i877, i32 %xor.i.i875, i32 %115, !dbg !126
  %shl.i.i879 = shl i32 %cond.i.i878, 2, !dbg !127
  %117 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i879, i32 %113), !dbg !128
  %118 = bitcast i32 %117 to float, !dbg !129
  %119 = tail call contract noundef float @llvm.maxnum.f32(float %112, float %118), !dbg !130
  %sub = fsub contract float %spec.select, %119, !dbg !132
  %sub309 = fsub contract float %condval.0.1, %119, !dbg !133
  %sub312 = fsub contract float %condval.0.2, %119, !dbg !134
  %sub315 = fsub contract float %condval.0.3, %119, !dbg !135
  %mul320 = fmul contract float %sub, 0x3FC0527DC0000000, !dbg !136
  %mul324 = fmul contract float %sub309, 0x3FC0527DC0000000, !dbg !137
  %mul328 = fmul contract float %sub312, 0x3FC0527DC0000000, !dbg !138
  %mul332 = fmul contract float %sub315, 0x3FC0527DC0000000, !dbg !139
  %add337 = fadd contract float %mul320, 8.000000e+00, !dbg !140
  %add341 = fadd contract float %mul324, 8.000000e+00, !dbg !141
  %add345 = fadd contract float %mul328, 8.000000e+00, !dbg !142
  %add349 = fadd contract float %mul332, 8.000000e+00, !dbg !143
  %cmp.i.i = fcmp contract olt float %add337, -1.260000e+02, !dbg !144
  %cond.i.i880 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !144
  %add.i.i = fadd contract float %add337, %cond.i.i880, !dbg !144
  %120 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !144
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !144
  %mul.i.i = fmul contract float %cond2.i.i, %120, !dbg !144
  %cmp.i.i881 = fcmp contract olt float %add341, -1.260000e+02, !dbg !147
  %cond.i.i882 = select contract i1 %cmp.i.i881, float 6.400000e+01, float 0.000000e+00, !dbg !147
  %add.i.i883 = fadd contract float %add341, %cond.i.i882, !dbg !147
  %121 = tail call contract float @llvm.exp2.f32(float %add.i.i883), !dbg !147
  %cond2.i.i884 = select contract i1 %cmp.i.i881, float 0x3BF0000000000000, float 1.000000e+00, !dbg !147
  %mul.i.i885 = fmul contract float %cond2.i.i884, %121, !dbg !147
  %cmp.i.i886 = fcmp contract olt float %add345, -1.260000e+02, !dbg !149
  %cond.i.i887 = select contract i1 %cmp.i.i886, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i888 = fadd contract float %add345, %cond.i.i887, !dbg !149
  %122 = tail call contract float @llvm.exp2.f32(float %add.i.i888), !dbg !149
  %cond2.i.i889 = select contract i1 %cmp.i.i886, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i890 = fmul contract float %cond2.i.i889, %122, !dbg !149
  %cmp.i.i891 = fcmp contract olt float %add349, -1.260000e+02, !dbg !151
  %cond.i.i892 = select contract i1 %cmp.i.i891, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i893 = fadd contract float %add349, %cond.i.i892, !dbg !151
  %123 = tail call contract float @llvm.exp2.f32(float %add.i.i893), !dbg !151
  %cond2.i.i894 = select contract i1 %cmp.i.i891, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i895 = fmul contract float %cond2.i.i894, %123, !dbg !151
  %124 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !153
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !153, !noalias !161
  %125 = fptrunc float %mul.i.i to half, !dbg !153
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %124), !dbg !153, !noalias !161
  %126 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !166
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !166, !noalias !161
  %127 = fptrunc float %mul.i.i885 to half, !dbg !166
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %126), !dbg !166, !noalias !161
  %128 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !168, !noalias !172
  %129 = fptrunc float %mul.i.i890 to half, !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %128), !dbg !168, !noalias !172
  %130 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !177
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !177, !noalias !172
  %131 = fptrunc float %mul.i.i895 to half, !dbg !177
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %130), !dbg !177, !noalias !172
  %132 = insertelement <4 x half> poison, half %125, i64 0, !dbg !179
  %133 = insertelement <4 x half> %132, half %127, i64 1, !dbg !179
  %134 = insertelement <4 x half> %133, half %129, i64 2, !dbg !179
  %135 = insertelement <4 x half> %134, half %131, i64 3, !dbg !179
  %sub.1 = fsub contract float %condval.0.1994, %119, !dbg !132
  %sub309.1 = fsub contract float %condval.0.1.1, %119, !dbg !133
  %sub312.1 = fsub contract float %condval.0.2.1, %119, !dbg !134
  %sub315.1 = fsub contract float %condval.0.3.1, %119, !dbg !135
  %mul320.1 = fmul contract float %sub.1, 0x3FC0527DC0000000, !dbg !136
  %mul324.1 = fmul contract float %sub309.1, 0x3FC0527DC0000000, !dbg !137
  %mul328.1 = fmul contract float %sub312.1, 0x3FC0527DC0000000, !dbg !138
  %mul332.1 = fmul contract float %sub315.1, 0x3FC0527DC0000000, !dbg !139
  %add337.1 = fadd contract float %mul320.1, 8.000000e+00, !dbg !140
  %add341.1 = fadd contract float %mul324.1, 8.000000e+00, !dbg !141
  %add345.1 = fadd contract float %mul328.1, 8.000000e+00, !dbg !142
  %add349.1 = fadd contract float %mul332.1, 8.000000e+00, !dbg !143
  %cmp.i.i.1 = fcmp contract olt float %add337.1, -1.260000e+02, !dbg !144
  %cond.i.i880.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !144
  %add.i.i.1 = fadd contract float %add337.1, %cond.i.i880.1, !dbg !144
  %136 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !144
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !144
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %136, !dbg !144
  %cmp.i.i881.1 = fcmp contract olt float %add341.1, -1.260000e+02, !dbg !147
  %cond.i.i882.1 = select contract i1 %cmp.i.i881.1, float 6.400000e+01, float 0.000000e+00, !dbg !147
  %add.i.i883.1 = fadd contract float %add341.1, %cond.i.i882.1, !dbg !147
  %137 = tail call contract float @llvm.exp2.f32(float %add.i.i883.1), !dbg !147
  %cond2.i.i884.1 = select contract i1 %cmp.i.i881.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !147
  %mul.i.i885.1 = fmul contract float %cond2.i.i884.1, %137, !dbg !147
  %cmp.i.i886.1 = fcmp contract olt float %add345.1, -1.260000e+02, !dbg !149
  %cond.i.i887.1 = select contract i1 %cmp.i.i886.1, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i888.1 = fadd contract float %add345.1, %cond.i.i887.1, !dbg !149
  %138 = tail call contract float @llvm.exp2.f32(float %add.i.i888.1), !dbg !149
  %cond2.i.i889.1 = select contract i1 %cmp.i.i886.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i890.1 = fmul contract float %cond2.i.i889.1, %138, !dbg !149
  %cmp.i.i891.1 = fcmp contract olt float %add349.1, -1.260000e+02, !dbg !151
  %cond.i.i892.1 = select contract i1 %cmp.i.i891.1, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i893.1 = fadd contract float %add349.1, %cond.i.i892.1, !dbg !151
  %139 = tail call contract float @llvm.exp2.f32(float %add.i.i893.1), !dbg !151
  %cond2.i.i894.1 = select contract i1 %cmp.i.i891.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i895.1 = fmul contract float %cond2.i.i894.1, %139, !dbg !151
  %140 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !153
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !153, !noalias !161
  %141 = fptrunc float %mul.i.i.1 to half, !dbg !153
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %140), !dbg !153, !noalias !161
  %142 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !166
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !166, !noalias !161
  %143 = fptrunc float %mul.i.i885.1 to half, !dbg !166
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %142), !dbg !166, !noalias !161
  %144 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !168, !noalias !172
  %145 = fptrunc float %mul.i.i890.1 to half, !dbg !168
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %144), !dbg !168, !noalias !172
  %146 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !177
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !177, !noalias !172
  %147 = fptrunc float %mul.i.i895.1 to half, !dbg !177
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %146), !dbg !177, !noalias !172
  %148 = insertelement <4 x half> poison, half %141, i64 0, !dbg !179
  %149 = insertelement <4 x half> %148, half %143, i64 1, !dbg !179
  %150 = insertelement <4 x half> %149, half %145, i64 2, !dbg !179
  %151 = insertelement <4 x half> %150, half %147, i64 3, !dbg !179
  %conv.i.i = fpext half %125 to float, !dbg !180
  %add387 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !185
  %conv.i.i.1 = fpext half %127 to float, !dbg !180
  %add387.1 = fadd contract float %add387, %conv.i.i.1, !dbg !185
  %conv.i.i.2 = fpext half %129 to float, !dbg !180
  %add387.2 = fadd contract float %add387.1, %conv.i.i.2, !dbg !185
  %conv.i.i.3 = fpext half %131 to float, !dbg !180
  %add387.3 = fadd contract float %add387.2, %conv.i.i.3, !dbg !185
  %conv.i.i.4 = fpext half %141 to float, !dbg !180
  %add387.4 = fadd contract float %add387.3, %conv.i.i.4, !dbg !185
  %conv.i.i.5 = fpext half %143 to float, !dbg !180
  %add387.5 = fadd contract float %add387.4, %conv.i.i.5, !dbg !185
  %conv.i.i.6 = fpext half %145 to float, !dbg !180
  %add387.6 = fadd contract float %add387.5, %conv.i.i.6, !dbg !185
  %conv.i.i.7 = fpext half %147 to float, !dbg !180
  %add387.7 = fadd contract float %add387.6, %conv.i.i.7, !dbg !185
  %152 = bitcast float %add387.7 to i32, !dbg !186
  %153 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !188
  %154 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %153) #10, !dbg !191
  %xor.i.i897 = xor i32 %154, 32, !dbg !192
  %155 = and i32 %154, -64, !dbg !193
  %and.i.i898 = add nsw i32 %155, 64, !dbg !193
  %cmp.not.i.i899 = icmp slt i32 %xor.i.i897, %and.i.i898, !dbg !194
  %cond.i.i900 = select i1 %cmp.not.i.i899, i32 %xor.i.i897, i32 %154, !dbg !195
  %shl.i.i901 = shl i32 %cond.i.i900, 2, !dbg !196
  %156 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i901, i32 %152), !dbg !197
  %157 = bitcast i32 %156 to float, !dbg !198
  %add395 = fadd contract float %add387.7, %157, !dbg !199
  %158 = bitcast float %add395 to i32, !dbg !200
  %159 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !202
  %160 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %159) #10, !dbg !205
  %xor.i.i902 = xor i32 %160, 16, !dbg !206
  %161 = and i32 %160, -64, !dbg !207
  %and.i.i903 = add nsw i32 %161, 64, !dbg !207
  %cmp.not.i.i904 = icmp slt i32 %xor.i.i902, %and.i.i903, !dbg !208
  %cond.i.i905 = select i1 %cmp.not.i.i904, i32 %xor.i.i902, i32 %160, !dbg !209
  %shl.i.i906 = shl i32 %cond.i.i905, 2, !dbg !210
  %162 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i906, i32 %158), !dbg !211
  %163 = bitcast i32 %162 to float, !dbg !212
  fence syncscope("warp") release, !dbg !213
  tail call void @llvm.mxc.barrier.warp(), !dbg !216
  fence syncscope("warp") acquire, !dbg !217
  %mul416 = shl nuw nsw i64 %conv, 17
  %164 = shl nuw nsw i32 %3, 5
  %165 = and i32 %164, 32512
  %mul423 = zext nneg i32 %165 to i64
  %add419 = or disjoint i64 %mul416, %mul423
  %166 = and i32 %mul20, 56
  %mul437 = zext nneg i32 %166 to i64
  %invariant.gep945 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %mul437
  %mul471 = and i32 %164, 224
  %mul476 = and i32 %97, 4
  %add478 = add nuw nsw i32 %mul476, %shr74
  %and484 = lshr i32 %3, 1
  %shr485 = and i32 %and484, 3
  %mul492 = and i32 %97, 2
  %add468 = or disjoint i32 %mul492, %mul471
  %167 = xor i32 %add478, %shr485
  %168 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep945, i64 %add419, !dbg !218
  %169 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 %.idx, !dbg !218
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %169, align 16, !dbg !219
  %v_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 2, !dbg !219
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4, !dbg !219
  %v_fetch.sroa.14.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx, align 4, !dbg !219
  %v_fetch.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 6, !dbg !219
  %v_fetch.sroa.18.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 8, !dbg !219
  %v_fetch.sroa.22.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx, align 8, !dbg !219
  %v_fetch.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 10, !dbg !219
  %v_fetch.sroa.26.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 12, !dbg !219
  %v_fetch.sroa.30.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx, align 4, !dbg !219
  %v_fetch.sroa.34.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 14, !dbg !219
  %v_fetch.sroa.34.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx, align 2, !dbg !219, !tbaa !30
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 256, !dbg !218
  %v_fetch.sroa.38.16.copyload = load i16, ptr addrspace(4) %gep.1, align 16, !dbg !219
  %v_fetch.sroa.46.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 258, !dbg !219
  %v_fetch.sroa.46.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.sroa_idx, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 260, !dbg !219
  %v_fetch.sroa.50.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.sroa_idx, align 4, !dbg !219
  %v_fetch.sroa.54.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 262, !dbg !219
  %v_fetch.sroa.54.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.sroa_idx, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 264, !dbg !219
  %v_fetch.sroa.58.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.sroa_idx, align 8, !dbg !219
  %v_fetch.sroa.62.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 266, !dbg !219
  %v_fetch.sroa.62.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.sroa_idx, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 268, !dbg !219
  %v_fetch.sroa.66.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.sroa_idx, align 4, !dbg !219
  %v_fetch.sroa.70.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 270, !dbg !219
  %v_fetch.sroa.70.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.sroa_idx, align 2, !dbg !219, !tbaa !30
  %170 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add468, !dbg !220
  %add.ptr495.idx = shl nuw nsw i32 %167, 3, !dbg !220
  %add.ptr495 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 %add.ptr495.idx, !dbg !220
  %v_column.sroa.66.0.insert.ext = zext i16 %v_fetch.sroa.38.16.copyload to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift = shl nuw i32 %v_column.sroa.66.0.insert.ext, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.66.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr495, align 4, !dbg !221, !tbaa !30
  %171 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 512, !dbg !220
  %xor486.1 = shl nuw nsw i32 %167, 3, !dbg !220
  %add.ptr495.idx.1 = xor i32 %xor486.1, 8, !dbg !220
  %add.ptr495.1 = getelementptr inbounds i8, ptr addrspace(3) %171, i32 %add.ptr495.idx.1, !dbg !220
  %v_column.sroa.66.0.insert.ext1502 = zext i16 %v_fetch.sroa.46.16.copyload to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1503 = shl nuw i32 %v_column.sroa.66.0.insert.ext1502, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1378 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1380 = or disjoint i32 %v_column.sroa.66.0.insert.shift1503, %v_column.sroa.0.0.insert.ext1378, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1380, ptr addrspace(3) %add.ptr495.1, align 4, !dbg !221, !tbaa !30
  %172 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 1024, !dbg !220
  %xor486.2 = shl nuw nsw i32 %167, 3, !dbg !220
  %add.ptr495.idx.2 = xor i32 %xor486.2, 16, !dbg !220
  %add.ptr495.2 = getelementptr inbounds i8, ptr addrspace(3) %172, i32 %add.ptr495.idx.2, !dbg !220
  %v_column.sroa.66.0.insert.ext1507 = zext i16 %v_fetch.sroa.50.16.copyload to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1508 = shl nuw i32 %v_column.sroa.66.0.insert.ext1507, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1382 = zext i16 %v_fetch.sroa.14.0.copyload to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1384 = or disjoint i32 %v_column.sroa.66.0.insert.shift1508, %v_column.sroa.0.0.insert.ext1382, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1384, ptr addrspace(3) %add.ptr495.2, align 4, !dbg !221, !tbaa !30
  %173 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 1536, !dbg !220
  %xor486.3 = shl nuw nsw i32 %167, 3, !dbg !220
  %add.ptr495.idx.3 = xor i32 %xor486.3, 24, !dbg !220
  %add.ptr495.3 = getelementptr inbounds i8, ptr addrspace(3) %173, i32 %add.ptr495.idx.3, !dbg !220
  %v_column.sroa.66.0.insert.ext1512 = zext i16 %v_fetch.sroa.54.16.copyload to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1513 = shl nuw i32 %v_column.sroa.66.0.insert.ext1512, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1386 = zext i16 %v_fetch.sroa.18.0.copyload to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1388 = or disjoint i32 %v_column.sroa.66.0.insert.shift1513, %v_column.sroa.0.0.insert.ext1386, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1388, ptr addrspace(3) %add.ptr495.3, align 4, !dbg !221, !tbaa !30
  %174 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 2048, !dbg !220
  %xor486.4 = shl nuw nsw i32 %167, 3, !dbg !220
  %add.ptr495.idx.4 = xor i32 %xor486.4, 32, !dbg !220
  %add.ptr495.4 = getelementptr inbounds i8, ptr addrspace(3) %174, i32 %add.ptr495.idx.4, !dbg !220
  %v_column.sroa.66.0.insert.ext1517 = zext i16 %v_fetch.sroa.58.16.copyload to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1518 = shl nuw i32 %v_column.sroa.66.0.insert.ext1517, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1390 = zext i16 %v_fetch.sroa.22.0.copyload to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1392 = or disjoint i32 %v_column.sroa.66.0.insert.shift1518, %v_column.sroa.0.0.insert.ext1390, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1392, ptr addrspace(3) %add.ptr495.4, align 4, !dbg !221, !tbaa !30
  %175 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 2560, !dbg !220
  %xor486.5 = shl nuw nsw i32 %167, 3, !dbg !220
  %add.ptr495.idx.5 = xor i32 %xor486.5, 40, !dbg !220
  %add.ptr495.5 = getelementptr inbounds i8, ptr addrspace(3) %175, i32 %add.ptr495.idx.5, !dbg !220
  %v_column.sroa.66.0.insert.ext1522 = zext i16 %v_fetch.sroa.62.16.copyload to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1523 = shl nuw i32 %v_column.sroa.66.0.insert.ext1522, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1394 = zext i16 %v_fetch.sroa.26.0.copyload to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1396 = or disjoint i32 %v_column.sroa.66.0.insert.shift1523, %v_column.sroa.0.0.insert.ext1394, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1396, ptr addrspace(3) %add.ptr495.5, align 4, !dbg !221, !tbaa !30
  %176 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 3072, !dbg !220
  %xor486.6 = shl nuw nsw i32 %167, 3, !dbg !220
  %add.ptr495.idx.6 = xor i32 %xor486.6, 48, !dbg !220
  %add.ptr495.6 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 %add.ptr495.idx.6, !dbg !220
  %v_column.sroa.66.0.insert.ext1527 = zext i16 %v_fetch.sroa.66.16.copyload to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1528 = shl nuw i32 %v_column.sroa.66.0.insert.ext1527, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1398 = zext i16 %v_fetch.sroa.30.0.copyload to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1400 = or disjoint i32 %v_column.sroa.66.0.insert.shift1528, %v_column.sroa.0.0.insert.ext1398, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1400, ptr addrspace(3) %add.ptr495.6, align 4, !dbg !221, !tbaa !30
  %177 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 3584, !dbg !220
  %xor486.7 = shl nuw nsw i32 %167, 3, !dbg !220
  %add.ptr495.idx.7 = xor i32 %xor486.7, 56, !dbg !220
  %add.ptr495.7 = getelementptr inbounds i8, ptr addrspace(3) %177, i32 %add.ptr495.idx.7, !dbg !220
  %v_column.sroa.66.0.insert.ext1532 = zext i16 %v_fetch.sroa.70.16.copyload to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1533 = shl nuw i32 %v_column.sroa.66.0.insert.ext1532, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1402 = zext i16 %v_fetch.sroa.34.0.copyload to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1404 = or disjoint i32 %v_column.sroa.66.0.insert.shift1533, %v_column.sroa.0.0.insert.ext1402, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1404, ptr addrspace(3) %add.ptr495.7, align 4, !dbg !221, !tbaa !30
  %178 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 128, !dbg !218
  %v_fetch.sroa.0.0.copyload1659 = load i16, ptr addrspace(4) %178, align 16, !dbg !219
  %v_fetch.sroa.10.0..sroa_idx1662 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 130, !dbg !219
  %v_fetch.sroa.10.0.copyload1663 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1662, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1671 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 132, !dbg !219
  %v_fetch.sroa.14.0.copyload1672 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1671, align 4, !dbg !219
  %v_fetch.sroa.18.0..sroa_idx1680 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 134, !dbg !219
  %v_fetch.sroa.18.0.copyload1681 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1680, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1689 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 136, !dbg !219
  %v_fetch.sroa.22.0.copyload1690 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1689, align 8, !dbg !219
  %v_fetch.sroa.26.0..sroa_idx1698 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 138, !dbg !219
  %v_fetch.sroa.26.0.copyload1699 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1698, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1707 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 140, !dbg !219
  %v_fetch.sroa.30.0.copyload1708 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1707, align 4, !dbg !219
  %v_fetch.sroa.34.0..sroa_idx1716 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 142, !dbg !219
  %v_fetch.sroa.34.0.copyload1717 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1716, align 2, !dbg !219, !tbaa !30
  %gep.1.1 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 384, !dbg !218
  %v_fetch.sroa.38.16.copyload1728 = load i16, ptr addrspace(4) %gep.1.1, align 16, !dbg !219
  %v_fetch.sroa.46.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 386, !dbg !219
  %v_fetch.sroa.46.16.copyload1731 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.1.sroa_idx, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 388, !dbg !219
  %v_fetch.sroa.50.16.copyload1737 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.1.sroa_idx, align 4, !dbg !219
  %v_fetch.sroa.54.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 390, !dbg !219
  %v_fetch.sroa.54.16.copyload1743 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.1.sroa_idx, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 392, !dbg !219
  %v_fetch.sroa.58.16.copyload1749 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.1.sroa_idx, align 8, !dbg !219
  %v_fetch.sroa.62.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 394, !dbg !219
  %v_fetch.sroa.62.16.copyload1755 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.1.sroa_idx, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 396, !dbg !219
  %v_fetch.sroa.66.16.copyload1761 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.1.sroa_idx, align 4, !dbg !219
  %v_fetch.sroa.70.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 398, !dbg !219
  %v_fetch.sroa.70.16.copyload1767 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.1.sroa_idx, align 2, !dbg !219, !tbaa !30
  %179 = or disjoint i32 %add468, 2048
  %180 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %179, !dbg !220
  %add.ptr495.11007 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 %add.ptr495.idx, !dbg !220
  %v_column.sroa.66.0.insert.ext1537 = zext i16 %v_fetch.sroa.38.16.copyload1728 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1538 = shl nuw i32 %v_column.sroa.66.0.insert.ext1537, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1406 = zext i16 %v_fetch.sroa.0.0.copyload1659 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1408 = or disjoint i32 %v_column.sroa.66.0.insert.shift1538, %v_column.sroa.0.0.insert.ext1406, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1408, ptr addrspace(3) %add.ptr495.11007, align 4, !dbg !221, !tbaa !30
  %181 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 512, !dbg !220
  %add.ptr495.1.1 = getelementptr inbounds i8, ptr addrspace(3) %181, i32 %add.ptr495.idx.1, !dbg !220
  %v_column.sroa.66.0.insert.ext1542 = zext i16 %v_fetch.sroa.46.16.copyload1731 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1543 = shl nuw i32 %v_column.sroa.66.0.insert.ext1542, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1410 = zext i16 %v_fetch.sroa.10.0.copyload1663 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1412 = or disjoint i32 %v_column.sroa.66.0.insert.shift1543, %v_column.sroa.0.0.insert.ext1410, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1412, ptr addrspace(3) %add.ptr495.1.1, align 4, !dbg !221, !tbaa !30
  %182 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 1024, !dbg !220
  %add.ptr495.2.1 = getelementptr inbounds i8, ptr addrspace(3) %182, i32 %add.ptr495.idx.2, !dbg !220
  %v_column.sroa.66.0.insert.ext1547 = zext i16 %v_fetch.sroa.50.16.copyload1737 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1548 = shl nuw i32 %v_column.sroa.66.0.insert.ext1547, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1414 = zext i16 %v_fetch.sroa.14.0.copyload1672 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1416 = or disjoint i32 %v_column.sroa.66.0.insert.shift1548, %v_column.sroa.0.0.insert.ext1414, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1416, ptr addrspace(3) %add.ptr495.2.1, align 4, !dbg !221, !tbaa !30
  %183 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 1536, !dbg !220
  %add.ptr495.3.1 = getelementptr inbounds i8, ptr addrspace(3) %183, i32 %add.ptr495.idx.3, !dbg !220
  %v_column.sroa.66.0.insert.ext1552 = zext i16 %v_fetch.sroa.54.16.copyload1743 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1553 = shl nuw i32 %v_column.sroa.66.0.insert.ext1552, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1418 = zext i16 %v_fetch.sroa.18.0.copyload1681 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1420 = or disjoint i32 %v_column.sroa.66.0.insert.shift1553, %v_column.sroa.0.0.insert.ext1418, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1420, ptr addrspace(3) %add.ptr495.3.1, align 4, !dbg !221, !tbaa !30
  %184 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 2048, !dbg !220
  %add.ptr495.4.1 = getelementptr inbounds i8, ptr addrspace(3) %184, i32 %add.ptr495.idx.4, !dbg !220
  %v_column.sroa.66.0.insert.ext1557 = zext i16 %v_fetch.sroa.58.16.copyload1749 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1558 = shl nuw i32 %v_column.sroa.66.0.insert.ext1557, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1422 = zext i16 %v_fetch.sroa.22.0.copyload1690 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1424 = or disjoint i32 %v_column.sroa.66.0.insert.shift1558, %v_column.sroa.0.0.insert.ext1422, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1424, ptr addrspace(3) %add.ptr495.4.1, align 4, !dbg !221, !tbaa !30
  %185 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 2560, !dbg !220
  %add.ptr495.5.1 = getelementptr inbounds i8, ptr addrspace(3) %185, i32 %add.ptr495.idx.5, !dbg !220
  %v_column.sroa.66.0.insert.ext1562 = zext i16 %v_fetch.sroa.62.16.copyload1755 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1563 = shl nuw i32 %v_column.sroa.66.0.insert.ext1562, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1426 = zext i16 %v_fetch.sroa.26.0.copyload1699 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1428 = or disjoint i32 %v_column.sroa.66.0.insert.shift1563, %v_column.sroa.0.0.insert.ext1426, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1428, ptr addrspace(3) %add.ptr495.5.1, align 4, !dbg !221, !tbaa !30
  %186 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 3072, !dbg !220
  %add.ptr495.6.1 = getelementptr inbounds i8, ptr addrspace(3) %186, i32 %add.ptr495.idx.6, !dbg !220
  %v_column.sroa.66.0.insert.ext1567 = zext i16 %v_fetch.sroa.66.16.copyload1761 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1568 = shl nuw i32 %v_column.sroa.66.0.insert.ext1567, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1430 = zext i16 %v_fetch.sroa.30.0.copyload1708 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1432 = or disjoint i32 %v_column.sroa.66.0.insert.shift1568, %v_column.sroa.0.0.insert.ext1430, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1432, ptr addrspace(3) %add.ptr495.6.1, align 4, !dbg !221, !tbaa !30
  %187 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 3584, !dbg !220
  %add.ptr495.7.1 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 %add.ptr495.idx.7, !dbg !220
  %v_column.sroa.66.0.insert.ext1572 = zext i16 %v_fetch.sroa.70.16.copyload1767 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1573 = shl nuw i32 %v_column.sroa.66.0.insert.ext1572, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1434 = zext i16 %v_fetch.sroa.34.0.copyload1717 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1436 = or disjoint i32 %v_column.sroa.66.0.insert.shift1573, %v_column.sroa.0.0.insert.ext1434, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1436, ptr addrspace(3) %add.ptr495.7.1, align 4, !dbg !221, !tbaa !30
  %narrow = add nuw nsw i32 %add478, 2
  %188 = xor i32 %narrow, %shr485
  %189 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4096, !dbg !218
  %v_fetch.sroa.0.0.copyload1660 = load i16, ptr addrspace(4) %189, align 16, !dbg !219
  %v_fetch.sroa.10.0..sroa_idx1664 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4098, !dbg !219
  %v_fetch.sroa.10.0.copyload1665 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1664, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1673 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4100, !dbg !219
  %v_fetch.sroa.14.0.copyload1674 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1673, align 4, !dbg !219
  %v_fetch.sroa.18.0..sroa_idx1682 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4102, !dbg !219
  %v_fetch.sroa.18.0.copyload1683 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1682, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1691 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4104, !dbg !219
  %v_fetch.sroa.22.0.copyload1692 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1691, align 8, !dbg !219
  %v_fetch.sroa.26.0..sroa_idx1700 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4106, !dbg !219
  %v_fetch.sroa.26.0.copyload1701 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1700, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1709 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4108, !dbg !219
  %v_fetch.sroa.30.0.copyload1710 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1709, align 4, !dbg !219
  %v_fetch.sroa.34.0..sroa_idx1718 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4110, !dbg !219
  %v_fetch.sroa.34.0.copyload1719 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1718, align 2, !dbg !219, !tbaa !30
  %gep.1.11014 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4352, !dbg !218
  %v_fetch.sroa.38.16.copyload1729 = load i16, ptr addrspace(4) %gep.1.11014, align 16, !dbg !219
  %v_fetch.sroa.46.16.gep.1.11014.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4354, !dbg !219
  %v_fetch.sroa.46.16.copyload1732 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.11014.sroa_idx, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.11014.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4356, !dbg !219
  %v_fetch.sroa.50.16.copyload1738 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.11014.sroa_idx, align 4, !dbg !219
  %v_fetch.sroa.54.16.gep.1.11014.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4358, !dbg !219
  %v_fetch.sroa.54.16.copyload1744 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.11014.sroa_idx, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.11014.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4360, !dbg !219
  %v_fetch.sroa.58.16.copyload1750 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.11014.sroa_idx, align 8, !dbg !219
  %v_fetch.sroa.62.16.gep.1.11014.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4362, !dbg !219
  %v_fetch.sroa.62.16.copyload1756 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.11014.sroa_idx, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.11014.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4364, !dbg !219
  %v_fetch.sroa.66.16.copyload1762 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.11014.sroa_idx, align 4, !dbg !219
  %v_fetch.sroa.70.16.gep.1.11014.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4366, !dbg !219
  %v_fetch.sroa.70.16.copyload1768 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.11014.sroa_idx, align 2, !dbg !219, !tbaa !30
  %add.ptr495.idx.11020 = shl nuw nsw i32 %188, 3, !dbg !220
  %add.ptr495.11021 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 %add.ptr495.idx.11020, !dbg !220
  %v_column.sroa.66.0.insert.ext1577 = zext i16 %v_fetch.sroa.38.16.copyload1729 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1578 = shl nuw i32 %v_column.sroa.66.0.insert.ext1577, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1438 = zext i16 %v_fetch.sroa.0.0.copyload1660 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1440 = or disjoint i32 %v_column.sroa.66.0.insert.shift1578, %v_column.sroa.0.0.insert.ext1438, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1440, ptr addrspace(3) %add.ptr495.11021, align 4, !dbg !221, !tbaa !30
  %xor486.1.11026 = shl nuw nsw i32 %188, 3, !dbg !220
  %add.ptr495.idx.1.11027 = xor i32 %xor486.1.11026, 8, !dbg !220
  %add.ptr495.1.11028 = getelementptr inbounds i8, ptr addrspace(3) %171, i32 %add.ptr495.idx.1.11027, !dbg !220
  %v_column.sroa.66.0.insert.ext1582 = zext i16 %v_fetch.sroa.46.16.copyload1732 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1583 = shl nuw i32 %v_column.sroa.66.0.insert.ext1582, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1442 = zext i16 %v_fetch.sroa.10.0.copyload1665 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1444 = or disjoint i32 %v_column.sroa.66.0.insert.shift1583, %v_column.sroa.0.0.insert.ext1442, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1444, ptr addrspace(3) %add.ptr495.1.11028, align 4, !dbg !221, !tbaa !30
  %xor486.2.11033 = shl nuw nsw i32 %188, 3, !dbg !220
  %add.ptr495.idx.2.11034 = xor i32 %xor486.2.11033, 16, !dbg !220
  %add.ptr495.2.11035 = getelementptr inbounds i8, ptr addrspace(3) %172, i32 %add.ptr495.idx.2.11034, !dbg !220
  %v_column.sroa.66.0.insert.ext1587 = zext i16 %v_fetch.sroa.50.16.copyload1738 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1588 = shl nuw i32 %v_column.sroa.66.0.insert.ext1587, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1446 = zext i16 %v_fetch.sroa.14.0.copyload1674 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1448 = or disjoint i32 %v_column.sroa.66.0.insert.shift1588, %v_column.sroa.0.0.insert.ext1446, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1448, ptr addrspace(3) %add.ptr495.2.11035, align 4, !dbg !221, !tbaa !30
  %xor486.3.11040 = shl nuw nsw i32 %188, 3, !dbg !220
  %add.ptr495.idx.3.11041 = xor i32 %xor486.3.11040, 24, !dbg !220
  %add.ptr495.3.11042 = getelementptr inbounds i8, ptr addrspace(3) %173, i32 %add.ptr495.idx.3.11041, !dbg !220
  %v_column.sroa.66.0.insert.ext1592 = zext i16 %v_fetch.sroa.54.16.copyload1744 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1593 = shl nuw i32 %v_column.sroa.66.0.insert.ext1592, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1450 = zext i16 %v_fetch.sroa.18.0.copyload1683 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1452 = or disjoint i32 %v_column.sroa.66.0.insert.shift1593, %v_column.sroa.0.0.insert.ext1450, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1452, ptr addrspace(3) %add.ptr495.3.11042, align 4, !dbg !221, !tbaa !30
  %xor486.4.11047 = shl nuw nsw i32 %188, 3, !dbg !220
  %add.ptr495.idx.4.11048 = xor i32 %xor486.4.11047, 32, !dbg !220
  %add.ptr495.4.11049 = getelementptr inbounds i8, ptr addrspace(3) %174, i32 %add.ptr495.idx.4.11048, !dbg !220
  %v_column.sroa.66.0.insert.ext1597 = zext i16 %v_fetch.sroa.58.16.copyload1750 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1598 = shl nuw i32 %v_column.sroa.66.0.insert.ext1597, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1454 = zext i16 %v_fetch.sroa.22.0.copyload1692 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1456 = or disjoint i32 %v_column.sroa.66.0.insert.shift1598, %v_column.sroa.0.0.insert.ext1454, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1456, ptr addrspace(3) %add.ptr495.4.11049, align 4, !dbg !221, !tbaa !30
  %xor486.5.11054 = shl nuw nsw i32 %188, 3, !dbg !220
  %add.ptr495.idx.5.11055 = xor i32 %xor486.5.11054, 40, !dbg !220
  %add.ptr495.5.11056 = getelementptr inbounds i8, ptr addrspace(3) %175, i32 %add.ptr495.idx.5.11055, !dbg !220
  %v_column.sroa.66.0.insert.ext1602 = zext i16 %v_fetch.sroa.62.16.copyload1756 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1603 = shl nuw i32 %v_column.sroa.66.0.insert.ext1602, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1458 = zext i16 %v_fetch.sroa.26.0.copyload1701 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1460 = or disjoint i32 %v_column.sroa.66.0.insert.shift1603, %v_column.sroa.0.0.insert.ext1458, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1460, ptr addrspace(3) %add.ptr495.5.11056, align 4, !dbg !221, !tbaa !30
  %xor486.6.11061 = shl nuw nsw i32 %188, 3, !dbg !220
  %add.ptr495.idx.6.11062 = xor i32 %xor486.6.11061, 48, !dbg !220
  %add.ptr495.6.11063 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 %add.ptr495.idx.6.11062, !dbg !220
  %v_column.sroa.66.0.insert.ext1607 = zext i16 %v_fetch.sroa.66.16.copyload1762 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1608 = shl nuw i32 %v_column.sroa.66.0.insert.ext1607, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1462 = zext i16 %v_fetch.sroa.30.0.copyload1710 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1464 = or disjoint i32 %v_column.sroa.66.0.insert.shift1608, %v_column.sroa.0.0.insert.ext1462, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1464, ptr addrspace(3) %add.ptr495.6.11063, align 4, !dbg !221, !tbaa !30
  %xor486.7.11068 = shl nuw nsw i32 %188, 3, !dbg !220
  %add.ptr495.idx.7.11069 = xor i32 %xor486.7.11068, 56, !dbg !220
  %add.ptr495.7.11070 = getelementptr inbounds i8, ptr addrspace(3) %177, i32 %add.ptr495.idx.7.11069, !dbg !220
  %v_column.sroa.66.0.insert.ext1612 = zext i16 %v_fetch.sroa.70.16.copyload1768 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1613 = shl nuw i32 %v_column.sroa.66.0.insert.ext1612, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1466 = zext i16 %v_fetch.sroa.34.0.copyload1719 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1468 = or disjoint i32 %v_column.sroa.66.0.insert.shift1613, %v_column.sroa.0.0.insert.ext1466, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1468, ptr addrspace(3) %add.ptr495.7.11070, align 4, !dbg !221, !tbaa !30
  %190 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4224, !dbg !218
  %v_fetch.sroa.0.0.copyload1661 = load i16, ptr addrspace(4) %190, align 16, !dbg !219
  %v_fetch.sroa.10.0..sroa_idx1666 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4226, !dbg !219
  %v_fetch.sroa.10.0.copyload1667 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1666, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1675 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4228, !dbg !219
  %v_fetch.sroa.14.0.copyload1676 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1675, align 4, !dbg !219
  %v_fetch.sroa.18.0..sroa_idx1684 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4230, !dbg !219
  %v_fetch.sroa.18.0.copyload1685 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1684, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1693 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4232, !dbg !219
  %v_fetch.sroa.22.0.copyload1694 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1693, align 8, !dbg !219
  %v_fetch.sroa.26.0..sroa_idx1702 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4234, !dbg !219
  %v_fetch.sroa.26.0.copyload1703 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1702, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1711 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4236, !dbg !219
  %v_fetch.sroa.30.0.copyload1712 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1711, align 4, !dbg !219
  %v_fetch.sroa.34.0..sroa_idx1720 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4238, !dbg !219
  %v_fetch.sroa.34.0.copyload1721 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1720, align 2, !dbg !219, !tbaa !30
  %gep.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4480, !dbg !218
  %v_fetch.sroa.38.16.copyload1730 = load i16, ptr addrspace(4) %gep.1.1.1, align 16, !dbg !219
  %v_fetch.sroa.46.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4482, !dbg !219
  %v_fetch.sroa.46.16.copyload1733 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.1.1.sroa_idx, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4484, !dbg !219
  %v_fetch.sroa.50.16.copyload1739 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.1.1.sroa_idx, align 4, !dbg !219
  %v_fetch.sroa.54.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4486, !dbg !219
  %v_fetch.sroa.54.16.copyload1745 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.1.1.sroa_idx, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4488, !dbg !219
  %v_fetch.sroa.58.16.copyload1751 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.1.1.sroa_idx, align 8, !dbg !219
  %v_fetch.sroa.62.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4490, !dbg !219
  %v_fetch.sroa.62.16.copyload1757 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.1.1.sroa_idx, align 2, !dbg !219, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4492, !dbg !219
  %v_fetch.sroa.66.16.copyload1763 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.1.1.sroa_idx, align 4, !dbg !219
  %v_fetch.sroa.70.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4494, !dbg !219
  %v_fetch.sroa.70.16.copyload1769 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.1.1.sroa_idx, align 2, !dbg !219, !tbaa !30
  %add.ptr495.11007.1 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 %add.ptr495.idx.11020, !dbg !220
  %v_column.sroa.66.0.insert.ext1617 = zext i16 %v_fetch.sroa.38.16.copyload1730 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1618 = shl nuw i32 %v_column.sroa.66.0.insert.ext1617, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1470 = zext i16 %v_fetch.sroa.0.0.copyload1661 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1472 = or disjoint i32 %v_column.sroa.66.0.insert.shift1618, %v_column.sroa.0.0.insert.ext1470, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1472, ptr addrspace(3) %add.ptr495.11007.1, align 4, !dbg !221, !tbaa !30
  %add.ptr495.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %181, i32 %add.ptr495.idx.1.11027, !dbg !220
  %v_column.sroa.66.0.insert.ext1622 = zext i16 %v_fetch.sroa.46.16.copyload1733 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1623 = shl nuw i32 %v_column.sroa.66.0.insert.ext1622, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1474 = zext i16 %v_fetch.sroa.10.0.copyload1667 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1476 = or disjoint i32 %v_column.sroa.66.0.insert.shift1623, %v_column.sroa.0.0.insert.ext1474, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1476, ptr addrspace(3) %add.ptr495.1.1.1, align 4, !dbg !221, !tbaa !30
  %add.ptr495.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %182, i32 %add.ptr495.idx.2.11034, !dbg !220
  %v_column.sroa.66.0.insert.ext1627 = zext i16 %v_fetch.sroa.50.16.copyload1739 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1628 = shl nuw i32 %v_column.sroa.66.0.insert.ext1627, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1478 = zext i16 %v_fetch.sroa.14.0.copyload1676 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1480 = or disjoint i32 %v_column.sroa.66.0.insert.shift1628, %v_column.sroa.0.0.insert.ext1478, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1480, ptr addrspace(3) %add.ptr495.2.1.1, align 4, !dbg !221, !tbaa !30
  %add.ptr495.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %183, i32 %add.ptr495.idx.3.11041, !dbg !220
  %v_column.sroa.66.0.insert.ext1632 = zext i16 %v_fetch.sroa.54.16.copyload1745 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1633 = shl nuw i32 %v_column.sroa.66.0.insert.ext1632, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1482 = zext i16 %v_fetch.sroa.18.0.copyload1685 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1484 = or disjoint i32 %v_column.sroa.66.0.insert.shift1633, %v_column.sroa.0.0.insert.ext1482, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1484, ptr addrspace(3) %add.ptr495.3.1.1, align 4, !dbg !221, !tbaa !30
  %add.ptr495.4.1.1 = getelementptr inbounds i8, ptr addrspace(3) %184, i32 %add.ptr495.idx.4.11048, !dbg !220
  %v_column.sroa.66.0.insert.ext1637 = zext i16 %v_fetch.sroa.58.16.copyload1751 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1638 = shl nuw i32 %v_column.sroa.66.0.insert.ext1637, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1486 = zext i16 %v_fetch.sroa.22.0.copyload1694 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1488 = or disjoint i32 %v_column.sroa.66.0.insert.shift1638, %v_column.sroa.0.0.insert.ext1486, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1488, ptr addrspace(3) %add.ptr495.4.1.1, align 4, !dbg !221, !tbaa !30
  %add.ptr495.5.1.1 = getelementptr inbounds i8, ptr addrspace(3) %185, i32 %add.ptr495.idx.5.11055, !dbg !220
  %v_column.sroa.66.0.insert.ext1642 = zext i16 %v_fetch.sroa.62.16.copyload1757 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1643 = shl nuw i32 %v_column.sroa.66.0.insert.ext1642, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1490 = zext i16 %v_fetch.sroa.26.0.copyload1703 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1492 = or disjoint i32 %v_column.sroa.66.0.insert.shift1643, %v_column.sroa.0.0.insert.ext1490, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1492, ptr addrspace(3) %add.ptr495.5.1.1, align 4, !dbg !221, !tbaa !30
  %add.ptr495.6.1.1 = getelementptr inbounds i8, ptr addrspace(3) %186, i32 %add.ptr495.idx.6.11062, !dbg !220
  %v_column.sroa.66.0.insert.ext1647 = zext i16 %v_fetch.sroa.66.16.copyload1763 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1648 = shl nuw i32 %v_column.sroa.66.0.insert.ext1647, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1494 = zext i16 %v_fetch.sroa.30.0.copyload1712 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1496 = or disjoint i32 %v_column.sroa.66.0.insert.shift1648, %v_column.sroa.0.0.insert.ext1494, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1496, ptr addrspace(3) %add.ptr495.6.1.1, align 4, !dbg !221, !tbaa !30
  %add.ptr495.7.1.1 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 %add.ptr495.idx.7.11069, !dbg !220
  %v_column.sroa.66.0.insert.ext1652 = zext i16 %v_fetch.sroa.70.16.copyload1769 to i32, !dbg !221
  %v_column.sroa.66.0.insert.shift1653 = shl nuw i32 %v_column.sroa.66.0.insert.ext1652, 16, !dbg !221
  %v_column.sroa.0.0.insert.ext1498 = zext i16 %v_fetch.sroa.34.0.copyload1721 to i32, !dbg !221
  %v_column.sroa.0.0.insert.insert1500 = or disjoint i32 %v_column.sroa.66.0.insert.shift1653, %v_column.sroa.0.0.insert.ext1498, !dbg !221
  store i32 %v_column.sroa.0.0.insert.insert1500, ptr addrspace(3) %add.ptr495.7.1.1, align 4, !dbg !221, !tbaa !30
  %add400 = fadd contract float %add395, %163, !dbg !222
  fence syncscope("warp") release, !dbg !223
  tail call void @llvm.mxc.barrier.warp(), !dbg !226
  fence syncscope("warp") acquire, !dbg !227
  br label %if.end505, !dbg !228

if.end505:                                        ; preds = %entry.if.end505_crit_edge, %for.cond.preheader
  %add553.pre-phi = phi i32 [ %.pre1916, %entry.if.end505_crit_edge ], [ %add478, %for.cond.preheader ]
  %.pre-phi1912 = phi i32 [ %.pre1911, %entry.if.end505_crit_edge ], [ %5, %for.cond.preheader ]
  %xor665.pre-phi = phi i32 [ %.pre1910, %entry.if.end505_crit_edge ], [ %xor87, %for.cond.preheader ]
  %and663.pre-phi = phi i32 [ %.pre1908, %entry.if.end505_crit_edge ], [ %and51, %for.cond.preheader ]
  %and660.pre-phi = phi i32 [ %.pre1907, %entry.if.end505_crit_edge ], [ %shr44, %for.cond.preheader ]
  %and655.pre-phi = phi i32 [ %.pre1906, %entry.if.end505_crit_edge ], [ %and40, %for.cond.preheader ]
  %shr652.pre-phi = phi i32 [ %.pre1905, %entry.if.end505_crit_edge ], [ %shr74, %for.cond.preheader ]
  %mul648.pre-phi = phi i32 [ %.pre1904, %entry.if.end505_crit_edge ], [ %mul69, %for.cond.preheader ]
  %.pre-phi = phi i32 [ %.pre, %entry.if.end505_crit_edge ], [ %3, %for.cond.preheader ]
  %probabilities.sroa.9.0 = phi <4 x half> [ undef, %entry.if.end505_crit_edge ], [ %151, %for.cond.preheader ]
  %probabilities.sroa.0.0 = phi <4 x half> [ undef, %entry.if.end505_crit_edge ], [ %135, %for.cond.preheader ]
  %denominator.sroa.0.1 = phi float [ 0.000000e+00, %entry.if.end505_crit_edge ], [ %add400, %for.cond.preheader ], !dbg !229
  %and538 = shl nuw nsw i32 %.pre-phi, 8
  %mul539 = and i32 %and538, 1792
  %mul546 = and i32 %.pre-phi1912, 32
  br i1 %or.cond, label %if.end584, label %for.cond528.preheader, !dbg !230

for.cond528.preheader:                            ; preds = %if.end505
  %xor559 = xor i32 %add553.pre-phi, %and655.pre-phi
  %add547 = or disjoint i32 %mul539, %mul546, !dbg !231
  %191 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add547, !dbg !232
  %add.ptr564.idx = shl nuw nsw i32 %xor559, 3, !dbg !232
  %add.ptr564 = getelementptr inbounds i8, ptr addrspace(3) %191, i32 %add.ptr564.idx, !dbg !232
  %v_operand.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr564, align 8, !dbg !233
  %192 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload, <4 x half> %probabilities.sroa.0.0, <4 x float> zeroinitializer), !dbg !234
  %add542.1 = or disjoint i32 %mul539, %mul546, !dbg !231
  %add547.1 = or disjoint i32 %add542.1, 64, !dbg !231
  %193 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add547.1, !dbg !232
  %xor560.1 = shl nsw i32 %xor559, 3, !dbg !232
  %add.ptr564.idx.1 = xor i32 %xor560.1, 8, !dbg !232
  %add.ptr564.1 = getelementptr inbounds i8, ptr addrspace(3) %193, i32 %add.ptr564.idx.1, !dbg !232
  %v_operand.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr564.1, align 8, !dbg !233
  %194 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.1, <4 x half> %probabilities.sroa.0.0, <4 x float> zeroinitializer), !dbg !234
  %add542.2 = or disjoint i32 %mul539, %mul546, !dbg !231
  %add547.2 = or disjoint i32 %add542.2, 128, !dbg !231
  %195 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add547.2, !dbg !232
  %xor560.2 = shl nsw i32 %xor559, 3, !dbg !232
  %add.ptr564.idx.2 = xor i32 %xor560.2, 16, !dbg !232
  %add.ptr564.2 = getelementptr inbounds i8, ptr addrspace(3) %195, i32 %add.ptr564.idx.2, !dbg !232
  %v_operand.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr564.2, align 8, !dbg !233
  %196 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.2, <4 x half> %probabilities.sroa.0.0, <4 x float> zeroinitializer), !dbg !234
  %add542.3 = or disjoint i32 %mul539, %mul546, !dbg !231
  %add547.3 = or disjoint i32 %add542.3, 192, !dbg !231
  %197 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add547.3, !dbg !232
  %xor560.3 = shl nsw i32 %xor559, 3, !dbg !232
  %add.ptr564.idx.3 = xor i32 %xor560.3, 24, !dbg !232
  %add.ptr564.3 = getelementptr inbounds i8, ptr addrspace(3) %197, i32 %add.ptr564.idx.3, !dbg !232
  %v_operand.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr564.3, align 8, !dbg !233
  %198 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.3, <4 x half> %probabilities.sroa.0.0, <4 x float> zeroinitializer), !dbg !234
  %add556.1 = add nuw nsw i32 %add553.pre-phi, 2
  %xor559.1 = xor i32 %add556.1, %and655.pre-phi
  %add.ptr564.idx.11073 = shl nuw nsw i32 %xor559.1, 3, !dbg !232
  %add.ptr564.11074 = getelementptr inbounds i8, ptr addrspace(3) %191, i32 %add.ptr564.idx.11073, !dbg !232
  %v_operand.sroa.0.0.copyload.11075 = load <4 x half>, ptr addrspace(3) %add.ptr564.11074, align 8, !dbg !233
  %199 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.11075, <4 x half> %probabilities.sroa.9.0, <4 x float> %192), !dbg !234
  %xor560.1.1 = shl nsw i32 %xor559.1, 3, !dbg !232
  %add.ptr564.idx.1.1 = xor i32 %xor560.1.1, 8, !dbg !232
  %add.ptr564.1.1 = getelementptr inbounds i8, ptr addrspace(3) %193, i32 %add.ptr564.idx.1.1, !dbg !232
  %v_operand.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr564.1.1, align 8, !dbg !233
  %200 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.1.1, <4 x half> %probabilities.sroa.9.0, <4 x float> %194), !dbg !234
  %xor560.2.1 = shl nsw i32 %xor559.1, 3, !dbg !232
  %add.ptr564.idx.2.1 = xor i32 %xor560.2.1, 16, !dbg !232
  %add.ptr564.2.1 = getelementptr inbounds i8, ptr addrspace(3) %195, i32 %add.ptr564.idx.2.1, !dbg !232
  %v_operand.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr564.2.1, align 8, !dbg !233
  %201 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.2.1, <4 x half> %probabilities.sroa.9.0, <4 x float> %196), !dbg !234
  %xor560.3.1 = shl nsw i32 %xor559.1, 3, !dbg !232
  %add.ptr564.idx.3.1 = xor i32 %xor560.3.1, 24, !dbg !232
  %add.ptr564.3.1 = getelementptr inbounds i8, ptr addrspace(3) %197, i32 %add.ptr564.idx.3.1, !dbg !232
  %v_operand.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr564.3.1, align 8, !dbg !233
  %202 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.3.1, <4 x half> %probabilities.sroa.9.0, <4 x float> %198), !dbg !234
  br label %if.end584, !dbg !235

if.end584:                                        ; preds = %for.cond528.preheader, %if.end505
  %numerator.sroa.122.0 = phi <4 x float> [ zeroinitializer, %if.end505 ], [ %202, %for.cond528.preheader ], !dbg !229
  %numerator.sroa.82.0 = phi <4 x float> [ zeroinitializer, %if.end505 ], [ %201, %for.cond528.preheader ], !dbg !229
  %numerator.sroa.42.0 = phi <4 x float> [ zeroinitializer, %if.end505 ], [ %200, %for.cond528.preheader ], !dbg !229
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %if.end505 ], [ %199, %for.cond528.preheader ], !dbg !229
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !236
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !236
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !236
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !236
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %denominator.sroa.0.1, !dbg !237
  %div603 = fdiv contract float %numerator.sroa.0.4.vec.extract, %denominator.sroa.0.1, !dbg !238
  %div607 = fdiv contract float %numerator.sroa.0.8.vec.extract, %denominator.sroa.0.1, !dbg !239
  %div611 = fdiv contract float %numerator.sroa.0.12.vec.extract, %denominator.sroa.0.1, !dbg !240
  %numerator.sroa.42.16.vec.extract = extractelement <4 x float> %numerator.sroa.42.0, i64 0, !dbg !236
  %numerator.sroa.42.20.vec.extract = extractelement <4 x float> %numerator.sroa.42.0, i64 1, !dbg !236
  %numerator.sroa.42.24.vec.extract = extractelement <4 x float> %numerator.sroa.42.0, i64 2, !dbg !236
  %numerator.sroa.42.28.vec.extract = extractelement <4 x float> %numerator.sroa.42.0, i64 3, !dbg !236
  %div.1 = fdiv contract float %numerator.sroa.42.16.vec.extract, %denominator.sroa.0.1, !dbg !237
  %div603.1 = fdiv contract float %numerator.sroa.42.20.vec.extract, %denominator.sroa.0.1, !dbg !238
  %div607.1 = fdiv contract float %numerator.sroa.42.24.vec.extract, %denominator.sroa.0.1, !dbg !239
  %div611.1 = fdiv contract float %numerator.sroa.42.28.vec.extract, %denominator.sroa.0.1, !dbg !240
  %numerator.sroa.82.32.vec.extract = extractelement <4 x float> %numerator.sroa.82.0, i64 0, !dbg !236
  %numerator.sroa.82.36.vec.extract = extractelement <4 x float> %numerator.sroa.82.0, i64 1, !dbg !236
  %numerator.sroa.82.40.vec.extract = extractelement <4 x float> %numerator.sroa.82.0, i64 2, !dbg !236
  %numerator.sroa.82.44.vec.extract = extractelement <4 x float> %numerator.sroa.82.0, i64 3, !dbg !236
  %div.2 = fdiv contract float %numerator.sroa.82.32.vec.extract, %denominator.sroa.0.1, !dbg !237
  %div603.2 = fdiv contract float %numerator.sroa.82.36.vec.extract, %denominator.sroa.0.1, !dbg !238
  %div607.2 = fdiv contract float %numerator.sroa.82.40.vec.extract, %denominator.sroa.0.1, !dbg !239
  %div611.2 = fdiv contract float %numerator.sroa.82.44.vec.extract, %denominator.sroa.0.1, !dbg !240
  %numerator.sroa.122.48.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 0, !dbg !236
  %numerator.sroa.122.52.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 1, !dbg !236
  %numerator.sroa.122.56.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 2, !dbg !236
  %numerator.sroa.122.60.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 3, !dbg !236
  %div.3 = fdiv contract float %numerator.sroa.122.48.vec.extract, %denominator.sroa.0.1, !dbg !237
  %div603.3 = fdiv contract float %numerator.sroa.122.52.vec.extract, %denominator.sroa.0.1, !dbg !238
  %div607.3 = fdiv contract float %numerator.sroa.122.56.vec.extract, %denominator.sroa.0.1, !dbg !239
  %div611.3 = fdiv contract float %numerator.sroa.122.60.vec.extract, %denominator.sroa.0.1, !dbg !240
  fence syncscope("warp") release, !dbg !241
  tail call void @llvm.mxc.barrier.warp(), !dbg !244
  fence syncscope("warp") acquire, !dbg !245
  %203 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !250
  %204 = fptrunc float %div to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %203), !dbg !246, !noalias !250
  %205 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !250
  %206 = fptrunc float %div603 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %205), !dbg !255, !noalias !250
  %207 = bitcast half %204 to i16, !dbg !257
  %208 = bitcast half %206 to i16, !dbg !260
  %209 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !265
  %210 = fptrunc float %div607 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %209), !dbg !261, !noalias !265
  %211 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !265
  %212 = fptrunc float %div611 to half, !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %211), !dbg !270, !noalias !265
  %213 = bitcast half %210 to i16, !dbg !272
  %214 = bitcast half %212 to i16, !dbg !274
  %__7.sroa.6.0.insert.ext = zext i16 %214 to i64, !dbg !275
  %__7.sroa.6.0.insert.shift = shl nuw i64 %__7.sroa.6.0.insert.ext, 48, !dbg !275
  %__7.sroa.5.0.insert.ext = zext i16 %213 to i64, !dbg !275
  %__7.sroa.5.0.insert.shift = shl nuw nsw i64 %__7.sroa.5.0.insert.ext, 32, !dbg !275
  %__7.sroa.5.0.insert.insert = or disjoint i64 %__7.sroa.6.0.insert.shift, %__7.sroa.5.0.insert.shift, !dbg !275
  %__7.sroa.4.0.insert.ext = zext i16 %208 to i64, !dbg !275
  %__7.sroa.4.0.insert.shift = shl nuw nsw i64 %__7.sroa.4.0.insert.ext, 16, !dbg !275
  %__7.sroa.4.0.insert.insert = or disjoint i64 %__7.sroa.5.0.insert.insert, %__7.sroa.4.0.insert.shift, !dbg !275
  %__7.sroa.0.0.insert.ext = zext i16 %207 to i64, !dbg !275
  %__7.sroa.0.0.insert.insert = or disjoint i64 %__7.sroa.4.0.insert.insert, %__7.sroa.0.0.insert.ext, !dbg !275
  %xor656 = xor i32 %shr652.pre-phi, %and655.pre-phi, !dbg !276
  %215 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul648.pre-phi, !dbg !277
  %.idx969 = shl nuw nsw i32 %xor665.pre-phi, 3, !dbg !277
  %216 = getelementptr inbounds i8, ptr addrspace(3) %215, i32 %.idx969, !dbg !277
  %add.ptr670.idx = shl nuw nsw i32 %xor656, 4, !dbg !277
  %add.ptr670 = getelementptr inbounds i8, ptr addrspace(3) %216, i32 %add.ptr670.idx, !dbg !277
  store i64 %__7.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr670, align 8, !dbg !278
  %217 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !250
  %218 = fptrunc float %div.1 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %217), !dbg !246, !noalias !250
  %219 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !250
  %220 = fptrunc float %div603.1 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %219), !dbg !255, !noalias !250
  %221 = bitcast half %218 to i16, !dbg !257
  %222 = bitcast half %220 to i16, !dbg !260
  %223 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !265
  %224 = fptrunc float %div607.1 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %223), !dbg !261, !noalias !265
  %225 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !265
  %226 = fptrunc float %div611.1 to half, !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %225), !dbg !270, !noalias !265
  %227 = bitcast half %224 to i16, !dbg !272
  %228 = bitcast half %226 to i16, !dbg !274
  %__7.sroa.6.0.insert.ext.1 = zext i16 %228 to i64, !dbg !275
  %__7.sroa.6.0.insert.shift.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.1, 48, !dbg !275
  %__7.sroa.5.0.insert.ext.1 = zext i16 %227 to i64, !dbg !275
  %__7.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1, 32, !dbg !275
  %__7.sroa.5.0.insert.insert.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.1, %__7.sroa.5.0.insert.shift.1, !dbg !275
  %__7.sroa.4.0.insert.ext.1 = zext i16 %222 to i64, !dbg !275
  %__7.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1, 16, !dbg !275
  %__7.sroa.4.0.insert.insert.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.1, %__7.sroa.4.0.insert.shift.1, !dbg !275
  %__7.sroa.0.0.insert.ext.1 = zext i16 %221 to i64, !dbg !275
  %__7.sroa.0.0.insert.insert.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.1, %__7.sroa.0.0.insert.ext.1, !dbg !275
  %add653.1 = add nuw nsw i32 %shr652.pre-phi, 2, !dbg !279
  %xor656.1 = xor i32 %add653.1, %and655.pre-phi, !dbg !276
  %add.ptr670.idx.1 = shl nuw nsw i32 %xor656.1, 4, !dbg !277
  %add.ptr670.1 = getelementptr inbounds i8, ptr addrspace(3) %216, i32 %add.ptr670.idx.1, !dbg !277
  store i64 %__7.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr670.1, align 8, !dbg !278
  %229 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !250
  %230 = fptrunc float %div.2 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %229), !dbg !246, !noalias !250
  %231 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !250
  %232 = fptrunc float %div603.2 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %231), !dbg !255, !noalias !250
  %233 = bitcast half %230 to i16, !dbg !257
  %234 = bitcast half %232 to i16, !dbg !260
  %235 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !265
  %236 = fptrunc float %div607.2 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %235), !dbg !261, !noalias !265
  %237 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !265
  %238 = fptrunc float %div611.2 to half, !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %237), !dbg !270, !noalias !265
  %239 = bitcast half %236 to i16, !dbg !272
  %240 = bitcast half %238 to i16, !dbg !274
  %__7.sroa.6.0.insert.ext.2 = zext i16 %240 to i64, !dbg !275
  %__7.sroa.6.0.insert.shift.2 = shl nuw i64 %__7.sroa.6.0.insert.ext.2, 48, !dbg !275
  %__7.sroa.5.0.insert.ext.2 = zext i16 %239 to i64, !dbg !275
  %__7.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.2, 32, !dbg !275
  %__7.sroa.5.0.insert.insert.2 = or disjoint i64 %__7.sroa.6.0.insert.shift.2, %__7.sroa.5.0.insert.shift.2, !dbg !275
  %__7.sroa.4.0.insert.ext.2 = zext i16 %234 to i64, !dbg !275
  %__7.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.2, 16, !dbg !275
  %__7.sroa.4.0.insert.insert.2 = or disjoint i64 %__7.sroa.5.0.insert.insert.2, %__7.sroa.4.0.insert.shift.2, !dbg !275
  %__7.sroa.0.0.insert.ext.2 = zext i16 %233 to i64, !dbg !275
  %__7.sroa.0.0.insert.insert.2 = or disjoint i64 %__7.sroa.4.0.insert.insert.2, %__7.sroa.0.0.insert.ext.2, !dbg !275
  %add653.2 = add nuw nsw i32 %shr652.pre-phi, 4, !dbg !279
  %xor656.2 = xor i32 %add653.2, %and655.pre-phi, !dbg !276
  %add.ptr670.idx.2 = shl nuw nsw i32 %xor656.2, 4, !dbg !277
  %add.ptr670.2 = getelementptr inbounds i8, ptr addrspace(3) %216, i32 %add.ptr670.idx.2, !dbg !277
  store i64 %__7.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr670.2, align 8, !dbg !278
  %241 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !250
  %242 = fptrunc float %div.3 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %241), !dbg !246, !noalias !250
  %243 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !250
  %244 = fptrunc float %div603.3 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %243), !dbg !255, !noalias !250
  %245 = bitcast half %242 to i16, !dbg !257
  %246 = bitcast half %244 to i16, !dbg !260
  %247 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !265
  %248 = fptrunc float %div607.3 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %247), !dbg !261, !noalias !265
  %249 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !265
  %250 = fptrunc float %div611.3 to half, !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %249), !dbg !270, !noalias !265
  %251 = bitcast half %248 to i16, !dbg !272
  %252 = bitcast half %250 to i16, !dbg !274
  %__7.sroa.6.0.insert.ext.3 = zext i16 %252 to i64, !dbg !275
  %__7.sroa.6.0.insert.shift.3 = shl nuw i64 %__7.sroa.6.0.insert.ext.3, 48, !dbg !275
  %__7.sroa.5.0.insert.ext.3 = zext i16 %251 to i64, !dbg !275
  %__7.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.3, 32, !dbg !275
  %__7.sroa.5.0.insert.insert.3 = or disjoint i64 %__7.sroa.6.0.insert.shift.3, %__7.sroa.5.0.insert.shift.3, !dbg !275
  %__7.sroa.4.0.insert.ext.3 = zext i16 %246 to i64, !dbg !275
  %__7.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.3, 16, !dbg !275
  %__7.sroa.4.0.insert.insert.3 = or disjoint i64 %__7.sroa.5.0.insert.insert.3, %__7.sroa.4.0.insert.shift.3, !dbg !275
  %__7.sroa.0.0.insert.ext.3 = zext i16 %245 to i64, !dbg !275
  %__7.sroa.0.0.insert.insert.3 = or disjoint i64 %__7.sroa.4.0.insert.insert.3, %__7.sroa.0.0.insert.ext.3, !dbg !275
  %add653.3 = add nuw nsw i32 %shr652.pre-phi, 6, !dbg !279
  %xor656.3 = xor i32 %add653.3, %and655.pre-phi, !dbg !276
  %add.ptr670.idx.3 = shl nuw nsw i32 %xor656.3, 4, !dbg !277
  %add.ptr670.3 = getelementptr inbounds i8, ptr addrspace(3) %216, i32 %add.ptr670.idx.3, !dbg !277
  store i64 %__7.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr670.3, align 8, !dbg !278
  br i1 %or.cond, label %if.end622.1, label %for.cond528.preheader.1, !dbg !230

for.cond528.preheader.1:                          ; preds = %if.end584
  %xor559.11079 = xor i32 %add553.pre-phi, %and655.pre-phi
  %add540.1 = or disjoint i32 %mul539, %mul546, !dbg !231
  %add547.11080 = or disjoint i32 %add540.1, 2048, !dbg !231
  %253 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add547.11080, !dbg !232
  %add.ptr564.idx.11081 = shl nuw nsw i32 %xor559.11079, 3, !dbg !232
  %add.ptr564.11082 = getelementptr inbounds i8, ptr addrspace(3) %253, i32 %add.ptr564.idx.11081, !dbg !232
  %v_operand.sroa.0.0.copyload.11083 = load <4 x half>, ptr addrspace(3) %add.ptr564.11082, align 8, !dbg !233
  %254 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.11083, <4 x half> %probabilities.sroa.0.0, <4 x float> zeroinitializer), !dbg !234
  %add542.1.11084 = or disjoint i32 %mul539, %mul546, !dbg !231
  %add547.1.11085 = or disjoint i32 %add542.1.11084, 2112, !dbg !231
  %255 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add547.1.11085, !dbg !232
  %xor560.1.11086 = shl nsw i32 %xor559.11079, 3, !dbg !232
  %add.ptr564.idx.1.11087 = xor i32 %xor560.1.11086, 8, !dbg !232
  %add.ptr564.1.11088 = getelementptr inbounds i8, ptr addrspace(3) %255, i32 %add.ptr564.idx.1.11087, !dbg !232
  %v_operand.sroa.0.0.copyload.1.11089 = load <4 x half>, ptr addrspace(3) %add.ptr564.1.11088, align 8, !dbg !233
  %256 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.1.11089, <4 x half> %probabilities.sroa.0.0, <4 x float> zeroinitializer), !dbg !234
  %add542.2.11091 = or disjoint i32 %mul539, %mul546, !dbg !231
  %add547.2.11092 = or disjoint i32 %add542.2.11091, 2176, !dbg !231
  %257 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add547.2.11092, !dbg !232
  %xor560.2.11093 = shl nsw i32 %xor559.11079, 3, !dbg !232
  %add.ptr564.idx.2.11094 = xor i32 %xor560.2.11093, 16, !dbg !232
  %add.ptr564.2.11095 = getelementptr inbounds i8, ptr addrspace(3) %257, i32 %add.ptr564.idx.2.11094, !dbg !232
  %v_operand.sroa.0.0.copyload.2.11096 = load <4 x half>, ptr addrspace(3) %add.ptr564.2.11095, align 8, !dbg !233
  %258 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.2.11096, <4 x half> %probabilities.sroa.0.0, <4 x float> zeroinitializer), !dbg !234
  %add542.3.11098 = or disjoint i32 %mul539, %mul546, !dbg !231
  %add547.3.11099 = or disjoint i32 %add542.3.11098, 2240, !dbg !231
  %259 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add547.3.11099, !dbg !232
  %xor560.3.11100 = shl nsw i32 %xor559.11079, 3, !dbg !232
  %add.ptr564.idx.3.11101 = xor i32 %xor560.3.11100, 24, !dbg !232
  %add.ptr564.3.11102 = getelementptr inbounds i8, ptr addrspace(3) %259, i32 %add.ptr564.idx.3.11101, !dbg !232
  %v_operand.sroa.0.0.copyload.3.11103 = load <4 x half>, ptr addrspace(3) %add.ptr564.3.11102, align 8, !dbg !233
  %260 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.3.11103, <4 x half> %probabilities.sroa.0.0, <4 x float> zeroinitializer), !dbg !234
  %add556.1.1 = add nuw nsw i32 %add553.pre-phi, 2
  %xor559.1.1 = xor i32 %add556.1.1, %and655.pre-phi
  %add.ptr564.idx.11073.1 = shl nuw nsw i32 %xor559.1.1, 3, !dbg !232
  %add.ptr564.11074.1 = getelementptr inbounds i8, ptr addrspace(3) %253, i32 %add.ptr564.idx.11073.1, !dbg !232
  %v_operand.sroa.0.0.copyload.11075.1 = load <4 x half>, ptr addrspace(3) %add.ptr564.11074.1, align 8, !dbg !233
  %261 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.11075.1, <4 x half> %probabilities.sroa.9.0, <4 x float> %254), !dbg !234
  %xor560.1.1.1 = shl nsw i32 %xor559.1.1, 3, !dbg !232
  %add.ptr564.idx.1.1.1 = xor i32 %xor560.1.1.1, 8, !dbg !232
  %add.ptr564.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %255, i32 %add.ptr564.idx.1.1.1, !dbg !232
  %v_operand.sroa.0.0.copyload.1.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr564.1.1.1, align 8, !dbg !233
  %262 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.1.1.1, <4 x half> %probabilities.sroa.9.0, <4 x float> %256), !dbg !234
  %xor560.2.1.1 = shl nsw i32 %xor559.1.1, 3, !dbg !232
  %add.ptr564.idx.2.1.1 = xor i32 %xor560.2.1.1, 16, !dbg !232
  %add.ptr564.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %257, i32 %add.ptr564.idx.2.1.1, !dbg !232
  %v_operand.sroa.0.0.copyload.2.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr564.2.1.1, align 8, !dbg !233
  %263 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.2.1.1, <4 x half> %probabilities.sroa.9.0, <4 x float> %258), !dbg !234
  %xor560.3.1.1 = shl nsw i32 %xor559.1.1, 3, !dbg !232
  %add.ptr564.idx.3.1.1 = xor i32 %xor560.3.1.1, 24, !dbg !232
  %add.ptr564.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %259, i32 %add.ptr564.idx.3.1.1, !dbg !232
  %v_operand.sroa.0.0.copyload.3.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr564.3.1.1, align 8, !dbg !233
  %264 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %v_operand.sroa.0.0.copyload.3.1.1, <4 x half> %probabilities.sroa.9.0, <4 x float> %260), !dbg !234
  br label %if.end622.1, !dbg !235

if.end622.1:                                      ; preds = %if.end584, %for.cond528.preheader.1
  %numerator.sroa.122.1 = phi <4 x float> [ zeroinitializer, %if.end584 ], [ %264, %for.cond528.preheader.1 ], !dbg !229
  %numerator.sroa.82.1 = phi <4 x float> [ zeroinitializer, %if.end584 ], [ %263, %for.cond528.preheader.1 ], !dbg !229
  %numerator.sroa.42.1 = phi <4 x float> [ zeroinitializer, %if.end584 ], [ %262, %for.cond528.preheader.1 ], !dbg !229
  %numerator.sroa.0.1 = phi <4 x float> [ zeroinitializer, %if.end584 ], [ %261, %for.cond528.preheader.1 ], !dbg !229
  %numerator.sroa.122.60.vec.extract1372 = extractelement <4 x float> %numerator.sroa.122.1, i64 3, !dbg !236
  %div611.3.1 = fdiv contract float %numerator.sroa.122.60.vec.extract1372, %denominator.sroa.0.1, !dbg !240
  %numerator.sroa.122.56.vec.extract1359 = extractelement <4 x float> %numerator.sroa.122.1, i64 2, !dbg !236
  %div607.3.1 = fdiv contract float %numerator.sroa.122.56.vec.extract1359, %denominator.sroa.0.1, !dbg !239
  %numerator.sroa.122.52.vec.extract1346 = extractelement <4 x float> %numerator.sroa.122.1, i64 1, !dbg !236
  %div603.3.1 = fdiv contract float %numerator.sroa.122.52.vec.extract1346, %denominator.sroa.0.1, !dbg !238
  %numerator.sroa.122.48.vec.extract1333 = extractelement <4 x float> %numerator.sroa.122.1, i64 0, !dbg !236
  %div.3.1 = fdiv contract float %numerator.sroa.122.48.vec.extract1333, %denominator.sroa.0.1, !dbg !237
  %numerator.sroa.82.44.vec.extract1316 = extractelement <4 x float> %numerator.sroa.82.1, i64 3, !dbg !236
  %div611.2.1 = fdiv contract float %numerator.sroa.82.44.vec.extract1316, %denominator.sroa.0.1, !dbg !240
  %numerator.sroa.82.40.vec.extract1303 = extractelement <4 x float> %numerator.sroa.82.1, i64 2, !dbg !236
  %div607.2.1 = fdiv contract float %numerator.sroa.82.40.vec.extract1303, %denominator.sroa.0.1, !dbg !239
  %numerator.sroa.82.36.vec.extract1290 = extractelement <4 x float> %numerator.sroa.82.1, i64 1, !dbg !236
  %div603.2.1 = fdiv contract float %numerator.sroa.82.36.vec.extract1290, %denominator.sroa.0.1, !dbg !238
  %numerator.sroa.82.32.vec.extract1277 = extractelement <4 x float> %numerator.sroa.82.1, i64 0, !dbg !236
  %div.2.1 = fdiv contract float %numerator.sroa.82.32.vec.extract1277, %denominator.sroa.0.1, !dbg !237
  %numerator.sroa.42.28.vec.extract1260 = extractelement <4 x float> %numerator.sroa.42.1, i64 3, !dbg !236
  %div611.1.1 = fdiv contract float %numerator.sroa.42.28.vec.extract1260, %denominator.sroa.0.1, !dbg !240
  %numerator.sroa.42.24.vec.extract1247 = extractelement <4 x float> %numerator.sroa.42.1, i64 2, !dbg !236
  %div607.1.1 = fdiv contract float %numerator.sroa.42.24.vec.extract1247, %denominator.sroa.0.1, !dbg !239
  %numerator.sroa.42.20.vec.extract1234 = extractelement <4 x float> %numerator.sroa.42.1, i64 1, !dbg !236
  %div603.1.1 = fdiv contract float %numerator.sroa.42.20.vec.extract1234, %denominator.sroa.0.1, !dbg !238
  %numerator.sroa.42.16.vec.extract1221 = extractelement <4 x float> %numerator.sroa.42.1, i64 0, !dbg !236
  %div.1.1 = fdiv contract float %numerator.sroa.42.16.vec.extract1221, %denominator.sroa.0.1, !dbg !237
  %numerator.sroa.0.12.vec.extract1204 = extractelement <4 x float> %numerator.sroa.0.1, i64 3, !dbg !236
  %div611.11116 = fdiv contract float %numerator.sroa.0.12.vec.extract1204, %denominator.sroa.0.1, !dbg !240
  %numerator.sroa.0.8.vec.extract1191 = extractelement <4 x float> %numerator.sroa.0.1, i64 2, !dbg !236
  %div607.11115 = fdiv contract float %numerator.sroa.0.8.vec.extract1191, %denominator.sroa.0.1, !dbg !239
  %numerator.sroa.0.4.vec.extract1178 = extractelement <4 x float> %numerator.sroa.0.1, i64 1, !dbg !236
  %div603.11114 = fdiv contract float %numerator.sroa.0.4.vec.extract1178, %denominator.sroa.0.1, !dbg !238
  %numerator.sroa.0.0.vec.extract1165 = extractelement <4 x float> %numerator.sroa.0.1, i64 0, !dbg !236
  %div.11113 = fdiv contract float %numerator.sroa.0.0.vec.extract1165, %denominator.sroa.0.1, !dbg !237
  %add649.1 = or disjoint i32 %mul648.pre-phi, 1024
  %265 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !250
  %266 = fptrunc float %div.11113 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %265), !dbg !246, !noalias !250
  %267 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !250
  %268 = fptrunc float %div603.11114 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %267), !dbg !255, !noalias !250
  %269 = bitcast half %266 to i16, !dbg !257
  %270 = bitcast half %268 to i16, !dbg !260
  %271 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !265
  %272 = fptrunc float %div607.11115 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %271), !dbg !261, !noalias !265
  %273 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !265
  %274 = fptrunc float %div611.11116 to half, !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %273), !dbg !270, !noalias !265
  %275 = bitcast half %272 to i16, !dbg !272
  %276 = bitcast half %274 to i16, !dbg !274
  %__7.sroa.6.0.insert.ext.11124 = zext i16 %276 to i64, !dbg !275
  %__7.sroa.6.0.insert.shift.11125 = shl nuw i64 %__7.sroa.6.0.insert.ext.11124, 48, !dbg !275
  %__7.sroa.5.0.insert.ext.11126 = zext i16 %275 to i64, !dbg !275
  %__7.sroa.5.0.insert.shift.11127 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.11126, 32, !dbg !275
  %__7.sroa.5.0.insert.insert.11128 = or disjoint i64 %__7.sroa.6.0.insert.shift.11125, %__7.sroa.5.0.insert.shift.11127, !dbg !275
  %__7.sroa.4.0.insert.ext.11129 = zext i16 %270 to i64, !dbg !275
  %__7.sroa.4.0.insert.shift.11130 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.11129, 16, !dbg !275
  %__7.sroa.4.0.insert.insert.11131 = or disjoint i64 %__7.sroa.5.0.insert.insert.11128, %__7.sroa.4.0.insert.shift.11130, !dbg !275
  %__7.sroa.0.0.insert.ext.11132 = zext i16 %269 to i64, !dbg !275
  %__7.sroa.0.0.insert.insert.11133 = or disjoint i64 %__7.sroa.4.0.insert.insert.11131, %__7.sroa.0.0.insert.ext.11132, !dbg !275
  %277 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add649.1, !dbg !277
  %xor666.1 = shl nuw nsw i32 %xor665.pre-phi, 3, !dbg !277
  %.idx969.11135 = xor i32 %xor666.1, 8, !dbg !277
  %278 = getelementptr inbounds i8, ptr addrspace(3) %277, i32 %.idx969.11135, !dbg !277
  %add.ptr670.11137 = getelementptr inbounds i8, ptr addrspace(3) %278, i32 %add.ptr670.idx, !dbg !277
  store i64 %__7.sroa.0.0.insert.insert.11133, ptr addrspace(3) %add.ptr670.11137, align 8, !dbg !278
  %279 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !250
  %280 = fptrunc float %div.1.1 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %279), !dbg !246, !noalias !250
  %281 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !250
  %282 = fptrunc float %div603.1.1 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %281), !dbg !255, !noalias !250
  %283 = bitcast half %280 to i16, !dbg !257
  %284 = bitcast half %282 to i16, !dbg !260
  %285 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !265
  %286 = fptrunc float %div607.1.1 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %285), !dbg !261, !noalias !265
  %287 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !265
  %288 = fptrunc float %div611.1.1 to half, !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %287), !dbg !270, !noalias !265
  %289 = bitcast half %286 to i16, !dbg !272
  %290 = bitcast half %288 to i16, !dbg !274
  %__7.sroa.6.0.insert.ext.1.1 = zext i16 %290 to i64, !dbg !275
  %__7.sroa.6.0.insert.shift.1.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.1.1, 48, !dbg !275
  %__7.sroa.5.0.insert.ext.1.1 = zext i16 %289 to i64, !dbg !275
  %__7.sroa.5.0.insert.shift.1.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1.1, 32, !dbg !275
  %__7.sroa.5.0.insert.insert.1.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.1.1, %__7.sroa.5.0.insert.shift.1.1, !dbg !275
  %__7.sroa.4.0.insert.ext.1.1 = zext i16 %284 to i64, !dbg !275
  %__7.sroa.4.0.insert.shift.1.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1.1, 16, !dbg !275
  %__7.sroa.4.0.insert.insert.1.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.1.1, %__7.sroa.4.0.insert.shift.1.1, !dbg !275
  %__7.sroa.0.0.insert.ext.1.1 = zext i16 %283 to i64, !dbg !275
  %__7.sroa.0.0.insert.insert.1.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.1.1, %__7.sroa.0.0.insert.ext.1.1, !dbg !275
  %add.ptr670.1.1 = getelementptr inbounds i8, ptr addrspace(3) %278, i32 %add.ptr670.idx.1, !dbg !277
  store i64 %__7.sroa.0.0.insert.insert.1.1, ptr addrspace(3) %add.ptr670.1.1, align 8, !dbg !278
  %291 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !250
  %292 = fptrunc float %div.2.1 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %291), !dbg !246, !noalias !250
  %293 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !250
  %294 = fptrunc float %div603.2.1 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %293), !dbg !255, !noalias !250
  %295 = bitcast half %292 to i16, !dbg !257
  %296 = bitcast half %294 to i16, !dbg !260
  %297 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !265
  %298 = fptrunc float %div607.2.1 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %297), !dbg !261, !noalias !265
  %299 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !265
  %300 = fptrunc float %div611.2.1 to half, !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %299), !dbg !270, !noalias !265
  %301 = bitcast half %298 to i16, !dbg !272
  %302 = bitcast half %300 to i16, !dbg !274
  %__7.sroa.6.0.insert.ext.2.1 = zext i16 %302 to i64, !dbg !275
  %__7.sroa.6.0.insert.shift.2.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.2.1, 48, !dbg !275
  %__7.sroa.5.0.insert.ext.2.1 = zext i16 %301 to i64, !dbg !275
  %__7.sroa.5.0.insert.shift.2.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.2.1, 32, !dbg !275
  %__7.sroa.5.0.insert.insert.2.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.2.1, %__7.sroa.5.0.insert.shift.2.1, !dbg !275
  %__7.sroa.4.0.insert.ext.2.1 = zext i16 %296 to i64, !dbg !275
  %__7.sroa.4.0.insert.shift.2.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.2.1, 16, !dbg !275
  %__7.sroa.4.0.insert.insert.2.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.2.1, %__7.sroa.4.0.insert.shift.2.1, !dbg !275
  %__7.sroa.0.0.insert.ext.2.1 = zext i16 %295 to i64, !dbg !275
  %__7.sroa.0.0.insert.insert.2.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.2.1, %__7.sroa.0.0.insert.ext.2.1, !dbg !275
  %add.ptr670.2.1 = getelementptr inbounds i8, ptr addrspace(3) %278, i32 %add.ptr670.idx.2, !dbg !277
  store i64 %__7.sroa.0.0.insert.insert.2.1, ptr addrspace(3) %add.ptr670.2.1, align 8, !dbg !278
  %303 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !250
  %304 = fptrunc float %div.3.1 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %303), !dbg !246, !noalias !250
  %305 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !250
  %306 = fptrunc float %div603.3.1 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %305), !dbg !255, !noalias !250
  %307 = bitcast half %304 to i16, !dbg !257
  %308 = bitcast half %306 to i16, !dbg !260
  %309 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !265
  %310 = fptrunc float %div607.3.1 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %309), !dbg !261, !noalias !265
  %311 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !265
  %312 = fptrunc float %div611.3.1 to half, !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %311), !dbg !270, !noalias !265
  %313 = bitcast half %310 to i16, !dbg !272
  %314 = bitcast half %312 to i16, !dbg !274
  %__7.sroa.6.0.insert.ext.3.1 = zext i16 %314 to i64, !dbg !275
  %__7.sroa.6.0.insert.shift.3.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.3.1, 48, !dbg !275
  %__7.sroa.5.0.insert.ext.3.1 = zext i16 %313 to i64, !dbg !275
  %__7.sroa.5.0.insert.shift.3.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.3.1, 32, !dbg !275
  %__7.sroa.5.0.insert.insert.3.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.3.1, %__7.sroa.5.0.insert.shift.3.1, !dbg !275
  %__7.sroa.4.0.insert.ext.3.1 = zext i16 %308 to i64, !dbg !275
  %__7.sroa.4.0.insert.shift.3.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.3.1, 16, !dbg !275
  %__7.sroa.4.0.insert.insert.3.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.3.1, %__7.sroa.4.0.insert.shift.3.1, !dbg !275
  %__7.sroa.0.0.insert.ext.3.1 = zext i16 %307 to i64, !dbg !275
  %__7.sroa.0.0.insert.insert.3.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.3.1, %__7.sroa.0.0.insert.ext.3.1, !dbg !275
  %add.ptr670.3.1 = getelementptr inbounds i8, ptr addrspace(3) %278, i32 %add.ptr670.idx.3, !dbg !277
  store i64 %__7.sroa.0.0.insert.insert.3.1, ptr addrspace(3) %add.ptr670.3.1, align 8, !dbg !278
  fence syncscope("warp") release, !dbg !280
  tail call void @llvm.mxc.barrier.warp(), !dbg !283
  fence syncscope("warp") acquire, !dbg !284
  %315 = shl nuw nsw i32 %.pre-phi, 7
  %mul688 = and i32 %315, 1024
  %mul693 = and i32 %.pre-phi1912, 4032
  %shr709 = and i32 %and663.pre-phi, 1
  %mul725 = shl nsw i32 %0, 21
  %mul727 = shl nsw i32 %1, 11
  %add728 = add nuw nsw i32 %mul725, %mul727
  %mul732 = shl nuw nsw i32 %.pre-phi, 3
  %add730 = add nuw nsw i32 %add728, %mul732
  %316 = zext nneg i32 %add730 to i64, !dbg !285
  %xor702 = xor i32 %and660.pre-phi, %and655.pre-phi
  %317 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul693, !dbg !286
  %318 = getelementptr inbounds %struct.__half, ptr addrspace(3) %317, i32 %mul688, !dbg !286
  %.idx971 = shl nuw nsw i32 %xor702, 4, !dbg !286
  %319 = getelementptr inbounds i8, ptr addrspace(3) %318, i32 %.idx971, !dbg !286
  %add.ptr714.idx = shl nuw nsw i32 %shr709, 3, !dbg !286
  %add.ptr714 = getelementptr inbounds i8, ptr addrspace(3) %319, i32 %add.ptr714.idx, !dbg !286
  %320 = load i64, ptr addrspace(3) %add.ptr714, align 8, !dbg !287
  %xor710.1 = shl nuw nsw i32 %shr709, 3, !dbg !286
  %add.ptr714.idx.1 = xor i32 %xor710.1, 8, !dbg !286
  %add.ptr714.1 = getelementptr inbounds i8, ptr addrspace(3) %319, i32 %add.ptr714.idx.1, !dbg !286
  %321 = load i64, ptr addrspace(3) %add.ptr714.1, align 8, !dbg !287
  %add.ptr735 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %316, !dbg !288
  store i64 %320, ptr addrspace(1) %add.ptr735, align 16, !dbg !289
  %output_fetch.sroa.10.0.add.ptr735.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr735, i64 8, !dbg !289
  store i64 %321, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr735.sroa_idx, align 8, !dbg !289
  %add701.1 = add nuw nsw i32 %and660.pre-phi, 4
  %xor702.1 = xor i32 %add701.1, %and655.pre-phi
  %322 = getelementptr inbounds i8, ptr addrspace(3) %318, i32 512, !dbg !286
  %.idx971.11144 = shl nuw nsw i32 %xor702.1, 4, !dbg !286
  %323 = getelementptr inbounds i8, ptr addrspace(3) %322, i32 %.idx971.11144, !dbg !286
  %add.ptr714.11146 = getelementptr inbounds i8, ptr addrspace(3) %323, i32 %add.ptr714.idx, !dbg !286
  %324 = load i64, ptr addrspace(3) %add.ptr714.11146, align 8, !dbg !287
  %add.ptr714.1.1 = getelementptr inbounds i8, ptr addrspace(3) %323, i32 %add.ptr714.idx.1, !dbg !286
  %325 = load i64, ptr addrspace(3) %add.ptr714.1.1, align 8, !dbg !287
  %326 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %316, !dbg !288
  %add.ptr735.1 = getelementptr inbounds i8, ptr addrspace(1) %326, i64 1024, !dbg !288
  store i64 %324, ptr addrspace(1) %add.ptr735.1, align 16, !dbg !289
  %output_fetch.sroa.10.0.add.ptr735.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %326, i64 1032, !dbg !289
  store i64 %325, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr735.1.sroa_idx, align 8, !dbg !289
  %327 = getelementptr inbounds i8, ptr addrspace(3) %318, i32 1024, !dbg !286
  %328 = getelementptr inbounds i8, ptr addrspace(3) %327, i32 %.idx971, !dbg !286
  %add.ptr714.2 = getelementptr inbounds i8, ptr addrspace(3) %328, i32 %add.ptr714.idx.1, !dbg !286
  %329 = load i64, ptr addrspace(3) %add.ptr714.2, align 8, !dbg !287
  %add.ptr714.1.2 = getelementptr inbounds i8, ptr addrspace(3) %328, i32 %add.ptr714.idx, !dbg !286
  %330 = load i64, ptr addrspace(3) %add.ptr714.1.2, align 8, !dbg !287
  %331 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %316, !dbg !288
  %add.ptr735.2 = getelementptr inbounds i8, ptr addrspace(1) %331, i64 2048, !dbg !288
  store i64 %329, ptr addrspace(1) %add.ptr735.2, align 16, !dbg !289
  %output_fetch.sroa.10.0.add.ptr735.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %331, i64 2056, !dbg !289
  store i64 %330, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr735.2.sroa_idx, align 8, !dbg !289
  %332 = getelementptr inbounds i8, ptr addrspace(3) %318, i32 1536, !dbg !286
  %333 = getelementptr inbounds i8, ptr addrspace(3) %332, i32 %.idx971.11144, !dbg !286
  %add.ptr714.3 = getelementptr inbounds i8, ptr addrspace(3) %333, i32 %add.ptr714.idx.1, !dbg !286
  %334 = load i64, ptr addrspace(3) %add.ptr714.3, align 8, !dbg !287
  %add.ptr714.1.3 = getelementptr inbounds i8, ptr addrspace(3) %333, i32 %add.ptr714.idx, !dbg !286
  %335 = load i64, ptr addrspace(3) %add.ptr714.1.3, align 8, !dbg !287
  %336 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %316, !dbg !288
  %add.ptr735.3 = getelementptr inbounds i8, ptr addrspace(1) %336, i64 3072, !dbg !288
  store i64 %334, ptr addrspace(1) %add.ptr735.3, align 16, !dbg !289
  %output_fetch.sroa.10.0.add.ptr735.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %336, i64 3080, !dbg !289
  store i64 %335, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr735.3.sroa_idx, align 8, !dbg !289
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v118_worker1_c6_num16_v4_plane_lifetimes_sc-16g-2/codegen/candidate118/case6.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v118_worker1_c6_num16_v4_plane_lifetimes_sc-16g-2/codegen/candidate118/case6.device.cpp", directory: "/root/tilelang-metax")
!42 = !DILocation(line: 78, column: 3, scope: !43, inlinedAt: !45)
!43 = distinct !DISubprogram(name: "__fetch_builtin_y", scope: !44, file: !44, line: 78, type: !7, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!44 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_builtin_vars.h", directory: "")
!45 = distinct !DILocation(line: 25, column: 38, scope: !40)
!46 = !DILocation(line: 25, column: 50, scope: !40)
!47 = !DILocation(line: 77, column: 3, scope: !48, inlinedAt: !49)
!48 = distinct !DISubprogram(name: "__fetch_builtin_x", scope: !44, file: !44, line: 77, type: !7, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!49 = distinct !DILocation(line: 25, column: 66, scope: !40)
!50 = !DILocation(line: 25, column: 58, scope: !40)
!51 = !DILocation(line: 25, column: 22, scope: !40)
!52 = !DILocation(line: 25, column: 80, scope: !40)
!53 = !DILocation(line: 27, column: 10, scope: !40)
!54 = !DILocation(line: 27, column: 26, scope: !40)
!55 = !{i32 0, i32 1024}
!56 = !DILocation(line: 29, column: 5, scope: !40)
!57 = !DILocation(line: 30, column: 45, scope: !40)
!58 = !DILocation(line: 30, column: 31, scope: !40)
!59 = !DILocation(line: 33, column: 26, scope: !40)
!60 = !DILocation(line: 33, column: 279, scope: !40)
!61 = !DILocation(line: 68, column: 3, scope: !62, inlinedAt: !64)
!62 = distinct !DISubprogram(name: "__barrier_warp", scope: !63, file: !63, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!63 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!64 = distinct !DILocation(line: 192, column: 3, scope: !65, inlinedAt: !66)
!65 = distinct !DISubprogram(name: "__syncwarp", scope: !63, file: !63, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!66 = distinct !DILocation(line: 36, column: 5, scope: !40)
!67 = !DILocation(line: 69, column: 3, scope: !62, inlinedAt: !64)
!68 = !DILocation(line: 70, column: 3, scope: !62, inlinedAt: !64)
!69 = !DILocation(line: 38, column: 174, scope: !40)
!70 = !DILocation(line: 38, column: 59, scope: !40)
!71 = !DILocation(line: 38, column: 40, scope: !40)
!72 = !DILocation(line: 38, column: 145, scope: !40)
!73 = !DILocation(line: 38, column: 86, scope: !40)
!74 = !DILocation(line: 68, column: 3, scope: !62, inlinedAt: !75)
!75 = distinct !DILocation(line: 192, column: 3, scope: !65, inlinedAt: !76)
!76 = distinct !DILocation(line: 40, column: 5, scope: !40)
!77 = !DILocation(line: 69, column: 3, scope: !62, inlinedAt: !75)
!78 = !DILocation(line: 70, column: 3, scope: !62, inlinedAt: !75)
!79 = !DILocation(line: 42, column: 10, scope: !40)
!80 = !DILocation(line: 43, column: 45, scope: !40)
!81 = !DILocation(line: 43, column: 31, scope: !40)
!82 = !DILocation(line: 46, column: 26, scope: !40)
!83 = !DILocation(line: 46, column: 293, scope: !40)
!84 = !DILocation(line: 68, column: 3, scope: !62, inlinedAt: !85)
!85 = distinct !DILocation(line: 192, column: 3, scope: !65, inlinedAt: !86)
!86 = distinct !DILocation(line: 49, column: 5, scope: !40)
!87 = !DILocation(line: 69, column: 3, scope: !62, inlinedAt: !85)
!88 = !DILocation(line: 70, column: 3, scope: !62, inlinedAt: !85)
!89 = !DILocation(line: 58, column: 32, scope: !40)
!90 = !DILocation(line: 60, column: 44, scope: !40)
!91 = !DILocation(line: 58, column: 51, scope: !40)
!92 = !DILocation(line: 71, column: 96, scope: !40)
!93 = !DILocation(line: 71, column: 13, scope: !40)
!94 = !DILocation(line: 71, column: 85, scope: !40)
!95 = !DILocation(line: 351, column: 10, scope: !96, inlinedAt: !98)
!96 = distinct !DISubprogram(name: "max", scope: !97, file: !97, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!97 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!98 = distinct !DILocation(line: 82, column: 20, scope: !40)
!99 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !101)
!100 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !63, file: !63, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!101 = distinct !DILocation(line: 84, column: 34, scope: !40)
!102 = !DILocation(line: 171, column: 37, scope: !103, inlinedAt: !104)
!103 = distinct !DISubprogram(name: "__lane_id", scope: !63, file: !63, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!104 = distinct !DILocation(line: 990, column: 14, scope: !105, inlinedAt: !106)
!105 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !63, file: !63, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!106 = distinct !DILocation(line: 1019, column: 11, scope: !100, inlinedAt: !101)
!107 = !DILocation(line: 171, column: 10, scope: !103, inlinedAt: !104)
!108 = !DILocation(line: 991, column: 20, scope: !105, inlinedAt: !106)
!109 = !DILocation(line: 992, column: 36, scope: !105, inlinedAt: !106)
!110 = !DILocation(line: 992, column: 17, scope: !105, inlinedAt: !106)
!111 = !DILocation(line: 992, column: 11, scope: !105, inlinedAt: !106)
!112 = !DILocation(line: 993, column: 43, scope: !105, inlinedAt: !106)
!113 = !DILocation(line: 993, column: 10, scope: !105, inlinedAt: !106)
!114 = !DILocation(line: 1020, column: 14, scope: !100, inlinedAt: !101)
!115 = !DILocation(line: 351, column: 10, scope: !96, inlinedAt: !116)
!116 = distinct !DILocation(line: 84, column: 18, scope: !40)
!117 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !118)
!118 = distinct !DILocation(line: 85, column: 34, scope: !40)
!119 = !DILocation(line: 171, column: 37, scope: !103, inlinedAt: !120)
!120 = distinct !DILocation(line: 990, column: 14, scope: !105, inlinedAt: !121)
!121 = distinct !DILocation(line: 1019, column: 11, scope: !100, inlinedAt: !118)
!122 = !DILocation(line: 171, column: 10, scope: !103, inlinedAt: !120)
!123 = !DILocation(line: 991, column: 20, scope: !105, inlinedAt: !121)
!124 = !DILocation(line: 992, column: 36, scope: !105, inlinedAt: !121)
!125 = !DILocation(line: 992, column: 17, scope: !105, inlinedAt: !121)
!126 = !DILocation(line: 992, column: 11, scope: !105, inlinedAt: !121)
!127 = !DILocation(line: 993, column: 43, scope: !105, inlinedAt: !121)
!128 = !DILocation(line: 993, column: 10, scope: !105, inlinedAt: !121)
!129 = !DILocation(line: 1020, column: 14, scope: !100, inlinedAt: !118)
!130 = !DILocation(line: 351, column: 10, scope: !96, inlinedAt: !131)
!131 = distinct !DILocation(line: 85, column: 18, scope: !40)
!132 = !DILocation(line: 97, column: 26, scope: !40)
!133 = !DILocation(line: 98, column: 26, scope: !40)
!134 = !DILocation(line: 99, column: 26, scope: !40)
!135 = !DILocation(line: 100, column: 26, scope: !40)
!136 = !DILocation(line: 102, column: 25, scope: !40)
!137 = !DILocation(line: 103, column: 25, scope: !40)
!138 = !DILocation(line: 104, column: 25, scope: !40)
!139 = !DILocation(line: 105, column: 25, scope: !40)
!140 = !DILocation(line: 107, column: 23, scope: !40)
!141 = !DILocation(line: 108, column: 23, scope: !40)
!142 = !DILocation(line: 109, column: 23, scope: !40)
!143 = !DILocation(line: 110, column: 23, scope: !40)
!144 = !DILocation(line: 285, column: 49, scope: !145, inlinedAt: !146)
!145 = distinct !DISubprogram(name: "exp2f", scope: !97, file: !97, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!146 = distinct !DILocation(line: 111, column: 15, scope: !40)
!147 = !DILocation(line: 285, column: 49, scope: !145, inlinedAt: !148)
!148 = distinct !DILocation(line: 112, column: 15, scope: !40)
!149 = !DILocation(line: 285, column: 49, scope: !145, inlinedAt: !150)
!150 = distinct !DILocation(line: 113, column: 15, scope: !40)
!151 = !DILocation(line: 285, column: 49, scope: !145, inlinedAt: !152)
!152 = distinct !DILocation(line: 114, column: 15, scope: !40)
!153 = !DILocation(line: 1007, column: 10, scope: !154, inlinedAt: !156)
!154 = distinct !DISubprogram(name: "__float2half_rn", scope: !155, file: !155, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!155 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!156 = distinct !DILocation(line: 1077, column: 18, scope: !157, inlinedAt: !158)
!157 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !155, file: !155, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!158 = distinct !DILocation(line: 1295, column: 23, scope: !159, inlinedAt: !160)
!159 = distinct !DISubprogram(name: "__float22half2_rn", scope: !155, file: !155, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!160 = distinct !DILocation(line: 115, column: 29, scope: !40)
!161 = !{!162, !164}
!162 = distinct !{!162, !163, !"_ZL17__floats2half2_rnff: %agg.result"}
!163 = distinct !{!163, !"_ZL17__floats2half2_rnff"}
!164 = distinct !{!164, !165, !"_ZL17__float22half2_rn6float2: %agg.result"}
!165 = distinct !{!165, !"_ZL17__float22half2_rn6float2"}
!166 = !DILocation(line: 1007, column: 10, scope: !154, inlinedAt: !167)
!167 = distinct !DILocation(line: 1077, column: 38, scope: !157, inlinedAt: !158)
!168 = !DILocation(line: 1007, column: 10, scope: !154, inlinedAt: !169)
!169 = distinct !DILocation(line: 1077, column: 18, scope: !157, inlinedAt: !170)
!170 = distinct !DILocation(line: 1295, column: 23, scope: !159, inlinedAt: !171)
!171 = distinct !DILocation(line: 116, column: 29, scope: !40)
!172 = !{!173, !175}
!173 = distinct !{!173, !174, !"_ZL17__floats2half2_rnff: %agg.result"}
!174 = distinct !{!174, !"_ZL17__floats2half2_rnff"}
!175 = distinct !{!175, !176, !"_ZL17__float22half2_rn6float2: %agg.result"}
!176 = distinct !{!176, !"_ZL17__float22half2_rn6float2"}
!177 = !DILocation(line: 1007, column: 10, scope: !154, inlinedAt: !178)
!178 = distinct !DILocation(line: 1077, column: 38, scope: !157, inlinedAt: !170)
!179 = !DILocation(line: 117, column: 51, scope: !40)
!180 = !DILocation(line: 1082, column: 16, scope: !181, inlinedAt: !182)
!181 = distinct !DISubprogram(name: "__half2float", scope: !155, file: !155, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!182 = distinct !DILocation(line: 136, column: 55, scope: !183, inlinedAt: !184)
!183 = distinct !DISubprogram(name: "operator float", scope: !155, file: !155, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!184 = distinct !DILocation(line: 121, column: 50, scope: !40)
!185 = !DILocation(line: 121, column: 40, scope: !40)
!186 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !187)
!187 = distinct !DILocation(line: 123, column: 40, scope: !40)
!188 = !DILocation(line: 171, column: 37, scope: !103, inlinedAt: !189)
!189 = distinct !DILocation(line: 990, column: 14, scope: !105, inlinedAt: !190)
!190 = distinct !DILocation(line: 1019, column: 11, scope: !100, inlinedAt: !187)
!191 = !DILocation(line: 171, column: 10, scope: !103, inlinedAt: !189)
!192 = !DILocation(line: 991, column: 20, scope: !105, inlinedAt: !190)
!193 = !DILocation(line: 992, column: 36, scope: !105, inlinedAt: !190)
!194 = !DILocation(line: 992, column: 17, scope: !105, inlinedAt: !190)
!195 = !DILocation(line: 992, column: 11, scope: !105, inlinedAt: !190)
!196 = !DILocation(line: 993, column: 43, scope: !105, inlinedAt: !190)
!197 = !DILocation(line: 993, column: 10, scope: !105, inlinedAt: !190)
!198 = !DILocation(line: 1020, column: 14, scope: !100, inlinedAt: !187)
!199 = !DILocation(line: 123, column: 38, scope: !40)
!200 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !201)
!201 = distinct !DILocation(line: 124, column: 40, scope: !40)
!202 = !DILocation(line: 171, column: 37, scope: !103, inlinedAt: !203)
!203 = distinct !DILocation(line: 990, column: 14, scope: !105, inlinedAt: !204)
!204 = distinct !DILocation(line: 1019, column: 11, scope: !100, inlinedAt: !201)
!205 = !DILocation(line: 171, column: 10, scope: !103, inlinedAt: !203)
!206 = !DILocation(line: 991, column: 20, scope: !105, inlinedAt: !204)
!207 = !DILocation(line: 992, column: 36, scope: !105, inlinedAt: !204)
!208 = !DILocation(line: 992, column: 17, scope: !105, inlinedAt: !204)
!209 = !DILocation(line: 992, column: 11, scope: !105, inlinedAt: !204)
!210 = !DILocation(line: 993, column: 43, scope: !105, inlinedAt: !204)
!211 = !DILocation(line: 993, column: 10, scope: !105, inlinedAt: !204)
!212 = !DILocation(line: 1020, column: 14, scope: !100, inlinedAt: !201)
!213 = !DILocation(line: 68, column: 3, scope: !62, inlinedAt: !214)
!214 = distinct !DILocation(line: 192, column: 3, scope: !65, inlinedAt: !215)
!215 = distinct !DILocation(line: 125, column: 5, scope: !40)
!216 = !DILocation(line: 69, column: 3, scope: !62, inlinedAt: !214)
!217 = !DILocation(line: 70, column: 3, scope: !62, inlinedAt: !214)
!218 = !DILocation(line: 132, column: 56, scope: !40)
!219 = !DILocation(line: 132, column: 42, scope: !40)
!220 = !DILocation(line: 139, column: 28, scope: !40)
!221 = !DILocation(line: 139, column: 285, scope: !40)
!222 = !DILocation(line: 124, column: 38, scope: !40)
!223 = !DILocation(line: 68, column: 3, scope: !62, inlinedAt: !224)
!224 = distinct !DILocation(line: 192, column: 3, scope: !65, inlinedAt: !225)
!225 = distinct !DILocation(line: 143, column: 5, scope: !40)
!226 = !DILocation(line: 69, column: 3, scope: !62, inlinedAt: !224)
!227 = !DILocation(line: 70, column: 3, scope: !62, inlinedAt: !224)
!228 = !DILocation(line: 144, column: 3, scope: !40)
!229 = !DILocation(line: 0, scope: !40)
!230 = !DILocation(line: 152, column: 28, scope: !40)
!231 = !DILocation(line: 157, column: 132, scope: !40)
!232 = !DILocation(line: 157, column: 55, scope: !40)
!233 = !DILocation(line: 157, column: 36, scope: !40)
!234 = !DILocation(line: 159, column: 46, scope: !40)
!235 = !DILocation(line: 167, column: 5, scope: !40)
!236 = !DILocation(line: 169, column: 23, scope: !40)
!237 = !DILocation(line: 171, column: 24, scope: !40)
!238 = !DILocation(line: 172, column: 24, scope: !40)
!239 = !DILocation(line: 173, column: 24, scope: !40)
!240 = !DILocation(line: 174, column: 24, scope: !40)
!241 = !DILocation(line: 68, column: 3, scope: !62, inlinedAt: !242)
!242 = distinct !DILocation(line: 192, column: 3, scope: !65, inlinedAt: !243)
!243 = distinct !DILocation(line: 178, column: 7, scope: !40)
!244 = !DILocation(line: 69, column: 3, scope: !62, inlinedAt: !242)
!245 = !DILocation(line: 70, column: 3, scope: !62, inlinedAt: !242)
!246 = !DILocation(line: 1007, column: 10, scope: !154, inlinedAt: !247)
!247 = distinct !DILocation(line: 1077, column: 18, scope: !157, inlinedAt: !248)
!248 = distinct !DILocation(line: 1295, column: 23, scope: !159, inlinedAt: !249)
!249 = distinct !DILocation(line: 184, column: 29, scope: !40)
!250 = !{!251, !253}
!251 = distinct !{!251, !252, !"_ZL17__floats2half2_rnff: %agg.result"}
!252 = distinct !{!252, !"_ZL17__floats2half2_rnff"}
!253 = distinct !{!253, !254, !"_ZL17__float22half2_rn6float2: %agg.result"}
!254 = distinct !{!254, !"_ZL17__float22half2_rn6float2"}
!255 = !DILocation(line: 1007, column: 10, scope: !154, inlinedAt: !256)
!256 = distinct !DILocation(line: 1077, column: 38, scope: !157, inlinedAt: !248)
!257 = !DILocation(line: 596, column: 67, scope: !258, inlinedAt: !259)
!258 = distinct !DISubprogram(name: "__half2", scope: !155, file: !155, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!259 = distinct !DILocation(line: 1077, column: 10, scope: !157, inlinedAt: !248)
!260 = !DILocation(line: 596, column: 73, scope: !258, inlinedAt: !259)
!261 = !DILocation(line: 1007, column: 10, scope: !154, inlinedAt: !262)
!262 = distinct !DILocation(line: 1077, column: 18, scope: !157, inlinedAt: !263)
!263 = distinct !DILocation(line: 1295, column: 23, scope: !159, inlinedAt: !264)
!264 = distinct !DILocation(line: 185, column: 29, scope: !40)
!265 = !{!266, !268}
!266 = distinct !{!266, !267, !"_ZL17__floats2half2_rnff: %agg.result"}
!267 = distinct !{!267, !"_ZL17__floats2half2_rnff"}
!268 = distinct !{!268, !269, !"_ZL17__float22half2_rn6float2: %agg.result"}
!269 = distinct !{!269, !"_ZL17__float22half2_rn6float2"}
!270 = !DILocation(line: 1007, column: 10, scope: !154, inlinedAt: !271)
!271 = distinct !DILocation(line: 1077, column: 38, scope: !157, inlinedAt: !263)
!272 = !DILocation(line: 596, column: 67, scope: !258, inlinedAt: !273)
!273 = distinct !DILocation(line: 1077, column: 10, scope: !157, inlinedAt: !263)
!274 = !DILocation(line: 596, column: 73, scope: !258, inlinedAt: !273)
!275 = !DILocation(line: 186, column: 40, scope: !40)
!276 = !DILocation(line: 187, column: 130, scope: !40)
!277 = !DILocation(line: 187, column: 24, scope: !40)
!278 = !DILocation(line: 187, column: 256, scope: !40)
!279 = !DILocation(line: 187, column: 101, scope: !40)
!280 = !DILocation(line: 68, column: 3, scope: !62, inlinedAt: !281)
!281 = distinct !DILocation(line: 192, column: 3, scope: !65, inlinedAt: !282)
!282 = distinct !DILocation(line: 190, column: 3, scope: !40)
!283 = !DILocation(line: 69, column: 3, scope: !62, inlinedAt: !281)
!284 = !DILocation(line: 70, column: 3, scope: !62, inlinedAt: !281)
!285 = !DILocation(line: 192, column: 3, scope: !40)
!286 = !DILocation(line: 195, column: 65, scope: !40)
!287 = !DILocation(line: 195, column: 46, scope: !40)
!288 = !DILocation(line: 197, column: 22, scope: !40)
!289 = !DILocation(line: 197, column: 134, scope: !40)
!290 = !DILocation(line: 199, column: 1, scope: !40)
