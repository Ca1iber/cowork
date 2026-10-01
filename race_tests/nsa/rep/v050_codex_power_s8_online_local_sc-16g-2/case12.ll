; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v050_codex_power_s8_online_local_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v050_codex_power_s8_online_local_sc-16g-2/codegen/case12.device.cpp"
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
  %xor761 = and i32 %mul11, 56
  %call18.masked = and i32 %2, 1016
  %mul20 = xor i32 %xor761, %call18.masked
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul15, !dbg !43
  %invariant.gep854 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul20, !dbg !43
  %3 = zext nneg i32 %add9 to i64, !dbg !44
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %3, !dbg !45
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep854, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr, i64 16, i1 false), !dbg !46, !tbaa.struct !47, !call_argsrelate !48
  %4 = add nuw nsw i64 %3, 512, !dbg !49
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %4, !dbg !45
  %gep855.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1024, !dbg !50
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep855.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr.1, i64 16, i1 false), !dbg !46, !tbaa.struct !47, !call_argsrelate !48
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
  %invariant.gep881 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul106, !dbg !66
  %mul193 = and i32 %5, 252
  %shr396 = lshr i32 %2, 4
  %10 = shl nuw nsw i32 %2, 4
  %11 = and i32 %10, 16128
  %12 = shl nuw nsw i32 %2, 2
  %13 = and i32 %12, 60
  %14 = or disjoint i32 %11, %13
  %15 = zext nneg i32 %14 to i64
  %add412 = or disjoint i64 %mul97, %15
  %mul465 = and i32 %10, 240
  %shr471 = and i32 %5, 3
  %xor472 = xor i32 %shr471, %shr396
  %and486 = shl nuw nsw i32 %2, 8
  %mul487 = and i32 %and486, 768
  %mul493 = and i32 %12, 48
  %and499 = and i32 %2, 3
  %16 = xor i32 %shr396, %and499
  %17 = zext nneg i32 %add78 to i64, !dbg !66
  %arrayidx80 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %17, !dbg !67
  %18 = load i32, ptr addrspace(1) %arrayidx80, align 4, !dbg !67, !tbaa !30
  %mul81 = shl nsw i32 %18, 4, !dbg !68
  %cmp82 = icmp slt i32 %18, 0, !dbg !69
  %cmp84.not = icmp sgt i32 %mul81, %1
  %or.cond = select i1 %cmp82, i1 true, i1 %cmp84.not, !dbg !70
  br i1 %or.cond, label %if.end530, label %if.then, !dbg !70

if.then:                                          ; preds = %entry
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %add91 = add nuw nsw i32 %mul81, %shr90
  %conv101 = zext nneg i32 %mul81 to i64
  %.idx = shl nuw nsw i64 %conv101, 7
  %gep = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep881, i64 %.idx, !dbg !76
  %cmp94 = icmp ult i32 %add91, 1024, !dbg !77
  br i1 %cmp94, label %if.then95, label %if.end, !dbg !78

if.then95:                                        ; preds = %if.then
  %gep865 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %mul97
  %condval.sroa.7.0.add.ptr108.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep865, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep865, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep865, i64 4
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep865, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx, align 4, !dbg !79, !tbaa !30
  br label %if.end, !dbg !80

if.end:                                           ; preds = %if.then, %if.then95
  %condval.sroa.0.0 = phi i32 [ %condval.sroa.0.0.copyload, %if.then95 ], [ 0, %if.then ], !dbg !81
  %condval.sroa.5.0 = phi i32 [ %condval.sroa.5.0.copyload, %if.then95 ], [ 0, %if.then ], !dbg !81
  %condval.sroa.6.0 = phi i32 [ %condval.sroa.6.0.copyload, %if.then95 ], [ 0, %if.then ], !dbg !81
  %condval.sroa.7.0 = phi i32 [ %condval.sroa.7.0.copyload, %if.then95 ], [ 0, %if.then ], !dbg !81
  store i32 %condval.sroa.0.0, ptr addrspace(3) %invariant.gep854, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 4, !dbg !82
  store i32 %condval.sroa.5.0, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 8, !dbg !82
  store i32 %condval.sroa.6.0, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 12, !dbg !82
  store i32 %condval.sroa.7.0, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx, align 4, !dbg !82, !tbaa !30
  %cmp94.1 = icmp ult i32 %add91, 1016, !dbg !77
  br i1 %cmp94.1, label %if.then95.1, label %if.end.1, !dbg !78

if.then95.1:                                      ; preds = %if.end
  %add100.1 = or disjoint i64 %mul97, 512
  %gep865.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %add100.1
  %condval.sroa.7.0.add.ptr108.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1, i64 4
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep865.1, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.1, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.1, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.1, align 4, !dbg !79, !tbaa !30
  br label %if.end.1, !dbg !80

if.end.1:                                         ; preds = %if.then95.1, %if.end
  %condval.sroa.0.0.1 = phi i32 [ %condval.sroa.0.0.copyload.1, %if.then95.1 ], [ 0, %if.end ], !dbg !81
  %condval.sroa.5.0.1 = phi i32 [ %condval.sroa.5.0.copyload.1, %if.then95.1 ], [ 0, %if.end ], !dbg !81
  %condval.sroa.6.0.1 = phi i32 [ %condval.sroa.6.0.copyload.1, %if.then95.1 ], [ 0, %if.end ], !dbg !81
  %condval.sroa.7.0.1 = phi i32 [ %condval.sroa.7.0.copyload.1, %if.then95.1 ], [ 0, %if.end ], !dbg !81
  store i32 %condval.sroa.0.0.1, ptr addrspace(3) %gep855.1, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1028, !dbg !82
  store i32 %condval.sroa.5.0.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.1, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1032, !dbg !82
  store i32 %condval.sroa.6.0.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.1, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1036, !dbg !82
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
  %scores.sroa.0.0.vec.extract2071 = extractelement <4 x float> %22, i64 0
  %spec.select = select i1 %cmp197.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2071, !dbg !91
  %cmp197.not.1.not = icmp slt i32 %add194, %1, !dbg !90
  %scores.sroa.0.4.vec.extract2176 = extractelement <4 x float> %22, i64 1, !dbg !91
  %condval_1.0.1 = select i1 %cmp197.not.1.not, float %scores.sroa.0.4.vec.extract2176, float 0xFFF0000000000000, !dbg !91
  %add195.2 = or disjoint i32 %add194, 2, !dbg !92
  %cmp197.not.2 = icmp sgt i32 %add195.2, %1, !dbg !90
  %scores.sroa.0.8.vec.extract2253 = extractelement <4 x float> %22, i64 2, !dbg !91
  %condval_1.0.2 = select i1 %cmp197.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2253, !dbg !91
  %add195.3 = or disjoint i32 %add194, 3, !dbg !92
  %cmp197.not.3 = icmp sgt i32 %add195.3, %1, !dbg !90
  %scores.sroa.0.12.vec.extract2330 = extractelement <4 x float> %22, i64 3, !dbg !91
  %condval_1.0.3 = select i1 %cmp197.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2330, !dbg !91
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
  %xor.i.i783 = xor i32 %36, 16, !dbg !121
  %37 = and i32 %36, -64, !dbg !122
  %and.i.i784 = add nsw i32 %37, 64, !dbg !122
  %cmp.not.i.i785 = icmp slt i32 %xor.i.i783, %and.i.i784, !dbg !123
  %cond.i.i786 = select i1 %cmp.not.i.i785, i32 %xor.i.i783, i32 %36, !dbg !124
  %shl.i.i787 = shl i32 %cond.i.i786, 2, !dbg !125
  %38 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i787, i32 %34), !dbg !126
  %39 = bitcast i32 %38 to float, !dbg !127
  %40 = tail call contract noundef float @llvm.maxnum.f32(float %33, float %39), !dbg !128
  %41 = tail call contract noundef float @llvm.maxnum.f32(float %40, float 0xFFF0000000000000), !dbg !130
  %sub = fsub contract float 0xFFF0000000000000, %41, !dbg !132
  %mul241 = fmul contract float %sub, 0x3FC7154760000000, !dbg !133
  %cmp.i.i = fcmp contract olt float %mul241, -1.260000e+02, !dbg !134
  %cond.i.i788 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !134
  %add.i.i = fadd contract float %mul241, %cond.i.i788, !dbg !134
  %42 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !134
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !134
  %mul.i.i = fmul contract float %cond2.i.i, %42, !dbg !134
  %mul258 = fmul contract float %mul.i.i, 0.000000e+00, !dbg !137
  %numerator.sroa.0.0.vec.insert2386 = insertelement <4 x float> poison, float %mul258, i64 0, !dbg !138
  %numerator.sroa.0.12.vec.insert2497 = shufflevector <4 x float> %numerator.sroa.0.0.vec.insert2386, <4 x float> poison, <4 x i32> zeroinitializer, !dbg !138
  %sub291 = fsub contract float %spec.select, %41, !dbg !139
  %sub295 = fsub contract float %condval_1.0.1, %41, !dbg !140
  %sub299 = fsub contract float %condval_1.0.2, %41, !dbg !141
  %sub303 = fsub contract float %condval_1.0.3, %41, !dbg !142
  %mul308 = fmul contract float %sub291, 0x3FC7154760000000, !dbg !143
  %mul312 = fmul contract float %sub295, 0x3FC7154760000000, !dbg !144
  %mul316 = fmul contract float %sub299, 0x3FC7154760000000, !dbg !145
  %mul320 = fmul contract float %sub303, 0x3FC7154760000000, !dbg !146
  %add325 = fadd contract float %mul308, 8.000000e+00, !dbg !147
  %add329 = fadd contract float %mul312, 8.000000e+00, !dbg !148
  %add333 = fadd contract float %mul316, 8.000000e+00, !dbg !149
  %add337 = fadd contract float %mul320, 8.000000e+00, !dbg !150
  %cmp.i.i793 = fcmp contract olt float %add325, -1.260000e+02, !dbg !151
  %cond.i.i794 = select contract i1 %cmp.i.i793, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i795 = fadd contract float %add325, %cond.i.i794, !dbg !151
  %43 = tail call contract float @llvm.exp2.f32(float %add.i.i795), !dbg !151
  %cond2.i.i796 = select contract i1 %cmp.i.i793, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i797 = fmul contract float %cond2.i.i796, %43, !dbg !151
  %cmp.i.i798 = fcmp contract olt float %add329, -1.260000e+02, !dbg !153
  %cond.i.i799 = select contract i1 %cmp.i.i798, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i800 = fadd contract float %add329, %cond.i.i799, !dbg !153
  %44 = tail call contract float @llvm.exp2.f32(float %add.i.i800), !dbg !153
  %cond2.i.i801 = select contract i1 %cmp.i.i798, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i802 = fmul contract float %cond2.i.i801, %44, !dbg !153
  %cmp.i.i803 = fcmp contract olt float %add333, -1.260000e+02, !dbg !155
  %cond.i.i804 = select contract i1 %cmp.i.i803, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i805 = fadd contract float %add333, %cond.i.i804, !dbg !155
  %45 = tail call contract float @llvm.exp2.f32(float %add.i.i805), !dbg !155
  %cond2.i.i806 = select contract i1 %cmp.i.i803, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i807 = fmul contract float %cond2.i.i806, %45, !dbg !155
  %cmp.i.i808 = fcmp contract olt float %add337, -1.260000e+02, !dbg !157
  %cond.i.i809 = select contract i1 %cmp.i.i808, float 6.400000e+01, float 0.000000e+00, !dbg !157
  %add.i.i810 = fadd contract float %add337, %cond.i.i809, !dbg !157
  %46 = tail call contract float @llvm.exp2.f32(float %add.i.i810), !dbg !157
  %cond2.i.i811 = select contract i1 %cmp.i.i808, float 0x3BF0000000000000, float 1.000000e+00, !dbg !157
  %mul.i.i812 = fmul contract float %cond2.i.i811, %46, !dbg !157
  %47 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !159
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !159, !noalias !167
  %48 = fptrunc float %mul.i.i797 to half, !dbg !159
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %47), !dbg !159, !noalias !167
  %49 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !167
  %50 = fptrunc float %mul.i.i802 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %49), !dbg !172, !noalias !167
  %51 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !174, !noalias !178
  %52 = fptrunc float %mul.i.i807 to half, !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %51), !dbg !174, !noalias !178
  %53 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !183, !noalias !178
  %54 = fptrunc float %mul.i.i812 to half, !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %53), !dbg !183, !noalias !178
  %55 = insertelement <4 x half> poison, half %48, i64 0, !dbg !185
  %56 = insertelement <4 x half> %55, half %50, i64 1, !dbg !185
  %57 = insertelement <4 x half> %56, half %52, i64 2, !dbg !185
  %58 = insertelement <4 x half> %57, half %54, i64 3, !dbg !185
  %conv.i.i = fpext half %48 to float, !dbg !186
  %add372 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !191
  %conv.i.i.1 = fpext half %50 to float, !dbg !186
  %add372.1 = fadd contract float %add372, %conv.i.i.1, !dbg !191
  %conv.i.i.2 = fpext half %52 to float, !dbg !186
  %add372.2 = fadd contract float %add372.1, %conv.i.i.2, !dbg !191
  %conv.i.i.3 = fpext half %54 to float, !dbg !186
  %add372.3 = fadd contract float %add372.2, %conv.i.i.3, !dbg !191
  %59 = bitcast float %add372.3 to i32, !dbg !192
  %60 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !194
  %61 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %60) #11, !dbg !197
  %xor.i.i818 = xor i32 %61, 32, !dbg !198
  %62 = and i32 %61, -64, !dbg !199
  %and.i.i819 = add nsw i32 %62, 64, !dbg !199
  %cmp.not.i.i820 = icmp slt i32 %xor.i.i818, %and.i.i819, !dbg !200
  %cond.i.i821 = select i1 %cmp.not.i.i820, i32 %xor.i.i818, i32 %61, !dbg !201
  %shl.i.i822 = shl i32 %cond.i.i821, 2, !dbg !202
  %63 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i822, i32 %59), !dbg !203
  %64 = bitcast i32 %63 to float, !dbg !204
  %add380 = fadd contract float %add372.3, %64, !dbg !205
  %65 = bitcast float %add380 to i32, !dbg !206
  %66 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !208
  %67 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %66) #11, !dbg !211
  %xor.i.i823 = xor i32 %67, 16, !dbg !212
  %68 = and i32 %67, -64, !dbg !213
  %and.i.i824 = add nsw i32 %68, 64, !dbg !213
  %cmp.not.i.i825 = icmp slt i32 %xor.i.i823, %and.i.i824, !dbg !214
  %cond.i.i826 = select i1 %cmp.not.i.i825, i32 %xor.i.i823, i32 %67, !dbg !215
  %shl.i.i827 = shl i32 %cond.i.i826, 2, !dbg !216
  %69 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i827, i32 %65), !dbg !217
  %70 = bitcast i32 %69 to float, !dbg !218
  %add385 = fadd contract float %add380, %70, !dbg !219
  fence syncscope("warp") release, !dbg !220
  tail call void @llvm.mxc.barrier.warp(), !dbg !223
  fence syncscope("warp") acquire, !dbg !224
  %shr398 = lshr exact i32 %mul81, 2
  %add399 = add nuw nsw i32 %shr398, %shr396
  %cmp400 = icmp ult i32 %add399, 256
  br i1 %cmp400, label %if.then401, label %if.end435, !dbg !225

if.then401:                                       ; preds = %if.end.1
  %71 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %72 = getelementptr inbounds i8, ptr addrspace(4) %71, i64 %.idx, !dbg !226
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %72, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %72, i64 4, !dbg !227
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx, align 4, !dbg !227, !tbaa !30
  br label %if.end435, !dbg !228

if.end435:                                        ; preds = %if.end.1, %if.then401
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then401 ], [ 0, %if.end.1 ], !dbg !81
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then401 ], [ 0, %if.end.1 ], !dbg !81
  br i1 %cmp400, label %if.then401.1, label %if.end435.1, !dbg !225

if.then401.1:                                     ; preds = %if.end435
  %73 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %74 = getelementptr inbounds i8, ptr addrspace(4) %73, i64 %.idx, !dbg !226
  %add.ptr421.1 = getelementptr inbounds i8, ptr addrspace(4) %74, i64 128, !dbg !226
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %add.ptr421.1, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %74, i64 132, !dbg !227
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.1, align 4, !dbg !227, !tbaa !30
  br label %if.end435.1, !dbg !228

if.end435.1:                                      ; preds = %if.then401.1, %if.end435
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then401.1 ], [ 0, %if.end435 ], !dbg !81
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then401.1 ], [ 0, %if.end435 ], !dbg !81
  br i1 %cmp400, label %if.then401.2, label %if.end435.2, !dbg !225

if.then401.2:                                     ; preds = %if.end435.1
  %75 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %76 = getelementptr inbounds i8, ptr addrspace(4) %75, i64 %.idx, !dbg !226
  %add.ptr421.2 = getelementptr inbounds i8, ptr addrspace(4) %76, i64 256, !dbg !226
  %condval_2.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %add.ptr421.2, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %76, i64 260, !dbg !227
  %condval_2.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.2, align 4, !dbg !227, !tbaa !30
  br label %if.end435.2, !dbg !228

if.end435.2:                                      ; preds = %if.then401.2, %if.end435.1
  %condval_2.sroa.0.0.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2, %if.then401.2 ], [ 0, %if.end435.1 ], !dbg !81
  %condval_2.sroa.5.0.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2, %if.then401.2 ], [ 0, %if.end435.1 ], !dbg !81
  br i1 %cmp400, label %if.then401.3, label %if.end435.3, !dbg !225

if.then401.3:                                     ; preds = %if.end435.2
  %77 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %78 = getelementptr inbounds i8, ptr addrspace(4) %77, i64 %.idx, !dbg !226
  %add.ptr421.3 = getelementptr inbounds i8, ptr addrspace(4) %78, i64 384, !dbg !226
  %condval_2.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %add.ptr421.3, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %78, i64 388, !dbg !227
  %condval_2.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.3, align 4, !dbg !227, !tbaa !30
  br label %if.end435.3, !dbg !228

if.end435.3:                                      ; preds = %if.then401.3, %if.end435.2
  %condval_2.sroa.0.0.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3, %if.then401.3 ], [ 0, %if.end435.2 ], !dbg !81
  %condval_2.sroa.5.0.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3, %if.then401.3 ], [ 0, %if.end435.2 ], !dbg !81
  %79 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul465, !dbg !229
  %add.ptr477.idx = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477 = getelementptr inbounds i8, ptr addrspace(3) %79, i32 %add.ptr477.idx, !dbg !229
  %80 = and i32 %condval_2.sroa.0.0.3, 65535, !dbg !230
  %v_column.sroa.130.0.insert.ext = zext nneg i32 %80 to i64, !dbg !230
  %v_column.sroa.130.0.insert.shift = shl nuw i64 %v_column.sroa.130.0.insert.ext, 48, !dbg !230
  %81 = and i32 %condval_2.sroa.0.0.2, 65535, !dbg !230
  %v_column.sroa.98.0.insert.ext = zext nneg i32 %81 to i64, !dbg !230
  %v_column.sroa.98.0.insert.shift = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert = or disjoint i64 %v_column.sroa.130.0.insert.shift, %v_column.sroa.98.0.insert.shift, !dbg !230
  %82 = shl i32 %condval_2.sroa.0.0.1, 16, !dbg !230
  %v_column.sroa.66.0.insert.shift = zext i32 %82 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert = or disjoint i64 %v_column.sroa.98.0.insert.insert, %v_column.sroa.66.0.insert.shift, !dbg !230
  %83 = and i32 %condval_2.sroa.0.0, 65535, !dbg !230
  %v_column.sroa.0.0.insert.ext = zext nneg i32 %83 to i64, !dbg !230
  %v_column.sroa.0.0.insert.insert = or disjoint i64 %v_column.sroa.66.0.insert.insert, %v_column.sroa.0.0.insert.ext, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr477, align 8, !dbg !230
  %v_fetch.sroa.0.2.extract.shift = lshr i32 %condval_2.sroa.0.0, 16, !dbg !231
  %v_fetch.sroa.0.2.extract.trunc = zext nneg i32 %v_fetch.sroa.0.2.extract.shift to i64, !dbg !231
  %v_fetch.sroa.50.10.extract.shift = and i32 %condval_2.sroa.0.0.1, -65536, !dbg !230
  %v_fetch.sroa.98.18.extract.shift = lshr i32 %condval_2.sroa.0.0.2, 16, !dbg !231
  %v_fetch.sroa.98.18.extract.trunc = zext nneg i32 %v_fetch.sroa.98.18.extract.shift to i64, !dbg !231
  %v_fetch.sroa.146.26.extract.shift = lshr i32 %condval_2.sroa.0.0.3, 16, !dbg !231
  %v_fetch.sroa.146.26.extract.trunc = zext nneg i32 %v_fetch.sroa.146.26.extract.shift to i64, !dbg !231
  %add466.1 = or disjoint i32 %mul465, 256, !dbg !232
  %84 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.1, !dbg !229
  %xor473.1 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.1 = xor i32 %xor473.1, 8, !dbg !229
  %add.ptr477.1 = getelementptr inbounds i8, ptr addrspace(3) %84, i32 %add.ptr477.idx.1, !dbg !229
  %v_column.sroa.130.0.insert.shift1496 = shl nuw i64 %v_fetch.sroa.146.26.extract.trunc, 48, !dbg !230
  %v_column.sroa.98.0.insert.shift1341 = shl nuw nsw i64 %v_fetch.sroa.98.18.extract.trunc, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1343 = or disjoint i64 %v_column.sroa.130.0.insert.shift1496, %v_column.sroa.98.0.insert.shift1341, !dbg !230
  %v_column.sroa.66.0.insert.shift1186 = zext i32 %v_fetch.sroa.50.10.extract.shift to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1188 = or disjoint i64 %v_column.sroa.98.0.insert.insert1343, %v_column.sroa.66.0.insert.shift1186, !dbg !230
  %v_column.sroa.0.0.insert.insert1063 = or disjoint i64 %v_column.sroa.66.0.insert.insert1188, %v_fetch.sroa.0.2.extract.trunc, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1063, ptr addrspace(3) %add.ptr477.1, align 8, !dbg !230
  %add466.2 = or disjoint i32 %mul465, 512, !dbg !232
  %85 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.2, !dbg !229
  %xor473.2 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.2 = xor i32 %xor473.2, 16, !dbg !229
  %add.ptr477.2 = getelementptr inbounds i8, ptr addrspace(3) %85, i32 %add.ptr477.idx.2, !dbg !229
  %86 = and i32 %condval_2.sroa.5.0.3, 65535, !dbg !230
  %v_column.sroa.130.0.insert.ext1500 = zext nneg i32 %86 to i64, !dbg !230
  %v_column.sroa.130.0.insert.shift1501 = shl nuw i64 %v_column.sroa.130.0.insert.ext1500, 48, !dbg !230
  %87 = and i32 %condval_2.sroa.5.0.2, 65535, !dbg !230
  %v_column.sroa.98.0.insert.ext1345 = zext nneg i32 %87 to i64, !dbg !230
  %v_column.sroa.98.0.insert.shift1346 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1345, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1348 = or disjoint i64 %v_column.sroa.130.0.insert.shift1501, %v_column.sroa.98.0.insert.shift1346, !dbg !230
  %88 = shl i32 %condval_2.sroa.5.0.1, 16, !dbg !230
  %v_column.sroa.66.0.insert.shift1191 = zext i32 %88 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1193 = or disjoint i64 %v_column.sroa.98.0.insert.insert1348, %v_column.sroa.66.0.insert.shift1191, !dbg !230
  %89 = and i32 %condval_2.sroa.5.0, 65535, !dbg !230
  %v_column.sroa.0.0.insert.ext1065 = zext nneg i32 %89 to i64, !dbg !230
  %v_column.sroa.0.0.insert.insert1067 = or disjoint i64 %v_column.sroa.66.0.insert.insert1193, %v_column.sroa.0.0.insert.ext1065, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1067, ptr addrspace(3) %add.ptr477.2, align 8, !dbg !230
  %v_fetch.sroa.26.6.extract.shift = lshr i32 %condval_2.sroa.5.0, 16, !dbg !231
  %v_fetch.sroa.26.6.extract.trunc = zext nneg i32 %v_fetch.sroa.26.6.extract.shift to i64, !dbg !231
  %v_fetch.sroa.74.14.extract.shift = and i32 %condval_2.sroa.5.0.1, -65536, !dbg !230
  %v_fetch.sroa.122.22.extract.shift = lshr i32 %condval_2.sroa.5.0.2, 16, !dbg !231
  %v_fetch.sroa.122.22.extract.trunc = zext nneg i32 %v_fetch.sroa.122.22.extract.shift to i64, !dbg !231
  %v_fetch.sroa.170.30.extract.shift = lshr i32 %condval_2.sroa.5.0.3, 16, !dbg !231
  %v_fetch.sroa.170.30.extract.trunc = zext nneg i32 %v_fetch.sroa.170.30.extract.shift to i64, !dbg !231
  %add466.3 = or disjoint i32 %mul465, 768, !dbg !232
  %90 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.3, !dbg !229
  %xor473.3 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.3 = xor i32 %xor473.3, 24, !dbg !229
  %add.ptr477.3 = getelementptr inbounds i8, ptr addrspace(3) %90, i32 %add.ptr477.idx.3, !dbg !229
  %v_column.sroa.130.0.insert.shift1506 = shl nuw i64 %v_fetch.sroa.170.30.extract.trunc, 48, !dbg !230
  %v_column.sroa.98.0.insert.shift1351 = shl nuw nsw i64 %v_fetch.sroa.122.22.extract.trunc, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1353 = or disjoint i64 %v_column.sroa.130.0.insert.shift1506, %v_column.sroa.98.0.insert.shift1351, !dbg !230
  %v_column.sroa.66.0.insert.shift1196 = zext i32 %v_fetch.sroa.74.14.extract.shift to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1198 = or disjoint i64 %v_column.sroa.98.0.insert.insert1353, %v_column.sroa.66.0.insert.shift1196, !dbg !230
  %v_column.sroa.0.0.insert.insert1071 = or disjoint i64 %v_column.sroa.66.0.insert.insert1198, %v_fetch.sroa.26.6.extract.trunc, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1071, ptr addrspace(3) %add.ptr477.3, align 8, !dbg !230
  fence syncscope("warp") release, !dbg !233
  tail call void @llvm.mxc.barrier.warp(), !dbg !236
  fence syncscope("warp") acquire, !dbg !237
  %add494 = or disjoint i32 %mul487, %mul493, !dbg !238
  %91 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494, !dbg !239
  %add.ptr504.idx = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504 = getelementptr inbounds i8, ptr addrspace(3) %91, i32 %add.ptr504.idx, !dbg !239
  %92 = load <4 x half>, ptr addrspace(3) %add.ptr504, align 8, !dbg !240
  %add489.1 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.1 = or disjoint i32 %add489.1, 64, !dbg !238
  %93 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.1, !dbg !239
  %xor500.1 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.1 = xor i32 %xor500.1, 8, !dbg !239
  %add.ptr504.1 = getelementptr inbounds i8, ptr addrspace(3) %93, i32 %add.ptr504.idx.1, !dbg !239
  %94 = load <4 x half>, ptr addrspace(3) %add.ptr504.1, align 8, !dbg !240
  %add489.2 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.2 = or disjoint i32 %add489.2, 128, !dbg !238
  %95 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.2, !dbg !239
  %xor500.2 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.2 = xor i32 %xor500.2, 16, !dbg !239
  %add.ptr504.2 = getelementptr inbounds i8, ptr addrspace(3) %95, i32 %add.ptr504.idx.2, !dbg !239
  %96 = load <4 x half>, ptr addrspace(3) %add.ptr504.2, align 8, !dbg !240
  %add489.3 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.3 = or disjoint i32 %add489.3, 192, !dbg !238
  %97 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.3, !dbg !239
  %xor500.3 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.3 = xor i32 %xor500.3, 24, !dbg !239
  %add.ptr504.3 = getelementptr inbounds i8, ptr addrspace(3) %97, i32 %add.ptr504.idx.3, !dbg !239
  %98 = load <4 x half>, ptr addrspace(3) %add.ptr504.3, align 8, !dbg !240
  %99 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %92, <4 x half> %58, <4 x float> %numerator.sroa.0.12.vec.insert2497), !dbg !241
  %100 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %94, <4 x half> %58, <4 x float> %numerator.sroa.0.12.vec.insert2497), !dbg !241
  %101 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %96, <4 x half> %58, <4 x float> %numerator.sroa.0.12.vec.insert2497), !dbg !241
  %102 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %98, <4 x half> %58, <4 x float> %numerator.sroa.0.12.vec.insert2497), !dbg !241
  %add389 = fadd contract float %mul258, %add385, !dbg !242
  br label %if.end530, !dbg !243

if.end530:                                        ; preds = %if.end435.3, %entry
  %numerator.sroa.290.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %102, %if.end435.3 ], !dbg !81
  %numerator.sroa.194.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %101, %if.end435.3 ], !dbg !81
  %numerator.sroa.98.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %100, %if.end435.3 ], !dbg !81
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %99, %if.end435.3 ], !dbg !81
  %maximum.sroa.0.1 = phi float [ 0xFFF0000000000000, %entry ], [ %41, %if.end435.3 ], !dbg !81
  %denominator.sroa.0.1 = phi float [ 0.000000e+00, %entry ], [ %add389, %if.end435.3 ], !dbg !81
  %103 = or disjoint i64 %17, 1, !dbg !244
  %arrayidx80.1 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %103, !dbg !67
  %104 = load i32, ptr addrspace(1) %arrayidx80.1, align 4, !dbg !67, !tbaa !30
  %mul81.1 = shl nsw i32 %104, 4, !dbg !68
  %cmp82.1 = icmp slt i32 %104, 0, !dbg !69
  %cmp84.not.1 = icmp sgt i32 %mul81.1, %1
  %or.cond.1 = select i1 %cmp82.1, i1 true, i1 %cmp84.not.1, !dbg !70
  br i1 %or.cond.1, label %if.end530.1, label %if.then.1, !dbg !70

if.then.1:                                        ; preds = %if.end530
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %add91.1 = add nuw nsw i32 %mul81.1, %shr90
  %conv101.1 = zext nneg i32 %mul81.1 to i64
  %.idx.1 = shl nuw nsw i64 %conv101.1, 7
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep881, i64 %.idx.1, !dbg !76
  %cmp94.1904 = icmp ult i32 %add91.1, 1024, !dbg !77
  br i1 %cmp94.1904, label %if.then95.1913, label %if.end.1921, !dbg !78

if.then95.1913:                                   ; preds = %if.then.1
  %gep865.1905 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.1, i64 %mul97
  %condval.sroa.7.0.add.ptr108.sroa_idx.1906 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1905, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.1907 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1905, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.1908 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1905, i64 4
  %condval.sroa.0.0.copyload.1909 = load i32, ptr addrspace(4) %gep865.1905, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.1910 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.1908, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.1911 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.1907, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.1912 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.1906, align 4, !dbg !79, !tbaa !30
  br label %if.end.1921, !dbg !80

if.end.1921:                                      ; preds = %if.then95.1913, %if.then.1
  %condval.sroa.0.0.1914 = phi i32 [ %condval.sroa.0.0.copyload.1909, %if.then95.1913 ], [ 0, %if.then.1 ], !dbg !81
  %condval.sroa.5.0.1915 = phi i32 [ %condval.sroa.5.0.copyload.1910, %if.then95.1913 ], [ 0, %if.then.1 ], !dbg !81
  %condval.sroa.6.0.1916 = phi i32 [ %condval.sroa.6.0.copyload.1911, %if.then95.1913 ], [ 0, %if.then.1 ], !dbg !81
  %condval.sroa.7.0.1917 = phi i32 [ %condval.sroa.7.0.copyload.1912, %if.then95.1913 ], [ 0, %if.then.1 ], !dbg !81
  store i32 %condval.sroa.0.0.1914, ptr addrspace(3) %invariant.gep854, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.1918 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 4, !dbg !82
  store i32 %condval.sroa.5.0.1915, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.1918, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.1919 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 8, !dbg !82
  store i32 %condval.sroa.6.0.1916, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.1919, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.1920 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 12, !dbg !82
  store i32 %condval.sroa.7.0.1917, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.1920, align 4, !dbg !82, !tbaa !30
  %cmp94.1.1 = icmp ult i32 %add91.1, 1016, !dbg !77
  br i1 %cmp94.1.1, label %if.then95.1.1, label %if.end.1.1, !dbg !78

if.then95.1.1:                                    ; preds = %if.end.1921
  %add100.1.1 = or disjoint i64 %mul97, 512
  %gep865.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.1, i64 %add100.1.1
  %condval.sroa.7.0.add.ptr108.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1.1, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1.1, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1.1, i64 4
  %condval.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %gep865.1.1, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.1.1, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.1.1, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.1.1, align 4, !dbg !79, !tbaa !30
  br label %if.end.1.1, !dbg !80

if.end.1.1:                                       ; preds = %if.then95.1.1, %if.end.1921
  %condval.sroa.0.0.1.1 = phi i32 [ %condval.sroa.0.0.copyload.1.1, %if.then95.1.1 ], [ 0, %if.end.1921 ], !dbg !81
  %condval.sroa.5.0.1.1 = phi i32 [ %condval.sroa.5.0.copyload.1.1, %if.then95.1.1 ], [ 0, %if.end.1921 ], !dbg !81
  %condval.sroa.6.0.1.1 = phi i32 [ %condval.sroa.6.0.copyload.1.1, %if.then95.1.1 ], [ 0, %if.end.1921 ], !dbg !81
  %condval.sroa.7.0.1.1 = phi i32 [ %condval.sroa.7.0.copyload.1.1, %if.then95.1.1 ], [ 0, %if.end.1921 ], !dbg !81
  store i32 %condval.sroa.0.0.1.1, ptr addrspace(3) %gep855.1, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1028, !dbg !82
  store i32 %condval.sroa.5.0.1.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.1.1, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1032, !dbg !82
  store i32 %condval.sroa.6.0.1.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.1.1, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1036, !dbg !82
  store i32 %condval.sroa.7.0.1.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.1.1, align 4, !dbg !82, !tbaa !30
  fence syncscope("warp") release, !dbg !83
  tail call void @llvm.mxc.barrier.warp(), !dbg !86
  fence syncscope("warp") acquire, !dbg !87
  %k_local.sroa.0.0.copyload.1927 = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !88
  %105 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1927, <4 x half> %6, <4 x float> zeroinitializer), !dbg !89
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !88
  %106 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %7, <4 x float> %105), !dbg !89
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !88
  %107 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %8, <4 x float> %106), !dbg !89
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !88
  %108 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %9, <4 x float> %107), !dbg !89
  %add194.1 = add nuw nsw i32 %mul81.1, %mul193
  %cmp197.not.1928 = icmp sgt i32 %add194.1, %1, !dbg !90
  %scores.sroa.0.0.vec.extract2079 = extractelement <4 x float> %108, i64 0
  %spec.select3033 = select i1 %cmp197.not.1928, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2079, !dbg !91
  %cmp197.not.1.1.not = icmp slt i32 %add194.1, %1, !dbg !90
  %scores.sroa.0.4.vec.extract2182 = extractelement <4 x float> %108, i64 1, !dbg !91
  %condval_1.0.1.1 = select i1 %cmp197.not.1.1.not, float %scores.sroa.0.4.vec.extract2182, float 0xFFF0000000000000, !dbg !91
  %add195.2.1 = or disjoint i32 %add194.1, 2, !dbg !92
  %cmp197.not.2.1 = icmp sgt i32 %add195.2.1, %1, !dbg !90
  %scores.sroa.0.8.vec.extract2259 = extractelement <4 x float> %108, i64 2, !dbg !91
  %condval_1.0.2.1 = select i1 %cmp197.not.2.1, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2259, !dbg !91
  %add195.3.1 = or disjoint i32 %add194.1, 3, !dbg !92
  %cmp197.not.3.1 = icmp sgt i32 %add195.3.1, %1, !dbg !90
  %scores.sroa.0.12.vec.extract2336 = extractelement <4 x float> %108, i64 3, !dbg !91
  %condval_1.0.3.1 = select i1 %cmp197.not.3.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2336, !dbg !91
  %109 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3033, float 0xFFF0000000000000), !dbg !93
  %110 = tail call contract noundef float @llvm.maxnum.f32(float %109, float %condval_1.0.1.1), !dbg !93
  %111 = tail call contract noundef float @llvm.maxnum.f32(float %110, float %condval_1.0.2.1), !dbg !93
  %112 = tail call contract noundef float @llvm.maxnum.f32(float %111, float %condval_1.0.3.1), !dbg !93
  %113 = bitcast float %112 to i32, !dbg !97
  %114 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %115 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %114) #11, !dbg !105
  %xor.i.i.1 = xor i32 %115, 32, !dbg !106
  %116 = and i32 %115, -64, !dbg !107
  %and.i.i.1 = add nsw i32 %116, 64, !dbg !107
  %cmp.not.i.i.1 = icmp slt i32 %xor.i.i.1, %and.i.i.1, !dbg !108
  %cond.i.i.1 = select i1 %cmp.not.i.i.1, i32 %xor.i.i.1, i32 %115, !dbg !109
  %shl.i.i.1 = shl i32 %cond.i.i.1, 2, !dbg !110
  %117 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.1, i32 %113), !dbg !111
  %118 = bitcast i32 %117 to float, !dbg !112
  %119 = tail call contract noundef float @llvm.maxnum.f32(float %112, float %118), !dbg !113
  %120 = bitcast float %119 to i32, !dbg !115
  %121 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !117
  %122 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %121) #11, !dbg !120
  %xor.i.i783.1 = xor i32 %122, 16, !dbg !121
  %123 = and i32 %122, -64, !dbg !122
  %and.i.i784.1 = add nsw i32 %123, 64, !dbg !122
  %cmp.not.i.i785.1 = icmp slt i32 %xor.i.i783.1, %and.i.i784.1, !dbg !123
  %cond.i.i786.1 = select i1 %cmp.not.i.i785.1, i32 %xor.i.i783.1, i32 %122, !dbg !124
  %shl.i.i787.1 = shl i32 %cond.i.i786.1, 2, !dbg !125
  %124 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i787.1, i32 %120), !dbg !126
  %125 = bitcast i32 %124 to float, !dbg !127
  %126 = tail call contract noundef float @llvm.maxnum.f32(float %119, float %125), !dbg !128
  %127 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1, float %126), !dbg !130
  %sub.1 = fsub contract float %maximum.sroa.0.1, %127, !dbg !132
  %mul241.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !133
  %cmp.i.i.1 = fcmp contract olt float %mul241.1, -1.260000e+02, !dbg !134
  %cond.i.i788.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !134
  %add.i.i.1 = fadd contract float %mul241.1, %cond.i.i788.1, !dbg !134
  %128 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !134
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !134
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %128, !dbg !134
  %numerator.sroa.0.0.vec.extract2389 = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !245
  %numerator.sroa.0.4.vec.extract2426 = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !245
  %numerator.sroa.0.8.vec.extract2463 = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !245
  %numerator.sroa.0.12.vec.extract2500 = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !245
  %mul258.1939 = fmul contract float %mul.i.i.1, %numerator.sroa.0.0.vec.extract2389, !dbg !137
  %mul261.1940 = fmul contract float %mul.i.i.1, %numerator.sroa.0.4.vec.extract2426, !dbg !246
  %mul264.1941 = fmul contract float %mul.i.i.1, %numerator.sroa.0.8.vec.extract2463, !dbg !247
  %mul267.1942 = fmul contract float %mul.i.i.1, %numerator.sroa.0.12.vec.extract2500, !dbg !248
  %numerator.sroa.0.0.vec.insert2391 = insertelement <4 x float> poison, float %mul258.1939, i64 0, !dbg !138
  %numerator.sroa.0.4.vec.insert2428 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2391, float %mul261.1940, i64 1, !dbg !138
  %numerator.sroa.0.8.vec.insert2465 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2428, float %mul264.1941, i64 2, !dbg !138
  %numerator.sroa.0.12.vec.insert2502 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2465, float %mul267.1942, i64 3, !dbg !138
  %numerator.sroa.98.16.vec.extract2545 = extractelement <4 x float> %numerator.sroa.98.0, i64 0, !dbg !245
  %numerator.sroa.98.20.vec.extract2582 = extractelement <4 x float> %numerator.sroa.98.0, i64 1, !dbg !245
  %numerator.sroa.98.24.vec.extract2619 = extractelement <4 x float> %numerator.sroa.98.0, i64 2, !dbg !245
  %numerator.sroa.98.28.vec.extract2656 = extractelement <4 x float> %numerator.sroa.98.0, i64 3, !dbg !245
  %mul258.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.16.vec.extract2545, !dbg !137
  %mul261.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.20.vec.extract2582, !dbg !246
  %mul264.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.24.vec.extract2619, !dbg !247
  %mul267.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.28.vec.extract2656, !dbg !248
  %numerator.sroa.98.16.vec.insert2547 = insertelement <4 x float> poison, float %mul258.1.1, i64 0, !dbg !138
  %numerator.sroa.98.20.vec.insert2584 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2547, float %mul261.1.1, i64 1, !dbg !138
  %numerator.sroa.98.24.vec.insert2621 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2584, float %mul264.1.1, i64 2, !dbg !138
  %numerator.sroa.98.28.vec.insert2658 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2621, float %mul267.1.1, i64 3, !dbg !138
  %numerator.sroa.194.32.vec.extract2701 = extractelement <4 x float> %numerator.sroa.194.0, i64 0, !dbg !245
  %numerator.sroa.194.36.vec.extract2738 = extractelement <4 x float> %numerator.sroa.194.0, i64 1, !dbg !245
  %numerator.sroa.194.40.vec.extract2775 = extractelement <4 x float> %numerator.sroa.194.0, i64 2, !dbg !245
  %numerator.sroa.194.44.vec.extract2812 = extractelement <4 x float> %numerator.sroa.194.0, i64 3, !dbg !245
  %mul258.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.32.vec.extract2701, !dbg !137
  %mul261.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.36.vec.extract2738, !dbg !246
  %mul264.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.40.vec.extract2775, !dbg !247
  %mul267.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.44.vec.extract2812, !dbg !248
  %numerator.sroa.194.32.vec.insert2703 = insertelement <4 x float> poison, float %mul258.2.1, i64 0, !dbg !138
  %numerator.sroa.194.36.vec.insert2740 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2703, float %mul261.2.1, i64 1, !dbg !138
  %numerator.sroa.194.40.vec.insert2777 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2740, float %mul264.2.1, i64 2, !dbg !138
  %numerator.sroa.194.44.vec.insert2814 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2777, float %mul267.2.1, i64 3, !dbg !138
  %numerator.sroa.290.48.vec.extract2857 = extractelement <4 x float> %numerator.sroa.290.0, i64 0, !dbg !245
  %numerator.sroa.290.52.vec.extract2894 = extractelement <4 x float> %numerator.sroa.290.0, i64 1, !dbg !245
  %numerator.sroa.290.56.vec.extract2931 = extractelement <4 x float> %numerator.sroa.290.0, i64 2, !dbg !245
  %numerator.sroa.290.60.vec.extract2968 = extractelement <4 x float> %numerator.sroa.290.0, i64 3, !dbg !245
  %mul258.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.48.vec.extract2857, !dbg !137
  %mul261.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.52.vec.extract2894, !dbg !246
  %mul264.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.56.vec.extract2931, !dbg !247
  %mul267.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.60.vec.extract2968, !dbg !248
  %numerator.sroa.290.48.vec.insert2859 = insertelement <4 x float> poison, float %mul258.3.1, i64 0, !dbg !138
  %numerator.sroa.290.52.vec.insert2896 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2859, float %mul261.3.1, i64 1, !dbg !138
  %numerator.sroa.290.56.vec.insert2933 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2896, float %mul264.3.1, i64 2, !dbg !138
  %numerator.sroa.290.60.vec.insert2970 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2933, float %mul267.3.1, i64 3, !dbg !138
  %sub291.1 = fsub contract float %spec.select3033, %127, !dbg !139
  %sub295.1 = fsub contract float %condval_1.0.1.1, %127, !dbg !140
  %sub299.1 = fsub contract float %condval_1.0.2.1, %127, !dbg !141
  %sub303.1 = fsub contract float %condval_1.0.3.1, %127, !dbg !142
  %mul308.1 = fmul contract float %sub291.1, 0x3FC7154760000000, !dbg !143
  %mul312.1 = fmul contract float %sub295.1, 0x3FC7154760000000, !dbg !144
  %mul316.1 = fmul contract float %sub299.1, 0x3FC7154760000000, !dbg !145
  %mul320.1 = fmul contract float %sub303.1, 0x3FC7154760000000, !dbg !146
  %add325.1 = fadd contract float %mul308.1, 8.000000e+00, !dbg !147
  %add329.1 = fadd contract float %mul312.1, 8.000000e+00, !dbg !148
  %add333.1 = fadd contract float %mul316.1, 8.000000e+00, !dbg !149
  %add337.1 = fadd contract float %mul320.1, 8.000000e+00, !dbg !150
  %cmp.i.i793.1 = fcmp contract olt float %add325.1, -1.260000e+02, !dbg !151
  %cond.i.i794.1 = select contract i1 %cmp.i.i793.1, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i795.1 = fadd contract float %add325.1, %cond.i.i794.1, !dbg !151
  %129 = tail call contract float @llvm.exp2.f32(float %add.i.i795.1), !dbg !151
  %cond2.i.i796.1 = select contract i1 %cmp.i.i793.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i797.1 = fmul contract float %cond2.i.i796.1, %129, !dbg !151
  %cmp.i.i798.1 = fcmp contract olt float %add329.1, -1.260000e+02, !dbg !153
  %cond.i.i799.1 = select contract i1 %cmp.i.i798.1, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i800.1 = fadd contract float %add329.1, %cond.i.i799.1, !dbg !153
  %130 = tail call contract float @llvm.exp2.f32(float %add.i.i800.1), !dbg !153
  %cond2.i.i801.1 = select contract i1 %cmp.i.i798.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i802.1 = fmul contract float %cond2.i.i801.1, %130, !dbg !153
  %cmp.i.i803.1 = fcmp contract olt float %add333.1, -1.260000e+02, !dbg !155
  %cond.i.i804.1 = select contract i1 %cmp.i.i803.1, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i805.1 = fadd contract float %add333.1, %cond.i.i804.1, !dbg !155
  %131 = tail call contract float @llvm.exp2.f32(float %add.i.i805.1), !dbg !155
  %cond2.i.i806.1 = select contract i1 %cmp.i.i803.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i807.1 = fmul contract float %cond2.i.i806.1, %131, !dbg !155
  %cmp.i.i808.1 = fcmp contract olt float %add337.1, -1.260000e+02, !dbg !157
  %cond.i.i809.1 = select contract i1 %cmp.i.i808.1, float 6.400000e+01, float 0.000000e+00, !dbg !157
  %add.i.i810.1 = fadd contract float %add337.1, %cond.i.i809.1, !dbg !157
  %132 = tail call contract float @llvm.exp2.f32(float %add.i.i810.1), !dbg !157
  %cond2.i.i811.1 = select contract i1 %cmp.i.i808.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !157
  %mul.i.i812.1 = fmul contract float %cond2.i.i811.1, %132, !dbg !157
  %133 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !159
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !159, !noalias !167
  %134 = fptrunc float %mul.i.i797.1 to half, !dbg !159
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %133), !dbg !159, !noalias !167
  %135 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !167
  %136 = fptrunc float %mul.i.i802.1 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %135), !dbg !172, !noalias !167
  %137 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !174, !noalias !178
  %138 = fptrunc float %mul.i.i807.1 to half, !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %137), !dbg !174, !noalias !178
  %139 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !183, !noalias !178
  %140 = fptrunc float %mul.i.i812.1 to half, !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %139), !dbg !183, !noalias !178
  %141 = insertelement <4 x half> poison, half %134, i64 0, !dbg !185
  %142 = insertelement <4 x half> %141, half %136, i64 1, !dbg !185
  %143 = insertelement <4 x half> %142, half %138, i64 2, !dbg !185
  %144 = insertelement <4 x half> %143, half %140, i64 3, !dbg !185
  %conv.i.i.1944 = fpext half %134 to float, !dbg !186
  %add372.1945 = fadd contract float %conv.i.i.1944, 0.000000e+00, !dbg !191
  %conv.i.i.1.1 = fpext half %136 to float, !dbg !186
  %add372.1.1 = fadd contract float %add372.1945, %conv.i.i.1.1, !dbg !191
  %conv.i.i.2.1 = fpext half %138 to float, !dbg !186
  %add372.2.1 = fadd contract float %add372.1.1, %conv.i.i.2.1, !dbg !191
  %conv.i.i.3.1 = fpext half %140 to float, !dbg !186
  %add372.3.1 = fadd contract float %add372.2.1, %conv.i.i.3.1, !dbg !191
  %145 = bitcast float %add372.3.1 to i32, !dbg !192
  %146 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !194
  %147 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %146) #11, !dbg !197
  %xor.i.i818.1 = xor i32 %147, 32, !dbg !198
  %148 = and i32 %147, -64, !dbg !199
  %and.i.i819.1 = add nsw i32 %148, 64, !dbg !199
  %cmp.not.i.i820.1 = icmp slt i32 %xor.i.i818.1, %and.i.i819.1, !dbg !200
  %cond.i.i821.1 = select i1 %cmp.not.i.i820.1, i32 %xor.i.i818.1, i32 %147, !dbg !201
  %shl.i.i822.1 = shl i32 %cond.i.i821.1, 2, !dbg !202
  %149 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i822.1, i32 %145), !dbg !203
  %150 = bitcast i32 %149 to float, !dbg !204
  %add380.1 = fadd contract float %add372.3.1, %150, !dbg !205
  %151 = bitcast float %add380.1 to i32, !dbg !206
  %152 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !208
  %153 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %152) #11, !dbg !211
  %xor.i.i823.1 = xor i32 %153, 16, !dbg !212
  %154 = and i32 %153, -64, !dbg !213
  %and.i.i824.1 = add nsw i32 %154, 64, !dbg !213
  %cmp.not.i.i825.1 = icmp slt i32 %xor.i.i823.1, %and.i.i824.1, !dbg !214
  %cond.i.i826.1 = select i1 %cmp.not.i.i825.1, i32 %xor.i.i823.1, i32 %153, !dbg !215
  %shl.i.i827.1 = shl i32 %cond.i.i826.1, 2, !dbg !216
  %155 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i827.1, i32 %151), !dbg !217
  %156 = bitcast i32 %155 to float, !dbg !218
  %add385.1 = fadd contract float %add380.1, %156, !dbg !219
  fence syncscope("warp") release, !dbg !220
  tail call void @llvm.mxc.barrier.warp(), !dbg !223
  fence syncscope("warp") acquire, !dbg !224
  %shr398.1 = lshr exact i32 %mul81.1, 2
  %add399.1 = add nuw nsw i32 %shr398.1, %shr396
  %cmp400.1 = icmp ult i32 %add399.1, 256
  br i1 %cmp400.1, label %if.then401.1950, label %if.end435.1954, !dbg !225

if.then401.1950:                                  ; preds = %if.end.1.1
  %157 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %158 = getelementptr inbounds i8, ptr addrspace(4) %157, i64 %.idx.1, !dbg !226
  %condval_2.sroa.0.0.copyload.1947 = load i32, ptr addrspace(4) %158, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.1948 = getelementptr inbounds i8, ptr addrspace(4) %158, i64 4, !dbg !227
  %condval_2.sroa.5.0.copyload.1949 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.1948, align 4, !dbg !227, !tbaa !30
  br label %if.end435.1954, !dbg !228

if.end435.1954:                                   ; preds = %if.then401.1950, %if.end.1.1
  %condval_2.sroa.0.0.1951 = phi i32 [ %condval_2.sroa.0.0.copyload.1947, %if.then401.1950 ], [ 0, %if.end.1.1 ], !dbg !81
  %condval_2.sroa.5.0.1952 = phi i32 [ %condval_2.sroa.5.0.copyload.1949, %if.then401.1950 ], [ 0, %if.end.1.1 ], !dbg !81
  br i1 %cmp400.1, label %if.then401.1.1, label %if.end435.1.1, !dbg !225

if.then401.1.1:                                   ; preds = %if.end435.1954
  %159 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %160 = getelementptr inbounds i8, ptr addrspace(4) %159, i64 %.idx.1, !dbg !226
  %add.ptr421.1.1 = getelementptr inbounds i8, ptr addrspace(4) %160, i64 128, !dbg !226
  %condval_2.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %add.ptr421.1.1, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %160, i64 132, !dbg !227
  %condval_2.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.1.1, align 4, !dbg !227, !tbaa !30
  br label %if.end435.1.1, !dbg !228

if.end435.1.1:                                    ; preds = %if.then401.1.1, %if.end435.1954
  %condval_2.sroa.0.0.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1, %if.then401.1.1 ], [ 0, %if.end435.1954 ], !dbg !81
  %condval_2.sroa.5.0.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1, %if.then401.1.1 ], [ 0, %if.end435.1954 ], !dbg !81
  br i1 %cmp400.1, label %if.then401.2.1, label %if.end435.2.1, !dbg !225

if.then401.2.1:                                   ; preds = %if.end435.1.1
  %161 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %162 = getelementptr inbounds i8, ptr addrspace(4) %161, i64 %.idx.1, !dbg !226
  %add.ptr421.2.1 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 256, !dbg !226
  %condval_2.sroa.0.0.copyload.2.1 = load i32, ptr addrspace(4) %add.ptr421.2.1, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.2.1 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 260, !dbg !227
  %condval_2.sroa.5.0.copyload.2.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.2.1, align 4, !dbg !227, !tbaa !30
  br label %if.end435.2.1, !dbg !228

if.end435.2.1:                                    ; preds = %if.then401.2.1, %if.end435.1.1
  %condval_2.sroa.0.0.2.1 = phi i32 [ %condval_2.sroa.0.0.copyload.2.1, %if.then401.2.1 ], [ 0, %if.end435.1.1 ], !dbg !81
  %condval_2.sroa.5.0.2.1 = phi i32 [ %condval_2.sroa.5.0.copyload.2.1, %if.then401.2.1 ], [ 0, %if.end435.1.1 ], !dbg !81
  br i1 %cmp400.1, label %if.then401.3.1, label %if.end435.3.1, !dbg !225

if.then401.3.1:                                   ; preds = %if.end435.2.1
  %163 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %164 = getelementptr inbounds i8, ptr addrspace(4) %163, i64 %.idx.1, !dbg !226
  %add.ptr421.3.1 = getelementptr inbounds i8, ptr addrspace(4) %164, i64 384, !dbg !226
  %condval_2.sroa.0.0.copyload.3.1 = load i32, ptr addrspace(4) %add.ptr421.3.1, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.3.1 = getelementptr inbounds i8, ptr addrspace(4) %164, i64 388, !dbg !227
  %condval_2.sroa.5.0.copyload.3.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.3.1, align 4, !dbg !227, !tbaa !30
  br label %if.end435.3.1, !dbg !228

if.end435.3.1:                                    ; preds = %if.then401.3.1, %if.end435.2.1
  %condval_2.sroa.0.0.3.1 = phi i32 [ %condval_2.sroa.0.0.copyload.3.1, %if.then401.3.1 ], [ 0, %if.end435.2.1 ], !dbg !81
  %condval_2.sroa.5.0.3.1 = phi i32 [ %condval_2.sroa.5.0.copyload.3.1, %if.then401.3.1 ], [ 0, %if.end435.2.1 ], !dbg !81
  %mul278.1 = fmul contract float %denominator.sroa.0.1, %mul.i.i.1, !dbg !249
  %165 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul465, !dbg !229
  %add.ptr477.idx.1961 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.1962 = getelementptr inbounds i8, ptr addrspace(3) %165, i32 %add.ptr477.idx.1961, !dbg !229
  %166 = and i32 %condval_2.sroa.0.0.3.1, 65535, !dbg !230
  %v_column.sroa.130.0.insert.ext1510 = zext nneg i32 %166 to i64, !dbg !230
  %v_column.sroa.130.0.insert.shift1511 = shl nuw i64 %v_column.sroa.130.0.insert.ext1510, 48, !dbg !230
  %167 = and i32 %condval_2.sroa.0.0.2.1, 65535, !dbg !230
  %v_column.sroa.98.0.insert.ext1355 = zext nneg i32 %167 to i64, !dbg !230
  %v_column.sroa.98.0.insert.shift1356 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1355, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1358 = or disjoint i64 %v_column.sroa.130.0.insert.shift1511, %v_column.sroa.98.0.insert.shift1356, !dbg !230
  %168 = shl i32 %condval_2.sroa.0.0.1.1, 16, !dbg !230
  %v_column.sroa.66.0.insert.shift1201 = zext i32 %168 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1203 = or disjoint i64 %v_column.sroa.98.0.insert.insert1358, %v_column.sroa.66.0.insert.shift1201, !dbg !230
  %169 = and i32 %condval_2.sroa.0.0.1951, 65535, !dbg !230
  %v_column.sroa.0.0.insert.ext1073 = zext nneg i32 %169 to i64, !dbg !230
  %v_column.sroa.0.0.insert.insert1075 = or disjoint i64 %v_column.sroa.66.0.insert.insert1203, %v_column.sroa.0.0.insert.ext1073, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1075, ptr addrspace(3) %add.ptr477.1962, align 8, !dbg !230
  %v_fetch.sroa.0.2.extract.shift1724 = lshr i32 %condval_2.sroa.0.0.1951, 16, !dbg !231
  %v_fetch.sroa.0.2.extract.trunc1725 = zext nneg i32 %v_fetch.sroa.0.2.extract.shift1724 to i64, !dbg !231
  %v_fetch.sroa.50.10.extract.shift1794 = and i32 %condval_2.sroa.0.0.1.1, -65536, !dbg !230
  %v_fetch.sroa.98.18.extract.shift1864 = lshr i32 %condval_2.sroa.0.0.2.1, 16, !dbg !231
  %v_fetch.sroa.98.18.extract.trunc1865 = zext nneg i32 %v_fetch.sroa.98.18.extract.shift1864 to i64, !dbg !231
  %v_fetch.sroa.146.26.extract.shift1934 = lshr i32 %condval_2.sroa.0.0.3.1, 16, !dbg !231
  %v_fetch.sroa.146.26.extract.trunc1935 = zext nneg i32 %v_fetch.sroa.146.26.extract.shift1934 to i64, !dbg !231
  %add466.1.1 = or disjoint i32 %mul465, 256, !dbg !232
  %170 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.1.1, !dbg !229
  %xor473.1.1 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.1.1 = xor i32 %xor473.1.1, 8, !dbg !229
  %add.ptr477.1.1 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 %add.ptr477.idx.1.1, !dbg !229
  %v_column.sroa.130.0.insert.shift1516 = shl nuw i64 %v_fetch.sroa.146.26.extract.trunc1935, 48, !dbg !230
  %v_column.sroa.98.0.insert.shift1361 = shl nuw nsw i64 %v_fetch.sroa.98.18.extract.trunc1865, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1363 = or disjoint i64 %v_column.sroa.130.0.insert.shift1516, %v_column.sroa.98.0.insert.shift1361, !dbg !230
  %v_column.sroa.66.0.insert.shift1206 = zext i32 %v_fetch.sroa.50.10.extract.shift1794 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1208 = or disjoint i64 %v_column.sroa.98.0.insert.insert1363, %v_column.sroa.66.0.insert.shift1206, !dbg !230
  %v_column.sroa.0.0.insert.insert1079 = or disjoint i64 %v_column.sroa.66.0.insert.insert1208, %v_fetch.sroa.0.2.extract.trunc1725, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1079, ptr addrspace(3) %add.ptr477.1.1, align 8, !dbg !230
  %add466.2.1 = or disjoint i32 %mul465, 512, !dbg !232
  %171 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.2.1, !dbg !229
  %xor473.2.1 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.2.1 = xor i32 %xor473.2.1, 16, !dbg !229
  %add.ptr477.2.1 = getelementptr inbounds i8, ptr addrspace(3) %171, i32 %add.ptr477.idx.2.1, !dbg !229
  %172 = and i32 %condval_2.sroa.5.0.3.1, 65535, !dbg !230
  %v_column.sroa.130.0.insert.ext1520 = zext nneg i32 %172 to i64, !dbg !230
  %v_column.sroa.130.0.insert.shift1521 = shl nuw i64 %v_column.sroa.130.0.insert.ext1520, 48, !dbg !230
  %173 = and i32 %condval_2.sroa.5.0.2.1, 65535, !dbg !230
  %v_column.sroa.98.0.insert.ext1365 = zext nneg i32 %173 to i64, !dbg !230
  %v_column.sroa.98.0.insert.shift1366 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1365, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1368 = or disjoint i64 %v_column.sroa.130.0.insert.shift1521, %v_column.sroa.98.0.insert.shift1366, !dbg !230
  %174 = shl i32 %condval_2.sroa.5.0.1.1, 16, !dbg !230
  %v_column.sroa.66.0.insert.shift1211 = zext i32 %174 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1213 = or disjoint i64 %v_column.sroa.98.0.insert.insert1368, %v_column.sroa.66.0.insert.shift1211, !dbg !230
  %175 = and i32 %condval_2.sroa.5.0.1952, 65535, !dbg !230
  %v_column.sroa.0.0.insert.ext1081 = zext nneg i32 %175 to i64, !dbg !230
  %v_column.sroa.0.0.insert.insert1083 = or disjoint i64 %v_column.sroa.66.0.insert.insert1213, %v_column.sroa.0.0.insert.ext1081, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1083, ptr addrspace(3) %add.ptr477.2.1, align 8, !dbg !230
  %v_fetch.sroa.26.6.extract.shift1759 = lshr i32 %condval_2.sroa.5.0.1952, 16, !dbg !231
  %v_fetch.sroa.26.6.extract.trunc1760 = zext nneg i32 %v_fetch.sroa.26.6.extract.shift1759 to i64, !dbg !231
  %v_fetch.sroa.74.14.extract.shift1829 = and i32 %condval_2.sroa.5.0.1.1, -65536, !dbg !230
  %v_fetch.sroa.122.22.extract.shift1899 = lshr i32 %condval_2.sroa.5.0.2.1, 16, !dbg !231
  %v_fetch.sroa.122.22.extract.trunc1900 = zext nneg i32 %v_fetch.sroa.122.22.extract.shift1899 to i64, !dbg !231
  %v_fetch.sroa.170.30.extract.shift1969 = lshr i32 %condval_2.sroa.5.0.3.1, 16, !dbg !231
  %v_fetch.sroa.170.30.extract.trunc1970 = zext nneg i32 %v_fetch.sroa.170.30.extract.shift1969 to i64, !dbg !231
  %add466.3.1 = or disjoint i32 %mul465, 768, !dbg !232
  %176 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.3.1, !dbg !229
  %xor473.3.1 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.3.1 = xor i32 %xor473.3.1, 24, !dbg !229
  %add.ptr477.3.1 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 %add.ptr477.idx.3.1, !dbg !229
  %v_column.sroa.130.0.insert.shift1526 = shl nuw i64 %v_fetch.sroa.170.30.extract.trunc1970, 48, !dbg !230
  %v_column.sroa.98.0.insert.shift1371 = shl nuw nsw i64 %v_fetch.sroa.122.22.extract.trunc1900, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1373 = or disjoint i64 %v_column.sroa.130.0.insert.shift1526, %v_column.sroa.98.0.insert.shift1371, !dbg !230
  %v_column.sroa.66.0.insert.shift1216 = zext i32 %v_fetch.sroa.74.14.extract.shift1829 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1218 = or disjoint i64 %v_column.sroa.98.0.insert.insert1373, %v_column.sroa.66.0.insert.shift1216, !dbg !230
  %v_column.sroa.0.0.insert.insert1087 = or disjoint i64 %v_column.sroa.66.0.insert.insert1218, %v_fetch.sroa.26.6.extract.trunc1760, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1087, ptr addrspace(3) %add.ptr477.3.1, align 8, !dbg !230
  fence syncscope("warp") release, !dbg !233
  tail call void @llvm.mxc.barrier.warp(), !dbg !236
  fence syncscope("warp") acquire, !dbg !237
  %add494.1964 = or disjoint i32 %mul487, %mul493, !dbg !238
  %177 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.1964, !dbg !239
  %add.ptr504.idx.1965 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.1966 = getelementptr inbounds i8, ptr addrspace(3) %177, i32 %add.ptr504.idx.1965, !dbg !239
  %178 = load <4 x half>, ptr addrspace(3) %add.ptr504.1966, align 8, !dbg !240
  %add489.1.1 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.1.1 = or disjoint i32 %add489.1.1, 64, !dbg !238
  %179 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.1.1, !dbg !239
  %xor500.1.1 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.1.1 = xor i32 %xor500.1.1, 8, !dbg !239
  %add.ptr504.1.1 = getelementptr inbounds i8, ptr addrspace(3) %179, i32 %add.ptr504.idx.1.1, !dbg !239
  %180 = load <4 x half>, ptr addrspace(3) %add.ptr504.1.1, align 8, !dbg !240
  %add489.2.1 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.2.1 = or disjoint i32 %add489.2.1, 128, !dbg !238
  %181 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.2.1, !dbg !239
  %xor500.2.1 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.2.1 = xor i32 %xor500.2.1, 16, !dbg !239
  %add.ptr504.2.1 = getelementptr inbounds i8, ptr addrspace(3) %181, i32 %add.ptr504.idx.2.1, !dbg !239
  %182 = load <4 x half>, ptr addrspace(3) %add.ptr504.2.1, align 8, !dbg !240
  %add489.3.1 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.3.1 = or disjoint i32 %add489.3.1, 192, !dbg !238
  %183 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.3.1, !dbg !239
  %xor500.3.1 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.3.1 = xor i32 %xor500.3.1, 24, !dbg !239
  %add.ptr504.3.1 = getelementptr inbounds i8, ptr addrspace(3) %183, i32 %add.ptr504.idx.3.1, !dbg !239
  %184 = load <4 x half>, ptr addrspace(3) %add.ptr504.3.1, align 8, !dbg !240
  %185 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %178, <4 x half> %144, <4 x float> %numerator.sroa.0.12.vec.insert2502), !dbg !241
  %186 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %180, <4 x half> %144, <4 x float> %numerator.sroa.98.28.vec.insert2658), !dbg !241
  %187 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %182, <4 x half> %144, <4 x float> %numerator.sroa.194.44.vec.insert2814), !dbg !241
  %188 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %184, <4 x half> %144, <4 x float> %numerator.sroa.290.60.vec.insert2970), !dbg !241
  %add389.1 = fadd contract float %mul278.1, %add385.1, !dbg !242
  br label %if.end530.1, !dbg !243

if.end530.1:                                      ; preds = %if.end435.3.1, %if.end530
  %numerator.sroa.290.1 = phi <4 x float> [ %numerator.sroa.290.0, %if.end530 ], [ %188, %if.end435.3.1 ], !dbg !81
  %numerator.sroa.194.1 = phi <4 x float> [ %numerator.sroa.194.0, %if.end530 ], [ %187, %if.end435.3.1 ], !dbg !81
  %numerator.sroa.98.1 = phi <4 x float> [ %numerator.sroa.98.0, %if.end530 ], [ %186, %if.end435.3.1 ], !dbg !81
  %numerator.sroa.0.1 = phi <4 x float> [ %numerator.sroa.0.0, %if.end530 ], [ %185, %if.end435.3.1 ], !dbg !81
  %maximum.sroa.0.1.1 = phi float [ %maximum.sroa.0.1, %if.end530 ], [ %127, %if.end435.3.1 ], !dbg !81
  %denominator.sroa.0.1.1 = phi float [ %denominator.sroa.0.1, %if.end530 ], [ %add389.1, %if.end435.3.1 ], !dbg !81
  %189 = or disjoint i64 %17, 2, !dbg !244
  %arrayidx80.2 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %189, !dbg !67
  %190 = load i32, ptr addrspace(1) %arrayidx80.2, align 4, !dbg !67, !tbaa !30
  %mul81.2 = shl nsw i32 %190, 4, !dbg !68
  %cmp82.2 = icmp slt i32 %190, 0, !dbg !69
  %cmp84.not.2 = icmp sgt i32 %mul81.2, %1
  %or.cond.2 = select i1 %cmp82.2, i1 true, i1 %cmp84.not.2, !dbg !70
  br i1 %or.cond.2, label %if.end530.2, label %if.then.2, !dbg !70

if.then.2:                                        ; preds = %if.end530.1
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %add91.2 = add nuw nsw i32 %mul81.2, %shr90
  %conv101.2 = zext nneg i32 %mul81.2 to i64
  %.idx.2 = shl nuw nsw i64 %conv101.2, 7
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep881, i64 %.idx.2, !dbg !76
  %cmp94.2 = icmp ult i32 %add91.2, 1024, !dbg !77
  br i1 %cmp94.2, label %if.then95.2, label %if.end.2, !dbg !78

if.then95.2:                                      ; preds = %if.then.2
  %gep865.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.2, i64 %mul97
  %condval.sroa.7.0.add.ptr108.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep865.2, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep865.2, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep865.2, i64 4
  %condval.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %gep865.2, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.2, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.2, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.2, align 4, !dbg !79, !tbaa !30
  br label %if.end.2, !dbg !80

if.end.2:                                         ; preds = %if.then95.2, %if.then.2
  %condval.sroa.0.0.2 = phi i32 [ %condval.sroa.0.0.copyload.2, %if.then95.2 ], [ 0, %if.then.2 ], !dbg !81
  %condval.sroa.5.0.2 = phi i32 [ %condval.sroa.5.0.copyload.2, %if.then95.2 ], [ 0, %if.then.2 ], !dbg !81
  %condval.sroa.6.0.2 = phi i32 [ %condval.sroa.6.0.copyload.2, %if.then95.2 ], [ 0, %if.then.2 ], !dbg !81
  %condval.sroa.7.0.2 = phi i32 [ %condval.sroa.7.0.copyload.2, %if.then95.2 ], [ 0, %if.then.2 ], !dbg !81
  store i32 %condval.sroa.0.0.2, ptr addrspace(3) %invariant.gep854, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 4, !dbg !82
  store i32 %condval.sroa.5.0.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.2, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 8, !dbg !82
  store i32 %condval.sroa.6.0.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.2, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 12, !dbg !82
  store i32 %condval.sroa.7.0.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.2, align 4, !dbg !82, !tbaa !30
  %cmp94.1.2 = icmp ult i32 %add91.2, 1016, !dbg !77
  br i1 %cmp94.1.2, label %if.then95.1.2, label %if.end.1.2, !dbg !78

if.then95.1.2:                                    ; preds = %if.end.2
  %add100.1.2 = or disjoint i64 %mul97, 512
  %gep865.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.2, i64 %add100.1.2
  %condval.sroa.7.0.add.ptr108.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1.2, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1.2, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1.2, i64 4
  %condval.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %gep865.1.2, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.1.2, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.1.2, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.1.2, align 4, !dbg !79, !tbaa !30
  br label %if.end.1.2, !dbg !80

if.end.1.2:                                       ; preds = %if.then95.1.2, %if.end.2
  %condval.sroa.0.0.1.2 = phi i32 [ %condval.sroa.0.0.copyload.1.2, %if.then95.1.2 ], [ 0, %if.end.2 ], !dbg !81
  %condval.sroa.5.0.1.2 = phi i32 [ %condval.sroa.5.0.copyload.1.2, %if.then95.1.2 ], [ 0, %if.end.2 ], !dbg !81
  %condval.sroa.6.0.1.2 = phi i32 [ %condval.sroa.6.0.copyload.1.2, %if.then95.1.2 ], [ 0, %if.end.2 ], !dbg !81
  %condval.sroa.7.0.1.2 = phi i32 [ %condval.sroa.7.0.copyload.1.2, %if.then95.1.2 ], [ 0, %if.end.2 ], !dbg !81
  store i32 %condval.sroa.0.0.1.2, ptr addrspace(3) %gep855.1, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1028, !dbg !82
  store i32 %condval.sroa.5.0.1.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.1.2, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1032, !dbg !82
  store i32 %condval.sroa.6.0.1.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.1.2, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1036, !dbg !82
  store i32 %condval.sroa.7.0.1.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.1.2, align 4, !dbg !82, !tbaa !30
  fence syncscope("warp") release, !dbg !83
  tail call void @llvm.mxc.barrier.warp(), !dbg !86
  fence syncscope("warp") acquire, !dbg !87
  %k_local.sroa.0.0.copyload.2972 = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !88
  %191 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2972, <4 x half> %6, <4 x float> zeroinitializer), !dbg !89
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !88
  %192 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %7, <4 x float> %191), !dbg !89
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !88
  %193 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %8, <4 x float> %192), !dbg !89
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !88
  %194 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %9, <4 x float> %193), !dbg !89
  %add194.2 = add nuw nsw i32 %mul81.2, %mul193
  %cmp197.not.2973 = icmp sgt i32 %add194.2, %1, !dbg !90
  %scores.sroa.0.0.vec.extract2089 = extractelement <4 x float> %194, i64 0
  %spec.select3034 = select i1 %cmp197.not.2973, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2089, !dbg !91
  %cmp197.not.1.2.not = icmp slt i32 %add194.2, %1, !dbg !90
  %scores.sroa.0.4.vec.extract2188 = extractelement <4 x float> %194, i64 1, !dbg !91
  %condval_1.0.1.2 = select i1 %cmp197.not.1.2.not, float %scores.sroa.0.4.vec.extract2188, float 0xFFF0000000000000, !dbg !91
  %add195.2.2 = or disjoint i32 %add194.2, 2, !dbg !92
  %cmp197.not.2.2 = icmp sgt i32 %add195.2.2, %1, !dbg !90
  %scores.sroa.0.8.vec.extract2265 = extractelement <4 x float> %194, i64 2, !dbg !91
  %condval_1.0.2.2 = select i1 %cmp197.not.2.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2265, !dbg !91
  %add195.3.2 = or disjoint i32 %add194.2, 3, !dbg !92
  %cmp197.not.3.2 = icmp sgt i32 %add195.3.2, %1, !dbg !90
  %scores.sroa.0.12.vec.extract2342 = extractelement <4 x float> %194, i64 3, !dbg !91
  %condval_1.0.3.2 = select i1 %cmp197.not.3.2, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2342, !dbg !91
  %195 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3034, float 0xFFF0000000000000), !dbg !93
  %196 = tail call contract noundef float @llvm.maxnum.f32(float %195, float %condval_1.0.1.2), !dbg !93
  %197 = tail call contract noundef float @llvm.maxnum.f32(float %196, float %condval_1.0.2.2), !dbg !93
  %198 = tail call contract noundef float @llvm.maxnum.f32(float %197, float %condval_1.0.3.2), !dbg !93
  %199 = bitcast float %198 to i32, !dbg !97
  %200 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %201 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %200) #11, !dbg !105
  %xor.i.i.2 = xor i32 %201, 32, !dbg !106
  %202 = and i32 %201, -64, !dbg !107
  %and.i.i.2 = add nsw i32 %202, 64, !dbg !107
  %cmp.not.i.i.2 = icmp slt i32 %xor.i.i.2, %and.i.i.2, !dbg !108
  %cond.i.i.2 = select i1 %cmp.not.i.i.2, i32 %xor.i.i.2, i32 %201, !dbg !109
  %shl.i.i.2 = shl i32 %cond.i.i.2, 2, !dbg !110
  %203 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.2, i32 %199), !dbg !111
  %204 = bitcast i32 %203 to float, !dbg !112
  %205 = tail call contract noundef float @llvm.maxnum.f32(float %198, float %204), !dbg !113
  %206 = bitcast float %205 to i32, !dbg !115
  %207 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !117
  %208 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %207) #11, !dbg !120
  %xor.i.i783.2 = xor i32 %208, 16, !dbg !121
  %209 = and i32 %208, -64, !dbg !122
  %and.i.i784.2 = add nsw i32 %209, 64, !dbg !122
  %cmp.not.i.i785.2 = icmp slt i32 %xor.i.i783.2, %and.i.i784.2, !dbg !123
  %cond.i.i786.2 = select i1 %cmp.not.i.i785.2, i32 %xor.i.i783.2, i32 %208, !dbg !124
  %shl.i.i787.2 = shl i32 %cond.i.i786.2, 2, !dbg !125
  %210 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i787.2, i32 %206), !dbg !126
  %211 = bitcast i32 %210 to float, !dbg !127
  %212 = tail call contract noundef float @llvm.maxnum.f32(float %205, float %211), !dbg !128
  %213 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.1, float %212), !dbg !130
  %sub.2 = fsub contract float %maximum.sroa.0.1.1, %213, !dbg !132
  %mul241.2 = fmul contract float %sub.2, 0x3FC7154760000000, !dbg !133
  %cmp.i.i.2 = fcmp contract olt float %mul241.2, -1.260000e+02, !dbg !134
  %cond.i.i788.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !134
  %add.i.i.2 = fadd contract float %mul241.2, %cond.i.i788.2, !dbg !134
  %214 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !134
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !134
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %214, !dbg !134
  %numerator.sroa.0.0.vec.extract2393 = extractelement <4 x float> %numerator.sroa.0.1, i64 0, !dbg !245
  %numerator.sroa.0.4.vec.extract2430 = extractelement <4 x float> %numerator.sroa.0.1, i64 1, !dbg !245
  %numerator.sroa.0.8.vec.extract2467 = extractelement <4 x float> %numerator.sroa.0.1, i64 2, !dbg !245
  %numerator.sroa.0.12.vec.extract2504 = extractelement <4 x float> %numerator.sroa.0.1, i64 3, !dbg !245
  %mul258.2984 = fmul contract float %mul.i.i.2, %numerator.sroa.0.0.vec.extract2393, !dbg !137
  %mul261.2985 = fmul contract float %mul.i.i.2, %numerator.sroa.0.4.vec.extract2430, !dbg !246
  %mul264.2986 = fmul contract float %mul.i.i.2, %numerator.sroa.0.8.vec.extract2467, !dbg !247
  %mul267.2987 = fmul contract float %mul.i.i.2, %numerator.sroa.0.12.vec.extract2504, !dbg !248
  %numerator.sroa.0.0.vec.insert2395 = insertelement <4 x float> poison, float %mul258.2984, i64 0, !dbg !138
  %numerator.sroa.0.4.vec.insert2432 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2395, float %mul261.2985, i64 1, !dbg !138
  %numerator.sroa.0.8.vec.insert2469 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2432, float %mul264.2986, i64 2, !dbg !138
  %numerator.sroa.0.12.vec.insert2506 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2469, float %mul267.2987, i64 3, !dbg !138
  %numerator.sroa.98.16.vec.extract2549 = extractelement <4 x float> %numerator.sroa.98.1, i64 0, !dbg !245
  %numerator.sroa.98.20.vec.extract2586 = extractelement <4 x float> %numerator.sroa.98.1, i64 1, !dbg !245
  %numerator.sroa.98.24.vec.extract2623 = extractelement <4 x float> %numerator.sroa.98.1, i64 2, !dbg !245
  %numerator.sroa.98.28.vec.extract2660 = extractelement <4 x float> %numerator.sroa.98.1, i64 3, !dbg !245
  %mul258.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.16.vec.extract2549, !dbg !137
  %mul261.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.20.vec.extract2586, !dbg !246
  %mul264.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.24.vec.extract2623, !dbg !247
  %mul267.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.28.vec.extract2660, !dbg !248
  %numerator.sroa.98.16.vec.insert2551 = insertelement <4 x float> poison, float %mul258.1.2, i64 0, !dbg !138
  %numerator.sroa.98.20.vec.insert2588 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2551, float %mul261.1.2, i64 1, !dbg !138
  %numerator.sroa.98.24.vec.insert2625 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2588, float %mul264.1.2, i64 2, !dbg !138
  %numerator.sroa.98.28.vec.insert2662 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2625, float %mul267.1.2, i64 3, !dbg !138
  %numerator.sroa.194.32.vec.extract2705 = extractelement <4 x float> %numerator.sroa.194.1, i64 0, !dbg !245
  %numerator.sroa.194.36.vec.extract2742 = extractelement <4 x float> %numerator.sroa.194.1, i64 1, !dbg !245
  %numerator.sroa.194.40.vec.extract2779 = extractelement <4 x float> %numerator.sroa.194.1, i64 2, !dbg !245
  %numerator.sroa.194.44.vec.extract2816 = extractelement <4 x float> %numerator.sroa.194.1, i64 3, !dbg !245
  %mul258.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.32.vec.extract2705, !dbg !137
  %mul261.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.36.vec.extract2742, !dbg !246
  %mul264.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.40.vec.extract2779, !dbg !247
  %mul267.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.44.vec.extract2816, !dbg !248
  %numerator.sroa.194.32.vec.insert2707 = insertelement <4 x float> poison, float %mul258.2.2, i64 0, !dbg !138
  %numerator.sroa.194.36.vec.insert2744 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2707, float %mul261.2.2, i64 1, !dbg !138
  %numerator.sroa.194.40.vec.insert2781 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2744, float %mul264.2.2, i64 2, !dbg !138
  %numerator.sroa.194.44.vec.insert2818 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2781, float %mul267.2.2, i64 3, !dbg !138
  %numerator.sroa.290.48.vec.extract2861 = extractelement <4 x float> %numerator.sroa.290.1, i64 0, !dbg !245
  %numerator.sroa.290.52.vec.extract2898 = extractelement <4 x float> %numerator.sroa.290.1, i64 1, !dbg !245
  %numerator.sroa.290.56.vec.extract2935 = extractelement <4 x float> %numerator.sroa.290.1, i64 2, !dbg !245
  %numerator.sroa.290.60.vec.extract2972 = extractelement <4 x float> %numerator.sroa.290.1, i64 3, !dbg !245
  %mul258.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.48.vec.extract2861, !dbg !137
  %mul261.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.52.vec.extract2898, !dbg !246
  %mul264.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.56.vec.extract2935, !dbg !247
  %mul267.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.60.vec.extract2972, !dbg !248
  %numerator.sroa.290.48.vec.insert2863 = insertelement <4 x float> poison, float %mul258.3.2, i64 0, !dbg !138
  %numerator.sroa.290.52.vec.insert2900 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2863, float %mul261.3.2, i64 1, !dbg !138
  %numerator.sroa.290.56.vec.insert2937 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2900, float %mul264.3.2, i64 2, !dbg !138
  %numerator.sroa.290.60.vec.insert2974 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2937, float %mul267.3.2, i64 3, !dbg !138
  %sub291.2 = fsub contract float %spec.select3034, %213, !dbg !139
  %sub295.2 = fsub contract float %condval_1.0.1.2, %213, !dbg !140
  %sub299.2 = fsub contract float %condval_1.0.2.2, %213, !dbg !141
  %sub303.2 = fsub contract float %condval_1.0.3.2, %213, !dbg !142
  %mul308.2 = fmul contract float %sub291.2, 0x3FC7154760000000, !dbg !143
  %mul312.2 = fmul contract float %sub295.2, 0x3FC7154760000000, !dbg !144
  %mul316.2 = fmul contract float %sub299.2, 0x3FC7154760000000, !dbg !145
  %mul320.2 = fmul contract float %sub303.2, 0x3FC7154760000000, !dbg !146
  %add325.2 = fadd contract float %mul308.2, 8.000000e+00, !dbg !147
  %add329.2 = fadd contract float %mul312.2, 8.000000e+00, !dbg !148
  %add333.2 = fadd contract float %mul316.2, 8.000000e+00, !dbg !149
  %add337.2 = fadd contract float %mul320.2, 8.000000e+00, !dbg !150
  %cmp.i.i793.2 = fcmp contract olt float %add325.2, -1.260000e+02, !dbg !151
  %cond.i.i794.2 = select contract i1 %cmp.i.i793.2, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i795.2 = fadd contract float %add325.2, %cond.i.i794.2, !dbg !151
  %215 = tail call contract float @llvm.exp2.f32(float %add.i.i795.2), !dbg !151
  %cond2.i.i796.2 = select contract i1 %cmp.i.i793.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i797.2 = fmul contract float %cond2.i.i796.2, %215, !dbg !151
  %cmp.i.i798.2 = fcmp contract olt float %add329.2, -1.260000e+02, !dbg !153
  %cond.i.i799.2 = select contract i1 %cmp.i.i798.2, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i800.2 = fadd contract float %add329.2, %cond.i.i799.2, !dbg !153
  %216 = tail call contract float @llvm.exp2.f32(float %add.i.i800.2), !dbg !153
  %cond2.i.i801.2 = select contract i1 %cmp.i.i798.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i802.2 = fmul contract float %cond2.i.i801.2, %216, !dbg !153
  %cmp.i.i803.2 = fcmp contract olt float %add333.2, -1.260000e+02, !dbg !155
  %cond.i.i804.2 = select contract i1 %cmp.i.i803.2, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i805.2 = fadd contract float %add333.2, %cond.i.i804.2, !dbg !155
  %217 = tail call contract float @llvm.exp2.f32(float %add.i.i805.2), !dbg !155
  %cond2.i.i806.2 = select contract i1 %cmp.i.i803.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i807.2 = fmul contract float %cond2.i.i806.2, %217, !dbg !155
  %cmp.i.i808.2 = fcmp contract olt float %add337.2, -1.260000e+02, !dbg !157
  %cond.i.i809.2 = select contract i1 %cmp.i.i808.2, float 6.400000e+01, float 0.000000e+00, !dbg !157
  %add.i.i810.2 = fadd contract float %add337.2, %cond.i.i809.2, !dbg !157
  %218 = tail call contract float @llvm.exp2.f32(float %add.i.i810.2), !dbg !157
  %cond2.i.i811.2 = select contract i1 %cmp.i.i808.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !157
  %mul.i.i812.2 = fmul contract float %cond2.i.i811.2, %218, !dbg !157
  %219 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !159
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !159, !noalias !167
  %220 = fptrunc float %mul.i.i797.2 to half, !dbg !159
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %219), !dbg !159, !noalias !167
  %221 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !167
  %222 = fptrunc float %mul.i.i802.2 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %221), !dbg !172, !noalias !167
  %223 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !174, !noalias !178
  %224 = fptrunc float %mul.i.i807.2 to half, !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %223), !dbg !174, !noalias !178
  %225 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !183, !noalias !178
  %226 = fptrunc float %mul.i.i812.2 to half, !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %225), !dbg !183, !noalias !178
  %227 = insertelement <4 x half> poison, half %220, i64 0, !dbg !185
  %228 = insertelement <4 x half> %227, half %222, i64 1, !dbg !185
  %229 = insertelement <4 x half> %228, half %224, i64 2, !dbg !185
  %230 = insertelement <4 x half> %229, half %226, i64 3, !dbg !185
  %conv.i.i.2989 = fpext half %220 to float, !dbg !186
  %add372.2990 = fadd contract float %conv.i.i.2989, 0.000000e+00, !dbg !191
  %conv.i.i.1.2 = fpext half %222 to float, !dbg !186
  %add372.1.2 = fadd contract float %add372.2990, %conv.i.i.1.2, !dbg !191
  %conv.i.i.2.2 = fpext half %224 to float, !dbg !186
  %add372.2.2 = fadd contract float %add372.1.2, %conv.i.i.2.2, !dbg !191
  %conv.i.i.3.2 = fpext half %226 to float, !dbg !186
  %add372.3.2 = fadd contract float %add372.2.2, %conv.i.i.3.2, !dbg !191
  %231 = bitcast float %add372.3.2 to i32, !dbg !192
  %232 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !194
  %233 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %232) #11, !dbg !197
  %xor.i.i818.2 = xor i32 %233, 32, !dbg !198
  %234 = and i32 %233, -64, !dbg !199
  %and.i.i819.2 = add nsw i32 %234, 64, !dbg !199
  %cmp.not.i.i820.2 = icmp slt i32 %xor.i.i818.2, %and.i.i819.2, !dbg !200
  %cond.i.i821.2 = select i1 %cmp.not.i.i820.2, i32 %xor.i.i818.2, i32 %233, !dbg !201
  %shl.i.i822.2 = shl i32 %cond.i.i821.2, 2, !dbg !202
  %235 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i822.2, i32 %231), !dbg !203
  %236 = bitcast i32 %235 to float, !dbg !204
  %add380.2 = fadd contract float %add372.3.2, %236, !dbg !205
  %237 = bitcast float %add380.2 to i32, !dbg !206
  %238 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !208
  %239 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %238) #11, !dbg !211
  %xor.i.i823.2 = xor i32 %239, 16, !dbg !212
  %240 = and i32 %239, -64, !dbg !213
  %and.i.i824.2 = add nsw i32 %240, 64, !dbg !213
  %cmp.not.i.i825.2 = icmp slt i32 %xor.i.i823.2, %and.i.i824.2, !dbg !214
  %cond.i.i826.2 = select i1 %cmp.not.i.i825.2, i32 %xor.i.i823.2, i32 %239, !dbg !215
  %shl.i.i827.2 = shl i32 %cond.i.i826.2, 2, !dbg !216
  %241 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i827.2, i32 %237), !dbg !217
  %242 = bitcast i32 %241 to float, !dbg !218
  %add385.2 = fadd contract float %add380.2, %242, !dbg !219
  fence syncscope("warp") release, !dbg !220
  tail call void @llvm.mxc.barrier.warp(), !dbg !223
  fence syncscope("warp") acquire, !dbg !224
  %shr398.2 = lshr exact i32 %mul81.2, 2
  %add399.2 = add nuw nsw i32 %shr398.2, %shr396
  %cmp400.2 = icmp ult i32 %add399.2, 256
  br i1 %cmp400.2, label %if.then401.2995, label %if.end435.2999, !dbg !225

if.then401.2995:                                  ; preds = %if.end.1.2
  %243 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %244 = getelementptr inbounds i8, ptr addrspace(4) %243, i64 %.idx.2, !dbg !226
  %condval_2.sroa.0.0.copyload.2992 = load i32, ptr addrspace(4) %244, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.2993 = getelementptr inbounds i8, ptr addrspace(4) %244, i64 4, !dbg !227
  %condval_2.sroa.5.0.copyload.2994 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.2993, align 4, !dbg !227, !tbaa !30
  br label %if.end435.2999, !dbg !228

if.end435.2999:                                   ; preds = %if.then401.2995, %if.end.1.2
  %condval_2.sroa.0.0.2996 = phi i32 [ %condval_2.sroa.0.0.copyload.2992, %if.then401.2995 ], [ 0, %if.end.1.2 ], !dbg !81
  %condval_2.sroa.5.0.2997 = phi i32 [ %condval_2.sroa.5.0.copyload.2994, %if.then401.2995 ], [ 0, %if.end.1.2 ], !dbg !81
  br i1 %cmp400.2, label %if.then401.1.2, label %if.end435.1.2, !dbg !225

if.then401.1.2:                                   ; preds = %if.end435.2999
  %245 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %246 = getelementptr inbounds i8, ptr addrspace(4) %245, i64 %.idx.2, !dbg !226
  %add.ptr421.1.2 = getelementptr inbounds i8, ptr addrspace(4) %246, i64 128, !dbg !226
  %condval_2.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %add.ptr421.1.2, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %246, i64 132, !dbg !227
  %condval_2.sroa.5.0.copyload.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.1.2, align 4, !dbg !227, !tbaa !30
  br label %if.end435.1.2, !dbg !228

if.end435.1.2:                                    ; preds = %if.then401.1.2, %if.end435.2999
  %condval_2.sroa.0.0.1.2 = phi i32 [ %condval_2.sroa.0.0.copyload.1.2, %if.then401.1.2 ], [ 0, %if.end435.2999 ], !dbg !81
  %condval_2.sroa.5.0.1.2 = phi i32 [ %condval_2.sroa.5.0.copyload.1.2, %if.then401.1.2 ], [ 0, %if.end435.2999 ], !dbg !81
  br i1 %cmp400.2, label %if.then401.2.2, label %if.end435.2.2, !dbg !225

if.then401.2.2:                                   ; preds = %if.end435.1.2
  %247 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %248 = getelementptr inbounds i8, ptr addrspace(4) %247, i64 %.idx.2, !dbg !226
  %add.ptr421.2.2 = getelementptr inbounds i8, ptr addrspace(4) %248, i64 256, !dbg !226
  %condval_2.sroa.0.0.copyload.2.2 = load i32, ptr addrspace(4) %add.ptr421.2.2, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.2.2 = getelementptr inbounds i8, ptr addrspace(4) %248, i64 260, !dbg !227
  %condval_2.sroa.5.0.copyload.2.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.2.2, align 4, !dbg !227, !tbaa !30
  br label %if.end435.2.2, !dbg !228

if.end435.2.2:                                    ; preds = %if.then401.2.2, %if.end435.1.2
  %condval_2.sroa.0.0.2.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2.2, %if.then401.2.2 ], [ 0, %if.end435.1.2 ], !dbg !81
  %condval_2.sroa.5.0.2.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2.2, %if.then401.2.2 ], [ 0, %if.end435.1.2 ], !dbg !81
  br i1 %cmp400.2, label %if.then401.3.2, label %if.end435.3.2, !dbg !225

if.then401.3.2:                                   ; preds = %if.end435.2.2
  %249 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %250 = getelementptr inbounds i8, ptr addrspace(4) %249, i64 %.idx.2, !dbg !226
  %add.ptr421.3.2 = getelementptr inbounds i8, ptr addrspace(4) %250, i64 384, !dbg !226
  %condval_2.sroa.0.0.copyload.3.2 = load i32, ptr addrspace(4) %add.ptr421.3.2, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.3.2 = getelementptr inbounds i8, ptr addrspace(4) %250, i64 388, !dbg !227
  %condval_2.sroa.5.0.copyload.3.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.3.2, align 4, !dbg !227, !tbaa !30
  br label %if.end435.3.2, !dbg !228

if.end435.3.2:                                    ; preds = %if.then401.3.2, %if.end435.2.2
  %condval_2.sroa.0.0.3.2 = phi i32 [ %condval_2.sroa.0.0.copyload.3.2, %if.then401.3.2 ], [ 0, %if.end435.2.2 ], !dbg !81
  %condval_2.sroa.5.0.3.2 = phi i32 [ %condval_2.sroa.5.0.copyload.3.2, %if.then401.3.2 ], [ 0, %if.end435.2.2 ], !dbg !81
  %mul278.2 = fmul contract float %denominator.sroa.0.1.1, %mul.i.i.2, !dbg !249
  %251 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul465, !dbg !229
  %add.ptr477.idx.21006 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.21007 = getelementptr inbounds i8, ptr addrspace(3) %251, i32 %add.ptr477.idx.21006, !dbg !229
  %252 = and i32 %condval_2.sroa.0.0.3.2, 65535, !dbg !230
  %v_column.sroa.130.0.insert.ext1530 = zext nneg i32 %252 to i64, !dbg !230
  %v_column.sroa.130.0.insert.shift1531 = shl nuw i64 %v_column.sroa.130.0.insert.ext1530, 48, !dbg !230
  %253 = and i32 %condval_2.sroa.0.0.2.2, 65535, !dbg !230
  %v_column.sroa.98.0.insert.ext1375 = zext nneg i32 %253 to i64, !dbg !230
  %v_column.sroa.98.0.insert.shift1376 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1375, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1378 = or disjoint i64 %v_column.sroa.130.0.insert.shift1531, %v_column.sroa.98.0.insert.shift1376, !dbg !230
  %254 = shl i32 %condval_2.sroa.0.0.1.2, 16, !dbg !230
  %v_column.sroa.66.0.insert.shift1221 = zext i32 %254 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1223 = or disjoint i64 %v_column.sroa.98.0.insert.insert1378, %v_column.sroa.66.0.insert.shift1221, !dbg !230
  %255 = and i32 %condval_2.sroa.0.0.2996, 65535, !dbg !230
  %v_column.sroa.0.0.insert.ext1089 = zext nneg i32 %255 to i64, !dbg !230
  %v_column.sroa.0.0.insert.insert1091 = or disjoint i64 %v_column.sroa.66.0.insert.insert1223, %v_column.sroa.0.0.insert.ext1089, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1091, ptr addrspace(3) %add.ptr477.21007, align 8, !dbg !230
  %v_fetch.sroa.0.2.extract.shift1727 = lshr i32 %condval_2.sroa.0.0.2996, 16, !dbg !231
  %v_fetch.sroa.0.2.extract.trunc1728 = zext nneg i32 %v_fetch.sroa.0.2.extract.shift1727 to i64, !dbg !231
  %v_fetch.sroa.50.10.extract.shift1797 = and i32 %condval_2.sroa.0.0.1.2, -65536, !dbg !230
  %v_fetch.sroa.98.18.extract.shift1867 = lshr i32 %condval_2.sroa.0.0.2.2, 16, !dbg !231
  %v_fetch.sroa.98.18.extract.trunc1868 = zext nneg i32 %v_fetch.sroa.98.18.extract.shift1867 to i64, !dbg !231
  %v_fetch.sroa.146.26.extract.shift1937 = lshr i32 %condval_2.sroa.0.0.3.2, 16, !dbg !231
  %v_fetch.sroa.146.26.extract.trunc1938 = zext nneg i32 %v_fetch.sroa.146.26.extract.shift1937 to i64, !dbg !231
  %add466.1.2 = or disjoint i32 %mul465, 256, !dbg !232
  %256 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.1.2, !dbg !229
  %xor473.1.2 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.1.2 = xor i32 %xor473.1.2, 8, !dbg !229
  %add.ptr477.1.2 = getelementptr inbounds i8, ptr addrspace(3) %256, i32 %add.ptr477.idx.1.2, !dbg !229
  %v_column.sroa.130.0.insert.shift1536 = shl nuw i64 %v_fetch.sroa.146.26.extract.trunc1938, 48, !dbg !230
  %v_column.sroa.98.0.insert.shift1381 = shl nuw nsw i64 %v_fetch.sroa.98.18.extract.trunc1868, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1383 = or disjoint i64 %v_column.sroa.130.0.insert.shift1536, %v_column.sroa.98.0.insert.shift1381, !dbg !230
  %v_column.sroa.66.0.insert.shift1226 = zext i32 %v_fetch.sroa.50.10.extract.shift1797 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1228 = or disjoint i64 %v_column.sroa.98.0.insert.insert1383, %v_column.sroa.66.0.insert.shift1226, !dbg !230
  %v_column.sroa.0.0.insert.insert1095 = or disjoint i64 %v_column.sroa.66.0.insert.insert1228, %v_fetch.sroa.0.2.extract.trunc1728, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1095, ptr addrspace(3) %add.ptr477.1.2, align 8, !dbg !230
  %add466.2.2 = or disjoint i32 %mul465, 512, !dbg !232
  %257 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.2.2, !dbg !229
  %xor473.2.2 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.2.2 = xor i32 %xor473.2.2, 16, !dbg !229
  %add.ptr477.2.2 = getelementptr inbounds i8, ptr addrspace(3) %257, i32 %add.ptr477.idx.2.2, !dbg !229
  %258 = and i32 %condval_2.sroa.5.0.3.2, 65535, !dbg !230
  %v_column.sroa.130.0.insert.ext1540 = zext nneg i32 %258 to i64, !dbg !230
  %v_column.sroa.130.0.insert.shift1541 = shl nuw i64 %v_column.sroa.130.0.insert.ext1540, 48, !dbg !230
  %259 = and i32 %condval_2.sroa.5.0.2.2, 65535, !dbg !230
  %v_column.sroa.98.0.insert.ext1385 = zext nneg i32 %259 to i64, !dbg !230
  %v_column.sroa.98.0.insert.shift1386 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1385, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1388 = or disjoint i64 %v_column.sroa.130.0.insert.shift1541, %v_column.sroa.98.0.insert.shift1386, !dbg !230
  %260 = shl i32 %condval_2.sroa.5.0.1.2, 16, !dbg !230
  %v_column.sroa.66.0.insert.shift1231 = zext i32 %260 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1233 = or disjoint i64 %v_column.sroa.98.0.insert.insert1388, %v_column.sroa.66.0.insert.shift1231, !dbg !230
  %261 = and i32 %condval_2.sroa.5.0.2997, 65535, !dbg !230
  %v_column.sroa.0.0.insert.ext1097 = zext nneg i32 %261 to i64, !dbg !230
  %v_column.sroa.0.0.insert.insert1099 = or disjoint i64 %v_column.sroa.66.0.insert.insert1233, %v_column.sroa.0.0.insert.ext1097, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1099, ptr addrspace(3) %add.ptr477.2.2, align 8, !dbg !230
  %v_fetch.sroa.26.6.extract.shift1762 = lshr i32 %condval_2.sroa.5.0.2997, 16, !dbg !231
  %v_fetch.sroa.26.6.extract.trunc1763 = zext nneg i32 %v_fetch.sroa.26.6.extract.shift1762 to i64, !dbg !231
  %v_fetch.sroa.74.14.extract.shift1832 = and i32 %condval_2.sroa.5.0.1.2, -65536, !dbg !230
  %v_fetch.sroa.122.22.extract.shift1902 = lshr i32 %condval_2.sroa.5.0.2.2, 16, !dbg !231
  %v_fetch.sroa.122.22.extract.trunc1903 = zext nneg i32 %v_fetch.sroa.122.22.extract.shift1902 to i64, !dbg !231
  %v_fetch.sroa.170.30.extract.shift1972 = lshr i32 %condval_2.sroa.5.0.3.2, 16, !dbg !231
  %v_fetch.sroa.170.30.extract.trunc1973 = zext nneg i32 %v_fetch.sroa.170.30.extract.shift1972 to i64, !dbg !231
  %add466.3.2 = or disjoint i32 %mul465, 768, !dbg !232
  %262 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.3.2, !dbg !229
  %xor473.3.2 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.3.2 = xor i32 %xor473.3.2, 24, !dbg !229
  %add.ptr477.3.2 = getelementptr inbounds i8, ptr addrspace(3) %262, i32 %add.ptr477.idx.3.2, !dbg !229
  %v_column.sroa.130.0.insert.shift1546 = shl nuw i64 %v_fetch.sroa.170.30.extract.trunc1973, 48, !dbg !230
  %v_column.sroa.98.0.insert.shift1391 = shl nuw nsw i64 %v_fetch.sroa.122.22.extract.trunc1903, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1393 = or disjoint i64 %v_column.sroa.130.0.insert.shift1546, %v_column.sroa.98.0.insert.shift1391, !dbg !230
  %v_column.sroa.66.0.insert.shift1236 = zext i32 %v_fetch.sroa.74.14.extract.shift1832 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1238 = or disjoint i64 %v_column.sroa.98.0.insert.insert1393, %v_column.sroa.66.0.insert.shift1236, !dbg !230
  %v_column.sroa.0.0.insert.insert1103 = or disjoint i64 %v_column.sroa.66.0.insert.insert1238, %v_fetch.sroa.26.6.extract.trunc1763, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1103, ptr addrspace(3) %add.ptr477.3.2, align 8, !dbg !230
  fence syncscope("warp") release, !dbg !233
  tail call void @llvm.mxc.barrier.warp(), !dbg !236
  fence syncscope("warp") acquire, !dbg !237
  %add494.21009 = or disjoint i32 %mul487, %mul493, !dbg !238
  %263 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.21009, !dbg !239
  %add.ptr504.idx.21010 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.21011 = getelementptr inbounds i8, ptr addrspace(3) %263, i32 %add.ptr504.idx.21010, !dbg !239
  %264 = load <4 x half>, ptr addrspace(3) %add.ptr504.21011, align 8, !dbg !240
  %add489.1.2 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.1.2 = or disjoint i32 %add489.1.2, 64, !dbg !238
  %265 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.1.2, !dbg !239
  %xor500.1.2 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.1.2 = xor i32 %xor500.1.2, 8, !dbg !239
  %add.ptr504.1.2 = getelementptr inbounds i8, ptr addrspace(3) %265, i32 %add.ptr504.idx.1.2, !dbg !239
  %266 = load <4 x half>, ptr addrspace(3) %add.ptr504.1.2, align 8, !dbg !240
  %add489.2.2 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.2.2 = or disjoint i32 %add489.2.2, 128, !dbg !238
  %267 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.2.2, !dbg !239
  %xor500.2.2 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.2.2 = xor i32 %xor500.2.2, 16, !dbg !239
  %add.ptr504.2.2 = getelementptr inbounds i8, ptr addrspace(3) %267, i32 %add.ptr504.idx.2.2, !dbg !239
  %268 = load <4 x half>, ptr addrspace(3) %add.ptr504.2.2, align 8, !dbg !240
  %add489.3.2 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.3.2 = or disjoint i32 %add489.3.2, 192, !dbg !238
  %269 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.3.2, !dbg !239
  %xor500.3.2 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.3.2 = xor i32 %xor500.3.2, 24, !dbg !239
  %add.ptr504.3.2 = getelementptr inbounds i8, ptr addrspace(3) %269, i32 %add.ptr504.idx.3.2, !dbg !239
  %270 = load <4 x half>, ptr addrspace(3) %add.ptr504.3.2, align 8, !dbg !240
  %271 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %264, <4 x half> %230, <4 x float> %numerator.sroa.0.12.vec.insert2506), !dbg !241
  %272 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %266, <4 x half> %230, <4 x float> %numerator.sroa.98.28.vec.insert2662), !dbg !241
  %273 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %268, <4 x half> %230, <4 x float> %numerator.sroa.194.44.vec.insert2818), !dbg !241
  %274 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %270, <4 x half> %230, <4 x float> %numerator.sroa.290.60.vec.insert2974), !dbg !241
  %add389.2 = fadd contract float %mul278.2, %add385.2, !dbg !242
  br label %if.end530.2, !dbg !243

if.end530.2:                                      ; preds = %if.end435.3.2, %if.end530.1
  %numerator.sroa.290.2 = phi <4 x float> [ %numerator.sroa.290.1, %if.end530.1 ], [ %274, %if.end435.3.2 ], !dbg !81
  %numerator.sroa.194.2 = phi <4 x float> [ %numerator.sroa.194.1, %if.end530.1 ], [ %273, %if.end435.3.2 ], !dbg !81
  %numerator.sroa.98.2 = phi <4 x float> [ %numerator.sroa.98.1, %if.end530.1 ], [ %272, %if.end435.3.2 ], !dbg !81
  %numerator.sroa.0.2 = phi <4 x float> [ %numerator.sroa.0.1, %if.end530.1 ], [ %271, %if.end435.3.2 ], !dbg !81
  %maximum.sroa.0.1.2 = phi float [ %maximum.sroa.0.1.1, %if.end530.1 ], [ %213, %if.end435.3.2 ], !dbg !81
  %denominator.sroa.0.1.2 = phi float [ %denominator.sroa.0.1.1, %if.end530.1 ], [ %add389.2, %if.end435.3.2 ], !dbg !81
  %275 = or disjoint i64 %17, 3, !dbg !244
  %arrayidx80.3 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %275, !dbg !67
  %276 = load i32, ptr addrspace(1) %arrayidx80.3, align 4, !dbg !67, !tbaa !30
  %mul81.3 = shl nsw i32 %276, 4, !dbg !68
  %cmp82.3 = icmp slt i32 %276, 0, !dbg !69
  %cmp84.not.3 = icmp sgt i32 %mul81.3, %1
  %or.cond.3 = select i1 %cmp82.3, i1 true, i1 %cmp84.not.3, !dbg !70
  br i1 %or.cond.3, label %if.end530.3, label %if.then.3, !dbg !70

if.then.3:                                        ; preds = %if.end530.2
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %add91.3 = add nuw nsw i32 %mul81.3, %shr90
  %conv101.3 = zext nneg i32 %mul81.3 to i64
  %.idx.3 = shl nuw nsw i64 %conv101.3, 7
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep881, i64 %.idx.3, !dbg !76
  %cmp94.3 = icmp ult i32 %add91.3, 1024, !dbg !77
  br i1 %cmp94.3, label %if.then95.3, label %if.end.3, !dbg !78

if.then95.3:                                      ; preds = %if.then.3
  %gep865.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.3, i64 %mul97
  %condval.sroa.7.0.add.ptr108.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep865.3, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep865.3, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep865.3, i64 4
  %condval.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %gep865.3, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.3, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.3, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.3, align 4, !dbg !79, !tbaa !30
  br label %if.end.3, !dbg !80

if.end.3:                                         ; preds = %if.then95.3, %if.then.3
  %condval.sroa.0.0.3 = phi i32 [ %condval.sroa.0.0.copyload.3, %if.then95.3 ], [ 0, %if.then.3 ], !dbg !81
  %condval.sroa.5.0.3 = phi i32 [ %condval.sroa.5.0.copyload.3, %if.then95.3 ], [ 0, %if.then.3 ], !dbg !81
  %condval.sroa.6.0.3 = phi i32 [ %condval.sroa.6.0.copyload.3, %if.then95.3 ], [ 0, %if.then.3 ], !dbg !81
  %condval.sroa.7.0.3 = phi i32 [ %condval.sroa.7.0.copyload.3, %if.then95.3 ], [ 0, %if.then.3 ], !dbg !81
  store i32 %condval.sroa.0.0.3, ptr addrspace(3) %invariant.gep854, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 4, !dbg !82
  store i32 %condval.sroa.5.0.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.3, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 8, !dbg !82
  store i32 %condval.sroa.6.0.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.3, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 12, !dbg !82
  store i32 %condval.sroa.7.0.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.3, align 4, !dbg !82, !tbaa !30
  %cmp94.1.3 = icmp ult i32 %add91.3, 1016, !dbg !77
  br i1 %cmp94.1.3, label %if.then95.1.3, label %if.end.1.3, !dbg !78

if.then95.1.3:                                    ; preds = %if.end.3
  %add100.1.3 = or disjoint i64 %mul97, 512
  %gep865.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.3, i64 %add100.1.3
  %condval.sroa.7.0.add.ptr108.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1.3, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1.3, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1.3, i64 4
  %condval.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %gep865.1.3, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.1.3, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.1.3, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.1.3, align 4, !dbg !79, !tbaa !30
  br label %if.end.1.3, !dbg !80

if.end.1.3:                                       ; preds = %if.then95.1.3, %if.end.3
  %condval.sroa.0.0.1.3 = phi i32 [ %condval.sroa.0.0.copyload.1.3, %if.then95.1.3 ], [ 0, %if.end.3 ], !dbg !81
  %condval.sroa.5.0.1.3 = phi i32 [ %condval.sroa.5.0.copyload.1.3, %if.then95.1.3 ], [ 0, %if.end.3 ], !dbg !81
  %condval.sroa.6.0.1.3 = phi i32 [ %condval.sroa.6.0.copyload.1.3, %if.then95.1.3 ], [ 0, %if.end.3 ], !dbg !81
  %condval.sroa.7.0.1.3 = phi i32 [ %condval.sroa.7.0.copyload.1.3, %if.then95.1.3 ], [ 0, %if.end.3 ], !dbg !81
  store i32 %condval.sroa.0.0.1.3, ptr addrspace(3) %gep855.1, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1028, !dbg !82
  store i32 %condval.sroa.5.0.1.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.1.3, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1032, !dbg !82
  store i32 %condval.sroa.6.0.1.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.1.3, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1036, !dbg !82
  store i32 %condval.sroa.7.0.1.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.1.3, align 4, !dbg !82, !tbaa !30
  fence syncscope("warp") release, !dbg !83
  tail call void @llvm.mxc.barrier.warp(), !dbg !86
  fence syncscope("warp") acquire, !dbg !87
  %k_local.sroa.0.0.copyload.31017 = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !88
  %277 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.31017, <4 x half> %6, <4 x float> zeroinitializer), !dbg !89
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !88
  %278 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %7, <4 x float> %277), !dbg !89
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !88
  %279 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %8, <4 x float> %278), !dbg !89
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !88
  %280 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %9, <4 x float> %279), !dbg !89
  %add194.3 = add nuw nsw i32 %mul81.3, %mul193
  %cmp197.not.31018 = icmp sgt i32 %add194.3, %1, !dbg !90
  %scores.sroa.0.0.vec.extract2099 = extractelement <4 x float> %280, i64 0
  %spec.select3035 = select i1 %cmp197.not.31018, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2099, !dbg !91
  %cmp197.not.1.3.not = icmp slt i32 %add194.3, %1, !dbg !90
  %scores.sroa.0.4.vec.extract2194 = extractelement <4 x float> %280, i64 1, !dbg !91
  %condval_1.0.1.3 = select i1 %cmp197.not.1.3.not, float %scores.sroa.0.4.vec.extract2194, float 0xFFF0000000000000, !dbg !91
  %add195.2.3 = or disjoint i32 %add194.3, 2, !dbg !92
  %cmp197.not.2.3 = icmp sgt i32 %add195.2.3, %1, !dbg !90
  %scores.sroa.0.8.vec.extract2271 = extractelement <4 x float> %280, i64 2, !dbg !91
  %condval_1.0.2.3 = select i1 %cmp197.not.2.3, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2271, !dbg !91
  %add195.3.3 = or disjoint i32 %add194.3, 3, !dbg !92
  %cmp197.not.3.3 = icmp sgt i32 %add195.3.3, %1, !dbg !90
  %scores.sroa.0.12.vec.extract2348 = extractelement <4 x float> %280, i64 3, !dbg !91
  %condval_1.0.3.3 = select i1 %cmp197.not.3.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2348, !dbg !91
  %281 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3035, float 0xFFF0000000000000), !dbg !93
  %282 = tail call contract noundef float @llvm.maxnum.f32(float %281, float %condval_1.0.1.3), !dbg !93
  %283 = tail call contract noundef float @llvm.maxnum.f32(float %282, float %condval_1.0.2.3), !dbg !93
  %284 = tail call contract noundef float @llvm.maxnum.f32(float %283, float %condval_1.0.3.3), !dbg !93
  %285 = bitcast float %284 to i32, !dbg !97
  %286 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %287 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %286) #11, !dbg !105
  %xor.i.i.3 = xor i32 %287, 32, !dbg !106
  %288 = and i32 %287, -64, !dbg !107
  %and.i.i.3 = add nsw i32 %288, 64, !dbg !107
  %cmp.not.i.i.3 = icmp slt i32 %xor.i.i.3, %and.i.i.3, !dbg !108
  %cond.i.i.3 = select i1 %cmp.not.i.i.3, i32 %xor.i.i.3, i32 %287, !dbg !109
  %shl.i.i.3 = shl i32 %cond.i.i.3, 2, !dbg !110
  %289 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.3, i32 %285), !dbg !111
  %290 = bitcast i32 %289 to float, !dbg !112
  %291 = tail call contract noundef float @llvm.maxnum.f32(float %284, float %290), !dbg !113
  %292 = bitcast float %291 to i32, !dbg !115
  %293 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !117
  %294 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %293) #11, !dbg !120
  %xor.i.i783.3 = xor i32 %294, 16, !dbg !121
  %295 = and i32 %294, -64, !dbg !122
  %and.i.i784.3 = add nsw i32 %295, 64, !dbg !122
  %cmp.not.i.i785.3 = icmp slt i32 %xor.i.i783.3, %and.i.i784.3, !dbg !123
  %cond.i.i786.3 = select i1 %cmp.not.i.i785.3, i32 %xor.i.i783.3, i32 %294, !dbg !124
  %shl.i.i787.3 = shl i32 %cond.i.i786.3, 2, !dbg !125
  %296 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i787.3, i32 %292), !dbg !126
  %297 = bitcast i32 %296 to float, !dbg !127
  %298 = tail call contract noundef float @llvm.maxnum.f32(float %291, float %297), !dbg !128
  %299 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.2, float %298), !dbg !130
  %sub.3 = fsub contract float %maximum.sroa.0.1.2, %299, !dbg !132
  %mul241.3 = fmul contract float %sub.3, 0x3FC7154760000000, !dbg !133
  %cmp.i.i.3 = fcmp contract olt float %mul241.3, -1.260000e+02, !dbg !134
  %cond.i.i788.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !134
  %add.i.i.3 = fadd contract float %mul241.3, %cond.i.i788.3, !dbg !134
  %300 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !134
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !134
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %300, !dbg !134
  %numerator.sroa.0.0.vec.extract2397 = extractelement <4 x float> %numerator.sroa.0.2, i64 0, !dbg !245
  %numerator.sroa.0.4.vec.extract2434 = extractelement <4 x float> %numerator.sroa.0.2, i64 1, !dbg !245
  %numerator.sroa.0.8.vec.extract2471 = extractelement <4 x float> %numerator.sroa.0.2, i64 2, !dbg !245
  %numerator.sroa.0.12.vec.extract2508 = extractelement <4 x float> %numerator.sroa.0.2, i64 3, !dbg !245
  %mul258.31029 = fmul contract float %mul.i.i.3, %numerator.sroa.0.0.vec.extract2397, !dbg !137
  %mul261.31030 = fmul contract float %mul.i.i.3, %numerator.sroa.0.4.vec.extract2434, !dbg !246
  %mul264.31031 = fmul contract float %mul.i.i.3, %numerator.sroa.0.8.vec.extract2471, !dbg !247
  %mul267.31032 = fmul contract float %mul.i.i.3, %numerator.sroa.0.12.vec.extract2508, !dbg !248
  %numerator.sroa.0.0.vec.insert2399 = insertelement <4 x float> poison, float %mul258.31029, i64 0, !dbg !138
  %numerator.sroa.0.4.vec.insert2436 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2399, float %mul261.31030, i64 1, !dbg !138
  %numerator.sroa.0.8.vec.insert2473 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2436, float %mul264.31031, i64 2, !dbg !138
  %numerator.sroa.0.12.vec.insert2510 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2473, float %mul267.31032, i64 3, !dbg !138
  %numerator.sroa.98.16.vec.extract2553 = extractelement <4 x float> %numerator.sroa.98.2, i64 0, !dbg !245
  %numerator.sroa.98.20.vec.extract2590 = extractelement <4 x float> %numerator.sroa.98.2, i64 1, !dbg !245
  %numerator.sroa.98.24.vec.extract2627 = extractelement <4 x float> %numerator.sroa.98.2, i64 2, !dbg !245
  %numerator.sroa.98.28.vec.extract2664 = extractelement <4 x float> %numerator.sroa.98.2, i64 3, !dbg !245
  %mul258.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.16.vec.extract2553, !dbg !137
  %mul261.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.20.vec.extract2590, !dbg !246
  %mul264.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.24.vec.extract2627, !dbg !247
  %mul267.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.28.vec.extract2664, !dbg !248
  %numerator.sroa.98.16.vec.insert2555 = insertelement <4 x float> poison, float %mul258.1.3, i64 0, !dbg !138
  %numerator.sroa.98.20.vec.insert2592 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2555, float %mul261.1.3, i64 1, !dbg !138
  %numerator.sroa.98.24.vec.insert2629 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2592, float %mul264.1.3, i64 2, !dbg !138
  %numerator.sroa.98.28.vec.insert2666 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2629, float %mul267.1.3, i64 3, !dbg !138
  %numerator.sroa.194.32.vec.extract2709 = extractelement <4 x float> %numerator.sroa.194.2, i64 0, !dbg !245
  %numerator.sroa.194.36.vec.extract2746 = extractelement <4 x float> %numerator.sroa.194.2, i64 1, !dbg !245
  %numerator.sroa.194.40.vec.extract2783 = extractelement <4 x float> %numerator.sroa.194.2, i64 2, !dbg !245
  %numerator.sroa.194.44.vec.extract2820 = extractelement <4 x float> %numerator.sroa.194.2, i64 3, !dbg !245
  %mul258.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.32.vec.extract2709, !dbg !137
  %mul261.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.36.vec.extract2746, !dbg !246
  %mul264.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.40.vec.extract2783, !dbg !247
  %mul267.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.44.vec.extract2820, !dbg !248
  %numerator.sroa.194.32.vec.insert2711 = insertelement <4 x float> poison, float %mul258.2.3, i64 0, !dbg !138
  %numerator.sroa.194.36.vec.insert2748 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2711, float %mul261.2.3, i64 1, !dbg !138
  %numerator.sroa.194.40.vec.insert2785 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2748, float %mul264.2.3, i64 2, !dbg !138
  %numerator.sroa.194.44.vec.insert2822 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2785, float %mul267.2.3, i64 3, !dbg !138
  %numerator.sroa.290.48.vec.extract2865 = extractelement <4 x float> %numerator.sroa.290.2, i64 0, !dbg !245
  %numerator.sroa.290.52.vec.extract2902 = extractelement <4 x float> %numerator.sroa.290.2, i64 1, !dbg !245
  %numerator.sroa.290.56.vec.extract2939 = extractelement <4 x float> %numerator.sroa.290.2, i64 2, !dbg !245
  %numerator.sroa.290.60.vec.extract2976 = extractelement <4 x float> %numerator.sroa.290.2, i64 3, !dbg !245
  %mul258.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.48.vec.extract2865, !dbg !137
  %mul261.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.52.vec.extract2902, !dbg !246
  %mul264.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.56.vec.extract2939, !dbg !247
  %mul267.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.60.vec.extract2976, !dbg !248
  %numerator.sroa.290.48.vec.insert2867 = insertelement <4 x float> poison, float %mul258.3.3, i64 0, !dbg !138
  %numerator.sroa.290.52.vec.insert2904 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2867, float %mul261.3.3, i64 1, !dbg !138
  %numerator.sroa.290.56.vec.insert2941 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2904, float %mul264.3.3, i64 2, !dbg !138
  %numerator.sroa.290.60.vec.insert2978 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2941, float %mul267.3.3, i64 3, !dbg !138
  %sub291.3 = fsub contract float %spec.select3035, %299, !dbg !139
  %sub295.3 = fsub contract float %condval_1.0.1.3, %299, !dbg !140
  %sub299.3 = fsub contract float %condval_1.0.2.3, %299, !dbg !141
  %sub303.3 = fsub contract float %condval_1.0.3.3, %299, !dbg !142
  %mul308.3 = fmul contract float %sub291.3, 0x3FC7154760000000, !dbg !143
  %mul312.3 = fmul contract float %sub295.3, 0x3FC7154760000000, !dbg !144
  %mul316.3 = fmul contract float %sub299.3, 0x3FC7154760000000, !dbg !145
  %mul320.3 = fmul contract float %sub303.3, 0x3FC7154760000000, !dbg !146
  %add325.3 = fadd contract float %mul308.3, 8.000000e+00, !dbg !147
  %add329.3 = fadd contract float %mul312.3, 8.000000e+00, !dbg !148
  %add333.3 = fadd contract float %mul316.3, 8.000000e+00, !dbg !149
  %add337.3 = fadd contract float %mul320.3, 8.000000e+00, !dbg !150
  %cmp.i.i793.3 = fcmp contract olt float %add325.3, -1.260000e+02, !dbg !151
  %cond.i.i794.3 = select contract i1 %cmp.i.i793.3, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i795.3 = fadd contract float %add325.3, %cond.i.i794.3, !dbg !151
  %301 = tail call contract float @llvm.exp2.f32(float %add.i.i795.3), !dbg !151
  %cond2.i.i796.3 = select contract i1 %cmp.i.i793.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i797.3 = fmul contract float %cond2.i.i796.3, %301, !dbg !151
  %cmp.i.i798.3 = fcmp contract olt float %add329.3, -1.260000e+02, !dbg !153
  %cond.i.i799.3 = select contract i1 %cmp.i.i798.3, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i800.3 = fadd contract float %add329.3, %cond.i.i799.3, !dbg !153
  %302 = tail call contract float @llvm.exp2.f32(float %add.i.i800.3), !dbg !153
  %cond2.i.i801.3 = select contract i1 %cmp.i.i798.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i802.3 = fmul contract float %cond2.i.i801.3, %302, !dbg !153
  %cmp.i.i803.3 = fcmp contract olt float %add333.3, -1.260000e+02, !dbg !155
  %cond.i.i804.3 = select contract i1 %cmp.i.i803.3, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i805.3 = fadd contract float %add333.3, %cond.i.i804.3, !dbg !155
  %303 = tail call contract float @llvm.exp2.f32(float %add.i.i805.3), !dbg !155
  %cond2.i.i806.3 = select contract i1 %cmp.i.i803.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i807.3 = fmul contract float %cond2.i.i806.3, %303, !dbg !155
  %cmp.i.i808.3 = fcmp contract olt float %add337.3, -1.260000e+02, !dbg !157
  %cond.i.i809.3 = select contract i1 %cmp.i.i808.3, float 6.400000e+01, float 0.000000e+00, !dbg !157
  %add.i.i810.3 = fadd contract float %add337.3, %cond.i.i809.3, !dbg !157
  %304 = tail call contract float @llvm.exp2.f32(float %add.i.i810.3), !dbg !157
  %cond2.i.i811.3 = select contract i1 %cmp.i.i808.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !157
  %mul.i.i812.3 = fmul contract float %cond2.i.i811.3, %304, !dbg !157
  %305 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !159
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !159, !noalias !167
  %306 = fptrunc float %mul.i.i797.3 to half, !dbg !159
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %305), !dbg !159, !noalias !167
  %307 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !167
  %308 = fptrunc float %mul.i.i802.3 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %307), !dbg !172, !noalias !167
  %309 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !174, !noalias !178
  %310 = fptrunc float %mul.i.i807.3 to half, !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %309), !dbg !174, !noalias !178
  %311 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !183, !noalias !178
  %312 = fptrunc float %mul.i.i812.3 to half, !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %311), !dbg !183, !noalias !178
  %313 = insertelement <4 x half> poison, half %306, i64 0, !dbg !185
  %314 = insertelement <4 x half> %313, half %308, i64 1, !dbg !185
  %315 = insertelement <4 x half> %314, half %310, i64 2, !dbg !185
  %316 = insertelement <4 x half> %315, half %312, i64 3, !dbg !185
  %conv.i.i.31034 = fpext half %306 to float, !dbg !186
  %add372.31035 = fadd contract float %conv.i.i.31034, 0.000000e+00, !dbg !191
  %conv.i.i.1.3 = fpext half %308 to float, !dbg !186
  %add372.1.3 = fadd contract float %add372.31035, %conv.i.i.1.3, !dbg !191
  %conv.i.i.2.3 = fpext half %310 to float, !dbg !186
  %add372.2.3 = fadd contract float %add372.1.3, %conv.i.i.2.3, !dbg !191
  %conv.i.i.3.3 = fpext half %312 to float, !dbg !186
  %add372.3.3 = fadd contract float %add372.2.3, %conv.i.i.3.3, !dbg !191
  %317 = bitcast float %add372.3.3 to i32, !dbg !192
  %318 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !194
  %319 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %318) #11, !dbg !197
  %xor.i.i818.3 = xor i32 %319, 32, !dbg !198
  %320 = and i32 %319, -64, !dbg !199
  %and.i.i819.3 = add nsw i32 %320, 64, !dbg !199
  %cmp.not.i.i820.3 = icmp slt i32 %xor.i.i818.3, %and.i.i819.3, !dbg !200
  %cond.i.i821.3 = select i1 %cmp.not.i.i820.3, i32 %xor.i.i818.3, i32 %319, !dbg !201
  %shl.i.i822.3 = shl i32 %cond.i.i821.3, 2, !dbg !202
  %321 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i822.3, i32 %317), !dbg !203
  %322 = bitcast i32 %321 to float, !dbg !204
  %add380.3 = fadd contract float %add372.3.3, %322, !dbg !205
  %323 = bitcast float %add380.3 to i32, !dbg !206
  %324 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !208
  %325 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %324) #11, !dbg !211
  %xor.i.i823.3 = xor i32 %325, 16, !dbg !212
  %326 = and i32 %325, -64, !dbg !213
  %and.i.i824.3 = add nsw i32 %326, 64, !dbg !213
  %cmp.not.i.i825.3 = icmp slt i32 %xor.i.i823.3, %and.i.i824.3, !dbg !214
  %cond.i.i826.3 = select i1 %cmp.not.i.i825.3, i32 %xor.i.i823.3, i32 %325, !dbg !215
  %shl.i.i827.3 = shl i32 %cond.i.i826.3, 2, !dbg !216
  %327 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i827.3, i32 %323), !dbg !217
  %328 = bitcast i32 %327 to float, !dbg !218
  %add385.3 = fadd contract float %add380.3, %328, !dbg !219
  fence syncscope("warp") release, !dbg !220
  tail call void @llvm.mxc.barrier.warp(), !dbg !223
  fence syncscope("warp") acquire, !dbg !224
  %shr398.3 = lshr exact i32 %mul81.3, 2
  %add399.3 = add nuw nsw i32 %shr398.3, %shr396
  %cmp400.3 = icmp ult i32 %add399.3, 256
  br i1 %cmp400.3, label %if.then401.31040, label %if.end435.31044, !dbg !225

if.then401.31040:                                 ; preds = %if.end.1.3
  %329 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %330 = getelementptr inbounds i8, ptr addrspace(4) %329, i64 %.idx.3, !dbg !226
  %condval_2.sroa.0.0.copyload.31037 = load i32, ptr addrspace(4) %330, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.31038 = getelementptr inbounds i8, ptr addrspace(4) %330, i64 4, !dbg !227
  %condval_2.sroa.5.0.copyload.31039 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.31038, align 4, !dbg !227, !tbaa !30
  br label %if.end435.31044, !dbg !228

if.end435.31044:                                  ; preds = %if.then401.31040, %if.end.1.3
  %condval_2.sroa.0.0.31041 = phi i32 [ %condval_2.sroa.0.0.copyload.31037, %if.then401.31040 ], [ 0, %if.end.1.3 ], !dbg !81
  %condval_2.sroa.5.0.31042 = phi i32 [ %condval_2.sroa.5.0.copyload.31039, %if.then401.31040 ], [ 0, %if.end.1.3 ], !dbg !81
  br i1 %cmp400.3, label %if.then401.1.3, label %if.end435.1.3, !dbg !225

if.then401.1.3:                                   ; preds = %if.end435.31044
  %331 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %332 = getelementptr inbounds i8, ptr addrspace(4) %331, i64 %.idx.3, !dbg !226
  %add.ptr421.1.3 = getelementptr inbounds i8, ptr addrspace(4) %332, i64 128, !dbg !226
  %condval_2.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %add.ptr421.1.3, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %332, i64 132, !dbg !227
  %condval_2.sroa.5.0.copyload.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.1.3, align 4, !dbg !227, !tbaa !30
  br label %if.end435.1.3, !dbg !228

if.end435.1.3:                                    ; preds = %if.then401.1.3, %if.end435.31044
  %condval_2.sroa.0.0.1.3 = phi i32 [ %condval_2.sroa.0.0.copyload.1.3, %if.then401.1.3 ], [ 0, %if.end435.31044 ], !dbg !81
  %condval_2.sroa.5.0.1.3 = phi i32 [ %condval_2.sroa.5.0.copyload.1.3, %if.then401.1.3 ], [ 0, %if.end435.31044 ], !dbg !81
  br i1 %cmp400.3, label %if.then401.2.3, label %if.end435.2.3, !dbg !225

if.then401.2.3:                                   ; preds = %if.end435.1.3
  %333 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %334 = getelementptr inbounds i8, ptr addrspace(4) %333, i64 %.idx.3, !dbg !226
  %add.ptr421.2.3 = getelementptr inbounds i8, ptr addrspace(4) %334, i64 256, !dbg !226
  %condval_2.sroa.0.0.copyload.2.3 = load i32, ptr addrspace(4) %add.ptr421.2.3, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.2.3 = getelementptr inbounds i8, ptr addrspace(4) %334, i64 260, !dbg !227
  %condval_2.sroa.5.0.copyload.2.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.2.3, align 4, !dbg !227, !tbaa !30
  br label %if.end435.2.3, !dbg !228

if.end435.2.3:                                    ; preds = %if.then401.2.3, %if.end435.1.3
  %condval_2.sroa.0.0.2.3 = phi i32 [ %condval_2.sroa.0.0.copyload.2.3, %if.then401.2.3 ], [ 0, %if.end435.1.3 ], !dbg !81
  %condval_2.sroa.5.0.2.3 = phi i32 [ %condval_2.sroa.5.0.copyload.2.3, %if.then401.2.3 ], [ 0, %if.end435.1.3 ], !dbg !81
  br i1 %cmp400.3, label %if.then401.3.3, label %if.end435.3.3, !dbg !225

if.then401.3.3:                                   ; preds = %if.end435.2.3
  %335 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %336 = getelementptr inbounds i8, ptr addrspace(4) %335, i64 %.idx.3, !dbg !226
  %add.ptr421.3.3 = getelementptr inbounds i8, ptr addrspace(4) %336, i64 384, !dbg !226
  %condval_2.sroa.0.0.copyload.3.3 = load i32, ptr addrspace(4) %add.ptr421.3.3, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.3.3 = getelementptr inbounds i8, ptr addrspace(4) %336, i64 388, !dbg !227
  %condval_2.sroa.5.0.copyload.3.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.3.3, align 4, !dbg !227, !tbaa !30
  br label %if.end435.3.3, !dbg !228

if.end435.3.3:                                    ; preds = %if.then401.3.3, %if.end435.2.3
  %condval_2.sroa.0.0.3.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3.3, %if.then401.3.3 ], [ 0, %if.end435.2.3 ], !dbg !81
  %condval_2.sroa.5.0.3.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3.3, %if.then401.3.3 ], [ 0, %if.end435.2.3 ], !dbg !81
  %mul278.3 = fmul contract float %denominator.sroa.0.1.2, %mul.i.i.3, !dbg !249
  %337 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul465, !dbg !229
  %add.ptr477.idx.31051 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.31052 = getelementptr inbounds i8, ptr addrspace(3) %337, i32 %add.ptr477.idx.31051, !dbg !229
  %338 = and i32 %condval_2.sroa.0.0.3.3, 65535, !dbg !230
  %v_column.sroa.130.0.insert.ext1550 = zext nneg i32 %338 to i64, !dbg !230
  %v_column.sroa.130.0.insert.shift1551 = shl nuw i64 %v_column.sroa.130.0.insert.ext1550, 48, !dbg !230
  %339 = and i32 %condval_2.sroa.0.0.2.3, 65535, !dbg !230
  %v_column.sroa.98.0.insert.ext1395 = zext nneg i32 %339 to i64, !dbg !230
  %v_column.sroa.98.0.insert.shift1396 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1395, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1398 = or disjoint i64 %v_column.sroa.130.0.insert.shift1551, %v_column.sroa.98.0.insert.shift1396, !dbg !230
  %340 = shl i32 %condval_2.sroa.0.0.1.3, 16, !dbg !230
  %v_column.sroa.66.0.insert.shift1241 = zext i32 %340 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1243 = or disjoint i64 %v_column.sroa.98.0.insert.insert1398, %v_column.sroa.66.0.insert.shift1241, !dbg !230
  %341 = and i32 %condval_2.sroa.0.0.31041, 65535, !dbg !230
  %v_column.sroa.0.0.insert.ext1105 = zext nneg i32 %341 to i64, !dbg !230
  %v_column.sroa.0.0.insert.insert1107 = or disjoint i64 %v_column.sroa.66.0.insert.insert1243, %v_column.sroa.0.0.insert.ext1105, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1107, ptr addrspace(3) %add.ptr477.31052, align 8, !dbg !230
  %v_fetch.sroa.0.2.extract.shift1730 = lshr i32 %condval_2.sroa.0.0.31041, 16, !dbg !231
  %v_fetch.sroa.0.2.extract.trunc1731 = zext nneg i32 %v_fetch.sroa.0.2.extract.shift1730 to i64, !dbg !231
  %v_fetch.sroa.50.10.extract.shift1800 = and i32 %condval_2.sroa.0.0.1.3, -65536, !dbg !230
  %v_fetch.sroa.98.18.extract.shift1870 = lshr i32 %condval_2.sroa.0.0.2.3, 16, !dbg !231
  %v_fetch.sroa.98.18.extract.trunc1871 = zext nneg i32 %v_fetch.sroa.98.18.extract.shift1870 to i64, !dbg !231
  %v_fetch.sroa.146.26.extract.shift1940 = lshr i32 %condval_2.sroa.0.0.3.3, 16, !dbg !231
  %v_fetch.sroa.146.26.extract.trunc1941 = zext nneg i32 %v_fetch.sroa.146.26.extract.shift1940 to i64, !dbg !231
  %add466.1.3 = or disjoint i32 %mul465, 256, !dbg !232
  %342 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.1.3, !dbg !229
  %xor473.1.3 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.1.3 = xor i32 %xor473.1.3, 8, !dbg !229
  %add.ptr477.1.3 = getelementptr inbounds i8, ptr addrspace(3) %342, i32 %add.ptr477.idx.1.3, !dbg !229
  %v_column.sroa.130.0.insert.shift1556 = shl nuw i64 %v_fetch.sroa.146.26.extract.trunc1941, 48, !dbg !230
  %v_column.sroa.98.0.insert.shift1401 = shl nuw nsw i64 %v_fetch.sroa.98.18.extract.trunc1871, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1403 = or disjoint i64 %v_column.sroa.130.0.insert.shift1556, %v_column.sroa.98.0.insert.shift1401, !dbg !230
  %v_column.sroa.66.0.insert.shift1246 = zext i32 %v_fetch.sroa.50.10.extract.shift1800 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1248 = or disjoint i64 %v_column.sroa.98.0.insert.insert1403, %v_column.sroa.66.0.insert.shift1246, !dbg !230
  %v_column.sroa.0.0.insert.insert1111 = or disjoint i64 %v_column.sroa.66.0.insert.insert1248, %v_fetch.sroa.0.2.extract.trunc1731, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1111, ptr addrspace(3) %add.ptr477.1.3, align 8, !dbg !230
  %add466.2.3 = or disjoint i32 %mul465, 512, !dbg !232
  %343 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.2.3, !dbg !229
  %xor473.2.3 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.2.3 = xor i32 %xor473.2.3, 16, !dbg !229
  %add.ptr477.2.3 = getelementptr inbounds i8, ptr addrspace(3) %343, i32 %add.ptr477.idx.2.3, !dbg !229
  %344 = and i32 %condval_2.sroa.5.0.3.3, 65535, !dbg !230
  %v_column.sroa.130.0.insert.ext1560 = zext nneg i32 %344 to i64, !dbg !230
  %v_column.sroa.130.0.insert.shift1561 = shl nuw i64 %v_column.sroa.130.0.insert.ext1560, 48, !dbg !230
  %345 = and i32 %condval_2.sroa.5.0.2.3, 65535, !dbg !230
  %v_column.sroa.98.0.insert.ext1405 = zext nneg i32 %345 to i64, !dbg !230
  %v_column.sroa.98.0.insert.shift1406 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1405, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1408 = or disjoint i64 %v_column.sroa.130.0.insert.shift1561, %v_column.sroa.98.0.insert.shift1406, !dbg !230
  %346 = shl i32 %condval_2.sroa.5.0.1.3, 16, !dbg !230
  %v_column.sroa.66.0.insert.shift1251 = zext i32 %346 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1253 = or disjoint i64 %v_column.sroa.98.0.insert.insert1408, %v_column.sroa.66.0.insert.shift1251, !dbg !230
  %347 = and i32 %condval_2.sroa.5.0.31042, 65535, !dbg !230
  %v_column.sroa.0.0.insert.ext1113 = zext nneg i32 %347 to i64, !dbg !230
  %v_column.sroa.0.0.insert.insert1115 = or disjoint i64 %v_column.sroa.66.0.insert.insert1253, %v_column.sroa.0.0.insert.ext1113, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1115, ptr addrspace(3) %add.ptr477.2.3, align 8, !dbg !230
  %v_fetch.sroa.26.6.extract.shift1765 = lshr i32 %condval_2.sroa.5.0.31042, 16, !dbg !231
  %v_fetch.sroa.26.6.extract.trunc1766 = zext nneg i32 %v_fetch.sroa.26.6.extract.shift1765 to i64, !dbg !231
  %v_fetch.sroa.74.14.extract.shift1835 = and i32 %condval_2.sroa.5.0.1.3, -65536, !dbg !230
  %v_fetch.sroa.122.22.extract.shift1905 = lshr i32 %condval_2.sroa.5.0.2.3, 16, !dbg !231
  %v_fetch.sroa.122.22.extract.trunc1906 = zext nneg i32 %v_fetch.sroa.122.22.extract.shift1905 to i64, !dbg !231
  %v_fetch.sroa.170.30.extract.shift1975 = lshr i32 %condval_2.sroa.5.0.3.3, 16, !dbg !231
  %v_fetch.sroa.170.30.extract.trunc1976 = zext nneg i32 %v_fetch.sroa.170.30.extract.shift1975 to i64, !dbg !231
  %add466.3.3 = or disjoint i32 %mul465, 768, !dbg !232
  %348 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.3.3, !dbg !229
  %xor473.3.3 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.3.3 = xor i32 %xor473.3.3, 24, !dbg !229
  %add.ptr477.3.3 = getelementptr inbounds i8, ptr addrspace(3) %348, i32 %add.ptr477.idx.3.3, !dbg !229
  %v_column.sroa.130.0.insert.shift1566 = shl nuw i64 %v_fetch.sroa.170.30.extract.trunc1976, 48, !dbg !230
  %v_column.sroa.98.0.insert.shift1411 = shl nuw nsw i64 %v_fetch.sroa.122.22.extract.trunc1906, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1413 = or disjoint i64 %v_column.sroa.130.0.insert.shift1566, %v_column.sroa.98.0.insert.shift1411, !dbg !230
  %v_column.sroa.66.0.insert.shift1256 = zext i32 %v_fetch.sroa.74.14.extract.shift1835 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1258 = or disjoint i64 %v_column.sroa.98.0.insert.insert1413, %v_column.sroa.66.0.insert.shift1256, !dbg !230
  %v_column.sroa.0.0.insert.insert1119 = or disjoint i64 %v_column.sroa.66.0.insert.insert1258, %v_fetch.sroa.26.6.extract.trunc1766, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1119, ptr addrspace(3) %add.ptr477.3.3, align 8, !dbg !230
  fence syncscope("warp") release, !dbg !233
  tail call void @llvm.mxc.barrier.warp(), !dbg !236
  fence syncscope("warp") acquire, !dbg !237
  %add494.31054 = or disjoint i32 %mul487, %mul493, !dbg !238
  %349 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.31054, !dbg !239
  %add.ptr504.idx.31055 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.31056 = getelementptr inbounds i8, ptr addrspace(3) %349, i32 %add.ptr504.idx.31055, !dbg !239
  %350 = load <4 x half>, ptr addrspace(3) %add.ptr504.31056, align 8, !dbg !240
  %add489.1.3 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.1.3 = or disjoint i32 %add489.1.3, 64, !dbg !238
  %351 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.1.3, !dbg !239
  %xor500.1.3 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.1.3 = xor i32 %xor500.1.3, 8, !dbg !239
  %add.ptr504.1.3 = getelementptr inbounds i8, ptr addrspace(3) %351, i32 %add.ptr504.idx.1.3, !dbg !239
  %352 = load <4 x half>, ptr addrspace(3) %add.ptr504.1.3, align 8, !dbg !240
  %add489.2.3 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.2.3 = or disjoint i32 %add489.2.3, 128, !dbg !238
  %353 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.2.3, !dbg !239
  %xor500.2.3 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.2.3 = xor i32 %xor500.2.3, 16, !dbg !239
  %add.ptr504.2.3 = getelementptr inbounds i8, ptr addrspace(3) %353, i32 %add.ptr504.idx.2.3, !dbg !239
  %354 = load <4 x half>, ptr addrspace(3) %add.ptr504.2.3, align 8, !dbg !240
  %add489.3.3 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.3.3 = or disjoint i32 %add489.3.3, 192, !dbg !238
  %355 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.3.3, !dbg !239
  %xor500.3.3 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.3.3 = xor i32 %xor500.3.3, 24, !dbg !239
  %add.ptr504.3.3 = getelementptr inbounds i8, ptr addrspace(3) %355, i32 %add.ptr504.idx.3.3, !dbg !239
  %356 = load <4 x half>, ptr addrspace(3) %add.ptr504.3.3, align 8, !dbg !240
  %357 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %350, <4 x half> %316, <4 x float> %numerator.sroa.0.12.vec.insert2510), !dbg !241
  %358 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %352, <4 x half> %316, <4 x float> %numerator.sroa.98.28.vec.insert2666), !dbg !241
  %359 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %354, <4 x half> %316, <4 x float> %numerator.sroa.194.44.vec.insert2822), !dbg !241
  %360 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %356, <4 x half> %316, <4 x float> %numerator.sroa.290.60.vec.insert2978), !dbg !241
  %add389.3 = fadd contract float %mul278.3, %add385.3, !dbg !242
  br label %if.end530.3, !dbg !243

if.end530.3:                                      ; preds = %if.end435.3.3, %if.end530.2
  %numerator.sroa.290.3 = phi <4 x float> [ %numerator.sroa.290.2, %if.end530.2 ], [ %360, %if.end435.3.3 ], !dbg !81
  %numerator.sroa.194.3 = phi <4 x float> [ %numerator.sroa.194.2, %if.end530.2 ], [ %359, %if.end435.3.3 ], !dbg !81
  %numerator.sroa.98.3 = phi <4 x float> [ %numerator.sroa.98.2, %if.end530.2 ], [ %358, %if.end435.3.3 ], !dbg !81
  %numerator.sroa.0.3 = phi <4 x float> [ %numerator.sroa.0.2, %if.end530.2 ], [ %357, %if.end435.3.3 ], !dbg !81
  %maximum.sroa.0.1.3 = phi float [ %maximum.sroa.0.1.2, %if.end530.2 ], [ %299, %if.end435.3.3 ], !dbg !81
  %denominator.sroa.0.1.3 = phi float [ %denominator.sroa.0.1.2, %if.end530.2 ], [ %add389.3, %if.end435.3.3 ], !dbg !81
  %361 = or disjoint i64 %17, 4, !dbg !244
  %arrayidx80.4 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %361, !dbg !67
  %362 = load i32, ptr addrspace(1) %arrayidx80.4, align 4, !dbg !67, !tbaa !30
  %mul81.4 = shl nsw i32 %362, 4, !dbg !68
  %cmp82.4 = icmp slt i32 %362, 0, !dbg !69
  %cmp84.not.4 = icmp sgt i32 %mul81.4, %1
  %or.cond.4 = select i1 %cmp82.4, i1 true, i1 %cmp84.not.4, !dbg !70
  br i1 %or.cond.4, label %if.end530.4, label %if.then.4, !dbg !70

if.then.4:                                        ; preds = %if.end530.3
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %add91.4 = add nuw nsw i32 %mul81.4, %shr90
  %conv101.4 = zext nneg i32 %mul81.4 to i64
  %.idx.4 = shl nuw nsw i64 %conv101.4, 7
  %gep.4 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep881, i64 %.idx.4, !dbg !76
  %cmp94.4 = icmp ult i32 %add91.4, 1024, !dbg !77
  br i1 %cmp94.4, label %if.then95.4, label %if.end.4, !dbg !78

if.then95.4:                                      ; preds = %if.then.4
  %gep865.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.4, i64 %mul97
  %condval.sroa.7.0.add.ptr108.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep865.4, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep865.4, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep865.4, i64 4
  %condval.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %gep865.4, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.4, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.4, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.4, align 4, !dbg !79, !tbaa !30
  br label %if.end.4, !dbg !80

if.end.4:                                         ; preds = %if.then95.4, %if.then.4
  %condval.sroa.0.0.4 = phi i32 [ %condval.sroa.0.0.copyload.4, %if.then95.4 ], [ 0, %if.then.4 ], !dbg !81
  %condval.sroa.5.0.4 = phi i32 [ %condval.sroa.5.0.copyload.4, %if.then95.4 ], [ 0, %if.then.4 ], !dbg !81
  %condval.sroa.6.0.4 = phi i32 [ %condval.sroa.6.0.copyload.4, %if.then95.4 ], [ 0, %if.then.4 ], !dbg !81
  %condval.sroa.7.0.4 = phi i32 [ %condval.sroa.7.0.copyload.4, %if.then95.4 ], [ 0, %if.then.4 ], !dbg !81
  store i32 %condval.sroa.0.0.4, ptr addrspace(3) %invariant.gep854, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 4, !dbg !82
  store i32 %condval.sroa.5.0.4, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.4, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 8, !dbg !82
  store i32 %condval.sroa.6.0.4, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.4, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 12, !dbg !82
  store i32 %condval.sroa.7.0.4, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.4, align 4, !dbg !82, !tbaa !30
  %cmp94.1.4 = icmp ult i32 %add91.4, 1016, !dbg !77
  br i1 %cmp94.1.4, label %if.then95.1.4, label %if.end.1.4, !dbg !78

if.then95.1.4:                                    ; preds = %if.end.4
  %add100.1.4 = or disjoint i64 %mul97, 512
  %gep865.1.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.4, i64 %add100.1.4
  %condval.sroa.7.0.add.ptr108.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1.4, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1.4, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1.4, i64 4
  %condval.sroa.0.0.copyload.1.4 = load i32, ptr addrspace(4) %gep865.1.4, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.1.4 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.1.4, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.1.4 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.1.4, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.1.4 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.1.4, align 4, !dbg !79, !tbaa !30
  br label %if.end.1.4, !dbg !80

if.end.1.4:                                       ; preds = %if.then95.1.4, %if.end.4
  %condval.sroa.0.0.1.4 = phi i32 [ %condval.sroa.0.0.copyload.1.4, %if.then95.1.4 ], [ 0, %if.end.4 ], !dbg !81
  %condval.sroa.5.0.1.4 = phi i32 [ %condval.sroa.5.0.copyload.1.4, %if.then95.1.4 ], [ 0, %if.end.4 ], !dbg !81
  %condval.sroa.6.0.1.4 = phi i32 [ %condval.sroa.6.0.copyload.1.4, %if.then95.1.4 ], [ 0, %if.end.4 ], !dbg !81
  %condval.sroa.7.0.1.4 = phi i32 [ %condval.sroa.7.0.copyload.1.4, %if.then95.1.4 ], [ 0, %if.end.4 ], !dbg !81
  store i32 %condval.sroa.0.0.1.4, ptr addrspace(3) %gep855.1, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1028, !dbg !82
  store i32 %condval.sroa.5.0.1.4, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.1.4, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1032, !dbg !82
  store i32 %condval.sroa.6.0.1.4, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.1.4, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1036, !dbg !82
  store i32 %condval.sroa.7.0.1.4, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.1.4, align 4, !dbg !82, !tbaa !30
  fence syncscope("warp") release, !dbg !83
  tail call void @llvm.mxc.barrier.warp(), !dbg !86
  fence syncscope("warp") acquire, !dbg !87
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !88
  %363 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %6, <4 x float> zeroinitializer), !dbg !89
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !88
  %364 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %7, <4 x float> %363), !dbg !89
  %k_local.sroa.0.0.copyload.2.4 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !88
  %365 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.4, <4 x half> %8, <4 x float> %364), !dbg !89
  %k_local.sroa.0.0.copyload.3.4 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !88
  %366 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.4, <4 x half> %9, <4 x float> %365), !dbg !89
  %add194.4 = add nuw nsw i32 %mul81.4, %mul193
  %cmp197.not.4 = icmp sgt i32 %add194.4, %1, !dbg !90
  %scores.sroa.0.0.vec.extract2109 = extractelement <4 x float> %366, i64 0
  %spec.select3036 = select i1 %cmp197.not.4, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2109, !dbg !91
  %cmp197.not.1.4.not = icmp slt i32 %add194.4, %1, !dbg !90
  %scores.sroa.0.4.vec.extract2200 = extractelement <4 x float> %366, i64 1, !dbg !91
  %condval_1.0.1.4 = select i1 %cmp197.not.1.4.not, float %scores.sroa.0.4.vec.extract2200, float 0xFFF0000000000000, !dbg !91
  %add195.2.4 = or disjoint i32 %add194.4, 2, !dbg !92
  %cmp197.not.2.4 = icmp sgt i32 %add195.2.4, %1, !dbg !90
  %scores.sroa.0.8.vec.extract2277 = extractelement <4 x float> %366, i64 2, !dbg !91
  %condval_1.0.2.4 = select i1 %cmp197.not.2.4, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2277, !dbg !91
  %add195.3.4 = or disjoint i32 %add194.4, 3, !dbg !92
  %cmp197.not.3.4 = icmp sgt i32 %add195.3.4, %1, !dbg !90
  %scores.sroa.0.12.vec.extract2354 = extractelement <4 x float> %366, i64 3, !dbg !91
  %condval_1.0.3.4 = select i1 %cmp197.not.3.4, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2354, !dbg !91
  %367 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3036, float 0xFFF0000000000000), !dbg !93
  %368 = tail call contract noundef float @llvm.maxnum.f32(float %367, float %condval_1.0.1.4), !dbg !93
  %369 = tail call contract noundef float @llvm.maxnum.f32(float %368, float %condval_1.0.2.4), !dbg !93
  %370 = tail call contract noundef float @llvm.maxnum.f32(float %369, float %condval_1.0.3.4), !dbg !93
  %371 = bitcast float %370 to i32, !dbg !97
  %372 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %373 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %372) #11, !dbg !105
  %xor.i.i.4 = xor i32 %373, 32, !dbg !106
  %374 = and i32 %373, -64, !dbg !107
  %and.i.i.4 = add nsw i32 %374, 64, !dbg !107
  %cmp.not.i.i.4 = icmp slt i32 %xor.i.i.4, %and.i.i.4, !dbg !108
  %cond.i.i.4 = select i1 %cmp.not.i.i.4, i32 %xor.i.i.4, i32 %373, !dbg !109
  %shl.i.i.4 = shl i32 %cond.i.i.4, 2, !dbg !110
  %375 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.4, i32 %371), !dbg !111
  %376 = bitcast i32 %375 to float, !dbg !112
  %377 = tail call contract noundef float @llvm.maxnum.f32(float %370, float %376), !dbg !113
  %378 = bitcast float %377 to i32, !dbg !115
  %379 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !117
  %380 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %379) #11, !dbg !120
  %xor.i.i783.4 = xor i32 %380, 16, !dbg !121
  %381 = and i32 %380, -64, !dbg !122
  %and.i.i784.4 = add nsw i32 %381, 64, !dbg !122
  %cmp.not.i.i785.4 = icmp slt i32 %xor.i.i783.4, %and.i.i784.4, !dbg !123
  %cond.i.i786.4 = select i1 %cmp.not.i.i785.4, i32 %xor.i.i783.4, i32 %380, !dbg !124
  %shl.i.i787.4 = shl i32 %cond.i.i786.4, 2, !dbg !125
  %382 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i787.4, i32 %378), !dbg !126
  %383 = bitcast i32 %382 to float, !dbg !127
  %384 = tail call contract noundef float @llvm.maxnum.f32(float %377, float %383), !dbg !128
  %385 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.3, float %384), !dbg !130
  %sub.4 = fsub contract float %maximum.sroa.0.1.3, %385, !dbg !132
  %mul241.4 = fmul contract float %sub.4, 0x3FC7154760000000, !dbg !133
  %cmp.i.i.4 = fcmp contract olt float %mul241.4, -1.260000e+02, !dbg !134
  %cond.i.i788.4 = select contract i1 %cmp.i.i.4, float 6.400000e+01, float 0.000000e+00, !dbg !134
  %add.i.i.4 = fadd contract float %mul241.4, %cond.i.i788.4, !dbg !134
  %386 = tail call contract float @llvm.exp2.f32(float %add.i.i.4), !dbg !134
  %cond2.i.i.4 = select contract i1 %cmp.i.i.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !134
  %mul.i.i.4 = fmul contract float %cond2.i.i.4, %386, !dbg !134
  %numerator.sroa.0.0.vec.extract2401 = extractelement <4 x float> %numerator.sroa.0.3, i64 0, !dbg !245
  %numerator.sroa.0.4.vec.extract2438 = extractelement <4 x float> %numerator.sroa.0.3, i64 1, !dbg !245
  %numerator.sroa.0.8.vec.extract2475 = extractelement <4 x float> %numerator.sroa.0.3, i64 2, !dbg !245
  %numerator.sroa.0.12.vec.extract2512 = extractelement <4 x float> %numerator.sroa.0.3, i64 3, !dbg !245
  %mul258.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.0.vec.extract2401, !dbg !137
  %mul261.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.4.vec.extract2438, !dbg !246
  %mul264.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.8.vec.extract2475, !dbg !247
  %mul267.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.12.vec.extract2512, !dbg !248
  %numerator.sroa.0.0.vec.insert2403 = insertelement <4 x float> poison, float %mul258.4, i64 0, !dbg !138
  %numerator.sroa.0.4.vec.insert2440 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2403, float %mul261.4, i64 1, !dbg !138
  %numerator.sroa.0.8.vec.insert2477 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2440, float %mul264.4, i64 2, !dbg !138
  %numerator.sroa.0.12.vec.insert2514 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2477, float %mul267.4, i64 3, !dbg !138
  %numerator.sroa.98.16.vec.extract2557 = extractelement <4 x float> %numerator.sroa.98.3, i64 0, !dbg !245
  %numerator.sroa.98.20.vec.extract2594 = extractelement <4 x float> %numerator.sroa.98.3, i64 1, !dbg !245
  %numerator.sroa.98.24.vec.extract2631 = extractelement <4 x float> %numerator.sroa.98.3, i64 2, !dbg !245
  %numerator.sroa.98.28.vec.extract2668 = extractelement <4 x float> %numerator.sroa.98.3, i64 3, !dbg !245
  %mul258.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.16.vec.extract2557, !dbg !137
  %mul261.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.20.vec.extract2594, !dbg !246
  %mul264.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.24.vec.extract2631, !dbg !247
  %mul267.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.28.vec.extract2668, !dbg !248
  %numerator.sroa.98.16.vec.insert2559 = insertelement <4 x float> poison, float %mul258.1.4, i64 0, !dbg !138
  %numerator.sroa.98.20.vec.insert2596 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2559, float %mul261.1.4, i64 1, !dbg !138
  %numerator.sroa.98.24.vec.insert2633 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2596, float %mul264.1.4, i64 2, !dbg !138
  %numerator.sroa.98.28.vec.insert2670 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2633, float %mul267.1.4, i64 3, !dbg !138
  %numerator.sroa.194.32.vec.extract2713 = extractelement <4 x float> %numerator.sroa.194.3, i64 0, !dbg !245
  %numerator.sroa.194.36.vec.extract2750 = extractelement <4 x float> %numerator.sroa.194.3, i64 1, !dbg !245
  %numerator.sroa.194.40.vec.extract2787 = extractelement <4 x float> %numerator.sroa.194.3, i64 2, !dbg !245
  %numerator.sroa.194.44.vec.extract2824 = extractelement <4 x float> %numerator.sroa.194.3, i64 3, !dbg !245
  %mul258.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.32.vec.extract2713, !dbg !137
  %mul261.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.36.vec.extract2750, !dbg !246
  %mul264.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.40.vec.extract2787, !dbg !247
  %mul267.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.44.vec.extract2824, !dbg !248
  %numerator.sroa.194.32.vec.insert2715 = insertelement <4 x float> poison, float %mul258.2.4, i64 0, !dbg !138
  %numerator.sroa.194.36.vec.insert2752 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2715, float %mul261.2.4, i64 1, !dbg !138
  %numerator.sroa.194.40.vec.insert2789 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2752, float %mul264.2.4, i64 2, !dbg !138
  %numerator.sroa.194.44.vec.insert2826 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2789, float %mul267.2.4, i64 3, !dbg !138
  %numerator.sroa.290.48.vec.extract2869 = extractelement <4 x float> %numerator.sroa.290.3, i64 0, !dbg !245
  %numerator.sroa.290.52.vec.extract2906 = extractelement <4 x float> %numerator.sroa.290.3, i64 1, !dbg !245
  %numerator.sroa.290.56.vec.extract2943 = extractelement <4 x float> %numerator.sroa.290.3, i64 2, !dbg !245
  %numerator.sroa.290.60.vec.extract2980 = extractelement <4 x float> %numerator.sroa.290.3, i64 3, !dbg !245
  %mul258.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.48.vec.extract2869, !dbg !137
  %mul261.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.52.vec.extract2906, !dbg !246
  %mul264.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.56.vec.extract2943, !dbg !247
  %mul267.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.60.vec.extract2980, !dbg !248
  %numerator.sroa.290.48.vec.insert2871 = insertelement <4 x float> poison, float %mul258.3.4, i64 0, !dbg !138
  %numerator.sroa.290.52.vec.insert2908 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2871, float %mul261.3.4, i64 1, !dbg !138
  %numerator.sroa.290.56.vec.insert2945 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2908, float %mul264.3.4, i64 2, !dbg !138
  %numerator.sroa.290.60.vec.insert2982 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2945, float %mul267.3.4, i64 3, !dbg !138
  %sub291.4 = fsub contract float %spec.select3036, %385, !dbg !139
  %sub295.4 = fsub contract float %condval_1.0.1.4, %385, !dbg !140
  %sub299.4 = fsub contract float %condval_1.0.2.4, %385, !dbg !141
  %sub303.4 = fsub contract float %condval_1.0.3.4, %385, !dbg !142
  %mul308.4 = fmul contract float %sub291.4, 0x3FC7154760000000, !dbg !143
  %mul312.4 = fmul contract float %sub295.4, 0x3FC7154760000000, !dbg !144
  %mul316.4 = fmul contract float %sub299.4, 0x3FC7154760000000, !dbg !145
  %mul320.4 = fmul contract float %sub303.4, 0x3FC7154760000000, !dbg !146
  %add325.4 = fadd contract float %mul308.4, 8.000000e+00, !dbg !147
  %add329.4 = fadd contract float %mul312.4, 8.000000e+00, !dbg !148
  %add333.4 = fadd contract float %mul316.4, 8.000000e+00, !dbg !149
  %add337.4 = fadd contract float %mul320.4, 8.000000e+00, !dbg !150
  %cmp.i.i793.4 = fcmp contract olt float %add325.4, -1.260000e+02, !dbg !151
  %cond.i.i794.4 = select contract i1 %cmp.i.i793.4, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i795.4 = fadd contract float %add325.4, %cond.i.i794.4, !dbg !151
  %387 = tail call contract float @llvm.exp2.f32(float %add.i.i795.4), !dbg !151
  %cond2.i.i796.4 = select contract i1 %cmp.i.i793.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i797.4 = fmul contract float %cond2.i.i796.4, %387, !dbg !151
  %cmp.i.i798.4 = fcmp contract olt float %add329.4, -1.260000e+02, !dbg !153
  %cond.i.i799.4 = select contract i1 %cmp.i.i798.4, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i800.4 = fadd contract float %add329.4, %cond.i.i799.4, !dbg !153
  %388 = tail call contract float @llvm.exp2.f32(float %add.i.i800.4), !dbg !153
  %cond2.i.i801.4 = select contract i1 %cmp.i.i798.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i802.4 = fmul contract float %cond2.i.i801.4, %388, !dbg !153
  %cmp.i.i803.4 = fcmp contract olt float %add333.4, -1.260000e+02, !dbg !155
  %cond.i.i804.4 = select contract i1 %cmp.i.i803.4, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i805.4 = fadd contract float %add333.4, %cond.i.i804.4, !dbg !155
  %389 = tail call contract float @llvm.exp2.f32(float %add.i.i805.4), !dbg !155
  %cond2.i.i806.4 = select contract i1 %cmp.i.i803.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i807.4 = fmul contract float %cond2.i.i806.4, %389, !dbg !155
  %cmp.i.i808.4 = fcmp contract olt float %add337.4, -1.260000e+02, !dbg !157
  %cond.i.i809.4 = select contract i1 %cmp.i.i808.4, float 6.400000e+01, float 0.000000e+00, !dbg !157
  %add.i.i810.4 = fadd contract float %add337.4, %cond.i.i809.4, !dbg !157
  %390 = tail call contract float @llvm.exp2.f32(float %add.i.i810.4), !dbg !157
  %cond2.i.i811.4 = select contract i1 %cmp.i.i808.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !157
  %mul.i.i812.4 = fmul contract float %cond2.i.i811.4, %390, !dbg !157
  %391 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !159
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !159, !noalias !167
  %392 = fptrunc float %mul.i.i797.4 to half, !dbg !159
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %391), !dbg !159, !noalias !167
  %393 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !167
  %394 = fptrunc float %mul.i.i802.4 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %393), !dbg !172, !noalias !167
  %395 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !174, !noalias !178
  %396 = fptrunc float %mul.i.i807.4 to half, !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %395), !dbg !174, !noalias !178
  %397 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !183, !noalias !178
  %398 = fptrunc float %mul.i.i812.4 to half, !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %397), !dbg !183, !noalias !178
  %399 = insertelement <4 x half> poison, half %392, i64 0, !dbg !185
  %400 = insertelement <4 x half> %399, half %394, i64 1, !dbg !185
  %401 = insertelement <4 x half> %400, half %396, i64 2, !dbg !185
  %402 = insertelement <4 x half> %401, half %398, i64 3, !dbg !185
  %conv.i.i.4 = fpext half %392 to float, !dbg !186
  %add372.4 = fadd contract float %conv.i.i.4, 0.000000e+00, !dbg !191
  %conv.i.i.1.4 = fpext half %394 to float, !dbg !186
  %add372.1.4 = fadd contract float %add372.4, %conv.i.i.1.4, !dbg !191
  %conv.i.i.2.4 = fpext half %396 to float, !dbg !186
  %add372.2.4 = fadd contract float %add372.1.4, %conv.i.i.2.4, !dbg !191
  %conv.i.i.3.4 = fpext half %398 to float, !dbg !186
  %add372.3.4 = fadd contract float %add372.2.4, %conv.i.i.3.4, !dbg !191
  %403 = bitcast float %add372.3.4 to i32, !dbg !192
  %404 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !194
  %405 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %404) #11, !dbg !197
  %xor.i.i818.4 = xor i32 %405, 32, !dbg !198
  %406 = and i32 %405, -64, !dbg !199
  %and.i.i819.4 = add nsw i32 %406, 64, !dbg !199
  %cmp.not.i.i820.4 = icmp slt i32 %xor.i.i818.4, %and.i.i819.4, !dbg !200
  %cond.i.i821.4 = select i1 %cmp.not.i.i820.4, i32 %xor.i.i818.4, i32 %405, !dbg !201
  %shl.i.i822.4 = shl i32 %cond.i.i821.4, 2, !dbg !202
  %407 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i822.4, i32 %403), !dbg !203
  %408 = bitcast i32 %407 to float, !dbg !204
  %add380.4 = fadd contract float %add372.3.4, %408, !dbg !205
  %409 = bitcast float %add380.4 to i32, !dbg !206
  %410 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !208
  %411 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %410) #11, !dbg !211
  %xor.i.i823.4 = xor i32 %411, 16, !dbg !212
  %412 = and i32 %411, -64, !dbg !213
  %and.i.i824.4 = add nsw i32 %412, 64, !dbg !213
  %cmp.not.i.i825.4 = icmp slt i32 %xor.i.i823.4, %and.i.i824.4, !dbg !214
  %cond.i.i826.4 = select i1 %cmp.not.i.i825.4, i32 %xor.i.i823.4, i32 %411, !dbg !215
  %shl.i.i827.4 = shl i32 %cond.i.i826.4, 2, !dbg !216
  %413 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i827.4, i32 %409), !dbg !217
  %414 = bitcast i32 %413 to float, !dbg !218
  %add385.4 = fadd contract float %add380.4, %414, !dbg !219
  fence syncscope("warp") release, !dbg !220
  tail call void @llvm.mxc.barrier.warp(), !dbg !223
  fence syncscope("warp") acquire, !dbg !224
  %shr398.4 = lshr exact i32 %mul81.4, 2
  %add399.4 = add nuw nsw i32 %shr398.4, %shr396
  %cmp400.4 = icmp ult i32 %add399.4, 256
  br i1 %cmp400.4, label %if.then401.4, label %if.end435.4, !dbg !225

if.then401.4:                                     ; preds = %if.end.1.4
  %415 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %416 = getelementptr inbounds i8, ptr addrspace(4) %415, i64 %.idx.4, !dbg !226
  %condval_2.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %416, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %416, i64 4, !dbg !227
  %condval_2.sroa.5.0.copyload.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.4, align 4, !dbg !227, !tbaa !30
  br label %if.end435.4, !dbg !228

if.end435.4:                                      ; preds = %if.then401.4, %if.end.1.4
  %condval_2.sroa.0.0.4 = phi i32 [ %condval_2.sroa.0.0.copyload.4, %if.then401.4 ], [ 0, %if.end.1.4 ], !dbg !81
  %condval_2.sroa.5.0.4 = phi i32 [ %condval_2.sroa.5.0.copyload.4, %if.then401.4 ], [ 0, %if.end.1.4 ], !dbg !81
  br i1 %cmp400.4, label %if.then401.1.4, label %if.end435.1.4, !dbg !225

if.then401.1.4:                                   ; preds = %if.end435.4
  %417 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %418 = getelementptr inbounds i8, ptr addrspace(4) %417, i64 %.idx.4, !dbg !226
  %add.ptr421.1.4 = getelementptr inbounds i8, ptr addrspace(4) %418, i64 128, !dbg !226
  %condval_2.sroa.0.0.copyload.1.4 = load i32, ptr addrspace(4) %add.ptr421.1.4, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %418, i64 132, !dbg !227
  %condval_2.sroa.5.0.copyload.1.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.1.4, align 4, !dbg !227, !tbaa !30
  br label %if.end435.1.4, !dbg !228

if.end435.1.4:                                    ; preds = %if.then401.1.4, %if.end435.4
  %condval_2.sroa.0.0.1.4 = phi i32 [ %condval_2.sroa.0.0.copyload.1.4, %if.then401.1.4 ], [ 0, %if.end435.4 ], !dbg !81
  %condval_2.sroa.5.0.1.4 = phi i32 [ %condval_2.sroa.5.0.copyload.1.4, %if.then401.1.4 ], [ 0, %if.end435.4 ], !dbg !81
  br i1 %cmp400.4, label %if.then401.2.4, label %if.end435.2.4, !dbg !225

if.then401.2.4:                                   ; preds = %if.end435.1.4
  %419 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %420 = getelementptr inbounds i8, ptr addrspace(4) %419, i64 %.idx.4, !dbg !226
  %add.ptr421.2.4 = getelementptr inbounds i8, ptr addrspace(4) %420, i64 256, !dbg !226
  %condval_2.sroa.0.0.copyload.2.4 = load i32, ptr addrspace(4) %add.ptr421.2.4, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.2.4 = getelementptr inbounds i8, ptr addrspace(4) %420, i64 260, !dbg !227
  %condval_2.sroa.5.0.copyload.2.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.2.4, align 4, !dbg !227, !tbaa !30
  br label %if.end435.2.4, !dbg !228

if.end435.2.4:                                    ; preds = %if.then401.2.4, %if.end435.1.4
  %condval_2.sroa.0.0.2.4 = phi i32 [ %condval_2.sroa.0.0.copyload.2.4, %if.then401.2.4 ], [ 0, %if.end435.1.4 ], !dbg !81
  %condval_2.sroa.5.0.2.4 = phi i32 [ %condval_2.sroa.5.0.copyload.2.4, %if.then401.2.4 ], [ 0, %if.end435.1.4 ], !dbg !81
  br i1 %cmp400.4, label %if.then401.3.4, label %if.end435.3.4, !dbg !225

if.then401.3.4:                                   ; preds = %if.end435.2.4
  %421 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %422 = getelementptr inbounds i8, ptr addrspace(4) %421, i64 %.idx.4, !dbg !226
  %add.ptr421.3.4 = getelementptr inbounds i8, ptr addrspace(4) %422, i64 384, !dbg !226
  %condval_2.sroa.0.0.copyload.3.4 = load i32, ptr addrspace(4) %add.ptr421.3.4, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.3.4 = getelementptr inbounds i8, ptr addrspace(4) %422, i64 388, !dbg !227
  %condval_2.sroa.5.0.copyload.3.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.3.4, align 4, !dbg !227, !tbaa !30
  br label %if.end435.3.4, !dbg !228

if.end435.3.4:                                    ; preds = %if.then401.3.4, %if.end435.2.4
  %condval_2.sroa.0.0.3.4 = phi i32 [ %condval_2.sroa.0.0.copyload.3.4, %if.then401.3.4 ], [ 0, %if.end435.2.4 ], !dbg !81
  %condval_2.sroa.5.0.3.4 = phi i32 [ %condval_2.sroa.5.0.copyload.3.4, %if.then401.3.4 ], [ 0, %if.end435.2.4 ], !dbg !81
  %mul278.4 = fmul contract float %denominator.sroa.0.1.3, %mul.i.i.4, !dbg !249
  %423 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul465, !dbg !229
  %add.ptr477.idx.4 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.4 = getelementptr inbounds i8, ptr addrspace(3) %423, i32 %add.ptr477.idx.4, !dbg !229
  %424 = and i32 %condval_2.sroa.0.0.3.4, 65535, !dbg !230
  %v_column.sroa.130.0.insert.ext1570 = zext nneg i32 %424 to i64, !dbg !230
  %v_column.sroa.130.0.insert.shift1571 = shl nuw i64 %v_column.sroa.130.0.insert.ext1570, 48, !dbg !230
  %425 = and i32 %condval_2.sroa.0.0.2.4, 65535, !dbg !230
  %v_column.sroa.98.0.insert.ext1415 = zext nneg i32 %425 to i64, !dbg !230
  %v_column.sroa.98.0.insert.shift1416 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1415, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1418 = or disjoint i64 %v_column.sroa.130.0.insert.shift1571, %v_column.sroa.98.0.insert.shift1416, !dbg !230
  %426 = shl i32 %condval_2.sroa.0.0.1.4, 16, !dbg !230
  %v_column.sroa.66.0.insert.shift1261 = zext i32 %426 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1263 = or disjoint i64 %v_column.sroa.98.0.insert.insert1418, %v_column.sroa.66.0.insert.shift1261, !dbg !230
  %427 = and i32 %condval_2.sroa.0.0.4, 65535, !dbg !230
  %v_column.sroa.0.0.insert.ext1121 = zext nneg i32 %427 to i64, !dbg !230
  %v_column.sroa.0.0.insert.insert1123 = or disjoint i64 %v_column.sroa.66.0.insert.insert1263, %v_column.sroa.0.0.insert.ext1121, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1123, ptr addrspace(3) %add.ptr477.4, align 8, !dbg !230
  %v_fetch.sroa.0.2.extract.shift1733 = lshr i32 %condval_2.sroa.0.0.4, 16, !dbg !231
  %v_fetch.sroa.0.2.extract.trunc1734 = zext nneg i32 %v_fetch.sroa.0.2.extract.shift1733 to i64, !dbg !231
  %v_fetch.sroa.50.10.extract.shift1803 = and i32 %condval_2.sroa.0.0.1.4, -65536, !dbg !230
  %v_fetch.sroa.98.18.extract.shift1873 = lshr i32 %condval_2.sroa.0.0.2.4, 16, !dbg !231
  %v_fetch.sroa.98.18.extract.trunc1874 = zext nneg i32 %v_fetch.sroa.98.18.extract.shift1873 to i64, !dbg !231
  %v_fetch.sroa.146.26.extract.shift1943 = lshr i32 %condval_2.sroa.0.0.3.4, 16, !dbg !231
  %v_fetch.sroa.146.26.extract.trunc1944 = zext nneg i32 %v_fetch.sroa.146.26.extract.shift1943 to i64, !dbg !231
  %add466.1.4 = or disjoint i32 %mul465, 256, !dbg !232
  %428 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.1.4, !dbg !229
  %xor473.1.4 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.1.4 = xor i32 %xor473.1.4, 8, !dbg !229
  %add.ptr477.1.4 = getelementptr inbounds i8, ptr addrspace(3) %428, i32 %add.ptr477.idx.1.4, !dbg !229
  %v_column.sroa.130.0.insert.shift1576 = shl nuw i64 %v_fetch.sroa.146.26.extract.trunc1944, 48, !dbg !230
  %v_column.sroa.98.0.insert.shift1421 = shl nuw nsw i64 %v_fetch.sroa.98.18.extract.trunc1874, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1423 = or disjoint i64 %v_column.sroa.130.0.insert.shift1576, %v_column.sroa.98.0.insert.shift1421, !dbg !230
  %v_column.sroa.66.0.insert.shift1266 = zext i32 %v_fetch.sroa.50.10.extract.shift1803 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1268 = or disjoint i64 %v_column.sroa.98.0.insert.insert1423, %v_column.sroa.66.0.insert.shift1266, !dbg !230
  %v_column.sroa.0.0.insert.insert1127 = or disjoint i64 %v_column.sroa.66.0.insert.insert1268, %v_fetch.sroa.0.2.extract.trunc1734, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1127, ptr addrspace(3) %add.ptr477.1.4, align 8, !dbg !230
  %add466.2.4 = or disjoint i32 %mul465, 512, !dbg !232
  %429 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.2.4, !dbg !229
  %xor473.2.4 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.2.4 = xor i32 %xor473.2.4, 16, !dbg !229
  %add.ptr477.2.4 = getelementptr inbounds i8, ptr addrspace(3) %429, i32 %add.ptr477.idx.2.4, !dbg !229
  %430 = and i32 %condval_2.sroa.5.0.3.4, 65535, !dbg !230
  %v_column.sroa.130.0.insert.ext1580 = zext nneg i32 %430 to i64, !dbg !230
  %v_column.sroa.130.0.insert.shift1581 = shl nuw i64 %v_column.sroa.130.0.insert.ext1580, 48, !dbg !230
  %431 = and i32 %condval_2.sroa.5.0.2.4, 65535, !dbg !230
  %v_column.sroa.98.0.insert.ext1425 = zext nneg i32 %431 to i64, !dbg !230
  %v_column.sroa.98.0.insert.shift1426 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1425, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1428 = or disjoint i64 %v_column.sroa.130.0.insert.shift1581, %v_column.sroa.98.0.insert.shift1426, !dbg !230
  %432 = shl i32 %condval_2.sroa.5.0.1.4, 16, !dbg !230
  %v_column.sroa.66.0.insert.shift1271 = zext i32 %432 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1273 = or disjoint i64 %v_column.sroa.98.0.insert.insert1428, %v_column.sroa.66.0.insert.shift1271, !dbg !230
  %433 = and i32 %condval_2.sroa.5.0.4, 65535, !dbg !230
  %v_column.sroa.0.0.insert.ext1129 = zext nneg i32 %433 to i64, !dbg !230
  %v_column.sroa.0.0.insert.insert1131 = or disjoint i64 %v_column.sroa.66.0.insert.insert1273, %v_column.sroa.0.0.insert.ext1129, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1131, ptr addrspace(3) %add.ptr477.2.4, align 8, !dbg !230
  %v_fetch.sroa.26.6.extract.shift1768 = lshr i32 %condval_2.sroa.5.0.4, 16, !dbg !231
  %v_fetch.sroa.26.6.extract.trunc1769 = zext nneg i32 %v_fetch.sroa.26.6.extract.shift1768 to i64, !dbg !231
  %v_fetch.sroa.74.14.extract.shift1838 = and i32 %condval_2.sroa.5.0.1.4, -65536, !dbg !230
  %v_fetch.sroa.122.22.extract.shift1908 = lshr i32 %condval_2.sroa.5.0.2.4, 16, !dbg !231
  %v_fetch.sroa.122.22.extract.trunc1909 = zext nneg i32 %v_fetch.sroa.122.22.extract.shift1908 to i64, !dbg !231
  %v_fetch.sroa.170.30.extract.shift1978 = lshr i32 %condval_2.sroa.5.0.3.4, 16, !dbg !231
  %v_fetch.sroa.170.30.extract.trunc1979 = zext nneg i32 %v_fetch.sroa.170.30.extract.shift1978 to i64, !dbg !231
  %add466.3.4 = or disjoint i32 %mul465, 768, !dbg !232
  %434 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.3.4, !dbg !229
  %xor473.3.4 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.3.4 = xor i32 %xor473.3.4, 24, !dbg !229
  %add.ptr477.3.4 = getelementptr inbounds i8, ptr addrspace(3) %434, i32 %add.ptr477.idx.3.4, !dbg !229
  %v_column.sroa.130.0.insert.shift1586 = shl nuw i64 %v_fetch.sroa.170.30.extract.trunc1979, 48, !dbg !230
  %v_column.sroa.98.0.insert.shift1431 = shl nuw nsw i64 %v_fetch.sroa.122.22.extract.trunc1909, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1433 = or disjoint i64 %v_column.sroa.130.0.insert.shift1586, %v_column.sroa.98.0.insert.shift1431, !dbg !230
  %v_column.sroa.66.0.insert.shift1276 = zext i32 %v_fetch.sroa.74.14.extract.shift1838 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1278 = or disjoint i64 %v_column.sroa.98.0.insert.insert1433, %v_column.sroa.66.0.insert.shift1276, !dbg !230
  %v_column.sroa.0.0.insert.insert1135 = or disjoint i64 %v_column.sroa.66.0.insert.insert1278, %v_fetch.sroa.26.6.extract.trunc1769, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1135, ptr addrspace(3) %add.ptr477.3.4, align 8, !dbg !230
  fence syncscope("warp") release, !dbg !233
  tail call void @llvm.mxc.barrier.warp(), !dbg !236
  fence syncscope("warp") acquire, !dbg !237
  %add494.4 = or disjoint i32 %mul487, %mul493, !dbg !238
  %435 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.4, !dbg !239
  %add.ptr504.idx.4 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.4 = getelementptr inbounds i8, ptr addrspace(3) %435, i32 %add.ptr504.idx.4, !dbg !239
  %436 = load <4 x half>, ptr addrspace(3) %add.ptr504.4, align 8, !dbg !240
  %add489.1.4 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.1.4 = or disjoint i32 %add489.1.4, 64, !dbg !238
  %437 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.1.4, !dbg !239
  %xor500.1.4 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.1.4 = xor i32 %xor500.1.4, 8, !dbg !239
  %add.ptr504.1.4 = getelementptr inbounds i8, ptr addrspace(3) %437, i32 %add.ptr504.idx.1.4, !dbg !239
  %438 = load <4 x half>, ptr addrspace(3) %add.ptr504.1.4, align 8, !dbg !240
  %add489.2.4 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.2.4 = or disjoint i32 %add489.2.4, 128, !dbg !238
  %439 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.2.4, !dbg !239
  %xor500.2.4 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.2.4 = xor i32 %xor500.2.4, 16, !dbg !239
  %add.ptr504.2.4 = getelementptr inbounds i8, ptr addrspace(3) %439, i32 %add.ptr504.idx.2.4, !dbg !239
  %440 = load <4 x half>, ptr addrspace(3) %add.ptr504.2.4, align 8, !dbg !240
  %add489.3.4 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.3.4 = or disjoint i32 %add489.3.4, 192, !dbg !238
  %441 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.3.4, !dbg !239
  %xor500.3.4 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.3.4 = xor i32 %xor500.3.4, 24, !dbg !239
  %add.ptr504.3.4 = getelementptr inbounds i8, ptr addrspace(3) %441, i32 %add.ptr504.idx.3.4, !dbg !239
  %442 = load <4 x half>, ptr addrspace(3) %add.ptr504.3.4, align 8, !dbg !240
  %443 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %436, <4 x half> %402, <4 x float> %numerator.sroa.0.12.vec.insert2514), !dbg !241
  %444 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %438, <4 x half> %402, <4 x float> %numerator.sroa.98.28.vec.insert2670), !dbg !241
  %445 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %440, <4 x half> %402, <4 x float> %numerator.sroa.194.44.vec.insert2826), !dbg !241
  %446 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %442, <4 x half> %402, <4 x float> %numerator.sroa.290.60.vec.insert2982), !dbg !241
  %add389.4 = fadd contract float %mul278.4, %add385.4, !dbg !242
  br label %if.end530.4, !dbg !243

if.end530.4:                                      ; preds = %if.end435.3.4, %if.end530.3
  %numerator.sroa.290.4 = phi <4 x float> [ %numerator.sroa.290.3, %if.end530.3 ], [ %446, %if.end435.3.4 ], !dbg !81
  %numerator.sroa.194.4 = phi <4 x float> [ %numerator.sroa.194.3, %if.end530.3 ], [ %445, %if.end435.3.4 ], !dbg !81
  %numerator.sroa.98.4 = phi <4 x float> [ %numerator.sroa.98.3, %if.end530.3 ], [ %444, %if.end435.3.4 ], !dbg !81
  %numerator.sroa.0.4 = phi <4 x float> [ %numerator.sroa.0.3, %if.end530.3 ], [ %443, %if.end435.3.4 ], !dbg !81
  %maximum.sroa.0.1.4 = phi float [ %maximum.sroa.0.1.3, %if.end530.3 ], [ %385, %if.end435.3.4 ], !dbg !81
  %denominator.sroa.0.1.4 = phi float [ %denominator.sroa.0.1.3, %if.end530.3 ], [ %add389.4, %if.end435.3.4 ], !dbg !81
  %447 = or disjoint i64 %17, 5, !dbg !244
  %arrayidx80.5 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %447, !dbg !67
  %448 = load i32, ptr addrspace(1) %arrayidx80.5, align 4, !dbg !67, !tbaa !30
  %mul81.5 = shl nsw i32 %448, 4, !dbg !68
  %cmp82.5 = icmp slt i32 %448, 0, !dbg !69
  %cmp84.not.5 = icmp sgt i32 %mul81.5, %1
  %or.cond.5 = select i1 %cmp82.5, i1 true, i1 %cmp84.not.5, !dbg !70
  br i1 %or.cond.5, label %if.end530.5, label %if.then.5, !dbg !70

if.then.5:                                        ; preds = %if.end530.4
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %add91.5 = add nuw nsw i32 %mul81.5, %shr90
  %conv101.5 = zext nneg i32 %mul81.5 to i64
  %.idx.5 = shl nuw nsw i64 %conv101.5, 7
  %gep.5 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep881, i64 %.idx.5, !dbg !76
  %cmp94.5 = icmp ult i32 %add91.5, 1024, !dbg !77
  br i1 %cmp94.5, label %if.then95.5, label %if.end.5, !dbg !78

if.then95.5:                                      ; preds = %if.then.5
  %gep865.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.5, i64 %mul97
  %condval.sroa.7.0.add.ptr108.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep865.5, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep865.5, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep865.5, i64 4
  %condval.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %gep865.5, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.5, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.5, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.5, align 4, !dbg !79, !tbaa !30
  br label %if.end.5, !dbg !80

if.end.5:                                         ; preds = %if.then95.5, %if.then.5
  %condval.sroa.0.0.5 = phi i32 [ %condval.sroa.0.0.copyload.5, %if.then95.5 ], [ 0, %if.then.5 ], !dbg !81
  %condval.sroa.5.0.5 = phi i32 [ %condval.sroa.5.0.copyload.5, %if.then95.5 ], [ 0, %if.then.5 ], !dbg !81
  %condval.sroa.6.0.5 = phi i32 [ %condval.sroa.6.0.copyload.5, %if.then95.5 ], [ 0, %if.then.5 ], !dbg !81
  %condval.sroa.7.0.5 = phi i32 [ %condval.sroa.7.0.copyload.5, %if.then95.5 ], [ 0, %if.then.5 ], !dbg !81
  store i32 %condval.sroa.0.0.5, ptr addrspace(3) %invariant.gep854, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 4, !dbg !82
  store i32 %condval.sroa.5.0.5, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.5, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 8, !dbg !82
  store i32 %condval.sroa.6.0.5, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.5, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 12, !dbg !82
  store i32 %condval.sroa.7.0.5, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.5, align 4, !dbg !82, !tbaa !30
  %cmp94.1.5 = icmp ult i32 %add91.5, 1016, !dbg !77
  br i1 %cmp94.1.5, label %if.then95.1.5, label %if.end.1.5, !dbg !78

if.then95.1.5:                                    ; preds = %if.end.5
  %add100.1.5 = or disjoint i64 %mul97, 512
  %gep865.1.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.5, i64 %add100.1.5
  %condval.sroa.7.0.add.ptr108.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1.5, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1.5, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1.5, i64 4
  %condval.sroa.0.0.copyload.1.5 = load i32, ptr addrspace(4) %gep865.1.5, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.1.5 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.1.5, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.1.5 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.1.5, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.1.5 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.1.5, align 4, !dbg !79, !tbaa !30
  br label %if.end.1.5, !dbg !80

if.end.1.5:                                       ; preds = %if.then95.1.5, %if.end.5
  %condval.sroa.0.0.1.5 = phi i32 [ %condval.sroa.0.0.copyload.1.5, %if.then95.1.5 ], [ 0, %if.end.5 ], !dbg !81
  %condval.sroa.5.0.1.5 = phi i32 [ %condval.sroa.5.0.copyload.1.5, %if.then95.1.5 ], [ 0, %if.end.5 ], !dbg !81
  %condval.sroa.6.0.1.5 = phi i32 [ %condval.sroa.6.0.copyload.1.5, %if.then95.1.5 ], [ 0, %if.end.5 ], !dbg !81
  %condval.sroa.7.0.1.5 = phi i32 [ %condval.sroa.7.0.copyload.1.5, %if.then95.1.5 ], [ 0, %if.end.5 ], !dbg !81
  store i32 %condval.sroa.0.0.1.5, ptr addrspace(3) %gep855.1, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1028, !dbg !82
  store i32 %condval.sroa.5.0.1.5, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.1.5, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1032, !dbg !82
  store i32 %condval.sroa.6.0.1.5, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.1.5, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1036, !dbg !82
  store i32 %condval.sroa.7.0.1.5, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.1.5, align 4, !dbg !82, !tbaa !30
  fence syncscope("warp") release, !dbg !83
  tail call void @llvm.mxc.barrier.warp(), !dbg !86
  fence syncscope("warp") acquire, !dbg !87
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !88
  %449 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %6, <4 x float> zeroinitializer), !dbg !89
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !88
  %450 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %7, <4 x float> %449), !dbg !89
  %k_local.sroa.0.0.copyload.2.5 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !88
  %451 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.5, <4 x half> %8, <4 x float> %450), !dbg !89
  %k_local.sroa.0.0.copyload.3.5 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !88
  %452 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.5, <4 x half> %9, <4 x float> %451), !dbg !89
  %add194.5 = add nuw nsw i32 %mul81.5, %mul193
  %cmp197.not.5 = icmp sgt i32 %add194.5, %1, !dbg !90
  %scores.sroa.0.0.vec.extract2119 = extractelement <4 x float> %452, i64 0
  %spec.select3037 = select i1 %cmp197.not.5, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2119, !dbg !91
  %cmp197.not.1.5.not = icmp slt i32 %add194.5, %1, !dbg !90
  %scores.sroa.0.4.vec.extract2206 = extractelement <4 x float> %452, i64 1, !dbg !91
  %condval_1.0.1.5 = select i1 %cmp197.not.1.5.not, float %scores.sroa.0.4.vec.extract2206, float 0xFFF0000000000000, !dbg !91
  %add195.2.5 = or disjoint i32 %add194.5, 2, !dbg !92
  %cmp197.not.2.5 = icmp sgt i32 %add195.2.5, %1, !dbg !90
  %scores.sroa.0.8.vec.extract2283 = extractelement <4 x float> %452, i64 2, !dbg !91
  %condval_1.0.2.5 = select i1 %cmp197.not.2.5, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2283, !dbg !91
  %add195.3.5 = or disjoint i32 %add194.5, 3, !dbg !92
  %cmp197.not.3.5 = icmp sgt i32 %add195.3.5, %1, !dbg !90
  %scores.sroa.0.12.vec.extract2360 = extractelement <4 x float> %452, i64 3, !dbg !91
  %condval_1.0.3.5 = select i1 %cmp197.not.3.5, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2360, !dbg !91
  %453 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3037, float 0xFFF0000000000000), !dbg !93
  %454 = tail call contract noundef float @llvm.maxnum.f32(float %453, float %condval_1.0.1.5), !dbg !93
  %455 = tail call contract noundef float @llvm.maxnum.f32(float %454, float %condval_1.0.2.5), !dbg !93
  %456 = tail call contract noundef float @llvm.maxnum.f32(float %455, float %condval_1.0.3.5), !dbg !93
  %457 = bitcast float %456 to i32, !dbg !97
  %458 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %459 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %458) #11, !dbg !105
  %xor.i.i.5 = xor i32 %459, 32, !dbg !106
  %460 = and i32 %459, -64, !dbg !107
  %and.i.i.5 = add nsw i32 %460, 64, !dbg !107
  %cmp.not.i.i.5 = icmp slt i32 %xor.i.i.5, %and.i.i.5, !dbg !108
  %cond.i.i.5 = select i1 %cmp.not.i.i.5, i32 %xor.i.i.5, i32 %459, !dbg !109
  %shl.i.i.5 = shl i32 %cond.i.i.5, 2, !dbg !110
  %461 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.5, i32 %457), !dbg !111
  %462 = bitcast i32 %461 to float, !dbg !112
  %463 = tail call contract noundef float @llvm.maxnum.f32(float %456, float %462), !dbg !113
  %464 = bitcast float %463 to i32, !dbg !115
  %465 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !117
  %466 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %465) #11, !dbg !120
  %xor.i.i783.5 = xor i32 %466, 16, !dbg !121
  %467 = and i32 %466, -64, !dbg !122
  %and.i.i784.5 = add nsw i32 %467, 64, !dbg !122
  %cmp.not.i.i785.5 = icmp slt i32 %xor.i.i783.5, %and.i.i784.5, !dbg !123
  %cond.i.i786.5 = select i1 %cmp.not.i.i785.5, i32 %xor.i.i783.5, i32 %466, !dbg !124
  %shl.i.i787.5 = shl i32 %cond.i.i786.5, 2, !dbg !125
  %468 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i787.5, i32 %464), !dbg !126
  %469 = bitcast i32 %468 to float, !dbg !127
  %470 = tail call contract noundef float @llvm.maxnum.f32(float %463, float %469), !dbg !128
  %471 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.4, float %470), !dbg !130
  %sub.5 = fsub contract float %maximum.sroa.0.1.4, %471, !dbg !132
  %mul241.5 = fmul contract float %sub.5, 0x3FC7154760000000, !dbg !133
  %cmp.i.i.5 = fcmp contract olt float %mul241.5, -1.260000e+02, !dbg !134
  %cond.i.i788.5 = select contract i1 %cmp.i.i.5, float 6.400000e+01, float 0.000000e+00, !dbg !134
  %add.i.i.5 = fadd contract float %mul241.5, %cond.i.i788.5, !dbg !134
  %472 = tail call contract float @llvm.exp2.f32(float %add.i.i.5), !dbg !134
  %cond2.i.i.5 = select contract i1 %cmp.i.i.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !134
  %mul.i.i.5 = fmul contract float %cond2.i.i.5, %472, !dbg !134
  %numerator.sroa.0.0.vec.extract2405 = extractelement <4 x float> %numerator.sroa.0.4, i64 0, !dbg !245
  %numerator.sroa.0.4.vec.extract2442 = extractelement <4 x float> %numerator.sroa.0.4, i64 1, !dbg !245
  %numerator.sroa.0.8.vec.extract2479 = extractelement <4 x float> %numerator.sroa.0.4, i64 2, !dbg !245
  %numerator.sroa.0.12.vec.extract2516 = extractelement <4 x float> %numerator.sroa.0.4, i64 3, !dbg !245
  %mul258.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.0.vec.extract2405, !dbg !137
  %mul261.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.4.vec.extract2442, !dbg !246
  %mul264.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.8.vec.extract2479, !dbg !247
  %mul267.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.12.vec.extract2516, !dbg !248
  %numerator.sroa.0.0.vec.insert2407 = insertelement <4 x float> poison, float %mul258.5, i64 0, !dbg !138
  %numerator.sroa.0.4.vec.insert2444 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2407, float %mul261.5, i64 1, !dbg !138
  %numerator.sroa.0.8.vec.insert2481 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2444, float %mul264.5, i64 2, !dbg !138
  %numerator.sroa.0.12.vec.insert2518 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2481, float %mul267.5, i64 3, !dbg !138
  %numerator.sroa.98.16.vec.extract2561 = extractelement <4 x float> %numerator.sroa.98.4, i64 0, !dbg !245
  %numerator.sroa.98.20.vec.extract2598 = extractelement <4 x float> %numerator.sroa.98.4, i64 1, !dbg !245
  %numerator.sroa.98.24.vec.extract2635 = extractelement <4 x float> %numerator.sroa.98.4, i64 2, !dbg !245
  %numerator.sroa.98.28.vec.extract2672 = extractelement <4 x float> %numerator.sroa.98.4, i64 3, !dbg !245
  %mul258.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.16.vec.extract2561, !dbg !137
  %mul261.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.20.vec.extract2598, !dbg !246
  %mul264.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.24.vec.extract2635, !dbg !247
  %mul267.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.28.vec.extract2672, !dbg !248
  %numerator.sroa.98.16.vec.insert2563 = insertelement <4 x float> poison, float %mul258.1.5, i64 0, !dbg !138
  %numerator.sroa.98.20.vec.insert2600 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2563, float %mul261.1.5, i64 1, !dbg !138
  %numerator.sroa.98.24.vec.insert2637 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2600, float %mul264.1.5, i64 2, !dbg !138
  %numerator.sroa.98.28.vec.insert2674 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2637, float %mul267.1.5, i64 3, !dbg !138
  %numerator.sroa.194.32.vec.extract2717 = extractelement <4 x float> %numerator.sroa.194.4, i64 0, !dbg !245
  %numerator.sroa.194.36.vec.extract2754 = extractelement <4 x float> %numerator.sroa.194.4, i64 1, !dbg !245
  %numerator.sroa.194.40.vec.extract2791 = extractelement <4 x float> %numerator.sroa.194.4, i64 2, !dbg !245
  %numerator.sroa.194.44.vec.extract2828 = extractelement <4 x float> %numerator.sroa.194.4, i64 3, !dbg !245
  %mul258.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.32.vec.extract2717, !dbg !137
  %mul261.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.36.vec.extract2754, !dbg !246
  %mul264.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.40.vec.extract2791, !dbg !247
  %mul267.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.44.vec.extract2828, !dbg !248
  %numerator.sroa.194.32.vec.insert2719 = insertelement <4 x float> poison, float %mul258.2.5, i64 0, !dbg !138
  %numerator.sroa.194.36.vec.insert2756 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2719, float %mul261.2.5, i64 1, !dbg !138
  %numerator.sroa.194.40.vec.insert2793 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2756, float %mul264.2.5, i64 2, !dbg !138
  %numerator.sroa.194.44.vec.insert2830 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2793, float %mul267.2.5, i64 3, !dbg !138
  %numerator.sroa.290.48.vec.extract2873 = extractelement <4 x float> %numerator.sroa.290.4, i64 0, !dbg !245
  %numerator.sroa.290.52.vec.extract2910 = extractelement <4 x float> %numerator.sroa.290.4, i64 1, !dbg !245
  %numerator.sroa.290.56.vec.extract2947 = extractelement <4 x float> %numerator.sroa.290.4, i64 2, !dbg !245
  %numerator.sroa.290.60.vec.extract2984 = extractelement <4 x float> %numerator.sroa.290.4, i64 3, !dbg !245
  %mul258.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.48.vec.extract2873, !dbg !137
  %mul261.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.52.vec.extract2910, !dbg !246
  %mul264.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.56.vec.extract2947, !dbg !247
  %mul267.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.60.vec.extract2984, !dbg !248
  %numerator.sroa.290.48.vec.insert2875 = insertelement <4 x float> poison, float %mul258.3.5, i64 0, !dbg !138
  %numerator.sroa.290.52.vec.insert2912 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2875, float %mul261.3.5, i64 1, !dbg !138
  %numerator.sroa.290.56.vec.insert2949 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2912, float %mul264.3.5, i64 2, !dbg !138
  %numerator.sroa.290.60.vec.insert2986 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2949, float %mul267.3.5, i64 3, !dbg !138
  %sub291.5 = fsub contract float %spec.select3037, %471, !dbg !139
  %sub295.5 = fsub contract float %condval_1.0.1.5, %471, !dbg !140
  %sub299.5 = fsub contract float %condval_1.0.2.5, %471, !dbg !141
  %sub303.5 = fsub contract float %condval_1.0.3.5, %471, !dbg !142
  %mul308.5 = fmul contract float %sub291.5, 0x3FC7154760000000, !dbg !143
  %mul312.5 = fmul contract float %sub295.5, 0x3FC7154760000000, !dbg !144
  %mul316.5 = fmul contract float %sub299.5, 0x3FC7154760000000, !dbg !145
  %mul320.5 = fmul contract float %sub303.5, 0x3FC7154760000000, !dbg !146
  %add325.5 = fadd contract float %mul308.5, 8.000000e+00, !dbg !147
  %add329.5 = fadd contract float %mul312.5, 8.000000e+00, !dbg !148
  %add333.5 = fadd contract float %mul316.5, 8.000000e+00, !dbg !149
  %add337.5 = fadd contract float %mul320.5, 8.000000e+00, !dbg !150
  %cmp.i.i793.5 = fcmp contract olt float %add325.5, -1.260000e+02, !dbg !151
  %cond.i.i794.5 = select contract i1 %cmp.i.i793.5, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i795.5 = fadd contract float %add325.5, %cond.i.i794.5, !dbg !151
  %473 = tail call contract float @llvm.exp2.f32(float %add.i.i795.5), !dbg !151
  %cond2.i.i796.5 = select contract i1 %cmp.i.i793.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i797.5 = fmul contract float %cond2.i.i796.5, %473, !dbg !151
  %cmp.i.i798.5 = fcmp contract olt float %add329.5, -1.260000e+02, !dbg !153
  %cond.i.i799.5 = select contract i1 %cmp.i.i798.5, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i800.5 = fadd contract float %add329.5, %cond.i.i799.5, !dbg !153
  %474 = tail call contract float @llvm.exp2.f32(float %add.i.i800.5), !dbg !153
  %cond2.i.i801.5 = select contract i1 %cmp.i.i798.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i802.5 = fmul contract float %cond2.i.i801.5, %474, !dbg !153
  %cmp.i.i803.5 = fcmp contract olt float %add333.5, -1.260000e+02, !dbg !155
  %cond.i.i804.5 = select contract i1 %cmp.i.i803.5, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i805.5 = fadd contract float %add333.5, %cond.i.i804.5, !dbg !155
  %475 = tail call contract float @llvm.exp2.f32(float %add.i.i805.5), !dbg !155
  %cond2.i.i806.5 = select contract i1 %cmp.i.i803.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i807.5 = fmul contract float %cond2.i.i806.5, %475, !dbg !155
  %cmp.i.i808.5 = fcmp contract olt float %add337.5, -1.260000e+02, !dbg !157
  %cond.i.i809.5 = select contract i1 %cmp.i.i808.5, float 6.400000e+01, float 0.000000e+00, !dbg !157
  %add.i.i810.5 = fadd contract float %add337.5, %cond.i.i809.5, !dbg !157
  %476 = tail call contract float @llvm.exp2.f32(float %add.i.i810.5), !dbg !157
  %cond2.i.i811.5 = select contract i1 %cmp.i.i808.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !157
  %mul.i.i812.5 = fmul contract float %cond2.i.i811.5, %476, !dbg !157
  %477 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !159
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !159, !noalias !167
  %478 = fptrunc float %mul.i.i797.5 to half, !dbg !159
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %477), !dbg !159, !noalias !167
  %479 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !167
  %480 = fptrunc float %mul.i.i802.5 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %479), !dbg !172, !noalias !167
  %481 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !174, !noalias !178
  %482 = fptrunc float %mul.i.i807.5 to half, !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %481), !dbg !174, !noalias !178
  %483 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !183, !noalias !178
  %484 = fptrunc float %mul.i.i812.5 to half, !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %483), !dbg !183, !noalias !178
  %485 = insertelement <4 x half> poison, half %478, i64 0, !dbg !185
  %486 = insertelement <4 x half> %485, half %480, i64 1, !dbg !185
  %487 = insertelement <4 x half> %486, half %482, i64 2, !dbg !185
  %488 = insertelement <4 x half> %487, half %484, i64 3, !dbg !185
  %conv.i.i.5 = fpext half %478 to float, !dbg !186
  %add372.5 = fadd contract float %conv.i.i.5, 0.000000e+00, !dbg !191
  %conv.i.i.1.5 = fpext half %480 to float, !dbg !186
  %add372.1.5 = fadd contract float %add372.5, %conv.i.i.1.5, !dbg !191
  %conv.i.i.2.5 = fpext half %482 to float, !dbg !186
  %add372.2.5 = fadd contract float %add372.1.5, %conv.i.i.2.5, !dbg !191
  %conv.i.i.3.5 = fpext half %484 to float, !dbg !186
  %add372.3.5 = fadd contract float %add372.2.5, %conv.i.i.3.5, !dbg !191
  %489 = bitcast float %add372.3.5 to i32, !dbg !192
  %490 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !194
  %491 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %490) #11, !dbg !197
  %xor.i.i818.5 = xor i32 %491, 32, !dbg !198
  %492 = and i32 %491, -64, !dbg !199
  %and.i.i819.5 = add nsw i32 %492, 64, !dbg !199
  %cmp.not.i.i820.5 = icmp slt i32 %xor.i.i818.5, %and.i.i819.5, !dbg !200
  %cond.i.i821.5 = select i1 %cmp.not.i.i820.5, i32 %xor.i.i818.5, i32 %491, !dbg !201
  %shl.i.i822.5 = shl i32 %cond.i.i821.5, 2, !dbg !202
  %493 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i822.5, i32 %489), !dbg !203
  %494 = bitcast i32 %493 to float, !dbg !204
  %add380.5 = fadd contract float %add372.3.5, %494, !dbg !205
  %495 = bitcast float %add380.5 to i32, !dbg !206
  %496 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !208
  %497 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %496) #11, !dbg !211
  %xor.i.i823.5 = xor i32 %497, 16, !dbg !212
  %498 = and i32 %497, -64, !dbg !213
  %and.i.i824.5 = add nsw i32 %498, 64, !dbg !213
  %cmp.not.i.i825.5 = icmp slt i32 %xor.i.i823.5, %and.i.i824.5, !dbg !214
  %cond.i.i826.5 = select i1 %cmp.not.i.i825.5, i32 %xor.i.i823.5, i32 %497, !dbg !215
  %shl.i.i827.5 = shl i32 %cond.i.i826.5, 2, !dbg !216
  %499 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i827.5, i32 %495), !dbg !217
  %500 = bitcast i32 %499 to float, !dbg !218
  %add385.5 = fadd contract float %add380.5, %500, !dbg !219
  fence syncscope("warp") release, !dbg !220
  tail call void @llvm.mxc.barrier.warp(), !dbg !223
  fence syncscope("warp") acquire, !dbg !224
  %shr398.5 = lshr exact i32 %mul81.5, 2
  %add399.5 = add nuw nsw i32 %shr398.5, %shr396
  %cmp400.5 = icmp ult i32 %add399.5, 256
  br i1 %cmp400.5, label %if.then401.5, label %if.end435.5, !dbg !225

if.then401.5:                                     ; preds = %if.end.1.5
  %501 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %502 = getelementptr inbounds i8, ptr addrspace(4) %501, i64 %.idx.5, !dbg !226
  %condval_2.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %502, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %502, i64 4, !dbg !227
  %condval_2.sroa.5.0.copyload.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.5, align 4, !dbg !227, !tbaa !30
  br label %if.end435.5, !dbg !228

if.end435.5:                                      ; preds = %if.then401.5, %if.end.1.5
  %condval_2.sroa.0.0.5 = phi i32 [ %condval_2.sroa.0.0.copyload.5, %if.then401.5 ], [ 0, %if.end.1.5 ], !dbg !81
  %condval_2.sroa.5.0.5 = phi i32 [ %condval_2.sroa.5.0.copyload.5, %if.then401.5 ], [ 0, %if.end.1.5 ], !dbg !81
  br i1 %cmp400.5, label %if.then401.1.5, label %if.end435.1.5, !dbg !225

if.then401.1.5:                                   ; preds = %if.end435.5
  %503 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %504 = getelementptr inbounds i8, ptr addrspace(4) %503, i64 %.idx.5, !dbg !226
  %add.ptr421.1.5 = getelementptr inbounds i8, ptr addrspace(4) %504, i64 128, !dbg !226
  %condval_2.sroa.0.0.copyload.1.5 = load i32, ptr addrspace(4) %add.ptr421.1.5, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %504, i64 132, !dbg !227
  %condval_2.sroa.5.0.copyload.1.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.1.5, align 4, !dbg !227, !tbaa !30
  br label %if.end435.1.5, !dbg !228

if.end435.1.5:                                    ; preds = %if.then401.1.5, %if.end435.5
  %condval_2.sroa.0.0.1.5 = phi i32 [ %condval_2.sroa.0.0.copyload.1.5, %if.then401.1.5 ], [ 0, %if.end435.5 ], !dbg !81
  %condval_2.sroa.5.0.1.5 = phi i32 [ %condval_2.sroa.5.0.copyload.1.5, %if.then401.1.5 ], [ 0, %if.end435.5 ], !dbg !81
  br i1 %cmp400.5, label %if.then401.2.5, label %if.end435.2.5, !dbg !225

if.then401.2.5:                                   ; preds = %if.end435.1.5
  %505 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %506 = getelementptr inbounds i8, ptr addrspace(4) %505, i64 %.idx.5, !dbg !226
  %add.ptr421.2.5 = getelementptr inbounds i8, ptr addrspace(4) %506, i64 256, !dbg !226
  %condval_2.sroa.0.0.copyload.2.5 = load i32, ptr addrspace(4) %add.ptr421.2.5, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.2.5 = getelementptr inbounds i8, ptr addrspace(4) %506, i64 260, !dbg !227
  %condval_2.sroa.5.0.copyload.2.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.2.5, align 4, !dbg !227, !tbaa !30
  br label %if.end435.2.5, !dbg !228

if.end435.2.5:                                    ; preds = %if.then401.2.5, %if.end435.1.5
  %condval_2.sroa.0.0.2.5 = phi i32 [ %condval_2.sroa.0.0.copyload.2.5, %if.then401.2.5 ], [ 0, %if.end435.1.5 ], !dbg !81
  %condval_2.sroa.5.0.2.5 = phi i32 [ %condval_2.sroa.5.0.copyload.2.5, %if.then401.2.5 ], [ 0, %if.end435.1.5 ], !dbg !81
  br i1 %cmp400.5, label %if.then401.3.5, label %if.end435.3.5, !dbg !225

if.then401.3.5:                                   ; preds = %if.end435.2.5
  %507 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %508 = getelementptr inbounds i8, ptr addrspace(4) %507, i64 %.idx.5, !dbg !226
  %add.ptr421.3.5 = getelementptr inbounds i8, ptr addrspace(4) %508, i64 384, !dbg !226
  %condval_2.sroa.0.0.copyload.3.5 = load i32, ptr addrspace(4) %add.ptr421.3.5, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.3.5 = getelementptr inbounds i8, ptr addrspace(4) %508, i64 388, !dbg !227
  %condval_2.sroa.5.0.copyload.3.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.3.5, align 4, !dbg !227, !tbaa !30
  br label %if.end435.3.5, !dbg !228

if.end435.3.5:                                    ; preds = %if.then401.3.5, %if.end435.2.5
  %condval_2.sroa.0.0.3.5 = phi i32 [ %condval_2.sroa.0.0.copyload.3.5, %if.then401.3.5 ], [ 0, %if.end435.2.5 ], !dbg !81
  %condval_2.sroa.5.0.3.5 = phi i32 [ %condval_2.sroa.5.0.copyload.3.5, %if.then401.3.5 ], [ 0, %if.end435.2.5 ], !dbg !81
  %mul278.5 = fmul contract float %denominator.sroa.0.1.4, %mul.i.i.5, !dbg !249
  %509 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul465, !dbg !229
  %add.ptr477.idx.5 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.5 = getelementptr inbounds i8, ptr addrspace(3) %509, i32 %add.ptr477.idx.5, !dbg !229
  %510 = and i32 %condval_2.sroa.0.0.3.5, 65535, !dbg !230
  %v_column.sroa.130.0.insert.ext1590 = zext nneg i32 %510 to i64, !dbg !230
  %v_column.sroa.130.0.insert.shift1591 = shl nuw i64 %v_column.sroa.130.0.insert.ext1590, 48, !dbg !230
  %511 = and i32 %condval_2.sroa.0.0.2.5, 65535, !dbg !230
  %v_column.sroa.98.0.insert.ext1435 = zext nneg i32 %511 to i64, !dbg !230
  %v_column.sroa.98.0.insert.shift1436 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1435, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1438 = or disjoint i64 %v_column.sroa.130.0.insert.shift1591, %v_column.sroa.98.0.insert.shift1436, !dbg !230
  %512 = shl i32 %condval_2.sroa.0.0.1.5, 16, !dbg !230
  %v_column.sroa.66.0.insert.shift1281 = zext i32 %512 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1283 = or disjoint i64 %v_column.sroa.98.0.insert.insert1438, %v_column.sroa.66.0.insert.shift1281, !dbg !230
  %513 = and i32 %condval_2.sroa.0.0.5, 65535, !dbg !230
  %v_column.sroa.0.0.insert.ext1137 = zext nneg i32 %513 to i64, !dbg !230
  %v_column.sroa.0.0.insert.insert1139 = or disjoint i64 %v_column.sroa.66.0.insert.insert1283, %v_column.sroa.0.0.insert.ext1137, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1139, ptr addrspace(3) %add.ptr477.5, align 8, !dbg !230
  %v_fetch.sroa.0.2.extract.shift1736 = lshr i32 %condval_2.sroa.0.0.5, 16, !dbg !231
  %v_fetch.sroa.0.2.extract.trunc1737 = zext nneg i32 %v_fetch.sroa.0.2.extract.shift1736 to i64, !dbg !231
  %v_fetch.sroa.50.10.extract.shift1806 = and i32 %condval_2.sroa.0.0.1.5, -65536, !dbg !230
  %v_fetch.sroa.98.18.extract.shift1876 = lshr i32 %condval_2.sroa.0.0.2.5, 16, !dbg !231
  %v_fetch.sroa.98.18.extract.trunc1877 = zext nneg i32 %v_fetch.sroa.98.18.extract.shift1876 to i64, !dbg !231
  %v_fetch.sroa.146.26.extract.shift1946 = lshr i32 %condval_2.sroa.0.0.3.5, 16, !dbg !231
  %v_fetch.sroa.146.26.extract.trunc1947 = zext nneg i32 %v_fetch.sroa.146.26.extract.shift1946 to i64, !dbg !231
  %add466.1.5 = or disjoint i32 %mul465, 256, !dbg !232
  %514 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.1.5, !dbg !229
  %xor473.1.5 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.1.5 = xor i32 %xor473.1.5, 8, !dbg !229
  %add.ptr477.1.5 = getelementptr inbounds i8, ptr addrspace(3) %514, i32 %add.ptr477.idx.1.5, !dbg !229
  %v_column.sroa.130.0.insert.shift1596 = shl nuw i64 %v_fetch.sroa.146.26.extract.trunc1947, 48, !dbg !230
  %v_column.sroa.98.0.insert.shift1441 = shl nuw nsw i64 %v_fetch.sroa.98.18.extract.trunc1877, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1443 = or disjoint i64 %v_column.sroa.130.0.insert.shift1596, %v_column.sroa.98.0.insert.shift1441, !dbg !230
  %v_column.sroa.66.0.insert.shift1286 = zext i32 %v_fetch.sroa.50.10.extract.shift1806 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1288 = or disjoint i64 %v_column.sroa.98.0.insert.insert1443, %v_column.sroa.66.0.insert.shift1286, !dbg !230
  %v_column.sroa.0.0.insert.insert1143 = or disjoint i64 %v_column.sroa.66.0.insert.insert1288, %v_fetch.sroa.0.2.extract.trunc1737, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1143, ptr addrspace(3) %add.ptr477.1.5, align 8, !dbg !230
  %add466.2.5 = or disjoint i32 %mul465, 512, !dbg !232
  %515 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.2.5, !dbg !229
  %xor473.2.5 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.2.5 = xor i32 %xor473.2.5, 16, !dbg !229
  %add.ptr477.2.5 = getelementptr inbounds i8, ptr addrspace(3) %515, i32 %add.ptr477.idx.2.5, !dbg !229
  %516 = and i32 %condval_2.sroa.5.0.3.5, 65535, !dbg !230
  %v_column.sroa.130.0.insert.ext1600 = zext nneg i32 %516 to i64, !dbg !230
  %v_column.sroa.130.0.insert.shift1601 = shl nuw i64 %v_column.sroa.130.0.insert.ext1600, 48, !dbg !230
  %517 = and i32 %condval_2.sroa.5.0.2.5, 65535, !dbg !230
  %v_column.sroa.98.0.insert.ext1445 = zext nneg i32 %517 to i64, !dbg !230
  %v_column.sroa.98.0.insert.shift1446 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1445, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1448 = or disjoint i64 %v_column.sroa.130.0.insert.shift1601, %v_column.sroa.98.0.insert.shift1446, !dbg !230
  %518 = shl i32 %condval_2.sroa.5.0.1.5, 16, !dbg !230
  %v_column.sroa.66.0.insert.shift1291 = zext i32 %518 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1293 = or disjoint i64 %v_column.sroa.98.0.insert.insert1448, %v_column.sroa.66.0.insert.shift1291, !dbg !230
  %519 = and i32 %condval_2.sroa.5.0.5, 65535, !dbg !230
  %v_column.sroa.0.0.insert.ext1145 = zext nneg i32 %519 to i64, !dbg !230
  %v_column.sroa.0.0.insert.insert1147 = or disjoint i64 %v_column.sroa.66.0.insert.insert1293, %v_column.sroa.0.0.insert.ext1145, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1147, ptr addrspace(3) %add.ptr477.2.5, align 8, !dbg !230
  %v_fetch.sroa.26.6.extract.shift1771 = lshr i32 %condval_2.sroa.5.0.5, 16, !dbg !231
  %v_fetch.sroa.26.6.extract.trunc1772 = zext nneg i32 %v_fetch.sroa.26.6.extract.shift1771 to i64, !dbg !231
  %v_fetch.sroa.74.14.extract.shift1841 = and i32 %condval_2.sroa.5.0.1.5, -65536, !dbg !230
  %v_fetch.sroa.122.22.extract.shift1911 = lshr i32 %condval_2.sroa.5.0.2.5, 16, !dbg !231
  %v_fetch.sroa.122.22.extract.trunc1912 = zext nneg i32 %v_fetch.sroa.122.22.extract.shift1911 to i64, !dbg !231
  %v_fetch.sroa.170.30.extract.shift1981 = lshr i32 %condval_2.sroa.5.0.3.5, 16, !dbg !231
  %v_fetch.sroa.170.30.extract.trunc1982 = zext nneg i32 %v_fetch.sroa.170.30.extract.shift1981 to i64, !dbg !231
  %add466.3.5 = or disjoint i32 %mul465, 768, !dbg !232
  %520 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.3.5, !dbg !229
  %xor473.3.5 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.3.5 = xor i32 %xor473.3.5, 24, !dbg !229
  %add.ptr477.3.5 = getelementptr inbounds i8, ptr addrspace(3) %520, i32 %add.ptr477.idx.3.5, !dbg !229
  %v_column.sroa.130.0.insert.shift1606 = shl nuw i64 %v_fetch.sroa.170.30.extract.trunc1982, 48, !dbg !230
  %v_column.sroa.98.0.insert.shift1451 = shl nuw nsw i64 %v_fetch.sroa.122.22.extract.trunc1912, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1453 = or disjoint i64 %v_column.sroa.130.0.insert.shift1606, %v_column.sroa.98.0.insert.shift1451, !dbg !230
  %v_column.sroa.66.0.insert.shift1296 = zext i32 %v_fetch.sroa.74.14.extract.shift1841 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1298 = or disjoint i64 %v_column.sroa.98.0.insert.insert1453, %v_column.sroa.66.0.insert.shift1296, !dbg !230
  %v_column.sroa.0.0.insert.insert1151 = or disjoint i64 %v_column.sroa.66.0.insert.insert1298, %v_fetch.sroa.26.6.extract.trunc1772, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1151, ptr addrspace(3) %add.ptr477.3.5, align 8, !dbg !230
  fence syncscope("warp") release, !dbg !233
  tail call void @llvm.mxc.barrier.warp(), !dbg !236
  fence syncscope("warp") acquire, !dbg !237
  %add494.5 = or disjoint i32 %mul487, %mul493, !dbg !238
  %521 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.5, !dbg !239
  %add.ptr504.idx.5 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.5 = getelementptr inbounds i8, ptr addrspace(3) %521, i32 %add.ptr504.idx.5, !dbg !239
  %522 = load <4 x half>, ptr addrspace(3) %add.ptr504.5, align 8, !dbg !240
  %add489.1.5 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.1.5 = or disjoint i32 %add489.1.5, 64, !dbg !238
  %523 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.1.5, !dbg !239
  %xor500.1.5 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.1.5 = xor i32 %xor500.1.5, 8, !dbg !239
  %add.ptr504.1.5 = getelementptr inbounds i8, ptr addrspace(3) %523, i32 %add.ptr504.idx.1.5, !dbg !239
  %524 = load <4 x half>, ptr addrspace(3) %add.ptr504.1.5, align 8, !dbg !240
  %add489.2.5 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.2.5 = or disjoint i32 %add489.2.5, 128, !dbg !238
  %525 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.2.5, !dbg !239
  %xor500.2.5 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.2.5 = xor i32 %xor500.2.5, 16, !dbg !239
  %add.ptr504.2.5 = getelementptr inbounds i8, ptr addrspace(3) %525, i32 %add.ptr504.idx.2.5, !dbg !239
  %526 = load <4 x half>, ptr addrspace(3) %add.ptr504.2.5, align 8, !dbg !240
  %add489.3.5 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.3.5 = or disjoint i32 %add489.3.5, 192, !dbg !238
  %527 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.3.5, !dbg !239
  %xor500.3.5 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.3.5 = xor i32 %xor500.3.5, 24, !dbg !239
  %add.ptr504.3.5 = getelementptr inbounds i8, ptr addrspace(3) %527, i32 %add.ptr504.idx.3.5, !dbg !239
  %528 = load <4 x half>, ptr addrspace(3) %add.ptr504.3.5, align 8, !dbg !240
  %529 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %522, <4 x half> %488, <4 x float> %numerator.sroa.0.12.vec.insert2518), !dbg !241
  %530 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %524, <4 x half> %488, <4 x float> %numerator.sroa.98.28.vec.insert2674), !dbg !241
  %531 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %526, <4 x half> %488, <4 x float> %numerator.sroa.194.44.vec.insert2830), !dbg !241
  %532 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %528, <4 x half> %488, <4 x float> %numerator.sroa.290.60.vec.insert2986), !dbg !241
  %add389.5 = fadd contract float %mul278.5, %add385.5, !dbg !242
  br label %if.end530.5, !dbg !243

if.end530.5:                                      ; preds = %if.end435.3.5, %if.end530.4
  %numerator.sroa.290.5 = phi <4 x float> [ %numerator.sroa.290.4, %if.end530.4 ], [ %532, %if.end435.3.5 ], !dbg !81
  %numerator.sroa.194.5 = phi <4 x float> [ %numerator.sroa.194.4, %if.end530.4 ], [ %531, %if.end435.3.5 ], !dbg !81
  %numerator.sroa.98.5 = phi <4 x float> [ %numerator.sroa.98.4, %if.end530.4 ], [ %530, %if.end435.3.5 ], !dbg !81
  %numerator.sroa.0.5 = phi <4 x float> [ %numerator.sroa.0.4, %if.end530.4 ], [ %529, %if.end435.3.5 ], !dbg !81
  %maximum.sroa.0.1.5 = phi float [ %maximum.sroa.0.1.4, %if.end530.4 ], [ %471, %if.end435.3.5 ], !dbg !81
  %denominator.sroa.0.1.5 = phi float [ %denominator.sroa.0.1.4, %if.end530.4 ], [ %add389.5, %if.end435.3.5 ], !dbg !81
  %533 = or disjoint i64 %17, 6, !dbg !244
  %arrayidx80.6 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %533, !dbg !67
  %534 = load i32, ptr addrspace(1) %arrayidx80.6, align 4, !dbg !67, !tbaa !30
  %mul81.6 = shl nsw i32 %534, 4, !dbg !68
  %cmp82.6 = icmp slt i32 %534, 0, !dbg !69
  %cmp84.not.6 = icmp sgt i32 %mul81.6, %1
  %or.cond.6 = select i1 %cmp82.6, i1 true, i1 %cmp84.not.6, !dbg !70
  br i1 %or.cond.6, label %if.end530.6, label %if.then.6, !dbg !70

if.then.6:                                        ; preds = %if.end530.5
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %add91.6 = add nuw nsw i32 %mul81.6, %shr90
  %conv101.6 = zext nneg i32 %mul81.6 to i64
  %.idx.6 = shl nuw nsw i64 %conv101.6, 7
  %gep.6 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep881, i64 %.idx.6, !dbg !76
  %cmp94.6 = icmp ult i32 %add91.6, 1024, !dbg !77
  br i1 %cmp94.6, label %if.then95.6, label %if.end.6, !dbg !78

if.then95.6:                                      ; preds = %if.then.6
  %gep865.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.6, i64 %mul97
  %condval.sroa.7.0.add.ptr108.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep865.6, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep865.6, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep865.6, i64 4
  %condval.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %gep865.6, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.6, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.6, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.6, align 4, !dbg !79, !tbaa !30
  br label %if.end.6, !dbg !80

if.end.6:                                         ; preds = %if.then95.6, %if.then.6
  %condval.sroa.0.0.6 = phi i32 [ %condval.sroa.0.0.copyload.6, %if.then95.6 ], [ 0, %if.then.6 ], !dbg !81
  %condval.sroa.5.0.6 = phi i32 [ %condval.sroa.5.0.copyload.6, %if.then95.6 ], [ 0, %if.then.6 ], !dbg !81
  %condval.sroa.6.0.6 = phi i32 [ %condval.sroa.6.0.copyload.6, %if.then95.6 ], [ 0, %if.then.6 ], !dbg !81
  %condval.sroa.7.0.6 = phi i32 [ %condval.sroa.7.0.copyload.6, %if.then95.6 ], [ 0, %if.then.6 ], !dbg !81
  store i32 %condval.sroa.0.0.6, ptr addrspace(3) %invariant.gep854, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 4, !dbg !82
  store i32 %condval.sroa.5.0.6, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.6, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 8, !dbg !82
  store i32 %condval.sroa.6.0.6, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.6, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 12, !dbg !82
  store i32 %condval.sroa.7.0.6, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.6, align 4, !dbg !82, !tbaa !30
  %cmp94.1.6 = icmp ult i32 %add91.6, 1016, !dbg !77
  br i1 %cmp94.1.6, label %if.then95.1.6, label %if.end.1.6, !dbg !78

if.then95.1.6:                                    ; preds = %if.end.6
  %add100.1.6 = or disjoint i64 %mul97, 512
  %gep865.1.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.6, i64 %add100.1.6
  %condval.sroa.7.0.add.ptr108.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1.6, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1.6, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1.6, i64 4
  %condval.sroa.0.0.copyload.1.6 = load i32, ptr addrspace(4) %gep865.1.6, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.1.6 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.1.6, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.1.6 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.1.6, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.1.6 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.1.6, align 4, !dbg !79, !tbaa !30
  br label %if.end.1.6, !dbg !80

if.end.1.6:                                       ; preds = %if.then95.1.6, %if.end.6
  %condval.sroa.0.0.1.6 = phi i32 [ %condval.sroa.0.0.copyload.1.6, %if.then95.1.6 ], [ 0, %if.end.6 ], !dbg !81
  %condval.sroa.5.0.1.6 = phi i32 [ %condval.sroa.5.0.copyload.1.6, %if.then95.1.6 ], [ 0, %if.end.6 ], !dbg !81
  %condval.sroa.6.0.1.6 = phi i32 [ %condval.sroa.6.0.copyload.1.6, %if.then95.1.6 ], [ 0, %if.end.6 ], !dbg !81
  %condval.sroa.7.0.1.6 = phi i32 [ %condval.sroa.7.0.copyload.1.6, %if.then95.1.6 ], [ 0, %if.end.6 ], !dbg !81
  store i32 %condval.sroa.0.0.1.6, ptr addrspace(3) %gep855.1, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1028, !dbg !82
  store i32 %condval.sroa.5.0.1.6, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.1.6, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1032, !dbg !82
  store i32 %condval.sroa.6.0.1.6, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.1.6, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1036, !dbg !82
  store i32 %condval.sroa.7.0.1.6, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.1.6, align 4, !dbg !82, !tbaa !30
  fence syncscope("warp") release, !dbg !83
  tail call void @llvm.mxc.barrier.warp(), !dbg !86
  fence syncscope("warp") acquire, !dbg !87
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !88
  %535 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %6, <4 x float> zeroinitializer), !dbg !89
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !88
  %536 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %7, <4 x float> %535), !dbg !89
  %k_local.sroa.0.0.copyload.2.6 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !88
  %537 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.6, <4 x half> %8, <4 x float> %536), !dbg !89
  %k_local.sroa.0.0.copyload.3.6 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !88
  %538 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.6, <4 x half> %9, <4 x float> %537), !dbg !89
  %add194.6 = add nuw nsw i32 %mul81.6, %mul193
  %cmp197.not.6 = icmp sgt i32 %add194.6, %1, !dbg !90
  %scores.sroa.0.0.vec.extract2129 = extractelement <4 x float> %538, i64 0
  %spec.select3038 = select i1 %cmp197.not.6, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2129, !dbg !91
  %cmp197.not.1.6.not = icmp slt i32 %add194.6, %1, !dbg !90
  %scores.sroa.0.4.vec.extract2212 = extractelement <4 x float> %538, i64 1, !dbg !91
  %condval_1.0.1.6 = select i1 %cmp197.not.1.6.not, float %scores.sroa.0.4.vec.extract2212, float 0xFFF0000000000000, !dbg !91
  %add195.2.6 = or disjoint i32 %add194.6, 2, !dbg !92
  %cmp197.not.2.6 = icmp sgt i32 %add195.2.6, %1, !dbg !90
  %scores.sroa.0.8.vec.extract2289 = extractelement <4 x float> %538, i64 2, !dbg !91
  %condval_1.0.2.6 = select i1 %cmp197.not.2.6, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2289, !dbg !91
  %add195.3.6 = or disjoint i32 %add194.6, 3, !dbg !92
  %cmp197.not.3.6 = icmp sgt i32 %add195.3.6, %1, !dbg !90
  %scores.sroa.0.12.vec.extract2366 = extractelement <4 x float> %538, i64 3, !dbg !91
  %condval_1.0.3.6 = select i1 %cmp197.not.3.6, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2366, !dbg !91
  %539 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3038, float 0xFFF0000000000000), !dbg !93
  %540 = tail call contract noundef float @llvm.maxnum.f32(float %539, float %condval_1.0.1.6), !dbg !93
  %541 = tail call contract noundef float @llvm.maxnum.f32(float %540, float %condval_1.0.2.6), !dbg !93
  %542 = tail call contract noundef float @llvm.maxnum.f32(float %541, float %condval_1.0.3.6), !dbg !93
  %543 = bitcast float %542 to i32, !dbg !97
  %544 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %545 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %544) #11, !dbg !105
  %xor.i.i.6 = xor i32 %545, 32, !dbg !106
  %546 = and i32 %545, -64, !dbg !107
  %and.i.i.6 = add nsw i32 %546, 64, !dbg !107
  %cmp.not.i.i.6 = icmp slt i32 %xor.i.i.6, %and.i.i.6, !dbg !108
  %cond.i.i.6 = select i1 %cmp.not.i.i.6, i32 %xor.i.i.6, i32 %545, !dbg !109
  %shl.i.i.6 = shl i32 %cond.i.i.6, 2, !dbg !110
  %547 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.6, i32 %543), !dbg !111
  %548 = bitcast i32 %547 to float, !dbg !112
  %549 = tail call contract noundef float @llvm.maxnum.f32(float %542, float %548), !dbg !113
  %550 = bitcast float %549 to i32, !dbg !115
  %551 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !117
  %552 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %551) #11, !dbg !120
  %xor.i.i783.6 = xor i32 %552, 16, !dbg !121
  %553 = and i32 %552, -64, !dbg !122
  %and.i.i784.6 = add nsw i32 %553, 64, !dbg !122
  %cmp.not.i.i785.6 = icmp slt i32 %xor.i.i783.6, %and.i.i784.6, !dbg !123
  %cond.i.i786.6 = select i1 %cmp.not.i.i785.6, i32 %xor.i.i783.6, i32 %552, !dbg !124
  %shl.i.i787.6 = shl i32 %cond.i.i786.6, 2, !dbg !125
  %554 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i787.6, i32 %550), !dbg !126
  %555 = bitcast i32 %554 to float, !dbg !127
  %556 = tail call contract noundef float @llvm.maxnum.f32(float %549, float %555), !dbg !128
  %557 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.5, float %556), !dbg !130
  %sub.6 = fsub contract float %maximum.sroa.0.1.5, %557, !dbg !132
  %mul241.6 = fmul contract float %sub.6, 0x3FC7154760000000, !dbg !133
  %cmp.i.i.6 = fcmp contract olt float %mul241.6, -1.260000e+02, !dbg !134
  %cond.i.i788.6 = select contract i1 %cmp.i.i.6, float 6.400000e+01, float 0.000000e+00, !dbg !134
  %add.i.i.6 = fadd contract float %mul241.6, %cond.i.i788.6, !dbg !134
  %558 = tail call contract float @llvm.exp2.f32(float %add.i.i.6), !dbg !134
  %cond2.i.i.6 = select contract i1 %cmp.i.i.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !134
  %mul.i.i.6 = fmul contract float %cond2.i.i.6, %558, !dbg !134
  %numerator.sroa.0.0.vec.extract2409 = extractelement <4 x float> %numerator.sroa.0.5, i64 0, !dbg !245
  %numerator.sroa.0.4.vec.extract2446 = extractelement <4 x float> %numerator.sroa.0.5, i64 1, !dbg !245
  %numerator.sroa.0.8.vec.extract2483 = extractelement <4 x float> %numerator.sroa.0.5, i64 2, !dbg !245
  %numerator.sroa.0.12.vec.extract2520 = extractelement <4 x float> %numerator.sroa.0.5, i64 3, !dbg !245
  %mul258.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.0.vec.extract2409, !dbg !137
  %mul261.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.4.vec.extract2446, !dbg !246
  %mul264.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.8.vec.extract2483, !dbg !247
  %mul267.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.12.vec.extract2520, !dbg !248
  %numerator.sroa.0.0.vec.insert2411 = insertelement <4 x float> poison, float %mul258.6, i64 0, !dbg !138
  %numerator.sroa.0.4.vec.insert2448 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2411, float %mul261.6, i64 1, !dbg !138
  %numerator.sroa.0.8.vec.insert2485 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2448, float %mul264.6, i64 2, !dbg !138
  %numerator.sroa.0.12.vec.insert2522 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2485, float %mul267.6, i64 3, !dbg !138
  %numerator.sroa.98.16.vec.extract2565 = extractelement <4 x float> %numerator.sroa.98.5, i64 0, !dbg !245
  %numerator.sroa.98.20.vec.extract2602 = extractelement <4 x float> %numerator.sroa.98.5, i64 1, !dbg !245
  %numerator.sroa.98.24.vec.extract2639 = extractelement <4 x float> %numerator.sroa.98.5, i64 2, !dbg !245
  %numerator.sroa.98.28.vec.extract2676 = extractelement <4 x float> %numerator.sroa.98.5, i64 3, !dbg !245
  %mul258.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.16.vec.extract2565, !dbg !137
  %mul261.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.20.vec.extract2602, !dbg !246
  %mul264.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.24.vec.extract2639, !dbg !247
  %mul267.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.28.vec.extract2676, !dbg !248
  %numerator.sroa.98.16.vec.insert2567 = insertelement <4 x float> poison, float %mul258.1.6, i64 0, !dbg !138
  %numerator.sroa.98.20.vec.insert2604 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2567, float %mul261.1.6, i64 1, !dbg !138
  %numerator.sroa.98.24.vec.insert2641 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2604, float %mul264.1.6, i64 2, !dbg !138
  %numerator.sroa.98.28.vec.insert2678 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2641, float %mul267.1.6, i64 3, !dbg !138
  %numerator.sroa.194.32.vec.extract2721 = extractelement <4 x float> %numerator.sroa.194.5, i64 0, !dbg !245
  %numerator.sroa.194.36.vec.extract2758 = extractelement <4 x float> %numerator.sroa.194.5, i64 1, !dbg !245
  %numerator.sroa.194.40.vec.extract2795 = extractelement <4 x float> %numerator.sroa.194.5, i64 2, !dbg !245
  %numerator.sroa.194.44.vec.extract2832 = extractelement <4 x float> %numerator.sroa.194.5, i64 3, !dbg !245
  %mul258.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.32.vec.extract2721, !dbg !137
  %mul261.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.36.vec.extract2758, !dbg !246
  %mul264.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.40.vec.extract2795, !dbg !247
  %mul267.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.44.vec.extract2832, !dbg !248
  %numerator.sroa.194.32.vec.insert2723 = insertelement <4 x float> poison, float %mul258.2.6, i64 0, !dbg !138
  %numerator.sroa.194.36.vec.insert2760 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2723, float %mul261.2.6, i64 1, !dbg !138
  %numerator.sroa.194.40.vec.insert2797 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2760, float %mul264.2.6, i64 2, !dbg !138
  %numerator.sroa.194.44.vec.insert2834 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2797, float %mul267.2.6, i64 3, !dbg !138
  %numerator.sroa.290.48.vec.extract2877 = extractelement <4 x float> %numerator.sroa.290.5, i64 0, !dbg !245
  %numerator.sroa.290.52.vec.extract2914 = extractelement <4 x float> %numerator.sroa.290.5, i64 1, !dbg !245
  %numerator.sroa.290.56.vec.extract2951 = extractelement <4 x float> %numerator.sroa.290.5, i64 2, !dbg !245
  %numerator.sroa.290.60.vec.extract2988 = extractelement <4 x float> %numerator.sroa.290.5, i64 3, !dbg !245
  %mul258.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.48.vec.extract2877, !dbg !137
  %mul261.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.52.vec.extract2914, !dbg !246
  %mul264.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.56.vec.extract2951, !dbg !247
  %mul267.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.60.vec.extract2988, !dbg !248
  %numerator.sroa.290.48.vec.insert2879 = insertelement <4 x float> poison, float %mul258.3.6, i64 0, !dbg !138
  %numerator.sroa.290.52.vec.insert2916 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2879, float %mul261.3.6, i64 1, !dbg !138
  %numerator.sroa.290.56.vec.insert2953 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2916, float %mul264.3.6, i64 2, !dbg !138
  %numerator.sroa.290.60.vec.insert2990 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2953, float %mul267.3.6, i64 3, !dbg !138
  %sub291.6 = fsub contract float %spec.select3038, %557, !dbg !139
  %sub295.6 = fsub contract float %condval_1.0.1.6, %557, !dbg !140
  %sub299.6 = fsub contract float %condval_1.0.2.6, %557, !dbg !141
  %sub303.6 = fsub contract float %condval_1.0.3.6, %557, !dbg !142
  %mul308.6 = fmul contract float %sub291.6, 0x3FC7154760000000, !dbg !143
  %mul312.6 = fmul contract float %sub295.6, 0x3FC7154760000000, !dbg !144
  %mul316.6 = fmul contract float %sub299.6, 0x3FC7154760000000, !dbg !145
  %mul320.6 = fmul contract float %sub303.6, 0x3FC7154760000000, !dbg !146
  %add325.6 = fadd contract float %mul308.6, 8.000000e+00, !dbg !147
  %add329.6 = fadd contract float %mul312.6, 8.000000e+00, !dbg !148
  %add333.6 = fadd contract float %mul316.6, 8.000000e+00, !dbg !149
  %add337.6 = fadd contract float %mul320.6, 8.000000e+00, !dbg !150
  %cmp.i.i793.6 = fcmp contract olt float %add325.6, -1.260000e+02, !dbg !151
  %cond.i.i794.6 = select contract i1 %cmp.i.i793.6, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i795.6 = fadd contract float %add325.6, %cond.i.i794.6, !dbg !151
  %559 = tail call contract float @llvm.exp2.f32(float %add.i.i795.6), !dbg !151
  %cond2.i.i796.6 = select contract i1 %cmp.i.i793.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i797.6 = fmul contract float %cond2.i.i796.6, %559, !dbg !151
  %cmp.i.i798.6 = fcmp contract olt float %add329.6, -1.260000e+02, !dbg !153
  %cond.i.i799.6 = select contract i1 %cmp.i.i798.6, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i800.6 = fadd contract float %add329.6, %cond.i.i799.6, !dbg !153
  %560 = tail call contract float @llvm.exp2.f32(float %add.i.i800.6), !dbg !153
  %cond2.i.i801.6 = select contract i1 %cmp.i.i798.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i802.6 = fmul contract float %cond2.i.i801.6, %560, !dbg !153
  %cmp.i.i803.6 = fcmp contract olt float %add333.6, -1.260000e+02, !dbg !155
  %cond.i.i804.6 = select contract i1 %cmp.i.i803.6, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i805.6 = fadd contract float %add333.6, %cond.i.i804.6, !dbg !155
  %561 = tail call contract float @llvm.exp2.f32(float %add.i.i805.6), !dbg !155
  %cond2.i.i806.6 = select contract i1 %cmp.i.i803.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i807.6 = fmul contract float %cond2.i.i806.6, %561, !dbg !155
  %cmp.i.i808.6 = fcmp contract olt float %add337.6, -1.260000e+02, !dbg !157
  %cond.i.i809.6 = select contract i1 %cmp.i.i808.6, float 6.400000e+01, float 0.000000e+00, !dbg !157
  %add.i.i810.6 = fadd contract float %add337.6, %cond.i.i809.6, !dbg !157
  %562 = tail call contract float @llvm.exp2.f32(float %add.i.i810.6), !dbg !157
  %cond2.i.i811.6 = select contract i1 %cmp.i.i808.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !157
  %mul.i.i812.6 = fmul contract float %cond2.i.i811.6, %562, !dbg !157
  %563 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !159
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !159, !noalias !167
  %564 = fptrunc float %mul.i.i797.6 to half, !dbg !159
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %563), !dbg !159, !noalias !167
  %565 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !167
  %566 = fptrunc float %mul.i.i802.6 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %565), !dbg !172, !noalias !167
  %567 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !174, !noalias !178
  %568 = fptrunc float %mul.i.i807.6 to half, !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %567), !dbg !174, !noalias !178
  %569 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !183, !noalias !178
  %570 = fptrunc float %mul.i.i812.6 to half, !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %569), !dbg !183, !noalias !178
  %571 = insertelement <4 x half> poison, half %564, i64 0, !dbg !185
  %572 = insertelement <4 x half> %571, half %566, i64 1, !dbg !185
  %573 = insertelement <4 x half> %572, half %568, i64 2, !dbg !185
  %574 = insertelement <4 x half> %573, half %570, i64 3, !dbg !185
  %conv.i.i.6 = fpext half %564 to float, !dbg !186
  %add372.6 = fadd contract float %conv.i.i.6, 0.000000e+00, !dbg !191
  %conv.i.i.1.6 = fpext half %566 to float, !dbg !186
  %add372.1.6 = fadd contract float %add372.6, %conv.i.i.1.6, !dbg !191
  %conv.i.i.2.6 = fpext half %568 to float, !dbg !186
  %add372.2.6 = fadd contract float %add372.1.6, %conv.i.i.2.6, !dbg !191
  %conv.i.i.3.6 = fpext half %570 to float, !dbg !186
  %add372.3.6 = fadd contract float %add372.2.6, %conv.i.i.3.6, !dbg !191
  %575 = bitcast float %add372.3.6 to i32, !dbg !192
  %576 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !194
  %577 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %576) #11, !dbg !197
  %xor.i.i818.6 = xor i32 %577, 32, !dbg !198
  %578 = and i32 %577, -64, !dbg !199
  %and.i.i819.6 = add nsw i32 %578, 64, !dbg !199
  %cmp.not.i.i820.6 = icmp slt i32 %xor.i.i818.6, %and.i.i819.6, !dbg !200
  %cond.i.i821.6 = select i1 %cmp.not.i.i820.6, i32 %xor.i.i818.6, i32 %577, !dbg !201
  %shl.i.i822.6 = shl i32 %cond.i.i821.6, 2, !dbg !202
  %579 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i822.6, i32 %575), !dbg !203
  %580 = bitcast i32 %579 to float, !dbg !204
  %add380.6 = fadd contract float %add372.3.6, %580, !dbg !205
  %581 = bitcast float %add380.6 to i32, !dbg !206
  %582 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !208
  %583 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %582) #11, !dbg !211
  %xor.i.i823.6 = xor i32 %583, 16, !dbg !212
  %584 = and i32 %583, -64, !dbg !213
  %and.i.i824.6 = add nsw i32 %584, 64, !dbg !213
  %cmp.not.i.i825.6 = icmp slt i32 %xor.i.i823.6, %and.i.i824.6, !dbg !214
  %cond.i.i826.6 = select i1 %cmp.not.i.i825.6, i32 %xor.i.i823.6, i32 %583, !dbg !215
  %shl.i.i827.6 = shl i32 %cond.i.i826.6, 2, !dbg !216
  %585 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i827.6, i32 %581), !dbg !217
  %586 = bitcast i32 %585 to float, !dbg !218
  %add385.6 = fadd contract float %add380.6, %586, !dbg !219
  fence syncscope("warp") release, !dbg !220
  tail call void @llvm.mxc.barrier.warp(), !dbg !223
  fence syncscope("warp") acquire, !dbg !224
  %shr398.6 = lshr exact i32 %mul81.6, 2
  %add399.6 = add nuw nsw i32 %shr398.6, %shr396
  %cmp400.6 = icmp ult i32 %add399.6, 256
  br i1 %cmp400.6, label %if.then401.6, label %if.end435.6, !dbg !225

if.then401.6:                                     ; preds = %if.end.1.6
  %587 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %588 = getelementptr inbounds i8, ptr addrspace(4) %587, i64 %.idx.6, !dbg !226
  %condval_2.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %588, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %588, i64 4, !dbg !227
  %condval_2.sroa.5.0.copyload.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.6, align 4, !dbg !227, !tbaa !30
  br label %if.end435.6, !dbg !228

if.end435.6:                                      ; preds = %if.then401.6, %if.end.1.6
  %condval_2.sroa.0.0.6 = phi i32 [ %condval_2.sroa.0.0.copyload.6, %if.then401.6 ], [ 0, %if.end.1.6 ], !dbg !81
  %condval_2.sroa.5.0.6 = phi i32 [ %condval_2.sroa.5.0.copyload.6, %if.then401.6 ], [ 0, %if.end.1.6 ], !dbg !81
  br i1 %cmp400.6, label %if.then401.1.6, label %if.end435.1.6, !dbg !225

if.then401.1.6:                                   ; preds = %if.end435.6
  %589 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %590 = getelementptr inbounds i8, ptr addrspace(4) %589, i64 %.idx.6, !dbg !226
  %add.ptr421.1.6 = getelementptr inbounds i8, ptr addrspace(4) %590, i64 128, !dbg !226
  %condval_2.sroa.0.0.copyload.1.6 = load i32, ptr addrspace(4) %add.ptr421.1.6, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %590, i64 132, !dbg !227
  %condval_2.sroa.5.0.copyload.1.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.1.6, align 4, !dbg !227, !tbaa !30
  br label %if.end435.1.6, !dbg !228

if.end435.1.6:                                    ; preds = %if.then401.1.6, %if.end435.6
  %condval_2.sroa.0.0.1.6 = phi i32 [ %condval_2.sroa.0.0.copyload.1.6, %if.then401.1.6 ], [ 0, %if.end435.6 ], !dbg !81
  %condval_2.sroa.5.0.1.6 = phi i32 [ %condval_2.sroa.5.0.copyload.1.6, %if.then401.1.6 ], [ 0, %if.end435.6 ], !dbg !81
  br i1 %cmp400.6, label %if.then401.2.6, label %if.end435.2.6, !dbg !225

if.then401.2.6:                                   ; preds = %if.end435.1.6
  %591 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %592 = getelementptr inbounds i8, ptr addrspace(4) %591, i64 %.idx.6, !dbg !226
  %add.ptr421.2.6 = getelementptr inbounds i8, ptr addrspace(4) %592, i64 256, !dbg !226
  %condval_2.sroa.0.0.copyload.2.6 = load i32, ptr addrspace(4) %add.ptr421.2.6, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.2.6 = getelementptr inbounds i8, ptr addrspace(4) %592, i64 260, !dbg !227
  %condval_2.sroa.5.0.copyload.2.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.2.6, align 4, !dbg !227, !tbaa !30
  br label %if.end435.2.6, !dbg !228

if.end435.2.6:                                    ; preds = %if.then401.2.6, %if.end435.1.6
  %condval_2.sroa.0.0.2.6 = phi i32 [ %condval_2.sroa.0.0.copyload.2.6, %if.then401.2.6 ], [ 0, %if.end435.1.6 ], !dbg !81
  %condval_2.sroa.5.0.2.6 = phi i32 [ %condval_2.sroa.5.0.copyload.2.6, %if.then401.2.6 ], [ 0, %if.end435.1.6 ], !dbg !81
  br i1 %cmp400.6, label %if.then401.3.6, label %if.end435.3.6, !dbg !225

if.then401.3.6:                                   ; preds = %if.end435.2.6
  %593 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %594 = getelementptr inbounds i8, ptr addrspace(4) %593, i64 %.idx.6, !dbg !226
  %add.ptr421.3.6 = getelementptr inbounds i8, ptr addrspace(4) %594, i64 384, !dbg !226
  %condval_2.sroa.0.0.copyload.3.6 = load i32, ptr addrspace(4) %add.ptr421.3.6, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.3.6 = getelementptr inbounds i8, ptr addrspace(4) %594, i64 388, !dbg !227
  %condval_2.sroa.5.0.copyload.3.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.3.6, align 4, !dbg !227, !tbaa !30
  br label %if.end435.3.6, !dbg !228

if.end435.3.6:                                    ; preds = %if.then401.3.6, %if.end435.2.6
  %condval_2.sroa.0.0.3.6 = phi i32 [ %condval_2.sroa.0.0.copyload.3.6, %if.then401.3.6 ], [ 0, %if.end435.2.6 ], !dbg !81
  %condval_2.sroa.5.0.3.6 = phi i32 [ %condval_2.sroa.5.0.copyload.3.6, %if.then401.3.6 ], [ 0, %if.end435.2.6 ], !dbg !81
  %mul278.6 = fmul contract float %denominator.sroa.0.1.5, %mul.i.i.6, !dbg !249
  %595 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul465, !dbg !229
  %add.ptr477.idx.6 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.6 = getelementptr inbounds i8, ptr addrspace(3) %595, i32 %add.ptr477.idx.6, !dbg !229
  %596 = and i32 %condval_2.sroa.0.0.3.6, 65535, !dbg !230
  %v_column.sroa.130.0.insert.ext1610 = zext nneg i32 %596 to i64, !dbg !230
  %v_column.sroa.130.0.insert.shift1611 = shl nuw i64 %v_column.sroa.130.0.insert.ext1610, 48, !dbg !230
  %597 = and i32 %condval_2.sroa.0.0.2.6, 65535, !dbg !230
  %v_column.sroa.98.0.insert.ext1455 = zext nneg i32 %597 to i64, !dbg !230
  %v_column.sroa.98.0.insert.shift1456 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1455, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1458 = or disjoint i64 %v_column.sroa.130.0.insert.shift1611, %v_column.sroa.98.0.insert.shift1456, !dbg !230
  %598 = shl i32 %condval_2.sroa.0.0.1.6, 16, !dbg !230
  %v_column.sroa.66.0.insert.shift1301 = zext i32 %598 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1303 = or disjoint i64 %v_column.sroa.98.0.insert.insert1458, %v_column.sroa.66.0.insert.shift1301, !dbg !230
  %599 = and i32 %condval_2.sroa.0.0.6, 65535, !dbg !230
  %v_column.sroa.0.0.insert.ext1153 = zext nneg i32 %599 to i64, !dbg !230
  %v_column.sroa.0.0.insert.insert1155 = or disjoint i64 %v_column.sroa.66.0.insert.insert1303, %v_column.sroa.0.0.insert.ext1153, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1155, ptr addrspace(3) %add.ptr477.6, align 8, !dbg !230
  %v_fetch.sroa.0.2.extract.shift1739 = lshr i32 %condval_2.sroa.0.0.6, 16, !dbg !231
  %v_fetch.sroa.0.2.extract.trunc1740 = zext nneg i32 %v_fetch.sroa.0.2.extract.shift1739 to i64, !dbg !231
  %v_fetch.sroa.50.10.extract.shift1809 = and i32 %condval_2.sroa.0.0.1.6, -65536, !dbg !230
  %v_fetch.sroa.98.18.extract.shift1879 = lshr i32 %condval_2.sroa.0.0.2.6, 16, !dbg !231
  %v_fetch.sroa.98.18.extract.trunc1880 = zext nneg i32 %v_fetch.sroa.98.18.extract.shift1879 to i64, !dbg !231
  %v_fetch.sroa.146.26.extract.shift1949 = lshr i32 %condval_2.sroa.0.0.3.6, 16, !dbg !231
  %v_fetch.sroa.146.26.extract.trunc1950 = zext nneg i32 %v_fetch.sroa.146.26.extract.shift1949 to i64, !dbg !231
  %add466.1.6 = or disjoint i32 %mul465, 256, !dbg !232
  %600 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.1.6, !dbg !229
  %xor473.1.6 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.1.6 = xor i32 %xor473.1.6, 8, !dbg !229
  %add.ptr477.1.6 = getelementptr inbounds i8, ptr addrspace(3) %600, i32 %add.ptr477.idx.1.6, !dbg !229
  %v_column.sroa.130.0.insert.shift1616 = shl nuw i64 %v_fetch.sroa.146.26.extract.trunc1950, 48, !dbg !230
  %v_column.sroa.98.0.insert.shift1461 = shl nuw nsw i64 %v_fetch.sroa.98.18.extract.trunc1880, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1463 = or disjoint i64 %v_column.sroa.130.0.insert.shift1616, %v_column.sroa.98.0.insert.shift1461, !dbg !230
  %v_column.sroa.66.0.insert.shift1306 = zext i32 %v_fetch.sroa.50.10.extract.shift1809 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1308 = or disjoint i64 %v_column.sroa.98.0.insert.insert1463, %v_column.sroa.66.0.insert.shift1306, !dbg !230
  %v_column.sroa.0.0.insert.insert1159 = or disjoint i64 %v_column.sroa.66.0.insert.insert1308, %v_fetch.sroa.0.2.extract.trunc1740, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1159, ptr addrspace(3) %add.ptr477.1.6, align 8, !dbg !230
  %add466.2.6 = or disjoint i32 %mul465, 512, !dbg !232
  %601 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.2.6, !dbg !229
  %xor473.2.6 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.2.6 = xor i32 %xor473.2.6, 16, !dbg !229
  %add.ptr477.2.6 = getelementptr inbounds i8, ptr addrspace(3) %601, i32 %add.ptr477.idx.2.6, !dbg !229
  %602 = and i32 %condval_2.sroa.5.0.3.6, 65535, !dbg !230
  %v_column.sroa.130.0.insert.ext1620 = zext nneg i32 %602 to i64, !dbg !230
  %v_column.sroa.130.0.insert.shift1621 = shl nuw i64 %v_column.sroa.130.0.insert.ext1620, 48, !dbg !230
  %603 = and i32 %condval_2.sroa.5.0.2.6, 65535, !dbg !230
  %v_column.sroa.98.0.insert.ext1465 = zext nneg i32 %603 to i64, !dbg !230
  %v_column.sroa.98.0.insert.shift1466 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1465, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1468 = or disjoint i64 %v_column.sroa.130.0.insert.shift1621, %v_column.sroa.98.0.insert.shift1466, !dbg !230
  %604 = shl i32 %condval_2.sroa.5.0.1.6, 16, !dbg !230
  %v_column.sroa.66.0.insert.shift1311 = zext i32 %604 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1313 = or disjoint i64 %v_column.sroa.98.0.insert.insert1468, %v_column.sroa.66.0.insert.shift1311, !dbg !230
  %605 = and i32 %condval_2.sroa.5.0.6, 65535, !dbg !230
  %v_column.sroa.0.0.insert.ext1161 = zext nneg i32 %605 to i64, !dbg !230
  %v_column.sroa.0.0.insert.insert1163 = or disjoint i64 %v_column.sroa.66.0.insert.insert1313, %v_column.sroa.0.0.insert.ext1161, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1163, ptr addrspace(3) %add.ptr477.2.6, align 8, !dbg !230
  %v_fetch.sroa.26.6.extract.shift1774 = lshr i32 %condval_2.sroa.5.0.6, 16, !dbg !231
  %v_fetch.sroa.26.6.extract.trunc1775 = zext nneg i32 %v_fetch.sroa.26.6.extract.shift1774 to i64, !dbg !231
  %v_fetch.sroa.74.14.extract.shift1844 = and i32 %condval_2.sroa.5.0.1.6, -65536, !dbg !230
  %v_fetch.sroa.122.22.extract.shift1914 = lshr i32 %condval_2.sroa.5.0.2.6, 16, !dbg !231
  %v_fetch.sroa.122.22.extract.trunc1915 = zext nneg i32 %v_fetch.sroa.122.22.extract.shift1914 to i64, !dbg !231
  %v_fetch.sroa.170.30.extract.shift1984 = lshr i32 %condval_2.sroa.5.0.3.6, 16, !dbg !231
  %v_fetch.sroa.170.30.extract.trunc1985 = zext nneg i32 %v_fetch.sroa.170.30.extract.shift1984 to i64, !dbg !231
  %add466.3.6 = or disjoint i32 %mul465, 768, !dbg !232
  %606 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.3.6, !dbg !229
  %xor473.3.6 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.3.6 = xor i32 %xor473.3.6, 24, !dbg !229
  %add.ptr477.3.6 = getelementptr inbounds i8, ptr addrspace(3) %606, i32 %add.ptr477.idx.3.6, !dbg !229
  %v_column.sroa.130.0.insert.shift1626 = shl nuw i64 %v_fetch.sroa.170.30.extract.trunc1985, 48, !dbg !230
  %v_column.sroa.98.0.insert.shift1471 = shl nuw nsw i64 %v_fetch.sroa.122.22.extract.trunc1915, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1473 = or disjoint i64 %v_column.sroa.130.0.insert.shift1626, %v_column.sroa.98.0.insert.shift1471, !dbg !230
  %v_column.sroa.66.0.insert.shift1316 = zext i32 %v_fetch.sroa.74.14.extract.shift1844 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1318 = or disjoint i64 %v_column.sroa.98.0.insert.insert1473, %v_column.sroa.66.0.insert.shift1316, !dbg !230
  %v_column.sroa.0.0.insert.insert1167 = or disjoint i64 %v_column.sroa.66.0.insert.insert1318, %v_fetch.sroa.26.6.extract.trunc1775, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1167, ptr addrspace(3) %add.ptr477.3.6, align 8, !dbg !230
  fence syncscope("warp") release, !dbg !233
  tail call void @llvm.mxc.barrier.warp(), !dbg !236
  fence syncscope("warp") acquire, !dbg !237
  %add494.6 = or disjoint i32 %mul487, %mul493, !dbg !238
  %607 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.6, !dbg !239
  %add.ptr504.idx.6 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.6 = getelementptr inbounds i8, ptr addrspace(3) %607, i32 %add.ptr504.idx.6, !dbg !239
  %608 = load <4 x half>, ptr addrspace(3) %add.ptr504.6, align 8, !dbg !240
  %add489.1.6 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.1.6 = or disjoint i32 %add489.1.6, 64, !dbg !238
  %609 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.1.6, !dbg !239
  %xor500.1.6 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.1.6 = xor i32 %xor500.1.6, 8, !dbg !239
  %add.ptr504.1.6 = getelementptr inbounds i8, ptr addrspace(3) %609, i32 %add.ptr504.idx.1.6, !dbg !239
  %610 = load <4 x half>, ptr addrspace(3) %add.ptr504.1.6, align 8, !dbg !240
  %add489.2.6 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.2.6 = or disjoint i32 %add489.2.6, 128, !dbg !238
  %611 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.2.6, !dbg !239
  %xor500.2.6 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.2.6 = xor i32 %xor500.2.6, 16, !dbg !239
  %add.ptr504.2.6 = getelementptr inbounds i8, ptr addrspace(3) %611, i32 %add.ptr504.idx.2.6, !dbg !239
  %612 = load <4 x half>, ptr addrspace(3) %add.ptr504.2.6, align 8, !dbg !240
  %add489.3.6 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.3.6 = or disjoint i32 %add489.3.6, 192, !dbg !238
  %613 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.3.6, !dbg !239
  %xor500.3.6 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.3.6 = xor i32 %xor500.3.6, 24, !dbg !239
  %add.ptr504.3.6 = getelementptr inbounds i8, ptr addrspace(3) %613, i32 %add.ptr504.idx.3.6, !dbg !239
  %614 = load <4 x half>, ptr addrspace(3) %add.ptr504.3.6, align 8, !dbg !240
  %615 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %608, <4 x half> %574, <4 x float> %numerator.sroa.0.12.vec.insert2522), !dbg !241
  %616 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %610, <4 x half> %574, <4 x float> %numerator.sroa.98.28.vec.insert2678), !dbg !241
  %617 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %612, <4 x half> %574, <4 x float> %numerator.sroa.194.44.vec.insert2834), !dbg !241
  %618 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %614, <4 x half> %574, <4 x float> %numerator.sroa.290.60.vec.insert2990), !dbg !241
  %add389.6 = fadd contract float %mul278.6, %add385.6, !dbg !242
  br label %if.end530.6, !dbg !243

if.end530.6:                                      ; preds = %if.end435.3.6, %if.end530.5
  %numerator.sroa.290.6 = phi <4 x float> [ %numerator.sroa.290.5, %if.end530.5 ], [ %618, %if.end435.3.6 ], !dbg !81
  %numerator.sroa.194.6 = phi <4 x float> [ %numerator.sroa.194.5, %if.end530.5 ], [ %617, %if.end435.3.6 ], !dbg !81
  %numerator.sroa.98.6 = phi <4 x float> [ %numerator.sroa.98.5, %if.end530.5 ], [ %616, %if.end435.3.6 ], !dbg !81
  %numerator.sroa.0.6 = phi <4 x float> [ %numerator.sroa.0.5, %if.end530.5 ], [ %615, %if.end435.3.6 ], !dbg !81
  %maximum.sroa.0.1.6 = phi float [ %maximum.sroa.0.1.5, %if.end530.5 ], [ %557, %if.end435.3.6 ], !dbg !81
  %denominator.sroa.0.1.6 = phi float [ %denominator.sroa.0.1.5, %if.end530.5 ], [ %add389.6, %if.end435.3.6 ], !dbg !81
  %619 = or disjoint i64 %17, 7, !dbg !244
  %arrayidx80.7 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %619, !dbg !67
  %620 = load i32, ptr addrspace(1) %arrayidx80.7, align 4, !dbg !67, !tbaa !30
  %mul81.7 = shl nsw i32 %620, 4, !dbg !68
  %cmp82.7 = icmp slt i32 %620, 0, !dbg !69
  %cmp84.not.7 = icmp sgt i32 %mul81.7, %1
  %or.cond.7 = select i1 %cmp82.7, i1 true, i1 %cmp84.not.7, !dbg !70
  br i1 %or.cond.7, label %if.end530.7, label %if.then.7, !dbg !70

if.then.7:                                        ; preds = %if.end530.6
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %add91.7 = add nuw nsw i32 %mul81.7, %shr90
  %conv101.7 = zext nneg i32 %mul81.7 to i64
  %.idx.7 = shl nuw nsw i64 %conv101.7, 7
  %gep.7 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep881, i64 %.idx.7, !dbg !76
  %cmp94.7 = icmp ult i32 %add91.7, 1024, !dbg !77
  br i1 %cmp94.7, label %if.then95.7, label %if.end.7, !dbg !78

if.then95.7:                                      ; preds = %if.then.7
  %gep865.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.7, i64 %mul97
  %condval.sroa.7.0.add.ptr108.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep865.7, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep865.7, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep865.7, i64 4
  %condval.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %gep865.7, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.7, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.7, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.7, align 4, !dbg !79, !tbaa !30
  br label %if.end.7, !dbg !80

if.end.7:                                         ; preds = %if.then95.7, %if.then.7
  %condval.sroa.0.0.7 = phi i32 [ %condval.sroa.0.0.copyload.7, %if.then95.7 ], [ 0, %if.then.7 ], !dbg !81
  %condval.sroa.5.0.7 = phi i32 [ %condval.sroa.5.0.copyload.7, %if.then95.7 ], [ 0, %if.then.7 ], !dbg !81
  %condval.sroa.6.0.7 = phi i32 [ %condval.sroa.6.0.copyload.7, %if.then95.7 ], [ 0, %if.then.7 ], !dbg !81
  %condval.sroa.7.0.7 = phi i32 [ %condval.sroa.7.0.copyload.7, %if.then95.7 ], [ 0, %if.then.7 ], !dbg !81
  store i32 %condval.sroa.0.0.7, ptr addrspace(3) %invariant.gep854, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 4, !dbg !82
  store i32 %condval.sroa.5.0.7, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.7, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 8, !dbg !82
  store i32 %condval.sroa.6.0.7, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.7, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 12, !dbg !82
  store i32 %condval.sroa.7.0.7, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.7, align 4, !dbg !82, !tbaa !30
  %cmp94.1.7 = icmp ult i32 %add91.7, 1016, !dbg !77
  br i1 %cmp94.1.7, label %if.then95.1.7, label %if.end.1.7, !dbg !78

if.then95.1.7:                                    ; preds = %if.end.7
  %add100.1.7 = or disjoint i64 %mul97, 512
  %gep865.1.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.7, i64 %add100.1.7
  %condval.sroa.7.0.add.ptr108.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1.7, i64 12
  %condval.sroa.6.0.add.ptr108.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1.7, i64 8
  %condval.sroa.5.0.add.ptr108.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep865.1.7, i64 4
  %condval.sroa.0.0.copyload.1.7 = load i32, ptr addrspace(4) %gep865.1.7, align 16, !dbg !79, !tbaa !30
  %condval.sroa.5.0.copyload.1.7 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr108.sroa_idx.1.7, align 4, !dbg !79, !tbaa !30
  %condval.sroa.6.0.copyload.1.7 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr108.sroa_idx.1.7, align 8, !dbg !79, !tbaa !30
  %condval.sroa.7.0.copyload.1.7 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr108.sroa_idx.1.7, align 4, !dbg !79, !tbaa !30
  br label %if.end.1.7, !dbg !80

if.end.1.7:                                       ; preds = %if.then95.1.7, %if.end.7
  %condval.sroa.0.0.1.7 = phi i32 [ %condval.sroa.0.0.copyload.1.7, %if.then95.1.7 ], [ 0, %if.end.7 ], !dbg !81
  %condval.sroa.5.0.1.7 = phi i32 [ %condval.sroa.5.0.copyload.1.7, %if.then95.1.7 ], [ 0, %if.end.7 ], !dbg !81
  %condval.sroa.6.0.1.7 = phi i32 [ %condval.sroa.6.0.copyload.1.7, %if.then95.1.7 ], [ 0, %if.end.7 ], !dbg !81
  %condval.sroa.7.0.1.7 = phi i32 [ %condval.sroa.7.0.copyload.1.7, %if.then95.1.7 ], [ 0, %if.end.7 ], !dbg !81
  store i32 %condval.sroa.0.0.1.7, ptr addrspace(3) %gep855.1, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.add.ptr142.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1028, !dbg !82
  store i32 %condval.sroa.5.0.1.7, ptr addrspace(3) %condval.sroa.5.0.add.ptr142.sroa_idx.1.7, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.add.ptr142.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1032, !dbg !82
  store i32 %condval.sroa.6.0.1.7, ptr addrspace(3) %condval.sroa.6.0.add.ptr142.sroa_idx.1.7, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.add.ptr142.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep854, i32 1036, !dbg !82
  store i32 %condval.sroa.7.0.1.7, ptr addrspace(3) %condval.sroa.7.0.add.ptr142.sroa_idx.1.7, align 4, !dbg !82, !tbaa !30
  fence syncscope("warp") release, !dbg !83
  tail call void @llvm.mxc.barrier.warp(), !dbg !86
  fence syncscope("warp") acquire, !dbg !87
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !88
  %621 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %6, <4 x float> zeroinitializer), !dbg !89
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !88
  %622 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %7, <4 x float> %621), !dbg !89
  %k_local.sroa.0.0.copyload.2.7 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !88
  %623 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.7, <4 x half> %8, <4 x float> %622), !dbg !89
  %k_local.sroa.0.0.copyload.3.7 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !88
  %624 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.7, <4 x half> %9, <4 x float> %623), !dbg !89
  %add194.7 = add nuw nsw i32 %mul81.7, %mul193
  %cmp197.not.7 = icmp sgt i32 %add194.7, %1, !dbg !90
  %scores.sroa.0.0.vec.extract2139 = extractelement <4 x float> %624, i64 0
  %spec.select3039 = select i1 %cmp197.not.7, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2139, !dbg !91
  %cmp197.not.1.7.not = icmp slt i32 %add194.7, %1, !dbg !90
  %scores.sroa.0.4.vec.extract2218 = extractelement <4 x float> %624, i64 1, !dbg !91
  %condval_1.0.1.7 = select i1 %cmp197.not.1.7.not, float %scores.sroa.0.4.vec.extract2218, float 0xFFF0000000000000, !dbg !91
  %add195.2.7 = or disjoint i32 %add194.7, 2, !dbg !92
  %cmp197.not.2.7 = icmp sgt i32 %add195.2.7, %1, !dbg !90
  %scores.sroa.0.8.vec.extract2295 = extractelement <4 x float> %624, i64 2, !dbg !91
  %condval_1.0.2.7 = select i1 %cmp197.not.2.7, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2295, !dbg !91
  %add195.3.7 = or disjoint i32 %add194.7, 3, !dbg !92
  %cmp197.not.3.7 = icmp sgt i32 %add195.3.7, %1, !dbg !90
  %scores.sroa.0.12.vec.extract2372 = extractelement <4 x float> %624, i64 3, !dbg !91
  %condval_1.0.3.7 = select i1 %cmp197.not.3.7, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2372, !dbg !91
  %625 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select3039, float 0xFFF0000000000000), !dbg !93
  %626 = tail call contract noundef float @llvm.maxnum.f32(float %625, float %condval_1.0.1.7), !dbg !93
  %627 = tail call contract noundef float @llvm.maxnum.f32(float %626, float %condval_1.0.2.7), !dbg !93
  %628 = tail call contract noundef float @llvm.maxnum.f32(float %627, float %condval_1.0.3.7), !dbg !93
  %629 = bitcast float %628 to i32, !dbg !97
  %630 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !100
  %631 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %630) #11, !dbg !105
  %xor.i.i.7 = xor i32 %631, 32, !dbg !106
  %632 = and i32 %631, -64, !dbg !107
  %and.i.i.7 = add nsw i32 %632, 64, !dbg !107
  %cmp.not.i.i.7 = icmp slt i32 %xor.i.i.7, %and.i.i.7, !dbg !108
  %cond.i.i.7 = select i1 %cmp.not.i.i.7, i32 %xor.i.i.7, i32 %631, !dbg !109
  %shl.i.i.7 = shl i32 %cond.i.i.7, 2, !dbg !110
  %633 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.7, i32 %629), !dbg !111
  %634 = bitcast i32 %633 to float, !dbg !112
  %635 = tail call contract noundef float @llvm.maxnum.f32(float %628, float %634), !dbg !113
  %636 = bitcast float %635 to i32, !dbg !115
  %637 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !117
  %638 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %637) #11, !dbg !120
  %xor.i.i783.7 = xor i32 %638, 16, !dbg !121
  %639 = and i32 %638, -64, !dbg !122
  %and.i.i784.7 = add nsw i32 %639, 64, !dbg !122
  %cmp.not.i.i785.7 = icmp slt i32 %xor.i.i783.7, %and.i.i784.7, !dbg !123
  %cond.i.i786.7 = select i1 %cmp.not.i.i785.7, i32 %xor.i.i783.7, i32 %638, !dbg !124
  %shl.i.i787.7 = shl i32 %cond.i.i786.7, 2, !dbg !125
  %640 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i787.7, i32 %636), !dbg !126
  %641 = bitcast i32 %640 to float, !dbg !127
  %642 = tail call contract noundef float @llvm.maxnum.f32(float %635, float %641), !dbg !128
  %643 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.6, float %642), !dbg !130
  %sub.7 = fsub contract float %maximum.sroa.0.1.6, %643, !dbg !132
  %mul241.7 = fmul contract float %sub.7, 0x3FC7154760000000, !dbg !133
  %cmp.i.i.7 = fcmp contract olt float %mul241.7, -1.260000e+02, !dbg !134
  %cond.i.i788.7 = select contract i1 %cmp.i.i.7, float 6.400000e+01, float 0.000000e+00, !dbg !134
  %add.i.i.7 = fadd contract float %mul241.7, %cond.i.i788.7, !dbg !134
  %644 = tail call contract float @llvm.exp2.f32(float %add.i.i.7), !dbg !134
  %cond2.i.i.7 = select contract i1 %cmp.i.i.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !134
  %mul.i.i.7 = fmul contract float %cond2.i.i.7, %644, !dbg !134
  %numerator.sroa.0.0.vec.extract2413 = extractelement <4 x float> %numerator.sroa.0.6, i64 0, !dbg !245
  %numerator.sroa.0.4.vec.extract2450 = extractelement <4 x float> %numerator.sroa.0.6, i64 1, !dbg !245
  %numerator.sroa.0.8.vec.extract2487 = extractelement <4 x float> %numerator.sroa.0.6, i64 2, !dbg !245
  %numerator.sroa.0.12.vec.extract2524 = extractelement <4 x float> %numerator.sroa.0.6, i64 3, !dbg !245
  %mul258.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.0.vec.extract2413, !dbg !137
  %mul261.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.4.vec.extract2450, !dbg !246
  %mul264.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.8.vec.extract2487, !dbg !247
  %mul267.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.12.vec.extract2524, !dbg !248
  %numerator.sroa.0.0.vec.insert2415 = insertelement <4 x float> poison, float %mul258.7, i64 0, !dbg !138
  %numerator.sroa.0.4.vec.insert2452 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2415, float %mul261.7, i64 1, !dbg !138
  %numerator.sroa.0.8.vec.insert2489 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2452, float %mul264.7, i64 2, !dbg !138
  %numerator.sroa.0.12.vec.insert2526 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2489, float %mul267.7, i64 3, !dbg !138
  %numerator.sroa.98.16.vec.extract2569 = extractelement <4 x float> %numerator.sroa.98.6, i64 0, !dbg !245
  %numerator.sroa.98.20.vec.extract2606 = extractelement <4 x float> %numerator.sroa.98.6, i64 1, !dbg !245
  %numerator.sroa.98.24.vec.extract2643 = extractelement <4 x float> %numerator.sroa.98.6, i64 2, !dbg !245
  %numerator.sroa.98.28.vec.extract2680 = extractelement <4 x float> %numerator.sroa.98.6, i64 3, !dbg !245
  %mul258.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.16.vec.extract2569, !dbg !137
  %mul261.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.20.vec.extract2606, !dbg !246
  %mul264.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.24.vec.extract2643, !dbg !247
  %mul267.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.28.vec.extract2680, !dbg !248
  %numerator.sroa.98.16.vec.insert2571 = insertelement <4 x float> poison, float %mul258.1.7, i64 0, !dbg !138
  %numerator.sroa.98.20.vec.insert2608 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2571, float %mul261.1.7, i64 1, !dbg !138
  %numerator.sroa.98.24.vec.insert2645 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2608, float %mul264.1.7, i64 2, !dbg !138
  %numerator.sroa.98.28.vec.insert2682 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2645, float %mul267.1.7, i64 3, !dbg !138
  %numerator.sroa.194.32.vec.extract2725 = extractelement <4 x float> %numerator.sroa.194.6, i64 0, !dbg !245
  %numerator.sroa.194.36.vec.extract2762 = extractelement <4 x float> %numerator.sroa.194.6, i64 1, !dbg !245
  %numerator.sroa.194.40.vec.extract2799 = extractelement <4 x float> %numerator.sroa.194.6, i64 2, !dbg !245
  %numerator.sroa.194.44.vec.extract2836 = extractelement <4 x float> %numerator.sroa.194.6, i64 3, !dbg !245
  %mul258.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.32.vec.extract2725, !dbg !137
  %mul261.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.36.vec.extract2762, !dbg !246
  %mul264.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.40.vec.extract2799, !dbg !247
  %mul267.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.44.vec.extract2836, !dbg !248
  %numerator.sroa.194.32.vec.insert2727 = insertelement <4 x float> poison, float %mul258.2.7, i64 0, !dbg !138
  %numerator.sroa.194.36.vec.insert2764 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2727, float %mul261.2.7, i64 1, !dbg !138
  %numerator.sroa.194.40.vec.insert2801 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2764, float %mul264.2.7, i64 2, !dbg !138
  %numerator.sroa.194.44.vec.insert2838 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2801, float %mul267.2.7, i64 3, !dbg !138
  %numerator.sroa.290.48.vec.extract2881 = extractelement <4 x float> %numerator.sroa.290.6, i64 0, !dbg !245
  %numerator.sroa.290.52.vec.extract2918 = extractelement <4 x float> %numerator.sroa.290.6, i64 1, !dbg !245
  %numerator.sroa.290.56.vec.extract2955 = extractelement <4 x float> %numerator.sroa.290.6, i64 2, !dbg !245
  %numerator.sroa.290.60.vec.extract2992 = extractelement <4 x float> %numerator.sroa.290.6, i64 3, !dbg !245
  %mul258.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.48.vec.extract2881, !dbg !137
  %mul261.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.52.vec.extract2918, !dbg !246
  %mul264.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.56.vec.extract2955, !dbg !247
  %mul267.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.60.vec.extract2992, !dbg !248
  %numerator.sroa.290.48.vec.insert2883 = insertelement <4 x float> poison, float %mul258.3.7, i64 0, !dbg !138
  %numerator.sroa.290.52.vec.insert2920 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2883, float %mul261.3.7, i64 1, !dbg !138
  %numerator.sroa.290.56.vec.insert2957 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2920, float %mul264.3.7, i64 2, !dbg !138
  %numerator.sroa.290.60.vec.insert2994 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2957, float %mul267.3.7, i64 3, !dbg !138
  %sub291.7 = fsub contract float %spec.select3039, %643, !dbg !139
  %sub295.7 = fsub contract float %condval_1.0.1.7, %643, !dbg !140
  %sub299.7 = fsub contract float %condval_1.0.2.7, %643, !dbg !141
  %sub303.7 = fsub contract float %condval_1.0.3.7, %643, !dbg !142
  %mul308.7 = fmul contract float %sub291.7, 0x3FC7154760000000, !dbg !143
  %mul312.7 = fmul contract float %sub295.7, 0x3FC7154760000000, !dbg !144
  %mul316.7 = fmul contract float %sub299.7, 0x3FC7154760000000, !dbg !145
  %mul320.7 = fmul contract float %sub303.7, 0x3FC7154760000000, !dbg !146
  %add325.7 = fadd contract float %mul308.7, 8.000000e+00, !dbg !147
  %add329.7 = fadd contract float %mul312.7, 8.000000e+00, !dbg !148
  %add333.7 = fadd contract float %mul316.7, 8.000000e+00, !dbg !149
  %add337.7 = fadd contract float %mul320.7, 8.000000e+00, !dbg !150
  %cmp.i.i793.7 = fcmp contract olt float %add325.7, -1.260000e+02, !dbg !151
  %cond.i.i794.7 = select contract i1 %cmp.i.i793.7, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i795.7 = fadd contract float %add325.7, %cond.i.i794.7, !dbg !151
  %645 = tail call contract float @llvm.exp2.f32(float %add.i.i795.7), !dbg !151
  %cond2.i.i796.7 = select contract i1 %cmp.i.i793.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i797.7 = fmul contract float %cond2.i.i796.7, %645, !dbg !151
  %cmp.i.i798.7 = fcmp contract olt float %add329.7, -1.260000e+02, !dbg !153
  %cond.i.i799.7 = select contract i1 %cmp.i.i798.7, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i800.7 = fadd contract float %add329.7, %cond.i.i799.7, !dbg !153
  %646 = tail call contract float @llvm.exp2.f32(float %add.i.i800.7), !dbg !153
  %cond2.i.i801.7 = select contract i1 %cmp.i.i798.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i802.7 = fmul contract float %cond2.i.i801.7, %646, !dbg !153
  %cmp.i.i803.7 = fcmp contract olt float %add333.7, -1.260000e+02, !dbg !155
  %cond.i.i804.7 = select contract i1 %cmp.i.i803.7, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i805.7 = fadd contract float %add333.7, %cond.i.i804.7, !dbg !155
  %647 = tail call contract float @llvm.exp2.f32(float %add.i.i805.7), !dbg !155
  %cond2.i.i806.7 = select contract i1 %cmp.i.i803.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i807.7 = fmul contract float %cond2.i.i806.7, %647, !dbg !155
  %cmp.i.i808.7 = fcmp contract olt float %add337.7, -1.260000e+02, !dbg !157
  %cond.i.i809.7 = select contract i1 %cmp.i.i808.7, float 6.400000e+01, float 0.000000e+00, !dbg !157
  %add.i.i810.7 = fadd contract float %add337.7, %cond.i.i809.7, !dbg !157
  %648 = tail call contract float @llvm.exp2.f32(float %add.i.i810.7), !dbg !157
  %cond2.i.i811.7 = select contract i1 %cmp.i.i808.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !157
  %mul.i.i812.7 = fmul contract float %cond2.i.i811.7, %648, !dbg !157
  %649 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !159
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !159, !noalias !167
  %650 = fptrunc float %mul.i.i797.7 to half, !dbg !159
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %649), !dbg !159, !noalias !167
  %651 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !167
  %652 = fptrunc float %mul.i.i802.7 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %651), !dbg !172, !noalias !167
  %653 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !174, !noalias !178
  %654 = fptrunc float %mul.i.i807.7 to half, !dbg !174
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %653), !dbg !174, !noalias !178
  %655 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !183, !noalias !178
  %656 = fptrunc float %mul.i.i812.7 to half, !dbg !183
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %655), !dbg !183, !noalias !178
  %657 = insertelement <4 x half> poison, half %650, i64 0, !dbg !185
  %658 = insertelement <4 x half> %657, half %652, i64 1, !dbg !185
  %659 = insertelement <4 x half> %658, half %654, i64 2, !dbg !185
  %660 = insertelement <4 x half> %659, half %656, i64 3, !dbg !185
  %conv.i.i.7 = fpext half %650 to float, !dbg !186
  %add372.7 = fadd contract float %conv.i.i.7, 0.000000e+00, !dbg !191
  %conv.i.i.1.7 = fpext half %652 to float, !dbg !186
  %add372.1.7 = fadd contract float %add372.7, %conv.i.i.1.7, !dbg !191
  %conv.i.i.2.7 = fpext half %654 to float, !dbg !186
  %add372.2.7 = fadd contract float %add372.1.7, %conv.i.i.2.7, !dbg !191
  %conv.i.i.3.7 = fpext half %656 to float, !dbg !186
  %add372.3.7 = fadd contract float %add372.2.7, %conv.i.i.3.7, !dbg !191
  %661 = bitcast float %add372.3.7 to i32, !dbg !192
  %662 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !194
  %663 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %662) #11, !dbg !197
  %xor.i.i818.7 = xor i32 %663, 32, !dbg !198
  %664 = and i32 %663, -64, !dbg !199
  %and.i.i819.7 = add nsw i32 %664, 64, !dbg !199
  %cmp.not.i.i820.7 = icmp slt i32 %xor.i.i818.7, %and.i.i819.7, !dbg !200
  %cond.i.i821.7 = select i1 %cmp.not.i.i820.7, i32 %xor.i.i818.7, i32 %663, !dbg !201
  %shl.i.i822.7 = shl i32 %cond.i.i821.7, 2, !dbg !202
  %665 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i822.7, i32 %661), !dbg !203
  %666 = bitcast i32 %665 to float, !dbg !204
  %add380.7 = fadd contract float %add372.3.7, %666, !dbg !205
  %667 = bitcast float %add380.7 to i32, !dbg !206
  %668 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !208
  %669 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %668) #11, !dbg !211
  %xor.i.i823.7 = xor i32 %669, 16, !dbg !212
  %670 = and i32 %669, -64, !dbg !213
  %and.i.i824.7 = add nsw i32 %670, 64, !dbg !213
  %cmp.not.i.i825.7 = icmp slt i32 %xor.i.i823.7, %and.i.i824.7, !dbg !214
  %cond.i.i826.7 = select i1 %cmp.not.i.i825.7, i32 %xor.i.i823.7, i32 %669, !dbg !215
  %shl.i.i827.7 = shl i32 %cond.i.i826.7, 2, !dbg !216
  %671 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i827.7, i32 %667), !dbg !217
  %672 = bitcast i32 %671 to float, !dbg !218
  %add385.7 = fadd contract float %add380.7, %672, !dbg !219
  fence syncscope("warp") release, !dbg !220
  tail call void @llvm.mxc.barrier.warp(), !dbg !223
  fence syncscope("warp") acquire, !dbg !224
  %shr398.7 = lshr exact i32 %mul81.7, 2
  %add399.7 = add nuw nsw i32 %shr398.7, %shr396
  %cmp400.7 = icmp ult i32 %add399.7, 256
  br i1 %cmp400.7, label %if.then401.7, label %if.end435.7, !dbg !225

if.then401.7:                                     ; preds = %if.end.1.7
  %673 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %674 = getelementptr inbounds i8, ptr addrspace(4) %673, i64 %.idx.7, !dbg !226
  %condval_2.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %674, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %674, i64 4, !dbg !227
  %condval_2.sroa.5.0.copyload.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.7, align 4, !dbg !227, !tbaa !30
  br label %if.end435.7, !dbg !228

if.end435.7:                                      ; preds = %if.then401.7, %if.end.1.7
  %condval_2.sroa.0.0.7 = phi i32 [ %condval_2.sroa.0.0.copyload.7, %if.then401.7 ], [ 0, %if.end.1.7 ], !dbg !81
  %condval_2.sroa.5.0.7 = phi i32 [ %condval_2.sroa.5.0.copyload.7, %if.then401.7 ], [ 0, %if.end.1.7 ], !dbg !81
  br i1 %cmp400.7, label %if.then401.1.7, label %if.end435.1.7, !dbg !225

if.then401.1.7:                                   ; preds = %if.end435.7
  %675 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %676 = getelementptr inbounds i8, ptr addrspace(4) %675, i64 %.idx.7, !dbg !226
  %add.ptr421.1.7 = getelementptr inbounds i8, ptr addrspace(4) %676, i64 128, !dbg !226
  %condval_2.sroa.0.0.copyload.1.7 = load i32, ptr addrspace(4) %add.ptr421.1.7, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %676, i64 132, !dbg !227
  %condval_2.sroa.5.0.copyload.1.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.1.7, align 4, !dbg !227, !tbaa !30
  br label %if.end435.1.7, !dbg !228

if.end435.1.7:                                    ; preds = %if.then401.1.7, %if.end435.7
  %condval_2.sroa.0.0.1.7 = phi i32 [ %condval_2.sroa.0.0.copyload.1.7, %if.then401.1.7 ], [ 0, %if.end435.7 ], !dbg !81
  %condval_2.sroa.5.0.1.7 = phi i32 [ %condval_2.sroa.5.0.copyload.1.7, %if.then401.1.7 ], [ 0, %if.end435.7 ], !dbg !81
  br i1 %cmp400.7, label %if.then401.2.7, label %if.end435.2.7, !dbg !225

if.then401.2.7:                                   ; preds = %if.end435.1.7
  %677 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %678 = getelementptr inbounds i8, ptr addrspace(4) %677, i64 %.idx.7, !dbg !226
  %add.ptr421.2.7 = getelementptr inbounds i8, ptr addrspace(4) %678, i64 256, !dbg !226
  %condval_2.sroa.0.0.copyload.2.7 = load i32, ptr addrspace(4) %add.ptr421.2.7, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.2.7 = getelementptr inbounds i8, ptr addrspace(4) %678, i64 260, !dbg !227
  %condval_2.sroa.5.0.copyload.2.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.2.7, align 4, !dbg !227, !tbaa !30
  br label %if.end435.2.7, !dbg !228

if.end435.2.7:                                    ; preds = %if.then401.2.7, %if.end435.1.7
  %condval_2.sroa.0.0.2.7 = phi i32 [ %condval_2.sroa.0.0.copyload.2.7, %if.then401.2.7 ], [ 0, %if.end435.1.7 ], !dbg !81
  %condval_2.sroa.5.0.2.7 = phi i32 [ %condval_2.sroa.5.0.copyload.2.7, %if.then401.2.7 ], [ 0, %if.end435.1.7 ], !dbg !81
  br i1 %cmp400.7, label %if.then401.3.7, label %if.end435.3.7, !dbg !225

if.then401.3.7:                                   ; preds = %if.end435.2.7
  %679 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add412, !dbg !226
  %680 = getelementptr inbounds i8, ptr addrspace(4) %679, i64 %.idx.7, !dbg !226
  %add.ptr421.3.7 = getelementptr inbounds i8, ptr addrspace(4) %680, i64 384, !dbg !226
  %condval_2.sroa.0.0.copyload.3.7 = load i32, ptr addrspace(4) %add.ptr421.3.7, align 8, !dbg !227, !tbaa !30
  %condval_2.sroa.5.0.add.ptr421.sroa_idx.3.7 = getelementptr inbounds i8, ptr addrspace(4) %680, i64 388, !dbg !227
  %condval_2.sroa.5.0.copyload.3.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr421.sroa_idx.3.7, align 4, !dbg !227, !tbaa !30
  br label %if.end435.3.7, !dbg !228

if.end435.3.7:                                    ; preds = %if.then401.3.7, %if.end435.2.7
  %condval_2.sroa.0.0.3.7 = phi i32 [ %condval_2.sroa.0.0.copyload.3.7, %if.then401.3.7 ], [ 0, %if.end435.2.7 ], !dbg !81
  %condval_2.sroa.5.0.3.7 = phi i32 [ %condval_2.sroa.5.0.copyload.3.7, %if.then401.3.7 ], [ 0, %if.end435.2.7 ], !dbg !81
  %mul278.7 = fmul contract float %denominator.sroa.0.1.6, %mul.i.i.7, !dbg !249
  %681 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul465, !dbg !229
  %add.ptr477.idx.7 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.7 = getelementptr inbounds i8, ptr addrspace(3) %681, i32 %add.ptr477.idx.7, !dbg !229
  %682 = and i32 %condval_2.sroa.0.0.3.7, 65535, !dbg !230
  %v_column.sroa.130.0.insert.ext1630 = zext nneg i32 %682 to i64, !dbg !230
  %v_column.sroa.130.0.insert.shift1631 = shl nuw i64 %v_column.sroa.130.0.insert.ext1630, 48, !dbg !230
  %683 = and i32 %condval_2.sroa.0.0.2.7, 65535, !dbg !230
  %v_column.sroa.98.0.insert.ext1475 = zext nneg i32 %683 to i64, !dbg !230
  %v_column.sroa.98.0.insert.shift1476 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1475, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1478 = or disjoint i64 %v_column.sroa.130.0.insert.shift1631, %v_column.sroa.98.0.insert.shift1476, !dbg !230
  %684 = shl i32 %condval_2.sroa.0.0.1.7, 16, !dbg !230
  %v_column.sroa.66.0.insert.shift1321 = zext i32 %684 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1323 = or disjoint i64 %v_column.sroa.98.0.insert.insert1478, %v_column.sroa.66.0.insert.shift1321, !dbg !230
  %685 = and i32 %condval_2.sroa.0.0.7, 65535, !dbg !230
  %v_column.sroa.0.0.insert.ext1169 = zext nneg i32 %685 to i64, !dbg !230
  %v_column.sroa.0.0.insert.insert1171 = or disjoint i64 %v_column.sroa.66.0.insert.insert1323, %v_column.sroa.0.0.insert.ext1169, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1171, ptr addrspace(3) %add.ptr477.7, align 8, !dbg !230
  %v_fetch.sroa.0.2.extract.shift1742 = lshr i32 %condval_2.sroa.0.0.7, 16, !dbg !231
  %v_fetch.sroa.0.2.extract.trunc1743 = zext nneg i32 %v_fetch.sroa.0.2.extract.shift1742 to i64, !dbg !231
  %v_fetch.sroa.50.10.extract.shift1812 = and i32 %condval_2.sroa.0.0.1.7, -65536, !dbg !230
  %v_fetch.sroa.98.18.extract.shift1882 = lshr i32 %condval_2.sroa.0.0.2.7, 16, !dbg !231
  %v_fetch.sroa.98.18.extract.trunc1883 = zext nneg i32 %v_fetch.sroa.98.18.extract.shift1882 to i64, !dbg !231
  %v_fetch.sroa.146.26.extract.shift1952 = lshr i32 %condval_2.sroa.0.0.3.7, 16, !dbg !231
  %v_fetch.sroa.146.26.extract.trunc1953 = zext nneg i32 %v_fetch.sroa.146.26.extract.shift1952 to i64, !dbg !231
  %add466.1.7 = or disjoint i32 %mul465, 256, !dbg !232
  %686 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.1.7, !dbg !229
  %xor473.1.7 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.1.7 = xor i32 %xor473.1.7, 8, !dbg !229
  %add.ptr477.1.7 = getelementptr inbounds i8, ptr addrspace(3) %686, i32 %add.ptr477.idx.1.7, !dbg !229
  %v_column.sroa.130.0.insert.shift1636 = shl nuw i64 %v_fetch.sroa.146.26.extract.trunc1953, 48, !dbg !230
  %v_column.sroa.98.0.insert.shift1481 = shl nuw nsw i64 %v_fetch.sroa.98.18.extract.trunc1883, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1483 = or disjoint i64 %v_column.sroa.130.0.insert.shift1636, %v_column.sroa.98.0.insert.shift1481, !dbg !230
  %v_column.sroa.66.0.insert.shift1326 = zext i32 %v_fetch.sroa.50.10.extract.shift1812 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1328 = or disjoint i64 %v_column.sroa.98.0.insert.insert1483, %v_column.sroa.66.0.insert.shift1326, !dbg !230
  %v_column.sroa.0.0.insert.insert1175 = or disjoint i64 %v_column.sroa.66.0.insert.insert1328, %v_fetch.sroa.0.2.extract.trunc1743, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1175, ptr addrspace(3) %add.ptr477.1.7, align 8, !dbg !230
  %add466.2.7 = or disjoint i32 %mul465, 512, !dbg !232
  %687 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.2.7, !dbg !229
  %xor473.2.7 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.2.7 = xor i32 %xor473.2.7, 16, !dbg !229
  %add.ptr477.2.7 = getelementptr inbounds i8, ptr addrspace(3) %687, i32 %add.ptr477.idx.2.7, !dbg !229
  %688 = and i32 %condval_2.sroa.5.0.3.7, 65535, !dbg !230
  %v_column.sroa.130.0.insert.ext1640 = zext nneg i32 %688 to i64, !dbg !230
  %v_column.sroa.130.0.insert.shift1641 = shl nuw i64 %v_column.sroa.130.0.insert.ext1640, 48, !dbg !230
  %689 = and i32 %condval_2.sroa.5.0.2.7, 65535, !dbg !230
  %v_column.sroa.98.0.insert.ext1485 = zext nneg i32 %689 to i64, !dbg !230
  %v_column.sroa.98.0.insert.shift1486 = shl nuw nsw i64 %v_column.sroa.98.0.insert.ext1485, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1488 = or disjoint i64 %v_column.sroa.130.0.insert.shift1641, %v_column.sroa.98.0.insert.shift1486, !dbg !230
  %690 = shl i32 %condval_2.sroa.5.0.1.7, 16, !dbg !230
  %v_column.sroa.66.0.insert.shift1331 = zext i32 %690 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1333 = or disjoint i64 %v_column.sroa.98.0.insert.insert1488, %v_column.sroa.66.0.insert.shift1331, !dbg !230
  %691 = and i32 %condval_2.sroa.5.0.7, 65535, !dbg !230
  %v_column.sroa.0.0.insert.ext1177 = zext nneg i32 %691 to i64, !dbg !230
  %v_column.sroa.0.0.insert.insert1179 = or disjoint i64 %v_column.sroa.66.0.insert.insert1333, %v_column.sroa.0.0.insert.ext1177, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1179, ptr addrspace(3) %add.ptr477.2.7, align 8, !dbg !230
  %v_fetch.sroa.26.6.extract.shift1777 = lshr i32 %condval_2.sroa.5.0.7, 16, !dbg !231
  %v_fetch.sroa.26.6.extract.trunc1778 = zext nneg i32 %v_fetch.sroa.26.6.extract.shift1777 to i64, !dbg !231
  %v_fetch.sroa.74.14.extract.shift1847 = and i32 %condval_2.sroa.5.0.1.7, -65536, !dbg !230
  %v_fetch.sroa.122.22.extract.shift1917 = lshr i32 %condval_2.sroa.5.0.2.7, 16, !dbg !231
  %v_fetch.sroa.122.22.extract.trunc1918 = zext nneg i32 %v_fetch.sroa.122.22.extract.shift1917 to i64, !dbg !231
  %v_fetch.sroa.170.30.extract.shift1987 = lshr i32 %condval_2.sroa.5.0.3.7, 16, !dbg !231
  %v_fetch.sroa.170.30.extract.trunc1988 = zext nneg i32 %v_fetch.sroa.170.30.extract.shift1987 to i64, !dbg !231
  %add466.3.7 = or disjoint i32 %mul465, 768, !dbg !232
  %692 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add466.3.7, !dbg !229
  %xor473.3.7 = shl nuw nsw i32 %xor472, 3, !dbg !229
  %add.ptr477.idx.3.7 = xor i32 %xor473.3.7, 24, !dbg !229
  %add.ptr477.3.7 = getelementptr inbounds i8, ptr addrspace(3) %692, i32 %add.ptr477.idx.3.7, !dbg !229
  %v_column.sroa.130.0.insert.shift1646 = shl nuw i64 %v_fetch.sroa.170.30.extract.trunc1988, 48, !dbg !230
  %v_column.sroa.98.0.insert.shift1491 = shl nuw nsw i64 %v_fetch.sroa.122.22.extract.trunc1918, 32, !dbg !230
  %v_column.sroa.98.0.insert.insert1493 = or disjoint i64 %v_column.sroa.130.0.insert.shift1646, %v_column.sroa.98.0.insert.shift1491, !dbg !230
  %v_column.sroa.66.0.insert.shift1336 = zext i32 %v_fetch.sroa.74.14.extract.shift1847 to i64, !dbg !230
  %v_column.sroa.66.0.insert.insert1338 = or disjoint i64 %v_column.sroa.98.0.insert.insert1493, %v_column.sroa.66.0.insert.shift1336, !dbg !230
  %v_column.sroa.0.0.insert.insert1183 = or disjoint i64 %v_column.sroa.66.0.insert.insert1338, %v_fetch.sroa.26.6.extract.trunc1778, !dbg !230
  store i64 %v_column.sroa.0.0.insert.insert1183, ptr addrspace(3) %add.ptr477.3.7, align 8, !dbg !230
  fence syncscope("warp") release, !dbg !233
  tail call void @llvm.mxc.barrier.warp(), !dbg !236
  fence syncscope("warp") acquire, !dbg !237
  %add494.7 = or disjoint i32 %mul487, %mul493, !dbg !238
  %693 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.7, !dbg !239
  %add.ptr504.idx.7 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.7 = getelementptr inbounds i8, ptr addrspace(3) %693, i32 %add.ptr504.idx.7, !dbg !239
  %694 = load <4 x half>, ptr addrspace(3) %add.ptr504.7, align 8, !dbg !240
  %add489.1.7 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.1.7 = or disjoint i32 %add489.1.7, 64, !dbg !238
  %695 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.1.7, !dbg !239
  %xor500.1.7 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.1.7 = xor i32 %xor500.1.7, 8, !dbg !239
  %add.ptr504.1.7 = getelementptr inbounds i8, ptr addrspace(3) %695, i32 %add.ptr504.idx.1.7, !dbg !239
  %696 = load <4 x half>, ptr addrspace(3) %add.ptr504.1.7, align 8, !dbg !240
  %add489.2.7 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.2.7 = or disjoint i32 %add489.2.7, 128, !dbg !238
  %697 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.2.7, !dbg !239
  %xor500.2.7 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.2.7 = xor i32 %xor500.2.7, 16, !dbg !239
  %add.ptr504.2.7 = getelementptr inbounds i8, ptr addrspace(3) %697, i32 %add.ptr504.idx.2.7, !dbg !239
  %698 = load <4 x half>, ptr addrspace(3) %add.ptr504.2.7, align 8, !dbg !240
  %add489.3.7 = or disjoint i32 %mul487, %mul493, !dbg !238
  %add494.3.7 = or disjoint i32 %add489.3.7, 192, !dbg !238
  %699 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add494.3.7, !dbg !239
  %xor500.3.7 = shl nuw nsw i32 %16, 3, !dbg !239
  %add.ptr504.idx.3.7 = xor i32 %xor500.3.7, 24, !dbg !239
  %add.ptr504.3.7 = getelementptr inbounds i8, ptr addrspace(3) %699, i32 %add.ptr504.idx.3.7, !dbg !239
  %700 = load <4 x half>, ptr addrspace(3) %add.ptr504.3.7, align 8, !dbg !240
  %701 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %694, <4 x half> %660, <4 x float> %numerator.sroa.0.12.vec.insert2526), !dbg !241
  %702 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %696, <4 x half> %660, <4 x float> %numerator.sroa.98.28.vec.insert2682), !dbg !241
  %703 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %698, <4 x half> %660, <4 x float> %numerator.sroa.194.44.vec.insert2838), !dbg !241
  %704 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %700, <4 x half> %660, <4 x float> %numerator.sroa.290.60.vec.insert2994), !dbg !241
  %add389.7 = fadd contract float %mul278.7, %add385.7, !dbg !242
  br label %if.end530.7, !dbg !243

if.end530.7:                                      ; preds = %if.end435.3.7, %if.end530.6
  %numerator.sroa.290.7 = phi <4 x float> [ %numerator.sroa.290.6, %if.end530.6 ], [ %704, %if.end435.3.7 ], !dbg !81
  %numerator.sroa.194.7 = phi <4 x float> [ %numerator.sroa.194.6, %if.end530.6 ], [ %703, %if.end435.3.7 ], !dbg !81
  %numerator.sroa.98.7 = phi <4 x float> [ %numerator.sroa.98.6, %if.end530.6 ], [ %702, %if.end435.3.7 ], !dbg !81
  %numerator.sroa.0.7 = phi <4 x float> [ %numerator.sroa.0.6, %if.end530.6 ], [ %701, %if.end435.3.7 ], !dbg !81
  %denominator.sroa.0.1.7 = phi float [ %denominator.sroa.0.1.6, %if.end530.6 ], [ %add389.7, %if.end435.3.7 ], !dbg !81
  %numerator.sroa.0.0.vec.extract2419 = extractelement <4 x float> %numerator.sroa.0.7, i64 0, !dbg !250
  %numerator.sroa.0.4.vec.extract2456 = extractelement <4 x float> %numerator.sroa.0.7, i64 1, !dbg !250
  %numerator.sroa.0.8.vec.extract2493 = extractelement <4 x float> %numerator.sroa.0.7, i64 2, !dbg !250
  %numerator.sroa.0.12.vec.extract2530 = extractelement <4 x float> %numerator.sroa.0.7, i64 3, !dbg !250
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract2419, %denominator.sroa.0.1.7, !dbg !251
  %div552 = fdiv contract float %numerator.sroa.0.4.vec.extract2456, %denominator.sroa.0.1.7, !dbg !252
  %div556 = fdiv contract float %numerator.sroa.0.8.vec.extract2493, %denominator.sroa.0.1.7, !dbg !253
  %div560 = fdiv contract float %numerator.sroa.0.12.vec.extract2530, %denominator.sroa.0.1.7, !dbg !254
  %numerator.sroa.98.16.vec.extract2573 = extractelement <4 x float> %numerator.sroa.98.7, i64 0, !dbg !250
  %numerator.sroa.98.20.vec.extract2610 = extractelement <4 x float> %numerator.sroa.98.7, i64 1, !dbg !250
  %numerator.sroa.98.24.vec.extract2647 = extractelement <4 x float> %numerator.sroa.98.7, i64 2, !dbg !250
  %numerator.sroa.98.28.vec.extract2684 = extractelement <4 x float> %numerator.sroa.98.7, i64 3, !dbg !250
  %div.1 = fdiv contract float %numerator.sroa.98.16.vec.extract2573, %denominator.sroa.0.1.7, !dbg !251
  %div552.1 = fdiv contract float %numerator.sroa.98.20.vec.extract2610, %denominator.sroa.0.1.7, !dbg !252
  %div556.1 = fdiv contract float %numerator.sroa.98.24.vec.extract2647, %denominator.sroa.0.1.7, !dbg !253
  %div560.1 = fdiv contract float %numerator.sroa.98.28.vec.extract2684, %denominator.sroa.0.1.7, !dbg !254
  %numerator.sroa.194.32.vec.extract2729 = extractelement <4 x float> %numerator.sroa.194.7, i64 0, !dbg !250
  %numerator.sroa.194.36.vec.extract2766 = extractelement <4 x float> %numerator.sroa.194.7, i64 1, !dbg !250
  %numerator.sroa.194.40.vec.extract2803 = extractelement <4 x float> %numerator.sroa.194.7, i64 2, !dbg !250
  %numerator.sroa.194.44.vec.extract2840 = extractelement <4 x float> %numerator.sroa.194.7, i64 3, !dbg !250
  %div.2 = fdiv contract float %numerator.sroa.194.32.vec.extract2729, %denominator.sroa.0.1.7, !dbg !251
  %div552.2 = fdiv contract float %numerator.sroa.194.36.vec.extract2766, %denominator.sroa.0.1.7, !dbg !252
  %div556.2 = fdiv contract float %numerator.sroa.194.40.vec.extract2803, %denominator.sroa.0.1.7, !dbg !253
  %div560.2 = fdiv contract float %numerator.sroa.194.44.vec.extract2840, %denominator.sroa.0.1.7, !dbg !254
  %numerator.sroa.290.48.vec.extract2885 = extractelement <4 x float> %numerator.sroa.290.7, i64 0, !dbg !250
  %numerator.sroa.290.52.vec.extract2922 = extractelement <4 x float> %numerator.sroa.290.7, i64 1, !dbg !250
  %numerator.sroa.290.56.vec.extract2959 = extractelement <4 x float> %numerator.sroa.290.7, i64 2, !dbg !250
  %numerator.sroa.290.60.vec.extract2996 = extractelement <4 x float> %numerator.sroa.290.7, i64 3, !dbg !250
  %div.3 = fdiv contract float %numerator.sroa.290.48.vec.extract2885, %denominator.sroa.0.1.7, !dbg !251
  %div552.3 = fdiv contract float %numerator.sroa.290.52.vec.extract2922, %denominator.sroa.0.1.7, !dbg !252
  %div556.3 = fdiv contract float %numerator.sroa.290.56.vec.extract2959, %denominator.sroa.0.1.7, !dbg !253
  %div560.3 = fdiv contract float %numerator.sroa.290.60.vec.extract2996, %denominator.sroa.0.1.7, !dbg !254
  fence syncscope("warp") release, !dbg !255
  tail call void @llvm.mxc.barrier.warp(), !dbg !258
  fence syncscope("warp") acquire, !dbg !259
  %705 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !264
  %706 = fptrunc float %div to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %705), !dbg !260, !noalias !264
  %707 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !264
  %708 = fptrunc float %div552 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %707), !dbg !269, !noalias !264
  %709 = bitcast half %706 to i16, !dbg !271
  %710 = bitcast half %708 to i16, !dbg !274
  %711 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !279
  %712 = fptrunc float %div556 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %711), !dbg !275, !noalias !279
  %713 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !284, !noalias !279
  %714 = fptrunc float %div560 to half, !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %713), !dbg !284, !noalias !279
  %715 = bitcast half %712 to i16, !dbg !286
  %716 = bitcast half %714 to i16, !dbg !288
  %__8.sroa.6.0.insert.ext = zext i16 %716 to i64, !dbg !289
  %__8.sroa.6.0.insert.shift = shl nuw i64 %__8.sroa.6.0.insert.ext, 48, !dbg !289
  %__8.sroa.5.0.insert.ext = zext i16 %715 to i64, !dbg !289
  %__8.sroa.5.0.insert.shift = shl nuw nsw i64 %__8.sroa.5.0.insert.ext, 32, !dbg !289
  %__8.sroa.5.0.insert.insert = or disjoint i64 %__8.sroa.6.0.insert.shift, %__8.sroa.5.0.insert.shift, !dbg !289
  %__8.sroa.4.0.insert.ext = zext i16 %710 to i64, !dbg !289
  %__8.sroa.4.0.insert.shift = shl nuw nsw i64 %__8.sroa.4.0.insert.ext, 16, !dbg !289
  %__8.sroa.4.0.insert.insert = or disjoint i64 %__8.sroa.5.0.insert.insert, %__8.sroa.4.0.insert.shift, !dbg !289
  %__8.sroa.0.0.insert.ext = zext i16 %709 to i64, !dbg !289
  %__8.sroa.0.0.insert.insert = or disjoint i64 %__8.sroa.4.0.insert.insert, %__8.sroa.0.0.insert.ext, !dbg !289
  store i64 %__8.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr47, align 8, !dbg !290
  %717 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !264
  %718 = fptrunc float %div.1 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %717), !dbg !260, !noalias !264
  %719 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !264
  %720 = fptrunc float %div552.1 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %719), !dbg !269, !noalias !264
  %721 = bitcast half %718 to i16, !dbg !271
  %722 = bitcast half %720 to i16, !dbg !274
  %723 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !279
  %724 = fptrunc float %div556.1 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %723), !dbg !275, !noalias !279
  %725 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !284, !noalias !279
  %726 = fptrunc float %div560.1 to half, !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %725), !dbg !284, !noalias !279
  %727 = bitcast half %724 to i16, !dbg !286
  %728 = bitcast half %726 to i16, !dbg !288
  %__8.sroa.6.0.insert.ext.1 = zext i16 %728 to i64, !dbg !289
  %__8.sroa.6.0.insert.shift.1 = shl nuw i64 %__8.sroa.6.0.insert.ext.1, 48, !dbg !289
  %__8.sroa.5.0.insert.ext.1 = zext i16 %727 to i64, !dbg !289
  %__8.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.1, 32, !dbg !289
  %__8.sroa.5.0.insert.insert.1 = or disjoint i64 %__8.sroa.6.0.insert.shift.1, %__8.sroa.5.0.insert.shift.1, !dbg !289
  %__8.sroa.4.0.insert.ext.1 = zext i16 %722 to i64, !dbg !289
  %__8.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.1, 16, !dbg !289
  %__8.sroa.4.0.insert.insert.1 = or disjoint i64 %__8.sroa.5.0.insert.insert.1, %__8.sroa.4.0.insert.shift.1, !dbg !289
  %__8.sroa.0.0.insert.ext.1 = zext i16 %721 to i64, !dbg !289
  %__8.sroa.0.0.insert.insert.1 = or disjoint i64 %__8.sroa.4.0.insert.insert.1, %__8.sroa.0.0.insert.ext.1, !dbg !289
  store i64 %__8.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !290
  %729 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !264
  %730 = fptrunc float %div.2 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %729), !dbg !260, !noalias !264
  %731 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !264
  %732 = fptrunc float %div552.2 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %731), !dbg !269, !noalias !264
  %733 = bitcast half %730 to i16, !dbg !271
  %734 = bitcast half %732 to i16, !dbg !274
  %735 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !279
  %736 = fptrunc float %div556.2 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %735), !dbg !275, !noalias !279
  %737 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !284, !noalias !279
  %738 = fptrunc float %div560.2 to half, !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %737), !dbg !284, !noalias !279
  %739 = bitcast half %736 to i16, !dbg !286
  %740 = bitcast half %738 to i16, !dbg !288
  %__8.sroa.6.0.insert.ext.2 = zext i16 %740 to i64, !dbg !289
  %__8.sroa.6.0.insert.shift.2 = shl nuw i64 %__8.sroa.6.0.insert.ext.2, 48, !dbg !289
  %__8.sroa.5.0.insert.ext.2 = zext i16 %739 to i64, !dbg !289
  %__8.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.2, 32, !dbg !289
  %__8.sroa.5.0.insert.insert.2 = or disjoint i64 %__8.sroa.6.0.insert.shift.2, %__8.sroa.5.0.insert.shift.2, !dbg !289
  %__8.sroa.4.0.insert.ext.2 = zext i16 %734 to i64, !dbg !289
  %__8.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.2, 16, !dbg !289
  %__8.sroa.4.0.insert.insert.2 = or disjoint i64 %__8.sroa.5.0.insert.insert.2, %__8.sroa.4.0.insert.shift.2, !dbg !289
  %__8.sroa.0.0.insert.ext.2 = zext i16 %733 to i64, !dbg !289
  %__8.sroa.0.0.insert.insert.2 = or disjoint i64 %__8.sroa.4.0.insert.insert.2, %__8.sroa.0.0.insert.ext.2, !dbg !289
  store i64 %__8.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !290
  %741 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !264
  %742 = fptrunc float %div.3 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %741), !dbg !260, !noalias !264
  %743 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !264
  %744 = fptrunc float %div552.3 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %743), !dbg !269, !noalias !264
  %745 = bitcast half %742 to i16, !dbg !271
  %746 = bitcast half %744 to i16, !dbg !274
  %747 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !279
  %748 = fptrunc float %div556.3 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %747), !dbg !275, !noalias !279
  %749 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !284, !noalias !279
  %750 = fptrunc float %div560.3 to half, !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %749), !dbg !284, !noalias !279
  %751 = bitcast half %748 to i16, !dbg !286
  %752 = bitcast half %750 to i16, !dbg !288
  %__8.sroa.6.0.insert.ext.3 = zext i16 %752 to i64, !dbg !289
  %__8.sroa.6.0.insert.shift.3 = shl nuw i64 %__8.sroa.6.0.insert.ext.3, 48, !dbg !289
  %__8.sroa.5.0.insert.ext.3 = zext i16 %751 to i64, !dbg !289
  %__8.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.3, 32, !dbg !289
  %__8.sroa.5.0.insert.insert.3 = or disjoint i64 %__8.sroa.6.0.insert.shift.3, %__8.sroa.5.0.insert.shift.3, !dbg !289
  %__8.sroa.4.0.insert.ext.3 = zext i16 %746 to i64, !dbg !289
  %__8.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.3, 16, !dbg !289
  %__8.sroa.4.0.insert.insert.3 = or disjoint i64 %__8.sroa.5.0.insert.insert.3, %__8.sroa.4.0.insert.shift.3, !dbg !289
  %__8.sroa.0.0.insert.ext.3 = zext i16 %745 to i64, !dbg !289
  %__8.sroa.0.0.insert.insert.3 = or disjoint i64 %__8.sroa.4.0.insert.insert.3, %__8.sroa.0.0.insert.ext.3, !dbg !289
  store i64 %__8.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !290
  fence syncscope("warp") release, !dbg !291
  tail call void @llvm.mxc.barrier.warp(), !dbg !294
  fence syncscope("warp") acquire, !dbg !295
  %add.ptr642 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !296
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr642, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep854, i64 16, i1 false), !dbg !297, !tbaa.struct !47, !call_argsrelate !298
  %add.ptr642.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %4, !dbg !296
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr642.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep855.1, i64 16, i1 false), !dbg !297, !tbaa.struct !47, !call_argsrelate !298
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v050_codex_power_s8_online_local_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v050_codex_power_s8_online_local_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 28, column: 8, scope: !40)
!44 = !DILocation(line: 28, column: 3, scope: !40)
!45 = !DILocation(line: 29, column: 154, scope: !40)
!46 = !DILocation(line: 29, column: 140, scope: !40)
!47 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!48 = !{i32 -1, i32 3, i32 -1, i32 -1}
!49 = !DILocation(line: 29, column: 235, scope: !40)
!50 = !DILocation(line: 29, column: 22, scope: !40)
!51 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !54)
!52 = distinct !DISubprogram(name: "__barrier_warp", scope: !53, file: !53, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!53 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!54 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !56)
!55 = distinct !DISubprogram(name: "__syncwarp", scope: !53, file: !53, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!56 = distinct !DILocation(line: 31, column: 3, scope: !40)
!57 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !54)
!58 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !54)
!59 = !DILocation(line: 34, column: 140, scope: !40)
!60 = !DILocation(line: 34, column: 168, scope: !40)
!61 = !DILocation(line: 34, column: 94, scope: !40)
!62 = !DILocation(line: 34, column: 174, scope: !40)
!63 = !DILocation(line: 34, column: 57, scope: !40)
!64 = !DILocation(line: 34, column: 38, scope: !40)
!65 = !DILocation(line: 34, column: 111, scope: !40)
!66 = !DILocation(line: 44, column: 3, scope: !40)
!67 = !DILocation(line: 45, column: 24, scope: !40)
!68 = !DILocation(line: 45, column: 101, scope: !40)
!69 = !DILocation(line: 46, column: 12, scope: !40)
!70 = !DILocation(line: 46, column: 28, scope: !40)
!71 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !72)
!72 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !73)
!73 = distinct !DILocation(line: 47, column: 7, scope: !40)
!74 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !72)
!75 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !72)
!76 = !DILocation(line: 49, column: 7, scope: !40)
!77 = !DILocation(line: 52, column: 74, scope: !40)
!78 = !DILocation(line: 52, column: 13, scope: !40)
!79 = !DILocation(line: 53, column: 19, scope: !40)
!80 = !DILocation(line: 54, column: 9, scope: !40)
!81 = !DILocation(line: 0, scope: !40)
!82 = !DILocation(line: 57, column: 146, scope: !40)
!83 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !84)
!84 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !85)
!85 = distinct !DILocation(line: 59, column: 7, scope: !40)
!86 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !84)
!87 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !84)
!88 = !DILocation(line: 64, column: 32, scope: !40)
!89 = !DILocation(line: 66, column: 37, scope: !40)
!90 = !DILocation(line: 74, column: 74, scope: !40)
!91 = !DILocation(line: 74, column: 13, scope: !40)
!92 = !DILocation(line: 74, column: 63, scope: !40)
!93 = !DILocation(line: 351, column: 10, scope: !94, inlinedAt: !96)
!94 = distinct !DISubprogram(name: "max", scope: !95, file: !95, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!95 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!96 = distinct !DILocation(line: 84, column: 28, scope: !40)
!97 = !DILocation(line: 1018, column: 9, scope: !98, inlinedAt: !99)
!98 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !53, file: !53, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!99 = distinct !DILocation(line: 86, column: 48, scope: !40)
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
!114 = distinct !DILocation(line: 86, column: 26, scope: !40)
!115 = !DILocation(line: 1018, column: 9, scope: !98, inlinedAt: !116)
!116 = distinct !DILocation(line: 87, column: 48, scope: !40)
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
!129 = distinct !DILocation(line: 87, column: 26, scope: !40)
!130 = !DILocation(line: 351, column: 10, scope: !94, inlinedAt: !131)
!131 = distinct !DILocation(line: 88, column: 24, scope: !40)
!132 = !DILocation(line: 89, column: 39, scope: !40)
!133 = !DILocation(line: 89, column: 57, scope: !40)
!134 = !DILocation(line: 285, column: 49, scope: !135, inlinedAt: !136)
!135 = distinct !DISubprogram(name: "exp2f", scope: !95, file: !95, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!136 = distinct !DILocation(line: 89, column: 20, scope: !40)
!137 = !DILocation(line: 95, column: 24, scope: !40)
!138 = !DILocation(line: 99, column: 47, scope: !40)
!139 = !DILocation(line: 112, column: 28, scope: !40)
!140 = !DILocation(line: 113, column: 28, scope: !40)
!141 = !DILocation(line: 114, column: 28, scope: !40)
!142 = !DILocation(line: 115, column: 28, scope: !40)
!143 = !DILocation(line: 117, column: 25, scope: !40)
!144 = !DILocation(line: 118, column: 25, scope: !40)
!145 = !DILocation(line: 119, column: 25, scope: !40)
!146 = !DILocation(line: 120, column: 25, scope: !40)
!147 = !DILocation(line: 122, column: 23, scope: !40)
!148 = !DILocation(line: 123, column: 23, scope: !40)
!149 = !DILocation(line: 124, column: 23, scope: !40)
!150 = !DILocation(line: 125, column: 23, scope: !40)
!151 = !DILocation(line: 285, column: 49, scope: !135, inlinedAt: !152)
!152 = distinct !DILocation(line: 126, column: 15, scope: !40)
!153 = !DILocation(line: 285, column: 49, scope: !135, inlinedAt: !154)
!154 = distinct !DILocation(line: 127, column: 15, scope: !40)
!155 = !DILocation(line: 285, column: 49, scope: !135, inlinedAt: !156)
!156 = distinct !DILocation(line: 128, column: 15, scope: !40)
!157 = !DILocation(line: 285, column: 49, scope: !135, inlinedAt: !158)
!158 = distinct !DILocation(line: 129, column: 15, scope: !40)
!159 = !DILocation(line: 1007, column: 10, scope: !160, inlinedAt: !162)
!160 = distinct !DISubprogram(name: "__float2half_rn", scope: !161, file: !161, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!161 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!162 = distinct !DILocation(line: 1077, column: 18, scope: !163, inlinedAt: !164)
!163 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !161, file: !161, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!164 = distinct !DILocation(line: 1295, column: 23, scope: !165, inlinedAt: !166)
!165 = distinct !DISubprogram(name: "__float22half2_rn", scope: !161, file: !161, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!166 = distinct !DILocation(line: 130, column: 29, scope: !40)
!167 = !{!168, !170}
!168 = distinct !{!168, !169, !"_ZL17__floats2half2_rnff: %agg.result"}
!169 = distinct !{!169, !"_ZL17__floats2half2_rnff"}
!170 = distinct !{!170, !171, !"_ZL17__float22half2_rn6float2: %agg.result"}
!171 = distinct !{!171, !"_ZL17__float22half2_rn6float2"}
!172 = !DILocation(line: 1007, column: 10, scope: !160, inlinedAt: !173)
!173 = distinct !DILocation(line: 1077, column: 38, scope: !163, inlinedAt: !164)
!174 = !DILocation(line: 1007, column: 10, scope: !160, inlinedAt: !175)
!175 = distinct !DILocation(line: 1077, column: 18, scope: !163, inlinedAt: !176)
!176 = distinct !DILocation(line: 1295, column: 23, scope: !165, inlinedAt: !177)
!177 = distinct !DILocation(line: 131, column: 29, scope: !40)
!178 = !{!179, !181}
!179 = distinct !{!179, !180, !"_ZL17__floats2half2_rnff: %agg.result"}
!180 = distinct !{!180, !"_ZL17__floats2half2_rnff"}
!181 = distinct !{!181, !182, !"_ZL17__float22half2_rn6float2: %agg.result"}
!182 = distinct !{!182, !"_ZL17__float22half2_rn6float2"}
!183 = !DILocation(line: 1007, column: 10, scope: !160, inlinedAt: !184)
!184 = distinct !DILocation(line: 1077, column: 38, scope: !163, inlinedAt: !176)
!185 = !DILocation(line: 132, column: 36, scope: !40)
!186 = !DILocation(line: 1082, column: 16, scope: !187, inlinedAt: !188)
!187 = distinct !DISubprogram(name: "__half2float", scope: !161, file: !161, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!188 = distinct !DILocation(line: 136, column: 55, scope: !189, inlinedAt: !190)
!189 = distinct !DISubprogram(name: "operator float", scope: !161, file: !161, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!190 = distinct !DILocation(line: 136, column: 52, scope: !40)
!191 = !DILocation(line: 136, column: 42, scope: !40)
!192 = !DILocation(line: 1018, column: 9, scope: !98, inlinedAt: !193)
!193 = distinct !DILocation(line: 138, column: 42, scope: !40)
!194 = !DILocation(line: 171, column: 37, scope: !101, inlinedAt: !195)
!195 = distinct !DILocation(line: 990, column: 14, scope: !103, inlinedAt: !196)
!196 = distinct !DILocation(line: 1019, column: 11, scope: !98, inlinedAt: !193)
!197 = !DILocation(line: 171, column: 10, scope: !101, inlinedAt: !195)
!198 = !DILocation(line: 991, column: 20, scope: !103, inlinedAt: !196)
!199 = !DILocation(line: 992, column: 36, scope: !103, inlinedAt: !196)
!200 = !DILocation(line: 992, column: 17, scope: !103, inlinedAt: !196)
!201 = !DILocation(line: 992, column: 11, scope: !103, inlinedAt: !196)
!202 = !DILocation(line: 993, column: 43, scope: !103, inlinedAt: !196)
!203 = !DILocation(line: 993, column: 10, scope: !103, inlinedAt: !196)
!204 = !DILocation(line: 1020, column: 14, scope: !98, inlinedAt: !193)
!205 = !DILocation(line: 138, column: 40, scope: !40)
!206 = !DILocation(line: 1018, column: 9, scope: !98, inlinedAt: !207)
!207 = distinct !DILocation(line: 139, column: 42, scope: !40)
!208 = !DILocation(line: 171, column: 37, scope: !101, inlinedAt: !209)
!209 = distinct !DILocation(line: 990, column: 14, scope: !103, inlinedAt: !210)
!210 = distinct !DILocation(line: 1019, column: 11, scope: !98, inlinedAt: !207)
!211 = !DILocation(line: 171, column: 10, scope: !101, inlinedAt: !209)
!212 = !DILocation(line: 991, column: 20, scope: !103, inlinedAt: !210)
!213 = !DILocation(line: 992, column: 36, scope: !103, inlinedAt: !210)
!214 = !DILocation(line: 992, column: 17, scope: !103, inlinedAt: !210)
!215 = !DILocation(line: 992, column: 11, scope: !103, inlinedAt: !210)
!216 = !DILocation(line: 993, column: 43, scope: !103, inlinedAt: !210)
!217 = !DILocation(line: 993, column: 10, scope: !103, inlinedAt: !210)
!218 = !DILocation(line: 1020, column: 14, scope: !98, inlinedAt: !207)
!219 = !DILocation(line: 139, column: 40, scope: !40)
!220 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !221)
!221 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !222)
!222 = distinct !DILocation(line: 141, column: 7, scope: !40)
!223 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !221)
!224 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !221)
!225 = !DILocation(line: 146, column: 13, scope: !40)
!226 = !DILocation(line: 147, column: 35, scope: !40)
!227 = !DILocation(line: 147, column: 21, scope: !40)
!228 = !DILocation(line: 148, column: 9, scope: !40)
!229 = !DILocation(line: 158, column: 26, scope: !40)
!230 = !DILocation(line: 158, column: 159, scope: !40)
!231 = !DILocation(line: 156, column: 27, scope: !40)
!232 = !DILocation(line: 158, column: 42, scope: !40)
!233 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !234)
!234 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !235)
!235 = distinct !DILocation(line: 160, column: 7, scope: !40)
!236 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !234)
!237 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !234)
!238 = !DILocation(line: 163, column: 121, scope: !40)
!239 = !DILocation(line: 163, column: 65, scope: !40)
!240 = !DILocation(line: 163, column: 46, scope: !40)
!241 = !DILocation(line: 168, column: 46, scope: !40)
!242 = !DILocation(line: 140, column: 40, scope: !40)
!243 = !DILocation(line: 44, column: 40, scope: !40)
!244 = !DILocation(line: 45, column: 88, scope: !40)
!245 = !DILocation(line: 93, column: 23, scope: !40)
!246 = !DILocation(line: 96, column: 24, scope: !40)
!247 = !DILocation(line: 97, column: 24, scope: !40)
!248 = !DILocation(line: 98, column: 24, scope: !40)
!249 = !DILocation(line: 101, column: 40, scope: !40)
!250 = !DILocation(line: 178, column: 21, scope: !40)
!251 = !DILocation(line: 180, column: 22, scope: !40)
!252 = !DILocation(line: 181, column: 22, scope: !40)
!253 = !DILocation(line: 182, column: 22, scope: !40)
!254 = !DILocation(line: 183, column: 22, scope: !40)
!255 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !256)
!256 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !257)
!257 = distinct !DILocation(line: 186, column: 3, scope: !40)
!258 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !256)
!259 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !256)
!260 = !DILocation(line: 1007, column: 10, scope: !160, inlinedAt: !261)
!261 = distinct !DILocation(line: 1077, column: 18, scope: !163, inlinedAt: !262)
!262 = distinct !DILocation(line: 1295, column: 23, scope: !165, inlinedAt: !263)
!263 = distinct !DILocation(line: 191, column: 27, scope: !40)
!264 = !{!265, !267}
!265 = distinct !{!265, !266, !"_ZL17__floats2half2_rnff: %agg.result"}
!266 = distinct !{!266, !"_ZL17__floats2half2_rnff"}
!267 = distinct !{!267, !268, !"_ZL17__float22half2_rn6float2: %agg.result"}
!268 = distinct !{!268, !"_ZL17__float22half2_rn6float2"}
!269 = !DILocation(line: 1007, column: 10, scope: !160, inlinedAt: !270)
!270 = distinct !DILocation(line: 1077, column: 38, scope: !163, inlinedAt: !262)
!271 = !DILocation(line: 596, column: 67, scope: !272, inlinedAt: !273)
!272 = distinct !DISubprogram(name: "__half2", scope: !161, file: !161, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!273 = distinct !DILocation(line: 1077, column: 10, scope: !163, inlinedAt: !262)
!274 = !DILocation(line: 596, column: 73, scope: !272, inlinedAt: !273)
!275 = !DILocation(line: 1007, column: 10, scope: !160, inlinedAt: !276)
!276 = distinct !DILocation(line: 1077, column: 18, scope: !163, inlinedAt: !277)
!277 = distinct !DILocation(line: 1295, column: 23, scope: !165, inlinedAt: !278)
!278 = distinct !DILocation(line: 192, column: 27, scope: !40)
!279 = !{!280, !282}
!280 = distinct !{!280, !281, !"_ZL17__floats2half2_rnff: %agg.result"}
!281 = distinct !{!281, !"_ZL17__floats2half2_rnff"}
!282 = distinct !{!282, !283, !"_ZL17__float22half2_rn6float2: %agg.result"}
!283 = distinct !{!283, !"_ZL17__float22half2_rn6float2"}
!284 = !DILocation(line: 1007, column: 10, scope: !160, inlinedAt: !285)
!285 = distinct !DILocation(line: 1077, column: 38, scope: !163, inlinedAt: !277)
!286 = !DILocation(line: 596, column: 67, scope: !272, inlinedAt: !287)
!287 = distinct !DILocation(line: 1077, column: 10, scope: !163, inlinedAt: !277)
!288 = !DILocation(line: 596, column: 73, scope: !272, inlinedAt: !287)
!289 = !DILocation(line: 193, column: 38, scope: !40)
!290 = !DILocation(line: 194, column: 184, scope: !40)
!291 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !292)
!292 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !293)
!293 = distinct !DILocation(line: 196, column: 3, scope: !40)
!294 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !292)
!295 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !292)
!296 = !DILocation(line: 199, column: 22, scope: !40)
!297 = !DILocation(line: 199, column: 134, scope: !40)
!298 = !{i32 2, i32 -1, i32 -1, i32 -1}
!299 = !DILocation(line: 201, column: 1, scope: !40)
