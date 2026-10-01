; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v056_codex_power_s8_proven_bounds_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v056_codex_power_s8_proven_bounds_sc-16g-2/codegen/case12.device.cpp"
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
  %mul = shl nsw i32 %0, 20
  %1 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !range !29
  %mul7 = shl nsw i32 %1, 10
  %add = add nuw nsw i32 %mul, %mul7
  %2 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !42
  %mul11 = shl nuw nsw i32 %2, 3
  %add9 = add nuw nsw i32 %add, %mul11
  %mul15 = and i32 %mul11, 8128
  %xor700 = and i32 %mul11, 56
  %call18.masked = and i32 %2, 1016
  %mul20 = xor i32 %xor700, %call18.masked
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul15, !dbg !43
  %invariant.gep762 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul20, !dbg !43
  %3 = zext nneg i32 %add9 to i64, !dbg !44
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %3, !dbg !45
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep762, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr, i64 16, i1 false), !dbg !46, !tbaa.struct !47, !call_argsrelate !48
  %4 = add nuw nsw i64 %3, 512, !dbg !49
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %4, !dbg !45
  %gep763.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep762, i32 1024, !dbg !50
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep763.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr.1, i64 16, i1 false), !dbg !46, !tbaa.struct !47, !call_argsrelate !48
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
  %conv = zext nneg i32 %0 to i64
  %mul99 = zext nneg i32 %mul11 to i64
  %invariant.gep789 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul99, !dbg !66
  %mul166 = and i32 %5, 252
  %mul367 = shl nuw nsw i64 %conv, 16
  %10 = shl nuw nsw i32 %2, 4
  %11 = and i32 %10, 16128
  %mul371 = zext nneg i32 %11 to i64
  %add372 = or disjoint i64 %mul367, %mul371
  %12 = shl nuw nsw i32 %2, 2
  %13 = and i32 %12, 60
  %mul382 = zext nneg i32 %13 to i64
  %add375 = or disjoint i64 %add372, %mul382
  %mul414 = and i32 %10, 240
  %shr417 = lshr i32 %2, 4
  %shr420 = and i32 %5, 3
  %xor421 = xor i32 %shr420, %shr417
  %and435 = shl nuw nsw i32 %2, 8
  %mul436 = and i32 %and435, 768
  %mul442 = and i32 %12, 48
  %and448 = and i32 %2, 3
  %14 = xor i32 %shr417, %and448
  %15 = zext nneg i32 %add78 to i64, !dbg !66
  %arrayidx80 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %15, !dbg !67
  %16 = load i32, ptr addrspace(1) %arrayidx80, align 4, !dbg !67, !tbaa !30
  %mul81 = shl nsw i32 %16, 4, !dbg !68
  %cmp82 = icmp slt i32 %16, 0, !dbg !69
  %cmp84.not = icmp sgt i32 %mul81, %1
  %or.cond = select i1 %cmp82, i1 true, i1 %cmp84.not, !dbg !70
  br i1 %or.cond, label %if.end479, label %if.then, !dbg !70

if.then:                                          ; preds = %entry
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %conv94 = zext nneg i32 %mul81 to i64
  %.idx = shl nuw nsw i64 %conv94, 7
  %gep = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep789, i64 %.idx, !dbg !76
  %.idx797 = shl nuw nsw i64 %conv, 17, !dbg !77
  %17 = getelementptr inbounds i8, ptr addrspace(4) %gep, i64 %.idx797, !dbg !77
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep762, ptr addrspace(4) noundef align 16 dereferenceable(16) %17, i64 16, i1 false), !dbg !78, !tbaa.struct !47, !call_argsrelate !79
  %gep769.1 = getelementptr inbounds i8, ptr addrspace(4) %17, i64 1024, !dbg !77
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep763.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep769.1, i64 16, i1 false), !dbg !78, !tbaa.struct !47, !call_argsrelate !79
  fence syncscope("warp") release, !dbg !80
  tail call void @llvm.mxc.barrier.warp(), !dbg !83
  fence syncscope("warp") acquire, !dbg !84
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !85
  %18 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %6, <4 x float> zeroinitializer), !dbg !86
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !85
  %19 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %7, <4 x float> %18), !dbg !86
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !85
  %20 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %8, <4 x float> %19), !dbg !86
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !85
  %21 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %9, <4 x float> %20), !dbg !86
  %add167 = add nuw nsw i32 %mul81, %mul166
  %cmp170.not = icmp sgt i32 %add167, %1, !dbg !87
  %scores.sroa.0.0.vec.extract1965 = extractelement <4 x float> %21, i64 0
  %spec.select = select i1 %cmp170.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1965, !dbg !88
  %cmp170.not.1.not = icmp slt i32 %add167, %1, !dbg !87
  %scores.sroa.0.4.vec.extract2070 = extractelement <4 x float> %21, i64 1, !dbg !88
  %condval.0.1 = select i1 %cmp170.not.1.not, float %scores.sroa.0.4.vec.extract2070, float 0xFFF0000000000000, !dbg !88
  %add168.2 = or disjoint i32 %add167, 2, !dbg !89
  %cmp170.not.2 = icmp sgt i32 %add168.2, %1, !dbg !87
  %scores.sroa.0.8.vec.extract2147 = extractelement <4 x float> %21, i64 2, !dbg !88
  %condval.0.2 = select i1 %cmp170.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2147, !dbg !88
  %add168.3 = or disjoint i32 %add167, 3, !dbg !89
  %cmp170.not.3 = icmp sgt i32 %add168.3, %1, !dbg !87
  %scores.sroa.0.12.vec.extract2224 = extractelement <4 x float> %21, i64 3, !dbg !88
  %condval.0.3 = select i1 %cmp170.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2224, !dbg !88
  %22 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !90
  %23 = tail call contract noundef float @llvm.maxnum.f32(float %22, float %condval.0.1), !dbg !90
  %24 = tail call contract noundef float @llvm.maxnum.f32(float %23, float %condval.0.2), !dbg !90
  %25 = tail call contract noundef float @llvm.maxnum.f32(float %24, float %condval.0.3), !dbg !90
  %26 = bitcast float %25 to i32, !dbg !94
  %27 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !97
  %28 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %27) #11, !dbg !102
  %xor.i.i = xor i32 %28, 32, !dbg !103
  %29 = and i32 %28, -64, !dbg !104
  %and.i.i = add nsw i32 %29, 64, !dbg !104
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !105
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %28, !dbg !106
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !107
  %30 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %26), !dbg !108
  %31 = bitcast i32 %30 to float, !dbg !109
  %32 = tail call contract noundef float @llvm.maxnum.f32(float %25, float %31), !dbg !110
  %33 = bitcast float %32 to i32, !dbg !112
  %34 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !114
  %35 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %34) #11, !dbg !117
  %xor.i.i702 = xor i32 %35, 16, !dbg !118
  %36 = and i32 %35, -64, !dbg !119
  %and.i.i703 = add nsw i32 %36, 64, !dbg !119
  %cmp.not.i.i704 = icmp slt i32 %xor.i.i702, %and.i.i703, !dbg !120
  %cond.i.i705 = select i1 %cmp.not.i.i704, i32 %xor.i.i702, i32 %35, !dbg !121
  %shl.i.i706 = shl i32 %cond.i.i705, 2, !dbg !122
  %37 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i706, i32 %33), !dbg !123
  %38 = bitcast i32 %37 to float, !dbg !124
  %39 = tail call contract noundef float @llvm.maxnum.f32(float %32, float %38), !dbg !125
  %40 = tail call contract noundef float @llvm.maxnum.f32(float %39, float 0xFFF0000000000000), !dbg !127
  %sub = fsub contract float 0xFFF0000000000000, %40, !dbg !129
  %mul212 = fmul contract float %sub, 0x3FC7154760000000, !dbg !130
  %cmp.i.i = fcmp contract olt float %mul212, -1.260000e+02, !dbg !131
  %cond.i.i707 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i = fadd contract float %mul212, %cond.i.i707, !dbg !131
  %41 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !131
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i = fmul contract float %cond2.i.i, %41, !dbg !131
  %mul229 = fmul contract float %mul.i.i, 0.000000e+00, !dbg !134
  %numerator.sroa.0.0.vec.insert2280 = insertelement <4 x float> poison, float %mul229, i64 0, !dbg !135
  %numerator.sroa.0.12.vec.insert2391 = shufflevector <4 x float> %numerator.sroa.0.0.vec.insert2280, <4 x float> poison, <4 x i32> zeroinitializer, !dbg !135
  %sub262 = fsub contract float %spec.select, %40, !dbg !136
  %sub266 = fsub contract float %condval.0.1, %40, !dbg !137
  %sub270 = fsub contract float %condval.0.2, %40, !dbg !138
  %sub274 = fsub contract float %condval.0.3, %40, !dbg !139
  %mul279 = fmul contract float %sub262, 0x3FC7154760000000, !dbg !140
  %mul283 = fmul contract float %sub266, 0x3FC7154760000000, !dbg !141
  %mul287 = fmul contract float %sub270, 0x3FC7154760000000, !dbg !142
  %mul291 = fmul contract float %sub274, 0x3FC7154760000000, !dbg !143
  %add296 = fadd contract float %mul279, 8.000000e+00, !dbg !144
  %add300 = fadd contract float %mul283, 8.000000e+00, !dbg !145
  %add304 = fadd contract float %mul287, 8.000000e+00, !dbg !146
  %add308 = fadd contract float %mul291, 8.000000e+00, !dbg !147
  %cmp.i.i708 = fcmp contract olt float %add296, -1.260000e+02, !dbg !148
  %cond.i.i709 = select contract i1 %cmp.i.i708, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i710 = fadd contract float %add296, %cond.i.i709, !dbg !148
  %42 = tail call contract float @llvm.exp2.f32(float %add.i.i710), !dbg !148
  %cond2.i.i711 = select contract i1 %cmp.i.i708, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i712 = fmul contract float %cond2.i.i711, %42, !dbg !148
  %cmp.i.i713 = fcmp contract olt float %add300, -1.260000e+02, !dbg !150
  %cond.i.i714 = select contract i1 %cmp.i.i713, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i715 = fadd contract float %add300, %cond.i.i714, !dbg !150
  %43 = tail call contract float @llvm.exp2.f32(float %add.i.i715), !dbg !150
  %cond2.i.i716 = select contract i1 %cmp.i.i713, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i717 = fmul contract float %cond2.i.i716, %43, !dbg !150
  %cmp.i.i718 = fcmp contract olt float %add304, -1.260000e+02, !dbg !152
  %cond.i.i719 = select contract i1 %cmp.i.i718, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i720 = fadd contract float %add304, %cond.i.i719, !dbg !152
  %44 = tail call contract float @llvm.exp2.f32(float %add.i.i720), !dbg !152
  %cond2.i.i721 = select contract i1 %cmp.i.i718, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i722 = fmul contract float %cond2.i.i721, %44, !dbg !152
  %cmp.i.i723 = fcmp contract olt float %add308, -1.260000e+02, !dbg !154
  %cond.i.i724 = select contract i1 %cmp.i.i723, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i725 = fadd contract float %add308, %cond.i.i724, !dbg !154
  %45 = tail call contract float @llvm.exp2.f32(float %add.i.i725), !dbg !154
  %cond2.i.i726 = select contract i1 %cmp.i.i723, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i727 = fmul contract float %cond2.i.i726, %45, !dbg !154
  %46 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !156, !noalias !164
  %47 = fptrunc float %mul.i.i712 to half, !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %46), !dbg !156, !noalias !164
  %48 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !164
  %49 = fptrunc float %mul.i.i717 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %48), !dbg !169, !noalias !164
  %50 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !175
  %51 = fptrunc float %mul.i.i722 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %50), !dbg !171, !noalias !175
  %52 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !180, !noalias !175
  %53 = fptrunc float %mul.i.i727 to half, !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %52), !dbg !180, !noalias !175
  %54 = insertelement <4 x half> poison, half %47, i64 0, !dbg !182
  %55 = insertelement <4 x half> %54, half %49, i64 1, !dbg !182
  %56 = insertelement <4 x half> %55, half %51, i64 2, !dbg !182
  %57 = insertelement <4 x half> %56, half %53, i64 3, !dbg !182
  %conv.i.i = fpext half %47 to float, !dbg !183
  %add342 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !188
  %conv.i.i.1 = fpext half %49 to float, !dbg !183
  %add342.1 = fadd contract float %add342, %conv.i.i.1, !dbg !188
  %conv.i.i.2 = fpext half %51 to float, !dbg !183
  %add342.2 = fadd contract float %add342.1, %conv.i.i.2, !dbg !188
  %conv.i.i.3 = fpext half %53 to float, !dbg !183
  %add342.3 = fadd contract float %add342.2, %conv.i.i.3, !dbg !188
  %58 = bitcast float %add342.3 to i32, !dbg !189
  %59 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !191
  %60 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %59) #11, !dbg !194
  %xor.i.i733 = xor i32 %60, 32, !dbg !195
  %61 = and i32 %60, -64, !dbg !196
  %and.i.i734 = add nsw i32 %61, 64, !dbg !196
  %cmp.not.i.i735 = icmp slt i32 %xor.i.i733, %and.i.i734, !dbg !197
  %cond.i.i736 = select i1 %cmp.not.i.i735, i32 %xor.i.i733, i32 %60, !dbg !198
  %shl.i.i737 = shl i32 %cond.i.i736, 2, !dbg !199
  %62 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i737, i32 %58), !dbg !200
  %63 = bitcast i32 %62 to float, !dbg !201
  %add350 = fadd contract float %add342.3, %63, !dbg !202
  %64 = bitcast float %add350 to i32, !dbg !203
  %65 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %66 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %65) #11, !dbg !208
  %xor.i.i738 = xor i32 %66, 16, !dbg !209
  %67 = and i32 %66, -64, !dbg !210
  %and.i.i739 = add nsw i32 %67, 64, !dbg !210
  %cmp.not.i.i740 = icmp slt i32 %xor.i.i738, %and.i.i739, !dbg !211
  %cond.i.i741 = select i1 %cmp.not.i.i740, i32 %xor.i.i738, i32 %66, !dbg !212
  %shl.i.i742 = shl i32 %cond.i.i741, 2, !dbg !213
  %68 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i742, i32 %64), !dbg !214
  %69 = bitcast i32 %68 to float, !dbg !215
  %add355 = fadd contract float %add350, %69, !dbg !216
  fence syncscope("warp") release, !dbg !217
  tail call void @llvm.mxc.barrier.warp(), !dbg !220
  fence syncscope("warp") acquire, !dbg !221
  %70 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add375, !dbg !222
  %71 = getelementptr inbounds i8, ptr addrspace(4) %70, i64 %.idx, !dbg !222
  %72 = load i64, ptr addrspace(4) %71, align 8, !dbg !223
  %add.ptr384.1 = getelementptr inbounds i8, ptr addrspace(4) %71, i64 128, !dbg !222
  %73 = load i64, ptr addrspace(4) %add.ptr384.1, align 8, !dbg !223
  %add.ptr384.2 = getelementptr inbounds i8, ptr addrspace(4) %71, i64 256, !dbg !222
  %74 = load i64, ptr addrspace(4) %add.ptr384.2, align 8, !dbg !223
  %add.ptr384.3 = getelementptr inbounds i8, ptr addrspace(4) %71, i64 384, !dbg !222
  %75 = load i64, ptr addrspace(4) %add.ptr384.3, align 8, !dbg !223
  %76 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul414, !dbg !224
  %add.ptr426.idx = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426 = getelementptr inbounds i8, ptr addrspace(3) %76, i32 %add.ptr426.idx, !dbg !224
  %v_column.sroa.130.0.insert.ext = shl i64 %75, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext = shl i64 %74, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift = and i64 %v_column.sroa.98.0.insert.ext, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert = or disjoint i64 %v_column.sroa.130.0.insert.ext, %v_column.sroa.98.0.insert.shift, !dbg !225
  %v_column.sroa.66.0.insert.ext = shl i64 %73, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift = and i64 %v_column.sroa.66.0.insert.ext, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert = or disjoint i64 %v_column.sroa.98.0.insert.insert, %v_column.sroa.66.0.insert.shift, !dbg !225
  %v_column.sroa.0.0.insert.ext = and i64 %72, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert = or disjoint i64 %v_column.sroa.66.0.insert.insert, %v_column.sroa.0.0.insert.ext, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr426, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift = lshr i64 %72, 16, !dbg !226
  %add415.1 = or disjoint i32 %mul414, 256, !dbg !227
  %77 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.1, !dbg !224
  %xor422.1 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.1 = xor i32 %xor422.1, 8, !dbg !224
  %add.ptr426.1 = getelementptr inbounds i8, ptr addrspace(3) %77, i32 %add.ptr426.idx.1, !dbg !224
  %78 = shl i64 %75, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1361 = and i64 %78, -281474976710656, !dbg !225
  %79 = shl i64 %74, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1207 = and i64 %79, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1209 = or disjoint i64 %v_column.sroa.130.0.insert.ext1361, %v_column.sroa.98.0.insert.shift1207, !dbg !225
  %v_column.sroa.66.0.insert.ext1051 = and i64 %73, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1054 = or disjoint i64 %v_column.sroa.98.0.insert.insert1209, %v_column.sroa.66.0.insert.ext1051, !dbg !225
  %v_column.sroa.0.0.insert.ext927 = and i64 %v_fetch.sroa.0.2.extract.shift, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert929 = or disjoint i64 %v_column.sroa.66.0.insert.insert1054, %v_column.sroa.0.0.insert.ext927, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert929, ptr addrspace(3) %add.ptr426.1, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift = lshr i64 %72, 32, !dbg !226
  %add415.2 = or disjoint i32 %mul414, 512, !dbg !227
  %80 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.2, !dbg !224
  %xor422.2 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.2 = xor i32 %xor422.2, 16, !dbg !224
  %add.ptr426.2 = getelementptr inbounds i8, ptr addrspace(3) %80, i32 %add.ptr426.idx.2, !dbg !224
  %81 = shl i64 %75, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1366 = and i64 %81, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1211 = and i64 %74, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1214 = or disjoint i64 %v_column.sroa.130.0.insert.ext1366, %v_column.sroa.98.0.insert.ext1211, !dbg !225
  %82 = lshr i64 %73, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1057 = and i64 %82, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1059 = or disjoint i64 %v_column.sroa.98.0.insert.insert1214, %v_column.sroa.66.0.insert.shift1057, !dbg !225
  %v_column.sroa.0.0.insert.ext931 = and i64 %v_fetch.sroa.0.4.extract.shift, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert933 = or disjoint i64 %v_column.sroa.66.0.insert.insert1059, %v_column.sroa.0.0.insert.ext931, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert933, ptr addrspace(3) %add.ptr426.2, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift = lshr i64 %72, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift = and i64 %75, -281474976710656, !dbg !225
  %add415.3 = or disjoint i32 %mul414, 768, !dbg !227
  %83 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.3, !dbg !224
  %xor422.3 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.3 = xor i32 %xor422.3, 24, !dbg !224
  %add.ptr426.3 = getelementptr inbounds i8, ptr addrspace(3) %83, i32 %add.ptr426.idx.3, !dbg !224
  %84 = lshr i64 %74, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1217 = and i64 %84, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1219 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift, %v_column.sroa.98.0.insert.shift1217, !dbg !225
  %85 = lshr i64 %73, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1062 = and i64 %85, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1064 = or disjoint i64 %v_column.sroa.98.0.insert.insert1219, %v_column.sroa.66.0.insert.shift1062, !dbg !225
  %v_column.sroa.0.0.insert.insert937 = or disjoint i64 %v_column.sroa.66.0.insert.insert1064, %v_fetch.sroa.0.6.extract.shift, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert937, ptr addrspace(3) %add.ptr426.3, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add443 = or disjoint i32 %mul436, %mul442, !dbg !233
  %86 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443, !dbg !234
  %add.ptr453.idx = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453 = getelementptr inbounds i8, ptr addrspace(3) %86, i32 %add.ptr453.idx, !dbg !234
  %87 = load <4 x half>, ptr addrspace(3) %add.ptr453, align 8, !dbg !235
  %add438.1 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.1 = or disjoint i32 %add438.1, 64, !dbg !233
  %88 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.1, !dbg !234
  %xor449.1 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.1 = xor i32 %xor449.1, 8, !dbg !234
  %add.ptr453.1 = getelementptr inbounds i8, ptr addrspace(3) %88, i32 %add.ptr453.idx.1, !dbg !234
  %89 = load <4 x half>, ptr addrspace(3) %add.ptr453.1, align 8, !dbg !235
  %add438.2 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.2 = or disjoint i32 %add438.2, 128, !dbg !233
  %90 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.2, !dbg !234
  %xor449.2 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.2 = xor i32 %xor449.2, 16, !dbg !234
  %add.ptr453.2 = getelementptr inbounds i8, ptr addrspace(3) %90, i32 %add.ptr453.idx.2, !dbg !234
  %91 = load <4 x half>, ptr addrspace(3) %add.ptr453.2, align 8, !dbg !235
  %add438.3 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.3 = or disjoint i32 %add438.3, 192, !dbg !233
  %92 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.3, !dbg !234
  %xor449.3 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.3 = xor i32 %xor449.3, 24, !dbg !234
  %add.ptr453.3 = getelementptr inbounds i8, ptr addrspace(3) %92, i32 %add.ptr453.idx.3, !dbg !234
  %93 = load <4 x half>, ptr addrspace(3) %add.ptr453.3, align 8, !dbg !235
  %94 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %87, <4 x half> %57, <4 x float> %numerator.sroa.0.12.vec.insert2391), !dbg !236
  %95 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %89, <4 x half> %57, <4 x float> %numerator.sroa.0.12.vec.insert2391), !dbg !236
  %96 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %91, <4 x half> %57, <4 x float> %numerator.sroa.0.12.vec.insert2391), !dbg !236
  %97 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %93, <4 x half> %57, <4 x float> %numerator.sroa.0.12.vec.insert2391), !dbg !236
  %add359 = fadd contract float %mul229, %add355, !dbg !237
  br label %if.end479, !dbg !238

if.end479:                                        ; preds = %if.then, %entry
  %numerator.sroa.290.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %97, %if.then ], !dbg !239
  %numerator.sroa.194.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %96, %if.then ], !dbg !239
  %numerator.sroa.98.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %95, %if.then ], !dbg !239
  %numerator.sroa.0.0 = phi <4 x float> [ zeroinitializer, %entry ], [ %94, %if.then ], !dbg !239
  %maximum.sroa.0.1 = phi float [ 0xFFF0000000000000, %entry ], [ %40, %if.then ], !dbg !239
  %denominator.sroa.0.1 = phi float [ 0.000000e+00, %entry ], [ %add359, %if.then ], !dbg !239
  %98 = or disjoint i64 %15, 1, !dbg !240
  %arrayidx80.1 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %98, !dbg !67
  %99 = load i32, ptr addrspace(1) %arrayidx80.1, align 4, !dbg !67, !tbaa !30
  %mul81.1 = shl nsw i32 %99, 4, !dbg !68
  %cmp82.1 = icmp slt i32 %99, 0, !dbg !69
  %cmp84.not.1 = icmp sgt i32 %mul81.1, %1
  %or.cond.1 = select i1 %cmp82.1, i1 true, i1 %cmp84.not.1, !dbg !70
  br i1 %or.cond.1, label %if.end479.1, label %if.then.1, !dbg !70

