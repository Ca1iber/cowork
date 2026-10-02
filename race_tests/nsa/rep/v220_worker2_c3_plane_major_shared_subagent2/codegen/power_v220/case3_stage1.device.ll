; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v220_worker2_c3_plane_major_shared_subagent2/codegen/power_v220/case3_stage1.device.cpp'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v220_worker2_c3_plane_major_shared_subagent2/codegen/power_v220/case3_stage1.device.cpp"
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
  %mul = shl nsw i32 %0, 11
  %1 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !42
  %mul8 = shl nuw nsw i32 %1, 3
  %add = add nuw nsw i32 %mul8, %mul
  %2 = shl nuw nsw i32 %1, 7
  %mul20 = and i32 %2, 1024
  %3 = shl nuw nsw i32 %1, 2
  %mul25 = and i32 %3, 4032
  %and28 = and i32 %1, 7
  %shr32 = lshr i32 %1, 4
  %shr40 = and i32 %shr32, 1
  %4 = zext nneg i32 %add to i64, !dbg !43
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %4, !dbg !44
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %add.ptr, align 16, !dbg !45
  %qk_fetch.sroa.18.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !45
  %qk_fetch.sroa.18.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.add.ptr.sroa_idx, align 8, !dbg !45
  %xor = xor i32 %shr32, %and28
  %5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul25, !dbg !46
  %6 = getelementptr inbounds %struct.__half, ptr addrspace(3) %5, i32 %mul20, !dbg !46
  %.idx853 = shl nuw nsw i32 %xor, 4, !dbg !46
  %7 = getelementptr inbounds i8, ptr addrspace(3) %6, i32 %.idx853, !dbg !46
  %add.ptr45.idx = shl nuw nsw i32 %shr40, 3, !dbg !46
  %add.ptr45 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr45.idx, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr45, align 8, !dbg !47
  %xor41.1 = shl nuw nsw i32 %shr40, 3, !dbg !46
  %add.ptr45.idx.1 = xor i32 %xor41.1, 8, !dbg !46
  %add.ptr45.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 %add.ptr45.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.18.0.copyload, ptr addrspace(3) %add.ptr45.1, align 8, !dbg !47
  %8 = add nuw nsw i64 %4, 512, !dbg !48
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %8, !dbg !44
  %qk_fetch.sroa.0.0.copyload1299 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !45
  %qk_fetch.sroa.18.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !45
  %qk_fetch.sroa.18.0.copyload1306 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.add.ptr.1.sroa_idx, align 8, !dbg !45
  %add33.1 = add nuw nsw i32 %shr32, 4
  %xor.1 = xor i32 %add33.1, %and28
  %9 = getelementptr inbounds i8, ptr addrspace(3) %6, i32 512, !dbg !46
  %.idx853.1866 = shl nuw nsw i32 %xor.1, 4, !dbg !46
  %10 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 %.idx853.1866, !dbg !46
  %add.ptr45.1868 = getelementptr inbounds i8, ptr addrspace(3) %10, i32 %add.ptr45.idx, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1299, ptr addrspace(3) %add.ptr45.1868, align 8, !dbg !47
  %add.ptr45.1.1 = getelementptr inbounds i8, ptr addrspace(3) %10, i32 %add.ptr45.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.18.0.copyload1306, ptr addrspace(3) %add.ptr45.1.1, align 8, !dbg !47
  %11 = add nuw nsw i64 %4, 1024, !dbg !48
  %add.ptr.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %11, !dbg !44
  %qk_fetch.sroa.0.0.copyload1300 = load i64, ptr addrspace(4) %add.ptr.2, align 16, !dbg !45
  %qk_fetch.sroa.18.0.add.ptr.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.2, i64 8, !dbg !45
  %qk_fetch.sroa.18.0.copyload1307 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.add.ptr.2.sroa_idx, align 8, !dbg !45
  %12 = getelementptr inbounds i8, ptr addrspace(3) %6, i32 1024, !dbg !46
  %13 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 %.idx853, !dbg !46
  %add.ptr45.2 = getelementptr inbounds i8, ptr addrspace(3) %13, i32 %add.ptr45.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1300, ptr addrspace(3) %add.ptr45.2, align 8, !dbg !47
  %add.ptr45.1.2 = getelementptr inbounds i8, ptr addrspace(3) %13, i32 %add.ptr45.idx, !dbg !46
  store i64 %qk_fetch.sroa.18.0.copyload1307, ptr addrspace(3) %add.ptr45.1.2, align 8, !dbg !47
  %14 = add nuw nsw i64 %4, 1536, !dbg !48
  %add.ptr.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %14, !dbg !44
  %qk_fetch.sroa.0.0.copyload1301 = load i64, ptr addrspace(4) %add.ptr.3, align 16, !dbg !45
  %qk_fetch.sroa.18.0.add.ptr.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.3, i64 8, !dbg !45
  %qk_fetch.sroa.18.0.copyload1308 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.add.ptr.3.sroa_idx, align 8, !dbg !45
  %15 = getelementptr inbounds i8, ptr addrspace(3) %6, i32 1536, !dbg !46
  %16 = getelementptr inbounds i8, ptr addrspace(3) %15, i32 %.idx853.1866, !dbg !46
  %add.ptr45.3 = getelementptr inbounds i8, ptr addrspace(3) %16, i32 %add.ptr45.idx.1, !dbg !46
  store i64 %qk_fetch.sroa.0.0.copyload1301, ptr addrspace(3) %add.ptr45.3, align 8, !dbg !47
  %add.ptr45.1.3 = getelementptr inbounds i8, ptr addrspace(3) %16, i32 %add.ptr45.idx, !dbg !46
  store i64 %qk_fetch.sroa.18.0.copyload1308, ptr addrspace(3) %add.ptr45.1.3, align 8, !dbg !47
  fence syncscope("warp") release, !dbg !49
  tail call void @llvm.mxc.barrier.warp(), !dbg !55
  fence syncscope("warp") acquire, !dbg !56
  %and56 = shl nuw nsw i32 %1, 6
  %mul57 = and i32 %and56, 960
  %shr62 = lshr i32 %1, 5
  %and73 = lshr i32 %1, 3
  %17 = xor i32 %and73, %shr32
  %xor66 = xor i32 %shr62, %and28, !dbg !57
  %add.ptr82.idx = shl nuw nsw i32 %xor66, 4, !dbg !58
  %add63.1 = add nuw nsw i32 %shr62, 2, !dbg !59
  %xor66.1 = xor i32 %add63.1, %and28, !dbg !57
  %add.ptr82.idx.1 = shl nuw nsw i32 %xor66.1, 4, !dbg !58
  %add63.2 = add nuw nsw i32 %shr62, 4, !dbg !59
  %xor66.2 = xor i32 %add63.2, %and28, !dbg !57
  %add.ptr82.idx.2 = shl nuw nsw i32 %xor66.2, 4, !dbg !58
  %add63.3 = add nuw nsw i32 %shr62, 6, !dbg !59
  %xor66.3 = xor i32 %add63.3, %and28, !dbg !57
  %add.ptr82.idx.3 = shl nuw nsw i32 %xor66.3, 4, !dbg !58
  %idxprom = zext nneg i32 %0 to i64, !dbg !60
  %arrayidx105 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %idxprom, !dbg !60
  %18 = load i32, ptr addrspace(1) %arrayidx105, align 4, !dbg !60, !tbaa !30
  %mul106 = shl nsw i32 %18, 4, !dbg !61
  %cmp107 = icmp slt i32 %18, 0, !dbg !62
  %cmp109.not = icmp sgt i32 %mul106, %0
  %or.cond = select i1 %cmp107, i1 true, i1 %cmp109.not, !dbg !63
  br i1 %or.cond, label %if.end509, label %if.then, !dbg !63

