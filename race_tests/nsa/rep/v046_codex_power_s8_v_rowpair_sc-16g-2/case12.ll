; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v046_codex_power_s8_v_rowpair_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v046_codex_power_s8_v_rowpair_sc-16g-2/codegen/case12.device.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "mxc-metax-macahca"

%struct.mcDevMallocInfo.0 = type { i32, i32, ptr }
%struct.__half = type { i16 }

@buf_dyn_shmem = external protected local_unnamed_addr addrspace(3) global [0 x i8], align 1024
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
define protected metaxgpu_kernel void @native_sparse_attention_kernel(ptr addrspace(1) noalias nocapture noundef readonly %BlockIndices.coerce, ptr addrspace(4) noalias noundef readonly %K.coerce, ptr addrspace(1) noalias nocapture noundef writeonly %Output.coerce, ptr addrspace(4) noalias nocapture noundef readonly %Q.coerce, ptr addrspace(4) noalias noundef readonly %V.coerce) local_unnamed_addr #3 !dbg !40 {
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
  %add21943 = and i32 %mul11, 32
  %shr18944 = add nuw nsw i32 %add21943, %2
  %mul23 = and i32 %shr18944, 32
  %add31945 = and i32 %mul11, 16
  %and26946 = add nuw nsw i32 %add31945, %2
  %mul33 = and i32 %and26946, 16
  %and36948 = mul nuw nsw i32 %2, 9
  %mul42 = and i32 %and36948, 8
  %3 = zext nneg i32 %add9 to i64, !dbg !43
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %3, !dbg !44
  %4 = or disjoint i32 %mul15, %mul23, !dbg !45
  %5 = or disjoint i32 %4, %mul33, !dbg !46
  %6 = or disjoint i32 %5, %mul42, !dbg !47
  %add.ptr45 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %6, !dbg !48
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr45, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr, i64 16, i1 false), !dbg !49, !tbaa.struct !50, !call_argsrelate !51
  %7 = add nuw nsw i64 %3, 512, !dbg !52
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !44
  %narrow = add nuw nsw i32 %mul15, 512, !dbg !53
  %8 = or disjoint i32 %narrow, %mul23, !dbg !45
  %9 = or disjoint i32 %8, %mul33, !dbg !46
  %10 = or disjoint i32 %9, %mul42, !dbg !47
  %add.ptr45.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %10, !dbg !48
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr45.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr.1, i64 16, i1 false), !dbg !49, !tbaa.struct !50, !call_argsrelate !51
  fence syncscope("warp") release, !dbg !54
  tail call void @llvm.mxc.barrier.warp(), !dbg !60
  fence syncscope("warp") acquire, !dbg !61
  %and52 = shl nuw nsw i32 %2, 6
  %mul53 = and i32 %and52, 960
  %and55 = lshr i32 %2, 2
  %and63 = lshr i32 %2, 1
  %shr71 = lshr i32 %2, 5
  %add74 = add nuw nsw i32 %shr71, %2
  %and75 = shl nuw nsw i32 %add74, 3
  %mul76 = and i32 %and75, 8
  %mul81 = and i32 %and55, 4
  %11 = or disjoint i32 %mul53, %mul76
  %add69 = or disjoint i32 %11, %mul81
  %and59 = shl nuw nsw i32 %and55, 5, !dbg !62
  %mul60 = and i32 %and59, 32, !dbg !62
  %and67 = shl nuw nsw i32 %and63, 4, !dbg !63
  %mul68 = and i32 %and67, 16, !dbg !63
  %add77 = or disjoint i32 %add69, %mul68, !dbg !64
  %add82 = or disjoint i32 %add77, %mul60, !dbg !65
  %add.ptr84 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add82, !dbg !66
  %12 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !67
  %add66.1 = shl nuw nsw i32 %and63, 4, !dbg !63
  %13 = and i32 %add66.1, 16, !dbg !63
  %14 = or disjoint i32 %13, %add69, !dbg !64
  %15 = or disjoint i32 %14, %mul60, !dbg !65
  %add82.1 = xor i32 %15, 16, !dbg !65
  %add.ptr84.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add82.1, !dbg !66
  %16 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !67
  %add58.2 = shl nuw nsw i32 %and55, 5, !dbg !62
  %17 = and i32 %add58.2, 32, !dbg !62
  %mul60.2 = xor i32 %17, 32, !dbg !62
  %add66.2 = shl nuw nsw i32 %and63, 4, !dbg !63
  %mul68.2 = and i32 %add66.2, 16, !dbg !63
  %add77.2 = or disjoint i32 %add69, %mul68.2, !dbg !64
  %add82.2 = or disjoint i32 %add77.2, %mul60.2, !dbg !65
  %add.ptr84.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add82.2, !dbg !66
  %18 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !67
  %add66.3 = shl nuw nsw i32 %and63, 4, !dbg !63
  %19 = and i32 %add66.3, 16, !dbg !63
  %20 = or disjoint i32 %19, %add69, !dbg !64
  %21 = or disjoint i32 %20, %mul60.2, !dbg !65
  %add82.3 = xor i32 %21, 16, !dbg !65
  %add.ptr84.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add82.3, !dbg !66
  %22 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !67
  %mul125 = shl nsw i32 %0, 13
  %mul127 = shl nsw i32 %1, 3
  %add128 = add nuw nsw i32 %mul125, %mul127
  %shr140 = lshr i32 %2, 3
  %conv = zext nneg i32 %0 to i64
  %mul147 = shl nuw nsw i64 %conv, 16
  %mul156 = zext nneg i32 %mul11 to i64
  %invariant.gep1091 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul156, !dbg !68
  %mul281 = and i32 %and55, 252
  %shr324 = lshr i32 %2, 4
  %23 = zext nneg i32 %add128 to i64, !dbg !68
  %arrayidx130 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %23, !dbg !69
  %24 = load i32, ptr addrspace(1) %arrayidx130, align 4, !dbg !69, !tbaa !30
  %mul131 = shl nsw i32 %24, 4, !dbg !70
  %cmp132 = icmp slt i32 %24, 0, !dbg !71
  %cmp134.not = icmp sgt i32 %mul131, %1
  %or.cond = select i1 %cmp132, i1 true, i1 %cmp134.not, !dbg !72
  br i1 %or.cond, label %if.end415, label %if.then, !dbg !72

if.then:                                          ; preds = %entry
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add141 = add nuw nsw i32 %mul131, %shr140
  %conv151 = zext nneg i32 %mul131 to i64
  %.idx = shl nuw nsw i64 %conv151, 7
  %gep = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1091, i64 %.idx, !dbg !78
  %cmp144 = icmp ult i32 %add141, 1024, !dbg !79
  br i1 %cmp144, label %if.then145, label %if.end, !dbg !80

if.then145:                                       ; preds = %if.then
  %gep1084 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1084, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1084, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1084, i64 4
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep1084, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx, align 4, !dbg !81, !tbaa !30
  br label %if.end, !dbg !82

if.end:                                           ; preds = %if.then, %if.then145
  %condval.sroa.0.0 = phi i32 [ %condval.sroa.0.0.copyload, %if.then145 ], [ 0, %if.then ], !dbg !83
  %condval.sroa.5.0 = phi i32 [ %condval.sroa.5.0.copyload, %if.then145 ], [ 0, %if.then ], !dbg !83
  %condval.sroa.6.0 = phi i32 [ %condval.sroa.6.0.copyload, %if.then145 ], [ 0, %if.then ], !dbg !83
  %condval.sroa.7.0 = phi i32 [ %condval.sroa.7.0.copyload, %if.then145 ], [ 0, %if.then ], !dbg !83
  store i32 %condval.sroa.0.0, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx, align 4, !dbg !84, !tbaa !30
  %cmp144.1 = icmp ult i32 %add141, 1016, !dbg !79
  br i1 %cmp144.1, label %if.then145.1, label %if.end.1, !dbg !80

if.then145.1:                                     ; preds = %if.end
  %add150.1 = or disjoint i64 %mul147, 512
  %gep1084.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %add150.1
  %condval.sroa.7.0.add.ptr158.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1, i64 4
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep1084.1, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1, align 4, !dbg !81, !tbaa !30
  br label %if.end.1, !dbg !82

if.end.1:                                         ; preds = %if.then145.1, %if.end
  %condval.sroa.0.0.1 = phi i32 [ %condval.sroa.0.0.copyload.1, %if.then145.1 ], [ 0, %if.end ], !dbg !83
  %condval.sroa.5.0.1 = phi i32 [ %condval.sroa.5.0.copyload.1, %if.then145.1 ], [ 0, %if.end ], !dbg !83
  %condval.sroa.6.0.1 = phi i32 [ %condval.sroa.6.0.copyload.1, %if.then145.1 ], [ 0, %if.end ], !dbg !83
  %condval.sroa.7.0.1 = phi i32 [ %condval.sroa.7.0.copyload.1, %if.then145.1 ], [ 0, %if.end ], !dbg !83
  store i32 %condval.sroa.0.0.1, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %25 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %26 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %16, <4 x float> %25), !dbg !91
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %27 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %18, <4 x float> %26), !dbg !91
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %28 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %22, <4 x float> %27), !dbg !91
  %add282 = add nuw nsw i32 %mul131, %mul281
  %cmp285.not = icmp sgt i32 %add282, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2393 = extractelement <4 x float> %28, i64 0
  %spec.select = select i1 %cmp285.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2393, !dbg !93
  %cmp285.not.1.not = icmp slt i32 %add282, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2498 = extractelement <4 x float> %28, i64 1, !dbg !93
  %condval_1.0.1 = select i1 %cmp285.not.1.not, float %scores.sroa.0.4.vec.extract2498, float 0xFFF0000000000000, !dbg !93
  %add283.2 = or disjoint i32 %add282, 2, !dbg !94
  %cmp285.not.2 = icmp sgt i32 %add283.2, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2575 = extractelement <4 x float> %28, i64 2, !dbg !93
  %condval_1.0.2 = select i1 %cmp285.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2575, !dbg !93
  %add283.3 = or disjoint i32 %add282, 3, !dbg !94
  %cmp285.not.3 = icmp sgt i32 %add283.3, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2652 = extractelement <4 x float> %28, i64 3, !dbg !93
  %condval_1.0.3 = select i1 %cmp285.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2652, !dbg !93
  %29 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !95
  %30 = tail call contract noundef float @llvm.maxnum.f32(float %29, float %condval_1.0.1), !dbg !95
  %31 = tail call contract noundef float @llvm.maxnum.f32(float %30, float %condval_1.0.2), !dbg !95
  %32 = tail call contract noundef float @llvm.maxnum.f32(float %31, float %condval_1.0.3), !dbg !95
  %33 = bitcast float %32 to i32, !dbg !99
  %34 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !102
  %35 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %34) #11, !dbg !107
  %xor.i.i = xor i32 %35, 32, !dbg !108
  %36 = and i32 %35, -64, !dbg !109
  %and.i.i = add nsw i32 %36, 64, !dbg !109
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !110
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %35, !dbg !111
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !112
  %37 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %33), !dbg !113
  %38 = bitcast i32 %37 to float, !dbg !114
  %39 = tail call contract noundef float @llvm.maxnum.f32(float %32, float %38), !dbg !115
  %40 = bitcast float %39 to i32, !dbg !117
  %41 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !119
  %42 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %41) #11, !dbg !122
  %xor.i.i989 = xor i32 %42, 16, !dbg !123
  %43 = and i32 %42, -64, !dbg !124
  %and.i.i990 = add nsw i32 %43, 64, !dbg !124
  %cmp.not.i.i991 = icmp slt i32 %xor.i.i989, %and.i.i990, !dbg !125
  %cond.i.i992 = select i1 %cmp.not.i.i991, i32 %xor.i.i989, i32 %42, !dbg !126
  %shl.i.i993 = shl i32 %cond.i.i992, 2, !dbg !127
  %44 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i993, i32 %40), !dbg !128
  %45 = bitcast i32 %44 to float, !dbg !129
  %46 = tail call contract noundef float @llvm.maxnum.f32(float %39, float %45), !dbg !130
  %cmp326 = icmp ult i32 %2, 16, !dbg !132
  %max_cache.sroa.0.0 = select i1 %cmp326, float %46, float 0xFFF0000000000000, !dbg !133
  %47 = tail call contract noundef float @llvm.maxnum.f32(float %46, float 0xFFF0000000000000), !dbg !134
  %sub = fsub contract float %spec.select, %46, !dbg !136
  %sub347 = fsub contract float %condval_1.0.1, %46, !dbg !137
  %sub350 = fsub contract float %condval_1.0.2, %46, !dbg !138
  %sub353 = fsub contract float %condval_1.0.3, %46, !dbg !139
  %mul358 = fmul contract float %sub, 0x3FC7154760000000, !dbg !140
  %mul362 = fmul contract float %sub347, 0x3FC7154760000000, !dbg !141
  %mul366 = fmul contract float %sub350, 0x3FC7154760000000, !dbg !142
  %mul370 = fmul contract float %sub353, 0x3FC7154760000000, !dbg !143
  %add375 = fadd contract float %mul358, 8.000000e+00, !dbg !144
  %add379 = fadd contract float %mul362, 8.000000e+00, !dbg !145
  %add383 = fadd contract float %mul366, 8.000000e+00, !dbg !146
  %add387 = fadd contract float %mul370, 8.000000e+00, !dbg !147
  %cmp.i.i = fcmp contract olt float %add375, -1.260000e+02, !dbg !148
  %cond.i.i998 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i = fadd contract float %add375, %cond.i.i998, !dbg !148
  %48 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !148
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i = fmul contract float %cond2.i.i, %48, !dbg !148
  %cmp.i.i999 = fcmp contract olt float %add379, -1.260000e+02, !dbg !151
  %cond.i.i1000 = select contract i1 %cmp.i.i999, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i1001 = fadd contract float %add379, %cond.i.i1000, !dbg !151
  %49 = tail call contract float @llvm.exp2.f32(float %add.i.i1001), !dbg !151
  %cond2.i.i1002 = select contract i1 %cmp.i.i999, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i1003 = fmul contract float %cond2.i.i1002, %49, !dbg !151
  %cmp.i.i1004 = fcmp contract olt float %add383, -1.260000e+02, !dbg !153
  %cond.i.i1005 = select contract i1 %cmp.i.i1004, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i1006 = fadd contract float %add383, %cond.i.i1005, !dbg !153
  %50 = tail call contract float @llvm.exp2.f32(float %add.i.i1006), !dbg !153
  %cond2.i.i1007 = select contract i1 %cmp.i.i1004, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i1008 = fmul contract float %cond2.i.i1007, %50, !dbg !153
  %cmp.i.i1009 = fcmp contract olt float %add387, -1.260000e+02, !dbg !155
  %cond.i.i1010 = select contract i1 %cmp.i.i1009, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i1011 = fadd contract float %add387, %cond.i.i1010, !dbg !155
  %51 = tail call contract float @llvm.exp2.f32(float %add.i.i1011), !dbg !155
  %cond2.i.i1012 = select contract i1 %cmp.i.i1009, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i1013 = fmul contract float %cond2.i.i1012, %51, !dbg !155
  %52 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %53 = fptrunc float %mul.i.i to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %52), !dbg !157, !noalias !165
  %54 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %55 = fptrunc float %mul.i.i1003 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %54), !dbg !170, !noalias !165
  %56 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %57 = fptrunc float %mul.i.i1008 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %56), !dbg !172, !noalias !176
  %58 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %59 = fptrunc float %mul.i.i1013 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %58), !dbg !181, !noalias !176
  %60 = insertelement <4 x half> poison, half %53, i64 0, !dbg !183
  %61 = insertelement <4 x half> %60, half %55, i64 1, !dbg !183
  %62 = insertelement <4 x half> %61, half %57, i64 2, !dbg !183
  %63 = insertelement <4 x half> %62, half %59, i64 3, !dbg !183
  br label %if.end415, !dbg !184

if.end415:                                        ; preds = %if.end.1, %entry
  %64 = phi <4 x half> [ zeroinitializer, %entry ], [ %63, %if.end.1 ], !dbg !83
  %max_cache.sroa.0.1 = phi float [ 0xFFF0000000000000, %entry ], [ %max_cache.sroa.0.0, %if.end.1 ], !dbg !83
  %global_max.sroa.0.1 = phi float [ 0xFFF0000000000000, %entry ], [ %47, %if.end.1 ], !dbg !83
  %65 = or disjoint i64 %23, 1, !dbg !185
  %arrayidx130.1 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %65, !dbg !69
  %66 = load i32, ptr addrspace(1) %arrayidx130.1, align 4, !dbg !69, !tbaa !30
  %mul131.1 = shl nsw i32 %66, 4, !dbg !70
  %cmp132.1 = icmp slt i32 %66, 0, !dbg !71
  %cmp134.not.1 = icmp sgt i32 %mul131.1, %1
  %or.cond.1 = select i1 %cmp132.1, i1 true, i1 %cmp134.not.1, !dbg !72
  br i1 %or.cond.1, label %if.end415.1, label %if.then.1, !dbg !72

if.then.1:                                        ; preds = %if.end415
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add141.1 = add nuw nsw i32 %mul131.1, %shr140
  %conv151.1 = zext nneg i32 %mul131.1 to i64
  %.idx.1 = shl nuw nsw i64 %conv151.1, 7
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1091, i64 %.idx.1, !dbg !78
  %cmp144.11128 = icmp ult i32 %add141.1, 1024, !dbg !79
  br i1 %cmp144.11128, label %if.then145.11137, label %if.end.11146, !dbg !80

if.then145.11137:                                 ; preds = %if.then.1
  %gep1084.11129 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.1, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.11130 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.11129, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.11131 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.11129, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.11132 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.11129, i64 4
  %condval.sroa.0.0.copyload.11133 = load i32, ptr addrspace(4) %gep1084.11129, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.11134 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.11132, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.11135 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.11131, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.11136 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.11130, align 4, !dbg !81, !tbaa !30
  br label %if.end.11146, !dbg !82

if.end.11146:                                     ; preds = %if.then145.11137, %if.then.1
  %condval.sroa.0.0.11138 = phi i32 [ %condval.sroa.0.0.copyload.11133, %if.then145.11137 ], [ 0, %if.then.1 ], !dbg !83
  %condval.sroa.5.0.11139 = phi i32 [ %condval.sroa.5.0.copyload.11134, %if.then145.11137 ], [ 0, %if.then.1 ], !dbg !83
  %condval.sroa.6.0.11140 = phi i32 [ %condval.sroa.6.0.copyload.11135, %if.then145.11137 ], [ 0, %if.then.1 ], !dbg !83
  %condval.sroa.7.0.11141 = phi i32 [ %condval.sroa.7.0.copyload.11136, %if.then145.11137 ], [ 0, %if.then.1 ], !dbg !83
  store i32 %condval.sroa.0.0.11138, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.11143 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.11139, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.11143, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.11144 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.11140, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.11144, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.11145 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.11141, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.11145, align 4, !dbg !84, !tbaa !30
  %cmp144.1.1 = icmp ult i32 %add141.1, 1016, !dbg !79
  br i1 %cmp144.1.1, label %if.then145.1.1, label %if.end.1.1, !dbg !80

if.then145.1.1:                                   ; preds = %if.end.11146
  %add150.1.1 = or disjoint i64 %mul147, 512
  %gep1084.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.1, i64 %add150.1.1
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1.1, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1.1, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1.1, i64 4
  %condval.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %gep1084.1.1, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.1, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.1, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.1, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.1, !dbg !82

if.end.1.1:                                       ; preds = %if.then145.1.1, %if.end.11146
  %condval.sroa.0.0.1.1 = phi i32 [ %condval.sroa.0.0.copyload.1.1, %if.then145.1.1 ], [ 0, %if.end.11146 ], !dbg !83
  %condval.sroa.5.0.1.1 = phi i32 [ %condval.sroa.5.0.copyload.1.1, %if.then145.1.1 ], [ 0, %if.end.11146 ], !dbg !83
  %condval.sroa.6.0.1.1 = phi i32 [ %condval.sroa.6.0.copyload.1.1, %if.then145.1.1 ], [ 0, %if.end.11146 ], !dbg !83
  %condval.sroa.7.0.1.1 = phi i32 [ %condval.sroa.7.0.copyload.1.1, %if.then145.1.1 ], [ 0, %if.end.11146 ], !dbg !83
  store i32 %condval.sroa.0.0.1.1, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1.1, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1.1, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1.1, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.11154 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %67 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11154, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %68 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %16, <4 x float> %67), !dbg !91
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %69 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %18, <4 x float> %68), !dbg !91
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %70 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %22, <4 x float> %69), !dbg !91
  %add282.1 = add nuw nsw i32 %mul131.1, %mul281
  %cmp285.not.11155 = icmp sgt i32 %add282.1, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2401 = extractelement <4 x float> %70, i64 0
  %spec.select2856 = select i1 %cmp285.not.11155, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2401, !dbg !93
  %cmp285.not.1.1.not = icmp slt i32 %add282.1, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2504 = extractelement <4 x float> %70, i64 1, !dbg !93
  %condval_1.0.1.1 = select i1 %cmp285.not.1.1.not, float %scores.sroa.0.4.vec.extract2504, float 0xFFF0000000000000, !dbg !93
  %add283.2.1 = or disjoint i32 %add282.1, 2, !dbg !94
  %cmp285.not.2.1 = icmp sgt i32 %add283.2.1, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2581 = extractelement <4 x float> %70, i64 2, !dbg !93
  %condval_1.0.2.1 = select i1 %cmp285.not.2.1, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2581, !dbg !93
  %add283.3.1 = or disjoint i32 %add282.1, 3, !dbg !94
  %cmp285.not.3.1 = icmp sgt i32 %add283.3.1, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2658 = extractelement <4 x float> %70, i64 3, !dbg !93
  %condval_1.0.3.1 = select i1 %cmp285.not.3.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2658, !dbg !93
  %71 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2856, float 0xFFF0000000000000), !dbg !95
  %72 = tail call contract noundef float @llvm.maxnum.f32(float %71, float %condval_1.0.1.1), !dbg !95
  %73 = tail call contract noundef float @llvm.maxnum.f32(float %72, float %condval_1.0.2.1), !dbg !95
  %74 = tail call contract noundef float @llvm.maxnum.f32(float %73, float %condval_1.0.3.1), !dbg !95
  %75 = bitcast float %74 to i32, !dbg !99
  %76 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !102
  %77 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %76) #11, !dbg !107
  %xor.i.i.1 = xor i32 %77, 32, !dbg !108
  %78 = and i32 %77, -64, !dbg !109
  %and.i.i.1 = add nsw i32 %78, 64, !dbg !109
  %cmp.not.i.i.1 = icmp slt i32 %xor.i.i.1, %and.i.i.1, !dbg !110
  %cond.i.i.1 = select i1 %cmp.not.i.i.1, i32 %xor.i.i.1, i32 %77, !dbg !111
  %shl.i.i.1 = shl i32 %cond.i.i.1, 2, !dbg !112
  %79 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.1, i32 %75), !dbg !113
  %80 = bitcast i32 %79 to float, !dbg !114
  %81 = tail call contract noundef float @llvm.maxnum.f32(float %74, float %80), !dbg !115
  %82 = bitcast float %81 to i32, !dbg !117
  %83 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !119
  %84 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %83) #11, !dbg !122
  %xor.i.i989.1 = xor i32 %84, 16, !dbg !123
  %85 = and i32 %84, -64, !dbg !124
  %and.i.i990.1 = add nsw i32 %85, 64, !dbg !124
  %cmp.not.i.i991.1 = icmp slt i32 %xor.i.i989.1, %and.i.i990.1, !dbg !125
  %cond.i.i992.1 = select i1 %cmp.not.i.i991.1, i32 %xor.i.i989.1, i32 %84, !dbg !126
  %shl.i.i993.1 = shl i32 %cond.i.i992.1, 2, !dbg !127
  %86 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i993.1, i32 %82), !dbg !128
  %87 = bitcast i32 %86 to float, !dbg !129
  %88 = tail call contract noundef float @llvm.maxnum.f32(float %81, float %87), !dbg !130
  %cmp326.1 = icmp eq i32 %shr324, 1, !dbg !132
  %max_cache.sroa.0.2 = select i1 %cmp326.1, float %88, float %max_cache.sroa.0.1, !dbg !133
  %89 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1, float %88), !dbg !134
  %sub.1 = fsub contract float %spec.select2856, %88, !dbg !136
  %sub347.1 = fsub contract float %condval_1.0.1.1, %88, !dbg !137
  %sub350.1 = fsub contract float %condval_1.0.2.1, %88, !dbg !138
  %sub353.1 = fsub contract float %condval_1.0.3.1, %88, !dbg !139
  %mul358.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !140
  %mul362.1 = fmul contract float %sub347.1, 0x3FC7154760000000, !dbg !141
  %mul366.1 = fmul contract float %sub350.1, 0x3FC7154760000000, !dbg !142
  %mul370.1 = fmul contract float %sub353.1, 0x3FC7154760000000, !dbg !143
  %add375.1 = fadd contract float %mul358.1, 8.000000e+00, !dbg !144
  %add379.1 = fadd contract float %mul362.1, 8.000000e+00, !dbg !145
  %add383.1 = fadd contract float %mul366.1, 8.000000e+00, !dbg !146
  %add387.1 = fadd contract float %mul370.1, 8.000000e+00, !dbg !147
  %cmp.i.i.1 = fcmp contract olt float %add375.1, -1.260000e+02, !dbg !148
  %cond.i.i998.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i.1 = fadd contract float %add375.1, %cond.i.i998.1, !dbg !148
  %90 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !148
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %90, !dbg !148
  %cmp.i.i999.1 = fcmp contract olt float %add379.1, -1.260000e+02, !dbg !151
  %cond.i.i1000.1 = select contract i1 %cmp.i.i999.1, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i1001.1 = fadd contract float %add379.1, %cond.i.i1000.1, !dbg !151
  %91 = tail call contract float @llvm.exp2.f32(float %add.i.i1001.1), !dbg !151
  %cond2.i.i1002.1 = select contract i1 %cmp.i.i999.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i1003.1 = fmul contract float %cond2.i.i1002.1, %91, !dbg !151
  %cmp.i.i1004.1 = fcmp contract olt float %add383.1, -1.260000e+02, !dbg !153
  %cond.i.i1005.1 = select contract i1 %cmp.i.i1004.1, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i1006.1 = fadd contract float %add383.1, %cond.i.i1005.1, !dbg !153
  %92 = tail call contract float @llvm.exp2.f32(float %add.i.i1006.1), !dbg !153
  %cond2.i.i1007.1 = select contract i1 %cmp.i.i1004.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i1008.1 = fmul contract float %cond2.i.i1007.1, %92, !dbg !153
  %cmp.i.i1009.1 = fcmp contract olt float %add387.1, -1.260000e+02, !dbg !155
  %cond.i.i1010.1 = select contract i1 %cmp.i.i1009.1, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i1011.1 = fadd contract float %add387.1, %cond.i.i1010.1, !dbg !155
  %93 = tail call contract float @llvm.exp2.f32(float %add.i.i1011.1), !dbg !155
  %cond2.i.i1012.1 = select contract i1 %cmp.i.i1009.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i1013.1 = fmul contract float %cond2.i.i1012.1, %93, !dbg !155
  %94 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %95 = fptrunc float %mul.i.i.1 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %94), !dbg !157, !noalias !165
  %96 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %97 = fptrunc float %mul.i.i1003.1 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %96), !dbg !170, !noalias !165
  %98 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %99 = fptrunc float %mul.i.i1008.1 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %98), !dbg !172, !noalias !176
  %100 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %101 = fptrunc float %mul.i.i1013.1 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %100), !dbg !181, !noalias !176
  %102 = insertelement <4 x half> poison, half %95, i64 0, !dbg !183
  %103 = insertelement <4 x half> %102, half %97, i64 1, !dbg !183
  %104 = insertelement <4 x half> %103, half %99, i64 2, !dbg !183
  %105 = insertelement <4 x half> %104, half %101, i64 3, !dbg !183
  br label %if.end415.1, !dbg !184

if.end415.1:                                      ; preds = %if.end.1.1, %if.end415
  %106 = phi <4 x half> [ zeroinitializer, %if.end415 ], [ %105, %if.end.1.1 ], !dbg !83
  %max_cache.sroa.0.3 = phi float [ %max_cache.sroa.0.1, %if.end415 ], [ %max_cache.sroa.0.2, %if.end.1.1 ], !dbg !83
  %global_max.sroa.0.1.1 = phi float [ %global_max.sroa.0.1, %if.end415 ], [ %89, %if.end.1.1 ], !dbg !83
  %107 = or disjoint i64 %23, 2, !dbg !185
  %arrayidx130.2 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %107, !dbg !69
  %108 = load i32, ptr addrspace(1) %arrayidx130.2, align 4, !dbg !69, !tbaa !30
  %mul131.2 = shl nsw i32 %108, 4, !dbg !70
  %cmp132.2 = icmp slt i32 %108, 0, !dbg !71
  %cmp134.not.2 = icmp sgt i32 %mul131.2, %1
  %or.cond.2 = select i1 %cmp132.2, i1 true, i1 %cmp134.not.2, !dbg !72
  br i1 %or.cond.2, label %if.end415.2, label %if.then.2, !dbg !72

if.then.2:                                        ; preds = %if.end415.1
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add141.2 = add nuw nsw i32 %mul131.2, %shr140
  %conv151.2 = zext nneg i32 %mul131.2 to i64
  %.idx.2 = shl nuw nsw i64 %conv151.2, 7
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1091, i64 %.idx.2, !dbg !78
  %cmp144.2 = icmp ult i32 %add141.2, 1024, !dbg !79
  br i1 %cmp144.2, label %if.then145.2, label %if.end.2, !dbg !80

if.then145.2:                                     ; preds = %if.then.2
  %gep1084.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.2, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.2, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.2, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.2, i64 4
  %condval.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %gep1084.2, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.2, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.2, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.2, align 4, !dbg !81, !tbaa !30
  br label %if.end.2, !dbg !82

if.end.2:                                         ; preds = %if.then145.2, %if.then.2
  %condval.sroa.0.0.2 = phi i32 [ %condval.sroa.0.0.copyload.2, %if.then145.2 ], [ 0, %if.then.2 ], !dbg !83
  %condval.sroa.5.0.2 = phi i32 [ %condval.sroa.5.0.copyload.2, %if.then145.2 ], [ 0, %if.then.2 ], !dbg !83
  %condval.sroa.6.0.2 = phi i32 [ %condval.sroa.6.0.copyload.2, %if.then145.2 ], [ 0, %if.then.2 ], !dbg !83
  %condval.sroa.7.0.2 = phi i32 [ %condval.sroa.7.0.copyload.2, %if.then145.2 ], [ 0, %if.then.2 ], !dbg !83
  store i32 %condval.sroa.0.0.2, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.2, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.2, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.2, align 4, !dbg !84, !tbaa !30
  %cmp144.1.2 = icmp ult i32 %add141.2, 1016, !dbg !79
  br i1 %cmp144.1.2, label %if.then145.1.2, label %if.end.1.2, !dbg !80

if.then145.1.2:                                   ; preds = %if.end.2
  %add150.1.2 = or disjoint i64 %mul147, 512
  %gep1084.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.2, i64 %add150.1.2
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1.2, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1.2, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1.2, i64 4
  %condval.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %gep1084.1.2, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.2, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.2, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.2, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.2, !dbg !82

if.end.1.2:                                       ; preds = %if.then145.1.2, %if.end.2
  %condval.sroa.0.0.1.2 = phi i32 [ %condval.sroa.0.0.copyload.1.2, %if.then145.1.2 ], [ 0, %if.end.2 ], !dbg !83
  %condval.sroa.5.0.1.2 = phi i32 [ %condval.sroa.5.0.copyload.1.2, %if.then145.1.2 ], [ 0, %if.end.2 ], !dbg !83
  %condval.sroa.6.0.1.2 = phi i32 [ %condval.sroa.6.0.copyload.1.2, %if.then145.1.2 ], [ 0, %if.end.2 ], !dbg !83
  %condval.sroa.7.0.1.2 = phi i32 [ %condval.sroa.7.0.copyload.1.2, %if.then145.1.2 ], [ 0, %if.end.2 ], !dbg !83
  store i32 %condval.sroa.0.0.1.2, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1.2, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1.2, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1.2, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.21166 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %109 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.21166, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %110 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %16, <4 x float> %109), !dbg !91
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %111 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %18, <4 x float> %110), !dbg !91
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %112 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %22, <4 x float> %111), !dbg !91
  %add282.2 = add nuw nsw i32 %mul131.2, %mul281
  %cmp285.not.21167 = icmp sgt i32 %add282.2, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2411 = extractelement <4 x float> %112, i64 0
  %spec.select2857 = select i1 %cmp285.not.21167, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2411, !dbg !93
  %cmp285.not.1.2.not = icmp slt i32 %add282.2, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2510 = extractelement <4 x float> %112, i64 1, !dbg !93
  %condval_1.0.1.2 = select i1 %cmp285.not.1.2.not, float %scores.sroa.0.4.vec.extract2510, float 0xFFF0000000000000, !dbg !93
  %add283.2.2 = or disjoint i32 %add282.2, 2, !dbg !94
  %cmp285.not.2.2 = icmp sgt i32 %add283.2.2, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2587 = extractelement <4 x float> %112, i64 2, !dbg !93
  %condval_1.0.2.2 = select i1 %cmp285.not.2.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2587, !dbg !93
  %add283.3.2 = or disjoint i32 %add282.2, 3, !dbg !94
  %cmp285.not.3.2 = icmp sgt i32 %add283.3.2, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2664 = extractelement <4 x float> %112, i64 3, !dbg !93
  %condval_1.0.3.2 = select i1 %cmp285.not.3.2, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2664, !dbg !93
  %113 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2857, float 0xFFF0000000000000), !dbg !95
  %114 = tail call contract noundef float @llvm.maxnum.f32(float %113, float %condval_1.0.1.2), !dbg !95
  %115 = tail call contract noundef float @llvm.maxnum.f32(float %114, float %condval_1.0.2.2), !dbg !95
  %116 = tail call contract noundef float @llvm.maxnum.f32(float %115, float %condval_1.0.3.2), !dbg !95
  %117 = bitcast float %116 to i32, !dbg !99
  %118 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !102
  %119 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %118) #11, !dbg !107
  %xor.i.i.2 = xor i32 %119, 32, !dbg !108
  %120 = and i32 %119, -64, !dbg !109
  %and.i.i.2 = add nsw i32 %120, 64, !dbg !109
  %cmp.not.i.i.2 = icmp slt i32 %xor.i.i.2, %and.i.i.2, !dbg !110
  %cond.i.i.2 = select i1 %cmp.not.i.i.2, i32 %xor.i.i.2, i32 %119, !dbg !111
  %shl.i.i.2 = shl i32 %cond.i.i.2, 2, !dbg !112
  %121 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.2, i32 %117), !dbg !113
  %122 = bitcast i32 %121 to float, !dbg !114
  %123 = tail call contract noundef float @llvm.maxnum.f32(float %116, float %122), !dbg !115
  %124 = bitcast float %123 to i32, !dbg !117
  %125 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !119
  %126 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %125) #11, !dbg !122
  %xor.i.i989.2 = xor i32 %126, 16, !dbg !123
  %127 = and i32 %126, -64, !dbg !124
  %and.i.i990.2 = add nsw i32 %127, 64, !dbg !124
  %cmp.not.i.i991.2 = icmp slt i32 %xor.i.i989.2, %and.i.i990.2, !dbg !125
  %cond.i.i992.2 = select i1 %cmp.not.i.i991.2, i32 %xor.i.i989.2, i32 %126, !dbg !126
  %shl.i.i993.2 = shl i32 %cond.i.i992.2, 2, !dbg !127
  %128 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i993.2, i32 %124), !dbg !128
  %129 = bitcast i32 %128 to float, !dbg !129
  %130 = tail call contract noundef float @llvm.maxnum.f32(float %123, float %129), !dbg !130
  %cmp326.2 = icmp eq i32 %shr324, 2, !dbg !132
  %max_cache.sroa.0.4 = select i1 %cmp326.2, float %130, float %max_cache.sroa.0.3, !dbg !133
  %131 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.1, float %130), !dbg !134
  %sub.2 = fsub contract float %spec.select2857, %130, !dbg !136
  %sub347.2 = fsub contract float %condval_1.0.1.2, %130, !dbg !137
  %sub350.2 = fsub contract float %condval_1.0.2.2, %130, !dbg !138
  %sub353.2 = fsub contract float %condval_1.0.3.2, %130, !dbg !139
  %mul358.2 = fmul contract float %sub.2, 0x3FC7154760000000, !dbg !140
  %mul362.2 = fmul contract float %sub347.2, 0x3FC7154760000000, !dbg !141
  %mul366.2 = fmul contract float %sub350.2, 0x3FC7154760000000, !dbg !142
  %mul370.2 = fmul contract float %sub353.2, 0x3FC7154760000000, !dbg !143
  %add375.2 = fadd contract float %mul358.2, 8.000000e+00, !dbg !144
  %add379.2 = fadd contract float %mul362.2, 8.000000e+00, !dbg !145
  %add383.2 = fadd contract float %mul366.2, 8.000000e+00, !dbg !146
  %add387.2 = fadd contract float %mul370.2, 8.000000e+00, !dbg !147
  %cmp.i.i.2 = fcmp contract olt float %add375.2, -1.260000e+02, !dbg !148
  %cond.i.i998.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i.2 = fadd contract float %add375.2, %cond.i.i998.2, !dbg !148
  %132 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !148
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %132, !dbg !148
  %cmp.i.i999.2 = fcmp contract olt float %add379.2, -1.260000e+02, !dbg !151
  %cond.i.i1000.2 = select contract i1 %cmp.i.i999.2, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i1001.2 = fadd contract float %add379.2, %cond.i.i1000.2, !dbg !151
  %133 = tail call contract float @llvm.exp2.f32(float %add.i.i1001.2), !dbg !151
  %cond2.i.i1002.2 = select contract i1 %cmp.i.i999.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i1003.2 = fmul contract float %cond2.i.i1002.2, %133, !dbg !151
  %cmp.i.i1004.2 = fcmp contract olt float %add383.2, -1.260000e+02, !dbg !153
  %cond.i.i1005.2 = select contract i1 %cmp.i.i1004.2, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i1006.2 = fadd contract float %add383.2, %cond.i.i1005.2, !dbg !153
  %134 = tail call contract float @llvm.exp2.f32(float %add.i.i1006.2), !dbg !153
  %cond2.i.i1007.2 = select contract i1 %cmp.i.i1004.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i1008.2 = fmul contract float %cond2.i.i1007.2, %134, !dbg !153
  %cmp.i.i1009.2 = fcmp contract olt float %add387.2, -1.260000e+02, !dbg !155
  %cond.i.i1010.2 = select contract i1 %cmp.i.i1009.2, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i1011.2 = fadd contract float %add387.2, %cond.i.i1010.2, !dbg !155
  %135 = tail call contract float @llvm.exp2.f32(float %add.i.i1011.2), !dbg !155
  %cond2.i.i1012.2 = select contract i1 %cmp.i.i1009.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i1013.2 = fmul contract float %cond2.i.i1012.2, %135, !dbg !155
  %136 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %137 = fptrunc float %mul.i.i.2 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %136), !dbg !157, !noalias !165
  %138 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %139 = fptrunc float %mul.i.i1003.2 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %138), !dbg !170, !noalias !165
  %140 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %141 = fptrunc float %mul.i.i1008.2 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %140), !dbg !172, !noalias !176
  %142 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %143 = fptrunc float %mul.i.i1013.2 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %142), !dbg !181, !noalias !176
  %144 = insertelement <4 x half> poison, half %137, i64 0, !dbg !183
  %145 = insertelement <4 x half> %144, half %139, i64 1, !dbg !183
  %146 = insertelement <4 x half> %145, half %141, i64 2, !dbg !183
  %147 = insertelement <4 x half> %146, half %143, i64 3, !dbg !183
  br label %if.end415.2, !dbg !184