if.then.1:                                        ; preds = %if.end479
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %conv94.1 = zext nneg i32 %mul81.1 to i64
  %.idx.1 = shl nuw nsw i64 %conv94.1, 7
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep789, i64 %.idx.1, !dbg !76
  %.idx797.1811 = shl nuw nsw i64 %conv, 17, !dbg !77
  %100 = getelementptr inbounds i8, ptr addrspace(4) %gep.1, i64 %.idx797.1811, !dbg !77
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep762, ptr addrspace(4) noundef align 16 dereferenceable(16) %100, i64 16, i1 false), !dbg !78, !tbaa.struct !47, !call_argsrelate !79
  %gep769.1.1 = getelementptr inbounds i8, ptr addrspace(4) %100, i64 1024, !dbg !77
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep763.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep769.1.1, i64 16, i1 false), !dbg !78, !tbaa.struct !47, !call_argsrelate !79
  fence syncscope("warp") release, !dbg !80
  tail call void @llvm.mxc.barrier.warp(), !dbg !83
  fence syncscope("warp") acquire, !dbg !84
  %k_local.sroa.0.0.copyload.1817 = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !85
  %101 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1817, <4 x half> %6, <4 x float> zeroinitializer), !dbg !86
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !85
  %102 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %7, <4 x float> %101), !dbg !86
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !85
  %103 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %8, <4 x float> %102), !dbg !86
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !85
  %104 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %9, <4 x float> %103), !dbg !86
  %add167.1 = add nuw nsw i32 %mul81.1, %mul166
  %cmp170.not.1818 = icmp sgt i32 %add167.1, %1, !dbg !87
  %scores.sroa.0.0.vec.extract1973 = extractelement <4 x float> %104, i64 0
  %spec.select2927 = select i1 %cmp170.not.1818, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1973, !dbg !88
  %cmp170.not.1.1.not = icmp slt i32 %add167.1, %1, !dbg !87
  %scores.sroa.0.4.vec.extract2076 = extractelement <4 x float> %104, i64 1, !dbg !88
  %condval.0.1.1 = select i1 %cmp170.not.1.1.not, float %scores.sroa.0.4.vec.extract2076, float 0xFFF0000000000000, !dbg !88
  %add168.2.1 = or disjoint i32 %add167.1, 2, !dbg !89
  %cmp170.not.2.1 = icmp sgt i32 %add168.2.1, %1, !dbg !87
  %scores.sroa.0.8.vec.extract2153 = extractelement <4 x float> %104, i64 2, !dbg !88
  %condval.0.2.1 = select i1 %cmp170.not.2.1, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2153, !dbg !88
  %add168.3.1 = or disjoint i32 %add167.1, 3, !dbg !89
  %cmp170.not.3.1 = icmp sgt i32 %add168.3.1, %1, !dbg !87
  %scores.sroa.0.12.vec.extract2230 = extractelement <4 x float> %104, i64 3, !dbg !88
  %condval.0.3.1 = select i1 %cmp170.not.3.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2230, !dbg !88
  %105 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2927, float 0xFFF0000000000000), !dbg !90
  %106 = tail call contract noundef float @llvm.maxnum.f32(float %105, float %condval.0.1.1), !dbg !90
  %107 = tail call contract noundef float @llvm.maxnum.f32(float %106, float %condval.0.2.1), !dbg !90
  %108 = tail call contract noundef float @llvm.maxnum.f32(float %107, float %condval.0.3.1), !dbg !90
  %109 = bitcast float %108 to i32, !dbg !94
  %110 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !97
  %111 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %110) #11, !dbg !102
  %xor.i.i.1 = xor i32 %111, 32, !dbg !103
  %112 = and i32 %111, -64, !dbg !104
  %and.i.i.1 = add nsw i32 %112, 64, !dbg !104
  %cmp.not.i.i.1 = icmp slt i32 %xor.i.i.1, %and.i.i.1, !dbg !105
  %cond.i.i.1 = select i1 %cmp.not.i.i.1, i32 %xor.i.i.1, i32 %111, !dbg !106
  %shl.i.i.1 = shl i32 %cond.i.i.1, 2, !dbg !107
  %113 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.1, i32 %109), !dbg !108
  %114 = bitcast i32 %113 to float, !dbg !109
  %115 = tail call contract noundef float @llvm.maxnum.f32(float %108, float %114), !dbg !110
  %116 = bitcast float %115 to i32, !dbg !112
  %117 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !114
  %118 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %117) #11, !dbg !117
  %xor.i.i702.1 = xor i32 %118, 16, !dbg !118
  %119 = and i32 %118, -64, !dbg !119
  %and.i.i703.1 = add nsw i32 %119, 64, !dbg !119
  %cmp.not.i.i704.1 = icmp slt i32 %xor.i.i702.1, %and.i.i703.1, !dbg !120
  %cond.i.i705.1 = select i1 %cmp.not.i.i704.1, i32 %xor.i.i702.1, i32 %118, !dbg !121
  %shl.i.i706.1 = shl i32 %cond.i.i705.1, 2, !dbg !122
  %120 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i706.1, i32 %116), !dbg !123
  %121 = bitcast i32 %120 to float, !dbg !124
  %122 = tail call contract noundef float @llvm.maxnum.f32(float %115, float %121), !dbg !125
  %123 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1, float %122), !dbg !127
  %sub.1 = fsub contract float %maximum.sroa.0.1, %123, !dbg !129
  %mul212.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !130
  %cmp.i.i.1 = fcmp contract olt float %mul212.1, -1.260000e+02, !dbg !131
  %cond.i.i707.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i.1 = fadd contract float %mul212.1, %cond.i.i707.1, !dbg !131
  %124 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !131
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %124, !dbg !131
  %numerator.sroa.0.0.vec.extract2283 = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !241
  %numerator.sroa.0.4.vec.extract2320 = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !241
  %numerator.sroa.0.8.vec.extract2357 = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !241
  %numerator.sroa.0.12.vec.extract2394 = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !241
  %mul229.1829 = fmul contract float %mul.i.i.1, %numerator.sroa.0.0.vec.extract2283, !dbg !134
  %mul232.1830 = fmul contract float %mul.i.i.1, %numerator.sroa.0.4.vec.extract2320, !dbg !242
  %mul235.1831 = fmul contract float %mul.i.i.1, %numerator.sroa.0.8.vec.extract2357, !dbg !243
  %mul238.1832 = fmul contract float %mul.i.i.1, %numerator.sroa.0.12.vec.extract2394, !dbg !244
  %numerator.sroa.0.0.vec.insert2285 = insertelement <4 x float> poison, float %mul229.1829, i64 0, !dbg !135
  %numerator.sroa.0.4.vec.insert2322 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2285, float %mul232.1830, i64 1, !dbg !135
  %numerator.sroa.0.8.vec.insert2359 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2322, float %mul235.1831, i64 2, !dbg !135
  %numerator.sroa.0.12.vec.insert2396 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2359, float %mul238.1832, i64 3, !dbg !135
  %numerator.sroa.98.16.vec.extract2439 = extractelement <4 x float> %numerator.sroa.98.0, i64 0, !dbg !241
  %numerator.sroa.98.20.vec.extract2476 = extractelement <4 x float> %numerator.sroa.98.0, i64 1, !dbg !241
  %numerator.sroa.98.24.vec.extract2513 = extractelement <4 x float> %numerator.sroa.98.0, i64 2, !dbg !241
  %numerator.sroa.98.28.vec.extract2550 = extractelement <4 x float> %numerator.sroa.98.0, i64 3, !dbg !241
  %mul229.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.16.vec.extract2439, !dbg !134
  %mul232.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.20.vec.extract2476, !dbg !242
  %mul235.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.24.vec.extract2513, !dbg !243
  %mul238.1.1 = fmul contract float %mul.i.i.1, %numerator.sroa.98.28.vec.extract2550, !dbg !244
  %numerator.sroa.98.16.vec.insert2441 = insertelement <4 x float> poison, float %mul229.1.1, i64 0, !dbg !135
  %numerator.sroa.98.20.vec.insert2478 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2441, float %mul232.1.1, i64 1, !dbg !135
  %numerator.sroa.98.24.vec.insert2515 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2478, float %mul235.1.1, i64 2, !dbg !135
  %numerator.sroa.98.28.vec.insert2552 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2515, float %mul238.1.1, i64 3, !dbg !135
  %numerator.sroa.194.32.vec.extract2595 = extractelement <4 x float> %numerator.sroa.194.0, i64 0, !dbg !241
  %numerator.sroa.194.36.vec.extract2632 = extractelement <4 x float> %numerator.sroa.194.0, i64 1, !dbg !241
  %numerator.sroa.194.40.vec.extract2669 = extractelement <4 x float> %numerator.sroa.194.0, i64 2, !dbg !241
  %numerator.sroa.194.44.vec.extract2706 = extractelement <4 x float> %numerator.sroa.194.0, i64 3, !dbg !241
  %mul229.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.32.vec.extract2595, !dbg !134
  %mul232.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.36.vec.extract2632, !dbg !242
  %mul235.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.40.vec.extract2669, !dbg !243
  %mul238.2.1 = fmul contract float %mul.i.i.1, %numerator.sroa.194.44.vec.extract2706, !dbg !244
  %numerator.sroa.194.32.vec.insert2597 = insertelement <4 x float> poison, float %mul229.2.1, i64 0, !dbg !135
  %numerator.sroa.194.36.vec.insert2634 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2597, float %mul232.2.1, i64 1, !dbg !135
  %numerator.sroa.194.40.vec.insert2671 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2634, float %mul235.2.1, i64 2, !dbg !135
  %numerator.sroa.194.44.vec.insert2708 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2671, float %mul238.2.1, i64 3, !dbg !135
  %numerator.sroa.290.48.vec.extract2751 = extractelement <4 x float> %numerator.sroa.290.0, i64 0, !dbg !241
  %numerator.sroa.290.52.vec.extract2788 = extractelement <4 x float> %numerator.sroa.290.0, i64 1, !dbg !241
  %numerator.sroa.290.56.vec.extract2825 = extractelement <4 x float> %numerator.sroa.290.0, i64 2, !dbg !241
  %numerator.sroa.290.60.vec.extract2862 = extractelement <4 x float> %numerator.sroa.290.0, i64 3, !dbg !241
  %mul229.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.48.vec.extract2751, !dbg !134
  %mul232.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.52.vec.extract2788, !dbg !242
  %mul235.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.56.vec.extract2825, !dbg !243
  %mul238.3.1 = fmul contract float %mul.i.i.1, %numerator.sroa.290.60.vec.extract2862, !dbg !244
  %numerator.sroa.290.48.vec.insert2753 = insertelement <4 x float> poison, float %mul229.3.1, i64 0, !dbg !135
  %numerator.sroa.290.52.vec.insert2790 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2753, float %mul232.3.1, i64 1, !dbg !135
  %numerator.sroa.290.56.vec.insert2827 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2790, float %mul235.3.1, i64 2, !dbg !135
  %numerator.sroa.290.60.vec.insert2864 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2827, float %mul238.3.1, i64 3, !dbg !135
  %sub262.1 = fsub contract float %spec.select2927, %123, !dbg !136
  %sub266.1 = fsub contract float %condval.0.1.1, %123, !dbg !137
  %sub270.1 = fsub contract float %condval.0.2.1, %123, !dbg !138
  %sub274.1 = fsub contract float %condval.0.3.1, %123, !dbg !139
  %mul279.1 = fmul contract float %sub262.1, 0x3FC7154760000000, !dbg !140
  %mul283.1 = fmul contract float %sub266.1, 0x3FC7154760000000, !dbg !141
  %mul287.1 = fmul contract float %sub270.1, 0x3FC7154760000000, !dbg !142
  %mul291.1 = fmul contract float %sub274.1, 0x3FC7154760000000, !dbg !143
  %add296.1 = fadd contract float %mul279.1, 8.000000e+00, !dbg !144
  %add300.1 = fadd contract float %mul283.1, 8.000000e+00, !dbg !145
  %add304.1 = fadd contract float %mul287.1, 8.000000e+00, !dbg !146
  %add308.1 = fadd contract float %mul291.1, 8.000000e+00, !dbg !147
  %cmp.i.i708.1 = fcmp contract olt float %add296.1, -1.260000e+02, !dbg !148
  %cond.i.i709.1 = select contract i1 %cmp.i.i708.1, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i710.1 = fadd contract float %add296.1, %cond.i.i709.1, !dbg !148
  %125 = tail call contract float @llvm.exp2.f32(float %add.i.i710.1), !dbg !148
  %cond2.i.i711.1 = select contract i1 %cmp.i.i708.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i712.1 = fmul contract float %cond2.i.i711.1, %125, !dbg !148
  %cmp.i.i713.1 = fcmp contract olt float %add300.1, -1.260000e+02, !dbg !150
  %cond.i.i714.1 = select contract i1 %cmp.i.i713.1, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i715.1 = fadd contract float %add300.1, %cond.i.i714.1, !dbg !150
  %126 = tail call contract float @llvm.exp2.f32(float %add.i.i715.1), !dbg !150
  %cond2.i.i716.1 = select contract i1 %cmp.i.i713.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i717.1 = fmul contract float %cond2.i.i716.1, %126, !dbg !150
  %cmp.i.i718.1 = fcmp contract olt float %add304.1, -1.260000e+02, !dbg !152
  %cond.i.i719.1 = select contract i1 %cmp.i.i718.1, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i720.1 = fadd contract float %add304.1, %cond.i.i719.1, !dbg !152
  %127 = tail call contract float @llvm.exp2.f32(float %add.i.i720.1), !dbg !152
  %cond2.i.i721.1 = select contract i1 %cmp.i.i718.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i722.1 = fmul contract float %cond2.i.i721.1, %127, !dbg !152
  %cmp.i.i723.1 = fcmp contract olt float %add308.1, -1.260000e+02, !dbg !154
  %cond.i.i724.1 = select contract i1 %cmp.i.i723.1, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i725.1 = fadd contract float %add308.1, %cond.i.i724.1, !dbg !154
  %128 = tail call contract float @llvm.exp2.f32(float %add.i.i725.1), !dbg !154
  %cond2.i.i726.1 = select contract i1 %cmp.i.i723.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i727.1 = fmul contract float %cond2.i.i726.1, %128, !dbg !154
  %129 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !156, !noalias !164
  %130 = fptrunc float %mul.i.i712.1 to half, !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %129), !dbg !156, !noalias !164
  %131 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !164
  %132 = fptrunc float %mul.i.i717.1 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %131), !dbg !169, !noalias !164
  %133 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !175
  %134 = fptrunc float %mul.i.i722.1 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %133), !dbg !171, !noalias !175
  %135 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !180, !noalias !175
  %136 = fptrunc float %mul.i.i727.1 to half, !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %135), !dbg !180, !noalias !175
  %137 = insertelement <4 x half> poison, half %130, i64 0, !dbg !182
  %138 = insertelement <4 x half> %137, half %132, i64 1, !dbg !182
  %139 = insertelement <4 x half> %138, half %134, i64 2, !dbg !182
  %140 = insertelement <4 x half> %139, half %136, i64 3, !dbg !182
  %conv.i.i.1834 = fpext half %130 to float, !dbg !183
  %add342.1835 = fadd contract float %conv.i.i.1834, 0.000000e+00, !dbg !188
  %conv.i.i.1.1 = fpext half %132 to float, !dbg !183
  %add342.1.1 = fadd contract float %add342.1835, %conv.i.i.1.1, !dbg !188
  %conv.i.i.2.1 = fpext half %134 to float, !dbg !183
  %add342.2.1 = fadd contract float %add342.1.1, %conv.i.i.2.1, !dbg !188
  %conv.i.i.3.1 = fpext half %136 to float, !dbg !183
  %add342.3.1 = fadd contract float %add342.2.1, %conv.i.i.3.1, !dbg !188
  %141 = bitcast float %add342.3.1 to i32, !dbg !189
  %142 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !191
  %143 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %142) #11, !dbg !194
  %xor.i.i733.1 = xor i32 %143, 32, !dbg !195
  %144 = and i32 %143, -64, !dbg !196
  %and.i.i734.1 = add nsw i32 %144, 64, !dbg !196
  %cmp.not.i.i735.1 = icmp slt i32 %xor.i.i733.1, %and.i.i734.1, !dbg !197
  %cond.i.i736.1 = select i1 %cmp.not.i.i735.1, i32 %xor.i.i733.1, i32 %143, !dbg !198
  %shl.i.i737.1 = shl i32 %cond.i.i736.1, 2, !dbg !199
  %145 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i737.1, i32 %141), !dbg !200
  %146 = bitcast i32 %145 to float, !dbg !201
  %add350.1 = fadd contract float %add342.3.1, %146, !dbg !202
  %147 = bitcast float %add350.1 to i32, !dbg !203
  %148 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %149 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %148) #11, !dbg !208
  %xor.i.i738.1 = xor i32 %149, 16, !dbg !209
  %150 = and i32 %149, -64, !dbg !210
  %and.i.i739.1 = add nsw i32 %150, 64, !dbg !210
  %cmp.not.i.i740.1 = icmp slt i32 %xor.i.i738.1, %and.i.i739.1, !dbg !211
  %cond.i.i741.1 = select i1 %cmp.not.i.i740.1, i32 %xor.i.i738.1, i32 %149, !dbg !212
  %shl.i.i742.1 = shl i32 %cond.i.i741.1, 2, !dbg !213
  %151 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i742.1, i32 %147), !dbg !214
  %152 = bitcast i32 %151 to float, !dbg !215
  %add355.1 = fadd contract float %add350.1, %152, !dbg !216
  fence syncscope("warp") release, !dbg !217
  tail call void @llvm.mxc.barrier.warp(), !dbg !220
  fence syncscope("warp") acquire, !dbg !221
  %153 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add375, !dbg !222
  %154 = getelementptr inbounds i8, ptr addrspace(4) %153, i64 %.idx.1, !dbg !222
  %155 = load i64, ptr addrspace(4) %154, align 8, !dbg !223
  %add.ptr384.1.1 = getelementptr inbounds i8, ptr addrspace(4) %154, i64 128, !dbg !222
  %156 = load i64, ptr addrspace(4) %add.ptr384.1.1, align 8, !dbg !223
  %add.ptr384.2.1 = getelementptr inbounds i8, ptr addrspace(4) %154, i64 256, !dbg !222
  %157 = load i64, ptr addrspace(4) %add.ptr384.2.1, align 8, !dbg !223
  %add.ptr384.3.1 = getelementptr inbounds i8, ptr addrspace(4) %154, i64 384, !dbg !222
  %158 = load i64, ptr addrspace(4) %add.ptr384.3.1, align 8, !dbg !223
  %mul249.1 = fmul contract float %denominator.sroa.0.1, %mul.i.i.1, !dbg !245
  %159 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul414, !dbg !224
  %add.ptr426.idx.1843 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.1844 = getelementptr inbounds i8, ptr addrspace(3) %159, i32 %add.ptr426.idx.1843, !dbg !224
  %v_column.sroa.130.0.insert.ext1376 = shl i64 %158, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext1221 = shl i64 %157, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift1222 = and i64 %v_column.sroa.98.0.insert.ext1221, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1224 = or disjoint i64 %v_column.sroa.130.0.insert.ext1376, %v_column.sroa.98.0.insert.shift1222, !dbg !225
  %v_column.sroa.66.0.insert.ext1066 = shl i64 %156, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1067 = and i64 %v_column.sroa.66.0.insert.ext1066, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1069 = or disjoint i64 %v_column.sroa.98.0.insert.insert1224, %v_column.sroa.66.0.insert.shift1067, !dbg !225
  %v_column.sroa.0.0.insert.ext939 = and i64 %155, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert941 = or disjoint i64 %v_column.sroa.66.0.insert.insert1069, %v_column.sroa.0.0.insert.ext939, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert941, ptr addrspace(3) %add.ptr426.1844, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1590 = lshr i64 %155, 16, !dbg !226
  %add415.1.1 = or disjoint i32 %mul414, 256, !dbg !227
  %160 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.1.1, !dbg !224
  %xor422.1.1 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.1.1 = xor i32 %xor422.1.1, 8, !dbg !224
  %add.ptr426.1.1 = getelementptr inbounds i8, ptr addrspace(3) %160, i32 %add.ptr426.idx.1.1, !dbg !224
  %161 = shl i64 %158, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1381 = and i64 %161, -281474976710656, !dbg !225
  %162 = shl i64 %157, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1227 = and i64 %162, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1229 = or disjoint i64 %v_column.sroa.130.0.insert.ext1381, %v_column.sroa.98.0.insert.shift1227, !dbg !225
  %v_column.sroa.66.0.insert.ext1071 = and i64 %156, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1074 = or disjoint i64 %v_column.sroa.98.0.insert.insert1229, %v_column.sroa.66.0.insert.ext1071, !dbg !225
  %v_column.sroa.0.0.insert.ext943 = and i64 %v_fetch.sroa.0.2.extract.shift1590, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert945 = or disjoint i64 %v_column.sroa.66.0.insert.insert1074, %v_column.sroa.0.0.insert.ext943, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert945, ptr addrspace(3) %add.ptr426.1.1, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1611 = lshr i64 %155, 32, !dbg !226
  %add415.2.1 = or disjoint i32 %mul414, 512, !dbg !227
  %163 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.2.1, !dbg !224
  %xor422.2.1 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.2.1 = xor i32 %xor422.2.1, 16, !dbg !224
  %add.ptr426.2.1 = getelementptr inbounds i8, ptr addrspace(3) %163, i32 %add.ptr426.idx.2.1, !dbg !224
  %164 = shl i64 %158, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1386 = and i64 %164, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1231 = and i64 %157, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1234 = or disjoint i64 %v_column.sroa.130.0.insert.ext1386, %v_column.sroa.98.0.insert.ext1231, !dbg !225
  %165 = lshr i64 %156, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1077 = and i64 %165, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1079 = or disjoint i64 %v_column.sroa.98.0.insert.insert1234, %v_column.sroa.66.0.insert.shift1077, !dbg !225
  %v_column.sroa.0.0.insert.ext947 = and i64 %v_fetch.sroa.0.4.extract.shift1611, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert949 = or disjoint i64 %v_column.sroa.66.0.insert.insert1079, %v_column.sroa.0.0.insert.ext947, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert949, ptr addrspace(3) %add.ptr426.2.1, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1632 = lshr i64 %155, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift1863 = and i64 %158, -281474976710656, !dbg !225
  %add415.3.1 = or disjoint i32 %mul414, 768, !dbg !227
  %166 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.3.1, !dbg !224
  %xor422.3.1 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.3.1 = xor i32 %xor422.3.1, 24, !dbg !224
  %add.ptr426.3.1 = getelementptr inbounds i8, ptr addrspace(3) %166, i32 %add.ptr426.idx.3.1, !dbg !224
  %167 = lshr i64 %157, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1237 = and i64 %167, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1239 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1863, %v_column.sroa.98.0.insert.shift1237, !dbg !225
  %168 = lshr i64 %156, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1082 = and i64 %168, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1084 = or disjoint i64 %v_column.sroa.98.0.insert.insert1239, %v_column.sroa.66.0.insert.shift1082, !dbg !225
  %v_column.sroa.0.0.insert.insert953 = or disjoint i64 %v_column.sroa.66.0.insert.insert1084, %v_fetch.sroa.0.6.extract.shift1632, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert953, ptr addrspace(3) %add.ptr426.3.1, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add443.1846 = or disjoint i32 %mul436, %mul442, !dbg !233
  %169 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.1846, !dbg !234
  %add.ptr453.idx.1847 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.1848 = getelementptr inbounds i8, ptr addrspace(3) %169, i32 %add.ptr453.idx.1847, !dbg !234
  %170 = load <4 x half>, ptr addrspace(3) %add.ptr453.1848, align 8, !dbg !235
  %add438.1.1 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.1.1 = or disjoint i32 %add438.1.1, 64, !dbg !233
  %171 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.1.1, !dbg !234
  %xor449.1.1 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.1.1 = xor i32 %xor449.1.1, 8, !dbg !234
  %add.ptr453.1.1 = getelementptr inbounds i8, ptr addrspace(3) %171, i32 %add.ptr453.idx.1.1, !dbg !234
  %172 = load <4 x half>, ptr addrspace(3) %add.ptr453.1.1, align 8, !dbg !235
  %add438.2.1 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.2.1 = or disjoint i32 %add438.2.1, 128, !dbg !233
  %173 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.2.1, !dbg !234
  %xor449.2.1 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.2.1 = xor i32 %xor449.2.1, 16, !dbg !234
  %add.ptr453.2.1 = getelementptr inbounds i8, ptr addrspace(3) %173, i32 %add.ptr453.idx.2.1, !dbg !234
  %174 = load <4 x half>, ptr addrspace(3) %add.ptr453.2.1, align 8, !dbg !235
  %add438.3.1 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.3.1 = or disjoint i32 %add438.3.1, 192, !dbg !233
  %175 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.3.1, !dbg !234
  %xor449.3.1 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.3.1 = xor i32 %xor449.3.1, 24, !dbg !234
  %add.ptr453.3.1 = getelementptr inbounds i8, ptr addrspace(3) %175, i32 %add.ptr453.idx.3.1, !dbg !234
  %176 = load <4 x half>, ptr addrspace(3) %add.ptr453.3.1, align 8, !dbg !235
  %177 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %170, <4 x half> %140, <4 x float> %numerator.sroa.0.12.vec.insert2396), !dbg !236
  %178 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %172, <4 x half> %140, <4 x float> %numerator.sroa.98.28.vec.insert2552), !dbg !236
  %179 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %174, <4 x half> %140, <4 x float> %numerator.sroa.194.44.vec.insert2708), !dbg !236
  %180 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %176, <4 x half> %140, <4 x float> %numerator.sroa.290.60.vec.insert2864), !dbg !236
  %add359.1 = fadd contract float %mul249.1, %add355.1, !dbg !237
  br label %if.end479.1, !dbg !238

if.end479.1:                                      ; preds = %if.then.1, %if.end479
  %numerator.sroa.290.1 = phi <4 x float> [ %numerator.sroa.290.0, %if.end479 ], [ %180, %if.then.1 ], !dbg !239
  %numerator.sroa.194.1 = phi <4 x float> [ %numerator.sroa.194.0, %if.end479 ], [ %179, %if.then.1 ], !dbg !239
  %numerator.sroa.98.1 = phi <4 x float> [ %numerator.sroa.98.0, %if.end479 ], [ %178, %if.then.1 ], !dbg !239
  %numerator.sroa.0.1 = phi <4 x float> [ %numerator.sroa.0.0, %if.end479 ], [ %177, %if.then.1 ], !dbg !239
  %maximum.sroa.0.1.1 = phi float [ %maximum.sroa.0.1, %if.end479 ], [ %123, %if.then.1 ], !dbg !239
  %denominator.sroa.0.1.1 = phi float [ %denominator.sroa.0.1, %if.end479 ], [ %add359.1, %if.then.1 ], !dbg !239
  %181 = or disjoint i64 %15, 2, !dbg !240
  %arrayidx80.2 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %181, !dbg !67
  %182 = load i32, ptr addrspace(1) %arrayidx80.2, align 4, !dbg !67, !tbaa !30
  %mul81.2 = shl nsw i32 %182, 4, !dbg !68
  %cmp82.2 = icmp slt i32 %182, 0, !dbg !69
  %cmp84.not.2 = icmp sgt i32 %mul81.2, %1
  %or.cond.2 = select i1 %cmp82.2, i1 true, i1 %cmp84.not.2, !dbg !70
  br i1 %or.cond.2, label %if.end479.2, label %if.then.2, !dbg !70