if.then:                                          ; preds = %entry
  %xor75779 = xor i32 %17, %1
  %xor78 = shl nuw nsw i32 %xor75779, 2
  %mul79 = and i32 %xor78, 4
  %add58 = or disjoint i32 %mul79, %mul57
  %add68.4 = or disjoint i32 %add58, 1024, !dbg !64
  %19 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add68.4, !dbg !58
  %add.ptr82.7 = getelementptr inbounds i8, ptr addrspace(3) %19, i32 %add.ptr82.idx.3, !dbg !58
  %20 = load <4 x half>, ptr addrspace(3) %add.ptr82.7, align 8, !dbg !65
  %add.ptr82.6 = getelementptr inbounds i8, ptr addrspace(3) %19, i32 %add.ptr82.idx.2, !dbg !58
  %21 = load <4 x half>, ptr addrspace(3) %add.ptr82.6, align 8, !dbg !65
  %add.ptr82.5 = getelementptr inbounds i8, ptr addrspace(3) %19, i32 %add.ptr82.idx.1, !dbg !58
  %22 = load <4 x half>, ptr addrspace(3) %add.ptr82.5, align 8, !dbg !65
  %add.ptr82.4 = getelementptr inbounds i8, ptr addrspace(3) %19, i32 %add.ptr82.idx, !dbg !58
  %23 = load <4 x half>, ptr addrspace(3) %add.ptr82.4, align 8, !dbg !65
  %24 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add58, !dbg !58
  %add.ptr82.3 = getelementptr inbounds i8, ptr addrspace(3) %24, i32 %add.ptr82.idx.3, !dbg !58
  %25 = load <4 x half>, ptr addrspace(3) %add.ptr82.3, align 8, !dbg !65
  %add.ptr82.2 = getelementptr inbounds i8, ptr addrspace(3) %24, i32 %add.ptr82.idx.2, !dbg !58
  %26 = load <4 x half>, ptr addrspace(3) %add.ptr82.2, align 8, !dbg !65
  %add.ptr82.1 = getelementptr inbounds i8, ptr addrspace(3) %24, i32 %add.ptr82.idx.1, !dbg !58
  %27 = load <4 x half>, ptr addrspace(3) %add.ptr82.1, align 8, !dbg !65
  %add.ptr82 = getelementptr inbounds i8, ptr addrspace(3) %24, i32 %add.ptr82.idx, !dbg !58
  %28 = load <4 x half>, ptr addrspace(3) %add.ptr82, align 8, !dbg !65
  fence syncscope("warp") release, !dbg !66
  tail call void @llvm.mxc.barrier.warp(), !dbg !69
  fence syncscope("warp") acquire, !dbg !70
  %conv115 = zext nneg i32 %mul106 to i64
  %mul120 = zext nneg i32 %mul8 to i64
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul120, !dbg !71
  %.idx854 = shl nuw nsw i64 %conv115, 8, !dbg !72
  %29 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep, i64 %.idx854, !dbg !72
  %qk_fetch.sroa.0.0.copyload1298 = load i64, ptr addrspace(4) %29, align 16, !dbg !73
  %qk_fetch.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %29, i64 8, !dbg !73
  %qk_fetch.sroa.18.0.copyload1305 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0..sroa_idx, align 8, !dbg !73
  store i64 %qk_fetch.sroa.0.0.copyload1298, ptr addrspace(3) %add.ptr45, align 8, !dbg !74
  store i64 %qk_fetch.sroa.18.0.copyload1305, ptr addrspace(3) %add.ptr45.1, align 8, !dbg !74
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %29, i64 1024, !dbg !72
  %qk_fetch.sroa.0.0.copyload1302 = load i64, ptr addrspace(4) %gep.1, align 16, !dbg !73
  %qk_fetch.sroa.18.0.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %29, i64 1032, !dbg !73
  %qk_fetch.sroa.18.0.copyload1309 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.gep.1.sroa_idx, align 8, !dbg !73
  store i64 %qk_fetch.sroa.0.0.copyload1302, ptr addrspace(3) %add.ptr45.1868, align 8, !dbg !74
  store i64 %qk_fetch.sroa.18.0.copyload1309, ptr addrspace(3) %add.ptr45.1.1, align 8, !dbg !74
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %29, i64 2048, !dbg !72
  %qk_fetch.sroa.0.0.copyload1303 = load i64, ptr addrspace(4) %gep.2, align 16, !dbg !73
  %qk_fetch.sroa.18.0.gep.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %29, i64 2056, !dbg !73
  %qk_fetch.sroa.18.0.copyload1310 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.gep.2.sroa_idx, align 8, !dbg !73
  store i64 %qk_fetch.sroa.0.0.copyload1303, ptr addrspace(3) %add.ptr45.2, align 8, !dbg !74
  store i64 %qk_fetch.sroa.18.0.copyload1310, ptr addrspace(3) %add.ptr45.1.2, align 8, !dbg !74
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %29, i64 3072, !dbg !72
  %qk_fetch.sroa.0.0.copyload1304 = load i64, ptr addrspace(4) %gep.3, align 16, !dbg !73
  %qk_fetch.sroa.18.0.gep.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %29, i64 3080, !dbg !73
  %qk_fetch.sroa.18.0.copyload1311 = load i64, ptr addrspace(4) %qk_fetch.sroa.18.0.gep.3.sroa_idx, align 8, !dbg !73
  store i64 %qk_fetch.sroa.0.0.copyload1304, ptr addrspace(3) %add.ptr45.3, align 8, !dbg !74
  store i64 %qk_fetch.sroa.18.0.copyload1311, ptr addrspace(3) %add.ptr45.1.3, align 8, !dbg !74
  fence syncscope("warp") release, !dbg !75
  tail call void @llvm.mxc.barrier.warp(), !dbg !78
  fence syncscope("warp") acquire, !dbg !79
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr82, align 8, !dbg !80
  %30 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %28, <4 x float> zeroinitializer), !dbg !81
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr82.1, align 8, !dbg !80
  %31 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %27, <4 x float> %30), !dbg !81
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr82.2, align 8, !dbg !80
  %32 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %26, <4 x float> %31), !dbg !81
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr82.3, align 8, !dbg !80
  %33 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %25, <4 x float> %32), !dbg !81
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %add.ptr82.4, align 8, !dbg !80
  %34 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %23, <4 x float> %33), !dbg !81
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %add.ptr82.5, align 8, !dbg !80
  %35 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %22, <4 x float> %34), !dbg !81
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %add.ptr82.6, align 8, !dbg !80
  %36 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %21, <4 x float> %35), !dbg !81
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %add.ptr82.7, align 8, !dbg !80
  %37 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %20, <4 x float> %36), !dbg !81
  %38 = lshr i32 %1, 2
  %mul227 = and i32 %38, 252
  %add228 = add nuw nsw i32 %mul106, %mul227
  %cmp231.not = icmp sgt i32 %add228, %0, !dbg !82
  %scores.sroa.0.0.vec.extract1089 = extractelement <4 x float> %37, i64 0
  %spec.select = select i1 %cmp231.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1089, !dbg !83
  %cmp231.not.1.not = icmp slt i32 %add228, %0, !dbg !82
  %scores.sroa.0.4.vec.extract1096 = extractelement <4 x float> %37, i64 1, !dbg !83
  %condval.0.1 = select i1 %cmp231.not.1.not, float %scores.sroa.0.4.vec.extract1096, float 0xFFF0000000000000, !dbg !83
  %add229.2 = or disjoint i32 %add228, 2, !dbg !84
  %cmp231.not.2 = icmp sgt i32 %add229.2, %0, !dbg !82
  %scores.sroa.0.8.vec.extract1103 = extractelement <4 x float> %37, i64 2, !dbg !83
  %condval.0.2 = select i1 %cmp231.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1103, !dbg !83
  %add229.3 = or disjoint i32 %add228, 3, !dbg !84
  %cmp231.not.3 = icmp sgt i32 %add229.3, %0, !dbg !82
  %scores.sroa.0.12.vec.extract1110 = extractelement <4 x float> %37, i64 3, !dbg !83
  %condval.0.3 = select i1 %cmp231.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1110, !dbg !83
  %39 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !85
  %40 = tail call contract noundef float @llvm.maxnum.f32(float %39, float %condval.0.1), !dbg !85
  %41 = tail call contract noundef float @llvm.maxnum.f32(float %40, float %condval.0.2), !dbg !85
  %42 = tail call contract noundef float @llvm.maxnum.f32(float %41, float %condval.0.3), !dbg !85
  %43 = bitcast float %42 to i32, !dbg !89
  %44 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !92
  %45 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %44) #10, !dbg !97
  %xor.i.i = xor i32 %45, 32, !dbg !98
  %46 = and i32 %45, -64, !dbg !99
  %and.i.i = add nsw i32 %46, 64, !dbg !99
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !100
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %45, !dbg !101
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !102
  %47 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %43), !dbg !103
  %48 = bitcast i32 %47 to float, !dbg !104
  %49 = tail call contract noundef float @llvm.maxnum.f32(float %42, float %48), !dbg !105
  %50 = bitcast float %49 to i32, !dbg !107
  %51 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !109
  %52 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %51) #10, !dbg !112
  %xor.i.i780 = xor i32 %52, 16, !dbg !113
  %53 = and i32 %52, -64, !dbg !114
  %and.i.i781 = add nsw i32 %53, 64, !dbg !114
  %cmp.not.i.i782 = icmp slt i32 %xor.i.i780, %and.i.i781, !dbg !115
  %cond.i.i783 = select i1 %cmp.not.i.i782, i32 %xor.i.i780, i32 %52, !dbg !116
  %shl.i.i784 = shl i32 %cond.i.i783, 2, !dbg !117
  %54 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i784, i32 %50), !dbg !118
  %55 = bitcast i32 %54 to float, !dbg !119
  %56 = tail call contract noundef float @llvm.maxnum.f32(float %49, float %55), !dbg !120
  %sub = fsub contract float %spec.select, %56, !dbg !122
  %sub277 = fsub contract float %condval.0.1, %56, !dbg !123
  %sub280 = fsub contract float %condval.0.2, %56, !dbg !124
  %sub283 = fsub contract float %condval.0.3, %56, !dbg !125
  %mul288 = fmul contract float %sub, 0x3FC0527DC0000000, !dbg !126
  %mul292 = fmul contract float %sub277, 0x3FC0527DC0000000, !dbg !127
  %mul296 = fmul contract float %sub280, 0x3FC0527DC0000000, !dbg !128
  %mul300 = fmul contract float %sub283, 0x3FC0527DC0000000, !dbg !129
  %add305 = fadd contract float %mul288, 8.000000e+00, !dbg !130
  %add309 = fadd contract float %mul292, 8.000000e+00, !dbg !131
  %add313 = fadd contract float %mul296, 8.000000e+00, !dbg !132
  %add317 = fadd contract float %mul300, 8.000000e+00, !dbg !133
  %cmp.i.i = fcmp contract olt float %add305, -1.260000e+02, !dbg !134
  %cond.i.i785 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !134
  %add.i.i = fadd contract float %add305, %cond.i.i785, !dbg !134
  %57 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !134
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !134
  %mul.i.i = fmul contract float %cond2.i.i, %57, !dbg !134
  %cmp.i.i786 = fcmp contract olt float %add309, -1.260000e+02, !dbg !137
  %cond.i.i787 = select contract i1 %cmp.i.i786, float 6.400000e+01, float 0.000000e+00, !dbg !137
  %add.i.i788 = fadd contract float %add309, %cond.i.i787, !dbg !137
  %58 = tail call contract float @llvm.exp2.f32(float %add.i.i788), !dbg !137
  %cond2.i.i789 = select contract i1 %cmp.i.i786, float 0x3BF0000000000000, float 1.000000e+00, !dbg !137
  %mul.i.i790 = fmul contract float %cond2.i.i789, %58, !dbg !137
  %cmp.i.i791 = fcmp contract olt float %add313, -1.260000e+02, !dbg !139
  %cond.i.i792 = select contract i1 %cmp.i.i791, float 6.400000e+01, float 0.000000e+00, !dbg !139
  %add.i.i793 = fadd contract float %add313, %cond.i.i792, !dbg !139
  %59 = tail call contract float @llvm.exp2.f32(float %add.i.i793), !dbg !139
  %cond2.i.i794 = select contract i1 %cmp.i.i791, float 0x3BF0000000000000, float 1.000000e+00, !dbg !139
  %mul.i.i795 = fmul contract float %cond2.i.i794, %59, !dbg !139
  %cmp.i.i796 = fcmp contract olt float %add317, -1.260000e+02, !dbg !141
  %cond.i.i797 = select contract i1 %cmp.i.i796, float 6.400000e+01, float 0.000000e+00, !dbg !141
  %add.i.i798 = fadd contract float %add317, %cond.i.i797, !dbg !141
  %60 = tail call contract float @llvm.exp2.f32(float %add.i.i798), !dbg !141
  %cond2.i.i799 = select contract i1 %cmp.i.i796, float 0x3BF0000000000000, float 1.000000e+00, !dbg !141
  %mul.i.i800 = fmul contract float %cond2.i.i799, %60, !dbg !141
  %61 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !143
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !143, !noalias !151
  %62 = fptrunc float %mul.i.i to half, !dbg !143
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %61), !dbg !143, !noalias !151
  %63 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !156, !noalias !151
  %64 = fptrunc float %mul.i.i790 to half, !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %63), !dbg !156, !noalias !151
  %65 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !158, !noalias !162
  %66 = fptrunc float %mul.i.i795 to half, !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %65), !dbg !158, !noalias !162
  %67 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !167, !noalias !162
  %68 = fptrunc float %mul.i.i800 to half, !dbg !167
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %67), !dbg !167, !noalias !162
  %69 = insertelement <4 x half> poison, half %62, i64 0, !dbg !169
  %70 = insertelement <4 x half> %69, half %64, i64 1, !dbg !169
  %71 = insertelement <4 x half> %70, half %66, i64 2, !dbg !169
  %72 = insertelement <4 x half> %71, half %68, i64 3, !dbg !169
  %conv.i.i = fpext half %62 to float, !dbg !170
  %add351 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !175
  %conv.i.i.1 = fpext half %64 to float, !dbg !170
  %add351.1 = fadd contract float %add351, %conv.i.i.1, !dbg !175
  %conv.i.i.2 = fpext half %66 to float, !dbg !170
  %add351.2 = fadd contract float %add351.1, %conv.i.i.2, !dbg !175
  %conv.i.i.3 = fpext half %68 to float, !dbg !170
  %add351.3 = fadd contract float %add351.2, %conv.i.i.3, !dbg !175
  fence syncscope("warp") release, !dbg !176
  tail call void @llvm.mxc.barrier.warp(), !dbg !179
  fence syncscope("warp") acquire, !dbg !180
  %73 = shl nuw nsw i32 %1, 5
  %74 = and i32 %73, 32512
  %mul371 = zext nneg i32 %74 to i64
  %mul373 = shl nuw nsw i64 %conv115, 7
  %add374 = add nuw nsw i64 %mul373, %mul371
  %75 = and i32 %mul8, 56
  %mul384 = zext nneg i32 %75 to i64
  %and417 = shl nuw nsw i32 %1, 1
  %mul418 = and i32 %and417, 14
  %call422.mask = and i32 %1, 16
  %and431 = lshr i32 %1, 1
  %shr432 = and i32 %and431, 3
  %xor433 = xor i32 %shr432, %shr32
  %mul441 = and i32 %38, 2
  %add385 = or disjoint i64 %add374, %mul384, !dbg !181
  %add.ptr386 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add385, !dbg !182
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %add.ptr386, align 16, !dbg !183
  %v_fetch.sroa.6.0.add.ptr386.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386, i64 2, !dbg !183
  %v_fetch.sroa.6.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.6.0.add.ptr386.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.8.0.add.ptr386.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386, i64 4, !dbg !183
  %v_fetch.sroa.8.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.8.0.add.ptr386.sroa_idx, align 4, !dbg !183
  %v_fetch.sroa.10.0.add.ptr386.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386, i64 6, !dbg !183
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0.add.ptr386.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.12.0.add.ptr386.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386, i64 8, !dbg !183
  %v_fetch.sroa.12.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.12.0.add.ptr386.sroa_idx, align 8, !dbg !183
  %v_fetch.sroa.14.0.add.ptr386.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386, i64 10, !dbg !183
  %v_fetch.sroa.14.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.0.add.ptr386.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.16.0.add.ptr386.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386, i64 12, !dbg !183
  %v_fetch.sroa.16.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.16.0.add.ptr386.sroa_idx, align 4, !dbg !183
  %v_fetch.sroa.18.0.add.ptr386.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386, i64 14, !dbg !183
  %v_fetch.sroa.18.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.0.add.ptr386.sroa_idx, align 2, !dbg !183, !tbaa !30
  %add377.1 = or disjoint i64 %add374, %mul384, !dbg !181
  %add385.1 = or disjoint i64 %add377.1, 128, !dbg !181
  %add.ptr386.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add385.1, !dbg !182
  %v_fetch.sroa.20.16.copyload = load i16, ptr addrspace(4) %add.ptr386.1, align 16, !dbg !183
  %v_fetch.sroa.24.16.add.ptr386.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386.1, i64 2, !dbg !183
  %v_fetch.sroa.24.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.24.16.add.ptr386.1.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.26.16.add.ptr386.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386.1, i64 4, !dbg !183
  %v_fetch.sroa.26.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.26.16.add.ptr386.1.sroa_idx, align 4, !dbg !183
  %v_fetch.sroa.28.16.add.ptr386.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386.1, i64 6, !dbg !183
  %v_fetch.sroa.28.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.28.16.add.ptr386.1.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.30.16.add.ptr386.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386.1, i64 8, !dbg !183
  %v_fetch.sroa.30.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.30.16.add.ptr386.1.sroa_idx, align 8, !dbg !183
  %v_fetch.sroa.32.16.add.ptr386.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386.1, i64 10, !dbg !183
  %v_fetch.sroa.32.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.32.16.add.ptr386.1.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.34.16.add.ptr386.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386.1, i64 12, !dbg !183
  %v_fetch.sroa.34.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.34.16.add.ptr386.1.sroa_idx, align 4, !dbg !183
  %v_fetch.sroa.36.16.add.ptr386.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386.1, i64 14, !dbg !183
  %v_fetch.sroa.36.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.36.16.add.ptr386.1.sroa_idx, align 2, !dbg !183, !tbaa !30
  %xor425775 = shl nuw nsw i32 %mul418, 4, !dbg !184
  %mul426 = or disjoint i32 %xor425775, %call422.mask, !dbg !184
  %mul436 = shl nuw nsw i32 %xor433, 2, !dbg !185
  %76 = or disjoint i32 %mul441, %mul436, !dbg !186
  %77 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %76, !dbg !187
  %add.ptr444 = getelementptr inbounds %struct.__half, ptr addrspace(3) %77, i32 %mul426, !dbg !187
  %v_column.sroa.34.0.insert.ext = zext i16 %v_fetch.sroa.20.16.copyload to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift = shl nuw i32 %v_column.sroa.34.0.insert.ext, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.34.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr444, align 4, !dbg !188, !tbaa !30
  %add419.1 = shl nuw nsw i32 %mul418, 4, !dbg !184
  %xor425775.1 = or disjoint i32 %add419.1, %call422.mask, !dbg !184
  %mul426.1 = or disjoint i32 %xor425775.1, 256, !dbg !184
  %xor435.1 = shl nuw nsw i32 %xor433, 2, !dbg !185
  %mul436.1 = xor i32 %xor435.1, 4, !dbg !185
  %add437.1 = or disjoint i32 %mul441, %mul436.1, !dbg !186
  %78 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add437.1, !dbg !187
  %add.ptr444.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %78, i32 %mul426.1, !dbg !187
  %v_column.sroa.34.0.insert.ext970 = zext i16 %v_fetch.sroa.24.16.copyload to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift971 = shl nuw i32 %v_column.sroa.34.0.insert.ext970, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext910 = zext i16 %v_fetch.sroa.6.0.copyload to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert912 = or disjoint i32 %v_column.sroa.34.0.insert.shift971, %v_column.sroa.0.0.insert.ext910, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert912, ptr addrspace(3) %add.ptr444.1, align 4, !dbg !188, !tbaa !30
  %add419.2 = shl nuw nsw i32 %mul418, 4, !dbg !184
  %xor425775.2 = or disjoint i32 %add419.2, %call422.mask, !dbg !184
  %mul426.2 = or disjoint i32 %xor425775.2, 512, !dbg !184
  %xor435.2 = shl nuw nsw i32 %xor433, 2, !dbg !185
  %mul436.2 = xor i32 %xor435.2, 8, !dbg !185
  %add437.2 = or disjoint i32 %mul441, %mul436.2, !dbg !186
  %79 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add437.2, !dbg !187
  %add.ptr444.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) %79, i32 %mul426.2, !dbg !187
  %v_column.sroa.34.0.insert.ext975 = zext i16 %v_fetch.sroa.26.16.copyload to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift976 = shl nuw i32 %v_column.sroa.34.0.insert.ext975, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext914 = zext i16 %v_fetch.sroa.8.0.copyload to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert916 = or disjoint i32 %v_column.sroa.34.0.insert.shift976, %v_column.sroa.0.0.insert.ext914, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert916, ptr addrspace(3) %add.ptr444.2, align 4, !dbg !188, !tbaa !30
  %add419.3 = shl nuw nsw i32 %mul418, 4, !dbg !184
  %xor425775.3 = or disjoint i32 %add419.3, %call422.mask, !dbg !184
  %mul426.3 = or disjoint i32 %xor425775.3, 768, !dbg !184
  %xor435.3 = shl nuw nsw i32 %xor433, 2, !dbg !185
  %mul436.3 = xor i32 %xor435.3, 12, !dbg !185
  %add437.3 = or disjoint i32 %mul441, %mul436.3, !dbg !186
  %80 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add437.3, !dbg !187
  %add.ptr444.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) %80, i32 %mul426.3, !dbg !187
  %v_column.sroa.34.0.insert.ext980 = zext i16 %v_fetch.sroa.28.16.copyload to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift981 = shl nuw i32 %v_column.sroa.34.0.insert.ext980, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext918 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert920 = or disjoint i32 %v_column.sroa.34.0.insert.shift981, %v_column.sroa.0.0.insert.ext918, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert920, ptr addrspace(3) %add.ptr444.3, align 4, !dbg !188, !tbaa !30
  %add421.4 = shl nuw nsw i32 %mul418, 4, !dbg !184
  %xor425775.4 = or disjoint i32 %add421.4, 16, !dbg !184
  %mul426.4 = xor i32 %xor425775.4, %call422.mask, !dbg !184
  %add.ptr444.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) %77, i32 %mul426.4, !dbg !187
  %v_column.sroa.34.0.insert.ext985 = zext i16 %v_fetch.sroa.30.16.copyload to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift986 = shl nuw i32 %v_column.sroa.34.0.insert.ext985, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext922 = zext i16 %v_fetch.sroa.12.0.copyload to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert924 = or disjoint i32 %v_column.sroa.34.0.insert.shift986, %v_column.sroa.0.0.insert.ext922, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert924, ptr addrspace(3) %add.ptr444.4, align 4, !dbg !188, !tbaa !30
  %add421.5 = shl nuw nsw i32 %mul418, 4, !dbg !184
  %xor425775.5 = or disjoint i32 %add421.5, 272, !dbg !184
  %mul426.5 = xor i32 %xor425775.5, %call422.mask, !dbg !184
  %add.ptr444.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) %78, i32 %mul426.5, !dbg !187
  %v_column.sroa.34.0.insert.ext990 = zext i16 %v_fetch.sroa.32.16.copyload to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift991 = shl nuw i32 %v_column.sroa.34.0.insert.ext990, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext926 = zext i16 %v_fetch.sroa.14.0.copyload to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert928 = or disjoint i32 %v_column.sroa.34.0.insert.shift991, %v_column.sroa.0.0.insert.ext926, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert928, ptr addrspace(3) %add.ptr444.5, align 4, !dbg !188, !tbaa !30
  %add421.6 = shl nuw nsw i32 %mul418, 4, !dbg !184
  %xor425775.6 = or disjoint i32 %add421.6, 528, !dbg !184
  %mul426.6 = xor i32 %xor425775.6, %call422.mask, !dbg !184
  %add.ptr444.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) %79, i32 %mul426.6, !dbg !187
  %v_column.sroa.34.0.insert.ext995 = zext i16 %v_fetch.sroa.34.16.copyload to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift996 = shl nuw i32 %v_column.sroa.34.0.insert.ext995, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext930 = zext i16 %v_fetch.sroa.16.0.copyload to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert932 = or disjoint i32 %v_column.sroa.34.0.insert.shift996, %v_column.sroa.0.0.insert.ext930, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert932, ptr addrspace(3) %add.ptr444.6, align 4, !dbg !188, !tbaa !30
  %add421.7 = shl nuw nsw i32 %mul418, 4, !dbg !184
  %xor425775.7 = or disjoint i32 %add421.7, 784, !dbg !184
  %mul426.7 = xor i32 %xor425775.7, %call422.mask, !dbg !184
  %add.ptr444.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) %80, i32 %mul426.7, !dbg !187
  %v_column.sroa.34.0.insert.ext1000 = zext i16 %v_fetch.sroa.36.16.copyload to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift1001 = shl nuw i32 %v_column.sroa.34.0.insert.ext1000, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext934 = zext i16 %v_fetch.sroa.18.0.copyload to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert936 = or disjoint i32 %v_column.sroa.34.0.insert.shift1001, %v_column.sroa.0.0.insert.ext934, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert936, ptr addrspace(3) %add.ptr444.7, align 4, !dbg !188, !tbaa !30
  %add380.1884 = or disjoint i64 %add374, %mul384, !dbg !181
  %add385.1885 = or disjoint i64 %add380.1884, 64, !dbg !181
  %add.ptr386.1886 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add385.1885, !dbg !182
  %v_fetch.sroa.0.0.copyload1045 = load i16, ptr addrspace(4) %add.ptr386.1886, align 16, !dbg !183
  %v_fetch.sroa.6.0.add.ptr386.1886.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386.1886, i64 2, !dbg !183
  %v_fetch.sroa.6.0.copyload1046 = load i16, ptr addrspace(4) %v_fetch.sroa.6.0.add.ptr386.1886.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.8.0.add.ptr386.1886.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386.1886, i64 4, !dbg !183
  %v_fetch.sroa.8.0.copyload1048 = load i16, ptr addrspace(4) %v_fetch.sroa.8.0.add.ptr386.1886.sroa_idx, align 4, !dbg !183
  %v_fetch.sroa.10.0.add.ptr386.1886.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386.1886, i64 6, !dbg !183
  %v_fetch.sroa.10.0.copyload1050 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0.add.ptr386.1886.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.12.0.add.ptr386.1886.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386.1886, i64 8, !dbg !183
  %v_fetch.sroa.12.0.copyload1052 = load i16, ptr addrspace(4) %v_fetch.sroa.12.0.add.ptr386.1886.sroa_idx, align 8, !dbg !183
  %v_fetch.sroa.14.0.add.ptr386.1886.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386.1886, i64 10, !dbg !183
  %v_fetch.sroa.14.0.copyload1054 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0.add.ptr386.1886.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.16.0.add.ptr386.1886.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386.1886, i64 12, !dbg !183
  %v_fetch.sroa.16.0.copyload1056 = load i16, ptr addrspace(4) %v_fetch.sroa.16.0.add.ptr386.1886.sroa_idx, align 4, !dbg !183
  %v_fetch.sroa.18.0.add.ptr386.1886.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386.1886, i64 14, !dbg !183
  %v_fetch.sroa.18.0.copyload1058 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0.add.ptr386.1886.sroa_idx, align 2, !dbg !183, !tbaa !30
  %add380.1.1 = or disjoint i64 %add374, %mul384, !dbg !181
  %add385.1.1 = or disjoint i64 %add380.1.1, 192, !dbg !181
  %add.ptr386.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add385.1.1, !dbg !182
  %v_fetch.sroa.20.16.copyload1061 = load i16, ptr addrspace(4) %add.ptr386.1.1, align 16, !dbg !183
  %v_fetch.sroa.24.16.add.ptr386.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386.1.1, i64 2, !dbg !183
  %v_fetch.sroa.24.16.copyload1062 = load i16, ptr addrspace(4) %v_fetch.sroa.24.16.add.ptr386.1.1.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.26.16.add.ptr386.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386.1.1, i64 4, !dbg !183
  %v_fetch.sroa.26.16.copyload1064 = load i16, ptr addrspace(4) %v_fetch.sroa.26.16.add.ptr386.1.1.sroa_idx, align 4, !dbg !183
  %v_fetch.sroa.28.16.add.ptr386.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386.1.1, i64 6, !dbg !183
  %v_fetch.sroa.28.16.copyload1066 = load i16, ptr addrspace(4) %v_fetch.sroa.28.16.add.ptr386.1.1.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.30.16.add.ptr386.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386.1.1, i64 8, !dbg !183
  %v_fetch.sroa.30.16.copyload1068 = load i16, ptr addrspace(4) %v_fetch.sroa.30.16.add.ptr386.1.1.sroa_idx, align 8, !dbg !183
  %v_fetch.sroa.32.16.add.ptr386.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386.1.1, i64 10, !dbg !183
  %v_fetch.sroa.32.16.copyload1070 = load i16, ptr addrspace(4) %v_fetch.sroa.32.16.add.ptr386.1.1.sroa_idx, align 2, !dbg !183, !tbaa !30
  %v_fetch.sroa.34.16.add.ptr386.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386.1.1, i64 12, !dbg !183
  %v_fetch.sroa.34.16.copyload1072 = load i16, ptr addrspace(4) %v_fetch.sroa.34.16.add.ptr386.1.1.sroa_idx, align 4, !dbg !183
  %v_fetch.sroa.36.16.add.ptr386.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr386.1.1, i64 14, !dbg !183
  %v_fetch.sroa.36.16.copyload1074 = load i16, ptr addrspace(4) %v_fetch.sroa.36.16.add.ptr386.1.1.sroa_idx, align 2, !dbg !183, !tbaa !30
  %81 = or disjoint i32 %mul441, 1024
  %82 = or disjoint i32 %81, %mul436, !dbg !186
  %83 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %82, !dbg !187
  %add.ptr444.1892 = getelementptr inbounds %struct.__half, ptr addrspace(3) %83, i32 %mul426, !dbg !187
  %v_column.sroa.34.0.insert.ext1005 = zext i16 %v_fetch.sroa.20.16.copyload1061 to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift1006 = shl nuw i32 %v_column.sroa.34.0.insert.ext1005, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext938 = zext i16 %v_fetch.sroa.0.0.copyload1045 to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert940 = or disjoint i32 %v_column.sroa.34.0.insert.shift1006, %v_column.sroa.0.0.insert.ext938, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert940, ptr addrspace(3) %add.ptr444.1892, align 4, !dbg !188, !tbaa !30
  %add437.1.1 = or disjoint i32 %81, %mul436.1, !dbg !186
  %84 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add437.1.1, !dbg !187
  %add.ptr444.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %84, i32 %mul426.1, !dbg !187
  %v_column.sroa.34.0.insert.ext1010 = zext i16 %v_fetch.sroa.24.16.copyload1062 to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift1011 = shl nuw i32 %v_column.sroa.34.0.insert.ext1010, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext942 = zext i16 %v_fetch.sroa.6.0.copyload1046 to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert944 = or disjoint i32 %v_column.sroa.34.0.insert.shift1011, %v_column.sroa.0.0.insert.ext942, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert944, ptr addrspace(3) %add.ptr444.1.1, align 4, !dbg !188, !tbaa !30
  %add437.2.1 = or disjoint i32 %81, %mul436.2, !dbg !186
  %85 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add437.2.1, !dbg !187
  %add.ptr444.2.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %85, i32 %mul426.2, !dbg !187
  %v_column.sroa.34.0.insert.ext1015 = zext i16 %v_fetch.sroa.26.16.copyload1064 to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift1016 = shl nuw i32 %v_column.sroa.34.0.insert.ext1015, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext946 = zext i16 %v_fetch.sroa.8.0.copyload1048 to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert948 = or disjoint i32 %v_column.sroa.34.0.insert.shift1016, %v_column.sroa.0.0.insert.ext946, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert948, ptr addrspace(3) %add.ptr444.2.1, align 4, !dbg !188, !tbaa !30
  %add437.3.1 = or disjoint i32 %81, %mul436.3, !dbg !186
  %86 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add437.3.1, !dbg !187
  %add.ptr444.3.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %86, i32 %mul426.3, !dbg !187
  %v_column.sroa.34.0.insert.ext1020 = zext i16 %v_fetch.sroa.28.16.copyload1066 to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift1021 = shl nuw i32 %v_column.sroa.34.0.insert.ext1020, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext950 = zext i16 %v_fetch.sroa.10.0.copyload1050 to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert952 = or disjoint i32 %v_column.sroa.34.0.insert.shift1021, %v_column.sroa.0.0.insert.ext950, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert952, ptr addrspace(3) %add.ptr444.3.1, align 4, !dbg !188, !tbaa !30
  %add.ptr444.4.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %83, i32 %mul426.4, !dbg !187
  %v_column.sroa.34.0.insert.ext1025 = zext i16 %v_fetch.sroa.30.16.copyload1068 to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift1026 = shl nuw i32 %v_column.sroa.34.0.insert.ext1025, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext954 = zext i16 %v_fetch.sroa.12.0.copyload1052 to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert956 = or disjoint i32 %v_column.sroa.34.0.insert.shift1026, %v_column.sroa.0.0.insert.ext954, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert956, ptr addrspace(3) %add.ptr444.4.1, align 4, !dbg !188, !tbaa !30
  %add.ptr444.5.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %84, i32 %mul426.5, !dbg !187
  %v_column.sroa.34.0.insert.ext1030 = zext i16 %v_fetch.sroa.32.16.copyload1070 to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift1031 = shl nuw i32 %v_column.sroa.34.0.insert.ext1030, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext958 = zext i16 %v_fetch.sroa.14.0.copyload1054 to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert960 = or disjoint i32 %v_column.sroa.34.0.insert.shift1031, %v_column.sroa.0.0.insert.ext958, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert960, ptr addrspace(3) %add.ptr444.5.1, align 4, !dbg !188, !tbaa !30
  %add.ptr444.6.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %85, i32 %mul426.6, !dbg !187
  %v_column.sroa.34.0.insert.ext1035 = zext i16 %v_fetch.sroa.34.16.copyload1072 to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift1036 = shl nuw i32 %v_column.sroa.34.0.insert.ext1035, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext962 = zext i16 %v_fetch.sroa.16.0.copyload1056 to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert964 = or disjoint i32 %v_column.sroa.34.0.insert.shift1036, %v_column.sroa.0.0.insert.ext962, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert964, ptr addrspace(3) %add.ptr444.6.1, align 4, !dbg !188, !tbaa !30
  %add.ptr444.7.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) %86, i32 %mul426.7, !dbg !187
  %v_column.sroa.34.0.insert.ext1040 = zext i16 %v_fetch.sroa.36.16.copyload1074 to i32, !dbg !188
  %v_column.sroa.34.0.insert.shift1041 = shl nuw i32 %v_column.sroa.34.0.insert.ext1040, 16, !dbg !188
  %v_column.sroa.0.0.insert.ext966 = zext i16 %v_fetch.sroa.18.0.copyload1058 to i32, !dbg !188
  %v_column.sroa.0.0.insert.insert968 = or disjoint i32 %v_column.sroa.34.0.insert.shift1041, %v_column.sroa.0.0.insert.ext966, !dbg !188
  store i32 %v_column.sroa.0.0.insert.insert968, ptr addrspace(3) %add.ptr444.7.1, align 4, !dbg !188, !tbaa !30
  fence syncscope("warp") release, !dbg !189
  tail call void @llvm.mxc.barrier.warp(), !dbg !192
  fence syncscope("warp") acquire, !dbg !193
  %and458 = shl nuw nsw i32 %1, 4
  %mul459 = and i32 %and458, 48
  %shr465 = and i32 %38, 3
  %and478 = and i32 %1, 3
  %87 = xor i32 %shr32, %and478
  %add466 = or disjoint i32 %mul459, %shr465, !dbg !194
  %xor470774 = shl nuw nsw i32 %add466, 4, !dbg !195
  %mul471 = xor i32 %xor470774, %call422.mask, !dbg !195
  %88 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul471, !dbg !196
  %add.ptr483.idx = shl nuw nsw i32 %87, 3, !dbg !196
  %add.ptr483 = getelementptr inbounds i8, ptr addrspace(3) %88, i32 %add.ptr483.idx, !dbg !196
  %89 = load <4 x half>, ptr addrspace(3) %add.ptr483, align 8, !dbg !197
  %add462.1 = or disjoint i32 %mul459, %shr465, !dbg !194
  %add466.1 = shl nuw nsw i32 %add462.1, 4, !dbg !195
  %xor470774.1 = or disjoint i32 %add466.1, 64, !dbg !195
  %mul471.1 = xor i32 %xor470774.1, %call422.mask, !dbg !195
  %90 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul471.1, !dbg !196
  %xor479.1 = shl nuw nsw i32 %87, 3, !dbg !196
  %add.ptr483.idx.1 = xor i32 %xor479.1, 8, !dbg !196
  %add.ptr483.1 = getelementptr inbounds i8, ptr addrspace(3) %90, i32 %add.ptr483.idx.1, !dbg !196
  %91 = load <4 x half>, ptr addrspace(3) %add.ptr483.1, align 8, !dbg !197
  %add462.2 = or disjoint i32 %mul459, %shr465, !dbg !194
  %add466.2 = shl nuw nsw i32 %add462.2, 4, !dbg !195
  %xor470774.2 = or disjoint i32 %add466.2, 128, !dbg !195
  %mul471.2 = xor i32 %xor470774.2, %call422.mask, !dbg !195
  %92 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul471.2, !dbg !196
  %xor479.2 = shl nuw nsw i32 %87, 3, !dbg !196
  %add.ptr483.idx.2 = xor i32 %xor479.2, 16, !dbg !196
  %add.ptr483.2 = getelementptr inbounds i8, ptr addrspace(3) %92, i32 %add.ptr483.idx.2, !dbg !196
  %93 = load <4 x half>, ptr addrspace(3) %add.ptr483.2, align 8, !dbg !197
  %add462.3 = or disjoint i32 %mul459, %shr465, !dbg !194
  %add466.3 = shl nuw nsw i32 %add462.3, 4, !dbg !195
  %xor470774.3 = or disjoint i32 %add466.3, 192, !dbg !195
  %mul471.3 = xor i32 %xor470774.3, %call422.mask, !dbg !195
  %94 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul471.3, !dbg !196
  %xor479.3 = shl nuw nsw i32 %87, 3, !dbg !196
  %add.ptr483.idx.3 = xor i32 %xor479.3, 24, !dbg !196
  %add.ptr483.3 = getelementptr inbounds i8, ptr addrspace(3) %94, i32 %add.ptr483.idx.3, !dbg !196
  %95 = load <4 x half>, ptr addrspace(3) %add.ptr483.3, align 8, !dbg !197
  %add472.4 = or disjoint i32 %mul471, 1024, !dbg !198
  %96 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add472.4, !dbg !196
  %add.ptr483.4 = getelementptr inbounds i8, ptr addrspace(3) %96, i32 %add.ptr483.idx, !dbg !196
  %97 = load <4 x half>, ptr addrspace(3) %add.ptr483.4, align 8, !dbg !197
  %add472.5 = or disjoint i32 %mul471.1, 1024, !dbg !198
  %98 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add472.5, !dbg !196
  %add.ptr483.5 = getelementptr inbounds i8, ptr addrspace(3) %98, i32 %add.ptr483.idx.1, !dbg !196
  %99 = load <4 x half>, ptr addrspace(3) %add.ptr483.5, align 8, !dbg !197
  %add472.6 = or disjoint i32 %mul471.2, 1024, !dbg !198
  %100 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add472.6, !dbg !196
  %add.ptr483.6 = getelementptr inbounds i8, ptr addrspace(3) %100, i32 %add.ptr483.idx.2, !dbg !196
  %101 = load <4 x half>, ptr addrspace(3) %add.ptr483.6, align 8, !dbg !197
  %add472.7 = or disjoint i32 %mul471.3, 1024, !dbg !198
  %102 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add472.7, !dbg !196
  %add.ptr483.7 = getelementptr inbounds i8, ptr addrspace(3) %102, i32 %add.ptr483.idx.3, !dbg !196
  %103 = load <4 x half>, ptr addrspace(3) %add.ptr483.7, align 8, !dbg !197
  %104 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %89, <4 x half> %72, <4 x float> zeroinitializer), !dbg !199
  %105 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %91, <4 x half> %72, <4 x float> zeroinitializer), !dbg !199
  %106 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %93, <4 x half> %72, <4 x float> zeroinitializer), !dbg !199
  %107 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %95, <4 x half> %72, <4 x float> zeroinitializer), !dbg !199
  %108 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %97, <4 x half> %72, <4 x float> zeroinitializer), !dbg !199
  %109 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %99, <4 x half> %72, <4 x float> zeroinitializer), !dbg !199
  %110 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %101, <4 x half> %72, <4 x float> zeroinitializer), !dbg !199
  %111 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %103, <4 x half> %72, <4 x float> zeroinitializer), !dbg !199
  %add358 = fadd contract float %add351.3, 0.000000e+00, !dbg !200
  br label %if.end509, !dbg !201

