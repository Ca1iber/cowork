; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v067_codex_power_s8_first_block_init_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v067_codex_power_s8_first_block_init_sc-16g-2/codegen/case12.device.cpp"
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
  %xor1237 = and i32 %mul11, 56
  %call27.masked = and i32 %2, 1016
  %mul29 = xor i32 %xor1237, %call27.masked
  %and33 = lshr i32 %2, 3
  %shr34 = and i32 %and33, 1
  %3 = zext nneg i32 %add9 to i64, !dbg !43
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %3, !dbg !44
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %add.ptr, align 16, !dbg !45
  %qk_fetch.sroa.14.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !45
  %qk_fetch.sroa.14.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.14.0.add.ptr.sroa_idx, align 8, !dbg !45
  %4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul29, !dbg !46
  %5 = getelementptr inbounds %struct.__half, ptr addrspace(3) %4, i32 %mul24, !dbg !46
  %add.ptr39.idx = shl nuw nsw i32 %shr34, 3, !dbg !46
  %add.ptr39 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr39, align 8, !dbg !47
  %xor35.1 = shl nuw nsw i32 %shr34, 3, !dbg !46
  %add.ptr39.idx.1 = xor i32 %xor35.1, 8, !dbg !46
  %add.ptr39.1 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.14.0.copyload, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !47
  %6 = add nuw nsw i64 %3, 512, !dbg !48
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %6, !dbg !44
  %qk_fetch.sroa.0.0.copyload1876 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %qk_fetch.sroa.14.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %qk_fetch.sroa.14.0.copyload1882 = load i64, ptr addrspace(4) %qk_fetch.sroa.14.0.add.ptr.1.sroa_idx, align 8, !dbg !45
  %7 = getelementptr inbounds i8, ptr addrspace(3) %5, i32 1024, !dbg !46
  %add.ptr39.11412 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1876, ptr addrspace(3) %add.ptr39.11412, align 8, !dbg !47
  %add.ptr39.1.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr39.idx, !dbg !46
  store i64 %qk_fetch.sroa.14.0.copyload1882, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !47
  fence syncscope("warp") release, !dbg !49
  tail call void @llvm.mxc.barrier.warp(), !dbg !55
  fence syncscope("warp") acquire, !dbg !56
  %and48 = shl nuw nsw i32 %2, 6
  %mul49 = and i32 %and48, 960
  %shr52 = lshr i32 %2, 5
  %and55 = and i32 %2, 7
  %and60 = lshr i32 %2, 4
  %8 = xor i32 %and33, %and60
  %xor651236 = xor i32 %8, %2
  %xor68 = shl nuw nsw i32 %xor651236, 2
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
  %mul95 = shl nsw i32 %0, 13, !dbg !64
  %mul97 = shl nsw i32 %1, 3, !dbg !65
  %add98 = add nuw nsw i32 %mul95, %mul97, !dbg !66
  %idxprom = zext nneg i32 %add98 to i64, !dbg !67
  %arrayidx99 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %idxprom, !dbg !67
  %13 = load i32, ptr addrspace(1) %arrayidx99, align 4, !dbg !67, !tbaa !30
  %mul100 = shl nsw i32 %13, 4, !dbg !68
  %cmp101 = icmp slt i32 %13, 0, !dbg !69
  %cmp103.not = icmp sgt i32 %mul100, %1
  %or.cond = select i1 %cmp101, i1 true, i1 %cmp103.not, !dbg !70
  br i1 %or.cond, label %entry.if.end475_crit_edge, label %if.then, !dbg !70

entry.if.end475_crit_edge:                        ; preds = %entry
  %.pre = zext nneg i32 %0 to i64
  %.pre1890 = zext nneg i32 %mul11 to i64
  %.pre1891 = lshr i32 %2, 2
  %.pre1892 = and i32 %.pre1891, 252
  %.pre1893 = shl nuw nsw i64 %.pre, 16
  %.pre1894 = shl nuw nsw i32 %2, 4
  %.pre1896 = and i32 %.pre1894, 16128
  %.pre1898 = zext nneg i32 %.pre1896 to i64
  %.pre1899 = or disjoint i64 %.pre1893, %.pre1898
  %.pre1900 = shl nuw nsw i32 %2, 2
  %.pre1902 = and i32 %.pre1900, 60
  %.pre1904 = zext nneg i32 %.pre1902 to i64
  %.pre1905 = or disjoint i64 %.pre1899, %.pre1904
  %.pre1906 = and i32 %.pre1894, 240
  %.pre1907 = and i32 %.pre1891, 3
  %.pre1908 = xor i32 %.pre1907, %and60
  %.pre1909 = shl nuw nsw i32 %2, 8
  %.pre1910 = and i32 %.pre1909, 768
  %.pre1911 = and i32 %.pre1900, 48
  %.pre1912 = and i32 %2, 3
  %.pre1913 = xor i32 %and60, %.pre1912
  br label %if.end475, !dbg !70