if.end415.2:                                      ; preds = %if.end.1.2, %if.end415.1
  %148 = phi <4 x half> [ zeroinitializer, %if.end415.1 ], [ %147, %if.end.1.2 ], !dbg !83
  %max_cache.sroa.0.5 = phi float [ %max_cache.sroa.0.3, %if.end415.1 ], [ %max_cache.sroa.0.4, %if.end.1.2 ], !dbg !83
  %global_max.sroa.0.1.2 = phi float [ %global_max.sroa.0.1.1, %if.end415.1 ], [ %131, %if.end.1.2 ], !dbg !83
  %149 = or disjoint i64 %23, 3, !dbg !185
  %arrayidx130.3 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %149, !dbg !69
  %150 = load i32, ptr addrspace(1) %arrayidx130.3, align 4, !dbg !69, !tbaa !30
  %mul131.3 = shl nsw i32 %150, 4, !dbg !70
  %cmp132.3 = icmp slt i32 %150, 0, !dbg !71
  %cmp134.not.3 = icmp sgt i32 %mul131.3, %1
  %or.cond.3 = select i1 %cmp132.3, i1 true, i1 %cmp134.not.3, !dbg !72
  br i1 %or.cond.3, label %if.end415.3, label %if.then.3, !dbg !72

if.then.3:                                        ; preds = %if.end415.2
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add141.3 = add nuw nsw i32 %mul131.3, %shr140
  %conv151.3 = zext nneg i32 %mul131.3 to i64
  %.idx.3 = shl nuw nsw i64 %conv151.3, 7
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1091, i64 %.idx.3, !dbg !78
  %cmp144.3 = icmp ult i32 %add141.3, 1024, !dbg !79
  br i1 %cmp144.3, label %if.then145.3, label %if.end.3, !dbg !80

if.then145.3:                                     ; preds = %if.then.3
  %gep1084.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.3, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.3, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.3, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.3, i64 4
  %condval.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %gep1084.3, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.3, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.3, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.3, align 4, !dbg !81, !tbaa !30
  br label %if.end.3, !dbg !82

if.end.3:                                         ; preds = %if.then145.3, %if.then.3
  %condval.sroa.0.0.3 = phi i32 [ %condval.sroa.0.0.copyload.3, %if.then145.3 ], [ 0, %if.then.3 ], !dbg !83
  %condval.sroa.5.0.3 = phi i32 [ %condval.sroa.5.0.copyload.3, %if.then145.3 ], [ 0, %if.then.3 ], !dbg !83
  %condval.sroa.6.0.3 = phi i32 [ %condval.sroa.6.0.copyload.3, %if.then145.3 ], [ 0, %if.then.3 ], !dbg !83
  %condval.sroa.7.0.3 = phi i32 [ %condval.sroa.7.0.copyload.3, %if.then145.3 ], [ 0, %if.then.3 ], !dbg !83
  store i32 %condval.sroa.0.0.3, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.3, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.3, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.3, align 4, !dbg !84, !tbaa !30
  %cmp144.1.3 = icmp ult i32 %add141.3, 1016, !dbg !79
  br i1 %cmp144.1.3, label %if.then145.1.3, label %if.end.1.3, !dbg !80

if.then145.1.3:                                   ; preds = %if.end.3
  %add150.1.3 = or disjoint i64 %mul147, 512
  %gep1084.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.3, i64 %add150.1.3
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1.3, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1.3, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1.3, i64 4
  %condval.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %gep1084.1.3, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.3, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.3, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.3, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.3, !dbg !82

if.end.1.3:                                       ; preds = %if.then145.1.3, %if.end.3
  %condval.sroa.0.0.1.3 = phi i32 [ %condval.sroa.0.0.copyload.1.3, %if.then145.1.3 ], [ 0, %if.end.3 ], !dbg !83
  %condval.sroa.5.0.1.3 = phi i32 [ %condval.sroa.5.0.copyload.1.3, %if.then145.1.3 ], [ 0, %if.end.3 ], !dbg !83
  %condval.sroa.6.0.1.3 = phi i32 [ %condval.sroa.6.0.copyload.1.3, %if.then145.1.3 ], [ 0, %if.end.3 ], !dbg !83
  %condval.sroa.7.0.1.3 = phi i32 [ %condval.sroa.7.0.copyload.1.3, %if.then145.1.3 ], [ 0, %if.end.3 ], !dbg !83
  store i32 %condval.sroa.0.0.1.3, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1.3, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1.3, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1.3, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.31178 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %151 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.31178, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %152 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %16, <4 x float> %151), !dbg !91
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %153 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %18, <4 x float> %152), !dbg !91
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %154 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %22, <4 x float> %153), !dbg !91
  %add282.3 = add nuw nsw i32 %mul131.3, %mul281
  %cmp285.not.31179 = icmp sgt i32 %add282.3, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2421 = extractelement <4 x float> %154, i64 0
  %spec.select2858 = select i1 %cmp285.not.31179, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2421, !dbg !93
  %cmp285.not.1.3.not = icmp slt i32 %add282.3, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2516 = extractelement <4 x float> %154, i64 1, !dbg !93
  %condval_1.0.1.3 = select i1 %cmp285.not.1.3.not, float %scores.sroa.0.4.vec.extract2516, float 0xFFF0000000000000, !dbg !93
  %add283.2.3 = or disjoint i32 %add282.3, 2, !dbg !94
  %cmp285.not.2.3 = icmp sgt i32 %add283.2.3, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2593 = extractelement <4 x float> %154, i64 2, !dbg !93
  %condval_1.0.2.3 = select i1 %cmp285.not.2.3, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2593, !dbg !93
  %add283.3.3 = or disjoint i32 %add282.3, 3, !dbg !94
  %cmp285.not.3.3 = icmp sgt i32 %add283.3.3, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2670 = extractelement <4 x float> %154, i64 3, !dbg !93
  %condval_1.0.3.3 = select i1 %cmp285.not.3.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2670, !dbg !93
  %155 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2858, float 0xFFF0000000000000), !dbg !95
  %156 = tail call contract noundef float @llvm.maxnum.f32(float %155, float %condval_1.0.1.3), !dbg !95
  %157 = tail call contract noundef float @llvm.maxnum.f32(float %156, float %condval_1.0.2.3), !dbg !95
  %158 = tail call contract noundef float @llvm.maxnum.f32(float %157, float %condval_1.0.3.3), !dbg !95
  %159 = bitcast float %158 to i32, !dbg !99
  %160 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !102
  %161 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %160) #11, !dbg !107
  %xor.i.i.3 = xor i32 %161, 32, !dbg !108
  %162 = and i32 %161, -64, !dbg !109
  %and.i.i.3 = add nsw i32 %162, 64, !dbg !109
  %cmp.not.i.i.3 = icmp slt i32 %xor.i.i.3, %and.i.i.3, !dbg !110
  %cond.i.i.3 = select i1 %cmp.not.i.i.3, i32 %xor.i.i.3, i32 %161, !dbg !111
  %shl.i.i.3 = shl i32 %cond.i.i.3, 2, !dbg !112
  %163 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.3, i32 %159), !dbg !113
  %164 = bitcast i32 %163 to float, !dbg !114
  %165 = tail call contract noundef float @llvm.maxnum.f32(float %158, float %164), !dbg !115
  %166 = bitcast float %165 to i32, !dbg !117
  %167 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !119
  %168 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %167) #11, !dbg !122
  %xor.i.i989.3 = xor i32 %168, 16, !dbg !123
  %169 = and i32 %168, -64, !dbg !124
  %and.i.i990.3 = add nsw i32 %169, 64, !dbg !124
  %cmp.not.i.i991.3 = icmp slt i32 %xor.i.i989.3, %and.i.i990.3, !dbg !125
  %cond.i.i992.3 = select i1 %cmp.not.i.i991.3, i32 %xor.i.i989.3, i32 %168, !dbg !126
  %shl.i.i993.3 = shl i32 %cond.i.i992.3, 2, !dbg !127
  %170 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i993.3, i32 %166), !dbg !128
  %171 = bitcast i32 %170 to float, !dbg !129
  %172 = tail call contract noundef float @llvm.maxnum.f32(float %165, float %171), !dbg !130
  %cmp326.3 = icmp eq i32 %shr324, 3, !dbg !132
  %max_cache.sroa.0.6 = select i1 %cmp326.3, float %172, float %max_cache.sroa.0.5, !dbg !133
  %173 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.2, float %172), !dbg !134
  %sub.3 = fsub contract float %spec.select2858, %172, !dbg !136
  %sub347.3 = fsub contract float %condval_1.0.1.3, %172, !dbg !137
  %sub350.3 = fsub contract float %condval_1.0.2.3, %172, !dbg !138
  %sub353.3 = fsub contract float %condval_1.0.3.3, %172, !dbg !139
  %mul358.3 = fmul contract float %sub.3, 0x3FC7154760000000, !dbg !140
  %mul362.3 = fmul contract float %sub347.3, 0x3FC7154760000000, !dbg !141
  %mul366.3 = fmul contract float %sub350.3, 0x3FC7154760000000, !dbg !142
  %mul370.3 = fmul contract float %sub353.3, 0x3FC7154760000000, !dbg !143
  %add375.3 = fadd contract float %mul358.3, 8.000000e+00, !dbg !144
  %add379.3 = fadd contract float %mul362.3, 8.000000e+00, !dbg !145
  %add383.3 = fadd contract float %mul366.3, 8.000000e+00, !dbg !146
  %add387.3 = fadd contract float %mul370.3, 8.000000e+00, !dbg !147
  %cmp.i.i.3 = fcmp contract olt float %add375.3, -1.260000e+02, !dbg !148
  %cond.i.i998.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i.3 = fadd contract float %add375.3, %cond.i.i998.3, !dbg !148
  %174 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !148
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %174, !dbg !148
  %cmp.i.i999.3 = fcmp contract olt float %add379.3, -1.260000e+02, !dbg !151
  %cond.i.i1000.3 = select contract i1 %cmp.i.i999.3, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i1001.3 = fadd contract float %add379.3, %cond.i.i1000.3, !dbg !151
  %175 = tail call contract float @llvm.exp2.f32(float %add.i.i1001.3), !dbg !151
  %cond2.i.i1002.3 = select contract i1 %cmp.i.i999.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i1003.3 = fmul contract float %cond2.i.i1002.3, %175, !dbg !151
  %cmp.i.i1004.3 = fcmp contract olt float %add383.3, -1.260000e+02, !dbg !153
  %cond.i.i1005.3 = select contract i1 %cmp.i.i1004.3, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i1006.3 = fadd contract float %add383.3, %cond.i.i1005.3, !dbg !153
  %176 = tail call contract float @llvm.exp2.f32(float %add.i.i1006.3), !dbg !153
  %cond2.i.i1007.3 = select contract i1 %cmp.i.i1004.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i1008.3 = fmul contract float %cond2.i.i1007.3, %176, !dbg !153
  %cmp.i.i1009.3 = fcmp contract olt float %add387.3, -1.260000e+02, !dbg !155
  %cond.i.i1010.3 = select contract i1 %cmp.i.i1009.3, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i1011.3 = fadd contract float %add387.3, %cond.i.i1010.3, !dbg !155
  %177 = tail call contract float @llvm.exp2.f32(float %add.i.i1011.3), !dbg !155
  %cond2.i.i1012.3 = select contract i1 %cmp.i.i1009.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i1013.3 = fmul contract float %cond2.i.i1012.3, %177, !dbg !155
  %178 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %179 = fptrunc float %mul.i.i.3 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %178), !dbg !157, !noalias !165
  %180 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %181 = fptrunc float %mul.i.i1003.3 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %180), !dbg !170, !noalias !165
  %182 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %183 = fptrunc float %mul.i.i1008.3 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %182), !dbg !172, !noalias !176
  %184 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %185 = fptrunc float %mul.i.i1013.3 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %184), !dbg !181, !noalias !176
  %186 = insertelement <4 x half> poison, half %179, i64 0, !dbg !183
  %187 = insertelement <4 x half> %186, half %181, i64 1, !dbg !183
  %188 = insertelement <4 x half> %187, half %183, i64 2, !dbg !183
  %189 = insertelement <4 x half> %188, half %185, i64 3, !dbg !183
  br label %if.end415.3, !dbg !184

if.end415.3:                                      ; preds = %if.end.1.3, %if.end415.2
  %190 = phi <4 x half> [ zeroinitializer, %if.end415.2 ], [ %189, %if.end.1.3 ], !dbg !83
  %max_cache.sroa.0.7 = phi float [ %max_cache.sroa.0.5, %if.end415.2 ], [ %max_cache.sroa.0.6, %if.end.1.3 ], !dbg !83
  %global_max.sroa.0.1.3 = phi float [ %global_max.sroa.0.1.2, %if.end415.2 ], [ %173, %if.end.1.3 ], !dbg !83
  %191 = or disjoint i64 %23, 4, !dbg !185
  %arrayidx130.4 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %191, !dbg !69
  %192 = load i32, ptr addrspace(1) %arrayidx130.4, align 4, !dbg !69, !tbaa !30
  %mul131.4 = shl nsw i32 %192, 4, !dbg !70
  %cmp132.4 = icmp slt i32 %192, 0, !dbg !71
  %cmp134.not.4 = icmp sgt i32 %mul131.4, %1
  %or.cond.4 = select i1 %cmp132.4, i1 true, i1 %cmp134.not.4, !dbg !72
  br i1 %or.cond.4, label %if.end415.4, label %if.then.4, !dbg !72

if.then.4:                                        ; preds = %if.end415.3
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add141.4 = add nuw nsw i32 %mul131.4, %shr140
  %conv151.4 = zext nneg i32 %mul131.4 to i64
  %.idx.4 = shl nuw nsw i64 %conv151.4, 7
  %gep.4 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1091, i64 %.idx.4, !dbg !78
  %cmp144.4 = icmp ult i32 %add141.4, 1024, !dbg !79
  br i1 %cmp144.4, label %if.then145.4, label %if.end.4, !dbg !80

if.then145.4:                                     ; preds = %if.then.4
  %gep1084.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.4, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.4, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.4, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.4, i64 4
  %condval.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %gep1084.4, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.4, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.4, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.4, align 4, !dbg !81, !tbaa !30
  br label %if.end.4, !dbg !82

if.end.4:                                         ; preds = %if.then145.4, %if.then.4
  %condval.sroa.0.0.4 = phi i32 [ %condval.sroa.0.0.copyload.4, %if.then145.4 ], [ 0, %if.then.4 ], !dbg !83
  %condval.sroa.5.0.4 = phi i32 [ %condval.sroa.5.0.copyload.4, %if.then145.4 ], [ 0, %if.then.4 ], !dbg !83
  %condval.sroa.6.0.4 = phi i32 [ %condval.sroa.6.0.copyload.4, %if.then145.4 ], [ 0, %if.then.4 ], !dbg !83
  %condval.sroa.7.0.4 = phi i32 [ %condval.sroa.7.0.copyload.4, %if.then145.4 ], [ 0, %if.then.4 ], !dbg !83
  store i32 %condval.sroa.0.0.4, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.4, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.4, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.4, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.4, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.4, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.4, align 4, !dbg !84, !tbaa !30
  %cmp144.1.4 = icmp ult i32 %add141.4, 1016, !dbg !79
  br i1 %cmp144.1.4, label %if.then145.1.4, label %if.end.1.4, !dbg !80

if.then145.1.4:                                   ; preds = %if.end.4
  %add150.1.4 = or disjoint i64 %mul147, 512
  %gep1084.1.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.4, i64 %add150.1.4
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1.4, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1.4, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1.4, i64 4
  %condval.sroa.0.0.copyload.1.4 = load i32, ptr addrspace(4) %gep1084.1.4, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.4 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.4, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.4 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.4, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.4 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.4, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.4, !dbg !82

if.end.1.4:                                       ; preds = %if.then145.1.4, %if.end.4
  %condval.sroa.0.0.1.4 = phi i32 [ %condval.sroa.0.0.copyload.1.4, %if.then145.1.4 ], [ 0, %if.end.4 ], !dbg !83
  %condval.sroa.5.0.1.4 = phi i32 [ %condval.sroa.5.0.copyload.1.4, %if.then145.1.4 ], [ 0, %if.end.4 ], !dbg !83
  %condval.sroa.6.0.1.4 = phi i32 [ %condval.sroa.6.0.copyload.1.4, %if.then145.1.4 ], [ 0, %if.end.4 ], !dbg !83
  %condval.sroa.7.0.1.4 = phi i32 [ %condval.sroa.7.0.copyload.1.4, %if.then145.1.4 ], [ 0, %if.end.4 ], !dbg !83
  store i32 %condval.sroa.0.0.1.4, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.4, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1.4, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.4, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1.4, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.4, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1.4, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %193 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %194 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %16, <4 x float> %193), !dbg !91
  %k_local.sroa.0.0.copyload.2.4 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %195 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.4, <4 x half> %18, <4 x float> %194), !dbg !91
  %k_local.sroa.0.0.copyload.3.4 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %196 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.4, <4 x half> %22, <4 x float> %195), !dbg !91
  %add282.4 = add nuw nsw i32 %mul131.4, %mul281
  %cmp285.not.4 = icmp sgt i32 %add282.4, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2431 = extractelement <4 x float> %196, i64 0
  %spec.select2859 = select i1 %cmp285.not.4, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2431, !dbg !93
  %cmp285.not.1.4.not = icmp slt i32 %add282.4, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2522 = extractelement <4 x float> %196, i64 1, !dbg !93
  %condval_1.0.1.4 = select i1 %cmp285.not.1.4.not, float %scores.sroa.0.4.vec.extract2522, float 0xFFF0000000000000, !dbg !93
  %add283.2.4 = or disjoint i32 %add282.4, 2, !dbg !94
  %cmp285.not.2.4 = icmp sgt i32 %add283.2.4, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2599 = extractelement <4 x float> %196, i64 2, !dbg !93
  %condval_1.0.2.4 = select i1 %cmp285.not.2.4, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2599, !dbg !93
  %add283.3.4 = or disjoint i32 %add282.4, 3, !dbg !94
  %cmp285.not.3.4 = icmp sgt i32 %add283.3.4, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2676 = extractelement <4 x float> %196, i64 3, !dbg !93
  %condval_1.0.3.4 = select i1 %cmp285.not.3.4, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2676, !dbg !93
  %197 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2859, float 0xFFF0000000000000), !dbg !95
  %198 = tail call contract noundef float @llvm.maxnum.f32(float %197, float %condval_1.0.1.4), !dbg !95
  %199 = tail call contract noundef float @llvm.maxnum.f32(float %198, float %condval_1.0.2.4), !dbg !95
  %200 = tail call contract noundef float @llvm.maxnum.f32(float %199, float %condval_1.0.3.4), !dbg !95
  %201 = bitcast float %200 to i32, !dbg !99
  %202 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !102
  %203 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %202) #11, !dbg !107
  %xor.i.i.4 = xor i32 %203, 32, !dbg !108
  %204 = and i32 %203, -64, !dbg !109
  %and.i.i.4 = add nsw i32 %204, 64, !dbg !109
  %cmp.not.i.i.4 = icmp slt i32 %xor.i.i.4, %and.i.i.4, !dbg !110
  %cond.i.i.4 = select i1 %cmp.not.i.i.4, i32 %xor.i.i.4, i32 %203, !dbg !111
  %shl.i.i.4 = shl i32 %cond.i.i.4, 2, !dbg !112
  %205 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.4, i32 %201), !dbg !113
  %206 = bitcast i32 %205 to float, !dbg !114
  %207 = tail call contract noundef float @llvm.maxnum.f32(float %200, float %206), !dbg !115
  %208 = bitcast float %207 to i32, !dbg !117
  %209 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !119
  %210 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %209) #11, !dbg !122
  %xor.i.i989.4 = xor i32 %210, 16, !dbg !123
  %211 = and i32 %210, -64, !dbg !124
  %and.i.i990.4 = add nsw i32 %211, 64, !dbg !124
  %cmp.not.i.i991.4 = icmp slt i32 %xor.i.i989.4, %and.i.i990.4, !dbg !125
  %cond.i.i992.4 = select i1 %cmp.not.i.i991.4, i32 %xor.i.i989.4, i32 %210, !dbg !126
  %shl.i.i993.4 = shl i32 %cond.i.i992.4, 2, !dbg !127
  %212 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i993.4, i32 %208), !dbg !128
  %213 = bitcast i32 %212 to float, !dbg !129
  %214 = tail call contract noundef float @llvm.maxnum.f32(float %207, float %213), !dbg !130
  %cmp326.4 = icmp ult i32 %2, 16, !dbg !132
  %max_cache.sroa.11.0 = select i1 %cmp326.4, float %214, float 0xFFF0000000000000, !dbg !133
  %215 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.3, float %214), !dbg !134
  %sub.4 = fsub contract float %spec.select2859, %214, !dbg !136
  %sub347.4 = fsub contract float %condval_1.0.1.4, %214, !dbg !137
  %sub350.4 = fsub contract float %condval_1.0.2.4, %214, !dbg !138
  %sub353.4 = fsub contract float %condval_1.0.3.4, %214, !dbg !139
  %mul358.4 = fmul contract float %sub.4, 0x3FC7154760000000, !dbg !140
  %mul362.4 = fmul contract float %sub347.4, 0x3FC7154760000000, !dbg !141
  %mul366.4 = fmul contract float %sub350.4, 0x3FC7154760000000, !dbg !142
  %mul370.4 = fmul contract float %sub353.4, 0x3FC7154760000000, !dbg !143
  %add375.4 = fadd contract float %mul358.4, 8.000000e+00, !dbg !144
  %add379.4 = fadd contract float %mul362.4, 8.000000e+00, !dbg !145
  %add383.4 = fadd contract float %mul366.4, 8.000000e+00, !dbg !146
  %add387.4 = fadd contract float %mul370.4, 8.000000e+00, !dbg !147
  %cmp.i.i.4 = fcmp contract olt float %add375.4, -1.260000e+02, !dbg !148
  %cond.i.i998.4 = select contract i1 %cmp.i.i.4, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i.4 = fadd contract float %add375.4, %cond.i.i998.4, !dbg !148
  %216 = tail call contract float @llvm.exp2.f32(float %add.i.i.4), !dbg !148
  %cond2.i.i.4 = select contract i1 %cmp.i.i.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i.4 = fmul contract float %cond2.i.i.4, %216, !dbg !148
  %cmp.i.i999.4 = fcmp contract olt float %add379.4, -1.260000e+02, !dbg !151
  %cond.i.i1000.4 = select contract i1 %cmp.i.i999.4, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i1001.4 = fadd contract float %add379.4, %cond.i.i1000.4, !dbg !151
  %217 = tail call contract float @llvm.exp2.f32(float %add.i.i1001.4), !dbg !151
  %cond2.i.i1002.4 = select contract i1 %cmp.i.i999.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i1003.4 = fmul contract float %cond2.i.i1002.4, %217, !dbg !151
  %cmp.i.i1004.4 = fcmp contract olt float %add383.4, -1.260000e+02, !dbg !153
  %cond.i.i1005.4 = select contract i1 %cmp.i.i1004.4, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i1006.4 = fadd contract float %add383.4, %cond.i.i1005.4, !dbg !153
  %218 = tail call contract float @llvm.exp2.f32(float %add.i.i1006.4), !dbg !153
  %cond2.i.i1007.4 = select contract i1 %cmp.i.i1004.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i1008.4 = fmul contract float %cond2.i.i1007.4, %218, !dbg !153
  %cmp.i.i1009.4 = fcmp contract olt float %add387.4, -1.260000e+02, !dbg !155
  %cond.i.i1010.4 = select contract i1 %cmp.i.i1009.4, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i1011.4 = fadd contract float %add387.4, %cond.i.i1010.4, !dbg !155
  %219 = tail call contract float @llvm.exp2.f32(float %add.i.i1011.4), !dbg !155
  %cond2.i.i1012.4 = select contract i1 %cmp.i.i1009.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i1013.4 = fmul contract float %cond2.i.i1012.4, %219, !dbg !155
  %220 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %221 = fptrunc float %mul.i.i.4 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %220), !dbg !157, !noalias !165
  %222 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %223 = fptrunc float %mul.i.i1003.4 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %222), !dbg !170, !noalias !165
  %224 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %225 = fptrunc float %mul.i.i1008.4 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %224), !dbg !172, !noalias !176
  %226 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %227 = fptrunc float %mul.i.i1013.4 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %226), !dbg !181, !noalias !176
  %228 = insertelement <4 x half> poison, half %221, i64 0, !dbg !183
  %229 = insertelement <4 x half> %228, half %223, i64 1, !dbg !183
  %230 = insertelement <4 x half> %229, half %225, i64 2, !dbg !183
  %231 = insertelement <4 x half> %230, half %227, i64 3, !dbg !183
  br label %if.end415.4, !dbg !184

if.end415.4:                                      ; preds = %if.end.1.4, %if.end415.3
  %232 = phi <4 x half> [ zeroinitializer, %if.end415.3 ], [ %231, %if.end.1.4 ], !dbg !83
  %max_cache.sroa.11.1 = phi float [ 0xFFF0000000000000, %if.end415.3 ], [ %max_cache.sroa.11.0, %if.end.1.4 ], !dbg !83
  %global_max.sroa.0.1.4 = phi float [ %global_max.sroa.0.1.3, %if.end415.3 ], [ %215, %if.end.1.4 ], !dbg !83
  %233 = or disjoint i64 %23, 5, !dbg !185
  %arrayidx130.5 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %233, !dbg !69
  %234 = load i32, ptr addrspace(1) %arrayidx130.5, align 4, !dbg !69, !tbaa !30
  %mul131.5 = shl nsw i32 %234, 4, !dbg !70
  %cmp132.5 = icmp slt i32 %234, 0, !dbg !71
  %cmp134.not.5 = icmp sgt i32 %mul131.5, %1
  %or.cond.5 = select i1 %cmp132.5, i1 true, i1 %cmp134.not.5, !dbg !72
  br i1 %or.cond.5, label %if.end415.5, label %if.then.5, !dbg !72

if.then.5:                                        ; preds = %if.end415.4
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add141.5 = add nuw nsw i32 %mul131.5, %shr140
  %conv151.5 = zext nneg i32 %mul131.5 to i64
  %.idx.5 = shl nuw nsw i64 %conv151.5, 7
  %gep.5 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1091, i64 %.idx.5, !dbg !78
  %cmp144.5 = icmp ult i32 %add141.5, 1024, !dbg !79
  br i1 %cmp144.5, label %if.then145.5, label %if.end.5, !dbg !80

if.then145.5:                                     ; preds = %if.then.5
  %gep1084.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.5, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.5, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.5, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.5, i64 4
  %condval.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %gep1084.5, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.5, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.5, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.5, align 4, !dbg !81, !tbaa !30
  br label %if.end.5, !dbg !82

if.end.5:                                         ; preds = %if.then145.5, %if.then.5
  %condval.sroa.0.0.5 = phi i32 [ %condval.sroa.0.0.copyload.5, %if.then145.5 ], [ 0, %if.then.5 ], !dbg !83
  %condval.sroa.5.0.5 = phi i32 [ %condval.sroa.5.0.copyload.5, %if.then145.5 ], [ 0, %if.then.5 ], !dbg !83
  %condval.sroa.6.0.5 = phi i32 [ %condval.sroa.6.0.copyload.5, %if.then145.5 ], [ 0, %if.then.5 ], !dbg !83
  %condval.sroa.7.0.5 = phi i32 [ %condval.sroa.7.0.copyload.5, %if.then145.5 ], [ 0, %if.then.5 ], !dbg !83
  store i32 %condval.sroa.0.0.5, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.5, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.5, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.5, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.5, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.5, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.5, align 4, !dbg !84, !tbaa !30
  %cmp144.1.5 = icmp ult i32 %add141.5, 1016, !dbg !79
  br i1 %cmp144.1.5, label %if.then145.1.5, label %if.end.1.5, !dbg !80

if.then145.1.5:                                   ; preds = %if.end.5
  %add150.1.5 = or disjoint i64 %mul147, 512
  %gep1084.1.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.5, i64 %add150.1.5
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1.5, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1.5, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1.5, i64 4
  %condval.sroa.0.0.copyload.1.5 = load i32, ptr addrspace(4) %gep1084.1.5, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.5 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.5, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.5 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.5, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.5 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.5, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.5, !dbg !82

if.end.1.5:                                       ; preds = %if.then145.1.5, %if.end.5
  %condval.sroa.0.0.1.5 = phi i32 [ %condval.sroa.0.0.copyload.1.5, %if.then145.1.5 ], [ 0, %if.end.5 ], !dbg !83
  %condval.sroa.5.0.1.5 = phi i32 [ %condval.sroa.5.0.copyload.1.5, %if.then145.1.5 ], [ 0, %if.end.5 ], !dbg !83
  %condval.sroa.6.0.1.5 = phi i32 [ %condval.sroa.6.0.copyload.1.5, %if.then145.1.5 ], [ 0, %if.end.5 ], !dbg !83
  %condval.sroa.7.0.1.5 = phi i32 [ %condval.sroa.7.0.copyload.1.5, %if.then145.1.5 ], [ 0, %if.end.5 ], !dbg !83
  store i32 %condval.sroa.0.0.1.5, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.5, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1.5, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.5, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1.5, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.5, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1.5, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %235 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %236 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %16, <4 x float> %235), !dbg !91
  %k_local.sroa.0.0.copyload.2.5 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %237 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.5, <4 x half> %18, <4 x float> %236), !dbg !91
  %k_local.sroa.0.0.copyload.3.5 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %238 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.5, <4 x half> %22, <4 x float> %237), !dbg !91
  %add282.5 = add nuw nsw i32 %mul131.5, %mul281
  %cmp285.not.5 = icmp sgt i32 %add282.5, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2441 = extractelement <4 x float> %238, i64 0
  %spec.select2860 = select i1 %cmp285.not.5, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2441, !dbg !93
  %cmp285.not.1.5.not = icmp slt i32 %add282.5, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2528 = extractelement <4 x float> %238, i64 1, !dbg !93
  %condval_1.0.1.5 = select i1 %cmp285.not.1.5.not, float %scores.sroa.0.4.vec.extract2528, float 0xFFF0000000000000, !dbg !93
  %add283.2.5 = or disjoint i32 %add282.5, 2, !dbg !94
  %cmp285.not.2.5 = icmp sgt i32 %add283.2.5, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2605 = extractelement <4 x float> %238, i64 2, !dbg !93
  %condval_1.0.2.5 = select i1 %cmp285.not.2.5, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2605, !dbg !93
  %add283.3.5 = or disjoint i32 %add282.5, 3, !dbg !94
  %cmp285.not.3.5 = icmp sgt i32 %add283.3.5, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2682 = extractelement <4 x float> %238, i64 3, !dbg !93
  %condval_1.0.3.5 = select i1 %cmp285.not.3.5, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2682, !dbg !93
  %239 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2860, float 0xFFF0000000000000), !dbg !95
  %240 = tail call contract noundef float @llvm.maxnum.f32(float %239, float %condval_1.0.1.5), !dbg !95
  %241 = tail call contract noundef float @llvm.maxnum.f32(float %240, float %condval_1.0.2.5), !dbg !95
  %242 = tail call contract noundef float @llvm.maxnum.f32(float %241, float %condval_1.0.3.5), !dbg !95
  %243 = bitcast float %242 to i32, !dbg !99
  %244 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !102
  %245 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %244) #11, !dbg !107
  %xor.i.i.5 = xor i32 %245, 32, !dbg !108
  %246 = and i32 %245, -64, !dbg !109
  %and.i.i.5 = add nsw i32 %246, 64, !dbg !109
  %cmp.not.i.i.5 = icmp slt i32 %xor.i.i.5, %and.i.i.5, !dbg !110
  %cond.i.i.5 = select i1 %cmp.not.i.i.5, i32 %xor.i.i.5, i32 %245, !dbg !111
  %shl.i.i.5 = shl i32 %cond.i.i.5, 2, !dbg !112
  %247 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.5, i32 %243), !dbg !113
  %248 = bitcast i32 %247 to float, !dbg !114
  %249 = tail call contract noundef float @llvm.maxnum.f32(float %242, float %248), !dbg !115
  %250 = bitcast float %249 to i32, !dbg !117
  %251 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !119
  %252 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %251) #11, !dbg !122
  %xor.i.i989.5 = xor i32 %252, 16, !dbg !123
  %253 = and i32 %252, -64, !dbg !124
  %and.i.i990.5 = add nsw i32 %253, 64, !dbg !124
  %cmp.not.i.i991.5 = icmp slt i32 %xor.i.i989.5, %and.i.i990.5, !dbg !125
  %cond.i.i992.5 = select i1 %cmp.not.i.i991.5, i32 %xor.i.i989.5, i32 %252, !dbg !126
  %shl.i.i993.5 = shl i32 %cond.i.i992.5, 2, !dbg !127
  %254 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i993.5, i32 %250), !dbg !128
  %255 = bitcast i32 %254 to float, !dbg !129
  %256 = tail call contract noundef float @llvm.maxnum.f32(float %249, float %255), !dbg !130
  %cmp326.5 = icmp eq i32 %shr324, 1, !dbg !132
  %max_cache.sroa.11.2 = select i1 %cmp326.5, float %256, float %max_cache.sroa.11.1, !dbg !133
  %257 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.4, float %256), !dbg !134
  %sub.5 = fsub contract float %spec.select2860, %256, !dbg !136
  %sub347.5 = fsub contract float %condval_1.0.1.5, %256, !dbg !137
  %sub350.5 = fsub contract float %condval_1.0.2.5, %256, !dbg !138
  %sub353.5 = fsub contract float %condval_1.0.3.5, %256, !dbg !139
  %mul358.5 = fmul contract float %sub.5, 0x3FC7154760000000, !dbg !140
  %mul362.5 = fmul contract float %sub347.5, 0x3FC7154760000000, !dbg !141
  %mul366.5 = fmul contract float %sub350.5, 0x3FC7154760000000, !dbg !142
  %mul370.5 = fmul contract float %sub353.5, 0x3FC7154760000000, !dbg !143
  %add375.5 = fadd contract float %mul358.5, 8.000000e+00, !dbg !144
  %add379.5 = fadd contract float %mul362.5, 8.000000e+00, !dbg !145
  %add383.5 = fadd contract float %mul366.5, 8.000000e+00, !dbg !146
  %add387.5 = fadd contract float %mul370.5, 8.000000e+00, !dbg !147
  %cmp.i.i.5 = fcmp contract olt float %add375.5, -1.260000e+02, !dbg !148
  %cond.i.i998.5 = select contract i1 %cmp.i.i.5, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i.5 = fadd contract float %add375.5, %cond.i.i998.5, !dbg !148
  %258 = tail call contract float @llvm.exp2.f32(float %add.i.i.5), !dbg !148
  %cond2.i.i.5 = select contract i1 %cmp.i.i.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i.5 = fmul contract float %cond2.i.i.5, %258, !dbg !148
  %cmp.i.i999.5 = fcmp contract olt float %add379.5, -1.260000e+02, !dbg !151
  %cond.i.i1000.5 = select contract i1 %cmp.i.i999.5, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i1001.5 = fadd contract float %add379.5, %cond.i.i1000.5, !dbg !151
  %259 = tail call contract float @llvm.exp2.f32(float %add.i.i1001.5), !dbg !151
  %cond2.i.i1002.5 = select contract i1 %cmp.i.i999.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i1003.5 = fmul contract float %cond2.i.i1002.5, %259, !dbg !151
  %cmp.i.i1004.5 = fcmp contract olt float %add383.5, -1.260000e+02, !dbg !153
  %cond.i.i1005.5 = select contract i1 %cmp.i.i1004.5, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i1006.5 = fadd contract float %add383.5, %cond.i.i1005.5, !dbg !153
  %260 = tail call contract float @llvm.exp2.f32(float %add.i.i1006.5), !dbg !153
  %cond2.i.i1007.5 = select contract i1 %cmp.i.i1004.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i1008.5 = fmul contract float %cond2.i.i1007.5, %260, !dbg !153
  %cmp.i.i1009.5 = fcmp contract olt float %add387.5, -1.260000e+02, !dbg !155
  %cond.i.i1010.5 = select contract i1 %cmp.i.i1009.5, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i1011.5 = fadd contract float %add387.5, %cond.i.i1010.5, !dbg !155
  %261 = tail call contract float @llvm.exp2.f32(float %add.i.i1011.5), !dbg !155
  %cond2.i.i1012.5 = select contract i1 %cmp.i.i1009.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i1013.5 = fmul contract float %cond2.i.i1012.5, %261, !dbg !155
  %262 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %263 = fptrunc float %mul.i.i.5 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %262), !dbg !157, !noalias !165
  %264 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %265 = fptrunc float %mul.i.i1003.5 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %264), !dbg !170, !noalias !165
  %266 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %267 = fptrunc float %mul.i.i1008.5 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %266), !dbg !172, !noalias !176
  %268 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %269 = fptrunc float %mul.i.i1013.5 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %268), !dbg !181, !noalias !176
  %270 = insertelement <4 x half> poison, half %263, i64 0, !dbg !183
  %271 = insertelement <4 x half> %270, half %265, i64 1, !dbg !183
  %272 = insertelement <4 x half> %271, half %267, i64 2, !dbg !183
  %273 = insertelement <4 x half> %272, half %269, i64 3, !dbg !183
  br label %if.end415.5, !dbg !184

if.end415.5:                                      ; preds = %if.end.1.5, %if.end415.4
  %274 = phi <4 x half> [ zeroinitializer, %if.end415.4 ], [ %273, %if.end.1.5 ], !dbg !83
  %max_cache.sroa.11.3 = phi float [ %max_cache.sroa.11.1, %if.end415.4 ], [ %max_cache.sroa.11.2, %if.end.1.5 ], !dbg !83
  %global_max.sroa.0.1.5 = phi float [ %global_max.sroa.0.1.4, %if.end415.4 ], [ %257, %if.end.1.5 ], !dbg !83
  %275 = or disjoint i64 %23, 6, !dbg !185
  %arrayidx130.6 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %275, !dbg !69
  %276 = load i32, ptr addrspace(1) %arrayidx130.6, align 4, !dbg !69, !tbaa !30
  %mul131.6 = shl nsw i32 %276, 4, !dbg !70
  %cmp132.6 = icmp slt i32 %276, 0, !dbg !71
  %cmp134.not.6 = icmp sgt i32 %mul131.6, %1
  %or.cond.6 = select i1 %cmp132.6, i1 true, i1 %cmp134.not.6, !dbg !72
  br i1 %or.cond.6, label %if.end415.6, label %if.then.6, !dbg !72

if.then.6:                                        ; preds = %if.end415.5
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add141.6 = add nuw nsw i32 %mul131.6, %shr140
  %conv151.6 = zext nneg i32 %mul131.6 to i64
  %.idx.6 = shl nuw nsw i64 %conv151.6, 7
  %gep.6 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1091, i64 %.idx.6, !dbg !78
  %cmp144.6 = icmp ult i32 %add141.6, 1024, !dbg !79
  br i1 %cmp144.6, label %if.then145.6, label %if.end.6, !dbg !80