if.then.2:                                        ; preds = %if.end479.1
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %conv94.2 = zext nneg i32 %mul81.2 to i64
  %.idx.2 = shl nuw nsw i64 %conv94.2, 7
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep789, i64 %.idx.2, !dbg !76
  %.idx797.2 = shl nuw nsw i64 %conv, 17, !dbg !77
  %183 = getelementptr inbounds i8, ptr addrspace(4) %gep.2, i64 %.idx797.2, !dbg !77
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep762, ptr addrspace(4) noundef align 16 dereferenceable(16) %183, i64 16, i1 false), !dbg !78, !tbaa.struct !47, !call_argsrelate !79
  %gep769.1.2 = getelementptr inbounds i8, ptr addrspace(4) %183, i64 1024, !dbg !77
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep763.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep769.1.2, i64 16, i1 false), !dbg !78, !tbaa.struct !47, !call_argsrelate !79
  fence syncscope("warp") release, !dbg !80
  tail call void @llvm.mxc.barrier.warp(), !dbg !83
  fence syncscope("warp") acquire, !dbg !84
  %k_local.sroa.0.0.copyload.2854 = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !85
  %184 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2854, <4 x half> %6, <4 x float> zeroinitializer), !dbg !86
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !85
  %185 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %7, <4 x float> %184), !dbg !86
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !85
  %186 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %8, <4 x float> %185), !dbg !86
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !85
  %187 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %9, <4 x float> %186), !dbg !86
  %add167.2 = add nuw nsw i32 %mul81.2, %mul166
  %cmp170.not.2855 = icmp sgt i32 %add167.2, %1, !dbg !87
  %scores.sroa.0.0.vec.extract1983 = extractelement <4 x float> %187, i64 0
  %spec.select2928 = select i1 %cmp170.not.2855, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1983, !dbg !88
  %cmp170.not.1.2.not = icmp slt i32 %add167.2, %1, !dbg !87
  %scores.sroa.0.4.vec.extract2082 = extractelement <4 x float> %187, i64 1, !dbg !88
  %condval.0.1.2 = select i1 %cmp170.not.1.2.not, float %scores.sroa.0.4.vec.extract2082, float 0xFFF0000000000000, !dbg !88
  %add168.2.2 = or disjoint i32 %add167.2, 2, !dbg !89
  %cmp170.not.2.2 = icmp sgt i32 %add168.2.2, %1, !dbg !87
  %scores.sroa.0.8.vec.extract2159 = extractelement <4 x float> %187, i64 2, !dbg !88
  %condval.0.2.2 = select i1 %cmp170.not.2.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2159, !dbg !88
  %add168.3.2 = or disjoint i32 %add167.2, 3, !dbg !89
  %cmp170.not.3.2 = icmp sgt i32 %add168.3.2, %1, !dbg !87
  %scores.sroa.0.12.vec.extract2236 = extractelement <4 x float> %187, i64 3, !dbg !88
  %condval.0.3.2 = select i1 %cmp170.not.3.2, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2236, !dbg !88
  %188 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2928, float 0xFFF0000000000000), !dbg !90
  %189 = tail call contract noundef float @llvm.maxnum.f32(float %188, float %condval.0.1.2), !dbg !90
  %190 = tail call contract noundef float @llvm.maxnum.f32(float %189, float %condval.0.2.2), !dbg !90
  %191 = tail call contract noundef float @llvm.maxnum.f32(float %190, float %condval.0.3.2), !dbg !90
  %192 = bitcast float %191 to i32, !dbg !94
  %193 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !97
  %194 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %193) #11, !dbg !102
  %xor.i.i.2 = xor i32 %194, 32, !dbg !103
  %195 = and i32 %194, -64, !dbg !104
  %and.i.i.2 = add nsw i32 %195, 64, !dbg !104
  %cmp.not.i.i.2 = icmp slt i32 %xor.i.i.2, %and.i.i.2, !dbg !105
  %cond.i.i.2 = select i1 %cmp.not.i.i.2, i32 %xor.i.i.2, i32 %194, !dbg !106
  %shl.i.i.2 = shl i32 %cond.i.i.2, 2, !dbg !107
  %196 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.2, i32 %192), !dbg !108
  %197 = bitcast i32 %196 to float, !dbg !109
  %198 = tail call contract noundef float @llvm.maxnum.f32(float %191, float %197), !dbg !110
  %199 = bitcast float %198 to i32, !dbg !112
  %200 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !114
  %201 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %200) #11, !dbg !117
  %xor.i.i702.2 = xor i32 %201, 16, !dbg !118
  %202 = and i32 %201, -64, !dbg !119
  %and.i.i703.2 = add nsw i32 %202, 64, !dbg !119
  %cmp.not.i.i704.2 = icmp slt i32 %xor.i.i702.2, %and.i.i703.2, !dbg !120
  %cond.i.i705.2 = select i1 %cmp.not.i.i704.2, i32 %xor.i.i702.2, i32 %201, !dbg !121
  %shl.i.i706.2 = shl i32 %cond.i.i705.2, 2, !dbg !122
  %203 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i706.2, i32 %199), !dbg !123
  %204 = bitcast i32 %203 to float, !dbg !124
  %205 = tail call contract noundef float @llvm.maxnum.f32(float %198, float %204), !dbg !125
  %206 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.1, float %205), !dbg !127
  %sub.2 = fsub contract float %maximum.sroa.0.1.1, %206, !dbg !129
  %mul212.2 = fmul contract float %sub.2, 0x3FC7154760000000, !dbg !130
  %cmp.i.i.2 = fcmp contract olt float %mul212.2, -1.260000e+02, !dbg !131
  %cond.i.i707.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i.2 = fadd contract float %mul212.2, %cond.i.i707.2, !dbg !131
  %207 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !131
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %207, !dbg !131
  %numerator.sroa.0.0.vec.extract2287 = extractelement <4 x float> %numerator.sroa.0.1, i64 0, !dbg !241
  %numerator.sroa.0.4.vec.extract2324 = extractelement <4 x float> %numerator.sroa.0.1, i64 1, !dbg !241
  %numerator.sroa.0.8.vec.extract2361 = extractelement <4 x float> %numerator.sroa.0.1, i64 2, !dbg !241
  %numerator.sroa.0.12.vec.extract2398 = extractelement <4 x float> %numerator.sroa.0.1, i64 3, !dbg !241
  %mul229.2866 = fmul contract float %mul.i.i.2, %numerator.sroa.0.0.vec.extract2287, !dbg !134
  %mul232.2867 = fmul contract float %mul.i.i.2, %numerator.sroa.0.4.vec.extract2324, !dbg !242
  %mul235.2868 = fmul contract float %mul.i.i.2, %numerator.sroa.0.8.vec.extract2361, !dbg !243
  %mul238.2869 = fmul contract float %mul.i.i.2, %numerator.sroa.0.12.vec.extract2398, !dbg !244
  %numerator.sroa.0.0.vec.insert2289 = insertelement <4 x float> poison, float %mul229.2866, i64 0, !dbg !135
  %numerator.sroa.0.4.vec.insert2326 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2289, float %mul232.2867, i64 1, !dbg !135
  %numerator.sroa.0.8.vec.insert2363 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2326, float %mul235.2868, i64 2, !dbg !135
  %numerator.sroa.0.12.vec.insert2400 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2363, float %mul238.2869, i64 3, !dbg !135
  %numerator.sroa.98.16.vec.extract2443 = extractelement <4 x float> %numerator.sroa.98.1, i64 0, !dbg !241
  %numerator.sroa.98.20.vec.extract2480 = extractelement <4 x float> %numerator.sroa.98.1, i64 1, !dbg !241
  %numerator.sroa.98.24.vec.extract2517 = extractelement <4 x float> %numerator.sroa.98.1, i64 2, !dbg !241
  %numerator.sroa.98.28.vec.extract2554 = extractelement <4 x float> %numerator.sroa.98.1, i64 3, !dbg !241
  %mul229.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.16.vec.extract2443, !dbg !134
  %mul232.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.20.vec.extract2480, !dbg !242
  %mul235.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.24.vec.extract2517, !dbg !243
  %mul238.1.2 = fmul contract float %mul.i.i.2, %numerator.sroa.98.28.vec.extract2554, !dbg !244
  %numerator.sroa.98.16.vec.insert2445 = insertelement <4 x float> poison, float %mul229.1.2, i64 0, !dbg !135
  %numerator.sroa.98.20.vec.insert2482 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2445, float %mul232.1.2, i64 1, !dbg !135
  %numerator.sroa.98.24.vec.insert2519 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2482, float %mul235.1.2, i64 2, !dbg !135
  %numerator.sroa.98.28.vec.insert2556 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2519, float %mul238.1.2, i64 3, !dbg !135
  %numerator.sroa.194.32.vec.extract2599 = extractelement <4 x float> %numerator.sroa.194.1, i64 0, !dbg !241
  %numerator.sroa.194.36.vec.extract2636 = extractelement <4 x float> %numerator.sroa.194.1, i64 1, !dbg !241
  %numerator.sroa.194.40.vec.extract2673 = extractelement <4 x float> %numerator.sroa.194.1, i64 2, !dbg !241
  %numerator.sroa.194.44.vec.extract2710 = extractelement <4 x float> %numerator.sroa.194.1, i64 3, !dbg !241
  %mul229.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.32.vec.extract2599, !dbg !134
  %mul232.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.36.vec.extract2636, !dbg !242
  %mul235.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.40.vec.extract2673, !dbg !243
  %mul238.2.2 = fmul contract float %mul.i.i.2, %numerator.sroa.194.44.vec.extract2710, !dbg !244
  %numerator.sroa.194.32.vec.insert2601 = insertelement <4 x float> poison, float %mul229.2.2, i64 0, !dbg !135
  %numerator.sroa.194.36.vec.insert2638 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2601, float %mul232.2.2, i64 1, !dbg !135
  %numerator.sroa.194.40.vec.insert2675 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2638, float %mul235.2.2, i64 2, !dbg !135
  %numerator.sroa.194.44.vec.insert2712 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2675, float %mul238.2.2, i64 3, !dbg !135
  %numerator.sroa.290.48.vec.extract2755 = extractelement <4 x float> %numerator.sroa.290.1, i64 0, !dbg !241
  %numerator.sroa.290.52.vec.extract2792 = extractelement <4 x float> %numerator.sroa.290.1, i64 1, !dbg !241
  %numerator.sroa.290.56.vec.extract2829 = extractelement <4 x float> %numerator.sroa.290.1, i64 2, !dbg !241
  %numerator.sroa.290.60.vec.extract2866 = extractelement <4 x float> %numerator.sroa.290.1, i64 3, !dbg !241
  %mul229.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.48.vec.extract2755, !dbg !134
  %mul232.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.52.vec.extract2792, !dbg !242
  %mul235.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.56.vec.extract2829, !dbg !243
  %mul238.3.2 = fmul contract float %mul.i.i.2, %numerator.sroa.290.60.vec.extract2866, !dbg !244
  %numerator.sroa.290.48.vec.insert2757 = insertelement <4 x float> poison, float %mul229.3.2, i64 0, !dbg !135
  %numerator.sroa.290.52.vec.insert2794 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2757, float %mul232.3.2, i64 1, !dbg !135
  %numerator.sroa.290.56.vec.insert2831 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2794, float %mul235.3.2, i64 2, !dbg !135
  %numerator.sroa.290.60.vec.insert2868 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2831, float %mul238.3.2, i64 3, !dbg !135
  %sub262.2 = fsub contract float %spec.select2928, %206, !dbg !136
  %sub266.2 = fsub contract float %condval.0.1.2, %206, !dbg !137
  %sub270.2 = fsub contract float %condval.0.2.2, %206, !dbg !138
  %sub274.2 = fsub contract float %condval.0.3.2, %206, !dbg !139
  %mul279.2 = fmul contract float %sub262.2, 0x3FC7154760000000, !dbg !140
  %mul283.2 = fmul contract float %sub266.2, 0x3FC7154760000000, !dbg !141
  %mul287.2 = fmul contract float %sub270.2, 0x3FC7154760000000, !dbg !142
  %mul291.2 = fmul contract float %sub274.2, 0x3FC7154760000000, !dbg !143
  %add296.2 = fadd contract float %mul279.2, 8.000000e+00, !dbg !144
  %add300.2 = fadd contract float %mul283.2, 8.000000e+00, !dbg !145
  %add304.2 = fadd contract float %mul287.2, 8.000000e+00, !dbg !146
  %add308.2 = fadd contract float %mul291.2, 8.000000e+00, !dbg !147
  %cmp.i.i708.2 = fcmp contract olt float %add296.2, -1.260000e+02, !dbg !148
  %cond.i.i709.2 = select contract i1 %cmp.i.i708.2, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i710.2 = fadd contract float %add296.2, %cond.i.i709.2, !dbg !148
  %208 = tail call contract float @llvm.exp2.f32(float %add.i.i710.2), !dbg !148
  %cond2.i.i711.2 = select contract i1 %cmp.i.i708.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i712.2 = fmul contract float %cond2.i.i711.2, %208, !dbg !148
  %cmp.i.i713.2 = fcmp contract olt float %add300.2, -1.260000e+02, !dbg !150
  %cond.i.i714.2 = select contract i1 %cmp.i.i713.2, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i715.2 = fadd contract float %add300.2, %cond.i.i714.2, !dbg !150
  %209 = tail call contract float @llvm.exp2.f32(float %add.i.i715.2), !dbg !150
  %cond2.i.i716.2 = select contract i1 %cmp.i.i713.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i717.2 = fmul contract float %cond2.i.i716.2, %209, !dbg !150
  %cmp.i.i718.2 = fcmp contract olt float %add304.2, -1.260000e+02, !dbg !152
  %cond.i.i719.2 = select contract i1 %cmp.i.i718.2, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i720.2 = fadd contract float %add304.2, %cond.i.i719.2, !dbg !152
  %210 = tail call contract float @llvm.exp2.f32(float %add.i.i720.2), !dbg !152
  %cond2.i.i721.2 = select contract i1 %cmp.i.i718.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i722.2 = fmul contract float %cond2.i.i721.2, %210, !dbg !152
  %cmp.i.i723.2 = fcmp contract olt float %add308.2, -1.260000e+02, !dbg !154
  %cond.i.i724.2 = select contract i1 %cmp.i.i723.2, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i725.2 = fadd contract float %add308.2, %cond.i.i724.2, !dbg !154
  %211 = tail call contract float @llvm.exp2.f32(float %add.i.i725.2), !dbg !154
  %cond2.i.i726.2 = select contract i1 %cmp.i.i723.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i727.2 = fmul contract float %cond2.i.i726.2, %211, !dbg !154
  %212 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !156, !noalias !164
  %213 = fptrunc float %mul.i.i712.2 to half, !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %212), !dbg !156, !noalias !164
  %214 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !164
  %215 = fptrunc float %mul.i.i717.2 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %214), !dbg !169, !noalias !164
  %216 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !175
  %217 = fptrunc float %mul.i.i722.2 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %216), !dbg !171, !noalias !175
  %218 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !180, !noalias !175
  %219 = fptrunc float %mul.i.i727.2 to half, !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %218), !dbg !180, !noalias !175
  %220 = insertelement <4 x half> poison, half %213, i64 0, !dbg !182
  %221 = insertelement <4 x half> %220, half %215, i64 1, !dbg !182
  %222 = insertelement <4 x half> %221, half %217, i64 2, !dbg !182
  %223 = insertelement <4 x half> %222, half %219, i64 3, !dbg !182
  %conv.i.i.2871 = fpext half %213 to float, !dbg !183
  %add342.2872 = fadd contract float %conv.i.i.2871, 0.000000e+00, !dbg !188
  %conv.i.i.1.2 = fpext half %215 to float, !dbg !183
  %add342.1.2 = fadd contract float %add342.2872, %conv.i.i.1.2, !dbg !188
  %conv.i.i.2.2 = fpext half %217 to float, !dbg !183
  %add342.2.2 = fadd contract float %add342.1.2, %conv.i.i.2.2, !dbg !188
  %conv.i.i.3.2 = fpext half %219 to float, !dbg !183
  %add342.3.2 = fadd contract float %add342.2.2, %conv.i.i.3.2, !dbg !188
  %224 = bitcast float %add342.3.2 to i32, !dbg !189
  %225 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !191
  %226 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %225) #11, !dbg !194
  %xor.i.i733.2 = xor i32 %226, 32, !dbg !195
  %227 = and i32 %226, -64, !dbg !196
  %and.i.i734.2 = add nsw i32 %227, 64, !dbg !196
  %cmp.not.i.i735.2 = icmp slt i32 %xor.i.i733.2, %and.i.i734.2, !dbg !197
  %cond.i.i736.2 = select i1 %cmp.not.i.i735.2, i32 %xor.i.i733.2, i32 %226, !dbg !198
  %shl.i.i737.2 = shl i32 %cond.i.i736.2, 2, !dbg !199
  %228 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i737.2, i32 %224), !dbg !200
  %229 = bitcast i32 %228 to float, !dbg !201
  %add350.2 = fadd contract float %add342.3.2, %229, !dbg !202
  %230 = bitcast float %add350.2 to i32, !dbg !203
  %231 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %232 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %231) #11, !dbg !208
  %xor.i.i738.2 = xor i32 %232, 16, !dbg !209
  %233 = and i32 %232, -64, !dbg !210
  %and.i.i739.2 = add nsw i32 %233, 64, !dbg !210
  %cmp.not.i.i740.2 = icmp slt i32 %xor.i.i738.2, %and.i.i739.2, !dbg !211
  %cond.i.i741.2 = select i1 %cmp.not.i.i740.2, i32 %xor.i.i738.2, i32 %232, !dbg !212
  %shl.i.i742.2 = shl i32 %cond.i.i741.2, 2, !dbg !213
  %234 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i742.2, i32 %230), !dbg !214
  %235 = bitcast i32 %234 to float, !dbg !215
  %add355.2 = fadd contract float %add350.2, %235, !dbg !216
  fence syncscope("warp") release, !dbg !217
  tail call void @llvm.mxc.barrier.warp(), !dbg !220
  fence syncscope("warp") acquire, !dbg !221
  %236 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add375, !dbg !222
  %237 = getelementptr inbounds i8, ptr addrspace(4) %236, i64 %.idx.2, !dbg !222
  %238 = load i64, ptr addrspace(4) %237, align 8, !dbg !223
  %add.ptr384.1.2 = getelementptr inbounds i8, ptr addrspace(4) %237, i64 128, !dbg !222
  %239 = load i64, ptr addrspace(4) %add.ptr384.1.2, align 8, !dbg !223
  %add.ptr384.2.2 = getelementptr inbounds i8, ptr addrspace(4) %237, i64 256, !dbg !222
  %240 = load i64, ptr addrspace(4) %add.ptr384.2.2, align 8, !dbg !223
  %add.ptr384.3.2 = getelementptr inbounds i8, ptr addrspace(4) %237, i64 384, !dbg !222
  %241 = load i64, ptr addrspace(4) %add.ptr384.3.2, align 8, !dbg !223
  %mul249.2 = fmul contract float %denominator.sroa.0.1.1, %mul.i.i.2, !dbg !245
  %242 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul414, !dbg !224
  %add.ptr426.idx.2880 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.2881 = getelementptr inbounds i8, ptr addrspace(3) %242, i32 %add.ptr426.idx.2880, !dbg !224
  %v_column.sroa.130.0.insert.ext1396 = shl i64 %241, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext1241 = shl i64 %240, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift1242 = and i64 %v_column.sroa.98.0.insert.ext1241, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1244 = or disjoint i64 %v_column.sroa.130.0.insert.ext1396, %v_column.sroa.98.0.insert.shift1242, !dbg !225
  %v_column.sroa.66.0.insert.ext1086 = shl i64 %239, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1087 = and i64 %v_column.sroa.66.0.insert.ext1086, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1089 = or disjoint i64 %v_column.sroa.98.0.insert.insert1244, %v_column.sroa.66.0.insert.shift1087, !dbg !225
  %v_column.sroa.0.0.insert.ext955 = and i64 %238, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert957 = or disjoint i64 %v_column.sroa.66.0.insert.insert1089, %v_column.sroa.0.0.insert.ext955, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert957, ptr addrspace(3) %add.ptr426.2881, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1593 = lshr i64 %238, 16, !dbg !226
  %add415.1.2 = or disjoint i32 %mul414, 256, !dbg !227
  %243 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.1.2, !dbg !224
  %xor422.1.2 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.1.2 = xor i32 %xor422.1.2, 8, !dbg !224
  %add.ptr426.1.2 = getelementptr inbounds i8, ptr addrspace(3) %243, i32 %add.ptr426.idx.1.2, !dbg !224
  %244 = shl i64 %241, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1401 = and i64 %244, -281474976710656, !dbg !225
  %245 = shl i64 %240, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1247 = and i64 %245, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1249 = or disjoint i64 %v_column.sroa.130.0.insert.ext1401, %v_column.sroa.98.0.insert.shift1247, !dbg !225
  %v_column.sroa.66.0.insert.ext1091 = and i64 %239, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1094 = or disjoint i64 %v_column.sroa.98.0.insert.insert1249, %v_column.sroa.66.0.insert.ext1091, !dbg !225
  %v_column.sroa.0.0.insert.ext959 = and i64 %v_fetch.sroa.0.2.extract.shift1593, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert961 = or disjoint i64 %v_column.sroa.66.0.insert.insert1094, %v_column.sroa.0.0.insert.ext959, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert961, ptr addrspace(3) %add.ptr426.1.2, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1614 = lshr i64 %238, 32, !dbg !226
  %add415.2.2 = or disjoint i32 %mul414, 512, !dbg !227
  %246 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.2.2, !dbg !224
  %xor422.2.2 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.2.2 = xor i32 %xor422.2.2, 16, !dbg !224
  %add.ptr426.2.2 = getelementptr inbounds i8, ptr addrspace(3) %246, i32 %add.ptr426.idx.2.2, !dbg !224
  %247 = shl i64 %241, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1406 = and i64 %247, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1251 = and i64 %240, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1254 = or disjoint i64 %v_column.sroa.130.0.insert.ext1406, %v_column.sroa.98.0.insert.ext1251, !dbg !225
  %248 = lshr i64 %239, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1097 = and i64 %248, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1099 = or disjoint i64 %v_column.sroa.98.0.insert.insert1254, %v_column.sroa.66.0.insert.shift1097, !dbg !225
  %v_column.sroa.0.0.insert.ext963 = and i64 %v_fetch.sroa.0.4.extract.shift1614, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert965 = or disjoint i64 %v_column.sroa.66.0.insert.insert1099, %v_column.sroa.0.0.insert.ext963, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert965, ptr addrspace(3) %add.ptr426.2.2, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1635 = lshr i64 %238, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift1866 = and i64 %241, -281474976710656, !dbg !225
  %add415.3.2 = or disjoint i32 %mul414, 768, !dbg !227
  %249 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.3.2, !dbg !224
  %xor422.3.2 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.3.2 = xor i32 %xor422.3.2, 24, !dbg !224
  %add.ptr426.3.2 = getelementptr inbounds i8, ptr addrspace(3) %249, i32 %add.ptr426.idx.3.2, !dbg !224
  %250 = lshr i64 %240, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1257 = and i64 %250, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1259 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1866, %v_column.sroa.98.0.insert.shift1257, !dbg !225
  %251 = lshr i64 %239, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1102 = and i64 %251, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1104 = or disjoint i64 %v_column.sroa.98.0.insert.insert1259, %v_column.sroa.66.0.insert.shift1102, !dbg !225
  %v_column.sroa.0.0.insert.insert969 = or disjoint i64 %v_column.sroa.66.0.insert.insert1104, %v_fetch.sroa.0.6.extract.shift1635, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert969, ptr addrspace(3) %add.ptr426.3.2, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add443.2883 = or disjoint i32 %mul436, %mul442, !dbg !233
  %252 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.2883, !dbg !234
  %add.ptr453.idx.2884 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.2885 = getelementptr inbounds i8, ptr addrspace(3) %252, i32 %add.ptr453.idx.2884, !dbg !234
  %253 = load <4 x half>, ptr addrspace(3) %add.ptr453.2885, align 8, !dbg !235
  %add438.1.2 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.1.2 = or disjoint i32 %add438.1.2, 64, !dbg !233
  %254 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.1.2, !dbg !234
  %xor449.1.2 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.1.2 = xor i32 %xor449.1.2, 8, !dbg !234
  %add.ptr453.1.2 = getelementptr inbounds i8, ptr addrspace(3) %254, i32 %add.ptr453.idx.1.2, !dbg !234
  %255 = load <4 x half>, ptr addrspace(3) %add.ptr453.1.2, align 8, !dbg !235
  %add438.2.2 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.2.2 = or disjoint i32 %add438.2.2, 128, !dbg !233
  %256 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.2.2, !dbg !234
  %xor449.2.2 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.2.2 = xor i32 %xor449.2.2, 16, !dbg !234
  %add.ptr453.2.2 = getelementptr inbounds i8, ptr addrspace(3) %256, i32 %add.ptr453.idx.2.2, !dbg !234
  %257 = load <4 x half>, ptr addrspace(3) %add.ptr453.2.2, align 8, !dbg !235
  %add438.3.2 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.3.2 = or disjoint i32 %add438.3.2, 192, !dbg !233
  %258 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.3.2, !dbg !234
  %xor449.3.2 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.3.2 = xor i32 %xor449.3.2, 24, !dbg !234
  %add.ptr453.3.2 = getelementptr inbounds i8, ptr addrspace(3) %258, i32 %add.ptr453.idx.3.2, !dbg !234
  %259 = load <4 x half>, ptr addrspace(3) %add.ptr453.3.2, align 8, !dbg !235
  %260 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %253, <4 x half> %223, <4 x float> %numerator.sroa.0.12.vec.insert2400), !dbg !236
  %261 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %255, <4 x half> %223, <4 x float> %numerator.sroa.98.28.vec.insert2556), !dbg !236
  %262 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %257, <4 x half> %223, <4 x float> %numerator.sroa.194.44.vec.insert2712), !dbg !236
  %263 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %259, <4 x half> %223, <4 x float> %numerator.sroa.290.60.vec.insert2868), !dbg !236
  %add359.2 = fadd contract float %mul249.2, %add355.2, !dbg !237
  br label %if.end479.2, !dbg !238

if.end479.2:                                      ; preds = %if.then.2, %if.end479.1
  %numerator.sroa.290.2 = phi <4 x float> [ %numerator.sroa.290.1, %if.end479.1 ], [ %263, %if.then.2 ], !dbg !239
  %numerator.sroa.194.2 = phi <4 x float> [ %numerator.sroa.194.1, %if.end479.1 ], [ %262, %if.then.2 ], !dbg !239
  %numerator.sroa.98.2 = phi <4 x float> [ %numerator.sroa.98.1, %if.end479.1 ], [ %261, %if.then.2 ], !dbg !239
  %numerator.sroa.0.2 = phi <4 x float> [ %numerator.sroa.0.1, %if.end479.1 ], [ %260, %if.then.2 ], !dbg !239
  %maximum.sroa.0.1.2 = phi float [ %maximum.sroa.0.1.1, %if.end479.1 ], [ %206, %if.then.2 ], !dbg !239
  %denominator.sroa.0.1.2 = phi float [ %denominator.sroa.0.1.1, %if.end479.1 ], [ %add359.2, %if.then.2 ], !dbg !239
  %264 = or disjoint i64 %15, 3, !dbg !240
  %arrayidx80.3 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %264, !dbg !67
  %265 = load i32, ptr addrspace(1) %arrayidx80.3, align 4, !dbg !67, !tbaa !30
  %mul81.3 = shl nsw i32 %265, 4, !dbg !68
  %cmp82.3 = icmp slt i32 %265, 0, !dbg !69
  %cmp84.not.3 = icmp sgt i32 %mul81.3, %1
  %or.cond.3 = select i1 %cmp82.3, i1 true, i1 %cmp84.not.3, !dbg !70
  br i1 %or.cond.3, label %if.end479.3, label %if.then.3, !dbg !70

if.then.3:                                        ; preds = %if.end479.2
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %conv94.3 = zext nneg i32 %mul81.3 to i64
  %.idx.3 = shl nuw nsw i64 %conv94.3, 7
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep789, i64 %.idx.3, !dbg !76
  %.idx797.3 = shl nuw nsw i64 %conv, 17, !dbg !77
  %266 = getelementptr inbounds i8, ptr addrspace(4) %gep.3, i64 %.idx797.3, !dbg !77
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep762, ptr addrspace(4) noundef align 16 dereferenceable(16) %266, i64 16, i1 false), !dbg !78, !tbaa.struct !47, !call_argsrelate !79
  %gep769.1.3 = getelementptr inbounds i8, ptr addrspace(4) %266, i64 1024, !dbg !77
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep763.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep769.1.3, i64 16, i1 false), !dbg !78, !tbaa.struct !47, !call_argsrelate !79
  fence syncscope("warp") release, !dbg !80
  tail call void @llvm.mxc.barrier.warp(), !dbg !83
  fence syncscope("warp") acquire, !dbg !84
  %k_local.sroa.0.0.copyload.3891 = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !85
  %267 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3891, <4 x half> %6, <4 x float> zeroinitializer), !dbg !86
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !85
  %268 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %7, <4 x float> %267), !dbg !86
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !85
  %269 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %8, <4 x float> %268), !dbg !86
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !85
  %270 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %9, <4 x float> %269), !dbg !86
  %add167.3 = add nuw nsw i32 %mul81.3, %mul166
  %cmp170.not.3892 = icmp sgt i32 %add167.3, %1, !dbg !87
  %scores.sroa.0.0.vec.extract1993 = extractelement <4 x float> %270, i64 0
  %spec.select2929 = select i1 %cmp170.not.3892, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1993, !dbg !88
  %cmp170.not.1.3.not = icmp slt i32 %add167.3, %1, !dbg !87
  %scores.sroa.0.4.vec.extract2088 = extractelement <4 x float> %270, i64 1, !dbg !88
  %condval.0.1.3 = select i1 %cmp170.not.1.3.not, float %scores.sroa.0.4.vec.extract2088, float 0xFFF0000000000000, !dbg !88
  %add168.2.3 = or disjoint i32 %add167.3, 2, !dbg !89
  %cmp170.not.2.3 = icmp sgt i32 %add168.2.3, %1, !dbg !87
  %scores.sroa.0.8.vec.extract2165 = extractelement <4 x float> %270, i64 2, !dbg !88
  %condval.0.2.3 = select i1 %cmp170.not.2.3, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2165, !dbg !88
  %add168.3.3 = or disjoint i32 %add167.3, 3, !dbg !89
  %cmp170.not.3.3 = icmp sgt i32 %add168.3.3, %1, !dbg !87
  %scores.sroa.0.12.vec.extract2242 = extractelement <4 x float> %270, i64 3, !dbg !88
  %condval.0.3.3 = select i1 %cmp170.not.3.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2242, !dbg !88
  %271 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2929, float 0xFFF0000000000000), !dbg !90
  %272 = tail call contract noundef float @llvm.maxnum.f32(float %271, float %condval.0.1.3), !dbg !90
  %273 = tail call contract noundef float @llvm.maxnum.f32(float %272, float %condval.0.2.3), !dbg !90
  %274 = tail call contract noundef float @llvm.maxnum.f32(float %273, float %condval.0.3.3), !dbg !90
  %275 = bitcast float %274 to i32, !dbg !94
  %276 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !97
  %277 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %276) #11, !dbg !102
  %xor.i.i.3 = xor i32 %277, 32, !dbg !103
  %278 = and i32 %277, -64, !dbg !104
  %and.i.i.3 = add nsw i32 %278, 64, !dbg !104
  %cmp.not.i.i.3 = icmp slt i32 %xor.i.i.3, %and.i.i.3, !dbg !105
  %cond.i.i.3 = select i1 %cmp.not.i.i.3, i32 %xor.i.i.3, i32 %277, !dbg !106
  %shl.i.i.3 = shl i32 %cond.i.i.3, 2, !dbg !107
  %279 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.3, i32 %275), !dbg !108
  %280 = bitcast i32 %279 to float, !dbg !109
  %281 = tail call contract noundef float @llvm.maxnum.f32(float %274, float %280), !dbg !110
  %282 = bitcast float %281 to i32, !dbg !112
  %283 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !114
  %284 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %283) #11, !dbg !117
  %xor.i.i702.3 = xor i32 %284, 16, !dbg !118
  %285 = and i32 %284, -64, !dbg !119
  %and.i.i703.3 = add nsw i32 %285, 64, !dbg !119
  %cmp.not.i.i704.3 = icmp slt i32 %xor.i.i702.3, %and.i.i703.3, !dbg !120
  %cond.i.i705.3 = select i1 %cmp.not.i.i704.3, i32 %xor.i.i702.3, i32 %284, !dbg !121
  %shl.i.i706.3 = shl i32 %cond.i.i705.3, 2, !dbg !122
  %286 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i706.3, i32 %282), !dbg !123
  %287 = bitcast i32 %286 to float, !dbg !124
  %288 = tail call contract noundef float @llvm.maxnum.f32(float %281, float %287), !dbg !125
  %289 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.2, float %288), !dbg !127
  %sub.3 = fsub contract float %maximum.sroa.0.1.2, %289, !dbg !129
  %mul212.3 = fmul contract float %sub.3, 0x3FC7154760000000, !dbg !130
  %cmp.i.i.3 = fcmp contract olt float %mul212.3, -1.260000e+02, !dbg !131
  %cond.i.i707.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i.3 = fadd contract float %mul212.3, %cond.i.i707.3, !dbg !131
  %290 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !131
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %290, !dbg !131
  %numerator.sroa.0.0.vec.extract2291 = extractelement <4 x float> %numerator.sroa.0.2, i64 0, !dbg !241
  %numerator.sroa.0.4.vec.extract2328 = extractelement <4 x float> %numerator.sroa.0.2, i64 1, !dbg !241
  %numerator.sroa.0.8.vec.extract2365 = extractelement <4 x float> %numerator.sroa.0.2, i64 2, !dbg !241
  %numerator.sroa.0.12.vec.extract2402 = extractelement <4 x float> %numerator.sroa.0.2, i64 3, !dbg !241
  %mul229.3903 = fmul contract float %mul.i.i.3, %numerator.sroa.0.0.vec.extract2291, !dbg !134
  %mul232.3904 = fmul contract float %mul.i.i.3, %numerator.sroa.0.4.vec.extract2328, !dbg !242
  %mul235.3905 = fmul contract float %mul.i.i.3, %numerator.sroa.0.8.vec.extract2365, !dbg !243
  %mul238.3906 = fmul contract float %mul.i.i.3, %numerator.sroa.0.12.vec.extract2402, !dbg !244
  %numerator.sroa.0.0.vec.insert2293 = insertelement <4 x float> poison, float %mul229.3903, i64 0, !dbg !135
  %numerator.sroa.0.4.vec.insert2330 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2293, float %mul232.3904, i64 1, !dbg !135
  %numerator.sroa.0.8.vec.insert2367 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2330, float %mul235.3905, i64 2, !dbg !135
  %numerator.sroa.0.12.vec.insert2404 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2367, float %mul238.3906, i64 3, !dbg !135
  %numerator.sroa.98.16.vec.extract2447 = extractelement <4 x float> %numerator.sroa.98.2, i64 0, !dbg !241
  %numerator.sroa.98.20.vec.extract2484 = extractelement <4 x float> %numerator.sroa.98.2, i64 1, !dbg !241
  %numerator.sroa.98.24.vec.extract2521 = extractelement <4 x float> %numerator.sroa.98.2, i64 2, !dbg !241
  %numerator.sroa.98.28.vec.extract2558 = extractelement <4 x float> %numerator.sroa.98.2, i64 3, !dbg !241
  %mul229.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.16.vec.extract2447, !dbg !134
  %mul232.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.20.vec.extract2484, !dbg !242
  %mul235.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.24.vec.extract2521, !dbg !243
  %mul238.1.3 = fmul contract float %mul.i.i.3, %numerator.sroa.98.28.vec.extract2558, !dbg !244
  %numerator.sroa.98.16.vec.insert2449 = insertelement <4 x float> poison, float %mul229.1.3, i64 0, !dbg !135
  %numerator.sroa.98.20.vec.insert2486 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2449, float %mul232.1.3, i64 1, !dbg !135
  %numerator.sroa.98.24.vec.insert2523 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2486, float %mul235.1.3, i64 2, !dbg !135
  %numerator.sroa.98.28.vec.insert2560 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2523, float %mul238.1.3, i64 3, !dbg !135
  %numerator.sroa.194.32.vec.extract2603 = extractelement <4 x float> %numerator.sroa.194.2, i64 0, !dbg !241
  %numerator.sroa.194.36.vec.extract2640 = extractelement <4 x float> %numerator.sroa.194.2, i64 1, !dbg !241
  %numerator.sroa.194.40.vec.extract2677 = extractelement <4 x float> %numerator.sroa.194.2, i64 2, !dbg !241
  %numerator.sroa.194.44.vec.extract2714 = extractelement <4 x float> %numerator.sroa.194.2, i64 3, !dbg !241
  %mul229.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.32.vec.extract2603, !dbg !134
  %mul232.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.36.vec.extract2640, !dbg !242
  %mul235.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.40.vec.extract2677, !dbg !243
  %mul238.2.3 = fmul contract float %mul.i.i.3, %numerator.sroa.194.44.vec.extract2714, !dbg !244
  %numerator.sroa.194.32.vec.insert2605 = insertelement <4 x float> poison, float %mul229.2.3, i64 0, !dbg !135
  %numerator.sroa.194.36.vec.insert2642 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2605, float %mul232.2.3, i64 1, !dbg !135
  %numerator.sroa.194.40.vec.insert2679 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2642, float %mul235.2.3, i64 2, !dbg !135
  %numerator.sroa.194.44.vec.insert2716 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2679, float %mul238.2.3, i64 3, !dbg !135
  %numerator.sroa.290.48.vec.extract2759 = extractelement <4 x float> %numerator.sroa.290.2, i64 0, !dbg !241
  %numerator.sroa.290.52.vec.extract2796 = extractelement <4 x float> %numerator.sroa.290.2, i64 1, !dbg !241
  %numerator.sroa.290.56.vec.extract2833 = extractelement <4 x float> %numerator.sroa.290.2, i64 2, !dbg !241
  %numerator.sroa.290.60.vec.extract2870 = extractelement <4 x float> %numerator.sroa.290.2, i64 3, !dbg !241
  %mul229.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.48.vec.extract2759, !dbg !134
  %mul232.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.52.vec.extract2796, !dbg !242
  %mul235.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.56.vec.extract2833, !dbg !243
  %mul238.3.3 = fmul contract float %mul.i.i.3, %numerator.sroa.290.60.vec.extract2870, !dbg !244
  %numerator.sroa.290.48.vec.insert2761 = insertelement <4 x float> poison, float %mul229.3.3, i64 0, !dbg !135
  %numerator.sroa.290.52.vec.insert2798 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2761, float %mul232.3.3, i64 1, !dbg !135
  %numerator.sroa.290.56.vec.insert2835 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2798, float %mul235.3.3, i64 2, !dbg !135
  %numerator.sroa.290.60.vec.insert2872 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2835, float %mul238.3.3, i64 3, !dbg !135
  %sub262.3 = fsub contract float %spec.select2929, %289, !dbg !136
  %sub266.3 = fsub contract float %condval.0.1.3, %289, !dbg !137
  %sub270.3 = fsub contract float %condval.0.2.3, %289, !dbg !138
  %sub274.3 = fsub contract float %condval.0.3.3, %289, !dbg !139
  %mul279.3 = fmul contract float %sub262.3, 0x3FC7154760000000, !dbg !140
  %mul283.3 = fmul contract float %sub266.3, 0x3FC7154760000000, !dbg !141
  %mul287.3 = fmul contract float %sub270.3, 0x3FC7154760000000, !dbg !142
  %mul291.3 = fmul contract float %sub274.3, 0x3FC7154760000000, !dbg !143
  %add296.3 = fadd contract float %mul279.3, 8.000000e+00, !dbg !144
  %add300.3 = fadd contract float %mul283.3, 8.000000e+00, !dbg !145
  %add304.3 = fadd contract float %mul287.3, 8.000000e+00, !dbg !146
  %add308.3 = fadd contract float %mul291.3, 8.000000e+00, !dbg !147
  %cmp.i.i708.3 = fcmp contract olt float %add296.3, -1.260000e+02, !dbg !148
  %cond.i.i709.3 = select contract i1 %cmp.i.i708.3, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i710.3 = fadd contract float %add296.3, %cond.i.i709.3, !dbg !148
  %291 = tail call contract float @llvm.exp2.f32(float %add.i.i710.3), !dbg !148
  %cond2.i.i711.3 = select contract i1 %cmp.i.i708.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i712.3 = fmul contract float %cond2.i.i711.3, %291, !dbg !148
  %cmp.i.i713.3 = fcmp contract olt float %add300.3, -1.260000e+02, !dbg !150
  %cond.i.i714.3 = select contract i1 %cmp.i.i713.3, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i715.3 = fadd contract float %add300.3, %cond.i.i714.3, !dbg !150
  %292 = tail call contract float @llvm.exp2.f32(float %add.i.i715.3), !dbg !150
  %cond2.i.i716.3 = select contract i1 %cmp.i.i713.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i717.3 = fmul contract float %cond2.i.i716.3, %292, !dbg !150
  %cmp.i.i718.3 = fcmp contract olt float %add304.3, -1.260000e+02, !dbg !152
  %cond.i.i719.3 = select contract i1 %cmp.i.i718.3, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i720.3 = fadd contract float %add304.3, %cond.i.i719.3, !dbg !152
  %293 = tail call contract float @llvm.exp2.f32(float %add.i.i720.3), !dbg !152
  %cond2.i.i721.3 = select contract i1 %cmp.i.i718.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i722.3 = fmul contract float %cond2.i.i721.3, %293, !dbg !152
  %cmp.i.i723.3 = fcmp contract olt float %add308.3, -1.260000e+02, !dbg !154
  %cond.i.i724.3 = select contract i1 %cmp.i.i723.3, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i725.3 = fadd contract float %add308.3, %cond.i.i724.3, !dbg !154
  %294 = tail call contract float @llvm.exp2.f32(float %add.i.i725.3), !dbg !154
  %cond2.i.i726.3 = select contract i1 %cmp.i.i723.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i727.3 = fmul contract float %cond2.i.i726.3, %294, !dbg !154
  %295 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !156, !noalias !164
  %296 = fptrunc float %mul.i.i712.3 to half, !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %295), !dbg !156, !noalias !164
  %297 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !164
  %298 = fptrunc float %mul.i.i717.3 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %297), !dbg !169, !noalias !164
  %299 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !175
  %300 = fptrunc float %mul.i.i722.3 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %299), !dbg !171, !noalias !175
  %301 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !180, !noalias !175
  %302 = fptrunc float %mul.i.i727.3 to half, !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %301), !dbg !180, !noalias !175
  %303 = insertelement <4 x half> poison, half %296, i64 0, !dbg !182
  %304 = insertelement <4 x half> %303, half %298, i64 1, !dbg !182
  %305 = insertelement <4 x half> %304, half %300, i64 2, !dbg !182
  %306 = insertelement <4 x half> %305, half %302, i64 3, !dbg !182
  %conv.i.i.3908 = fpext half %296 to float, !dbg !183
  %add342.3909 = fadd contract float %conv.i.i.3908, 0.000000e+00, !dbg !188
  %conv.i.i.1.3 = fpext half %298 to float, !dbg !183
  %add342.1.3 = fadd contract float %add342.3909, %conv.i.i.1.3, !dbg !188
  %conv.i.i.2.3 = fpext half %300 to float, !dbg !183
  %add342.2.3 = fadd contract float %add342.1.3, %conv.i.i.2.3, !dbg !188
  %conv.i.i.3.3 = fpext half %302 to float, !dbg !183
  %add342.3.3 = fadd contract float %add342.2.3, %conv.i.i.3.3, !dbg !188
  %307 = bitcast float %add342.3.3 to i32, !dbg !189
  %308 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !191
  %309 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %308) #11, !dbg !194
  %xor.i.i733.3 = xor i32 %309, 32, !dbg !195
  %310 = and i32 %309, -64, !dbg !196
  %and.i.i734.3 = add nsw i32 %310, 64, !dbg !196
  %cmp.not.i.i735.3 = icmp slt i32 %xor.i.i733.3, %and.i.i734.3, !dbg !197
  %cond.i.i736.3 = select i1 %cmp.not.i.i735.3, i32 %xor.i.i733.3, i32 %309, !dbg !198
  %shl.i.i737.3 = shl i32 %cond.i.i736.3, 2, !dbg !199
  %311 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i737.3, i32 %307), !dbg !200
  %312 = bitcast i32 %311 to float, !dbg !201
  %add350.3 = fadd contract float %add342.3.3, %312, !dbg !202
  %313 = bitcast float %add350.3 to i32, !dbg !203
  %314 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %315 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %314) #11, !dbg !208
  %xor.i.i738.3 = xor i32 %315, 16, !dbg !209
  %316 = and i32 %315, -64, !dbg !210
  %and.i.i739.3 = add nsw i32 %316, 64, !dbg !210
  %cmp.not.i.i740.3 = icmp slt i32 %xor.i.i738.3, %and.i.i739.3, !dbg !211
  %cond.i.i741.3 = select i1 %cmp.not.i.i740.3, i32 %xor.i.i738.3, i32 %315, !dbg !212
  %shl.i.i742.3 = shl i32 %cond.i.i741.3, 2, !dbg !213
  %317 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i742.3, i32 %313), !dbg !214
  %318 = bitcast i32 %317 to float, !dbg !215
  %add355.3 = fadd contract float %add350.3, %318, !dbg !216
  fence syncscope("warp") release, !dbg !217
  tail call void @llvm.mxc.barrier.warp(), !dbg !220
  fence syncscope("warp") acquire, !dbg !221
  %319 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add375, !dbg !222
  %320 = getelementptr inbounds i8, ptr addrspace(4) %319, i64 %.idx.3, !dbg !222
  %321 = load i64, ptr addrspace(4) %320, align 8, !dbg !223
  %add.ptr384.1.3 = getelementptr inbounds i8, ptr addrspace(4) %320, i64 128, !dbg !222
  %322 = load i64, ptr addrspace(4) %add.ptr384.1.3, align 8, !dbg !223
  %add.ptr384.2.3 = getelementptr inbounds i8, ptr addrspace(4) %320, i64 256, !dbg !222
  %323 = load i64, ptr addrspace(4) %add.ptr384.2.3, align 8, !dbg !223
  %add.ptr384.3.3 = getelementptr inbounds i8, ptr addrspace(4) %320, i64 384, !dbg !222
  %324 = load i64, ptr addrspace(4) %add.ptr384.3.3, align 8, !dbg !223
  %mul249.3 = fmul contract float %denominator.sroa.0.1.2, %mul.i.i.3, !dbg !245
  %325 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul414, !dbg !224
  %add.ptr426.idx.3917 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.3918 = getelementptr inbounds i8, ptr addrspace(3) %325, i32 %add.ptr426.idx.3917, !dbg !224
  %v_column.sroa.130.0.insert.ext1416 = shl i64 %324, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext1261 = shl i64 %323, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift1262 = and i64 %v_column.sroa.98.0.insert.ext1261, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1264 = or disjoint i64 %v_column.sroa.130.0.insert.ext1416, %v_column.sroa.98.0.insert.shift1262, !dbg !225
  %v_column.sroa.66.0.insert.ext1106 = shl i64 %322, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1107 = and i64 %v_column.sroa.66.0.insert.ext1106, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1109 = or disjoint i64 %v_column.sroa.98.0.insert.insert1264, %v_column.sroa.66.0.insert.shift1107, !dbg !225
  %v_column.sroa.0.0.insert.ext971 = and i64 %321, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert973 = or disjoint i64 %v_column.sroa.66.0.insert.insert1109, %v_column.sroa.0.0.insert.ext971, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert973, ptr addrspace(3) %add.ptr426.3918, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1596 = lshr i64 %321, 16, !dbg !226
  %add415.1.3 = or disjoint i32 %mul414, 256, !dbg !227
  %326 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.1.3, !dbg !224
  %xor422.1.3 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.1.3 = xor i32 %xor422.1.3, 8, !dbg !224
  %add.ptr426.1.3 = getelementptr inbounds i8, ptr addrspace(3) %326, i32 %add.ptr426.idx.1.3, !dbg !224
  %327 = shl i64 %324, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1421 = and i64 %327, -281474976710656, !dbg !225
  %328 = shl i64 %323, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1267 = and i64 %328, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1269 = or disjoint i64 %v_column.sroa.130.0.insert.ext1421, %v_column.sroa.98.0.insert.shift1267, !dbg !225
  %v_column.sroa.66.0.insert.ext1111 = and i64 %322, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1114 = or disjoint i64 %v_column.sroa.98.0.insert.insert1269, %v_column.sroa.66.0.insert.ext1111, !dbg !225
  %v_column.sroa.0.0.insert.ext975 = and i64 %v_fetch.sroa.0.2.extract.shift1596, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert977 = or disjoint i64 %v_column.sroa.66.0.insert.insert1114, %v_column.sroa.0.0.insert.ext975, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert977, ptr addrspace(3) %add.ptr426.1.3, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1617 = lshr i64 %321, 32, !dbg !226
  %add415.2.3 = or disjoint i32 %mul414, 512, !dbg !227
  %329 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.2.3, !dbg !224
  %xor422.2.3 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.2.3 = xor i32 %xor422.2.3, 16, !dbg !224
  %add.ptr426.2.3 = getelementptr inbounds i8, ptr addrspace(3) %329, i32 %add.ptr426.idx.2.3, !dbg !224
  %330 = shl i64 %324, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1426 = and i64 %330, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1271 = and i64 %323, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1274 = or disjoint i64 %v_column.sroa.130.0.insert.ext1426, %v_column.sroa.98.0.insert.ext1271, !dbg !225
  %331 = lshr i64 %322, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1117 = and i64 %331, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1119 = or disjoint i64 %v_column.sroa.98.0.insert.insert1274, %v_column.sroa.66.0.insert.shift1117, !dbg !225
  %v_column.sroa.0.0.insert.ext979 = and i64 %v_fetch.sroa.0.4.extract.shift1617, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert981 = or disjoint i64 %v_column.sroa.66.0.insert.insert1119, %v_column.sroa.0.0.insert.ext979, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert981, ptr addrspace(3) %add.ptr426.2.3, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1638 = lshr i64 %321, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift1869 = and i64 %324, -281474976710656, !dbg !225
  %add415.3.3 = or disjoint i32 %mul414, 768, !dbg !227
  %332 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.3.3, !dbg !224
  %xor422.3.3 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.3.3 = xor i32 %xor422.3.3, 24, !dbg !224
  %add.ptr426.3.3 = getelementptr inbounds i8, ptr addrspace(3) %332, i32 %add.ptr426.idx.3.3, !dbg !224
  %333 = lshr i64 %323, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1277 = and i64 %333, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1279 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1869, %v_column.sroa.98.0.insert.shift1277, !dbg !225
  %334 = lshr i64 %322, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1122 = and i64 %334, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1124 = or disjoint i64 %v_column.sroa.98.0.insert.insert1279, %v_column.sroa.66.0.insert.shift1122, !dbg !225
  %v_column.sroa.0.0.insert.insert985 = or disjoint i64 %v_column.sroa.66.0.insert.insert1124, %v_fetch.sroa.0.6.extract.shift1638, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert985, ptr addrspace(3) %add.ptr426.3.3, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add443.3920 = or disjoint i32 %mul436, %mul442, !dbg !233
  %335 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.3920, !dbg !234
  %add.ptr453.idx.3921 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.3922 = getelementptr inbounds i8, ptr addrspace(3) %335, i32 %add.ptr453.idx.3921, !dbg !234
  %336 = load <4 x half>, ptr addrspace(3) %add.ptr453.3922, align 8, !dbg !235
  %add438.1.3 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.1.3 = or disjoint i32 %add438.1.3, 64, !dbg !233
  %337 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.1.3, !dbg !234
  %xor449.1.3 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.1.3 = xor i32 %xor449.1.3, 8, !dbg !234
  %add.ptr453.1.3 = getelementptr inbounds i8, ptr addrspace(3) %337, i32 %add.ptr453.idx.1.3, !dbg !234
  %338 = load <4 x half>, ptr addrspace(3) %add.ptr453.1.3, align 8, !dbg !235
  %add438.2.3 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.2.3 = or disjoint i32 %add438.2.3, 128, !dbg !233
  %339 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.2.3, !dbg !234
  %xor449.2.3 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.2.3 = xor i32 %xor449.2.3, 16, !dbg !234
  %add.ptr453.2.3 = getelementptr inbounds i8, ptr addrspace(3) %339, i32 %add.ptr453.idx.2.3, !dbg !234
  %340 = load <4 x half>, ptr addrspace(3) %add.ptr453.2.3, align 8, !dbg !235
  %add438.3.3 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.3.3 = or disjoint i32 %add438.3.3, 192, !dbg !233
  %341 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.3.3, !dbg !234
  %xor449.3.3 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.3.3 = xor i32 %xor449.3.3, 24, !dbg !234
  %add.ptr453.3.3 = getelementptr inbounds i8, ptr addrspace(3) %341, i32 %add.ptr453.idx.3.3, !dbg !234
  %342 = load <4 x half>, ptr addrspace(3) %add.ptr453.3.3, align 8, !dbg !235
  %343 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %336, <4 x half> %306, <4 x float> %numerator.sroa.0.12.vec.insert2404), !dbg !236
  %344 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %338, <4 x half> %306, <4 x float> %numerator.sroa.98.28.vec.insert2560), !dbg !236
  %345 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %340, <4 x half> %306, <4 x float> %numerator.sroa.194.44.vec.insert2716), !dbg !236
  %346 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %342, <4 x half> %306, <4 x float> %numerator.sroa.290.60.vec.insert2872), !dbg !236
  %add359.3 = fadd contract float %mul249.3, %add355.3, !dbg !237
  br label %if.end479.3, !dbg !238