if.then:                                          ; preds = %entry
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %conv = zext nneg i32 %0 to i64
  %conv113 = zext nneg i32 %mul100 to i64
  %mul118 = zext nneg i32 %mul11 to i64
  %.idx1232 = shl nuw nsw i64 %conv113, 7
  %invariant.gep = getelementptr inbounds i8, ptr addrspace(4) %K.coerce, i64 %.idx1232, !dbg !76
  %invariant.gep1357 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %mul118, !dbg !76
  %.idx1401 = shl nuw nsw i64 %conv, 17, !dbg !77
  %14 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1357, i64 %.idx1401, !dbg !77
  %qk_fetch.sroa.0.0.copyload1874 = load i64, ptr addrspace(4) %14, align 16, !dbg !78
  %qk_fetch.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %14, i64 8, !dbg !78
  %qk_fetch.sroa.14.0.copyload1879 = load i64, ptr addrspace(4) %qk_fetch.sroa.14.0..sroa_idx, align 8, !dbg !78
  store i64 %qk_fetch.sroa.0.0.copyload1874, ptr addrspace(3) %add.ptr39, align 8, !dbg !79
  store i64 %qk_fetch.sroa.14.0.copyload1879, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !79
  %gep1358.1 = getelementptr inbounds i8, ptr addrspace(4) %14, i64 1024, !dbg !77
  %qk_fetch.sroa.0.0.copyload1877 = load i64, ptr addrspace(4) %gep1358.1, align 16, !dbg !78
  %qk_fetch.sroa.14.0.gep1358.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %14, i64 1032, !dbg !78
  %qk_fetch.sroa.14.0.copyload1883 = load i64, ptr addrspace(4) %qk_fetch.sroa.14.0.gep1358.1.sroa_idx, align 8, !dbg !78
  store i64 %qk_fetch.sroa.0.0.copyload1877, ptr addrspace(3) %add.ptr39.11412, align 8, !dbg !79
  store i64 %qk_fetch.sroa.14.0.copyload1883, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !79
  fence syncscope("warp") release, !dbg !80
  tail call void @llvm.mxc.barrier.warp(), !dbg !83
  fence syncscope("warp") acquire, !dbg !84
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !85
  %15 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %9, <4 x float> zeroinitializer), !dbg !86
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !85
  %16 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %10, <4 x float> %15), !dbg !86
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !85
  %17 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %11, <4 x float> %16), !dbg !86
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !85
  %18 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %12, <4 x float> %17), !dbg !86
  %19 = lshr i32 %2, 2
  %mul212 = and i32 %19, 252
  %add213 = add nuw nsw i32 %mul100, %mul212
  %cmp216.not = icmp sgt i32 %add213, %1, !dbg !87
  %scores.sroa.0.0.vec.extract1647 = extractelement <4 x float> %18, i64 0
  %spec.select = select i1 %cmp216.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1647, !dbg !88
  %cmp216.not.1.not = icmp slt i32 %add213, %1, !dbg !87
  %scores.sroa.0.4.vec.extract1664 = extractelement <4 x float> %18, i64 1, !dbg !88
  %condval.0.1 = select i1 %cmp216.not.1.not, float %scores.sroa.0.4.vec.extract1664, float 0xFFF0000000000000, !dbg !88
  %add214.2 = or disjoint i32 %add213, 2, !dbg !89
  %cmp216.not.2 = icmp sgt i32 %add214.2, %1, !dbg !87
  %scores.sroa.0.8.vec.extract1681 = extractelement <4 x float> %18, i64 2, !dbg !88
  %condval.0.2 = select i1 %cmp216.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1681, !dbg !88
  %add214.3 = or disjoint i32 %add213, 3, !dbg !89
  %cmp216.not.3 = icmp sgt i32 %add214.3, %1, !dbg !87
  %scores.sroa.0.12.vec.extract1698 = extractelement <4 x float> %18, i64 3, !dbg !88
  %condval.0.3 = select i1 %cmp216.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1698, !dbg !88
  %20 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !90
  %21 = tail call contract noundef float @llvm.maxnum.f32(float %20, float %condval.0.1), !dbg !90
  %22 = tail call contract noundef float @llvm.maxnum.f32(float %21, float %condval.0.2), !dbg !90
  %23 = tail call contract noundef float @llvm.maxnum.f32(float %22, float %condval.0.3), !dbg !90
  %24 = bitcast float %23 to i32, !dbg !94
  %25 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !97
  %26 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %25) #11, !dbg !102
  %xor.i.i = xor i32 %26, 32, !dbg !103
  %27 = and i32 %26, -64, !dbg !104
  %and.i.i = add nsw i32 %27, 64, !dbg !104
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !105
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %26, !dbg !106
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !107
  %28 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %24), !dbg !108
  %29 = bitcast i32 %28 to float, !dbg !109
  %30 = tail call contract noundef float @llvm.maxnum.f32(float %23, float %29), !dbg !110
  %31 = bitcast float %30 to i32, !dbg !112
  %32 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !114
  %33 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %32) #11, !dbg !117
  %xor.i.i1239 = xor i32 %33, 16, !dbg !118
  %34 = and i32 %33, -64, !dbg !119
  %and.i.i1240 = add nsw i32 %34, 64, !dbg !119
  %cmp.not.i.i1241 = icmp slt i32 %xor.i.i1239, %and.i.i1240, !dbg !120
  %cond.i.i1242 = select i1 %cmp.not.i.i1241, i32 %xor.i.i1239, i32 %33, !dbg !121
  %shl.i.i1243 = shl i32 %cond.i.i1242, 2, !dbg !122
  %35 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1243, i32 %31), !dbg !123
  %36 = bitcast i32 %35 to float, !dbg !124
  %37 = tail call contract noundef float @llvm.maxnum.f32(float %30, float %36), !dbg !125
  %sub = fsub contract float %spec.select, %37, !dbg !127
  %sub264 = fsub contract float %condval.0.1, %37, !dbg !128
  %sub267 = fsub contract float %condval.0.2, %37, !dbg !129
  %sub270 = fsub contract float %condval.0.3, %37, !dbg !130
  %mul275 = fmul contract float %sub, 0x3FC7154760000000, !dbg !131
  %mul279 = fmul contract float %sub264, 0x3FC7154760000000, !dbg !132
  %mul283 = fmul contract float %sub267, 0x3FC7154760000000, !dbg !133
  %mul287 = fmul contract float %sub270, 0x3FC7154760000000, !dbg !134
  %add292 = fadd contract float %mul275, 8.000000e+00, !dbg !135
  %add296 = fadd contract float %mul279, 8.000000e+00, !dbg !136
  %add300 = fadd contract float %mul283, 8.000000e+00, !dbg !137
  %add304 = fadd contract float %mul287, 8.000000e+00, !dbg !138
  %cmp.i.i = fcmp contract olt float %add292, -1.260000e+02, !dbg !139
  %cond.i.i1244 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !139
  %add.i.i = fadd contract float %add292, %cond.i.i1244, !dbg !139
  %38 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !139
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !139
  %mul.i.i = fmul contract float %cond2.i.i, %38, !dbg !139
  %cmp.i.i1245 = fcmp contract olt float %add296, -1.260000e+02, !dbg !142
  %cond.i.i1246 = select contract i1 %cmp.i.i1245, float 6.400000e+01, float 0.000000e+00, !dbg !142
  %add.i.i1247 = fadd contract float %add296, %cond.i.i1246, !dbg !142
  %39 = tail call contract float @llvm.exp2.f32(float %add.i.i1247), !dbg !142
  %cond2.i.i1248 = select contract i1 %cmp.i.i1245, float 0x3BF0000000000000, float 1.000000e+00, !dbg !142
  %mul.i.i1249 = fmul contract float %cond2.i.i1248, %39, !dbg !142
  %cmp.i.i1250 = fcmp contract olt float %add300, -1.260000e+02, !dbg !144
  %cond.i.i1251 = select contract i1 %cmp.i.i1250, float 6.400000e+01, float 0.000000e+00, !dbg !144
  %add.i.i1252 = fadd contract float %add300, %cond.i.i1251, !dbg !144
  %40 = tail call contract float @llvm.exp2.f32(float %add.i.i1252), !dbg !144
  %cond2.i.i1253 = select contract i1 %cmp.i.i1250, float 0x3BF0000000000000, float 1.000000e+00, !dbg !144
  %mul.i.i1254 = fmul contract float %cond2.i.i1253, %40, !dbg !144
  %cmp.i.i1255 = fcmp contract olt float %add304, -1.260000e+02, !dbg !146
  %cond.i.i1256 = select contract i1 %cmp.i.i1255, float 6.400000e+01, float 0.000000e+00, !dbg !146
  %add.i.i1257 = fadd contract float %add304, %cond.i.i1256, !dbg !146
  %41 = tail call contract float @llvm.exp2.f32(float %add.i.i1257), !dbg !146
  %cond2.i.i1258 = select contract i1 %cmp.i.i1255, float 0x3BF0000000000000, float 1.000000e+00, !dbg !146
  %mul.i.i1259 = fmul contract float %cond2.i.i1258, %41, !dbg !146
  %42 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !148
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !148, !noalias !156
  %43 = fptrunc float %mul.i.i to half, !dbg !148
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %42), !dbg !148, !noalias !156
  %44 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !161
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !161, !noalias !156
  %45 = fptrunc float %mul.i.i1249 to half, !dbg !161
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %44), !dbg !161, !noalias !156
  %46 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !163
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !163, !noalias !167
  %47 = fptrunc float %mul.i.i1254 to half, !dbg !163
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %46), !dbg !163, !noalias !167
  %48 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !167
  %49 = fptrunc float %mul.i.i1259 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %48), !dbg !172, !noalias !167
  %50 = insertelement <4 x half> poison, half %43, i64 0, !dbg !174
  %51 = insertelement <4 x half> %50, half %45, i64 1, !dbg !174
  %52 = insertelement <4 x half> %51, half %47, i64 2, !dbg !174
  %53 = insertelement <4 x half> %52, half %49, i64 3, !dbg !174
  %conv.i.i = fpext half %43 to float, !dbg !175
  %add338 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !180
  %conv.i.i.1 = fpext half %45 to float, !dbg !175
  %add338.1 = fadd contract float %add338, %conv.i.i.1, !dbg !180
  %conv.i.i.2 = fpext half %47 to float, !dbg !175
  %add338.2 = fadd contract float %add338.1, %conv.i.i.2, !dbg !180
  %conv.i.i.3 = fpext half %49 to float, !dbg !175
  %add338.3 = fadd contract float %add338.2, %conv.i.i.3, !dbg !180
  %54 = bitcast float %add338.3 to i32, !dbg !181
  %55 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !183
  %56 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %55) #11, !dbg !186
  %xor.i.i1261 = xor i32 %56, 32, !dbg !187
  %57 = and i32 %56, -64, !dbg !188
  %and.i.i1262 = add nsw i32 %57, 64, !dbg !188
  %cmp.not.i.i1263 = icmp slt i32 %xor.i.i1261, %and.i.i1262, !dbg !189
  %cond.i.i1264 = select i1 %cmp.not.i.i1263, i32 %xor.i.i1261, i32 %56, !dbg !190
  %shl.i.i1265 = shl i32 %cond.i.i1264, 2, !dbg !191
  %58 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1265, i32 %54), !dbg !192
  %59 = bitcast i32 %58 to float, !dbg !193
  %add346 = fadd contract float %add338.3, %59, !dbg !194
  %60 = bitcast float %add346 to i32, !dbg !195
  %61 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !197
  %62 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %61) #11, !dbg !200
  %xor.i.i1266 = xor i32 %62, 16, !dbg !201
  %63 = and i32 %62, -64, !dbg !202
  %and.i.i1267 = add nsw i32 %63, 64, !dbg !202
  %cmp.not.i.i1268 = icmp slt i32 %xor.i.i1266, %and.i.i1267, !dbg !203
  %cond.i.i1269 = select i1 %cmp.not.i.i1268, i32 %xor.i.i1266, i32 %62, !dbg !204
  %shl.i.i1270 = shl i32 %cond.i.i1269, 2, !dbg !205
  %64 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1270, i32 %60), !dbg !206
  %65 = bitcast i32 %64 to float, !dbg !207
  %add351 = fadd contract float %add346, %65, !dbg !208
  fence syncscope("warp") release, !dbg !209
  tail call void @llvm.mxc.barrier.warp(), !dbg !212
  fence syncscope("warp") acquire, !dbg !213
  %mul363 = shl nuw nsw i64 %conv, 16
  %66 = shl nuw nsw i32 %2, 4
  %67 = and i32 %66, 16128
  %mul367 = zext nneg i32 %67 to i64
  %add368 = or disjoint i64 %mul363, %mul367
  %68 = shl nuw nsw i32 %2, 2
  %69 = and i32 %68, 60
  %mul378 = zext nneg i32 %69 to i64
  %add371 = or disjoint i64 %add368, %mul378
  %70 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add371, !dbg !214
  %71 = getelementptr inbounds i8, ptr addrspace(4) %70, i64 %.idx1232, !dbg !214
  %72 = load i64, ptr addrspace(4) %71, align 8, !dbg !215
  %add.ptr380.1 = getelementptr inbounds i8, ptr addrspace(4) %71, i64 128, !dbg !214
  %73 = load i64, ptr addrspace(4) %add.ptr380.1, align 8, !dbg !215
  %add.ptr380.2 = getelementptr inbounds i8, ptr addrspace(4) %71, i64 256, !dbg !214
  %74 = load i64, ptr addrspace(4) %add.ptr380.2, align 8, !dbg !215
  %add.ptr380.3 = getelementptr inbounds i8, ptr addrspace(4) %71, i64 384, !dbg !214
  %75 = load i64, ptr addrspace(4) %add.ptr380.3, align 8, !dbg !215
  %mul410 = and i32 %66, 240
  %shr416 = and i32 %19, 3
  %xor417 = xor i32 %shr416, %and60
  %76 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul410, !dbg !216
  %add.ptr422.idx = shl nuw nsw i32 %xor417, 3, !dbg !216
  %add.ptr422 = getelementptr inbounds i8, ptr addrspace(3) %76, i32 %add.ptr422.idx, !dbg !216
  %v_column.sroa.34.0.insert.ext = shl i64 %75, 48, !dbg !217
  %v_column.sroa.26.0.insert.ext = shl i64 %74, 32, !dbg !217
  %v_column.sroa.26.0.insert.shift = and i64 %v_column.sroa.26.0.insert.ext, 281470681743360, !dbg !217
  %v_column.sroa.26.0.insert.insert = or disjoint i64 %v_column.sroa.34.0.insert.ext, %v_column.sroa.26.0.insert.shift, !dbg !217
  %v_column.sroa.18.0.insert.ext = shl i64 %73, 16, !dbg !217
  %v_column.sroa.18.0.insert.shift = and i64 %v_column.sroa.18.0.insert.ext, 4294901760, !dbg !217
  %v_column.sroa.18.0.insert.insert = or disjoint i64 %v_column.sroa.26.0.insert.insert, %v_column.sroa.18.0.insert.shift, !dbg !217
  %v_column.sroa.0.0.insert.ext = and i64 %72, 65535, !dbg !217
  %v_column.sroa.0.0.insert.insert = or disjoint i64 %v_column.sroa.18.0.insert.insert, %v_column.sroa.0.0.insert.ext, !dbg !217
  store i64 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr422, align 8, !dbg !217
  %v_fetch.sroa.0.2.extract.shift = lshr i64 %72, 16, !dbg !218
  %add411.1 = or disjoint i32 %mul410, 256, !dbg !219
  %77 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add411.1, !dbg !216
  %xor418.1 = shl nuw nsw i32 %xor417, 3, !dbg !216
  %add.ptr422.idx.1 = xor i32 %xor418.1, 8, !dbg !216
  %add.ptr422.1 = getelementptr inbounds i8, ptr addrspace(3) %77, i32 %add.ptr422.idx.1, !dbg !216
  %78 = shl i64 %75, 32, !dbg !217
  %v_column.sroa.34.0.insert.ext1554 = and i64 %78, -281474976710656, !dbg !217
  %79 = shl i64 %74, 16, !dbg !217
  %v_column.sroa.26.0.insert.shift1520 = and i64 %79, 281470681743360, !dbg !217
  %v_column.sroa.26.0.insert.insert1522 = or disjoint i64 %v_column.sroa.34.0.insert.ext1554, %v_column.sroa.26.0.insert.shift1520, !dbg !217
  %v_column.sroa.18.0.insert.ext1484 = and i64 %73, 4294901760, !dbg !217
  %v_column.sroa.18.0.insert.insert1487 = or disjoint i64 %v_column.sroa.26.0.insert.insert1522, %v_column.sroa.18.0.insert.ext1484, !dbg !217
  %v_column.sroa.0.0.insert.ext1455 = and i64 %v_fetch.sroa.0.2.extract.shift, 65535, !dbg !217
  %v_column.sroa.0.0.insert.insert1457 = or disjoint i64 %v_column.sroa.18.0.insert.insert1487, %v_column.sroa.0.0.insert.ext1455, !dbg !217
  store i64 %v_column.sroa.0.0.insert.insert1457, ptr addrspace(3) %add.ptr422.1, align 8, !dbg !217
  %v_fetch.sroa.0.4.extract.shift = lshr i64 %72, 32, !dbg !218
  %add411.2 = or disjoint i32 %mul410, 512, !dbg !219
  %80 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add411.2, !dbg !216
  %xor418.2 = shl nuw nsw i32 %xor417, 3, !dbg !216
  %add.ptr422.idx.2 = xor i32 %xor418.2, 16, !dbg !216
  %add.ptr422.2 = getelementptr inbounds i8, ptr addrspace(3) %80, i32 %add.ptr422.idx.2, !dbg !216
  %81 = shl i64 %75, 16, !dbg !217
  %v_column.sroa.34.0.insert.ext1559 = and i64 %81, -281474976710656, !dbg !217
  %v_column.sroa.26.0.insert.ext1524 = and i64 %74, 281470681743360, !dbg !217
  %v_column.sroa.26.0.insert.insert1527 = or disjoint i64 %v_column.sroa.34.0.insert.ext1559, %v_column.sroa.26.0.insert.ext1524, !dbg !217
  %82 = lshr i64 %73, 16, !dbg !217
  %v_column.sroa.18.0.insert.shift1490 = and i64 %82, 4294901760, !dbg !217
  %v_column.sroa.18.0.insert.insert1492 = or disjoint i64 %v_column.sroa.26.0.insert.insert1527, %v_column.sroa.18.0.insert.shift1490, !dbg !217
  %v_column.sroa.0.0.insert.ext1459 = and i64 %v_fetch.sroa.0.4.extract.shift, 65535, !dbg !217
  %v_column.sroa.0.0.insert.insert1461 = or disjoint i64 %v_column.sroa.18.0.insert.insert1492, %v_column.sroa.0.0.insert.ext1459, !dbg !217
  store i64 %v_column.sroa.0.0.insert.insert1461, ptr addrspace(3) %add.ptr422.2, align 8, !dbg !217
  %v_fetch.sroa.0.6.extract.shift = lshr i64 %72, 48, !dbg !218
  %v_fetch.sroa.32.30.extract.shift = and i64 %75, -281474976710656, !dbg !217
  %add411.3 = or disjoint i32 %mul410, 768, !dbg !219
  %83 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add411.3, !dbg !216
  %xor418.3 = shl nuw nsw i32 %xor417, 3, !dbg !216
  %add.ptr422.idx.3 = xor i32 %xor418.3, 24, !dbg !216
  %add.ptr422.3 = getelementptr inbounds i8, ptr addrspace(3) %83, i32 %add.ptr422.idx.3, !dbg !216
  %84 = lshr i64 %74, 16, !dbg !217
  %v_column.sroa.26.0.insert.shift1530 = and i64 %84, 281470681743360, !dbg !217
  %v_column.sroa.26.0.insert.insert1532 = or disjoint i64 %v_fetch.sroa.32.30.extract.shift, %v_column.sroa.26.0.insert.shift1530, !dbg !217
  %85 = lshr i64 %73, 32, !dbg !217
  %v_column.sroa.18.0.insert.shift1495 = and i64 %85, 4294901760, !dbg !217
  %v_column.sroa.18.0.insert.insert1497 = or disjoint i64 %v_column.sroa.26.0.insert.insert1532, %v_column.sroa.18.0.insert.shift1495, !dbg !217
  %v_column.sroa.0.0.insert.insert1465 = or disjoint i64 %v_column.sroa.18.0.insert.insert1497, %v_fetch.sroa.0.6.extract.shift, !dbg !217
  store i64 %v_column.sroa.0.0.insert.insert1465, ptr addrspace(3) %add.ptr422.3, align 8, !dbg !217
  fence syncscope("warp") release, !dbg !220
  tail call void @llvm.mxc.barrier.warp(), !dbg !223
  fence syncscope("warp") acquire, !dbg !224
  %and431 = shl nuw nsw i32 %2, 8
  %mul432 = and i32 %and431, 768
  %mul438 = and i32 %68, 48
  %and444 = and i32 %2, 3
  %86 = xor i32 %and60, %and444
  %add439 = or disjoint i32 %mul432, %mul438, !dbg !225
  %87 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add439, !dbg !226
  %add.ptr449.idx = shl nuw nsw i32 %86, 3, !dbg !226
  %add.ptr449 = getelementptr inbounds i8, ptr addrspace(3) %87, i32 %add.ptr449.idx, !dbg !226
  %88 = load <4 x half>, ptr addrspace(3) %add.ptr449, align 8, !dbg !227
  %add434.1 = or disjoint i32 %mul432, %mul438, !dbg !225
  %add439.1 = or disjoint i32 %add434.1, 64, !dbg !225
  %89 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add439.1, !dbg !226
  %xor445.1 = shl nuw nsw i32 %86, 3, !dbg !226
  %add.ptr449.idx.1 = xor i32 %xor445.1, 8, !dbg !226
  %add.ptr449.1 = getelementptr inbounds i8, ptr addrspace(3) %89, i32 %add.ptr449.idx.1, !dbg !226
  %90 = load <4 x half>, ptr addrspace(3) %add.ptr449.1, align 8, !dbg !227
  %add434.2 = or disjoint i32 %mul432, %mul438, !dbg !225
  %add439.2 = or disjoint i32 %add434.2, 128, !dbg !225
  %91 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add439.2, !dbg !226
  %xor445.2 = shl nuw nsw i32 %86, 3, !dbg !226
  %add.ptr449.idx.2 = xor i32 %xor445.2, 16, !dbg !226
  %add.ptr449.2 = getelementptr inbounds i8, ptr addrspace(3) %91, i32 %add.ptr449.idx.2, !dbg !226
  %92 = load <4 x half>, ptr addrspace(3) %add.ptr449.2, align 8, !dbg !227
  %add434.3 = or disjoint i32 %mul432, %mul438, !dbg !225
  %add439.3 = or disjoint i32 %add434.3, 192, !dbg !225
  %93 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add439.3, !dbg !226
  %xor445.3 = shl nuw nsw i32 %86, 3, !dbg !226
  %add.ptr449.idx.3 = xor i32 %xor445.3, 24, !dbg !226
  %add.ptr449.3 = getelementptr inbounds i8, ptr addrspace(3) %93, i32 %add.ptr449.idx.3, !dbg !226
  %94 = load <4 x half>, ptr addrspace(3) %add.ptr449.3, align 8, !dbg !227
  %95 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %88, <4 x half> %53, <4 x float> zeroinitializer), !dbg !228
  %96 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %90, <4 x half> %53, <4 x float> zeroinitializer), !dbg !228
  %97 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %92, <4 x half> %53, <4 x float> zeroinitializer), !dbg !228
  %98 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %94, <4 x half> %53, <4 x float> zeroinitializer), !dbg !228
  %add355 = fadd contract float %add351, 0.000000e+00, !dbg !229
  br label %if.end475