if.end509:                                        ; preds = %if.then, %entry
  %numerator.sroa.128.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %111, %if.then ], !dbg !203
  %numerator.sroa.110.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %110, %if.then ], !dbg !203
  %numerator.sroa.92.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %109, %if.then ], !dbg !203
  %numerator.sroa.74.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %108, %if.then ], !dbg !203
  %numerator.sroa.56.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %107, %if.then ], !dbg !203
  %numerator.sroa.38.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %106, %if.then ], !dbg !203
  %numerator.sroa.20.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %105, %if.then ], !dbg !203
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %104, %if.then ], !dbg !203
  %denominator.sroa.0.0 = phi float [ 0.000000e+00, %entry ], [ %add358, %if.then ], !dbg !203
  %112 = bitcast float %denominator.sroa.0.0 to i32, !dbg !201
  %113 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !204
  %114 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %113) #10, !dbg !207
  %xor.i.i802 = xor i32 %114, 32, !dbg !208
  %115 = and i32 %114, -64, !dbg !209
  %and.i.i803 = add nsw i32 %115, 64, !dbg !209
  %cmp.not.i.i804 = icmp slt i32 %xor.i.i802, %and.i.i803, !dbg !210
  %cond.i.i805 = select i1 %cmp.not.i.i804, i32 %xor.i.i802, i32 %114, !dbg !211
  %shl.i.i806 = shl i32 %cond.i.i805, 2, !dbg !212
  %116 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i806, i32 %112), !dbg !213
  %117 = bitcast i32 %116 to float, !dbg !214
  %add513 = fadd contract float %denominator.sroa.0.0, %117, !dbg !215
  %118 = bitcast float %add513 to i32, !dbg !216
  %119 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !218
  %120 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %119) #10, !dbg !221
  %xor.i.i807 = xor i32 %120, 16, !dbg !222
  %121 = and i32 %120, -64, !dbg !223
  %and.i.i808 = add nsw i32 %121, 64, !dbg !223
  %cmp.not.i.i809 = icmp slt i32 %xor.i.i807, %and.i.i808, !dbg !224
  %cond.i.i810 = select i1 %cmp.not.i.i809, i32 %xor.i.i807, i32 %120, !dbg !225
  %shl.i.i811 = shl i32 %cond.i.i810, 2, !dbg !226
  %122 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i811, i32 %118), !dbg !227
  %123 = bitcast i32 %122 to float, !dbg !228
  %add518 = fadd contract float %add513, %123, !dbg !229
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !230
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !230
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !230
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !230
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %add518, !dbg !231
  %div538 = fdiv contract float %numerator.sroa.0.4.vec.extract, %add518, !dbg !232
  %div542 = fdiv contract float %numerator.sroa.0.8.vec.extract, %add518, !dbg !233
  %div546 = fdiv contract float %numerator.sroa.0.12.vec.extract, %add518, !dbg !234
  %numerator.sroa.20.16.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 0, !dbg !230
  %numerator.sroa.20.20.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 1, !dbg !230
  %numerator.sroa.20.24.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 2, !dbg !230
  %numerator.sroa.20.28.vec.extract = extractelement <4 x float> %numerator.sroa.20.0, i64 3, !dbg !230
  %div.1 = fdiv contract float %numerator.sroa.20.16.vec.extract, %add518, !dbg !231
  %div538.1 = fdiv contract float %numerator.sroa.20.20.vec.extract, %add518, !dbg !232
  %div542.1 = fdiv contract float %numerator.sroa.20.24.vec.extract, %add518, !dbg !233
  %div546.1 = fdiv contract float %numerator.sroa.20.28.vec.extract, %add518, !dbg !234
  %numerator.sroa.38.32.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 0, !dbg !230
  %numerator.sroa.38.36.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 1, !dbg !230
  %numerator.sroa.38.40.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 2, !dbg !230
  %numerator.sroa.38.44.vec.extract = extractelement <4 x float> %numerator.sroa.38.0, i64 3, !dbg !230
  %div.2 = fdiv contract float %numerator.sroa.38.32.vec.extract, %add518, !dbg !231
  %div538.2 = fdiv contract float %numerator.sroa.38.36.vec.extract, %add518, !dbg !232
  %div542.2 = fdiv contract float %numerator.sroa.38.40.vec.extract, %add518, !dbg !233
  %div546.2 = fdiv contract float %numerator.sroa.38.44.vec.extract, %add518, !dbg !234
  %numerator.sroa.56.48.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 0, !dbg !230
  %numerator.sroa.56.52.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 1, !dbg !230
  %numerator.sroa.56.56.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 2, !dbg !230
  %numerator.sroa.56.60.vec.extract = extractelement <4 x float> %numerator.sroa.56.0, i64 3, !dbg !230
  %div.3 = fdiv contract float %numerator.sroa.56.48.vec.extract, %add518, !dbg !231
  %div538.3 = fdiv contract float %numerator.sroa.56.52.vec.extract, %add518, !dbg !232
  %div542.3 = fdiv contract float %numerator.sroa.56.56.vec.extract, %add518, !dbg !233
  %div546.3 = fdiv contract float %numerator.sroa.56.60.vec.extract, %add518, !dbg !234
  %numerator.sroa.74.64.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 0, !dbg !230
  %numerator.sroa.74.68.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 1, !dbg !230
  %numerator.sroa.74.72.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 2, !dbg !230
  %numerator.sroa.74.76.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 3, !dbg !230
  %div.4 = fdiv contract float %numerator.sroa.74.64.vec.extract, %add518, !dbg !231
  %div538.4 = fdiv contract float %numerator.sroa.74.68.vec.extract, %add518, !dbg !232
  %div542.4 = fdiv contract float %numerator.sroa.74.72.vec.extract, %add518, !dbg !233
  %div546.4 = fdiv contract float %numerator.sroa.74.76.vec.extract, %add518, !dbg !234
  %numerator.sroa.92.80.vec.extract = extractelement <4 x float> %numerator.sroa.92.0, i64 0, !dbg !230
  %numerator.sroa.92.84.vec.extract = extractelement <4 x float> %numerator.sroa.92.0, i64 1, !dbg !230
  %numerator.sroa.92.88.vec.extract = extractelement <4 x float> %numerator.sroa.92.0, i64 2, !dbg !230
  %numerator.sroa.92.92.vec.extract = extractelement <4 x float> %numerator.sroa.92.0, i64 3, !dbg !230
  %div.5 = fdiv contract float %numerator.sroa.92.80.vec.extract, %add518, !dbg !231
  %div538.5 = fdiv contract float %numerator.sroa.92.84.vec.extract, %add518, !dbg !232
  %div542.5 = fdiv contract float %numerator.sroa.92.88.vec.extract, %add518, !dbg !233
  %div546.5 = fdiv contract float %numerator.sroa.92.92.vec.extract, %add518, !dbg !234
  %numerator.sroa.110.96.vec.extract = extractelement <4 x float> %numerator.sroa.110.0, i64 0, !dbg !230
  %numerator.sroa.110.100.vec.extract = extractelement <4 x float> %numerator.sroa.110.0, i64 1, !dbg !230
  %numerator.sroa.110.104.vec.extract = extractelement <4 x float> %numerator.sroa.110.0, i64 2, !dbg !230
  %numerator.sroa.110.108.vec.extract = extractelement <4 x float> %numerator.sroa.110.0, i64 3, !dbg !230
  %div.6 = fdiv contract float %numerator.sroa.110.96.vec.extract, %add518, !dbg !231
  %div538.6 = fdiv contract float %numerator.sroa.110.100.vec.extract, %add518, !dbg !232
  %div542.6 = fdiv contract float %numerator.sroa.110.104.vec.extract, %add518, !dbg !233
  %div546.6 = fdiv contract float %numerator.sroa.110.108.vec.extract, %add518, !dbg !234
  %numerator.sroa.128.112.vec.extract = extractelement <4 x float> %numerator.sroa.128.0, i64 0, !dbg !230
  %numerator.sroa.128.116.vec.extract = extractelement <4 x float> %numerator.sroa.128.0, i64 1, !dbg !230
  %numerator.sroa.128.120.vec.extract = extractelement <4 x float> %numerator.sroa.128.0, i64 2, !dbg !230
  %numerator.sroa.128.124.vec.extract = extractelement <4 x float> %numerator.sroa.128.0, i64 3, !dbg !230
  %div.7 = fdiv contract float %numerator.sroa.128.112.vec.extract, %add518, !dbg !231
  %div538.7 = fdiv contract float %numerator.sroa.128.116.vec.extract, %add518, !dbg !232
  %div542.7 = fdiv contract float %numerator.sroa.128.120.vec.extract, %add518, !dbg !233
  %div546.7 = fdiv contract float %numerator.sroa.128.124.vec.extract, %add518, !dbg !234
  fence syncscope("warp") release, !dbg !235
  tail call void @llvm.mxc.barrier.warp(), !dbg !238
  fence syncscope("warp") acquire, !dbg !239
  %xor599 = shl nuw nsw i32 %17, 2
  %mul600 = and i32 %xor599, 4
  %add582 = or disjoint i32 %mul600, %mul57
  %124 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %125 = fptrunc float %div to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %124), !dbg !240, !noalias !244
  %126 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %127 = fptrunc float %div538 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %126), !dbg !249, !noalias !244
  %128 = bitcast half %125 to i16, !dbg !251
  %129 = bitcast half %127 to i16, !dbg !254
  %130 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %131 = fptrunc float %div542 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %130), !dbg !255, !noalias !259
  %132 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %133 = fptrunc float %div546 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %132), !dbg !264, !noalias !259
  %134 = bitcast half %131 to i16, !dbg !266
  %135 = bitcast half %133 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext = zext i16 %135 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift = shl nuw i64 %__7.sroa.6.0.insert.ext, 48, !dbg !269
  %__7.sroa.5.0.insert.ext = zext i16 %134 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift = shl nuw nsw i64 %__7.sroa.5.0.insert.ext, 32, !dbg !269
  %__7.sroa.5.0.insert.insert = or disjoint i64 %__7.sroa.6.0.insert.shift, %__7.sroa.5.0.insert.shift, !dbg !269
  %__7.sroa.4.0.insert.ext = zext i16 %129 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift = shl nuw nsw i64 %__7.sroa.4.0.insert.ext, 16, !dbg !269
  %__7.sroa.4.0.insert.insert = or disjoint i64 %__7.sroa.5.0.insert.insert, %__7.sroa.4.0.insert.shift, !dbg !269
  %__7.sroa.0.0.insert.ext = zext i16 %128 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert = or disjoint i64 %__7.sroa.4.0.insert.insert, %__7.sroa.0.0.insert.ext, !dbg !269
  %136 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add582, !dbg !270
  %add.ptr603 = getelementptr inbounds i8, ptr addrspace(3) %136, i32 %add.ptr82.idx, !dbg !270
  store i64 %__7.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr603, align 8, !dbg !271
  %137 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %138 = fptrunc float %div.1 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %137), !dbg !240, !noalias !244
  %139 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %140 = fptrunc float %div538.1 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %139), !dbg !249, !noalias !244
  %141 = bitcast half %138 to i16, !dbg !251
  %142 = bitcast half %140 to i16, !dbg !254
  %143 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %144 = fptrunc float %div542.1 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %143), !dbg !255, !noalias !259
  %145 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %146 = fptrunc float %div546.1 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %145), !dbg !264, !noalias !259
  %147 = bitcast half %144 to i16, !dbg !266
  %148 = bitcast half %146 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext.1 = zext i16 %148 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift.1 = shl nuw i64 %__7.sroa.6.0.insert.ext.1, 48, !dbg !269
  %__7.sroa.5.0.insert.ext.1 = zext i16 %147 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.1, 32, !dbg !269
  %__7.sroa.5.0.insert.insert.1 = or disjoint i64 %__7.sroa.6.0.insert.shift.1, %__7.sroa.5.0.insert.shift.1, !dbg !269
  %__7.sroa.4.0.insert.ext.1 = zext i16 %142 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.1, 16, !dbg !269
  %__7.sroa.4.0.insert.insert.1 = or disjoint i64 %__7.sroa.5.0.insert.insert.1, %__7.sroa.4.0.insert.shift.1, !dbg !269
  %__7.sroa.0.0.insert.ext.1 = zext i16 %141 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert.1 = or disjoint i64 %__7.sroa.4.0.insert.insert.1, %__7.sroa.0.0.insert.ext.1, !dbg !269
  %add.ptr603.1 = getelementptr inbounds i8, ptr addrspace(3) %136, i32 %add.ptr82.idx.1, !dbg !270
  store i64 %__7.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr603.1, align 8, !dbg !271
  %149 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %150 = fptrunc float %div.2 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %149), !dbg !240, !noalias !244
  %151 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %152 = fptrunc float %div538.2 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %151), !dbg !249, !noalias !244
  %153 = bitcast half %150 to i16, !dbg !251
  %154 = bitcast half %152 to i16, !dbg !254
  %155 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %156 = fptrunc float %div542.2 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %155), !dbg !255, !noalias !259
  %157 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %158 = fptrunc float %div546.2 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %157), !dbg !264, !noalias !259
  %159 = bitcast half %156 to i16, !dbg !266
  %160 = bitcast half %158 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext.2 = zext i16 %160 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift.2 = shl nuw i64 %__7.sroa.6.0.insert.ext.2, 48, !dbg !269
  %__7.sroa.5.0.insert.ext.2 = zext i16 %159 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.2, 32, !dbg !269
  %__7.sroa.5.0.insert.insert.2 = or disjoint i64 %__7.sroa.6.0.insert.shift.2, %__7.sroa.5.0.insert.shift.2, !dbg !269
  %__7.sroa.4.0.insert.ext.2 = zext i16 %154 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.2, 16, !dbg !269
  %__7.sroa.4.0.insert.insert.2 = or disjoint i64 %__7.sroa.5.0.insert.insert.2, %__7.sroa.4.0.insert.shift.2, !dbg !269
  %__7.sroa.0.0.insert.ext.2 = zext i16 %153 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert.2 = or disjoint i64 %__7.sroa.4.0.insert.insert.2, %__7.sroa.0.0.insert.ext.2, !dbg !269
  %add.ptr603.2 = getelementptr inbounds i8, ptr addrspace(3) %136, i32 %add.ptr82.idx.2, !dbg !270
  store i64 %__7.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr603.2, align 8, !dbg !271
  %161 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %162 = fptrunc float %div.3 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %161), !dbg !240, !noalias !244
  %163 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %164 = fptrunc float %div538.3 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %163), !dbg !249, !noalias !244
  %165 = bitcast half %162 to i16, !dbg !251
  %166 = bitcast half %164 to i16, !dbg !254
  %167 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %168 = fptrunc float %div542.3 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %167), !dbg !255, !noalias !259
  %169 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %170 = fptrunc float %div546.3 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %169), !dbg !264, !noalias !259
  %171 = bitcast half %168 to i16, !dbg !266
  %172 = bitcast half %170 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext.3 = zext i16 %172 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift.3 = shl nuw i64 %__7.sroa.6.0.insert.ext.3, 48, !dbg !269
  %__7.sroa.5.0.insert.ext.3 = zext i16 %171 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.3, 32, !dbg !269
  %__7.sroa.5.0.insert.insert.3 = or disjoint i64 %__7.sroa.6.0.insert.shift.3, %__7.sroa.5.0.insert.shift.3, !dbg !269
  %__7.sroa.4.0.insert.ext.3 = zext i16 %166 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.3, 16, !dbg !269
  %__7.sroa.4.0.insert.insert.3 = or disjoint i64 %__7.sroa.5.0.insert.insert.3, %__7.sroa.4.0.insert.shift.3, !dbg !269
  %__7.sroa.0.0.insert.ext.3 = zext i16 %165 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert.3 = or disjoint i64 %__7.sroa.4.0.insert.insert.3, %__7.sroa.0.0.insert.ext.3, !dbg !269
  %add.ptr603.3 = getelementptr inbounds i8, ptr addrspace(3) %136, i32 %add.ptr82.idx.3, !dbg !270
  store i64 %__7.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr603.3, align 8, !dbg !271
  %173 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %174 = fptrunc float %div.4 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %173), !dbg !240, !noalias !244
  %175 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %176 = fptrunc float %div538.4 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %175), !dbg !249, !noalias !244
  %177 = bitcast half %174 to i16, !dbg !251
  %178 = bitcast half %176 to i16, !dbg !254
  %179 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %180 = fptrunc float %div542.4 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %179), !dbg !255, !noalias !259
  %181 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %182 = fptrunc float %div546.4 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %181), !dbg !264, !noalias !259
  %183 = bitcast half %180 to i16, !dbg !266
  %184 = bitcast half %182 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext.4 = zext i16 %184 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift.4 = shl nuw i64 %__7.sroa.6.0.insert.ext.4, 48, !dbg !269
  %__7.sroa.5.0.insert.ext.4 = zext i16 %183 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift.4 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.4, 32, !dbg !269
  %__7.sroa.5.0.insert.insert.4 = or disjoint i64 %__7.sroa.6.0.insert.shift.4, %__7.sroa.5.0.insert.shift.4, !dbg !269
  %__7.sroa.4.0.insert.ext.4 = zext i16 %178 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift.4 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.4, 16, !dbg !269
  %__7.sroa.4.0.insert.insert.4 = or disjoint i64 %__7.sroa.5.0.insert.insert.4, %__7.sroa.4.0.insert.shift.4, !dbg !269
  %__7.sroa.0.0.insert.ext.4 = zext i16 %177 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert.4 = or disjoint i64 %__7.sroa.4.0.insert.insert.4, %__7.sroa.0.0.insert.ext.4, !dbg !269
  %add592.4 = or disjoint i32 %add582, 1024, !dbg !272
  %185 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add592.4, !dbg !270
  %add.ptr603.4 = getelementptr inbounds i8, ptr addrspace(3) %185, i32 %add.ptr82.idx, !dbg !270
  store i64 %__7.sroa.0.0.insert.insert.4, ptr addrspace(3) %add.ptr603.4, align 8, !dbg !271
  %186 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %187 = fptrunc float %div.5 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %186), !dbg !240, !noalias !244
  %188 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %189 = fptrunc float %div538.5 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %188), !dbg !249, !noalias !244
  %190 = bitcast half %187 to i16, !dbg !251
  %191 = bitcast half %189 to i16, !dbg !254
  %192 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %193 = fptrunc float %div542.5 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %192), !dbg !255, !noalias !259
  %194 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %195 = fptrunc float %div546.5 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %194), !dbg !264, !noalias !259
  %196 = bitcast half %193 to i16, !dbg !266
  %197 = bitcast half %195 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext.5 = zext i16 %197 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift.5 = shl nuw i64 %__7.sroa.6.0.insert.ext.5, 48, !dbg !269
  %__7.sroa.5.0.insert.ext.5 = zext i16 %196 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift.5 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.5, 32, !dbg !269
  %__7.sroa.5.0.insert.insert.5 = or disjoint i64 %__7.sroa.6.0.insert.shift.5, %__7.sroa.5.0.insert.shift.5, !dbg !269
  %__7.sroa.4.0.insert.ext.5 = zext i16 %191 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift.5 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.5, 16, !dbg !269
  %__7.sroa.4.0.insert.insert.5 = or disjoint i64 %__7.sroa.5.0.insert.insert.5, %__7.sroa.4.0.insert.shift.5, !dbg !269
  %__7.sroa.0.0.insert.ext.5 = zext i16 %190 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert.5 = or disjoint i64 %__7.sroa.4.0.insert.insert.5, %__7.sroa.0.0.insert.ext.5, !dbg !269
  %add.ptr603.5 = getelementptr inbounds i8, ptr addrspace(3) %185, i32 %add.ptr82.idx.1, !dbg !270
  store i64 %__7.sroa.0.0.insert.insert.5, ptr addrspace(3) %add.ptr603.5, align 8, !dbg !271
  %198 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %199 = fptrunc float %div.6 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %198), !dbg !240, !noalias !244
  %200 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %201 = fptrunc float %div538.6 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %200), !dbg !249, !noalias !244
  %202 = bitcast half %199 to i16, !dbg !251
  %203 = bitcast half %201 to i16, !dbg !254
  %204 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %205 = fptrunc float %div542.6 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %204), !dbg !255, !noalias !259
  %206 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %207 = fptrunc float %div546.6 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %206), !dbg !264, !noalias !259
  %208 = bitcast half %205 to i16, !dbg !266
  %209 = bitcast half %207 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext.6 = zext i16 %209 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift.6 = shl nuw i64 %__7.sroa.6.0.insert.ext.6, 48, !dbg !269
  %__7.sroa.5.0.insert.ext.6 = zext i16 %208 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift.6 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.6, 32, !dbg !269
  %__7.sroa.5.0.insert.insert.6 = or disjoint i64 %__7.sroa.6.0.insert.shift.6, %__7.sroa.5.0.insert.shift.6, !dbg !269
  %__7.sroa.4.0.insert.ext.6 = zext i16 %203 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift.6 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.6, 16, !dbg !269
  %__7.sroa.4.0.insert.insert.6 = or disjoint i64 %__7.sroa.5.0.insert.insert.6, %__7.sroa.4.0.insert.shift.6, !dbg !269
  %__7.sroa.0.0.insert.ext.6 = zext i16 %202 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert.6 = or disjoint i64 %__7.sroa.4.0.insert.insert.6, %__7.sroa.0.0.insert.ext.6, !dbg !269
  %add.ptr603.6 = getelementptr inbounds i8, ptr addrspace(3) %185, i32 %add.ptr82.idx.2, !dbg !270
  store i64 %__7.sroa.0.0.insert.insert.6, ptr addrspace(3) %add.ptr603.6, align 8, !dbg !271
  %210 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !240, !noalias !244
  %211 = fptrunc float %div.7 to half, !dbg !240
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %210), !dbg !240, !noalias !244
  %212 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !249, !noalias !244
  %213 = fptrunc float %div538.7 to half, !dbg !249
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %212), !dbg !249, !noalias !244
  %214 = bitcast half %211 to i16, !dbg !251
  %215 = bitcast half %213 to i16, !dbg !254
  %216 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !255, !noalias !259
  %217 = fptrunc float %div542.7 to half, !dbg !255
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %216), !dbg !255, !noalias !259
  %218 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !264, !noalias !259
  %219 = fptrunc float %div546.7 to half, !dbg !264
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %218), !dbg !264, !noalias !259
  %220 = bitcast half %217 to i16, !dbg !266
  %221 = bitcast half %219 to i16, !dbg !268
  %__7.sroa.6.0.insert.ext.7 = zext i16 %221 to i64, !dbg !269
  %__7.sroa.6.0.insert.shift.7 = shl nuw i64 %__7.sroa.6.0.insert.ext.7, 48, !dbg !269
  %__7.sroa.5.0.insert.ext.7 = zext i16 %220 to i64, !dbg !269
  %__7.sroa.5.0.insert.shift.7 = shl nuw nsw i64 %__7.sroa.5.0.insert.ext.7, 32, !dbg !269
  %__7.sroa.5.0.insert.insert.7 = or disjoint i64 %__7.sroa.6.0.insert.shift.7, %__7.sroa.5.0.insert.shift.7, !dbg !269
  %__7.sroa.4.0.insert.ext.7 = zext i16 %215 to i64, !dbg !269
  %__7.sroa.4.0.insert.shift.7 = shl nuw nsw i64 %__7.sroa.4.0.insert.ext.7, 16, !dbg !269
  %__7.sroa.4.0.insert.insert.7 = or disjoint i64 %__7.sroa.5.0.insert.insert.7, %__7.sroa.4.0.insert.shift.7, !dbg !269
  %__7.sroa.0.0.insert.ext.7 = zext i16 %214 to i64, !dbg !269
  %__7.sroa.0.0.insert.insert.7 = or disjoint i64 %__7.sroa.4.0.insert.insert.7, %__7.sroa.0.0.insert.ext.7, !dbg !269
  %add.ptr603.7 = getelementptr inbounds i8, ptr addrspace(3) %185, i32 %add.ptr82.idx.3, !dbg !270
  store i64 %__7.sroa.0.0.insert.insert.7, ptr addrspace(3) %add.ptr603.7, align 8, !dbg !271
  fence syncscope("warp") release, !dbg !273
  tail call void @llvm.mxc.barrier.warp(), !dbg !276
  fence syncscope("warp") acquire, !dbg !277
  %222 = load i64, ptr addrspace(3) %7, align 16, !dbg !278
  %add.ptr640.1 = getelementptr inbounds i8, ptr addrspace(3) %7, i32 8, !dbg !279
  %223 = load i64, ptr addrspace(3) %add.ptr640.1, align 8, !dbg !278
  %add.ptr658 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %4, !dbg !280
  store i64 %222, ptr addrspace(1) %add.ptr658, align 16, !dbg !281
  %output_fetch.sroa.10.0.add.ptr658.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr658, i64 8, !dbg !281
  store i64 %223, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr658.sroa_idx, align 8, !dbg !281
  %224 = load i64, ptr addrspace(3) %10, align 16, !dbg !278
  %add.ptr640.1.1 = getelementptr inbounds i8, ptr addrspace(3) %10, i32 8, !dbg !279
  %225 = load i64, ptr addrspace(3) %add.ptr640.1.1, align 8, !dbg !278
  %add.ptr658.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %8, !dbg !280
  store i64 %224, ptr addrspace(1) %add.ptr658.1, align 16, !dbg !281
  %output_fetch.sroa.10.0.add.ptr658.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr658.1, i64 8, !dbg !281
  store i64 %225, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr658.1.sroa_idx, align 8, !dbg !281
  %add.ptr640.2 = getelementptr inbounds i8, ptr addrspace(3) %13, i32 8, !dbg !279
  %226 = load i64, ptr addrspace(3) %add.ptr640.2, align 8, !dbg !278
  %227 = load i64, ptr addrspace(3) %13, align 16, !dbg !278
  %add.ptr658.2 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %11, !dbg !280
  store i64 %226, ptr addrspace(1) %add.ptr658.2, align 16, !dbg !281
  %output_fetch.sroa.10.0.add.ptr658.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr658.2, i64 8, !dbg !281
  store i64 %227, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr658.2.sroa_idx, align 8, !dbg !281
  %add.ptr640.3 = getelementptr inbounds i8, ptr addrspace(3) %16, i32 8, !dbg !279
  %228 = load i64, ptr addrspace(3) %add.ptr640.3, align 8, !dbg !278
  %229 = load i64, ptr addrspace(3) %16, align 16, !dbg !278
  %add.ptr658.3 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %14, !dbg !280
  store i64 %228, ptr addrspace(1) %add.ptr658.3, align 16, !dbg !281
  %output_fetch.sroa.10.0.add.ptr658.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr658.3, i64 8, !dbg !281
  store i64 %229, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr658.3.sroa_idx, align 8, !dbg !281
  ret void, !dbg !282
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v220_worker2_c3_plane_major_shared_subagent2/codegen/power_v220/case3_stage1.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v220_worker2_c3_plane_major_shared_subagent2/codegen/power_v220/case3_stage1.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 27, column: 3, scope: !40)
!44 = !DILocation(line: 28, column: 43, scope: !40)
!45 = !DILocation(line: 28, column: 29, scope: !40)
!46 = !DILocation(line: 31, column: 24, scope: !40)
!47 = !DILocation(line: 31, column: 277, scope: !40)
!48 = !DILocation(line: 28, column: 90, scope: !40)
!49 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !52)
!50 = distinct !DISubprogram(name: "__barrier_warp", scope: !51, file: !51, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!51 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!52 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !54)
!53 = distinct !DISubprogram(name: "__syncwarp", scope: !51, file: !51, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!54 = distinct !DILocation(line: 34, column: 3, scope: !40)
!55 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !52)
!56 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !52)
!57 = !DILocation(line: 37, column: 172, scope: !40)
!58 = !DILocation(line: 37, column: 57, scope: !40)
!59 = !DILocation(line: 37, column: 143, scope: !40)
!60 = !DILocation(line: 46, column: 22, scope: !40)
!61 = !DILocation(line: 46, column: 49, scope: !40)
!62 = !DILocation(line: 47, column: 10, scope: !40)
!63 = !DILocation(line: 47, column: 26, scope: !40)
!64 = !DILocation(line: 37, column: 120, scope: !40)
!65 = !DILocation(line: 37, column: 38, scope: !40)
!66 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !67)
!67 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !68)
!68 = distinct !DILocation(line: 48, column: 5, scope: !40)
!69 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !67)
!70 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !67)
!71 = !DILocation(line: 50, column: 10, scope: !40)
!72 = !DILocation(line: 51, column: 45, scope: !40)
!73 = !DILocation(line: 51, column: 31, scope: !40)
!74 = !DILocation(line: 54, column: 287, scope: !40)
!75 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !76)
!76 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !77)
!77 = distinct !DILocation(line: 57, column: 5, scope: !40)
!78 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !76)
!79 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !76)
!80 = !DILocation(line: 62, column: 30, scope: !40)
!81 = !DILocation(line: 64, column: 37, scope: !40)
!82 = !DILocation(line: 72, column: 72, scope: !40)
!83 = !DILocation(line: 72, column: 11, scope: !40)
!84 = !DILocation(line: 72, column: 61, scope: !40)
!85 = !DILocation(line: 351, column: 10, scope: !86, inlinedAt: !88)
!86 = distinct !DISubprogram(name: "max", scope: !87, file: !87, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!87 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!88 = distinct !DILocation(line: 82, column: 20, scope: !40)
!89 = !DILocation(line: 1018, column: 9, scope: !90, inlinedAt: !91)
!90 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!91 = distinct !DILocation(line: 84, column: 34, scope: !40)
!92 = !DILocation(line: 171, column: 37, scope: !93, inlinedAt: !94)
!93 = distinct !DISubprogram(name: "__lane_id", scope: !51, file: !51, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!94 = distinct !DILocation(line: 990, column: 14, scope: !95, inlinedAt: !96)
!95 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !51, file: !51, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!96 = distinct !DILocation(line: 1019, column: 11, scope: !90, inlinedAt: !91)
!97 = !DILocation(line: 171, column: 10, scope: !93, inlinedAt: !94)
!98 = !DILocation(line: 991, column: 20, scope: !95, inlinedAt: !96)
!99 = !DILocation(line: 992, column: 36, scope: !95, inlinedAt: !96)
!100 = !DILocation(line: 992, column: 17, scope: !95, inlinedAt: !96)
!101 = !DILocation(line: 992, column: 11, scope: !95, inlinedAt: !96)
!102 = !DILocation(line: 993, column: 43, scope: !95, inlinedAt: !96)
!103 = !DILocation(line: 993, column: 10, scope: !95, inlinedAt: !96)
!104 = !DILocation(line: 1020, column: 14, scope: !90, inlinedAt: !91)
!105 = !DILocation(line: 351, column: 10, scope: !86, inlinedAt: !106)
!106 = distinct !DILocation(line: 84, column: 18, scope: !40)
!107 = !DILocation(line: 1018, column: 9, scope: !90, inlinedAt: !108)
!108 = distinct !DILocation(line: 85, column: 34, scope: !40)
!109 = !DILocation(line: 171, column: 37, scope: !93, inlinedAt: !110)
!110 = distinct !DILocation(line: 990, column: 14, scope: !95, inlinedAt: !111)
!111 = distinct !DILocation(line: 1019, column: 11, scope: !90, inlinedAt: !108)
!112 = !DILocation(line: 171, column: 10, scope: !93, inlinedAt: !110)
!113 = !DILocation(line: 991, column: 20, scope: !95, inlinedAt: !111)
!114 = !DILocation(line: 992, column: 36, scope: !95, inlinedAt: !111)
!115 = !DILocation(line: 992, column: 17, scope: !95, inlinedAt: !111)
!116 = !DILocation(line: 992, column: 11, scope: !95, inlinedAt: !111)
!117 = !DILocation(line: 993, column: 43, scope: !95, inlinedAt: !111)
!118 = !DILocation(line: 993, column: 10, scope: !95, inlinedAt: !111)
!119 = !DILocation(line: 1020, column: 14, scope: !90, inlinedAt: !108)
!120 = !DILocation(line: 351, column: 10, scope: !86, inlinedAt: !121)
!121 = distinct !DILocation(line: 85, column: 18, scope: !40)
!122 = !DILocation(line: 95, column: 24, scope: !40)
!123 = !DILocation(line: 96, column: 24, scope: !40)
!124 = !DILocation(line: 97, column: 24, scope: !40)
!125 = !DILocation(line: 98, column: 24, scope: !40)
!126 = !DILocation(line: 100, column: 23, scope: !40)
!127 = !DILocation(line: 101, column: 23, scope: !40)
!128 = !DILocation(line: 102, column: 23, scope: !40)
!129 = !DILocation(line: 103, column: 23, scope: !40)
!130 = !DILocation(line: 105, column: 21, scope: !40)
!131 = !DILocation(line: 106, column: 21, scope: !40)
!132 = !DILocation(line: 107, column: 21, scope: !40)
!133 = !DILocation(line: 108, column: 21, scope: !40)
!134 = !DILocation(line: 285, column: 49, scope: !135, inlinedAt: !136)
!135 = distinct !DISubprogram(name: "exp2f", scope: !87, file: !87, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!136 = distinct !DILocation(line: 109, column: 13, scope: !40)
!137 = !DILocation(line: 285, column: 49, scope: !135, inlinedAt: !138)
!138 = distinct !DILocation(line: 110, column: 13, scope: !40)
!139 = !DILocation(line: 285, column: 49, scope: !135, inlinedAt: !140)
!140 = distinct !DILocation(line: 111, column: 13, scope: !40)
!141 = !DILocation(line: 285, column: 49, scope: !135, inlinedAt: !142)
!142 = distinct !DILocation(line: 112, column: 13, scope: !40)
!143 = !DILocation(line: 1007, column: 10, scope: !144, inlinedAt: !146)
!144 = distinct !DISubprogram(name: "__float2half_rn", scope: !145, file: !145, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!145 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!146 = distinct !DILocation(line: 1077, column: 18, scope: !147, inlinedAt: !148)
!147 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !145, file: !145, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!148 = distinct !DILocation(line: 1295, column: 23, scope: !149, inlinedAt: !150)
!149 = distinct !DISubprogram(name: "__float22half2_rn", scope: !145, file: !145, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!150 = distinct !DILocation(line: 113, column: 27, scope: !40)
!151 = !{!152, !154}
!152 = distinct !{!152, !153, !"_ZL17__floats2half2_rnff: %agg.result"}
!153 = distinct !{!153, !"_ZL17__floats2half2_rnff"}
!154 = distinct !{!154, !155, !"_ZL17__float22half2_rn6float2: %agg.result"}
!155 = distinct !{!155, !"_ZL17__float22half2_rn6float2"}
!156 = !DILocation(line: 1007, column: 10, scope: !144, inlinedAt: !157)
!157 = distinct !DILocation(line: 1077, column: 38, scope: !147, inlinedAt: !148)
!158 = !DILocation(line: 1007, column: 10, scope: !144, inlinedAt: !159)
!159 = distinct !DILocation(line: 1077, column: 18, scope: !147, inlinedAt: !160)
!160 = distinct !DILocation(line: 1295, column: 23, scope: !149, inlinedAt: !161)
!161 = distinct !DILocation(line: 114, column: 27, scope: !40)
!162 = !{!163, !165}
!163 = distinct !{!163, !164, !"_ZL17__floats2half2_rnff: %agg.result"}
!164 = distinct !{!164, !"_ZL17__floats2half2_rnff"}
!165 = distinct !{!165, !166, !"_ZL17__float22half2_rn6float2: %agg.result"}
!166 = distinct !{!166, !"_ZL17__float22half2_rn6float2"}
!167 = !DILocation(line: 1007, column: 10, scope: !144, inlinedAt: !168)
!168 = distinct !DILocation(line: 1077, column: 38, scope: !147, inlinedAt: !160)
!169 = !DILocation(line: 115, column: 34, scope: !40)
!170 = !DILocation(line: 1082, column: 16, scope: !171, inlinedAt: !172)
!171 = distinct !DISubprogram(name: "__half2float", scope: !145, file: !145, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!172 = distinct !DILocation(line: 136, column: 55, scope: !173, inlinedAt: !174)
!173 = distinct !DISubprogram(name: "operator float", scope: !145, file: !145, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!174 = distinct !DILocation(line: 119, column: 50, scope: !40)
!175 = !DILocation(line: 119, column: 40, scope: !40)
!176 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !177)
!177 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !178)
!178 = distinct !DILocation(line: 122, column: 5, scope: !40)
!179 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !177)
!180 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !177)
!181 = !DILocation(line: 127, column: 237, scope: !40)
!182 = !DILocation(line: 127, column: 54, scope: !40)
!183 = !DILocation(line: 127, column: 40, scope: !40)
!184 = !DILocation(line: 134, column: 153, scope: !40)
!185 = !DILocation(line: 134, column: 239, scope: !40)
!186 = !DILocation(line: 134, column: 160, scope: !40)
!187 = !DILocation(line: 134, column: 26, scope: !40)
!188 = !DILocation(line: 134, column: 288, scope: !40)
!189 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !190)
!190 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !191)
!191 = distinct !DILocation(line: 137, column: 5, scope: !40)
!192 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !190)
!193 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !190)
!194 = !DILocation(line: 140, column: 152, scope: !40)
!195 = !DILocation(line: 140, column: 224, scope: !40)
!196 = !DILocation(line: 140, column: 63, scope: !40)
!197 = !DILocation(line: 140, column: 44, scope: !40)
!198 = !DILocation(line: 140, column: 91, scope: !40)
!199 = !DILocation(line: 145, column: 46, scope: !40)
!200 = !DILocation(line: 121, column: 38, scope: !40)
!201 = !DILocation(line: 1018, column: 9, scope: !90, inlinedAt: !202)
!202 = distinct !DILocation(line: 151, column: 38, scope: !40)
!203 = !DILocation(line: 0, scope: !40)
!204 = !DILocation(line: 171, column: 37, scope: !93, inlinedAt: !205)
!205 = distinct !DILocation(line: 990, column: 14, scope: !95, inlinedAt: !206)
!206 = distinct !DILocation(line: 1019, column: 11, scope: !90, inlinedAt: !202)
!207 = !DILocation(line: 171, column: 10, scope: !93, inlinedAt: !205)
!208 = !DILocation(line: 991, column: 20, scope: !95, inlinedAt: !206)
!209 = !DILocation(line: 992, column: 36, scope: !95, inlinedAt: !206)
!210 = !DILocation(line: 992, column: 17, scope: !95, inlinedAt: !206)
!211 = !DILocation(line: 992, column: 11, scope: !95, inlinedAt: !206)
!212 = !DILocation(line: 993, column: 43, scope: !95, inlinedAt: !206)
!213 = !DILocation(line: 993, column: 10, scope: !95, inlinedAt: !206)
!214 = !DILocation(line: 1020, column: 14, scope: !90, inlinedAt: !202)
!215 = !DILocation(line: 151, column: 36, scope: !40)
!216 = !DILocation(line: 1018, column: 9, scope: !90, inlinedAt: !217)
!217 = distinct !DILocation(line: 152, column: 38, scope: !40)
!218 = !DILocation(line: 171, column: 37, scope: !93, inlinedAt: !219)
!219 = distinct !DILocation(line: 990, column: 14, scope: !95, inlinedAt: !220)
!220 = distinct !DILocation(line: 1019, column: 11, scope: !90, inlinedAt: !217)
!221 = !DILocation(line: 171, column: 10, scope: !93, inlinedAt: !219)
!222 = !DILocation(line: 991, column: 20, scope: !95, inlinedAt: !220)
!223 = !DILocation(line: 992, column: 36, scope: !95, inlinedAt: !220)
!224 = !DILocation(line: 992, column: 17, scope: !95, inlinedAt: !220)
!225 = !DILocation(line: 992, column: 11, scope: !95, inlinedAt: !220)
!226 = !DILocation(line: 993, column: 43, scope: !95, inlinedAt: !220)
!227 = !DILocation(line: 993, column: 10, scope: !95, inlinedAt: !220)
!228 = !DILocation(line: 1020, column: 14, scope: !90, inlinedAt: !217)
!229 = !DILocation(line: 152, column: 36, scope: !40)
!230 = !DILocation(line: 156, column: 21, scope: !40)
!231 = !DILocation(line: 158, column: 22, scope: !40)
!232 = !DILocation(line: 159, column: 22, scope: !40)
!233 = !DILocation(line: 160, column: 22, scope: !40)
!234 = !DILocation(line: 161, column: 22, scope: !40)
!235 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !236)
!236 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !237)
!237 = distinct !DILocation(line: 164, column: 3, scope: !40)
!238 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !236)
!239 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !236)
!240 = !DILocation(line: 1007, column: 10, scope: !144, inlinedAt: !241)
!241 = distinct !DILocation(line: 1077, column: 18, scope: !147, inlinedAt: !242)
!242 = distinct !DILocation(line: 1295, column: 23, scope: !149, inlinedAt: !243)
!243 = distinct !DILocation(line: 169, column: 27, scope: !40)
!244 = !{!245, !247}
!245 = distinct !{!245, !246, !"_ZL17__floats2half2_rnff: %agg.result"}
!246 = distinct !{!246, !"_ZL17__floats2half2_rnff"}
!247 = distinct !{!247, !248, !"_ZL17__float22half2_rn6float2: %agg.result"}
!248 = distinct !{!248, !"_ZL17__float22half2_rn6float2"}
!249 = !DILocation(line: 1007, column: 10, scope: !144, inlinedAt: !250)
!250 = distinct !DILocation(line: 1077, column: 38, scope: !147, inlinedAt: !242)
!251 = !DILocation(line: 596, column: 67, scope: !252, inlinedAt: !253)
!252 = distinct !DISubprogram(name: "__half2", scope: !145, file: !145, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!253 = distinct !DILocation(line: 1077, column: 10, scope: !147, inlinedAt: !242)
!254 = !DILocation(line: 596, column: 73, scope: !252, inlinedAt: !253)
!255 = !DILocation(line: 1007, column: 10, scope: !144, inlinedAt: !256)
!256 = distinct !DILocation(line: 1077, column: 18, scope: !147, inlinedAt: !257)
!257 = distinct !DILocation(line: 1295, column: 23, scope: !149, inlinedAt: !258)
!258 = distinct !DILocation(line: 170, column: 27, scope: !40)
!259 = !{!260, !262}
!260 = distinct !{!260, !261, !"_ZL17__floats2half2_rnff: %agg.result"}
!261 = distinct !{!261, !"_ZL17__floats2half2_rnff"}
!262 = distinct !{!262, !263, !"_ZL17__float22half2_rn6float2: %agg.result"}
!263 = distinct !{!263, !"_ZL17__float22half2_rn6float2"}
!264 = !DILocation(line: 1007, column: 10, scope: !144, inlinedAt: !265)
!265 = distinct !DILocation(line: 1077, column: 38, scope: !147, inlinedAt: !257)
!266 = !DILocation(line: 596, column: 67, scope: !252, inlinedAt: !267)
!267 = distinct !DILocation(line: 1077, column: 10, scope: !147, inlinedAt: !257)
!268 = !DILocation(line: 596, column: 73, scope: !252, inlinedAt: !267)
!269 = !DILocation(line: 171, column: 38, scope: !40)
!270 = !DILocation(line: 172, column: 22, scope: !40)
!271 = !DILocation(line: 172, column: 255, scope: !40)
!272 = !DILocation(line: 172, column: 87, scope: !40)
!273 = !DILocation(line: 68, column: 3, scope: !50, inlinedAt: !274)
!274 = distinct !DILocation(line: 192, column: 3, scope: !53, inlinedAt: !275)
!275 = distinct !DILocation(line: 174, column: 3, scope: !40)
!276 = !DILocation(line: 69, column: 3, scope: !50, inlinedAt: !274)
!277 = !DILocation(line: 70, column: 3, scope: !50, inlinedAt: !274)
!278 = !DILocation(line: 179, column: 46, scope: !40)
!279 = !DILocation(line: 179, column: 65, scope: !40)
!280 = !DILocation(line: 181, column: 22, scope: !40)
!281 = !DILocation(line: 181, column: 100, scope: !40)
!282 = !DILocation(line: 183, column: 1, scope: !40)