if.end479.3:                                      ; preds = %if.then.3, %if.end479.2
  %numerator.sroa.290.3 = phi <4 x float> [ %numerator.sroa.290.2, %if.end479.2 ], [ %346, %if.then.3 ], !dbg !239
  %numerator.sroa.194.3 = phi <4 x float> [ %numerator.sroa.194.2, %if.end479.2 ], [ %345, %if.then.3 ], !dbg !239
  %numerator.sroa.98.3 = phi <4 x float> [ %numerator.sroa.98.2, %if.end479.2 ], [ %344, %if.then.3 ], !dbg !239
  %numerator.sroa.0.3 = phi <4 x float> [ %numerator.sroa.0.2, %if.end479.2 ], [ %343, %if.then.3 ], !dbg !239
  %maximum.sroa.0.1.3 = phi float [ %maximum.sroa.0.1.2, %if.end479.2 ], [ %289, %if.then.3 ], !dbg !239
  %denominator.sroa.0.1.3 = phi float [ %denominator.sroa.0.1.2, %if.end479.2 ], [ %add359.3, %if.then.3 ], !dbg !239
  %347 = or disjoint i64 %15, 4, !dbg !240
  %arrayidx80.4 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %347, !dbg !67
  %348 = load i32, ptr addrspace(1) %arrayidx80.4, align 4, !dbg !67, !tbaa !30
  %mul81.4 = shl nsw i32 %348, 4, !dbg !68
  %cmp82.4 = icmp slt i32 %348, 0, !dbg !69
  %cmp84.not.4 = icmp sgt i32 %mul81.4, %1
  %or.cond.4 = select i1 %cmp82.4, i1 true, i1 %cmp84.not.4, !dbg !70
  br i1 %or.cond.4, label %if.end479.4, label %if.then.4, !dbg !70

if.then.4:                                        ; preds = %if.end479.3
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %conv94.4 = zext nneg i32 %mul81.4 to i64
  %.idx.4 = shl nuw nsw i64 %conv94.4, 7
  %gep.4 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep789, i64 %.idx.4, !dbg !76
  %.idx797.4 = shl nuw nsw i64 %conv, 17, !dbg !77
  %349 = getelementptr inbounds i8, ptr addrspace(4) %gep.4, i64 %.idx797.4, !dbg !77
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep762, ptr addrspace(4) noundef align 16 dereferenceable(16) %349, i64 16, i1 false), !dbg !78, !tbaa.struct !47, !call_argsrelate !79
  %gep769.1.4 = getelementptr inbounds i8, ptr addrspace(4) %349, i64 1024, !dbg !77
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep763.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep769.1.4, i64 16, i1 false), !dbg !78, !tbaa.struct !47, !call_argsrelate !79
  fence syncscope("warp") release, !dbg !80
  tail call void @llvm.mxc.barrier.warp(), !dbg !83
  fence syncscope("warp") acquire, !dbg !84
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !85
  %350 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %6, <4 x float> zeroinitializer), !dbg !86
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !85
  %351 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %7, <4 x float> %350), !dbg !86
  %k_local.sroa.0.0.copyload.2.4 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !85
  %352 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.4, <4 x half> %8, <4 x float> %351), !dbg !86
  %k_local.sroa.0.0.copyload.3.4 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !85
  %353 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.4, <4 x half> %9, <4 x float> %352), !dbg !86
  %add167.4 = add nuw nsw i32 %mul81.4, %mul166
  %cmp170.not.4 = icmp sgt i32 %add167.4, %1, !dbg !87
  %scores.sroa.0.0.vec.extract2003 = extractelement <4 x float> %353, i64 0
  %spec.select2930 = select i1 %cmp170.not.4, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2003, !dbg !88
  %cmp170.not.1.4.not = icmp slt i32 %add167.4, %1, !dbg !87
  %scores.sroa.0.4.vec.extract2094 = extractelement <4 x float> %353, i64 1, !dbg !88
  %condval.0.1.4 = select i1 %cmp170.not.1.4.not, float %scores.sroa.0.4.vec.extract2094, float 0xFFF0000000000000, !dbg !88
  %add168.2.4 = or disjoint i32 %add167.4, 2, !dbg !89
  %cmp170.not.2.4 = icmp sgt i32 %add168.2.4, %1, !dbg !87
  %scores.sroa.0.8.vec.extract2171 = extractelement <4 x float> %353, i64 2, !dbg !88
  %condval.0.2.4 = select i1 %cmp170.not.2.4, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2171, !dbg !88
  %add168.3.4 = or disjoint i32 %add167.4, 3, !dbg !89
  %cmp170.not.3.4 = icmp sgt i32 %add168.3.4, %1, !dbg !87
  %scores.sroa.0.12.vec.extract2248 = extractelement <4 x float> %353, i64 3, !dbg !88
  %condval.0.3.4 = select i1 %cmp170.not.3.4, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2248, !dbg !88
  %354 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2930, float 0xFFF0000000000000), !dbg !90
  %355 = tail call contract noundef float @llvm.maxnum.f32(float %354, float %condval.0.1.4), !dbg !90
  %356 = tail call contract noundef float @llvm.maxnum.f32(float %355, float %condval.0.2.4), !dbg !90
  %357 = tail call contract noundef float @llvm.maxnum.f32(float %356, float %condval.0.3.4), !dbg !90
  %358 = bitcast float %357 to i32, !dbg !94
  %359 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !97
  %360 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %359) #11, !dbg !102
  %xor.i.i.4 = xor i32 %360, 32, !dbg !103
  %361 = and i32 %360, -64, !dbg !104
  %and.i.i.4 = add nsw i32 %361, 64, !dbg !104
  %cmp.not.i.i.4 = icmp slt i32 %xor.i.i.4, %and.i.i.4, !dbg !105
  %cond.i.i.4 = select i1 %cmp.not.i.i.4, i32 %xor.i.i.4, i32 %360, !dbg !106
  %shl.i.i.4 = shl i32 %cond.i.i.4, 2, !dbg !107
  %362 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.4, i32 %358), !dbg !108
  %363 = bitcast i32 %362 to float, !dbg !109
  %364 = tail call contract noundef float @llvm.maxnum.f32(float %357, float %363), !dbg !110
  %365 = bitcast float %364 to i32, !dbg !112
  %366 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !114
  %367 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %366) #11, !dbg !117
  %xor.i.i702.4 = xor i32 %367, 16, !dbg !118
  %368 = and i32 %367, -64, !dbg !119
  %and.i.i703.4 = add nsw i32 %368, 64, !dbg !119
  %cmp.not.i.i704.4 = icmp slt i32 %xor.i.i702.4, %and.i.i703.4, !dbg !120
  %cond.i.i705.4 = select i1 %cmp.not.i.i704.4, i32 %xor.i.i702.4, i32 %367, !dbg !121
  %shl.i.i706.4 = shl i32 %cond.i.i705.4, 2, !dbg !122
  %369 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i706.4, i32 %365), !dbg !123
  %370 = bitcast i32 %369 to float, !dbg !124
  %371 = tail call contract noundef float @llvm.maxnum.f32(float %364, float %370), !dbg !125
  %372 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.3, float %371), !dbg !127
  %sub.4 = fsub contract float %maximum.sroa.0.1.3, %372, !dbg !129
  %mul212.4 = fmul contract float %sub.4, 0x3FC7154760000000, !dbg !130
  %cmp.i.i.4 = fcmp contract olt float %mul212.4, -1.260000e+02, !dbg !131
  %cond.i.i707.4 = select contract i1 %cmp.i.i.4, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i.4 = fadd contract float %mul212.4, %cond.i.i707.4, !dbg !131
  %373 = tail call contract float @llvm.exp2.f32(float %add.i.i.4), !dbg !131
  %cond2.i.i.4 = select contract i1 %cmp.i.i.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i.4 = fmul contract float %cond2.i.i.4, %373, !dbg !131
  %numerator.sroa.0.0.vec.extract2295 = extractelement <4 x float> %numerator.sroa.0.3, i64 0, !dbg !241
  %numerator.sroa.0.4.vec.extract2332 = extractelement <4 x float> %numerator.sroa.0.3, i64 1, !dbg !241
  %numerator.sroa.0.8.vec.extract2369 = extractelement <4 x float> %numerator.sroa.0.3, i64 2, !dbg !241
  %numerator.sroa.0.12.vec.extract2406 = extractelement <4 x float> %numerator.sroa.0.3, i64 3, !dbg !241
  %mul229.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.0.vec.extract2295, !dbg !134
  %mul232.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.4.vec.extract2332, !dbg !242
  %mul235.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.8.vec.extract2369, !dbg !243
  %mul238.4 = fmul contract float %mul.i.i.4, %numerator.sroa.0.12.vec.extract2406, !dbg !244
  %numerator.sroa.0.0.vec.insert2297 = insertelement <4 x float> poison, float %mul229.4, i64 0, !dbg !135
  %numerator.sroa.0.4.vec.insert2334 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2297, float %mul232.4, i64 1, !dbg !135
  %numerator.sroa.0.8.vec.insert2371 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2334, float %mul235.4, i64 2, !dbg !135
  %numerator.sroa.0.12.vec.insert2408 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2371, float %mul238.4, i64 3, !dbg !135
  %numerator.sroa.98.16.vec.extract2451 = extractelement <4 x float> %numerator.sroa.98.3, i64 0, !dbg !241
  %numerator.sroa.98.20.vec.extract2488 = extractelement <4 x float> %numerator.sroa.98.3, i64 1, !dbg !241
  %numerator.sroa.98.24.vec.extract2525 = extractelement <4 x float> %numerator.sroa.98.3, i64 2, !dbg !241
  %numerator.sroa.98.28.vec.extract2562 = extractelement <4 x float> %numerator.sroa.98.3, i64 3, !dbg !241
  %mul229.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.16.vec.extract2451, !dbg !134
  %mul232.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.20.vec.extract2488, !dbg !242
  %mul235.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.24.vec.extract2525, !dbg !243
  %mul238.1.4 = fmul contract float %mul.i.i.4, %numerator.sroa.98.28.vec.extract2562, !dbg !244
  %numerator.sroa.98.16.vec.insert2453 = insertelement <4 x float> poison, float %mul229.1.4, i64 0, !dbg !135
  %numerator.sroa.98.20.vec.insert2490 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2453, float %mul232.1.4, i64 1, !dbg !135
  %numerator.sroa.98.24.vec.insert2527 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2490, float %mul235.1.4, i64 2, !dbg !135
  %numerator.sroa.98.28.vec.insert2564 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2527, float %mul238.1.4, i64 3, !dbg !135
  %numerator.sroa.194.32.vec.extract2607 = extractelement <4 x float> %numerator.sroa.194.3, i64 0, !dbg !241
  %numerator.sroa.194.36.vec.extract2644 = extractelement <4 x float> %numerator.sroa.194.3, i64 1, !dbg !241
  %numerator.sroa.194.40.vec.extract2681 = extractelement <4 x float> %numerator.sroa.194.3, i64 2, !dbg !241
  %numerator.sroa.194.44.vec.extract2718 = extractelement <4 x float> %numerator.sroa.194.3, i64 3, !dbg !241
  %mul229.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.32.vec.extract2607, !dbg !134
  %mul232.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.36.vec.extract2644, !dbg !242
  %mul235.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.40.vec.extract2681, !dbg !243
  %mul238.2.4 = fmul contract float %mul.i.i.4, %numerator.sroa.194.44.vec.extract2718, !dbg !244
  %numerator.sroa.194.32.vec.insert2609 = insertelement <4 x float> poison, float %mul229.2.4, i64 0, !dbg !135
  %numerator.sroa.194.36.vec.insert2646 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2609, float %mul232.2.4, i64 1, !dbg !135
  %numerator.sroa.194.40.vec.insert2683 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2646, float %mul235.2.4, i64 2, !dbg !135
  %numerator.sroa.194.44.vec.insert2720 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2683, float %mul238.2.4, i64 3, !dbg !135
  %numerator.sroa.290.48.vec.extract2763 = extractelement <4 x float> %numerator.sroa.290.3, i64 0, !dbg !241
  %numerator.sroa.290.52.vec.extract2800 = extractelement <4 x float> %numerator.sroa.290.3, i64 1, !dbg !241
  %numerator.sroa.290.56.vec.extract2837 = extractelement <4 x float> %numerator.sroa.290.3, i64 2, !dbg !241
  %numerator.sroa.290.60.vec.extract2874 = extractelement <4 x float> %numerator.sroa.290.3, i64 3, !dbg !241
  %mul229.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.48.vec.extract2763, !dbg !134
  %mul232.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.52.vec.extract2800, !dbg !242
  %mul235.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.56.vec.extract2837, !dbg !243
  %mul238.3.4 = fmul contract float %mul.i.i.4, %numerator.sroa.290.60.vec.extract2874, !dbg !244
  %numerator.sroa.290.48.vec.insert2765 = insertelement <4 x float> poison, float %mul229.3.4, i64 0, !dbg !135
  %numerator.sroa.290.52.vec.insert2802 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2765, float %mul232.3.4, i64 1, !dbg !135
  %numerator.sroa.290.56.vec.insert2839 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2802, float %mul235.3.4, i64 2, !dbg !135
  %numerator.sroa.290.60.vec.insert2876 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2839, float %mul238.3.4, i64 3, !dbg !135
  %sub262.4 = fsub contract float %spec.select2930, %372, !dbg !136
  %sub266.4 = fsub contract float %condval.0.1.4, %372, !dbg !137
  %sub270.4 = fsub contract float %condval.0.2.4, %372, !dbg !138
  %sub274.4 = fsub contract float %condval.0.3.4, %372, !dbg !139
  %mul279.4 = fmul contract float %sub262.4, 0x3FC7154760000000, !dbg !140
  %mul283.4 = fmul contract float %sub266.4, 0x3FC7154760000000, !dbg !141
  %mul287.4 = fmul contract float %sub270.4, 0x3FC7154760000000, !dbg !142
  %mul291.4 = fmul contract float %sub274.4, 0x3FC7154760000000, !dbg !143
  %add296.4 = fadd contract float %mul279.4, 8.000000e+00, !dbg !144
  %add300.4 = fadd contract float %mul283.4, 8.000000e+00, !dbg !145
  %add304.4 = fadd contract float %mul287.4, 8.000000e+00, !dbg !146
  %add308.4 = fadd contract float %mul291.4, 8.000000e+00, !dbg !147
  %cmp.i.i708.4 = fcmp contract olt float %add296.4, -1.260000e+02, !dbg !148
  %cond.i.i709.4 = select contract i1 %cmp.i.i708.4, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i710.4 = fadd contract float %add296.4, %cond.i.i709.4, !dbg !148
  %374 = tail call contract float @llvm.exp2.f32(float %add.i.i710.4), !dbg !148
  %cond2.i.i711.4 = select contract i1 %cmp.i.i708.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i712.4 = fmul contract float %cond2.i.i711.4, %374, !dbg !148
  %cmp.i.i713.4 = fcmp contract olt float %add300.4, -1.260000e+02, !dbg !150
  %cond.i.i714.4 = select contract i1 %cmp.i.i713.4, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i715.4 = fadd contract float %add300.4, %cond.i.i714.4, !dbg !150
  %375 = tail call contract float @llvm.exp2.f32(float %add.i.i715.4), !dbg !150
  %cond2.i.i716.4 = select contract i1 %cmp.i.i713.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i717.4 = fmul contract float %cond2.i.i716.4, %375, !dbg !150
  %cmp.i.i718.4 = fcmp contract olt float %add304.4, -1.260000e+02, !dbg !152
  %cond.i.i719.4 = select contract i1 %cmp.i.i718.4, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i720.4 = fadd contract float %add304.4, %cond.i.i719.4, !dbg !152
  %376 = tail call contract float @llvm.exp2.f32(float %add.i.i720.4), !dbg !152
  %cond2.i.i721.4 = select contract i1 %cmp.i.i718.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i722.4 = fmul contract float %cond2.i.i721.4, %376, !dbg !152
  %cmp.i.i723.4 = fcmp contract olt float %add308.4, -1.260000e+02, !dbg !154
  %cond.i.i724.4 = select contract i1 %cmp.i.i723.4, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i725.4 = fadd contract float %add308.4, %cond.i.i724.4, !dbg !154
  %377 = tail call contract float @llvm.exp2.f32(float %add.i.i725.4), !dbg !154
  %cond2.i.i726.4 = select contract i1 %cmp.i.i723.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i727.4 = fmul contract float %cond2.i.i726.4, %377, !dbg !154
  %378 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !156, !noalias !164
  %379 = fptrunc float %mul.i.i712.4 to half, !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %378), !dbg !156, !noalias !164
  %380 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !164
  %381 = fptrunc float %mul.i.i717.4 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %380), !dbg !169, !noalias !164
  %382 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !175
  %383 = fptrunc float %mul.i.i722.4 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %382), !dbg !171, !noalias !175
  %384 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !180, !noalias !175
  %385 = fptrunc float %mul.i.i727.4 to half, !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %384), !dbg !180, !noalias !175
  %386 = insertelement <4 x half> poison, half %379, i64 0, !dbg !182
  %387 = insertelement <4 x half> %386, half %381, i64 1, !dbg !182
  %388 = insertelement <4 x half> %387, half %383, i64 2, !dbg !182
  %389 = insertelement <4 x half> %388, half %385, i64 3, !dbg !182
  %conv.i.i.4 = fpext half %379 to float, !dbg !183
  %add342.4 = fadd contract float %conv.i.i.4, 0.000000e+00, !dbg !188
  %conv.i.i.1.4 = fpext half %381 to float, !dbg !183
  %add342.1.4 = fadd contract float %add342.4, %conv.i.i.1.4, !dbg !188
  %conv.i.i.2.4 = fpext half %383 to float, !dbg !183
  %add342.2.4 = fadd contract float %add342.1.4, %conv.i.i.2.4, !dbg !188
  %conv.i.i.3.4 = fpext half %385 to float, !dbg !183
  %add342.3.4 = fadd contract float %add342.2.4, %conv.i.i.3.4, !dbg !188
  %390 = bitcast float %add342.3.4 to i32, !dbg !189
  %391 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !191
  %392 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %391) #11, !dbg !194
  %xor.i.i733.4 = xor i32 %392, 32, !dbg !195
  %393 = and i32 %392, -64, !dbg !196
  %and.i.i734.4 = add nsw i32 %393, 64, !dbg !196
  %cmp.not.i.i735.4 = icmp slt i32 %xor.i.i733.4, %and.i.i734.4, !dbg !197
  %cond.i.i736.4 = select i1 %cmp.not.i.i735.4, i32 %xor.i.i733.4, i32 %392, !dbg !198
  %shl.i.i737.4 = shl i32 %cond.i.i736.4, 2, !dbg !199
  %394 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i737.4, i32 %390), !dbg !200
  %395 = bitcast i32 %394 to float, !dbg !201
  %add350.4 = fadd contract float %add342.3.4, %395, !dbg !202
  %396 = bitcast float %add350.4 to i32, !dbg !203
  %397 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %398 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %397) #11, !dbg !208
  %xor.i.i738.4 = xor i32 %398, 16, !dbg !209
  %399 = and i32 %398, -64, !dbg !210
  %and.i.i739.4 = add nsw i32 %399, 64, !dbg !210
  %cmp.not.i.i740.4 = icmp slt i32 %xor.i.i738.4, %and.i.i739.4, !dbg !211
  %cond.i.i741.4 = select i1 %cmp.not.i.i740.4, i32 %xor.i.i738.4, i32 %398, !dbg !212
  %shl.i.i742.4 = shl i32 %cond.i.i741.4, 2, !dbg !213
  %400 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i742.4, i32 %396), !dbg !214
  %401 = bitcast i32 %400 to float, !dbg !215
  %add355.4 = fadd contract float %add350.4, %401, !dbg !216
  fence syncscope("warp") release, !dbg !217
  tail call void @llvm.mxc.barrier.warp(), !dbg !220
  fence syncscope("warp") acquire, !dbg !221
  %402 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add375, !dbg !222
  %403 = getelementptr inbounds i8, ptr addrspace(4) %402, i64 %.idx.4, !dbg !222
  %404 = load i64, ptr addrspace(4) %403, align 8, !dbg !223
  %add.ptr384.1.4 = getelementptr inbounds i8, ptr addrspace(4) %403, i64 128, !dbg !222
  %405 = load i64, ptr addrspace(4) %add.ptr384.1.4, align 8, !dbg !223
  %add.ptr384.2.4 = getelementptr inbounds i8, ptr addrspace(4) %403, i64 256, !dbg !222
  %406 = load i64, ptr addrspace(4) %add.ptr384.2.4, align 8, !dbg !223
  %add.ptr384.3.4 = getelementptr inbounds i8, ptr addrspace(4) %403, i64 384, !dbg !222
  %407 = load i64, ptr addrspace(4) %add.ptr384.3.4, align 8, !dbg !223
  %mul249.4 = fmul contract float %denominator.sroa.0.1.3, %mul.i.i.4, !dbg !245
  %408 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul414, !dbg !224
  %add.ptr426.idx.4 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.4 = getelementptr inbounds i8, ptr addrspace(3) %408, i32 %add.ptr426.idx.4, !dbg !224
  %v_column.sroa.130.0.insert.ext1436 = shl i64 %407, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext1281 = shl i64 %406, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift1282 = and i64 %v_column.sroa.98.0.insert.ext1281, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1284 = or disjoint i64 %v_column.sroa.130.0.insert.ext1436, %v_column.sroa.98.0.insert.shift1282, !dbg !225
  %v_column.sroa.66.0.insert.ext1126 = shl i64 %405, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1127 = and i64 %v_column.sroa.66.0.insert.ext1126, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1129 = or disjoint i64 %v_column.sroa.98.0.insert.insert1284, %v_column.sroa.66.0.insert.shift1127, !dbg !225
  %v_column.sroa.0.0.insert.ext987 = and i64 %404, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert989 = or disjoint i64 %v_column.sroa.66.0.insert.insert1129, %v_column.sroa.0.0.insert.ext987, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert989, ptr addrspace(3) %add.ptr426.4, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1599 = lshr i64 %404, 16, !dbg !226
  %add415.1.4 = or disjoint i32 %mul414, 256, !dbg !227
  %409 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.1.4, !dbg !224
  %xor422.1.4 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.1.4 = xor i32 %xor422.1.4, 8, !dbg !224
  %add.ptr426.1.4 = getelementptr inbounds i8, ptr addrspace(3) %409, i32 %add.ptr426.idx.1.4, !dbg !224
  %410 = shl i64 %407, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1441 = and i64 %410, -281474976710656, !dbg !225
  %411 = shl i64 %406, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1287 = and i64 %411, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1289 = or disjoint i64 %v_column.sroa.130.0.insert.ext1441, %v_column.sroa.98.0.insert.shift1287, !dbg !225
  %v_column.sroa.66.0.insert.ext1131 = and i64 %405, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1134 = or disjoint i64 %v_column.sroa.98.0.insert.insert1289, %v_column.sroa.66.0.insert.ext1131, !dbg !225
  %v_column.sroa.0.0.insert.ext991 = and i64 %v_fetch.sroa.0.2.extract.shift1599, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert993 = or disjoint i64 %v_column.sroa.66.0.insert.insert1134, %v_column.sroa.0.0.insert.ext991, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert993, ptr addrspace(3) %add.ptr426.1.4, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1620 = lshr i64 %404, 32, !dbg !226
  %add415.2.4 = or disjoint i32 %mul414, 512, !dbg !227
  %412 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.2.4, !dbg !224
  %xor422.2.4 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.2.4 = xor i32 %xor422.2.4, 16, !dbg !224
  %add.ptr426.2.4 = getelementptr inbounds i8, ptr addrspace(3) %412, i32 %add.ptr426.idx.2.4, !dbg !224
  %413 = shl i64 %407, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1446 = and i64 %413, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1291 = and i64 %406, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1294 = or disjoint i64 %v_column.sroa.130.0.insert.ext1446, %v_column.sroa.98.0.insert.ext1291, !dbg !225
  %414 = lshr i64 %405, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1137 = and i64 %414, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1139 = or disjoint i64 %v_column.sroa.98.0.insert.insert1294, %v_column.sroa.66.0.insert.shift1137, !dbg !225
  %v_column.sroa.0.0.insert.ext995 = and i64 %v_fetch.sroa.0.4.extract.shift1620, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert997 = or disjoint i64 %v_column.sroa.66.0.insert.insert1139, %v_column.sroa.0.0.insert.ext995, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert997, ptr addrspace(3) %add.ptr426.2.4, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1641 = lshr i64 %404, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift1872 = and i64 %407, -281474976710656, !dbg !225
  %add415.3.4 = or disjoint i32 %mul414, 768, !dbg !227
  %415 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.3.4, !dbg !224
  %xor422.3.4 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.3.4 = xor i32 %xor422.3.4, 24, !dbg !224
  %add.ptr426.3.4 = getelementptr inbounds i8, ptr addrspace(3) %415, i32 %add.ptr426.idx.3.4, !dbg !224
  %416 = lshr i64 %406, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1297 = and i64 %416, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1299 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1872, %v_column.sroa.98.0.insert.shift1297, !dbg !225
  %417 = lshr i64 %405, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1142 = and i64 %417, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1144 = or disjoint i64 %v_column.sroa.98.0.insert.insert1299, %v_column.sroa.66.0.insert.shift1142, !dbg !225
  %v_column.sroa.0.0.insert.insert1001 = or disjoint i64 %v_column.sroa.66.0.insert.insert1144, %v_fetch.sroa.0.6.extract.shift1641, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1001, ptr addrspace(3) %add.ptr426.3.4, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add443.4 = or disjoint i32 %mul436, %mul442, !dbg !233
  %418 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.4, !dbg !234
  %add.ptr453.idx.4 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.4 = getelementptr inbounds i8, ptr addrspace(3) %418, i32 %add.ptr453.idx.4, !dbg !234
  %419 = load <4 x half>, ptr addrspace(3) %add.ptr453.4, align 8, !dbg !235
  %add438.1.4 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.1.4 = or disjoint i32 %add438.1.4, 64, !dbg !233
  %420 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.1.4, !dbg !234
  %xor449.1.4 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.1.4 = xor i32 %xor449.1.4, 8, !dbg !234
  %add.ptr453.1.4 = getelementptr inbounds i8, ptr addrspace(3) %420, i32 %add.ptr453.idx.1.4, !dbg !234
  %421 = load <4 x half>, ptr addrspace(3) %add.ptr453.1.4, align 8, !dbg !235
  %add438.2.4 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.2.4 = or disjoint i32 %add438.2.4, 128, !dbg !233
  %422 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.2.4, !dbg !234
  %xor449.2.4 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.2.4 = xor i32 %xor449.2.4, 16, !dbg !234
  %add.ptr453.2.4 = getelementptr inbounds i8, ptr addrspace(3) %422, i32 %add.ptr453.idx.2.4, !dbg !234
  %423 = load <4 x half>, ptr addrspace(3) %add.ptr453.2.4, align 8, !dbg !235
  %add438.3.4 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.3.4 = or disjoint i32 %add438.3.4, 192, !dbg !233
  %424 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.3.4, !dbg !234
  %xor449.3.4 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.3.4 = xor i32 %xor449.3.4, 24, !dbg !234
  %add.ptr453.3.4 = getelementptr inbounds i8, ptr addrspace(3) %424, i32 %add.ptr453.idx.3.4, !dbg !234
  %425 = load <4 x half>, ptr addrspace(3) %add.ptr453.3.4, align 8, !dbg !235
  %426 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %419, <4 x half> %389, <4 x float> %numerator.sroa.0.12.vec.insert2408), !dbg !236
  %427 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %421, <4 x half> %389, <4 x float> %numerator.sroa.98.28.vec.insert2564), !dbg !236
  %428 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %423, <4 x half> %389, <4 x float> %numerator.sroa.194.44.vec.insert2720), !dbg !236
  %429 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %425, <4 x half> %389, <4 x float> %numerator.sroa.290.60.vec.insert2876), !dbg !236
  %add359.4 = fadd contract float %mul249.4, %add355.4, !dbg !237
  br label %if.end479.4, !dbg !238