if.end475:                                        ; preds = %entry.if.end475_crit_edge, %if.then
  %.pre-phi1914 = phi i32 [ %.pre1913, %entry.if.end475_crit_edge ], [ %86, %if.then ]
  %mul887.pre-phi = phi i32 [ %.pre1911, %entry.if.end475_crit_edge ], [ %mul438, %if.then ]
  %mul881.pre-phi = phi i32 [ %.pre1910, %entry.if.end475_crit_edge ], [ %mul432, %if.then ]
  %xor866.pre-phi = phi i32 [ %.pre1908, %entry.if.end475_crit_edge ], [ %xor417, %if.then ]
  %mul859.pre-phi = phi i32 [ %.pre1906, %entry.if.end475_crit_edge ], [ %mul410, %if.then ]
  %add820.pre-phi = phi i64 [ %.pre1905, %entry.if.end475_crit_edge ], [ %add371, %if.then ]
  %mul603.pre-phi = phi i32 [ %.pre1892, %entry.if.end475_crit_edge ], [ %mul212, %if.then ]
  %.pre-phi = phi i32 [ %.pre1891, %entry.if.end475_crit_edge ], [ %19, %if.then ]
  %mul509.pre-phi = phi i64 [ %.pre1890, %entry.if.end475_crit_edge ], [ %mul118, %if.then ]
  %conv499.pre-phi = phi i64 [ %.pre, %entry.if.end475_crit_edge ], [ %conv, %if.then ]
  %numerator.sroa.86.0 = phi <4 x float> [ zeroinitializer, %entry.if.end475_crit_edge ], [ %98, %if.then ], !dbg !230
  %numerator.sroa.58.0 = phi <4 x float> [ zeroinitializer, %entry.if.end475_crit_edge ], [ %97, %if.then ], !dbg !230
  %numerator.sroa.30.0 = phi <4 x float> [ zeroinitializer, %entry.if.end475_crit_edge ], [ %96, %if.then ], !dbg !230
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry.if.end475_crit_edge ], [ %95, %if.then ], !dbg !230
  %maximum.sroa.0.0 = phi float [ 0xFFF0000000000000, %entry.if.end475_crit_edge ], [ %37, %if.then ], !dbg !230
  %denominator.sroa.0.0 = phi float [ 0.000000e+00, %entry.if.end475_crit_edge ], [ %add355, %if.then ], !dbg !230
  %invariant.gep1393 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul509.pre-phi, !dbg !231
  %.idx1403 = shl nuw nsw i64 %conv499.pre-phi, 17
  %invariant.gep1915 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1393, i64 %.idx1403, !dbg !231
  %99 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add820.pre-phi
  %100 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul859.pre-phi
  %add.ptr871.idx = shl nuw nsw i32 %xor866.pre-phi, 3
  %add.ptr871 = getelementptr inbounds i8, ptr addrspace(3) %100, i32 %add.ptr871.idx
  %add860.1 = or disjoint i32 %mul859.pre-phi, 256
  %101 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.1
  %xor867.1 = shl nsw i32 %xor866.pre-phi, 3
  %add.ptr871.idx.1 = xor i32 %xor867.1, 8
  %add.ptr871.1 = getelementptr inbounds i8, ptr addrspace(3) %101, i32 %add.ptr871.idx.1
  %add860.2 = or disjoint i32 %mul859.pre-phi, 512
  %102 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.2
  %xor867.2 = shl nsw i32 %xor866.pre-phi, 3
  %add.ptr871.idx.2 = xor i32 %xor867.2, 16
  %add.ptr871.2 = getelementptr inbounds i8, ptr addrspace(3) %102, i32 %add.ptr871.idx.2
  %add860.3 = or disjoint i32 %mul859.pre-phi, 768
  %103 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add860.3
  %xor867.3 = shl nsw i32 %xor866.pre-phi, 3
  %add.ptr871.idx.3 = xor i32 %xor867.3, 24
  %add.ptr871.3 = getelementptr inbounds i8, ptr addrspace(3) %103, i32 %add.ptr871.idx.3
  %add888 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi
  %104 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888
  %add.ptr898.idx = shl nuw nsw i32 %.pre-phi1914, 3
  %add.ptr898 = getelementptr inbounds i8, ptr addrspace(3) %104, i32 %add.ptr898.idx
  %add883.1 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi
  %add888.1 = or disjoint i32 %add883.1, 64
  %105 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.1
  %xor894.1 = shl nsw i32 %.pre-phi1914, 3
  %add.ptr898.idx.1 = xor i32 %xor894.1, 8
  %add.ptr898.1 = getelementptr inbounds i8, ptr addrspace(3) %105, i32 %add.ptr898.idx.1
  %add883.2 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi
  %add888.2 = or disjoint i32 %add883.2, 128
  %106 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.2
  %xor894.2 = shl nsw i32 %.pre-phi1914, 3
  %add.ptr898.idx.2 = xor i32 %xor894.2, 16
  %add.ptr898.2 = getelementptr inbounds i8, ptr addrspace(3) %106, i32 %add.ptr898.idx.2
  %add883.3 = or disjoint i32 %mul881.pre-phi, %mul887.pre-phi
  %add888.3 = or disjoint i32 %add883.3, 192
  %107 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add888.3
  %xor894.3 = shl nsw i32 %.pre-phi1914, 3
  %add.ptr898.idx.3 = xor i32 %xor894.3, 24
  %add.ptr898.3 = getelementptr inbounds i8, ptr addrspace(3) %107, i32 %add.ptr898.idx.3
  br label %for.body479, !dbg !231