if.then145.6:                                     ; preds = %if.then.6
  %gep1084.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.6, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.6, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.6, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.6, i64 4
  %condval.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %gep1084.6, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.6, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.6, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.6, align 4, !dbg !81, !tbaa !30
  br label %if.end.6, !dbg !82

if.end.6:                                         ; preds = %if.then145.6, %if.then.6
  %condval.sroa.0.0.6 = phi i32 [ %condval.sroa.0.0.copyload.6, %if.then145.6 ], [ 0, %if.then.6 ], !dbg !83
  %condval.sroa.5.0.6 = phi i32 [ %condval.sroa.5.0.copyload.6, %if.then145.6 ], [ 0, %if.then.6 ], !dbg !83
  %condval.sroa.6.0.6 = phi i32 [ %condval.sroa.6.0.copyload.6, %if.then145.6 ], [ 0, %if.then.6 ], !dbg !83
  %condval.sroa.7.0.6 = phi i32 [ %condval.sroa.7.0.copyload.6, %if.then145.6 ], [ 0, %if.then.6 ], !dbg !83
  store i32 %condval.sroa.0.0.6, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.6, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.6, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.6, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.6, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.6, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.6, align 4, !dbg !84, !tbaa !30
  %cmp144.1.6 = icmp ult i32 %add141.6, 1016, !dbg !79
  br i1 %cmp144.1.6, label %if.then145.1.6, label %if.end.1.6, !dbg !80

if.then145.1.6:                                   ; preds = %if.end.6
  %add150.1.6 = or disjoint i64 %mul147, 512
  %gep1084.1.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.6, i64 %add150.1.6
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1.6, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1.6, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1.6, i64 4
  %condval.sroa.0.0.copyload.1.6 = load i32, ptr addrspace(4) %gep1084.1.6, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.6 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.6, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.6 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.6, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.6 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.6, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.6, !dbg !82

if.end.1.6:                                       ; preds = %if.then145.1.6, %if.end.6
  %condval.sroa.0.0.1.6 = phi i32 [ %condval.sroa.0.0.copyload.1.6, %if.then145.1.6 ], [ 0, %if.end.6 ], !dbg !83
  %condval.sroa.5.0.1.6 = phi i32 [ %condval.sroa.5.0.copyload.1.6, %if.then145.1.6 ], [ 0, %if.end.6 ], !dbg !83
  %condval.sroa.6.0.1.6 = phi i32 [ %condval.sroa.6.0.copyload.1.6, %if.then145.1.6 ], [ 0, %if.end.6 ], !dbg !83
  %condval.sroa.7.0.1.6 = phi i32 [ %condval.sroa.7.0.copyload.1.6, %if.then145.1.6 ], [ 0, %if.end.6 ], !dbg !83
  store i32 %condval.sroa.0.0.1.6, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.6, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1.6, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.6, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1.6, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.6, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1.6, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %277 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %278 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %16, <4 x float> %277), !dbg !91
  %k_local.sroa.0.0.copyload.2.6 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %279 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.6, <4 x half> %18, <4 x float> %278), !dbg !91
  %k_local.sroa.0.0.copyload.3.6 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %280 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.6, <4 x half> %22, <4 x float> %279), !dbg !91
  %add282.6 = add nuw nsw i32 %mul131.6, %mul281
  %cmp285.not.6 = icmp sgt i32 %add282.6, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2451 = extractelement <4 x float> %280, i64 0
  %spec.select2861 = select i1 %cmp285.not.6, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2451, !dbg !93
  %cmp285.not.1.6.not = icmp slt i32 %add282.6, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2534 = extractelement <4 x float> %280, i64 1, !dbg !93
  %condval_1.0.1.6 = select i1 %cmp285.not.1.6.not, float %scores.sroa.0.4.vec.extract2534, float 0xFFF0000000000000, !dbg !93
  %add283.2.6 = or disjoint i32 %add282.6, 2, !dbg !94
  %cmp285.not.2.6 = icmp sgt i32 %add283.2.6, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2611 = extractelement <4 x float> %280, i64 2, !dbg !93
  %condval_1.0.2.6 = select i1 %cmp285.not.2.6, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2611, !dbg !93
  %add283.3.6 = or disjoint i32 %add282.6, 3, !dbg !94
  %cmp285.not.3.6 = icmp sgt i32 %add283.3.6, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2688 = extractelement <4 x float> %280, i64 3, !dbg !93
  %condval_1.0.3.6 = select i1 %cmp285.not.3.6, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2688, !dbg !93
  %281 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2861, float 0xFFF0000000000000), !dbg !95
  %282 = tail call contract noundef float @llvm.maxnum.f32(float %281, float %condval_1.0.1.6), !dbg !95
  %283 = tail call contract noundef float @llvm.maxnum.f32(float %282, float %condval_1.0.2.6), !dbg !95
  %284 = tail call contract noundef float @llvm.maxnum.f32(float %283, float %condval_1.0.3.6), !dbg !95
  %285 = bitcast float %284 to i32, !dbg !99
  %286 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !102
  %287 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %286) #11, !dbg !107
  %xor.i.i.6 = xor i32 %287, 32, !dbg !108
  %288 = and i32 %287, -64, !dbg !109
  %and.i.i.6 = add nsw i32 %288, 64, !dbg !109
  %cmp.not.i.i.6 = icmp slt i32 %xor.i.i.6, %and.i.i.6, !dbg !110
  %cond.i.i.6 = select i1 %cmp.not.i.i.6, i32 %xor.i.i.6, i32 %287, !dbg !111
  %shl.i.i.6 = shl i32 %cond.i.i.6, 2, !dbg !112
  %289 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.6, i32 %285), !dbg !113
  %290 = bitcast i32 %289 to float, !dbg !114
  %291 = tail call contract noundef float @llvm.maxnum.f32(float %284, float %290), !dbg !115
  %292 = bitcast float %291 to i32, !dbg !117
  %293 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !119
  %294 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %293) #11, !dbg !122
  %xor.i.i989.6 = xor i32 %294, 16, !dbg !123
  %295 = and i32 %294, -64, !dbg !124
  %and.i.i990.6 = add nsw i32 %295, 64, !dbg !124
  %cmp.not.i.i991.6 = icmp slt i32 %xor.i.i989.6, %and.i.i990.6, !dbg !125
  %cond.i.i992.6 = select i1 %cmp.not.i.i991.6, i32 %xor.i.i989.6, i32 %294, !dbg !126
  %shl.i.i993.6 = shl i32 %cond.i.i992.6, 2, !dbg !127
  %296 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i993.6, i32 %292), !dbg !128
  %297 = bitcast i32 %296 to float, !dbg !129
  %298 = tail call contract noundef float @llvm.maxnum.f32(float %291, float %297), !dbg !130
  %cmp326.6 = icmp eq i32 %shr324, 2, !dbg !132
  %max_cache.sroa.11.4 = select i1 %cmp326.6, float %298, float %max_cache.sroa.11.3, !dbg !133
  %299 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.5, float %298), !dbg !134
  %sub.6 = fsub contract float %spec.select2861, %298, !dbg !136
  %sub347.6 = fsub contract float %condval_1.0.1.6, %298, !dbg !137
  %sub350.6 = fsub contract float %condval_1.0.2.6, %298, !dbg !138
  %sub353.6 = fsub contract float %condval_1.0.3.6, %298, !dbg !139
  %mul358.6 = fmul contract float %sub.6, 0x3FC7154760000000, !dbg !140
  %mul362.6 = fmul contract float %sub347.6, 0x3FC7154760000000, !dbg !141
  %mul366.6 = fmul contract float %sub350.6, 0x3FC7154760000000, !dbg !142
  %mul370.6 = fmul contract float %sub353.6, 0x3FC7154760000000, !dbg !143
  %add375.6 = fadd contract float %mul358.6, 8.000000e+00, !dbg !144
  %add379.6 = fadd contract float %mul362.6, 8.000000e+00, !dbg !145
  %add383.6 = fadd contract float %mul366.6, 8.000000e+00, !dbg !146
  %add387.6 = fadd contract float %mul370.6, 8.000000e+00, !dbg !147
  %cmp.i.i.6 = fcmp contract olt float %add375.6, -1.260000e+02, !dbg !148
  %cond.i.i998.6 = select contract i1 %cmp.i.i.6, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i.6 = fadd contract float %add375.6, %cond.i.i998.6, !dbg !148
  %300 = tail call contract float @llvm.exp2.f32(float %add.i.i.6), !dbg !148
  %cond2.i.i.6 = select contract i1 %cmp.i.i.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i.6 = fmul contract float %cond2.i.i.6, %300, !dbg !148
  %cmp.i.i999.6 = fcmp contract olt float %add379.6, -1.260000e+02, !dbg !151
  %cond.i.i1000.6 = select contract i1 %cmp.i.i999.6, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i1001.6 = fadd contract float %add379.6, %cond.i.i1000.6, !dbg !151
  %301 = tail call contract float @llvm.exp2.f32(float %add.i.i1001.6), !dbg !151
  %cond2.i.i1002.6 = select contract i1 %cmp.i.i999.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i1003.6 = fmul contract float %cond2.i.i1002.6, %301, !dbg !151
  %cmp.i.i1004.6 = fcmp contract olt float %add383.6, -1.260000e+02, !dbg !153
  %cond.i.i1005.6 = select contract i1 %cmp.i.i1004.6, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i1006.6 = fadd contract float %add383.6, %cond.i.i1005.6, !dbg !153
  %302 = tail call contract float @llvm.exp2.f32(float %add.i.i1006.6), !dbg !153
  %cond2.i.i1007.6 = select contract i1 %cmp.i.i1004.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i1008.6 = fmul contract float %cond2.i.i1007.6, %302, !dbg !153
  %cmp.i.i1009.6 = fcmp contract olt float %add387.6, -1.260000e+02, !dbg !155
  %cond.i.i1010.6 = select contract i1 %cmp.i.i1009.6, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i1011.6 = fadd contract float %add387.6, %cond.i.i1010.6, !dbg !155
  %303 = tail call contract float @llvm.exp2.f32(float %add.i.i1011.6), !dbg !155
  %cond2.i.i1012.6 = select contract i1 %cmp.i.i1009.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i1013.6 = fmul contract float %cond2.i.i1012.6, %303, !dbg !155
  %304 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %305 = fptrunc float %mul.i.i.6 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %304), !dbg !157, !noalias !165
  %306 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %307 = fptrunc float %mul.i.i1003.6 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %306), !dbg !170, !noalias !165
  %308 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %309 = fptrunc float %mul.i.i1008.6 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %308), !dbg !172, !noalias !176
  %310 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %311 = fptrunc float %mul.i.i1013.6 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %310), !dbg !181, !noalias !176
  %312 = insertelement <4 x half> poison, half %305, i64 0, !dbg !183
  %313 = insertelement <4 x half> %312, half %307, i64 1, !dbg !183
  %314 = insertelement <4 x half> %313, half %309, i64 2, !dbg !183
  %315 = insertelement <4 x half> %314, half %311, i64 3, !dbg !183
  br label %if.end415.6, !dbg !184

if.end415.6:                                      ; preds = %if.end.1.6, %if.end415.5
  %316 = phi <4 x half> [ zeroinitializer, %if.end415.5 ], [ %315, %if.end.1.6 ], !dbg !83
  %max_cache.sroa.11.5 = phi float [ %max_cache.sroa.11.3, %if.end415.5 ], [ %max_cache.sroa.11.4, %if.end.1.6 ], !dbg !83
  %global_max.sroa.0.1.6 = phi float [ %global_max.sroa.0.1.5, %if.end415.5 ], [ %299, %if.end.1.6 ], !dbg !83
  %317 = or disjoint i64 %23, 7, !dbg !185
  %arrayidx130.7 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %317, !dbg !69
  %318 = load i32, ptr addrspace(1) %arrayidx130.7, align 4, !dbg !69, !tbaa !30
  %mul131.7 = shl nsw i32 %318, 4, !dbg !70
  %cmp132.7 = icmp slt i32 %318, 0, !dbg !71
  %cmp134.not.7 = icmp sgt i32 %mul131.7, %1
  %or.cond.7 = select i1 %cmp132.7, i1 true, i1 %cmp134.not.7, !dbg !72
  br i1 %or.cond.7, label %if.end415.7, label %if.then.7, !dbg !72

if.then.7:                                        ; preds = %if.end415.6
  fence syncscope("warp") release, !dbg !73
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %add141.7 = add nuw nsw i32 %mul131.7, %shr140
  %conv151.7 = zext nneg i32 %mul131.7 to i64
  %.idx.7 = shl nuw nsw i64 %conv151.7, 7
  %gep.7 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1091, i64 %.idx.7, !dbg !78
  %cmp144.7 = icmp ult i32 %add141.7, 1024, !dbg !79
  br i1 %cmp144.7, label %if.then145.7, label %if.end.7, !dbg !80

if.then145.7:                                     ; preds = %if.then.7
  %gep1084.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.7, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.7, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.7, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.7, i64 4
  %condval.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %gep1084.7, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.7, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.7, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.7, align 4, !dbg !81, !tbaa !30
  br label %if.end.7, !dbg !82

if.end.7:                                         ; preds = %if.then145.7, %if.then.7
  %condval.sroa.0.0.7 = phi i32 [ %condval.sroa.0.0.copyload.7, %if.then145.7 ], [ 0, %if.then.7 ], !dbg !83
  %condval.sroa.5.0.7 = phi i32 [ %condval.sroa.5.0.copyload.7, %if.then145.7 ], [ 0, %if.then.7 ], !dbg !83
  %condval.sroa.6.0.7 = phi i32 [ %condval.sroa.6.0.copyload.7, %if.then145.7 ], [ 0, %if.then.7 ], !dbg !83
  %condval.sroa.7.0.7 = phi i32 [ %condval.sroa.7.0.copyload.7, %if.then145.7 ], [ 0, %if.then.7 ], !dbg !83
  store i32 %condval.sroa.0.0.7, ptr addrspace(3) %add.ptr45, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.7, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.7, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.7, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.7, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.7, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.7, align 4, !dbg !84, !tbaa !30
  %cmp144.1.7 = icmp ult i32 %add141.7, 1016, !dbg !79
  br i1 %cmp144.1.7, label %if.then145.1.7, label %if.end.1.7, !dbg !80

if.then145.1.7:                                   ; preds = %if.end.7
  %add150.1.7 = or disjoint i64 %mul147, 512
  %gep1084.1.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.7, i64 %add150.1.7
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1.7, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1.7, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1084.1.7, i64 4
  %condval.sroa.0.0.copyload.1.7 = load i32, ptr addrspace(4) %gep1084.1.7, align 16, !dbg !81, !tbaa !30
  %condval.sroa.5.0.copyload.1.7 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.7, align 4, !dbg !81, !tbaa !30
  %condval.sroa.6.0.copyload.1.7 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.7, align 8, !dbg !81, !tbaa !30
  %condval.sroa.7.0.copyload.1.7 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.7, align 4, !dbg !81, !tbaa !30
  br label %if.end.1.7, !dbg !82

if.end.1.7:                                       ; preds = %if.then145.1.7, %if.end.7
  %condval.sroa.0.0.1.7 = phi i32 [ %condval.sroa.0.0.copyload.1.7, %if.then145.1.7 ], [ 0, %if.end.7 ], !dbg !83
  %condval.sroa.5.0.1.7 = phi i32 [ %condval.sroa.5.0.copyload.1.7, %if.then145.1.7 ], [ 0, %if.end.7 ], !dbg !83
  %condval.sroa.6.0.1.7 = phi i32 [ %condval.sroa.6.0.copyload.1.7, %if.then145.1.7 ], [ 0, %if.end.7 ], !dbg !83
  %condval.sroa.7.0.1.7 = phi i32 [ %condval.sroa.7.0.copyload.1.7, %if.then145.1.7 ], [ 0, %if.end.7 ], !dbg !83
  store i32 %condval.sroa.0.0.1.7, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !84, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !84
  store i32 %condval.sroa.5.0.1.7, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1.7, align 4, !dbg !84, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !84
  store i32 %condval.sroa.6.0.1.7, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1.7, align 8, !dbg !84, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !84
  store i32 %condval.sroa.7.0.1.7, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1.7, align 4, !dbg !84, !tbaa !30
  fence syncscope("warp") release, !dbg !85
  tail call void @llvm.mxc.barrier.warp(), !dbg !88
  fence syncscope("warp") acquire, !dbg !89
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !90
  %319 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %12, <4 x float> zeroinitializer), !dbg !91
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !90
  %320 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %16, <4 x float> %319), !dbg !91
  %k_local.sroa.0.0.copyload.2.7 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !90
  %321 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.7, <4 x half> %18, <4 x float> %320), !dbg !91
  %k_local.sroa.0.0.copyload.3.7 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !90
  %322 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.7, <4 x half> %22, <4 x float> %321), !dbg !91
  %add282.7 = add nuw nsw i32 %mul131.7, %mul281
  %cmp285.not.7 = icmp sgt i32 %add282.7, %1, !dbg !92
  %scores.sroa.0.0.vec.extract2461 = extractelement <4 x float> %322, i64 0
  %spec.select2862 = select i1 %cmp285.not.7, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2461, !dbg !93
  %cmp285.not.1.7.not = icmp slt i32 %add282.7, %1, !dbg !92
  %scores.sroa.0.4.vec.extract2540 = extractelement <4 x float> %322, i64 1, !dbg !93
  %condval_1.0.1.7 = select i1 %cmp285.not.1.7.not, float %scores.sroa.0.4.vec.extract2540, float 0xFFF0000000000000, !dbg !93
  %add283.2.7 = or disjoint i32 %add282.7, 2, !dbg !94
  %cmp285.not.2.7 = icmp sgt i32 %add283.2.7, %1, !dbg !92
  %scores.sroa.0.8.vec.extract2617 = extractelement <4 x float> %322, i64 2, !dbg !93
  %condval_1.0.2.7 = select i1 %cmp285.not.2.7, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2617, !dbg !93
  %add283.3.7 = or disjoint i32 %add282.7, 3, !dbg !94
  %cmp285.not.3.7 = icmp sgt i32 %add283.3.7, %1, !dbg !92
  %scores.sroa.0.12.vec.extract2694 = extractelement <4 x float> %322, i64 3, !dbg !93
  %condval_1.0.3.7 = select i1 %cmp285.not.3.7, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2694, !dbg !93
  %323 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2862, float 0xFFF0000000000000), !dbg !95
  %324 = tail call contract noundef float @llvm.maxnum.f32(float %323, float %condval_1.0.1.7), !dbg !95
  %325 = tail call contract noundef float @llvm.maxnum.f32(float %324, float %condval_1.0.2.7), !dbg !95
  %326 = tail call contract noundef float @llvm.maxnum.f32(float %325, float %condval_1.0.3.7), !dbg !95
  %327 = bitcast float %326 to i32, !dbg !99
  %328 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !102
  %329 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %328) #11, !dbg !107
  %xor.i.i.7 = xor i32 %329, 32, !dbg !108
  %330 = and i32 %329, -64, !dbg !109
  %and.i.i.7 = add nsw i32 %330, 64, !dbg !109
  %cmp.not.i.i.7 = icmp slt i32 %xor.i.i.7, %and.i.i.7, !dbg !110
  %cond.i.i.7 = select i1 %cmp.not.i.i.7, i32 %xor.i.i.7, i32 %329, !dbg !111
  %shl.i.i.7 = shl i32 %cond.i.i.7, 2, !dbg !112
  %331 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.7, i32 %327), !dbg !113
  %332 = bitcast i32 %331 to float, !dbg !114
  %333 = tail call contract noundef float @llvm.maxnum.f32(float %326, float %332), !dbg !115
  %334 = bitcast float %333 to i32, !dbg !117
  %335 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !119
  %336 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %335) #11, !dbg !122
  %xor.i.i989.7 = xor i32 %336, 16, !dbg !123
  %337 = and i32 %336, -64, !dbg !124
  %and.i.i990.7 = add nsw i32 %337, 64, !dbg !124
  %cmp.not.i.i991.7 = icmp slt i32 %xor.i.i989.7, %and.i.i990.7, !dbg !125
  %cond.i.i992.7 = select i1 %cmp.not.i.i991.7, i32 %xor.i.i989.7, i32 %336, !dbg !126
  %shl.i.i993.7 = shl i32 %cond.i.i992.7, 2, !dbg !127
  %338 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i993.7, i32 %334), !dbg !128
  %339 = bitcast i32 %338 to float, !dbg !129
  %340 = tail call contract noundef float @llvm.maxnum.f32(float %333, float %339), !dbg !130
  %cmp326.7 = icmp eq i32 %shr324, 3, !dbg !132
  %max_cache.sroa.11.6 = select i1 %cmp326.7, float %340, float %max_cache.sroa.11.5, !dbg !133
  %341 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.6, float %340), !dbg !134
  %sub.7 = fsub contract float %spec.select2862, %340, !dbg !136
  %sub347.7 = fsub contract float %condval_1.0.1.7, %340, !dbg !137
  %sub350.7 = fsub contract float %condval_1.0.2.7, %340, !dbg !138
  %sub353.7 = fsub contract float %condval_1.0.3.7, %340, !dbg !139
  %mul358.7 = fmul contract float %sub.7, 0x3FC7154760000000, !dbg !140
  %mul362.7 = fmul contract float %sub347.7, 0x3FC7154760000000, !dbg !141
  %mul366.7 = fmul contract float %sub350.7, 0x3FC7154760000000, !dbg !142
  %mul370.7 = fmul contract float %sub353.7, 0x3FC7154760000000, !dbg !143
  %add375.7 = fadd contract float %mul358.7, 8.000000e+00, !dbg !144
  %add379.7 = fadd contract float %mul362.7, 8.000000e+00, !dbg !145
  %add383.7 = fadd contract float %mul366.7, 8.000000e+00, !dbg !146
  %add387.7 = fadd contract float %mul370.7, 8.000000e+00, !dbg !147
  %cmp.i.i.7 = fcmp contract olt float %add375.7, -1.260000e+02, !dbg !148
  %cond.i.i998.7 = select contract i1 %cmp.i.i.7, float 6.400000e+01, float 0.000000e+00, !dbg !148
  %add.i.i.7 = fadd contract float %add375.7, %cond.i.i998.7, !dbg !148
  %342 = tail call contract float @llvm.exp2.f32(float %add.i.i.7), !dbg !148
  %cond2.i.i.7 = select contract i1 %cmp.i.i.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !148
  %mul.i.i.7 = fmul contract float %cond2.i.i.7, %342, !dbg !148
  %cmp.i.i999.7 = fcmp contract olt float %add379.7, -1.260000e+02, !dbg !151
  %cond.i.i1000.7 = select contract i1 %cmp.i.i999.7, float 6.400000e+01, float 0.000000e+00, !dbg !151
  %add.i.i1001.7 = fadd contract float %add379.7, %cond.i.i1000.7, !dbg !151
  %343 = tail call contract float @llvm.exp2.f32(float %add.i.i1001.7), !dbg !151
  %cond2.i.i1002.7 = select contract i1 %cmp.i.i999.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !151
  %mul.i.i1003.7 = fmul contract float %cond2.i.i1002.7, %343, !dbg !151
  %cmp.i.i1004.7 = fcmp contract olt float %add383.7, -1.260000e+02, !dbg !153
  %cond.i.i1005.7 = select contract i1 %cmp.i.i1004.7, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i1006.7 = fadd contract float %add383.7, %cond.i.i1005.7, !dbg !153
  %344 = tail call contract float @llvm.exp2.f32(float %add.i.i1006.7), !dbg !153
  %cond2.i.i1007.7 = select contract i1 %cmp.i.i1004.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i1008.7 = fmul contract float %cond2.i.i1007.7, %344, !dbg !153
  %cmp.i.i1009.7 = fcmp contract olt float %add387.7, -1.260000e+02, !dbg !155
  %cond.i.i1010.7 = select contract i1 %cmp.i.i1009.7, float 6.400000e+01, float 0.000000e+00, !dbg !155
  %add.i.i1011.7 = fadd contract float %add387.7, %cond.i.i1010.7, !dbg !155
  %345 = tail call contract float @llvm.exp2.f32(float %add.i.i1011.7), !dbg !155
  %cond2.i.i1012.7 = select contract i1 %cmp.i.i1009.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !155
  %mul.i.i1013.7 = fmul contract float %cond2.i.i1012.7, %345, !dbg !155
  %346 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !157, !noalias !165
  %347 = fptrunc float %mul.i.i.7 to half, !dbg !157
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %346), !dbg !157, !noalias !165
  %348 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !170, !noalias !165
  %349 = fptrunc float %mul.i.i1003.7 to half, !dbg !170
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %348), !dbg !170, !noalias !165
  %350 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !172, !noalias !176
  %351 = fptrunc float %mul.i.i1008.7 to half, !dbg !172
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %350), !dbg !172, !noalias !176
  %352 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !176
  %353 = fptrunc float %mul.i.i1013.7 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %352), !dbg !181, !noalias !176
  %354 = insertelement <4 x half> poison, half %347, i64 0, !dbg !183
  %355 = insertelement <4 x half> %354, half %349, i64 1, !dbg !183
  %356 = insertelement <4 x half> %355, half %351, i64 2, !dbg !183
  %357 = insertelement <4 x half> %356, half %353, i64 3, !dbg !183
  br label %if.end415.7, !dbg !184

if.end415.7:                                      ; preds = %if.end.1.7, %if.end415.6
  %358 = phi <4 x half> [ zeroinitializer, %if.end415.6 ], [ %357, %if.end.1.7 ], !dbg !83
  %max_cache.sroa.11.7 = phi float [ %max_cache.sroa.11.5, %if.end415.6 ], [ %max_cache.sroa.11.6, %if.end.1.7 ], !dbg !83
  %global_max.sroa.0.1.7 = phi float [ %global_max.sroa.0.1.6, %if.end415.6 ], [ %341, %if.end.1.7 ], !dbg !83
  %and469 = and i32 %2, 15
  %359 = shl nuw nsw i32 %2, 4
  %360 = and i32 %359, 16256
  %361 = and i32 %mul11, 56
  %362 = or disjoint i32 %360, %361
  %363 = zext nneg i32 %362 to i64
  %add543 = or disjoint i64 %mul147, %363
  %mul606 = and i32 %359, 112
  %and611 = and i32 %2, 7
  %xor = xor i32 %shr140, %and611
  %and629 = shl nuw nsw i32 %2, 7
  %mul630 = and i32 %and629, 896
  %364 = shl nuw nsw i32 %2, 1
  %mul636 = and i32 %364, 16
  %mul640 = and i32 %shr140, 126
  %shr645 = and i32 %shr140, 1
  %365 = load i32, ptr addrspace(1) %arrayidx130, align 4, !dbg !186, !tbaa !30
  %mul444 = shl nsw i32 %365, 4, !dbg !187
  %cmp445 = icmp slt i32 %365, 0, !dbg !188
  %cmp448.not = icmp sgt i32 %mul444, %1
  %or.cond1071 = select i1 %cmp445, i1 true, i1 %cmp448.not, !dbg !189
  br i1 %or.cond1071, label %if.end686, label %if.then449, !dbg !189

if.then449:                                       ; preds = %if.end415.7
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454 = icmp ult i32 %2, 16, !dbg !195
  br i1 %cmp454, label %if.then455, label %if.end464, !dbg !196

if.then455:                                       ; preds = %if.then449
  %sub460 = fsub contract float %max_cache.sroa.0.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461 = fmul contract float %sub460, 0x3FC7154760000000, !dbg !198
  %cmp.i.i1015 = fcmp contract olt float %mul461, -1.260000e+02, !dbg !199
  %cond.i.i1016 = select contract i1 %cmp.i.i1015, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i1017 = fadd contract float %mul461, %cond.i.i1016, !dbg !199
  %366 = tail call contract float @llvm.exp2.f32(float %add.i.i1017), !dbg !199
  %cond2.i.i1018 = select contract i1 %cmp.i.i1015, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i1019 = fmul contract float %cond2.i.i1018, %366, !dbg !199
  br label %if.end464, !dbg !201

if.end464:                                        ; preds = %if.then455, %if.then449
  %rescale.sroa.0.0 = phi float [ %mul.i.i1019, %if.then455 ], [ 0.000000e+00, %if.then449 ], !dbg !83
  %367 = bitcast float %rescale.sroa.0.0 to i32, !dbg !202
  %368 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %369 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %368) #11, !dbg !209
  %and.i.i1020 = and i32 %369, 1073741760, !dbg !210
  %add.i.i1021 = or disjoint i32 %and.i.i1020, %and469, !dbg !211
  %shl.i.i1022 = shl nuw i32 %add.i.i1021, 2, !dbg !212
  %370 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1022, i32 %367), !dbg !213
  %371 = bitcast i32 %370 to float, !dbg !214
  %372 = extractelement <4 x half> %64, i64 0, !dbg !215
  %conv.i1023 = fpext half %372 to float, !dbg !215
  %373 = extractelement <4 x half> %64, i64 1, !dbg !218
  %conv6.i = fpext half %373 to float, !dbg !218
  %374 = extractelement <4 x half> %64, i64 2, !dbg !219
  %conv.i1025 = fpext half %374 to float, !dbg !219
  %375 = extractelement <4 x half> %64, i64 3, !dbg !221
  %conv6.i1027 = fpext half %375 to float, !dbg !221
  %mul494 = fmul contract float %371, %conv.i1023, !dbg !222
  %mul498 = fmul contract float %371, %conv6.i, !dbg !223
  %mul502 = fmul contract float %371, %conv.i1025, !dbg !224
  %mul506 = fmul contract float %371, %conv6.i1027, !dbg !225
  %376 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %377 = fptrunc float %mul494 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %376), !dbg !226, !noalias !230
  %378 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %379 = fptrunc float %mul498 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %378), !dbg !235, !noalias !230
  %380 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %381 = fptrunc float %mul502 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %380), !dbg !237, !noalias !241
  %382 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %383 = fptrunc float %mul506 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %382), !dbg !246, !noalias !241
  %384 = insertelement <4 x half> poison, half %377, i64 0, !dbg !248
  %385 = insertelement <4 x half> %384, half %379, i64 1, !dbg !248
  %386 = insertelement <4 x half> %385, half %381, i64 2, !dbg !248
  %387 = insertelement <4 x half> %386, half %383, i64 3, !dbg !248
  %shr529 = lshr exact i32 %mul444, 1
  %add530 = add nuw nsw i32 %shr529, %shr140
  %cmp531 = icmp ult i32 %add530, 512
  %conv541 = zext nneg i32 %mul444 to i64
  br i1 %cmp531, label %if.then532, label %if.end576, !dbg !249

if.then532:                                       ; preds = %if.end464
  %388 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1108 = shl nuw nsw i64 %conv541, 7, !dbg !250
  %389 = getelementptr inbounds i8, ptr addrspace(4) %388, i64 %.idx1108, !dbg !250
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %389, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %389, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %389, i64 8, !dbg !251
  %condval_2.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %389, i64 12, !dbg !251
  %condval_2.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx, align 4, !dbg !251, !tbaa !30
  br label %if.end576, !dbg !252

if.end576:                                        ; preds = %if.end464, %if.then532
  %condval_2.sroa.7.0 = phi i32 [ %condval_2.sroa.7.0.copyload, %if.then532 ], [ 0, %if.end464 ], !dbg !83
  %condval_2.sroa.6.0 = phi i32 [ %condval_2.sroa.6.0.copyload, %if.then532 ], [ 0, %if.end464 ], !dbg !83
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then532 ], [ 0, %if.end464 ], !dbg !83
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then532 ], [ 0, %if.end464 ], !dbg !83
  br i1 %cmp531, label %if.then532.1, label %if.end576.1, !dbg !249

if.then532.1:                                     ; preds = %if.end576
  %390 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1108.1 = shl nuw nsw i64 %conv541, 7, !dbg !250
  %391 = getelementptr inbounds i8, ptr addrspace(4) %390, i64 %.idx1108.1, !dbg !250
  %add.ptr552.1 = getelementptr inbounds i8, ptr addrspace(4) %391, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %add.ptr552.1, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %391, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %391, i64 136, !dbg !251
  %condval_2.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %391, i64 140, !dbg !251
  %condval_2.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1, align 4, !dbg !251, !tbaa !30
  br label %if.end576.1, !dbg !252

if.end576.1:                                      ; preds = %if.then532.1, %if.end576
  %condval_2.sroa.7.0.1 = phi i32 [ %condval_2.sroa.7.0.copyload.1, %if.then532.1 ], [ 0, %if.end576 ], !dbg !83
  %condval_2.sroa.6.0.1 = phi i32 [ %condval_2.sroa.6.0.copyload.1, %if.then532.1 ], [ 0, %if.end576 ], !dbg !83
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then532.1 ], [ 0, %if.end576 ], !dbg !83
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then532.1 ], [ 0, %if.end576 ], !dbg !83
  %392 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul606, !dbg !253
  %add.ptr616.idx = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616 = getelementptr inbounds i8, ptr addrspace(3) %392, i32 %add.ptr616.idx, !dbg !253
  %v_column_local.sroa.130.0.insert.ext = shl i32 %condval_2.sroa.0.0.1, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext = and i32 %condval_2.sroa.0.0, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert = or disjoint i32 %v_column_local.sroa.130.0.insert.ext, %v_column_local.sroa.0.0.insert.ext, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr616, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.0.2.extract.shift = lshr i32 %condval_2.sroa.0.0, 16, !dbg !255
  %v_fetch_local.sroa.98.18.extract.shift = and i32 %condval_2.sroa.0.0.1, -65536, !dbg !254
  %add607.1 = or disjoint i32 %mul606, 128, !dbg !256
  %393 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.1, !dbg !253
  %xor612.1 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.1 = xor i32 %xor612.1, 4, !dbg !253
  %add.ptr616.1 = getelementptr inbounds i8, ptr addrspace(3) %393, i32 %add.ptr616.idx.1, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1283 = or disjoint i32 %v_fetch_local.sroa.98.18.extract.shift, %v_fetch_local.sroa.0.2.extract.shift, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1283, ptr addrspace(3) %add.ptr616.1, align 4, !dbg !254, !tbaa !30
  %add607.2 = or disjoint i32 %mul606, 256, !dbg !256
  %394 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.2, !dbg !253
  %xor612.2 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.2 = xor i32 %xor612.2, 8, !dbg !253
  %add.ptr616.2 = getelementptr inbounds i8, ptr addrspace(3) %394, i32 %add.ptr616.idx.2, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1538 = shl i32 %condval_2.sroa.5.0.1, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1285 = and i32 %condval_2.sroa.5.0, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1287 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1538, %v_column_local.sroa.0.0.insert.ext1285, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1287, ptr addrspace(3) %add.ptr616.2, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.26.6.extract.shift = lshr i32 %condval_2.sroa.5.0, 16, !dbg !255
  %v_fetch_local.sroa.122.22.extract.shift = and i32 %condval_2.sroa.5.0.1, -65536, !dbg !254
  %add607.3 = or disjoint i32 %mul606, 384, !dbg !256
  %395 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.3, !dbg !253
  %xor612.3 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.3 = xor i32 %xor612.3, 12, !dbg !253
  %add.ptr616.3 = getelementptr inbounds i8, ptr addrspace(3) %395, i32 %add.ptr616.idx.3, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1291 = or disjoint i32 %v_fetch_local.sroa.122.22.extract.shift, %v_fetch_local.sroa.26.6.extract.shift, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1291, ptr addrspace(3) %add.ptr616.3, align 4, !dbg !254, !tbaa !30
  %add607.4 = or disjoint i32 %mul606, 512, !dbg !256
  %396 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.4, !dbg !253
  %xor612.4 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.4 = xor i32 %xor612.4, 16, !dbg !253
  %add.ptr616.4 = getelementptr inbounds i8, ptr addrspace(3) %396, i32 %add.ptr616.idx.4, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1548 = shl i32 %condval_2.sroa.6.0.1, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1293 = and i32 %condval_2.sroa.6.0, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1295 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1548, %v_column_local.sroa.0.0.insert.ext1293, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1295, ptr addrspace(3) %add.ptr616.4, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.50.10.extract.shift = lshr i32 %condval_2.sroa.6.0, 16, !dbg !255
  %v_fetch_local.sroa.146.26.extract.shift = and i32 %condval_2.sroa.6.0.1, -65536, !dbg !254
  %add607.5 = or disjoint i32 %mul606, 640, !dbg !256
  %397 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.5, !dbg !253
  %xor612.5 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.5 = xor i32 %xor612.5, 20, !dbg !253
  %add.ptr616.5 = getelementptr inbounds i8, ptr addrspace(3) %397, i32 %add.ptr616.idx.5, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1299 = or disjoint i32 %v_fetch_local.sroa.146.26.extract.shift, %v_fetch_local.sroa.50.10.extract.shift, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1299, ptr addrspace(3) %add.ptr616.5, align 4, !dbg !254, !tbaa !30
  %add607.6 = or disjoint i32 %mul606, 768, !dbg !256
  %398 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.6, !dbg !253
  %xor612.6 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.6 = xor i32 %xor612.6, 24, !dbg !253
  %add.ptr616.6 = getelementptr inbounds i8, ptr addrspace(3) %398, i32 %add.ptr616.idx.6, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1558 = shl i32 %condval_2.sroa.7.0.1, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1301 = and i32 %condval_2.sroa.7.0, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1303 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1558, %v_column_local.sroa.0.0.insert.ext1301, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1303, ptr addrspace(3) %add.ptr616.6, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.74.14.extract.shift = lshr i32 %condval_2.sroa.7.0, 16, !dbg !255
  %v_fetch_local.sroa.170.30.extract.shift = and i32 %condval_2.sroa.7.0.1, -65536, !dbg !254
  %add607.7 = or disjoint i32 %mul606, 896, !dbg !256
  %399 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.7, !dbg !253
  %xor612.7 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.7 = xor i32 %xor612.7, 28, !dbg !253
  %add.ptr616.7 = getelementptr inbounds i8, ptr addrspace(3) %399, i32 %add.ptr616.idx.7, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1307 = or disjoint i32 %v_fetch_local.sroa.170.30.extract.shift, %v_fetch_local.sroa.74.14.extract.shift, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1307, ptr addrspace(3) %add.ptr616.7, align 4, !dbg !254, !tbaa !30
  fence syncscope("warp") release, !dbg !257
  tail call void @llvm.mxc.barrier.warp(), !dbg !260
  fence syncscope("warp") acquire, !dbg !261
  %add637 = or disjoint i32 %mul630, %mul636
  %xor647 = xor i32 %shr645, %and611
  %400 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637
  %xor650 = xor i32 %xor647, %mul640, !dbg !262
  %add.ptr654.idx = shl nuw nsw i32 %xor650, 2, !dbg !263
  %add.ptr654 = getelementptr inbounds i8, ptr addrspace(3) %400, i32 %add.ptr654.idx, !dbg !263
  %401 = load i32, ptr addrspace(3) %add.ptr654, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.0.0.vec.insert = insertelement <2 x i32> poison, i32 %401, i64 0, !dbg !264
  %add641.1 = or i32 %shr140, 1, !dbg !265
  %xor650.1 = xor i32 %xor647, %add641.1, !dbg !262
  %add.ptr654.idx.1 = shl nuw nsw i32 %xor650.1, 2, !dbg !263
  %add.ptr654.1 = getelementptr inbounds i8, ptr addrspace(3) %400, i32 %add.ptr654.idx.1, !dbg !263
  %402 = load i32, ptr addrspace(3) %add.ptr654.1, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.0.4.vec.insert = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert, i32 %402, i64 1, !dbg !264
  %add632.1 = or disjoint i32 %mul630, %mul636
  %add637.1 = or disjoint i32 %add632.1, 32
  %add646.1 = or disjoint i32 %shr645, 2
  %xor647.1 = xor i32 %add646.1, %and611
  %403 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.1
  %xor650.11186 = xor i32 %xor647.1, %mul640, !dbg !262
  %add.ptr654.idx.11187 = shl nuw nsw i32 %xor650.11186, 2, !dbg !263
  %add.ptr654.11188 = getelementptr inbounds i8, ptr addrspace(3) %403, i32 %add.ptr654.idx.11187, !dbg !263
  %404 = load i32, ptr addrspace(3) %add.ptr654.11188, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.26.8.vec.insert = insertelement <2 x i32> poison, i32 %404, i64 0, !dbg !264
  %xor650.1.1 = xor i32 %xor647.1, %add641.1, !dbg !262
  %add.ptr654.idx.1.1 = shl nuw nsw i32 %xor650.1.1, 2, !dbg !263
  %add.ptr654.1.1 = getelementptr inbounds i8, ptr addrspace(3) %403, i32 %add.ptr654.idx.1.1, !dbg !263
  %405 = load i32, ptr addrspace(3) %add.ptr654.1.1, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.26.12.vec.insert = insertelement <2 x i32> %v_operand.sroa.26.8.vec.insert, i32 %405, i64 1, !dbg !264
  %add632.2 = or disjoint i32 %mul630, %mul636
  %add637.2 = or disjoint i32 %add632.2, 64
  %add646.2 = or disjoint i32 %shr645, 4
  %xor647.2 = xor i32 %add646.2, %and611
  %406 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.2
  %xor650.2 = xor i32 %xor647.2, %mul640, !dbg !262
  %add.ptr654.idx.2 = shl nuw nsw i32 %xor650.2, 2, !dbg !263
  %add.ptr654.2 = getelementptr inbounds i8, ptr addrspace(3) %406, i32 %add.ptr654.idx.2, !dbg !263
  %407 = load i32, ptr addrspace(3) %add.ptr654.2, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.50.16.vec.insert = insertelement <2 x i32> poison, i32 %407, i64 0, !dbg !264
  %xor650.1.2 = xor i32 %xor647.2, %add641.1, !dbg !262
  %add.ptr654.idx.1.2 = shl nuw nsw i32 %xor650.1.2, 2, !dbg !263
  %add.ptr654.1.2 = getelementptr inbounds i8, ptr addrspace(3) %406, i32 %add.ptr654.idx.1.2, !dbg !263
  %408 = load i32, ptr addrspace(3) %add.ptr654.1.2, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.50.20.vec.insert = insertelement <2 x i32> %v_operand.sroa.50.16.vec.insert, i32 %408, i64 1, !dbg !264
  %add632.3 = or disjoint i32 %mul630, %mul636
  %add637.3 = or disjoint i32 %add632.3, 96
  %add646.3 = or disjoint i32 %shr645, 6
  %xor647.3 = xor i32 %add646.3, %and611
  %409 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.3
  %xor650.3 = xor i32 %xor647.3, %mul640, !dbg !262
  %add.ptr654.idx.3 = shl nuw nsw i32 %xor650.3, 2, !dbg !263
  %add.ptr654.3 = getelementptr inbounds i8, ptr addrspace(3) %409, i32 %add.ptr654.idx.3, !dbg !263
  %410 = load i32, ptr addrspace(3) %add.ptr654.3, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.74.24.vec.insert = insertelement <2 x i32> poison, i32 %410, i64 0, !dbg !264
  %xor650.1.3 = xor i32 %xor647.3, %add641.1, !dbg !262
  %add.ptr654.idx.1.3 = shl nuw nsw i32 %xor650.1.3, 2, !dbg !263
  %add.ptr654.1.3 = getelementptr inbounds i8, ptr addrspace(3) %409, i32 %add.ptr654.idx.1.3, !dbg !263
  %411 = load i32, ptr addrspace(3) %add.ptr654.1.3, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.74.28.vec.insert = insertelement <2 x i32> %v_operand.sroa.74.24.vec.insert, i32 %411, i64 1, !dbg !264
  %412 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert to <4 x half>, !dbg !266
  %413 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %412, <4 x half> %387, <4 x float> zeroinitializer), !dbg !267
  %414 = bitcast <2 x i32> %v_operand.sroa.26.12.vec.insert to <4 x half>, !dbg !266
  %415 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %414, <4 x half> %387, <4 x float> zeroinitializer), !dbg !267
  %416 = bitcast <2 x i32> %v_operand.sroa.50.20.vec.insert to <4 x half>, !dbg !266
  %417 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %416, <4 x half> %387, <4 x float> zeroinitializer), !dbg !267
  %418 = bitcast <2 x i32> %v_operand.sroa.74.28.vec.insert to <4 x half>, !dbg !266
  %419 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %418, <4 x half> %387, <4 x float> zeroinitializer), !dbg !267
  br label %if.end686, !dbg !268