if.end479.4:                                      ; preds = %if.then.4, %if.end479.3
  %numerator.sroa.290.4 = phi <4 x float> [ %numerator.sroa.290.3, %if.end479.3 ], [ %429, %if.then.4 ], !dbg !239
  %numerator.sroa.194.4 = phi <4 x float> [ %numerator.sroa.194.3, %if.end479.3 ], [ %428, %if.then.4 ], !dbg !239
  %numerator.sroa.98.4 = phi <4 x float> [ %numerator.sroa.98.3, %if.end479.3 ], [ %427, %if.then.4 ], !dbg !239
  %numerator.sroa.0.4 = phi <4 x float> [ %numerator.sroa.0.3, %if.end479.3 ], [ %426, %if.then.4 ], !dbg !239
  %maximum.sroa.0.1.4 = phi float [ %maximum.sroa.0.1.3, %if.end479.3 ], [ %372, %if.then.4 ], !dbg !239
  %denominator.sroa.0.1.4 = phi float [ %denominator.sroa.0.1.3, %if.end479.3 ], [ %add359.4, %if.then.4 ], !dbg !239
  %430 = or disjoint i64 %15, 5, !dbg !240
  %arrayidx80.5 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %430, !dbg !67
  %431 = load i32, ptr addrspace(1) %arrayidx80.5, align 4, !dbg !67, !tbaa !30
  %mul81.5 = shl nsw i32 %431, 4, !dbg !68
  %cmp82.5 = icmp slt i32 %431, 0, !dbg !69
  %cmp84.not.5 = icmp sgt i32 %mul81.5, %1
  %or.cond.5 = select i1 %cmp82.5, i1 true, i1 %cmp84.not.5, !dbg !70
  br i1 %or.cond.5, label %if.end479.5, label %if.then.5, !dbg !70

if.then.5:                                        ; preds = %if.end479.4
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %conv94.5 = zext nneg i32 %mul81.5 to i64
  %.idx.5 = shl nuw nsw i64 %conv94.5, 7
  %gep.5 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep789, i64 %.idx.5, !dbg !76
  %.idx797.5 = shl nuw nsw i64 %conv, 17, !dbg !77
  %432 = getelementptr inbounds i8, ptr addrspace(4) %gep.5, i64 %.idx797.5, !dbg !77
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep762, ptr addrspace(4) noundef align 16 dereferenceable(16) %432, i64 16, i1 false), !dbg !78, !tbaa.struct !47, !call_argsrelate !79
  %gep769.1.5 = getelementptr inbounds i8, ptr addrspace(4) %432, i64 1024, !dbg !77
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep763.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep769.1.5, i64 16, i1 false), !dbg !78, !tbaa.struct !47, !call_argsrelate !79
  fence syncscope("warp") release, !dbg !80
  tail call void @llvm.mxc.barrier.warp(), !dbg !83
  fence syncscope("warp") acquire, !dbg !84
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !85
  %433 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %6, <4 x float> zeroinitializer), !dbg !86
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !85
  %434 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %7, <4 x float> %433), !dbg !86
  %k_local.sroa.0.0.copyload.2.5 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !85
  %435 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.5, <4 x half> %8, <4 x float> %434), !dbg !86
  %k_local.sroa.0.0.copyload.3.5 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !85
  %436 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.5, <4 x half> %9, <4 x float> %435), !dbg !86
  %add167.5 = add nuw nsw i32 %mul81.5, %mul166
  %cmp170.not.5 = icmp sgt i32 %add167.5, %1, !dbg !87
  %scores.sroa.0.0.vec.extract2013 = extractelement <4 x float> %436, i64 0
  %spec.select2931 = select i1 %cmp170.not.5, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2013, !dbg !88
  %cmp170.not.1.5.not = icmp slt i32 %add167.5, %1, !dbg !87
  %scores.sroa.0.4.vec.extract2100 = extractelement <4 x float> %436, i64 1, !dbg !88
  %condval.0.1.5 = select i1 %cmp170.not.1.5.not, float %scores.sroa.0.4.vec.extract2100, float 0xFFF0000000000000, !dbg !88
  %add168.2.5 = or disjoint i32 %add167.5, 2, !dbg !89
  %cmp170.not.2.5 = icmp sgt i32 %add168.2.5, %1, !dbg !87
  %scores.sroa.0.8.vec.extract2177 = extractelement <4 x float> %436, i64 2, !dbg !88
  %condval.0.2.5 = select i1 %cmp170.not.2.5, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2177, !dbg !88
  %add168.3.5 = or disjoint i32 %add167.5, 3, !dbg !89
  %cmp170.not.3.5 = icmp sgt i32 %add168.3.5, %1, !dbg !87
  %scores.sroa.0.12.vec.extract2254 = extractelement <4 x float> %436, i64 3, !dbg !88
  %condval.0.3.5 = select i1 %cmp170.not.3.5, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2254, !dbg !88
  %437 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2931, float 0xFFF0000000000000), !dbg !90
  %438 = tail call contract noundef float @llvm.maxnum.f32(float %437, float %condval.0.1.5), !dbg !90
  %439 = tail call contract noundef float @llvm.maxnum.f32(float %438, float %condval.0.2.5), !dbg !90
  %440 = tail call contract noundef float @llvm.maxnum.f32(float %439, float %condval.0.3.5), !dbg !90
  %441 = bitcast float %440 to i32, !dbg !94
  %442 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !97
  %443 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %442) #11, !dbg !102
  %xor.i.i.5 = xor i32 %443, 32, !dbg !103
  %444 = and i32 %443, -64, !dbg !104
  %and.i.i.5 = add nsw i32 %444, 64, !dbg !104
  %cmp.not.i.i.5 = icmp slt i32 %xor.i.i.5, %and.i.i.5, !dbg !105
  %cond.i.i.5 = select i1 %cmp.not.i.i.5, i32 %xor.i.i.5, i32 %443, !dbg !106
  %shl.i.i.5 = shl i32 %cond.i.i.5, 2, !dbg !107
  %445 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.5, i32 %441), !dbg !108
  %446 = bitcast i32 %445 to float, !dbg !109
  %447 = tail call contract noundef float @llvm.maxnum.f32(float %440, float %446), !dbg !110
  %448 = bitcast float %447 to i32, !dbg !112
  %449 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !114
  %450 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %449) #11, !dbg !117
  %xor.i.i702.5 = xor i32 %450, 16, !dbg !118
  %451 = and i32 %450, -64, !dbg !119
  %and.i.i703.5 = add nsw i32 %451, 64, !dbg !119
  %cmp.not.i.i704.5 = icmp slt i32 %xor.i.i702.5, %and.i.i703.5, !dbg !120
  %cond.i.i705.5 = select i1 %cmp.not.i.i704.5, i32 %xor.i.i702.5, i32 %450, !dbg !121
  %shl.i.i706.5 = shl i32 %cond.i.i705.5, 2, !dbg !122
  %452 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i706.5, i32 %448), !dbg !123
  %453 = bitcast i32 %452 to float, !dbg !124
  %454 = tail call contract noundef float @llvm.maxnum.f32(float %447, float %453), !dbg !125
  %455 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.4, float %454), !dbg !127
  %sub.5 = fsub contract float %maximum.sroa.0.1.4, %455, !dbg !129
  %mul212.5 = fmul contract float %sub.5, 0x3FC7154760000000, !dbg !130
  %cmp.i.i.5 = fcmp contract olt float %mul212.5, -1.260000e+02, !dbg !131
  %cond.i.i707.5 = select contract i1 %cmp.i.i.5, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i.5 = fadd contract float %mul212.5, %cond.i.i707.5, !dbg !131
  %456 = tail call contract float @llvm.exp2.f32(float %add.i.i.5), !dbg !131
  %cond2.i.i.5 = select contract i1 %cmp.i.i.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i.5 = fmul contract float %cond2.i.i.5, %456, !dbg !131
  %numerator.sroa.0.0.vec.extract2299 = extractelement <4 x float> %numerator.sroa.0.4, i64 0, !dbg !241
  %numerator.sroa.0.4.vec.extract2336 = extractelement <4 x float> %numerator.sroa.0.4, i64 1, !dbg !241
  %numerator.sroa.0.8.vec.extract2373 = extractelement <4 x float> %numerator.sroa.0.4, i64 2, !dbg !241
  %numerator.sroa.0.12.vec.extract2410 = extractelement <4 x float> %numerator.sroa.0.4, i64 3, !dbg !241
  %mul229.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.0.vec.extract2299, !dbg !134
  %mul232.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.4.vec.extract2336, !dbg !242
  %mul235.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.8.vec.extract2373, !dbg !243
  %mul238.5 = fmul contract float %mul.i.i.5, %numerator.sroa.0.12.vec.extract2410, !dbg !244
  %numerator.sroa.0.0.vec.insert2301 = insertelement <4 x float> poison, float %mul229.5, i64 0, !dbg !135
  %numerator.sroa.0.4.vec.insert2338 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2301, float %mul232.5, i64 1, !dbg !135
  %numerator.sroa.0.8.vec.insert2375 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2338, float %mul235.5, i64 2, !dbg !135
  %numerator.sroa.0.12.vec.insert2412 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2375, float %mul238.5, i64 3, !dbg !135
  %numerator.sroa.98.16.vec.extract2455 = extractelement <4 x float> %numerator.sroa.98.4, i64 0, !dbg !241
  %numerator.sroa.98.20.vec.extract2492 = extractelement <4 x float> %numerator.sroa.98.4, i64 1, !dbg !241
  %numerator.sroa.98.24.vec.extract2529 = extractelement <4 x float> %numerator.sroa.98.4, i64 2, !dbg !241
  %numerator.sroa.98.28.vec.extract2566 = extractelement <4 x float> %numerator.sroa.98.4, i64 3, !dbg !241
  %mul229.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.16.vec.extract2455, !dbg !134
  %mul232.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.20.vec.extract2492, !dbg !242
  %mul235.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.24.vec.extract2529, !dbg !243
  %mul238.1.5 = fmul contract float %mul.i.i.5, %numerator.sroa.98.28.vec.extract2566, !dbg !244
  %numerator.sroa.98.16.vec.insert2457 = insertelement <4 x float> poison, float %mul229.1.5, i64 0, !dbg !135
  %numerator.sroa.98.20.vec.insert2494 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2457, float %mul232.1.5, i64 1, !dbg !135
  %numerator.sroa.98.24.vec.insert2531 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2494, float %mul235.1.5, i64 2, !dbg !135
  %numerator.sroa.98.28.vec.insert2568 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2531, float %mul238.1.5, i64 3, !dbg !135
  %numerator.sroa.194.32.vec.extract2611 = extractelement <4 x float> %numerator.sroa.194.4, i64 0, !dbg !241
  %numerator.sroa.194.36.vec.extract2648 = extractelement <4 x float> %numerator.sroa.194.4, i64 1, !dbg !241
  %numerator.sroa.194.40.vec.extract2685 = extractelement <4 x float> %numerator.sroa.194.4, i64 2, !dbg !241
  %numerator.sroa.194.44.vec.extract2722 = extractelement <4 x float> %numerator.sroa.194.4, i64 3, !dbg !241
  %mul229.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.32.vec.extract2611, !dbg !134
  %mul232.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.36.vec.extract2648, !dbg !242
  %mul235.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.40.vec.extract2685, !dbg !243
  %mul238.2.5 = fmul contract float %mul.i.i.5, %numerator.sroa.194.44.vec.extract2722, !dbg !244
  %numerator.sroa.194.32.vec.insert2613 = insertelement <4 x float> poison, float %mul229.2.5, i64 0, !dbg !135
  %numerator.sroa.194.36.vec.insert2650 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2613, float %mul232.2.5, i64 1, !dbg !135
  %numerator.sroa.194.40.vec.insert2687 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2650, float %mul235.2.5, i64 2, !dbg !135
  %numerator.sroa.194.44.vec.insert2724 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2687, float %mul238.2.5, i64 3, !dbg !135
  %numerator.sroa.290.48.vec.extract2767 = extractelement <4 x float> %numerator.sroa.290.4, i64 0, !dbg !241
  %numerator.sroa.290.52.vec.extract2804 = extractelement <4 x float> %numerator.sroa.290.4, i64 1, !dbg !241
  %numerator.sroa.290.56.vec.extract2841 = extractelement <4 x float> %numerator.sroa.290.4, i64 2, !dbg !241
  %numerator.sroa.290.60.vec.extract2878 = extractelement <4 x float> %numerator.sroa.290.4, i64 3, !dbg !241
  %mul229.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.48.vec.extract2767, !dbg !134
  %mul232.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.52.vec.extract2804, !dbg !242
  %mul235.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.56.vec.extract2841, !dbg !243
  %mul238.3.5 = fmul contract float %mul.i.i.5, %numerator.sroa.290.60.vec.extract2878, !dbg !244
  %numerator.sroa.290.48.vec.insert2769 = insertelement <4 x float> poison, float %mul229.3.5, i64 0, !dbg !135
  %numerator.sroa.290.52.vec.insert2806 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2769, float %mul232.3.5, i64 1, !dbg !135
  %numerator.sroa.290.56.vec.insert2843 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2806, float %mul235.3.5, i64 2, !dbg !135
  %numerator.sroa.290.60.vec.insert2880 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2843, float %mul238.3.5, i64 3, !dbg !135
  %sub262.5 = fsub contract float %spec.select2931, %455, !dbg !136
  %sub266.5 = fsub contract float %condval.0.1.5, %455, !dbg !137
  %sub270.5 = fsub contract float %condval.0.2.5, %455, !dbg !138
  %sub274.5 = fsub contract float %condval.0.3.5, %455, !dbg !139
  %mul279.5 = fmul contract float %sub262.5, 0x3FC7154760000000, !dbg !140
  %mul283.5 = fmul contract float %sub266.5, 0x3FC7154760000000, !dbg !141
  %mul287.5 = fmul contract float %sub270.5, 0x3FC7154760000000, !dbg !142
  %mul291.5 = fmul contract float %sub274.5, 0x3FC7154760000000, !dbg !143
  %add296.5 = fadd contract float %mul279.5, 8.000000e+00, !dbg !144
  %add300.5 = fadd contract float %mul283.5, 8.000000e+00, !dbg !145
  %add304.5 = fadd contract float %mul287.5, 8.000000e+00, !dbg !146
  %add308.5 = fadd contract float %mul291.5, 8.000000e+00, !dbg !147
  %cmp.i.i708.5 = fcmp contract olt float %add296.5, -1.260000e+02, !dbg !148
  %cond.i.i709.5 = select contract i1 %cmp.i.i708.5, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i710.5 = fadd contract float %add296.5, %cond.i.i709.5, !dbg !148
  %457 = tail call contract float @llvm.exp2.f32(float %add.i.i710.5), !dbg !148
  %cond2.i.i711.5 = select contract i1 %cmp.i.i708.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i712.5 = fmul contract float %cond2.i.i711.5, %457, !dbg !148
  %cmp.i.i713.5 = fcmp contract olt float %add300.5, -1.260000e+02, !dbg !150
  %cond.i.i714.5 = select contract i1 %cmp.i.i713.5, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i715.5 = fadd contract float %add300.5, %cond.i.i714.5, !dbg !150
  %458 = tail call contract float @llvm.exp2.f32(float %add.i.i715.5), !dbg !150
  %cond2.i.i716.5 = select contract i1 %cmp.i.i713.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i717.5 = fmul contract float %cond2.i.i716.5, %458, !dbg !150
  %cmp.i.i718.5 = fcmp contract olt float %add304.5, -1.260000e+02, !dbg !152
  %cond.i.i719.5 = select contract i1 %cmp.i.i718.5, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i720.5 = fadd contract float %add304.5, %cond.i.i719.5, !dbg !152
  %459 = tail call contract float @llvm.exp2.f32(float %add.i.i720.5), !dbg !152
  %cond2.i.i721.5 = select contract i1 %cmp.i.i718.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i722.5 = fmul contract float %cond2.i.i721.5, %459, !dbg !152
  %cmp.i.i723.5 = fcmp contract olt float %add308.5, -1.260000e+02, !dbg !154
  %cond.i.i724.5 = select contract i1 %cmp.i.i723.5, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i725.5 = fadd contract float %add308.5, %cond.i.i724.5, !dbg !154
  %460 = tail call contract float @llvm.exp2.f32(float %add.i.i725.5), !dbg !154
  %cond2.i.i726.5 = select contract i1 %cmp.i.i723.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i727.5 = fmul contract float %cond2.i.i726.5, %460, !dbg !154
  %461 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !156, !noalias !164
  %462 = fptrunc float %mul.i.i712.5 to half, !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %461), !dbg !156, !noalias !164
  %463 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !164
  %464 = fptrunc float %mul.i.i717.5 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %463), !dbg !169, !noalias !164
  %465 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !175
  %466 = fptrunc float %mul.i.i722.5 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %465), !dbg !171, !noalias !175
  %467 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !180, !noalias !175
  %468 = fptrunc float %mul.i.i727.5 to half, !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %467), !dbg !180, !noalias !175
  %469 = insertelement <4 x half> poison, half %462, i64 0, !dbg !182
  %470 = insertelement <4 x half> %469, half %464, i64 1, !dbg !182
  %471 = insertelement <4 x half> %470, half %466, i64 2, !dbg !182
  %472 = insertelement <4 x half> %471, half %468, i64 3, !dbg !182
  %conv.i.i.5 = fpext half %462 to float, !dbg !183
  %add342.5 = fadd contract float %conv.i.i.5, 0.000000e+00, !dbg !188
  %conv.i.i.1.5 = fpext half %464 to float, !dbg !183
  %add342.1.5 = fadd contract float %add342.5, %conv.i.i.1.5, !dbg !188
  %conv.i.i.2.5 = fpext half %466 to float, !dbg !183
  %add342.2.5 = fadd contract float %add342.1.5, %conv.i.i.2.5, !dbg !188
  %conv.i.i.3.5 = fpext half %468 to float, !dbg !183
  %add342.3.5 = fadd contract float %add342.2.5, %conv.i.i.3.5, !dbg !188
  %473 = bitcast float %add342.3.5 to i32, !dbg !189
  %474 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !191
  %475 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %474) #11, !dbg !194
  %xor.i.i733.5 = xor i32 %475, 32, !dbg !195
  %476 = and i32 %475, -64, !dbg !196
  %and.i.i734.5 = add nsw i32 %476, 64, !dbg !196
  %cmp.not.i.i735.5 = icmp slt i32 %xor.i.i733.5, %and.i.i734.5, !dbg !197
  %cond.i.i736.5 = select i1 %cmp.not.i.i735.5, i32 %xor.i.i733.5, i32 %475, !dbg !198
  %shl.i.i737.5 = shl i32 %cond.i.i736.5, 2, !dbg !199
  %477 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i737.5, i32 %473), !dbg !200
  %478 = bitcast i32 %477 to float, !dbg !201
  %add350.5 = fadd contract float %add342.3.5, %478, !dbg !202
  %479 = bitcast float %add350.5 to i32, !dbg !203
  %480 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %481 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %480) #11, !dbg !208
  %xor.i.i738.5 = xor i32 %481, 16, !dbg !209
  %482 = and i32 %481, -64, !dbg !210
  %and.i.i739.5 = add nsw i32 %482, 64, !dbg !210
  %cmp.not.i.i740.5 = icmp slt i32 %xor.i.i738.5, %and.i.i739.5, !dbg !211
  %cond.i.i741.5 = select i1 %cmp.not.i.i740.5, i32 %xor.i.i738.5, i32 %481, !dbg !212
  %shl.i.i742.5 = shl i32 %cond.i.i741.5, 2, !dbg !213
  %483 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i742.5, i32 %479), !dbg !214
  %484 = bitcast i32 %483 to float, !dbg !215
  %add355.5 = fadd contract float %add350.5, %484, !dbg !216
  fence syncscope("warp") release, !dbg !217
  tail call void @llvm.mxc.barrier.warp(), !dbg !220
  fence syncscope("warp") acquire, !dbg !221
  %485 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add375, !dbg !222
  %486 = getelementptr inbounds i8, ptr addrspace(4) %485, i64 %.idx.5, !dbg !222
  %487 = load i64, ptr addrspace(4) %486, align 8, !dbg !223
  %add.ptr384.1.5 = getelementptr inbounds i8, ptr addrspace(4) %486, i64 128, !dbg !222
  %488 = load i64, ptr addrspace(4) %add.ptr384.1.5, align 8, !dbg !223
  %add.ptr384.2.5 = getelementptr inbounds i8, ptr addrspace(4) %486, i64 256, !dbg !222
  %489 = load i64, ptr addrspace(4) %add.ptr384.2.5, align 8, !dbg !223
  %add.ptr384.3.5 = getelementptr inbounds i8, ptr addrspace(4) %486, i64 384, !dbg !222
  %490 = load i64, ptr addrspace(4) %add.ptr384.3.5, align 8, !dbg !223
  %mul249.5 = fmul contract float %denominator.sroa.0.1.4, %mul.i.i.5, !dbg !245
  %491 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul414, !dbg !224
  %add.ptr426.idx.5 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.5 = getelementptr inbounds i8, ptr addrspace(3) %491, i32 %add.ptr426.idx.5, !dbg !224
  %v_column.sroa.130.0.insert.ext1456 = shl i64 %490, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext1301 = shl i64 %489, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift1302 = and i64 %v_column.sroa.98.0.insert.ext1301, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1304 = or disjoint i64 %v_column.sroa.130.0.insert.ext1456, %v_column.sroa.98.0.insert.shift1302, !dbg !225
  %v_column.sroa.66.0.insert.ext1146 = shl i64 %488, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1147 = and i64 %v_column.sroa.66.0.insert.ext1146, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1149 = or disjoint i64 %v_column.sroa.98.0.insert.insert1304, %v_column.sroa.66.0.insert.shift1147, !dbg !225
  %v_column.sroa.0.0.insert.ext1003 = and i64 %487, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1005 = or disjoint i64 %v_column.sroa.66.0.insert.insert1149, %v_column.sroa.0.0.insert.ext1003, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1005, ptr addrspace(3) %add.ptr426.5, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1602 = lshr i64 %487, 16, !dbg !226
  %add415.1.5 = or disjoint i32 %mul414, 256, !dbg !227
  %492 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.1.5, !dbg !224
  %xor422.1.5 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.1.5 = xor i32 %xor422.1.5, 8, !dbg !224
  %add.ptr426.1.5 = getelementptr inbounds i8, ptr addrspace(3) %492, i32 %add.ptr426.idx.1.5, !dbg !224
  %493 = shl i64 %490, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1461 = and i64 %493, -281474976710656, !dbg !225
  %494 = shl i64 %489, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1307 = and i64 %494, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1309 = or disjoint i64 %v_column.sroa.130.0.insert.ext1461, %v_column.sroa.98.0.insert.shift1307, !dbg !225
  %v_column.sroa.66.0.insert.ext1151 = and i64 %488, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1154 = or disjoint i64 %v_column.sroa.98.0.insert.insert1309, %v_column.sroa.66.0.insert.ext1151, !dbg !225
  %v_column.sroa.0.0.insert.ext1007 = and i64 %v_fetch.sroa.0.2.extract.shift1602, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1009 = or disjoint i64 %v_column.sroa.66.0.insert.insert1154, %v_column.sroa.0.0.insert.ext1007, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1009, ptr addrspace(3) %add.ptr426.1.5, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1623 = lshr i64 %487, 32, !dbg !226
  %add415.2.5 = or disjoint i32 %mul414, 512, !dbg !227
  %495 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.2.5, !dbg !224
  %xor422.2.5 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.2.5 = xor i32 %xor422.2.5, 16, !dbg !224
  %add.ptr426.2.5 = getelementptr inbounds i8, ptr addrspace(3) %495, i32 %add.ptr426.idx.2.5, !dbg !224
  %496 = shl i64 %490, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1466 = and i64 %496, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1311 = and i64 %489, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1314 = or disjoint i64 %v_column.sroa.130.0.insert.ext1466, %v_column.sroa.98.0.insert.ext1311, !dbg !225
  %497 = lshr i64 %488, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1157 = and i64 %497, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1159 = or disjoint i64 %v_column.sroa.98.0.insert.insert1314, %v_column.sroa.66.0.insert.shift1157, !dbg !225
  %v_column.sroa.0.0.insert.ext1011 = and i64 %v_fetch.sroa.0.4.extract.shift1623, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1013 = or disjoint i64 %v_column.sroa.66.0.insert.insert1159, %v_column.sroa.0.0.insert.ext1011, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1013, ptr addrspace(3) %add.ptr426.2.5, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1644 = lshr i64 %487, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift1875 = and i64 %490, -281474976710656, !dbg !225
  %add415.3.5 = or disjoint i32 %mul414, 768, !dbg !227
  %498 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.3.5, !dbg !224
  %xor422.3.5 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.3.5 = xor i32 %xor422.3.5, 24, !dbg !224
  %add.ptr426.3.5 = getelementptr inbounds i8, ptr addrspace(3) %498, i32 %add.ptr426.idx.3.5, !dbg !224
  %499 = lshr i64 %489, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1317 = and i64 %499, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1319 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1875, %v_column.sroa.98.0.insert.shift1317, !dbg !225
  %500 = lshr i64 %488, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1162 = and i64 %500, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1164 = or disjoint i64 %v_column.sroa.98.0.insert.insert1319, %v_column.sroa.66.0.insert.shift1162, !dbg !225
  %v_column.sroa.0.0.insert.insert1017 = or disjoint i64 %v_column.sroa.66.0.insert.insert1164, %v_fetch.sroa.0.6.extract.shift1644, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1017, ptr addrspace(3) %add.ptr426.3.5, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add443.5 = or disjoint i32 %mul436, %mul442, !dbg !233
  %501 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.5, !dbg !234
  %add.ptr453.idx.5 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.5 = getelementptr inbounds i8, ptr addrspace(3) %501, i32 %add.ptr453.idx.5, !dbg !234
  %502 = load <4 x half>, ptr addrspace(3) %add.ptr453.5, align 8, !dbg !235
  %add438.1.5 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.1.5 = or disjoint i32 %add438.1.5, 64, !dbg !233
  %503 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.1.5, !dbg !234
  %xor449.1.5 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.1.5 = xor i32 %xor449.1.5, 8, !dbg !234
  %add.ptr453.1.5 = getelementptr inbounds i8, ptr addrspace(3) %503, i32 %add.ptr453.idx.1.5, !dbg !234
  %504 = load <4 x half>, ptr addrspace(3) %add.ptr453.1.5, align 8, !dbg !235
  %add438.2.5 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.2.5 = or disjoint i32 %add438.2.5, 128, !dbg !233
  %505 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.2.5, !dbg !234
  %xor449.2.5 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.2.5 = xor i32 %xor449.2.5, 16, !dbg !234
  %add.ptr453.2.5 = getelementptr inbounds i8, ptr addrspace(3) %505, i32 %add.ptr453.idx.2.5, !dbg !234
  %506 = load <4 x half>, ptr addrspace(3) %add.ptr453.2.5, align 8, !dbg !235
  %add438.3.5 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.3.5 = or disjoint i32 %add438.3.5, 192, !dbg !233
  %507 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.3.5, !dbg !234
  %xor449.3.5 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.3.5 = xor i32 %xor449.3.5, 24, !dbg !234
  %add.ptr453.3.5 = getelementptr inbounds i8, ptr addrspace(3) %507, i32 %add.ptr453.idx.3.5, !dbg !234
  %508 = load <4 x half>, ptr addrspace(3) %add.ptr453.3.5, align 8, !dbg !235
  %509 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %502, <4 x half> %472, <4 x float> %numerator.sroa.0.12.vec.insert2412), !dbg !236
  %510 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %504, <4 x half> %472, <4 x float> %numerator.sroa.98.28.vec.insert2568), !dbg !236
  %511 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %506, <4 x half> %472, <4 x float> %numerator.sroa.194.44.vec.insert2724), !dbg !236
  %512 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %508, <4 x half> %472, <4 x float> %numerator.sroa.290.60.vec.insert2880), !dbg !236
  %add359.5 = fadd contract float %mul249.5, %add355.5, !dbg !237
  br label %if.end479.5, !dbg !238