for.cond928.preheader:                            ; preds = %if.end924
  %numerator.sroa.0.0.vec.extract1717 = extractelement <4 x float> %numerator.sroa.0.2, i64 0, !dbg !232
  %numerator.sroa.0.4.vec.extract1726 = extractelement <4 x float> %numerator.sroa.0.2, i64 1, !dbg !232
  %numerator.sroa.0.8.vec.extract1735 = extractelement <4 x float> %numerator.sroa.0.2, i64 2, !dbg !232
  %numerator.sroa.0.12.vec.extract1744 = extractelement <4 x float> %numerator.sroa.0.2, i64 3, !dbg !232
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract1717, %denominator.sroa.0.2, !dbg !233
  %div946 = fdiv contract float %numerator.sroa.0.4.vec.extract1726, %denominator.sroa.0.2, !dbg !234
  %div950 = fdiv contract float %numerator.sroa.0.8.vec.extract1735, %denominator.sroa.0.2, !dbg !235
  %div954 = fdiv contract float %numerator.sroa.0.12.vec.extract1744, %denominator.sroa.0.2, !dbg !236
  %numerator.sroa.30.16.vec.extract1753 = extractelement <4 x float> %numerator.sroa.30.2, i64 0, !dbg !232
  %numerator.sroa.30.20.vec.extract1762 = extractelement <4 x float> %numerator.sroa.30.2, i64 1, !dbg !232
  %numerator.sroa.30.24.vec.extract1771 = extractelement <4 x float> %numerator.sroa.30.2, i64 2, !dbg !232
  %numerator.sroa.30.28.vec.extract1780 = extractelement <4 x float> %numerator.sroa.30.2, i64 3, !dbg !232
  %div.1 = fdiv contract float %numerator.sroa.30.16.vec.extract1753, %denominator.sroa.0.2, !dbg !233
  %div946.1 = fdiv contract float %numerator.sroa.30.20.vec.extract1762, %denominator.sroa.0.2, !dbg !234
  %div950.1 = fdiv contract float %numerator.sroa.30.24.vec.extract1771, %denominator.sroa.0.2, !dbg !235
  %div954.1 = fdiv contract float %numerator.sroa.30.28.vec.extract1780, %denominator.sroa.0.2, !dbg !236
  %numerator.sroa.58.32.vec.extract1791 = extractelement <4 x float> %numerator.sroa.58.2, i64 0, !dbg !232
  %numerator.sroa.58.36.vec.extract1800 = extractelement <4 x float> %numerator.sroa.58.2, i64 1, !dbg !232
  %numerator.sroa.58.40.vec.extract1809 = extractelement <4 x float> %numerator.sroa.58.2, i64 2, !dbg !232
  %numerator.sroa.58.44.vec.extract1818 = extractelement <4 x float> %numerator.sroa.58.2, i64 3, !dbg !232
  %div.2 = fdiv contract float %numerator.sroa.58.32.vec.extract1791, %denominator.sroa.0.2, !dbg !233
  %div946.2 = fdiv contract float %numerator.sroa.58.36.vec.extract1800, %denominator.sroa.0.2, !dbg !234
  %div950.2 = fdiv contract float %numerator.sroa.58.40.vec.extract1809, %denominator.sroa.0.2, !dbg !235
  %div954.2 = fdiv contract float %numerator.sroa.58.44.vec.extract1818, %denominator.sroa.0.2, !dbg !236
  %numerator.sroa.86.48.vec.extract1829 = extractelement <4 x float> %numerator.sroa.86.2, i64 0, !dbg !232
  %numerator.sroa.86.52.vec.extract1838 = extractelement <4 x float> %numerator.sroa.86.2, i64 1, !dbg !232
  %numerator.sroa.86.56.vec.extract1847 = extractelement <4 x float> %numerator.sroa.86.2, i64 2, !dbg !232
  %numerator.sroa.86.60.vec.extract1856 = extractelement <4 x float> %numerator.sroa.86.2, i64 3, !dbg !232
  %div.3 = fdiv contract float %numerator.sroa.86.48.vec.extract1829, %denominator.sroa.0.2, !dbg !233
  %div946.3 = fdiv contract float %numerator.sroa.86.52.vec.extract1838, %denominator.sroa.0.2, !dbg !234
  %div950.3 = fdiv contract float %numerator.sroa.86.56.vec.extract1847, %denominator.sroa.0.2, !dbg !235
  %div954.3 = fdiv contract float %numerator.sroa.86.60.vec.extract1856, %denominator.sroa.0.2, !dbg !236
  fence syncscope("warp") release, !dbg !237
  tail call void @llvm.mxc.barrier.warp(), !dbg !240
  fence syncscope("warp") acquire, !dbg !241
  %mul1000 = and i32 %.pre-phi, 4
  %108 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !242, !noalias !246
  %109 = fptrunc float %div to half, !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %108), !dbg !242, !noalias !246
  %110 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !246
  %111 = fptrunc float %div946 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %110), !dbg !251, !noalias !246
  %112 = bitcast half %109 to i16, !dbg !253
  %113 = bitcast half %111 to i16, !dbg !256
  %114 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %115 = fptrunc float %div950 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %114), !dbg !257, !noalias !261
  %116 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %117 = fptrunc float %div954 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %116), !dbg !266, !noalias !261
  %118 = bitcast half %115 to i16, !dbg !268
  %119 = bitcast half %117 to i16, !dbg !270
  %__13.sroa.6.0.insert.ext = zext i16 %119 to i64, !dbg !271
  %__13.sroa.6.0.insert.shift = shl nuw i64 %__13.sroa.6.0.insert.ext, 48, !dbg !271
  %__13.sroa.5.0.insert.ext = zext i16 %118 to i64, !dbg !271
  %__13.sroa.5.0.insert.shift = shl nuw nsw i64 %__13.sroa.5.0.insert.ext, 32, !dbg !271
  %__13.sroa.5.0.insert.insert = or disjoint i64 %__13.sroa.6.0.insert.shift, %__13.sroa.5.0.insert.shift, !dbg !271
  %__13.sroa.4.0.insert.ext = zext i16 %113 to i64, !dbg !271
  %__13.sroa.4.0.insert.shift = shl nuw nsw i64 %__13.sroa.4.0.insert.ext, 16, !dbg !271
  %__13.sroa.4.0.insert.insert = or disjoint i64 %__13.sroa.5.0.insert.insert, %__13.sroa.4.0.insert.shift, !dbg !271
  %__13.sroa.0.0.insert.ext = zext i16 %112 to i64, !dbg !271
  %__13.sroa.0.0.insert.insert = or disjoint i64 %__13.sroa.4.0.insert.insert, %__13.sroa.0.0.insert.ext, !dbg !271
  %add1001 = or disjoint i32 %add58, %mul1000, !dbg !272
  %add.ptr1003 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add1001, !dbg !273
  store i64 %__13.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr1003, align 8, !dbg !274
  %120 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !242, !noalias !246
  %121 = fptrunc float %div.1 to half, !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %120), !dbg !242, !noalias !246
  %122 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !246
  %123 = fptrunc float %div946.1 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %122), !dbg !251, !noalias !246
  %124 = bitcast half %121 to i16, !dbg !253
  %125 = bitcast half %123 to i16, !dbg !256
  %126 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %127 = fptrunc float %div950.1 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %126), !dbg !257, !noalias !261
  %128 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %129 = fptrunc float %div954.1 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %128), !dbg !266, !noalias !261
  %130 = bitcast half %127 to i16, !dbg !268
  %131 = bitcast half %129 to i16, !dbg !270
  %__13.sroa.6.0.insert.ext.1 = zext i16 %131 to i64, !dbg !271
  %__13.sroa.6.0.insert.shift.1 = shl nuw i64 %__13.sroa.6.0.insert.ext.1, 48, !dbg !271
  %__13.sroa.5.0.insert.ext.1 = zext i16 %130 to i64, !dbg !271
  %__13.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__13.sroa.5.0.insert.ext.1, 32, !dbg !271
  %__13.sroa.5.0.insert.insert.1 = or disjoint i64 %__13.sroa.6.0.insert.shift.1, %__13.sroa.5.0.insert.shift.1, !dbg !271
  %__13.sroa.4.0.insert.ext.1 = zext i16 %125 to i64, !dbg !271
  %__13.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__13.sroa.4.0.insert.ext.1, 16, !dbg !271
  %__13.sroa.4.0.insert.insert.1 = or disjoint i64 %__13.sroa.5.0.insert.insert.1, %__13.sroa.4.0.insert.shift.1, !dbg !271
  %__13.sroa.0.0.insert.ext.1 = zext i16 %124 to i64, !dbg !271
  %__13.sroa.0.0.insert.insert.1 = or disjoint i64 %__13.sroa.4.0.insert.insert.1, %__13.sroa.0.0.insert.ext.1, !dbg !271
  %add1001.1 = or disjoint i32 %add58.1, %mul1000, !dbg !272
  %add.ptr1003.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add1001.1, !dbg !273
  store i64 %__13.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr1003.1, align 8, !dbg !274
  %132 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !242, !noalias !246
  %133 = fptrunc float %div.2 to half, !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %132), !dbg !242, !noalias !246
  %134 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !246
  %135 = fptrunc float %div946.2 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %134), !dbg !251, !noalias !246
  %136 = bitcast half %133 to i16, !dbg !253
  %137 = bitcast half %135 to i16, !dbg !256
  %138 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %139 = fptrunc float %div950.2 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %138), !dbg !257, !noalias !261
  %140 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %141 = fptrunc float %div954.2 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %140), !dbg !266, !noalias !261
  %142 = bitcast half %139 to i16, !dbg !268
  %143 = bitcast half %141 to i16, !dbg !270
  %__13.sroa.6.0.insert.ext.2 = zext i16 %143 to i64, !dbg !271
  %__13.sroa.6.0.insert.shift.2 = shl nuw i64 %__13.sroa.6.0.insert.ext.2, 48, !dbg !271
  %__13.sroa.5.0.insert.ext.2 = zext i16 %142 to i64, !dbg !271
  %__13.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__13.sroa.5.0.insert.ext.2, 32, !dbg !271
  %__13.sroa.5.0.insert.insert.2 = or disjoint i64 %__13.sroa.6.0.insert.shift.2, %__13.sroa.5.0.insert.shift.2, !dbg !271
  %__13.sroa.4.0.insert.ext.2 = zext i16 %137 to i64, !dbg !271
  %__13.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__13.sroa.4.0.insert.ext.2, 16, !dbg !271
  %__13.sroa.4.0.insert.insert.2 = or disjoint i64 %__13.sroa.5.0.insert.insert.2, %__13.sroa.4.0.insert.shift.2, !dbg !271
  %__13.sroa.0.0.insert.ext.2 = zext i16 %136 to i64, !dbg !271
  %__13.sroa.0.0.insert.insert.2 = or disjoint i64 %__13.sroa.4.0.insert.insert.2, %__13.sroa.0.0.insert.ext.2, !dbg !271
  %add1001.2 = or disjoint i32 %add58.2, %mul1000, !dbg !272
  %add.ptr1003.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add1001.2, !dbg !273
  store i64 %__13.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr1003.2, align 8, !dbg !274
  %144 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !242, !noalias !246
  %145 = fptrunc float %div.3 to half, !dbg !242
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %144), !dbg !242, !noalias !246
  %146 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !251, !noalias !246
  %147 = fptrunc float %div946.3 to half, !dbg !251
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %146), !dbg !251, !noalias !246
  %148 = bitcast half %145 to i16, !dbg !253
  %149 = bitcast half %147 to i16, !dbg !256
  %150 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !257, !noalias !261
  %151 = fptrunc float %div950.3 to half, !dbg !257
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %150), !dbg !257, !noalias !261
  %152 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !266, !noalias !261
  %153 = fptrunc float %div954.3 to half, !dbg !266
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %152), !dbg !266, !noalias !261
  %154 = bitcast half %151 to i16, !dbg !268
  %155 = bitcast half %153 to i16, !dbg !270
  %__13.sroa.6.0.insert.ext.3 = zext i16 %155 to i64, !dbg !271
  %__13.sroa.6.0.insert.shift.3 = shl nuw i64 %__13.sroa.6.0.insert.ext.3, 48, !dbg !271
  %__13.sroa.5.0.insert.ext.3 = zext i16 %154 to i64, !dbg !271
  %__13.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__13.sroa.5.0.insert.ext.3, 32, !dbg !271
  %__13.sroa.5.0.insert.insert.3 = or disjoint i64 %__13.sroa.6.0.insert.shift.3, %__13.sroa.5.0.insert.shift.3, !dbg !271
  %__13.sroa.4.0.insert.ext.3 = zext i16 %149 to i64, !dbg !271
  %__13.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__13.sroa.4.0.insert.ext.3, 16, !dbg !271
  %__13.sroa.4.0.insert.insert.3 = or disjoint i64 %__13.sroa.5.0.insert.insert.3, %__13.sroa.4.0.insert.shift.3, !dbg !271
  %__13.sroa.0.0.insert.ext.3 = zext i16 %148 to i64, !dbg !271
  %__13.sroa.0.0.insert.insert.3 = or disjoint i64 %__13.sroa.4.0.insert.insert.3, %__13.sroa.0.0.insert.ext.3, !dbg !271
  %add1001.3 = or disjoint i32 %add58.3, %mul1000, !dbg !272
  %add.ptr1003.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add1001.3, !dbg !273
  store i64 %__13.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr1003.3, align 8, !dbg !274
  fence syncscope("warp") release, !dbg !275
  tail call void @llvm.mxc.barrier.warp(), !dbg !278
  fence syncscope("warp") acquire, !dbg !279
  %invariant.gep1396 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul24, !dbg !280
  %invariant.gep1398 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep1396, i32 %mul29, !dbg !280
  %add.ptr1036 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !281
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr1036, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep1398, i64 16, i1 false), !dbg !282, !tbaa.struct !283, !call_argsrelate !284
  %gep1399.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1398, i32 1024, !dbg !285
  %add.ptr1036.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %6, !dbg !281
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr1036.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep1399.1, i64 16, i1 false), !dbg !282, !tbaa.struct !283, !call_argsrelate !284
  ret void, !dbg !286

for.body479:                                      ; preds = %if.end475, %if.end924
  %numerator.sroa.86.1 = phi <4 x float> [ %numerator.sroa.86.0, %if.end475 ], [ %numerator.sroa.86.2, %if.end924 ], !dbg !287
  %numerator.sroa.58.1 = phi <4 x float> [ %numerator.sroa.58.0, %if.end475 ], [ %numerator.sroa.58.2, %if.end924 ], !dbg !287
  %numerator.sroa.30.1 = phi <4 x float> [ %numerator.sroa.30.0, %if.end475 ], [ %numerator.sroa.30.2, %if.end924 ], !dbg !287
  %numerator.sroa.0.1 = phi <4 x float> [ %numerator.sroa.0.0, %if.end475 ], [ %numerator.sroa.0.2, %if.end924 ], !dbg !287
  %indvars.iv = phi i64 [ 1, %if.end475 ], [ %indvars.iv.next, %if.end924 ]
  %denominator.sroa.0.11392 = phi float [ %denominator.sroa.0.0, %if.end475 ], [ %denominator.sroa.0.2, %if.end924 ]
  %maximum.sroa.0.11391 = phi float [ %maximum.sroa.0.0, %if.end475 ], [ %maximum.sroa.0.2, %if.end924 ]
  %156 = or disjoint i64 %indvars.iv, %idxprom, !dbg !288
  %arrayidx487 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %156, !dbg !289
  %157 = load i32, ptr addrspace(1) %arrayidx487, align 4, !dbg !289, !tbaa !30
  %mul488 = shl nsw i32 %157, 4, !dbg !290
  %cmp489 = icmp slt i32 %157, 0, !dbg !291
  %cmp492.not = icmp sgt i32 %mul488, %1
  %or.cond1345 = select i1 %cmp489, i1 true, i1 %cmp492.not, !dbg !292
  br i1 %or.cond1345, label %if.end924, label %if.then493, !dbg !292