if.end686:                                        ; preds = %if.end576.1, %if.end415.7
  %bc2827 = phi <4 x half> [ %64, %if.end415.7 ], [ %387, %if.end576.1 ], !dbg !83
  %output_acc.sroa.98.0 = phi <4 x float> [ zeroinitializer, %if.end415.7 ], [ %419, %if.end576.1 ], !dbg !83
  %output_acc.sroa.66.0 = phi <4 x float> [ zeroinitializer, %if.end415.7 ], [ %417, %if.end576.1 ], !dbg !83
  %output_acc.sroa.34.0 = phi <4 x float> [ zeroinitializer, %if.end415.7 ], [ %415, %if.end576.1 ], !dbg !83
  %output_acc.sroa.0.0 = phi <4 x float> [ zeroinitializer, %if.end415.7 ], [ %413, %if.end576.1 ], !dbg !83
  %420 = load i32, ptr addrspace(1) %arrayidx130.1, align 4, !dbg !186, !tbaa !30
  %mul444.1 = shl nsw i32 %420, 4, !dbg !187
  %cmp445.1 = icmp slt i32 %420, 0, !dbg !188
  %cmp448.not.1 = icmp sgt i32 %mul444.1, %1
  %or.cond1071.1 = select i1 %cmp445.1, i1 true, i1 %cmp448.not.1, !dbg !189
  br i1 %or.cond1071.1, label %if.end686.1, label %if.then449.1, !dbg !189

if.then449.1:                                     ; preds = %if.end686
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454.1 = icmp eq i32 %shr324, 1, !dbg !195
  br i1 %cmp454.1, label %if.then455.1, label %if.end464.1, !dbg !196

if.then455.1:                                     ; preds = %if.then449.1
  %sub460.1 = fsub contract float %max_cache.sroa.0.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461.1 = fmul contract float %sub460.1, 0x3FC7154760000000, !dbg !198
  %cmp.i.i1015.1 = fcmp contract olt float %mul461.1, -1.260000e+02, !dbg !199
  %cond.i.i1016.1 = select contract i1 %cmp.i.i1015.1, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i1017.1 = fadd contract float %mul461.1, %cond.i.i1016.1, !dbg !199
  %421 = tail call contract float @llvm.exp2.f32(float %add.i.i1017.1), !dbg !199
  %cond2.i.i1018.1 = select contract i1 %cmp.i.i1015.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i1019.1 = fmul contract float %cond2.i.i1018.1, %421, !dbg !199
  br label %if.end464.1, !dbg !201

if.end464.1:                                      ; preds = %if.then455.1, %if.then449.1
  %rescale.sroa.0.0.1 = phi float [ %mul.i.i1019.1, %if.then455.1 ], [ 0.000000e+00, %if.then449.1 ], !dbg !83
  %422 = bitcast float %rescale.sroa.0.0.1 to i32, !dbg !202
  %423 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %424 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %423) #11, !dbg !209
  %rem.i.i.1 = or disjoint i32 %and469, 16, !dbg !269
  %and.i.i1020.1 = and i32 %424, 1073741760, !dbg !210
  %add.i.i1021.1 = or disjoint i32 %and.i.i1020.1, %rem.i.i.1, !dbg !211
  %shl.i.i1022.1 = shl nuw i32 %add.i.i1021.1, 2, !dbg !212
  %425 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1022.1, i32 %422), !dbg !213
  %426 = bitcast i32 %425 to float, !dbg !214
  %427 = extractelement <4 x half> %106, i64 0, !dbg !215
  %conv.i1023.1 = fpext half %427 to float, !dbg !215
  %428 = extractelement <4 x half> %106, i64 1, !dbg !218
  %conv6.i.1 = fpext half %428 to float, !dbg !218
  %429 = extractelement <4 x half> %106, i64 2, !dbg !219
  %conv.i1025.1 = fpext half %429 to float, !dbg !219
  %430 = extractelement <4 x half> %106, i64 3, !dbg !221
  %conv6.i1027.1 = fpext half %430 to float, !dbg !221
  %mul494.1 = fmul contract float %426, %conv.i1023.1, !dbg !222
  %mul498.1 = fmul contract float %426, %conv6.i.1, !dbg !223
  %mul502.1 = fmul contract float %426, %conv.i1025.1, !dbg !224
  %mul506.1 = fmul contract float %426, %conv6.i1027.1, !dbg !225
  %431 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %432 = fptrunc float %mul494.1 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %431), !dbg !226, !noalias !230
  %433 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %434 = fptrunc float %mul498.1 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %433), !dbg !235, !noalias !230
  %435 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %436 = fptrunc float %mul502.1 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %435), !dbg !237, !noalias !241
  %437 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %438 = fptrunc float %mul506.1 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %437), !dbg !246, !noalias !241
  %439 = insertelement <4 x half> poison, half %432, i64 0, !dbg !248
  %440 = insertelement <4 x half> %439, half %434, i64 1, !dbg !248
  %441 = insertelement <4 x half> %440, half %436, i64 2, !dbg !248
  %442 = insertelement <4 x half> %441, half %438, i64 3, !dbg !248
  %shr529.1 = lshr exact i32 %mul444.1, 1
  %add530.1 = add nuw nsw i32 %shr529.1, %shr140
  %cmp531.1 = icmp ult i32 %add530.1, 512
  %conv541.1 = zext nneg i32 %mul444.1 to i64
  br i1 %cmp531.1, label %if.then532.11203, label %if.end576.11211, !dbg !249

if.then532.11203:                                 ; preds = %if.end464.1
  %443 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1108.11195 = shl nuw nsw i64 %conv541.1, 7, !dbg !250
  %444 = getelementptr inbounds i8, ptr addrspace(4) %443, i64 %.idx1108.11195, !dbg !250
  %condval_2.sroa.0.0.copyload.11196 = load i32, ptr addrspace(4) %444, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.11197 = getelementptr inbounds i8, ptr addrspace(4) %444, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload.11198 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.11197, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.11199 = getelementptr inbounds i8, ptr addrspace(4) %444, i64 8, !dbg !251
  %condval_2.sroa.6.0.copyload.11200 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.11199, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.11201 = getelementptr inbounds i8, ptr addrspace(4) %444, i64 12, !dbg !251
  %condval_2.sroa.7.0.copyload.11202 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.11201, align 4, !dbg !251, !tbaa !30
  br label %if.end576.11211, !dbg !252

if.end576.11211:                                  ; preds = %if.then532.11203, %if.end464.1
  %condval_2.sroa.7.0.11204 = phi i32 [ %condval_2.sroa.7.0.copyload.11202, %if.then532.11203 ], [ 0, %if.end464.1 ], !dbg !83
  %condval_2.sroa.6.0.11205 = phi i32 [ %condval_2.sroa.6.0.copyload.11200, %if.then532.11203 ], [ 0, %if.end464.1 ], !dbg !83
  %condval_2.sroa.5.0.11206 = phi i32 [ %condval_2.sroa.5.0.copyload.11198, %if.then532.11203 ], [ 0, %if.end464.1 ], !dbg !83
  %condval_2.sroa.0.0.11207 = phi i32 [ %condval_2.sroa.0.0.copyload.11196, %if.then532.11203 ], [ 0, %if.end464.1 ], !dbg !83
  br i1 %cmp531.1, label %if.then532.1.1, label %if.end576.1.1, !dbg !249

if.then532.1.1:                                   ; preds = %if.end576.11211
  %445 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1108.1.1 = shl nuw nsw i64 %conv541.1, 7, !dbg !250
  %446 = getelementptr inbounds i8, ptr addrspace(4) %445, i64 %.idx1108.1.1, !dbg !250
  %add.ptr552.1.1 = getelementptr inbounds i8, ptr addrspace(4) %446, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %add.ptr552.1.1, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %446, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.1, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %446, i64 136, !dbg !251
  %condval_2.sroa.6.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.1, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %446, i64 140, !dbg !251
  %condval_2.sroa.7.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.1, align 4, !dbg !251, !tbaa !30
  br label %if.end576.1.1, !dbg !252

if.end576.1.1:                                    ; preds = %if.then532.1.1, %if.end576.11211
  %condval_2.sroa.7.0.1.1 = phi i32 [ %condval_2.sroa.7.0.copyload.1.1, %if.then532.1.1 ], [ 0, %if.end576.11211 ], !dbg !83
  %condval_2.sroa.6.0.1.1 = phi i32 [ %condval_2.sroa.6.0.copyload.1.1, %if.then532.1.1 ], [ 0, %if.end576.11211 ], !dbg !83
  %condval_2.sroa.5.0.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1, %if.then532.1.1 ], [ 0, %if.end576.11211 ], !dbg !83
  %condval_2.sroa.0.0.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1, %if.then532.1.1 ], [ 0, %if.end576.11211 ], !dbg !83
  %447 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul606, !dbg !253
  %add.ptr616.idx.11214 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.11215 = getelementptr inbounds i8, ptr addrspace(3) %447, i32 %add.ptr616.idx.11214, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1568 = shl i32 %condval_2.sroa.0.0.1.1, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1309 = and i32 %condval_2.sroa.0.0.11207, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1311 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1568, %v_column_local.sroa.0.0.insert.ext1309, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1311, ptr addrspace(3) %add.ptr616.11215, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.0.2.extract.shift2006 = lshr i32 %condval_2.sroa.0.0.11207, 16, !dbg !255
  %v_fetch_local.sroa.98.18.extract.shift2146 = and i32 %condval_2.sroa.0.0.1.1, -65536, !dbg !254
  %add607.1.1 = or disjoint i32 %mul606, 128, !dbg !256
  %448 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.1.1, !dbg !253
  %xor612.1.1 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.1.1 = xor i32 %xor612.1.1, 4, !dbg !253
  %add.ptr616.1.1 = getelementptr inbounds i8, ptr addrspace(3) %448, i32 %add.ptr616.idx.1.1, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1315 = or disjoint i32 %v_fetch_local.sroa.98.18.extract.shift2146, %v_fetch_local.sroa.0.2.extract.shift2006, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1315, ptr addrspace(3) %add.ptr616.1.1, align 4, !dbg !254, !tbaa !30
  %add607.2.1 = or disjoint i32 %mul606, 256, !dbg !256
  %449 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.2.1, !dbg !253
  %xor612.2.1 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.2.1 = xor i32 %xor612.2.1, 8, !dbg !253
  %add.ptr616.2.1 = getelementptr inbounds i8, ptr addrspace(3) %449, i32 %add.ptr616.idx.2.1, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1578 = shl i32 %condval_2.sroa.5.0.1.1, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1317 = and i32 %condval_2.sroa.5.0.11206, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1319 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1578, %v_column_local.sroa.0.0.insert.ext1317, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1319, ptr addrspace(3) %add.ptr616.2.1, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.26.6.extract.shift2041 = lshr i32 %condval_2.sroa.5.0.11206, 16, !dbg !255
  %v_fetch_local.sroa.122.22.extract.shift2181 = and i32 %condval_2.sroa.5.0.1.1, -65536, !dbg !254
  %add607.3.1 = or disjoint i32 %mul606, 384, !dbg !256
  %450 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.3.1, !dbg !253
  %xor612.3.1 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.3.1 = xor i32 %xor612.3.1, 12, !dbg !253
  %add.ptr616.3.1 = getelementptr inbounds i8, ptr addrspace(3) %450, i32 %add.ptr616.idx.3.1, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1323 = or disjoint i32 %v_fetch_local.sroa.122.22.extract.shift2181, %v_fetch_local.sroa.26.6.extract.shift2041, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1323, ptr addrspace(3) %add.ptr616.3.1, align 4, !dbg !254, !tbaa !30
  %add607.4.1 = or disjoint i32 %mul606, 512, !dbg !256
  %451 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.4.1, !dbg !253
  %xor612.4.1 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.4.1 = xor i32 %xor612.4.1, 16, !dbg !253
  %add.ptr616.4.1 = getelementptr inbounds i8, ptr addrspace(3) %451, i32 %add.ptr616.idx.4.1, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1588 = shl i32 %condval_2.sroa.6.0.1.1, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1325 = and i32 %condval_2.sroa.6.0.11205, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1327 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1588, %v_column_local.sroa.0.0.insert.ext1325, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1327, ptr addrspace(3) %add.ptr616.4.1, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.50.10.extract.shift2076 = lshr i32 %condval_2.sroa.6.0.11205, 16, !dbg !255
  %v_fetch_local.sroa.146.26.extract.shift2216 = and i32 %condval_2.sroa.6.0.1.1, -65536, !dbg !254
  %add607.5.1 = or disjoint i32 %mul606, 640, !dbg !256
  %452 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.5.1, !dbg !253
  %xor612.5.1 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.5.1 = xor i32 %xor612.5.1, 20, !dbg !253
  %add.ptr616.5.1 = getelementptr inbounds i8, ptr addrspace(3) %452, i32 %add.ptr616.idx.5.1, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1331 = or disjoint i32 %v_fetch_local.sroa.146.26.extract.shift2216, %v_fetch_local.sroa.50.10.extract.shift2076, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1331, ptr addrspace(3) %add.ptr616.5.1, align 4, !dbg !254, !tbaa !30
  %add607.6.1 = or disjoint i32 %mul606, 768, !dbg !256
  %453 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.6.1, !dbg !253
  %xor612.6.1 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.6.1 = xor i32 %xor612.6.1, 24, !dbg !253
  %add.ptr616.6.1 = getelementptr inbounds i8, ptr addrspace(3) %453, i32 %add.ptr616.idx.6.1, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1598 = shl i32 %condval_2.sroa.7.0.1.1, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1333 = and i32 %condval_2.sroa.7.0.11204, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1335 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1598, %v_column_local.sroa.0.0.insert.ext1333, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1335, ptr addrspace(3) %add.ptr616.6.1, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.74.14.extract.shift2111 = lshr i32 %condval_2.sroa.7.0.11204, 16, !dbg !255
  %v_fetch_local.sroa.170.30.extract.shift2251 = and i32 %condval_2.sroa.7.0.1.1, -65536, !dbg !254
  %add607.7.1 = or disjoint i32 %mul606, 896, !dbg !256
  %454 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.7.1, !dbg !253
  %xor612.7.1 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.7.1 = xor i32 %xor612.7.1, 28, !dbg !253
  %add.ptr616.7.1 = getelementptr inbounds i8, ptr addrspace(3) %454, i32 %add.ptr616.idx.7.1, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1339 = or disjoint i32 %v_fetch_local.sroa.170.30.extract.shift2251, %v_fetch_local.sroa.74.14.extract.shift2111, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1339, ptr addrspace(3) %add.ptr616.7.1, align 4, !dbg !254, !tbaa !30
  fence syncscope("warp") release, !dbg !257
  tail call void @llvm.mxc.barrier.warp(), !dbg !260
  fence syncscope("warp") acquire, !dbg !261
  %add637.11217 = or disjoint i32 %mul630, %mul636
  %xor647.11218 = xor i32 %shr645, %and611
  %455 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.11217
  %xor650.11219 = xor i32 %xor647.11218, %mul640, !dbg !262
  %add.ptr654.idx.11220 = shl nuw nsw i32 %xor650.11219, 2, !dbg !263
  %add.ptr654.11221 = getelementptr inbounds i8, ptr addrspace(3) %455, i32 %add.ptr654.idx.11220, !dbg !263
  %456 = load i32, ptr addrspace(3) %add.ptr654.11221, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1856 = insertelement <2 x i32> poison, i32 %456, i64 0, !dbg !264
  %add641.1.11222 = or i32 %shr140, 1, !dbg !265
  %xor650.1.11223 = xor i32 %xor647.11218, %add641.1.11222, !dbg !262
  %add.ptr654.idx.1.11224 = shl nuw nsw i32 %xor650.1.11223, 2, !dbg !263
  %add.ptr654.1.11225 = getelementptr inbounds i8, ptr addrspace(3) %455, i32 %add.ptr654.idx.1.11224, !dbg !263
  %457 = load i32, ptr addrspace(3) %add.ptr654.1.11225, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1870 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1856, i32 %457, i64 1, !dbg !264
  %add632.1.1 = or disjoint i32 %mul630, %mul636
  %add637.1.1 = or disjoint i32 %add632.1.1, 32
  %add646.1.1 = or disjoint i32 %shr645, 2
  %xor647.1.1 = xor i32 %add646.1.1, %and611
  %458 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.1.1
  %xor650.11186.1 = xor i32 %xor647.1.1, %mul640, !dbg !262
  %add.ptr654.idx.11187.1 = shl nuw nsw i32 %xor650.11186.1, 2, !dbg !263
  %add.ptr654.11188.1 = getelementptr inbounds i8, ptr addrspace(3) %458, i32 %add.ptr654.idx.11187.1, !dbg !263
  %459 = load i32, ptr addrspace(3) %add.ptr654.11188.1, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.26.8.vec.insert1892 = insertelement <2 x i32> poison, i32 %459, i64 0, !dbg !264
  %xor650.1.1.1 = xor i32 %xor647.1.1, %add641.1.11222, !dbg !262
  %add.ptr654.idx.1.1.1 = shl nuw nsw i32 %xor650.1.1.1, 2, !dbg !263
  %add.ptr654.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %458, i32 %add.ptr654.idx.1.1.1, !dbg !263
  %460 = load i32, ptr addrspace(3) %add.ptr654.1.1.1, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.26.12.vec.insert1906 = insertelement <2 x i32> %v_operand.sroa.26.8.vec.insert1892, i32 %460, i64 1, !dbg !264
  %add632.2.1 = or disjoint i32 %mul630, %mul636
  %add637.2.1 = or disjoint i32 %add632.2.1, 64
  %add646.2.1 = or disjoint i32 %shr645, 4
  %xor647.2.1 = xor i32 %add646.2.1, %and611
  %461 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.2.1
  %xor650.2.1 = xor i32 %xor647.2.1, %mul640, !dbg !262
  %add.ptr654.idx.2.1 = shl nuw nsw i32 %xor650.2.1, 2, !dbg !263
  %add.ptr654.2.1 = getelementptr inbounds i8, ptr addrspace(3) %461, i32 %add.ptr654.idx.2.1, !dbg !263
  %462 = load i32, ptr addrspace(3) %add.ptr654.2.1, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.50.16.vec.insert1928 = insertelement <2 x i32> poison, i32 %462, i64 0, !dbg !264
  %xor650.1.2.1 = xor i32 %xor647.2.1, %add641.1.11222, !dbg !262
  %add.ptr654.idx.1.2.1 = shl nuw nsw i32 %xor650.1.2.1, 2, !dbg !263
  %add.ptr654.1.2.1 = getelementptr inbounds i8, ptr addrspace(3) %461, i32 %add.ptr654.idx.1.2.1, !dbg !263
  %463 = load i32, ptr addrspace(3) %add.ptr654.1.2.1, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.50.20.vec.insert1942 = insertelement <2 x i32> %v_operand.sroa.50.16.vec.insert1928, i32 %463, i64 1, !dbg !264
  %add632.3.1 = or disjoint i32 %mul630, %mul636
  %add637.3.1 = or disjoint i32 %add632.3.1, 96
  %add646.3.1 = or disjoint i32 %shr645, 6
  %xor647.3.1 = xor i32 %add646.3.1, %and611
  %464 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.3.1
  %xor650.3.1 = xor i32 %xor647.3.1, %mul640, !dbg !262
  %add.ptr654.idx.3.1 = shl nuw nsw i32 %xor650.3.1, 2, !dbg !263
  %add.ptr654.3.1 = getelementptr inbounds i8, ptr addrspace(3) %464, i32 %add.ptr654.idx.3.1, !dbg !263
  %465 = load i32, ptr addrspace(3) %add.ptr654.3.1, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.74.24.vec.insert1964 = insertelement <2 x i32> poison, i32 %465, i64 0, !dbg !264
  %xor650.1.3.1 = xor i32 %xor647.3.1, %add641.1.11222, !dbg !262
  %add.ptr654.idx.1.3.1 = shl nuw nsw i32 %xor650.1.3.1, 2, !dbg !263
  %add.ptr654.1.3.1 = getelementptr inbounds i8, ptr addrspace(3) %464, i32 %add.ptr654.idx.1.3.1, !dbg !263
  %466 = load i32, ptr addrspace(3) %add.ptr654.1.3.1, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.74.28.vec.insert1978 = insertelement <2 x i32> %v_operand.sroa.74.24.vec.insert1964, i32 %466, i64 1, !dbg !264
  %467 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1870 to <4 x half>, !dbg !266
  %468 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %467, <4 x half> %442, <4 x float> %output_acc.sroa.0.0), !dbg !267
  %469 = bitcast <2 x i32> %v_operand.sroa.26.12.vec.insert1906 to <4 x half>, !dbg !266
  %470 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %469, <4 x half> %442, <4 x float> %output_acc.sroa.34.0), !dbg !267
  %471 = bitcast <2 x i32> %v_operand.sroa.50.20.vec.insert1942 to <4 x half>, !dbg !266
  %472 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %471, <4 x half> %442, <4 x float> %output_acc.sroa.66.0), !dbg !267
  %473 = bitcast <2 x i32> %v_operand.sroa.74.28.vec.insert1978 to <4 x half>, !dbg !266
  %474 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %473, <4 x half> %442, <4 x float> %output_acc.sroa.98.0), !dbg !267
  br label %if.end686.1, !dbg !268

if.end686.1:                                      ; preds = %if.end576.1.1, %if.end686
  %bc2831 = phi <4 x half> [ %106, %if.end686 ], [ %442, %if.end576.1.1 ], !dbg !83
  %output_acc.sroa.98.1 = phi <4 x float> [ %output_acc.sroa.98.0, %if.end686 ], [ %474, %if.end576.1.1 ], !dbg !83
  %output_acc.sroa.66.1 = phi <4 x float> [ %output_acc.sroa.66.0, %if.end686 ], [ %472, %if.end576.1.1 ], !dbg !83
  %output_acc.sroa.34.1 = phi <4 x float> [ %output_acc.sroa.34.0, %if.end686 ], [ %470, %if.end576.1.1 ], !dbg !83
  %output_acc.sroa.0.1 = phi <4 x float> [ %output_acc.sroa.0.0, %if.end686 ], [ %468, %if.end576.1.1 ], !dbg !83
  %475 = load i32, ptr addrspace(1) %arrayidx130.2, align 4, !dbg !186, !tbaa !30
  %mul444.2 = shl nsw i32 %475, 4, !dbg !187
  %cmp445.2 = icmp slt i32 %475, 0, !dbg !188
  %cmp448.not.2 = icmp sgt i32 %mul444.2, %1
  %or.cond1071.2 = select i1 %cmp445.2, i1 true, i1 %cmp448.not.2, !dbg !189
  br i1 %or.cond1071.2, label %if.end686.2, label %if.then449.2, !dbg !189

if.then449.2:                                     ; preds = %if.end686.1
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454.2 = icmp eq i32 %shr324, 2, !dbg !195
  br i1 %cmp454.2, label %if.then455.2, label %if.end464.2, !dbg !196

if.then455.2:                                     ; preds = %if.then449.2
  %sub460.2 = fsub contract float %max_cache.sroa.0.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461.2 = fmul contract float %sub460.2, 0x3FC7154760000000, !dbg !198
  %cmp.i.i1015.2 = fcmp contract olt float %mul461.2, -1.260000e+02, !dbg !199
  %cond.i.i1016.2 = select contract i1 %cmp.i.i1015.2, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i1017.2 = fadd contract float %mul461.2, %cond.i.i1016.2, !dbg !199
  %476 = tail call contract float @llvm.exp2.f32(float %add.i.i1017.2), !dbg !199
  %cond2.i.i1018.2 = select contract i1 %cmp.i.i1015.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i1019.2 = fmul contract float %cond2.i.i1018.2, %476, !dbg !199
  br label %if.end464.2, !dbg !201

if.end464.2:                                      ; preds = %if.then455.2, %if.then449.2
  %rescale.sroa.0.0.2 = phi float [ %mul.i.i1019.2, %if.then455.2 ], [ 0.000000e+00, %if.then449.2 ], !dbg !83
  %477 = bitcast float %rescale.sroa.0.0.2 to i32, !dbg !202
  %478 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %479 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %478) #11, !dbg !209
  %rem.i.i.2 = or disjoint i32 %and469, 32, !dbg !269
  %and.i.i1020.2 = and i32 %479, 1073741760, !dbg !210
  %add.i.i1021.2 = or disjoint i32 %and.i.i1020.2, %rem.i.i.2, !dbg !211
  %shl.i.i1022.2 = shl nuw i32 %add.i.i1021.2, 2, !dbg !212
  %480 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1022.2, i32 %477), !dbg !213
  %481 = bitcast i32 %480 to float, !dbg !214
  %482 = extractelement <4 x half> %148, i64 0, !dbg !215
  %conv.i1023.2 = fpext half %482 to float, !dbg !215
  %483 = extractelement <4 x half> %148, i64 1, !dbg !218
  %conv6.i.2 = fpext half %483 to float, !dbg !218
  %484 = extractelement <4 x half> %148, i64 2, !dbg !219
  %conv.i1025.2 = fpext half %484 to float, !dbg !219
  %485 = extractelement <4 x half> %148, i64 3, !dbg !221
  %conv6.i1027.2 = fpext half %485 to float, !dbg !221
  %mul494.2 = fmul contract float %481, %conv.i1023.2, !dbg !222
  %mul498.2 = fmul contract float %481, %conv6.i.2, !dbg !223
  %mul502.2 = fmul contract float %481, %conv.i1025.2, !dbg !224
  %mul506.2 = fmul contract float %481, %conv6.i1027.2, !dbg !225
  %486 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %487 = fptrunc float %mul494.2 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %486), !dbg !226, !noalias !230
  %488 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %489 = fptrunc float %mul498.2 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %488), !dbg !235, !noalias !230
  %490 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %491 = fptrunc float %mul502.2 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %490), !dbg !237, !noalias !241
  %492 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %493 = fptrunc float %mul506.2 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %492), !dbg !246, !noalias !241
  %494 = insertelement <4 x half> poison, half %487, i64 0, !dbg !248
  %495 = insertelement <4 x half> %494, half %489, i64 1, !dbg !248
  %496 = insertelement <4 x half> %495, half %491, i64 2, !dbg !248
  %497 = insertelement <4 x half> %496, half %493, i64 3, !dbg !248
  %shr529.2 = lshr exact i32 %mul444.2, 1
  %add530.2 = add nuw nsw i32 %shr529.2, %shr140
  %cmp531.2 = icmp ult i32 %add530.2, 512
  %conv541.2 = zext nneg i32 %mul444.2 to i64
  br i1 %cmp531.2, label %if.then532.2, label %if.end576.2, !dbg !249

if.then532.2:                                     ; preds = %if.end464.2
  %498 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1108.2 = shl nuw nsw i64 %conv541.2, 7, !dbg !250
  %499 = getelementptr inbounds i8, ptr addrspace(4) %498, i64 %.idx1108.2, !dbg !250
  %condval_2.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %499, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %499, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.2, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %499, i64 8, !dbg !251
  %condval_2.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.2, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %499, i64 12, !dbg !251
  %condval_2.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.2, align 4, !dbg !251, !tbaa !30
  br label %if.end576.2, !dbg !252

if.end576.2:                                      ; preds = %if.then532.2, %if.end464.2
  %condval_2.sroa.7.0.2 = phi i32 [ %condval_2.sroa.7.0.copyload.2, %if.then532.2 ], [ 0, %if.end464.2 ], !dbg !83
  %condval_2.sroa.6.0.2 = phi i32 [ %condval_2.sroa.6.0.copyload.2, %if.then532.2 ], [ 0, %if.end464.2 ], !dbg !83
  %condval_2.sroa.5.0.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2, %if.then532.2 ], [ 0, %if.end464.2 ], !dbg !83
  %condval_2.sroa.0.0.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2, %if.then532.2 ], [ 0, %if.end464.2 ], !dbg !83
  br i1 %cmp531.2, label %if.then532.1.2, label %if.end576.1.2, !dbg !249

if.then532.1.2:                                   ; preds = %if.end576.2
  %500 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1108.1.2 = shl nuw nsw i64 %conv541.2, 7, !dbg !250
  %501 = getelementptr inbounds i8, ptr addrspace(4) %500, i64 %.idx1108.1.2, !dbg !250
  %add.ptr552.1.2 = getelementptr inbounds i8, ptr addrspace(4) %501, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %add.ptr552.1.2, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %501, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.2, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %501, i64 136, !dbg !251
  %condval_2.sroa.6.0.copyload.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.2, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %501, i64 140, !dbg !251
  %condval_2.sroa.7.0.copyload.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.2, align 4, !dbg !251, !tbaa !30
  br label %if.end576.1.2, !dbg !252