if.end479.5:                                      ; preds = %if.then.5, %if.end479.4
  %numerator.sroa.290.5 = phi <4 x float> [ %numerator.sroa.290.4, %if.end479.4 ], [ %512, %if.then.5 ], !dbg !239
  %numerator.sroa.194.5 = phi <4 x float> [ %numerator.sroa.194.4, %if.end479.4 ], [ %511, %if.then.5 ], !dbg !239
  %numerator.sroa.98.5 = phi <4 x float> [ %numerator.sroa.98.4, %if.end479.4 ], [ %510, %if.then.5 ], !dbg !239
  %numerator.sroa.0.5 = phi <4 x float> [ %numerator.sroa.0.4, %if.end479.4 ], [ %509, %if.then.5 ], !dbg !239
  %maximum.sroa.0.1.5 = phi float [ %maximum.sroa.0.1.4, %if.end479.4 ], [ %455, %if.then.5 ], !dbg !239
  %denominator.sroa.0.1.5 = phi float [ %denominator.sroa.0.1.4, %if.end479.4 ], [ %add359.5, %if.then.5 ], !dbg !239
  %513 = or disjoint i64 %15, 6, !dbg !240
  %arrayidx80.6 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %513, !dbg !67
  %514 = load i32, ptr addrspace(1) %arrayidx80.6, align 4, !dbg !67, !tbaa !30
  %mul81.6 = shl nsw i32 %514, 4, !dbg !68
  %cmp82.6 = icmp slt i32 %514, 0, !dbg !69
  %cmp84.not.6 = icmp sgt i32 %mul81.6, %1
  %or.cond.6 = select i1 %cmp82.6, i1 true, i1 %cmp84.not.6, !dbg !70
  br i1 %or.cond.6, label %if.end479.6, label %if.then.6, !dbg !70

if.then.6:                                        ; preds = %if.end479.5
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %conv94.6 = zext nneg i32 %mul81.6 to i64
  %.idx.6 = shl nuw nsw i64 %conv94.6, 7
  %gep.6 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep789, i64 %.idx.6, !dbg !76
  %.idx797.6 = shl nuw nsw i64 %conv, 17, !dbg !77
  %515 = getelementptr inbounds i8, ptr addrspace(4) %gep.6, i64 %.idx797.6, !dbg !77
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep762, ptr addrspace(4) noundef align 16 dereferenceable(16) %515, i64 16, i1 false), !dbg !78, !tbaa.struct !47, !call_argsrelate !79
  %gep769.1.6 = getelementptr inbounds i8, ptr addrspace(4) %515, i64 1024, !dbg !77
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep763.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep769.1.6, i64 16, i1 false), !dbg !78, !tbaa.struct !47, !call_argsrelate !79
  fence syncscope("warp") release, !dbg !80
  tail call void @llvm.mxc.barrier.warp(), !dbg !83
  fence syncscope("warp") acquire, !dbg !84
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !85
  %516 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %6, <4 x float> zeroinitializer), !dbg !86
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !85
  %517 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %7, <4 x float> %516), !dbg !86
  %k_local.sroa.0.0.copyload.2.6 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !85
  %518 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.6, <4 x half> %8, <4 x float> %517), !dbg !86
  %k_local.sroa.0.0.copyload.3.6 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !85
  %519 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.6, <4 x half> %9, <4 x float> %518), !dbg !86
  %add167.6 = add nuw nsw i32 %mul81.6, %mul166
  %cmp170.not.6 = icmp sgt i32 %add167.6, %1, !dbg !87
  %scores.sroa.0.0.vec.extract2023 = extractelement <4 x float> %519, i64 0
  %spec.select2932 = select i1 %cmp170.not.6, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2023, !dbg !88
  %cmp170.not.1.6.not = icmp slt i32 %add167.6, %1, !dbg !87
  %scores.sroa.0.4.vec.extract2106 = extractelement <4 x float> %519, i64 1, !dbg !88
  %condval.0.1.6 = select i1 %cmp170.not.1.6.not, float %scores.sroa.0.4.vec.extract2106, float 0xFFF0000000000000, !dbg !88
  %add168.2.6 = or disjoint i32 %add167.6, 2, !dbg !89
  %cmp170.not.2.6 = icmp sgt i32 %add168.2.6, %1, !dbg !87
  %scores.sroa.0.8.vec.extract2183 = extractelement <4 x float> %519, i64 2, !dbg !88
  %condval.0.2.6 = select i1 %cmp170.not.2.6, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2183, !dbg !88
  %add168.3.6 = or disjoint i32 %add167.6, 3, !dbg !89
  %cmp170.not.3.6 = icmp sgt i32 %add168.3.6, %1, !dbg !87
  %scores.sroa.0.12.vec.extract2260 = extractelement <4 x float> %519, i64 3, !dbg !88
  %condval.0.3.6 = select i1 %cmp170.not.3.6, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2260, !dbg !88
  %520 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2932, float 0xFFF0000000000000), !dbg !90
  %521 = tail call contract noundef float @llvm.maxnum.f32(float %520, float %condval.0.1.6), !dbg !90
  %522 = tail call contract noundef float @llvm.maxnum.f32(float %521, float %condval.0.2.6), !dbg !90
  %523 = tail call contract noundef float @llvm.maxnum.f32(float %522, float %condval.0.3.6), !dbg !90
  %524 = bitcast float %523 to i32, !dbg !94
  %525 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !97
  %526 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %525) #11, !dbg !102
  %xor.i.i.6 = xor i32 %526, 32, !dbg !103
  %527 = and i32 %526, -64, !dbg !104
  %and.i.i.6 = add nsw i32 %527, 64, !dbg !104
  %cmp.not.i.i.6 = icmp slt i32 %xor.i.i.6, %and.i.i.6, !dbg !105
  %cond.i.i.6 = select i1 %cmp.not.i.i.6, i32 %xor.i.i.6, i32 %526, !dbg !106
  %shl.i.i.6 = shl i32 %cond.i.i.6, 2, !dbg !107
  %528 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.6, i32 %524), !dbg !108
  %529 = bitcast i32 %528 to float, !dbg !109
  %530 = tail call contract noundef float @llvm.maxnum.f32(float %523, float %529), !dbg !110
  %531 = bitcast float %530 to i32, !dbg !112
  %532 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !114
  %533 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %532) #11, !dbg !117
  %xor.i.i702.6 = xor i32 %533, 16, !dbg !118
  %534 = and i32 %533, -64, !dbg !119
  %and.i.i703.6 = add nsw i32 %534, 64, !dbg !119
  %cmp.not.i.i704.6 = icmp slt i32 %xor.i.i702.6, %and.i.i703.6, !dbg !120
  %cond.i.i705.6 = select i1 %cmp.not.i.i704.6, i32 %xor.i.i702.6, i32 %533, !dbg !121
  %shl.i.i706.6 = shl i32 %cond.i.i705.6, 2, !dbg !122
  %535 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i706.6, i32 %531), !dbg !123
  %536 = bitcast i32 %535 to float, !dbg !124
  %537 = tail call contract noundef float @llvm.maxnum.f32(float %530, float %536), !dbg !125
  %538 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.5, float %537), !dbg !127
  %sub.6 = fsub contract float %maximum.sroa.0.1.5, %538, !dbg !129
  %mul212.6 = fmul contract float %sub.6, 0x3FC7154760000000, !dbg !130
  %cmp.i.i.6 = fcmp contract olt float %mul212.6, -1.260000e+02, !dbg !131
  %cond.i.i707.6 = select contract i1 %cmp.i.i.6, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i.6 = fadd contract float %mul212.6, %cond.i.i707.6, !dbg !131
  %539 = tail call contract float @llvm.exp2.f32(float %add.i.i.6), !dbg !131
  %cond2.i.i.6 = select contract i1 %cmp.i.i.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i.6 = fmul contract float %cond2.i.i.6, %539, !dbg !131
  %numerator.sroa.0.0.vec.extract2303 = extractelement <4 x float> %numerator.sroa.0.5, i64 0, !dbg !241
  %numerator.sroa.0.4.vec.extract2340 = extractelement <4 x float> %numerator.sroa.0.5, i64 1, !dbg !241
  %numerator.sroa.0.8.vec.extract2377 = extractelement <4 x float> %numerator.sroa.0.5, i64 2, !dbg !241
  %numerator.sroa.0.12.vec.extract2414 = extractelement <4 x float> %numerator.sroa.0.5, i64 3, !dbg !241
  %mul229.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.0.vec.extract2303, !dbg !134
  %mul232.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.4.vec.extract2340, !dbg !242
  %mul235.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.8.vec.extract2377, !dbg !243
  %mul238.6 = fmul contract float %mul.i.i.6, %numerator.sroa.0.12.vec.extract2414, !dbg !244
  %numerator.sroa.0.0.vec.insert2305 = insertelement <4 x float> poison, float %mul229.6, i64 0, !dbg !135
  %numerator.sroa.0.4.vec.insert2342 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2305, float %mul232.6, i64 1, !dbg !135
  %numerator.sroa.0.8.vec.insert2379 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2342, float %mul235.6, i64 2, !dbg !135
  %numerator.sroa.0.12.vec.insert2416 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2379, float %mul238.6, i64 3, !dbg !135
  %numerator.sroa.98.16.vec.extract2459 = extractelement <4 x float> %numerator.sroa.98.5, i64 0, !dbg !241
  %numerator.sroa.98.20.vec.extract2496 = extractelement <4 x float> %numerator.sroa.98.5, i64 1, !dbg !241
  %numerator.sroa.98.24.vec.extract2533 = extractelement <4 x float> %numerator.sroa.98.5, i64 2, !dbg !241
  %numerator.sroa.98.28.vec.extract2570 = extractelement <4 x float> %numerator.sroa.98.5, i64 3, !dbg !241
  %mul229.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.16.vec.extract2459, !dbg !134
  %mul232.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.20.vec.extract2496, !dbg !242
  %mul235.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.24.vec.extract2533, !dbg !243
  %mul238.1.6 = fmul contract float %mul.i.i.6, %numerator.sroa.98.28.vec.extract2570, !dbg !244
  %numerator.sroa.98.16.vec.insert2461 = insertelement <4 x float> poison, float %mul229.1.6, i64 0, !dbg !135
  %numerator.sroa.98.20.vec.insert2498 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2461, float %mul232.1.6, i64 1, !dbg !135
  %numerator.sroa.98.24.vec.insert2535 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2498, float %mul235.1.6, i64 2, !dbg !135
  %numerator.sroa.98.28.vec.insert2572 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2535, float %mul238.1.6, i64 3, !dbg !135
  %numerator.sroa.194.32.vec.extract2615 = extractelement <4 x float> %numerator.sroa.194.5, i64 0, !dbg !241
  %numerator.sroa.194.36.vec.extract2652 = extractelement <4 x float> %numerator.sroa.194.5, i64 1, !dbg !241
  %numerator.sroa.194.40.vec.extract2689 = extractelement <4 x float> %numerator.sroa.194.5, i64 2, !dbg !241
  %numerator.sroa.194.44.vec.extract2726 = extractelement <4 x float> %numerator.sroa.194.5, i64 3, !dbg !241
  %mul229.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.32.vec.extract2615, !dbg !134
  %mul232.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.36.vec.extract2652, !dbg !242
  %mul235.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.40.vec.extract2689, !dbg !243
  %mul238.2.6 = fmul contract float %mul.i.i.6, %numerator.sroa.194.44.vec.extract2726, !dbg !244
  %numerator.sroa.194.32.vec.insert2617 = insertelement <4 x float> poison, float %mul229.2.6, i64 0, !dbg !135
  %numerator.sroa.194.36.vec.insert2654 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2617, float %mul232.2.6, i64 1, !dbg !135
  %numerator.sroa.194.40.vec.insert2691 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2654, float %mul235.2.6, i64 2, !dbg !135
  %numerator.sroa.194.44.vec.insert2728 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2691, float %mul238.2.6, i64 3, !dbg !135
  %numerator.sroa.290.48.vec.extract2771 = extractelement <4 x float> %numerator.sroa.290.5, i64 0, !dbg !241
  %numerator.sroa.290.52.vec.extract2808 = extractelement <4 x float> %numerator.sroa.290.5, i64 1, !dbg !241
  %numerator.sroa.290.56.vec.extract2845 = extractelement <4 x float> %numerator.sroa.290.5, i64 2, !dbg !241
  %numerator.sroa.290.60.vec.extract2882 = extractelement <4 x float> %numerator.sroa.290.5, i64 3, !dbg !241
  %mul229.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.48.vec.extract2771, !dbg !134
  %mul232.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.52.vec.extract2808, !dbg !242
  %mul235.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.56.vec.extract2845, !dbg !243
  %mul238.3.6 = fmul contract float %mul.i.i.6, %numerator.sroa.290.60.vec.extract2882, !dbg !244
  %numerator.sroa.290.48.vec.insert2773 = insertelement <4 x float> poison, float %mul229.3.6, i64 0, !dbg !135
  %numerator.sroa.290.52.vec.insert2810 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2773, float %mul232.3.6, i64 1, !dbg !135
  %numerator.sroa.290.56.vec.insert2847 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2810, float %mul235.3.6, i64 2, !dbg !135
  %numerator.sroa.290.60.vec.insert2884 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2847, float %mul238.3.6, i64 3, !dbg !135
  %sub262.6 = fsub contract float %spec.select2932, %538, !dbg !136
  %sub266.6 = fsub contract float %condval.0.1.6, %538, !dbg !137
  %sub270.6 = fsub contract float %condval.0.2.6, %538, !dbg !138
  %sub274.6 = fsub contract float %condval.0.3.6, %538, !dbg !139
  %mul279.6 = fmul contract float %sub262.6, 0x3FC7154760000000, !dbg !140
  %mul283.6 = fmul contract float %sub266.6, 0x3FC7154760000000, !dbg !141
  %mul287.6 = fmul contract float %sub270.6, 0x3FC7154760000000, !dbg !142
  %mul291.6 = fmul contract float %sub274.6, 0x3FC7154760000000, !dbg !143
  %add296.6 = fadd contract float %mul279.6, 8.000000e+00, !dbg !144
  %add300.6 = fadd contract float %mul283.6, 8.000000e+00, !dbg !145
  %add304.6 = fadd contract float %mul287.6, 8.000000e+00, !dbg !146
  %add308.6 = fadd contract float %mul291.6, 8.000000e+00, !dbg !147
  %cmp.i.i708.6 = fcmp contract olt float %add296.6, -1.260000e+02, !dbg !148
  %cond.i.i709.6 = select contract i1 %cmp.i.i708.6, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i710.6 = fadd contract float %add296.6, %cond.i.i709.6, !dbg !148
  %540 = tail call contract float @llvm.exp2.f32(float %add.i.i710.6), !dbg !148
  %cond2.i.i711.6 = select contract i1 %cmp.i.i708.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i712.6 = fmul contract float %cond2.i.i711.6, %540, !dbg !148
  %cmp.i.i713.6 = fcmp contract olt float %add300.6, -1.260000e+02, !dbg !150
  %cond.i.i714.6 = select contract i1 %cmp.i.i713.6, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i715.6 = fadd contract float %add300.6, %cond.i.i714.6, !dbg !150
  %541 = tail call contract float @llvm.exp2.f32(float %add.i.i715.6), !dbg !150
  %cond2.i.i716.6 = select contract i1 %cmp.i.i713.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i717.6 = fmul contract float %cond2.i.i716.6, %541, !dbg !150
  %cmp.i.i718.6 = fcmp contract olt float %add304.6, -1.260000e+02, !dbg !152
  %cond.i.i719.6 = select contract i1 %cmp.i.i718.6, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i720.6 = fadd contract float %add304.6, %cond.i.i719.6, !dbg !152
  %542 = tail call contract float @llvm.exp2.f32(float %add.i.i720.6), !dbg !152
  %cond2.i.i721.6 = select contract i1 %cmp.i.i718.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i722.6 = fmul contract float %cond2.i.i721.6, %542, !dbg !152
  %cmp.i.i723.6 = fcmp contract olt float %add308.6, -1.260000e+02, !dbg !154
  %cond.i.i724.6 = select contract i1 %cmp.i.i723.6, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i725.6 = fadd contract float %add308.6, %cond.i.i724.6, !dbg !154
  %543 = tail call contract float @llvm.exp2.f32(float %add.i.i725.6), !dbg !154
  %cond2.i.i726.6 = select contract i1 %cmp.i.i723.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i727.6 = fmul contract float %cond2.i.i726.6, %543, !dbg !154
  %544 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !156, !noalias !164
  %545 = fptrunc float %mul.i.i712.6 to half, !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %544), !dbg !156, !noalias !164
  %546 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !164
  %547 = fptrunc float %mul.i.i717.6 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %546), !dbg !169, !noalias !164
  %548 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !175
  %549 = fptrunc float %mul.i.i722.6 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %548), !dbg !171, !noalias !175
  %550 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !180, !noalias !175
  %551 = fptrunc float %mul.i.i727.6 to half, !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %550), !dbg !180, !noalias !175
  %552 = insertelement <4 x half> poison, half %545, i64 0, !dbg !182
  %553 = insertelement <4 x half> %552, half %547, i64 1, !dbg !182
  %554 = insertelement <4 x half> %553, half %549, i64 2, !dbg !182
  %555 = insertelement <4 x half> %554, half %551, i64 3, !dbg !182
  %conv.i.i.6 = fpext half %545 to float, !dbg !183
  %add342.6 = fadd contract float %conv.i.i.6, 0.000000e+00, !dbg !188
  %conv.i.i.1.6 = fpext half %547 to float, !dbg !183
  %add342.1.6 = fadd contract float %add342.6, %conv.i.i.1.6, !dbg !188
  %conv.i.i.2.6 = fpext half %549 to float, !dbg !183
  %add342.2.6 = fadd contract float %add342.1.6, %conv.i.i.2.6, !dbg !188
  %conv.i.i.3.6 = fpext half %551 to float, !dbg !183
  %add342.3.6 = fadd contract float %add342.2.6, %conv.i.i.3.6, !dbg !188
  %556 = bitcast float %add342.3.6 to i32, !dbg !189
  %557 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !191
  %558 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %557) #11, !dbg !194
  %xor.i.i733.6 = xor i32 %558, 32, !dbg !195
  %559 = and i32 %558, -64, !dbg !196
  %and.i.i734.6 = add nsw i32 %559, 64, !dbg !196
  %cmp.not.i.i735.6 = icmp slt i32 %xor.i.i733.6, %and.i.i734.6, !dbg !197
  %cond.i.i736.6 = select i1 %cmp.not.i.i735.6, i32 %xor.i.i733.6, i32 %558, !dbg !198
  %shl.i.i737.6 = shl i32 %cond.i.i736.6, 2, !dbg !199
  %560 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i737.6, i32 %556), !dbg !200
  %561 = bitcast i32 %560 to float, !dbg !201
  %add350.6 = fadd contract float %add342.3.6, %561, !dbg !202
  %562 = bitcast float %add350.6 to i32, !dbg !203
  %563 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %564 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %563) #11, !dbg !208
  %xor.i.i738.6 = xor i32 %564, 16, !dbg !209
  %565 = and i32 %564, -64, !dbg !210
  %and.i.i739.6 = add nsw i32 %565, 64, !dbg !210
  %cmp.not.i.i740.6 = icmp slt i32 %xor.i.i738.6, %and.i.i739.6, !dbg !211
  %cond.i.i741.6 = select i1 %cmp.not.i.i740.6, i32 %xor.i.i738.6, i32 %564, !dbg !212
  %shl.i.i742.6 = shl i32 %cond.i.i741.6, 2, !dbg !213
  %566 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i742.6, i32 %562), !dbg !214
  %567 = bitcast i32 %566 to float, !dbg !215
  %add355.6 = fadd contract float %add350.6, %567, !dbg !216
  fence syncscope("warp") release, !dbg !217
  tail call void @llvm.mxc.barrier.warp(), !dbg !220
  fence syncscope("warp") acquire, !dbg !221
  %568 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add375, !dbg !222
  %569 = getelementptr inbounds i8, ptr addrspace(4) %568, i64 %.idx.6, !dbg !222
  %570 = load i64, ptr addrspace(4) %569, align 8, !dbg !223
  %add.ptr384.1.6 = getelementptr inbounds i8, ptr addrspace(4) %569, i64 128, !dbg !222
  %571 = load i64, ptr addrspace(4) %add.ptr384.1.6, align 8, !dbg !223
  %add.ptr384.2.6 = getelementptr inbounds i8, ptr addrspace(4) %569, i64 256, !dbg !222
  %572 = load i64, ptr addrspace(4) %add.ptr384.2.6, align 8, !dbg !223
  %add.ptr384.3.6 = getelementptr inbounds i8, ptr addrspace(4) %569, i64 384, !dbg !222
  %573 = load i64, ptr addrspace(4) %add.ptr384.3.6, align 8, !dbg !223
  %mul249.6 = fmul contract float %denominator.sroa.0.1.5, %mul.i.i.6, !dbg !245
  %574 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul414, !dbg !224
  %add.ptr426.idx.6 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.6 = getelementptr inbounds i8, ptr addrspace(3) %574, i32 %add.ptr426.idx.6, !dbg !224
  %v_column.sroa.130.0.insert.ext1476 = shl i64 %573, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext1321 = shl i64 %572, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift1322 = and i64 %v_column.sroa.98.0.insert.ext1321, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1324 = or disjoint i64 %v_column.sroa.130.0.insert.ext1476, %v_column.sroa.98.0.insert.shift1322, !dbg !225
  %v_column.sroa.66.0.insert.ext1166 = shl i64 %571, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1167 = and i64 %v_column.sroa.66.0.insert.ext1166, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1169 = or disjoint i64 %v_column.sroa.98.0.insert.insert1324, %v_column.sroa.66.0.insert.shift1167, !dbg !225
  %v_column.sroa.0.0.insert.ext1019 = and i64 %570, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1021 = or disjoint i64 %v_column.sroa.66.0.insert.insert1169, %v_column.sroa.0.0.insert.ext1019, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1021, ptr addrspace(3) %add.ptr426.6, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1605 = lshr i64 %570, 16, !dbg !226
  %add415.1.6 = or disjoint i32 %mul414, 256, !dbg !227
  %575 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.1.6, !dbg !224
  %xor422.1.6 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.1.6 = xor i32 %xor422.1.6, 8, !dbg !224
  %add.ptr426.1.6 = getelementptr inbounds i8, ptr addrspace(3) %575, i32 %add.ptr426.idx.1.6, !dbg !224
  %576 = shl i64 %573, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1481 = and i64 %576, -281474976710656, !dbg !225
  %577 = shl i64 %572, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1327 = and i64 %577, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1329 = or disjoint i64 %v_column.sroa.130.0.insert.ext1481, %v_column.sroa.98.0.insert.shift1327, !dbg !225
  %v_column.sroa.66.0.insert.ext1171 = and i64 %571, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1174 = or disjoint i64 %v_column.sroa.98.0.insert.insert1329, %v_column.sroa.66.0.insert.ext1171, !dbg !225
  %v_column.sroa.0.0.insert.ext1023 = and i64 %v_fetch.sroa.0.2.extract.shift1605, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1025 = or disjoint i64 %v_column.sroa.66.0.insert.insert1174, %v_column.sroa.0.0.insert.ext1023, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1025, ptr addrspace(3) %add.ptr426.1.6, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1626 = lshr i64 %570, 32, !dbg !226
  %add415.2.6 = or disjoint i32 %mul414, 512, !dbg !227
  %578 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.2.6, !dbg !224
  %xor422.2.6 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.2.6 = xor i32 %xor422.2.6, 16, !dbg !224
  %add.ptr426.2.6 = getelementptr inbounds i8, ptr addrspace(3) %578, i32 %add.ptr426.idx.2.6, !dbg !224
  %579 = shl i64 %573, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1486 = and i64 %579, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1331 = and i64 %572, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1334 = or disjoint i64 %v_column.sroa.130.0.insert.ext1486, %v_column.sroa.98.0.insert.ext1331, !dbg !225
  %580 = lshr i64 %571, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1177 = and i64 %580, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1179 = or disjoint i64 %v_column.sroa.98.0.insert.insert1334, %v_column.sroa.66.0.insert.shift1177, !dbg !225
  %v_column.sroa.0.0.insert.ext1027 = and i64 %v_fetch.sroa.0.4.extract.shift1626, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1029 = or disjoint i64 %v_column.sroa.66.0.insert.insert1179, %v_column.sroa.0.0.insert.ext1027, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1029, ptr addrspace(3) %add.ptr426.2.6, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1647 = lshr i64 %570, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift1878 = and i64 %573, -281474976710656, !dbg !225
  %add415.3.6 = or disjoint i32 %mul414, 768, !dbg !227
  %581 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.3.6, !dbg !224
  %xor422.3.6 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.3.6 = xor i32 %xor422.3.6, 24, !dbg !224
  %add.ptr426.3.6 = getelementptr inbounds i8, ptr addrspace(3) %581, i32 %add.ptr426.idx.3.6, !dbg !224
  %582 = lshr i64 %572, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1337 = and i64 %582, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1339 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1878, %v_column.sroa.98.0.insert.shift1337, !dbg !225
  %583 = lshr i64 %571, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1182 = and i64 %583, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1184 = or disjoint i64 %v_column.sroa.98.0.insert.insert1339, %v_column.sroa.66.0.insert.shift1182, !dbg !225
  %v_column.sroa.0.0.insert.insert1033 = or disjoint i64 %v_column.sroa.66.0.insert.insert1184, %v_fetch.sroa.0.6.extract.shift1647, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1033, ptr addrspace(3) %add.ptr426.3.6, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add443.6 = or disjoint i32 %mul436, %mul442, !dbg !233
  %584 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.6, !dbg !234
  %add.ptr453.idx.6 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.6 = getelementptr inbounds i8, ptr addrspace(3) %584, i32 %add.ptr453.idx.6, !dbg !234
  %585 = load <4 x half>, ptr addrspace(3) %add.ptr453.6, align 8, !dbg !235
  %add438.1.6 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.1.6 = or disjoint i32 %add438.1.6, 64, !dbg !233
  %586 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.1.6, !dbg !234
  %xor449.1.6 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.1.6 = xor i32 %xor449.1.6, 8, !dbg !234
  %add.ptr453.1.6 = getelementptr inbounds i8, ptr addrspace(3) %586, i32 %add.ptr453.idx.1.6, !dbg !234
  %587 = load <4 x half>, ptr addrspace(3) %add.ptr453.1.6, align 8, !dbg !235
  %add438.2.6 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.2.6 = or disjoint i32 %add438.2.6, 128, !dbg !233
  %588 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.2.6, !dbg !234
  %xor449.2.6 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.2.6 = xor i32 %xor449.2.6, 16, !dbg !234
  %add.ptr453.2.6 = getelementptr inbounds i8, ptr addrspace(3) %588, i32 %add.ptr453.idx.2.6, !dbg !234
  %589 = load <4 x half>, ptr addrspace(3) %add.ptr453.2.6, align 8, !dbg !235
  %add438.3.6 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.3.6 = or disjoint i32 %add438.3.6, 192, !dbg !233
  %590 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.3.6, !dbg !234
  %xor449.3.6 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.3.6 = xor i32 %xor449.3.6, 24, !dbg !234
  %add.ptr453.3.6 = getelementptr inbounds i8, ptr addrspace(3) %590, i32 %add.ptr453.idx.3.6, !dbg !234
  %591 = load <4 x half>, ptr addrspace(3) %add.ptr453.3.6, align 8, !dbg !235
  %592 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %585, <4 x half> %555, <4 x float> %numerator.sroa.0.12.vec.insert2416), !dbg !236
  %593 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %587, <4 x half> %555, <4 x float> %numerator.sroa.98.28.vec.insert2572), !dbg !236
  %594 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %589, <4 x half> %555, <4 x float> %numerator.sroa.194.44.vec.insert2728), !dbg !236
  %595 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %591, <4 x half> %555, <4 x float> %numerator.sroa.290.60.vec.insert2884), !dbg !236
  %add359.6 = fadd contract float %mul249.6, %add355.6, !dbg !237
  br label %if.end479.6, !dbg !238