if.then493:                                       ; preds = %for.body479
  fence syncscope("warp") release, !dbg !293
  tail call void @llvm.mxc.barrier.warp(), !dbg !296
  fence syncscope("warp") acquire, !dbg !297
  %conv504 = zext nneg i32 %mul488 to i64
  %.idx = shl nuw nsw i64 %conv504, 7
  %gep1916 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1915, i64 %.idx, !dbg !298
  %qk_fetch.sroa.0.0.copyload1875 = load i64, ptr addrspace(4) %gep1916, align 16, !dbg !299
  %qk_fetch.sroa.14.0..sroa_idx1880 = getelementptr inbounds i8, ptr addrspace(4) %gep1916, i64 8, !dbg !299
  %qk_fetch.sroa.14.0.copyload1881 = load i64, ptr addrspace(4) %qk_fetch.sroa.14.0..sroa_idx1880, align 8, !dbg !299
  store i64 %qk_fetch.sroa.0.0.copyload1875, ptr addrspace(3) %add.ptr39, align 8, !dbg !300
  store i64 %qk_fetch.sroa.14.0.copyload1881, ptr addrspace(3) %add.ptr39.1, align 8, !dbg !300
  %gep1374.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1916, i64 1024, !dbg !298
  %qk_fetch.sroa.0.0.copyload1878 = load i64, ptr addrspace(4) %gep1374.1, align 16, !dbg !299
  %qk_fetch.sroa.14.0.gep1374.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1916, i64 1032, !dbg !299
  %qk_fetch.sroa.14.0.copyload1884 = load i64, ptr addrspace(4) %qk_fetch.sroa.14.0.gep1374.1.sroa_idx, align 8, !dbg !299
  store i64 %qk_fetch.sroa.0.0.copyload1878, ptr addrspace(3) %add.ptr39.11412, align 8, !dbg !300
  store i64 %qk_fetch.sroa.14.0.copyload1884, ptr addrspace(3) %add.ptr39.1.1, align 8, !dbg !300
  fence syncscope("warp") release, !dbg !301
  tail call void @llvm.mxc.barrier.warp(), !dbg !304
  fence syncscope("warp") acquire, !dbg !305
  %k_local.sroa.0.0.copyload1205 = load <4 x half>, ptr addrspace(3) %add.ptr72, align 8, !dbg !306
  %158 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205, <4 x half> %9, <4 x float> zeroinitializer), !dbg !307
  %k_local.sroa.0.0.copyload1205.1 = load <4 x half>, ptr addrspace(3) %add.ptr72.1, align 8, !dbg !306
  %159 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.1, <4 x half> %10, <4 x float> %158), !dbg !307
  %k_local.sroa.0.0.copyload1205.2 = load <4 x half>, ptr addrspace(3) %add.ptr72.2, align 8, !dbg !306
  %160 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.2, <4 x half> %11, <4 x float> %159), !dbg !307
  %k_local.sroa.0.0.copyload1205.3 = load <4 x half>, ptr addrspace(3) %add.ptr72.3, align 8, !dbg !306
  %161 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload1205.3, <4 x half> %12, <4 x float> %160), !dbg !307
  %add604 = add nuw nsw i32 %mul488, %mul603.pre-phi
  %cmp607.not = icmp sgt i32 %add604, %1, !dbg !308
  %scores.sroa.0.0.vec.extract1653 = extractelement <4 x float> %161, i64 0
  %spec.select1917 = select i1 %cmp607.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1653, !dbg !309
  %cmp607.not.1.not = icmp slt i32 %add604, %1, !dbg !308
  %scores.sroa.0.4.vec.extract1670 = extractelement <4 x float> %161, i64 1, !dbg !309
  %condval_1.0.1 = select i1 %cmp607.not.1.not, float %scores.sroa.0.4.vec.extract1670, float 0xFFF0000000000000, !dbg !309
  %add605.2 = or disjoint i32 %add604, 2, !dbg !310
  %cmp607.not.2 = icmp sgt i32 %add605.2, %1, !dbg !308
  %scores.sroa.0.8.vec.extract1687 = extractelement <4 x float> %161, i64 2, !dbg !309
  %condval_1.0.2 = select i1 %cmp607.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1687, !dbg !309
  %add605.3 = or disjoint i32 %add604, 3, !dbg !310
  %cmp607.not.3 = icmp sgt i32 %add605.3, %1, !dbg !308
  %scores.sroa.0.12.vec.extract1704 = extractelement <4 x float> %161, i64 3, !dbg !309
  %condval_1.0.3 = select i1 %cmp607.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1704, !dbg !309
  %162 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select1917, float 0xFFF0000000000000), !dbg !311
  %163 = tail call contract noundef float @llvm.maxnum.f32(float %162, float %condval_1.0.1), !dbg !311
  %164 = tail call contract noundef float @llvm.maxnum.f32(float %163, float %condval_1.0.2), !dbg !311
  %165 = tail call contract noundef float @llvm.maxnum.f32(float %164, float %condval_1.0.3), !dbg !311
  %166 = bitcast float %165 to i32, !dbg !313
  %167 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !315
  %168 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %167) #11, !dbg !318
  %xor.i.i1271 = xor i32 %168, 32, !dbg !319
  %169 = and i32 %168, -64, !dbg !320
  %and.i.i1272 = add nsw i32 %169, 64, !dbg !320
  %cmp.not.i.i1273 = icmp slt i32 %xor.i.i1271, %and.i.i1272, !dbg !321
  %cond.i.i1274 = select i1 %cmp.not.i.i1273, i32 %xor.i.i1271, i32 %168, !dbg !322
  %shl.i.i1275 = shl i32 %cond.i.i1274, 2, !dbg !323
  %170 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1275, i32 %166), !dbg !324
  %171 = bitcast i32 %170 to float, !dbg !325
  %172 = tail call contract noundef float @llvm.maxnum.f32(float %165, float %171), !dbg !326
  %173 = bitcast float %172 to i32, !dbg !328
  %174 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !330
  %175 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %174) #11, !dbg !333
  %xor.i.i1276 = xor i32 %175, 16, !dbg !334
  %176 = and i32 %175, -64, !dbg !335
  %and.i.i1277 = add nsw i32 %176, 64, !dbg !335
  %cmp.not.i.i1278 = icmp slt i32 %xor.i.i1276, %and.i.i1277, !dbg !336
  %cond.i.i1279 = select i1 %cmp.not.i.i1278, i32 %xor.i.i1276, i32 %175, !dbg !337
  %shl.i.i1280 = shl i32 %cond.i.i1279, 2, !dbg !338
  %177 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1280, i32 %173), !dbg !339
  %178 = bitcast i32 %177 to float, !dbg !340
  %179 = tail call contract noundef float @llvm.maxnum.f32(float %172, float %178), !dbg !341
  %180 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.11391, float %179), !dbg !343
  %sub651 = fsub contract float %maximum.sroa.0.11391, %180, !dbg !345
  %mul652 = fmul contract float %sub651, 0x3FC7154760000000, !dbg !346
  %cmp.i.i1281 = fcmp contract olt float %mul652, -1.260000e+02, !dbg !347
  %cond.i.i1282 = select contract i1 %cmp.i.i1281, float 6.400000e+01, float 0.000000e+00, !dbg !347
  %add.i.i1283 = fadd contract float %mul652, %cond.i.i1282, !dbg !347
  %181 = tail call contract float @llvm.exp2.f32(float %add.i.i1283), !dbg !347
  %cond2.i.i1284 = select contract i1 %cmp.i.i1281, float 0x3BF0000000000000, float 1.000000e+00, !dbg !347
  %mul.i.i1285 = fmul contract float %cond2.i.i1284, %181, !dbg !347
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.1, i64 0, !dbg !349
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.1, i64 1, !dbg !349
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.1, i64 2, !dbg !349
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.1, i64 3, !dbg !349
  %mul670 = fmul contract float %mul.i.i1285, %numerator.sroa.0.0.vec.extract, !dbg !350
  %mul674 = fmul contract float %mul.i.i1285, %numerator.sroa.0.4.vec.extract, !dbg !351
  %mul678 = fmul contract float %mul.i.i1285, %numerator.sroa.0.8.vec.extract, !dbg !352
  %mul682 = fmul contract float %mul.i.i1285, %numerator.sroa.0.12.vec.extract, !dbg !353
  %numerator.sroa.0.0.vec.insert1712 = insertelement <4 x float> poison, float %mul670, i64 0, !dbg !354
  %numerator.sroa.0.4.vec.insert1721 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert1712, float %mul674, i64 1, !dbg !354
  %numerator.sroa.0.8.vec.insert1730 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert1721, float %mul678, i64 2, !dbg !354
  %numerator.sroa.0.12.vec.insert1739 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert1730, float %mul682, i64 3, !dbg !354
  %numerator.sroa.30.16.vec.extract = extractelement <4 x float> %numerator.sroa.30.1, i64 0, !dbg !349
  %numerator.sroa.30.20.vec.extract = extractelement <4 x float> %numerator.sroa.30.1, i64 1, !dbg !349
  %numerator.sroa.30.24.vec.extract = extractelement <4 x float> %numerator.sroa.30.1, i64 2, !dbg !349
  %numerator.sroa.30.28.vec.extract = extractelement <4 x float> %numerator.sroa.30.1, i64 3, !dbg !349
  %mul670.1 = fmul contract float %mul.i.i1285, %numerator.sroa.30.16.vec.extract, !dbg !350
  %mul674.1 = fmul contract float %mul.i.i1285, %numerator.sroa.30.20.vec.extract, !dbg !351
  %mul678.1 = fmul contract float %mul.i.i1285, %numerator.sroa.30.24.vec.extract, !dbg !352
  %mul682.1 = fmul contract float %mul.i.i1285, %numerator.sroa.30.28.vec.extract, !dbg !353
  %numerator.sroa.30.16.vec.insert1751 = insertelement <4 x float> poison, float %mul670.1, i64 0, !dbg !354
  %numerator.sroa.30.20.vec.insert1760 = insertelement <4 x float> %numerator.sroa.30.16.vec.insert1751, float %mul674.1, i64 1, !dbg !354
  %numerator.sroa.30.24.vec.insert1769 = insertelement <4 x float> %numerator.sroa.30.20.vec.insert1760, float %mul678.1, i64 2, !dbg !354
  %numerator.sroa.30.28.vec.insert1778 = insertelement <4 x float> %numerator.sroa.30.24.vec.insert1769, float %mul682.1, i64 3, !dbg !354
  %numerator.sroa.58.32.vec.extract = extractelement <4 x float> %numerator.sroa.58.1, i64 0, !dbg !349
  %numerator.sroa.58.36.vec.extract = extractelement <4 x float> %numerator.sroa.58.1, i64 1, !dbg !349
  %numerator.sroa.58.40.vec.extract = extractelement <4 x float> %numerator.sroa.58.1, i64 2, !dbg !349
  %numerator.sroa.58.44.vec.extract = extractelement <4 x float> %numerator.sroa.58.1, i64 3, !dbg !349
  %mul670.2 = fmul contract float %mul.i.i1285, %numerator.sroa.58.32.vec.extract, !dbg !350
  %mul674.2 = fmul contract float %mul.i.i1285, %numerator.sroa.58.36.vec.extract, !dbg !351
  %mul678.2 = fmul contract float %mul.i.i1285, %numerator.sroa.58.40.vec.extract, !dbg !352
  %mul682.2 = fmul contract float %mul.i.i1285, %numerator.sroa.58.44.vec.extract, !dbg !353
  %numerator.sroa.58.32.vec.insert1789 = insertelement <4 x float> poison, float %mul670.2, i64 0, !dbg !354
  %numerator.sroa.58.36.vec.insert1798 = insertelement <4 x float> %numerator.sroa.58.32.vec.insert1789, float %mul674.2, i64 1, !dbg !354
  %numerator.sroa.58.40.vec.insert1807 = insertelement <4 x float> %numerator.sroa.58.36.vec.insert1798, float %mul678.2, i64 2, !dbg !354
  %numerator.sroa.58.44.vec.insert1816 = insertelement <4 x float> %numerator.sroa.58.40.vec.insert1807, float %mul682.2, i64 3, !dbg !354
  %numerator.sroa.86.48.vec.extract = extractelement <4 x float> %numerator.sroa.86.1, i64 0, !dbg !349
  %numerator.sroa.86.52.vec.extract = extractelement <4 x float> %numerator.sroa.86.1, i64 1, !dbg !349
  %numerator.sroa.86.56.vec.extract = extractelement <4 x float> %numerator.sroa.86.1, i64 2, !dbg !349
  %numerator.sroa.86.60.vec.extract = extractelement <4 x float> %numerator.sroa.86.1, i64 3, !dbg !349
  %mul670.3 = fmul contract float %mul.i.i1285, %numerator.sroa.86.48.vec.extract, !dbg !350
  %mul674.3 = fmul contract float %mul.i.i1285, %numerator.sroa.86.52.vec.extract, !dbg !351
  %mul678.3 = fmul contract float %mul.i.i1285, %numerator.sroa.86.56.vec.extract, !dbg !352
  %mul682.3 = fmul contract float %mul.i.i1285, %numerator.sroa.86.60.vec.extract, !dbg !353
  %numerator.sroa.86.48.vec.insert1827 = insertelement <4 x float> poison, float %mul670.3, i64 0, !dbg !354
  %numerator.sroa.86.52.vec.insert1836 = insertelement <4 x float> %numerator.sroa.86.48.vec.insert1827, float %mul674.3, i64 1, !dbg !354
  %numerator.sroa.86.56.vec.insert1845 = insertelement <4 x float> %numerator.sroa.86.52.vec.insert1836, float %mul678.3, i64 2, !dbg !354
  %numerator.sroa.86.60.vec.insert1854 = insertelement <4 x float> %numerator.sroa.86.56.vec.insert1845, float %mul682.3, i64 3, !dbg !354
  %sub706 = fsub contract float %spec.select1917, %180, !dbg !355
  %sub710 = fsub contract float %condval_1.0.1, %180, !dbg !356
  %sub714 = fsub contract float %condval_1.0.2, %180, !dbg !357
  %sub718 = fsub contract float %condval_1.0.3, %180, !dbg !358
  %mul723 = fmul contract float %sub706, 0x3FC7154760000000, !dbg !359
  %mul727 = fmul contract float %sub710, 0x3FC7154760000000, !dbg !360
  %mul731 = fmul contract float %sub714, 0x3FC7154760000000, !dbg !361
  %mul735 = fmul contract float %sub718, 0x3FC7154760000000, !dbg !362
  %add740 = fadd contract float %mul723, 8.000000e+00, !dbg !363
  %add744 = fadd contract float %mul727, 8.000000e+00, !dbg !364
  %add748 = fadd contract float %mul731, 8.000000e+00, !dbg !365
  %add752 = fadd contract float %mul735, 8.000000e+00, !dbg !366
  %cmp.i.i1290 = fcmp contract olt float %add740, -1.260000e+02, !dbg !367
  %cond.i.i1291 = select contract i1 %cmp.i.i1290, float 6.400000e+01, float 0.000000e+00, !dbg !367
  %add.i.i1292 = fadd contract float %add740, %cond.i.i1291, !dbg !367
  %182 = tail call contract float @llvm.exp2.f32(float %add.i.i1292), !dbg !367
  %cond2.i.i1293 = select contract i1 %cmp.i.i1290, float 0x3BF0000000000000, float 1.000000e+00, !dbg !367
  %mul.i.i1294 = fmul contract float %cond2.i.i1293, %182, !dbg !367
  %cmp.i.i1295 = fcmp contract olt float %add744, -1.260000e+02, !dbg !369
  %cond.i.i1296 = select contract i1 %cmp.i.i1295, float 6.400000e+01, float 0.000000e+00, !dbg !369
  %add.i.i1297 = fadd contract float %add744, %cond.i.i1296, !dbg !369
  %183 = tail call contract float @llvm.exp2.f32(float %add.i.i1297), !dbg !369
  %cond2.i.i1298 = select contract i1 %cmp.i.i1295, float 0x3BF0000000000000, float 1.000000e+00, !dbg !369
  %mul.i.i1299 = fmul contract float %cond2.i.i1298, %183, !dbg !369
  %cmp.i.i1300 = fcmp contract olt float %add748, -1.260000e+02, !dbg !371
  %cond.i.i1301 = select contract i1 %cmp.i.i1300, float 6.400000e+01, float 0.000000e+00, !dbg !371
  %add.i.i1302 = fadd contract float %add748, %cond.i.i1301, !dbg !371
  %184 = tail call contract float @llvm.exp2.f32(float %add.i.i1302), !dbg !371
  %cond2.i.i1303 = select contract i1 %cmp.i.i1300, float 0x3BF0000000000000, float 1.000000e+00, !dbg !371
  %mul.i.i1304 = fmul contract float %cond2.i.i1303, %184, !dbg !371
  %cmp.i.i1305 = fcmp contract olt float %add752, -1.260000e+02, !dbg !373
  %cond.i.i1306 = select contract i1 %cmp.i.i1305, float 6.400000e+01, float 0.000000e+00, !dbg !373
  %add.i.i1307 = fadd contract float %add752, %cond.i.i1306, !dbg !373
  %185 = tail call contract float @llvm.exp2.f32(float %add.i.i1307), !dbg !373
  %cond2.i.i1308 = select contract i1 %cmp.i.i1305, float 0x3BF0000000000000, float 1.000000e+00, !dbg !373
  %mul.i.i1309 = fmul contract float %cond2.i.i1308, %185, !dbg !373
  %186 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !375
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !375, !noalias !379
  %187 = fptrunc float %mul.i.i1294 to half, !dbg !375
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %186), !dbg !375, !noalias !379
  %188 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !384
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !384, !noalias !379
  %189 = fptrunc float %mul.i.i1299 to half, !dbg !384
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %188), !dbg !384, !noalias !379
  %190 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !386
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !386, !noalias !390
  %191 = fptrunc float %mul.i.i1304 to half, !dbg !386
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %190), !dbg !386, !noalias !390
  %192 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !395
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !395, !noalias !390
  %193 = fptrunc float %mul.i.i1309 to half, !dbg !395
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %192), !dbg !395, !noalias !390
  %194 = insertelement <4 x half> poison, half %187, i64 0, !dbg !397
  %195 = insertelement <4 x half> %194, half %189, i64 1, !dbg !397
  %196 = insertelement <4 x half> %195, half %191, i64 2, !dbg !397
  %197 = insertelement <4 x half> %196, half %193, i64 3, !dbg !397
  %conv.i.i1326 = fpext half %187 to float, !dbg !398
  %add787 = fadd contract float %conv.i.i1326, 0.000000e+00, !dbg !401
  %conv.i.i1326.1 = fpext half %189 to float, !dbg !398
  %add787.1 = fadd contract float %add787, %conv.i.i1326.1, !dbg !401
  %conv.i.i1326.2 = fpext half %191 to float, !dbg !398
  %add787.2 = fadd contract float %add787.1, %conv.i.i1326.2, !dbg !401
  %conv.i.i1326.3 = fpext half %193 to float, !dbg !398
  %add787.3 = fadd contract float %add787.2, %conv.i.i1326.3, !dbg !401
  %198 = bitcast float %add787.3 to i32, !dbg !402
  %199 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !404
  %200 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %199) #11, !dbg !407
  %xor.i.i1316 = xor i32 %200, 32, !dbg !408
  %201 = and i32 %200, -64, !dbg !409
  %and.i.i1317 = add nsw i32 %201, 64, !dbg !409
  %cmp.not.i.i1318 = icmp slt i32 %xor.i.i1316, %and.i.i1317, !dbg !410
  %cond.i.i1319 = select i1 %cmp.not.i.i1318, i32 %xor.i.i1316, i32 %200, !dbg !411
  %shl.i.i1320 = shl i32 %cond.i.i1319, 2, !dbg !412
  %202 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1320, i32 %198), !dbg !413
  %203 = bitcast i32 %202 to float, !dbg !414
  %add795 = fadd contract float %add787.3, %203, !dbg !415
  %204 = bitcast float %add795 to i32, !dbg !416
  %205 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !418
  %206 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %205) #11, !dbg !421
  %xor.i.i1321 = xor i32 %206, 16, !dbg !422
  %207 = and i32 %206, -64, !dbg !423
  %and.i.i1322 = add nsw i32 %207, 64, !dbg !423
  %cmp.not.i.i1323 = icmp slt i32 %xor.i.i1321, %and.i.i1322, !dbg !424
  %cond.i.i1324 = select i1 %cmp.not.i.i1323, i32 %xor.i.i1321, i32 %206, !dbg !425
  %shl.i.i1325 = shl i32 %cond.i.i1324, 2, !dbg !426
  %208 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1325, i32 %204), !dbg !427
  %209 = bitcast i32 %208 to float, !dbg !428
  %add800 = fadd contract float %add795, %209, !dbg !429
  fence syncscope("warp") release, !dbg !430
  tail call void @llvm.mxc.barrier.warp(), !dbg !433
  fence syncscope("warp") acquire, !dbg !434
  %210 = getelementptr inbounds i8, ptr addrspace(4) %99, i64 %.idx, !dbg !435
  %211 = load i64, ptr addrspace(4) %210, align 8, !dbg !436
  %add.ptr829.1 = getelementptr inbounds i8, ptr addrspace(4) %210, i64 128, !dbg !435
  %212 = load i64, ptr addrspace(4) %add.ptr829.1, align 8, !dbg !436
  %add.ptr829.2 = getelementptr inbounds i8, ptr addrspace(4) %210, i64 256, !dbg !435
  %213 = load i64, ptr addrspace(4) %add.ptr829.2, align 8, !dbg !436
  %add.ptr829.3 = getelementptr inbounds i8, ptr addrspace(4) %210, i64 384, !dbg !435
  %214 = load i64, ptr addrspace(4) %add.ptr829.3, align 8, !dbg !436
  %mul693 = fmul contract float %denominator.sroa.0.11392, %mul.i.i1285, !dbg !437
  %v_column.sroa.34.0.insert.ext1549 = shl i64 %214, 48, !dbg !438
  %v_column.sroa.26.0.insert.ext1514 = shl i64 %213, 32, !dbg !438
  %v_column.sroa.26.0.insert.shift1515 = and i64 %v_column.sroa.26.0.insert.ext1514, 281470681743360, !dbg !438
  %v_column.sroa.26.0.insert.insert1517 = or disjoint i64 %v_column.sroa.34.0.insert.ext1549, %v_column.sroa.26.0.insert.shift1515, !dbg !438
  %v_column.sroa.18.0.insert.ext1479 = shl i64 %212, 16, !dbg !438
  %v_column.sroa.18.0.insert.shift1480 = and i64 %v_column.sroa.18.0.insert.ext1479, 4294901760, !dbg !438
  %v_column.sroa.18.0.insert.insert1482 = or disjoint i64 %v_column.sroa.26.0.insert.insert1517, %v_column.sroa.18.0.insert.shift1480, !dbg !438
  %v_column.sroa.0.0.insert.ext1451 = and i64 %211, 65535, !dbg !438
  %v_column.sroa.0.0.insert.insert1453 = or disjoint i64 %v_column.sroa.18.0.insert.insert1482, %v_column.sroa.0.0.insert.ext1451, !dbg !438
  store i64 %v_column.sroa.0.0.insert.insert1453, ptr addrspace(3) %add.ptr871, align 8, !dbg !438
  %v_fetch.sroa.0.2.extract.shift1586 = lshr i64 %211, 16, !dbg !439
  %215 = shl i64 %214, 32, !dbg !438
  %v_column.sroa.34.0.insert.ext1569 = and i64 %215, -281474976710656, !dbg !438
  %216 = shl i64 %213, 16, !dbg !438
  %v_column.sroa.26.0.insert.shift1535 = and i64 %216, 281470681743360, !dbg !438
  %v_column.sroa.26.0.insert.insert1537 = or disjoint i64 %v_column.sroa.34.0.insert.ext1569, %v_column.sroa.26.0.insert.shift1535, !dbg !438
  %v_column.sroa.18.0.insert.ext1499 = and i64 %212, 4294901760, !dbg !438
  %v_column.sroa.18.0.insert.insert1502 = or disjoint i64 %v_column.sroa.26.0.insert.insert1537, %v_column.sroa.18.0.insert.ext1499, !dbg !438
  %v_column.sroa.0.0.insert.ext1467 = and i64 %v_fetch.sroa.0.2.extract.shift1586, 65535, !dbg !438
  %v_column.sroa.0.0.insert.insert1469 = or disjoint i64 %v_column.sroa.18.0.insert.insert1502, %v_column.sroa.0.0.insert.ext1467, !dbg !438
  store i64 %v_column.sroa.0.0.insert.insert1469, ptr addrspace(3) %add.ptr871.1, align 8, !dbg !438
  %v_fetch.sroa.0.4.extract.shift1589 = lshr i64 %211, 32, !dbg !439
  %217 = shl i64 %214, 16, !dbg !438
  %v_column.sroa.34.0.insert.ext1574 = and i64 %217, -281474976710656, !dbg !438
  %v_column.sroa.26.0.insert.ext1539 = and i64 %213, 281470681743360, !dbg !438
  %v_column.sroa.26.0.insert.insert1542 = or disjoint i64 %v_column.sroa.34.0.insert.ext1574, %v_column.sroa.26.0.insert.ext1539, !dbg !438
  %218 = lshr i64 %212, 16, !dbg !438
  %v_column.sroa.18.0.insert.shift1505 = and i64 %218, 4294901760, !dbg !438
  %v_column.sroa.18.0.insert.insert1507 = or disjoint i64 %v_column.sroa.26.0.insert.insert1542, %v_column.sroa.18.0.insert.shift1505, !dbg !438
  %v_column.sroa.0.0.insert.ext1471 = and i64 %v_fetch.sroa.0.4.extract.shift1589, 65535, !dbg !438
  %v_column.sroa.0.0.insert.insert1473 = or disjoint i64 %v_column.sroa.18.0.insert.insert1507, %v_column.sroa.0.0.insert.ext1471, !dbg !438
  store i64 %v_column.sroa.0.0.insert.insert1473, ptr addrspace(3) %add.ptr871.2, align 8, !dbg !438
  %v_fetch.sroa.0.6.extract.shift1592 = lshr i64 %211, 48, !dbg !439
  %v_fetch.sroa.32.30.extract.shift1625 = and i64 %214, -281474976710656, !dbg !438
  %219 = lshr i64 %213, 16, !dbg !438
  %v_column.sroa.26.0.insert.shift1545 = and i64 %219, 281470681743360, !dbg !438
  %v_column.sroa.26.0.insert.insert1547 = or disjoint i64 %v_fetch.sroa.32.30.extract.shift1625, %v_column.sroa.26.0.insert.shift1545, !dbg !438
  %220 = lshr i64 %212, 32, !dbg !438
  %v_column.sroa.18.0.insert.shift1510 = and i64 %220, 4294901760, !dbg !438
  %v_column.sroa.18.0.insert.insert1512 = or disjoint i64 %v_column.sroa.26.0.insert.insert1547, %v_column.sroa.18.0.insert.shift1510, !dbg !438
  %v_column.sroa.0.0.insert.insert1477 = or disjoint i64 %v_column.sroa.18.0.insert.insert1512, %v_fetch.sroa.0.6.extract.shift1592, !dbg !438
  store i64 %v_column.sroa.0.0.insert.insert1477, ptr addrspace(3) %add.ptr871.3, align 8, !dbg !438
  fence syncscope("warp") release, !dbg !440
  tail call void @llvm.mxc.barrier.warp(), !dbg !443
  fence syncscope("warp") acquire, !dbg !444
  %221 = load <4 x half>, ptr addrspace(3) %add.ptr898, align 8, !dbg !445
  %222 = load <4 x half>, ptr addrspace(3) %add.ptr898.1, align 8, !dbg !445
  %223 = load <4 x half>, ptr addrspace(3) %add.ptr898.2, align 8, !dbg !445
  %224 = load <4 x half>, ptr addrspace(3) %add.ptr898.3, align 8, !dbg !445
  %225 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %221, <4 x half> %197, <4 x float> %numerator.sroa.0.12.vec.insert1739), !dbg !446
  %226 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %222, <4 x half> %197, <4 x float> %numerator.sroa.30.28.vec.insert1778), !dbg !446
  %227 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %223, <4 x half> %197, <4 x float> %numerator.sroa.58.44.vec.insert1816), !dbg !446
  %228 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %224, <4 x half> %197, <4 x float> %numerator.sroa.86.60.vec.insert1854), !dbg !446
  %add804 = fadd contract float %mul693, %add800, !dbg !447
  br label %if.end924, !dbg !448