if.end576.1.2:                                    ; preds = %if.then532.1.2, %if.end576.2
  %condval_2.sroa.7.0.1.2 = phi i32 [ %condval_2.sroa.7.0.copyload.1.2, %if.then532.1.2 ], [ 0, %if.end576.2 ], !dbg !83
  %condval_2.sroa.6.0.1.2 = phi i32 [ %condval_2.sroa.6.0.copyload.1.2, %if.then532.1.2 ], [ 0, %if.end576.2 ], !dbg !83
  %condval_2.sroa.5.0.1.2 = phi i32 [ %condval_2.sroa.5.0.copyload.1.2, %if.then532.1.2 ], [ 0, %if.end576.2 ], !dbg !83
  %condval_2.sroa.0.0.1.2 = phi i32 [ %condval_2.sroa.0.0.copyload.1.2, %if.then532.1.2 ], [ 0, %if.end576.2 ], !dbg !83
  %502 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul606, !dbg !253
  %add.ptr616.idx.21229 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.21230 = getelementptr inbounds i8, ptr addrspace(3) %502, i32 %add.ptr616.idx.21229, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1608 = shl i32 %condval_2.sroa.0.0.1.2, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1341 = and i32 %condval_2.sroa.0.0.2, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1343 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1608, %v_column_local.sroa.0.0.insert.ext1341, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1343, ptr addrspace(3) %add.ptr616.21230, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.0.2.extract.shift2009 = lshr i32 %condval_2.sroa.0.0.2, 16, !dbg !255
  %v_fetch_local.sroa.98.18.extract.shift2149 = and i32 %condval_2.sroa.0.0.1.2, -65536, !dbg !254
  %add607.1.2 = or disjoint i32 %mul606, 128, !dbg !256
  %503 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.1.2, !dbg !253
  %xor612.1.2 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.1.2 = xor i32 %xor612.1.2, 4, !dbg !253
  %add.ptr616.1.2 = getelementptr inbounds i8, ptr addrspace(3) %503, i32 %add.ptr616.idx.1.2, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1347 = or disjoint i32 %v_fetch_local.sroa.98.18.extract.shift2149, %v_fetch_local.sroa.0.2.extract.shift2009, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1347, ptr addrspace(3) %add.ptr616.1.2, align 4, !dbg !254, !tbaa !30
  %add607.2.2 = or disjoint i32 %mul606, 256, !dbg !256
  %504 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.2.2, !dbg !253
  %xor612.2.2 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.2.2 = xor i32 %xor612.2.2, 8, !dbg !253
  %add.ptr616.2.2 = getelementptr inbounds i8, ptr addrspace(3) %504, i32 %add.ptr616.idx.2.2, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1618 = shl i32 %condval_2.sroa.5.0.1.2, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1349 = and i32 %condval_2.sroa.5.0.2, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1351 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1618, %v_column_local.sroa.0.0.insert.ext1349, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1351, ptr addrspace(3) %add.ptr616.2.2, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.26.6.extract.shift2044 = lshr i32 %condval_2.sroa.5.0.2, 16, !dbg !255
  %v_fetch_local.sroa.122.22.extract.shift2184 = and i32 %condval_2.sroa.5.0.1.2, -65536, !dbg !254
  %add607.3.2 = or disjoint i32 %mul606, 384, !dbg !256
  %505 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.3.2, !dbg !253
  %xor612.3.2 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.3.2 = xor i32 %xor612.3.2, 12, !dbg !253
  %add.ptr616.3.2 = getelementptr inbounds i8, ptr addrspace(3) %505, i32 %add.ptr616.idx.3.2, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1355 = or disjoint i32 %v_fetch_local.sroa.122.22.extract.shift2184, %v_fetch_local.sroa.26.6.extract.shift2044, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1355, ptr addrspace(3) %add.ptr616.3.2, align 4, !dbg !254, !tbaa !30
  %add607.4.2 = or disjoint i32 %mul606, 512, !dbg !256
  %506 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.4.2, !dbg !253
  %xor612.4.2 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.4.2 = xor i32 %xor612.4.2, 16, !dbg !253
  %add.ptr616.4.2 = getelementptr inbounds i8, ptr addrspace(3) %506, i32 %add.ptr616.idx.4.2, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1628 = shl i32 %condval_2.sroa.6.0.1.2, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1357 = and i32 %condval_2.sroa.6.0.2, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1359 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1628, %v_column_local.sroa.0.0.insert.ext1357, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1359, ptr addrspace(3) %add.ptr616.4.2, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.50.10.extract.shift2079 = lshr i32 %condval_2.sroa.6.0.2, 16, !dbg !255
  %v_fetch_local.sroa.146.26.extract.shift2219 = and i32 %condval_2.sroa.6.0.1.2, -65536, !dbg !254
  %add607.5.2 = or disjoint i32 %mul606, 640, !dbg !256
  %507 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.5.2, !dbg !253
  %xor612.5.2 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.5.2 = xor i32 %xor612.5.2, 20, !dbg !253
  %add.ptr616.5.2 = getelementptr inbounds i8, ptr addrspace(3) %507, i32 %add.ptr616.idx.5.2, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1363 = or disjoint i32 %v_fetch_local.sroa.146.26.extract.shift2219, %v_fetch_local.sroa.50.10.extract.shift2079, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1363, ptr addrspace(3) %add.ptr616.5.2, align 4, !dbg !254, !tbaa !30
  %add607.6.2 = or disjoint i32 %mul606, 768, !dbg !256
  %508 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.6.2, !dbg !253
  %xor612.6.2 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.6.2 = xor i32 %xor612.6.2, 24, !dbg !253
  %add.ptr616.6.2 = getelementptr inbounds i8, ptr addrspace(3) %508, i32 %add.ptr616.idx.6.2, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1638 = shl i32 %condval_2.sroa.7.0.1.2, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1365 = and i32 %condval_2.sroa.7.0.2, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1367 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1638, %v_column_local.sroa.0.0.insert.ext1365, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1367, ptr addrspace(3) %add.ptr616.6.2, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.74.14.extract.shift2114 = lshr i32 %condval_2.sroa.7.0.2, 16, !dbg !255
  %v_fetch_local.sroa.170.30.extract.shift2254 = and i32 %condval_2.sroa.7.0.1.2, -65536, !dbg !254
  %add607.7.2 = or disjoint i32 %mul606, 896, !dbg !256
  %509 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.7.2, !dbg !253
  %xor612.7.2 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.7.2 = xor i32 %xor612.7.2, 28, !dbg !253
  %add.ptr616.7.2 = getelementptr inbounds i8, ptr addrspace(3) %509, i32 %add.ptr616.idx.7.2, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1371 = or disjoint i32 %v_fetch_local.sroa.170.30.extract.shift2254, %v_fetch_local.sroa.74.14.extract.shift2114, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1371, ptr addrspace(3) %add.ptr616.7.2, align 4, !dbg !254, !tbaa !30
  fence syncscope("warp") release, !dbg !257
  tail call void @llvm.mxc.barrier.warp(), !dbg !260
  fence syncscope("warp") acquire, !dbg !261
  %add637.21232 = or disjoint i32 %mul630, %mul636
  %xor647.21233 = xor i32 %shr645, %and611
  %510 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.21232
  %xor650.21234 = xor i32 %xor647.21233, %mul640, !dbg !262
  %add.ptr654.idx.21235 = shl nuw nsw i32 %xor650.21234, 2, !dbg !263
  %add.ptr654.21236 = getelementptr inbounds i8, ptr addrspace(3) %510, i32 %add.ptr654.idx.21235, !dbg !263
  %511 = load i32, ptr addrspace(3) %add.ptr654.21236, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1858 = insertelement <2 x i32> poison, i32 %511, i64 0, !dbg !264
  %add641.1.21237 = or i32 %shr140, 1, !dbg !265
  %xor650.1.21238 = xor i32 %xor647.21233, %add641.1.21237, !dbg !262
  %add.ptr654.idx.1.21239 = shl nuw nsw i32 %xor650.1.21238, 2, !dbg !263
  %add.ptr654.1.21240 = getelementptr inbounds i8, ptr addrspace(3) %510, i32 %add.ptr654.idx.1.21239, !dbg !263
  %512 = load i32, ptr addrspace(3) %add.ptr654.1.21240, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1872 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1858, i32 %512, i64 1, !dbg !264
  %add632.1.2 = or disjoint i32 %mul630, %mul636
  %add637.1.2 = or disjoint i32 %add632.1.2, 32
  %add646.1.2 = or disjoint i32 %shr645, 2
  %xor647.1.2 = xor i32 %add646.1.2, %and611
  %513 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.1.2
  %xor650.11186.2 = xor i32 %xor647.1.2, %mul640, !dbg !262
  %add.ptr654.idx.11187.2 = shl nuw nsw i32 %xor650.11186.2, 2, !dbg !263
  %add.ptr654.11188.2 = getelementptr inbounds i8, ptr addrspace(3) %513, i32 %add.ptr654.idx.11187.2, !dbg !263
  %514 = load i32, ptr addrspace(3) %add.ptr654.11188.2, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.26.8.vec.insert1894 = insertelement <2 x i32> poison, i32 %514, i64 0, !dbg !264
  %xor650.1.1.2 = xor i32 %xor647.1.2, %add641.1.21237, !dbg !262
  %add.ptr654.idx.1.1.2 = shl nuw nsw i32 %xor650.1.1.2, 2, !dbg !263
  %add.ptr654.1.1.2 = getelementptr inbounds i8, ptr addrspace(3) %513, i32 %add.ptr654.idx.1.1.2, !dbg !263
  %515 = load i32, ptr addrspace(3) %add.ptr654.1.1.2, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.26.12.vec.insert1908 = insertelement <2 x i32> %v_operand.sroa.26.8.vec.insert1894, i32 %515, i64 1, !dbg !264
  %add632.2.2 = or disjoint i32 %mul630, %mul636
  %add637.2.2 = or disjoint i32 %add632.2.2, 64
  %add646.2.2 = or disjoint i32 %shr645, 4
  %xor647.2.2 = xor i32 %add646.2.2, %and611
  %516 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.2.2
  %xor650.2.2 = xor i32 %xor647.2.2, %mul640, !dbg !262
  %add.ptr654.idx.2.2 = shl nuw nsw i32 %xor650.2.2, 2, !dbg !263
  %add.ptr654.2.2 = getelementptr inbounds i8, ptr addrspace(3) %516, i32 %add.ptr654.idx.2.2, !dbg !263
  %517 = load i32, ptr addrspace(3) %add.ptr654.2.2, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.50.16.vec.insert1930 = insertelement <2 x i32> poison, i32 %517, i64 0, !dbg !264
  %xor650.1.2.2 = xor i32 %xor647.2.2, %add641.1.21237, !dbg !262
  %add.ptr654.idx.1.2.2 = shl nuw nsw i32 %xor650.1.2.2, 2, !dbg !263
  %add.ptr654.1.2.2 = getelementptr inbounds i8, ptr addrspace(3) %516, i32 %add.ptr654.idx.1.2.2, !dbg !263
  %518 = load i32, ptr addrspace(3) %add.ptr654.1.2.2, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.50.20.vec.insert1944 = insertelement <2 x i32> %v_operand.sroa.50.16.vec.insert1930, i32 %518, i64 1, !dbg !264
  %add632.3.2 = or disjoint i32 %mul630, %mul636
  %add637.3.2 = or disjoint i32 %add632.3.2, 96
  %add646.3.2 = or disjoint i32 %shr645, 6
  %xor647.3.2 = xor i32 %add646.3.2, %and611
  %519 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.3.2
  %xor650.3.2 = xor i32 %xor647.3.2, %mul640, !dbg !262
  %add.ptr654.idx.3.2 = shl nuw nsw i32 %xor650.3.2, 2, !dbg !263
  %add.ptr654.3.2 = getelementptr inbounds i8, ptr addrspace(3) %519, i32 %add.ptr654.idx.3.2, !dbg !263
  %520 = load i32, ptr addrspace(3) %add.ptr654.3.2, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.74.24.vec.insert1966 = insertelement <2 x i32> poison, i32 %520, i64 0, !dbg !264
  %xor650.1.3.2 = xor i32 %xor647.3.2, %add641.1.21237, !dbg !262
  %add.ptr654.idx.1.3.2 = shl nuw nsw i32 %xor650.1.3.2, 2, !dbg !263
  %add.ptr654.1.3.2 = getelementptr inbounds i8, ptr addrspace(3) %519, i32 %add.ptr654.idx.1.3.2, !dbg !263
  %521 = load i32, ptr addrspace(3) %add.ptr654.1.3.2, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.74.28.vec.insert1980 = insertelement <2 x i32> %v_operand.sroa.74.24.vec.insert1966, i32 %521, i64 1, !dbg !264
  %522 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1872 to <4 x half>, !dbg !266
  %523 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %522, <4 x half> %497, <4 x float> %output_acc.sroa.0.1), !dbg !267
  %524 = bitcast <2 x i32> %v_operand.sroa.26.12.vec.insert1908 to <4 x half>, !dbg !266
  %525 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %524, <4 x half> %497, <4 x float> %output_acc.sroa.34.1), !dbg !267
  %526 = bitcast <2 x i32> %v_operand.sroa.50.20.vec.insert1944 to <4 x half>, !dbg !266
  %527 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %526, <4 x half> %497, <4 x float> %output_acc.sroa.66.1), !dbg !267
  %528 = bitcast <2 x i32> %v_operand.sroa.74.28.vec.insert1980 to <4 x half>, !dbg !266
  %529 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %528, <4 x half> %497, <4 x float> %output_acc.sroa.98.1), !dbg !267
  br label %if.end686.2, !dbg !268

if.end686.2:                                      ; preds = %if.end576.1.2, %if.end686.1
  %bc2835 = phi <4 x half> [ %148, %if.end686.1 ], [ %497, %if.end576.1.2 ], !dbg !83
  %output_acc.sroa.98.2 = phi <4 x float> [ %output_acc.sroa.98.1, %if.end686.1 ], [ %529, %if.end576.1.2 ], !dbg !83
  %output_acc.sroa.66.2 = phi <4 x float> [ %output_acc.sroa.66.1, %if.end686.1 ], [ %527, %if.end576.1.2 ], !dbg !83
  %output_acc.sroa.34.2 = phi <4 x float> [ %output_acc.sroa.34.1, %if.end686.1 ], [ %525, %if.end576.1.2 ], !dbg !83
  %output_acc.sroa.0.2 = phi <4 x float> [ %output_acc.sroa.0.1, %if.end686.1 ], [ %523, %if.end576.1.2 ], !dbg !83
  %530 = load i32, ptr addrspace(1) %arrayidx130.3, align 4, !dbg !186, !tbaa !30
  %mul444.3 = shl nsw i32 %530, 4, !dbg !187
  %cmp445.3 = icmp slt i32 %530, 0, !dbg !188
  %cmp448.not.3 = icmp sgt i32 %mul444.3, %1
  %or.cond1071.3 = select i1 %cmp445.3, i1 true, i1 %cmp448.not.3, !dbg !189
  br i1 %or.cond1071.3, label %if.end686.3, label %if.then449.3, !dbg !189

if.then449.3:                                     ; preds = %if.end686.2
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454.3 = icmp eq i32 %shr324, 3, !dbg !195
  br i1 %cmp454.3, label %if.then455.3, label %if.end464.3, !dbg !196

if.then455.3:                                     ; preds = %if.then449.3
  %sub460.3 = fsub contract float %max_cache.sroa.0.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461.3 = fmul contract float %sub460.3, 0x3FC7154760000000, !dbg !198
  %cmp.i.i1015.3 = fcmp contract olt float %mul461.3, -1.260000e+02, !dbg !199
  %cond.i.i1016.3 = select contract i1 %cmp.i.i1015.3, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i1017.3 = fadd contract float %mul461.3, %cond.i.i1016.3, !dbg !199
  %531 = tail call contract float @llvm.exp2.f32(float %add.i.i1017.3), !dbg !199
  %cond2.i.i1018.3 = select contract i1 %cmp.i.i1015.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i1019.3 = fmul contract float %cond2.i.i1018.3, %531, !dbg !199
  br label %if.end464.3, !dbg !201

if.end464.3:                                      ; preds = %if.then455.3, %if.then449.3
  %rescale.sroa.0.0.3 = phi float [ %mul.i.i1019.3, %if.then455.3 ], [ 0.000000e+00, %if.then449.3 ], !dbg !83
  %532 = bitcast float %rescale.sroa.0.0.3 to i32, !dbg !202
  %533 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %534 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %533) #11, !dbg !209
  %rem.i.i.3 = or disjoint i32 %and469, 48, !dbg !269
  %and.i.i1020.3 = and i32 %534, 1073741760, !dbg !210
  %add.i.i1021.3 = or disjoint i32 %and.i.i1020.3, %rem.i.i.3, !dbg !211
  %shl.i.i1022.3 = shl nuw i32 %add.i.i1021.3, 2, !dbg !212
  %535 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1022.3, i32 %532), !dbg !213
  %536 = bitcast i32 %535 to float, !dbg !214
  %537 = extractelement <4 x half> %190, i64 0, !dbg !215
  %conv.i1023.3 = fpext half %537 to float, !dbg !215
  %538 = extractelement <4 x half> %190, i64 1, !dbg !218
  %conv6.i.3 = fpext half %538 to float, !dbg !218
  %539 = extractelement <4 x half> %190, i64 2, !dbg !219
  %conv.i1025.3 = fpext half %539 to float, !dbg !219
  %540 = extractelement <4 x half> %190, i64 3, !dbg !221
  %conv6.i1027.3 = fpext half %540 to float, !dbg !221
  %mul494.3 = fmul contract float %536, %conv.i1023.3, !dbg !222
  %mul498.3 = fmul contract float %536, %conv6.i.3, !dbg !223
  %mul502.3 = fmul contract float %536, %conv.i1025.3, !dbg !224
  %mul506.3 = fmul contract float %536, %conv6.i1027.3, !dbg !225
  %541 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %542 = fptrunc float %mul494.3 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %541), !dbg !226, !noalias !230
  %543 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %544 = fptrunc float %mul498.3 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %543), !dbg !235, !noalias !230
  %545 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %546 = fptrunc float %mul502.3 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %545), !dbg !237, !noalias !241
  %547 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %548 = fptrunc float %mul506.3 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %547), !dbg !246, !noalias !241
  %549 = insertelement <4 x half> poison, half %542, i64 0, !dbg !248
  %550 = insertelement <4 x half> %549, half %544, i64 1, !dbg !248
  %551 = insertelement <4 x half> %550, half %546, i64 2, !dbg !248
  %552 = insertelement <4 x half> %551, half %548, i64 3, !dbg !248
  %shr529.3 = lshr exact i32 %mul444.3, 1
  %add530.3 = add nuw nsw i32 %shr529.3, %shr140
  %cmp531.3 = icmp ult i32 %add530.3, 512
  %conv541.3 = zext nneg i32 %mul444.3 to i64
  br i1 %cmp531.3, label %if.then532.3, label %if.end576.3, !dbg !249

if.then532.3:                                     ; preds = %if.end464.3
  %553 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1108.3 = shl nuw nsw i64 %conv541.3, 7, !dbg !250
  %554 = getelementptr inbounds i8, ptr addrspace(4) %553, i64 %.idx1108.3, !dbg !250
  %condval_2.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %554, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %554, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.3, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %554, i64 8, !dbg !251
  %condval_2.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.3, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %554, i64 12, !dbg !251
  %condval_2.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.3, align 4, !dbg !251, !tbaa !30
  br label %if.end576.3, !dbg !252

if.end576.3:                                      ; preds = %if.then532.3, %if.end464.3
  %condval_2.sroa.7.0.3 = phi i32 [ %condval_2.sroa.7.0.copyload.3, %if.then532.3 ], [ 0, %if.end464.3 ], !dbg !83
  %condval_2.sroa.6.0.3 = phi i32 [ %condval_2.sroa.6.0.copyload.3, %if.then532.3 ], [ 0, %if.end464.3 ], !dbg !83
  %condval_2.sroa.5.0.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3, %if.then532.3 ], [ 0, %if.end464.3 ], !dbg !83
  %condval_2.sroa.0.0.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3, %if.then532.3 ], [ 0, %if.end464.3 ], !dbg !83
  br i1 %cmp531.3, label %if.then532.1.3, label %if.end576.1.3, !dbg !249

if.then532.1.3:                                   ; preds = %if.end576.3
  %555 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1108.1.3 = shl nuw nsw i64 %conv541.3, 7, !dbg !250
  %556 = getelementptr inbounds i8, ptr addrspace(4) %555, i64 %.idx1108.1.3, !dbg !250
  %add.ptr552.1.3 = getelementptr inbounds i8, ptr addrspace(4) %556, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %add.ptr552.1.3, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %556, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.3, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %556, i64 136, !dbg !251
  %condval_2.sroa.6.0.copyload.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.3, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %556, i64 140, !dbg !251
  %condval_2.sroa.7.0.copyload.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.3, align 4, !dbg !251, !tbaa !30
  br label %if.end576.1.3, !dbg !252

if.end576.1.3:                                    ; preds = %if.then532.1.3, %if.end576.3
  %condval_2.sroa.7.0.1.3 = phi i32 [ %condval_2.sroa.7.0.copyload.1.3, %if.then532.1.3 ], [ 0, %if.end576.3 ], !dbg !83
  %condval_2.sroa.6.0.1.3 = phi i32 [ %condval_2.sroa.6.0.copyload.1.3, %if.then532.1.3 ], [ 0, %if.end576.3 ], !dbg !83
  %condval_2.sroa.5.0.1.3 = phi i32 [ %condval_2.sroa.5.0.copyload.1.3, %if.then532.1.3 ], [ 0, %if.end576.3 ], !dbg !83
  %condval_2.sroa.0.0.1.3 = phi i32 [ %condval_2.sroa.0.0.copyload.1.3, %if.then532.1.3 ], [ 0, %if.end576.3 ], !dbg !83
  %557 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul606, !dbg !253
  %add.ptr616.idx.31244 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.31245 = getelementptr inbounds i8, ptr addrspace(3) %557, i32 %add.ptr616.idx.31244, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1648 = shl i32 %condval_2.sroa.0.0.1.3, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1373 = and i32 %condval_2.sroa.0.0.3, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1375 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1648, %v_column_local.sroa.0.0.insert.ext1373, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1375, ptr addrspace(3) %add.ptr616.31245, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.0.2.extract.shift2012 = lshr i32 %condval_2.sroa.0.0.3, 16, !dbg !255
  %v_fetch_local.sroa.98.18.extract.shift2152 = and i32 %condval_2.sroa.0.0.1.3, -65536, !dbg !254
  %add607.1.3 = or disjoint i32 %mul606, 128, !dbg !256
  %558 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.1.3, !dbg !253
  %xor612.1.3 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.1.3 = xor i32 %xor612.1.3, 4, !dbg !253
  %add.ptr616.1.3 = getelementptr inbounds i8, ptr addrspace(3) %558, i32 %add.ptr616.idx.1.3, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1379 = or disjoint i32 %v_fetch_local.sroa.98.18.extract.shift2152, %v_fetch_local.sroa.0.2.extract.shift2012, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1379, ptr addrspace(3) %add.ptr616.1.3, align 4, !dbg !254, !tbaa !30
  %add607.2.3 = or disjoint i32 %mul606, 256, !dbg !256
  %559 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.2.3, !dbg !253
  %xor612.2.3 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.2.3 = xor i32 %xor612.2.3, 8, !dbg !253
  %add.ptr616.2.3 = getelementptr inbounds i8, ptr addrspace(3) %559, i32 %add.ptr616.idx.2.3, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1658 = shl i32 %condval_2.sroa.5.0.1.3, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1381 = and i32 %condval_2.sroa.5.0.3, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1383 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1658, %v_column_local.sroa.0.0.insert.ext1381, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1383, ptr addrspace(3) %add.ptr616.2.3, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.26.6.extract.shift2047 = lshr i32 %condval_2.sroa.5.0.3, 16, !dbg !255
  %v_fetch_local.sroa.122.22.extract.shift2187 = and i32 %condval_2.sroa.5.0.1.3, -65536, !dbg !254
  %add607.3.3 = or disjoint i32 %mul606, 384, !dbg !256
  %560 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.3.3, !dbg !253
  %xor612.3.3 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.3.3 = xor i32 %xor612.3.3, 12, !dbg !253
  %add.ptr616.3.3 = getelementptr inbounds i8, ptr addrspace(3) %560, i32 %add.ptr616.idx.3.3, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1387 = or disjoint i32 %v_fetch_local.sroa.122.22.extract.shift2187, %v_fetch_local.sroa.26.6.extract.shift2047, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1387, ptr addrspace(3) %add.ptr616.3.3, align 4, !dbg !254, !tbaa !30
  %add607.4.3 = or disjoint i32 %mul606, 512, !dbg !256
  %561 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.4.3, !dbg !253
  %xor612.4.3 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.4.3 = xor i32 %xor612.4.3, 16, !dbg !253
  %add.ptr616.4.3 = getelementptr inbounds i8, ptr addrspace(3) %561, i32 %add.ptr616.idx.4.3, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1668 = shl i32 %condval_2.sroa.6.0.1.3, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1389 = and i32 %condval_2.sroa.6.0.3, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1391 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1668, %v_column_local.sroa.0.0.insert.ext1389, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1391, ptr addrspace(3) %add.ptr616.4.3, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.50.10.extract.shift2082 = lshr i32 %condval_2.sroa.6.0.3, 16, !dbg !255
  %v_fetch_local.sroa.146.26.extract.shift2222 = and i32 %condval_2.sroa.6.0.1.3, -65536, !dbg !254
  %add607.5.3 = or disjoint i32 %mul606, 640, !dbg !256
  %562 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.5.3, !dbg !253
  %xor612.5.3 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.5.3 = xor i32 %xor612.5.3, 20, !dbg !253
  %add.ptr616.5.3 = getelementptr inbounds i8, ptr addrspace(3) %562, i32 %add.ptr616.idx.5.3, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1395 = or disjoint i32 %v_fetch_local.sroa.146.26.extract.shift2222, %v_fetch_local.sroa.50.10.extract.shift2082, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1395, ptr addrspace(3) %add.ptr616.5.3, align 4, !dbg !254, !tbaa !30
  %add607.6.3 = or disjoint i32 %mul606, 768, !dbg !256
  %563 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.6.3, !dbg !253
  %xor612.6.3 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.6.3 = xor i32 %xor612.6.3, 24, !dbg !253
  %add.ptr616.6.3 = getelementptr inbounds i8, ptr addrspace(3) %563, i32 %add.ptr616.idx.6.3, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1678 = shl i32 %condval_2.sroa.7.0.1.3, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1397 = and i32 %condval_2.sroa.7.0.3, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1399 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1678, %v_column_local.sroa.0.0.insert.ext1397, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1399, ptr addrspace(3) %add.ptr616.6.3, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.74.14.extract.shift2117 = lshr i32 %condval_2.sroa.7.0.3, 16, !dbg !255
  %v_fetch_local.sroa.170.30.extract.shift2257 = and i32 %condval_2.sroa.7.0.1.3, -65536, !dbg !254
  %add607.7.3 = or disjoint i32 %mul606, 896, !dbg !256
  %564 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.7.3, !dbg !253
  %xor612.7.3 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.7.3 = xor i32 %xor612.7.3, 28, !dbg !253
  %add.ptr616.7.3 = getelementptr inbounds i8, ptr addrspace(3) %564, i32 %add.ptr616.idx.7.3, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1403 = or disjoint i32 %v_fetch_local.sroa.170.30.extract.shift2257, %v_fetch_local.sroa.74.14.extract.shift2117, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1403, ptr addrspace(3) %add.ptr616.7.3, align 4, !dbg !254, !tbaa !30
  fence syncscope("warp") release, !dbg !257
  tail call void @llvm.mxc.barrier.warp(), !dbg !260
  fence syncscope("warp") acquire, !dbg !261
  %add637.31247 = or disjoint i32 %mul630, %mul636
  %xor647.31248 = xor i32 %shr645, %and611
  %565 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.31247
  %xor650.31249 = xor i32 %xor647.31248, %mul640, !dbg !262
  %add.ptr654.idx.31250 = shl nuw nsw i32 %xor650.31249, 2, !dbg !263
  %add.ptr654.31251 = getelementptr inbounds i8, ptr addrspace(3) %565, i32 %add.ptr654.idx.31250, !dbg !263
  %566 = load i32, ptr addrspace(3) %add.ptr654.31251, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1860 = insertelement <2 x i32> poison, i32 %566, i64 0, !dbg !264
  %add641.1.31252 = or i32 %shr140, 1, !dbg !265
  %xor650.1.31253 = xor i32 %xor647.31248, %add641.1.31252, !dbg !262
  %add.ptr654.idx.1.31254 = shl nuw nsw i32 %xor650.1.31253, 2, !dbg !263
  %add.ptr654.1.31255 = getelementptr inbounds i8, ptr addrspace(3) %565, i32 %add.ptr654.idx.1.31254, !dbg !263
  %567 = load i32, ptr addrspace(3) %add.ptr654.1.31255, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1874 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1860, i32 %567, i64 1, !dbg !264
  %add632.1.3 = or disjoint i32 %mul630, %mul636
  %add637.1.3 = or disjoint i32 %add632.1.3, 32
  %add646.1.3 = or disjoint i32 %shr645, 2
  %xor647.1.3 = xor i32 %add646.1.3, %and611
  %568 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.1.3
  %xor650.11186.3 = xor i32 %xor647.1.3, %mul640, !dbg !262
  %add.ptr654.idx.11187.3 = shl nuw nsw i32 %xor650.11186.3, 2, !dbg !263
  %add.ptr654.11188.3 = getelementptr inbounds i8, ptr addrspace(3) %568, i32 %add.ptr654.idx.11187.3, !dbg !263
  %569 = load i32, ptr addrspace(3) %add.ptr654.11188.3, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.26.8.vec.insert1896 = insertelement <2 x i32> poison, i32 %569, i64 0, !dbg !264
  %xor650.1.1.3 = xor i32 %xor647.1.3, %add641.1.31252, !dbg !262
  %add.ptr654.idx.1.1.3 = shl nuw nsw i32 %xor650.1.1.3, 2, !dbg !263
  %add.ptr654.1.1.3 = getelementptr inbounds i8, ptr addrspace(3) %568, i32 %add.ptr654.idx.1.1.3, !dbg !263
  %570 = load i32, ptr addrspace(3) %add.ptr654.1.1.3, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.26.12.vec.insert1910 = insertelement <2 x i32> %v_operand.sroa.26.8.vec.insert1896, i32 %570, i64 1, !dbg !264
  %add632.2.3 = or disjoint i32 %mul630, %mul636
  %add637.2.3 = or disjoint i32 %add632.2.3, 64
  %add646.2.3 = or disjoint i32 %shr645, 4
  %xor647.2.3 = xor i32 %add646.2.3, %and611
  %571 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.2.3
  %xor650.2.3 = xor i32 %xor647.2.3, %mul640, !dbg !262
  %add.ptr654.idx.2.3 = shl nuw nsw i32 %xor650.2.3, 2, !dbg !263
  %add.ptr654.2.3 = getelementptr inbounds i8, ptr addrspace(3) %571, i32 %add.ptr654.idx.2.3, !dbg !263
  %572 = load i32, ptr addrspace(3) %add.ptr654.2.3, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.50.16.vec.insert1932 = insertelement <2 x i32> poison, i32 %572, i64 0, !dbg !264
  %xor650.1.2.3 = xor i32 %xor647.2.3, %add641.1.31252, !dbg !262
  %add.ptr654.idx.1.2.3 = shl nuw nsw i32 %xor650.1.2.3, 2, !dbg !263
  %add.ptr654.1.2.3 = getelementptr inbounds i8, ptr addrspace(3) %571, i32 %add.ptr654.idx.1.2.3, !dbg !263
  %573 = load i32, ptr addrspace(3) %add.ptr654.1.2.3, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.50.20.vec.insert1946 = insertelement <2 x i32> %v_operand.sroa.50.16.vec.insert1932, i32 %573, i64 1, !dbg !264
  %add632.3.3 = or disjoint i32 %mul630, %mul636
  %add637.3.3 = or disjoint i32 %add632.3.3, 96
  %add646.3.3 = or disjoint i32 %shr645, 6
  %xor647.3.3 = xor i32 %add646.3.3, %and611
  %574 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.3.3
  %xor650.3.3 = xor i32 %xor647.3.3, %mul640, !dbg !262
  %add.ptr654.idx.3.3 = shl nuw nsw i32 %xor650.3.3, 2, !dbg !263
  %add.ptr654.3.3 = getelementptr inbounds i8, ptr addrspace(3) %574, i32 %add.ptr654.idx.3.3, !dbg !263
  %575 = load i32, ptr addrspace(3) %add.ptr654.3.3, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.74.24.vec.insert1968 = insertelement <2 x i32> poison, i32 %575, i64 0, !dbg !264
  %xor650.1.3.3 = xor i32 %xor647.3.3, %add641.1.31252, !dbg !262
  %add.ptr654.idx.1.3.3 = shl nuw nsw i32 %xor650.1.3.3, 2, !dbg !263
  %add.ptr654.1.3.3 = getelementptr inbounds i8, ptr addrspace(3) %574, i32 %add.ptr654.idx.1.3.3, !dbg !263
  %576 = load i32, ptr addrspace(3) %add.ptr654.1.3.3, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.74.28.vec.insert1982 = insertelement <2 x i32> %v_operand.sroa.74.24.vec.insert1968, i32 %576, i64 1, !dbg !264
  %577 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1874 to <4 x half>, !dbg !266
  %578 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %577, <4 x half> %552, <4 x float> %output_acc.sroa.0.2), !dbg !267
  %579 = bitcast <2 x i32> %v_operand.sroa.26.12.vec.insert1910 to <4 x half>, !dbg !266
  %580 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %579, <4 x half> %552, <4 x float> %output_acc.sroa.34.2), !dbg !267
  %581 = bitcast <2 x i32> %v_operand.sroa.50.20.vec.insert1946 to <4 x half>, !dbg !266
  %582 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %581, <4 x half> %552, <4 x float> %output_acc.sroa.66.2), !dbg !267
  %583 = bitcast <2 x i32> %v_operand.sroa.74.28.vec.insert1982 to <4 x half>, !dbg !266
  %584 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %583, <4 x half> %552, <4 x float> %output_acc.sroa.98.2), !dbg !267
  br label %if.end686.3, !dbg !268

if.end686.3:                                      ; preds = %if.end576.1.3, %if.end686.2
  %bc2839 = phi <4 x half> [ %190, %if.end686.2 ], [ %552, %if.end576.1.3 ], !dbg !83
  %output_acc.sroa.98.3 = phi <4 x float> [ %output_acc.sroa.98.2, %if.end686.2 ], [ %584, %if.end576.1.3 ], !dbg !83
  %output_acc.sroa.66.3 = phi <4 x float> [ %output_acc.sroa.66.2, %if.end686.2 ], [ %582, %if.end576.1.3 ], !dbg !83
  %output_acc.sroa.34.3 = phi <4 x float> [ %output_acc.sroa.34.2, %if.end686.2 ], [ %580, %if.end576.1.3 ], !dbg !83
  %output_acc.sroa.0.3 = phi <4 x float> [ %output_acc.sroa.0.2, %if.end686.2 ], [ %578, %if.end576.1.3 ], !dbg !83
  %585 = load i32, ptr addrspace(1) %arrayidx130.4, align 4, !dbg !186, !tbaa !30
  %mul444.4 = shl nsw i32 %585, 4, !dbg !187
  %cmp445.4 = icmp slt i32 %585, 0, !dbg !188
  %cmp448.not.4 = icmp sgt i32 %mul444.4, %1
  %or.cond1071.4 = select i1 %cmp445.4, i1 true, i1 %cmp448.not.4, !dbg !189
  br i1 %or.cond1071.4, label %if.end686.4, label %if.then449.4, !dbg !189

if.then449.4:                                     ; preds = %if.end686.3
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454.4 = icmp ult i32 %2, 16, !dbg !195
  br i1 %cmp454.4, label %if.then455.4, label %if.end464.4, !dbg !196

if.then455.4:                                     ; preds = %if.then449.4
  %sub460.4 = fsub contract float %max_cache.sroa.11.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461.4 = fmul contract float %sub460.4, 0x3FC7154760000000, !dbg !198
  %cmp.i.i1015.4 = fcmp contract olt float %mul461.4, -1.260000e+02, !dbg !199
  %cond.i.i1016.4 = select contract i1 %cmp.i.i1015.4, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i1017.4 = fadd contract float %mul461.4, %cond.i.i1016.4, !dbg !199
  %586 = tail call contract float @llvm.exp2.f32(float %add.i.i1017.4), !dbg !199
  %cond2.i.i1018.4 = select contract i1 %cmp.i.i1015.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i1019.4 = fmul contract float %cond2.i.i1018.4, %586, !dbg !199
  %587 = bitcast float %mul.i.i1019.4 to i32, !dbg !202
  br label %if.end464.4, !dbg !201

if.end464.4:                                      ; preds = %if.then455.4, %if.then449.4
  %rescale.sroa.0.0.4 = phi i32 [ %587, %if.then455.4 ], [ 0, %if.then449.4 ], !dbg !83
  %588 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %589 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %588) #11, !dbg !209
  %and.i.i1020.4 = and i32 %589, 1073741760, !dbg !210
  %add.i.i1021.4 = or disjoint i32 %and.i.i1020.4, %and469, !dbg !211
  %shl.i.i1022.4 = shl nuw i32 %add.i.i1021.4, 2, !dbg !212
  %590 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1022.4, i32 %rescale.sroa.0.0.4), !dbg !213
  %591 = bitcast i32 %590 to float, !dbg !214
  %592 = extractelement <4 x half> %232, i64 0, !dbg !215
  %conv.i1023.4 = fpext half %592 to float, !dbg !215
  %593 = extractelement <4 x half> %232, i64 1, !dbg !218
  %conv6.i.4 = fpext half %593 to float, !dbg !218
  %594 = extractelement <4 x half> %232, i64 2, !dbg !219
  %conv.i1025.4 = fpext half %594 to float, !dbg !219
  %595 = extractelement <4 x half> %232, i64 3, !dbg !221
  %conv6.i1027.4 = fpext half %595 to float, !dbg !221
  %mul494.4 = fmul contract float %591, %conv.i1023.4, !dbg !222
  %mul498.4 = fmul contract float %591, %conv6.i.4, !dbg !223
  %mul502.4 = fmul contract float %591, %conv.i1025.4, !dbg !224
  %mul506.4 = fmul contract float %591, %conv6.i1027.4, !dbg !225
  %596 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %597 = fptrunc float %mul494.4 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %596), !dbg !226, !noalias !230
  %598 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %599 = fptrunc float %mul498.4 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %598), !dbg !235, !noalias !230
  %600 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %601 = fptrunc float %mul502.4 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %600), !dbg !237, !noalias !241
  %602 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %603 = fptrunc float %mul506.4 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %602), !dbg !246, !noalias !241
  %604 = insertelement <4 x half> poison, half %597, i64 0, !dbg !248
  %605 = insertelement <4 x half> %604, half %599, i64 1, !dbg !248
  %606 = insertelement <4 x half> %605, half %601, i64 2, !dbg !248
  %607 = insertelement <4 x half> %606, half %603, i64 3, !dbg !248
  %shr529.4 = lshr exact i32 %mul444.4, 1
  %add530.4 = add nuw nsw i32 %shr529.4, %shr140
  %cmp531.4 = icmp ult i32 %add530.4, 512
  %conv541.4 = zext nneg i32 %mul444.4 to i64
  br i1 %cmp531.4, label %if.then532.4, label %if.end576.4, !dbg !249

if.then532.4:                                     ; preds = %if.end464.4
  %608 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1108.4 = shl nuw nsw i64 %conv541.4, 7, !dbg !250
  %609 = getelementptr inbounds i8, ptr addrspace(4) %608, i64 %.idx1108.4, !dbg !250
  %condval_2.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %609, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %609, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.4, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %609, i64 8, !dbg !251
  %condval_2.sroa.6.0.copyload.4 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.4, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %609, i64 12, !dbg !251
  %condval_2.sroa.7.0.copyload.4 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.4, align 4, !dbg !251, !tbaa !30
  br label %if.end576.4, !dbg !252

if.end576.4:                                      ; preds = %if.then532.4, %if.end464.4
  %condval_2.sroa.7.0.4 = phi i32 [ %condval_2.sroa.7.0.copyload.4, %if.then532.4 ], [ 0, %if.end464.4 ], !dbg !83
  %condval_2.sroa.6.0.4 = phi i32 [ %condval_2.sroa.6.0.copyload.4, %if.then532.4 ], [ 0, %if.end464.4 ], !dbg !83
  %condval_2.sroa.5.0.4 = phi i32 [ %condval_2.sroa.5.0.copyload.4, %if.then532.4 ], [ 0, %if.end464.4 ], !dbg !83
  %condval_2.sroa.0.0.4 = phi i32 [ %condval_2.sroa.0.0.copyload.4, %if.then532.4 ], [ 0, %if.end464.4 ], !dbg !83
  br i1 %cmp531.4, label %if.then532.1.4, label %if.end576.1.4, !dbg !249

if.then532.1.4:                                   ; preds = %if.end576.4
  %610 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1108.1.4 = shl nuw nsw i64 %conv541.4, 7, !dbg !250
  %611 = getelementptr inbounds i8, ptr addrspace(4) %610, i64 %.idx1108.1.4, !dbg !250
  %add.ptr552.1.4 = getelementptr inbounds i8, ptr addrspace(4) %611, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1.4 = load i32, ptr addrspace(4) %add.ptr552.1.4, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %611, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.4, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %611, i64 136, !dbg !251
  %condval_2.sroa.6.0.copyload.1.4 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.4, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %611, i64 140, !dbg !251
  %condval_2.sroa.7.0.copyload.1.4 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.4, align 4, !dbg !251, !tbaa !30
  br label %if.end576.1.4, !dbg !252