if.end479.6:                                      ; preds = %if.then.6, %if.end479.5
  %numerator.sroa.290.6 = phi <4 x float> [ %numerator.sroa.290.5, %if.end479.5 ], [ %595, %if.then.6 ], !dbg !239
  %numerator.sroa.194.6 = phi <4 x float> [ %numerator.sroa.194.5, %if.end479.5 ], [ %594, %if.then.6 ], !dbg !239
  %numerator.sroa.98.6 = phi <4 x float> [ %numerator.sroa.98.5, %if.end479.5 ], [ %593, %if.then.6 ], !dbg !239
  %numerator.sroa.0.6 = phi <4 x float> [ %numerator.sroa.0.5, %if.end479.5 ], [ %592, %if.then.6 ], !dbg !239
  %maximum.sroa.0.1.6 = phi float [ %maximum.sroa.0.1.5, %if.end479.5 ], [ %538, %if.then.6 ], !dbg !239
  %denominator.sroa.0.1.6 = phi float [ %denominator.sroa.0.1.5, %if.end479.5 ], [ %add359.6, %if.then.6 ], !dbg !239
  %596 = or disjoint i64 %15, 7, !dbg !240
  %arrayidx80.7 = getelementptr inbounds i32, ptr addrspace(1) %Indices.coerce, i64 %596, !dbg !67
  %597 = load i32, ptr addrspace(1) %arrayidx80.7, align 4, !dbg !67, !tbaa !30
  %mul81.7 = shl nsw i32 %597, 4, !dbg !68
  %cmp82.7 = icmp slt i32 %597, 0, !dbg !69
  %cmp84.not.7 = icmp sgt i32 %mul81.7, %1
  %or.cond.7 = select i1 %cmp82.7, i1 true, i1 %cmp84.not.7, !dbg !70
  br i1 %or.cond.7, label %if.end479.7, label %if.then.7, !dbg !70

if.then.7:                                        ; preds = %if.end479.6
  fence syncscope("warp") release, !dbg !71
  tail call void @llvm.mxc.barrier.warp(), !dbg !74
  fence syncscope("warp") acquire, !dbg !75
  %conv94.7 = zext nneg i32 %mul81.7 to i64
  %.idx.7 = shl nuw nsw i64 %conv94.7, 7
  %gep.7 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep789, i64 %.idx.7, !dbg !76
  %.idx797.7 = shl nuw nsw i64 %conv, 17, !dbg !77
  %598 = getelementptr inbounds i8, ptr addrspace(4) %gep.7, i64 %.idx797.7, !dbg !77
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep762, ptr addrspace(4) noundef align 16 dereferenceable(16) %598, i64 16, i1 false), !dbg !78, !tbaa.struct !47, !call_argsrelate !79
  %gep769.1.7 = getelementptr inbounds i8, ptr addrspace(4) %598, i64 1024, !dbg !77
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %gep763.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %gep769.1.7, i64 16, i1 false), !dbg !78, !tbaa.struct !47, !call_argsrelate !79
  fence syncscope("warp") release, !dbg !80
  tail call void @llvm.mxc.barrier.warp(), !dbg !83
  fence syncscope("warp") acquire, !dbg !84
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %add.ptr47, align 8, !dbg !85
  %599 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %6, <4 x float> zeroinitializer), !dbg !86
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !85
  %600 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %7, <4 x float> %599), !dbg !86
  %k_local.sroa.0.0.copyload.2.7 = load <4 x half>, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !85
  %601 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.7, <4 x half> %8, <4 x float> %600), !dbg !86
  %k_local.sroa.0.0.copyload.3.7 = load <4 x half>, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !85
  %602 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.7, <4 x half> %9, <4 x float> %601), !dbg !86
  %add167.7 = add nuw nsw i32 %mul81.7, %mul166
  %cmp170.not.7 = icmp sgt i32 %add167.7, %1, !dbg !87
  %scores.sroa.0.0.vec.extract2033 = extractelement <4 x float> %602, i64 0
  %spec.select2933 = select i1 %cmp170.not.7, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2033, !dbg !88
  %cmp170.not.1.7.not = icmp slt i32 %add167.7, %1, !dbg !87
  %scores.sroa.0.4.vec.extract2112 = extractelement <4 x float> %602, i64 1, !dbg !88
  %condval.0.1.7 = select i1 %cmp170.not.1.7.not, float %scores.sroa.0.4.vec.extract2112, float 0xFFF0000000000000, !dbg !88
  %add168.2.7 = or disjoint i32 %add167.7, 2, !dbg !89
  %cmp170.not.2.7 = icmp sgt i32 %add168.2.7, %1, !dbg !87
  %scores.sroa.0.8.vec.extract2189 = extractelement <4 x float> %602, i64 2, !dbg !88
  %condval.0.2.7 = select i1 %cmp170.not.2.7, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2189, !dbg !88
  %add168.3.7 = or disjoint i32 %add167.7, 3, !dbg !89
  %cmp170.not.3.7 = icmp sgt i32 %add168.3.7, %1, !dbg !87
  %scores.sroa.0.12.vec.extract2266 = extractelement <4 x float> %602, i64 3, !dbg !88
  %condval.0.3.7 = select i1 %cmp170.not.3.7, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2266, !dbg !88
  %603 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2933, float 0xFFF0000000000000), !dbg !90
  %604 = tail call contract noundef float @llvm.maxnum.f32(float %603, float %condval.0.1.7), !dbg !90
  %605 = tail call contract noundef float @llvm.maxnum.f32(float %604, float %condval.0.2.7), !dbg !90
  %606 = tail call contract noundef float @llvm.maxnum.f32(float %605, float %condval.0.3.7), !dbg !90
  %607 = bitcast float %606 to i32, !dbg !94
  %608 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !97
  %609 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %608) #11, !dbg !102
  %xor.i.i.7 = xor i32 %609, 32, !dbg !103
  %610 = and i32 %609, -64, !dbg !104
  %and.i.i.7 = add nsw i32 %610, 64, !dbg !104
  %cmp.not.i.i.7 = icmp slt i32 %xor.i.i.7, %and.i.i.7, !dbg !105
  %cond.i.i.7 = select i1 %cmp.not.i.i.7, i32 %xor.i.i.7, i32 %609, !dbg !106
  %shl.i.i.7 = shl i32 %cond.i.i.7, 2, !dbg !107
  %611 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.7, i32 %607), !dbg !108
  %612 = bitcast i32 %611 to float, !dbg !109
  %613 = tail call contract noundef float @llvm.maxnum.f32(float %606, float %612), !dbg !110
  %614 = bitcast float %613 to i32, !dbg !112
  %615 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !114
  %616 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %615) #11, !dbg !117
  %xor.i.i702.7 = xor i32 %616, 16, !dbg !118
  %617 = and i32 %616, -64, !dbg !119
  %and.i.i703.7 = add nsw i32 %617, 64, !dbg !119
  %cmp.not.i.i704.7 = icmp slt i32 %xor.i.i702.7, %and.i.i703.7, !dbg !120
  %cond.i.i705.7 = select i1 %cmp.not.i.i704.7, i32 %xor.i.i702.7, i32 %616, !dbg !121
  %shl.i.i706.7 = shl i32 %cond.i.i705.7, 2, !dbg !122
  %618 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i706.7, i32 %614), !dbg !123
  %619 = bitcast i32 %618 to float, !dbg !124
  %620 = tail call contract noundef float @llvm.maxnum.f32(float %613, float %619), !dbg !125
  %621 = tail call contract noundef float @llvm.maxnum.f32(float %maximum.sroa.0.1.6, float %620), !dbg !127
  %sub.7 = fsub contract float %maximum.sroa.0.1.6, %621, !dbg !129
  %mul212.7 = fmul contract float %sub.7, 0x3FC7154760000000, !dbg !130
  %cmp.i.i.7 = fcmp contract olt float %mul212.7, -1.260000e+02, !dbg !131
  %cond.i.i707.7 = select contract i1 %cmp.i.i.7, float 6.400000e+01, float 0.000000e+00, !dbg !131
  %add.i.i.7 = fadd contract float %mul212.7, %cond.i.i707.7, !dbg !131
  %622 = tail call contract float @llvm.exp2.f32(float %add.i.i.7), !dbg !131
  %cond2.i.i.7 = select contract i1 %cmp.i.i.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !131
  %mul.i.i.7 = fmul contract float %cond2.i.i.7, %622, !dbg !131
  %numerator.sroa.0.0.vec.extract2307 = extractelement <4 x float> %numerator.sroa.0.6, i64 0, !dbg !241
  %numerator.sroa.0.4.vec.extract2344 = extractelement <4 x float> %numerator.sroa.0.6, i64 1, !dbg !241
  %numerator.sroa.0.8.vec.extract2381 = extractelement <4 x float> %numerator.sroa.0.6, i64 2, !dbg !241
  %numerator.sroa.0.12.vec.extract2418 = extractelement <4 x float> %numerator.sroa.0.6, i64 3, !dbg !241
  %mul229.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.0.vec.extract2307, !dbg !134
  %mul232.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.4.vec.extract2344, !dbg !242
  %mul235.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.8.vec.extract2381, !dbg !243
  %mul238.7 = fmul contract float %mul.i.i.7, %numerator.sroa.0.12.vec.extract2418, !dbg !244
  %numerator.sroa.0.0.vec.insert2309 = insertelement <4 x float> poison, float %mul229.7, i64 0, !dbg !135
  %numerator.sroa.0.4.vec.insert2346 = insertelement <4 x float> %numerator.sroa.0.0.vec.insert2309, float %mul232.7, i64 1, !dbg !135
  %numerator.sroa.0.8.vec.insert2383 = insertelement <4 x float> %numerator.sroa.0.4.vec.insert2346, float %mul235.7, i64 2, !dbg !135
  %numerator.sroa.0.12.vec.insert2420 = insertelement <4 x float> %numerator.sroa.0.8.vec.insert2383, float %mul238.7, i64 3, !dbg !135
  %numerator.sroa.98.16.vec.extract2463 = extractelement <4 x float> %numerator.sroa.98.6, i64 0, !dbg !241
  %numerator.sroa.98.20.vec.extract2500 = extractelement <4 x float> %numerator.sroa.98.6, i64 1, !dbg !241
  %numerator.sroa.98.24.vec.extract2537 = extractelement <4 x float> %numerator.sroa.98.6, i64 2, !dbg !241
  %numerator.sroa.98.28.vec.extract2574 = extractelement <4 x float> %numerator.sroa.98.6, i64 3, !dbg !241
  %mul229.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.16.vec.extract2463, !dbg !134
  %mul232.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.20.vec.extract2500, !dbg !242
  %mul235.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.24.vec.extract2537, !dbg !243
  %mul238.1.7 = fmul contract float %mul.i.i.7, %numerator.sroa.98.28.vec.extract2574, !dbg !244
  %numerator.sroa.98.16.vec.insert2465 = insertelement <4 x float> poison, float %mul229.1.7, i64 0, !dbg !135
  %numerator.sroa.98.20.vec.insert2502 = insertelement <4 x float> %numerator.sroa.98.16.vec.insert2465, float %mul232.1.7, i64 1, !dbg !135
  %numerator.sroa.98.24.vec.insert2539 = insertelement <4 x float> %numerator.sroa.98.20.vec.insert2502, float %mul235.1.7, i64 2, !dbg !135
  %numerator.sroa.98.28.vec.insert2576 = insertelement <4 x float> %numerator.sroa.98.24.vec.insert2539, float %mul238.1.7, i64 3, !dbg !135
  %numerator.sroa.194.32.vec.extract2619 = extractelement <4 x float> %numerator.sroa.194.6, i64 0, !dbg !241
  %numerator.sroa.194.36.vec.extract2656 = extractelement <4 x float> %numerator.sroa.194.6, i64 1, !dbg !241
  %numerator.sroa.194.40.vec.extract2693 = extractelement <4 x float> %numerator.sroa.194.6, i64 2, !dbg !241
  %numerator.sroa.194.44.vec.extract2730 = extractelement <4 x float> %numerator.sroa.194.6, i64 3, !dbg !241
  %mul229.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.32.vec.extract2619, !dbg !134
  %mul232.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.36.vec.extract2656, !dbg !242
  %mul235.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.40.vec.extract2693, !dbg !243
  %mul238.2.7 = fmul contract float %mul.i.i.7, %numerator.sroa.194.44.vec.extract2730, !dbg !244
  %numerator.sroa.194.32.vec.insert2621 = insertelement <4 x float> poison, float %mul229.2.7, i64 0, !dbg !135
  %numerator.sroa.194.36.vec.insert2658 = insertelement <4 x float> %numerator.sroa.194.32.vec.insert2621, float %mul232.2.7, i64 1, !dbg !135
  %numerator.sroa.194.40.vec.insert2695 = insertelement <4 x float> %numerator.sroa.194.36.vec.insert2658, float %mul235.2.7, i64 2, !dbg !135
  %numerator.sroa.194.44.vec.insert2732 = insertelement <4 x float> %numerator.sroa.194.40.vec.insert2695, float %mul238.2.7, i64 3, !dbg !135
  %numerator.sroa.290.48.vec.extract2775 = extractelement <4 x float> %numerator.sroa.290.6, i64 0, !dbg !241
  %numerator.sroa.290.52.vec.extract2812 = extractelement <4 x float> %numerator.sroa.290.6, i64 1, !dbg !241
  %numerator.sroa.290.56.vec.extract2849 = extractelement <4 x float> %numerator.sroa.290.6, i64 2, !dbg !241
  %numerator.sroa.290.60.vec.extract2886 = extractelement <4 x float> %numerator.sroa.290.6, i64 3, !dbg !241
  %mul229.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.48.vec.extract2775, !dbg !134
  %mul232.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.52.vec.extract2812, !dbg !242
  %mul235.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.56.vec.extract2849, !dbg !243
  %mul238.3.7 = fmul contract float %mul.i.i.7, %numerator.sroa.290.60.vec.extract2886, !dbg !244
  %numerator.sroa.290.48.vec.insert2777 = insertelement <4 x float> poison, float %mul229.3.7, i64 0, !dbg !135
  %numerator.sroa.290.52.vec.insert2814 = insertelement <4 x float> %numerator.sroa.290.48.vec.insert2777, float %mul232.3.7, i64 1, !dbg !135
  %numerator.sroa.290.56.vec.insert2851 = insertelement <4 x float> %numerator.sroa.290.52.vec.insert2814, float %mul235.3.7, i64 2, !dbg !135
  %numerator.sroa.290.60.vec.insert2888 = insertelement <4 x float> %numerator.sroa.290.56.vec.insert2851, float %mul238.3.7, i64 3, !dbg !135
  %sub262.7 = fsub contract float %spec.select2933, %621, !dbg !136
  %sub266.7 = fsub contract float %condval.0.1.7, %621, !dbg !137
  %sub270.7 = fsub contract float %condval.0.2.7, %621, !dbg !138
  %sub274.7 = fsub contract float %condval.0.3.7, %621, !dbg !139
  %mul279.7 = fmul contract float %sub262.7, 0x3FC7154760000000, !dbg !140
  %mul283.7 = fmul contract float %sub266.7, 0x3FC7154760000000, !dbg !141
  %mul287.7 = fmul contract float %sub270.7, 0x3FC7154760000000, !dbg !142
  %mul291.7 = fmul contract float %sub274.7, 0x3FC7154760000000, !dbg !143
  %add296.7 = fadd contract float %mul279.7, 8.000000e+00, !dbg !144
  %add300.7 = fadd contract float %mul283.7, 8.000000e+00, !dbg !145
  %add304.7 = fadd contract float %mul287.7, 8.000000e+00, !dbg !146
  %add308.7 = fadd contract float %mul291.7, 8.000000e+00, !dbg !147
  %cmp.i.i708.7 = fcmp contract olt float %add296.7, -1.260000e+02, !dbg !148
  %cond.i.i709.7 = select contract i1 %cmp.i.i708.7, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i710.7 = fadd contract float %add296.7, %cond.i.i709.7, !dbg !148
  %623 = tail call contract float @llvm.exp2.f32(float %add.i.i710.7), !dbg !148
  %cond2.i.i711.7 = select contract i1 %cmp.i.i708.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i712.7 = fmul contract float %cond2.i.i711.7, %623, !dbg !148
  %cmp.i.i713.7 = fcmp contract olt float %add300.7, -1.260000e+02, !dbg !150
  %cond.i.i714.7 = select contract i1 %cmp.i.i713.7, float 6.400000e+01, float 0.000000e+00, !dbg !150
  %add.i.i715.7 = fadd contract float %add300.7, %cond.i.i714.7, !dbg !150
  %624 = tail call contract float @llvm.exp2.f32(float %add.i.i715.7), !dbg !150
  %cond2.i.i716.7 = select contract i1 %cmp.i.i713.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !150
  %mul.i.i717.7 = fmul contract float %cond2.i.i716.7, %624, !dbg !150
  %cmp.i.i718.7 = fcmp contract olt float %add304.7, -1.260000e+02, !dbg !152
  %cond.i.i719.7 = select contract i1 %cmp.i.i718.7, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i720.7 = fadd contract float %add304.7, %cond.i.i719.7, !dbg !152
  %625 = tail call contract float @llvm.exp2.f32(float %add.i.i720.7), !dbg !152
  %cond2.i.i721.7 = select contract i1 %cmp.i.i718.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i722.7 = fmul contract float %cond2.i.i721.7, %625, !dbg !152
  %cmp.i.i723.7 = fcmp contract olt float %add308.7, -1.260000e+02, !dbg !154
  %cond.i.i724.7 = select contract i1 %cmp.i.i723.7, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i725.7 = fadd contract float %add308.7, %cond.i.i724.7, !dbg !154
  %626 = tail call contract float @llvm.exp2.f32(float %add.i.i725.7), !dbg !154
  %cond2.i.i726.7 = select contract i1 %cmp.i.i723.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i727.7 = fmul contract float %cond2.i.i726.7, %626, !dbg !154
  %627 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !156, !noalias !164
  %628 = fptrunc float %mul.i.i712.7 to half, !dbg !156
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %627), !dbg !156, !noalias !164
  %629 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !169, !noalias !164
  %630 = fptrunc float %mul.i.i717.7 to half, !dbg !169
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %629), !dbg !169, !noalias !164
  %631 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !175
  %632 = fptrunc float %mul.i.i722.7 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %631), !dbg !171, !noalias !175
  %633 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !180, !noalias !175
  %634 = fptrunc float %mul.i.i727.7 to half, !dbg !180
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %633), !dbg !180, !noalias !175
  %635 = insertelement <4 x half> poison, half %628, i64 0, !dbg !182
  %636 = insertelement <4 x half> %635, half %630, i64 1, !dbg !182
  %637 = insertelement <4 x half> %636, half %632, i64 2, !dbg !182
  %638 = insertelement <4 x half> %637, half %634, i64 3, !dbg !182
  %conv.i.i.7 = fpext half %628 to float, !dbg !183
  %add342.7 = fadd contract float %conv.i.i.7, 0.000000e+00, !dbg !188
  %conv.i.i.1.7 = fpext half %630 to float, !dbg !183
  %add342.1.7 = fadd contract float %add342.7, %conv.i.i.1.7, !dbg !188
  %conv.i.i.2.7 = fpext half %632 to float, !dbg !183
  %add342.2.7 = fadd contract float %add342.1.7, %conv.i.i.2.7, !dbg !188
  %conv.i.i.3.7 = fpext half %634 to float, !dbg !183
  %add342.3.7 = fadd contract float %add342.2.7, %conv.i.i.3.7, !dbg !188
  %639 = bitcast float %add342.3.7 to i32, !dbg !189
  %640 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !191
  %641 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %640) #11, !dbg !194
  %xor.i.i733.7 = xor i32 %641, 32, !dbg !195
  %642 = and i32 %641, -64, !dbg !196
  %and.i.i734.7 = add nsw i32 %642, 64, !dbg !196
  %cmp.not.i.i735.7 = icmp slt i32 %xor.i.i733.7, %and.i.i734.7, !dbg !197
  %cond.i.i736.7 = select i1 %cmp.not.i.i735.7, i32 %xor.i.i733.7, i32 %641, !dbg !198
  %shl.i.i737.7 = shl i32 %cond.i.i736.7, 2, !dbg !199
  %643 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i737.7, i32 %639), !dbg !200
  %644 = bitcast i32 %643 to float, !dbg !201
  %add350.7 = fadd contract float %add342.3.7, %644, !dbg !202
  %645 = bitcast float %add350.7 to i32, !dbg !203
  %646 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %647 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %646) #11, !dbg !208
  %xor.i.i738.7 = xor i32 %647, 16, !dbg !209
  %648 = and i32 %647, -64, !dbg !210
  %and.i.i739.7 = add nsw i32 %648, 64, !dbg !210
  %cmp.not.i.i740.7 = icmp slt i32 %xor.i.i738.7, %and.i.i739.7, !dbg !211
  %cond.i.i741.7 = select i1 %cmp.not.i.i740.7, i32 %xor.i.i738.7, i32 %647, !dbg !212
  %shl.i.i742.7 = shl i32 %cond.i.i741.7, 2, !dbg !213
  %649 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i742.7, i32 %645), !dbg !214
  %650 = bitcast i32 %649 to float, !dbg !215
  %add355.7 = fadd contract float %add350.7, %650, !dbg !216
  fence syncscope("warp") release, !dbg !217
  tail call void @llvm.mxc.barrier.warp(), !dbg !220
  fence syncscope("warp") acquire, !dbg !221
  %651 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add375, !dbg !222
  %652 = getelementptr inbounds i8, ptr addrspace(4) %651, i64 %.idx.7, !dbg !222
  %653 = load i64, ptr addrspace(4) %652, align 8, !dbg !223
  %add.ptr384.1.7 = getelementptr inbounds i8, ptr addrspace(4) %652, i64 128, !dbg !222
  %654 = load i64, ptr addrspace(4) %add.ptr384.1.7, align 8, !dbg !223
  %add.ptr384.2.7 = getelementptr inbounds i8, ptr addrspace(4) %652, i64 256, !dbg !222
  %655 = load i64, ptr addrspace(4) %add.ptr384.2.7, align 8, !dbg !223
  %add.ptr384.3.7 = getelementptr inbounds i8, ptr addrspace(4) %652, i64 384, !dbg !222
  %656 = load i64, ptr addrspace(4) %add.ptr384.3.7, align 8, !dbg !223
  %mul249.7 = fmul contract float %denominator.sroa.0.1.6, %mul.i.i.7, !dbg !245
  %657 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul414, !dbg !224
  %add.ptr426.idx.7 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.7 = getelementptr inbounds i8, ptr addrspace(3) %657, i32 %add.ptr426.idx.7, !dbg !224
  %v_column.sroa.130.0.insert.ext1496 = shl i64 %656, 48, !dbg !225
  %v_column.sroa.98.0.insert.ext1341 = shl i64 %655, 32, !dbg !225
  %v_column.sroa.98.0.insert.shift1342 = and i64 %v_column.sroa.98.0.insert.ext1341, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1344 = or disjoint i64 %v_column.sroa.130.0.insert.ext1496, %v_column.sroa.98.0.insert.shift1342, !dbg !225
  %v_column.sroa.66.0.insert.ext1186 = shl i64 %654, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1187 = and i64 %v_column.sroa.66.0.insert.ext1186, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1189 = or disjoint i64 %v_column.sroa.98.0.insert.insert1344, %v_column.sroa.66.0.insert.shift1187, !dbg !225
  %v_column.sroa.0.0.insert.ext1035 = and i64 %653, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1037 = or disjoint i64 %v_column.sroa.66.0.insert.insert1189, %v_column.sroa.0.0.insert.ext1035, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1037, ptr addrspace(3) %add.ptr426.7, align 8, !dbg !225
  %v_fetch.sroa.0.2.extract.shift1608 = lshr i64 %653, 16, !dbg !226
  %add415.1.7 = or disjoint i32 %mul414, 256, !dbg !227
  %658 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.1.7, !dbg !224
  %xor422.1.7 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.1.7 = xor i32 %xor422.1.7, 8, !dbg !224
  %add.ptr426.1.7 = getelementptr inbounds i8, ptr addrspace(3) %658, i32 %add.ptr426.idx.1.7, !dbg !224
  %659 = shl i64 %656, 32, !dbg !225
  %v_column.sroa.130.0.insert.ext1501 = and i64 %659, -281474976710656, !dbg !225
  %660 = shl i64 %655, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1347 = and i64 %660, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1349 = or disjoint i64 %v_column.sroa.130.0.insert.ext1501, %v_column.sroa.98.0.insert.shift1347, !dbg !225
  %v_column.sroa.66.0.insert.ext1191 = and i64 %654, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1194 = or disjoint i64 %v_column.sroa.98.0.insert.insert1349, %v_column.sroa.66.0.insert.ext1191, !dbg !225
  %v_column.sroa.0.0.insert.ext1039 = and i64 %v_fetch.sroa.0.2.extract.shift1608, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1041 = or disjoint i64 %v_column.sroa.66.0.insert.insert1194, %v_column.sroa.0.0.insert.ext1039, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1041, ptr addrspace(3) %add.ptr426.1.7, align 8, !dbg !225
  %v_fetch.sroa.0.4.extract.shift1629 = lshr i64 %653, 32, !dbg !226
  %add415.2.7 = or disjoint i32 %mul414, 512, !dbg !227
  %661 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.2.7, !dbg !224
  %xor422.2.7 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.2.7 = xor i32 %xor422.2.7, 16, !dbg !224
  %add.ptr426.2.7 = getelementptr inbounds i8, ptr addrspace(3) %661, i32 %add.ptr426.idx.2.7, !dbg !224
  %662 = shl i64 %656, 16, !dbg !225
  %v_column.sroa.130.0.insert.ext1506 = and i64 %662, -281474976710656, !dbg !225
  %v_column.sroa.98.0.insert.ext1351 = and i64 %655, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1354 = or disjoint i64 %v_column.sroa.130.0.insert.ext1506, %v_column.sroa.98.0.insert.ext1351, !dbg !225
  %663 = lshr i64 %654, 16, !dbg !225
  %v_column.sroa.66.0.insert.shift1197 = and i64 %663, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1199 = or disjoint i64 %v_column.sroa.98.0.insert.insert1354, %v_column.sroa.66.0.insert.shift1197, !dbg !225
  %v_column.sroa.0.0.insert.ext1043 = and i64 %v_fetch.sroa.0.4.extract.shift1629, 65535, !dbg !225
  %v_column.sroa.0.0.insert.insert1045 = or disjoint i64 %v_column.sroa.66.0.insert.insert1199, %v_column.sroa.0.0.insert.ext1043, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1045, ptr addrspace(3) %add.ptr426.2.7, align 8, !dbg !225
  %v_fetch.sroa.0.6.extract.shift1650 = lshr i64 %653, 48, !dbg !226
  %v_fetch.sroa.122.30.extract.shift1881 = and i64 %656, -281474976710656, !dbg !225
  %add415.3.7 = or disjoint i32 %mul414, 768, !dbg !227
  %664 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add415.3.7, !dbg !224
  %xor422.3.7 = shl nuw nsw i32 %xor421, 3, !dbg !224
  %add.ptr426.idx.3.7 = xor i32 %xor422.3.7, 24, !dbg !224
  %add.ptr426.3.7 = getelementptr inbounds i8, ptr addrspace(3) %664, i32 %add.ptr426.idx.3.7, !dbg !224
  %665 = lshr i64 %655, 16, !dbg !225
  %v_column.sroa.98.0.insert.shift1357 = and i64 %665, 281470681743360, !dbg !225
  %v_column.sroa.98.0.insert.insert1359 = or disjoint i64 %v_fetch.sroa.122.30.extract.shift1881, %v_column.sroa.98.0.insert.shift1357, !dbg !225
  %666 = lshr i64 %654, 32, !dbg !225
  %v_column.sroa.66.0.insert.shift1202 = and i64 %666, 4294901760, !dbg !225
  %v_column.sroa.66.0.insert.insert1204 = or disjoint i64 %v_column.sroa.98.0.insert.insert1359, %v_column.sroa.66.0.insert.shift1202, !dbg !225
  %v_column.sroa.0.0.insert.insert1049 = or disjoint i64 %v_column.sroa.66.0.insert.insert1204, %v_fetch.sroa.0.6.extract.shift1650, !dbg !225
  store i64 %v_column.sroa.0.0.insert.insert1049, ptr addrspace(3) %add.ptr426.3.7, align 8, !dbg !225
  fence syncscope("warp") release, !dbg !228
  tail call void @llvm.mxc.barrier.warp(), !dbg !231
  fence syncscope("warp") acquire, !dbg !232
  %add443.7 = or disjoint i32 %mul436, %mul442, !dbg !233
  %667 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.7, !dbg !234
  %add.ptr453.idx.7 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.7 = getelementptr inbounds i8, ptr addrspace(3) %667, i32 %add.ptr453.idx.7, !dbg !234
  %668 = load <4 x half>, ptr addrspace(3) %add.ptr453.7, align 8, !dbg !235
  %add438.1.7 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.1.7 = or disjoint i32 %add438.1.7, 64, !dbg !233
  %669 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.1.7, !dbg !234
  %xor449.1.7 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.1.7 = xor i32 %xor449.1.7, 8, !dbg !234
  %add.ptr453.1.7 = getelementptr inbounds i8, ptr addrspace(3) %669, i32 %add.ptr453.idx.1.7, !dbg !234
  %670 = load <4 x half>, ptr addrspace(3) %add.ptr453.1.7, align 8, !dbg !235
  %add438.2.7 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.2.7 = or disjoint i32 %add438.2.7, 128, !dbg !233
  %671 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.2.7, !dbg !234
  %xor449.2.7 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.2.7 = xor i32 %xor449.2.7, 16, !dbg !234
  %add.ptr453.2.7 = getelementptr inbounds i8, ptr addrspace(3) %671, i32 %add.ptr453.idx.2.7, !dbg !234
  %672 = load <4 x half>, ptr addrspace(3) %add.ptr453.2.7, align 8, !dbg !235
  %add438.3.7 = or disjoint i32 %mul436, %mul442, !dbg !233
  %add443.3.7 = or disjoint i32 %add438.3.7, 192, !dbg !233
  %673 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add443.3.7, !dbg !234
  %xor449.3.7 = shl nuw nsw i32 %14, 3, !dbg !234
  %add.ptr453.idx.3.7 = xor i32 %xor449.3.7, 24, !dbg !234
  %add.ptr453.3.7 = getelementptr inbounds i8, ptr addrspace(3) %673, i32 %add.ptr453.idx.3.7, !dbg !234
  %674 = load <4 x half>, ptr addrspace(3) %add.ptr453.3.7, align 8, !dbg !235
  %675 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %668, <4 x half> %638, <4 x float> %numerator.sroa.0.12.vec.insert2420), !dbg !236
  %676 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %670, <4 x half> %638, <4 x float> %numerator.sroa.98.28.vec.insert2576), !dbg !236
  %677 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %672, <4 x half> %638, <4 x float> %numerator.sroa.194.44.vec.insert2732), !dbg !236
  %678 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %674, <4 x half> %638, <4 x float> %numerator.sroa.290.60.vec.insert2888), !dbg !236
  %add359.7 = fadd contract float %mul249.7, %add355.7, !dbg !237
  br label %if.end479.7, !dbg !238

