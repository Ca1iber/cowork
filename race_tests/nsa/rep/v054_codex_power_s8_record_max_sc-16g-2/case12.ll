; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v054_codex_power_s8_record_max_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v054_codex_power_s8_record_max_sc-16g-2/codegen/case12.device.cpp"
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
define protected metaxgpu_kernel void @native_sparse_attention_kernel(ptr addrspace(1) noalias nocapture noundef readonly %Indices.coerce, ptr addrspace(4) noalias noundef readonly %K.coerce, ptr addrspace(1) noalias nocapture noundef writeonly %Output.coerce, ptr addrspace(4) noalias nocapture noundef readonly %Q.coerce, ptr addrspace(4) noalias noundef readonly %V.coerce) local_unnamed_addr #3 !dbg !40 {
entry:
  %0 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.y(), !range !29
  %mul = shl nsw i32 %0, 20
  %1 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !range !29
  %mul7 = shl nsw i32 %1, 10
  %add = add nuw nsw i32 %mul, %mul7
  %2 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !42
  %mul11 = shl nuw nsw i32 %2, 3
  %add9 = add nuw nsw i32 %add, %mul11
  %mul15 = and i32 %mul11, 8128
  %xor763 = and i32 %mul11, 56
  %call18.masked = and i32 %2, 1016
  %mul20 = xor i32 %xor763, %call18.masked
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul15, !dbg !43
  %invariant.gep856 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul20, !dbg !43
  %3 = zext nneg i32 %add9 to i64, !dbg !44
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %3, !dbg !45
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep856, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr, i64 16, i1 false), !dbg !46, !tbaa.struct !47, !call_argsrelate !48
  %4 = add nuw nsw i64 %3, 512, !dbg !49
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %4, !dbg !45
  %gep857.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1024, !dbg !50
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep857.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr.1, i64 16, i1 false), !dbg !46, !tbaa.struct !47, !call_argsrelate !48
  fence syncscope("warp") release, !dbg !51
  tail call void @llvm.mxc.barrier.warp(), !dbg !57
  fence syncscope("warp") acquire, !dbg !58
  %and30 = shl nuw nsw i32 %2, 6
  %mul31 = and i32 %and30, 960
  %shr34 = lshr i32 %2, 5
  %and37 = and i32 %2, 7
  %5 = lshr i32 %2, 2
  %mul44 = and i32 %5, 4
  %xor38 = xor i32 %shr34, %and37, !dbg !59
  %mul39 = shl nuw nsw i32 %xor38, 3, !dbg !60
  %add40 = add nuw nsw i32 %mul39, %mul31, !dbg !61
  %add45 = or disjoint i32 %add40, %mul44, !dbg !62
  %add.ptr47 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add45, !dbg !63
  %6 = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !64
  %add35.1 = add nuw nsw i32 %shr34, 2, !dbg !65
  %xor38.1 = xor i32 %add35.1, %and37, !dbg !59
  %mul39.1 = shl nuw nsw i32 %xor38.1, 3, !dbg !60
  %add40.1 = add nuw nsw i32 %mul39.1, %mul31, !dbg !61
  %add45.1 = or disjoint i32 %add40.1, %mul44, !dbg !62
  %add.ptr47.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add45.1, !dbg !63
  %7 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !64
  %add35.2 = add nuw nsw i32 %shr34, 4, !dbg !65
  %xor38.2 = xor i32 %add35.2, %and37, !dbg !59
  %mul39.2 = shl nuw nsw i32 %xor38.2, 3, !dbg !60
  %add40.2 = add nuw nsw i32 %mul39.2, %mul31, !dbg !61
  %add45.2 = or disjoint i32 %add40.2, %mul44, !dbg !62
  %add.ptr47.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add45.2, !dbg !63
  %8 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !64
  %add35.3 = add nuw nsw i32 %shr34, 6, !dbg !65
  %xor38.3 = xor i32 %add35.3, %and37, !dbg !59
  %mul39.3 = shl nuw nsw i32 %xor38.3, 3, !dbg !60
  %add40.3 = add nuw nsw i32 %mul39.3, %mul31, !dbg !61
  %add45.3 = or disjoint i32 %add40.3, %mul44, !dbg !62
  %add.ptr47.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add45.3, !dbg !63
  %9 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !64
  %mul75 = shl nsw i32 %0, 13
  %mul77 = shl nsw i32 %1, 3
  %add78 = add nuw nsw i32 %mul75, %mul77
  %shr90 = lshr i32 %2, 3
  %conv = zext nneg i32 %0 to i64
  %mul97 = shl nuw nsw i64 %conv, 16
  %mul106 = zext nneg i32 %mul11 to i64
  %invariant.gep883 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul106, !dbg !66
  %mul193 = and i32 %5, 252
  %shr397 = lshr i32 %2, 4
  %10 = shl nuw nsw i32 %2, 4
  %11 = and i32 %10, 16128
  %12 = shl nuw nsw i32 %2, 2
  %13 = and i32 %12, 60
  %14 = or disjoint i32 %11, %13
  %15 = zext nneg i32 %14 to i64
  %add413 = or disjoint i64 %mul97, %15
  %mul466 = and i32 %10, 240
  %shr472 = and i32 %5, 3
  %xor473 = xor i32 %shr472, %shr397
  %and487 = shl nuw nsw i32 %2, 8
  %mul488 = and i32 %and487, 768
  %mul494 = and i32 %12, 48
  %and500 = and i32 %2, 3
  %16 = xor i32 %shr397, %and500
  %17 = zext nneg i32 %add78 to i64, !dbg !66
  %arrayidx80 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %17, !dbg !67
  %18 = load i32, ptr addrspace(1) %arrayidx80, align 4, !dbg !67, !tbaa !30
  %mul81 = shl nsw i32 %18, 4, !dbg !68
  %cmp82 = icmp slt i32 %18, 0, !dbg !69
  %cmp84.not = icmp sgt i32 %mul81, %1
  %or.cond = select i1 %cmp82, i1 true, i1 %cmp84.not, !dbg !70
  br i1 %or.cond, label %if.end531, label %if.then, !dbg !70

if.then:                                          ; preds = %entry
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %add91 = add nuw nsw i32 %mul81, %shr90
  %conv101 = zext nneg i32 %mul81 to i64
  %.idx = shl nuw nsw i64 %conv101, 7
  %gep = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep883, i64 %.idx, !dbg !76
  %cmp94 = icmp ult i32 %add91, 1024, !dbg !77
  br i1 %cmp94, label %if.then95, label %if.end, !dbg !78

if.then95:                                        ; preds = %if.then
  %gep867 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %mul97
  %condval.sroa.7.0.add.ptr108.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep867, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep867, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep867, i64 4
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep867, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx, align 4, !dbg !79, !tbaa !30
  br label %if.end, !dbg !80

if.end:                                           ; preds = %if.then, %if.then95
  %condval.sroa.0.0 = phi i32 [ %condval.sroa.0.0.copyload, %if.then95 ], [ 0, %if.then ], !dbg !81
  %condval.sroa.5.0 = phi i32 [ %condval.sroa.5.0.copyload, %if.then95 ], [ 0, %if.then ], !dbg !81
  %condval.sroa.6.0 = phi i32 [ %condval.sroa.6.0.copyload, %if.then95 ], [ 0, %if.then ], !dbg !81
  %condval.sroa.7.0 = phi i32 [ %condval.sroa.7.0.copyload, %if.then95 ], [ 0, %if.then ], !dbg !81
  store i32 %condval.sroa.0.0, ptr addrspace(3) %invariant.gep856, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 4, !dbg !82
  store i32 %condval.sroa.5.0, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 8, !dbg !82
  store i32 %condval.sroa.6.0, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 12, !dbg !82
  store i32 %condval.sroa.7.0, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx, align 4, !dbg !82, !tbaa !30
  %cmp94.1 = icmp ult i32 %add91, 1016, !dbg !77
  br i1 %cmp94.1, label %if.then95.1, label %if.end.1, !dbg !78

if.then95.1:                                      ; preds = %if.end
  %add100.1 = or disjoint i64 %mul97, 512
  %gep867.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %add100.1
  %condval.sroa.7.0.add.ptr108.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1, i64 4
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep867.1, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.1, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.1, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.1, align 4, !dbg !79, !tbaa !30
  br label %if.end.1, !dbg !80

if.end.1:                                         ; preds = %if.then95.1, %if.end
  %condval.sroa.0.0.1 = phi i32 [ %condval.sroa.0.0.copyload.1, %if.then95.1 ], [ 0, %if.end ], !dbg !81
  %condval.sroa.5.0.1 = phi i32 [ %condval.sroa.5.0.copyload.1, %if.then95.1 ], [ 0, %if.end ], !dbg !81
  %condval.sroa.6.0.1 = phi i32 [ %condval.sroa.6.0.copyload.1, %if.then95.1 ], [ 0, %if.end ], !dbg !81
  %condval.sroa.7.0.1 = phi i32 [ %condval.sroa.7.0.copyload.1, %if.then95.1 ], [ 0, %if.end ], !dbg !81
  store i32 %condval.sroa.0.0.1, ptr addrspace(3) %gep857.1, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1028, !dbg !82
  store i32 %condval.sroa.5.0.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.1, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1032, !dbg !82
  store i32 %condval.sroa.6.0.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.1, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1036, !dbg !82
  store i32 %condval.sroa.7.0.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.1, align 4, !dbg !82, !tbaa !30
  fence syncscope("warp") release, !dbg !83
  tail call void @llvm.mxc.barrier.warp(), !dbg !86
  fence syncscope("warp") acquire, !dbg !87
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !88
  %19 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %6, <4 x float> zeroinitializer), !dbg !89
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !88
  %20 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %7, <4 x float> %19), !dbg !89
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !88
  %21 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %8, <4 x float> %20), !dbg !89
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !88
  %22 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %9, <4 x float> %21), !dbg !89
  %add194 = add nuw nsw i32 %mul81, %mul193
  %cmp197.not = icmp sgt i32 %add194, %1, !dbg !90
  %scores.sroa.0.0.vec.extract2073 = extractelement <4 x float> %22, i64 0
  %spec.select = select i1 %cmp197.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2073, !dbg !91
  %cmp197.not.1.not = icmp slt i32 %add194, %1, !dbg !90
  %scores.sroa.0.4.vec.extract2178 = extractelement <4 x float> %22, i64 1, !dbg !91
  %condval_1.0.1 = select i1 %cmp197.not.1.not, float %scores.sroa.0.4.vec.extract2178, float 0xFFF0000000000000, !dbg !91
  %add195.2 = or disjoint i32 %add194, 2, !dbg !92
  %cmp197.not.2 = icmp sgt i32 %add195.2, %1, !dbg !90
  %scores.sroa.0.8.vec.extract2255 = extractelement <4 x float> %22, i64 2, !dbg !91
  %condval_1.0.2 = select i1 %cmp197.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2255, !dbg !91
  %add195.3 = or disjoint i32 %add194, 3, !dbg !92
  %cmp197.not.3 = icmp sgt i32 %add195.3, %1, !dbg !90
  %scores.sroa.0.12.vec.extract2332 = extractelement <4 x float> %22, i64 3, !dbg !91
  %condval_1.0.3 = select i1 %cmp197.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2332, !dbg !91
  %23 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !93
  %24 = tail call contract noundef float @llvm.maxnum.f32(float %23, float %condval_1.0.1), !dbg !93
  %25 = tail call contract noundef float @llvm.maxnum.f32(float %24, float %condval_1.0.2), !dbg !93
  %26 = tail call contract noundef float @llvm.maxnum.f32(float %25, float %condval_1.0.3), !dbg !93
  %27 = bitcast float %26 to i32, !dbg !97
  %28 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %29 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %28) #11, !dbg !105
  %xor.i.i = xor i32 %29, 32, !dbg !106
  %30 = and i32 %29, -64, !dbg !107
  %and.i.i = add nsw i32 %30, 64, !dbg !107
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !108
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %29, !dbg !109
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !110
  %31 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %27), !dbg !111
  %32 = bitcast i32 %31 to float, !dbg !112
  %33 = tail call contract noundef float @llvm.maxnum.f32(float %26, float %32), !dbg !113
  %34 = bitcast float %33 to i32, !dbg !115
  %35 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !117
  %36 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %35) #11, !dbg !120
  %xor.i.i785 = xor i32 %36, 16, !dbg !121
  %37 = and i32 %36, -64, !dbg !122
  %and.i.i786 = add nsw i32 %37, 64, !dbg !122
  %cmp.not.i.i787 = icmp slt i32 %xor.i.i785, %and.i.i786, !dbg !123
  %cond.i.i788 = select i1 %cmp.not.i.i787, i32 %xor.i.i785, i32 %36, !dbg !124
  %shl.i.i789 = shl i32 %cond.i.i788, 2, !dbg !125
  %38 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i789, i32 %34), !dbg !126
  %39 = bitcast i32 %38 to float, !dbg !127
  %40 = tail call contract noundef float @llvm.maxnum.f32(float %33, float %39), !dbg !128
  %cmp237 = fcmp contract ueq float %40, 0xFFF0000000000000, !dbg !130
  br i1 %cmp237, label %if.end282, label %if.then238, !dbg !131

if.then238:                                       ; preds = %if.end.1
  %sub = fsub contract float 0xFFF0000000000000, %40, !dbg !132
  %mul241 = fmul contract float %sub, 0x3FC7154760000000, !dbg !133
  %cmp.i.i = fcmp contract olt float %mul241, -1.260000e+02, !dbg !134
  %cond.i.i790 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !134
  %add.i.i = fadd contract float %mul241, %cond.i.i790, !dbg !134
  %41 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !134
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !134
  %mul.i.i = fmul contract float %cond2.i.i, %41, !dbg !134
  %mul258 = fmul contract float %mul.i.i, 0.000000e+00, !dbg !137
  %numerator.sroa.0.0.vec.insert2388 = insertelement <4 x float> poison, float %mul258, i64 0, !dbg !138
  %numerator.sroa.0.12.vec.insert2499 = shufflevector <4 x float> %numerator.sroa.0.0.vec.insert2388, <4 x float> poison, <4 x i32> zeroinitializer, !dbg !138
  br label %if.end282, !dbg !139

if.end282:                                        ; preds = %if.then238, %if.end.1
  %numerator.sroa.290.0 = phi <4 x float> [ %numerator.sroa.0.12.vec.insert2499, %if.then238 ], [ zeroinitializer, %if.end.1 ], !dbg !81
  %maximum.sroa.0.1 = phi float [ %40, %if.then238 ], [ 0xFFF0000000000000, %if.end.1 ], !dbg !81
  %denominator.sroa.0.1 = phi float [ %mul258, %if.then238 ], [ 0.000000e+00, %if.end.1 ], !dbg !81
  %sub292 = fsub contract float %spec.select, %maximum.sroa.0.1, !dbg !140
  %sub296 = fsub contract float %condval_1.0.1, %maximum.sroa.0.1, !dbg !141
  %sub300 = fsub contract float %condval_1.0.2, %maximum.sroa.0.1, !dbg !142
  %sub304 = fsub contract float %condval_1.0.3, %maximum.sroa.0.1, !dbg !143
  %mul309 = fmul contract float %sub292, 0x3FC7154760000000, !dbg !144
  %mul313 = fmul contract float %sub296, 0x3FC7154760000000, !dbg !145
  %mul317 = fmul contract float %sub300, 0x3FC7154760000000, !dbg !146
  %mul321 = fmul contract float %sub304, 0x3FC7154760000000, !dbg !147
  %add326 = fadd contract float %mul309, 8.000000e+00, !dbg !148
  %add330 = fadd contract float %mul313, 8.000000e+00, !dbg !149
  %add334 = fadd contract float %mul317, 8.000000e+00, !dbg !150
  %add338 = fadd contract float %mul321, 8.000000e+00, !dbg !151
  %cmp.i.i799 = fcmp contract olt float %add326, -1.260000e+02, !dbg !152
  %cond.i.i800 = select contract i1 %cmp.i.i799, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i801 = fadd contract float %add326, %cond.i.i800, !dbg !152
  %42 = tail call contract float @llvm.exp2.f32(float %add.i.i801), !dbg !152
  %cond2.i.i802 = select contract i1 %cmp.i.i799, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i803 = fmul contract float %cond2.i.i802, %42, !dbg !152
  %cmp.i.i804 = fcmp contract olt float %add330, -1.260000e+02, !dbg !154
  %cond.i.i805 = select contract i1 %cmp.i.i804, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i806 = fadd contract float %add330, %cond.i.i805, !dbg !154
  %43 = tail call contract float @llvm.exp2.f32(float %add.i.i806), !dbg !154
  %cond2.i.i807 = select contract i1 %cmp.i.i804, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i808 = fmul contract float %cond2.i.i807, %43, !dbg !154
  %cmp.i.i809 = fcmp contract olt float %add334, -1.260000e+02, !dbg !156
  %cond.i.i810 = select contract i1 %cmp.i.i809, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i811 = fadd contract float %add334, %cond.i.i810, !dbg !156
  %44 = tail call contract float @llvm.exp2.f32(float %add.i.i811), !dbg !156
  %cond2.i.i812 = select contract i1 %cmp.i.i809, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i813 = fmul contract float %cond2.i.i812, %44, !dbg !156
  %cmp.i.i814 = fcmp contract olt float %add338, -1.260000e+02, !dbg !158
  %cond.i.i815 = select contract i1 %cmp.i.i814, float 6.400000e+01, float 0.000000e+00, !dbg !158
  %add.i.i816 = fadd contract float %add338, %cond.i.i815, !dbg !158
  %45 = tail call contract float @llvm.exp2.f32(float %add.i.i816), !dbg !158
  %cond2.i.i817 = select contract i1 %cmp.i.i814, float 0x3BF0000000000000, float 1.000000e+00, !dbg !158
  %mul.i.i818 = fmul contract float %cond2.i.i817, %45, !dbg !158
  %46 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !160, !noalias !168
  %47 = fptrunc float %mul.i.i803 to half, !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %46), !dbg !160, !noalias !168
  %48 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !168
  %49 = fptrunc float %mul.i.i808 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %48), !dbg !173, !noalias !168
  %50 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !175, !noalias !179
  %51 = fptrunc float %mul.i.i813 to half, !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %50), !dbg !175, !noalias !179
  %52 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !184, !noalias !179
  %53 = fptrunc float %mul.i.i818 to half, !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %52), !dbg !184, !noalias !179
  %54 = insertelement <4 x half> poison, half %47, i64 0, !dbg !186
  %55 = insertelement <4 x half> %54, half %49, i64 1, !dbg !186
  %56 = insertelement <4 x half> %55, half %51, i64 2, !dbg !186
  %57 = insertelement <4 x half> %56, half %53, i64 3, !dbg !186
  %conv.i.i = fpext half %47 to float, !dbg !187
  %add373 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !192
  %conv.i.i.1 = fpext half %49 to float, !dbg !187
  %add373.1 = fadd contract float %add373, %conv.i.i.1, !dbg !192
  %conv.i.i.2 = fpext half %51 to float, !dbg !187
  %add373.2 = fadd contract float %add373.1, %conv.i.i.2, !dbg !192
  %conv.i.i.3 = fpext half %53 to float, !dbg !187
  %add373.3 = fadd contract float %add373.2, %conv.i.i.3, !dbg !192
  %58 = bitcast float %add373.3 to i32, !dbg !193
  %59 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !195
  %60 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %59) #11, !dbg !198
  %xor.i.i820 = xor i32 %60, 32, !dbg !199
  %61 = and i32 %60, -64, !dbg !200
  %and.i.i821 = add nsw i32 %61, 64, !dbg !200
  %cmp.not.i.i822 = icmp slt i32 %xor.i.i820, %and.i.i821, !dbg !201
  %cond.i.i823 = select i1 %cmp.not.i.i822, i32 %xor.i.i820, i32 %60, !dbg !202
  %shl.i.i824 = shl i32 %cond.i.i823, 2, !dbg !203
  %62 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i824, i32 %58), !dbg !204
  %63 = bitcast i32 %62 to float, !dbg !205
  %add381 = fadd contract float %add373.3, %63, !dbg !206
  %64 = bitcast float %add381 to i32, !dbg !207
  %65 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !209
  %66 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %65) #11, !dbg !212
  %xor.i.i825 = xor i32 %66, 16, !dbg !213
  %67 = and i32 %66, -64, !dbg !214
  %and.i.i826 = add nsw i32 %67, 64, !dbg !214
  %cmp.not.i.i827 = icmp slt i32 %xor.i.i825, %and.i.i826, !dbg !215
  %cond.i.i828 = select i1 %cmp.not.i.i827, i32 %xor.i.i825, i32 %66, !dbg !216
  %shl.i.i829 = shl i32 %cond.i.i828, 2, !dbg !217
  %68 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i829, i32 %64), !dbg !218
  %69 = bitcast i32 %68 to float, !dbg !219
  %add386 = fadd contract float %add381, %69, !dbg !220
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %shr399 = lshr exact i32 %mul81, 2
  %add400 = add nuw nsw i32 %shr399, %shr397
  %cmp401 = icmp ult i32 %add400, 256
  br i1 %cmp401, label %if.then402, label %if.end436, !dbg !226

if.then402:                                       ; preds = %if.end282
  %70 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %71 = getelementptr inbounds i8, ptr addrspace(4) %70, i64 %.idx, !dbg !227
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %71, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %71, i64 4, !dbg !228
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx, align 4, !dbg !228, !tbaa !30
  br label %if.end436, !dbg !229

if.end436:                                        ; preds = %if.end282, %if.then402
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then402 ], [ 0, %if.end282 ], !dbg !81
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then402 ], [ 0, %if.end282 ], !dbg !81
  br i1 %cmp401, label %if.then402.1, label %if.end436.1, !dbg !226

if.then402.1:                                     ; preds = %if.end436
  %72 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %73 = getelementptr inbounds i8, ptr addrspace(4) %72, i64 %.idx, !dbg !227
  %add.ptr422.1 = getelementptr inbounds i8, ptr addrspace(4) %73, i64 128, !dbg !227
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %add.ptr422.1, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %73, i64 132, !dbg !228
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.1, align 4, !dbg !228, !tbaa !30
  br label %if.end436.1, !dbg !229

if.end436.1:                                      ; preds = %if.then402.1, %if.end436
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then402.1 ], [ 0, %if.end436 ], !dbg !81
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then402.1 ], [ 0, %if.end436 ], !dbg !81
  br i1 %cmp401, label %if.then402.2, label %if.end436.2, !dbg !226

if.then402.2:                                     ; preds = %if.end436.1
  %74 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %75 = getelementptr inbounds i8, ptr addrspace(4) %74, i64 %.idx, !dbg !227
  %add.ptr422.2 = getelementptr inbounds i8, ptr addrspace(4) %75, i64 256, !dbg !227
  %condval_2.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %add.ptr422.2, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %75, i64 260, !dbg !228
  %condval_2.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.2, align 4, !dbg !228, !tbaa !30
  br label %if.end436.2, !dbg !229

if.end436.2:                                      ; preds = %if.then402.2, %if.end436.1
  %condval_2.sroa.0.0.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2, %if.then402.2 ], [ 0, %if.end436.1 ], !dbg !81
  %condval_2.sroa.5.0.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2, %if.then402.2 ], [ 0, %if.end436.1 ], !dbg !81
  br i1 %cmp401, label %if.then402.3, label %if.end436.3, !dbg !226

if.then402.3:                                     ; preds = %if.end436.2
  %76 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %77 = getelementptr inbounds i8, ptr addrspace(4) %76, i64 %.idx, !dbg !227
  %add.ptr422.3 = getelementptr inbounds i8, ptr addrspace(4) %77, i64 384, !dbg !227
  %condval_2.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %add.ptr422.3, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %77, i64 388, !dbg !228
  %condval_2.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.3, align 4, !dbg !228, !tbaa !30
  br label %if.end436.3, !dbg !229

if.end436.3:                                      ; preds = %if.then402.3, %if.end436.2
  %condval_2.sroa.0.0.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3, %if.then402.3 ], [ 0, %if.end436.2 ], !dbg !81
  %condval_2.sroa.5.0.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3, %if.then402.3 ], [ 0, %if.end436.2 ], !dbg !81
  %78 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul466, !dbg !230
  %add.ptr478.idx = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478 = getelementptr inbounds i8, ptr addrspace(3) %78, i32 %add.ptr478.idx, !dbg !230
  %79 = and i32 %condval_2.sroa.0.0.3, 65535, !dbg !231
  %v_column.sroa.130.0.insert.ext = zext nneg i32 %79 to i64, !dbg !231
  %v_column.sroa.130.0.insert.shift = shl nuw i64 %v_column.sroa.130.0.insert.ext, 48, !dbg !231
  %80 = and i32 %condval_2.sroa.0.0.2, 65535, !dbg !231
  %v_column.sroa.98.0.insert.ext = zext nneg i32 %80 to i64, !dbg !231
  %v_column.sroa.98.0.insert.shift = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert = or disjoint i64 %v_column.sroa.130.0.insert.shift, %v_column.sroa.98.0.insert.shift, !dbg !231
  %81 = shl i32 %condval_2.sroa.0.0.1, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift = zext i32 %81 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert = or disjoint i64 %v_column.sroa.98.0.insert.insert, %v_column.sroa.66.0.insert.shift, !dbg !231
  %82 = and i32 %condval_2.sroa.0.0, 65535, !dbg !231
  %v_column.sroa.0.0.insert.ext = zext nneg i32 %82 to i64, !dbg !231
  %v_column.sroa.0.0.insert.insert = or disjoint i64 %v_column.sroa.66.0.insert.insert, %v_column.sroa.0.0.insert.ext, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr478, align 8, !dbg !231
  %v_fetch.sroa.0.2.extract.shift = lshr i32 %condval_2.sroa.0.0, 16, !dbg !232
  %v_fetch.sroa.0.2.extract.trunc = zext nneg i32 %v_fetch.sroa.0.2.extract.shift to i64, !dbg !232
  %v_fetch.sroa.50.10.extract.shift = and i32 %condval_2.sroa.0.0.1, -65536, !dbg !231
  %v_fetch.sroa.98.18.extract.shift = lshr i32 %condval_2.sroa.0.0.2, 16, !dbg !232
  %v_fetch.sroa.98.18.extract.trunc = zext nneg i32 %v_fetch.sroa.98.18.extract.shift to i64, !dbg !232
  %v_fetch.sroa.146.26.extract.shift = lshr i32 %condval_2.sroa.0.0.3, 16, !dbg !232
  %v_fetch.sroa.146.26.extract.trunc = zext nneg i32 %v_fetch.sroa.146.26.extract.shift to i64, !dbg !232
  %add467.1 = or disjoint i32 %mul466, 256, !dbg !233
  %83 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.1, !dbg !230
  %xor474.1 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.1 = xor i32 %xor474.1, 8, !dbg !230
  %add.ptr478.1 = getelementptr inbounds i8, ptr addrspace(3) %83, i32 %add.ptr478.idx.1, !dbg !230
  %v_column.sroa.130.0.insert.shift1498 = shl nuw i64 %v_fetch.sroa.146.26.extract.trunc, 48, !dbg !231
  %v_column.sroa.98.0.insert.shift1343 = shl nuw nsw i64 %v_fetch.sroa.98.18.extract.trunc, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1345 = or disjoint i64 %v_column.sroa.130.0.insert.shift1498, %v_column.sroa.98.0.insert.shift1343, !dbg !231
  %v_column.sroa.66.0.insert.shift1188 = zext i32 %v_fetch.sroa.50.10.extract.shift to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1190 = or disjoint i64 %v_column.sroa.98.0.insert.insert1345, %v_column.sroa.66.0.insert.shift1188, !dbg !231
  %v_column.sroa.0.0.insert.insert1065 = or disjoint i64 %v_column.sroa.66.0.insert.insert1190, %v_fetch.sroa.0.2.extract.trunc, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1065, ptr addrspace(3) %add.ptr478.1, align 8, !dbg !231
  %add467.2 = or disjoint i32 %mul466, 512, !dbg !233
  %84 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.2, !dbg !230
  %xor474.2 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.2 = xor i32 %xor474.2, 16, !dbg !230
  %add.ptr478.2 = getelementptr inbounds i8, ptr addrspace(3) %84, i32 %add.ptr478.idx.2, !dbg !230
  %85 = and i32 %condval_2.sroa.5.0.3, 65535, !dbg !231
  %v_column.sroa.130.0.insert.ext1502 = zext nneg i32 %85 to i64, !dbg !231
  %v_column.sroa.130.0.insert.shift1503 = shl nuw i64 %v_column.sroa.130.0.insert.ext1502, 48, !dbg !231
  %86 = and i32 %condval_2.sroa.5.0.2, 65535, !dbg !231
  %v_column.sroa.98.0.insert.ext1347 = zext nneg i32 %86 to i64, !dbg !231
  %v_column.sroa.98.0.insert.shift1348 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1347, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1350 = or disjoint i64 %v_column.sroa.130.0.insert.shift1503, %v_column.sroa.98.0.insert.shift1348, !dbg !231
  %87 = shl i32 %condval_2.sroa.5.0.1, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1193 = zext i32 %87 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1195 = or disjoint i64 %v_column.sroa.98.0.insert.insert1350, %v_column.sroa.66.0.insert.shift1193, !dbg !231
  %88 = and i32 %condval_2.sroa.5.0, 65535, !dbg !231
  %v_column.sroa.0.0.insert.ext1067 = zext nneg i32 %88 to i64, !dbg !231
  %v_column.sroa.0.0.insert.insert1069 = or disjoint i64 %v_column.sroa.66.0.insert.insert1195, %v_column.sroa.0.0.insert.ext1067, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1069, ptr addrspace(3) %add.ptr478.2, align 8, !dbg !231
  %v_fetch.sroa.26.6.extract.shift = lshr i32 %condval_2.sroa.5.0, 16, !dbg !232
  %v_fetch.sroa.26.6.extract.trunc = zext nneg i32 %v_fetch.sroa.26.6.extract.shift to i64, !dbg !232
  %v_fetch.sroa.74.14.extract.shift = and i32 %condval_2.sroa.5.0.1, -65536, !dbg !231
  %v_fetch.sroa.122.22.extract.shift = lshr i32 %condval_2.sroa.5.0.2, 16, !dbg !232
  %v_fetch.sroa.122.22.extract.trunc = zext nneg i32 %v_fetch.sroa.122.22.extract.shift to i64, !dbg !232
  %v_fetch.sroa.170.30.extract.shift = lshr i32 %condval_2.sroa.5.0.3, 16, !dbg !232
  %v_fetch.sroa.170.30.extract.trunc = zext nneg i32 %v_fetch.sroa.170.30.extract.shift to i64, !dbg !232
  %add467.3 = or disjoint i32 %mul466, 768, !dbg !233
  %89 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.3, !dbg !230
  %xor474.3 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.3 = xor i32 %xor474.3, 24, !dbg !230
  %add.ptr478.3 = getelementptr inbounds i8, ptr addrspace(3) %89, i32 %add.ptr478.idx.3, !dbg !230
  %v_column.sroa.130.0.insert.shift1508 = shl nuw i64 %v_fetch.sroa.170.30.extract.trunc, 48, !dbg !231
  %v_column.sroa.98.0.insert.shift1353 = shl nuw nsw i64 %v_fetch.sroa.122.22.extract.trunc, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1355 = or disjoint i64 %v_column.sroa.130.0.insert.shift1508, %v_column.sroa.98.0.insert.shift1353, !dbg !231
  %v_column.sroa.66.0.insert.shift1198 = zext i32 %v_fetch.sroa.74.14.extract.shift to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1200 = or disjoint i64 %v_column.sroa.98.0.insert.insert1355, %v_column.sroa.66.0.insert.shift1198, !dbg !231
  %v_column.sroa.0.0.insert.insert1073 = or disjoint i64 %v_column.sroa.66.0.insert.insert1200, %v_fetch.sroa.26.6.extract.trunc, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1073, ptr addrspace(3) %add.ptr478.3, align 8, !dbg !231
  fence syncscope("warp") release, !dbg !234
  tail call void @llvm.mxc.barrier.warp(), !dbg !237
  fence syncscope("warp") acquire, !dbg !238
  %add495 = or disjoint i32 %mul488, %mul494, !dbg !239
  %90 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495, !dbg !240
  %add.ptr505.idx = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505 = getelementptr inbounds i8, ptr addrspace(3) %90, i32 %add.ptr505.idx, !dbg !240
  %91 = load <4 x half>, ptr addrspace(3) %add.ptr505, align 8, !dbg !241
  %add490.1 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.1 = or disjoint i32 %add490.1, 64, !dbg !239
  %92 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.1, !dbg !240
  %xor501.1 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.1 = xor i32 %xor501.1, 8, !dbg !240
  %add.ptr505.1 = getelementptr inbounds i8, ptr addrspace(3) %92, i32 %add.ptr505.idx.1, !dbg !240
  %93 = load <4 x half>, ptr addrspace(3) %add.ptr505.1, align 8, !dbg !241
  %add490.2 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.2 = or disjoint i32 %add490.2, 128, !dbg !239
  %94 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.2, !dbg !240
  %xor501.2 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.2 = xor i32 %xor501.2, 16, !dbg !240
  %add.ptr505.2 = getelementptr inbounds i8, ptr addrspace(3) %94, i32 %add.ptr505.idx.2, !dbg !240
  %95 = load <4 x half>, ptr addrspace(3) %add.ptr505.2, align 8, !dbg !241
  %add490.3 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.3 = or disjoint i32 %add490.3, 192, !dbg !239
  %96 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.3, !dbg !240
  %xor501.3 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.3 = xor i32 %xor501.3, 24, !dbg !240
  %add.ptr505.3 = getelementptr inbounds i8, ptr addrspace(3) %96, i32 %add.ptr505.idx.3, !dbg !240
  %97 = load <4 x half>, ptr addrspace(3) %add.ptr505.3, align 8, !dbg !241
  %98 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %91, <4 x half> %57, <4 x float> %numerator.sroa.290.0), !dbg !242
  %99 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %93, <4 x half> %57, <4 x float> %numerator.sroa.290.0), !dbg !242
  %100 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %95, <4 x half> %57, <4 x float> %numerator.sroa.290.0), !dbg !242
  %101 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %97, <4 x half> %57, <4 x float> %numerator.sroa.290.0), !dbg !242
  %add390 = fadd contract float %denominator.sroa.0.1, %add386, !dbg !243
  br label %if.end531, !dbg !244

if.end531:                                        ; preds = %if.end436.3, %entry
  %numerator.sroa.290.1 = phi <4 x float> [ zeroinitializer, %entry ], [ %101, %if.end436.3 ], !dbg !81
  %numerator.sroa.194.1 = phi <4 x float> [ zeroinitializer, %entry ], [ %100, %if.end436.3 ], !dbg !81
  %numerator.sroa.98.1 = phi <4 x float> [ zeroinitializer, %entry ], [ %99, %if.end436.3 ], !dbg !81
  %numerator.sroa.0.1 = phi <4 x float> [ zeroinitializer, %entry ], [ %98, %if.end436.3 ], !dbg !81
  %maximum.sroa.0.2 = phi float [ 0xFFF0000000000000, %entry ], [ %maximum.sroa.0.1, %if.end436.3 ], !dbg !81
  %denominator.sroa.0.2 = phi float [ 0.000000e+00, %entry ], [ %add390, %if.end436.3 ], !dbg !81
  %102 = or disjoint i64 %17, 1, !dbg !245
  %arrayidx80.1 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %102, !dbg !67
  %103 = load i32, ptr addrspace(1) %arrayidx80.1, align 4, !dbg !67, !tbaa !30
  %mul81.1 = shl nsw i32 %103, 4, !dbg !68
  %cmp82.1 = icmp slt i32 %103, 0, !dbg !69
  %cmp84.not.1 = icmp sgt i32 %mul81.1, %1
  %or.cond.1 = select i1 %cmp82.1, i1 true, i1 %cmp84.not.1, !dbg !70
  br i1 %or.cond.1, label %if.end531.1, label %if.then.1, !dbg !70

if.then.1:                                        ; preds = %if.end531
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %add91.1 = add nuw nsw i32 %mul81.1, %shr90
  %conv101.1 = zext nneg i32 %mul81.1 to i64
  %.idx.1 = shl nuw nsw i64 %conv101.1, 7
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep883, i64 %.idx.1, !dbg !76
  %cmp94.1906 = icmp ult i32 %add91.1, 1024, !dbg !77
  br i1 %cmp94.1906, label %if.then95.1915, label %if.end.1923, !dbg !78

if.then95.1915:                                   ; preds = %if.then.1
  %gep867.1907 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.1, i64 %mul97
  %condval.sroa.7.0.add.ptr108.sroa_idx.1908 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1907, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.1909 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1907, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.1910 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1907, i64 4
  %condval.sroa.0.0.copyload.1911 = load i32, ptr addrspace(4) %gep867.1907, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.1912 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.1910, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.1913 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.1909, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.1914 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.1908, align 4, !dbg !79, !tbaa !30
  br label %if.end.1923, !dbg !80

if.end.1923:                                      ; preds = %if.then95.1915, %if.then.1
  %condval.sroa.0.0.1916 = phi i32 [ %condval.sroa.0.0.copyload.1911, %if.then95.1915 ], [ 0, %if.then.1 ], !dbg !81
  %condval.sroa.5.0.1917 = phi i32 [ %condval.sroa.5.0.copyload.1912, %if.then95.1915 ], [ 0, %if.then.1 ], !dbg !81
  %condval.sroa.6.0.1918 = phi i32 [ %condval.sroa.6.0.copyload.1913, %if.then95.1915 ], [ 0, %if.then.1 ], !dbg !81
  %condval.sroa.7.0.1919 = phi i32 [ %condval.sroa.7.0.copyload.1914, %if.then95.1915 ], [ 0, %if.then.1 ], !dbg !81
  store i32 %condval.sroa.0.0.1916, ptr addrspace(3) %invariant.gep856, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.1920 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 4, !dbg !82
  store i32 %condval.sroa.5.0.1917, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.1920, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.1921 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 8, !dbg !82
  store i32 %condval.sroa.6.0.1918, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.1921, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.1922 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 12, !dbg !82
  store i32 %condval.sroa.7.0.1919, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.1922, align 4, !dbg !82, !tbaa !30
  %cmp94.1.1 = icmp ult i32 %add91.1, 1016, !dbg !77
  br i1 %cmp94.1.1, label %if.then95.1.1, label %if.end.1.1, !dbg !78

if.then95.1.1:                                    ; preds = %if.end.1923
  %add100.1.1 = or disjoint i64 %mul97, 512
  %gep867.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.1, i64 %add100.1.1
  %condval.sroa.7.0.add.ptr108.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1.1, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1.1, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1.1, i64 4
  %condval.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %gep867.1.1, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.1.1, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.1.1, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.1.1, align 4, !dbg !79, !tbaa !30
  br label %if.end.1.1, !dbg !80

if.end.1.1:                                       ; preds = %if.then95.1.1, %if.end.1923
  %condval.sroa.0.0.1.1 = phi i32 [ %condval.sroa.0.0.copyload.1.1, %if.then95.1.1 ], [ 0, %if.end.1923 ], !dbg !81
  %condval.sroa.5.0.1.1 = phi i32 [ %condval.sroa.5.0.copyload.1.1, %if.then95.1.1 ], [ 0, %if.end.1923 ], !dbg !81
  %condval.sroa.6.0.1.1 = phi i32 [ %condval.sroa.6.0.copyload.1.1, %if.then95.1.1 ], [ 0, %if.end.1923 ], !dbg !81
  %condval.sroa.7.0.1.1 = phi i32 [ %condval.sroa.7.0.copyload.1.1, %if.then95.1.1 ], [ 0, %if.end.1923 ], !dbg !81
  store i32 %condval.sroa.0.0.1.1, ptr addrspace(3) %gep857.1, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1028, !dbg !82
  store i32 %condval.sroa.5.0.1.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.1.1, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1032, !dbg !82
  store i32 %condval.sroa.6.0.1.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.1.1, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1036, !dbg !82
  store i32 %condval.sroa.7.0.1.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.1.1, align 4, !dbg !82, !tbaa !30
  fence syncscope("warp") release, !dbg !83
  tail call void @llvm.mxc.barrier.warp(), !dbg !86
  fence syncscope("warp") acquire, !dbg !87
  %k_local.sroa.0.0.copyload.1929 = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !88
  %104 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1929, <4 x half> %6, <4 x float> zeroinitializer), !dbg !89
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !88
  %105 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %7, <4 x float> %104), !dbg !89
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !88
  %106 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %8, <4 x float> %105), !dbg !89
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !88
  %107 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %9, <4 x float> %106), !dbg !89
  %add194.1 = add nuw nsw i32 %mul81.1, %mul193
  %cmp197.not.1930 = icmp sgt i32 %add194.1, %1, !dbg !90
  %scores.sroa.0.0.vec.extract2081 = extractelement <4 x float> %107, i64 0
  %spec.select3035 = select i1 %cmp197.not.1930, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2081, !dbg !91
  %cmp197.not.1.1.not = icmp slt i32 %add194.1, %1, !dbg !90
  %scores.sroa.0.4.vec.extract2184 = extractelement <4 x float> %107, i64 1, !dbg !91
  %condval_1.0.1.1 = select i1 %cmp197.not.1.1.not, float %scores.sroa.0.4.vec.extract2184, float 0xFFF0000000000000, !dbg !91
  %add195.2.1 = or disjoint i32 %add194.1, 2, !dbg !92
  %cmp197.not.2.1 = icmp sgt i32 %add195.2.1, %1, !dbg !90
  %scores.sroa.0.8.vec.extract2261 = extractelement <4 x float> %107, i64 2, !dbg !91
  %condval_1.0.2.1 = select i1 %cmp197.not.2.1, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2261, !dbg !91
  %add195.3.1 = or disjoint i32 %add194.1, 3, !dbg !92
  %cmp197.not.3.1 = icmp sgt i32 %add195.3.1, %1, !dbg !90
  %scores.sroa.0.12.vec.extract2338 = extractelement <4 x float> %107, i64 3, !dbg !91
  %condval_1.0.3.1 = select i1 %cmp197.not.3.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2338, !dbg !91
  %108 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3035, float 0xFFF0000000000000), !dbg !93
  %109 = tail call contract noundef float @llvm.maxnum.f32(float %108, float %condval_1.0.1.1), !dbg !93
  %110 = tail call contract noundef float @llvm.maxnum.f32(float %109, float %condval_1.0.2.1), !dbg !93
  %111 = tail call contract noundef float @llvm.maxnum.f32(float %110, float %condval_1.0.3.1), !dbg !93
  %112 = bitcast float %111 to i32, !dbg !97
  %113 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %114 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %113) #11, !dbg !105
  %xor.i.i.1 = xor i32 %114, 32, !dbg !106
  %115 = and i32 %114, -64, !dbg !107
  %and.i.i.1 = add nsw i32 %115, 64, !dbg !107
  %cmp.not.i.i.1 = icmp slt i32 %xor.i.i.1, %and.i.i.1, !dbg !108
  %cond.i.i.1 = select i1 %cmp.not.i.i.1, i32 %xor.i.i.1, i32 %114, !dbg !109
  %shl.i.i.1 = shl i32 %cond.i.i.1, 2, !dbg !110
  %116 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.1, i32 %112), !dbg !111
  %117 = bitcast i32 %116 to float, !dbg !112
  %118 = tail call contract noundef float @llvm.maxnum.f32(float %111, float %117), !dbg !113
  %119 = bitcast float %118 to i32, !dbg !115
  %120 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !117
  %121 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %120) #11, !dbg !120
  %xor.i.i785.1 = xor i32 %121, 16, !dbg !121
  %122 = and i32 %121, -64, !dbg !122
  %and.i.i786.1 = add nsw i32 %122, 64, !dbg !122
  %cmp.not.i.i787.1 = icmp slt i32 %xor.i.i785.1, %and.i.i786.1, !dbg !123
  %cond.i.i788.1 = select i1 %cmp.not.i.i787.1, i32 %xor.i.i785.1, i32 %121, !dbg !124
  %shl.i.i789.1 = shl i32 %cond.i.i788.1, 2, !dbg !125
  %123 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i789.1, i32 %119), !dbg !126
  %124 = bitcast i32 %123 to float, !dbg !127
  %125 = tail call contract noundef float @llvm.maxnum.f32(float %118, float %124), !dbg !128
  %cmp237.1 = fcmp contract olt float %maximum.sroa.0.2, %125, !dbg !130
  br i1 %cmp237.1, label %if.then238.1, label %if.end282.1, !dbg !131

if.then238.1:                                     ; preds = %if.end.1.1
  %sub.1 = fsub contract float %maximum.sroa.0.2, %125, !dbg !132
  %mul241.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !133
  %cmp.i.i.1 = fcmp contract olt float %mul241.1, -1.260000e+02, !dbg !134
  %cond.i.i790.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !134
  %add.i.i.1 = fadd contract float %mul241.1, %cond.i.i790.1, !dbg !134
  %126 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !134
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !134
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %126, !dbg !134
  %numerator.sroa.0.0.vec.extract2391 = extractelement <4 x float> %numerator.sroa.0.1, i64 0, !dbg !246
  %numerator.sroa.0.4.vec.extract2428 = extractelement <4 x float> %numerator.sroa.0.1, i64 1, !dbg !246
  %numerator.sroa.0.8.vec.extract2465 = extractelement <4 x float> %numerator.sroa.0.1, i64 2, !dbg !246
  %numerator.sroa.0.12.vec.extract2502 = extractelement <4 x float> %numerator.sroa.0.1, i64 3, !dbg !246
  %mul258.1941 = fmul contract float %mul.i.i.1, %numerator.sroa.0.0.vec.extract2391, !dbg !137
  %mul261.1942 = fmul contract float %mul.i.i.1, %numerator.sroa.0.4.vec.extract2428, !dbg !247
  %mul264.1943 = fmul contract float %mul.i.i.1, %numerator.sroa.0.8.vec.extract2465, !dbg !248
  %mul267.1944 = fmul contract float %mul.i.i.1, %numerator.sroa.0.12.vec.extract2502, !dbg !249
  %numerator.sroa.0.0.vec.insert2393 = insertelement <4 x float> poison, float %mul258.1941, i64 0, !dbg !138
  %numerator.sroa.0.4.vec.insert2430 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2393, float %mul261.1942, i64 1, !dbg !138
  %numerator.sroa.0.8.vec.insert2467 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2430, float %mul264.1943, i64 2, !dbg !138
  %numerator.sroa.0.12.vec.insert2504 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2467, float %mul267.1944, i64 3, !dbg !138
  %numerator.sroa.98.16.vec.extract2547 = extractelement <4 x float> %numerator.sroa.98.1, i64 0, !dbg !246
  %numerator.sroa.98.20.vec.extract2584 = extractelement <4 x float> %numerator.sroa.98.1, i64 1, !dbg !246
  %numerator.sroa.98.24.vec.extract2621 = extractelement <4 x float> %numerator.sroa.98.1, i64 2, !dbg !246
  %numerator.sroa.98.28.vec.extract2658 = extractelement <4 x float> %numerator.sroa.98.1, i64 3, !dbg !246
  %mul258.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.16.vec.extract2547, !dbg !137
  %mul261.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.20.vec.extract2584, !dbg !247
  %mul264.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.24.vec.extract2621, !dbg !248
  %mul267.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.28.vec.extract2658, !dbg !249
  %numerator.sroa.98.16.vec.insert2549 = insertelement <4 x float> poison, float %mul258.1.1, i64 0, !dbg !138
  %numerator.sroa.98.20.vec.insert2586 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2549, float %mul261.1.1, i64 1, !dbg !138
  %numerator.sroa.98.24.vec.insert2623 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2586, float %mul264.1.1, i64 2, !dbg !138
  %numerator.sroa.98.28.vec.insert2660 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2623, float %mul267.1.1, i64 3, !dbg !138
  %numerator.sroa.194.32.vec.extract2703 = extractelement <4 x float> %numerator.sroa.194.1, i64 0, !dbg !246
  %numerator.sroa.194.36.vec.extract2740 = extractelement <4 x float> %numerator.sroa.194.1, i64 1, !dbg !246
  %numerator.sroa.194.40.vec.extract2777 = extractelement <4 x float> %numerator.sroa.194.1, i64 2, !dbg !246
  %numerator.sroa.194.44.vec.extract2814 = extractelement <4 x float> %numerator.sroa.194.1, i64 3, !dbg !246
  %mul258.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.32.vec.extract2703, !dbg !137
  %mul261.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.36.vec.extract2740, !dbg !247
  %mul264.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.40.vec.extract2777, !dbg !248
  %mul267.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.44.vec.extract2814, !dbg !249
  %numerator.sroa.194.32.vec.insert2705 = insertelement <4 x float> poison, float %mul258.2.1, i64 0, !dbg !138
  %numerator.sroa.194.36.vec.insert2742 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2705, float %mul261.2.1, i64 1, !dbg !138
  %numerator.sroa.194.40.vec.insert2779 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2742, float %mul264.2.1, i64 2, !dbg !138
  %numerator.sroa.194.44.vec.insert2816 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2779, float %mul267.2.1, i64 3, !dbg !138
  %numerator.sroa.290.48.vec.extract2859 = extractelement <4 x float> %numerator.sroa.290.1, i64 0, !dbg !246
  %numerator.sroa.290.52.vec.extract2896 = extractelement <4 x float> %numerator.sroa.290.1, i64 1, !dbg !246
  %numerator.sroa.290.56.vec.extract2933 = extractelement <4 x float> %numerator.sroa.290.1, i64 2, !dbg !246
  %numerator.sroa.290.60.vec.extract2970 = extractelement <4 x float> %numerator.sroa.290.1, i64 3, !dbg !246
  %mul258.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.48.vec.extract2859, !dbg !137
  %mul261.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.52.vec.extract2896, !dbg !247
  %mul264.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.56.vec.extract2933, !dbg !248
  %mul267.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.60.vec.extract2970, !dbg !249
  %numerator.sroa.290.48.vec.insert2861 = insertelement <4 x float> poison, float %mul258.3.1, i64 0, !dbg !138
  %numerator.sroa.290.52.vec.insert2898 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2861, float %mul261.3.1, i64 1, !dbg !138
  %numerator.sroa.290.56.vec.insert2935 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2898, float %mul264.3.1, i64 2, !dbg !138
  %numerator.sroa.290.60.vec.insert2972 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2935, float %mul267.3.1, i64 3, !dbg !138
  %mul278.1 = fmul contract float %denominator.sroa.0.2, %mul.i.i.1, !dbg !250
  br label %if.end282.1, !dbg !139

if.end282.1:                                      ; preds = %if.then238.1, %if.end.1.1
  %numerator.sroa.290.2 = phi <4 x float> [ %numerator.sroa.290.60.vec.insert2972, %if.then238.1 ], [ %numerator.sroa.290.1, %if.end.1.1 ], !dbg !81
  %numerator.sroa.194.2 = phi <4 x float> [ %numerator.sroa.194.44.vec.insert2816, %if.then238.1 ], [ %numerator.sroa.194.1, %if.end.1.1 ], !dbg !81
  %numerator.sroa.98.2 = phi <4 x float> [ %numerator.sroa.98.28.vec.insert2660, %if.then238.1 ], [ %numerator.sroa.98.1, %if.end.1.1 ], !dbg !81
  %numerator.sroa.0.2 = phi <4 x float> [ %numerator.sroa.0.12.vec.insert2504, %if.then238.1 ], [ %numerator.sroa.0.1, %if.end.1.1 ], !dbg !81
  %maximum.sroa.0.1.1 = phi float [ %125, %if.then238.1 ], [ %maximum.sroa.0.2, %if.end.1.1 ], !dbg !81
  %denominator.sroa.0.1.1 = phi float [ %mul278.1, %if.then238.1 ], [ %denominator.sroa.0.2, %if.end.1.1 ], !dbg !81
  %sub292.1 = fsub contract float %spec.select3035, %maximum.sroa.0.1.1, !dbg !140
  %sub296.1 = fsub contract float %condval_1.0.1.1, %maximum.sroa.0.1.1, !dbg !141
  %sub300.1 = fsub contract float %condval_1.0.2.1, %maximum.sroa.0.1.1, !dbg !142
  %sub304.1 = fsub contract float %condval_1.0.3.1, %maximum.sroa.0.1.1, !dbg !143
  %mul309.1 = fmul contract float %sub292.1, 0x3FC7154760000000, !dbg !144
  %mul313.1 = fmul contract float %sub296.1, 0x3FC7154760000000, !dbg !145
  %mul317.1 = fmul contract float %sub300.1, 0x3FC7154760000000, !dbg !146
  %mul321.1 = fmul contract float %sub304.1, 0x3FC7154760000000, !dbg !147
  %add326.1 = fadd contract float %mul309.1, 8.000000e+00, !dbg !148
  %add330.1 = fadd contract float %mul313.1, 8.000000e+00, !dbg !149
  %add334.1 = fadd contract float %mul317.1, 8.000000e+00, !dbg !150
  %add338.1 = fadd contract float %mul321.1, 8.000000e+00, !dbg !151
  %cmp.i.i799.1 = fcmp contract olt float %add326.1, -1.260000e+02, !dbg !152
  %cond.i.i800.1 = select contract i1 %cmp.i.i799.1, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i801.1 = fadd contract float %add326.1, %cond.i.i800.1, !dbg !152
  %127 = tail call contract float @llvm.exp2.f32(float %add.i.i801.1), !dbg !152
  %cond2.i.i802.1 = select contract i1 %cmp.i.i799.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i803.1 = fmul contract float %cond2.i.i802.1, %127, !dbg !152
  %cmp.i.i804.1 = fcmp contract olt float %add330.1, -1.260000e+02, !dbg !154
  %cond.i.i805.1 = select contract i1 %cmp.i.i804.1, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i806.1 = fadd contract float %add330.1, %cond.i.i805.1, !dbg !154
  %128 = tail call contract float @llvm.exp2.f32(float %add.i.i806.1), !dbg !154
  %cond2.i.i807.1 = select contract i1 %cmp.i.i804.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i808.1 = fmul contract float %cond2.i.i807.1, %128, !dbg !154
  %cmp.i.i809.1 = fcmp contract olt float %add334.1, -1.260000e+02, !dbg !156
  %cond.i.i810.1 = select contract i1 %cmp.i.i809.1, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i811.1 = fadd contract float %add334.1, %cond.i.i810.1, !dbg !156
  %129 = tail call contract float @llvm.exp2.f32(float %add.i.i811.1), !dbg !156
  %cond2.i.i812.1 = select contract i1 %cmp.i.i809.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i813.1 = fmul contract float %cond2.i.i812.1, %129, !dbg !156
  %cmp.i.i814.1 = fcmp contract olt float %add338.1, -1.260000e+02, !dbg !158
  %cond.i.i815.1 = select contract i1 %cmp.i.i814.1, float 6.400000e+01, float 0.000000e+00, !dbg !158
  %add.i.i816.1 = fadd contract float %add338.1, %cond.i.i815.1, !dbg !158
  %130 = tail call contract float @llvm.exp2.f32(float %add.i.i816.1), !dbg !158
  %cond2.i.i817.1 = select contract i1 %cmp.i.i814.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !158
  %mul.i.i818.1 = fmul contract float %cond2.i.i817.1, %130, !dbg !158
  %131 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !160, !noalias !168
  %132 = fptrunc float %mul.i.i803.1 to half, !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %131), !dbg !160, !noalias !168
  %133 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !168
  %134 = fptrunc float %mul.i.i808.1 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %133), !dbg !173, !noalias !168
  %135 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !175, !noalias !179
  %136 = fptrunc float %mul.i.i813.1 to half, !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %135), !dbg !175, !noalias !179
  %137 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !184, !noalias !179
  %138 = fptrunc float %mul.i.i818.1 to half, !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %137), !dbg !184, !noalias !179
  %139 = insertelement <4 x half> poison, half %132, i64 0, !dbg !186
  %140 = insertelement <4 x half> %139, half %134, i64 1, !dbg !186
  %141 = insertelement <4 x half> %140, half %136, i64 2, !dbg !186
  %142 = insertelement <4 x half> %141, half %138, i64 3, !dbg !186
  %conv.i.i.1946 = fpext half %132 to float, !dbg !187
  %add373.1947 = fadd contract float %conv.i.i.1946, 0.000000e+00, !dbg !192
  %conv.i.i.1.1 = fpext half %134 to float, !dbg !187
  %add373.1.1 = fadd contract float %add373.1947, %conv.i.i.1.1, !dbg !192
  %conv.i.i.2.1 = fpext half %136 to float, !dbg !187
  %add373.2.1 = fadd contract float %add373.1.1, %conv.i.i.2.1, !dbg !192
  %conv.i.i.3.1 = fpext half %138 to float, !dbg !187
  %add373.3.1 = fadd contract float %add373.2.1, %conv.i.i.3.1, !dbg !192
  %143 = bitcast float %add373.3.1 to i32, !dbg !193
  %144 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !195
  %145 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %144) #11, !dbg !198
  %xor.i.i820.1 = xor i32 %145, 32, !dbg !199
  %146 = and i32 %145, -64, !dbg !200
  %and.i.i821.1 = add nsw i32 %146, 64, !dbg !200
  %cmp.not.i.i822.1 = icmp slt i32 %xor.i.i820.1, %and.i.i821.1, !dbg !201
  %cond.i.i823.1 = select i1 %cmp.not.i.i822.1, i32 %xor.i.i820.1, i32 %145, !dbg !202
  %shl.i.i824.1 = shl i32 %cond.i.i823.1, 2, !dbg !203
  %147 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i824.1, i32 %143), !dbg !204
  %148 = bitcast i32 %147 to float, !dbg !205
  %add381.1 = fadd contract float %add373.3.1, %148, !dbg !206
  %149 = bitcast float %add381.1 to i32, !dbg !207
  %150 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !209
  %151 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %150) #11, !dbg !212
  %xor.i.i825.1 = xor i32 %151, 16, !dbg !213
  %152 = and i32 %151, -64, !dbg !214
  %and.i.i826.1 = add nsw i32 %152, 64, !dbg !214
  %cmp.not.i.i827.1 = icmp slt i32 %xor.i.i825.1, %and.i.i826.1, !dbg !215
  %cond.i.i828.1 = select i1 %cmp.not.i.i827.1, i32 %xor.i.i825.1, i32 %151, !dbg !216
  %shl.i.i829.1 = shl i32 %cond.i.i828.1, 2, !dbg !217
  %153 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i829.1, i32 %149), !dbg !218
  %154 = bitcast i32 %153 to float, !dbg !219
  %add386.1 = fadd contract float %add381.1, %154, !dbg !220
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %shr399.1 = lshr exact i32 %mul81.1, 2
  %add400.1 = add nuw nsw i32 %shr399.1, %shr397
  %cmp401.1 = icmp ult i32 %add400.1, 256
  br i1 %cmp401.1, label %if.then402.1952, label %if.end436.1956, !dbg !226

if.then402.1952:                                  ; preds = %if.end282.1
  %155 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %156 = getelementptr inbounds i8, ptr addrspace(4) %155, i64 %.idx.1, !dbg !227
  %condval_2.sroa.0.0.copyload.1949 = load i32, ptr addrspace(4) %156, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.1950 = getelementptr inbounds i8, ptr addrspace(4) %156, i64 4, !dbg !228
  %condval_2.sroa.5.0.copyload.1951 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.1950, align 4, !dbg !228, !tbaa !30
  br label %if.end436.1956, !dbg !229

if.end436.1956:                                   ; preds = %if.then402.1952, %if.end282.1
  %condval_2.sroa.0.0.1953 = phi i32 [ %condval_2.sroa.0.0.copyload.1949, %if.then402.1952 ], [ 0, %if.end282.1 ], !dbg !81
  %condval_2.sroa.5.0.1954 = phi i32 [ %condval_2.sroa.5.0.copyload.1951, %if.then402.1952 ], [ 0, %if.end282.1 ], !dbg !81
  br i1 %cmp401.1, label %if.then402.1.1, label %if.end436.1.1, !dbg !226

if.then402.1.1:                                   ; preds = %if.end436.1956
  %157 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %158 = getelementptr inbounds i8, ptr addrspace(4) %157, i64 %.idx.1, !dbg !227
  %add.ptr422.1.1 = getelementptr inbounds i8, ptr addrspace(4) %158, i64 128, !dbg !227
  %condval_2.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %add.ptr422.1.1, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %158, i64 132, !dbg !228
  %condval_2.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.1.1, align 4, !dbg !228, !tbaa !30
  br label %if.end436.1.1, !dbg !229

if.end436.1.1:                                    ; preds = %if.then402.1.1, %if.end436.1956
  %condval_2.sroa.0.0.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1, %if.then402.1.1 ], [ 0, %if.end436.1956 ], !dbg !81
  %condval_2.sroa.5.0.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1, %if.then402.1.1 ], [ 0, %if.end436.1956 ], !dbg !81
  br i1 %cmp401.1, label %if.then402.2.1, label %if.end436.2.1, !dbg !226

if.then402.2.1:                                   ; preds = %if.end436.1.1
  %159 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %160 = getelementptr inbounds i8, ptr addrspace(4) %159, i64 %.idx.1, !dbg !227
  %add.ptr422.2.1 = getelementptr inbounds i8, ptr addrspace(4) %160, i64 256, !dbg !227
  %condval_2.sroa.0.0.copyload.2.1 = load i32, ptr addrspace(4) %add.ptr422.2.1, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.2.1 = getelementptr inbounds i8, ptr addrspace(4) %160, i64 260, !dbg !228
  %condval_2.sroa.5.0.copyload.2.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.2.1, align 4, !dbg !228, !tbaa !30
  br label %if.end436.2.1, !dbg !229

if.end436.2.1:                                    ; preds = %if.then402.2.1, %if.end436.1.1
  %condval_2.sroa.0.0.2.1 = phi i32 [ %condval_2.sroa.0.0.copyload.2.1, %if.then402.2.1 ], [ 0, %if.end436.1.1 ], !dbg !81
  %condval_2.sroa.5.0.2.1 = phi i32 [ %condval_2.sroa.5.0.copyload.2.1, %if.then402.2.1 ], [ 0, %if.end436.1.1 ], !dbg !81
  br i1 %cmp401.1, label %if.then402.3.1, label %if.end436.3.1, !dbg !226

if.then402.3.1:                                   ; preds = %if.end436.2.1
  %161 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %162 = getelementptr inbounds i8, ptr addrspace(4) %161, i64 %.idx.1, !dbg !227
  %add.ptr422.3.1 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 384, !dbg !227
  %condval_2.sroa.0.0.copyload.3.1 = load i32, ptr addrspace(4) %add.ptr422.3.1, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.3.1 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 388, !dbg !228
  %condval_2.sroa.5.0.copyload.3.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.3.1, align 4, !dbg !228, !tbaa !30
  br label %if.end436.3.1, !dbg !229

if.end436.3.1:                                    ; preds = %if.then402.3.1, %if.end436.2.1
  %condval_2.sroa.0.0.3.1 = phi i32 [ %condval_2.sroa.0.0.copyload.3.1, %if.then402.3.1 ], [ 0, %if.end436.2.1 ], !dbg !81
  %condval_2.sroa.5.0.3.1 = phi i32 [ %condval_2.sroa.5.0.copyload.3.1, %if.then402.3.1 ], [ 0, %if.end436.2.1 ], !dbg !81
  %163 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul466, !dbg !230
  %add.ptr478.idx.1963 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.1964 = getelementptr inbounds i8, ptr addrspace(3) %163, i32 %add.ptr478.idx.1963, !dbg !230
  %164 = and i32 %condval_2.sroa.0.0.3.1, 65535, !dbg !231
  %v_column.sroa.130.0.insert.ext1512 = zext nneg i32 %164 to i64, !dbg !231
  %v_column.sroa.130.0.insert.shift1513 = shl nuw i64 %v_column.sroa.130.0.insert.ext1512, 48, !dbg !231
  %165 = and i32 %condval_2.sroa.0.0.2.1, 65535, !dbg !231
  %v_column.sroa.98.0.insert.ext1357 = zext nneg i32 %165 to i64, !dbg !231
  %v_column.sroa.98.0.insert.shift1358 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1357, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1360 = or disjoint i64 %v_column.sroa.130.0.insert.shift1513, %v_column.sroa.98.0.insert.shift1358, !dbg !231
  %166 = shl i32 %condval_2.sroa.0.0.1.1, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1203 = zext i32 %166 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1205 = or disjoint i64 %v_column.sroa.98.0.insert.insert1360, %v_column.sroa.66.0.insert.shift1203, !dbg !231
  %167 = and i32 %condval_2.sroa.0.0.1953, 65535, !dbg !231
  %v_column.sroa.0.0.insert.ext1075 = zext nneg i32 %167 to i64, !dbg !231
  %v_column.sroa.0.0.insert.insert1077 = or disjoint i64 %v_column.sroa.66.0.insert.insert1205, %v_column.sroa.0.0.insert.ext1075, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1077, ptr addrspace(3) %add.ptr478.1964, align 8, !dbg !231
  %v_fetch.sroa.0.2.extract.shift1726 = lshr i32 %condval_2.sroa.0.0.1953, 16, !dbg !232
  %v_fetch.sroa.0.2.extract.trunc1727 = zext nneg i32 %v_fetch.sroa.0.2.extract.shift1726 to i64, !dbg !232
  %v_fetch.sroa.50.10.extract.shift1796 = and i32 %condval_2.sroa.0.0.1.1, -65536, !dbg !231
  %v_fetch.sroa.98.18.extract.shift1866 = lshr i32 %condval_2.sroa.0.0.2.1, 16, !dbg !232
  %v_fetch.sroa.98.18.extract.trunc1867 = zext nneg i32 %v_fetch.sroa.98.18.extract.shift1866 to i64, !dbg !232
  %v_fetch.sroa.146.26.extract.shift1936 = lshr i32 %condval_2.sroa.0.0.3.1, 16, !dbg !232
  %v_fetch.sroa.146.26.extract.trunc1937 = zext nneg i32 %v_fetch.sroa.146.26.extract.shift1936 to i64, !dbg !232
  %add467.1.1 = or disjoint i32 %mul466, 256, !dbg !233
  %168 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.1.1, !dbg !230
  %xor474.1.1 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.1.1 = xor i32 %xor474.1.1, 8, !dbg !230
  %add.ptr478.1.1 = getelementptr inbounds i8, ptr addrspace(3) %168, i32 %add.ptr478.idx.1.1, !dbg !230
  %v_column.sroa.130.0.insert.shift1518 = shl nuw i64 %v_fetch.sroa.146.26.extract.trunc1937, 48, !dbg !231
  %v_column.sroa.98.0.insert.shift1363 = shl nuw nsw i64 %v_fetch.sroa.98.18.extract.trunc1867, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1365 = or disjoint i64 %v_column.sroa.130.0.insert.shift1518, %v_column.sroa.98.0.insert.shift1363, !dbg !231
  %v_column.sroa.66.0.insert.shift1208 = zext i32 %v_fetch.sroa.50.10.extract.shift1796 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1210 = or disjoint i64 %v_column.sroa.98.0.insert.insert1365, %v_column.sroa.66.0.insert.shift1208, !dbg !231
  %v_column.sroa.0.0.insert.insert1081 = or disjoint i64 %v_column.sroa.66.0.insert.insert1210, %v_fetch.sroa.0.2.extract.trunc1727, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1081, ptr addrspace(3) %add.ptr478.1.1, align 8, !dbg !231
  %add467.2.1 = or disjoint i32 %mul466, 512, !dbg !233
  %169 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.2.1, !dbg !230
  %xor474.2.1 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.2.1 = xor i32 %xor474.2.1, 16, !dbg !230
  %add.ptr478.2.1 = getelementptr inbounds i8, ptr addrspace(3) %169, i32 %add.ptr478.idx.2.1, !dbg !230
  %170 = and i32 %condval_2.sroa.5.0.3.1, 65535, !dbg !231
  %v_column.sroa.130.0.insert.ext1522 = zext nneg i32 %170 to i64, !dbg !231
  %v_column.sroa.130.0.insert.shift1523 = shl nuw i64 %v_column.sroa.130.0.insert.ext1522, 48, !dbg !231
  %171 = and i32 %condval_2.sroa.5.0.2.1, 65535, !dbg !231
  %v_column.sroa.98.0.insert.ext1367 = zext nneg i32 %171 to i64, !dbg !231
  %v_column.sroa.98.0.insert.shift1368 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1367, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1370 = or disjoint i64 %v_column.sroa.130.0.insert.shift1523, %v_column.sroa.98.0.insert.shift1368, !dbg !231
  %172 = shl i32 %condval_2.sroa.5.0.1.1, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1213 = zext i32 %172 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1215 = or disjoint i64 %v_column.sroa.98.0.insert.insert1370, %v_column.sroa.66.0.insert.shift1213, !dbg !231
  %173 = and i32 %condval_2.sroa.5.0.1954, 65535, !dbg !231
  %v_column.sroa.0.0.insert.ext1083 = zext nneg i32 %173 to i64, !dbg !231
  %v_column.sroa.0.0.insert.insert1085 = or disjoint i64 %v_column.sroa.66.0.insert.insert1215, %v_column.sroa.0.0.insert.ext1083, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1085, ptr addrspace(3) %add.ptr478.2.1, align 8, !dbg !231
  %v_fetch.sroa.26.6.extract.shift1761 = lshr i32 %condval_2.sroa.5.0.1954, 16, !dbg !232
  %v_fetch.sroa.26.6.extract.trunc1762 = zext nneg i32 %v_fetch.sroa.26.6.extract.shift1761 to i64, !dbg !232
  %v_fetch.sroa.74.14.extract.shift1831 = and i32 %condval_2.sroa.5.0.1.1, -65536, !dbg !231
  %v_fetch.sroa.122.22.extract.shift1901 = lshr i32 %condval_2.sroa.5.0.2.1, 16, !dbg !232
  %v_fetch.sroa.122.22.extract.trunc1902 = zext nneg i32 %v_fetch.sroa.122.22.extract.shift1901 to i64, !dbg !232
  %v_fetch.sroa.170.30.extract.shift1971 = lshr i32 %condval_2.sroa.5.0.3.1, 16, !dbg !232
  %v_fetch.sroa.170.30.extract.trunc1972 = zext nneg i32 %v_fetch.sroa.170.30.extract.shift1971 to i64, !dbg !232
  %add467.3.1 = or disjoint i32 %mul466, 768, !dbg !233
  %174 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.3.1, !dbg !230
  %xor474.3.1 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.3.1 = xor i32 %xor474.3.1, 24, !dbg !230
  %add.ptr478.3.1 = getelementptr inbounds i8, ptr addrspace(3) %174, i32 %add.ptr478.idx.3.1, !dbg !230
  %v_column.sroa.130.0.insert.shift1528 = shl nuw i64 %v_fetch.sroa.170.30.extract.trunc1972, 48, !dbg !231
  %v_column.sroa.98.0.insert.shift1373 = shl nuw nsw i64 %v_fetch.sroa.122.22.extract.trunc1902, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1375 = or disjoint i64 %v_column.sroa.130.0.insert.shift1528, %v_column.sroa.98.0.insert.shift1373, !dbg !231
  %v_column.sroa.66.0.insert.shift1218 = zext i32 %v_fetch.sroa.74.14.extract.shift1831 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1220 = or disjoint i64 %v_column.sroa.98.0.insert.insert1375, %v_column.sroa.66.0.insert.shift1218, !dbg !231
  %v_column.sroa.0.0.insert.insert1089 = or disjoint i64 %v_column.sroa.66.0.insert.insert1220, %v_fetch.sroa.26.6.extract.trunc1762, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1089, ptr addrspace(3) %add.ptr478.3.1, align 8, !dbg !231
  fence syncscope("warp") release, !dbg !234
  tail call void @llvm.mxc.barrier.warp(), !dbg !237
  fence syncscope("warp") acquire, !dbg !238
  %add495.1966 = or disjoint i32 %mul488, %mul494, !dbg !239
  %175 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.1966, !dbg !240
  %add.ptr505.idx.1967 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.1968 = getelementptr inbounds i8, ptr addrspace(3) %175, i32 %add.ptr505.idx.1967, !dbg !240
  %176 = load <4 x half>, ptr addrspace(3) %add.ptr505.1968, align 8, !dbg !241
  %add490.1.1 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.1.1 = or disjoint i32 %add490.1.1, 64, !dbg !239
  %177 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.1.1, !dbg !240
  %xor501.1.1 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.1.1 = xor i32 %xor501.1.1, 8, !dbg !240
  %add.ptr505.1.1 = getelementptr inbounds i8, ptr addrspace(3) %177, i32 %add.ptr505.idx.1.1, !dbg !240
  %178 = load <4 x half>, ptr addrspace(3) %add.ptr505.1.1, align 8, !dbg !241
  %add490.2.1 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.2.1 = or disjoint i32 %add490.2.1, 128, !dbg !239
  %179 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.2.1, !dbg !240
  %xor501.2.1 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.2.1 = xor i32 %xor501.2.1, 16, !dbg !240
  %add.ptr505.2.1 = getelementptr inbounds i8, ptr addrspace(3) %179, i32 %add.ptr505.idx.2.1, !dbg !240
  %180 = load <4 x half>, ptr addrspace(3) %add.ptr505.2.1, align 8, !dbg !241
  %add490.3.1 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.3.1 = or disjoint i32 %add490.3.1, 192, !dbg !239
  %181 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.3.1, !dbg !240
  %xor501.3.1 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.3.1 = xor i32 %xor501.3.1, 24, !dbg !240
  %add.ptr505.3.1 = getelementptr inbounds i8, ptr addrspace(3) %181, i32 %add.ptr505.idx.3.1, !dbg !240
  %182 = load <4 x half>, ptr addrspace(3) %add.ptr505.3.1, align 8, !dbg !241
  %183 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %176, <4 x half> %142, <4 x float> %numerator.sroa.0.2), !dbg !242
  %184 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %178, <4 x half> %142, <4 x float> %numerator.sroa.98.2), !dbg !242
  %185 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %180, <4 x half> %142, <4 x float> %numerator.sroa.194.2), !dbg !242
  %186 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %182, <4 x half> %142, <4 x float> %numerator.sroa.290.2), !dbg !242
  %add390.1 = fadd contract float %denominator.sroa.0.1.1, %add386.1, !dbg !243
  br label %if.end531.1, !dbg !244

if.end531.1:                                      ; preds = %if.end436.3.1, %if.end531
  %numerator.sroa.290.3 = phi <4 x float> [ %numerator.sroa.290.1, %if.end531 ], [ %186, %if.end436.3.1 ], !dbg !81
  %numerator.sroa.194.3 = phi <4 x float> [ %numerator.sroa.194.1, %if.end531 ], [ %185, %if.end436.3.1 ], !dbg !81
  %numerator.sroa.98.3 = phi <4 x float> [ %numerator.sroa.98.1, %if.end531 ], [ %184, %if.end436.3.1 ], !dbg !81
  %numerator.sroa.0.3 = phi <4 x float> [ %numerator.sroa.0.1, %if.end531 ], [ %183, %if.end436.3.1 ], !dbg !81
  %maximum.sroa.0.2.1 = phi float [ %maximum.sroa.0.2, %if.end531 ], [ %maximum.sroa.0.1.1, %if.end436.3.1 ], !dbg !81
  %denominator.sroa.0.2.1 = phi float [ %denominator.sroa.0.2, %if.end531 ], [ %add390.1, %if.end436.3.1 ], !dbg !81
  %187 = or disjoint i64 %17, 2, !dbg !245
  %arrayidx80.2 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %187, !dbg !67
  %188 = load i32, ptr addrspace(1) %arrayidx80.2, align 4, !dbg !67, !tbaa !30
  %mul81.2 = shl nsw i32 %188, 4, !dbg !68
  %cmp82.2 = icmp slt i32 %188, 0, !dbg !69
  %cmp84.not.2 = icmp sgt i32 %mul81.2, %1
  %or.cond.2 = select i1 %cmp82.2, i1 true, i1 %cmp84.not.2, !dbg !70
  br i1 %or.cond.2, label %if.end531.2, label %if.then.2, !dbg !70

if.then.2:                                        ; preds = %if.end531.1
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %add91.2 = add nuw nsw i32 %mul81.2, %shr90
  %conv101.2 = zext nneg i32 %mul81.2 to i64
  %.idx.2 = shl nuw nsw i64 %conv101.2, 7
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep883, i64 %.idx.2, !dbg !76
  %cmp94.2 = icmp ult i32 %add91.2, 1024, !dbg !77
  br i1 %cmp94.2, label %if.then95.2, label %if.end.2, !dbg !78

if.then95.2:                                      ; preds = %if.then.2
  %gep867.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.2, i64 %mul97
  %condval.sroa.7.0.add.ptr108.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep867.2, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep867.2, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep867.2, i64 4
  %condval.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %gep867.2, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.2, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.2, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.2, align 4, !dbg !79, !tbaa !30
  br label %if.end.2, !dbg !80

if.end.2:                                         ; preds = %if.then95.2, %if.then.2
  %condval.sroa.0.0.2 = phi i32 [ %condval.sroa.0.0.copyload.2, %if.then95.2 ], [ 0, %if.then.2 ], !dbg !81
  %condval.sroa.5.0.2 = phi i32 [ %condval.sroa.5.0.copyload.2, %if.then95.2 ], [ 0, %if.then.2 ], !dbg !81
  %condval.sroa.6.0.2 = phi i32 [ %condval.sroa.6.0.copyload.2, %if.then95.2 ], [ 0, %if.then.2 ], !dbg !81
  %condval.sroa.7.0.2 = phi i32 [ %condval.sroa.7.0.copyload.2, %if.then95.2 ], [ 0, %if.then.2 ], !dbg !81
  store i32 %condval.sroa.0.0.2, ptr addrspace(3) %invariant.gep856, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 4, !dbg !82
  store i32 %condval.sroa.5.0.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.2, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 8, !dbg !82
  store i32 %condval.sroa.6.0.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.2, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 12, !dbg !82
  store i32 %condval.sroa.7.0.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.2, align 4, !dbg !82, !tbaa !30
  %cmp94.1.2 = icmp ult i32 %add91.2, 1016, !dbg !77
  br i1 %cmp94.1.2, label %if.then95.1.2, label %if.end.1.2, !dbg !78

if.then95.1.2:                                    ; preds = %if.end.2
  %add100.1.2 = or disjoint i64 %mul97, 512
  %gep867.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.2, i64 %add100.1.2
  %condval.sroa.7.0.add.ptr108.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1.2, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1.2, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1.2, i64 4
  %condval.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %gep867.1.2, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.1.2, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.1.2, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.1.2, align 4, !dbg !79, !tbaa !30
  br label %if.end.1.2, !dbg !80

if.end.1.2:                                       ; preds = %if.then95.1.2, %if.end.2
  %condval.sroa.0.0.1.2 = phi i32 [ %condval.sroa.0.0.copyload.1.2, %if.then95.1.2 ], [ 0, %if.end.2 ], !dbg !81
  %condval.sroa.5.0.1.2 = phi i32 [ %condval.sroa.5.0.copyload.1.2, %if.then95.1.2 ], [ 0, %if.end.2 ], !dbg !81
  %condval.sroa.6.0.1.2 = phi i32 [ %condval.sroa.6.0.copyload.1.2, %if.then95.1.2 ], [ 0, %if.end.2 ], !dbg !81
  %condval.sroa.7.0.1.2 = phi i32 [ %condval.sroa.7.0.copyload.1.2, %if.then95.1.2 ], [ 0, %if.end.2 ], !dbg !81
  store i32 %condval.sroa.0.0.1.2, ptr addrspace(3) %gep857.1, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1028, !dbg !82
  store i32 %condval.sroa.5.0.1.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.1.2, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1032, !dbg !82
  store i32 %condval.sroa.6.0.1.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.1.2, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1036, !dbg !82
  store i32 %condval.sroa.7.0.1.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.1.2, align 4, !dbg !82, !tbaa !30
  fence syncscope("warp") release, !dbg !83
  tail call void @llvm.mxc.barrier.warp(), !dbg !86
  fence syncscope("warp") acquire, !dbg !87
  %k_local.sroa.0.0.copyload.2974 = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !88
  %189 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2974, <4 x half> %6, <4 x float> zeroinitializer), !dbg !89
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !88
  %190 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %7, <4 x float> %189), !dbg !89
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !88
  %191 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %8, <4 x float> %190), !dbg !89
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !88
  %192 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %9, <4 x float> %191), !dbg !89
  %add194.2 = add nuw nsw i32 %mul81.2, %mul193
  %cmp197.not.2975 = icmp sgt i32 %add194.2, %1, !dbg !90
  %scores.sroa.0.0.vec.extract2091 = extractelement <4 x float> %192, i64 0
  %spec.select3036 = select i1 %cmp197.not.2975, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2091, !dbg !91
  %cmp197.not.1.2.not = icmp slt i32 %add194.2, %1, !dbg !90
  %scores.sroa.0.4.vec.extract2190 = extractelement <4 x float> %192, i64 1, !dbg !91
  %condval_1.0.1.2 = select i1 %cmp197.not.1.2.not, float %scores.sroa.0.4.vec.extract2190, float 0xFFF0000000000000, !dbg !91
  %add195.2.2 = or disjoint i32 %add194.2, 2, !dbg !92
  %cmp197.not.2.2 = icmp sgt i32 %add195.2.2, %1, !dbg !90
  %scores.sroa.0.8.vec.extract2267 = extractelement <4 x float> %192, i64 2, !dbg !91
  %condval_1.0.2.2 = select i1 %cmp197.not.2.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2267, !dbg !91
  %add195.3.2 = or disjoint i32 %add194.2, 3, !dbg !92
  %cmp197.not.3.2 = icmp sgt i32 %add195.3.2, %1, !dbg !90
  %scores.sroa.0.12.vec.extract2344 = extractelement <4 x float> %192, i64 3, !dbg !91
  %condval_1.0.3.2 = select i1 %cmp197.not.3.2, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2344, !dbg !91
  %193 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3036, float 0xFFF0000000000000), !dbg !93
  %194 = tail call contract noundef float @llvm.maxnum.f32(float %193, float %condval_1.0.1.2), !dbg !93
  %195 = tail call contract noundef float @llvm.maxnum.f32(float %194, float %condval_1.0.2.2), !dbg !93
  %196 = tail call contract noundef float @llvm.maxnum.f32(float %195, float %condval_1.0.3.2), !dbg !93
  %197 = bitcast float %196 to i32, !dbg !97
  %198 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %199 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %198) #11, !dbg !105
  %xor.i.i.2 = xor i32 %199, 32, !dbg !106
  %200 = and i32 %199, -64, !dbg !107
  %and.i.i.2 = add nsw i32 %200, 64, !dbg !107
  %cmp.not.i.i.2 = icmp slt i32 %xor.i.i.2, %and.i.i.2, !dbg !108
  %cond.i.i.2 = select i1 %cmp.not.i.i.2, i32 %xor.i.i.2, i32 %199, !dbg !109
  %shl.i.i.2 = shl i32 %cond.i.i.2, 2, !dbg !110
  %201 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.2, i32 %197), !dbg !111
  %202 = bitcast i32 %201 to float, !dbg !112
  %203 = tail call contract noundef float @llvm.maxnum.f32(float %196, float %202), !dbg !113
  %204 = bitcast float %203 to i32, !dbg !115
  %205 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !117
  %206 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %205) #11, !dbg !120
  %xor.i.i785.2 = xor i32 %206, 16, !dbg !121
  %207 = and i32 %206, -64, !dbg !122
  %and.i.i786.2 = add nsw i32 %207, 64, !dbg !122
  %cmp.not.i.i787.2 = icmp slt i32 %xor.i.i785.2, %and.i.i786.2, !dbg !123
  %cond.i.i788.2 = select i1 %cmp.not.i.i787.2, i32 %xor.i.i785.2, i32 %206, !dbg !124
  %shl.i.i789.2 = shl i32 %cond.i.i788.2, 2, !dbg !125
  %208 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i789.2, i32 %204), !dbg !126
  %209 = bitcast i32 %208 to float, !dbg !127
  %210 = tail call contract noundef float @llvm.maxnum.f32(float %203, float %209), !dbg !128
  %cmp237.2 = fcmp contract olt float %maximum.sroa.0.2.1, %210, !dbg !130
  br i1 %cmp237.2, label %if.then238.2, label %if.end282.2, !dbg !131

if.then238.2:                                     ; preds = %if.end.1.2
  %sub.2 = fsub contract float %maximum.sroa.0.2.1, %210, !dbg !132
  %mul241.2 = fmul contract float %sub.2, 0x3FC7154760000000, !dbg !133
  %cmp.i.i.2 = fcmp contract olt float %mul241.2, -1.260000e+02, !dbg !134
  %cond.i.i790.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !134
  %add.i.i.2 = fadd contract float %mul241.2, %cond.i.i790.2, !dbg !134
  %211 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !134
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !134
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %211, !dbg !134
  %numerator.sroa.0.0.vec.extract2395 = extractelement <4 x float> %numerator.sroa.0.3, i64 0, !dbg !246
  %numerator.sroa.0.4.vec.extract2432 = extractelement <4 x float> %numerator.sroa.0.3, i64 1, !dbg !246
  %numerator.sroa.0.8.vec.extract2469 = extractelement <4 x float> %numerator.sroa.0.3, i64 2, !dbg !246
  %numerator.sroa.0.12.vec.extract2506 = extractelement <4 x float> %numerator.sroa.0.3, i64 3, !dbg !246
  %mul258.2986 = fmul contract float %mul.i.i.2, %numerator.sroa.0.0.vec.extract2395, !dbg !137
  %mul261.2987 = fmul contract float %mul.i.i.2, %numerator.sroa.0.4.vec.extract2432, !dbg !247
  %mul264.2988 = fmul contract float %mul.i.i.2, %numerator.sroa.0.8.vec.extract2469, !dbg !248
  %mul267.2989 = fmul contract float %mul.i.i.2, %numerator.sroa.0.12.vec.extract2506, !dbg !249
  %numerator.sroa.0.0.vec.insert2397 = insertelement <4 x float> poison, float %mul258.2986, i64 0, !dbg !138
  %numerator.sroa.0.4.vec.insert2434 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2397, float %mul261.2987, i64 1, !dbg !138
  %numerator.sroa.0.8.vec.insert2471 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2434, float %mul264.2988, i64 2, !dbg !138
  %numerator.sroa.0.12.vec.insert2508 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2471, float %mul267.2989, i64 3, !dbg !138
  %numerator.sroa.98.16.vec.extract2551 = extractelement <4 x float> %numerator.sroa.98.3, i64 0, !dbg !246
  %numerator.sroa.98.20.vec.extract2588 = extractelement <4 x float> %numerator.sroa.98.3, i64 1, !dbg !246
  %numerator.sroa.98.24.vec.extract2625 = extractelement <4 x float> %numerator.sroa.98.3, i64 2, !dbg !246
  %numerator.sroa.98.28.vec.extract2662 = extractelement <4 x float> %numerator.sroa.98.3, i64 3, !dbg !246
  %mul258.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.16.vec.extract2551, !dbg !137
  %mul261.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.20.vec.extract2588, !dbg !247
  %mul264.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.24.vec.extract2625, !dbg !248
  %mul267.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.28.vec.extract2662, !dbg !249
  %numerator.sroa.98.16.vec.insert2553 = insertelement <4 x float> poison, float %mul258.1.2, i64 0, !dbg !138
  %numerator.sroa.98.20.vec.insert2590 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2553, float %mul261.1.2, i64 1, !dbg !138
  %numerator.sroa.98.24.vec.insert2627 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2590, float %mul264.1.2, i64 2, !dbg !138
  %numerator.sroa.98.28.vec.insert2664 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2627, float %mul267.1.2, i64 3, !dbg !138
  %numerator.sroa.194.32.vec.extract2707 = extractelement <4 x float> %numerator.sroa.194.3, i64 0, !dbg !246
  %numerator.sroa.194.36.vec.extract2744 = extractelement <4 x float> %numerator.sroa.194.3, i64 1, !dbg !246
  %numerator.sroa.194.40.vec.extract2781 = extractelement <4 x float> %numerator.sroa.194.3, i64 2, !dbg !246
  %numerator.sroa.194.44.vec.extract2818 = extractelement <4 x float> %numerator.sroa.194.3, i64 3, !dbg !246
  %mul258.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.32.vec.extract2707, !dbg !137
  %mul261.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.36.vec.extract2744, !dbg !247
  %mul264.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.40.vec.extract2781, !dbg !248
  %mul267.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.44.vec.extract2818, !dbg !249
  %numerator.sroa.194.32.vec.insert2709 = insertelement <4 x float> poison, float %mul258.2.2, i64 0, !dbg !138
  %numerator.sroa.194.36.vec.insert2746 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2709, float %mul261.2.2, i64 1, !dbg !138
  %numerator.sroa.194.40.vec.insert2783 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2746, float %mul264.2.2, i64 2, !dbg !138
  %numerator.sroa.194.44.vec.insert2820 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2783, float %mul267.2.2, i64 3, !dbg !138
  %numerator.sroa.290.48.vec.extract2863 = extractelement <4 x float> %numerator.sroa.290.3, i64 0, !dbg !246
  %numerator.sroa.290.52.vec.extract2900 = extractelement <4 x float> %numerator.sroa.290.3, i64 1, !dbg !246
  %numerator.sroa.290.56.vec.extract2937 = extractelement <4 x float> %numerator.sroa.290.3, i64 2, !dbg !246
  %numerator.sroa.290.60.vec.extract2974 = extractelement <4 x float> %numerator.sroa.290.3, i64 3, !dbg !246
  %mul258.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.48.vec.extract2863, !dbg !137
  %mul261.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.52.vec.extract2900, !dbg !247
  %mul264.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.56.vec.extract2937, !dbg !248
  %mul267.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.60.vec.extract2974, !dbg !249
  %numerator.sroa.290.48.vec.insert2865 = insertelement <4 x float> poison, float %mul258.3.2, i64 0, !dbg !138
  %numerator.sroa.290.52.vec.insert2902 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2865, float %mul261.3.2, i64 1, !dbg !138
  %numerator.sroa.290.56.vec.insert2939 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2902, float %mul264.3.2, i64 2, !dbg !138
  %numerator.sroa.290.60.vec.insert2976 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2939, float %mul267.3.2, i64 3, !dbg !138
  %mul278.2 = fmul contract float %denominator.sroa.0.2.1, %mul.i.i.2, !dbg !250
  br label %if.end282.2, !dbg !139

if.end282.2:                                      ; preds = %if.then238.2, %if.end.1.2
  %numerator.sroa.290.4 = phi <4 x float> [ %numerator.sroa.290.60.vec.insert2976, %if.then238.2 ], [ %numerator.sroa.290.3, %if.end.1.2 ], !dbg !81
  %numerator.sroa.194.4 = phi <4 x float> [ %numerator.sroa.194.44.vec.insert2820, %if.then238.2 ], [ %numerator.sroa.194.3, %if.end.1.2 ], !dbg !81
  %numerator.sroa.98.4 = phi <4 x float> [ %numerator.sroa.98.28.vec.insert2664, %if.then238.2 ], [ %numerator.sroa.98.3, %if.end.1.2 ], !dbg !81
  %numerator.sroa.0.4 = phi <4 x float> [ %numerator.sroa.0.12.vec.insert2508, %if.then238.2 ], [ %numerator.sroa.0.3, %if.end.1.2 ], !dbg !81
  %maximum.sroa.0.1.2 = phi float [ %210, %if.then238.2 ], [ %maximum.sroa.0.2.1, %if.end.1.2 ], !dbg !81
  %denominator.sroa.0.1.2 = phi float [ %mul278.2, %if.then238.2 ], [ %denominator.sroa.0.2.1, %if.end.1.2 ], !dbg !81
  %sub292.2 = fsub contract float %spec.select3036, %maximum.sroa.0.1.2, !dbg !140
  %sub296.2 = fsub contract float %condval_1.0.1.2, %maximum.sroa.0.1.2, !dbg !141
  %sub300.2 = fsub contract float %condval_1.0.2.2, %maximum.sroa.0.1.2, !dbg !142
  %sub304.2 = fsub contract float %condval_1.0.3.2, %maximum.sroa.0.1.2, !dbg !143
  %mul309.2 = fmul contract float %sub292.2, 0x3FC7154760000000, !dbg !144
  %mul313.2 = fmul contract float %sub296.2, 0x3FC7154760000000, !dbg !145
  %mul317.2 = fmul contract float %sub300.2, 0x3FC7154760000000, !dbg !146
  %mul321.2 = fmul contract float %sub304.2, 0x3FC7154760000000, !dbg !147
  %add326.2 = fadd contract float %mul309.2, 8.000000e+00, !dbg !148
  %add330.2 = fadd contract float %mul313.2, 8.000000e+00, !dbg !149
  %add334.2 = fadd contract float %mul317.2, 8.000000e+00, !dbg !150
  %add338.2 = fadd contract float %mul321.2, 8.000000e+00, !dbg !151
  %cmp.i.i799.2 = fcmp contract olt float %add326.2, -1.260000e+02, !dbg !152
  %cond.i.i800.2 = select contract i1 %cmp.i.i799.2, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i801.2 = fadd contract float %add326.2, %cond.i.i800.2, !dbg !152
  %212 = tail call contract float @llvm.exp2.f32(float %add.i.i801.2), !dbg !152
  %cond2.i.i802.2 = select contract i1 %cmp.i.i799.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i803.2 = fmul contract float %cond2.i.i802.2, %212, !dbg !152
  %cmp.i.i804.2 = fcmp contract olt float %add330.2, -1.260000e+02, !dbg !154
  %cond.i.i805.2 = select contract i1 %cmp.i.i804.2, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i806.2 = fadd contract float %add330.2, %cond.i.i805.2, !dbg !154
  %213 = tail call contract float @llvm.exp2.f32(float %add.i.i806.2), !dbg !154
  %cond2.i.i807.2 = select contract i1 %cmp.i.i804.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i808.2 = fmul contract float %cond2.i.i807.2, %213, !dbg !154
  %cmp.i.i809.2 = fcmp contract olt float %add334.2, -1.260000e+02, !dbg !156
  %cond.i.i810.2 = select contract i1 %cmp.i.i809.2, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i811.2 = fadd contract float %add334.2, %cond.i.i810.2, !dbg !156
  %214 = tail call contract float @llvm.exp2.f32(float %add.i.i811.2), !dbg !156
  %cond2.i.i812.2 = select contract i1 %cmp.i.i809.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i813.2 = fmul contract float %cond2.i.i812.2, %214, !dbg !156
  %cmp.i.i814.2 = fcmp contract olt float %add338.2, -1.260000e+02, !dbg !158
  %cond.i.i815.2 = select contract i1 %cmp.i.i814.2, float 6.400000e+01, float 0.000000e+00, !dbg !158
  %add.i.i816.2 = fadd contract float %add338.2, %cond.i.i815.2, !dbg !158
  %215 = tail call contract float @llvm.exp2.f32(float %add.i.i816.2), !dbg !158
  %cond2.i.i817.2 = select contract i1 %cmp.i.i814.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !158
  %mul.i.i818.2 = fmul contract float %cond2.i.i817.2, %215, !dbg !158
  %216 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !160, !noalias !168
  %217 = fptrunc float %mul.i.i803.2 to half, !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %216), !dbg !160, !noalias !168
  %218 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !168
  %219 = fptrunc float %mul.i.i808.2 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %218), !dbg !173, !noalias !168
  %220 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !175, !noalias !179
  %221 = fptrunc float %mul.i.i813.2 to half, !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %220), !dbg !175, !noalias !179
  %222 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !184, !noalias !179
  %223 = fptrunc float %mul.i.i818.2 to half, !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %222), !dbg !184, !noalias !179
  %224 = insertelement <4 x half> poison, half %217, i64 0, !dbg !186
  %225 = insertelement <4 x half> %224, half %219, i64 1, !dbg !186
  %226 = insertelement <4 x half> %225, half %221, i64 2, !dbg !186
  %227 = insertelement <4 x half> %226, half %223, i64 3, !dbg !186
  %conv.i.i.2991 = fpext half %217 to float, !dbg !187
  %add373.2992 = fadd contract float %conv.i.i.2991, 0.000000e+00, !dbg !192
  %conv.i.i.1.2 = fpext half %219 to float, !dbg !187
  %add373.1.2 = fadd contract float %add373.2992, %conv.i.i.1.2, !dbg !192
  %conv.i.i.2.2 = fpext half %221 to float, !dbg !187
  %add373.2.2 = fadd contract float %add373.1.2, %conv.i.i.2.2, !dbg !192
  %conv.i.i.3.2 = fpext half %223 to float, !dbg !187
  %add373.3.2 = fadd contract float %add373.2.2, %conv.i.i.3.2, !dbg !192
  %228 = bitcast float %add373.3.2 to i32, !dbg !193
  %229 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !195
  %230 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %229) #11, !dbg !198
  %xor.i.i820.2 = xor i32 %230, 32, !dbg !199
  %231 = and i32 %230, -64, !dbg !200
  %and.i.i821.2 = add nsw i32 %231, 64, !dbg !200
  %cmp.not.i.i822.2 = icmp slt i32 %xor.i.i820.2, %and.i.i821.2, !dbg !201
  %cond.i.i823.2 = select i1 %cmp.not.i.i822.2, i32 %xor.i.i820.2, i32 %230, !dbg !202
  %shl.i.i824.2 = shl i32 %cond.i.i823.2, 2, !dbg !203
  %232 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i824.2, i32 %228), !dbg !204
  %233 = bitcast i32 %232 to float, !dbg !205
  %add381.2 = fadd contract float %add373.3.2, %233, !dbg !206
  %234 = bitcast float %add381.2 to i32, !dbg !207
  %235 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !209
  %236 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %235) #11, !dbg !212
  %xor.i.i825.2 = xor i32 %236, 16, !dbg !213
  %237 = and i32 %236, -64, !dbg !214
  %and.i.i826.2 = add nsw i32 %237, 64, !dbg !214
  %cmp.not.i.i827.2 = icmp slt i32 %xor.i.i825.2, %and.i.i826.2, !dbg !215
  %cond.i.i828.2 = select i1 %cmp.not.i.i827.2, i32 %xor.i.i825.2, i32 %236, !dbg !216
  %shl.i.i829.2 = shl i32 %cond.i.i828.2, 2, !dbg !217
  %238 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i829.2, i32 %234), !dbg !218
  %239 = bitcast i32 %238 to float, !dbg !219
  %add386.2 = fadd contract float %add381.2, %239, !dbg !220
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %shr399.2 = lshr exact i32 %mul81.2, 2
  %add400.2 = add nuw nsw i32 %shr399.2, %shr397
  %cmp401.2 = icmp ult i32 %add400.2, 256
  br i1 %cmp401.2, label %if.then402.2997, label %if.end436.21001, !dbg !226

if.then402.2997:                                  ; preds = %if.end282.2
  %240 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %241 = getelementptr inbounds i8, ptr addrspace(4) %240, i64 %.idx.2, !dbg !227
  %condval_2.sroa.0.0.copyload.2994 = load i32, ptr addrspace(4) %241, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.2995 = getelementptr inbounds i8, ptr addrspace(4) %241, i64 4, !dbg !228
  %condval_2.sroa.5.0.copyload.2996 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.2995, align 4, !dbg !228, !tbaa !30
  br label %if.end436.21001, !dbg !229

if.end436.21001:                                  ; preds = %if.then402.2997, %if.end282.2
  %condval_2.sroa.0.0.2998 = phi i32 [ %condval_2.sroa.0.0.copyload.2994, %if.then402.2997 ], [ 0, %if.end282.2 ], !dbg !81
  %condval_2.sroa.5.0.2999 = phi i32 [ %condval_2.sroa.5.0.copyload.2996, %if.then402.2997 ], [ 0, %if.end282.2 ], !dbg !81
  br i1 %cmp401.2, label %if.then402.1.2, label %if.end436.1.2, !dbg !226

if.then402.1.2:                                   ; preds = %if.end436.21001
  %242 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %243 = getelementptr inbounds i8, ptr addrspace(4) %242, i64 %.idx.2, !dbg !227
  %add.ptr422.1.2 = getelementptr inbounds i8, ptr addrspace(4) %243, i64 128, !dbg !227
  %condval_2.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %add.ptr422.1.2, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %243, i64 132, !dbg !228
  %condval_2.sroa.5.0.copyload.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.1.2, align 4, !dbg !228, !tbaa !30
  br label %if.end436.1.2, !dbg !229

if.end436.1.2:                                    ; preds = %if.then402.1.2, %if.end436.21001
  %condval_2.sroa.0.0.1.2 = phi i32 [ %condval_2.sroa.0.0.copyload.1.2, %if.then402.1.2 ], [ 0, %if.end436.21001 ], !dbg !81
  %condval_2.sroa.5.0.1.2 = phi i32 [ %condval_2.sroa.5.0.copyload.1.2, %if.then402.1.2 ], [ 0, %if.end436.21001 ], !dbg !81
  br i1 %cmp401.2, label %if.then402.2.2, label %if.end436.2.2, !dbg !226

if.then402.2.2:                                   ; preds = %if.end436.1.2
  %244 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %245 = getelementptr inbounds i8, ptr addrspace(4) %244, i64 %.idx.2, !dbg !227
  %add.ptr422.2.2 = getelementptr inbounds i8, ptr addrspace(4) %245, i64 256, !dbg !227
  %condval_2.sroa.0.0.copyload.2.2 = load i32, ptr addrspace(4) %add.ptr422.2.2, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.2.2 = getelementptr inbounds i8, ptr addrspace(4) %245, i64 260, !dbg !228
  %condval_2.sroa.5.0.copyload.2.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.2.2, align 4, !dbg !228, !tbaa !30
  br label %if.end436.2.2, !dbg !229

if.end436.2.2:                                    ; preds = %if.then402.2.2, %if.end436.1.2
  %condval_2.sroa.0.0.2.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2.2, %if.then402.2.2 ], [ 0, %if.end436.1.2 ], !dbg !81
  %condval_2.sroa.5.0.2.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2.2, %if.then402.2.2 ], [ 0, %if.end436.1.2 ], !dbg !81
  br i1 %cmp401.2, label %if.then402.3.2, label %if.end436.3.2, !dbg !226

if.then402.3.2:                                   ; preds = %if.end436.2.2
  %246 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %247 = getelementptr inbounds i8, ptr addrspace(4) %246, i64 %.idx.2, !dbg !227
  %add.ptr422.3.2 = getelementptr inbounds i8, ptr addrspace(4) %247, i64 384, !dbg !227
  %condval_2.sroa.0.0.copyload.3.2 = load i32, ptr addrspace(4) %add.ptr422.3.2, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.3.2 = getelementptr inbounds i8, ptr addrspace(4) %247, i64 388, !dbg !228
  %condval_2.sroa.5.0.copyload.3.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.3.2, align 4, !dbg !228, !tbaa !30
  br label %if.end436.3.2, !dbg !229

if.end436.3.2:                                    ; preds = %if.then402.3.2, %if.end436.2.2
  %condval_2.sroa.0.0.3.2 = phi i32 [ %condval_2.sroa.0.0.copyload.3.2, %if.then402.3.2 ], [ 0, %if.end436.2.2 ], !dbg !81
  %condval_2.sroa.5.0.3.2 = phi i32 [ %condval_2.sroa.5.0.copyload.3.2, %if.then402.3.2 ], [ 0, %if.end436.2.2 ], !dbg !81
  %248 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul466, !dbg !230
  %add.ptr478.idx.21008 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.21009 = getelementptr inbounds i8, ptr addrspace(3) %248, i32 %add.ptr478.idx.21008, !dbg !230
  %249 = and i32 %condval_2.sroa.0.0.3.2, 65535, !dbg !231
  %v_column.sroa.130.0.insert.ext1532 = zext nneg i32 %249 to i64, !dbg !231
  %v_column.sroa.130.0.insert.shift1533 = shl nuw i64 %v_column.sroa.130.0.insert.ext1532, 48, !dbg !231
  %250 = and i32 %condval_2.sroa.0.0.2.2, 65535, !dbg !231
  %v_column.sroa.98.0.insert.ext1377 = zext nneg i32 %250 to i64, !dbg !231
  %v_column.sroa.98.0.insert.shift1378 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1377, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1380 = or disjoint i64 %v_column.sroa.130.0.insert.shift1533, %v_column.sroa.98.0.insert.shift1378, !dbg !231
  %251 = shl i32 %condval_2.sroa.0.0.1.2, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1223 = zext i32 %251 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1225 = or disjoint i64 %v_column.sroa.98.0.insert.insert1380, %v_column.sroa.66.0.insert.shift1223, !dbg !231
  %252 = and i32 %condval_2.sroa.0.0.2998, 65535, !dbg !231
  %v_column.sroa.0.0.insert.ext1091 = zext nneg i32 %252 to i64, !dbg !231
  %v_column.sroa.0.0.insert.insert1093 = or disjoint i64 %v_column.sroa.66.0.insert.insert1225, %v_column.sroa.0.0.insert.ext1091, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1093, ptr addrspace(3) %add.ptr478.21009, align 8, !dbg !231
  %v_fetch.sroa.0.2.extract.shift1729 = lshr i32 %condval_2.sroa.0.0.2998, 16, !dbg !232
  %v_fetch.sroa.0.2.extract.trunc1730 = zext nneg i32 %v_fetch.sroa.0.2.extract.shift1729 to i64, !dbg !232
  %v_fetch.sroa.50.10.extract.shift1799 = and i32 %condval_2.sroa.0.0.1.2, -65536, !dbg !231
  %v_fetch.sroa.98.18.extract.shift1869 = lshr i32 %condval_2.sroa.0.0.2.2, 16, !dbg !232
  %v_fetch.sroa.98.18.extract.trunc1870 = zext nneg i32 %v_fetch.sroa.98.18.extract.shift1869 to i64, !dbg !232
  %v_fetch.sroa.146.26.extract.shift1939 = lshr i32 %condval_2.sroa.0.0.3.2, 16, !dbg !232
  %v_fetch.sroa.146.26.extract.trunc1940 = zext nneg i32 %v_fetch.sroa.146.26.extract.shift1939 to i64, !dbg !232
  %add467.1.2 = or disjoint i32 %mul466, 256, !dbg !233
  %253 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.1.2, !dbg !230
  %xor474.1.2 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.1.2 = xor i32 %xor474.1.2, 8, !dbg !230
  %add.ptr478.1.2 = getelementptr inbounds i8, ptr addrspace(3) %253, i32 %add.ptr478.idx.1.2, !dbg !230
  %v_column.sroa.130.0.insert.shift1538 = shl nuw i64 %v_fetch.sroa.146.26.extract.trunc1940, 48, !dbg !231
  %v_column.sroa.98.0.insert.shift1383 = shl nuw nsw i64 %v_fetch.sroa.98.18.extract.trunc1870, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1385 = or disjoint i64 %v_column.sroa.130.0.insert.shift1538, %v_column.sroa.98.0.insert.shift1383, !dbg !231
  %v_column.sroa.66.0.insert.shift1228 = zext i32 %v_fetch.sroa.50.10.extract.shift1799 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1230 = or disjoint i64 %v_column.sroa.98.0.insert.insert1385, %v_column.sroa.66.0.insert.shift1228, !dbg !231
  %v_column.sroa.0.0.insert.insert1097 = or disjoint i64 %v_column.sroa.66.0.insert.insert1230, %v_fetch.sroa.0.2.extract.trunc1730, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1097, ptr addrspace(3) %add.ptr478.1.2, align 8, !dbg !231
  %add467.2.2 = or disjoint i32 %mul466, 512, !dbg !233
  %254 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.2.2, !dbg !230
  %xor474.2.2 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.2.2 = xor i32 %xor474.2.2, 16, !dbg !230
  %add.ptr478.2.2 = getelementptr inbounds i8, ptr addrspace(3) %254, i32 %add.ptr478.idx.2.2, !dbg !230
  %255 = and i32 %condval_2.sroa.5.0.3.2, 65535, !dbg !231
  %v_column.sroa.130.0.insert.ext1542 = zext nneg i32 %255 to i64, !dbg !231
  %v_column.sroa.130.0.insert.shift1543 = shl nuw i64 %v_column.sroa.130.0.insert.ext1542, 48, !dbg !231
  %256 = and i32 %condval_2.sroa.5.0.2.2, 65535, !dbg !231
  %v_column.sroa.98.0.insert.ext1387 = zext nneg i32 %256 to i64, !dbg !231
  %v_column.sroa.98.0.insert.shift1388 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1387, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1390 = or disjoint i64 %v_column.sroa.130.0.insert.shift1543, %v_column.sroa.98.0.insert.shift1388, !dbg !231
  %257 = shl i32 %condval_2.sroa.5.0.1.2, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1233 = zext i32 %257 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1235 = or disjoint i64 %v_column.sroa.98.0.insert.insert1390, %v_column.sroa.66.0.insert.shift1233, !dbg !231
  %258 = and i32 %condval_2.sroa.5.0.2999, 65535, !dbg !231
  %v_column.sroa.0.0.insert.ext1099 = zext nneg i32 %258 to i64, !dbg !231
  %v_column.sroa.0.0.insert.insert1101 = or disjoint i64 %v_column.sroa.66.0.insert.insert1235, %v_column.sroa.0.0.insert.ext1099, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1101, ptr addrspace(3) %add.ptr478.2.2, align 8, !dbg !231
  %v_fetch.sroa.26.6.extract.shift1764 = lshr i32 %condval_2.sroa.5.0.2999, 16, !dbg !232
  %v_fetch.sroa.26.6.extract.trunc1765 = zext nneg i32 %v_fetch.sroa.26.6.extract.shift1764 to i64, !dbg !232
  %v_fetch.sroa.74.14.extract.shift1834 = and i32 %condval_2.sroa.5.0.1.2, -65536, !dbg !231
  %v_fetch.sroa.122.22.extract.shift1904 = lshr i32 %condval_2.sroa.5.0.2.2, 16, !dbg !232
  %v_fetch.sroa.122.22.extract.trunc1905 = zext nneg i32 %v_fetch.sroa.122.22.extract.shift1904 to i64, !dbg !232
  %v_fetch.sroa.170.30.extract.shift1974 = lshr i32 %condval_2.sroa.5.0.3.2, 16, !dbg !232
  %v_fetch.sroa.170.30.extract.trunc1975 = zext nneg i32 %v_fetch.sroa.170.30.extract.shift1974 to i64, !dbg !232
  %add467.3.2 = or disjoint i32 %mul466, 768, !dbg !233
  %259 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.3.2, !dbg !230
  %xor474.3.2 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.3.2 = xor i32 %xor474.3.2, 24, !dbg !230
  %add.ptr478.3.2 = getelementptr inbounds i8, ptr addrspace(3) %259, i32 %add.ptr478.idx.3.2, !dbg !230
  %v_column.sroa.130.0.insert.shift1548 = shl nuw i64 %v_fetch.sroa.170.30.extract.trunc1975, 48, !dbg !231
  %v_column.sroa.98.0.insert.shift1393 = shl nuw nsw i64 %v_fetch.sroa.122.22.extract.trunc1905, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1395 = or disjoint i64 %v_column.sroa.130.0.insert.shift1548, %v_column.sroa.98.0.insert.shift1393, !dbg !231
  %v_column.sroa.66.0.insert.shift1238 = zext i32 %v_fetch.sroa.74.14.extract.shift1834 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1240 = or disjoint i64 %v_column.sroa.98.0.insert.insert1395, %v_column.sroa.66.0.insert.shift1238, !dbg !231
  %v_column.sroa.0.0.insert.insert1105 = or disjoint i64 %v_column.sroa.66.0.insert.insert1240, %v_fetch.sroa.26.6.extract.trunc1765, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1105, ptr addrspace(3) %add.ptr478.3.2, align 8, !dbg !231
  fence syncscope("warp") release, !dbg !234
  tail call void @llvm.mxc.barrier.warp(), !dbg !237
  fence syncscope("warp") acquire, !dbg !238
  %add495.21011 = or disjoint i32 %mul488, %mul494, !dbg !239
  %260 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.21011, !dbg !240
  %add.ptr505.idx.21012 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.21013 = getelementptr inbounds i8, ptr addrspace(3) %260, i32 %add.ptr505.idx.21012, !dbg !240
  %261 = load <4 x half>, ptr addrspace(3) %add.ptr505.21013, align 8, !dbg !241
  %add490.1.2 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.1.2 = or disjoint i32 %add490.1.2, 64, !dbg !239
  %262 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.1.2, !dbg !240
  %xor501.1.2 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.1.2 = xor i32 %xor501.1.2, 8, !dbg !240
  %add.ptr505.1.2 = getelementptr inbounds i8, ptr addrspace(3) %262, i32 %add.ptr505.idx.1.2, !dbg !240
  %263 = load <4 x half>, ptr addrspace(3) %add.ptr505.1.2, align 8, !dbg !241
  %add490.2.2 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.2.2 = or disjoint i32 %add490.2.2, 128, !dbg !239
  %264 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.2.2, !dbg !240
  %xor501.2.2 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.2.2 = xor i32 %xor501.2.2, 16, !dbg !240
  %add.ptr505.2.2 = getelementptr inbounds i8, ptr addrspace(3) %264, i32 %add.ptr505.idx.2.2, !dbg !240
  %265 = load <4 x half>, ptr addrspace(3) %add.ptr505.2.2, align 8, !dbg !241
  %add490.3.2 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.3.2 = or disjoint i32 %add490.3.2, 192, !dbg !239
  %266 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.3.2, !dbg !240
  %xor501.3.2 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.3.2 = xor i32 %xor501.3.2, 24, !dbg !240
  %add.ptr505.3.2 = getelementptr inbounds i8, ptr addrspace(3) %266, i32 %add.ptr505.idx.3.2, !dbg !240
  %267 = load <4 x half>, ptr addrspace(3) %add.ptr505.3.2, align 8, !dbg !241
  %268 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %261, <4 x half> %227, <4 x float> %numerator.sroa.0.4), !dbg !242
  %269 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %263, <4 x half> %227, <4 x float> %numerator.sroa.98.4), !dbg !242
  %270 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %265, <4 x half> %227, <4 x float> %numerator.sroa.194.4), !dbg !242
  %271 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %267, <4 x half> %227, <4 x float> %numerator.sroa.290.4), !dbg !242
  %add390.2 = fadd contract float %denominator.sroa.0.1.2, %add386.2, !dbg !243
  br label %if.end531.2, !dbg !244

if.end531.2:                                      ; preds = %if.end436.3.2, %if.end531.1
  %numerator.sroa.290.5 = phi <4 x float> [ %numerator.sroa.290.3, %if.end531.1 ], [ %271, %if.end436.3.2 ], !dbg !81
  %numerator.sroa.194.5 = phi <4 x float> [ %numerator.sroa.194.3, %if.end531.1 ], [ %270, %if.end436.3.2 ], !dbg !81
  %numerator.sroa.98.5 = phi <4 x float> [ %numerator.sroa.98.3, %if.end531.1 ], [ %269, %if.end436.3.2 ], !dbg !81
  %numerator.sroa.0.5 = phi <4 x float> [ %numerator.sroa.0.3, %if.end531.1 ], [ %268, %if.end436.3.2 ], !dbg !81
  %maximum.sroa.0.2.2 = phi float [ %maximum.sroa.0.2.1, %if.end531.1 ], [ %maximum.sroa.0.1.2, %if.end436.3.2 ], !dbg !81
  %denominator.sroa.0.2.2 = phi float [ %denominator.sroa.0.2.1, %if.end531.1 ], [ %add390.2, %if.end436.3.2 ], !dbg !81
  %272 = or disjoint i64 %17, 3, !dbg !245
  %arrayidx80.3 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %272, !dbg !67
  %273 = load i32, ptr addrspace(1) %arrayidx80.3, align 4, !dbg !67, !tbaa !30
  %mul81.3 = shl nsw i32 %273, 4, !dbg !68
  %cmp82.3 = icmp slt i32 %273, 0, !dbg !69
  %cmp84.not.3 = icmp sgt i32 %mul81.3, %1
  %or.cond.3 = select i1 %cmp82.3, i1 true, i1 %cmp84.not.3, !dbg !70
  br i1 %or.cond.3, label %if.end531.3, label %if.then.3, !dbg !70

if.then.3:                                        ; preds = %if.end531.2
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %add91.3 = add nuw nsw i32 %mul81.3, %shr90
  %conv101.3 = zext nneg i32 %mul81.3 to i64
  %.idx.3 = shl nuw nsw i64 %conv101.3, 7
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep883, i64 %.idx.3, !dbg !76
  %cmp94.3 = icmp ult i32 %add91.3, 1024, !dbg !77
  br i1 %cmp94.3, label %if.then95.3, label %if.end.3, !dbg !78

if.then95.3:                                      ; preds = %if.then.3
  %gep867.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.3, i64 %mul97
  %condval.sroa.7.0.add.ptr108.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep867.3, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep867.3, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep867.3, i64 4
  %condval.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %gep867.3, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.3, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.3, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.3, align 4, !dbg !79, !tbaa !30
  br label %if.end.3, !dbg !80

if.end.3:                                         ; preds = %if.then95.3, %if.then.3
  %condval.sroa.0.0.3 = phi i32 [ %condval.sroa.0.0.copyload.3, %if.then95.3 ], [ 0, %if.then.3 ], !dbg !81
  %condval.sroa.5.0.3 = phi i32 [ %condval.sroa.5.0.copyload.3, %if.then95.3 ], [ 0, %if.then.3 ], !dbg !81
  %condval.sroa.6.0.3 = phi i32 [ %condval.sroa.6.0.copyload.3, %if.then95.3 ], [ 0, %if.then.3 ], !dbg !81
  %condval.sroa.7.0.3 = phi i32 [ %condval.sroa.7.0.copyload.3, %if.then95.3 ], [ 0, %if.then.3 ], !dbg !81
  store i32 %condval.sroa.0.0.3, ptr addrspace(3) %invariant.gep856, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 4, !dbg !82
  store i32 %condval.sroa.5.0.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.3, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 8, !dbg !82
  store i32 %condval.sroa.6.0.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.3, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 12, !dbg !82
  store i32 %condval.sroa.7.0.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.3, align 4, !dbg !82, !tbaa !30
  %cmp94.1.3 = icmp ult i32 %add91.3, 1016, !dbg !77
  br i1 %cmp94.1.3, label %if.then95.1.3, label %if.end.1.3, !dbg !78

if.then95.1.3:                                    ; preds = %if.end.3
  %add100.1.3 = or disjoint i64 %mul97, 512
  %gep867.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.3, i64 %add100.1.3
  %condval.sroa.7.0.add.ptr108.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1.3, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1.3, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1.3, i64 4
  %condval.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %gep867.1.3, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.1.3, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.1.3, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.1.3, align 4, !dbg !79, !tbaa !30
  br label %if.end.1.3, !dbg !80

if.end.1.3:                                       ; preds = %if.then95.1.3, %if.end.3
  %condval.sroa.0.0.1.3 = phi i32 [ %condval.sroa.0.0.copyload.1.3, %if.then95.1.3 ], [ 0, %if.end.3 ], !dbg !81
  %condval.sroa.5.0.1.3 = phi i32 [ %condval.sroa.5.0.copyload.1.3, %if.then95.1.3 ], [ 0, %if.end.3 ], !dbg !81
  %condval.sroa.6.0.1.3 = phi i32 [ %condval.sroa.6.0.copyload.1.3, %if.then95.1.3 ], [ 0, %if.end.3 ], !dbg !81
  %condval.sroa.7.0.1.3 = phi i32 [ %condval.sroa.7.0.copyload.1.3, %if.then95.1.3 ], [ 0, %if.end.3 ], !dbg !81
  store i32 %condval.sroa.0.0.1.3, ptr addrspace(3) %gep857.1, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1028, !dbg !82
  store i32 %condval.sroa.5.0.1.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.1.3, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1032, !dbg !82
  store i32 %condval.sroa.6.0.1.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.1.3, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1036, !dbg !82
  store i32 %condval.sroa.7.0.1.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.1.3, align 4, !dbg !82, !tbaa !30
  fence syncscope("warp") release, !dbg !83
  tail call void @llvm.mxc.barrier.warp(), !dbg !86
  fence syncscope("warp") acquire, !dbg !87
  %k_local.sroa.0.0.copyload.31019 = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !88
  %274 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.31019, <4 x half> %6, <4 x float> zeroinitializer), !dbg !89
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !88
  %275 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %7, <4 x float> %274), !dbg !89
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !88
  %276 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %8, <4 x float> %275), !dbg !89
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !88
  %277 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %9, <4 x float> %276), !dbg !89
  %add194.3 = add nuw nsw i32 %mul81.3, %mul193
  %cmp197.not.31020 = icmp sgt i32 %add194.3, %1, !dbg !90
  %scores.sroa.0.0.vec.extract2101 = extractelement <4 x float> %277, i64 0
  %spec.select3037 = select i1 %cmp197.not.31020, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2101, !dbg !91
  %cmp197.not.1.3.not = icmp slt i32 %add194.3, %1, !dbg !90
  %scores.sroa.0.4.vec.extract2196 = extractelement <4 x float> %277, i64 1, !dbg !91
  %condval_1.0.1.3 = select i1 %cmp197.not.1.3.not, float %scores.sroa.0.4.vec.extract2196, float 0xFFF0000000000000, !dbg !91
  %add195.2.3 = or disjoint i32 %add194.3, 2, !dbg !92
  %cmp197.not.2.3 = icmp sgt i32 %add195.2.3, %1, !dbg !90
  %scores.sroa.0.8.vec.extract2273 = extractelement <4 x float> %277, i64 2, !dbg !91
  %condval_1.0.2.3 = select i1 %cmp197.not.2.3, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2273, !dbg !91
  %add195.3.3 = or disjoint i32 %add194.3, 3, !dbg !92
  %cmp197.not.3.3 = icmp sgt i32 %add195.3.3, %1, !dbg !90
  %scores.sroa.0.12.vec.extract2350 = extractelement <4 x float> %277, i64 3, !dbg !91
  %condval_1.0.3.3 = select i1 %cmp197.not.3.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2350, !dbg !91
  %278 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3037, float 0xFFF0000000000000), !dbg !93
  %279 = tail call contract noundef float @llvm.maxnum.f32(float %278, float %condval_1.0.1.3), !dbg !93
  %280 = tail call contract noundef float @llvm.maxnum.f32(float %279, float %condval_1.0.2.3), !dbg !93
  %281 = tail call contract noundef float @llvm.maxnum.f32(float %280, float %condval_1.0.3.3), !dbg !93
  %282 = bitcast float %281 to i32, !dbg !97
  %283 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %284 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %283) #11, !dbg !105
  %xor.i.i.3 = xor i32 %284, 32, !dbg !106
  %285 = and i32 %284, -64, !dbg !107
  %and.i.i.3 = add nsw i32 %285, 64, !dbg !107
  %cmp.not.i.i.3 = icmp slt i32 %xor.i.i.3, %and.i.i.3, !dbg !108
  %cond.i.i.3 = select i1 %cmp.not.i.i.3, i32 %xor.i.i.3, i32 %284, !dbg !109
  %shl.i.i.3 = shl i32 %cond.i.i.3, 2, !dbg !110
  %286 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.3, i32 %282), !dbg !111
  %287 = bitcast i32 %286 to float, !dbg !112
  %288 = tail call contract noundef float @llvm.maxnum.f32(float %281, float %287), !dbg !113
  %289 = bitcast float %288 to i32, !dbg !115
  %290 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !117
  %291 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %290) #11, !dbg !120
  %xor.i.i785.3 = xor i32 %291, 16, !dbg !121
  %292 = and i32 %291, -64, !dbg !122
  %and.i.i786.3 = add nsw i32 %292, 64, !dbg !122
  %cmp.not.i.i787.3 = icmp slt i32 %xor.i.i785.3, %and.i.i786.3, !dbg !123
  %cond.i.i788.3 = select i1 %cmp.not.i.i787.3, i32 %xor.i.i785.3, i32 %291, !dbg !124
  %shl.i.i789.3 = shl i32 %cond.i.i788.3, 2, !dbg !125
  %293 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i789.3, i32 %289), !dbg !126
  %294 = bitcast i32 %293 to float, !dbg !127
  %295 = tail call contract noundef float @llvm.maxnum.f32(float %288, float %294), !dbg !128
  %cmp237.3 = fcmp contract olt float %maximum.sroa.0.2.2, %295, !dbg !130
  br i1 %cmp237.3, label %if.then238.3, label %if.end282.3, !dbg !131

if.then238.3:                                     ; preds = %if.end.1.3
  %sub.3 = fsub contract float %maximum.sroa.0.2.2, %295, !dbg !132
  %mul241.3 = fmul contract float %sub.3, 0x3FC7154760000000, !dbg !133
  %cmp.i.i.3 = fcmp contract olt float %mul241.3, -1.260000e+02, !dbg !134
  %cond.i.i790.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !134
  %add.i.i.3 = fadd contract float %mul241.3, %cond.i.i790.3, !dbg !134
  %296 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !134
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !134
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %296, !dbg !134
  %numerator.sroa.0.0.vec.extract2399 = extractelement <4 x float> %numerator.sroa.0.5, i64 0, !dbg !246
  %numerator.sroa.0.4.vec.extract2436 = extractelement <4 x float> %numerator.sroa.0.5, i64 1, !dbg !246
  %numerator.sroa.0.8.vec.extract2473 = extractelement <4 x float> %numerator.sroa.0.5, i64 2, !dbg !246
  %numerator.sroa.0.12.vec.extract2510 = extractelement <4 x float> %numerator.sroa.0.5, i64 3, !dbg !246
  %mul258.31031 = fmul contract float %mul.i.i.3, %numerator.sroa.0.0.vec.extract2399, !dbg !137
  %mul261.31032 = fmul contract float %mul.i.i.3, %numerator.sroa.0.4.vec.extract2436, !dbg !247
  %mul264.31033 = fmul contract float %mul.i.i.3, %numerator.sroa.0.8.vec.extract2473, !dbg !248
  %mul267.31034 = fmul contract float %mul.i.i.3, %numerator.sroa.0.12.vec.extract2510, !dbg !249
  %numerator.sroa.0.0.vec.insert2401 = insertelement <4 x float> poison, float %mul258.31031, i64 0, !dbg !138
  %numerator.sroa.0.4.vec.insert2438 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2401, float %mul261.31032, i64 1, !dbg !138
  %numerator.sroa.0.8.vec.insert2475 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2438, float %mul264.31033, i64 2, !dbg !138
  %numerator.sroa.0.12.vec.insert2512 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2475, float %mul267.31034, i64 3, !dbg !138
  %numerator.sroa.98.16.vec.extract2555 = extractelement <4 x float> %numerator.sroa.98.5, i64 0, !dbg !246
  %numerator.sroa.98.20.vec.extract2592 = extractelement <4 x float> %numerator.sroa.98.5, i64 1, !dbg !246
  %numerator.sroa.98.24.vec.extract2629 = extractelement <4 x float> %numerator.sroa.98.5, i64 2, !dbg !246
  %numerator.sroa.98.28.vec.extract2666 = extractelement <4 x float> %numerator.sroa.98.5, i64 3, !dbg !246
  %mul258.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.16.vec.extract2555, !dbg !137
  %mul261.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.20.vec.extract2592, !dbg !247
  %mul264.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.24.vec.extract2629, !dbg !248
  %mul267.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.28.vec.extract2666, !dbg !249
  %numerator.sroa.98.16.vec.insert2557 = insertelement <4 x float> poison, float %mul258.1.3, i64 0, !dbg !138
  %numerator.sroa.98.20.vec.insert2594 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2557, float %mul261.1.3, i64 1, !dbg !138
  %numerator.sroa.98.24.vec.insert2631 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2594, float %mul264.1.3, i64 2, !dbg !138
  %numerator.sroa.98.28.vec.insert2668 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2631, float %mul267.1.3, i64 3, !dbg !138
  %numerator.sroa.194.32.vec.extract2711 = extractelement <4 x float> %numerator.sroa.194.5, i64 0, !dbg !246
  %numerator.sroa.194.36.vec.extract2748 = extractelement <4 x float> %numerator.sroa.194.5, i64 1, !dbg !246
  %numerator.sroa.194.40.vec.extract2785 = extractelement <4 x float> %numerator.sroa.194.5, i64 2, !dbg !246
  %numerator.sroa.194.44.vec.extract2822 = extractelement <4 x float> %numerator.sroa.194.5, i64 3, !dbg !246
  %mul258.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.32.vec.extract2711, !dbg !137
  %mul261.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.36.vec.extract2748, !dbg !247
  %mul264.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.40.vec.extract2785, !dbg !248
  %mul267.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.44.vec.extract2822, !dbg !249
  %numerator.sroa.194.32.vec.insert2713 = insertelement <4 x float> poison, float %mul258.2.3, i64 0, !dbg !138
  %numerator.sroa.194.36.vec.insert2750 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2713, float %mul261.2.3, i64 1, !dbg !138
  %numerator.sroa.194.40.vec.insert2787 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2750, float %mul264.2.3, i64 2, !dbg !138
  %numerator.sroa.194.44.vec.insert2824 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2787, float %mul267.2.3, i64 3, !dbg !138
  %numerator.sroa.290.48.vec.extract2867 = extractelement <4 x float> %numerator.sroa.290.5, i64 0, !dbg !246
  %numerator.sroa.290.52.vec.extract2904 = extractelement <4 x float> %numerator.sroa.290.5, i64 1, !dbg !246
  %numerator.sroa.290.56.vec.extract2941 = extractelement <4 x float> %numerator.sroa.290.5, i64 2, !dbg !246
  %numerator.sroa.290.60.vec.extract2978 = extractelement <4 x float> %numerator.sroa.290.5, i64 3, !dbg !246
  %mul258.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.48.vec.extract2867, !dbg !137
  %mul261.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.52.vec.extract2904, !dbg !247
  %mul264.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.56.vec.extract2941, !dbg !248
  %mul267.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.60.vec.extract2978, !dbg !249
  %numerator.sroa.290.48.vec.insert2869 = insertelement <4 x float> poison, float %mul258.3.3, i64 0, !dbg !138
  %numerator.sroa.290.52.vec.insert2906 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2869, float %mul261.3.3, i64 1, !dbg !138
  %numerator.sroa.290.56.vec.insert2943 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2906, float %mul264.3.3, i64 2, !dbg !138
  %numerator.sroa.290.60.vec.insert2980 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2943, float %mul267.3.3, i64 3, !dbg !138
  %mul278.3 = fmul contract float %denominator.sroa.0.2.2, %mul.i.i.3, !dbg !250
  br label %if.end282.3, !dbg !139

if.end282.3:                                      ; preds = %if.then238.3, %if.end.1.3
  %numerator.sroa.290.6 = phi <4 x float> [ %numerator.sroa.290.60.vec.insert2980, %if.then238.3 ], [ %numerator.sroa.290.5, %if.end.1.3 ], !dbg !81
  %numerator.sroa.194.6 = phi <4 x float> [ %numerator.sroa.194.44.vec.insert2824, %if.then238.3 ], [ %numerator.sroa.194.5, %if.end.1.3 ], !dbg !81
  %numerator.sroa.98.6 = phi <4 x float> [ %numerator.sroa.98.28.vec.insert2668, %if.then238.3 ], [ %numerator.sroa.98.5, %if.end.1.3 ], !dbg !81
  %numerator.sroa.0.6 = phi <4 x float> [ %numerator.sroa.0.12.vec.insert2512, %if.then238.3 ], [ %numerator.sroa.0.5, %if.end.1.3 ], !dbg !81
  %maximum.sroa.0.1.3 = phi float [ %295, %if.then238.3 ], [ %maximum.sroa.0.2.2, %if.end.1.3 ], !dbg !81
  %denominator.sroa.0.1.3 = phi float [ %mul278.3, %if.then238.3 ], [ %denominator.sroa.0.2.2, %if.end.1.3 ], !dbg !81
  %sub292.3 = fsub contract float %spec.select3037, %maximum.sroa.0.1.3, !dbg !140
  %sub296.3 = fsub contract float %condval_1.0.1.3, %maximum.sroa.0.1.3, !dbg !141
  %sub300.3 = fsub contract float %condval_1.0.2.3, %maximum.sroa.0.1.3, !dbg !142
  %sub304.3 = fsub contract float %condval_1.0.3.3, %maximum.sroa.0.1.3, !dbg !143
  %mul309.3 = fmul contract float %sub292.3, 0x3FC7154760000000, !dbg !144
  %mul313.3 = fmul contract float %sub296.3, 0x3FC7154760000000, !dbg !145
  %mul317.3 = fmul contract float %sub300.3, 0x3FC7154760000000, !dbg !146
  %mul321.3 = fmul contract float %sub304.3, 0x3FC7154760000000, !dbg !147
  %add326.3 = fadd contract float %mul309.3, 8.000000e+00, !dbg !148
  %add330.3 = fadd contract float %mul313.3, 8.000000e+00, !dbg !149
  %add334.3 = fadd contract float %mul317.3, 8.000000e+00, !dbg !150
  %add338.3 = fadd contract float %mul321.3, 8.000000e+00, !dbg !151
  %cmp.i.i799.3 = fcmp contract olt float %add326.3, -1.260000e+02, !dbg !152
  %cond.i.i800.3 = select contract i1 %cmp.i.i799.3, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i801.3 = fadd contract float %add326.3, %cond.i.i800.3, !dbg !152
  %297 = tail call contract float @llvm.exp2.f32(float %add.i.i801.3), !dbg !152
  %cond2.i.i802.3 = select contract i1 %cmp.i.i799.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i803.3 = fmul contract float %cond2.i.i802.3, %297, !dbg !152
  %cmp.i.i804.3 = fcmp contract olt float %add330.3, -1.260000e+02, !dbg !154
  %cond.i.i805.3 = select contract i1 %cmp.i.i804.3, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i806.3 = fadd contract float %add330.3, %cond.i.i805.3, !dbg !154
  %298 = tail call contract float @llvm.exp2.f32(float %add.i.i806.3), !dbg !154
  %cond2.i.i807.3 = select contract i1 %cmp.i.i804.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i808.3 = fmul contract float %cond2.i.i807.3, %298, !dbg !154
  %cmp.i.i809.3 = fcmp contract olt float %add334.3, -1.260000e+02, !dbg !156
  %cond.i.i810.3 = select contract i1 %cmp.i.i809.3, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i811.3 = fadd contract float %add334.3, %cond.i.i810.3, !dbg !156
  %299 = tail call contract float @llvm.exp2.f32(float %add.i.i811.3), !dbg !156
  %cond2.i.i812.3 = select contract i1 %cmp.i.i809.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i813.3 = fmul contract float %cond2.i.i812.3, %299, !dbg !156
  %cmp.i.i814.3 = fcmp contract olt float %add338.3, -1.260000e+02, !dbg !158
  %cond.i.i815.3 = select contract i1 %cmp.i.i814.3, float 6.400000e+01, float 0.000000e+00, !dbg !158
  %add.i.i816.3 = fadd contract float %add338.3, %cond.i.i815.3, !dbg !158
  %300 = tail call contract float @llvm.exp2.f32(float %add.i.i816.3), !dbg !158
  %cond2.i.i817.3 = select contract i1 %cmp.i.i814.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !158
  %mul.i.i818.3 = fmul contract float %cond2.i.i817.3, %300, !dbg !158
  %301 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !160, !noalias !168
  %302 = fptrunc float %mul.i.i803.3 to half, !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %301), !dbg !160, !noalias !168
  %303 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !168
  %304 = fptrunc float %mul.i.i808.3 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %303), !dbg !173, !noalias !168
  %305 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !175, !noalias !179
  %306 = fptrunc float %mul.i.i813.3 to half, !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %305), !dbg !175, !noalias !179
  %307 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !184, !noalias !179
  %308 = fptrunc float %mul.i.i818.3 to half, !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %307), !dbg !184, !noalias !179
  %309 = insertelement <4 x half> poison, half %302, i64 0, !dbg !186
  %310 = insertelement <4 x half> %309, half %304, i64 1, !dbg !186
  %311 = insertelement <4 x half> %310, half %306, i64 2, !dbg !186
  %312 = insertelement <4 x half> %311, half %308, i64 3, !dbg !186
  %conv.i.i.31036 = fpext half %302 to float, !dbg !187
  %add373.31037 = fadd contract float %conv.i.i.31036, 0.000000e+00, !dbg !192
  %conv.i.i.1.3 = fpext half %304 to float, !dbg !187
  %add373.1.3 = fadd contract float %add373.31037, %conv.i.i.1.3, !dbg !192
  %conv.i.i.2.3 = fpext half %306 to float, !dbg !187
  %add373.2.3 = fadd contract float %add373.1.3, %conv.i.i.2.3, !dbg !192
  %conv.i.i.3.3 = fpext half %308 to float, !dbg !187
  %add373.3.3 = fadd contract float %add373.2.3, %conv.i.i.3.3, !dbg !192
  %313 = bitcast float %add373.3.3 to i32, !dbg !193
  %314 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !195
  %315 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %314) #11, !dbg !198
  %xor.i.i820.3 = xor i32 %315, 32, !dbg !199
  %316 = and i32 %315, -64, !dbg !200
  %and.i.i821.3 = add nsw i32 %316, 64, !dbg !200
  %cmp.not.i.i822.3 = icmp slt i32 %xor.i.i820.3, %and.i.i821.3, !dbg !201
  %cond.i.i823.3 = select i1 %cmp.not.i.i822.3, i32 %xor.i.i820.3, i32 %315, !dbg !202
  %shl.i.i824.3 = shl i32 %cond.i.i823.3, 2, !dbg !203
  %317 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i824.3, i32 %313), !dbg !204
  %318 = bitcast i32 %317 to float, !dbg !205
  %add381.3 = fadd contract float %add373.3.3, %318, !dbg !206
  %319 = bitcast float %add381.3 to i32, !dbg !207
  %320 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !209
  %321 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %320) #11, !dbg !212
  %xor.i.i825.3 = xor i32 %321, 16, !dbg !213
  %322 = and i32 %321, -64, !dbg !214
  %and.i.i826.3 = add nsw i32 %322, 64, !dbg !214
  %cmp.not.i.i827.3 = icmp slt i32 %xor.i.i825.3, %and.i.i826.3, !dbg !215
  %cond.i.i828.3 = select i1 %cmp.not.i.i827.3, i32 %xor.i.i825.3, i32 %321, !dbg !216
  %shl.i.i829.3 = shl i32 %cond.i.i828.3, 2, !dbg !217
  %323 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i829.3, i32 %319), !dbg !218
  %324 = bitcast i32 %323 to float, !dbg !219
  %add386.3 = fadd contract float %add381.3, %324, !dbg !220
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %shr399.3 = lshr exact i32 %mul81.3, 2
  %add400.3 = add nuw nsw i32 %shr399.3, %shr397
  %cmp401.3 = icmp ult i32 %add400.3, 256
  br i1 %cmp401.3, label %if.then402.31042, label %if.end436.31046, !dbg !226

if.then402.31042:                                 ; preds = %if.end282.3
  %325 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %326 = getelementptr inbounds i8, ptr addrspace(4) %325, i64 %.idx.3, !dbg !227
  %condval_2.sroa.0.0.copyload.31039 = load i32, ptr addrspace(4) %326, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.31040 = getelementptr inbounds i8, ptr addrspace(4) %326, i64 4, !dbg !228
  %condval_2.sroa.5.0.copyload.31041 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.31040, align 4, !dbg !228, !tbaa !30
  br label %if.end436.31046, !dbg !229

if.end436.31046:                                  ; preds = %if.then402.31042, %if.end282.3
  %condval_2.sroa.0.0.31043 = phi i32 [ %condval_2.sroa.0.0.copyload.31039, %if.then402.31042 ], [ 0, %if.end282.3 ], !dbg !81
  %condval_2.sroa.5.0.31044 = phi i32 [ %condval_2.sroa.5.0.copyload.31041, %if.then402.31042 ], [ 0, %if.end282.3 ], !dbg !81
  br i1 %cmp401.3, label %if.then402.1.3, label %if.end436.1.3, !dbg !226

if.then402.1.3:                                   ; preds = %if.end436.31046
  %327 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %328 = getelementptr inbounds i8, ptr addrspace(4) %327, i64 %.idx.3, !dbg !227
  %add.ptr422.1.3 = getelementptr inbounds i8, ptr addrspace(4) %328, i64 128, !dbg !227
  %condval_2.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %add.ptr422.1.3, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %328, i64 132, !dbg !228
  %condval_2.sroa.5.0.copyload.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.1.3, align 4, !dbg !228, !tbaa !30
  br label %if.end436.1.3, !dbg !229

if.end436.1.3:                                    ; preds = %if.then402.1.3, %if.end436.31046
  %condval_2.sroa.0.0.1.3 = phi i32 [ %condval_2.sroa.0.0.copyload.1.3, %if.then402.1.3 ], [ 0, %if.end436.31046 ], !dbg !81
  %condval_2.sroa.5.0.1.3 = phi i32 [ %condval_2.sroa.5.0.copyload.1.3, %if.then402.1.3 ], [ 0, %if.end436.31046 ], !dbg !81
  br i1 %cmp401.3, label %if.then402.2.3, label %if.end436.2.3, !dbg !226

if.then402.2.3:                                   ; preds = %if.end436.1.3
  %329 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %330 = getelementptr inbounds i8, ptr addrspace(4) %329, i64 %.idx.3, !dbg !227
  %add.ptr422.2.3 = getelementptr inbounds i8, ptr addrspace(4) %330, i64 256, !dbg !227
  %condval_2.sroa.0.0.copyload.2.3 = load i32, ptr addrspace(4) %add.ptr422.2.3, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.2.3 = getelementptr inbounds i8, ptr addrspace(4) %330, i64 260, !dbg !228
  %condval_2.sroa.5.0.copyload.2.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.2.3, align 4, !dbg !228, !tbaa !30
  br label %if.end436.2.3, !dbg !229

if.end436.2.3:                                    ; preds = %if.then402.2.3, %if.end436.1.3
  %condval_2.sroa.0.0.2.3 = phi i32 [ %condval_2.sroa.0.0.copyload.2.3, %if.then402.2.3 ], [ 0, %if.end436.1.3 ], !dbg !81
  %condval_2.sroa.5.0.2.3 = phi i32 [ %condval_2.sroa.5.0.copyload.2.3, %if.then402.2.3 ], [ 0, %if.end436.1.3 ], !dbg !81
  br i1 %cmp401.3, label %if.then402.3.3, label %if.end436.3.3, !dbg !226

if.then402.3.3:                                   ; preds = %if.end436.2.3
  %331 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %332 = getelementptr inbounds i8, ptr addrspace(4) %331, i64 %.idx.3, !dbg !227
  %add.ptr422.3.3 = getelementptr inbounds i8, ptr addrspace(4) %332, i64 384, !dbg !227
  %condval_2.sroa.0.0.copyload.3.3 = load i32, ptr addrspace(4) %add.ptr422.3.3, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.3.3 = getelementptr inbounds i8, ptr addrspace(4) %332, i64 388, !dbg !228
  %condval_2.sroa.5.0.copyload.3.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.3.3, align 4, !dbg !228, !tbaa !30
  br label %if.end436.3.3, !dbg !229

if.end436.3.3:                                    ; preds = %if.then402.3.3, %if.end436.2.3
  %condval_2.sroa.0.0.3.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3.3, %if.then402.3.3 ], [ 0, %if.end436.2.3 ], !dbg !81
  %condval_2.sroa.5.0.3.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3.3, %if.then402.3.3 ], [ 0, %if.end436.2.3 ], !dbg !81
  %333 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul466, !dbg !230
  %add.ptr478.idx.31053 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.31054 = getelementptr inbounds i8, ptr addrspace(3) %333, i32 %add.ptr478.idx.31053, !dbg !230
  %334 = and i32 %condval_2.sroa.0.0.3.3, 65535, !dbg !231
  %v_column.sroa.130.0.insert.ext1552 = zext nneg i32 %334 to i64, !dbg !231
  %v_column.sroa.130.0.insert.shift1553 = shl nuw i64 %v_column.sroa.130.0.insert.ext1552, 48, !dbg !231
  %335 = and i32 %condval_2.sroa.0.0.2.3, 65535, !dbg !231
  %v_column.sroa.98.0.insert.ext1397 = zext nneg i32 %335 to i64, !dbg !231
  %v_column.sroa.98.0.insert.shift1398 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1397, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1400 = or disjoint i64 %v_column.sroa.130.0.insert.shift1553, %v_column.sroa.98.0.insert.shift1398, !dbg !231
  %336 = shl i32 %condval_2.sroa.0.0.1.3, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1243 = zext i32 %336 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1245 = or disjoint i64 %v_column.sroa.98.0.insert.insert1400, %v_column.sroa.66.0.insert.shift1243, !dbg !231
  %337 = and i32 %condval_2.sroa.0.0.31043, 65535, !dbg !231
  %v_column.sroa.0.0.insert.ext1107 = zext nneg i32 %337 to i64, !dbg !231
  %v_column.sroa.0.0.insert.insert1109 = or disjoint i64 %v_column.sroa.66.0.insert.insert1245, %v_column.sroa.0.0.insert.ext1107, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1109, ptr addrspace(3) %add.ptr478.31054, align 8, !dbg !231
  %v_fetch.sroa.0.2.extract.shift1732 = lshr i32 %condval_2.sroa.0.0.31043, 16, !dbg !232
  %v_fetch.sroa.0.2.extract.trunc1733 = zext nneg i32 %v_fetch.sroa.0.2.extract.shift1732 to i64, !dbg !232
  %v_fetch.sroa.50.10.extract.shift1802 = and i32 %condval_2.sroa.0.0.1.3, -65536, !dbg !231
  %v_fetch.sroa.98.18.extract.shift1872 = lshr i32 %condval_2.sroa.0.0.2.3, 16, !dbg !232
  %v_fetch.sroa.98.18.extract.trunc1873 = zext nneg i32 %v_fetch.sroa.98.18.extract.shift1872 to i64, !dbg !232
  %v_fetch.sroa.146.26.extract.shift1942 = lshr i32 %condval_2.sroa.0.0.3.3, 16, !dbg !232
  %v_fetch.sroa.146.26.extract.trunc1943 = zext nneg i32 %v_fetch.sroa.146.26.extract.shift1942 to i64, !dbg !232
  %add467.1.3 = or disjoint i32 %mul466, 256, !dbg !233
  %338 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.1.3, !dbg !230
  %xor474.1.3 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.1.3 = xor i32 %xor474.1.3, 8, !dbg !230
  %add.ptr478.1.3 = getelementptr inbounds i8, ptr addrspace(3) %338, i32 %add.ptr478.idx.1.3, !dbg !230
  %v_column.sroa.130.0.insert.shift1558 = shl nuw i64 %v_fetch.sroa.146.26.extract.trunc1943, 48, !dbg !231
  %v_column.sroa.98.0.insert.shift1403 = shl nuw nsw i64 %v_fetch.sroa.98.18.extract.trunc1873, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1405 = or disjoint i64 %v_column.sroa.130.0.insert.shift1558, %v_column.sroa.98.0.insert.shift1403, !dbg !231
  %v_column.sroa.66.0.insert.shift1248 = zext i32 %v_fetch.sroa.50.10.extract.shift1802 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1250 = or disjoint i64 %v_column.sroa.98.0.insert.insert1405, %v_column.sroa.66.0.insert.shift1248, !dbg !231
  %v_column.sroa.0.0.insert.insert1113 = or disjoint i64 %v_column.sroa.66.0.insert.insert1250, %v_fetch.sroa.0.2.extract.trunc1733, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1113, ptr addrspace(3) %add.ptr478.1.3, align 8, !dbg !231
  %add467.2.3 = or disjoint i32 %mul466, 512, !dbg !233
  %339 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.2.3, !dbg !230
  %xor474.2.3 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.2.3 = xor i32 %xor474.2.3, 16, !dbg !230
  %add.ptr478.2.3 = getelementptr inbounds i8, ptr addrspace(3) %339, i32 %add.ptr478.idx.2.3, !dbg !230
  %340 = and i32 %condval_2.sroa.5.0.3.3, 65535, !dbg !231
  %v_column.sroa.130.0.insert.ext1562 = zext nneg i32 %340 to i64, !dbg !231
  %v_column.sroa.130.0.insert.shift1563 = shl nuw i64 %v_column.sroa.130.0.insert.ext1562, 48, !dbg !231
  %341 = and i32 %condval_2.sroa.5.0.2.3, 65535, !dbg !231
  %v_column.sroa.98.0.insert.ext1407 = zext nneg i32 %341 to i64, !dbg !231
  %v_column.sroa.98.0.insert.shift1408 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1407, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1410 = or disjoint i64 %v_column.sroa.130.0.insert.shift1563, %v_column.sroa.98.0.insert.shift1408, !dbg !231
  %342 = shl i32 %condval_2.sroa.5.0.1.3, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1253 = zext i32 %342 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1255 = or disjoint i64 %v_column.sroa.98.0.insert.insert1410, %v_column.sroa.66.0.insert.shift1253, !dbg !231
  %343 = and i32 %condval_2.sroa.5.0.31044, 65535, !dbg !231
  %v_column.sroa.0.0.insert.ext1115 = zext nneg i32 %343 to i64, !dbg !231
  %v_column.sroa.0.0.insert.insert1117 = or disjoint i64 %v_column.sroa.66.0.insert.insert1255, %v_column.sroa.0.0.insert.ext1115, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1117, ptr addrspace(3) %add.ptr478.2.3, align 8, !dbg !231
  %v_fetch.sroa.26.6.extract.shift1767 = lshr i32 %condval_2.sroa.5.0.31044, 16, !dbg !232
  %v_fetch.sroa.26.6.extract.trunc1768 = zext nneg i32 %v_fetch.sroa.26.6.extract.shift1767 to i64, !dbg !232
  %v_fetch.sroa.74.14.extract.shift1837 = and i32 %condval_2.sroa.5.0.1.3, -65536, !dbg !231
  %v_fetch.sroa.122.22.extract.shift1907 = lshr i32 %condval_2.sroa.5.0.2.3, 16, !dbg !232
  %v_fetch.sroa.122.22.extract.trunc1908 = zext nneg i32 %v_fetch.sroa.122.22.extract.shift1907 to i64, !dbg !232
  %v_fetch.sroa.170.30.extract.shift1977 = lshr i32 %condval_2.sroa.5.0.3.3, 16, !dbg !232
  %v_fetch.sroa.170.30.extract.trunc1978 = zext nneg i32 %v_fetch.sroa.170.30.extract.shift1977 to i64, !dbg !232
  %add467.3.3 = or disjoint i32 %mul466, 768, !dbg !233
  %344 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.3.3, !dbg !230
  %xor474.3.3 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.3.3 = xor i32 %xor474.3.3, 24, !dbg !230
  %add.ptr478.3.3 = getelementptr inbounds i8, ptr addrspace(3) %344, i32 %add.ptr478.idx.3.3, !dbg !230
  %v_column.sroa.130.0.insert.shift1568 = shl nuw i64 %v_fetch.sroa.170.30.extract.trunc1978, 48, !dbg !231
  %v_column.sroa.98.0.insert.shift1413 = shl nuw nsw i64 %v_fetch.sroa.122.22.extract.trunc1908, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1415 = or disjoint i64 %v_column.sroa.130.0.insert.shift1568, %v_column.sroa.98.0.insert.shift1413, !dbg !231
  %v_column.sroa.66.0.insert.shift1258 = zext i32 %v_fetch.sroa.74.14.extract.shift1837 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1260 = or disjoint i64 %v_column.sroa.98.0.insert.insert1415, %v_column.sroa.66.0.insert.shift1258, !dbg !231
  %v_column.sroa.0.0.insert.insert1121 = or disjoint i64 %v_column.sroa.66.0.insert.insert1260, %v_fetch.sroa.26.6.extract.trunc1768, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1121, ptr addrspace(3) %add.ptr478.3.3, align 8, !dbg !231
  fence syncscope("warp") release, !dbg !234
  tail call void @llvm.mxc.barrier.warp(), !dbg !237
  fence syncscope("warp") acquire, !dbg !238
  %add495.31056 = or disjoint i32 %mul488, %mul494, !dbg !239
  %345 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.31056, !dbg !240
  %add.ptr505.idx.31057 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.31058 = getelementptr inbounds i8, ptr addrspace(3) %345, i32 %add.ptr505.idx.31057, !dbg !240
  %346 = load <4 x half>, ptr addrspace(3) %add.ptr505.31058, align 8, !dbg !241
  %add490.1.3 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.1.3 = or disjoint i32 %add490.1.3, 64, !dbg !239
  %347 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.1.3, !dbg !240
  %xor501.1.3 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.1.3 = xor i32 %xor501.1.3, 8, !dbg !240
  %add.ptr505.1.3 = getelementptr inbounds i8, ptr addrspace(3) %347, i32 %add.ptr505.idx.1.3, !dbg !240
  %348 = load <4 x half>, ptr addrspace(3) %add.ptr505.1.3, align 8, !dbg !241
  %add490.2.3 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.2.3 = or disjoint i32 %add490.2.3, 128, !dbg !239
  %349 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.2.3, !dbg !240
  %xor501.2.3 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.2.3 = xor i32 %xor501.2.3, 16, !dbg !240
  %add.ptr505.2.3 = getelementptr inbounds i8, ptr addrspace(3) %349, i32 %add.ptr505.idx.2.3, !dbg !240
  %350 = load <4 x half>, ptr addrspace(3) %add.ptr505.2.3, align 8, !dbg !241
  %add490.3.3 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.3.3 = or disjoint i32 %add490.3.3, 192, !dbg !239
  %351 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.3.3, !dbg !240
  %xor501.3.3 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.3.3 = xor i32 %xor501.3.3, 24, !dbg !240
  %add.ptr505.3.3 = getelementptr inbounds i8, ptr addrspace(3) %351, i32 %add.ptr505.idx.3.3, !dbg !240
  %352 = load <4 x half>, ptr addrspace(3) %add.ptr505.3.3, align 8, !dbg !241
  %353 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %346, <4 x half> %312, <4 x float> %numerator.sroa.0.6), !dbg !242
  %354 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %348, <4 x half> %312, <4 x float> %numerator.sroa.98.6), !dbg !242
  %355 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %350, <4 x half> %312, <4 x float> %numerator.sroa.194.6), !dbg !242
  %356 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %352, <4 x half> %312, <4 x float> %numerator.sroa.290.6), !dbg !242
  %add390.3 = fadd contract float %denominator.sroa.0.1.3, %add386.3, !dbg !243
  br label %if.end531.3, !dbg !244

if.end531.3:                                      ; preds = %if.end436.3.3, %if.end531.2
  %numerator.sroa.290.7 = phi <4 x float> [ %numerator.sroa.290.5, %if.end531.2 ], [ %356, %if.end436.3.3 ], !dbg !81
  %numerator.sroa.194.7 = phi <4 x float> [ %numerator.sroa.194.5, %if.end531.2 ], [ %355, %if.end436.3.3 ], !dbg !81
  %numerator.sroa.98.7 = phi <4 x float> [ %numerator.sroa.98.5, %if.end531.2 ], [ %354, %if.end436.3.3 ], !dbg !81
  %numerator.sroa.0.7 = phi <4 x float> [ %numerator.sroa.0.5, %if.end531.2 ], [ %353, %if.end436.3.3 ], !dbg !81
  %maximum.sroa.0.2.3 = phi float [ %maximum.sroa.0.2.2, %if.end531.2 ], [ %maximum.sroa.0.1.3, %if.end436.3.3 ], !dbg !81
  %denominator.sroa.0.2.3 = phi float [ %denominator.sroa.0.2.2, %if.end531.2 ], [ %add390.3, %if.end436.3.3 ], !dbg !81
  %357 = or disjoint i64 %17, 4, !dbg !245
  %arrayidx80.4 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %357, !dbg !67
  %358 = load i32, ptr addrspace(1) %arrayidx80.4, align 4, !dbg !67, !tbaa !30
  %mul81.4 = shl nsw i32 %358, 4, !dbg !68
  %cmp82.4 = icmp slt i32 %358, 0, !dbg !69
  %cmp84.not.4 = icmp sgt i32 %mul81.4, %1
  %or.cond.4 = select i1 %cmp82.4, i1 true, i1 %cmp84.not.4, !dbg !70
  br i1 %or.cond.4, label %if.end531.4, label %if.then.4, !dbg !70

if.then.4:                                        ; preds = %if.end531.3
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %add91.4 = add nuw nsw i32 %mul81.4, %shr90
  %conv101.4 = zext nneg i32 %mul81.4 to i64
  %.idx.4 = shl nuw nsw i64 %conv101.4, 7
  %gep.4 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep883, i64 %.idx.4, !dbg !76
  %cmp94.4 = icmp ult i32 %add91.4, 1024, !dbg !77
  br i1 %cmp94.4, label %if.then95.4, label %if.end.4, !dbg !78

if.then95.4:                                      ; preds = %if.then.4
  %gep867.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.4, i64 %mul97
  %condval.sroa.7.0.add.ptr108.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep867.4, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep867.4, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep867.4, i64 4
  %condval.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %gep867.4, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.4, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.4, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.4, align 4, !dbg !79, !tbaa !30
  br label %if.end.4, !dbg !80

if.end.4:                                         ; preds = %if.then95.4, %if.then.4
  %condval.sroa.0.0.4 = phi i32 [ %condval.sroa.0.0.copyload.4, %if.then95.4 ], [ 0, %if.then.4 ], !dbg !81
  %condval.sroa.5.0.4 = phi i32 [ %condval.sroa.5.0.copyload.4, %if.then95.4 ], [ 0, %if.then.4 ], !dbg !81
  %condval.sroa.6.0.4 = phi i32 [ %condval.sroa.6.0.copyload.4, %if.then95.4 ], [ 0, %if.then.4 ], !dbg !81
  %condval.sroa.7.0.4 = phi i32 [ %condval.sroa.7.0.copyload.4, %if.then95.4 ], [ 0, %if.then.4 ], !dbg !81
  store i32 %condval.sroa.0.0.4, ptr addrspace(3) %invariant.gep856, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 4, !dbg !82
  store i32 %condval.sroa.5.0.4, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.4, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 8, !dbg !82
  store i32 %condval.sroa.6.0.4, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.4, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 12, !dbg !82
  store i32 %condval.sroa.7.0.4, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.4, align 4, !dbg !82, !tbaa !30
  %cmp94.1.4 = icmp ult i32 %add91.4, 1016, !dbg !77
  br i1 %cmp94.1.4, label %if.then95.1.4, label %if.end.1.4, !dbg !78

if.then95.1.4:                                    ; preds = %if.end.4
  %add100.1.4 = or disjoint i64 %mul97, 512
  %gep867.1.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.4, i64 %add100.1.4
  %condval.sroa.7.0.add.ptr108.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1.4, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1.4, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1.4, i64 4
  %condval.sroa.0.0.copyload.1.4 = load i32, ptr addrspace(4) %gep867.1.4, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.1.4 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.1.4, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.1.4 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.1.4, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.1.4 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.1.4, align 4, !dbg !79, !tbaa !30
  br label %if.end.1.4, !dbg !80

if.end.1.4:                                       ; preds = %if.then95.1.4, %if.end.4
  %condval.sroa.0.0.1.4 = phi i32 [ %condval.sroa.0.0.copyload.1.4, %if.then95.1.4 ], [ 0, %if.end.4 ], !dbg !81
  %condval.sroa.5.0.1.4 = phi i32 [ %condval.sroa.5.0.copyload.1.4, %if.then95.1.4 ], [ 0, %if.end.4 ], !dbg !81
  %condval.sroa.6.0.1.4 = phi i32 [ %condval.sroa.6.0.copyload.1.4, %if.then95.1.4 ], [ 0, %if.end.4 ], !dbg !81
  %condval.sroa.7.0.1.4 = phi i32 [ %condval.sroa.7.0.copyload.1.4, %if.then95.1.4 ], [ 0, %if.end.4 ], !dbg !81
  store i32 %condval.sroa.0.0.1.4, ptr addrspace(3) %gep857.1, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1028, !dbg !82
  store i32 %condval.sroa.5.0.1.4, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.1.4, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1032, !dbg !82
  store i32 %condval.sroa.6.0.1.4, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.1.4, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1036, !dbg !82
  store i32 %condval.sroa.7.0.1.4, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.1.4, align 4, !dbg !82, !tbaa !30
  fence syncscope("warp") release, !dbg !83
  tail call void @llvm.mxc.barrier.warp(), !dbg !86
  fence syncscope("warp") acquire, !dbg !87
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !88
  %359 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %6, <4 x float> zeroinitializer), !dbg !89
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !88
  %360 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %7, <4 x float> %359), !dbg !89
  %k_local.sroa.0.0.copyload.2.4 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !88
  %361 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.4, <4 x half> %8, <4 x float> %360), !dbg !89
  %k_local.sroa.0.0.copyload.3.4 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !88
  %362 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.4, <4 x half> %9, <4 x float> %361), !dbg !89
  %add194.4 = add nuw nsw i32 %mul81.4, %mul193
  %cmp197.not.4 = icmp sgt i32 %add194.4, %1, !dbg !90
  %scores.sroa.0.0.vec.extract2111 = extractelement <4 x float> %362, i64 0
  %spec.select3038 = select i1 %cmp197.not.4, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2111, !dbg !91
  %cmp197.not.1.4.not = icmp slt i32 %add194.4, %1, !dbg !90
  %scores.sroa.0.4.vec.extract2202 = extractelement <4 x float> %362, i64 1, !dbg !91
  %condval_1.0.1.4 = select i1 %cmp197.not.1.4.not, float %scores.sroa.0.4.vec.extract2202, float 0xFFF0000000000000, !dbg !91
  %add195.2.4 = or disjoint i32 %add194.4, 2, !dbg !92
  %cmp197.not.2.4 = icmp sgt i32 %add195.2.4, %1, !dbg !90
  %scores.sroa.0.8.vec.extract2279 = extractelement <4 x float> %362, i64 2, !dbg !91
  %condval_1.0.2.4 = select i1 %cmp197.not.2.4, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2279, !dbg !91
  %add195.3.4 = or disjoint i32 %add194.4, 3, !dbg !92
  %cmp197.not.3.4 = icmp sgt i32 %add195.3.4, %1, !dbg !90
  %scores.sroa.0.12.vec.extract2356 = extractelement <4 x float> %362, i64 3, !dbg !91
  %condval_1.0.3.4 = select i1 %cmp197.not.3.4, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2356, !dbg !91
  %363 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3038, float 0xFFF0000000000000), !dbg !93
  %364 = tail call contract noundef float @llvm.maxnum.f32(float %363, float %condval_1.0.1.4), !dbg !93
  %365 = tail call contract noundef float @llvm.maxnum.f32(float %364, float %condval_1.0.2.4), !dbg !93
  %366 = tail call contract noundef float @llvm.maxnum.f32(float %365, float %condval_1.0.3.4), !dbg !93
  %367 = bitcast float %366 to i32, !dbg !97
  %368 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %369 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %368) #11, !dbg !105
  %xor.i.i.4 = xor i32 %369, 32, !dbg !106
  %370 = and i32 %369, -64, !dbg !107
  %and.i.i.4 = add nsw i32 %370, 64, !dbg !107
  %cmp.not.i.i.4 = icmp slt i32 %xor.i.i.4, %and.i.i.4, !dbg !108
  %cond.i.i.4 = select i1 %cmp.not.i.i.4, i32 %xor.i.i.4, i32 %369, !dbg !109
  %shl.i.i.4 = shl i32 %cond.i.i.4, 2, !dbg !110
  %371 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.4, i32 %367), !dbg !111
  %372 = bitcast i32 %371 to float, !dbg !112
  %373 = tail call contract noundef float @llvm.maxnum.f32(float %366, float %372), !dbg !113
  %374 = bitcast float %373 to i32, !dbg !115
  %375 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !117
  %376 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %375) #11, !dbg !120
  %xor.i.i785.4 = xor i32 %376, 16, !dbg !121
  %377 = and i32 %376, -64, !dbg !122
  %and.i.i786.4 = add nsw i32 %377, 64, !dbg !122
  %cmp.not.i.i787.4 = icmp slt i32 %xor.i.i785.4, %and.i.i786.4, !dbg !123
  %cond.i.i788.4 = select i1 %cmp.not.i.i787.4, i32 %xor.i.i785.4, i32 %376, !dbg !124
  %shl.i.i789.4 = shl i32 %cond.i.i788.4, 2, !dbg !125
  %378 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i789.4, i32 %374), !dbg !126
  %379 = bitcast i32 %378 to float, !dbg !127
  %380 = tail call contract noundef float @llvm.maxnum.f32(float %373, float %379), !dbg !128
  %cmp237.4 = fcmp contract olt float %maximum.sroa.0.2.3, %380, !dbg !130
  br i1 %cmp237.4, label %if.then238.4, label %if.end282.4, !dbg !131

if.then238.4:                                     ; preds = %if.end.1.4
  %sub.4 = fsub contract float %maximum.sroa.0.2.3, %380, !dbg !132
  %mul241.4 = fmul contract float %sub.4, 0x3FC7154760000000, !dbg !133
  %cmp.i.i.4 = fcmp contract olt float %mul241.4, -1.260000e+02, !dbg !134
  %cond.i.i790.4 = select contract i1 %cmp.i.i.4, float 6.400000e+01, float 0.000000e+00, !dbg !134
  %add.i.i.4 = fadd contract float %mul241.4, %cond.i.i790.4, !dbg !134
  %381 = tail call contract float @llvm.exp2.f32(float %add.i.i.4), !dbg !134
  %cond2.i.i.4 = select contract i1 %cmp.i.i.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !134
  %mul.i.i.4 = fmul contract float %cond2.i.i.4, %381, !dbg !134
  %numerator.sroa.0.0.vec.extract2403 = extractelement <4 x float> %numerator.sroa.0.7, i64 0, !dbg !246
  %numerator.sroa.0.4.vec.extract2440 = extractelement <4 x float> %numerator.sroa.0.7, i64 1, !dbg !246
  %numerator.sroa.0.8.vec.extract2477 = extractelement <4 x float> %numerator.sroa.0.7, i64 2, !dbg !246
  %numerator.sroa.0.12.vec.extract2514 = extractelement <4 x float> %numerator.sroa.0.7, i64 3, !dbg !246
  %mul258.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.0.vec.extract2403, !dbg !137
  %mul261.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.4.vec.extract2440, !dbg !247
  %mul264.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.8.vec.extract2477, !dbg !248
  %mul267.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.12.vec.extract2514, !dbg !249
  %numerator.sroa.0.0.vec.insert2405 = insertelement <4 x float> poison, float %mul258.4, i64 0, !dbg !138
  %numerator.sroa.0.4.vec.insert2442 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2405, float %mul261.4, i64 1, !dbg !138
  %numerator.sroa.0.8.vec.insert2479 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2442, float %mul264.4, i64 2, !dbg !138
  %numerator.sroa.0.12.vec.insert2516 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2479, float %mul267.4, i64 3, !dbg !138
  %numerator.sroa.98.16.vec.extract2559 = extractelement <4 x float> %numerator.sroa.98.7, i64 0, !dbg !246
  %numerator.sroa.98.20.vec.extract2596 = extractelement <4 x float> %numerator.sroa.98.7, i64 1, !dbg !246
  %numerator.sroa.98.24.vec.extract2633 = extractelement <4 x float> %numerator.sroa.98.7, i64 2, !dbg !246
  %numerator.sroa.98.28.vec.extract2670 = extractelement <4 x float> %numerator.sroa.98.7, i64 3, !dbg !246
  %mul258.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.16.vec.extract2559, !dbg !137
  %mul261.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.20.vec.extract2596, !dbg !247
  %mul264.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.24.vec.extract2633, !dbg !248
  %mul267.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.28.vec.extract2670, !dbg !249
  %numerator.sroa.98.16.vec.insert2561 = insertelement <4 x float> poison, float %mul258.1.4, i64 0, !dbg !138
  %numerator.sroa.98.20.vec.insert2598 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2561, float %mul261.1.4, i64 1, !dbg !138
  %numerator.sroa.98.24.vec.insert2635 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2598, float %mul264.1.4, i64 2, !dbg !138
  %numerator.sroa.98.28.vec.insert2672 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2635, float %mul267.1.4, i64 3, !dbg !138
  %numerator.sroa.194.32.vec.extract2715 = extractelement <4 x float> %numerator.sroa.194.7, i64 0, !dbg !246
  %numerator.sroa.194.36.vec.extract2752 = extractelement <4 x float> %numerator.sroa.194.7, i64 1, !dbg !246
  %numerator.sroa.194.40.vec.extract2789 = extractelement <4 x float> %numerator.sroa.194.7, i64 2, !dbg !246
  %numerator.sroa.194.44.vec.extract2826 = extractelement <4 x float> %numerator.sroa.194.7, i64 3, !dbg !246
  %mul258.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.32.vec.extract2715, !dbg !137
  %mul261.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.36.vec.extract2752, !dbg !247
  %mul264.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.40.vec.extract2789, !dbg !248
  %mul267.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.44.vec.extract2826, !dbg !249
  %numerator.sroa.194.32.vec.insert2717 = insertelement <4 x float> poison, float %mul258.2.4, i64 0, !dbg !138
  %numerator.sroa.194.36.vec.insert2754 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2717, float %mul261.2.4, i64 1, !dbg !138
  %numerator.sroa.194.40.vec.insert2791 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2754, float %mul264.2.4, i64 2, !dbg !138
  %numerator.sroa.194.44.vec.insert2828 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2791, float %mul267.2.4, i64 3, !dbg !138
  %numerator.sroa.290.48.vec.extract2871 = extractelement <4 x float> %numerator.sroa.290.7, i64 0, !dbg !246
  %numerator.sroa.290.52.vec.extract2908 = extractelement <4 x float> %numerator.sroa.290.7, i64 1, !dbg !246
  %numerator.sroa.290.56.vec.extract2945 = extractelement <4 x float> %numerator.sroa.290.7, i64 2, !dbg !246
  %numerator.sroa.290.60.vec.extract2982 = extractelement <4 x float> %numerator.sroa.290.7, i64 3, !dbg !246
  %mul258.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.48.vec.extract2871, !dbg !137
  %mul261.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.52.vec.extract2908, !dbg !247
  %mul264.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.56.vec.extract2945, !dbg !248
  %mul267.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.60.vec.extract2982, !dbg !249
  %numerator.sroa.290.48.vec.insert2873 = insertelement <4 x float> poison, float %mul258.3.4, i64 0, !dbg !138
  %numerator.sroa.290.52.vec.insert2910 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2873, float %mul261.3.4, i64 1, !dbg !138
  %numerator.sroa.290.56.vec.insert2947 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2910, float %mul264.3.4, i64 2, !dbg !138
  %numerator.sroa.290.60.vec.insert2984 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2947, float %mul267.3.4, i64 3, !dbg !138
  %mul278.4 = fmul contract float %denominator.sroa.0.2.3, %mul.i.i.4, !dbg !250
  br label %if.end282.4, !dbg !139

if.end282.4:                                      ; preds = %if.then238.4, %if.end.1.4
  %numerator.sroa.290.8 = phi <4 x float> [ %numerator.sroa.290.60.vec.insert2984, %if.then238.4 ], [ %numerator.sroa.290.7, %if.end.1.4 ], !dbg !81
  %numerator.sroa.194.8 = phi <4 x float> [ %numerator.sroa.194.44.vec.insert2828, %if.then238.4 ], [ %numerator.sroa.194.7, %if.end.1.4 ], !dbg !81
  %numerator.sroa.98.8 = phi <4 x float> [ %numerator.sroa.98.28.vec.insert2672, %if.then238.4 ], [ %numerator.sroa.98.7, %if.end.1.4 ], !dbg !81
  %numerator.sroa.0.8 = phi <4 x float> [ %numerator.sroa.0.12.vec.insert2516, %if.then238.4 ], [ %numerator.sroa.0.7, %if.end.1.4 ], !dbg !81
  %maximum.sroa.0.1.4 = phi float [ %380, %if.then238.4 ], [ %maximum.sroa.0.2.3, %if.end.1.4 ], !dbg !81
  %denominator.sroa.0.1.4 = phi float [ %mul278.4, %if.then238.4 ], [ %denominator.sroa.0.2.3, %if.end.1.4 ], !dbg !81
  %sub292.4 = fsub contract float %spec.select3038, %maximum.sroa.0.1.4, !dbg !140
  %sub296.4 = fsub contract float %condval_1.0.1.4, %maximum.sroa.0.1.4, !dbg !141
  %sub300.4 = fsub contract float %condval_1.0.2.4, %maximum.sroa.0.1.4, !dbg !142
  %sub304.4 = fsub contract float %condval_1.0.3.4, %maximum.sroa.0.1.4, !dbg !143
  %mul309.4 = fmul contract float %sub292.4, 0x3FC7154760000000, !dbg !144
  %mul313.4 = fmul contract float %sub296.4, 0x3FC7154760000000, !dbg !145
  %mul317.4 = fmul contract float %sub300.4, 0x3FC7154760000000, !dbg !146
  %mul321.4 = fmul contract float %sub304.4, 0x3FC7154760000000, !dbg !147
  %add326.4 = fadd contract float %mul309.4, 8.000000e+00, !dbg !148
  %add330.4 = fadd contract float %mul313.4, 8.000000e+00, !dbg !149
  %add334.4 = fadd contract float %mul317.4, 8.000000e+00, !dbg !150
  %add338.4 = fadd contract float %mul321.4, 8.000000e+00, !dbg !151
  %cmp.i.i799.4 = fcmp contract olt float %add326.4, -1.260000e+02, !dbg !152
  %cond.i.i800.4 = select contract i1 %cmp.i.i799.4, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i801.4 = fadd contract float %add326.4, %cond.i.i800.4, !dbg !152
  %382 = tail call contract float @llvm.exp2.f32(float %add.i.i801.4), !dbg !152
  %cond2.i.i802.4 = select contract i1 %cmp.i.i799.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i803.4 = fmul contract float %cond2.i.i802.4, %382, !dbg !152
  %cmp.i.i804.4 = fcmp contract olt float %add330.4, -1.260000e+02, !dbg !154
  %cond.i.i805.4 = select contract i1 %cmp.i.i804.4, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i806.4 = fadd contract float %add330.4, %cond.i.i805.4, !dbg !154
  %383 = tail call contract float @llvm.exp2.f32(float %add.i.i806.4), !dbg !154
  %cond2.i.i807.4 = select contract i1 %cmp.i.i804.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i808.4 = fmul contract float %cond2.i.i807.4, %383, !dbg !154
  %cmp.i.i809.4 = fcmp contract olt float %add334.4, -1.260000e+02, !dbg !156
  %cond.i.i810.4 = select contract i1 %cmp.i.i809.4, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i811.4 = fadd contract float %add334.4, %cond.i.i810.4, !dbg !156
  %384 = tail call contract float @llvm.exp2.f32(float %add.i.i811.4), !dbg !156
  %cond2.i.i812.4 = select contract i1 %cmp.i.i809.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i813.4 = fmul contract float %cond2.i.i812.4, %384, !dbg !156
  %cmp.i.i814.4 = fcmp contract olt float %add338.4, -1.260000e+02, !dbg !158
  %cond.i.i815.4 = select contract i1 %cmp.i.i814.4, float 6.400000e+01, float 0.000000e+00, !dbg !158
  %add.i.i816.4 = fadd contract float %add338.4, %cond.i.i815.4, !dbg !158
  %385 = tail call contract float @llvm.exp2.f32(float %add.i.i816.4), !dbg !158
  %cond2.i.i817.4 = select contract i1 %cmp.i.i814.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !158
  %mul.i.i818.4 = fmul contract float %cond2.i.i817.4, %385, !dbg !158
  %386 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !160, !noalias !168
  %387 = fptrunc float %mul.i.i803.4 to half, !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %386), !dbg !160, !noalias !168
  %388 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !168
  %389 = fptrunc float %mul.i.i808.4 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %388), !dbg !173, !noalias !168
  %390 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !175, !noalias !179
  %391 = fptrunc float %mul.i.i813.4 to half, !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %390), !dbg !175, !noalias !179
  %392 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !184, !noalias !179
  %393 = fptrunc float %mul.i.i818.4 to half, !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %392), !dbg !184, !noalias !179
  %394 = insertelement <4 x half> poison, half %387, i64 0, !dbg !186
  %395 = insertelement <4 x half> %394, half %389, i64 1, !dbg !186
  %396 = insertelement <4 x half> %395, half %391, i64 2, !dbg !186
  %397 = insertelement <4 x half> %396, half %393, i64 3, !dbg !186
  %conv.i.i.4 = fpext half %387 to float, !dbg !187
  %add373.4 = fadd contract float %conv.i.i.4, 0.000000e+00, !dbg !192
  %conv.i.i.1.4 = fpext half %389 to float, !dbg !187
  %add373.1.4 = fadd contract float %add373.4, %conv.i.i.1.4, !dbg !192
  %conv.i.i.2.4 = fpext half %391 to float, !dbg !187
  %add373.2.4 = fadd contract float %add373.1.4, %conv.i.i.2.4, !dbg !192
  %conv.i.i.3.4 = fpext half %393 to float, !dbg !187
  %add373.3.4 = fadd contract float %add373.2.4, %conv.i.i.3.4, !dbg !192
  %398 = bitcast float %add373.3.4 to i32, !dbg !193
  %399 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !195
  %400 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %399) #11, !dbg !198
  %xor.i.i820.4 = xor i32 %400, 32, !dbg !199
  %401 = and i32 %400, -64, !dbg !200
  %and.i.i821.4 = add nsw i32 %401, 64, !dbg !200
  %cmp.not.i.i822.4 = icmp slt i32 %xor.i.i820.4, %and.i.i821.4, !dbg !201
  %cond.i.i823.4 = select i1 %cmp.not.i.i822.4, i32 %xor.i.i820.4, i32 %400, !dbg !202
  %shl.i.i824.4 = shl i32 %cond.i.i823.4, 2, !dbg !203
  %402 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i824.4, i32 %398), !dbg !204
  %403 = bitcast i32 %402 to float, !dbg !205
  %add381.4 = fadd contract float %add373.3.4, %403, !dbg !206
  %404 = bitcast float %add381.4 to i32, !dbg !207
  %405 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !209
  %406 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %405) #11, !dbg !212
  %xor.i.i825.4 = xor i32 %406, 16, !dbg !213
  %407 = and i32 %406, -64, !dbg !214
  %and.i.i826.4 = add nsw i32 %407, 64, !dbg !214
  %cmp.not.i.i827.4 = icmp slt i32 %xor.i.i825.4, %and.i.i826.4, !dbg !215
  %cond.i.i828.4 = select i1 %cmp.not.i.i827.4, i32 %xor.i.i825.4, i32 %406, !dbg !216
  %shl.i.i829.4 = shl i32 %cond.i.i828.4, 2, !dbg !217
  %408 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i829.4, i32 %404), !dbg !218
  %409 = bitcast i32 %408 to float, !dbg !219
  %add386.4 = fadd contract float %add381.4, %409, !dbg !220
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %shr399.4 = lshr exact i32 %mul81.4, 2
  %add400.4 = add nuw nsw i32 %shr399.4, %shr397
  %cmp401.4 = icmp ult i32 %add400.4, 256
  br i1 %cmp401.4, label %if.then402.4, label %if.end436.4, !dbg !226

if.then402.4:                                     ; preds = %if.end282.4
  %410 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %411 = getelementptr inbounds i8, ptr addrspace(4) %410, i64 %.idx.4, !dbg !227
  %condval_2.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %411, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %411, i64 4, !dbg !228
  %condval_2.sroa.5.0.copyload.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.4, align 4, !dbg !228, !tbaa !30
  br label %if.end436.4, !dbg !229

if.end436.4:                                      ; preds = %if.then402.4, %if.end282.4
  %condval_2.sroa.0.0.4 = phi i32 [ %condval_2.sroa.0.0.copyload.4, %if.then402.4 ], [ 0, %if.end282.4 ], !dbg !81
  %condval_2.sroa.5.0.4 = phi i32 [ %condval_2.sroa.5.0.copyload.4, %if.then402.4 ], [ 0, %if.end282.4 ], !dbg !81
  br i1 %cmp401.4, label %if.then402.1.4, label %if.end436.1.4, !dbg !226

if.then402.1.4:                                   ; preds = %if.end436.4
  %412 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %413 = getelementptr inbounds i8, ptr addrspace(4) %412, i64 %.idx.4, !dbg !227
  %add.ptr422.1.4 = getelementptr inbounds i8, ptr addrspace(4) %413, i64 128, !dbg !227
  %condval_2.sroa.0.0.copyload.1.4 = load i32, ptr addrspace(4) %add.ptr422.1.4, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %413, i64 132, !dbg !228
  %condval_2.sroa.5.0.copyload.1.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.1.4, align 4, !dbg !228, !tbaa !30
  br label %if.end436.1.4, !dbg !229

if.end436.1.4:                                    ; preds = %if.then402.1.4, %if.end436.4
  %condval_2.sroa.0.0.1.4 = phi i32 [ %condval_2.sroa.0.0.copyload.1.4, %if.then402.1.4 ], [ 0, %if.end436.4 ], !dbg !81
  %condval_2.sroa.5.0.1.4 = phi i32 [ %condval_2.sroa.5.0.copyload.1.4, %if.then402.1.4 ], [ 0, %if.end436.4 ], !dbg !81
  br i1 %cmp401.4, label %if.then402.2.4, label %if.end436.2.4, !dbg !226

if.then402.2.4:                                   ; preds = %if.end436.1.4
  %414 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %415 = getelementptr inbounds i8, ptr addrspace(4) %414, i64 %.idx.4, !dbg !227
  %add.ptr422.2.4 = getelementptr inbounds i8, ptr addrspace(4) %415, i64 256, !dbg !227
  %condval_2.sroa.0.0.copyload.2.4 = load i32, ptr addrspace(4) %add.ptr422.2.4, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.2.4 = getelementptr inbounds i8, ptr addrspace(4) %415, i64 260, !dbg !228
  %condval_2.sroa.5.0.copyload.2.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.2.4, align 4, !dbg !228, !tbaa !30
  br label %if.end436.2.4, !dbg !229

if.end436.2.4:                                    ; preds = %if.then402.2.4, %if.end436.1.4
  %condval_2.sroa.0.0.2.4 = phi i32 [ %condval_2.sroa.0.0.copyload.2.4, %if.then402.2.4 ], [ 0, %if.end436.1.4 ], !dbg !81
  %condval_2.sroa.5.0.2.4 = phi i32 [ %condval_2.sroa.5.0.copyload.2.4, %if.then402.2.4 ], [ 0, %if.end436.1.4 ], !dbg !81
  br i1 %cmp401.4, label %if.then402.3.4, label %if.end436.3.4, !dbg !226

if.then402.3.4:                                   ; preds = %if.end436.2.4
  %416 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %417 = getelementptr inbounds i8, ptr addrspace(4) %416, i64 %.idx.4, !dbg !227
  %add.ptr422.3.4 = getelementptr inbounds i8, ptr addrspace(4) %417, i64 384, !dbg !227
  %condval_2.sroa.0.0.copyload.3.4 = load i32, ptr addrspace(4) %add.ptr422.3.4, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.3.4 = getelementptr inbounds i8, ptr addrspace(4) %417, i64 388, !dbg !228
  %condval_2.sroa.5.0.copyload.3.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.3.4, align 4, !dbg !228, !tbaa !30
  br label %if.end436.3.4, !dbg !229

if.end436.3.4:                                    ; preds = %if.then402.3.4, %if.end436.2.4
  %condval_2.sroa.0.0.3.4 = phi i32 [ %condval_2.sroa.0.0.copyload.3.4, %if.then402.3.4 ], [ 0, %if.end436.2.4 ], !dbg !81
  %condval_2.sroa.5.0.3.4 = phi i32 [ %condval_2.sroa.5.0.copyload.3.4, %if.then402.3.4 ], [ 0, %if.end436.2.4 ], !dbg !81
  %418 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul466, !dbg !230
  %add.ptr478.idx.4 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.4 = getelementptr inbounds i8, ptr addrspace(3) %418, i32 %add.ptr478.idx.4, !dbg !230
  %419 = and i32 %condval_2.sroa.0.0.3.4, 65535, !dbg !231
  %v_column.sroa.130.0.insert.ext1572 = zext nneg i32 %419 to i64, !dbg !231
  %v_column.sroa.130.0.insert.shift1573 = shl nuw i64 %v_column.sroa.130.0.insert.ext1572, 48, !dbg !231
  %420 = and i32 %condval_2.sroa.0.0.2.4, 65535, !dbg !231
  %v_column.sroa.98.0.insert.ext1417 = zext nneg i32 %420 to i64, !dbg !231
  %v_column.sroa.98.0.insert.shift1418 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1417, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1420 = or disjoint i64 %v_column.sroa.130.0.insert.shift1573, %v_column.sroa.98.0.insert.shift1418, !dbg !231
  %421 = shl i32 %condval_2.sroa.0.0.1.4, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1263 = zext i32 %421 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1265 = or disjoint i64 %v_column.sroa.98.0.insert.insert1420, %v_column.sroa.66.0.insert.shift1263, !dbg !231
  %422 = and i32 %condval_2.sroa.0.0.4, 65535, !dbg !231
  %v_column.sroa.0.0.insert.ext1123 = zext nneg i32 %422 to i64, !dbg !231
  %v_column.sroa.0.0.insert.insert1125 = or disjoint i64 %v_column.sroa.66.0.insert.insert1265, %v_column.sroa.0.0.insert.ext1123, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1125, ptr addrspace(3) %add.ptr478.4, align 8, !dbg !231
  %v_fetch.sroa.0.2.extract.shift1735 = lshr i32 %condval_2.sroa.0.0.4, 16, !dbg !232
  %v_fetch.sroa.0.2.extract.trunc1736 = zext nneg i32 %v_fetch.sroa.0.2.extract.shift1735 to i64, !dbg !232
  %v_fetch.sroa.50.10.extract.shift1805 = and i32 %condval_2.sroa.0.0.1.4, -65536, !dbg !231
  %v_fetch.sroa.98.18.extract.shift1875 = lshr i32 %condval_2.sroa.0.0.2.4, 16, !dbg !232
  %v_fetch.sroa.98.18.extract.trunc1876 = zext nneg i32 %v_fetch.sroa.98.18.extract.shift1875 to i64, !dbg !232
  %v_fetch.sroa.146.26.extract.shift1945 = lshr i32 %condval_2.sroa.0.0.3.4, 16, !dbg !232
  %v_fetch.sroa.146.26.extract.trunc1946 = zext nneg i32 %v_fetch.sroa.146.26.extract.shift1945 to i64, !dbg !232
  %add467.1.4 = or disjoint i32 %mul466, 256, !dbg !233
  %423 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.1.4, !dbg !230
  %xor474.1.4 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.1.4 = xor i32 %xor474.1.4, 8, !dbg !230
  %add.ptr478.1.4 = getelementptr inbounds i8, ptr addrspace(3) %423, i32 %add.ptr478.idx.1.4, !dbg !230
  %v_column.sroa.130.0.insert.shift1578 = shl nuw i64 %v_fetch.sroa.146.26.extract.trunc1946, 48, !dbg !231
  %v_column.sroa.98.0.insert.shift1423 = shl nuw nsw i64 %v_fetch.sroa.98.18.extract.trunc1876, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1425 = or disjoint i64 %v_column.sroa.130.0.insert.shift1578, %v_column.sroa.98.0.insert.shift1423, !dbg !231
  %v_column.sroa.66.0.insert.shift1268 = zext i32 %v_fetch.sroa.50.10.extract.shift1805 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1270 = or disjoint i64 %v_column.sroa.98.0.insert.insert1425, %v_column.sroa.66.0.insert.shift1268, !dbg !231
  %v_column.sroa.0.0.insert.insert1129 = or disjoint i64 %v_column.sroa.66.0.insert.insert1270, %v_fetch.sroa.0.2.extract.trunc1736, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1129, ptr addrspace(3) %add.ptr478.1.4, align 8, !dbg !231
  %add467.2.4 = or disjoint i32 %mul466, 512, !dbg !233
  %424 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.2.4, !dbg !230
  %xor474.2.4 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.2.4 = xor i32 %xor474.2.4, 16, !dbg !230
  %add.ptr478.2.4 = getelementptr inbounds i8, ptr addrspace(3) %424, i32 %add.ptr478.idx.2.4, !dbg !230
  %425 = and i32 %condval_2.sroa.5.0.3.4, 65535, !dbg !231
  %v_column.sroa.130.0.insert.ext1582 = zext nneg i32 %425 to i64, !dbg !231
  %v_column.sroa.130.0.insert.shift1583 = shl nuw i64 %v_column.sroa.130.0.insert.ext1582, 48, !dbg !231
  %426 = and i32 %condval_2.sroa.5.0.2.4, 65535, !dbg !231
  %v_column.sroa.98.0.insert.ext1427 = zext nneg i32 %426 to i64, !dbg !231
  %v_column.sroa.98.0.insert.shift1428 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1427, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1430 = or disjoint i64 %v_column.sroa.130.0.insert.shift1583, %v_column.sroa.98.0.insert.shift1428, !dbg !231
  %427 = shl i32 %condval_2.sroa.5.0.1.4, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1273 = zext i32 %427 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1275 = or disjoint i64 %v_column.sroa.98.0.insert.insert1430, %v_column.sroa.66.0.insert.shift1273, !dbg !231
  %428 = and i32 %condval_2.sroa.5.0.4, 65535, !dbg !231
  %v_column.sroa.0.0.insert.ext1131 = zext nneg i32 %428 to i64, !dbg !231
  %v_column.sroa.0.0.insert.insert1133 = or disjoint i64 %v_column.sroa.66.0.insert.insert1275, %v_column.sroa.0.0.insert.ext1131, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1133, ptr addrspace(3) %add.ptr478.2.4, align 8, !dbg !231
  %v_fetch.sroa.26.6.extract.shift1770 = lshr i32 %condval_2.sroa.5.0.4, 16, !dbg !232
  %v_fetch.sroa.26.6.extract.trunc1771 = zext nneg i32 %v_fetch.sroa.26.6.extract.shift1770 to i64, !dbg !232
  %v_fetch.sroa.74.14.extract.shift1840 = and i32 %condval_2.sroa.5.0.1.4, -65536, !dbg !231
  %v_fetch.sroa.122.22.extract.shift1910 = lshr i32 %condval_2.sroa.5.0.2.4, 16, !dbg !232
  %v_fetch.sroa.122.22.extract.trunc1911 = zext nneg i32 %v_fetch.sroa.122.22.extract.shift1910 to i64, !dbg !232
  %v_fetch.sroa.170.30.extract.shift1980 = lshr i32 %condval_2.sroa.5.0.3.4, 16, !dbg !232
  %v_fetch.sroa.170.30.extract.trunc1981 = zext nneg i32 %v_fetch.sroa.170.30.extract.shift1980 to i64, !dbg !232
  %add467.3.4 = or disjoint i32 %mul466, 768, !dbg !233
  %429 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.3.4, !dbg !230
  %xor474.3.4 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.3.4 = xor i32 %xor474.3.4, 24, !dbg !230
  %add.ptr478.3.4 = getelementptr inbounds i8, ptr addrspace(3) %429, i32 %add.ptr478.idx.3.4, !dbg !230
  %v_column.sroa.130.0.insert.shift1588 = shl nuw i64 %v_fetch.sroa.170.30.extract.trunc1981, 48, !dbg !231
  %v_column.sroa.98.0.insert.shift1433 = shl nuw nsw i64 %v_fetch.sroa.122.22.extract.trunc1911, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1435 = or disjoint i64 %v_column.sroa.130.0.insert.shift1588, %v_column.sroa.98.0.insert.shift1433, !dbg !231
  %v_column.sroa.66.0.insert.shift1278 = zext i32 %v_fetch.sroa.74.14.extract.shift1840 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1280 = or disjoint i64 %v_column.sroa.98.0.insert.insert1435, %v_column.sroa.66.0.insert.shift1278, !dbg !231
  %v_column.sroa.0.0.insert.insert1137 = or disjoint i64 %v_column.sroa.66.0.insert.insert1280, %v_fetch.sroa.26.6.extract.trunc1771, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1137, ptr addrspace(3) %add.ptr478.3.4, align 8, !dbg !231
  fence syncscope("warp") release, !dbg !234
  tail call void @llvm.mxc.barrier.warp(), !dbg !237
  fence syncscope("warp") acquire, !dbg !238
  %add495.4 = or disjoint i32 %mul488, %mul494, !dbg !239
  %430 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.4, !dbg !240
  %add.ptr505.idx.4 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.4 = getelementptr inbounds i8, ptr addrspace(3) %430, i32 %add.ptr505.idx.4, !dbg !240
  %431 = load <4 x half>, ptr addrspace(3) %add.ptr505.4, align 8, !dbg !241
  %add490.1.4 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.1.4 = or disjoint i32 %add490.1.4, 64, !dbg !239
  %432 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.1.4, !dbg !240
  %xor501.1.4 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.1.4 = xor i32 %xor501.1.4, 8, !dbg !240
  %add.ptr505.1.4 = getelementptr inbounds i8, ptr addrspace(3) %432, i32 %add.ptr505.idx.1.4, !dbg !240
  %433 = load <4 x half>, ptr addrspace(3) %add.ptr505.1.4, align 8, !dbg !241
  %add490.2.4 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.2.4 = or disjoint i32 %add490.2.4, 128, !dbg !239
  %434 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.2.4, !dbg !240
  %xor501.2.4 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.2.4 = xor i32 %xor501.2.4, 16, !dbg !240
  %add.ptr505.2.4 = getelementptr inbounds i8, ptr addrspace(3) %434, i32 %add.ptr505.idx.2.4, !dbg !240
  %435 = load <4 x half>, ptr addrspace(3) %add.ptr505.2.4, align 8, !dbg !241
  %add490.3.4 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.3.4 = or disjoint i32 %add490.3.4, 192, !dbg !239
  %436 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.3.4, !dbg !240
  %xor501.3.4 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.3.4 = xor i32 %xor501.3.4, 24, !dbg !240
  %add.ptr505.3.4 = getelementptr inbounds i8, ptr addrspace(3) %436, i32 %add.ptr505.idx.3.4, !dbg !240
  %437 = load <4 x half>, ptr addrspace(3) %add.ptr505.3.4, align 8, !dbg !241
  %438 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %431, <4 x half> %397, <4 x float> %numerator.sroa.0.8), !dbg !242
  %439 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %433, <4 x half> %397, <4 x float> %numerator.sroa.98.8), !dbg !242
  %440 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %435, <4 x half> %397, <4 x float> %numerator.sroa.194.8), !dbg !242
  %441 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %437, <4 x half> %397, <4 x float> %numerator.sroa.290.8), !dbg !242
  %add390.4 = fadd contract float %denominator.sroa.0.1.4, %add386.4, !dbg !243
  br label %if.end531.4, !dbg !244

if.end531.4:                                      ; preds = %if.end436.3.4, %if.end531.3
  %numerator.sroa.290.9 = phi <4 x float> [ %numerator.sroa.290.7, %if.end531.3 ], [ %441, %if.end436.3.4 ], !dbg !81
  %numerator.sroa.194.9 = phi <4 x float> [ %numerator.sroa.194.7, %if.end531.3 ], [ %440, %if.end436.3.4 ], !dbg !81
  %numerator.sroa.98.9 = phi <4 x float> [ %numerator.sroa.98.7, %if.end531.3 ], [ %439, %if.end436.3.4 ], !dbg !81
  %numerator.sroa.0.9 = phi <4 x float> [ %numerator.sroa.0.7, %if.end531.3 ], [ %438, %if.end436.3.4 ], !dbg !81
  %maximum.sroa.0.2.4 = phi float [ %maximum.sroa.0.2.3, %if.end531.3 ], [ %maximum.sroa.0.1.4, %if.end436.3.4 ], !dbg !81
  %denominator.sroa.0.2.4 = phi float [ %denominator.sroa.0.2.3, %if.end531.3 ], [ %add390.4, %if.end436.3.4 ], !dbg !81
  %442 = or disjoint i64 %17, 5, !dbg !245
  %arrayidx80.5 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %442, !dbg !67
  %443 = load i32, ptr addrspace(1) %arrayidx80.5, align 4, !dbg !67, !tbaa !30
  %mul81.5 = shl nsw i32 %443, 4, !dbg !68
  %cmp82.5 = icmp slt i32 %443, 0, !dbg !69
  %cmp84.not.5 = icmp sgt i32 %mul81.5, %1
  %or.cond.5 = select i1 %cmp82.5, i1 true, i1 %cmp84.not.5, !dbg !70
  br i1 %or.cond.5, label %if.end531.5, label %if.then.5, !dbg !70

if.then.5:                                        ; preds = %if.end531.4
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %add91.5 = add nuw nsw i32 %mul81.5, %shr90
  %conv101.5 = zext nneg i32 %mul81.5 to i64
  %.idx.5 = shl nuw nsw i64 %conv101.5, 7
  %gep.5 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep883, i64 %.idx.5, !dbg !76
  %cmp94.5 = icmp ult i32 %add91.5, 1024, !dbg !77
  br i1 %cmp94.5, label %if.then95.5, label %if.end.5, !dbg !78

if.then95.5:                                      ; preds = %if.then.5
  %gep867.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.5, i64 %mul97
  %condval.sroa.7.0.add.ptr108.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep867.5, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep867.5, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep867.5, i64 4
  %condval.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %gep867.5, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.5, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.5, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.5, align 4, !dbg !79, !tbaa !30
  br label %if.end.5, !dbg !80

if.end.5:                                         ; preds = %if.then95.5, %if.then.5
  %condval.sroa.0.0.5 = phi i32 [ %condval.sroa.0.0.copyload.5, %if.then95.5 ], [ 0, %if.then.5 ], !dbg !81
  %condval.sroa.5.0.5 = phi i32 [ %condval.sroa.5.0.copyload.5, %if.then95.5 ], [ 0, %if.then.5 ], !dbg !81
  %condval.sroa.6.0.5 = phi i32 [ %condval.sroa.6.0.copyload.5, %if.then95.5 ], [ 0, %if.then.5 ], !dbg !81
  %condval.sroa.7.0.5 = phi i32 [ %condval.sroa.7.0.copyload.5, %if.then95.5 ], [ 0, %if.then.5 ], !dbg !81
  store i32 %condval.sroa.0.0.5, ptr addrspace(3) %invariant.gep856, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 4, !dbg !82
  store i32 %condval.sroa.5.0.5, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.5, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 8, !dbg !82
  store i32 %condval.sroa.6.0.5, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.5, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 12, !dbg !82
  store i32 %condval.sroa.7.0.5, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.5, align 4, !dbg !82, !tbaa !30
  %cmp94.1.5 = icmp ult i32 %add91.5, 1016, !dbg !77
  br i1 %cmp94.1.5, label %if.then95.1.5, label %if.end.1.5, !dbg !78

if.then95.1.5:                                    ; preds = %if.end.5
  %add100.1.5 = or disjoint i64 %mul97, 512
  %gep867.1.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.5, i64 %add100.1.5
  %condval.sroa.7.0.add.ptr108.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1.5, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1.5, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1.5, i64 4
  %condval.sroa.0.0.copyload.1.5 = load i32, ptr addrspace(4) %gep867.1.5, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.1.5 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.1.5, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.1.5 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.1.5, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.1.5 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.1.5, align 4, !dbg !79, !tbaa !30
  br label %if.end.1.5, !dbg !80

if.end.1.5:                                       ; preds = %if.then95.1.5, %if.end.5
  %condval.sroa.0.0.1.5 = phi i32 [ %condval.sroa.0.0.copyload.1.5, %if.then95.1.5 ], [ 0, %if.end.5 ], !dbg !81
  %condval.sroa.5.0.1.5 = phi i32 [ %condval.sroa.5.0.copyload.1.5, %if.then95.1.5 ], [ 0, %if.end.5 ], !dbg !81
  %condval.sroa.6.0.1.5 = phi i32 [ %condval.sroa.6.0.copyload.1.5, %if.then95.1.5 ], [ 0, %if.end.5 ], !dbg !81
  %condval.sroa.7.0.1.5 = phi i32 [ %condval.sroa.7.0.copyload.1.5, %if.then95.1.5 ], [ 0, %if.end.5 ], !dbg !81
  store i32 %condval.sroa.0.0.1.5, ptr addrspace(3) %gep857.1, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1028, !dbg !82
  store i32 %condval.sroa.5.0.1.5, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.1.5, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1032, !dbg !82
  store i32 %condval.sroa.6.0.1.5, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.1.5, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1036, !dbg !82
  store i32 %condval.sroa.7.0.1.5, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.1.5, align 4, !dbg !82, !tbaa !30
  fence syncscope("warp") release, !dbg !83
  tail call void @llvm.mxc.barrier.warp(), !dbg !86
  fence syncscope("warp") acquire, !dbg !87
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !88
  %444 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %6, <4 x float> zeroinitializer), !dbg !89
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !88
  %445 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %7, <4 x float> %444), !dbg !89
  %k_local.sroa.0.0.copyload.2.5 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !88
  %446 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.5, <4 x half> %8, <4 x float> %445), !dbg !89
  %k_local.sroa.0.0.copyload.3.5 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !88
  %447 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.5, <4 x half> %9, <4 x float> %446), !dbg !89
  %add194.5 = add nuw nsw i32 %mul81.5, %mul193
  %cmp197.not.5 = icmp sgt i32 %add194.5, %1, !dbg !90
  %scores.sroa.0.0.vec.extract2121 = extractelement <4 x float> %447, i64 0
  %spec.select3039 = select i1 %cmp197.not.5, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2121, !dbg !91
  %cmp197.not.1.5.not = icmp slt i32 %add194.5, %1, !dbg !90
  %scores.sroa.0.4.vec.extract2208 = extractelement <4 x float> %447, i64 1, !dbg !91
  %condval_1.0.1.5 = select i1 %cmp197.not.1.5.not, float %scores.sroa.0.4.vec.extract2208, float 0xFFF0000000000000, !dbg !91
  %add195.2.5 = or disjoint i32 %add194.5, 2, !dbg !92
  %cmp197.not.2.5 = icmp sgt i32 %add195.2.5, %1, !dbg !90
  %scores.sroa.0.8.vec.extract2285 = extractelement <4 x float> %447, i64 2, !dbg !91
  %condval_1.0.2.5 = select i1 %cmp197.not.2.5, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2285, !dbg !91
  %add195.3.5 = or disjoint i32 %add194.5, 3, !dbg !92
  %cmp197.not.3.5 = icmp sgt i32 %add195.3.5, %1, !dbg !90
  %scores.sroa.0.12.vec.extract2362 = extractelement <4 x float> %447, i64 3, !dbg !91
  %condval_1.0.3.5 = select i1 %cmp197.not.3.5, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2362, !dbg !91
  %448 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3039, float 0xFFF0000000000000), !dbg !93
  %449 = tail call contract noundef float @llvm.maxnum.f32(float %448, float %condval_1.0.1.5), !dbg !93
  %450 = tail call contract noundef float @llvm.maxnum.f32(float %449, float %condval_1.0.2.5), !dbg !93
  %451 = tail call contract noundef float @llvm.maxnum.f32(float %450, float %condval_1.0.3.5), !dbg !93
  %452 = bitcast float %451 to i32, !dbg !97
  %453 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %454 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %453) #11, !dbg !105
  %xor.i.i.5 = xor i32 %454, 32, !dbg !106
  %455 = and i32 %454, -64, !dbg !107
  %and.i.i.5 = add nsw i32 %455, 64, !dbg !107
  %cmp.not.i.i.5 = icmp slt i32 %xor.i.i.5, %and.i.i.5, !dbg !108
  %cond.i.i.5 = select i1 %cmp.not.i.i.5, i32 %xor.i.i.5, i32 %454, !dbg !109
  %shl.i.i.5 = shl i32 %cond.i.i.5, 2, !dbg !110
  %456 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.5, i32 %452), !dbg !111
  %457 = bitcast i32 %456 to float, !dbg !112
  %458 = tail call contract noundef float @llvm.maxnum.f32(float %451, float %457), !dbg !113
  %459 = bitcast float %458 to i32, !dbg !115
  %460 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !117
  %461 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %460) #11, !dbg !120
  %xor.i.i785.5 = xor i32 %461, 16, !dbg !121
  %462 = and i32 %461, -64, !dbg !122
  %and.i.i786.5 = add nsw i32 %462, 64, !dbg !122
  %cmp.not.i.i787.5 = icmp slt i32 %xor.i.i785.5, %and.i.i786.5, !dbg !123
  %cond.i.i788.5 = select i1 %cmp.not.i.i787.5, i32 %xor.i.i785.5, i32 %461, !dbg !124
  %shl.i.i789.5 = shl i32 %cond.i.i788.5, 2, !dbg !125
  %463 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i789.5, i32 %459), !dbg !126
  %464 = bitcast i32 %463 to float, !dbg !127
  %465 = tail call contract noundef float @llvm.maxnum.f32(float %458, float %464), !dbg !128
  %cmp237.5 = fcmp contract olt float %maximum.sroa.0.2.4, %465, !dbg !130
  br i1 %cmp237.5, label %if.then238.5, label %if.end282.5, !dbg !131

if.then238.5:                                     ; preds = %if.end.1.5
  %sub.5 = fsub contract float %maximum.sroa.0.2.4, %465, !dbg !132
  %mul241.5 = fmul contract float %sub.5, 0x3FC7154760000000, !dbg !133
  %cmp.i.i.5 = fcmp contract olt float %mul241.5, -1.260000e+02, !dbg !134
  %cond.i.i790.5 = select contract i1 %cmp.i.i.5, float 6.400000e+01, float 0.000000e+00, !dbg !134
  %add.i.i.5 = fadd contract float %mul241.5, %cond.i.i790.5, !dbg !134
  %466 = tail call contract float @llvm.exp2.f32(float %add.i.i.5), !dbg !134
  %cond2.i.i.5 = select contract i1 %cmp.i.i.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !134
  %mul.i.i.5 = fmul contract float %cond2.i.i.5, %466, !dbg !134
  %numerator.sroa.0.0.vec.extract2407 = extractelement <4 x float> %numerator.sroa.0.9, i64 0, !dbg !246
  %numerator.sroa.0.4.vec.extract2444 = extractelement <4 x float> %numerator.sroa.0.9, i64 1, !dbg !246
  %numerator.sroa.0.8.vec.extract2481 = extractelement <4 x float> %numerator.sroa.0.9, i64 2, !dbg !246
  %numerator.sroa.0.12.vec.extract2518 = extractelement <4 x float> %numerator.sroa.0.9, i64 3, !dbg !246
  %mul258.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.0.vec.extract2407, !dbg !137
  %mul261.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.4.vec.extract2444, !dbg !247
  %mul264.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.8.vec.extract2481, !dbg !248
  %mul267.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.12.vec.extract2518, !dbg !249
  %numerator.sroa.0.0.vec.insert2409 = insertelement <4 x float> poison, float %mul258.5, i64 0, !dbg !138
  %numerator.sroa.0.4.vec.insert2446 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2409, float %mul261.5, i64 1, !dbg !138
  %numerator.sroa.0.8.vec.insert2483 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2446, float %mul264.5, i64 2, !dbg !138
  %numerator.sroa.0.12.vec.insert2520 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2483, float %mul267.5, i64 3, !dbg !138
  %numerator.sroa.98.16.vec.extract2563 = extractelement <4 x float> %numerator.sroa.98.9, i64 0, !dbg !246
  %numerator.sroa.98.20.vec.extract2600 = extractelement <4 x float> %numerator.sroa.98.9, i64 1, !dbg !246
  %numerator.sroa.98.24.vec.extract2637 = extractelement <4 x float> %numerator.sroa.98.9, i64 2, !dbg !246
  %numerator.sroa.98.28.vec.extract2674 = extractelement <4 x float> %numerator.sroa.98.9, i64 3, !dbg !246
  %mul258.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.16.vec.extract2563, !dbg !137
  %mul261.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.20.vec.extract2600, !dbg !247
  %mul264.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.24.vec.extract2637, !dbg !248
  %mul267.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.28.vec.extract2674, !dbg !249
  %numerator.sroa.98.16.vec.insert2565 = insertelement <4 x float> poison, float %mul258.1.5, i64 0, !dbg !138
  %numerator.sroa.98.20.vec.insert2602 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2565, float %mul261.1.5, i64 1, !dbg !138
  %numerator.sroa.98.24.vec.insert2639 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2602, float %mul264.1.5, i64 2, !dbg !138
  %numerator.sroa.98.28.vec.insert2676 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2639, float %mul267.1.5, i64 3, !dbg !138
  %numerator.sroa.194.32.vec.extract2719 = extractelement <4 x float> %numerator.sroa.194.9, i64 0, !dbg !246
  %numerator.sroa.194.36.vec.extract2756 = extractelement <4 x float> %numerator.sroa.194.9, i64 1, !dbg !246
  %numerator.sroa.194.40.vec.extract2793 = extractelement <4 x float> %numerator.sroa.194.9, i64 2, !dbg !246
  %numerator.sroa.194.44.vec.extract2830 = extractelement <4 x float> %numerator.sroa.194.9, i64 3, !dbg !246
  %mul258.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.32.vec.extract2719, !dbg !137
  %mul261.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.36.vec.extract2756, !dbg !247
  %mul264.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.40.vec.extract2793, !dbg !248
  %mul267.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.44.vec.extract2830, !dbg !249
  %numerator.sroa.194.32.vec.insert2721 = insertelement <4 x float> poison, float %mul258.2.5, i64 0, !dbg !138
  %numerator.sroa.194.36.vec.insert2758 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2721, float %mul261.2.5, i64 1, !dbg !138
  %numerator.sroa.194.40.vec.insert2795 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2758, float %mul264.2.5, i64 2, !dbg !138
  %numerator.sroa.194.44.vec.insert2832 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2795, float %mul267.2.5, i64 3, !dbg !138
  %numerator.sroa.290.48.vec.extract2875 = extractelement <4 x float> %numerator.sroa.290.9, i64 0, !dbg !246
  %numerator.sroa.290.52.vec.extract2912 = extractelement <4 x float> %numerator.sroa.290.9, i64 1, !dbg !246
  %numerator.sroa.290.56.vec.extract2949 = extractelement <4 x float> %numerator.sroa.290.9, i64 2, !dbg !246
  %numerator.sroa.290.60.vec.extract2986 = extractelement <4 x float> %numerator.sroa.290.9, i64 3, !dbg !246
  %mul258.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.48.vec.extract2875, !dbg !137
  %mul261.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.52.vec.extract2912, !dbg !247
  %mul264.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.56.vec.extract2949, !dbg !248
  %mul267.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.60.vec.extract2986, !dbg !249
  %numerator.sroa.290.48.vec.insert2877 = insertelement <4 x float> poison, float %mul258.3.5, i64 0, !dbg !138
  %numerator.sroa.290.52.vec.insert2914 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2877, float %mul261.3.5, i64 1, !dbg !138
  %numerator.sroa.290.56.vec.insert2951 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2914, float %mul264.3.5, i64 2, !dbg !138
  %numerator.sroa.290.60.vec.insert2988 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2951, float %mul267.3.5, i64 3, !dbg !138
  %mul278.5 = fmul contract float %denominator.sroa.0.2.4, %mul.i.i.5, !dbg !250
  br label %if.end282.5, !dbg !139

if.end282.5:                                      ; preds = %if.then238.5, %if.end.1.5
  %numerator.sroa.290.10 = phi <4 x float> [ %numerator.sroa.290.60.vec.insert2988, %if.then238.5 ], [ %numerator.sroa.290.9, %if.end.1.5 ], !dbg !81
  %numerator.sroa.194.10 = phi <4 x float> [ %numerator.sroa.194.44.vec.insert2832, %if.then238.5 ], [ %numerator.sroa.194.9, %if.end.1.5 ], !dbg !81
  %numerator.sroa.98.10 = phi <4 x float> [ %numerator.sroa.98.28.vec.insert2676, %if.then238.5 ], [ %numerator.sroa.98.9, %if.end.1.5 ], !dbg !81
  %numerator.sroa.0.10 = phi <4 x float> [ %numerator.sroa.0.12.vec.insert2520, %if.then238.5 ], [ %numerator.sroa.0.9, %if.end.1.5 ], !dbg !81
  %maximum.sroa.0.1.5 = phi float [ %465, %if.then238.5 ], [ %maximum.sroa.0.2.4, %if.end.1.5 ], !dbg !81
  %denominator.sroa.0.1.5 = phi float [ %mul278.5, %if.then238.5 ], [ %denominator.sroa.0.2.4, %if.end.1.5 ], !dbg !81
  %sub292.5 = fsub contract float %spec.select3039, %maximum.sroa.0.1.5, !dbg !140
  %sub296.5 = fsub contract float %condval_1.0.1.5, %maximum.sroa.0.1.5, !dbg !141
  %sub300.5 = fsub contract float %condval_1.0.2.5, %maximum.sroa.0.1.5, !dbg !142
  %sub304.5 = fsub contract float %condval_1.0.3.5, %maximum.sroa.0.1.5, !dbg !143
  %mul309.5 = fmul contract float %sub292.5, 0x3FC7154760000000, !dbg !144
  %mul313.5 = fmul contract float %sub296.5, 0x3FC7154760000000, !dbg !145
  %mul317.5 = fmul contract float %sub300.5, 0x3FC7154760000000, !dbg !146
  %mul321.5 = fmul contract float %sub304.5, 0x3FC7154760000000, !dbg !147
  %add326.5 = fadd contract float %mul309.5, 8.000000e+00, !dbg !148
  %add330.5 = fadd contract float %mul313.5, 8.000000e+00, !dbg !149
  %add334.5 = fadd contract float %mul317.5, 8.000000e+00, !dbg !150
  %add338.5 = fadd contract float %mul321.5, 8.000000e+00, !dbg !151
  %cmp.i.i799.5 = fcmp contract olt float %add326.5, -1.260000e+02, !dbg !152
  %cond.i.i800.5 = select contract i1 %cmp.i.i799.5, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i801.5 = fadd contract float %add326.5, %cond.i.i800.5, !dbg !152
  %467 = tail call contract float @llvm.exp2.f32(float %add.i.i801.5), !dbg !152
  %cond2.i.i802.5 = select contract i1 %cmp.i.i799.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i803.5 = fmul contract float %cond2.i.i802.5, %467, !dbg !152
  %cmp.i.i804.5 = fcmp contract olt float %add330.5, -1.260000e+02, !dbg !154
  %cond.i.i805.5 = select contract i1 %cmp.i.i804.5, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i806.5 = fadd contract float %add330.5, %cond.i.i805.5, !dbg !154
  %468 = tail call contract float @llvm.exp2.f32(float %add.i.i806.5), !dbg !154
  %cond2.i.i807.5 = select contract i1 %cmp.i.i804.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i808.5 = fmul contract float %cond2.i.i807.5, %468, !dbg !154
  %cmp.i.i809.5 = fcmp contract olt float %add334.5, -1.260000e+02, !dbg !156
  %cond.i.i810.5 = select contract i1 %cmp.i.i809.5, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i811.5 = fadd contract float %add334.5, %cond.i.i810.5, !dbg !156
  %469 = tail call contract float @llvm.exp2.f32(float %add.i.i811.5), !dbg !156
  %cond2.i.i812.5 = select contract i1 %cmp.i.i809.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i813.5 = fmul contract float %cond2.i.i812.5, %469, !dbg !156
  %cmp.i.i814.5 = fcmp contract olt float %add338.5, -1.260000e+02, !dbg !158
  %cond.i.i815.5 = select contract i1 %cmp.i.i814.5, float 6.400000e+01, float 0.000000e+00, !dbg !158
  %add.i.i816.5 = fadd contract float %add338.5, %cond.i.i815.5, !dbg !158
  %470 = tail call contract float @llvm.exp2.f32(float %add.i.i816.5), !dbg !158
  %cond2.i.i817.5 = select contract i1 %cmp.i.i814.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !158
  %mul.i.i818.5 = fmul contract float %cond2.i.i817.5, %470, !dbg !158
  %471 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !160, !noalias !168
  %472 = fptrunc float %mul.i.i803.5 to half, !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %471), !dbg !160, !noalias !168
  %473 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !168
  %474 = fptrunc float %mul.i.i808.5 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %473), !dbg !173, !noalias !168
  %475 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !175, !noalias !179
  %476 = fptrunc float %mul.i.i813.5 to half, !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %475), !dbg !175, !noalias !179
  %477 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !184, !noalias !179
  %478 = fptrunc float %mul.i.i818.5 to half, !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %477), !dbg !184, !noalias !179
  %479 = insertelement <4 x half> poison, half %472, i64 0, !dbg !186
  %480 = insertelement <4 x half> %479, half %474, i64 1, !dbg !186
  %481 = insertelement <4 x half> %480, half %476, i64 2, !dbg !186
  %482 = insertelement <4 x half> %481, half %478, i64 3, !dbg !186
  %conv.i.i.5 = fpext half %472 to float, !dbg !187
  %add373.5 = fadd contract float %conv.i.i.5, 0.000000e+00, !dbg !192
  %conv.i.i.1.5 = fpext half %474 to float, !dbg !187
  %add373.1.5 = fadd contract float %add373.5, %conv.i.i.1.5, !dbg !192
  %conv.i.i.2.5 = fpext half %476 to float, !dbg !187
  %add373.2.5 = fadd contract float %add373.1.5, %conv.i.i.2.5, !dbg !192
  %conv.i.i.3.5 = fpext half %478 to float, !dbg !187
  %add373.3.5 = fadd contract float %add373.2.5, %conv.i.i.3.5, !dbg !192
  %483 = bitcast float %add373.3.5 to i32, !dbg !193
  %484 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !195
  %485 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %484) #11, !dbg !198
  %xor.i.i820.5 = xor i32 %485, 32, !dbg !199
  %486 = and i32 %485, -64, !dbg !200
  %and.i.i821.5 = add nsw i32 %486, 64, !dbg !200
  %cmp.not.i.i822.5 = icmp slt i32 %xor.i.i820.5, %and.i.i821.5, !dbg !201
  %cond.i.i823.5 = select i1 %cmp.not.i.i822.5, i32 %xor.i.i820.5, i32 %485, !dbg !202
  %shl.i.i824.5 = shl i32 %cond.i.i823.5, 2, !dbg !203
  %487 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i824.5, i32 %483), !dbg !204
  %488 = bitcast i32 %487 to float, !dbg !205
  %add381.5 = fadd contract float %add373.3.5, %488, !dbg !206
  %489 = bitcast float %add381.5 to i32, !dbg !207
  %490 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !209
  %491 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %490) #11, !dbg !212
  %xor.i.i825.5 = xor i32 %491, 16, !dbg !213
  %492 = and i32 %491, -64, !dbg !214
  %and.i.i826.5 = add nsw i32 %492, 64, !dbg !214
  %cmp.not.i.i827.5 = icmp slt i32 %xor.i.i825.5, %and.i.i826.5, !dbg !215
  %cond.i.i828.5 = select i1 %cmp.not.i.i827.5, i32 %xor.i.i825.5, i32 %491, !dbg !216
  %shl.i.i829.5 = shl i32 %cond.i.i828.5, 2, !dbg !217
  %493 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i829.5, i32 %489), !dbg !218
  %494 = bitcast i32 %493 to float, !dbg !219
  %add386.5 = fadd contract float %add381.5, %494, !dbg !220
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %shr399.5 = lshr exact i32 %mul81.5, 2
  %add400.5 = add nuw nsw i32 %shr399.5, %shr397
  %cmp401.5 = icmp ult i32 %add400.5, 256
  br i1 %cmp401.5, label %if.then402.5, label %if.end436.5, !dbg !226

if.then402.5:                                     ; preds = %if.end282.5
  %495 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %496 = getelementptr inbounds i8, ptr addrspace(4) %495, i64 %.idx.5, !dbg !227
  %condval_2.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %496, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %496, i64 4, !dbg !228
  %condval_2.sroa.5.0.copyload.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.5, align 4, !dbg !228, !tbaa !30
  br label %if.end436.5, !dbg !229

if.end436.5:                                      ; preds = %if.then402.5, %if.end282.5
  %condval_2.sroa.0.0.5 = phi i32 [ %condval_2.sroa.0.0.copyload.5, %if.then402.5 ], [ 0, %if.end282.5 ], !dbg !81
  %condval_2.sroa.5.0.5 = phi i32 [ %condval_2.sroa.5.0.copyload.5, %if.then402.5 ], [ 0, %if.end282.5 ], !dbg !81
  br i1 %cmp401.5, label %if.then402.1.5, label %if.end436.1.5, !dbg !226

if.then402.1.5:                                   ; preds = %if.end436.5
  %497 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %498 = getelementptr inbounds i8, ptr addrspace(4) %497, i64 %.idx.5, !dbg !227
  %add.ptr422.1.5 = getelementptr inbounds i8, ptr addrspace(4) %498, i64 128, !dbg !227
  %condval_2.sroa.0.0.copyload.1.5 = load i32, ptr addrspace(4) %add.ptr422.1.5, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %498, i64 132, !dbg !228
  %condval_2.sroa.5.0.copyload.1.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.1.5, align 4, !dbg !228, !tbaa !30
  br label %if.end436.1.5, !dbg !229

if.end436.1.5:                                    ; preds = %if.then402.1.5, %if.end436.5
  %condval_2.sroa.0.0.1.5 = phi i32 [ %condval_2.sroa.0.0.copyload.1.5, %if.then402.1.5 ], [ 0, %if.end436.5 ], !dbg !81
  %condval_2.sroa.5.0.1.5 = phi i32 [ %condval_2.sroa.5.0.copyload.1.5, %if.then402.1.5 ], [ 0, %if.end436.5 ], !dbg !81
  br i1 %cmp401.5, label %if.then402.2.5, label %if.end436.2.5, !dbg !226

if.then402.2.5:                                   ; preds = %if.end436.1.5
  %499 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %500 = getelementptr inbounds i8, ptr addrspace(4) %499, i64 %.idx.5, !dbg !227
  %add.ptr422.2.5 = getelementptr inbounds i8, ptr addrspace(4) %500, i64 256, !dbg !227
  %condval_2.sroa.0.0.copyload.2.5 = load i32, ptr addrspace(4) %add.ptr422.2.5, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.2.5 = getelementptr inbounds i8, ptr addrspace(4) %500, i64 260, !dbg !228
  %condval_2.sroa.5.0.copyload.2.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.2.5, align 4, !dbg !228, !tbaa !30
  br label %if.end436.2.5, !dbg !229

if.end436.2.5:                                    ; preds = %if.then402.2.5, %if.end436.1.5
  %condval_2.sroa.0.0.2.5 = phi i32 [ %condval_2.sroa.0.0.copyload.2.5, %if.then402.2.5 ], [ 0, %if.end436.1.5 ], !dbg !81
  %condval_2.sroa.5.0.2.5 = phi i32 [ %condval_2.sroa.5.0.copyload.2.5, %if.then402.2.5 ], [ 0, %if.end436.1.5 ], !dbg !81
  br i1 %cmp401.5, label %if.then402.3.5, label %if.end436.3.5, !dbg !226

if.then402.3.5:                                   ; preds = %if.end436.2.5
  %501 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %502 = getelementptr inbounds i8, ptr addrspace(4) %501, i64 %.idx.5, !dbg !227
  %add.ptr422.3.5 = getelementptr inbounds i8, ptr addrspace(4) %502, i64 384, !dbg !227
  %condval_2.sroa.0.0.copyload.3.5 = load i32, ptr addrspace(4) %add.ptr422.3.5, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.3.5 = getelementptr inbounds i8, ptr addrspace(4) %502, i64 388, !dbg !228
  %condval_2.sroa.5.0.copyload.3.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.3.5, align 4, !dbg !228, !tbaa !30
  br label %if.end436.3.5, !dbg !229

if.end436.3.5:                                    ; preds = %if.then402.3.5, %if.end436.2.5
  %condval_2.sroa.0.0.3.5 = phi i32 [ %condval_2.sroa.0.0.copyload.3.5, %if.then402.3.5 ], [ 0, %if.end436.2.5 ], !dbg !81
  %condval_2.sroa.5.0.3.5 = phi i32 [ %condval_2.sroa.5.0.copyload.3.5, %if.then402.3.5 ], [ 0, %if.end436.2.5 ], !dbg !81
  %503 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul466, !dbg !230
  %add.ptr478.idx.5 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.5 = getelementptr inbounds i8, ptr addrspace(3) %503, i32 %add.ptr478.idx.5, !dbg !230
  %504 = and i32 %condval_2.sroa.0.0.3.5, 65535, !dbg !231
  %v_column.sroa.130.0.insert.ext1592 = zext nneg i32 %504 to i64, !dbg !231
  %v_column.sroa.130.0.insert.shift1593 = shl nuw i64 %v_column.sroa.130.0.insert.ext1592, 48, !dbg !231
  %505 = and i32 %condval_2.sroa.0.0.2.5, 65535, !dbg !231
  %v_column.sroa.98.0.insert.ext1437 = zext nneg i32 %505 to i64, !dbg !231
  %v_column.sroa.98.0.insert.shift1438 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1437, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1440 = or disjoint i64 %v_column.sroa.130.0.insert.shift1593, %v_column.sroa.98.0.insert.shift1438, !dbg !231
  %506 = shl i32 %condval_2.sroa.0.0.1.5, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1283 = zext i32 %506 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1285 = or disjoint i64 %v_column.sroa.98.0.insert.insert1440, %v_column.sroa.66.0.insert.shift1283, !dbg !231
  %507 = and i32 %condval_2.sroa.0.0.5, 65535, !dbg !231
  %v_column.sroa.0.0.insert.ext1139 = zext nneg i32 %507 to i64, !dbg !231
  %v_column.sroa.0.0.insert.insert1141 = or disjoint i64 %v_column.sroa.66.0.insert.insert1285, %v_column.sroa.0.0.insert.ext1139, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1141, ptr addrspace(3) %add.ptr478.5, align 8, !dbg !231
  %v_fetch.sroa.0.2.extract.shift1738 = lshr i32 %condval_2.sroa.0.0.5, 16, !dbg !232
  %v_fetch.sroa.0.2.extract.trunc1739 = zext nneg i32 %v_fetch.sroa.0.2.extract.shift1738 to i64, !dbg !232
  %v_fetch.sroa.50.10.extract.shift1808 = and i32 %condval_2.sroa.0.0.1.5, -65536, !dbg !231
  %v_fetch.sroa.98.18.extract.shift1878 = lshr i32 %condval_2.sroa.0.0.2.5, 16, !dbg !232
  %v_fetch.sroa.98.18.extract.trunc1879 = zext nneg i32 %v_fetch.sroa.98.18.extract.shift1878 to i64, !dbg !232
  %v_fetch.sroa.146.26.extract.shift1948 = lshr i32 %condval_2.sroa.0.0.3.5, 16, !dbg !232
  %v_fetch.sroa.146.26.extract.trunc1949 = zext nneg i32 %v_fetch.sroa.146.26.extract.shift1948 to i64, !dbg !232
  %add467.1.5 = or disjoint i32 %mul466, 256, !dbg !233
  %508 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.1.5, !dbg !230
  %xor474.1.5 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.1.5 = xor i32 %xor474.1.5, 8, !dbg !230
  %add.ptr478.1.5 = getelementptr inbounds i8, ptr addrspace(3) %508, i32 %add.ptr478.idx.1.5, !dbg !230
  %v_column.sroa.130.0.insert.shift1598 = shl nuw i64 %v_fetch.sroa.146.26.extract.trunc1949, 48, !dbg !231
  %v_column.sroa.98.0.insert.shift1443 = shl nuw nsw i64 %v_fetch.sroa.98.18.extract.trunc1879, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1445 = or disjoint i64 %v_column.sroa.130.0.insert.shift1598, %v_column.sroa.98.0.insert.shift1443, !dbg !231
  %v_column.sroa.66.0.insert.shift1288 = zext i32 %v_fetch.sroa.50.10.extract.shift1808 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1290 = or disjoint i64 %v_column.sroa.98.0.insert.insert1445, %v_column.sroa.66.0.insert.shift1288, !dbg !231
  %v_column.sroa.0.0.insert.insert1145 = or disjoint i64 %v_column.sroa.66.0.insert.insert1290, %v_fetch.sroa.0.2.extract.trunc1739, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1145, ptr addrspace(3) %add.ptr478.1.5, align 8, !dbg !231
  %add467.2.5 = or disjoint i32 %mul466, 512, !dbg !233
  %509 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.2.5, !dbg !230
  %xor474.2.5 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.2.5 = xor i32 %xor474.2.5, 16, !dbg !230
  %add.ptr478.2.5 = getelementptr inbounds i8, ptr addrspace(3) %509, i32 %add.ptr478.idx.2.5, !dbg !230
  %510 = and i32 %condval_2.sroa.5.0.3.5, 65535, !dbg !231
  %v_column.sroa.130.0.insert.ext1602 = zext nneg i32 %510 to i64, !dbg !231
  %v_column.sroa.130.0.insert.shift1603 = shl nuw i64 %v_column.sroa.130.0.insert.ext1602, 48, !dbg !231
  %511 = and i32 %condval_2.sroa.5.0.2.5, 65535, !dbg !231
  %v_column.sroa.98.0.insert.ext1447 = zext nneg i32 %511 to i64, !dbg !231
  %v_column.sroa.98.0.insert.shift1448 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1447, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1450 = or disjoint i64 %v_column.sroa.130.0.insert.shift1603, %v_column.sroa.98.0.insert.shift1448, !dbg !231
  %512 = shl i32 %condval_2.sroa.5.0.1.5, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1293 = zext i32 %512 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1295 = or disjoint i64 %v_column.sroa.98.0.insert.insert1450, %v_column.sroa.66.0.insert.shift1293, !dbg !231
  %513 = and i32 %condval_2.sroa.5.0.5, 65535, !dbg !231
  %v_column.sroa.0.0.insert.ext1147 = zext nneg i32 %513 to i64, !dbg !231
  %v_column.sroa.0.0.insert.insert1149 = or disjoint i64 %v_column.sroa.66.0.insert.insert1295, %v_column.sroa.0.0.insert.ext1147, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1149, ptr addrspace(3) %add.ptr478.2.5, align 8, !dbg !231
  %v_fetch.sroa.26.6.extract.shift1773 = lshr i32 %condval_2.sroa.5.0.5, 16, !dbg !232
  %v_fetch.sroa.26.6.extract.trunc1774 = zext nneg i32 %v_fetch.sroa.26.6.extract.shift1773 to i64, !dbg !232
  %v_fetch.sroa.74.14.extract.shift1843 = and i32 %condval_2.sroa.5.0.1.5, -65536, !dbg !231
  %v_fetch.sroa.122.22.extract.shift1913 = lshr i32 %condval_2.sroa.5.0.2.5, 16, !dbg !232
  %v_fetch.sroa.122.22.extract.trunc1914 = zext nneg i32 %v_fetch.sroa.122.22.extract.shift1913 to i64, !dbg !232
  %v_fetch.sroa.170.30.extract.shift1983 = lshr i32 %condval_2.sroa.5.0.3.5, 16, !dbg !232
  %v_fetch.sroa.170.30.extract.trunc1984 = zext nneg i32 %v_fetch.sroa.170.30.extract.shift1983 to i64, !dbg !232
  %add467.3.5 = or disjoint i32 %mul466, 768, !dbg !233
  %514 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.3.5, !dbg !230
  %xor474.3.5 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.3.5 = xor i32 %xor474.3.5, 24, !dbg !230
  %add.ptr478.3.5 = getelementptr inbounds i8, ptr addrspace(3) %514, i32 %add.ptr478.idx.3.5, !dbg !230
  %v_column.sroa.130.0.insert.shift1608 = shl nuw i64 %v_fetch.sroa.170.30.extract.trunc1984, 48, !dbg !231
  %v_column.sroa.98.0.insert.shift1453 = shl nuw nsw i64 %v_fetch.sroa.122.22.extract.trunc1914, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1455 = or disjoint i64 %v_column.sroa.130.0.insert.shift1608, %v_column.sroa.98.0.insert.shift1453, !dbg !231
  %v_column.sroa.66.0.insert.shift1298 = zext i32 %v_fetch.sroa.74.14.extract.shift1843 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1300 = or disjoint i64 %v_column.sroa.98.0.insert.insert1455, %v_column.sroa.66.0.insert.shift1298, !dbg !231
  %v_column.sroa.0.0.insert.insert1153 = or disjoint i64 %v_column.sroa.66.0.insert.insert1300, %v_fetch.sroa.26.6.extract.trunc1774, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1153, ptr addrspace(3) %add.ptr478.3.5, align 8, !dbg !231
  fence syncscope("warp") release, !dbg !234
  tail call void @llvm.mxc.barrier.warp(), !dbg !237
  fence syncscope("warp") acquire, !dbg !238
  %add495.5 = or disjoint i32 %mul488, %mul494, !dbg !239
  %515 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.5, !dbg !240
  %add.ptr505.idx.5 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.5 = getelementptr inbounds i8, ptr addrspace(3) %515, i32 %add.ptr505.idx.5, !dbg !240
  %516 = load <4 x half>, ptr addrspace(3) %add.ptr505.5, align 8, !dbg !241
  %add490.1.5 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.1.5 = or disjoint i32 %add490.1.5, 64, !dbg !239
  %517 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.1.5, !dbg !240
  %xor501.1.5 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.1.5 = xor i32 %xor501.1.5, 8, !dbg !240
  %add.ptr505.1.5 = getelementptr inbounds i8, ptr addrspace(3) %517, i32 %add.ptr505.idx.1.5, !dbg !240
  %518 = load <4 x half>, ptr addrspace(3) %add.ptr505.1.5, align 8, !dbg !241
  %add490.2.5 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.2.5 = or disjoint i32 %add490.2.5, 128, !dbg !239
  %519 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.2.5, !dbg !240
  %xor501.2.5 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.2.5 = xor i32 %xor501.2.5, 16, !dbg !240
  %add.ptr505.2.5 = getelementptr inbounds i8, ptr addrspace(3) %519, i32 %add.ptr505.idx.2.5, !dbg !240
  %520 = load <4 x half>, ptr addrspace(3) %add.ptr505.2.5, align 8, !dbg !241
  %add490.3.5 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.3.5 = or disjoint i32 %add490.3.5, 192, !dbg !239
  %521 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.3.5, !dbg !240
  %xor501.3.5 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.3.5 = xor i32 %xor501.3.5, 24, !dbg !240
  %add.ptr505.3.5 = getelementptr inbounds i8, ptr addrspace(3) %521, i32 %add.ptr505.idx.3.5, !dbg !240
  %522 = load <4 x half>, ptr addrspace(3) %add.ptr505.3.5, align 8, !dbg !241
  %523 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %516, <4 x half> %482, <4 x float> %numerator.sroa.0.10), !dbg !242
  %524 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %518, <4 x half> %482, <4 x float> %numerator.sroa.98.10), !dbg !242
  %525 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %520, <4 x half> %482, <4 x float> %numerator.sroa.194.10), !dbg !242
  %526 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %522, <4 x half> %482, <4 x float> %numerator.sroa.290.10), !dbg !242
  %add390.5 = fadd contract float %denominator.sroa.0.1.5, %add386.5, !dbg !243
  br label %if.end531.5, !dbg !244

if.end531.5:                                      ; preds = %if.end436.3.5, %if.end531.4
  %numerator.sroa.290.11 = phi <4 x float> [ %numerator.sroa.290.9, %if.end531.4 ], [ %526, %if.end436.3.5 ], !dbg !81
  %numerator.sroa.194.11 = phi <4 x float> [ %numerator.sroa.194.9, %if.end531.4 ], [ %525, %if.end436.3.5 ], !dbg !81
  %numerator.sroa.98.11 = phi <4 x float> [ %numerator.sroa.98.9, %if.end531.4 ], [ %524, %if.end436.3.5 ], !dbg !81
  %numerator.sroa.0.11 = phi <4 x float> [ %numerator.sroa.0.9, %if.end531.4 ], [ %523, %if.end436.3.5 ], !dbg !81
  %maximum.sroa.0.2.5 = phi float [ %maximum.sroa.0.2.4, %if.end531.4 ], [ %maximum.sroa.0.1.5, %if.end436.3.5 ], !dbg !81
  %denominator.sroa.0.2.5 = phi float [ %denominator.sroa.0.2.4, %if.end531.4 ], [ %add390.5, %if.end436.3.5 ], !dbg !81
  %527 = or disjoint i64 %17, 6, !dbg !245
  %arrayidx80.6 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %527, !dbg !67
  %528 = load i32, ptr addrspace(1) %arrayidx80.6, align 4, !dbg !67, !tbaa !30
  %mul81.6 = shl nsw i32 %528, 4, !dbg !68
  %cmp82.6 = icmp slt i32 %528, 0, !dbg !69
  %cmp84.not.6 = icmp sgt i32 %mul81.6, %1
  %or.cond.6 = select i1 %cmp82.6, i1 true, i1 %cmp84.not.6, !dbg !70
  br i1 %or.cond.6, label %if.end531.6, label %if.then.6, !dbg !70

if.then.6:                                        ; preds = %if.end531.5
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %add91.6 = add nuw nsw i32 %mul81.6, %shr90
  %conv101.6 = zext nneg i32 %mul81.6 to i64
  %.idx.6 = shl nuw nsw i64 %conv101.6, 7
  %gep.6 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep883, i64 %.idx.6, !dbg !76
  %cmp94.6 = icmp ult i32 %add91.6, 1024, !dbg !77
  br i1 %cmp94.6, label %if.then95.6, label %if.end.6, !dbg !78

if.then95.6:                                      ; preds = %if.then.6
  %gep867.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.6, i64 %mul97
  %condval.sroa.7.0.add.ptr108.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep867.6, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep867.6, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep867.6, i64 4
  %condval.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %gep867.6, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.6, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.6, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.6, align 4, !dbg !79, !tbaa !30
  br label %if.end.6, !dbg !80

if.end.6:                                         ; preds = %if.then95.6, %if.then.6
  %condval.sroa.0.0.6 = phi i32 [ %condval.sroa.0.0.copyload.6, %if.then95.6 ], [ 0, %if.then.6 ], !dbg !81
  %condval.sroa.5.0.6 = phi i32 [ %condval.sroa.5.0.copyload.6, %if.then95.6 ], [ 0, %if.then.6 ], !dbg !81
  %condval.sroa.6.0.6 = phi i32 [ %condval.sroa.6.0.copyload.6, %if.then95.6 ], [ 0, %if.then.6 ], !dbg !81
  %condval.sroa.7.0.6 = phi i32 [ %condval.sroa.7.0.copyload.6, %if.then95.6 ], [ 0, %if.then.6 ], !dbg !81
  store i32 %condval.sroa.0.0.6, ptr addrspace(3) %invariant.gep856, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 4, !dbg !82
  store i32 %condval.sroa.5.0.6, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.6, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 8, !dbg !82
  store i32 %condval.sroa.6.0.6, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.6, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 12, !dbg !82
  store i32 %condval.sroa.7.0.6, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.6, align 4, !dbg !82, !tbaa !30
  %cmp94.1.6 = icmp ult i32 %add91.6, 1016, !dbg !77
  br i1 %cmp94.1.6, label %if.then95.1.6, label %if.end.1.6, !dbg !78

if.then95.1.6:                                    ; preds = %if.end.6
  %add100.1.6 = or disjoint i64 %mul97, 512
  %gep867.1.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.6, i64 %add100.1.6
  %condval.sroa.7.0.add.ptr108.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1.6, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1.6, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1.6, i64 4
  %condval.sroa.0.0.copyload.1.6 = load i32, ptr addrspace(4) %gep867.1.6, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.1.6 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.1.6, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.1.6 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.1.6, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.1.6 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.1.6, align 4, !dbg !79, !tbaa !30
  br label %if.end.1.6, !dbg !80

if.end.1.6:                                       ; preds = %if.then95.1.6, %if.end.6
  %condval.sroa.0.0.1.6 = phi i32 [ %condval.sroa.0.0.copyload.1.6, %if.then95.1.6 ], [ 0, %if.end.6 ], !dbg !81
  %condval.sroa.5.0.1.6 = phi i32 [ %condval.sroa.5.0.copyload.1.6, %if.then95.1.6 ], [ 0, %if.end.6 ], !dbg !81
  %condval.sroa.6.0.1.6 = phi i32 [ %condval.sroa.6.0.copyload.1.6, %if.then95.1.6 ], [ 0, %if.end.6 ], !dbg !81
  %condval.sroa.7.0.1.6 = phi i32 [ %condval.sroa.7.0.copyload.1.6, %if.then95.1.6 ], [ 0, %if.end.6 ], !dbg !81
  store i32 %condval.sroa.0.0.1.6, ptr addrspace(3) %gep857.1, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1028, !dbg !82
  store i32 %condval.sroa.5.0.1.6, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.1.6, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1032, !dbg !82
  store i32 %condval.sroa.6.0.1.6, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.1.6, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1036, !dbg !82
  store i32 %condval.sroa.7.0.1.6, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.1.6, align 4, !dbg !82, !tbaa !30
  fence syncscope("warp") release, !dbg !83
  tail call void @llvm.mxc.barrier.warp(), !dbg !86
  fence syncscope("warp") acquire, !dbg !87
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !88
  %529 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %6, <4 x float> zeroinitializer), !dbg !89
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !88
  %530 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %7, <4 x float> %529), !dbg !89
  %k_local.sroa.0.0.copyload.2.6 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !88
  %531 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.6, <4 x half> %8, <4 x float> %530), !dbg !89
  %k_local.sroa.0.0.copyload.3.6 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !88
  %532 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.6, <4 x half> %9, <4 x float> %531), !dbg !89
  %add194.6 = add nuw nsw i32 %mul81.6, %mul193
  %cmp197.not.6 = icmp sgt i32 %add194.6, %1, !dbg !90
  %scores.sroa.0.0.vec.extract2131 = extractelement <4 x float> %532, i64 0
  %spec.select3040 = select i1 %cmp197.not.6, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2131, !dbg !91
  %cmp197.not.1.6.not = icmp slt i32 %add194.6, %1, !dbg !90
  %scores.sroa.0.4.vec.extract2214 = extractelement <4 x float> %532, i64 1, !dbg !91
  %condval_1.0.1.6 = select i1 %cmp197.not.1.6.not, float %scores.sroa.0.4.vec.extract2214, float 0xFFF0000000000000, !dbg !91
  %add195.2.6 = or disjoint i32 %add194.6, 2, !dbg !92
  %cmp197.not.2.6 = icmp sgt i32 %add195.2.6, %1, !dbg !90
  %scores.sroa.0.8.vec.extract2291 = extractelement <4 x float> %532, i64 2, !dbg !91
  %condval_1.0.2.6 = select i1 %cmp197.not.2.6, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2291, !dbg !91
  %add195.3.6 = or disjoint i32 %add194.6, 3, !dbg !92
  %cmp197.not.3.6 = icmp sgt i32 %add195.3.6, %1, !dbg !90
  %scores.sroa.0.12.vec.extract2368 = extractelement <4 x float> %532, i64 3, !dbg !91
  %condval_1.0.3.6 = select i1 %cmp197.not.3.6, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2368, !dbg !91
  %533 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3040, float 0xFFF0000000000000), !dbg !93
  %534 = tail call contract noundef float @llvm.maxnum.f32(float %533, float %condval_1.0.1.6), !dbg !93
  %535 = tail call contract noundef float @llvm.maxnum.f32(float %534, float %condval_1.0.2.6), !dbg !93
  %536 = tail call contract noundef float @llvm.maxnum.f32(float %535, float %condval_1.0.3.6), !dbg !93
  %537 = bitcast float %536 to i32, !dbg !97
  %538 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %539 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %538) #11, !dbg !105
  %xor.i.i.6 = xor i32 %539, 32, !dbg !106
  %540 = and i32 %539, -64, !dbg !107
  %and.i.i.6 = add nsw i32 %540, 64, !dbg !107
  %cmp.not.i.i.6 = icmp slt i32 %xor.i.i.6, %and.i.i.6, !dbg !108
  %cond.i.i.6 = select i1 %cmp.not.i.i.6, i32 %xor.i.i.6, i32 %539, !dbg !109
  %shl.i.i.6 = shl i32 %cond.i.i.6, 2, !dbg !110
  %541 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.6, i32 %537), !dbg !111
  %542 = bitcast i32 %541 to float, !dbg !112
  %543 = tail call contract noundef float @llvm.maxnum.f32(float %536, float %542), !dbg !113
  %544 = bitcast float %543 to i32, !dbg !115
  %545 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !117
  %546 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %545) #11, !dbg !120
  %xor.i.i785.6 = xor i32 %546, 16, !dbg !121
  %547 = and i32 %546, -64, !dbg !122
  %and.i.i786.6 = add nsw i32 %547, 64, !dbg !122
  %cmp.not.i.i787.6 = icmp slt i32 %xor.i.i785.6, %and.i.i786.6, !dbg !123
  %cond.i.i788.6 = select i1 %cmp.not.i.i787.6, i32 %xor.i.i785.6, i32 %546, !dbg !124
  %shl.i.i789.6 = shl i32 %cond.i.i788.6, 2, !dbg !125
  %548 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i789.6, i32 %544), !dbg !126
  %549 = bitcast i32 %548 to float, !dbg !127
  %550 = tail call contract noundef float @llvm.maxnum.f32(float %543, float %549), !dbg !128
  %cmp237.6 = fcmp contract olt float %maximum.sroa.0.2.5, %550, !dbg !130
  br i1 %cmp237.6, label %if.then238.6, label %if.end282.6, !dbg !131

if.then238.6:                                     ; preds = %if.end.1.6
  %sub.6 = fsub contract float %maximum.sroa.0.2.5, %550, !dbg !132
  %mul241.6 = fmul contract float %sub.6, 0x3FC7154760000000, !dbg !133
  %cmp.i.i.6 = fcmp contract olt float %mul241.6, -1.260000e+02, !dbg !134
  %cond.i.i790.6 = select contract i1 %cmp.i.i.6, float 6.400000e+01, float 0.000000e+00, !dbg !134
  %add.i.i.6 = fadd contract float %mul241.6, %cond.i.i790.6, !dbg !134
  %551 = tail call contract float @llvm.exp2.f32(float %add.i.i.6), !dbg !134
  %cond2.i.i.6 = select contract i1 %cmp.i.i.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !134
  %mul.i.i.6 = fmul contract float %cond2.i.i.6, %551, !dbg !134
  %numerator.sroa.0.0.vec.extract2411 = extractelement <4 x float> %numerator.sroa.0.11, i64 0, !dbg !246
  %numerator.sroa.0.4.vec.extract2448 = extractelement <4 x float> %numerator.sroa.0.11, i64 1, !dbg !246
  %numerator.sroa.0.8.vec.extract2485 = extractelement <4 x float> %numerator.sroa.0.11, i64 2, !dbg !246
  %numerator.sroa.0.12.vec.extract2522 = extractelement <4 x float> %numerator.sroa.0.11, i64 3, !dbg !246
  %mul258.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.0.vec.extract2411, !dbg !137
  %mul261.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.4.vec.extract2448, !dbg !247
  %mul264.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.8.vec.extract2485, !dbg !248
  %mul267.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.12.vec.extract2522, !dbg !249
  %numerator.sroa.0.0.vec.insert2413 = insertelement <4 x float> poison, float %mul258.6, i64 0, !dbg !138
  %numerator.sroa.0.4.vec.insert2450 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2413, float %mul261.6, i64 1, !dbg !138
  %numerator.sroa.0.8.vec.insert2487 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2450, float %mul264.6, i64 2, !dbg !138
  %numerator.sroa.0.12.vec.insert2524 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2487, float %mul267.6, i64 3, !dbg !138
  %numerator.sroa.98.16.vec.extract2567 = extractelement <4 x float> %numerator.sroa.98.11, i64 0, !dbg !246
  %numerator.sroa.98.20.vec.extract2604 = extractelement <4 x float> %numerator.sroa.98.11, i64 1, !dbg !246
  %numerator.sroa.98.24.vec.extract2641 = extractelement <4 x float> %numerator.sroa.98.11, i64 2, !dbg !246
  %numerator.sroa.98.28.vec.extract2678 = extractelement <4 x float> %numerator.sroa.98.11, i64 3, !dbg !246
  %mul258.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.16.vec.extract2567, !dbg !137
  %mul261.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.20.vec.extract2604, !dbg !247
  %mul264.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.24.vec.extract2641, !dbg !248
  %mul267.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.28.vec.extract2678, !dbg !249
  %numerator.sroa.98.16.vec.insert2569 = insertelement <4 x float> poison, float %mul258.1.6, i64 0, !dbg !138
  %numerator.sroa.98.20.vec.insert2606 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2569, float %mul261.1.6, i64 1, !dbg !138
  %numerator.sroa.98.24.vec.insert2643 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2606, float %mul264.1.6, i64 2, !dbg !138
  %numerator.sroa.98.28.vec.insert2680 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2643, float %mul267.1.6, i64 3, !dbg !138
  %numerator.sroa.194.32.vec.extract2723 = extractelement <4 x float> %numerator.sroa.194.11, i64 0, !dbg !246
  %numerator.sroa.194.36.vec.extract2760 = extractelement <4 x float> %numerator.sroa.194.11, i64 1, !dbg !246
  %numerator.sroa.194.40.vec.extract2797 = extractelement <4 x float> %numerator.sroa.194.11, i64 2, !dbg !246
  %numerator.sroa.194.44.vec.extract2834 = extractelement <4 x float> %numerator.sroa.194.11, i64 3, !dbg !246
  %mul258.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.32.vec.extract2723, !dbg !137
  %mul261.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.36.vec.extract2760, !dbg !247
  %mul264.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.40.vec.extract2797, !dbg !248
  %mul267.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.44.vec.extract2834, !dbg !249
  %numerator.sroa.194.32.vec.insert2725 = insertelement <4 x float> poison, float %mul258.2.6, i64 0, !dbg !138
  %numerator.sroa.194.36.vec.insert2762 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2725, float %mul261.2.6, i64 1, !dbg !138
  %numerator.sroa.194.40.vec.insert2799 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2762, float %mul264.2.6, i64 2, !dbg !138
  %numerator.sroa.194.44.vec.insert2836 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2799, float %mul267.2.6, i64 3, !dbg !138
  %numerator.sroa.290.48.vec.extract2879 = extractelement <4 x float> %numerator.sroa.290.11, i64 0, !dbg !246
  %numerator.sroa.290.52.vec.extract2916 = extractelement <4 x float> %numerator.sroa.290.11, i64 1, !dbg !246
  %numerator.sroa.290.56.vec.extract2953 = extractelement <4 x float> %numerator.sroa.290.11, i64 2, !dbg !246
  %numerator.sroa.290.60.vec.extract2990 = extractelement <4 x float> %numerator.sroa.290.11, i64 3, !dbg !246
  %mul258.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.48.vec.extract2879, !dbg !137
  %mul261.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.52.vec.extract2916, !dbg !247
  %mul264.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.56.vec.extract2953, !dbg !248
  %mul267.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.60.vec.extract2990, !dbg !249
  %numerator.sroa.290.48.vec.insert2881 = insertelement <4 x float> poison, float %mul258.3.6, i64 0, !dbg !138
  %numerator.sroa.290.52.vec.insert2918 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2881, float %mul261.3.6, i64 1, !dbg !138
  %numerator.sroa.290.56.vec.insert2955 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2918, float %mul264.3.6, i64 2, !dbg !138
  %numerator.sroa.290.60.vec.insert2992 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2955, float %mul267.3.6, i64 3, !dbg !138
  %mul278.6 = fmul contract float %denominator.sroa.0.2.5, %mul.i.i.6, !dbg !250
  br label %if.end282.6, !dbg !139

if.end282.6:                                      ; preds = %if.then238.6, %if.end.1.6
  %numerator.sroa.290.12 = phi <4 x float> [ %numerator.sroa.290.60.vec.insert2992, %if.then238.6 ], [ %numerator.sroa.290.11, %if.end.1.6 ], !dbg !81
  %numerator.sroa.194.12 = phi <4 x float> [ %numerator.sroa.194.44.vec.insert2836, %if.then238.6 ], [ %numerator.sroa.194.11, %if.end.1.6 ], !dbg !81
  %numerator.sroa.98.12 = phi <4 x float> [ %numerator.sroa.98.28.vec.insert2680, %if.then238.6 ], [ %numerator.sroa.98.11, %if.end.1.6 ], !dbg !81
  %numerator.sroa.0.12 = phi <4 x float> [ %numerator.sroa.0.12.vec.insert2524, %if.then238.6 ], [ %numerator.sroa.0.11, %if.end.1.6 ], !dbg !81
  %maximum.sroa.0.1.6 = phi float [ %550, %if.then238.6 ], [ %maximum.sroa.0.2.5, %if.end.1.6 ], !dbg !81
  %denominator.sroa.0.1.6 = phi float [ %mul278.6, %if.then238.6 ], [ %denominator.sroa.0.2.5, %if.end.1.6 ], !dbg !81
  %sub292.6 = fsub contract float %spec.select3040, %maximum.sroa.0.1.6, !dbg !140
  %sub296.6 = fsub contract float %condval_1.0.1.6, %maximum.sroa.0.1.6, !dbg !141
  %sub300.6 = fsub contract float %condval_1.0.2.6, %maximum.sroa.0.1.6, !dbg !142
  %sub304.6 = fsub contract float %condval_1.0.3.6, %maximum.sroa.0.1.6, !dbg !143
  %mul309.6 = fmul contract float %sub292.6, 0x3FC7154760000000, !dbg !144
  %mul313.6 = fmul contract float %sub296.6, 0x3FC7154760000000, !dbg !145
  %mul317.6 = fmul contract float %sub300.6, 0x3FC7154760000000, !dbg !146
  %mul321.6 = fmul contract float %sub304.6, 0x3FC7154760000000, !dbg !147
  %add326.6 = fadd contract float %mul309.6, 8.000000e+00, !dbg !148
  %add330.6 = fadd contract float %mul313.6, 8.000000e+00, !dbg !149
  %add334.6 = fadd contract float %mul317.6, 8.000000e+00, !dbg !150
  %add338.6 = fadd contract float %mul321.6, 8.000000e+00, !dbg !151
  %cmp.i.i799.6 = fcmp contract olt float %add326.6, -1.260000e+02, !dbg !152
  %cond.i.i800.6 = select contract i1 %cmp.i.i799.6, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i801.6 = fadd contract float %add326.6, %cond.i.i800.6, !dbg !152
  %552 = tail call contract float @llvm.exp2.f32(float %add.i.i801.6), !dbg !152
  %cond2.i.i802.6 = select contract i1 %cmp.i.i799.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i803.6 = fmul contract float %cond2.i.i802.6, %552, !dbg !152
  %cmp.i.i804.6 = fcmp contract olt float %add330.6, -1.260000e+02, !dbg !154
  %cond.i.i805.6 = select contract i1 %cmp.i.i804.6, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i806.6 = fadd contract float %add330.6, %cond.i.i805.6, !dbg !154
  %553 = tail call contract float @llvm.exp2.f32(float %add.i.i806.6), !dbg !154
  %cond2.i.i807.6 = select contract i1 %cmp.i.i804.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i808.6 = fmul contract float %cond2.i.i807.6, %553, !dbg !154
  %cmp.i.i809.6 = fcmp contract olt float %add334.6, -1.260000e+02, !dbg !156
  %cond.i.i810.6 = select contract i1 %cmp.i.i809.6, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i811.6 = fadd contract float %add334.6, %cond.i.i810.6, !dbg !156
  %554 = tail call contract float @llvm.exp2.f32(float %add.i.i811.6), !dbg !156
  %cond2.i.i812.6 = select contract i1 %cmp.i.i809.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i813.6 = fmul contract float %cond2.i.i812.6, %554, !dbg !156
  %cmp.i.i814.6 = fcmp contract olt float %add338.6, -1.260000e+02, !dbg !158
  %cond.i.i815.6 = select contract i1 %cmp.i.i814.6, float 6.400000e+01, float 0.000000e+00, !dbg !158
  %add.i.i816.6 = fadd contract float %add338.6, %cond.i.i815.6, !dbg !158
  %555 = tail call contract float @llvm.exp2.f32(float %add.i.i816.6), !dbg !158
  %cond2.i.i817.6 = select contract i1 %cmp.i.i814.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !158
  %mul.i.i818.6 = fmul contract float %cond2.i.i817.6, %555, !dbg !158
  %556 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !160, !noalias !168
  %557 = fptrunc float %mul.i.i803.6 to half, !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %556), !dbg !160, !noalias !168
  %558 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !168
  %559 = fptrunc float %mul.i.i808.6 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %558), !dbg !173, !noalias !168
  %560 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !175, !noalias !179
  %561 = fptrunc float %mul.i.i813.6 to half, !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %560), !dbg !175, !noalias !179
  %562 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !184, !noalias !179
  %563 = fptrunc float %mul.i.i818.6 to half, !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %562), !dbg !184, !noalias !179
  %564 = insertelement <4 x half> poison, half %557, i64 0, !dbg !186
  %565 = insertelement <4 x half> %564, half %559, i64 1, !dbg !186
  %566 = insertelement <4 x half> %565, half %561, i64 2, !dbg !186
  %567 = insertelement <4 x half> %566, half %563, i64 3, !dbg !186
  %conv.i.i.6 = fpext half %557 to float, !dbg !187
  %add373.6 = fadd contract float %conv.i.i.6, 0.000000e+00, !dbg !192
  %conv.i.i.1.6 = fpext half %559 to float, !dbg !187
  %add373.1.6 = fadd contract float %add373.6, %conv.i.i.1.6, !dbg !192
  %conv.i.i.2.6 = fpext half %561 to float, !dbg !187
  %add373.2.6 = fadd contract float %add373.1.6, %conv.i.i.2.6, !dbg !192
  %conv.i.i.3.6 = fpext half %563 to float, !dbg !187
  %add373.3.6 = fadd contract float %add373.2.6, %conv.i.i.3.6, !dbg !192
  %568 = bitcast float %add373.3.6 to i32, !dbg !193
  %569 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !195
  %570 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %569) #11, !dbg !198
  %xor.i.i820.6 = xor i32 %570, 32, !dbg !199
  %571 = and i32 %570, -64, !dbg !200
  %and.i.i821.6 = add nsw i32 %571, 64, !dbg !200
  %cmp.not.i.i822.6 = icmp slt i32 %xor.i.i820.6, %and.i.i821.6, !dbg !201
  %cond.i.i823.6 = select i1 %cmp.not.i.i822.6, i32 %xor.i.i820.6, i32 %570, !dbg !202
  %shl.i.i824.6 = shl i32 %cond.i.i823.6, 2, !dbg !203
  %572 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i824.6, i32 %568), !dbg !204
  %573 = bitcast i32 %572 to float, !dbg !205
  %add381.6 = fadd contract float %add373.3.6, %573, !dbg !206
  %574 = bitcast float %add381.6 to i32, !dbg !207
  %575 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !209
  %576 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %575) #11, !dbg !212
  %xor.i.i825.6 = xor i32 %576, 16, !dbg !213
  %577 = and i32 %576, -64, !dbg !214
  %and.i.i826.6 = add nsw i32 %577, 64, !dbg !214
  %cmp.not.i.i827.6 = icmp slt i32 %xor.i.i825.6, %and.i.i826.6, !dbg !215
  %cond.i.i828.6 = select i1 %cmp.not.i.i827.6, i32 %xor.i.i825.6, i32 %576, !dbg !216
  %shl.i.i829.6 = shl i32 %cond.i.i828.6, 2, !dbg !217
  %578 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i829.6, i32 %574), !dbg !218
  %579 = bitcast i32 %578 to float, !dbg !219
  %add386.6 = fadd contract float %add381.6, %579, !dbg !220
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %shr399.6 = lshr exact i32 %mul81.6, 2
  %add400.6 = add nuw nsw i32 %shr399.6, %shr397
  %cmp401.6 = icmp ult i32 %add400.6, 256
  br i1 %cmp401.6, label %if.then402.6, label %if.end436.6, !dbg !226

if.then402.6:                                     ; preds = %if.end282.6
  %580 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %581 = getelementptr inbounds i8, ptr addrspace(4) %580, i64 %.idx.6, !dbg !227
  %condval_2.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %581, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %581, i64 4, !dbg !228
  %condval_2.sroa.5.0.copyload.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.6, align 4, !dbg !228, !tbaa !30
  br label %if.end436.6, !dbg !229

if.end436.6:                                      ; preds = %if.then402.6, %if.end282.6
  %condval_2.sroa.0.0.6 = phi i32 [ %condval_2.sroa.0.0.copyload.6, %if.then402.6 ], [ 0, %if.end282.6 ], !dbg !81
  %condval_2.sroa.5.0.6 = phi i32 [ %condval_2.sroa.5.0.copyload.6, %if.then402.6 ], [ 0, %if.end282.6 ], !dbg !81
  br i1 %cmp401.6, label %if.then402.1.6, label %if.end436.1.6, !dbg !226

if.then402.1.6:                                   ; preds = %if.end436.6
  %582 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %583 = getelementptr inbounds i8, ptr addrspace(4) %582, i64 %.idx.6, !dbg !227
  %add.ptr422.1.6 = getelementptr inbounds i8, ptr addrspace(4) %583, i64 128, !dbg !227
  %condval_2.sroa.0.0.copyload.1.6 = load i32, ptr addrspace(4) %add.ptr422.1.6, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %583, i64 132, !dbg !228
  %condval_2.sroa.5.0.copyload.1.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.1.6, align 4, !dbg !228, !tbaa !30
  br label %if.end436.1.6, !dbg !229

if.end436.1.6:                                    ; preds = %if.then402.1.6, %if.end436.6
  %condval_2.sroa.0.0.1.6 = phi i32 [ %condval_2.sroa.0.0.copyload.1.6, %if.then402.1.6 ], [ 0, %if.end436.6 ], !dbg !81
  %condval_2.sroa.5.0.1.6 = phi i32 [ %condval_2.sroa.5.0.copyload.1.6, %if.then402.1.6 ], [ 0, %if.end436.6 ], !dbg !81
  br i1 %cmp401.6, label %if.then402.2.6, label %if.end436.2.6, !dbg !226

if.then402.2.6:                                   ; preds = %if.end436.1.6
  %584 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %585 = getelementptr inbounds i8, ptr addrspace(4) %584, i64 %.idx.6, !dbg !227
  %add.ptr422.2.6 = getelementptr inbounds i8, ptr addrspace(4) %585, i64 256, !dbg !227
  %condval_2.sroa.0.0.copyload.2.6 = load i32, ptr addrspace(4) %add.ptr422.2.6, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.2.6 = getelementptr inbounds i8, ptr addrspace(4) %585, i64 260, !dbg !228
  %condval_2.sroa.5.0.copyload.2.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.2.6, align 4, !dbg !228, !tbaa !30
  br label %if.end436.2.6, !dbg !229

if.end436.2.6:                                    ; preds = %if.then402.2.6, %if.end436.1.6
  %condval_2.sroa.0.0.2.6 = phi i32 [ %condval_2.sroa.0.0.copyload.2.6, %if.then402.2.6 ], [ 0, %if.end436.1.6 ], !dbg !81
  %condval_2.sroa.5.0.2.6 = phi i32 [ %condval_2.sroa.5.0.copyload.2.6, %if.then402.2.6 ], [ 0, %if.end436.1.6 ], !dbg !81
  br i1 %cmp401.6, label %if.then402.3.6, label %if.end436.3.6, !dbg !226

if.then402.3.6:                                   ; preds = %if.end436.2.6
  %586 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %587 = getelementptr inbounds i8, ptr addrspace(4) %586, i64 %.idx.6, !dbg !227
  %add.ptr422.3.6 = getelementptr inbounds i8, ptr addrspace(4) %587, i64 384, !dbg !227
  %condval_2.sroa.0.0.copyload.3.6 = load i32, ptr addrspace(4) %add.ptr422.3.6, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.3.6 = getelementptr inbounds i8, ptr addrspace(4) %587, i64 388, !dbg !228
  %condval_2.sroa.5.0.copyload.3.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.3.6, align 4, !dbg !228, !tbaa !30
  br label %if.end436.3.6, !dbg !229

if.end436.3.6:                                    ; preds = %if.then402.3.6, %if.end436.2.6
  %condval_2.sroa.0.0.3.6 = phi i32 [ %condval_2.sroa.0.0.copyload.3.6, %if.then402.3.6 ], [ 0, %if.end436.2.6 ], !dbg !81
  %condval_2.sroa.5.0.3.6 = phi i32 [ %condval_2.sroa.5.0.copyload.3.6, %if.then402.3.6 ], [ 0, %if.end436.2.6 ], !dbg !81
  %588 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul466, !dbg !230
  %add.ptr478.idx.6 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.6 = getelementptr inbounds i8, ptr addrspace(3) %588, i32 %add.ptr478.idx.6, !dbg !230
  %589 = and i32 %condval_2.sroa.0.0.3.6, 65535, !dbg !231
  %v_column.sroa.130.0.insert.ext1612 = zext nneg i32 %589 to i64, !dbg !231
  %v_column.sroa.130.0.insert.shift1613 = shl nuw i64 %v_column.sroa.130.0.insert.ext1612, 48, !dbg !231
  %590 = and i32 %condval_2.sroa.0.0.2.6, 65535, !dbg !231
  %v_column.sroa.98.0.insert.ext1457 = zext nneg i32 %590 to i64, !dbg !231
  %v_column.sroa.98.0.insert.shift1458 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1457, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1460 = or disjoint i64 %v_column.sroa.130.0.insert.shift1613, %v_column.sroa.98.0.insert.shift1458, !dbg !231
  %591 = shl i32 %condval_2.sroa.0.0.1.6, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1303 = zext i32 %591 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1305 = or disjoint i64 %v_column.sroa.98.0.insert.insert1460, %v_column.sroa.66.0.insert.shift1303, !dbg !231
  %592 = and i32 %condval_2.sroa.0.0.6, 65535, !dbg !231
  %v_column.sroa.0.0.insert.ext1155 = zext nneg i32 %592 to i64, !dbg !231
  %v_column.sroa.0.0.insert.insert1157 = or disjoint i64 %v_column.sroa.66.0.insert.insert1305, %v_column.sroa.0.0.insert.ext1155, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1157, ptr addrspace(3) %add.ptr478.6, align 8, !dbg !231
  %v_fetch.sroa.0.2.extract.shift1741 = lshr i32 %condval_2.sroa.0.0.6, 16, !dbg !232
  %v_fetch.sroa.0.2.extract.trunc1742 = zext nneg i32 %v_fetch.sroa.0.2.extract.shift1741 to i64, !dbg !232
  %v_fetch.sroa.50.10.extract.shift1811 = and i32 %condval_2.sroa.0.0.1.6, -65536, !dbg !231
  %v_fetch.sroa.98.18.extract.shift1881 = lshr i32 %condval_2.sroa.0.0.2.6, 16, !dbg !232
  %v_fetch.sroa.98.18.extract.trunc1882 = zext nneg i32 %v_fetch.sroa.98.18.extract.shift1881 to i64, !dbg !232
  %v_fetch.sroa.146.26.extract.shift1951 = lshr i32 %condval_2.sroa.0.0.3.6, 16, !dbg !232
  %v_fetch.sroa.146.26.extract.trunc1952 = zext nneg i32 %v_fetch.sroa.146.26.extract.shift1951 to i64, !dbg !232
  %add467.1.6 = or disjoint i32 %mul466, 256, !dbg !233
  %593 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.1.6, !dbg !230
  %xor474.1.6 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.1.6 = xor i32 %xor474.1.6, 8, !dbg !230
  %add.ptr478.1.6 = getelementptr inbounds i8, ptr addrspace(3) %593, i32 %add.ptr478.idx.1.6, !dbg !230
  %v_column.sroa.130.0.insert.shift1618 = shl nuw i64 %v_fetch.sroa.146.26.extract.trunc1952, 48, !dbg !231
  %v_column.sroa.98.0.insert.shift1463 = shl nuw nsw i64 %v_fetch.sroa.98.18.extract.trunc1882, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1465 = or disjoint i64 %v_column.sroa.130.0.insert.shift1618, %v_column.sroa.98.0.insert.shift1463, !dbg !231
  %v_column.sroa.66.0.insert.shift1308 = zext i32 %v_fetch.sroa.50.10.extract.shift1811 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1310 = or disjoint i64 %v_column.sroa.98.0.insert.insert1465, %v_column.sroa.66.0.insert.shift1308, !dbg !231
  %v_column.sroa.0.0.insert.insert1161 = or disjoint i64 %v_column.sroa.66.0.insert.insert1310, %v_fetch.sroa.0.2.extract.trunc1742, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1161, ptr addrspace(3) %add.ptr478.1.6, align 8, !dbg !231
  %add467.2.6 = or disjoint i32 %mul466, 512, !dbg !233
  %594 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.2.6, !dbg !230
  %xor474.2.6 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.2.6 = xor i32 %xor474.2.6, 16, !dbg !230
  %add.ptr478.2.6 = getelementptr inbounds i8, ptr addrspace(3) %594, i32 %add.ptr478.idx.2.6, !dbg !230
  %595 = and i32 %condval_2.sroa.5.0.3.6, 65535, !dbg !231
  %v_column.sroa.130.0.insert.ext1622 = zext nneg i32 %595 to i64, !dbg !231
  %v_column.sroa.130.0.insert.shift1623 = shl nuw i64 %v_column.sroa.130.0.insert.ext1622, 48, !dbg !231
  %596 = and i32 %condval_2.sroa.5.0.2.6, 65535, !dbg !231
  %v_column.sroa.98.0.insert.ext1467 = zext nneg i32 %596 to i64, !dbg !231
  %v_column.sroa.98.0.insert.shift1468 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1467, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1470 = or disjoint i64 %v_column.sroa.130.0.insert.shift1623, %v_column.sroa.98.0.insert.shift1468, !dbg !231
  %597 = shl i32 %condval_2.sroa.5.0.1.6, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1313 = zext i32 %597 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1315 = or disjoint i64 %v_column.sroa.98.0.insert.insert1470, %v_column.sroa.66.0.insert.shift1313, !dbg !231
  %598 = and i32 %condval_2.sroa.5.0.6, 65535, !dbg !231
  %v_column.sroa.0.0.insert.ext1163 = zext nneg i32 %598 to i64, !dbg !231
  %v_column.sroa.0.0.insert.insert1165 = or disjoint i64 %v_column.sroa.66.0.insert.insert1315, %v_column.sroa.0.0.insert.ext1163, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1165, ptr addrspace(3) %add.ptr478.2.6, align 8, !dbg !231
  %v_fetch.sroa.26.6.extract.shift1776 = lshr i32 %condval_2.sroa.5.0.6, 16, !dbg !232
  %v_fetch.sroa.26.6.extract.trunc1777 = zext nneg i32 %v_fetch.sroa.26.6.extract.shift1776 to i64, !dbg !232
  %v_fetch.sroa.74.14.extract.shift1846 = and i32 %condval_2.sroa.5.0.1.6, -65536, !dbg !231
  %v_fetch.sroa.122.22.extract.shift1916 = lshr i32 %condval_2.sroa.5.0.2.6, 16, !dbg !232
  %v_fetch.sroa.122.22.extract.trunc1917 = zext nneg i32 %v_fetch.sroa.122.22.extract.shift1916 to i64, !dbg !232
  %v_fetch.sroa.170.30.extract.shift1986 = lshr i32 %condval_2.sroa.5.0.3.6, 16, !dbg !232
  %v_fetch.sroa.170.30.extract.trunc1987 = zext nneg i32 %v_fetch.sroa.170.30.extract.shift1986 to i64, !dbg !232
  %add467.3.6 = or disjoint i32 %mul466, 768, !dbg !233
  %599 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.3.6, !dbg !230
  %xor474.3.6 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.3.6 = xor i32 %xor474.3.6, 24, !dbg !230
  %add.ptr478.3.6 = getelementptr inbounds i8, ptr addrspace(3) %599, i32 %add.ptr478.idx.3.6, !dbg !230
  %v_column.sroa.130.0.insert.shift1628 = shl nuw i64 %v_fetch.sroa.170.30.extract.trunc1987, 48, !dbg !231
  %v_column.sroa.98.0.insert.shift1473 = shl nuw nsw i64 %v_fetch.sroa.122.22.extract.trunc1917, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1475 = or disjoint i64 %v_column.sroa.130.0.insert.shift1628, %v_column.sroa.98.0.insert.shift1473, !dbg !231
  %v_column.sroa.66.0.insert.shift1318 = zext i32 %v_fetch.sroa.74.14.extract.shift1846 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1320 = or disjoint i64 %v_column.sroa.98.0.insert.insert1475, %v_column.sroa.66.0.insert.shift1318, !dbg !231
  %v_column.sroa.0.0.insert.insert1169 = or disjoint i64 %v_column.sroa.66.0.insert.insert1320, %v_fetch.sroa.26.6.extract.trunc1777, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1169, ptr addrspace(3) %add.ptr478.3.6, align 8, !dbg !231
  fence syncscope("warp") release, !dbg !234
  tail call void @llvm.mxc.barrier.warp(), !dbg !237
  fence syncscope("warp") acquire, !dbg !238
  %add495.6 = or disjoint i32 %mul488, %mul494, !dbg !239
  %600 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.6, !dbg !240
  %add.ptr505.idx.6 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.6 = getelementptr inbounds i8, ptr addrspace(3) %600, i32 %add.ptr505.idx.6, !dbg !240
  %601 = load <4 x half>, ptr addrspace(3) %add.ptr505.6, align 8, !dbg !241
  %add490.1.6 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.1.6 = or disjoint i32 %add490.1.6, 64, !dbg !239
  %602 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.1.6, !dbg !240
  %xor501.1.6 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.1.6 = xor i32 %xor501.1.6, 8, !dbg !240
  %add.ptr505.1.6 = getelementptr inbounds i8, ptr addrspace(3) %602, i32 %add.ptr505.idx.1.6, !dbg !240
  %603 = load <4 x half>, ptr addrspace(3) %add.ptr505.1.6, align 8, !dbg !241
  %add490.2.6 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.2.6 = or disjoint i32 %add490.2.6, 128, !dbg !239
  %604 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.2.6, !dbg !240
  %xor501.2.6 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.2.6 = xor i32 %xor501.2.6, 16, !dbg !240
  %add.ptr505.2.6 = getelementptr inbounds i8, ptr addrspace(3) %604, i32 %add.ptr505.idx.2.6, !dbg !240
  %605 = load <4 x half>, ptr addrspace(3) %add.ptr505.2.6, align 8, !dbg !241
  %add490.3.6 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.3.6 = or disjoint i32 %add490.3.6, 192, !dbg !239
  %606 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.3.6, !dbg !240
  %xor501.3.6 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.3.6 = xor i32 %xor501.3.6, 24, !dbg !240
  %add.ptr505.3.6 = getelementptr inbounds i8, ptr addrspace(3) %606, i32 %add.ptr505.idx.3.6, !dbg !240
  %607 = load <4 x half>, ptr addrspace(3) %add.ptr505.3.6, align 8, !dbg !241
  %608 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %601, <4 x half> %567, <4 x float> %numerator.sroa.0.12), !dbg !242
  %609 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %603, <4 x half> %567, <4 x float> %numerator.sroa.98.12), !dbg !242
  %610 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %605, <4 x half> %567, <4 x float> %numerator.sroa.194.12), !dbg !242
  %611 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %607, <4 x half> %567, <4 x float> %numerator.sroa.290.12), !dbg !242
  %add390.6 = fadd contract float %denominator.sroa.0.1.6, %add386.6, !dbg !243
  br label %if.end531.6, !dbg !244

if.end531.6:                                      ; preds = %if.end436.3.6, %if.end531.5
  %numerator.sroa.290.13 = phi <4 x float> [ %numerator.sroa.290.11, %if.end531.5 ], [ %611, %if.end436.3.6 ], !dbg !81
  %numerator.sroa.194.13 = phi <4 x float> [ %numerator.sroa.194.11, %if.end531.5 ], [ %610, %if.end436.3.6 ], !dbg !81
  %numerator.sroa.98.13 = phi <4 x float> [ %numerator.sroa.98.11, %if.end531.5 ], [ %609, %if.end436.3.6 ], !dbg !81
  %numerator.sroa.0.13 = phi <4 x float> [ %numerator.sroa.0.11, %if.end531.5 ], [ %608, %if.end436.3.6 ], !dbg !81
  %maximum.sroa.0.2.6 = phi float [ %maximum.sroa.0.2.5, %if.end531.5 ], [ %maximum.sroa.0.1.6, %if.end436.3.6 ], !dbg !81
  %denominator.sroa.0.2.6 = phi float [ %denominator.sroa.0.2.5, %if.end531.5 ], [ %add390.6, %if.end436.3.6 ], !dbg !81
  %612 = or disjoint i64 %17, 7, !dbg !245
  %arrayidx80.7 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %612, !dbg !67
  %613 = load i32, ptr addrspace(1) %arrayidx80.7, align 4, !dbg !67, !tbaa !30
  %mul81.7 = shl nsw i32 %613, 4, !dbg !68
  %cmp82.7 = icmp slt i32 %613, 0, !dbg !69
  %cmp84.not.7 = icmp sgt i32 %mul81.7, %1
  %or.cond.7 = select i1 %cmp82.7, i1 true, i1 %cmp84.not.7, !dbg !70
  br i1 %or.cond.7, label %if.end531.7, label %if.then.7, !dbg !70

if.then.7:                                        ; preds = %if.end531.6
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %add91.7 = add nuw nsw i32 %mul81.7, %shr90
  %conv101.7 = zext nneg i32 %mul81.7 to i64
  %.idx.7 = shl nuw nsw i64 %conv101.7, 7
  %gep.7 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep883, i64 %.idx.7, !dbg !76
  %cmp94.7 = icmp ult i32 %add91.7, 1024, !dbg !77
  br i1 %cmp94.7, label %if.then95.7, label %if.end.7, !dbg !78

if.then95.7:                                      ; preds = %if.then.7
  %gep867.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.7, i64 %mul97
  %condval.sroa.7.0.add.ptr108.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep867.7, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep867.7, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep867.7, i64 4
  %condval.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %gep867.7, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.7, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.7, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.7, align 4, !dbg !79, !tbaa !30
  br label %if.end.7, !dbg !80

if.end.7:                                         ; preds = %if.then95.7, %if.then.7
  %condval.sroa.0.0.7 = phi i32 [ %condval.sroa.0.0.copyload.7, %if.then95.7 ], [ 0, %if.then.7 ], !dbg !81
  %condval.sroa.5.0.7 = phi i32 [ %condval.sroa.5.0.copyload.7, %if.then95.7 ], [ 0, %if.then.7 ], !dbg !81
  %condval.sroa.6.0.7 = phi i32 [ %condval.sroa.6.0.copyload.7, %if.then95.7 ], [ 0, %if.then.7 ], !dbg !81
  %condval.sroa.7.0.7 = phi i32 [ %condval.sroa.7.0.copyload.7, %if.then95.7 ], [ 0, %if.then.7 ], !dbg !81
  store i32 %condval.sroa.0.0.7, ptr addrspace(3) %invariant.gep856, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 4, !dbg !82
  store i32 %condval.sroa.5.0.7, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.7, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 8, !dbg !82
  store i32 %condval.sroa.6.0.7, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.7, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 12, !dbg !82
  store i32 %condval.sroa.7.0.7, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.7, align 4, !dbg !82, !tbaa !30
  %cmp94.1.7 = icmp ult i32 %add91.7, 1016, !dbg !77
  br i1 %cmp94.1.7, label %if.then95.1.7, label %if.end.1.7, !dbg !78

if.then95.1.7:                                    ; preds = %if.end.7
  %add100.1.7 = or disjoint i64 %mul97, 512
  %gep867.1.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.7, i64 %add100.1.7
  %condval.sroa.7.0.add.ptr108.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1.7, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1.7, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep867.1.7, i64 4
  %condval.sroa.0.0.copyload.1.7 = load i32, ptr addrspace(4) %gep867.1.7, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.1.7 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.1.7, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.1.7 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.1.7, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.1.7 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.1.7, align 4, !dbg !79, !tbaa !30
  br label %if.end.1.7, !dbg !80

if.end.1.7:                                       ; preds = %if.then95.1.7, %if.end.7
  %condval.sroa.0.0.1.7 = phi i32 [ %condval.sroa.0.0.copyload.1.7, %if.then95.1.7 ], [ 0, %if.end.7 ], !dbg !81
  %condval.sroa.5.0.1.7 = phi i32 [ %condval.sroa.5.0.copyload.1.7, %if.then95.1.7 ], [ 0, %if.end.7 ], !dbg !81
  %condval.sroa.6.0.1.7 = phi i32 [ %condval.sroa.6.0.copyload.1.7, %if.then95.1.7 ], [ 0, %if.end.7 ], !dbg !81
  %condval.sroa.7.0.1.7 = phi i32 [ %condval.sroa.7.0.copyload.1.7, %if.then95.1.7 ], [ 0, %if.end.7 ], !dbg !81
  store i32 %condval.sroa.0.0.1.7, ptr addrspace(3) %gep857.1, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1028, !dbg !82
  store i32 %condval.sroa.5.0.1.7, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.1.7, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1032, !dbg !82
  store i32 %condval.sroa.6.0.1.7, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.1.7, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep856, i32 1036, !dbg !82
  store i32 %condval.sroa.7.0.1.7, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.1.7, align 4, !dbg !82, !tbaa !30
  fence syncscope("warp") release, !dbg !83
  tail call void @llvm.mxc.barrier.warp(), !dbg !86
  fence syncscope("warp") acquire, !dbg !87
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !88
  %614 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %6, <4 x float> zeroinitializer), !dbg !89
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !88
  %615 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %7, <4 x float> %614), !dbg !89
  %k_local.sroa.0.0.copyload.2.7 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !88
  %616 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.7, <4 x half> %8, <4 x float> %615), !dbg !89
  %k_local.sroa.0.0.copyload.3.7 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !88
  %617 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.7, <4 x half> %9, <4 x float> %616), !dbg !89
  %add194.7 = add nuw nsw i32 %mul81.7, %mul193
  %cmp197.not.7 = icmp sgt i32 %add194.7, %1, !dbg !90
  %scores.sroa.0.0.vec.extract2141 = extractelement <4 x float> %617, i64 0
  %spec.select3041 = select i1 %cmp197.not.7, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2141, !dbg !91
  %cmp197.not.1.7.not = icmp slt i32 %add194.7, %1, !dbg !90
  %scores.sroa.0.4.vec.extract2220 = extractelement <4 x float> %617, i64 1, !dbg !91
  %condval_1.0.1.7 = select i1 %cmp197.not.1.7.not, float %scores.sroa.0.4.vec.extract2220, float 0xFFF0000000000000, !dbg !91
  %add195.2.7 = or disjoint i32 %add194.7, 2, !dbg !92
  %cmp197.not.2.7 = icmp sgt i32 %add195.2.7, %1, !dbg !90
  %scores.sroa.0.8.vec.extract2297 = extractelement <4 x float> %617, i64 2, !dbg !91
  %condval_1.0.2.7 = select i1 %cmp197.not.2.7, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2297, !dbg !91
  %add195.3.7 = or disjoint i32 %add194.7, 3, !dbg !92
  %cmp197.not.3.7 = icmp sgt i32 %add195.3.7, %1, !dbg !90
  %scores.sroa.0.12.vec.extract2374 = extractelement <4 x float> %617, i64 3, !dbg !91
  %condval_1.0.3.7 = select i1 %cmp197.not.3.7, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2374, !dbg !91
  %618 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3041, float 0xFFF0000000000000), !dbg !93
  %619 = tail call contract noundef float @llvm.maxnum.f32(float %618, float %condval_1.0.1.7), !dbg !93
  %620 = tail call contract noundef float @llvm.maxnum.f32(float %619, float %condval_1.0.2.7), !dbg !93
  %621 = tail call contract noundef float @llvm.maxnum.f32(float %620, float %condval_1.0.3.7), !dbg !93
  %622 = bitcast float %621 to i32, !dbg !97
  %623 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %624 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %623) #11, !dbg !105
  %xor.i.i.7 = xor i32 %624, 32, !dbg !106
  %625 = and i32 %624, -64, !dbg !107
  %and.i.i.7 = add nsw i32 %625, 64, !dbg !107
  %cmp.not.i.i.7 = icmp slt i32 %xor.i.i.7, %and.i.i.7, !dbg !108
  %cond.i.i.7 = select i1 %cmp.not.i.i.7, i32 %xor.i.i.7, i32 %624, !dbg !109
  %shl.i.i.7 = shl i32 %cond.i.i.7, 2, !dbg !110
  %626 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.7, i32 %622), !dbg !111
  %627 = bitcast i32 %626 to float, !dbg !112
  %628 = tail call contract noundef float @llvm.maxnum.f32(float %621, float %627), !dbg !113
  %629 = bitcast float %628 to i32, !dbg !115
  %630 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !117
  %631 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %630) #11, !dbg !120
  %xor.i.i785.7 = xor i32 %631, 16, !dbg !121
  %632 = and i32 %631, -64, !dbg !122
  %and.i.i786.7 = add nsw i32 %632, 64, !dbg !122
  %cmp.not.i.i787.7 = icmp slt i32 %xor.i.i785.7, %and.i.i786.7, !dbg !123
  %cond.i.i788.7 = select i1 %cmp.not.i.i787.7, i32 %xor.i.i785.7, i32 %631, !dbg !124
  %shl.i.i789.7 = shl i32 %cond.i.i788.7, 2, !dbg !125
  %633 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i789.7, i32 %629), !dbg !126
  %634 = bitcast i32 %633 to float, !dbg !127
  %635 = tail call contract noundef float @llvm.maxnum.f32(float %628, float %634), !dbg !128
  %cmp237.7 = fcmp contract olt float %maximum.sroa.0.2.6, %635, !dbg !130
  br i1 %cmp237.7, label %if.then238.7, label %if.end282.7, !dbg !131

if.then238.7:                                     ; preds = %if.end.1.7
  %sub.7 = fsub contract float %maximum.sroa.0.2.6, %635, !dbg !132
  %mul241.7 = fmul contract float %sub.7, 0x3FC7154760000000, !dbg !133
  %cmp.i.i.7 = fcmp contract olt float %mul241.7, -1.260000e+02, !dbg !134
  %cond.i.i790.7 = select contract i1 %cmp.i.i.7, float 6.400000e+01, float 0.000000e+00, !dbg !134
  %add.i.i.7 = fadd contract float %mul241.7, %cond.i.i790.7, !dbg !134
  %636 = tail call contract float @llvm.exp2.f32(float %add.i.i.7), !dbg !134
  %cond2.i.i.7 = select contract i1 %cmp.i.i.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !134
  %mul.i.i.7 = fmul contract float %cond2.i.i.7, %636, !dbg !134
  %numerator.sroa.0.0.vec.extract2415 = extractelement <4 x float> %numerator.sroa.0.13, i64 0, !dbg !246
  %numerator.sroa.0.4.vec.extract2452 = extractelement <4 x float> %numerator.sroa.0.13, i64 1, !dbg !246
  %numerator.sroa.0.8.vec.extract2489 = extractelement <4 x float> %numerator.sroa.0.13, i64 2, !dbg !246
  %numerator.sroa.0.12.vec.extract2526 = extractelement <4 x float> %numerator.sroa.0.13, i64 3, !dbg !246
  %mul258.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.0.vec.extract2415, !dbg !137
  %mul261.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.4.vec.extract2452, !dbg !247
  %mul264.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.8.vec.extract2489, !dbg !248
  %mul267.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.12.vec.extract2526, !dbg !249
  %numerator.sroa.0.0.vec.insert2417 = insertelement <4 x float> poison, float %mul258.7, i64 0, !dbg !138
  %numerator.sroa.0.4.vec.insert2454 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2417, float %mul261.7, i64 1, !dbg !138
  %numerator.sroa.0.8.vec.insert2491 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2454, float %mul264.7, i64 2, !dbg !138
  %numerator.sroa.0.12.vec.insert2528 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2491, float %mul267.7, i64 3, !dbg !138
  %numerator.sroa.98.16.vec.extract2571 = extractelement <4 x float> %numerator.sroa.98.13, i64 0, !dbg !246
  %numerator.sroa.98.20.vec.extract2608 = extractelement <4 x float> %numerator.sroa.98.13, i64 1, !dbg !246
  %numerator.sroa.98.24.vec.extract2645 = extractelement <4 x float> %numerator.sroa.98.13, i64 2, !dbg !246
  %numerator.sroa.98.28.vec.extract2682 = extractelement <4 x float> %numerator.sroa.98.13, i64 3, !dbg !246
  %mul258.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.16.vec.extract2571, !dbg !137
  %mul261.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.20.vec.extract2608, !dbg !247
  %mul264.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.24.vec.extract2645, !dbg !248
  %mul267.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.28.vec.extract2682, !dbg !249
  %numerator.sroa.98.16.vec.insert2573 = insertelement <4 x float> poison, float %mul258.1.7, i64 0, !dbg !138
  %numerator.sroa.98.20.vec.insert2610 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2573, float %mul261.1.7, i64 1, !dbg !138
  %numerator.sroa.98.24.vec.insert2647 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2610, float %mul264.1.7, i64 2, !dbg !138
  %numerator.sroa.98.28.vec.insert2684 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2647, float %mul267.1.7, i64 3, !dbg !138
  %numerator.sroa.194.32.vec.extract2727 = extractelement <4 x float> %numerator.sroa.194.13, i64 0, !dbg !246
  %numerator.sroa.194.36.vec.extract2764 = extractelement <4 x float> %numerator.sroa.194.13, i64 1, !dbg !246
  %numerator.sroa.194.40.vec.extract2801 = extractelement <4 x float> %numerator.sroa.194.13, i64 2, !dbg !246
  %numerator.sroa.194.44.vec.extract2838 = extractelement <4 x float> %numerator.sroa.194.13, i64 3, !dbg !246
  %mul258.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.32.vec.extract2727, !dbg !137
  %mul261.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.36.vec.extract2764, !dbg !247
  %mul264.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.40.vec.extract2801, !dbg !248
  %mul267.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.44.vec.extract2838, !dbg !249
  %numerator.sroa.194.32.vec.insert2729 = insertelement <4 x float> poison, float %mul258.2.7, i64 0, !dbg !138
  %numerator.sroa.194.36.vec.insert2766 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2729, float %mul261.2.7, i64 1, !dbg !138
  %numerator.sroa.194.40.vec.insert2803 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2766, float %mul264.2.7, i64 2, !dbg !138
  %numerator.sroa.194.44.vec.insert2840 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2803, float %mul267.2.7, i64 3, !dbg !138
  %numerator.sroa.290.48.vec.extract2883 = extractelement <4 x float> %numerator.sroa.290.13, i64 0, !dbg !246
  %numerator.sroa.290.52.vec.extract2920 = extractelement <4 x float> %numerator.sroa.290.13, i64 1, !dbg !246
  %numerator.sroa.290.56.vec.extract2957 = extractelement <4 x float> %numerator.sroa.290.13, i64 2, !dbg !246
  %numerator.sroa.290.60.vec.extract2994 = extractelement <4 x float> %numerator.sroa.290.13, i64 3, !dbg !246
  %mul258.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.48.vec.extract2883, !dbg !137
  %mul261.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.52.vec.extract2920, !dbg !247
  %mul264.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.56.vec.extract2957, !dbg !248
  %mul267.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.60.vec.extract2994, !dbg !249
  %numerator.sroa.290.48.vec.insert2885 = insertelement <4 x float> poison, float %mul258.3.7, i64 0, !dbg !138
  %numerator.sroa.290.52.vec.insert2922 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2885, float %mul261.3.7, i64 1, !dbg !138
  %numerator.sroa.290.56.vec.insert2959 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2922, float %mul264.3.7, i64 2, !dbg !138
  %numerator.sroa.290.60.vec.insert2996 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2959, float %mul267.3.7, i64 3, !dbg !138
  %mul278.7 = fmul contract float %denominator.sroa.0.2.6, %mul.i.i.7, !dbg !250
  br label %if.end282.7, !dbg !139

if.end282.7:                                      ; preds = %if.then238.7, %if.end.1.7
  %numerator.sroa.290.14 = phi <4 x float> [ %numerator.sroa.290.60.vec.insert2996, %if.then238.7 ], [ %numerator.sroa.290.13, %if.end.1.7 ], !dbg !81
  %numerator.sroa.194.14 = phi <4 x float> [ %numerator.sroa.194.44.vec.insert2840, %if.then238.7 ], [ %numerator.sroa.194.13, %if.end.1.7 ], !dbg !81
  %numerator.sroa.98.14 = phi <4 x float> [ %numerator.sroa.98.28.vec.insert2684, %if.then238.7 ], [ %numerator.sroa.98.13, %if.end.1.7 ], !dbg !81
  %numerator.sroa.0.14 = phi <4 x float> [ %numerator.sroa.0.12.vec.insert2528, %if.then238.7 ], [ %numerator.sroa.0.13, %if.end.1.7 ], !dbg !81
  %maximum.sroa.0.1.7 = phi float [ %635, %if.then238.7 ], [ %maximum.sroa.0.2.6, %if.end.1.7 ], !dbg !81
  %denominator.sroa.0.1.7 = phi float [ %mul278.7, %if.then238.7 ], [ %denominator.sroa.0.2.6, %if.end.1.7 ], !dbg !81
  %sub292.7 = fsub contract float %spec.select3041, %maximum.sroa.0.1.7, !dbg !140
  %sub296.7 = fsub contract float %condval_1.0.1.7, %maximum.sroa.0.1.7, !dbg !141
  %sub300.7 = fsub contract float %condval_1.0.2.7, %maximum.sroa.0.1.7, !dbg !142
  %sub304.7 = fsub contract float %condval_1.0.3.7, %maximum.sroa.0.1.7, !dbg !143
  %mul309.7 = fmul contract float %sub292.7, 0x3FC7154760000000, !dbg !144
  %mul313.7 = fmul contract float %sub296.7, 0x3FC7154760000000, !dbg !145
  %mul317.7 = fmul contract float %sub300.7, 0x3FC7154760000000, !dbg !146
  %mul321.7 = fmul contract float %sub304.7, 0x3FC7154760000000, !dbg !147
  %add326.7 = fadd contract float %mul309.7, 8.000000e+00, !dbg !148
  %add330.7 = fadd contract float %mul313.7, 8.000000e+00, !dbg !149
  %add334.7 = fadd contract float %mul317.7, 8.000000e+00, !dbg !150
  %add338.7 = fadd contract float %mul321.7, 8.000000e+00, !dbg !151
  %cmp.i.i799.7 = fcmp contract olt float %add326.7, -1.260000e+02, !dbg !152
  %cond.i.i800.7 = select contract i1 %cmp.i.i799.7, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i801.7 = fadd contract float %add326.7, %cond.i.i800.7, !dbg !152
  %637 = tail call contract float @llvm.exp2.f32(float %add.i.i801.7), !dbg !152
  %cond2.i.i802.7 = select contract i1 %cmp.i.i799.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i803.7 = fmul contract float %cond2.i.i802.7, %637, !dbg !152
  %cmp.i.i804.7 = fcmp contract olt float %add330.7, -1.260000e+02, !dbg !154
  %cond.i.i805.7 = select contract i1 %cmp.i.i804.7, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i806.7 = fadd contract float %add330.7, %cond.i.i805.7, !dbg !154
  %638 = tail call contract float @llvm.exp2.f32(float %add.i.i806.7), !dbg !154
  %cond2.i.i807.7 = select contract i1 %cmp.i.i804.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i808.7 = fmul contract float %cond2.i.i807.7, %638, !dbg !154
  %cmp.i.i809.7 = fcmp contract olt float %add334.7, -1.260000e+02, !dbg !156
  %cond.i.i810.7 = select contract i1 %cmp.i.i809.7, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i811.7 = fadd contract float %add334.7, %cond.i.i810.7, !dbg !156
  %639 = tail call contract float @llvm.exp2.f32(float %add.i.i811.7), !dbg !156
  %cond2.i.i812.7 = select contract i1 %cmp.i.i809.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i813.7 = fmul contract float %cond2.i.i812.7, %639, !dbg !156
  %cmp.i.i814.7 = fcmp contract olt float %add338.7, -1.260000e+02, !dbg !158
  %cond.i.i815.7 = select contract i1 %cmp.i.i814.7, float 6.400000e+01, float 0.000000e+00, !dbg !158
  %add.i.i816.7 = fadd contract float %add338.7, %cond.i.i815.7, !dbg !158
  %640 = tail call contract float @llvm.exp2.f32(float %add.i.i816.7), !dbg !158
  %cond2.i.i817.7 = select contract i1 %cmp.i.i814.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !158
  %mul.i.i818.7 = fmul contract float %cond2.i.i817.7, %640, !dbg !158
  %641 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !160, !noalias !168
  %642 = fptrunc float %mul.i.i803.7 to half, !dbg !160
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %641), !dbg !160, !noalias !168
  %643 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !168
  %644 = fptrunc float %mul.i.i808.7 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %643), !dbg !173, !noalias !168
  %645 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !175, !noalias !179
  %646 = fptrunc float %mul.i.i813.7 to half, !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %645), !dbg !175, !noalias !179
  %647 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !184, !noalias !179
  %648 = fptrunc float %mul.i.i818.7 to half, !dbg !184
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %647), !dbg !184, !noalias !179
  %649 = insertelement <4 x half> poison, half %642, i64 0, !dbg !186
  %650 = insertelement <4 x half> %649, half %644, i64 1, !dbg !186
  %651 = insertelement <4 x half> %650, half %646, i64 2, !dbg !186
  %652 = insertelement <4 x half> %651, half %648, i64 3, !dbg !186
  %conv.i.i.7 = fpext half %642 to float, !dbg !187
  %add373.7 = fadd contract float %conv.i.i.7, 0.000000e+00, !dbg !192
  %conv.i.i.1.7 = fpext half %644 to float, !dbg !187
  %add373.1.7 = fadd contract float %add373.7, %conv.i.i.1.7, !dbg !192
  %conv.i.i.2.7 = fpext half %646 to float, !dbg !187
  %add373.2.7 = fadd contract float %add373.1.7, %conv.i.i.2.7, !dbg !192
  %conv.i.i.3.7 = fpext half %648 to float, !dbg !187
  %add373.3.7 = fadd contract float %add373.2.7, %conv.i.i.3.7, !dbg !192
  %653 = bitcast float %add373.3.7 to i32, !dbg !193
  %654 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !195
  %655 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %654) #11, !dbg !198
  %xor.i.i820.7 = xor i32 %655, 32, !dbg !199
  %656 = and i32 %655, -64, !dbg !200
  %and.i.i821.7 = add nsw i32 %656, 64, !dbg !200
  %cmp.not.i.i822.7 = icmp slt i32 %xor.i.i820.7, %and.i.i821.7, !dbg !201
  %cond.i.i823.7 = select i1 %cmp.not.i.i822.7, i32 %xor.i.i820.7, i32 %655, !dbg !202
  %shl.i.i824.7 = shl i32 %cond.i.i823.7, 2, !dbg !203
  %657 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i824.7, i32 %653), !dbg !204
  %658 = bitcast i32 %657 to float, !dbg !205
  %add381.7 = fadd contract float %add373.3.7, %658, !dbg !206
  %659 = bitcast float %add381.7 to i32, !dbg !207
  %660 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !209
  %661 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %660) #11, !dbg !212
  %xor.i.i825.7 = xor i32 %661, 16, !dbg !213
  %662 = and i32 %661, -64, !dbg !214
  %and.i.i826.7 = add nsw i32 %662, 64, !dbg !214
  %cmp.not.i.i827.7 = icmp slt i32 %xor.i.i825.7, %and.i.i826.7, !dbg !215
  %cond.i.i828.7 = select i1 %cmp.not.i.i827.7, i32 %xor.i.i825.7, i32 %661, !dbg !216
  %shl.i.i829.7 = shl i32 %cond.i.i828.7, 2, !dbg !217
  %663 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i829.7, i32 %659), !dbg !218
  %664 = bitcast i32 %663 to float, !dbg !219
  %add386.7 = fadd contract float %add381.7, %664, !dbg !220
  fence syncscope("warp") release, !dbg !221
  tail call void @llvm.mxc.barrier.warp(), !dbg !224
  fence syncscope("warp") acquire, !dbg !225
  %shr399.7 = lshr exact i32 %mul81.7, 2
  %add400.7 = add nuw nsw i32 %shr399.7, %shr397
  %cmp401.7 = icmp ult i32 %add400.7, 256
  br i1 %cmp401.7, label %if.then402.7, label %if.end436.7, !dbg !226

if.then402.7:                                     ; preds = %if.end282.7
  %665 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %666 = getelementptr inbounds i8, ptr addrspace(4) %665, i64 %.idx.7, !dbg !227
  %condval_2.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %666, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %666, i64 4, !dbg !228
  %condval_2.sroa.5.0.copyload.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.7, align 4, !dbg !228, !tbaa !30
  br label %if.end436.7, !dbg !229

if.end436.7:                                      ; preds = %if.then402.7, %if.end282.7
  %condval_2.sroa.0.0.7 = phi i32 [ %condval_2.sroa.0.0.copyload.7, %if.then402.7 ], [ 0, %if.end282.7 ], !dbg !81
  %condval_2.sroa.5.0.7 = phi i32 [ %condval_2.sroa.5.0.copyload.7, %if.then402.7 ], [ 0, %if.end282.7 ], !dbg !81
  br i1 %cmp401.7, label %if.then402.1.7, label %if.end436.1.7, !dbg !226

if.then402.1.7:                                   ; preds = %if.end436.7
  %667 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %668 = getelementptr inbounds i8, ptr addrspace(4) %667, i64 %.idx.7, !dbg !227
  %add.ptr422.1.7 = getelementptr inbounds i8, ptr addrspace(4) %668, i64 128, !dbg !227
  %condval_2.sroa.0.0.copyload.1.7 = load i32, ptr addrspace(4) %add.ptr422.1.7, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %668, i64 132, !dbg !228
  %condval_2.sroa.5.0.copyload.1.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.1.7, align 4, !dbg !228, !tbaa !30
  br label %if.end436.1.7, !dbg !229

if.end436.1.7:                                    ; preds = %if.then402.1.7, %if.end436.7
  %condval_2.sroa.0.0.1.7 = phi i32 [ %condval_2.sroa.0.0.copyload.1.7, %if.then402.1.7 ], [ 0, %if.end436.7 ], !dbg !81
  %condval_2.sroa.5.0.1.7 = phi i32 [ %condval_2.sroa.5.0.copyload.1.7, %if.then402.1.7 ], [ 0, %if.end436.7 ], !dbg !81
  br i1 %cmp401.7, label %if.then402.2.7, label %if.end436.2.7, !dbg !226

if.then402.2.7:                                   ; preds = %if.end436.1.7
  %669 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %670 = getelementptr inbounds i8, ptr addrspace(4) %669, i64 %.idx.7, !dbg !227
  %add.ptr422.2.7 = getelementptr inbounds i8, ptr addrspace(4) %670, i64 256, !dbg !227
  %condval_2.sroa.0.0.copyload.2.7 = load i32, ptr addrspace(4) %add.ptr422.2.7, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.2.7 = getelementptr inbounds i8, ptr addrspace(4) %670, i64 260, !dbg !228
  %condval_2.sroa.5.0.copyload.2.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.2.7, align 4, !dbg !228, !tbaa !30
  br label %if.end436.2.7, !dbg !229

if.end436.2.7:                                    ; preds = %if.then402.2.7, %if.end436.1.7
  %condval_2.sroa.0.0.2.7 = phi i32 [ %condval_2.sroa.0.0.copyload.2.7, %if.then402.2.7 ], [ 0, %if.end436.1.7 ], !dbg !81
  %condval_2.sroa.5.0.2.7 = phi i32 [ %condval_2.sroa.5.0.copyload.2.7, %if.then402.2.7 ], [ 0, %if.end436.1.7 ], !dbg !81
  br i1 %cmp401.7, label %if.then402.3.7, label %if.end436.3.7, !dbg !226

if.then402.3.7:                                   ; preds = %if.end436.2.7
  %671 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add413, !dbg !227
  %672 = getelementptr inbounds i8, ptr addrspace(4) %671, i64 %.idx.7, !dbg !227
  %add.ptr422.3.7 = getelementptr inbounds i8, ptr addrspace(4) %672, i64 384, !dbg !227
  %condval_2.sroa.0.0.copyload.3.7 = load i32, ptr addrspace(4) %add.ptr422.3.7, align 8, !dbg !228, !tbaa !30
  %condval_2.sroa.5.0.add.ptr422.sroa_idx.3.7 = getelementptr inbounds i8, ptr addrspace(4) %672, i64 388, !dbg !228
  %condval_2.sroa.5.0.copyload.3.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr422.sroa_idx.3.7, align 4, !dbg !228, !tbaa !30
  br label %if.end436.3.7, !dbg !229

if.end436.3.7:                                    ; preds = %if.then402.3.7, %if.end436.2.7
  %condval_2.sroa.0.0.3.7 = phi i32 [ %condval_2.sroa.0.0.copyload.3.7, %if.then402.3.7 ], [ 0, %if.end436.2.7 ], !dbg !81
  %condval_2.sroa.5.0.3.7 = phi i32 [ %condval_2.sroa.5.0.copyload.3.7, %if.then402.3.7 ], [ 0, %if.end436.2.7 ], !dbg !81
  %673 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul466, !dbg !230
  %add.ptr478.idx.7 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.7 = getelementptr inbounds i8, ptr addrspace(3) %673, i32 %add.ptr478.idx.7, !dbg !230
  %674 = and i32 %condval_2.sroa.0.0.3.7, 65535, !dbg !231
  %v_column.sroa.130.0.insert.ext1632 = zext nneg i32 %674 to i64, !dbg !231
  %v_column.sroa.130.0.insert.shift1633 = shl nuw i64 %v_column.sroa.130.0.insert.ext1632, 48, !dbg !231
  %675 = and i32 %condval_2.sroa.0.0.2.7, 65535, !dbg !231
  %v_column.sroa.98.0.insert.ext1477 = zext nneg i32 %675 to i64, !dbg !231
  %v_column.sroa.98.0.insert.shift1478 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1477, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1480 = or disjoint i64 %v_column.sroa.130.0.insert.shift1633, %v_column.sroa.98.0.insert.shift1478, !dbg !231
  %676 = shl i32 %condval_2.sroa.0.0.1.7, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1323 = zext i32 %676 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1325 = or disjoint i64 %v_column.sroa.98.0.insert.insert1480, %v_column.sroa.66.0.insert.shift1323, !dbg !231
  %677 = and i32 %condval_2.sroa.0.0.7, 65535, !dbg !231
  %v_column.sroa.0.0.insert.ext1171 = zext nneg i32 %677 to i64, !dbg !231
  %v_column.sroa.0.0.insert.insert1173 = or disjoint i64 %v_column.sroa.66.0.insert.insert1325, %v_column.sroa.0.0.insert.ext1171, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1173, ptr addrspace(3) %add.ptr478.7, align 8, !dbg !231
  %v_fetch.sroa.0.2.extract.shift1744 = lshr i32 %condval_2.sroa.0.0.7, 16, !dbg !232
  %v_fetch.sroa.0.2.extract.trunc1745 = zext nneg i32 %v_fetch.sroa.0.2.extract.shift1744 to i64, !dbg !232
  %v_fetch.sroa.50.10.extract.shift1814 = and i32 %condval_2.sroa.0.0.1.7, -65536, !dbg !231
  %v_fetch.sroa.98.18.extract.shift1884 = lshr i32 %condval_2.sroa.0.0.2.7, 16, !dbg !232
  %v_fetch.sroa.98.18.extract.trunc1885 = zext nneg i32 %v_fetch.sroa.98.18.extract.shift1884 to i64, !dbg !232
  %v_fetch.sroa.146.26.extract.shift1954 = lshr i32 %condval_2.sroa.0.0.3.7, 16, !dbg !232
  %v_fetch.sroa.146.26.extract.trunc1955 = zext nneg i32 %v_fetch.sroa.146.26.extract.shift1954 to i64, !dbg !232
  %add467.1.7 = or disjoint i32 %mul466, 256, !dbg !233
  %678 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.1.7, !dbg !230
  %xor474.1.7 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.1.7 = xor i32 %xor474.1.7, 8, !dbg !230
  %add.ptr478.1.7 = getelementptr inbounds i8, ptr addrspace(3) %678, i32 %add.ptr478.idx.1.7, !dbg !230
  %v_column.sroa.130.0.insert.shift1638 = shl nuw i64 %v_fetch.sroa.146.26.extract.trunc1955, 48, !dbg !231
  %v_column.sroa.98.0.insert.shift1483 = shl nuw nsw i64 %v_fetch.sroa.98.18.extract.trunc1885, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1485 = or disjoint i64 %v_column.sroa.130.0.insert.shift1638, %v_column.sroa.98.0.insert.shift1483, !dbg !231
  %v_column.sroa.66.0.insert.shift1328 = zext i32 %v_fetch.sroa.50.10.extract.shift1814 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1330 = or disjoint i64 %v_column.sroa.98.0.insert.insert1485, %v_column.sroa.66.0.insert.shift1328, !dbg !231
  %v_column.sroa.0.0.insert.insert1177 = or disjoint i64 %v_column.sroa.66.0.insert.insert1330, %v_fetch.sroa.0.2.extract.trunc1745, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1177, ptr addrspace(3) %add.ptr478.1.7, align 8, !dbg !231
  %add467.2.7 = or disjoint i32 %mul466, 512, !dbg !233
  %679 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.2.7, !dbg !230
  %xor474.2.7 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.2.7 = xor i32 %xor474.2.7, 16, !dbg !230
  %add.ptr478.2.7 = getelementptr inbounds i8, ptr addrspace(3) %679, i32 %add.ptr478.idx.2.7, !dbg !230
  %680 = and i32 %condval_2.sroa.5.0.3.7, 65535, !dbg !231
  %v_column.sroa.130.0.insert.ext1642 = zext nneg i32 %680 to i64, !dbg !231
  %v_column.sroa.130.0.insert.shift1643 = shl nuw i64 %v_column.sroa.130.0.insert.ext1642, 48, !dbg !231
  %681 = and i32 %condval_2.sroa.5.0.2.7, 65535, !dbg !231
  %v_column.sroa.98.0.insert.ext1487 = zext nneg i32 %681 to i64, !dbg !231
  %v_column.sroa.98.0.insert.shift1488 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1487, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1490 = or disjoint i64 %v_column.sroa.130.0.insert.shift1643, %v_column.sroa.98.0.insert.shift1488, !dbg !231
  %682 = shl i32 %condval_2.sroa.5.0.1.7, 16, !dbg !231
  %v_column.sroa.66.0.insert.shift1333 = zext i32 %682 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1335 = or disjoint i64 %v_column.sroa.98.0.insert.insert1490, %v_column.sroa.66.0.insert.shift1333, !dbg !231
  %683 = and i32 %condval_2.sroa.5.0.7, 65535, !dbg !231
  %v_column.sroa.0.0.insert.ext1179 = zext nneg i32 %683 to i64, !dbg !231
  %v_column.sroa.0.0.insert.insert1181 = or disjoint i64 %v_column.sroa.66.0.insert.insert1335, %v_column.sroa.0.0.insert.ext1179, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1181, ptr addrspace(3) %add.ptr478.2.7, align 8, !dbg !231
  %v_fetch.sroa.26.6.extract.shift1779 = lshr i32 %condval_2.sroa.5.0.7, 16, !dbg !232
  %v_fetch.sroa.26.6.extract.trunc1780 = zext nneg i32 %v_fetch.sroa.26.6.extract.shift1779 to i64, !dbg !232
  %v_fetch.sroa.74.14.extract.shift1849 = and i32 %condval_2.sroa.5.0.1.7, -65536, !dbg !231
  %v_fetch.sroa.122.22.extract.shift1919 = lshr i32 %condval_2.sroa.5.0.2.7, 16, !dbg !232
  %v_fetch.sroa.122.22.extract.trunc1920 = zext nneg i32 %v_fetch.sroa.122.22.extract.shift1919 to i64, !dbg !232
  %v_fetch.sroa.170.30.extract.shift1989 = lshr i32 %condval_2.sroa.5.0.3.7, 16, !dbg !232
  %v_fetch.sroa.170.30.extract.trunc1990 = zext nneg i32 %v_fetch.sroa.170.30.extract.shift1989 to i64, !dbg !232
  %add467.3.7 = or disjoint i32 %mul466, 768, !dbg !233
  %684 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add467.3.7, !dbg !230
  %xor474.3.7 = shl nuw nsw i32 %xor473, 3, !dbg !230
  %add.ptr478.idx.3.7 = xor i32 %xor474.3.7, 24, !dbg !230
  %add.ptr478.3.7 = getelementptr inbounds i8, ptr addrspace(3) %684, i32 %add.ptr478.idx.3.7, !dbg !230
  %v_column.sroa.130.0.insert.shift1648 = shl nuw i64 %v_fetch.sroa.170.30.extract.trunc1990, 48, !dbg !231
  %v_column.sroa.98.0.insert.shift1493 = shl nuw nsw i64 %v_fetch.sroa.122.22.extract.trunc1920, 32, !dbg !231
  %v_column.sroa.98.0.insert.insert1495 = or disjoint i64 %v_column.sroa.130.0.insert.shift1648, %v_column.sroa.98.0.insert.shift1493, !dbg !231
  %v_column.sroa.66.0.insert.shift1338 = zext i32 %v_fetch.sroa.74.14.extract.shift1849 to i64, !dbg !231
  %v_column.sroa.66.0.insert.insert1340 = or disjoint i64 %v_column.sroa.98.0.insert.insert1495, %v_column.sroa.66.0.insert.shift1338, !dbg !231
  %v_column.sroa.0.0.insert.insert1185 = or disjoint i64 %v_column.sroa.66.0.insert.insert1340, %v_fetch.sroa.26.6.extract.trunc1780, !dbg !231
  store i64 %v_column.sroa.0.0.insert.insert1185, ptr addrspace(3) %add.ptr478.3.7, align 8, !dbg !231
  fence syncscope("warp") release, !dbg !234
  tail call void @llvm.mxc.barrier.warp(), !dbg !237
  fence syncscope("warp") acquire, !dbg !238
  %add495.7 = or disjoint i32 %mul488, %mul494, !dbg !239
  %685 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.7, !dbg !240
  %add.ptr505.idx.7 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.7 = getelementptr inbounds i8, ptr addrspace(3) %685, i32 %add.ptr505.idx.7, !dbg !240
  %686 = load <4 x half>, ptr addrspace(3) %add.ptr505.7, align 8, !dbg !241
  %add490.1.7 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.1.7 = or disjoint i32 %add490.1.7, 64, !dbg !239
  %687 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.1.7, !dbg !240
  %xor501.1.7 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.1.7 = xor i32 %xor501.1.7, 8, !dbg !240
  %add.ptr505.1.7 = getelementptr inbounds i8, ptr addrspace(3) %687, i32 %add.ptr505.idx.1.7, !dbg !240
  %688 = load <4 x half>, ptr addrspace(3) %add.ptr505.1.7, align 8, !dbg !241
  %add490.2.7 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.2.7 = or disjoint i32 %add490.2.7, 128, !dbg !239
  %689 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.2.7, !dbg !240
  %xor501.2.7 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.2.7 = xor i32 %xor501.2.7, 16, !dbg !240
  %add.ptr505.2.7 = getelementptr inbounds i8, ptr addrspace(3) %689, i32 %add.ptr505.idx.2.7, !dbg !240
  %690 = load <4 x half>, ptr addrspace(3) %add.ptr505.2.7, align 8, !dbg !241
  %add490.3.7 = or disjoint i32 %mul488, %mul494, !dbg !239
  %add495.3.7 = or disjoint i32 %add490.3.7, 192, !dbg !239
  %691 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add495.3.7, !dbg !240
  %xor501.3.7 = shl nuw nsw i32 %16, 3, !dbg !240
  %add.ptr505.idx.3.7 = xor i32 %xor501.3.7, 24, !dbg !240
  %add.ptr505.3.7 = getelementptr inbounds i8, ptr addrspace(3) %691, i32 %add.ptr505.idx.3.7, !dbg !240
  %692 = load <4 x half>, ptr addrspace(3) %add.ptr505.3.7, align 8, !dbg !241
  %693 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %686, <4 x half> %652, <4 x float> %numerator.sroa.0.14), !dbg !242
  %694 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %688, <4 x half> %652, <4 x float> %numerator.sroa.98.14), !dbg !242
  %695 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %690, <4 x half> %652, <4 x float> %numerator.sroa.194.14), !dbg !242
  %696 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %692, <4 x half> %652, <4 x float> %numerator.sroa.290.14), !dbg !242
  %add390.7 = fadd contract float %denominator.sroa.0.1.7, %add386.7, !dbg !243
  br label %if.end531.7, !dbg !244

if.end531.7:                                      ; preds = %if.end436.3.7, %if.end531.6
  %numerator.sroa.290.15 = phi <4 x float> [ %numerator.sroa.290.13, %if.end531.6 ], [ %696, %if.end436.3.7 ], !dbg !81
  %numerator.sroa.194.15 = phi <4 x float> [ %numerator.sroa.194.13, %if.end531.6 ], [ %695, %if.end436.3.7 ], !dbg !81
  %numerator.sroa.98.15 = phi <4 x float> [ %numerator.sroa.98.13, %if.end531.6 ], [ %694, %if.end436.3.7 ], !dbg !81
  %numerator.sroa.0.15 = phi <4 x float> [ %numerator.sroa.0.13, %if.end531.6 ], [ %693, %if.end436.3.7 ], !dbg !81
  %denominator.sroa.0.2.7 = phi float [ %denominator.sroa.0.2.6, %if.end531.6 ], [ %add390.7, %if.end436.3.7 ], !dbg !81
  %numerator.sroa.0.0.vec.extract2421 = extractelement <4 x float> %numerator.sroa.0.15, i64 0, !dbg !251
  %numerator.sroa.0.4.vec.extract2458 = extractelement <4 x float> %numerator.sroa.0.15, i64 1, !dbg !251
  %numerator.sroa.0.8.vec.extract2495 = extractelement <4 x float> %numerator.sroa.0.15, i64 2, !dbg !251
  %numerator.sroa.0.12.vec.extract2532 = extractelement <4 x float> %numerator.sroa.0.15, i64 3, !dbg !251
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract2421, %denominator.sroa.0.2.7, !dbg !252
  %div553 = fdiv contract float %numerator.sroa.0.4.vec.extract2458, %denominator.sroa.0.2.7, !dbg !253
  %div557 = fdiv contract float %numerator.sroa.0.8.vec.extract2495, %denominator.sroa.0.2.7, !dbg !254
  %div561 = fdiv contract float %numerator.sroa.0.12.vec.extract2532, %denominator.sroa.0.2.7, !dbg !255
  %numerator.sroa.98.16.vec.extract2575 = extractelement <4 x float> %numerator.sroa.98.15, i64 0, !dbg !251
  %numerator.sroa.98.20.vec.extract2612 = extractelement <4 x float> %numerator.sroa.98.15, i64 1, !dbg !251
  %numerator.sroa.98.24.vec.extract2649 = extractelement <4 x float> %numerator.sroa.98.15, i64 2, !dbg !251
  %numerator.sroa.98.28.vec.extract2686 = extractelement <4 x float> %numerator.sroa.98.15, i64 3, !dbg !251
  %div.1 = fdiv contract float %numerator.sroa.98.16.vec.extract2575, %denominator.sroa.0.2.7, !dbg !252
  %div553.1 = fdiv contract float %numerator.sroa.98.20.vec.extract2612, %denominator.sroa.0.2.7, !dbg !253
  %div557.1 = fdiv contract float %numerator.sroa.98.24.vec.extract2649, %denominator.sroa.0.2.7, !dbg !254
  %div561.1 = fdiv contract float %numerator.sroa.98.28.vec.extract2686, %denominator.sroa.0.2.7, !dbg !255
  %numerator.sroa.194.32.vec.extract2731 = extractelement <4 x float> %numerator.sroa.194.15, i64 0, !dbg !251
  %numerator.sroa.194.36.vec.extract2768 = extractelement <4 x float> %numerator.sroa.194.15, i64 1, !dbg !251
  %numerator.sroa.194.40.vec.extract2805 = extractelement <4 x float> %numerator.sroa.194.15, i64 2, !dbg !251
  %numerator.sroa.194.44.vec.extract2842 = extractelement <4 x float> %numerator.sroa.194.15, i64 3, !dbg !251
  %div.2 = fdiv contract float %numerator.sroa.194.32.vec.extract2731, %denominator.sroa.0.2.7, !dbg !252
  %div553.2 = fdiv contract float %numerator.sroa.194.36.vec.extract2768, %denominator.sroa.0.2.7, !dbg !253
  %div557.2 = fdiv contract float %numerator.sroa.194.40.vec.extract2805, %denominator.sroa.0.2.7, !dbg !254
  %div561.2 = fdiv contract float %numerator.sroa.194.44.vec.extract2842, %denominator.sroa.0.2.7, !dbg !255
  %numerator.sroa.290.48.vec.extract2887 = extractelement <4 x float> %numerator.sroa.290.15, i64 0, !dbg !251
  %numerator.sroa.290.52.vec.extract2924 = extractelement <4 x float> %numerator.sroa.290.15, i64 1, !dbg !251
  %numerator.sroa.290.56.vec.extract2961 = extractelement <4 x float> %numerator.sroa.290.15, i64 2, !dbg !251
  %numerator.sroa.290.60.vec.extract2998 = extractelement <4 x float> %numerator.sroa.290.15, i64 3, !dbg !251
  %div.3 = fdiv contract float %numerator.sroa.290.48.vec.extract2887, %denominator.sroa.0.2.7, !dbg !252
  %div553.3 = fdiv contract float %numerator.sroa.290.52.vec.extract2924, %denominator.sroa.0.2.7, !dbg !253
  %div557.3 = fdiv contract float %numerator.sroa.290.56.vec.extract2961, %denominator.sroa.0.2.7, !dbg !254
  %div561.3 = fdiv contract float %numerator.sroa.290.60.vec.extract2998, %denominator.sroa.0.2.7, !dbg !255
  fence syncscope("warp") release, !dbg !256
  tail call void @llvm.mxc.barrier.warp(), !dbg !259
  fence syncscope("warp") acquire, !dbg !260
  %697 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !265
  %698 = fptrunc float %div to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %697), !dbg !261, !noalias !265
  %699 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !265
  %700 = fptrunc float %div553 to half, !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %699), !dbg !270, !noalias !265
  %701 = bitcast half %698 to i16, !dbg !272
  %702 = bitcast half %700 to i16, !dbg !275
  %703 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !280
  %704 = fptrunc float %div557 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %703), !dbg !276, !noalias !280
  %705 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !285, !noalias !280
  %706 = fptrunc float %div561 to half, !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %705), !dbg !285, !noalias !280
  %707 = bitcast half %704 to i16, !dbg !287
  %708 = bitcast half %706 to i16, !dbg !289
  %__8.sroa.6.0.insert.ext = zext i16 %708 to i64, !dbg !290
  %__8.sroa.6.0.insert.shift = shl nuw i64 %__8.sroa.6.0.insert.ext, 48, !dbg !290
  %__8.sroa.5.0.insert.ext = zext i16 %707 to i64, !dbg !290
  %__8.sroa.5.0.insert.shift = shl nuw nsw i64 %__8.sroa.5.0.insert.ext, 32, !dbg !290
  %__8.sroa.5.0.insert.insert = or disjoint i64 %__8.sroa.6.0.insert.shift, %__8.sroa.5.0.insert.shift, !dbg !290
  %__8.sroa.4.0.insert.ext = zext i16 %702 to i64, !dbg !290
  %__8.sroa.4.0.insert.shift = shl nuw nsw i64 %__8.sroa.4.0.insert.ext, 16, !dbg !290
  %__8.sroa.4.0.insert.insert = or disjoint i64 %__8.sroa.5.0.insert.insert, %__8.sroa.4.0.insert.shift, !dbg !290
  %__8.sroa.0.0.insert.ext = zext i16 %701 to i64, !dbg !290
  %__8.sroa.0.0.insert.insert = or disjoint i64 %__8.sroa.4.0.insert.insert, %__8.sroa.0.0.insert.ext, !dbg !290
  store i64 %__8.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr47, align 8, !dbg !291
  %709 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !265
  %710 = fptrunc float %div.1 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %709), !dbg !261, !noalias !265
  %711 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !265
  %712 = fptrunc float %div553.1 to half, !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %711), !dbg !270, !noalias !265
  %713 = bitcast half %710 to i16, !dbg !272
  %714 = bitcast half %712 to i16, !dbg !275
  %715 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !280
  %716 = fptrunc float %div557.1 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %715), !dbg !276, !noalias !280
  %717 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !285, !noalias !280
  %718 = fptrunc float %div561.1 to half, !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %717), !dbg !285, !noalias !280
  %719 = bitcast half %716 to i16, !dbg !287
  %720 = bitcast half %718 to i16, !dbg !289
  %__8.sroa.6.0.insert.ext.1 = zext i16 %720 to i64, !dbg !290
  %__8.sroa.6.0.insert.shift.1 = shl nuw i64 %__8.sroa.6.0.insert.ext.1, 48, !dbg !290
  %__8.sroa.5.0.insert.ext.1 = zext i16 %719 to i64, !dbg !290
  %__8.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.1, 32, !dbg !290
  %__8.sroa.5.0.insert.insert.1 = or disjoint i64 %__8.sroa.6.0.insert.shift.1, %__8.sroa.5.0.insert.shift.1, !dbg !290
  %__8.sroa.4.0.insert.ext.1 = zext i16 %714 to i64, !dbg !290
  %__8.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.1, 16, !dbg !290
  %__8.sroa.4.0.insert.insert.1 = or disjoint i64 %__8.sroa.5.0.insert.insert.1, %__8.sroa.4.0.insert.shift.1, !dbg !290
  %__8.sroa.0.0.insert.ext.1 = zext i16 %713 to i64, !dbg !290
  %__8.sroa.0.0.insert.insert.1 = or disjoint i64 %__8.sroa.4.0.insert.insert.1, %__8.sroa.0.0.insert.ext.1, !dbg !290
  store i64 %__8.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !291
  %721 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !265
  %722 = fptrunc float %div.2 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %721), !dbg !261, !noalias !265
  %723 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !265
  %724 = fptrunc float %div553.2 to half, !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %723), !dbg !270, !noalias !265
  %725 = bitcast half %722 to i16, !dbg !272
  %726 = bitcast half %724 to i16, !dbg !275
  %727 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !280
  %728 = fptrunc float %div557.2 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %727), !dbg !276, !noalias !280
  %729 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !285, !noalias !280
  %730 = fptrunc float %div561.2 to half, !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %729), !dbg !285, !noalias !280
  %731 = bitcast half %728 to i16, !dbg !287
  %732 = bitcast half %730 to i16, !dbg !289
  %__8.sroa.6.0.insert.ext.2 = zext i16 %732 to i64, !dbg !290
  %__8.sroa.6.0.insert.shift.2 = shl nuw i64 %__8.sroa.6.0.insert.ext.2, 48, !dbg !290
  %__8.sroa.5.0.insert.ext.2 = zext i16 %731 to i64, !dbg !290
  %__8.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.2, 32, !dbg !290
  %__8.sroa.5.0.insert.insert.2 = or disjoint i64 %__8.sroa.6.0.insert.shift.2, %__8.sroa.5.0.insert.shift.2, !dbg !290
  %__8.sroa.4.0.insert.ext.2 = zext i16 %726 to i64, !dbg !290
  %__8.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.2, 16, !dbg !290
  %__8.sroa.4.0.insert.insert.2 = or disjoint i64 %__8.sroa.5.0.insert.insert.2, %__8.sroa.4.0.insert.shift.2, !dbg !290
  %__8.sroa.0.0.insert.ext.2 = zext i16 %725 to i64, !dbg !290
  %__8.sroa.0.0.insert.insert.2 = or disjoint i64 %__8.sroa.4.0.insert.insert.2, %__8.sroa.0.0.insert.ext.2, !dbg !290
  store i64 %__8.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !291
  %733 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !261, !noalias !265
  %734 = fptrunc float %div.3 to half, !dbg !261
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %733), !dbg !261, !noalias !265
  %735 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !270, !noalias !265
  %736 = fptrunc float %div553.3 to half, !dbg !270
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %735), !dbg !270, !noalias !265
  %737 = bitcast half %734 to i16, !dbg !272
  %738 = bitcast half %736 to i16, !dbg !275
  %739 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !276, !noalias !280
  %740 = fptrunc float %div557.3 to half, !dbg !276
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %739), !dbg !276, !noalias !280
  %741 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !285, !noalias !280
  %742 = fptrunc float %div561.3 to half, !dbg !285
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %741), !dbg !285, !noalias !280
  %743 = bitcast half %740 to i16, !dbg !287
  %744 = bitcast half %742 to i16, !dbg !289
  %__8.sroa.6.0.insert.ext.3 = zext i16 %744 to i64, !dbg !290
  %__8.sroa.6.0.insert.shift.3 = shl nuw i64 %__8.sroa.6.0.insert.ext.3, 48, !dbg !290
  %__8.sroa.5.0.insert.ext.3 = zext i16 %743 to i64, !dbg !290
  %__8.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.3, 32, !dbg !290
  %__8.sroa.5.0.insert.insert.3 = or disjoint i64 %__8.sroa.6.0.insert.shift.3, %__8.sroa.5.0.insert.shift.3, !dbg !290
  %__8.sroa.4.0.insert.ext.3 = zext i16 %738 to i64, !dbg !290
  %__8.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.3, 16, !dbg !290
  %__8.sroa.4.0.insert.insert.3 = or disjoint i64 %__8.sroa.5.0.insert.insert.3, %__8.sroa.4.0.insert.shift.3, !dbg !290
  %__8.sroa.0.0.insert.ext.3 = zext i16 %737 to i64, !dbg !290
  %__8.sroa.0.0.insert.insert.3 = or disjoint i64 %__8.sroa.4.0.insert.insert.3, %__8.sroa.0.0.insert.ext.3, !dbg !290
  store i64 %__8.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !291
  fence syncscope("warp") release, !dbg !292
  tail call void @llvm.mxc.barrier.warp(), !dbg !295
  fence syncscope("warp") acquire, !dbg !296
  %add.ptr643 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !297
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr643, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep856, i64 16, i1 false), !dbg !298, !tbaa.struct !47, !call_argsrelate !299
  %add.ptr643.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %4, !dbg !297
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr643.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep857.1, i64 16, i1 false), !dbg !298, !tbaa.struct !47, !call_argsrelate !299
  ret void, !dbg !300
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v054_codex_power_s8_record_max_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v054_codex_power_s8_record_max_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 27, column: 8, scope: !40)
!44 = !DILocation(line: 27, column: 3, scope: !40)
!45 = !DILocation(line: 28, column: 154, scope: !40)
!46 = !DILocation(line: 28, column: 140, scope: !40)
!47 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!48 = !{i32 -1, i32 3, i32 -1, i32 -1}
!49 = !DILocation(line: 28, column: 235, scope: !40)
!50 = !DILocation(line: 28, column: 22, scope: !40)
!51 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !54)
!52 = distinct !DISubprogram(name: "__barrier_warp", scope: !53, file: !53, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!53 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!54 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !56)
!55 = distinct !DISubprogram(name: "__syncwarp", scope: !53, file: !53, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!56 = distinct !DILocation(line: 30, column: 3, scope: !40)
!57 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !54)
!58 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !54)
!59 = !DILocation(line: 33, column: 140, scope: !40)
!60 = !DILocation(line: 33, column: 168, scope: !40)
!61 = !DILocation(line: 33, column: 94, scope: !40)
!62 = !DILocation(line: 33, column: 174, scope: !40)
!63 = !DILocation(line: 33, column: 57, scope: !40)
!64 = !DILocation(line: 33, column: 38, scope: !40)
!65 = !DILocation(line: 33, column: 111, scope: !40)
!66 = !DILocation(line: 43, column: 3, scope: !40)
!67 = !DILocation(line: 44, column: 24, scope: !40)
!68 = !DILocation(line: 44, column: 101, scope: !40)
!69 = !DILocation(line: 45, column: 12, scope: !40)
!70 = !DILocation(line: 45, column: 28, scope: !40)
!71 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !72)
!72 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !73)
!73 = distinct !DILocation(line: 46, column: 7, scope: !40)
!74 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !72)
!75 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !72)
!76 = !DILocation(line: 48, column: 7, scope: !40)
!77 = !DILocation(line: 51, column: 74, scope: !40)
!78 = !DILocation(line: 51, column: 13, scope: !40)
!79 = !DILocation(line: 52, column: 19, scope: !40)
!80 = !DILocation(line: 53, column: 9, scope: !40)
!81 = !DILocation(line: 0, scope: !40)
!82 = !DILocation(line: 56, column: 146, scope: !40)
!83 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !84)
!84 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !85)
!85 = distinct !DILocation(line: 58, column: 7, scope: !40)
!86 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !84)
!87 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !84)
!88 = !DILocation(line: 63, column: 32, scope: !40)
!89 = !DILocation(line: 65, column: 37, scope: !40)
!90 = !DILocation(line: 73, column: 74, scope: !40)
!91 = !DILocation(line: 73, column: 13, scope: !40)
!92 = !DILocation(line: 73, column: 63, scope: !40)
!93 = !DILocation(line: 351, column: 10, scope: !94, inlinedAt: !96)
!94 = distinct !DISubprogram(name: "max", scope: !95, file: !95, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!95 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!96 = distinct !DILocation(line: 83, column: 28, scope: !40)
!97 = !DILocation(line: 1018, column: 9, scope: !98, inlinedAt: !99)
!98 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !53, file: !53, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!99 = distinct !DILocation(line: 85, column: 48, scope: !40)
!100 = !DILocation(line: 171, column: 37, scope: !101, inlinedAt: !102)
!101 = distinct !DISubprogram(name: "__lane_id", scope: !53, file: !53, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!102 = distinct !DILocation(line: 990, column: 14, scope: !103, inlinedAt: !104)
!103 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !53, file: !53, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!104 = distinct !DILocation(line: 1019, column: 11, scope: !98, inlinedAt: !99)
!105 = !DILocation(line: 171, column: 10, scope: !101, inlinedAt: !102)
!106 = !DILocation(line: 991, column: 20, scope: !103, inlinedAt: !104)
!107 = !DILocation(line: 992, column: 36, scope: !103, inlinedAt: !104)
!108 = !DILocation(line: 992, column: 17, scope: !103, inlinedAt: !104)
!109 = !DILocation(line: 992, column: 11, scope: !103, inlinedAt: !104)
!110 = !DILocation(line: 993, column: 43, scope: !103, inlinedAt: !104)
!111 = !DILocation(line: 993, column: 10, scope: !103, inlinedAt: !104)
!112 = !DILocation(line: 1020, column: 14, scope: !98, inlinedAt: !99)
!113 = !DILocation(line: 351, column: 10, scope: !94, inlinedAt: !114)
!114 = distinct !DILocation(line: 85, column: 26, scope: !40)
!115 = !DILocation(line: 1018, column: 9, scope: !98, inlinedAt: !116)
!116 = distinct !DILocation(line: 86, column: 48, scope: !40)
!117 = !DILocation(line: 171, column: 37, scope: !101, inlinedAt: !118)
!118 = distinct !DILocation(line: 990, column: 14, scope: !103, inlinedAt: !119)
!119 = distinct !DILocation(line: 1019, column: 11, scope: !98, inlinedAt: !116)
!120 = !DILocation(line: 171, column: 10, scope: !101, inlinedAt: !118)
!121 = !DILocation(line: 991, column: 20, scope: !103, inlinedAt: !119)
!122 = !DILocation(line: 992, column: 36, scope: !103, inlinedAt: !119)
!123 = !DILocation(line: 992, column: 17, scope: !103, inlinedAt: !119)
!124 = !DILocation(line: 992, column: 11, scope: !103, inlinedAt: !119)
!125 = !DILocation(line: 993, column: 43, scope: !103, inlinedAt: !119)
!126 = !DILocation(line: 993, column: 10, scope: !103, inlinedAt: !119)
!127 = !DILocation(line: 1020, column: 14, scope: !98, inlinedAt: !116)
!128 = !DILocation(line: 351, column: 10, scope: !94, inlinedAt: !129)
!129 = distinct !DILocation(line: 86, column: 26, scope: !40)
!130 = !DILocation(line: 87, column: 22, scope: !40)
!131 = !DILocation(line: 87, column: 11, scope: !40)
!132 = !DILocation(line: 88, column: 41, scope: !40)
!133 = !DILocation(line: 88, column: 61, scope: !40)
!134 = !DILocation(line: 285, column: 49, scope: !135, inlinedAt: !136)
!135 = distinct !DISubprogram(name: "exp2f", scope: !95, file: !95, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!136 = distinct !DILocation(line: 88, column: 22, scope: !40)
!137 = !DILocation(line: 94, column: 26, scope: !40)
!138 = !DILocation(line: 98, column: 49, scope: !40)
!139 = !DILocation(line: 102, column: 7, scope: !40)
!140 = !DILocation(line: 112, column: 28, scope: !40)
!141 = !DILocation(line: 113, column: 28, scope: !40)
!142 = !DILocation(line: 114, column: 28, scope: !40)
!143 = !DILocation(line: 115, column: 28, scope: !40)
!144 = !DILocation(line: 117, column: 25, scope: !40)
!145 = !DILocation(line: 118, column: 25, scope: !40)
!146 = !DILocation(line: 119, column: 25, scope: !40)
!147 = !DILocation(line: 120, column: 25, scope: !40)
!148 = !DILocation(line: 122, column: 23, scope: !40)
!149 = !DILocation(line: 123, column: 23, scope: !40)
!150 = !DILocation(line: 124, column: 23, scope: !40)
!151 = !DILocation(line: 125, column: 23, scope: !40)
!152 = !DILocation(line: 285, column: 49, scope: !135, inlinedAt: !153)
!153 = distinct !DILocation(line: 126, column: 15, scope: !40)
!154 = !DILocation(line: 285, column: 49, scope: !135, inlinedAt: !155)
!155 = distinct !DILocation(line: 127, column: 15, scope: !40)
!156 = !DILocation(line: 285, column: 49, scope: !135, inlinedAt: !157)
!157 = distinct !DILocation(line: 128, column: 15, scope: !40)
!158 = !DILocation(line: 285, column: 49, scope: !135, inlinedAt: !159)
!159 = distinct !DILocation(line: 129, column: 15, scope: !40)
!160 = !DILocation(line: 1007, column: 10, scope: !161, inlinedAt: !163)
!161 = distinct !DISubprogram(name: "__float2half_rn", scope: !162, file: !162, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!162 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!163 = distinct !DILocation(line: 1077, column: 18, scope: !164, inlinedAt: !165)
!164 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !162, file: !162, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!165 = distinct !DILocation(line: 1295, column: 23, scope: !166, inlinedAt: !167)
!166 = distinct !DISubprogram(name: "__float22half2_rn", scope: !162, file: !162, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!167 = distinct !DILocation(line: 130, column: 29, scope: !40)
!168 = !{!169, !171}
!169 = distinct !{!169, !170, !"_ZL17__floats2half2_rnff: %agg.result"}
!170 = distinct !{!170, !"_ZL17__floats2half2_rnff"}
!171 = distinct !{!171, !172, !"_ZL17__float22half2_rn6float2: %agg.result"}
!172 = distinct !{!172, !"_ZL17__float22half2_rn6float2"}
!173 = !DILocation(line: 1007, column: 10, scope: !161, inlinedAt: !174)
!174 = distinct !DILocation(line: 1077, column: 38, scope: !164, inlinedAt: !165)
!175 = !DILocation(line: 1007, column: 10, scope: !161, inlinedAt: !176)
!176 = distinct !DILocation(line: 1077, column: 18, scope: !164, inlinedAt: !177)
!177 = distinct !DILocation(line: 1295, column: 23, scope: !166, inlinedAt: !178)
!178 = distinct !DILocation(line: 131, column: 29, scope: !40)
!179 = !{!180, !182}
!180 = distinct !{!180, !181, !"_ZL17__floats2half2_rnff: %agg.result"}
!181 = distinct !{!181, !"_ZL17__floats2half2_rnff"}
!182 = distinct !{!182, !183, !"_ZL17__float22half2_rn6float2: %agg.result"}
!183 = distinct !{!183, !"_ZL17__float22half2_rn6float2"}
!184 = !DILocation(line: 1007, column: 10, scope: !161, inlinedAt: !185)
!185 = distinct !DILocation(line: 1077, column: 38, scope: !164, inlinedAt: !177)
!186 = !DILocation(line: 132, column: 36, scope: !40)
!187 = !DILocation(line: 1082, column: 16, scope: !188, inlinedAt: !189)
!188 = distinct !DISubprogram(name: "__half2float", scope: !162, file: !162, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!189 = distinct !DILocation(line: 136, column: 55, scope: !190, inlinedAt: !191)
!190 = distinct !DISubprogram(name: "operator float", scope: !162, file: !162, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!191 = distinct !DILocation(line: 136, column: 52, scope: !40)
!192 = !DILocation(line: 136, column: 42, scope: !40)
!193 = !DILocation(line: 1018, column: 9, scope: !98, inlinedAt: !194)
!194 = distinct !DILocation(line: 138, column: 42, scope: !40)
!195 = !DILocation(line: 171, column: 37, scope: !101, inlinedAt: !196)
!196 = distinct !DILocation(line: 990, column: 14, scope: !103, inlinedAt: !197)
!197 = distinct !DILocation(line: 1019, column: 11, scope: !98, inlinedAt: !194)
!198 = !DILocation(line: 171, column: 10, scope: !101, inlinedAt: !196)
!199 = !DILocation(line: 991, column: 20, scope: !103, inlinedAt: !197)
!200 = !DILocation(line: 992, column: 36, scope: !103, inlinedAt: !197)
!201 = !DILocation(line: 992, column: 17, scope: !103, inlinedAt: !197)
!202 = !DILocation(line: 992, column: 11, scope: !103, inlinedAt: !197)
!203 = !DILocation(line: 993, column: 43, scope: !103, inlinedAt: !197)
!204 = !DILocation(line: 993, column: 10, scope: !103, inlinedAt: !197)
!205 = !DILocation(line: 1020, column: 14, scope: !98, inlinedAt: !194)
!206 = !DILocation(line: 138, column: 40, scope: !40)
!207 = !DILocation(line: 1018, column: 9, scope: !98, inlinedAt: !208)
!208 = distinct !DILocation(line: 139, column: 42, scope: !40)
!209 = !DILocation(line: 171, column: 37, scope: !101, inlinedAt: !210)
!210 = distinct !DILocation(line: 990, column: 14, scope: !103, inlinedAt: !211)
!211 = distinct !DILocation(line: 1019, column: 11, scope: !98, inlinedAt: !208)
!212 = !DILocation(line: 171, column: 10, scope: !101, inlinedAt: !210)
!213 = !DILocation(line: 991, column: 20, scope: !103, inlinedAt: !211)
!214 = !DILocation(line: 992, column: 36, scope: !103, inlinedAt: !211)
!215 = !DILocation(line: 992, column: 17, scope: !103, inlinedAt: !211)
!216 = !DILocation(line: 992, column: 11, scope: !103, inlinedAt: !211)
!217 = !DILocation(line: 993, column: 43, scope: !103, inlinedAt: !211)
!218 = !DILocation(line: 993, column: 10, scope: !103, inlinedAt: !211)
!219 = !DILocation(line: 1020, column: 14, scope: !98, inlinedAt: !208)
!220 = !DILocation(line: 139, column: 40, scope: !40)
!221 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !222)
!222 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !223)
!223 = distinct !DILocation(line: 141, column: 7, scope: !40)
!224 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !222)
!225 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !222)
!226 = !DILocation(line: 146, column: 13, scope: !40)
!227 = !DILocation(line: 147, column: 35, scope: !40)
!228 = !DILocation(line: 147, column: 21, scope: !40)
!229 = !DILocation(line: 148, column: 9, scope: !40)
!230 = !DILocation(line: 158, column: 26, scope: !40)
!231 = !DILocation(line: 158, column: 159, scope: !40)
!232 = !DILocation(line: 156, column: 27, scope: !40)
!233 = !DILocation(line: 158, column: 42, scope: !40)
!234 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !235)
!235 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !236)
!236 = distinct !DILocation(line: 160, column: 7, scope: !40)
!237 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !235)
!238 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !235)
!239 = !DILocation(line: 163, column: 121, scope: !40)
!240 = !DILocation(line: 163, column: 65, scope: !40)
!241 = !DILocation(line: 163, column: 46, scope: !40)
!242 = !DILocation(line: 168, column: 46, scope: !40)
!243 = !DILocation(line: 140, column: 40, scope: !40)
!244 = !DILocation(line: 43, column: 40, scope: !40)
!245 = !DILocation(line: 44, column: 88, scope: !40)
!246 = !DILocation(line: 92, column: 25, scope: !40)
!247 = !DILocation(line: 95, column: 26, scope: !40)
!248 = !DILocation(line: 96, column: 26, scope: !40)
!249 = !DILocation(line: 97, column: 26, scope: !40)
!250 = !DILocation(line: 100, column: 42, scope: !40)
!251 = !DILocation(line: 178, column: 21, scope: !40)
!252 = !DILocation(line: 180, column: 22, scope: !40)
!253 = !DILocation(line: 181, column: 22, scope: !40)
!254 = !DILocation(line: 182, column: 22, scope: !40)
!255 = !DILocation(line: 183, column: 22, scope: !40)
!256 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !257)
!257 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !258)
!258 = distinct !DILocation(line: 186, column: 3, scope: !40)
!259 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !257)
!260 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !257)
!261 = !DILocation(line: 1007, column: 10, scope: !161, inlinedAt: !262)
!262 = distinct !DILocation(line: 1077, column: 18, scope: !164, inlinedAt: !263)
!263 = distinct !DILocation(line: 1295, column: 23, scope: !166, inlinedAt: !264)
!264 = distinct !DILocation(line: 191, column: 27, scope: !40)
!265 = !{!266, !268}
!266 = distinct !{!266, !267, !"_ZL17__floats2half2_rnff: %agg.result"}
!267 = distinct !{!267, !"_ZL17__floats2half2_rnff"}
!268 = distinct !{!268, !269, !"_ZL17__float22half2_rn6float2: %agg.result"}
!269 = distinct !{!269, !"_ZL17__float22half2_rn6float2"}
!270 = !DILocation(line: 1007, column: 10, scope: !161, inlinedAt: !271)
!271 = distinct !DILocation(line: 1077, column: 38, scope: !164, inlinedAt: !263)
!272 = !DILocation(line: 596, column: 67, scope: !273, inlinedAt: !274)
!273 = distinct !DISubprogram(name: "__half2", scope: !162, file: !162, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!274 = distinct !DILocation(line: 1077, column: 10, scope: !164, inlinedAt: !263)
!275 = !DILocation(line: 596, column: 73, scope: !273, inlinedAt: !274)
!276 = !DILocation(line: 1007, column: 10, scope: !161, inlinedAt: !277)
!277 = distinct !DILocation(line: 1077, column: 18, scope: !164, inlinedAt: !278)
!278 = distinct !DILocation(line: 1295, column: 23, scope: !166, inlinedAt: !279)
!279 = distinct !DILocation(line: 192, column: 27, scope: !40)
!280 = !{!281, !283}
!281 = distinct !{!281, !282, !"_ZL17__floats2half2_rnff: %agg.result"}
!282 = distinct !{!282, !"_ZL17__floats2half2_rnff"}
!283 = distinct !{!283, !284, !"_ZL17__float22half2_rn6float2: %agg.result"}
!284 = distinct !{!284, !"_ZL17__float22half2_rn6float2"}
!285 = !DILocation(line: 1007, column: 10, scope: !161, inlinedAt: !286)
!286 = distinct !DILocation(line: 1077, column: 38, scope: !164, inlinedAt: !278)
!287 = !DILocation(line: 596, column: 67, scope: !273, inlinedAt: !288)
!288 = distinct !DILocation(line: 1077, column: 10, scope: !164, inlinedAt: !278)
!289 = !DILocation(line: 596, column: 73, scope: !273, inlinedAt: !288)
!290 = !DILocation(line: 193, column: 38, scope: !40)
!291 = !DILocation(line: 194, column: 184, scope: !40)
!292 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !293)
!293 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !294)
!294 = distinct !DILocation(line: 196, column: 3, scope: !40)
!295 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !293)
!296 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !293)
!297 = !DILocation(line: 199, column: 22, scope: !40)
!298 = !DILocation(line: 199, column: 134, scope: !40)
!299 = !{i32 2, i32 -1, i32 -1, i32 -1}
!300 = !DILocation(line: 201, column: 1, scope: !40)