if.end576.1.4:                                    ; preds = %if.then532.1.4, %if.end576.4
  %condval_2.sroa.7.0.1.4 = phi i32 [ %condval_2.sroa.7.0.copyload.1.4, %if.then532.1.4 ], [ 0, %if.end576.4 ], !dbg !83
  %condval_2.sroa.6.0.1.4 = phi i32 [ %condval_2.sroa.6.0.copyload.1.4, %if.then532.1.4 ], [ 0, %if.end576.4 ], !dbg !83
  %condval_2.sroa.5.0.1.4 = phi i32 [ %condval_2.sroa.5.0.copyload.1.4, %if.then532.1.4 ], [ 0, %if.end576.4 ], !dbg !83
  %condval_2.sroa.0.0.1.4 = phi i32 [ %condval_2.sroa.0.0.copyload.1.4, %if.then532.1.4 ], [ 0, %if.end576.4 ], !dbg !83
  %612 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul606, !dbg !253
  %add.ptr616.idx.41259 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.41260 = getelementptr inbounds i8, ptr addrspace(3) %612, i32 %add.ptr616.idx.41259, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1688 = shl i32 %condval_2.sroa.0.0.1.4, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1405 = and i32 %condval_2.sroa.0.0.4, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1407 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1688, %v_column_local.sroa.0.0.insert.ext1405, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1407, ptr addrspace(3) %add.ptr616.41260, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.0.2.extract.shift2015 = lshr i32 %condval_2.sroa.0.0.4, 16, !dbg !255
  %v_fetch_local.sroa.98.18.extract.shift2155 = and i32 %condval_2.sroa.0.0.1.4, -65536, !dbg !254
  %add607.1.4 = or disjoint i32 %mul606, 128, !dbg !256
  %613 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.1.4, !dbg !253
  %xor612.1.4 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.1.4 = xor i32 %xor612.1.4, 4, !dbg !253
  %add.ptr616.1.4 = getelementptr inbounds i8, ptr addrspace(3) %613, i32 %add.ptr616.idx.1.4, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1411 = or disjoint i32 %v_fetch_local.sroa.98.18.extract.shift2155, %v_fetch_local.sroa.0.2.extract.shift2015, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1411, ptr addrspace(3) %add.ptr616.1.4, align 4, !dbg !254, !tbaa !30
  %add607.2.4 = or disjoint i32 %mul606, 256, !dbg !256
  %614 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.2.4, !dbg !253
  %xor612.2.4 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.2.4 = xor i32 %xor612.2.4, 8, !dbg !253
  %add.ptr616.2.4 = getelementptr inbounds i8, ptr addrspace(3) %614, i32 %add.ptr616.idx.2.4, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1698 = shl i32 %condval_2.sroa.5.0.1.4, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1413 = and i32 %condval_2.sroa.5.0.4, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1415 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1698, %v_column_local.sroa.0.0.insert.ext1413, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1415, ptr addrspace(3) %add.ptr616.2.4, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.26.6.extract.shift2050 = lshr i32 %condval_2.sroa.5.0.4, 16, !dbg !255
  %v_fetch_local.sroa.122.22.extract.shift2190 = and i32 %condval_2.sroa.5.0.1.4, -65536, !dbg !254
  %add607.3.4 = or disjoint i32 %mul606, 384, !dbg !256
  %615 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.3.4, !dbg !253
  %xor612.3.4 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.3.4 = xor i32 %xor612.3.4, 12, !dbg !253
  %add.ptr616.3.4 = getelementptr inbounds i8, ptr addrspace(3) %615, i32 %add.ptr616.idx.3.4, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1419 = or disjoint i32 %v_fetch_local.sroa.122.22.extract.shift2190, %v_fetch_local.sroa.26.6.extract.shift2050, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1419, ptr addrspace(3) %add.ptr616.3.4, align 4, !dbg !254, !tbaa !30
  %add607.4.4 = or disjoint i32 %mul606, 512, !dbg !256
  %616 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.4.4, !dbg !253
  %xor612.4.4 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.4.4 = xor i32 %xor612.4.4, 16, !dbg !253
  %add.ptr616.4.4 = getelementptr inbounds i8, ptr addrspace(3) %616, i32 %add.ptr616.idx.4.4, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1708 = shl i32 %condval_2.sroa.6.0.1.4, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1421 = and i32 %condval_2.sroa.6.0.4, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1423 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1708, %v_column_local.sroa.0.0.insert.ext1421, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1423, ptr addrspace(3) %add.ptr616.4.4, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.50.10.extract.shift2085 = lshr i32 %condval_2.sroa.6.0.4, 16, !dbg !255
  %v_fetch_local.sroa.146.26.extract.shift2225 = and i32 %condval_2.sroa.6.0.1.4, -65536, !dbg !254
  %add607.5.4 = or disjoint i32 %mul606, 640, !dbg !256
  %617 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.5.4, !dbg !253
  %xor612.5.4 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.5.4 = xor i32 %xor612.5.4, 20, !dbg !253
  %add.ptr616.5.4 = getelementptr inbounds i8, ptr addrspace(3) %617, i32 %add.ptr616.idx.5.4, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1427 = or disjoint i32 %v_fetch_local.sroa.146.26.extract.shift2225, %v_fetch_local.sroa.50.10.extract.shift2085, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1427, ptr addrspace(3) %add.ptr616.5.4, align 4, !dbg !254, !tbaa !30
  %add607.6.4 = or disjoint i32 %mul606, 768, !dbg !256
  %618 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.6.4, !dbg !253
  %xor612.6.4 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.6.4 = xor i32 %xor612.6.4, 24, !dbg !253
  %add.ptr616.6.4 = getelementptr inbounds i8, ptr addrspace(3) %618, i32 %add.ptr616.idx.6.4, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1718 = shl i32 %condval_2.sroa.7.0.1.4, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1429 = and i32 %condval_2.sroa.7.0.4, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1431 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1718, %v_column_local.sroa.0.0.insert.ext1429, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1431, ptr addrspace(3) %add.ptr616.6.4, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.74.14.extract.shift2120 = lshr i32 %condval_2.sroa.7.0.4, 16, !dbg !255
  %v_fetch_local.sroa.170.30.extract.shift2260 = and i32 %condval_2.sroa.7.0.1.4, -65536, !dbg !254
  %add607.7.4 = or disjoint i32 %mul606, 896, !dbg !256
  %619 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.7.4, !dbg !253
  %xor612.7.4 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.7.4 = xor i32 %xor612.7.4, 28, !dbg !253
  %add.ptr616.7.4 = getelementptr inbounds i8, ptr addrspace(3) %619, i32 %add.ptr616.idx.7.4, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1435 = or disjoint i32 %v_fetch_local.sroa.170.30.extract.shift2260, %v_fetch_local.sroa.74.14.extract.shift2120, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1435, ptr addrspace(3) %add.ptr616.7.4, align 4, !dbg !254, !tbaa !30
  fence syncscope("warp") release, !dbg !257
  tail call void @llvm.mxc.barrier.warp(), !dbg !260
  fence syncscope("warp") acquire, !dbg !261
  %add637.4 = or disjoint i32 %mul630, %mul636
  %xor647.4 = xor i32 %shr645, %and611
  %620 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.4
  %xor650.4 = xor i32 %xor647.4, %mul640, !dbg !262
  %add.ptr654.idx.4 = shl nuw nsw i32 %xor650.4, 2, !dbg !263
  %add.ptr654.4 = getelementptr inbounds i8, ptr addrspace(3) %620, i32 %add.ptr654.idx.4, !dbg !263
  %621 = load i32, ptr addrspace(3) %add.ptr654.4, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1862 = insertelement <2 x i32> poison, i32 %621, i64 0, !dbg !264
  %add641.1.4 = or i32 %shr140, 1, !dbg !265
  %xor650.1.4 = xor i32 %xor647.4, %add641.1.4, !dbg !262
  %add.ptr654.idx.1.4 = shl nuw nsw i32 %xor650.1.4, 2, !dbg !263
  %add.ptr654.1.4 = getelementptr inbounds i8, ptr addrspace(3) %620, i32 %add.ptr654.idx.1.4, !dbg !263
  %622 = load i32, ptr addrspace(3) %add.ptr654.1.4, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1876 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1862, i32 %622, i64 1, !dbg !264
  %add632.1.4 = or disjoint i32 %mul630, %mul636
  %add637.1.4 = or disjoint i32 %add632.1.4, 32
  %add646.1.4 = or disjoint i32 %shr645, 2
  %xor647.1.4 = xor i32 %add646.1.4, %and611
  %623 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.1.4
  %xor650.11186.4 = xor i32 %xor647.1.4, %mul640, !dbg !262
  %add.ptr654.idx.11187.4 = shl nuw nsw i32 %xor650.11186.4, 2, !dbg !263
  %add.ptr654.11188.4 = getelementptr inbounds i8, ptr addrspace(3) %623, i32 %add.ptr654.idx.11187.4, !dbg !263
  %624 = load i32, ptr addrspace(3) %add.ptr654.11188.4, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.26.8.vec.insert1898 = insertelement <2 x i32> poison, i32 %624, i64 0, !dbg !264
  %xor650.1.1.4 = xor i32 %xor647.1.4, %add641.1.4, !dbg !262
  %add.ptr654.idx.1.1.4 = shl nuw nsw i32 %xor650.1.1.4, 2, !dbg !263
  %add.ptr654.1.1.4 = getelementptr inbounds i8, ptr addrspace(3) %623, i32 %add.ptr654.idx.1.1.4, !dbg !263
  %625 = load i32, ptr addrspace(3) %add.ptr654.1.1.4, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.26.12.vec.insert1912 = insertelement <2 x i32> %v_operand.sroa.26.8.vec.insert1898, i32 %625, i64 1, !dbg !264
  %add632.2.4 = or disjoint i32 %mul630, %mul636
  %add637.2.4 = or disjoint i32 %add632.2.4, 64
  %add646.2.4 = or disjoint i32 %shr645, 4
  %xor647.2.4 = xor i32 %add646.2.4, %and611
  %626 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.2.4
  %xor650.2.4 = xor i32 %xor647.2.4, %mul640, !dbg !262
  %add.ptr654.idx.2.4 = shl nuw nsw i32 %xor650.2.4, 2, !dbg !263
  %add.ptr654.2.4 = getelementptr inbounds i8, ptr addrspace(3) %626, i32 %add.ptr654.idx.2.4, !dbg !263
  %627 = load i32, ptr addrspace(3) %add.ptr654.2.4, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.50.16.vec.insert1934 = insertelement <2 x i32> poison, i32 %627, i64 0, !dbg !264
  %xor650.1.2.4 = xor i32 %xor647.2.4, %add641.1.4, !dbg !262
  %add.ptr654.idx.1.2.4 = shl nuw nsw i32 %xor650.1.2.4, 2, !dbg !263
  %add.ptr654.1.2.4 = getelementptr inbounds i8, ptr addrspace(3) %626, i32 %add.ptr654.idx.1.2.4, !dbg !263
  %628 = load i32, ptr addrspace(3) %add.ptr654.1.2.4, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.50.20.vec.insert1948 = insertelement <2 x i32> %v_operand.sroa.50.16.vec.insert1934, i32 %628, i64 1, !dbg !264
  %add632.3.4 = or disjoint i32 %mul630, %mul636
  %add637.3.4 = or disjoint i32 %add632.3.4, 96
  %add646.3.4 = or disjoint i32 %shr645, 6
  %xor647.3.4 = xor i32 %add646.3.4, %and611
  %629 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.3.4
  %xor650.3.4 = xor i32 %xor647.3.4, %mul640, !dbg !262
  %add.ptr654.idx.3.4 = shl nuw nsw i32 %xor650.3.4, 2, !dbg !263
  %add.ptr654.3.4 = getelementptr inbounds i8, ptr addrspace(3) %629, i32 %add.ptr654.idx.3.4, !dbg !263
  %630 = load i32, ptr addrspace(3) %add.ptr654.3.4, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.74.24.vec.insert1970 = insertelement <2 x i32> poison, i32 %630, i64 0, !dbg !264
  %xor650.1.3.4 = xor i32 %xor647.3.4, %add641.1.4, !dbg !262
  %add.ptr654.idx.1.3.4 = shl nuw nsw i32 %xor650.1.3.4, 2, !dbg !263
  %add.ptr654.1.3.4 = getelementptr inbounds i8, ptr addrspace(3) %629, i32 %add.ptr654.idx.1.3.4, !dbg !263
  %631 = load i32, ptr addrspace(3) %add.ptr654.1.3.4, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.74.28.vec.insert1984 = insertelement <2 x i32> %v_operand.sroa.74.24.vec.insert1970, i32 %631, i64 1, !dbg !264
  %632 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1876 to <4 x half>, !dbg !266
  %633 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %632, <4 x half> %607, <4 x float> %output_acc.sroa.0.3), !dbg !267
  %634 = bitcast <2 x i32> %v_operand.sroa.26.12.vec.insert1912 to <4 x half>, !dbg !266
  %635 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %634, <4 x half> %607, <4 x float> %output_acc.sroa.34.3), !dbg !267
  %636 = bitcast <2 x i32> %v_operand.sroa.50.20.vec.insert1948 to <4 x half>, !dbg !266
  %637 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %636, <4 x half> %607, <4 x float> %output_acc.sroa.66.3), !dbg !267
  %638 = bitcast <2 x i32> %v_operand.sroa.74.28.vec.insert1984 to <4 x half>, !dbg !266
  %639 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %638, <4 x half> %607, <4 x float> %output_acc.sroa.98.3), !dbg !267
  br label %if.end686.4, !dbg !268

if.end686.4:                                      ; preds = %if.end576.1.4, %if.end686.3
  %bc2843 = phi <4 x half> [ %232, %if.end686.3 ], [ %607, %if.end576.1.4 ], !dbg !83
  %output_acc.sroa.98.4 = phi <4 x float> [ %output_acc.sroa.98.3, %if.end686.3 ], [ %639, %if.end576.1.4 ], !dbg !83
  %output_acc.sroa.66.4 = phi <4 x float> [ %output_acc.sroa.66.3, %if.end686.3 ], [ %637, %if.end576.1.4 ], !dbg !83
  %output_acc.sroa.34.4 = phi <4 x float> [ %output_acc.sroa.34.3, %if.end686.3 ], [ %635, %if.end576.1.4 ], !dbg !83
  %output_acc.sroa.0.4 = phi <4 x float> [ %output_acc.sroa.0.3, %if.end686.3 ], [ %633, %if.end576.1.4 ], !dbg !83
  %640 = load i32, ptr addrspace(1) %arrayidx130.5, align 4, !dbg !186, !tbaa !30
  %mul444.5 = shl nsw i32 %640, 4, !dbg !187
  %cmp445.5 = icmp slt i32 %640, 0, !dbg !188
  %cmp448.not.5 = icmp sgt i32 %mul444.5, %1
  %or.cond1071.5 = select i1 %cmp445.5, i1 true, i1 %cmp448.not.5, !dbg !189
  br i1 %or.cond1071.5, label %if.end686.5, label %if.then449.5, !dbg !189

if.then449.5:                                     ; preds = %if.end686.4
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454.5 = icmp eq i32 %shr324, 1, !dbg !195
  br i1 %cmp454.5, label %if.then455.5, label %if.end464.5, !dbg !196

if.then455.5:                                     ; preds = %if.then449.5
  %sub460.5 = fsub contract float %max_cache.sroa.11.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461.5 = fmul contract float %sub460.5, 0x3FC7154760000000, !dbg !198
  %cmp.i.i1015.5 = fcmp contract olt float %mul461.5, -1.260000e+02, !dbg !199
  %cond.i.i1016.5 = select contract i1 %cmp.i.i1015.5, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i1017.5 = fadd contract float %mul461.5, %cond.i.i1016.5, !dbg !199
  %641 = tail call contract float @llvm.exp2.f32(float %add.i.i1017.5), !dbg !199
  %cond2.i.i1018.5 = select contract i1 %cmp.i.i1015.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i1019.5 = fmul contract float %cond2.i.i1018.5, %641, !dbg !199
  %642 = bitcast float %mul.i.i1019.5 to i32, !dbg !202
  br label %if.end464.5, !dbg !201

if.end464.5:                                      ; preds = %if.then455.5, %if.then449.5
  %rescale.sroa.0.0.5 = phi i32 [ %642, %if.then455.5 ], [ 0, %if.then449.5 ], !dbg !83
  %643 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %644 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %643) #11, !dbg !209
  %rem.i.i.5 = or disjoint i32 %and469, 16, !dbg !269
  %and.i.i1020.5 = and i32 %644, 1073741760, !dbg !210
  %add.i.i1021.5 = or disjoint i32 %and.i.i1020.5, %rem.i.i.5, !dbg !211
  %shl.i.i1022.5 = shl nuw i32 %add.i.i1021.5, 2, !dbg !212
  %645 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1022.5, i32 %rescale.sroa.0.0.5), !dbg !213
  %646 = bitcast i32 %645 to float, !dbg !214
  %647 = extractelement <4 x half> %274, i64 0, !dbg !215
  %conv.i1023.5 = fpext half %647 to float, !dbg !215
  %648 = extractelement <4 x half> %274, i64 1, !dbg !218
  %conv6.i.5 = fpext half %648 to float, !dbg !218
  %649 = extractelement <4 x half> %274, i64 2, !dbg !219
  %conv.i1025.5 = fpext half %649 to float, !dbg !219
  %650 = extractelement <4 x half> %274, i64 3, !dbg !221
  %conv6.i1027.5 = fpext half %650 to float, !dbg !221
  %mul494.5 = fmul contract float %646, %conv.i1023.5, !dbg !222
  %mul498.5 = fmul contract float %646, %conv6.i.5, !dbg !223
  %mul502.5 = fmul contract float %646, %conv.i1025.5, !dbg !224
  %mul506.5 = fmul contract float %646, %conv6.i1027.5, !dbg !225
  %651 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %652 = fptrunc float %mul494.5 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %651), !dbg !226, !noalias !230
  %653 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %654 = fptrunc float %mul498.5 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %653), !dbg !235, !noalias !230
  %655 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %656 = fptrunc float %mul502.5 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %655), !dbg !237, !noalias !241
  %657 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %658 = fptrunc float %mul506.5 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %657), !dbg !246, !noalias !241
  %659 = insertelement <4 x half> poison, half %652, i64 0, !dbg !248
  %660 = insertelement <4 x half> %659, half %654, i64 1, !dbg !248
  %661 = insertelement <4 x half> %660, half %656, i64 2, !dbg !248
  %662 = insertelement <4 x half> %661, half %658, i64 3, !dbg !248
  %shr529.5 = lshr exact i32 %mul444.5, 1
  %add530.5 = add nuw nsw i32 %shr529.5, %shr140
  %cmp531.5 = icmp ult i32 %add530.5, 512
  %conv541.5 = zext nneg i32 %mul444.5 to i64
  br i1 %cmp531.5, label %if.then532.5, label %if.end576.5, !dbg !249

if.then532.5:                                     ; preds = %if.end464.5
  %663 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1108.5 = shl nuw nsw i64 %conv541.5, 7, !dbg !250
  %664 = getelementptr inbounds i8, ptr addrspace(4) %663, i64 %.idx1108.5, !dbg !250
  %condval_2.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %664, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %664, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.5, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %664, i64 8, !dbg !251
  %condval_2.sroa.6.0.copyload.5 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.5, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %664, i64 12, !dbg !251
  %condval_2.sroa.7.0.copyload.5 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.5, align 4, !dbg !251, !tbaa !30
  br label %if.end576.5, !dbg !252

if.end576.5:                                      ; preds = %if.then532.5, %if.end464.5
  %condval_2.sroa.7.0.5 = phi i32 [ %condval_2.sroa.7.0.copyload.5, %if.then532.5 ], [ 0, %if.end464.5 ], !dbg !83
  %condval_2.sroa.6.0.5 = phi i32 [ %condval_2.sroa.6.0.copyload.5, %if.then532.5 ], [ 0, %if.end464.5 ], !dbg !83
  %condval_2.sroa.5.0.5 = phi i32 [ %condval_2.sroa.5.0.copyload.5, %if.then532.5 ], [ 0, %if.end464.5 ], !dbg !83
  %condval_2.sroa.0.0.5 = phi i32 [ %condval_2.sroa.0.0.copyload.5, %if.then532.5 ], [ 0, %if.end464.5 ], !dbg !83
  br i1 %cmp531.5, label %if.then532.1.5, label %if.end576.1.5, !dbg !249

if.then532.1.5:                                   ; preds = %if.end576.5
  %665 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1108.1.5 = shl nuw nsw i64 %conv541.5, 7, !dbg !250
  %666 = getelementptr inbounds i8, ptr addrspace(4) %665, i64 %.idx1108.1.5, !dbg !250
  %add.ptr552.1.5 = getelementptr inbounds i8, ptr addrspace(4) %666, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1.5 = load i32, ptr addrspace(4) %add.ptr552.1.5, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %666, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.5, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %666, i64 136, !dbg !251
  %condval_2.sroa.6.0.copyload.1.5 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.5, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %666, i64 140, !dbg !251
  %condval_2.sroa.7.0.copyload.1.5 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.5, align 4, !dbg !251, !tbaa !30
  br label %if.end576.1.5, !dbg !252

if.end576.1.5:                                    ; preds = %if.then532.1.5, %if.end576.5
  %condval_2.sroa.7.0.1.5 = phi i32 [ %condval_2.sroa.7.0.copyload.1.5, %if.then532.1.5 ], [ 0, %if.end576.5 ], !dbg !83
  %condval_2.sroa.6.0.1.5 = phi i32 [ %condval_2.sroa.6.0.copyload.1.5, %if.then532.1.5 ], [ 0, %if.end576.5 ], !dbg !83
  %condval_2.sroa.5.0.1.5 = phi i32 [ %condval_2.sroa.5.0.copyload.1.5, %if.then532.1.5 ], [ 0, %if.end576.5 ], !dbg !83
  %condval_2.sroa.0.0.1.5 = phi i32 [ %condval_2.sroa.0.0.copyload.1.5, %if.then532.1.5 ], [ 0, %if.end576.5 ], !dbg !83
  %667 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul606, !dbg !253
  %add.ptr616.idx.51264 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.51265 = getelementptr inbounds i8, ptr addrspace(3) %667, i32 %add.ptr616.idx.51264, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1728 = shl i32 %condval_2.sroa.0.0.1.5, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1437 = and i32 %condval_2.sroa.0.0.5, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1439 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1728, %v_column_local.sroa.0.0.insert.ext1437, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1439, ptr addrspace(3) %add.ptr616.51265, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.0.2.extract.shift2018 = lshr i32 %condval_2.sroa.0.0.5, 16, !dbg !255
  %v_fetch_local.sroa.98.18.extract.shift2158 = and i32 %condval_2.sroa.0.0.1.5, -65536, !dbg !254
  %add607.1.5 = or disjoint i32 %mul606, 128, !dbg !256
  %668 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.1.5, !dbg !253
  %xor612.1.5 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.1.5 = xor i32 %xor612.1.5, 4, !dbg !253
  %add.ptr616.1.5 = getelementptr inbounds i8, ptr addrspace(3) %668, i32 %add.ptr616.idx.1.5, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1443 = or disjoint i32 %v_fetch_local.sroa.98.18.extract.shift2158, %v_fetch_local.sroa.0.2.extract.shift2018, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1443, ptr addrspace(3) %add.ptr616.1.5, align 4, !dbg !254, !tbaa !30
  %add607.2.5 = or disjoint i32 %mul606, 256, !dbg !256
  %669 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.2.5, !dbg !253
  %xor612.2.5 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.2.5 = xor i32 %xor612.2.5, 8, !dbg !253
  %add.ptr616.2.5 = getelementptr inbounds i8, ptr addrspace(3) %669, i32 %add.ptr616.idx.2.5, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1738 = shl i32 %condval_2.sroa.5.0.1.5, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1445 = and i32 %condval_2.sroa.5.0.5, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1447 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1738, %v_column_local.sroa.0.0.insert.ext1445, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1447, ptr addrspace(3) %add.ptr616.2.5, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.26.6.extract.shift2053 = lshr i32 %condval_2.sroa.5.0.5, 16, !dbg !255
  %v_fetch_local.sroa.122.22.extract.shift2193 = and i32 %condval_2.sroa.5.0.1.5, -65536, !dbg !254
  %add607.3.5 = or disjoint i32 %mul606, 384, !dbg !256
  %670 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.3.5, !dbg !253
  %xor612.3.5 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.3.5 = xor i32 %xor612.3.5, 12, !dbg !253
  %add.ptr616.3.5 = getelementptr inbounds i8, ptr addrspace(3) %670, i32 %add.ptr616.idx.3.5, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1451 = or disjoint i32 %v_fetch_local.sroa.122.22.extract.shift2193, %v_fetch_local.sroa.26.6.extract.shift2053, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1451, ptr addrspace(3) %add.ptr616.3.5, align 4, !dbg !254, !tbaa !30
  %add607.4.5 = or disjoint i32 %mul606, 512, !dbg !256
  %671 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.4.5, !dbg !253
  %xor612.4.5 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.4.5 = xor i32 %xor612.4.5, 16, !dbg !253
  %add.ptr616.4.5 = getelementptr inbounds i8, ptr addrspace(3) %671, i32 %add.ptr616.idx.4.5, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1748 = shl i32 %condval_2.sroa.6.0.1.5, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1453 = and i32 %condval_2.sroa.6.0.5, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1455 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1748, %v_column_local.sroa.0.0.insert.ext1453, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1455, ptr addrspace(3) %add.ptr616.4.5, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.50.10.extract.shift2088 = lshr i32 %condval_2.sroa.6.0.5, 16, !dbg !255
  %v_fetch_local.sroa.146.26.extract.shift2228 = and i32 %condval_2.sroa.6.0.1.5, -65536, !dbg !254
  %add607.5.5 = or disjoint i32 %mul606, 640, !dbg !256
  %672 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.5.5, !dbg !253
  %xor612.5.5 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.5.5 = xor i32 %xor612.5.5, 20, !dbg !253
  %add.ptr616.5.5 = getelementptr inbounds i8, ptr addrspace(3) %672, i32 %add.ptr616.idx.5.5, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1459 = or disjoint i32 %v_fetch_local.sroa.146.26.extract.shift2228, %v_fetch_local.sroa.50.10.extract.shift2088, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1459, ptr addrspace(3) %add.ptr616.5.5, align 4, !dbg !254, !tbaa !30
  %add607.6.5 = or disjoint i32 %mul606, 768, !dbg !256
  %673 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.6.5, !dbg !253
  %xor612.6.5 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.6.5 = xor i32 %xor612.6.5, 24, !dbg !253
  %add.ptr616.6.5 = getelementptr inbounds i8, ptr addrspace(3) %673, i32 %add.ptr616.idx.6.5, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1758 = shl i32 %condval_2.sroa.7.0.1.5, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1461 = and i32 %condval_2.sroa.7.0.5, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1463 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1758, %v_column_local.sroa.0.0.insert.ext1461, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1463, ptr addrspace(3) %add.ptr616.6.5, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.74.14.extract.shift2123 = lshr i32 %condval_2.sroa.7.0.5, 16, !dbg !255
  %v_fetch_local.sroa.170.30.extract.shift2263 = and i32 %condval_2.sroa.7.0.1.5, -65536, !dbg !254
  %add607.7.5 = or disjoint i32 %mul606, 896, !dbg !256
  %674 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.7.5, !dbg !253
  %xor612.7.5 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.7.5 = xor i32 %xor612.7.5, 28, !dbg !253
  %add.ptr616.7.5 = getelementptr inbounds i8, ptr addrspace(3) %674, i32 %add.ptr616.idx.7.5, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1467 = or disjoint i32 %v_fetch_local.sroa.170.30.extract.shift2263, %v_fetch_local.sroa.74.14.extract.shift2123, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1467, ptr addrspace(3) %add.ptr616.7.5, align 4, !dbg !254, !tbaa !30
  fence syncscope("warp") release, !dbg !257
  tail call void @llvm.mxc.barrier.warp(), !dbg !260
  fence syncscope("warp") acquire, !dbg !261
  %add637.5 = or disjoint i32 %mul630, %mul636
  %xor647.5 = xor i32 %shr645, %and611
  %675 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.5
  %xor650.5 = xor i32 %xor647.5, %mul640, !dbg !262
  %add.ptr654.idx.5 = shl nuw nsw i32 %xor650.5, 2, !dbg !263
  %add.ptr654.5 = getelementptr inbounds i8, ptr addrspace(3) %675, i32 %add.ptr654.idx.5, !dbg !263
  %676 = load i32, ptr addrspace(3) %add.ptr654.5, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1864 = insertelement <2 x i32> poison, i32 %676, i64 0, !dbg !264
  %add641.1.5 = or i32 %shr140, 1, !dbg !265
  %xor650.1.5 = xor i32 %xor647.5, %add641.1.5, !dbg !262
  %add.ptr654.idx.1.5 = shl nuw nsw i32 %xor650.1.5, 2, !dbg !263
  %add.ptr654.1.5 = getelementptr inbounds i8, ptr addrspace(3) %675, i32 %add.ptr654.idx.1.5, !dbg !263
  %677 = load i32, ptr addrspace(3) %add.ptr654.1.5, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1878 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1864, i32 %677, i64 1, !dbg !264
  %add632.1.5 = or disjoint i32 %mul630, %mul636
  %add637.1.5 = or disjoint i32 %add632.1.5, 32
  %add646.1.5 = or disjoint i32 %shr645, 2
  %xor647.1.5 = xor i32 %add646.1.5, %and611
  %678 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.1.5
  %xor650.11186.5 = xor i32 %xor647.1.5, %mul640, !dbg !262
  %add.ptr654.idx.11187.5 = shl nuw nsw i32 %xor650.11186.5, 2, !dbg !263
  %add.ptr654.11188.5 = getelementptr inbounds i8, ptr addrspace(3) %678, i32 %add.ptr654.idx.11187.5, !dbg !263
  %679 = load i32, ptr addrspace(3) %add.ptr654.11188.5, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.26.8.vec.insert1900 = insertelement <2 x i32> poison, i32 %679, i64 0, !dbg !264
  %xor650.1.1.5 = xor i32 %xor647.1.5, %add641.1.5, !dbg !262
  %add.ptr654.idx.1.1.5 = shl nuw nsw i32 %xor650.1.1.5, 2, !dbg !263
  %add.ptr654.1.1.5 = getelementptr inbounds i8, ptr addrspace(3) %678, i32 %add.ptr654.idx.1.1.5, !dbg !263
  %680 = load i32, ptr addrspace(3) %add.ptr654.1.1.5, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.26.12.vec.insert1914 = insertelement <2 x i32> %v_operand.sroa.26.8.vec.insert1900, i32 %680, i64 1, !dbg !264
  %add632.2.5 = or disjoint i32 %mul630, %mul636
  %add637.2.5 = or disjoint i32 %add632.2.5, 64
  %add646.2.5 = or disjoint i32 %shr645, 4
  %xor647.2.5 = xor i32 %add646.2.5, %and611
  %681 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.2.5
  %xor650.2.5 = xor i32 %xor647.2.5, %mul640, !dbg !262
  %add.ptr654.idx.2.5 = shl nuw nsw i32 %xor650.2.5, 2, !dbg !263
  %add.ptr654.2.5 = getelementptr inbounds i8, ptr addrspace(3) %681, i32 %add.ptr654.idx.2.5, !dbg !263
  %682 = load i32, ptr addrspace(3) %add.ptr654.2.5, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.50.16.vec.insert1936 = insertelement <2 x i32> poison, i32 %682, i64 0, !dbg !264
  %xor650.1.2.5 = xor i32 %xor647.2.5, %add641.1.5, !dbg !262
  %add.ptr654.idx.1.2.5 = shl nuw nsw i32 %xor650.1.2.5, 2, !dbg !263
  %add.ptr654.1.2.5 = getelementptr inbounds i8, ptr addrspace(3) %681, i32 %add.ptr654.idx.1.2.5, !dbg !263
  %683 = load i32, ptr addrspace(3) %add.ptr654.1.2.5, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.50.20.vec.insert1950 = insertelement <2 x i32> %v_operand.sroa.50.16.vec.insert1936, i32 %683, i64 1, !dbg !264
  %add632.3.5 = or disjoint i32 %mul630, %mul636
  %add637.3.5 = or disjoint i32 %add632.3.5, 96
  %add646.3.5 = or disjoint i32 %shr645, 6
  %xor647.3.5 = xor i32 %add646.3.5, %and611
  %684 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.3.5
  %xor650.3.5 = xor i32 %xor647.3.5, %mul640, !dbg !262
  %add.ptr654.idx.3.5 = shl nuw nsw i32 %xor650.3.5, 2, !dbg !263
  %add.ptr654.3.5 = getelementptr inbounds i8, ptr addrspace(3) %684, i32 %add.ptr654.idx.3.5, !dbg !263
  %685 = load i32, ptr addrspace(3) %add.ptr654.3.5, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.74.24.vec.insert1972 = insertelement <2 x i32> poison, i32 %685, i64 0, !dbg !264
  %xor650.1.3.5 = xor i32 %xor647.3.5, %add641.1.5, !dbg !262
  %add.ptr654.idx.1.3.5 = shl nuw nsw i32 %xor650.1.3.5, 2, !dbg !263
  %add.ptr654.1.3.5 = getelementptr inbounds i8, ptr addrspace(3) %684, i32 %add.ptr654.idx.1.3.5, !dbg !263
  %686 = load i32, ptr addrspace(3) %add.ptr654.1.3.5, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.74.28.vec.insert1986 = insertelement <2 x i32> %v_operand.sroa.74.24.vec.insert1972, i32 %686, i64 1, !dbg !264
  %687 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1878 to <4 x half>, !dbg !266
  %688 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %687, <4 x half> %662, <4 x float> %output_acc.sroa.0.4), !dbg !267
  %689 = bitcast <2 x i32> %v_operand.sroa.26.12.vec.insert1914 to <4 x half>, !dbg !266
  %690 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %689, <4 x half> %662, <4 x float> %output_acc.sroa.34.4), !dbg !267
  %691 = bitcast <2 x i32> %v_operand.sroa.50.20.vec.insert1950 to <4 x half>, !dbg !266
  %692 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %691, <4 x half> %662, <4 x float> %output_acc.sroa.66.4), !dbg !267
  %693 = bitcast <2 x i32> %v_operand.sroa.74.28.vec.insert1986 to <4 x half>, !dbg !266
  %694 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %693, <4 x half> %662, <4 x float> %output_acc.sroa.98.4), !dbg !267
  br label %if.end686.5, !dbg !268

if.end686.5:                                      ; preds = %if.end576.1.5, %if.end686.4
  %bc2847 = phi <4 x half> [ %274, %if.end686.4 ], [ %662, %if.end576.1.5 ], !dbg !83
  %output_acc.sroa.98.5 = phi <4 x float> [ %output_acc.sroa.98.4, %if.end686.4 ], [ %694, %if.end576.1.5 ], !dbg !83
  %output_acc.sroa.66.5 = phi <4 x float> [ %output_acc.sroa.66.4, %if.end686.4 ], [ %692, %if.end576.1.5 ], !dbg !83
  %output_acc.sroa.34.5 = phi <4 x float> [ %output_acc.sroa.34.4, %if.end686.4 ], [ %690, %if.end576.1.5 ], !dbg !83
  %output_acc.sroa.0.5 = phi <4 x float> [ %output_acc.sroa.0.4, %if.end686.4 ], [ %688, %if.end576.1.5 ], !dbg !83
  %695 = load i32, ptr addrspace(1) %arrayidx130.6, align 4, !dbg !186, !tbaa !30
  %mul444.6 = shl nsw i32 %695, 4, !dbg !187
  %cmp445.6 = icmp slt i32 %695, 0, !dbg !188
  %cmp448.not.6 = icmp sgt i32 %mul444.6, %1
  %or.cond1071.6 = select i1 %cmp445.6, i1 true, i1 %cmp448.not.6, !dbg !189
  br i1 %or.cond1071.6, label %if.end686.6, label %if.then449.6, !dbg !189

if.then449.6:                                     ; preds = %if.end686.5
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454.6 = icmp eq i32 %shr324, 2, !dbg !195
  br i1 %cmp454.6, label %if.then455.6, label %if.end464.6, !dbg !196

if.then455.6:                                     ; preds = %if.then449.6
  %sub460.6 = fsub contract float %max_cache.sroa.11.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461.6 = fmul contract float %sub460.6, 0x3FC7154760000000, !dbg !198
  %cmp.i.i1015.6 = fcmp contract olt float %mul461.6, -1.260000e+02, !dbg !199
  %cond.i.i1016.6 = select contract i1 %cmp.i.i1015.6, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i1017.6 = fadd contract float %mul461.6, %cond.i.i1016.6, !dbg !199
  %696 = tail call contract float @llvm.exp2.f32(float %add.i.i1017.6), !dbg !199
  %cond2.i.i1018.6 = select contract i1 %cmp.i.i1015.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i1019.6 = fmul contract float %cond2.i.i1018.6, %696, !dbg !199
  %697 = bitcast float %mul.i.i1019.6 to i32, !dbg !202
  br label %if.end464.6, !dbg !201

if.end464.6:                                      ; preds = %if.then455.6, %if.then449.6
  %rescale.sroa.0.0.6 = phi i32 [ %697, %if.then455.6 ], [ 0, %if.then449.6 ], !dbg !83
  %698 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %699 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %698) #11, !dbg !209
  %rem.i.i.6 = or disjoint i32 %and469, 32, !dbg !269
  %and.i.i1020.6 = and i32 %699, 1073741760, !dbg !210
  %add.i.i1021.6 = or disjoint i32 %and.i.i1020.6, %rem.i.i.6, !dbg !211
  %shl.i.i1022.6 = shl nuw i32 %add.i.i1021.6, 2, !dbg !212
  %700 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1022.6, i32 %rescale.sroa.0.0.6), !dbg !213
  %701 = bitcast i32 %700 to float, !dbg !214
  %702 = extractelement <4 x half> %316, i64 0, !dbg !215
  %conv.i1023.6 = fpext half %702 to float, !dbg !215
  %703 = extractelement <4 x half> %316, i64 1, !dbg !218
  %conv6.i.6 = fpext half %703 to float, !dbg !218
  %704 = extractelement <4 x half> %316, i64 2, !dbg !219
  %conv.i1025.6 = fpext half %704 to float, !dbg !219
  %705 = extractelement <4 x half> %316, i64 3, !dbg !221
  %conv6.i1027.6 = fpext half %705 to float, !dbg !221
  %mul494.6 = fmul contract float %701, %conv.i1023.6, !dbg !222
  %mul498.6 = fmul contract float %701, %conv6.i.6, !dbg !223
  %mul502.6 = fmul contract float %701, %conv.i1025.6, !dbg !224
  %mul506.6 = fmul contract float %701, %conv6.i1027.6, !dbg !225
  %706 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %707 = fptrunc float %mul494.6 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %706), !dbg !226, !noalias !230
  %708 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %709 = fptrunc float %mul498.6 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %708), !dbg !235, !noalias !230
  %710 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %711 = fptrunc float %mul502.6 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %710), !dbg !237, !noalias !241
  %712 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %713 = fptrunc float %mul506.6 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %712), !dbg !246, !noalias !241
  %714 = insertelement <4 x half> poison, half %707, i64 0, !dbg !248
  %715 = insertelement <4 x half> %714, half %709, i64 1, !dbg !248
  %716 = insertelement <4 x half> %715, half %711, i64 2, !dbg !248
  %717 = insertelement <4 x half> %716, half %713, i64 3, !dbg !248
  %shr529.6 = lshr exact i32 %mul444.6, 1
  %add530.6 = add nuw nsw i32 %shr529.6, %shr140
  %cmp531.6 = icmp ult i32 %add530.6, 512
  %conv541.6 = zext nneg i32 %mul444.6 to i64
  br i1 %cmp531.6, label %if.then532.6, label %if.end576.6, !dbg !249

if.then532.6:                                     ; preds = %if.end464.6
  %718 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1108.6 = shl nuw nsw i64 %conv541.6, 7, !dbg !250
  %719 = getelementptr inbounds i8, ptr addrspace(4) %718, i64 %.idx1108.6, !dbg !250
  %condval_2.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %719, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %719, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.6, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %719, i64 8, !dbg !251
  %condval_2.sroa.6.0.copyload.6 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.6, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %719, i64 12, !dbg !251
  %condval_2.sroa.7.0.copyload.6 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.6, align 4, !dbg !251, !tbaa !30
  br label %if.end576.6, !dbg !252

if.end576.6:                                      ; preds = %if.then532.6, %if.end464.6
  %condval_2.sroa.7.0.6 = phi i32 [ %condval_2.sroa.7.0.copyload.6, %if.then532.6 ], [ 0, %if.end464.6 ], !dbg !83
  %condval_2.sroa.6.0.6 = phi i32 [ %condval_2.sroa.6.0.copyload.6, %if.then532.6 ], [ 0, %if.end464.6 ], !dbg !83
  %condval_2.sroa.5.0.6 = phi i32 [ %condval_2.sroa.5.0.copyload.6, %if.then532.6 ], [ 0, %if.end464.6 ], !dbg !83
  %condval_2.sroa.0.0.6 = phi i32 [ %condval_2.sroa.0.0.copyload.6, %if.then532.6 ], [ 0, %if.end464.6 ], !dbg !83
  br i1 %cmp531.6, label %if.then532.1.6, label %if.end576.1.6, !dbg !249

if.then532.1.6:                                   ; preds = %if.end576.6
  %720 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1108.1.6 = shl nuw nsw i64 %conv541.6, 7, !dbg !250
  %721 = getelementptr inbounds i8, ptr addrspace(4) %720, i64 %.idx1108.1.6, !dbg !250
  %add.ptr552.1.6 = getelementptr inbounds i8, ptr addrspace(4) %721, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1.6 = load i32, ptr addrspace(4) %add.ptr552.1.6, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %721, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.6, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %721, i64 136, !dbg !251
  %condval_2.sroa.6.0.copyload.1.6 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.6, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %721, i64 140, !dbg !251
  %condval_2.sroa.7.0.copyload.1.6 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.6, align 4, !dbg !251, !tbaa !30
  br label %if.end576.1.6, !dbg !252