if.end479.7:                                      ; preds = %if.then.7, %if.end479.6
  %numerator.sroa.290.7 = phi <4 x float> [ %numerator.sroa.290.6, %if.end479.6 ], [ %678, %if.then.7 ], !dbg !239
  %numerator.sroa.194.7 = phi <4 x float> [ %numerator.sroa.194.6, %if.end479.6 ], [ %677, %if.then.7 ], !dbg !239
  %numerator.sroa.98.7 = phi <4 x float> [ %numerator.sroa.98.6, %if.end479.6 ], [ %676, %if.then.7 ], !dbg !239
  %numerator.sroa.0.7 = phi <4 x float> [ %numerator.sroa.0.6, %if.end479.6 ], [ %675, %if.then.7 ], !dbg !239
  %denominator.sroa.0.1.7 = phi float [ %denominator.sroa.0.1.6, %if.end479.6 ], [ %add359.7, %if.then.7 ], !dbg !239
  %numerator.sroa.0.0.vec.extract2313 = extractelement <4 x float> %numerator.sroa.0.7, i64 0, !dbg !246
  %numerator.sroa.0.4.vec.extract2350 = extractelement <4 x float> %numerator.sroa.0.7, i64 1, !dbg !246
  %numerator.sroa.0.8.vec.extract2387 = extractelement <4 x float> %numerator.sroa.0.7, i64 2, !dbg !246
  %numerator.sroa.0.12.vec.extract2424 = extractelement <4 x float> %numerator.sroa.0.7, i64 3, !dbg !246
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract2313, %denominator.sroa.0.1.7, !dbg !247
  %div501 = fdiv contract float %numerator.sroa.0.4.vec.extract2350, %denominator.sroa.0.1.7, !dbg !248
  %div505 = fdiv contract float %numerator.sroa.0.8.vec.extract2387, %denominator.sroa.0.1.7, !dbg !249
  %div509 = fdiv contract float %numerator.sroa.0.12.vec.extract2424, %denominator.sroa.0.1.7, !dbg !250
  %numerator.sroa.98.16.vec.extract2467 = extractelement <4 x float> %numerator.sroa.98.7, i64 0, !dbg !246
  %numerator.sroa.98.20.vec.extract2504 = extractelement <4 x float> %numerator.sroa.98.7, i64 1, !dbg !246
  %numerator.sroa.98.24.vec.extract2541 = extractelement <4 x float> %numerator.sroa.98.7, i64 2, !dbg !246
  %numerator.sroa.98.28.vec.extract2578 = extractelement <4 x float> %numerator.sroa.98.7, i64 3, !dbg !246
  %div.1 = fdiv contract float %numerator.sroa.98.16.vec.extract2467, %denominator.sroa.0.1.7, !dbg !247
  %div501.1 = fdiv contract float %numerator.sroa.98.20.vec.extract2504, %denominator.sroa.0.1.7, !dbg !248
  %div505.1 = fdiv contract float %numerator.sroa.98.24.vec.extract2541, %denominator.sroa.0.1.7, !dbg !249
  %div509.1 = fdiv contract float %numerator.sroa.98.28.vec.extract2578, %denominator.sroa.0.1.7, !dbg !250
  %numerator.sroa.194.32.vec.extract2623 = extractelement <4 x float> %numerator.sroa.194.7, i64 0, !dbg !246
  %numerator.sroa.194.36.vec.extract2660 = extractelement <4 x float> %numerator.sroa.194.7, i64 1, !dbg !246
  %numerator.sroa.194.40.vec.extract2697 = extractelement <4 x float> %numerator.sroa.194.7, i64 2, !dbg !246
  %numerator.sroa.194.44.vec.extract2734 = extractelement <4 x float> %numerator.sroa.194.7, i64 3, !dbg !246
  %div.2 = fdiv contract float %numerator.sroa.194.32.vec.extract2623, %denominator.sroa.0.1.7, !dbg !247
  %div501.2 = fdiv contract float %numerator.sroa.194.36.vec.extract2660, %denominator.sroa.0.1.7, !dbg !248
  %div505.2 = fdiv contract float %numerator.sroa.194.40.vec.extract2697, %denominator.sroa.0.1.7, !dbg !249
  %div509.2 = fdiv contract float %numerator.sroa.194.44.vec.extract2734, %denominator.sroa.0.1.7, !dbg !250
  %numerator.sroa.290.48.vec.extract2779 = extractelement <4 x float> %numerator.sroa.290.7, i64 0, !dbg !246
  %numerator.sroa.290.52.vec.extract2816 = extractelement <4 x float> %numerator.sroa.290.7, i64 1, !dbg !246
  %numerator.sroa.290.56.vec.extract2853 = extractelement <4 x float> %numerator.sroa.290.7, i64 2, !dbg !246
  %numerator.sroa.290.60.vec.extract2890 = extractelement <4 x float> %numerator.sroa.290.7, i64 3, !dbg !246
  %div.3 = fdiv contract float %numerator.sroa.290.48.vec.extract2779, %denominator.sroa.0.1.7, !dbg !247
  %div501.3 = fdiv contract float %numerator.sroa.290.52.vec.extract2816, %denominator.sroa.0.1.7, !dbg !248
  %div505.3 = fdiv contract float %numerator.sroa.290.56.vec.extract2853, %denominator.sroa.0.1.7, !dbg !249
  %div509.3 = fdiv contract float %numerator.sroa.290.60.vec.extract2890, %denominator.sroa.0.1.7, !dbg !250
  fence syncscope("warp") release, !dbg !251
  tail call void @llvm.mxc.barrier.warp(), !dbg !254
  fence syncscope("warp") acquire, !dbg !255
  %679 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !256
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !256, !noalias !260
  %680 = fptrunc float %div to half, !dbg !256
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %679), !dbg !256, !noalias !260
  %681 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !265, !noalias !260
  %682 = fptrunc float %div501 to half, !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %681), !dbg !265, !noalias !260
  %683 = bitcast half %680 to i16, !dbg !267
  %684 = bitcast half %682 to i16, !dbg !270
  %685 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !271
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !271, !noalias !275
  %686 = fptrunc float %div505 to half, !dbg !271
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %685), !dbg !271, !noalias !275
  %687 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !280
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !280, !noalias !275
  %688 = fptrunc float %div509 to half, !dbg !280
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %687), !dbg !280, !noalias !275
  %689 = bitcast half %686 to i16, !dbg !282
  %690 = bitcast half %688 to i16, !dbg !284
  %__8.sroa.6.0.insert.ext = zext i16 %690 to i64, !dbg !285
  %__8.sroa.6.0.insert.shift = shl nuw i64 %__8.sroa.6.0.insert.ext, 48, !dbg !285
  %__8.sroa.5.0.insert.ext = zext i16 %689 to i64, !dbg !285
  %__8.sroa.5.0.insert.shift = shl nuw nsw i64 %__8.sroa.5.0.insert.ext, 32, !dbg !285
  %__8.sroa.5.0.insert.insert = or disjoint i64 %__8.sroa.6.0.insert.shift, %__8.sroa.5.0.insert.shift, !dbg !285
  %__8.sroa.4.0.insert.ext = zext i16 %684 to i64, !dbg !285
  %__8.sroa.4.0.insert.shift = shl nuw nsw i64 %__8.sroa.4.0.insert.ext, 16, !dbg !285
  %__8.sroa.4.0.insert.insert = or disjoint i64 %__8.sroa.5.0.insert.insert, %__8.sroa.4.0.insert.shift, !dbg !285
  %__8.sroa.0.0.insert.ext = zext i16 %683 to i64, !dbg !285
  %__8.sroa.0.0.insert.insert = or disjoint i64 %__8.sroa.4.0.insert.insert, %__8.sroa.0.0.insert.ext, !dbg !285
  store i64 %__8.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr47, align 8, !dbg !286
  %691 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !256
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !256, !noalias !260
  %692 = fptrunc float %div.1 to half, !dbg !256
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %691), !dbg !256, !noalias !260
  %693 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !265, !noalias !260
  %694 = fptrunc float %div501.1 to half, !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %693), !dbg !265, !noalias !260
  %695 = bitcast half %692 to i16, !dbg !267
  %696 = bitcast half %694 to i16, !dbg !270
  %697 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !271
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !271, !noalias !275
  %698 = fptrunc float %div505.1 to half, !dbg !271
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %697), !dbg !271, !noalias !275
  %699 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !280
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !280, !noalias !275
  %700 = fptrunc float %div509.1 to half, !dbg !280
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %699), !dbg !280, !noalias !275
  %701 = bitcast half %698 to i16, !dbg !282
  %702 = bitcast half %700 to i16, !dbg !284
  %__8.sroa.6.0.insert.ext.1 = zext i16 %702 to i64, !dbg !285
  %__8.sroa.6.0.insert.shift.1 = shl nuw i64 %__8.sroa.6.0.insert.ext.1, 48, !dbg !285
  %__8.sroa.5.0.insert.ext.1 = zext i16 %701 to i64, !dbg !285
  %__8.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.1, 32, !dbg !285
  %__8.sroa.5.0.insert.insert.1 = or disjoint i64 %__8.sroa.6.0.insert.shift.1, %__8.sroa.5.0.insert.shift.1, !dbg !285
  %__8.sroa.4.0.insert.ext.1 = zext i16 %696 to i64, !dbg !285
  %__8.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.1, 16, !dbg !285
  %__8.sroa.4.0.insert.insert.1 = or disjoint i64 %__8.sroa.5.0.insert.insert.1, %__8.sroa.4.0.insert.shift.1, !dbg !285
  %__8.sroa.0.0.insert.ext.1 = zext i16 %695 to i64, !dbg !285
  %__8.sroa.0.0.insert.insert.1 = or disjoint i64 %__8.sroa.4.0.insert.insert.1, %__8.sroa.0.0.insert.ext.1, !dbg !285
  store i64 %__8.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr47.1, align 8, !dbg !286
  %703 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !256
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !256, !noalias !260
  %704 = fptrunc float %div.2 to half, !dbg !256
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %703), !dbg !256, !noalias !260
  %705 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !265, !noalias !260
  %706 = fptrunc float %div501.2 to half, !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %705), !dbg !265, !noalias !260
  %707 = bitcast half %704 to i16, !dbg !267
  %708 = bitcast half %706 to i16, !dbg !270
  %709 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !271
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !271, !noalias !275
  %710 = fptrunc float %div505.2 to half, !dbg !271
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %709), !dbg !271, !noalias !275
  %711 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !280
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !280, !noalias !275
  %712 = fptrunc float %div509.2 to half, !dbg !280
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %711), !dbg !280, !noalias !275
  %713 = bitcast half %710 to i16, !dbg !282
  %714 = bitcast half %712 to i16, !dbg !284
  %__8.sroa.6.0.insert.ext.2 = zext i16 %714 to i64, !dbg !285
  %__8.sroa.6.0.insert.shift.2 = shl nuw i64 %__8.sroa.6.0.insert.ext.2, 48, !dbg !285
  %__8.sroa.5.0.insert.ext.2 = zext i16 %713 to i64, !dbg !285
  %__8.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.2, 32, !dbg !285
  %__8.sroa.5.0.insert.insert.2 = or disjoint i64 %__8.sroa.6.0.insert.shift.2, %__8.sroa.5.0.insert.shift.2, !dbg !285
  %__8.sroa.4.0.insert.ext.2 = zext i16 %708 to i64, !dbg !285
  %__8.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.2, 16, !dbg !285
  %__8.sroa.4.0.insert.insert.2 = or disjoint i64 %__8.sroa.5.0.insert.insert.2, %__8.sroa.4.0.insert.shift.2, !dbg !285
  %__8.sroa.0.0.insert.ext.2 = zext i16 %707 to i64, !dbg !285
  %__8.sroa.0.0.insert.insert.2 = or disjoint i64 %__8.sroa.4.0.insert.insert.2, %__8.sroa.0.0.insert.ext.2, !dbg !285
  store i64 %__8.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr47.2, align 8, !dbg !286
  %715 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !256
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !256, !noalias !260
  %716 = fptrunc float %div.3 to half, !dbg !256
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %715), !dbg !256, !noalias !260
  %717 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !265, !noalias !260
  %718 = fptrunc float %div501.3 to half, !dbg !265
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %717), !dbg !265, !noalias !260
  %719 = bitcast half %716 to i16, !dbg !267
  %720 = bitcast half %718 to i16, !dbg !270
  %721 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !271
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !271, !noalias !275
  %722 = fptrunc float %div505.3 to half, !dbg !271
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %721), !dbg !271, !noalias !275
  %723 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !280
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !280, !noalias !275
  %724 = fptrunc float %div509.3 to half, !dbg !280
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %723), !dbg !280, !noalias !275
  %725 = bitcast half %722 to i16, !dbg !282
  %726 = bitcast half %724 to i16, !dbg !284
  %__8.sroa.6.0.insert.ext.3 = zext i16 %726 to i64, !dbg !285
  %__8.sroa.6.0.insert.shift.3 = shl nuw i64 %__8.sroa.6.0.insert.ext.3, 48, !dbg !285
  %__8.sroa.5.0.insert.ext.3 = zext i16 %725 to i64, !dbg !285
  %__8.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.5.0.insert.ext.3, 32, !dbg !285
  %__8.sroa.5.0.insert.insert.3 = or disjoint i64 %__8.sroa.6.0.insert.shift.3, %__8.sroa.5.0.insert.shift.3, !dbg !285
  %__8.sroa.4.0.insert.ext.3 = zext i16 %720 to i64, !dbg !285
  %__8.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__8.sroa.4.0.insert.ext.3, 16, !dbg !285
  %__8.sroa.4.0.insert.insert.3 = or disjoint i64 %__8.sroa.5.0.insert.insert.3, %__8.sroa.4.0.insert.shift.3, !dbg !285
  %__8.sroa.0.0.insert.ext.3 = zext i16 %719 to i64, !dbg !285
  %__8.sroa.0.0.insert.insert.3 = or disjoint i64 %__8.sroa.4.0.insert.insert.3, %__8.sroa.0.0.insert.ext.3, !dbg !285
  store i64 %__8.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr47.3, align 8, !dbg !286
  fence syncscope("warp") release, !dbg !287
  tail call void @llvm.mxc.barrier.warp(), !dbg !290
  fence syncscope("warp") acquire, !dbg !291
  %add.ptr591 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !292
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr591, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep762, i64 16, i1 false), !dbg !293, !tbaa.struct !47, !call_argsrelate !294
  %add.ptr591.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %4, !dbg !292
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr591.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep763.1, i64 16, i1 false), !dbg !293, !tbaa.struct !47, !call_argsrelate !294
  ret void, !dbg !295
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v056_codex_power_s8_proven_bounds_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v056_codex_power_s8_proven_bounds_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!76 = !DILocation(line: 49, column: 12, scope: !40)
!77 = !DILocation(line: 50, column: 160, scope: !40)
!78 = !DILocation(line: 50, column: 146, scope: !40)
!79 = !{i32 -1, i32 1, i32 -1, i32 -1}
!80 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !81)
!81 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !82)
!82 = distinct !DILocation(line: 52, column: 7, scope: !40)
!83 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !81)
!84 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !81)
!85 = !DILocation(line: 57, column: 32, scope: !40)
!86 = !DILocation(line: 59, column: 37, scope: !40)
!87 = !DILocation(line: 67, column: 74, scope: !40)
!88 = !DILocation(line: 67, column: 13, scope: !40)
!89 = !DILocation(line: 67, column: 63, scope: !40)
!90 = !DILocation(line: 351, column: 10, scope: !91, inlinedAt: !93)
!91 = distinct !DISubprogram(name: "max", scope: !92, file: !92, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!92 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!93 = distinct !DILocation(line: 77, column: 28, scope: !40)
!94 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !96)
!95 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !53, file: !53, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!96 = distinct !DILocation(line: 79, column: 48, scope: !40)
!97 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !99)
!98 = distinct !DISubprogram(name: "__lane_id", scope: !53, file: !53, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!99 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !101)
!100 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !53, file: !53, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
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
!111 = distinct !DILocation(line: 79, column: 26, scope: !40)
!112 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !113)
!113 = distinct !DILocation(line: 80, column: 48, scope: !40)
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
!126 = distinct !DILocation(line: 80, column: 26, scope: !40)
!127 = !DILocation(line: 351, column: 10, scope: !91, inlinedAt: !128)
!128 = distinct !DILocation(line: 81, column: 24, scope: !40)
!129 = !DILocation(line: 82, column: 39, scope: !40)
!130 = !DILocation(line: 82, column: 57, scope: !40)
!131 = !DILocation(line: 285, column: 49, scope: !132, inlinedAt: !133)
!132 = distinct !DISubprogram(name: "exp2f", scope: !92, file: !92, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!133 = distinct !DILocation(line: 82, column: 20, scope: !40)
!134 = !DILocation(line: 88, column: 24, scope: !40)
!135 = !DILocation(line: 92, column: 47, scope: !40)
!136 = !DILocation(line: 105, column: 28, scope: !40)
!137 = !DILocation(line: 106, column: 28, scope: !40)
!138 = !DILocation(line: 107, column: 28, scope: !40)
!139 = !DILocation(line: 108, column: 28, scope: !40)
!140 = !DILocation(line: 110, column: 25, scope: !40)
!141 = !DILocation(line: 111, column: 25, scope: !40)
!142 = !DILocation(line: 112, column: 25, scope: !40)
!143 = !DILocation(line: 113, column: 25, scope: !40)
!144 = !DILocation(line: 115, column: 23, scope: !40)
!145 = !DILocation(line: 116, column: 23, scope: !40)
!146 = !DILocation(line: 117, column: 23, scope: !40)
!147 = !DILocation(line: 118, column: 23, scope: !40)
!148 = !DILocation(line: 285, column: 49, scope: !132, inlinedAt: !149)
!149 = distinct !DILocation(line: 119, column: 15, scope: !40)
!150 = !DILocation(line: 285, column: 49, scope: !132, inlinedAt: !151)
!151 = distinct !DILocation(line: 120, column: 15, scope: !40)
!152 = !DILocation(line: 285, column: 49, scope: !132, inlinedAt: !153)
!153 = distinct !DILocation(line: 121, column: 15, scope: !40)
!154 = !DILocation(line: 285, column: 49, scope: !132, inlinedAt: !155)
!155 = distinct !DILocation(line: 122, column: 15, scope: !40)
!156 = !DILocation(line: 1007, column: 10, scope: !157, inlinedAt: !159)
!157 = distinct !DISubprogram(name: "__float2half_rn", scope: !158, file: !158, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!158 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!159 = distinct !DILocation(line: 1077, column: 18, scope: !160, inlinedAt: !161)
!160 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !158, file: !158, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!161 = distinct !DILocation(line: 1295, column: 23, scope: !162, inlinedAt: !163)
!162 = distinct !DISubprogram(name: "__float22half2_rn", scope: !158, file: !158, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!163 = distinct !DILocation(line: 123, column: 29, scope: !40)
!164 = !{!165, !167}
!165 = distinct !{!165, !166, !"_ZL17__floats2half2_rnff: %agg.result"}
!166 = distinct !{!166, !"_ZL17__floats2half2_rnff"}
!167 = distinct !{!167, !168, !"_ZL17__float22half2_rn6float2: %agg.result"}
!168 = distinct !{!168, !"_ZL17__float22half2_rn6float2"}
!169 = !DILocation(line: 1007, column: 10, scope: !157, inlinedAt: !170)
!170 = distinct !DILocation(line: 1077, column: 38, scope: !160, inlinedAt: !161)
!171 = !DILocation(line: 1007, column: 10, scope: !157, inlinedAt: !172)
!172 = distinct !DILocation(line: 1077, column: 18, scope: !160, inlinedAt: !173)
!173 = distinct !DILocation(line: 1295, column: 23, scope: !162, inlinedAt: !174)
!174 = distinct !DILocation(line: 124, column: 29, scope: !40)
!175 = !{!176, !178}
!176 = distinct !{!176, !177, !"_ZL17__floats2half2_rnff: %agg.result"}
!177 = distinct !{!177, !"_ZL17__floats2half2_rnff"}
!178 = distinct !{!178, !179, !"_ZL17__float22half2_rn6float2: %agg.result"}
!179 = distinct !{!179, !"_ZL17__float22half2_rn6float2"}
!180 = !DILocation(line: 1007, column: 10, scope: !157, inlinedAt: !181)
!181 = distinct !DILocation(line: 1077, column: 38, scope: !160, inlinedAt: !173)
!182 = !DILocation(line: 125, column: 36, scope: !40)
!183 = !DILocation(line: 1082, column: 16, scope: !184, inlinedAt: !185)
!184 = distinct !DISubprogram(name: "__half2float", scope: !158, file: !158, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!185 = distinct !DILocation(line: 136, column: 55, scope: !186, inlinedAt: !187)
!186 = distinct !DISubprogram(name: "operator float", scope: !158, file: !158, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!187 = distinct !DILocation(line: 129, column: 52, scope: !40)
!188 = !DILocation(line: 129, column: 42, scope: !40)
!189 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !190)
!190 = distinct !DILocation(line: 131, column: 42, scope: !40)
!191 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !192)
!192 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !193)
!193 = distinct !DILocation(line: 1019, column: 11, scope: !95, inlinedAt: !190)
!194 = !DILocation(line: 171, column: 10, scope: !98, inlinedAt: !192)
!195 = !DILocation(line: 991, column: 20, scope: !100, inlinedAt: !193)
!196 = !DILocation(line: 992, column: 36, scope: !100, inlinedAt: !193)
!197 = !DILocation(line: 992, column: 17, scope: !100, inlinedAt: !193)
!198 = !DILocation(line: 992, column: 11, scope: !100, inlinedAt: !193)
!199 = !DILocation(line: 993, column: 43, scope: !100, inlinedAt: !193)
!200 = !DILocation(line: 993, column: 10, scope: !100, inlinedAt: !193)
!201 = !DILocation(line: 1020, column: 14, scope: !95, inlinedAt: !190)
!202 = !DILocation(line: 131, column: 40, scope: !40)
!203 = !DILocation(line: 1018, column: 9, scope: !95, inlinedAt: !204)
!204 = distinct !DILocation(line: 132, column: 42, scope: !40)
!205 = !DILocation(line: 171, column: 37, scope: !98, inlinedAt: !206)
!206 = distinct !DILocation(line: 990, column: 14, scope: !100, inlinedAt: !207)
!207 = distinct !DILocation(line: 1019, column: 11, scope: !95, inlinedAt: !204)
!208 = !DILocation(line: 171, column: 10, scope: !98, inlinedAt: !206)
!209 = !DILocation(line: 991, column: 20, scope: !100, inlinedAt: !207)
!210 = !DILocation(line: 992, column: 36, scope: !100, inlinedAt: !207)
!211 = !DILocation(line: 992, column: 17, scope: !100, inlinedAt: !207)
!212 = !DILocation(line: 992, column: 11, scope: !100, inlinedAt: !207)
!213 = !DILocation(line: 993, column: 43, scope: !100, inlinedAt: !207)
!214 = !DILocation(line: 993, column: 10, scope: !100, inlinedAt: !207)
!215 = !DILocation(line: 1020, column: 14, scope: !95, inlinedAt: !204)
!216 = !DILocation(line: 132, column: 40, scope: !40)
!217 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !218)
!218 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !219)
!219 = distinct !DILocation(line: 134, column: 7, scope: !40)
!220 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !218)
!221 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !218)
!222 = !DILocation(line: 137, column: 54, scope: !40)
!223 = !DILocation(line: 137, column: 40, scope: !40)
!224 = !DILocation(line: 144, column: 26, scope: !40)
!225 = !DILocation(line: 144, column: 159, scope: !40)
!226 = !DILocation(line: 142, column: 27, scope: !40)
!227 = !DILocation(line: 144, column: 42, scope: !40)
!228 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !229)
!229 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !230)
!230 = distinct !DILocation(line: 146, column: 7, scope: !40)
!231 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !229)
!232 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !229)
!233 = !DILocation(line: 149, column: 121, scope: !40)
!234 = !DILocation(line: 149, column: 65, scope: !40)
!235 = !DILocation(line: 149, column: 46, scope: !40)
!236 = !DILocation(line: 154, column: 46, scope: !40)
!237 = !DILocation(line: 133, column: 40, scope: !40)
!238 = !DILocation(line: 44, column: 40, scope: !40)
!239 = !DILocation(line: 0, scope: !40)
!240 = !DILocation(line: 45, column: 88, scope: !40)
!241 = !DILocation(line: 86, column: 23, scope: !40)
!242 = !DILocation(line: 89, column: 24, scope: !40)
!243 = !DILocation(line: 90, column: 24, scope: !40)
!244 = !DILocation(line: 91, column: 24, scope: !40)
!245 = !DILocation(line: 94, column: 40, scope: !40)
!246 = !DILocation(line: 164, column: 21, scope: !40)
!247 = !DILocation(line: 166, column: 22, scope: !40)
!248 = !DILocation(line: 167, column: 22, scope: !40)
!249 = !DILocation(line: 168, column: 22, scope: !40)
!250 = !DILocation(line: 169, column: 22, scope: !40)
!251 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !252)
!252 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !253)
!253 = distinct !DILocation(line: 172, column: 3, scope: !40)
!254 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !252)
!255 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !252)
!256 = !DILocation(line: 1007, column: 10, scope: !157, inlinedAt: !257)
!257 = distinct !DILocation(line: 1077, column: 18, scope: !160, inlinedAt: !258)
!258 = distinct !DILocation(line: 1295, column: 23, scope: !162, inlinedAt: !259)
!259 = distinct !DILocation(line: 177, column: 27, scope: !40)
!260 = !{!261, !263}
!261 = distinct !{!261, !262, !"_ZL17__floats2half2_rnff: %agg.result"}
!262 = distinct !{!262, !"_ZL17__floats2half2_rnff"}
!263 = distinct !{!263, !264, !"_ZL17__float22half2_rn6float2: %agg.result"}
!264 = distinct !{!264, !"_ZL17__float22half2_rn6float2"}
!265 = !DILocation(line: 1007, column: 10, scope: !157, inlinedAt: !266)
!266 = distinct !DILocation(line: 1077, column: 38, scope: !160, inlinedAt: !258)
!267 = !DILocation(line: 596, column: 67, scope: !268, inlinedAt: !269)
!268 = distinct !DISubprogram(name: "__half2", scope: !158, file: !158, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!269 = distinct !DILocation(line: 1077, column: 10, scope: !160, inlinedAt: !258)
!270 = !DILocation(line: 596, column: 73, scope: !268, inlinedAt: !269)
!271 = !DILocation(line: 1007, column: 10, scope: !157, inlinedAt: !272)
!272 = distinct !DILocation(line: 1077, column: 18, scope: !160, inlinedAt: !273)
!273 = distinct !DILocation(line: 1295, column: 23, scope: !162, inlinedAt: !274)
!274 = distinct !DILocation(line: 178, column: 27, scope: !40)
!275 = !{!276, !278}
!276 = distinct !{!276, !277, !"_ZL17__floats2half2_rnff: %agg.result"}
!277 = distinct !{!277, !"_ZL17__floats2half2_rnff"}
!278 = distinct !{!278, !279, !"_ZL17__float22half2_rn6float2: %agg.result"}
!279 = distinct !{!279, !"_ZL17__float22half2_rn6float2"}
!280 = !DILocation(line: 1007, column: 10, scope: !157, inlinedAt: !281)
!281 = distinct !DILocation(line: 1077, column: 38, scope: !160, inlinedAt: !273)
!282 = !DILocation(line: 596, column: 67, scope: !268, inlinedAt: !283)
!283 = distinct !DILocation(line: 1077, column: 10, scope: !160, inlinedAt: !273)
!284 = !DILocation(line: 596, column: 73, scope: !268, inlinedAt: !283)
!285 = !DILocation(line: 179, column: 38, scope: !40)
!286 = !DILocation(line: 180, column: 184, scope: !40)
!287 = !DILocation(line: 68, column: 3, scope: !52, inlinedAt: !288)
!288 = distinct !DILocation(line: 192, column: 3, scope: !55, inlinedAt: !289)
!289 = distinct !DILocation(line: 182, column: 3, scope: !40)
!290 = !DILocation(line: 69, column: 3, scope: !52, inlinedAt: !288)
!291 = !DILocation(line: 70, column: 3, scope: !52, inlinedAt: !288)
!292 = !DILocation(line: 185, column: 22, scope: !40)
!293 = !DILocation(line: 185, column: 134, scope: !40)
!294 = !{i32 2, i32 -1, i32 -1, i32 -1}
!295 = !DILocation(line: 187, column: 1, scope: !40)