if.end924:                                        ; preds = %if.then493, %for.body479
  %numerator.sroa.86.2 = phi <4 x float> [ %numerator.sroa.86.1, %for.body479 ], [ %228, %if.then493 ], !dbg !230
  %numerator.sroa.58.2 = phi <4 x float> [ %numerator.sroa.58.1, %for.body479 ], [ %227, %if.then493 ], !dbg !230
  %numerator.sroa.30.2 = phi <4 x float> [ %numerator.sroa.30.1, %for.body479 ], [ %226, %if.then493 ], !dbg !230
  %numerator.sroa.0.2 = phi <4 x float> [ %numerator.sroa.0.1, %for.body479 ], [ %225, %if.then493 ], !dbg !230
  %maximum.sroa.0.2 = phi float [ %maximum.sroa.0.11391, %for.body479 ], [ %180, %if.then493 ], !dbg !230
  %denominator.sroa.0.2 = phi float [ %denominator.sroa.0.11392, %for.body479 ], [ %add804, %if.then493 ], !dbg !230
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !448
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !449
  br i1 %exitcond.not, label %for.cond928.preheader, label %for.body479, !dbg !231, !llvm.loop !450
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
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nomerge }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "mxcc version 1.0.0 (d9102a1572)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v067_codex_power_s8_first_block_init_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v067_codex_power_s8_first_block_init_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 29, column: 3, scope: !40)
!44 = !DILocation(line: 30, column: 43, scope: !40)
!45 = !DILocation(line: 30, column: 29, scope: !40)
!46 = !DILocation(line: 33, column: 24, scope: !40)
!47 = !DILocation(line: 33, column: 203, scope: !40)
!48 = !DILocation(line: 30, column: 124, scope: !40)
!49 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !52)
!50 = distinct !DISubprogram(name: "__barrier_warp", scope: !51, file: !51, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!51 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!52 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !54)
!53 = distinct !DISubprogram(name: "__syncwarp", scope: !51, file: !51, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!54 = distinct !DILocation(line: 36, column: 3, scope: !40)
!55 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !52)
!56 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !52)
!57 = !DILocation(line: 39, column: 140, scope: !40)
!58 = !DILocation(line: 39, column: 168, scope: !40)
!59 = !DILocation(line: 39, column: 94, scope: !40)
!60 = !DILocation(line: 39, column: 174, scope: !40)
!61 = !DILocation(line: 39, column: 57, scope: !40)
!62 = !DILocation(line: 39, column: 38, scope: !40)
!63 = !DILocation(line: 39, column: 111, scope: !40)
!64 = !DILocation(line: 48, column: 50, scope: !40)
!65 = !DILocation(line: 48, column: 79, scope: !40)
!66 = !DILocation(line: 48, column: 58, scope: !40)
!67 = !DILocation(line: 48, column: 22, scope: !40)
!68 = !DILocation(line: 48, column: 86, scope: !40)
!69 = !DILocation(line: 49, column: 10, scope: !40)
!70 = !DILocation(line: 49, column: 26, scope: !40)
!71 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !72)
!72 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !73)
!73 = distinct !DILocation(line: 50, column: 5, scope: !40)
!74 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !72)
!75 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !72)
!76 = !DILocation(line: 52, column: 10, scope: !40)
!77 = !DILocation(line: 53, column: 45, scope: !40)
!78 = !DILocation(line: 53, column: 31, scope: !40)
!79 = !DILocation(line: 56, column: 211, scope: !40)
!80 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !81)
!81 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !82)
!82 = distinct !DILocation(line: 59, column: 5, scope: !40)
!83 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !81)
!84 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !81)
!85 = !DILocation(line: 64, column: 30, scope: !40)
!86 = !DILocation(line: 66, column: 37, scope: !40)
!87 = !DILocation(line: 74, column: 72, scope: !40)
!88 = !DILocation(line: 74, column: 11, scope: !40)
!89 = !DILocation(line: 74, column: 61, scope: !40)
!90 = !DILocation(line: 351, column: 10, scope: !91, inlinedAt: !93)
!91 = distinct !DISubprogram(name: "max", scope: !92, file: !92, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!92 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!93 = distinct !DILocation(line: 84, column: 26, scope: !40)
!94 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !96)
!95 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!96 = distinct !DILocation(line: 86, column: 46, scope: !40)
!97 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !99)
!98 = distinct !DISubprogram(name: "__lane_id", scope: !51, file: !51, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!99 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !101)
!100 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!101 = distinct !DILocation(line: 1019, column: 11, scope: !95, inlinedAt: !96)
!102 = !DILocation(line: 171, column: 10, scope: !98, inlinedAt: !99)
!103 = !DILocation(line: 991, column: 20, scope: !100, inlinedAt: !101)
!104 = !DILocation(line: 992, column: 36, scope: !100, inlinedAt: !101)
!105 = !DILocation(line: 992, column: 17, scope: !100, inlinedAt: !101)
!106 = !DILocation(line: 992, column: 11, scope: !100, inlinedAt: !101)
!107 = !DILocation(line: 993, column: 43, scope: !100, inlinedAt: !101)
!108 = !DILocation(line: 993, column: 10, scope: !100, inlinedAt: !101)
!109 = !DILocation(line: 1020, column: 14, scope: !95, inlinedAt: !96)
!110 = !DILocation(line: 351, column: 10, scope: !91, inlinedAt: !111)
!111 = distinct !DILocation(line: 86, column: 24, scope: !40)
!112 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !113)
!113 = distinct !DILocation(line: 87, column: 46, scope: !40)
!114 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !115)
!115 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !116)
!116 = distinct !DILocation(line: 1019, column: 11, scope: !95, inlinedAt: !113)
!117 = !DILocation(line: 171, column: 10, scope: !98, inlinedAt: !115)
!118 = !DILocation(line: 991, column: 20, scope: !100, inlinedAt: !116)
!119 = !DILocation(line: 992, column: 36, scope: !100, inlinedAt: !116)
!120 = !DILocation(line: 992, column: 17, scope: !100, inlinedAt: !116)
!121 = !DILocation(line: 992, column: 11, scope: !100, inlinedAt: !116)
!122 = !DILocation(line: 993, column: 43, scope: !100, inlinedAt: !116)
!123 = !DILocation(line: 993, column: 10, scope: !100, inlinedAt: !116)
!124 = !DILocation(line: 1020, column: 14, scope: !95, inlinedAt: !113)
!125 = !DILocation(line: 351, column: 10, scope: !91, inlinedAt: !126)
!126 = distinct !DILocation(line: 87, column: 24, scope: !40)
!127 = !DILocation(line: 98, column: 24, scope: !40)
!128 = !DILocation(line: 99, column: 24, scope: !40)
!129 = !DILocation(line: 100, column: 24, scope: !40)
!130 = !DILocation(line: 101, column: 24, scope: !40)
!131 = !DILocation(line: 103, column: 23, scope: !40)
!132 = !DILocation(line: 104, column: 23, scope: !40)
!133 = !DILocation(line: 105, column: 23, scope: !40)
!134 = !DILocation(line: 106, column: 23, scope: !40)
!135 = !DILocation(line: 108, column: 21, scope: !40)
!136 = !DILocation(line: 109, column: 21, scope: !40)
!137 = !DILocation(line: 110, column: 21, scope: !40)
!138 = !DILocation(line: 111, column: 21, scope: !40)
!139 = !DILocation(line: 285, column: 49, scope: !140, inlinedAt: !141)
!140 = distinct !DISubprogram(name: "exp2f", scope: !92, file: !92, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!141 = distinct !DILocation(line: 112, column: 13, scope: !40)
!142 = !DILocation(line: 285, column: 49, scope: !140, inlinedAt: !143)
!143 = distinct !DILocation(line: 113, column: 13, scope: !40)
!144 = !DILocation(line: 285, column: 49, scope: !140, inlinedAt: !145)
!145 = distinct !DILocation(line: 114, column: 13, scope: !40)
!146 = !DILocation(line: 285, column: 49, scope: !140, inlinedAt: !147)
!147 = distinct !DILocation(line: 115, column: 13, scope: !40)
!148 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !151)
!149 = distinct !DISubprogram(name: "__float2half_rn", scope: !150, file: !150, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!150 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!151 = distinct !DILocation(line: 1077, column: 18, scope: !152, inlinedAt: !153)
!152 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !150, file: !150, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!153 = distinct !DILocation(line: 1295, column: 23, scope: !154, inlinedAt: !155)
!154 = distinct !DISubprogram(name: "__float22half2_rn", scope: !150, file: !150, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!155 = distinct !DILocation(line: 116, column: 27, scope: !40)
!156 = !{!157, !159}
!157 = distinct !{!157, !158, !"_ZL17__floats2half2_rnff: %agg.result"}
!158 = distinct !{!158, !"_ZL17__floats2half2_rnff"}
!159 = distinct !{!159, !160, !"_ZL17__float22half2_rn6float2: %agg.result"}
!160 = distinct !{!160, !"_ZL17__float22half2_rn6float2"}
!161 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !162)
!162 = distinct !DILocation(line: 1077, column: 38, scope: !152, inlinedAt: !153)
!163 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !164)
!164 = distinct !DILocation(line: 1077, column: 18, scope: !152, inlinedAt: !165)
!165 = distinct !DILocation(line: 1295, column: 23, scope: !154, inlinedAt: !166)
!166 = distinct !DILocation(line: 117, column: 27, scope: !40)
!167 = !{!168, !170}
!168 = distinct !{!168, !169, !"_ZL17__floats2half2_rnff: %agg.result"}
!169 = distinct !{!169, !"_ZL17__floats2half2_rnff"}
!170 = distinct !{!170, !171, !"_ZL17__float22half2_rn6float2: %agg.result"}
!171 = distinct !{!171, !"_ZL17__float22half2_rn6float2"}
!172 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !173)
!173 = distinct !DILocation(line: 1077, column: 38, scope: !152, inlinedAt: !165)
!174 = !DILocation(line: 118, column: 34, scope: !40)
!175 = !DILocation(line: 1082, column: 16, scope: !176, inlinedAt: !177)
!176 = distinct !DISubprogram(name: "__half2float", scope: !150, file: !150, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!177 = distinct !DILocation(line: 136, column: 55, scope: !178, inlinedAt: !179)
!178 = distinct !DISubprogram(name: "operator float", scope: !150, file: !150, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!179 = distinct !DILocation(line: 122, column: 50, scope: !40)
!180 = !DILocation(line: 122, column: 40, scope: !40)
!181 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !182)
!182 = distinct !DILocation(line: 124, column: 40, scope: !40)
!183 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !184)
!184 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !185)
!185 = distinct !DILocation(line: 1019, column: 11, scope: !95, inlinedAt: !182)
!186 = !DILocation(line: 171, column: 10, scope: !98, inlinedAt: !184)
!187 = !DILocation(line: 991, column: 20, scope: !100, inlinedAt: !185)
!188 = !DILocation(line: 992, column: 36, scope: !100, inlinedAt: !185)
!189 = !DILocation(line: 992, column: 17, scope: !100, inlinedAt: !185)
!190 = !DILocation(line: 992, column: 11, scope: !100, inlinedAt: !185)
!191 = !DILocation(line: 993, column: 43, scope: !100, inlinedAt: !185)
!192 = !DILocation(line: 993, column: 10, scope: !100, inlinedAt: !185)
!193 = !DILocation(line: 1020, column: 14, scope: !95, inlinedAt: !182)
!194 = !DILocation(line: 124, column: 38, scope: !40)
!195 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !196)
!196 = distinct !DILocation(line: 125, column: 40, scope: !40)
!197 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !198)
!198 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !199)
!199 = distinct !DILocation(line: 1019, column: 11, scope: !95, inlinedAt: !196)
!200 = !DILocation(line: 171, column: 10, scope: !98, inlinedAt: !198)
!201 = !DILocation(line: 991, column: 20, scope: !100, inlinedAt: !199)
!202 = !DILocation(line: 992, column: 36, scope: !100, inlinedAt: !199)
!203 = !DILocation(line: 992, column: 17, scope: !100, inlinedAt: !199)
!204 = !DILocation(line: 992, column: 11, scope: !100, inlinedAt: !199)
!205 = !DILocation(line: 993, column: 43, scope: !100, inlinedAt: !199)
!206 = !DILocation(line: 993, column: 10, scope: !100, inlinedAt: !199)
!207 = !DILocation(line: 1020, column: 14, scope: !95, inlinedAt: !196)
!208 = !DILocation(line: 125, column: 38, scope: !40)
!209 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !210)
!210 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !211)
!211 = distinct !DILocation(line: 127, column: 5, scope: !40)
!212 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !210)
!213 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !210)
!214 = !DILocation(line: 130, column: 52, scope: !40)
!215 = !DILocation(line: 130, column: 38, scope: !40)
!216 = !DILocation(line: 137, column: 24, scope: !40)
!217 = !DILocation(line: 137, column: 157, scope: !40)
!218 = !DILocation(line: 135, column: 25, scope: !40)
!219 = !DILocation(line: 137, column: 40, scope: !40)
!220 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !221)
!221 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !222)
!222 = distinct !DILocation(line: 139, column: 5, scope: !40)
!223 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !221)
!224 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !221)
!225 = !DILocation(line: 142, column: 119, scope: !40)
!226 = !DILocation(line: 142, column: 63, scope: !40)
!227 = !DILocation(line: 142, column: 44, scope: !40)
!228 = !DILocation(line: 147, column: 46, scope: !40)
!229 = !DILocation(line: 126, column: 38, scope: !40)
!230 = !DILocation(line: 0, scope: !40)
!231 = !DILocation(line: 154, column: 3, scope: !40)
!232 = !DILocation(line: 278, column: 22, scope: !40)
!233 = !DILocation(line: 280, column: 24, scope: !40)
!234 = !DILocation(line: 281, column: 24, scope: !40)
!235 = !DILocation(line: 282, column: 24, scope: !40)
!236 = !DILocation(line: 283, column: 24, scope: !40)
!237 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !238)
!238 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !239)
!239 = distinct !DILocation(line: 286, column: 3, scope: !40)
!240 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !238)
!241 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !238)
!242 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !243)
!243 = distinct !DILocation(line: 1077, column: 18, scope: !152, inlinedAt: !244)
!244 = distinct !DILocation(line: 1295, column: 23, scope: !154, inlinedAt: !245)
!245 = distinct !DILocation(line: 291, column: 28, scope: !40)
!246 = !{!247, !249}
!247 = distinct !{!247, !248, !"_ZL17__floats2half2_rnff: %agg.result"}
!248 = distinct !{!248, !"_ZL17__floats2half2_rnff"}
!249 = distinct !{!249, !250, !"_ZL17__float22half2_rn6float2: %agg.result"}
!250 = distinct !{!250, !"_ZL17__float22half2_rn6float2"}
!251 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !252)
!252 = distinct !DILocation(line: 1077, column: 38, scope: !152, inlinedAt: !244)
!253 = !DILocation(line: 596, column: 67, scope: !254, inlinedAt: !255)
!254 = distinct !DISubprogram(name: "__half2", scope: !150, file: !150, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!255 = distinct !DILocation(line: 1077, column: 10, scope: !152, inlinedAt: !244)
!256 = !DILocation(line: 596, column: 73, scope: !254, inlinedAt: !255)
!257 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !258)
!258 = distinct !DILocation(line: 1077, column: 18, scope: !152, inlinedAt: !259)
!259 = distinct !DILocation(line: 1295, column: 23, scope: !154, inlinedAt: !260)
!260 = distinct !DILocation(line: 292, column: 28, scope: !40)
!261 = !{!262, !264}
!262 = distinct !{!262, !263, !"_ZL17__floats2half2_rnff: %agg.result"}
!263 = distinct !{!263, !"_ZL17__floats2half2_rnff"}
!264 = distinct !{!264, !265, !"_ZL17__float22half2_rn6float2: %agg.result"}
!265 = distinct !{!265, !"_ZL17__float22half2_rn6float2"}
!266 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !267)
!267 = distinct !DILocation(line: 1077, column: 38, scope: !152, inlinedAt: !259)
!268 = !DILocation(line: 596, column: 67, scope: !254, inlinedAt: !269)
!269 = distinct !DILocation(line: 1077, column: 10, scope: !152, inlinedAt: !259)
!270 = !DILocation(line: 596, column: 73, scope: !254, inlinedAt: !269)
!271 = !DILocation(line: 293, column: 38, scope: !40)
!272 = !DILocation(line: 294, column: 141, scope: !40)
!273 = !DILocation(line: 294, column: 22, scope: !40)
!274 = !DILocation(line: 294, column: 184, scope: !40)
!275 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !276)
!276 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !277)
!277 = distinct !DILocation(line: 296, column: 3, scope: !40)
!278 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !276)
!279 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !276)
!280 = !DILocation(line: 298, column: 8, scope: !40)
!281 = !DILocation(line: 299, column: 22, scope: !40)
!282 = !DILocation(line: 299, column: 134, scope: !40)
!283 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!284 = !{i32 2, i32 -1, i32 -1, i32 -1}
!285 = !DILocation(line: 299, column: 153, scope: !40)
!286 = !DILocation(line: 301, column: 1, scope: !40)
!287 = !DILocation(line: 44, column: 37, scope: !40)
!288 = !DILocation(line: 155, column: 90, scope: !40)
!289 = !DILocation(line: 155, column: 26, scope: !40)
!290 = !DILocation(line: 155, column: 103, scope: !40)
!291 = !DILocation(line: 156, column: 12, scope: !40)
!292 = !DILocation(line: 156, column: 30, scope: !40)
!293 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !294)
!294 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !295)
!295 = distinct !DILocation(line: 157, column: 7, scope: !40)
!296 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !294)
!297 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !294)
!298 = !DILocation(line: 160, column: 47, scope: !40)
!299 = !DILocation(line: 160, column: 33, scope: !40)
!300 = !DILocation(line: 163, column: 213, scope: !40)
!301 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !302)
!302 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !303)
!303 = distinct !DILocation(line: 166, column: 7, scope: !40)
!304 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !302)
!305 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !302)
!306 = !DILocation(line: 171, column: 32, scope: !40)
!307 = !DILocation(line: 173, column: 37, scope: !40)
!308 = !DILocation(line: 181, column: 78, scope: !40)
!309 = !DILocation(line: 181, column: 13, scope: !40)
!310 = !DILocation(line: 181, column: 65, scope: !40)
!311 = !DILocation(line: 351, column: 10, scope: !91, inlinedAt: !312)
!312 = distinct !DILocation(line: 191, column: 28, scope: !40)
!313 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !314)
!314 = distinct !DILocation(line: 193, column: 48, scope: !40)
!315 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !316)
!316 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !317)
!317 = distinct !DILocation(line: 1019, column: 11, scope: !95, inlinedAt: !314)
!318 = !DILocation(line: 171, column: 10, scope: !98, inlinedAt: !316)
!319 = !DILocation(line: 991, column: 20, scope: !100, inlinedAt: !317)
!320 = !DILocation(line: 992, column: 36, scope: !100, inlinedAt: !317)
!321 = !DILocation(line: 992, column: 17, scope: !100, inlinedAt: !317)
!322 = !DILocation(line: 992, column: 11, scope: !100, inlinedAt: !317)
!323 = !DILocation(line: 993, column: 43, scope: !100, inlinedAt: !317)
!324 = !DILocation(line: 993, column: 10, scope: !100, inlinedAt: !317)
!325 = !DILocation(line: 1020, column: 14, scope: !95, inlinedAt: !314)
!326 = !DILocation(line: 351, column: 10, scope: !91, inlinedAt: !327)
!327 = distinct !DILocation(line: 193, column: 26, scope: !40)
!328 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !329)
!329 = distinct !DILocation(line: 194, column: 48, scope: !40)
!330 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !331)
!331 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !332)
!332 = distinct !DILocation(line: 1019, column: 11, scope: !95, inlinedAt: !329)
!333 = !DILocation(line: 171, column: 10, scope: !98, inlinedAt: !331)
!334 = !DILocation(line: 991, column: 20, scope: !100, inlinedAt: !332)
!335 = !DILocation(line: 992, column: 36, scope: !100, inlinedAt: !332)
!336 = !DILocation(line: 992, column: 17, scope: !100, inlinedAt: !332)
!337 = !DILocation(line: 992, column: 11, scope: !100, inlinedAt: !332)
!338 = !DILocation(line: 993, column: 43, scope: !100, inlinedAt: !332)
!339 = !DILocation(line: 993, column: 10, scope: !100, inlinedAt: !332)
!340 = !DILocation(line: 1020, column: 14, scope: !95, inlinedAt: !329)
!341 = !DILocation(line: 351, column: 10, scope: !91, inlinedAt: !342)
!342 = distinct !DILocation(line: 194, column: 26, scope: !40)
!343 = !DILocation(line: 351, column: 10, scope: !91, inlinedAt: !344)
!344 = distinct !DILocation(line: 195, column: 24, scope: !40)
!345 = !DILocation(line: 196, column: 39, scope: !40)
!346 = !DILocation(line: 196, column: 57, scope: !40)
!347 = !DILocation(line: 285, column: 49, scope: !140, inlinedAt: !348)
!348 = distinct !DILocation(line: 196, column: 20, scope: !40)
!349 = !DILocation(line: 200, column: 25, scope: !40)
!350 = !DILocation(line: 202, column: 26, scope: !40)
!351 = !DILocation(line: 203, column: 26, scope: !40)
!352 = !DILocation(line: 204, column: 26, scope: !40)
!353 = !DILocation(line: 205, column: 26, scope: !40)
!354 = !DILocation(line: 206, column: 47, scope: !40)
!355 = !DILocation(line: 219, column: 29, scope: !40)
!356 = !DILocation(line: 220, column: 29, scope: !40)
!357 = !DILocation(line: 221, column: 29, scope: !40)
!358 = !DILocation(line: 222, column: 29, scope: !40)
!359 = !DILocation(line: 224, column: 27, scope: !40)
!360 = !DILocation(line: 225, column: 27, scope: !40)
!361 = !DILocation(line: 226, column: 27, scope: !40)
!362 = !DILocation(line: 227, column: 27, scope: !40)
!363 = !DILocation(line: 229, column: 24, scope: !40)
!364 = !DILocation(line: 230, column: 24, scope: !40)
!365 = !DILocation(line: 231, column: 24, scope: !40)
!366 = !DILocation(line: 232, column: 24, scope: !40)
!367 = !DILocation(line: 285, column: 49, scope: !140, inlinedAt: !368)
!368 = distinct !DILocation(line: 233, column: 15, scope: !40)
!369 = !DILocation(line: 285, column: 49, scope: !140, inlinedAt: !370)
!370 = distinct !DILocation(line: 234, column: 15, scope: !40)
!371 = !DILocation(line: 285, column: 49, scope: !140, inlinedAt: !372)
!372 = distinct !DILocation(line: 235, column: 15, scope: !40)
!373 = !DILocation(line: 285, column: 49, scope: !140, inlinedAt: !374)
!374 = distinct !DILocation(line: 236, column: 15, scope: !40)
!375 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !376)
!376 = distinct !DILocation(line: 1077, column: 18, scope: !152, inlinedAt: !377)
!377 = distinct !DILocation(line: 1295, column: 23, scope: !154, inlinedAt: !378)
!378 = distinct !DILocation(line: 237, column: 29, scope: !40)
!379 = !{!380, !382}
!380 = distinct !{!380, !381, !"_ZL17__floats2half2_rnff: %agg.result"}
!381 = distinct !{!381, !"_ZL17__floats2half2_rnff"}
!382 = distinct !{!382, !383, !"_ZL17__float22half2_rn6float2: %agg.result"}
!383 = distinct !{!383, !"_ZL17__float22half2_rn6float2"}
!384 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !385)
!385 = distinct !DILocation(line: 1077, column: 38, scope: !152, inlinedAt: !377)
!386 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !387)
!387 = distinct !DILocation(line: 1077, column: 18, scope: !152, inlinedAt: !388)
!388 = distinct !DILocation(line: 1295, column: 23, scope: !154, inlinedAt: !389)
!389 = distinct !DILocation(line: 238, column: 29, scope: !40)
!390 = !{!391, !393}
!391 = distinct !{!391, !392, !"_ZL17__floats2half2_rnff: %agg.result"}
!392 = distinct !{!392, !"_ZL17__floats2half2_rnff"}
!393 = distinct !{!393, !394, !"_ZL17__float22half2_rn6float2: %agg.result"}
!394 = distinct !{!394, !"_ZL17__float22half2_rn6float2"}
!395 = !DILocation(line: 1007, column: 10, scope: !149, inlinedAt: !396)
!396 = distinct !DILocation(line: 1077, column: 38, scope: !152, inlinedAt: !388)
!397 = !DILocation(line: 239, column: 36, scope: !40)
!398 = !DILocation(line: 1082, column: 16, scope: !176, inlinedAt: !399)
!399 = distinct !DILocation(line: 136, column: 55, scope: !178, inlinedAt: !400)
!400 = distinct !DILocation(line: 243, column: 52, scope: !40)
!401 = !DILocation(line: 243, column: 42, scope: !40)
!402 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !403)
!403 = distinct !DILocation(line: 245, column: 42, scope: !40)
!404 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !405)
!405 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !406)
!406 = distinct !DILocation(line: 1019, column: 11, scope: !95, inlinedAt: !403)
!407 = !DILocation(line: 171, column: 10, scope: !98, inlinedAt: !405)
!408 = !DILocation(line: 991, column: 20, scope: !100, inlinedAt: !406)
!409 = !DILocation(line: 992, column: 36, scope: !100, inlinedAt: !406)
!410 = !DILocation(line: 992, column: 17, scope: !100, inlinedAt: !406)
!411 = !DILocation(line: 992, column: 11, scope: !100, inlinedAt: !406)
!412 = !DILocation(line: 993, column: 43, scope: !100, inlinedAt: !406)
!413 = !DILocation(line: 993, column: 10, scope: !100, inlinedAt: !406)
!414 = !DILocation(line: 1020, column: 14, scope: !95, inlinedAt: !403)
!415 = !DILocation(line: 245, column: 40, scope: !40)
!416 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !417)
!417 = distinct !DILocation(line: 246, column: 42, scope: !40)
!418 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !419)
!419 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !420)
!420 = distinct !DILocation(line: 1019, column: 11, scope: !95, inlinedAt: !417)
!421 = !DILocation(line: 171, column: 10, scope: !98, inlinedAt: !419)
!422 = !DILocation(line: 991, column: 20, scope: !100, inlinedAt: !420)
!423 = !DILocation(line: 992, column: 36, scope: !100, inlinedAt: !420)
!424 = !DILocation(line: 992, column: 17, scope: !100, inlinedAt: !420)
!425 = !DILocation(line: 992, column: 11, scope: !100, inlinedAt: !420)
!426 = !DILocation(line: 993, column: 43, scope: !100, inlinedAt: !420)
!427 = !DILocation(line: 993, column: 10, scope: !100, inlinedAt: !420)
!428 = !DILocation(line: 1020, column: 14, scope: !95, inlinedAt: !417)
!429 = !DILocation(line: 246, column: 40, scope: !40)
!430 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !431)
!431 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !432)
!432 = distinct !DILocation(line: 248, column: 7, scope: !40)
!433 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !431)
!434 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !431)
!435 = !DILocation(line: 251, column: 56, scope: !40)
!436 = !DILocation(line: 251, column: 42, scope: !40)
!437 = !DILocation(line: 208, column: 40, scope: !40)
!438 = !DILocation(line: 258, column: 163, scope: !40)
!439 = !DILocation(line: 256, column: 27, scope: !40)
!440 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !441)
!441 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !442)
!442 = distinct !DILocation(line: 260, column: 7, scope: !40)
!443 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !441)
!444 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !441)
!445 = !DILocation(line: 263, column: 46, scope: !40)
!446 = !DILocation(line: 268, column: 46, scope: !40)
!447 = !DILocation(line: 247, column: 40, scope: !40)
!448 = !DILocation(line: 154, column: 40, scope: !40)
!449 = !DILocation(line: 154, column: 35, scope: !40)
!450 = distinct !{!450, !231, !451, !32, !452}
!451 = !DILocation(line: 274, column: 3, scope: !40)
!452 = !{!"llvm.loop.unroll.disable"}