if.end576.1.6:                                    ; preds = %if.then532.1.6, %if.end576.6
  %condval_2.sroa.7.0.1.6 = phi i32 [ %condval_2.sroa.7.0.copyload.1.6, %if.then532.1.6 ], [ 0, %if.end576.6 ], !dbg !83
  %condval_2.sroa.6.0.1.6 = phi i32 [ %condval_2.sroa.6.0.copyload.1.6, %if.then532.1.6 ], [ 0, %if.end576.6 ], !dbg !83
  %condval_2.sroa.5.0.1.6 = phi i32 [ %condval_2.sroa.5.0.copyload.1.6, %if.then532.1.6 ], [ 0, %if.end576.6 ], !dbg !83
  %condval_2.sroa.0.0.1.6 = phi i32 [ %condval_2.sroa.0.0.copyload.1.6, %if.then532.1.6 ], [ 0, %if.end576.6 ], !dbg !83
  %722 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul606, !dbg !253
  %add.ptr616.idx.61269 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.61270 = getelementptr inbounds i8, ptr addrspace(3) %722, i32 %add.ptr616.idx.61269, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1768 = shl i32 %condval_2.sroa.0.0.1.6, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1469 = and i32 %condval_2.sroa.0.0.6, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1471 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1768, %v_column_local.sroa.0.0.insert.ext1469, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1471, ptr addrspace(3) %add.ptr616.61270, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.0.2.extract.shift2021 = lshr i32 %condval_2.sroa.0.0.6, 16, !dbg !255
  %v_fetch_local.sroa.98.18.extract.shift2161 = and i32 %condval_2.sroa.0.0.1.6, -65536, !dbg !254
  %add607.1.6 = or disjoint i32 %mul606, 128, !dbg !256
  %723 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.1.6, !dbg !253
  %xor612.1.6 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.1.6 = xor i32 %xor612.1.6, 4, !dbg !253
  %add.ptr616.1.6 = getelementptr inbounds i8, ptr addrspace(3) %723, i32 %add.ptr616.idx.1.6, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1475 = or disjoint i32 %v_fetch_local.sroa.98.18.extract.shift2161, %v_fetch_local.sroa.0.2.extract.shift2021, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1475, ptr addrspace(3) %add.ptr616.1.6, align 4, !dbg !254, !tbaa !30
  %add607.2.6 = or disjoint i32 %mul606, 256, !dbg !256
  %724 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.2.6, !dbg !253
  %xor612.2.6 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.2.6 = xor i32 %xor612.2.6, 8, !dbg !253
  %add.ptr616.2.6 = getelementptr inbounds i8, ptr addrspace(3) %724, i32 %add.ptr616.idx.2.6, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1778 = shl i32 %condval_2.sroa.5.0.1.6, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1477 = and i32 %condval_2.sroa.5.0.6, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1479 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1778, %v_column_local.sroa.0.0.insert.ext1477, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1479, ptr addrspace(3) %add.ptr616.2.6, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.26.6.extract.shift2056 = lshr i32 %condval_2.sroa.5.0.6, 16, !dbg !255
  %v_fetch_local.sroa.122.22.extract.shift2196 = and i32 %condval_2.sroa.5.0.1.6, -65536, !dbg !254
  %add607.3.6 = or disjoint i32 %mul606, 384, !dbg !256
  %725 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.3.6, !dbg !253
  %xor612.3.6 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.3.6 = xor i32 %xor612.3.6, 12, !dbg !253
  %add.ptr616.3.6 = getelementptr inbounds i8, ptr addrspace(3) %725, i32 %add.ptr616.idx.3.6, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1483 = or disjoint i32 %v_fetch_local.sroa.122.22.extract.shift2196, %v_fetch_local.sroa.26.6.extract.shift2056, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1483, ptr addrspace(3) %add.ptr616.3.6, align 4, !dbg !254, !tbaa !30
  %add607.4.6 = or disjoint i32 %mul606, 512, !dbg !256
  %726 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.4.6, !dbg !253
  %xor612.4.6 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.4.6 = xor i32 %xor612.4.6, 16, !dbg !253
  %add.ptr616.4.6 = getelementptr inbounds i8, ptr addrspace(3) %726, i32 %add.ptr616.idx.4.6, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1788 = shl i32 %condval_2.sroa.6.0.1.6, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1485 = and i32 %condval_2.sroa.6.0.6, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1487 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1788, %v_column_local.sroa.0.0.insert.ext1485, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1487, ptr addrspace(3) %add.ptr616.4.6, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.50.10.extract.shift2091 = lshr i32 %condval_2.sroa.6.0.6, 16, !dbg !255
  %v_fetch_local.sroa.146.26.extract.shift2231 = and i32 %condval_2.sroa.6.0.1.6, -65536, !dbg !254
  %add607.5.6 = or disjoint i32 %mul606, 640, !dbg !256
  %727 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.5.6, !dbg !253
  %xor612.5.6 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.5.6 = xor i32 %xor612.5.6, 20, !dbg !253
  %add.ptr616.5.6 = getelementptr inbounds i8, ptr addrspace(3) %727, i32 %add.ptr616.idx.5.6, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1491 = or disjoint i32 %v_fetch_local.sroa.146.26.extract.shift2231, %v_fetch_local.sroa.50.10.extract.shift2091, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1491, ptr addrspace(3) %add.ptr616.5.6, align 4, !dbg !254, !tbaa !30
  %add607.6.6 = or disjoint i32 %mul606, 768, !dbg !256
  %728 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.6.6, !dbg !253
  %xor612.6.6 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.6.6 = xor i32 %xor612.6.6, 24, !dbg !253
  %add.ptr616.6.6 = getelementptr inbounds i8, ptr addrspace(3) %728, i32 %add.ptr616.idx.6.6, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1798 = shl i32 %condval_2.sroa.7.0.1.6, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1493 = and i32 %condval_2.sroa.7.0.6, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1495 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1798, %v_column_local.sroa.0.0.insert.ext1493, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1495, ptr addrspace(3) %add.ptr616.6.6, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.74.14.extract.shift2126 = lshr i32 %condval_2.sroa.7.0.6, 16, !dbg !255
  %v_fetch_local.sroa.170.30.extract.shift2266 = and i32 %condval_2.sroa.7.0.1.6, -65536, !dbg !254
  %add607.7.6 = or disjoint i32 %mul606, 896, !dbg !256
  %729 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.7.6, !dbg !253
  %xor612.7.6 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.7.6 = xor i32 %xor612.7.6, 28, !dbg !253
  %add.ptr616.7.6 = getelementptr inbounds i8, ptr addrspace(3) %729, i32 %add.ptr616.idx.7.6, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1499 = or disjoint i32 %v_fetch_local.sroa.170.30.extract.shift2266, %v_fetch_local.sroa.74.14.extract.shift2126, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1499, ptr addrspace(3) %add.ptr616.7.6, align 4, !dbg !254, !tbaa !30
  fence syncscope("warp") release, !dbg !257
  tail call void @llvm.mxc.barrier.warp(), !dbg !260
  fence syncscope("warp") acquire, !dbg !261
  %add637.6 = or disjoint i32 %mul630, %mul636
  %xor647.6 = xor i32 %shr645, %and611
  %730 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.6
  %xor650.6 = xor i32 %xor647.6, %mul640, !dbg !262
  %add.ptr654.idx.6 = shl nuw nsw i32 %xor650.6, 2, !dbg !263
  %add.ptr654.6 = getelementptr inbounds i8, ptr addrspace(3) %730, i32 %add.ptr654.idx.6, !dbg !263
  %731 = load i32, ptr addrspace(3) %add.ptr654.6, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1866 = insertelement <2 x i32> poison, i32 %731, i64 0, !dbg !264
  %add641.1.6 = or i32 %shr140, 1, !dbg !265
  %xor650.1.6 = xor i32 %xor647.6, %add641.1.6, !dbg !262
  %add.ptr654.idx.1.6 = shl nuw nsw i32 %xor650.1.6, 2, !dbg !263
  %add.ptr654.1.6 = getelementptr inbounds i8, ptr addrspace(3) %730, i32 %add.ptr654.idx.1.6, !dbg !263
  %732 = load i32, ptr addrspace(3) %add.ptr654.1.6, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1880 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1866, i32 %732, i64 1, !dbg !264
  %add632.1.6 = or disjoint i32 %mul630, %mul636
  %add637.1.6 = or disjoint i32 %add632.1.6, 32
  %add646.1.6 = or disjoint i32 %shr645, 2
  %xor647.1.6 = xor i32 %add646.1.6, %and611
  %733 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.1.6
  %xor650.11186.6 = xor i32 %xor647.1.6, %mul640, !dbg !262
  %add.ptr654.idx.11187.6 = shl nuw nsw i32 %xor650.11186.6, 2, !dbg !263
  %add.ptr654.11188.6 = getelementptr inbounds i8, ptr addrspace(3) %733, i32 %add.ptr654.idx.11187.6, !dbg !263
  %734 = load i32, ptr addrspace(3) %add.ptr654.11188.6, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.26.8.vec.insert1902 = insertelement <2 x i32> poison, i32 %734, i64 0, !dbg !264
  %xor650.1.1.6 = xor i32 %xor647.1.6, %add641.1.6, !dbg !262
  %add.ptr654.idx.1.1.6 = shl nuw nsw i32 %xor650.1.1.6, 2, !dbg !263
  %add.ptr654.1.1.6 = getelementptr inbounds i8, ptr addrspace(3) %733, i32 %add.ptr654.idx.1.1.6, !dbg !263
  %735 = load i32, ptr addrspace(3) %add.ptr654.1.1.6, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.26.12.vec.insert1916 = insertelement <2 x i32> %v_operand.sroa.26.8.vec.insert1902, i32 %735, i64 1, !dbg !264
  %add632.2.6 = or disjoint i32 %mul630, %mul636
  %add637.2.6 = or disjoint i32 %add632.2.6, 64
  %add646.2.6 = or disjoint i32 %shr645, 4
  %xor647.2.6 = xor i32 %add646.2.6, %and611
  %736 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.2.6
  %xor650.2.6 = xor i32 %xor647.2.6, %mul640, !dbg !262
  %add.ptr654.idx.2.6 = shl nuw nsw i32 %xor650.2.6, 2, !dbg !263
  %add.ptr654.2.6 = getelementptr inbounds i8, ptr addrspace(3) %736, i32 %add.ptr654.idx.2.6, !dbg !263
  %737 = load i32, ptr addrspace(3) %add.ptr654.2.6, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.50.16.vec.insert1938 = insertelement <2 x i32> poison, i32 %737, i64 0, !dbg !264
  %xor650.1.2.6 = xor i32 %xor647.2.6, %add641.1.6, !dbg !262
  %add.ptr654.idx.1.2.6 = shl nuw nsw i32 %xor650.1.2.6, 2, !dbg !263
  %add.ptr654.1.2.6 = getelementptr inbounds i8, ptr addrspace(3) %736, i32 %add.ptr654.idx.1.2.6, !dbg !263
  %738 = load i32, ptr addrspace(3) %add.ptr654.1.2.6, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.50.20.vec.insert1952 = insertelement <2 x i32> %v_operand.sroa.50.16.vec.insert1938, i32 %738, i64 1, !dbg !264
  %add632.3.6 = or disjoint i32 %mul630, %mul636
  %add637.3.6 = or disjoint i32 %add632.3.6, 96
  %add646.3.6 = or disjoint i32 %shr645, 6
  %xor647.3.6 = xor i32 %add646.3.6, %and611
  %739 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.3.6
  %xor650.3.6 = xor i32 %xor647.3.6, %mul640, !dbg !262
  %add.ptr654.idx.3.6 = shl nuw nsw i32 %xor650.3.6, 2, !dbg !263
  %add.ptr654.3.6 = getelementptr inbounds i8, ptr addrspace(3) %739, i32 %add.ptr654.idx.3.6, !dbg !263
  %740 = load i32, ptr addrspace(3) %add.ptr654.3.6, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.74.24.vec.insert1974 = insertelement <2 x i32> poison, i32 %740, i64 0, !dbg !264
  %xor650.1.3.6 = xor i32 %xor647.3.6, %add641.1.6, !dbg !262
  %add.ptr654.idx.1.3.6 = shl nuw nsw i32 %xor650.1.3.6, 2, !dbg !263
  %add.ptr654.1.3.6 = getelementptr inbounds i8, ptr addrspace(3) %739, i32 %add.ptr654.idx.1.3.6, !dbg !263
  %741 = load i32, ptr addrspace(3) %add.ptr654.1.3.6, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.74.28.vec.insert1988 = insertelement <2 x i32> %v_operand.sroa.74.24.vec.insert1974, i32 %741, i64 1, !dbg !264
  %742 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1880 to <4 x half>, !dbg !266
  %743 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %742, <4 x half> %717, <4 x float> %output_acc.sroa.0.5), !dbg !267
  %744 = bitcast <2 x i32> %v_operand.sroa.26.12.vec.insert1916 to <4 x half>, !dbg !266
  %745 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %744, <4 x half> %717, <4 x float> %output_acc.sroa.34.5), !dbg !267
  %746 = bitcast <2 x i32> %v_operand.sroa.50.20.vec.insert1952 to <4 x half>, !dbg !266
  %747 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %746, <4 x half> %717, <4 x float> %output_acc.sroa.66.5), !dbg !267
  %748 = bitcast <2 x i32> %v_operand.sroa.74.28.vec.insert1988 to <4 x half>, !dbg !266
  %749 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %748, <4 x half> %717, <4 x float> %output_acc.sroa.98.5), !dbg !267
  br label %if.end686.6, !dbg !268

if.end686.6:                                      ; preds = %if.end576.1.6, %if.end686.5
  %bc2851 = phi <4 x half> [ %316, %if.end686.5 ], [ %717, %if.end576.1.6 ], !dbg !83
  %output_acc.sroa.98.6 = phi <4 x float> [ %output_acc.sroa.98.5, %if.end686.5 ], [ %749, %if.end576.1.6 ], !dbg !83
  %output_acc.sroa.66.6 = phi <4 x float> [ %output_acc.sroa.66.5, %if.end686.5 ], [ %747, %if.end576.1.6 ], !dbg !83
  %output_acc.sroa.34.6 = phi <4 x float> [ %output_acc.sroa.34.5, %if.end686.5 ], [ %745, %if.end576.1.6 ], !dbg !83
  %output_acc.sroa.0.6 = phi <4 x float> [ %output_acc.sroa.0.5, %if.end686.5 ], [ %743, %if.end576.1.6 ], !dbg !83
  %750 = load i32, ptr addrspace(1) %arrayidx130.7, align 4, !dbg !186, !tbaa !30
  %mul444.7 = shl nsw i32 %750, 4, !dbg !187
  %cmp445.7 = icmp slt i32 %750, 0, !dbg !188
  %cmp448.not.7 = icmp sgt i32 %mul444.7, %1
  %or.cond1071.7 = select i1 %cmp445.7, i1 true, i1 %cmp448.not.7, !dbg !189
  br i1 %or.cond1071.7, label %if.end686.7, label %if.then449.7, !dbg !189

if.then449.7:                                     ; preds = %if.end686.6
  fence syncscope("warp") release, !dbg !190
  tail call void @llvm.mxc.barrier.warp(), !dbg !193
  fence syncscope("warp") acquire, !dbg !194
  %cmp454.7 = icmp eq i32 %shr324, 3, !dbg !195
  br i1 %cmp454.7, label %if.then455.7, label %if.end464.7, !dbg !196

if.then455.7:                                     ; preds = %if.then449.7
  %sub460.7 = fsub contract float %max_cache.sroa.11.7, %global_max.sroa.0.1.7, !dbg !197
  %mul461.7 = fmul contract float %sub460.7, 0x3FC7154760000000, !dbg !198
  %cmp.i.i1015.7 = fcmp contract olt float %mul461.7, -1.260000e+02, !dbg !199
  %cond.i.i1016.7 = select contract i1 %cmp.i.i1015.7, float 6.400000e+01, float 0.000000e+00, !dbg !199
  %add.i.i1017.7 = fadd contract float %mul461.7, %cond.i.i1016.7, !dbg !199
  %751 = tail call contract float @llvm.exp2.f32(float %add.i.i1017.7), !dbg !199
  %cond2.i.i1018.7 = select contract i1 %cmp.i.i1015.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !199
  %mul.i.i1019.7 = fmul contract float %cond2.i.i1018.7, %751, !dbg !199
  %752 = bitcast float %mul.i.i1019.7 to i32, !dbg !202
  br label %if.end464.7, !dbg !201

if.end464.7:                                      ; preds = %if.then455.7, %if.then449.7
  %rescale.sroa.0.0.7 = phi i32 [ %752, %if.then455.7 ], [ 0, %if.then449.7 ], !dbg !83
  %753 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !205
  %754 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %753) #11, !dbg !209
  %rem.i.i.7 = or disjoint i32 %and469, 48, !dbg !269
  %and.i.i1020.7 = and i32 %754, 1073741760, !dbg !210
  %add.i.i1021.7 = or disjoint i32 %and.i.i1020.7, %rem.i.i.7, !dbg !211
  %shl.i.i1022.7 = shl nuw i32 %add.i.i1021.7, 2, !dbg !212
  %755 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1022.7, i32 %rescale.sroa.0.0.7), !dbg !213
  %756 = bitcast i32 %755 to float, !dbg !214
  %757 = extractelement <4 x half> %358, i64 0, !dbg !215
  %conv.i1023.7 = fpext half %757 to float, !dbg !215
  %758 = extractelement <4 x half> %358, i64 1, !dbg !218
  %conv6.i.7 = fpext half %758 to float, !dbg !218
  %759 = extractelement <4 x half> %358, i64 2, !dbg !219
  %conv.i1025.7 = fpext half %759 to float, !dbg !219
  %760 = extractelement <4 x half> %358, i64 3, !dbg !221
  %conv6.i1027.7 = fpext half %760 to float, !dbg !221
  %mul494.7 = fmul contract float %756, %conv.i1023.7, !dbg !222
  %mul498.7 = fmul contract float %756, %conv6.i.7, !dbg !223
  %mul502.7 = fmul contract float %756, %conv.i1025.7, !dbg !224
  %mul506.7 = fmul contract float %756, %conv6.i1027.7, !dbg !225
  %761 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !226, !noalias !230
  %762 = fptrunc float %mul494.7 to half, !dbg !226
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %761), !dbg !226, !noalias !230
  %763 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !235, !noalias !230
  %764 = fptrunc float %mul498.7 to half, !dbg !235
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %763), !dbg !235, !noalias !230
  %765 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !237, !noalias !241
  %766 = fptrunc float %mul502.7 to half, !dbg !237
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %765), !dbg !237, !noalias !241
  %767 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !246, !noalias !241
  %768 = fptrunc float %mul506.7 to half, !dbg !246
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %767), !dbg !246, !noalias !241
  %769 = insertelement <4 x half> poison, half %762, i64 0, !dbg !248
  %770 = insertelement <4 x half> %769, half %764, i64 1, !dbg !248
  %771 = insertelement <4 x half> %770, half %766, i64 2, !dbg !248
  %772 = insertelement <4 x half> %771, half %768, i64 3, !dbg !248
  %shr529.7 = lshr exact i32 %mul444.7, 1
  %add530.7 = add nuw nsw i32 %shr529.7, %shr140
  %cmp531.7 = icmp ult i32 %add530.7, 512
  %conv541.7 = zext nneg i32 %mul444.7 to i64
  br i1 %cmp531.7, label %if.then532.7, label %if.end576.7, !dbg !249

if.then532.7:                                     ; preds = %if.end464.7
  %773 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1108.7 = shl nuw nsw i64 %conv541.7, 7, !dbg !250
  %774 = getelementptr inbounds i8, ptr addrspace(4) %773, i64 %.idx1108.7, !dbg !250
  %condval_2.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %774, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %774, i64 4, !dbg !251
  %condval_2.sroa.5.0.copyload.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.7, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %774, i64 8, !dbg !251
  %condval_2.sroa.6.0.copyload.7 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.7, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %774, i64 12, !dbg !251
  %condval_2.sroa.7.0.copyload.7 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.7, align 4, !dbg !251, !tbaa !30
  br label %if.end576.7, !dbg !252

if.end576.7:                                      ; preds = %if.then532.7, %if.end464.7
  %condval_2.sroa.7.0.7 = phi i32 [ %condval_2.sroa.7.0.copyload.7, %if.then532.7 ], [ 0, %if.end464.7 ], !dbg !83
  %condval_2.sroa.6.0.7 = phi i32 [ %condval_2.sroa.6.0.copyload.7, %if.then532.7 ], [ 0, %if.end464.7 ], !dbg !83
  %condval_2.sroa.5.0.7 = phi i32 [ %condval_2.sroa.5.0.copyload.7, %if.then532.7 ], [ 0, %if.end464.7 ], !dbg !83
  %condval_2.sroa.0.0.7 = phi i32 [ %condval_2.sroa.0.0.copyload.7, %if.then532.7 ], [ 0, %if.end464.7 ], !dbg !83
  br i1 %cmp531.7, label %if.then532.1.7, label %if.end576.1.7, !dbg !249

if.then532.1.7:                                   ; preds = %if.end576.7
  %775 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !250
  %.idx1108.1.7 = shl nuw nsw i64 %conv541.7, 7, !dbg !250
  %776 = getelementptr inbounds i8, ptr addrspace(4) %775, i64 %.idx1108.1.7, !dbg !250
  %add.ptr552.1.7 = getelementptr inbounds i8, ptr addrspace(4) %776, i64 128, !dbg !250
  %condval_2.sroa.0.0.copyload.1.7 = load i32, ptr addrspace(4) %add.ptr552.1.7, align 16, !dbg !251, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %776, i64 132, !dbg !251
  %condval_2.sroa.5.0.copyload.1.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.7, align 4, !dbg !251, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %776, i64 136, !dbg !251
  %condval_2.sroa.6.0.copyload.1.7 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.7, align 8, !dbg !251, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %776, i64 140, !dbg !251
  %condval_2.sroa.7.0.copyload.1.7 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.7, align 4, !dbg !251, !tbaa !30
  br label %if.end576.1.7, !dbg !252

if.end576.1.7:                                    ; preds = %if.then532.1.7, %if.end576.7
  %condval_2.sroa.7.0.1.7 = phi i32 [ %condval_2.sroa.7.0.copyload.1.7, %if.then532.1.7 ], [ 0, %if.end576.7 ], !dbg !83
  %condval_2.sroa.6.0.1.7 = phi i32 [ %condval_2.sroa.6.0.copyload.1.7, %if.then532.1.7 ], [ 0, %if.end576.7 ], !dbg !83
  %condval_2.sroa.5.0.1.7 = phi i32 [ %condval_2.sroa.5.0.copyload.1.7, %if.then532.1.7 ], [ 0, %if.end576.7 ], !dbg !83
  %condval_2.sroa.0.0.1.7 = phi i32 [ %condval_2.sroa.0.0.copyload.1.7, %if.then532.1.7 ], [ 0, %if.end576.7 ], !dbg !83
  %777 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul606, !dbg !253
  %add.ptr616.idx.71274 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.71275 = getelementptr inbounds i8, ptr addrspace(3) %777, i32 %add.ptr616.idx.71274, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1808 = shl i32 %condval_2.sroa.0.0.1.7, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1501 = and i32 %condval_2.sroa.0.0.7, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1503 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1808, %v_column_local.sroa.0.0.insert.ext1501, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1503, ptr addrspace(3) %add.ptr616.71275, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.0.2.extract.shift2024 = lshr i32 %condval_2.sroa.0.0.7, 16, !dbg !255
  %v_fetch_local.sroa.98.18.extract.shift2164 = and i32 %condval_2.sroa.0.0.1.7, -65536, !dbg !254
  %add607.1.7 = or disjoint i32 %mul606, 128, !dbg !256
  %778 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.1.7, !dbg !253
  %xor612.1.7 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.1.7 = xor i32 %xor612.1.7, 4, !dbg !253
  %add.ptr616.1.7 = getelementptr inbounds i8, ptr addrspace(3) %778, i32 %add.ptr616.idx.1.7, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1507 = or disjoint i32 %v_fetch_local.sroa.98.18.extract.shift2164, %v_fetch_local.sroa.0.2.extract.shift2024, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1507, ptr addrspace(3) %add.ptr616.1.7, align 4, !dbg !254, !tbaa !30
  %add607.2.7 = or disjoint i32 %mul606, 256, !dbg !256
  %779 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.2.7, !dbg !253
  %xor612.2.7 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.2.7 = xor i32 %xor612.2.7, 8, !dbg !253
  %add.ptr616.2.7 = getelementptr inbounds i8, ptr addrspace(3) %779, i32 %add.ptr616.idx.2.7, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1818 = shl i32 %condval_2.sroa.5.0.1.7, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1509 = and i32 %condval_2.sroa.5.0.7, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1511 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1818, %v_column_local.sroa.0.0.insert.ext1509, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1511, ptr addrspace(3) %add.ptr616.2.7, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.26.6.extract.shift2059 = lshr i32 %condval_2.sroa.5.0.7, 16, !dbg !255
  %v_fetch_local.sroa.122.22.extract.shift2199 = and i32 %condval_2.sroa.5.0.1.7, -65536, !dbg !254
  %add607.3.7 = or disjoint i32 %mul606, 384, !dbg !256
  %780 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.3.7, !dbg !253
  %xor612.3.7 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.3.7 = xor i32 %xor612.3.7, 12, !dbg !253
  %add.ptr616.3.7 = getelementptr inbounds i8, ptr addrspace(3) %780, i32 %add.ptr616.idx.3.7, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1515 = or disjoint i32 %v_fetch_local.sroa.122.22.extract.shift2199, %v_fetch_local.sroa.26.6.extract.shift2059, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1515, ptr addrspace(3) %add.ptr616.3.7, align 4, !dbg !254, !tbaa !30
  %add607.4.7 = or disjoint i32 %mul606, 512, !dbg !256
  %781 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.4.7, !dbg !253
  %xor612.4.7 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.4.7 = xor i32 %xor612.4.7, 16, !dbg !253
  %add.ptr616.4.7 = getelementptr inbounds i8, ptr addrspace(3) %781, i32 %add.ptr616.idx.4.7, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1828 = shl i32 %condval_2.sroa.6.0.1.7, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1517 = and i32 %condval_2.sroa.6.0.7, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1519 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1828, %v_column_local.sroa.0.0.insert.ext1517, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1519, ptr addrspace(3) %add.ptr616.4.7, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.50.10.extract.shift2094 = lshr i32 %condval_2.sroa.6.0.7, 16, !dbg !255
  %v_fetch_local.sroa.146.26.extract.shift2234 = and i32 %condval_2.sroa.6.0.1.7, -65536, !dbg !254
  %add607.5.7 = or disjoint i32 %mul606, 640, !dbg !256
  %782 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.5.7, !dbg !253
  %xor612.5.7 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.5.7 = xor i32 %xor612.5.7, 20, !dbg !253
  %add.ptr616.5.7 = getelementptr inbounds i8, ptr addrspace(3) %782, i32 %add.ptr616.idx.5.7, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1523 = or disjoint i32 %v_fetch_local.sroa.146.26.extract.shift2234, %v_fetch_local.sroa.50.10.extract.shift2094, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1523, ptr addrspace(3) %add.ptr616.5.7, align 4, !dbg !254, !tbaa !30
  %add607.6.7 = or disjoint i32 %mul606, 768, !dbg !256
  %783 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.6.7, !dbg !253
  %xor612.6.7 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.6.7 = xor i32 %xor612.6.7, 24, !dbg !253
  %add.ptr616.6.7 = getelementptr inbounds i8, ptr addrspace(3) %783, i32 %add.ptr616.idx.6.7, !dbg !253
  %v_column_local.sroa.130.0.insert.ext1838 = shl i32 %condval_2.sroa.7.0.1.7, 16, !dbg !254
  %v_column_local.sroa.0.0.insert.ext1525 = and i32 %condval_2.sroa.7.0.7, 65535, !dbg !254
  %v_column_local.sroa.0.0.insert.insert1527 = or disjoint i32 %v_column_local.sroa.130.0.insert.ext1838, %v_column_local.sroa.0.0.insert.ext1525, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1527, ptr addrspace(3) %add.ptr616.6.7, align 4, !dbg !254, !tbaa !30
  %v_fetch_local.sroa.74.14.extract.shift2129 = lshr i32 %condval_2.sroa.7.0.7, 16, !dbg !255
  %v_fetch_local.sroa.170.30.extract.shift2269 = and i32 %condval_2.sroa.7.0.1.7, -65536, !dbg !254
  %add607.7.7 = or disjoint i32 %mul606, 896, !dbg !256
  %784 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add607.7.7, !dbg !253
  %xor612.7.7 = shl nuw nsw i32 %xor, 2, !dbg !253
  %add.ptr616.idx.7.7 = xor i32 %xor612.7.7, 28, !dbg !253
  %add.ptr616.7.7 = getelementptr inbounds i8, ptr addrspace(3) %784, i32 %add.ptr616.idx.7.7, !dbg !253
  %v_column_local.sroa.0.0.insert.insert1531 = or disjoint i32 %v_fetch_local.sroa.170.30.extract.shift2269, %v_fetch_local.sroa.74.14.extract.shift2129, !dbg !254
  store i32 %v_column_local.sroa.0.0.insert.insert1531, ptr addrspace(3) %add.ptr616.7.7, align 4, !dbg !254, !tbaa !30
  fence syncscope("warp") release, !dbg !257
  tail call void @llvm.mxc.barrier.warp(), !dbg !260
  fence syncscope("warp") acquire, !dbg !261
  %add637.7 = or disjoint i32 %mul630, %mul636
  %xor647.7 = xor i32 %shr645, %and611
  %785 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.7
  %xor650.7 = xor i32 %xor647.7, %mul640, !dbg !262
  %add.ptr654.idx.7 = shl nuw nsw i32 %xor650.7, 2, !dbg !263
  %add.ptr654.7 = getelementptr inbounds i8, ptr addrspace(3) %785, i32 %add.ptr654.idx.7, !dbg !263
  %786 = load i32, ptr addrspace(3) %add.ptr654.7, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1868 = insertelement <2 x i32> poison, i32 %786, i64 0, !dbg !264
  %add641.1.7 = or i32 %shr140, 1, !dbg !265
  %xor650.1.7 = xor i32 %xor647.7, %add641.1.7, !dbg !262
  %add.ptr654.idx.1.7 = shl nuw nsw i32 %xor650.1.7, 2, !dbg !263
  %add.ptr654.1.7 = getelementptr inbounds i8, ptr addrspace(3) %785, i32 %add.ptr654.idx.1.7, !dbg !263
  %787 = load i32, ptr addrspace(3) %add.ptr654.1.7, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1882 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1868, i32 %787, i64 1, !dbg !264
  %add632.1.7 = or disjoint i32 %mul630, %mul636
  %add637.1.7 = or disjoint i32 %add632.1.7, 32
  %add646.1.7 = or disjoint i32 %shr645, 2
  %xor647.1.7 = xor i32 %add646.1.7, %and611
  %788 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.1.7
  %xor650.11186.7 = xor i32 %xor647.1.7, %mul640, !dbg !262
  %add.ptr654.idx.11187.7 = shl nuw nsw i32 %xor650.11186.7, 2, !dbg !263
  %add.ptr654.11188.7 = getelementptr inbounds i8, ptr addrspace(3) %788, i32 %add.ptr654.idx.11187.7, !dbg !263
  %789 = load i32, ptr addrspace(3) %add.ptr654.11188.7, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.26.8.vec.insert1904 = insertelement <2 x i32> poison, i32 %789, i64 0, !dbg !264
  %xor650.1.1.7 = xor i32 %xor647.1.7, %add641.1.7, !dbg !262
  %add.ptr654.idx.1.1.7 = shl nuw nsw i32 %xor650.1.1.7, 2, !dbg !263
  %add.ptr654.1.1.7 = getelementptr inbounds i8, ptr addrspace(3) %788, i32 %add.ptr654.idx.1.1.7, !dbg !263
  %790 = load i32, ptr addrspace(3) %add.ptr654.1.1.7, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.26.12.vec.insert1918 = insertelement <2 x i32> %v_operand.sroa.26.8.vec.insert1904, i32 %790, i64 1, !dbg !264
  %add632.2.7 = or disjoint i32 %mul630, %mul636
  %add637.2.7 = or disjoint i32 %add632.2.7, 64
  %add646.2.7 = or disjoint i32 %shr645, 4
  %xor647.2.7 = xor i32 %add646.2.7, %and611
  %791 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.2.7
  %xor650.2.7 = xor i32 %xor647.2.7, %mul640, !dbg !262
  %add.ptr654.idx.2.7 = shl nuw nsw i32 %xor650.2.7, 2, !dbg !263
  %add.ptr654.2.7 = getelementptr inbounds i8, ptr addrspace(3) %791, i32 %add.ptr654.idx.2.7, !dbg !263
  %792 = load i32, ptr addrspace(3) %add.ptr654.2.7, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.50.16.vec.insert1940 = insertelement <2 x i32> poison, i32 %792, i64 0, !dbg !264
  %xor650.1.2.7 = xor i32 %xor647.2.7, %add641.1.7, !dbg !262
  %add.ptr654.idx.1.2.7 = shl nuw nsw i32 %xor650.1.2.7, 2, !dbg !263
  %add.ptr654.1.2.7 = getelementptr inbounds i8, ptr addrspace(3) %791, i32 %add.ptr654.idx.1.2.7, !dbg !263
  %793 = load i32, ptr addrspace(3) %add.ptr654.1.2.7, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.50.20.vec.insert1954 = insertelement <2 x i32> %v_operand.sroa.50.16.vec.insert1940, i32 %793, i64 1, !dbg !264
  %add632.3.7 = or disjoint i32 %mul630, %mul636
  %add637.3.7 = or disjoint i32 %add632.3.7, 96
  %add646.3.7 = or disjoint i32 %shr645, 6
  %xor647.3.7 = xor i32 %add646.3.7, %and611
  %794 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add637.3.7
  %xor650.3.7 = xor i32 %xor647.3.7, %mul640, !dbg !262
  %add.ptr654.idx.3.7 = shl nuw nsw i32 %xor650.3.7, 2, !dbg !263
  %add.ptr654.3.7 = getelementptr inbounds i8, ptr addrspace(3) %794, i32 %add.ptr654.idx.3.7, !dbg !263
  %795 = load i32, ptr addrspace(3) %add.ptr654.3.7, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.74.24.vec.insert1976 = insertelement <2 x i32> poison, i32 %795, i64 0, !dbg !264
  %xor650.1.3.7 = xor i32 %xor647.3.7, %add641.1.7, !dbg !262
  %add.ptr654.idx.1.3.7 = shl nuw nsw i32 %xor650.1.3.7, 2, !dbg !263
  %add.ptr654.1.3.7 = getelementptr inbounds i8, ptr addrspace(3) %794, i32 %add.ptr654.idx.1.3.7, !dbg !263
  %796 = load i32, ptr addrspace(3) %add.ptr654.1.3.7, align 4, !dbg !264, !tbaa !30
  %v_operand.sroa.74.28.vec.insert1990 = insertelement <2 x i32> %v_operand.sroa.74.24.vec.insert1976, i32 %796, i64 1, !dbg !264
  %797 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1882 to <4 x half>, !dbg !266
  %798 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %797, <4 x half> %772, <4 x float> %output_acc.sroa.0.6), !dbg !267
  %799 = bitcast <2 x i32> %v_operand.sroa.26.12.vec.insert1918 to <4 x half>, !dbg !266
  %800 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %799, <4 x half> %772, <4 x float> %output_acc.sroa.34.6), !dbg !267
  %801 = bitcast <2 x i32> %v_operand.sroa.50.20.vec.insert1954 to <4 x half>, !dbg !266
  %802 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %801, <4 x half> %772, <4 x float> %output_acc.sroa.66.6), !dbg !267
  %803 = bitcast <2 x i32> %v_operand.sroa.74.28.vec.insert1990 to <4 x half>, !dbg !266
  %804 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %803, <4 x half> %772, <4 x float> %output_acc.sroa.98.6), !dbg !267
  br label %if.end686.7, !dbg !268

if.end686.7:                                      ; preds = %if.end576.1.7, %if.end686.6
  %bc2855 = phi <4 x half> [ %358, %if.end686.6 ], [ %772, %if.end576.1.7 ], !dbg !83
  %output_acc.sroa.98.7 = phi <4 x float> [ %output_acc.sroa.98.6, %if.end686.6 ], [ %804, %if.end576.1.7 ], !dbg !83
  %output_acc.sroa.66.7 = phi <4 x float> [ %output_acc.sroa.66.6, %if.end686.6 ], [ %802, %if.end576.1.7 ], !dbg !83
  %output_acc.sroa.34.7 = phi <4 x float> [ %output_acc.sroa.34.6, %if.end686.6 ], [ %800, %if.end576.1.7 ], !dbg !83
  %output_acc.sroa.0.7 = phi <4 x float> [ %output_acc.sroa.0.6, %if.end686.6 ], [ %798, %if.end576.1.7 ], !dbg !83
  fence syncscope("warp") release, !dbg !270
  tail call void @llvm.mxc.barrier.warp(), !dbg !273
  fence syncscope("warp") acquire, !dbg !274
  %805 = extractelement <4 x half> %bc2827, i64 0, !dbg !275
  %conv.i.i = fpext half %805 to float, !dbg !276
  %add699 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !281
  %806 = extractelement <4 x half> %bc2827, i64 1, !dbg !275
  %conv.i.i.1 = fpext half %806 to float, !dbg !276
  %add699.1 = fadd contract float %add699, %conv.i.i.1, !dbg !281
  %807 = extractelement <4 x half> %bc2827, i64 2, !dbg !275
  %conv.i.i.2 = fpext half %807 to float, !dbg !276
  %add699.2 = fadd contract float %add699.1, %conv.i.i.2, !dbg !281
  %808 = extractelement <4 x half> %bc2827, i64 3, !dbg !275
  %conv.i.i.3 = fpext half %808 to float, !dbg !276
  %add699.3 = fadd contract float %add699.2, %conv.i.i.3, !dbg !281
  %809 = extractelement <4 x half> %bc2831, i64 0, !dbg !275
  %conv.i.i.4 = fpext half %809 to float, !dbg !276
  %add699.4 = fadd contract float %add699.3, %conv.i.i.4, !dbg !281
  %810 = extractelement <4 x half> %bc2831, i64 1, !dbg !275
  %conv.i.i.5 = fpext half %810 to float, !dbg !276
  %add699.5 = fadd contract float %add699.4, %conv.i.i.5, !dbg !281
  %811 = extractelement <4 x half> %bc2831, i64 2, !dbg !275
  %conv.i.i.6 = fpext half %811 to float, !dbg !276
  %add699.6 = fadd contract float %add699.5, %conv.i.i.6, !dbg !281
  %812 = extractelement <4 x half> %bc2831, i64 3, !dbg !275
  %conv.i.i.7 = fpext half %812 to float, !dbg !276
  %add699.7 = fadd contract float %add699.6, %conv.i.i.7, !dbg !281
  %813 = extractelement <4 x half> %bc2835, i64 0, !dbg !275
  %conv.i.i.8 = fpext half %813 to float, !dbg !276
  %add699.8 = fadd contract float %add699.7, %conv.i.i.8, !dbg !281
  %814 = extractelement <4 x half> %bc2835, i64 1, !dbg !275
  %conv.i.i.9 = fpext half %814 to float, !dbg !276
  %add699.9 = fadd contract float %add699.8, %conv.i.i.9, !dbg !281
  %815 = extractelement <4 x half> %bc2835, i64 2, !dbg !275
  %conv.i.i.10 = fpext half %815 to float, !dbg !276
  %add699.10 = fadd contract float %add699.9, %conv.i.i.10, !dbg !281
  %816 = extractelement <4 x half> %bc2835, i64 3, !dbg !275
  %conv.i.i.11 = fpext half %816 to float, !dbg !276
  %add699.11 = fadd contract float %add699.10, %conv.i.i.11, !dbg !281
  %817 = extractelement <4 x half> %bc2839, i64 0, !dbg !275
  %conv.i.i.12 = fpext half %817 to float, !dbg !276
  %add699.12 = fadd contract float %add699.11, %conv.i.i.12, !dbg !281
  %818 = extractelement <4 x half> %bc2839, i64 1, !dbg !275
  %conv.i.i.13 = fpext half %818 to float, !dbg !276
  %add699.13 = fadd contract float %add699.12, %conv.i.i.13, !dbg !281
  %819 = extractelement <4 x half> %bc2839, i64 2, !dbg !275
  %conv.i.i.14 = fpext half %819 to float, !dbg !276
  %add699.14 = fadd contract float %add699.13, %conv.i.i.14, !dbg !281
  %820 = extractelement <4 x half> %bc2839, i64 3, !dbg !275
  %conv.i.i.15 = fpext half %820 to float, !dbg !276
  %add699.15 = fadd contract float %add699.14, %conv.i.i.15, !dbg !281
  %821 = extractelement <4 x half> %bc2843, i64 0, !dbg !275
  %conv.i.i.16 = fpext half %821 to float, !dbg !276
  %add699.16 = fadd contract float %add699.15, %conv.i.i.16, !dbg !281
  %822 = extractelement <4 x half> %bc2843, i64 1, !dbg !275
  %conv.i.i.17 = fpext half %822 to float, !dbg !276
  %add699.17 = fadd contract float %add699.16, %conv.i.i.17, !dbg !281
  %823 = extractelement <4 x half> %bc2843, i64 2, !dbg !275
  %conv.i.i.18 = fpext half %823 to float, !dbg !276
  %add699.18 = fadd contract float %add699.17, %conv.i.i.18, !dbg !281
  %824 = extractelement <4 x half> %bc2843, i64 3, !dbg !275
  %conv.i.i.19 = fpext half %824 to float, !dbg !276
  %add699.19 = fadd contract float %add699.18, %conv.i.i.19, !dbg !281
  %825 = extractelement <4 x half> %bc2847, i64 0, !dbg !275
  %conv.i.i.20 = fpext half %825 to float, !dbg !276
  %add699.20 = fadd contract float %add699.19, %conv.i.i.20, !dbg !281
  %826 = extractelement <4 x half> %bc2847, i64 1, !dbg !275
  %conv.i.i.21 = fpext half %826 to float, !dbg !276
  %add699.21 = fadd contract float %add699.20, %conv.i.i.21, !dbg !281
  %827 = extractelement <4 x half> %bc2847, i64 2, !dbg !275
  %conv.i.i.22 = fpext half %827 to float, !dbg !276
  %add699.22 = fadd contract float %add699.21, %conv.i.i.22, !dbg !281
  %828 = extractelement <4 x half> %bc2847, i64 3, !dbg !275
  %conv.i.i.23 = fpext half %828 to float, !dbg !276
  %add699.23 = fadd contract float %add699.22, %conv.i.i.23, !dbg !281
  %829 = extractelement <4 x half> %bc2851, i64 0, !dbg !275
  %conv.i.i.24 = fpext half %829 to float, !dbg !276
  %add699.24 = fadd contract float %add699.23, %conv.i.i.24, !dbg !281
  %830 = extractelement <4 x half> %bc2851, i64 1, !dbg !275
  %conv.i.i.25 = fpext half %830 to float, !dbg !276
  %add699.25 = fadd contract float %add699.24, %conv.i.i.25, !dbg !281
  %831 = extractelement <4 x half> %bc2851, i64 2, !dbg !275
  %conv.i.i.26 = fpext half %831 to float, !dbg !276
  %add699.26 = fadd contract float %add699.25, %conv.i.i.26, !dbg !281
  %832 = extractelement <4 x half> %bc2851, i64 3, !dbg !275
  %conv.i.i.27 = fpext half %832 to float, !dbg !276
  %add699.27 = fadd contract float %add699.26, %conv.i.i.27, !dbg !281
  %833 = extractelement <4 x half> %bc2855, i64 0, !dbg !275
  %conv.i.i.28 = fpext half %833 to float, !dbg !276
  %add699.28 = fadd contract float %add699.27, %conv.i.i.28, !dbg !281
  %834 = extractelement <4 x half> %bc2855, i64 1, !dbg !275
  %conv.i.i.29 = fpext half %834 to float, !dbg !276
  %add699.29 = fadd contract float %add699.28, %conv.i.i.29, !dbg !281
  %835 = extractelement <4 x half> %bc2855, i64 2, !dbg !275
  %conv.i.i.30 = fpext half %835 to float, !dbg !276
  %add699.30 = fadd contract float %add699.29, %conv.i.i.30, !dbg !281
  %836 = extractelement <4 x half> %bc2855, i64 3, !dbg !275
  %conv.i.i.31 = fpext half %836 to float, !dbg !276
  %add699.31 = fadd contract float %add699.30, %conv.i.i.31, !dbg !281
  %837 = bitcast float %add699.31 to i32, !dbg !282
  %838 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !284
  %839 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %838) #11, !dbg !287
  %xor.i.i1040 = xor i32 %839, 32, !dbg !288
  %840 = and i32 %839, -64, !dbg !289
  %and.i.i1041 = add nsw i32 %840, 64, !dbg !289
  %cmp.not.i.i1042 = icmp slt i32 %xor.i.i1040, %and.i.i1041, !dbg !290
  %cond.i.i1043 = select i1 %cmp.not.i.i1042, i32 %xor.i.i1040, i32 %839, !dbg !291
  %shl.i.i1044 = shl i32 %cond.i.i1043, 2, !dbg !292
  %841 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1044, i32 %837), !dbg !293
  %842 = bitcast i32 %841 to float, !dbg !294
  %add707 = fadd contract float %add699.31, %842, !dbg !295
  %843 = bitcast float %add707 to i32, !dbg !296
  %844 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !298
  %845 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %844) #11, !dbg !301
  %xor.i.i1045 = xor i32 %845, 16, !dbg !302
  %846 = and i32 %845, -64, !dbg !303
  %and.i.i1046 = add nsw i32 %846, 64, !dbg !303
  %cmp.not.i.i1047 = icmp slt i32 %xor.i.i1045, %and.i.i1046, !dbg !304
  %cond.i.i1048 = select i1 %cmp.not.i.i1047, i32 %xor.i.i1045, i32 %845, !dbg !305
  %shl.i.i1049 = shl i32 %cond.i.i1048, 2, !dbg !306
  %847 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1049, i32 %843), !dbg !307
  %848 = bitcast i32 %847 to float, !dbg !308
  %add712 = fadd contract float %add707, %848, !dbg !309
  %output_acc.sroa.0.0.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 0, !dbg !310
  %div = fdiv contract float %output_acc.sroa.0.0.vec.extract, %add712, !dbg !311
  %output_acc.sroa.0.4.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 1, !dbg !310
  %div.1 = fdiv contract float %output_acc.sroa.0.4.vec.extract, %add712, !dbg !311
  %output_acc.sroa.0.8.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 2, !dbg !310
  %div.2 = fdiv contract float %output_acc.sroa.0.8.vec.extract, %add712, !dbg !311
  %output_acc.sroa.0.12.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 3, !dbg !310
  %div.3 = fdiv contract float %output_acc.sroa.0.12.vec.extract, %add712, !dbg !311
  %output_acc.sroa.34.16.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 0, !dbg !310
  %div.4 = fdiv contract float %output_acc.sroa.34.16.vec.extract, %add712, !dbg !311
  %output_acc.sroa.34.20.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 1, !dbg !310
  %div.5 = fdiv contract float %output_acc.sroa.34.20.vec.extract, %add712, !dbg !311
  %output_acc.sroa.34.24.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 2, !dbg !310
  %div.6 = fdiv contract float %output_acc.sroa.34.24.vec.extract, %add712, !dbg !311
  %output_acc.sroa.34.28.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 3, !dbg !310
  %div.7 = fdiv contract float %output_acc.sroa.34.28.vec.extract, %add712, !dbg !311
  %output_acc.sroa.66.32.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 0, !dbg !310
  %div.8 = fdiv contract float %output_acc.sroa.66.32.vec.extract, %add712, !dbg !311
  %output_acc.sroa.66.36.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 1, !dbg !310
  %div.9 = fdiv contract float %output_acc.sroa.66.36.vec.extract, %add712, !dbg !311
  %output_acc.sroa.66.40.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 2, !dbg !310
  %div.10 = fdiv contract float %output_acc.sroa.66.40.vec.extract, %add712, !dbg !311
  %output_acc.sroa.66.44.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 3, !dbg !310
  %div.11 = fdiv contract float %output_acc.sroa.66.44.vec.extract, %add712, !dbg !311
  %output_acc.sroa.98.48.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 0, !dbg !310
  %div.12 = fdiv contract float %output_acc.sroa.98.48.vec.extract, %add712, !dbg !311
  %output_acc.sroa.98.52.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 1, !dbg !310
  %div.13 = fdiv contract float %output_acc.sroa.98.52.vec.extract, %add712, !dbg !311
  %output_acc.sroa.98.56.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 2, !dbg !310
  %div.14 = fdiv contract float %output_acc.sroa.98.56.vec.extract, %add712, !dbg !311
  %output_acc.sroa.98.60.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 3, !dbg !310
  %div.15 = fdiv contract float %output_acc.sroa.98.60.vec.extract, %add712, !dbg !311
  %849 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !312, !noalias !316
  %850 = fptrunc float %div to half, !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %849), !dbg !312, !noalias !316
  %851 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !321, !noalias !316
  %852 = fptrunc float %div.1 to half, !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %851), !dbg !321, !noalias !316
  %853 = bitcast half %850 to i16, !dbg !323
  %854 = bitcast half %852 to i16, !dbg !326
  %855 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !327
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !327, !noalias !331
  %856 = fptrunc float %div.2 to half, !dbg !327
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %855), !dbg !327, !noalias !331
  %857 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !336
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !336, !noalias !331
  %858 = fptrunc float %div.3 to half, !dbg !336
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %857), !dbg !336, !noalias !331
  %859 = bitcast half %856 to i16, !dbg !338
  %860 = bitcast half %858 to i16, !dbg !340
  %__9.sroa.6.0.insert.ext = zext i16 %860 to i64, !dbg !341
  %__9.sroa.6.0.insert.shift = shl nuw i64 %__9.sroa.6.0.insert.ext, 48, !dbg !341
  %__9.sroa.5.0.insert.ext = zext i16 %859 to i64, !dbg !341
  %__9.sroa.5.0.insert.shift = shl nuw nsw i64 %__9.sroa.5.0.insert.ext, 32, !dbg !341
  %__9.sroa.5.0.insert.insert = or disjoint i64 %__9.sroa.6.0.insert.shift, %__9.sroa.5.0.insert.shift, !dbg !341
  %__9.sroa.4.0.insert.ext = zext i16 %854 to i64, !dbg !341
  %__9.sroa.4.0.insert.shift = shl nuw nsw i64 %__9.sroa.4.0.insert.ext, 16, !dbg !341
  %__9.sroa.4.0.insert.insert = or disjoint i64 %__9.sroa.5.0.insert.insert, %__9.sroa.4.0.insert.shift, !dbg !341
  %__9.sroa.0.0.insert.ext = zext i16 %853 to i64, !dbg !341
  %__9.sroa.0.0.insert.insert = or disjoint i64 %__9.sroa.4.0.insert.insert, %__9.sroa.0.0.insert.ext, !dbg !341
  %xor759 = xor i32 %shr71, %and611, !dbg !342
  %mul760 = shl nuw nsw i32 %xor759, 3, !dbg !343
  %add761 = add nuw nsw i32 %mul760, %mul53, !dbg !344
  %add766 = or disjoint i32 %add761, %mul81, !dbg !345
  %add.ptr768 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add766, !dbg !346
  store i64 %__9.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr768, align 8, !dbg !347
  %861 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !312, !noalias !316
  %862 = fptrunc float %div.4 to half, !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %861), !dbg !312, !noalias !316
  %863 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !321, !noalias !316
  %864 = fptrunc float %div.5 to half, !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %863), !dbg !321, !noalias !316
  %865 = bitcast half %862 to i16, !dbg !323
  %866 = bitcast half %864 to i16, !dbg !326
  %867 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !327
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !327, !noalias !331
  %868 = fptrunc float %div.6 to half, !dbg !327
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %867), !dbg !327, !noalias !331
  %869 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !336
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !336, !noalias !331
  %870 = fptrunc float %div.7 to half, !dbg !336
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %869), !dbg !336, !noalias !331
  %871 = bitcast half %868 to i16, !dbg !338
  %872 = bitcast half %870 to i16, !dbg !340
  %__9.sroa.6.0.insert.ext.1 = zext i16 %872 to i64, !dbg !341
  %__9.sroa.6.0.insert.shift.1 = shl nuw i64 %__9.sroa.6.0.insert.ext.1, 48, !dbg !341
  %__9.sroa.5.0.insert.ext.1 = zext i16 %871 to i64, !dbg !341
  %__9.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__9.sroa.5.0.insert.ext.1, 32, !dbg !341
  %__9.sroa.5.0.insert.insert.1 = or disjoint i64 %__9.sroa.6.0.insert.shift.1, %__9.sroa.5.0.insert.shift.1, !dbg !341
  %__9.sroa.4.0.insert.ext.1 = zext i16 %866 to i64, !dbg !341
  %__9.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__9.sroa.4.0.insert.ext.1, 16, !dbg !341
  %__9.sroa.4.0.insert.insert.1 = or disjoint i64 %__9.sroa.5.0.insert.insert.1, %__9.sroa.4.0.insert.shift.1, !dbg !341
  %__9.sroa.0.0.insert.ext.1 = zext i16 %865 to i64, !dbg !341
  %__9.sroa.0.0.insert.insert.1 = or disjoint i64 %__9.sroa.4.0.insert.insert.1, %__9.sroa.0.0.insert.ext.1, !dbg !341
  %add756.1 = add nuw nsw i32 %shr71, 2, !dbg !348
  %xor759.1 = xor i32 %add756.1, %and611, !dbg !342
  %mul760.1 = shl nuw nsw i32 %xor759.1, 3, !dbg !343
  %add761.1 = add nuw nsw i32 %mul760.1, %mul53, !dbg !344
  %add766.1 = or disjoint i32 %add761.1, %mul81, !dbg !345
  %add.ptr768.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add766.1, !dbg !346
  store i64 %__9.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr768.1, align 8, !dbg !347
  %873 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !312, !noalias !316
  %874 = fptrunc float %div.8 to half, !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %873), !dbg !312, !noalias !316
  %875 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !321, !noalias !316
  %876 = fptrunc float %div.9 to half, !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %875), !dbg !321, !noalias !316
  %877 = bitcast half %874 to i16, !dbg !323
  %878 = bitcast half %876 to i16, !dbg !326
  %879 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !327
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !327, !noalias !331
  %880 = fptrunc float %div.10 to half, !dbg !327
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %879), !dbg !327, !noalias !331
  %881 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !336
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !336, !noalias !331
  %882 = fptrunc float %div.11 to half, !dbg !336
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %881), !dbg !336, !noalias !331
  %883 = bitcast half %880 to i16, !dbg !338
  %884 = bitcast half %882 to i16, !dbg !340
  %__9.sroa.6.0.insert.ext.2 = zext i16 %884 to i64, !dbg !341
  %__9.sroa.6.0.insert.shift.2 = shl nuw i64 %__9.sroa.6.0.insert.ext.2, 48, !dbg !341
  %__9.sroa.5.0.insert.ext.2 = zext i16 %883 to i64, !dbg !341
  %__9.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__9.sroa.5.0.insert.ext.2, 32, !dbg !341
  %__9.sroa.5.0.insert.insert.2 = or disjoint i64 %__9.sroa.6.0.insert.shift.2, %__9.sroa.5.0.insert.shift.2, !dbg !341
  %__9.sroa.4.0.insert.ext.2 = zext i16 %878 to i64, !dbg !341
  %__9.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__9.sroa.4.0.insert.ext.2, 16, !dbg !341
  %__9.sroa.4.0.insert.insert.2 = or disjoint i64 %__9.sroa.5.0.insert.insert.2, %__9.sroa.4.0.insert.shift.2, !dbg !341
  %__9.sroa.0.0.insert.ext.2 = zext i16 %877 to i64, !dbg !341
  %__9.sroa.0.0.insert.insert.2 = or disjoint i64 %__9.sroa.4.0.insert.insert.2, %__9.sroa.0.0.insert.ext.2, !dbg !341
  %add756.2 = add nuw nsw i32 %shr71, 4, !dbg !348
  %xor759.2 = xor i32 %add756.2, %and611, !dbg !342
  %mul760.2 = shl nuw nsw i32 %xor759.2, 3, !dbg !343
  %add761.2 = add nuw nsw i32 %mul760.2, %mul53, !dbg !344
  %add766.2 = or disjoint i32 %add761.2, %mul81, !dbg !345
  %add.ptr768.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add766.2, !dbg !346
  store i64 %__9.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr768.2, align 8, !dbg !347
  %885 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !312, !noalias !316
  %886 = fptrunc float %div.12 to half, !dbg !312
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %885), !dbg !312, !noalias !316
  %887 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !321, !noalias !316
  %888 = fptrunc float %div.13 to half, !dbg !321
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %887), !dbg !321, !noalias !316
  %889 = bitcast half %886 to i16, !dbg !323
  %890 = bitcast half %888 to i16, !dbg !326
  %891 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !327
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !327, !noalias !331
  %892 = fptrunc float %div.14 to half, !dbg !327
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %891), !dbg !327, !noalias !331
  %893 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !336
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !336, !noalias !331
  %894 = fptrunc float %div.15 to half, !dbg !336
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %893), !dbg !336, !noalias !331
  %895 = bitcast half %892 to i16, !dbg !338
  %896 = bitcast half %894 to i16, !dbg !340
  %__9.sroa.6.0.insert.ext.3 = zext i16 %896 to i64, !dbg !341
  %__9.sroa.6.0.insert.shift.3 = shl nuw i64 %__9.sroa.6.0.insert.ext.3, 48, !dbg !341
  %__9.sroa.5.0.insert.ext.3 = zext i16 %895 to i64, !dbg !341
  %__9.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__9.sroa.5.0.insert.ext.3, 32, !dbg !341
  %__9.sroa.5.0.insert.insert.3 = or disjoint i64 %__9.sroa.6.0.insert.shift.3, %__9.sroa.5.0.insert.shift.3, !dbg !341
  %__9.sroa.4.0.insert.ext.3 = zext i16 %890 to i64, !dbg !341
  %__9.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__9.sroa.4.0.insert.ext.3, 16, !dbg !341
  %__9.sroa.4.0.insert.insert.3 = or disjoint i64 %__9.sroa.5.0.insert.insert.3, %__9.sroa.4.0.insert.shift.3, !dbg !341
  %__9.sroa.0.0.insert.ext.3 = zext i16 %889 to i64, !dbg !341
  %__9.sroa.0.0.insert.insert.3 = or disjoint i64 %__9.sroa.4.0.insert.insert.3, %__9.sroa.0.0.insert.ext.3, !dbg !341
  %add756.3 = add nuw nsw i32 %shr71, 6, !dbg !348
  %xor759.3 = xor i32 %add756.3, %and611, !dbg !342
  %mul760.3 = shl nuw nsw i32 %xor759.3, 3, !dbg !343
  %add761.3 = add nuw nsw i32 %mul760.3, %mul53, !dbg !344
  %add766.3 = or disjoint i32 %add761.3, %mul81, !dbg !345
  %add.ptr768.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add766.3, !dbg !346
  store i64 %__9.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr768.3, align 8, !dbg !347
  fence syncscope("warp") release, !dbg !349
  tail call void @llvm.mxc.barrier.warp(), !dbg !352
  fence syncscope("warp") acquire, !dbg !353
  %call783.masked = and i32 %2, 1016
  %mul786 = xor i32 %361, %call783.masked
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul15, !dbg !354
  %invariant.gep1105 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul786, !dbg !354
  %add.ptr801 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !355
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr801, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep1105, i64 16, i1 false), !dbg !356, !tbaa.struct !50, !call_argsrelate !357
  %gep1106.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1105, i32 1024, !dbg !358
  %add.ptr801.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %7, !dbg !355
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr801.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep1106.1, i64 16, i1 false), !dbg !356, !tbaa.struct !50, !call_argsrelate !357
  ret void, !dbg !359
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v046_codex_power_s8_v_rowpair_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v046_codex_power_s8_v_rowpair_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
!42 = !{i32 0, i32 1024}
!43 = !DILocation(line: 28, column: 3, scope: !40)
!44 = !DILocation(line: 29, column: 347, scope: !40)
!45 = !DILocation(line: 29, column: 92, scope: !40)
!46 = !DILocation(line: 29, column: 170, scope: !40)
!47 = !DILocation(line: 29, column: 255, scope: !40)
!48 = !DILocation(line: 29, column: 40, scope: !40)
!49 = !DILocation(line: 29, column: 333, scope: !40)
!50 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!51 = !{i32 -1, i32 3, i32 -1, i32 -1}
!52 = !DILocation(line: 29, column: 425, scope: !40)
!53 = !DILocation(line: 29, column: 56, scope: !40)
!54 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !57)
!55 = distinct !DISubprogram(name: "__barrier_warp", scope: !56, file: !56, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!56 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!57 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !59)
!58 = distinct !DISubprogram(name: "__syncwarp", scope: !56, file: !56, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!59 = distinct !DILocation(line: 31, column: 3, scope: !40)
!60 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !57)
!61 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !57)
!62 = !DILocation(line: 33, column: 172, scope: !40)
!63 = !DILocation(line: 33, column: 236, scope: !40)
!64 = !DILocation(line: 33, column: 243, scope: !40)
!65 = !DILocation(line: 33, column: 313, scope: !40)
!66 = !DILocation(line: 33, column: 75, scope: !40)
!67 = !DILocation(line: 33, column: 38, scope: !40)
!68 = !DILocation(line: 44, column: 3, scope: !40)
!69 = !DILocation(line: 45, column: 24, scope: !40)
!70 = !DILocation(line: 45, column: 106, scope: !40)
!71 = !DILocation(line: 46, column: 12, scope: !40)
!72 = !DILocation(line: 46, column: 28, scope: !40)
!73 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !74)
!74 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !75)
!75 = distinct !DILocation(line: 47, column: 7, scope: !40)
!76 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !74)
!77 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !74)
!78 = !DILocation(line: 49, column: 7, scope: !40)
!79 = !DILocation(line: 52, column: 71, scope: !40)
!80 = !DILocation(line: 52, column: 13, scope: !40)
!81 = !DILocation(line: 53, column: 19, scope: !40)
!82 = !DILocation(line: 54, column: 9, scope: !40)
!83 = !DILocation(line: 0, scope: !40)
!84 = !DILocation(line: 57, column: 339, scope: !40)
!85 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !86)
!86 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !87)
!87 = distinct !DILocation(line: 59, column: 7, scope: !40)
!88 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !86)
!89 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !86)
!90 = !DILocation(line: 63, column: 32, scope: !40)
!91 = !DILocation(line: 65, column: 37, scope: !40)
!92 = !DILocation(line: 73, column: 74, scope: !40)
!93 = !DILocation(line: 73, column: 13, scope: !40)
!94 = !DILocation(line: 73, column: 63, scope: !40)
!95 = !DILocation(line: 351, column: 10, scope: !96, inlinedAt: !98)
!96 = distinct !DISubprogram(name: "max", scope: !97, file: !97, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!97 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!98 = distinct !DILocation(line: 83, column: 24, scope: !40)
!99 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !101)
!100 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !56, file: !56, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!101 = distinct !DILocation(line: 85, column: 40, scope: !40)
!102 = !DILocation(line: 171, column: 37, scope: !103, inlinedAt: !104)
!103 = distinct !DISubprogram(name: "__lane_id", scope: !56, file: !56, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!104 = distinct !DILocation(line: 990, column: 14, scope: !105, inlinedAt: !106)
!105 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !56, file: !56, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
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
!116 = distinct !DILocation(line: 85, column: 22, scope: !40)
!117 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !118)
!118 = distinct !DILocation(line: 86, column: 40, scope: !40)
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
!131 = distinct !DILocation(line: 86, column: 22, scope: !40)
!132 = !DILocation(line: 87, column: 37, scope: !40)
!133 = !DILocation(line: 87, column: 11, scope: !40)
!134 = !DILocation(line: 351, column: 10, scope: !96, inlinedAt: !135)
!135 = distinct !DILocation(line: 90, column: 23, scope: !40)
!136 = !DILocation(line: 100, column: 26, scope: !40)
!137 = !DILocation(line: 101, column: 26, scope: !40)
!138 = !DILocation(line: 102, column: 26, scope: !40)
!139 = !DILocation(line: 103, column: 26, scope: !40)
!140 = !DILocation(line: 105, column: 25, scope: !40)
!141 = !DILocation(line: 106, column: 25, scope: !40)
!142 = !DILocation(line: 107, column: 25, scope: !40)
!143 = !DILocation(line: 108, column: 25, scope: !40)
!144 = !DILocation(line: 110, column: 23, scope: !40)
!145 = !DILocation(line: 111, column: 23, scope: !40)
!146 = !DILocation(line: 112, column: 23, scope: !40)
!147 = !DILocation(line: 113, column: 23, scope: !40)
!148 = !DILocation(line: 285, column: 49, scope: !149, inlinedAt: !150)
!149 = distinct !DISubprogram(name: "exp2f", scope: !97, file: !97, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!150 = distinct !DILocation(line: 114, column: 15, scope: !40)
!151 = !DILocation(line: 285, column: 49, scope: !149, inlinedAt: !152)
!152 = distinct !DILocation(line: 115, column: 15, scope: !40)
!153 = !DILocation(line: 285, column: 49, scope: !149, inlinedAt: !154)
!154 = distinct !DILocation(line: 116, column: 15, scope: !40)
!155 = !DILocation(line: 285, column: 49, scope: !149, inlinedAt: !156)
!156 = distinct !DILocation(line: 117, column: 15, scope: !40)
!157 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !160)
!158 = distinct !DISubprogram(name: "__float2half_rn", scope: !159, file: !159, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!159 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!160 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !162)
!161 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !159, file: !159, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!162 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !164)
!163 = distinct !DISubprogram(name: "__float22half2_rn", scope: !159, file: !159, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!164 = distinct !DILocation(line: 118, column: 29, scope: !40)
!165 = !{!166, !168}
!166 = distinct !{!166, !167, !"_ZL17__floats2half2_rnff: %agg.result"}
!167 = distinct !{!167, !"_ZL17__floats2half2_rnff"}
!168 = distinct !{!168, !169, !"_ZL17__float22half2_rn6float2: %agg.result"}
!169 = distinct !{!169, !"_ZL17__float22half2_rn6float2"}
!170 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !171)
!171 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !162)
!172 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !173)
!173 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !174)
!174 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !175)
!175 = distinct !DILocation(line: 119, column: 29, scope: !40)
!176 = !{!177, !179}
!177 = distinct !{!177, !178, !"_ZL17__floats2half2_rnff: %agg.result"}
!178 = distinct !{!178, !"_ZL17__floats2half2_rnff"}
!179 = distinct !{!179, !180, !"_ZL17__float22half2_rn6float2: %agg.result"}
!180 = distinct !{!180, !"_ZL17__float22half2_rn6float2"}
!181 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !182)
!182 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !174)
!183 = !DILocation(line: 120, column: 53, scope: !40)
!184 = !DILocation(line: 121, column: 5, scope: !40)
!185 = !DILocation(line: 45, column: 93, scope: !40)
!186 = !DILocation(line: 130, column: 26, scope: !40)
!187 = !DILocation(line: 130, column: 110, scope: !40)
!188 = !DILocation(line: 131, column: 12, scope: !40)
!189 = !DILocation(line: 131, column: 30, scope: !40)
!190 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !191)
!191 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !192)
!192 = distinct !DILocation(line: 132, column: 7, scope: !40)
!193 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !191)
!194 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !191)
!195 = !DILocation(line: 134, column: 37, scope: !40)
!196 = !DILocation(line: 134, column: 11, scope: !40)
!197 = !DILocation(line: 135, column: 59, scope: !40)
!198 = !DILocation(line: 135, column: 76, scope: !40)
!199 = !DILocation(line: 285, column: 49, scope: !149, inlinedAt: !200)
!200 = distinct !DILocation(line: 135, column: 22, scope: !40)
!201 = !DILocation(line: 136, column: 7, scope: !40)
!202 = !DILocation(line: 606, column: 9, scope: !203, inlinedAt: !204)
!203 = distinct !DISubprogram(name: "__shfl_sync", scope: !56, file: !56, line: 599, type: !7, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!204 = distinct !DILocation(line: 137, column: 20, scope: !40)
!205 = !DILocation(line: 171, column: 37, scope: !103, inlinedAt: !206)
!206 = distinct !DILocation(line: 580, column: 14, scope: !207, inlinedAt: !208)
!207 = distinct !DISubprogram(name: "__shfl_sync", scope: !56, file: !56, line: 578, type: !7, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!208 = distinct !DILocation(line: 607, column: 11, scope: !203, inlinedAt: !204)
!209 = !DILocation(line: 171, column: 10, scope: !103, inlinedAt: !206)
!210 = !DILocation(line: 582, column: 31, scope: !207, inlinedAt: !208)
!211 = !DILocation(line: 582, column: 23, scope: !207, inlinedAt: !208)
!212 = !DILocation(line: 583, column: 43, scope: !207, inlinedAt: !208)
!213 = !DILocation(line: 583, column: 10, scope: !207, inlinedAt: !208)
!214 = !DILocation(line: 608, column: 14, scope: !203, inlinedAt: !204)
!215 = !DILocation(line: 1301, column: 28, scope: !216, inlinedAt: !217)
!216 = distinct !DISubprogram(name: "__half22float2", scope: !159, file: !159, line: 1299, type: !7, scopeLine: 1299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!217 = distinct !DILocation(line: 142, column: 32, scope: !40)
!218 = !DILocation(line: 1302, column: 28, scope: !216, inlinedAt: !217)
!219 = !DILocation(line: 1301, column: 28, scope: !216, inlinedAt: !220)
!220 = distinct !DILocation(line: 143, column: 32, scope: !40)
!221 = !DILocation(line: 1302, column: 28, scope: !216, inlinedAt: !220)
!222 = !DILocation(line: 145, column: 23, scope: !40)
!223 = !DILocation(line: 146, column: 23, scope: !40)
!224 = !DILocation(line: 147, column: 23, scope: !40)
!225 = !DILocation(line: 148, column: 23, scope: !40)
!226 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !227)
!227 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !228)
!228 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !229)
!229 = distinct !DILocation(line: 149, column: 29, scope: !40)
!230 = !{!231, !233}
!231 = distinct !{!231, !232, !"_ZL17__floats2half2_rnff: %agg.result"}
!232 = distinct !{!232, !"_ZL17__floats2half2_rnff"}
!233 = distinct !{!233, !234, !"_ZL17__float22half2_rn6float2: %agg.result"}
!234 = distinct !{!234, !"_ZL17__float22half2_rn6float2"}
!235 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !236)
!236 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !228)
!237 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !238)
!238 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !239)
!239 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !240)
!240 = distinct !DILocation(line: 150, column: 29, scope: !40)
!241 = !{!242, !244}
!242 = distinct !{!242, !243, !"_ZL17__floats2half2_rnff: %agg.result"}
!243 = distinct !{!243, !"_ZL17__floats2half2_rnff"}
!244 = distinct !{!244, !245, !"_ZL17__float22half2_rn6float2: %agg.result"}
!245 = distinct !{!245, !"_ZL17__float22half2_rn6float2"}
!246 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !247)
!247 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !239)
!248 = !DILocation(line: 151, column: 55, scope: !40)
!249 = !DILocation(line: 156, column: 13, scope: !40)
!250 = !DILocation(line: 157, column: 35, scope: !40)
!251 = !DILocation(line: 157, column: 21, scope: !40)
!252 = !DILocation(line: 158, column: 9, scope: !40)
!253 = !DILocation(line: 168, column: 44, scope: !40)
!254 = !DILocation(line: 168, column: 178, scope: !40)
!255 = !DILocation(line: 166, column: 38, scope: !40)
!256 = !DILocation(line: 168, column: 65, scope: !40)
!257 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !258)
!258 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !259)
!259 = distinct !DILocation(line: 170, column: 7, scope: !40)
!260 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !258)
!261 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !258)
!262 = !DILocation(line: 175, column: 299, scope: !40)
!263 = !DILocation(line: 175, column: 100, scope: !40)
!264 = !DILocation(line: 175, column: 63, scope: !40)
!265 = !DILocation(line: 175, column: 237, scope: !40)
!266 = !DILocation(line: 181, column: 77, scope: !40)
!267 = !DILocation(line: 181, column: 47, scope: !40)
!268 = !DILocation(line: 129, column: 44, scope: !40)
!269 = !DILocation(line: 581, column: 31, scope: !207, inlinedAt: !208)
!270 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !271)
!271 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !272)
!272 = distinct !DILocation(line: 188, column: 3, scope: !40)
!273 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !271)
!274 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !271)
!275 = !DILocation(line: 192, column: 44, scope: !40)
!276 = !DILocation(line: 1082, column: 16, scope: !277, inlinedAt: !278)
!277 = distinct !DISubprogram(name: "__half2float", scope: !159, file: !159, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!278 = distinct !DILocation(line: 136, column: 55, scope: !279, inlinedAt: !280)
!279 = distinct !DISubprogram(name: "operator float", scope: !159, file: !159, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!280 = distinct !DILocation(line: 192, column: 44, scope: !40)
!281 = !DILocation(line: 192, column: 34, scope: !40)
!282 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !283)
!283 = distinct !DILocation(line: 194, column: 34, scope: !40)
!284 = !DILocation(line: 171, column: 37, scope: !103, inlinedAt: !285)
!285 = distinct !DILocation(line: 990, column: 14, scope: !105, inlinedAt: !286)
!286 = distinct !DILocation(line: 1019, column: 11, scope: !100, inlinedAt: !283)
!287 = !DILocation(line: 171, column: 10, scope: !103, inlinedAt: !285)
!288 = !DILocation(line: 991, column: 20, scope: !105, inlinedAt: !286)
!289 = !DILocation(line: 992, column: 36, scope: !105, inlinedAt: !286)
!290 = !DILocation(line: 992, column: 17, scope: !105, inlinedAt: !286)
!291 = !DILocation(line: 992, column: 11, scope: !105, inlinedAt: !286)
!292 = !DILocation(line: 993, column: 43, scope: !105, inlinedAt: !286)
!293 = !DILocation(line: 993, column: 10, scope: !105, inlinedAt: !286)
!294 = !DILocation(line: 1020, column: 14, scope: !100, inlinedAt: !283)
!295 = !DILocation(line: 194, column: 32, scope: !40)
!296 = !DILocation(line: 1018, column: 9, scope: !100, inlinedAt: !297)
!297 = distinct !DILocation(line: 195, column: 34, scope: !40)
!298 = !DILocation(line: 171, column: 37, scope: !103, inlinedAt: !299)
!299 = distinct !DILocation(line: 990, column: 14, scope: !105, inlinedAt: !300)
!300 = distinct !DILocation(line: 1019, column: 11, scope: !100, inlinedAt: !297)
!301 = !DILocation(line: 171, column: 10, scope: !103, inlinedAt: !299)
!302 = !DILocation(line: 991, column: 20, scope: !105, inlinedAt: !300)
!303 = !DILocation(line: 992, column: 36, scope: !105, inlinedAt: !300)
!304 = !DILocation(line: 992, column: 17, scope: !105, inlinedAt: !300)
!305 = !DILocation(line: 992, column: 11, scope: !105, inlinedAt: !300)
!306 = !DILocation(line: 993, column: 43, scope: !105, inlinedAt: !300)
!307 = !DILocation(line: 993, column: 10, scope: !105, inlinedAt: !300)
!308 = !DILocation(line: 1020, column: 14, scope: !100, inlinedAt: !297)
!309 = !DILocation(line: 195, column: 32, scope: !40)
!310 = !DILocation(line: 199, column: 24, scope: !40)
!311 = !DILocation(line: 199, column: 40, scope: !40)
!312 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !313)
!313 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !314)
!314 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !315)
!315 = distinct !DILocation(line: 205, column: 27, scope: !40)
!316 = !{!317, !319}
!317 = distinct !{!317, !318, !"_ZL17__floats2half2_rnff: %agg.result"}
!318 = distinct !{!318, !"_ZL17__floats2half2_rnff"}
!319 = distinct !{!319, !320, !"_ZL17__float22half2_rn6float2: %agg.result"}
!320 = distinct !{!320, !"_ZL17__float22half2_rn6float2"}
!321 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !322)
!322 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !314)
!323 = !DILocation(line: 596, column: 67, scope: !324, inlinedAt: !325)
!324 = distinct !DISubprogram(name: "__half2", scope: !159, file: !159, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!325 = distinct !DILocation(line: 1077, column: 10, scope: !161, inlinedAt: !314)
!326 = !DILocation(line: 596, column: 73, scope: !324, inlinedAt: !325)
!327 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !328)
!328 = distinct !DILocation(line: 1077, column: 18, scope: !161, inlinedAt: !329)
!329 = distinct !DILocation(line: 1295, column: 23, scope: !163, inlinedAt: !330)
!330 = distinct !DILocation(line: 206, column: 27, scope: !40)
!331 = !{!332, !334}
!332 = distinct !{!332, !333, !"_ZL17__floats2half2_rnff: %agg.result"}
!333 = distinct !{!333, !"_ZL17__floats2half2_rnff"}
!334 = distinct !{!334, !335, !"_ZL17__float22half2_rn6float2: %agg.result"}
!335 = distinct !{!335, !"_ZL17__float22half2_rn6float2"}
!336 = !DILocation(line: 1007, column: 10, scope: !158, inlinedAt: !337)
!337 = distinct !DILocation(line: 1077, column: 38, scope: !161, inlinedAt: !329)
!338 = !DILocation(line: 596, column: 67, scope: !324, inlinedAt: !339)
!339 = distinct !DILocation(line: 1077, column: 10, scope: !161, inlinedAt: !329)
!340 = !DILocation(line: 596, column: 73, scope: !324, inlinedAt: !339)
!341 = !DILocation(line: 207, column: 45, scope: !40)
!342 = !DILocation(line: 208, column: 121, scope: !40)
!343 = !DILocation(line: 208, column: 149, scope: !40)
!344 = !DILocation(line: 208, column: 77, scope: !40)
!345 = !DILocation(line: 208, column: 155, scope: !40)
!346 = !DILocation(line: 208, column: 40, scope: !40)
!347 = !DILocation(line: 208, column: 198, scope: !40)
!348 = !DILocation(line: 208, column: 92, scope: !40)
!349 = !DILocation(line: 68, column: 3, scope: !55, inlinedAt: !350)
!350 = distinct !DILocation(line: 192, column: 3, scope: !58, inlinedAt: !351)
!351 = distinct !DILocation(line: 210, column: 3, scope: !40)
!352 = !DILocation(line: 69, column: 3, scope: !55, inlinedAt: !350)
!353 = !DILocation(line: 70, column: 3, scope: !55, inlinedAt: !350)
!354 = !DILocation(line: 212, column: 8, scope: !40)
!355 = !DILocation(line: 213, column: 22, scope: !40)
!356 = !DILocation(line: 213, column: 131, scope: !40)
!357 = !{i32 2, i32 -1, i32 -1, i32 -1}
!358 = !DILocation(line: 213, column: 168, scope: !40)
!359 = !DILocation(line: 215, column: 1, scope: !40)
