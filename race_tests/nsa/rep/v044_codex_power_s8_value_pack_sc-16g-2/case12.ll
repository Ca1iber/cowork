; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v044_codex_power_s8_value_pack_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v044_codex_power_s8_value_pack_sc-16g-2/codegen/case12.device.cpp"
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
  %v_fetch_local = alloca [16 x %struct.__half], align 2, addrspace(5)
  call void @llvm.lifetime.start.p5(i64 32, ptr addrspace(5) %v_fetch_local) #12, !dbg !42
  %0 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.y(), !range !29
  %mul = shl nsw i32 %0, 20
  %1 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !range !29
  %mul7 = shl nsw i32 %1, 10
  %add = add nuw nsw i32 %mul, %mul7
  %2 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !43
  %mul11 = shl nuw nsw i32 %2, 3
  %add9 = add nuw nsw i32 %add, %mul11
  %mul15 = and i32 %mul11, 8128
  %add211074 = and i32 %mul11, 32
  %shr181075 = add nuw nsw i32 %add211074, %2
  %mul23 = and i32 %shr181075, 32
  %add311076 = and i32 %mul11, 16
  %and261077 = add nuw nsw i32 %add311076, %2
  %mul33 = and i32 %and261077, 16
  %and361079 = mul nuw nsw i32 %2, 9
  %mul42 = and i32 %and361079, 8
  %3 = zext nneg i32 %add9 to i64, !dbg !44
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %3, !dbg !45
  %4 = or disjoint i32 %mul15, %mul23, !dbg !46
  %5 = or disjoint i32 %4, %mul33, !dbg !47
  %6 = or disjoint i32 %5, %mul42, !dbg !48
  %add.ptr45 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %6, !dbg !49
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr45, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr, i64 16, i1 false), !dbg !50, !tbaa.struct !51, !call_argsrelate !52
  %7 = add nuw nsw i64 %3, 512, !dbg !53
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %7, !dbg !45
  %narrow = add nuw nsw i32 %mul15, 512, !dbg !54
  %8 = or disjoint i32 %narrow, %mul23, !dbg !46
  %9 = or disjoint i32 %8, %mul33, !dbg !47
  %10 = or disjoint i32 %9, %mul42, !dbg !48
  %add.ptr45.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %10, !dbg !49
  tail call void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr45.1, ptr addrspace(4) noundef align 16 dereferenceable(16) %add.ptr.1, i64 16, i1 false), !dbg !50, !tbaa.struct !51, !call_argsrelate !52
  fence syncscope("warp") release, !dbg !55
  tail call void @llvm.mxc.barrier.warp(), !dbg !61
  fence syncscope("warp") acquire, !dbg !62
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
  %and59 = shl nuw nsw i32 %and55, 5, !dbg !63
  %mul60 = and i32 %and59, 32, !dbg !63
  %and67 = shl nuw nsw i32 %and63, 4, !dbg !64
  %mul68 = and i32 %and67, 16, !dbg !64
  %add77 = or disjoint i32 %add69, %mul68, !dbg !65
  %add82 = or disjoint i32 %add77, %mul60, !dbg !66
  %add.ptr84 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add82, !dbg !67
  %12 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !68
  %add66.1 = shl nuw nsw i32 %and63, 4, !dbg !64
  %13 = and i32 %add66.1, 16, !dbg !64
  %14 = or disjoint i32 %13, %add69, !dbg !65
  %15 = or disjoint i32 %14, %mul60, !dbg !66
  %add82.1 = xor i32 %15, 16, !dbg !66
  %add.ptr84.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add82.1, !dbg !67
  %16 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !68
  %add58.2 = shl nuw nsw i32 %and55, 5, !dbg !63
  %17 = and i32 %add58.2, 32, !dbg !63
  %mul60.2 = xor i32 %17, 32, !dbg !63
  %add66.2 = shl nuw nsw i32 %and63, 4, !dbg !64
  %mul68.2 = and i32 %add66.2, 16, !dbg !64
  %add77.2 = or disjoint i32 %add69, %mul68.2, !dbg !65
  %add82.2 = or disjoint i32 %add77.2, %mul60.2, !dbg !66
  %add.ptr84.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add82.2, !dbg !67
  %18 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !68
  %add66.3 = shl nuw nsw i32 %and63, 4, !dbg !64
  %19 = and i32 %add66.3, 16, !dbg !64
  %20 = or disjoint i32 %19, %add69, !dbg !65
  %21 = or disjoint i32 %20, %mul60.2, !dbg !66
  %add82.3 = xor i32 %21, 16, !dbg !66
  %add.ptr84.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add82.3, !dbg !67
  %22 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !68
  %mul125 = shl nsw i32 %0, 13
  %mul127 = shl nsw i32 %1, 3
  %add128 = add nuw nsw i32 %mul125, %mul127
  %shr140 = lshr i32 %2, 3
  %conv = zext nneg i32 %0 to i64
  %mul147 = shl nuw nsw i64 %conv, 16
  %mul156 = zext nneg i32 %mul11 to i64
  %invariant.gep1227 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul156, !dbg !69
  %mul281 = and i32 %and55, 252
  %shr324 = lshr i32 %2, 4
  %23 = zext nneg i32 %add128 to i64, !dbg !69
  %arrayidx130 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %23, !dbg !70
  %24 = load i32, ptr addrspace(1) %arrayidx130, align 4, !dbg !70, !tbaa !30
  %mul131 = shl nsw i32 %24, 4, !dbg !71
  %cmp132 = icmp slt i32 %24, 0, !dbg !72
  %cmp134.not = icmp sgt i32 %mul131, %1
  %or.cond = select i1 %cmp132, i1 true, i1 %cmp134.not, !dbg !73
  br i1 %or.cond, label %if.end415, label %if.then, !dbg !73

if.then:                                          ; preds = %entry
  fence syncscope("warp") release, !dbg !74
  tail call void @llvm.mxc.barrier.warp(), !dbg !77
  fence syncscope("warp") acquire, !dbg !78
  %add141 = add nuw nsw i32 %mul131, %shr140
  %conv151 = zext nneg i32 %mul131 to i64
  %.idx = shl nuw nsw i64 %conv151, 7
  %gep = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1227, i64 %.idx, !dbg !79
  %cmp144 = icmp ult i32 %add141, 1024, !dbg !80
  br i1 %cmp144, label %if.then145, label %if.end, !dbg !81

if.then145:                                       ; preds = %if.then
  %gep1220 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1220, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1220, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1220, i64 4
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep1220, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx, align 4, !dbg !82, !tbaa !30
  br label %if.end, !dbg !83

if.end:                                           ; preds = %if.then, %if.then145
  %condval.sroa.0.0 = phi i32 [ %condval.sroa.0.0.copyload, %if.then145 ], [ 0, %if.then ], !dbg !84
  %condval.sroa.5.0 = phi i32 [ %condval.sroa.5.0.copyload, %if.then145 ], [ 0, %if.then ], !dbg !84
  %condval.sroa.6.0 = phi i32 [ %condval.sroa.6.0.copyload, %if.then145 ], [ 0, %if.then ], !dbg !84
  %condval.sroa.7.0 = phi i32 [ %condval.sroa.7.0.copyload, %if.then145 ], [ 0, %if.then ], !dbg !84
  store i32 %condval.sroa.0.0, ptr addrspace(3) %add.ptr45, align 16, !dbg !85, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !85
  store i32 %condval.sroa.5.0, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx, align 4, !dbg !85, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !85
  store i32 %condval.sroa.6.0, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx, align 8, !dbg !85, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !85
  store i32 %condval.sroa.7.0, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx, align 4, !dbg !85, !tbaa !30
  %cmp144.1 = icmp ult i32 %add141, 1016, !dbg !80
  br i1 %cmp144.1, label %if.then145.1, label %if.end.1, !dbg !81

if.then145.1:                                     ; preds = %if.end
  %add150.1 = or disjoint i64 %mul147, 512
  %gep1220.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %add150.1
  %condval.sroa.7.0.add.ptr158.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1, i64 4
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep1220.1, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1, align 4, !dbg !82, !tbaa !30
  br label %if.end.1, !dbg !83

if.end.1:                                         ; preds = %if.then145.1, %if.end
  %condval.sroa.0.0.1 = phi i32 [ %condval.sroa.0.0.copyload.1, %if.then145.1 ], [ 0, %if.end ], !dbg !84
  %condval.sroa.5.0.1 = phi i32 [ %condval.sroa.5.0.copyload.1, %if.then145.1 ], [ 0, %if.end ], !dbg !84
  %condval.sroa.6.0.1 = phi i32 [ %condval.sroa.6.0.copyload.1, %if.then145.1 ], [ 0, %if.end ], !dbg !84
  %condval.sroa.7.0.1 = phi i32 [ %condval.sroa.7.0.copyload.1, %if.then145.1 ], [ 0, %if.end ], !dbg !84
  store i32 %condval.sroa.0.0.1, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !85, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !85
  store i32 %condval.sroa.5.0.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1, align 4, !dbg !85, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !85
  store i32 %condval.sroa.6.0.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1, align 8, !dbg !85, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !85
  store i32 %condval.sroa.7.0.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1, align 4, !dbg !85, !tbaa !30
  fence syncscope("warp") release, !dbg !86
  tail call void @llvm.mxc.barrier.warp(), !dbg !89
  fence syncscope("warp") acquire, !dbg !90
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !91
  %25 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %12, <4 x float> zeroinitializer), !dbg !92
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !91
  %26 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %16, <4 x float> %25), !dbg !92
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !91
  %27 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %18, <4 x float> %26), !dbg !92
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !91
  %28 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %22, <4 x float> %27), !dbg !92
  %add282 = add nuw nsw i32 %mul131, %mul281
  %cmp285.not = icmp sgt i32 %add282, %1, !dbg !93
  %scores.sroa.0.0.vec.extract1739 = extractelement <4 x float> %28, i64 0
  %spec.select = select i1 %cmp285.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1739, !dbg !94
  %cmp285.not.1.not = icmp slt i32 %add282, %1, !dbg !93
  %scores.sroa.0.4.vec.extract1844 = extractelement <4 x float> %28, i64 1, !dbg !94
  %condval_1.0.1 = select i1 %cmp285.not.1.not, float %scores.sroa.0.4.vec.extract1844, float 0xFFF0000000000000, !dbg !94
  %add283.2 = or disjoint i32 %add282, 2, !dbg !95
  %cmp285.not.2 = icmp sgt i32 %add283.2, %1, !dbg !93
  %scores.sroa.0.8.vec.extract1921 = extractelement <4 x float> %28, i64 2, !dbg !94
  %condval_1.0.2 = select i1 %cmp285.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1921, !dbg !94
  %add283.3 = or disjoint i32 %add282, 3, !dbg !95
  %cmp285.not.3 = icmp sgt i32 %add283.3, %1, !dbg !93
  %scores.sroa.0.12.vec.extract1998 = extractelement <4 x float> %28, i64 3, !dbg !94
  %condval_1.0.3 = select i1 %cmp285.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract1998, !dbg !94
  %29 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !96
  %30 = tail call contract noundef float @llvm.maxnum.f32(float %29, float %condval_1.0.1), !dbg !96
  %31 = tail call contract noundef float @llvm.maxnum.f32(float %30, float %condval_1.0.2), !dbg !96
  %32 = tail call contract noundef float @llvm.maxnum.f32(float %31, float %condval_1.0.3), !dbg !96
  %33 = bitcast float %32 to i32, !dbg !100
  %34 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !103
  %35 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %34) #13, !dbg !108
  %xor.i.i = xor i32 %35, 32, !dbg !109
  %36 = and i32 %35, -64, !dbg !110
  %and.i.i = add nsw i32 %36, 64, !dbg !110
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !111
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %35, !dbg !112
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !113
  %37 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %33), !dbg !114
  %38 = bitcast i32 %37 to float, !dbg !115
  %39 = tail call contract noundef float @llvm.maxnum.f32(float %32, float %38), !dbg !116
  %40 = bitcast float %39 to i32, !dbg !118
  %41 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !120
  %42 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %41) #13, !dbg !123
  %xor.i.i1120 = xor i32 %42, 16, !dbg !124
  %43 = and i32 %42, -64, !dbg !125
  %and.i.i1121 = add nsw i32 %43, 64, !dbg !125
  %cmp.not.i.i1122 = icmp slt i32 %xor.i.i1120, %and.i.i1121, !dbg !126
  %cond.i.i1123 = select i1 %cmp.not.i.i1122, i32 %xor.i.i1120, i32 %42, !dbg !127
  %shl.i.i1124 = shl i32 %cond.i.i1123, 2, !dbg !128
  %44 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1124, i32 %40), !dbg !129
  %45 = bitcast i32 %44 to float, !dbg !130
  %46 = tail call contract noundef float @llvm.maxnum.f32(float %39, float %45), !dbg !131
  %cmp326 = icmp ult i32 %2, 16, !dbg !133
  %max_cache.sroa.0.0 = select i1 %cmp326, float %46, float 0xFFF0000000000000, !dbg !134
  %47 = tail call contract noundef float @llvm.maxnum.f32(float %46, float 0xFFF0000000000000), !dbg !135
  %sub = fsub contract float %spec.select, %46, !dbg !137
  %sub347 = fsub contract float %condval_1.0.1, %46, !dbg !138
  %sub350 = fsub contract float %condval_1.0.2, %46, !dbg !139
  %sub353 = fsub contract float %condval_1.0.3, %46, !dbg !140
  %mul358 = fmul contract float %sub, 0x3FC7154760000000, !dbg !141
  %mul362 = fmul contract float %sub347, 0x3FC7154760000000, !dbg !142
  %mul366 = fmul contract float %sub350, 0x3FC7154760000000, !dbg !143
  %mul370 = fmul contract float %sub353, 0x3FC7154760000000, !dbg !144
  %add375 = fadd contract float %mul358, 8.000000e+00, !dbg !145
  %add379 = fadd contract float %mul362, 8.000000e+00, !dbg !146
  %add383 = fadd contract float %mul366, 8.000000e+00, !dbg !147
  %add387 = fadd contract float %mul370, 8.000000e+00, !dbg !148
  %cmp.i.i = fcmp contract olt float %add375, -1.260000e+02, !dbg !149
  %cond.i.i1129 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i = fadd contract float %add375, %cond.i.i1129, !dbg !149
  %48 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !149
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i = fmul contract float %cond2.i.i, %48, !dbg !149
  %cmp.i.i1130 = fcmp contract olt float %add379, -1.260000e+02, !dbg !152
  %cond.i.i1131 = select contract i1 %cmp.i.i1130, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i1132 = fadd contract float %add379, %cond.i.i1131, !dbg !152
  %49 = tail call contract float @llvm.exp2.f32(float %add.i.i1132), !dbg !152
  %cond2.i.i1133 = select contract i1 %cmp.i.i1130, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i1134 = fmul contract float %cond2.i.i1133, %49, !dbg !152
  %cmp.i.i1135 = fcmp contract olt float %add383, -1.260000e+02, !dbg !154
  %cond.i.i1136 = select contract i1 %cmp.i.i1135, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i1137 = fadd contract float %add383, %cond.i.i1136, !dbg !154
  %50 = tail call contract float @llvm.exp2.f32(float %add.i.i1137), !dbg !154
  %cond2.i.i1138 = select contract i1 %cmp.i.i1135, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i1139 = fmul contract float %cond2.i.i1138, %50, !dbg !154
  %cmp.i.i1140 = fcmp contract olt float %add387, -1.260000e+02, !dbg !156
  %cond.i.i1141 = select contract i1 %cmp.i.i1140, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i1142 = fadd contract float %add387, %cond.i.i1141, !dbg !156
  %51 = tail call contract float @llvm.exp2.f32(float %add.i.i1142), !dbg !156
  %cond2.i.i1143 = select contract i1 %cmp.i.i1140, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i1144 = fmul contract float %cond2.i.i1143, %51, !dbg !156
  %52 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !158, !noalias !166
  %53 = fptrunc float %mul.i.i to half, !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %52), !dbg !158, !noalias !166
  %54 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !166
  %55 = fptrunc float %mul.i.i1134 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %54), !dbg !171, !noalias !166
  %56 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !177
  %57 = fptrunc float %mul.i.i1139 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %56), !dbg !173, !noalias !177
  %58 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !182, !noalias !177
  %59 = fptrunc float %mul.i.i1144 to half, !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %58), !dbg !182, !noalias !177
  %60 = insertelement <4 x half> poison, half %53, i64 0, !dbg !184
  %61 = insertelement <4 x half> %60, half %55, i64 1, !dbg !184
  %62 = insertelement <4 x half> %61, half %57, i64 2, !dbg !184
  %63 = insertelement <4 x half> %62, half %59, i64 3, !dbg !184
  br label %if.end415, !dbg !185

if.end415:                                        ; preds = %if.end.1, %entry
  %64 = phi <4 x half> [ zeroinitializer, %entry ], [ %63, %if.end.1 ], !dbg !84
  %max_cache.sroa.0.1 = phi float [ 0xFFF0000000000000, %entry ], [ %max_cache.sroa.0.0, %if.end.1 ], !dbg !84
  %global_max.sroa.0.1 = phi float [ 0xFFF0000000000000, %entry ], [ %47, %if.end.1 ], !dbg !84
  %65 = or disjoint i64 %23, 1, !dbg !186
  %arrayidx130.1 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %65, !dbg !70
  %66 = load i32, ptr addrspace(1) %arrayidx130.1, align 4, !dbg !70, !tbaa !30
  %mul131.1 = shl nsw i32 %66, 4, !dbg !71
  %cmp132.1 = icmp slt i32 %66, 0, !dbg !72
  %cmp134.not.1 = icmp sgt i32 %mul131.1, %1
  %or.cond.1 = select i1 %cmp132.1, i1 true, i1 %cmp134.not.1, !dbg !73
  br i1 %or.cond.1, label %if.end415.1, label %if.then.1, !dbg !73

if.then.1:                                        ; preds = %if.end415
  fence syncscope("warp") release, !dbg !74
  tail call void @llvm.mxc.barrier.warp(), !dbg !77
  fence syncscope("warp") acquire, !dbg !78
  %add141.1 = add nuw nsw i32 %mul131.1, %shr140
  %conv151.1 = zext nneg i32 %mul131.1 to i64
  %.idx.1 = shl nuw nsw i64 %conv151.1, 7
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1227, i64 %.idx.1, !dbg !79
  %cmp144.11263 = icmp ult i32 %add141.1, 1024, !dbg !80
  br i1 %cmp144.11263, label %if.then145.11272, label %if.end.11281, !dbg !81

if.then145.11272:                                 ; preds = %if.then.1
  %gep1220.11264 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.1, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.11265 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.11264, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.11266 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.11264, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.11267 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.11264, i64 4
  %condval.sroa.0.0.copyload.11268 = load i32, ptr addrspace(4) %gep1220.11264, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.copyload.11269 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.11267, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.copyload.11270 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.11266, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.copyload.11271 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.11265, align 4, !dbg !82, !tbaa !30
  br label %if.end.11281, !dbg !83

if.end.11281:                                     ; preds = %if.then145.11272, %if.then.1
  %condval.sroa.0.0.11273 = phi i32 [ %condval.sroa.0.0.copyload.11268, %if.then145.11272 ], [ 0, %if.then.1 ], !dbg !84
  %condval.sroa.5.0.11274 = phi i32 [ %condval.sroa.5.0.copyload.11269, %if.then145.11272 ], [ 0, %if.then.1 ], !dbg !84
  %condval.sroa.6.0.11275 = phi i32 [ %condval.sroa.6.0.copyload.11270, %if.then145.11272 ], [ 0, %if.then.1 ], !dbg !84
  %condval.sroa.7.0.11276 = phi i32 [ %condval.sroa.7.0.copyload.11271, %if.then145.11272 ], [ 0, %if.then.1 ], !dbg !84
  store i32 %condval.sroa.0.0.11273, ptr addrspace(3) %add.ptr45, align 16, !dbg !85, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.11278 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !85
  store i32 %condval.sroa.5.0.11274, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.11278, align 4, !dbg !85, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.11279 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !85
  store i32 %condval.sroa.6.0.11275, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.11279, align 8, !dbg !85, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.11280 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !85
  store i32 %condval.sroa.7.0.11276, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.11280, align 4, !dbg !85, !tbaa !30
  %cmp144.1.1 = icmp ult i32 %add141.1, 1016, !dbg !80
  br i1 %cmp144.1.1, label %if.then145.1.1, label %if.end.1.1, !dbg !81

if.then145.1.1:                                   ; preds = %if.end.11281
  %add150.1.1 = or disjoint i64 %mul147, 512
  %gep1220.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.1, i64 %add150.1.1
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1.1, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1.1, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1.1, i64 4
  %condval.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %gep1220.1.1, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.1, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.1, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.1, align 4, !dbg !82, !tbaa !30
  br label %if.end.1.1, !dbg !83

if.end.1.1:                                       ; preds = %if.then145.1.1, %if.end.11281
  %condval.sroa.0.0.1.1 = phi i32 [ %condval.sroa.0.0.copyload.1.1, %if.then145.1.1 ], [ 0, %if.end.11281 ], !dbg !84
  %condval.sroa.5.0.1.1 = phi i32 [ %condval.sroa.5.0.copyload.1.1, %if.then145.1.1 ], [ 0, %if.end.11281 ], !dbg !84
  %condval.sroa.6.0.1.1 = phi i32 [ %condval.sroa.6.0.copyload.1.1, %if.then145.1.1 ], [ 0, %if.end.11281 ], !dbg !84
  %condval.sroa.7.0.1.1 = phi i32 [ %condval.sroa.7.0.copyload.1.1, %if.then145.1.1 ], [ 0, %if.end.11281 ], !dbg !84
  store i32 %condval.sroa.0.0.1.1, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !85, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !85
  store i32 %condval.sroa.5.0.1.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1.1, align 4, !dbg !85, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !85
  store i32 %condval.sroa.6.0.1.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1.1, align 8, !dbg !85, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !85
  store i32 %condval.sroa.7.0.1.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1.1, align 4, !dbg !85, !tbaa !30
  fence syncscope("warp") release, !dbg !86
  tail call void @llvm.mxc.barrier.warp(), !dbg !89
  fence syncscope("warp") acquire, !dbg !90
  %k_local.sroa.0.0.copyload.11289 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !91
  %67 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11289, <4 x half> %12, <4 x float> zeroinitializer), !dbg !92
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !91
  %68 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %16, <4 x float> %67), !dbg !92
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !91
  %69 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %18, <4 x float> %68), !dbg !92
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !91
  %70 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %22, <4 x float> %69), !dbg !92
  %add282.1 = add nuw nsw i32 %mul131.1, %mul281
  %cmp285.not.11290 = icmp sgt i32 %add282.1, %1, !dbg !93
  %scores.sroa.0.0.vec.extract1747 = extractelement <4 x float> %70, i64 0
  %spec.select2202 = select i1 %cmp285.not.11290, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1747, !dbg !94
  %cmp285.not.1.1.not = icmp slt i32 %add282.1, %1, !dbg !93
  %scores.sroa.0.4.vec.extract1850 = extractelement <4 x float> %70, i64 1, !dbg !94
  %condval_1.0.1.1 = select i1 %cmp285.not.1.1.not, float %scores.sroa.0.4.vec.extract1850, float 0xFFF0000000000000, !dbg !94
  %add283.2.1 = or disjoint i32 %add282.1, 2, !dbg !95
  %cmp285.not.2.1 = icmp sgt i32 %add283.2.1, %1, !dbg !93
  %scores.sroa.0.8.vec.extract1927 = extractelement <4 x float> %70, i64 2, !dbg !94
  %condval_1.0.2.1 = select i1 %cmp285.not.2.1, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1927, !dbg !94
  %add283.3.1 = or disjoint i32 %add282.1, 3, !dbg !95
  %cmp285.not.3.1 = icmp sgt i32 %add283.3.1, %1, !dbg !93
  %scores.sroa.0.12.vec.extract2004 = extractelement <4 x float> %70, i64 3, !dbg !94
  %condval_1.0.3.1 = select i1 %cmp285.not.3.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2004, !dbg !94
  %71 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2202, float 0xFFF0000000000000), !dbg !96
  %72 = tail call contract noundef float @llvm.maxnum.f32(float %71, float %condval_1.0.1.1), !dbg !96
  %73 = tail call contract noundef float @llvm.maxnum.f32(float %72, float %condval_1.0.2.1), !dbg !96
  %74 = tail call contract noundef float @llvm.maxnum.f32(float %73, float %condval_1.0.3.1), !dbg !96
  %75 = bitcast float %74 to i32, !dbg !100
  %76 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !103
  %77 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %76) #13, !dbg !108
  %xor.i.i.1 = xor i32 %77, 32, !dbg !109
  %78 = and i32 %77, -64, !dbg !110
  %and.i.i.1 = add nsw i32 %78, 64, !dbg !110
  %cmp.not.i.i.1 = icmp slt i32 %xor.i.i.1, %and.i.i.1, !dbg !111
  %cond.i.i.1 = select i1 %cmp.not.i.i.1, i32 %xor.i.i.1, i32 %77, !dbg !112
  %shl.i.i.1 = shl i32 %cond.i.i.1, 2, !dbg !113
  %79 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.1, i32 %75), !dbg !114
  %80 = bitcast i32 %79 to float, !dbg !115
  %81 = tail call contract noundef float @llvm.maxnum.f32(float %74, float %80), !dbg !116
  %82 = bitcast float %81 to i32, !dbg !118
  %83 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !120
  %84 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %83) #13, !dbg !123
  %xor.i.i1120.1 = xor i32 %84, 16, !dbg !124
  %85 = and i32 %84, -64, !dbg !125
  %and.i.i1121.1 = add nsw i32 %85, 64, !dbg !125
  %cmp.not.i.i1122.1 = icmp slt i32 %xor.i.i1120.1, %and.i.i1121.1, !dbg !126
  %cond.i.i1123.1 = select i1 %cmp.not.i.i1122.1, i32 %xor.i.i1120.1, i32 %84, !dbg !127
  %shl.i.i1124.1 = shl i32 %cond.i.i1123.1, 2, !dbg !128
  %86 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1124.1, i32 %82), !dbg !129
  %87 = bitcast i32 %86 to float, !dbg !130
  %88 = tail call contract noundef float @llvm.maxnum.f32(float %81, float %87), !dbg !131
  %cmp326.1 = icmp eq i32 %shr324, 1, !dbg !133
  %max_cache.sroa.0.2 = select i1 %cmp326.1, float %88, float %max_cache.sroa.0.1, !dbg !134
  %89 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1, float %88), !dbg !135
  %sub.1 = fsub contract float %spec.select2202, %88, !dbg !137
  %sub347.1 = fsub contract float %condval_1.0.1.1, %88, !dbg !138
  %sub350.1 = fsub contract float %condval_1.0.2.1, %88, !dbg !139
  %sub353.1 = fsub contract float %condval_1.0.3.1, %88, !dbg !140
  %mul358.1 = fmul contract float %sub.1, 0x3FC7154760000000, !dbg !141
  %mul362.1 = fmul contract float %sub347.1, 0x3FC7154760000000, !dbg !142
  %mul366.1 = fmul contract float %sub350.1, 0x3FC7154760000000, !dbg !143
  %mul370.1 = fmul contract float %sub353.1, 0x3FC7154760000000, !dbg !144
  %add375.1 = fadd contract float %mul358.1, 8.000000e+00, !dbg !145
  %add379.1 = fadd contract float %mul362.1, 8.000000e+00, !dbg !146
  %add383.1 = fadd contract float %mul366.1, 8.000000e+00, !dbg !147
  %add387.1 = fadd contract float %mul370.1, 8.000000e+00, !dbg !148
  %cmp.i.i.1 = fcmp contract olt float %add375.1, -1.260000e+02, !dbg !149
  %cond.i.i1129.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i.1 = fadd contract float %add375.1, %cond.i.i1129.1, !dbg !149
  %90 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !149
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %90, !dbg !149
  %cmp.i.i1130.1 = fcmp contract olt float %add379.1, -1.260000e+02, !dbg !152
  %cond.i.i1131.1 = select contract i1 %cmp.i.i1130.1, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i1132.1 = fadd contract float %add379.1, %cond.i.i1131.1, !dbg !152
  %91 = tail call contract float @llvm.exp2.f32(float %add.i.i1132.1), !dbg !152
  %cond2.i.i1133.1 = select contract i1 %cmp.i.i1130.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i1134.1 = fmul contract float %cond2.i.i1133.1, %91, !dbg !152
  %cmp.i.i1135.1 = fcmp contract olt float %add383.1, -1.260000e+02, !dbg !154
  %cond.i.i1136.1 = select contract i1 %cmp.i.i1135.1, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i1137.1 = fadd contract float %add383.1, %cond.i.i1136.1, !dbg !154
  %92 = tail call contract float @llvm.exp2.f32(float %add.i.i1137.1), !dbg !154
  %cond2.i.i1138.1 = select contract i1 %cmp.i.i1135.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i1139.1 = fmul contract float %cond2.i.i1138.1, %92, !dbg !154
  %cmp.i.i1140.1 = fcmp contract olt float %add387.1, -1.260000e+02, !dbg !156
  %cond.i.i1141.1 = select contract i1 %cmp.i.i1140.1, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i1142.1 = fadd contract float %add387.1, %cond.i.i1141.1, !dbg !156
  %93 = tail call contract float @llvm.exp2.f32(float %add.i.i1142.1), !dbg !156
  %cond2.i.i1143.1 = select contract i1 %cmp.i.i1140.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i1144.1 = fmul contract float %cond2.i.i1143.1, %93, !dbg !156
  %94 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !158, !noalias !166
  %95 = fptrunc float %mul.i.i.1 to half, !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %94), !dbg !158, !noalias !166
  %96 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !166
  %97 = fptrunc float %mul.i.i1134.1 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %96), !dbg !171, !noalias !166
  %98 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !177
  %99 = fptrunc float %mul.i.i1139.1 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %98), !dbg !173, !noalias !177
  %100 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !182, !noalias !177
  %101 = fptrunc float %mul.i.i1144.1 to half, !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %100), !dbg !182, !noalias !177
  %102 = insertelement <4 x half> poison, half %95, i64 0, !dbg !184
  %103 = insertelement <4 x half> %102, half %97, i64 1, !dbg !184
  %104 = insertelement <4 x half> %103, half %99, i64 2, !dbg !184
  %105 = insertelement <4 x half> %104, half %101, i64 3, !dbg !184
  br label %if.end415.1, !dbg !185

if.end415.1:                                      ; preds = %if.end.1.1, %if.end415
  %106 = phi <4 x half> [ zeroinitializer, %if.end415 ], [ %105, %if.end.1.1 ], !dbg !84
  %max_cache.sroa.0.3 = phi float [ %max_cache.sroa.0.1, %if.end415 ], [ %max_cache.sroa.0.2, %if.end.1.1 ], !dbg !84
  %global_max.sroa.0.1.1 = phi float [ %global_max.sroa.0.1, %if.end415 ], [ %89, %if.end.1.1 ], !dbg !84
  %107 = or disjoint i64 %23, 2, !dbg !186
  %arrayidx130.2 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %107, !dbg !70
  %108 = load i32, ptr addrspace(1) %arrayidx130.2, align 4, !dbg !70, !tbaa !30
  %mul131.2 = shl nsw i32 %108, 4, !dbg !71
  %cmp132.2 = icmp slt i32 %108, 0, !dbg !72
  %cmp134.not.2 = icmp sgt i32 %mul131.2, %1
  %or.cond.2 = select i1 %cmp132.2, i1 true, i1 %cmp134.not.2, !dbg !73
  br i1 %or.cond.2, label %if.end415.2, label %if.then.2, !dbg !73

if.then.2:                                        ; preds = %if.end415.1
  fence syncscope("warp") release, !dbg !74
  tail call void @llvm.mxc.barrier.warp(), !dbg !77
  fence syncscope("warp") acquire, !dbg !78
  %add141.2 = add nuw nsw i32 %mul131.2, %shr140
  %conv151.2 = zext nneg i32 %mul131.2 to i64
  %.idx.2 = shl nuw nsw i64 %conv151.2, 7
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1227, i64 %.idx.2, !dbg !79
  %cmp144.2 = icmp ult i32 %add141.2, 1024, !dbg !80
  br i1 %cmp144.2, label %if.then145.2, label %if.end.2, !dbg !81

if.then145.2:                                     ; preds = %if.then.2
  %gep1220.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.2, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.2, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.2, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.2, i64 4
  %condval.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %gep1220.2, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.2, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.2, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.2, align 4, !dbg !82, !tbaa !30
  br label %if.end.2, !dbg !83

if.end.2:                                         ; preds = %if.then145.2, %if.then.2
  %condval.sroa.0.0.2 = phi i32 [ %condval.sroa.0.0.copyload.2, %if.then145.2 ], [ 0, %if.then.2 ], !dbg !84
  %condval.sroa.5.0.2 = phi i32 [ %condval.sroa.5.0.copyload.2, %if.then145.2 ], [ 0, %if.then.2 ], !dbg !84
  %condval.sroa.6.0.2 = phi i32 [ %condval.sroa.6.0.copyload.2, %if.then145.2 ], [ 0, %if.then.2 ], !dbg !84
  %condval.sroa.7.0.2 = phi i32 [ %condval.sroa.7.0.copyload.2, %if.then145.2 ], [ 0, %if.then.2 ], !dbg !84
  store i32 %condval.sroa.0.0.2, ptr addrspace(3) %add.ptr45, align 16, !dbg !85, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !85
  store i32 %condval.sroa.5.0.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.2, align 4, !dbg !85, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !85
  store i32 %condval.sroa.6.0.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.2, align 8, !dbg !85, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !85
  store i32 %condval.sroa.7.0.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.2, align 4, !dbg !85, !tbaa !30
  %cmp144.1.2 = icmp ult i32 %add141.2, 1016, !dbg !80
  br i1 %cmp144.1.2, label %if.then145.1.2, label %if.end.1.2, !dbg !81

if.then145.1.2:                                   ; preds = %if.end.2
  %add150.1.2 = or disjoint i64 %mul147, 512
  %gep1220.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.2, i64 %add150.1.2
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1.2, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1.2, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1.2, i64 4
  %condval.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %gep1220.1.2, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.2, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.2, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.copyload.1.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.2, align 4, !dbg !82, !tbaa !30
  br label %if.end.1.2, !dbg !83

if.end.1.2:                                       ; preds = %if.then145.1.2, %if.end.2
  %condval.sroa.0.0.1.2 = phi i32 [ %condval.sroa.0.0.copyload.1.2, %if.then145.1.2 ], [ 0, %if.end.2 ], !dbg !84
  %condval.sroa.5.0.1.2 = phi i32 [ %condval.sroa.5.0.copyload.1.2, %if.then145.1.2 ], [ 0, %if.end.2 ], !dbg !84
  %condval.sroa.6.0.1.2 = phi i32 [ %condval.sroa.6.0.copyload.1.2, %if.then145.1.2 ], [ 0, %if.end.2 ], !dbg !84
  %condval.sroa.7.0.1.2 = phi i32 [ %condval.sroa.7.0.copyload.1.2, %if.then145.1.2 ], [ 0, %if.end.2 ], !dbg !84
  store i32 %condval.sroa.0.0.1.2, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !85, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !85
  store i32 %condval.sroa.5.0.1.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1.2, align 4, !dbg !85, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !85
  store i32 %condval.sroa.6.0.1.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1.2, align 8, !dbg !85, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !85
  store i32 %condval.sroa.7.0.1.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1.2, align 4, !dbg !85, !tbaa !30
  fence syncscope("warp") release, !dbg !86
  tail call void @llvm.mxc.barrier.warp(), !dbg !89
  fence syncscope("warp") acquire, !dbg !90
  %k_local.sroa.0.0.copyload.21301 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !91
  %109 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.21301, <4 x half> %12, <4 x float> zeroinitializer), !dbg !92
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !91
  %110 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %16, <4 x float> %109), !dbg !92
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !91
  %111 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %18, <4 x float> %110), !dbg !92
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !91
  %112 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %22, <4 x float> %111), !dbg !92
  %add282.2 = add nuw nsw i32 %mul131.2, %mul281
  %cmp285.not.21302 = icmp sgt i32 %add282.2, %1, !dbg !93
  %scores.sroa.0.0.vec.extract1757 = extractelement <4 x float> %112, i64 0
  %spec.select2203 = select i1 %cmp285.not.21302, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1757, !dbg !94
  %cmp285.not.1.2.not = icmp slt i32 %add282.2, %1, !dbg !93
  %scores.sroa.0.4.vec.extract1856 = extractelement <4 x float> %112, i64 1, !dbg !94
  %condval_1.0.1.2 = select i1 %cmp285.not.1.2.not, float %scores.sroa.0.4.vec.extract1856, float 0xFFF0000000000000, !dbg !94
  %add283.2.2 = or disjoint i32 %add282.2, 2, !dbg !95
  %cmp285.not.2.2 = icmp sgt i32 %add283.2.2, %1, !dbg !93
  %scores.sroa.0.8.vec.extract1933 = extractelement <4 x float> %112, i64 2, !dbg !94
  %condval_1.0.2.2 = select i1 %cmp285.not.2.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1933, !dbg !94
  %add283.3.2 = or disjoint i32 %add282.2, 3, !dbg !95
  %cmp285.not.3.2 = icmp sgt i32 %add283.3.2, %1, !dbg !93
  %scores.sroa.0.12.vec.extract2010 = extractelement <4 x float> %112, i64 3, !dbg !94
  %condval_1.0.3.2 = select i1 %cmp285.not.3.2, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2010, !dbg !94
  %113 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2203, float 0xFFF0000000000000), !dbg !96
  %114 = tail call contract noundef float @llvm.maxnum.f32(float %113, float %condval_1.0.1.2), !dbg !96
  %115 = tail call contract noundef float @llvm.maxnum.f32(float %114, float %condval_1.0.2.2), !dbg !96
  %116 = tail call contract noundef float @llvm.maxnum.f32(float %115, float %condval_1.0.3.2), !dbg !96
  %117 = bitcast float %116 to i32, !dbg !100
  %118 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !103
  %119 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %118) #13, !dbg !108
  %xor.i.i.2 = xor i32 %119, 32, !dbg !109
  %120 = and i32 %119, -64, !dbg !110
  %and.i.i.2 = add nsw i32 %120, 64, !dbg !110
  %cmp.not.i.i.2 = icmp slt i32 %xor.i.i.2, %and.i.i.2, !dbg !111
  %cond.i.i.2 = select i1 %cmp.not.i.i.2, i32 %xor.i.i.2, i32 %119, !dbg !112
  %shl.i.i.2 = shl i32 %cond.i.i.2, 2, !dbg !113
  %121 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.2, i32 %117), !dbg !114
  %122 = bitcast i32 %121 to float, !dbg !115
  %123 = tail call contract noundef float @llvm.maxnum.f32(float %116, float %122), !dbg !116
  %124 = bitcast float %123 to i32, !dbg !118
  %125 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !120
  %126 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %125) #13, !dbg !123
  %xor.i.i1120.2 = xor i32 %126, 16, !dbg !124
  %127 = and i32 %126, -64, !dbg !125
  %and.i.i1121.2 = add nsw i32 %127, 64, !dbg !125
  %cmp.not.i.i1122.2 = icmp slt i32 %xor.i.i1120.2, %and.i.i1121.2, !dbg !126
  %cond.i.i1123.2 = select i1 %cmp.not.i.i1122.2, i32 %xor.i.i1120.2, i32 %126, !dbg !127
  %shl.i.i1124.2 = shl i32 %cond.i.i1123.2, 2, !dbg !128
  %128 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1124.2, i32 %124), !dbg !129
  %129 = bitcast i32 %128 to float, !dbg !130
  %130 = tail call contract noundef float @llvm.maxnum.f32(float %123, float %129), !dbg !131
  %cmp326.2 = icmp eq i32 %shr324, 2, !dbg !133
  %max_cache.sroa.0.4 = select i1 %cmp326.2, float %130, float %max_cache.sroa.0.3, !dbg !134
  %131 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.1, float %130), !dbg !135
  %sub.2 = fsub contract float %spec.select2203, %130, !dbg !137
  %sub347.2 = fsub contract float %condval_1.0.1.2, %130, !dbg !138
  %sub350.2 = fsub contract float %condval_1.0.2.2, %130, !dbg !139
  %sub353.2 = fsub contract float %condval_1.0.3.2, %130, !dbg !140
  %mul358.2 = fmul contract float %sub.2, 0x3FC7154760000000, !dbg !141
  %mul362.2 = fmul contract float %sub347.2, 0x3FC7154760000000, !dbg !142
  %mul366.2 = fmul contract float %sub350.2, 0x3FC7154760000000, !dbg !143
  %mul370.2 = fmul contract float %sub353.2, 0x3FC7154760000000, !dbg !144
  %add375.2 = fadd contract float %mul358.2, 8.000000e+00, !dbg !145
  %add379.2 = fadd contract float %mul362.2, 8.000000e+00, !dbg !146
  %add383.2 = fadd contract float %mul366.2, 8.000000e+00, !dbg !147
  %add387.2 = fadd contract float %mul370.2, 8.000000e+00, !dbg !148
  %cmp.i.i.2 = fcmp contract olt float %add375.2, -1.260000e+02, !dbg !149
  %cond.i.i1129.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i.2 = fadd contract float %add375.2, %cond.i.i1129.2, !dbg !149
  %132 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !149
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %132, !dbg !149
  %cmp.i.i1130.2 = fcmp contract olt float %add379.2, -1.260000e+02, !dbg !152
  %cond.i.i1131.2 = select contract i1 %cmp.i.i1130.2, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i1132.2 = fadd contract float %add379.2, %cond.i.i1131.2, !dbg !152
  %133 = tail call contract float @llvm.exp2.f32(float %add.i.i1132.2), !dbg !152
  %cond2.i.i1133.2 = select contract i1 %cmp.i.i1130.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i1134.2 = fmul contract float %cond2.i.i1133.2, %133, !dbg !152
  %cmp.i.i1135.2 = fcmp contract olt float %add383.2, -1.260000e+02, !dbg !154
  %cond.i.i1136.2 = select contract i1 %cmp.i.i1135.2, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i1137.2 = fadd contract float %add383.2, %cond.i.i1136.2, !dbg !154
  %134 = tail call contract float @llvm.exp2.f32(float %add.i.i1137.2), !dbg !154
  %cond2.i.i1138.2 = select contract i1 %cmp.i.i1135.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i1139.2 = fmul contract float %cond2.i.i1138.2, %134, !dbg !154
  %cmp.i.i1140.2 = fcmp contract olt float %add387.2, -1.260000e+02, !dbg !156
  %cond.i.i1141.2 = select contract i1 %cmp.i.i1140.2, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i1142.2 = fadd contract float %add387.2, %cond.i.i1141.2, !dbg !156
  %135 = tail call contract float @llvm.exp2.f32(float %add.i.i1142.2), !dbg !156
  %cond2.i.i1143.2 = select contract i1 %cmp.i.i1140.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i1144.2 = fmul contract float %cond2.i.i1143.2, %135, !dbg !156
  %136 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !158, !noalias !166
  %137 = fptrunc float %mul.i.i.2 to half, !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %136), !dbg !158, !noalias !166
  %138 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !166
  %139 = fptrunc float %mul.i.i1134.2 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %138), !dbg !171, !noalias !166
  %140 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !177
  %141 = fptrunc float %mul.i.i1139.2 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %140), !dbg !173, !noalias !177
  %142 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !182, !noalias !177
  %143 = fptrunc float %mul.i.i1144.2 to half, !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %142), !dbg !182, !noalias !177
  %144 = insertelement <4 x half> poison, half %137, i64 0, !dbg !184
  %145 = insertelement <4 x half> %144, half %139, i64 1, !dbg !184
  %146 = insertelement <4 x half> %145, half %141, i64 2, !dbg !184
  %147 = insertelement <4 x half> %146, half %143, i64 3, !dbg !184
  br label %if.end415.2, !dbg !185

if.end415.2:                                      ; preds = %if.end.1.2, %if.end415.1
  %148 = phi <4 x half> [ zeroinitializer, %if.end415.1 ], [ %147, %if.end.1.2 ], !dbg !84
  %max_cache.sroa.0.5 = phi float [ %max_cache.sroa.0.3, %if.end415.1 ], [ %max_cache.sroa.0.4, %if.end.1.2 ], !dbg !84
  %global_max.sroa.0.1.2 = phi float [ %global_max.sroa.0.1.1, %if.end415.1 ], [ %131, %if.end.1.2 ], !dbg !84
  %149 = or disjoint i64 %23, 3, !dbg !186
  %arrayidx130.3 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %149, !dbg !70
  %150 = load i32, ptr addrspace(1) %arrayidx130.3, align 4, !dbg !70, !tbaa !30
  %mul131.3 = shl nsw i32 %150, 4, !dbg !71
  %cmp132.3 = icmp slt i32 %150, 0, !dbg !72
  %cmp134.not.3 = icmp sgt i32 %mul131.3, %1
  %or.cond.3 = select i1 %cmp132.3, i1 true, i1 %cmp134.not.3, !dbg !73
  br i1 %or.cond.3, label %if.end415.3, label %if.then.3, !dbg !73

if.then.3:                                        ; preds = %if.end415.2
  fence syncscope("warp") release, !dbg !74
  tail call void @llvm.mxc.barrier.warp(), !dbg !77
  fence syncscope("warp") acquire, !dbg !78
  %add141.3 = add nuw nsw i32 %mul131.3, %shr140
  %conv151.3 = zext nneg i32 %mul131.3 to i64
  %.idx.3 = shl nuw nsw i64 %conv151.3, 7
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1227, i64 %.idx.3, !dbg !79
  %cmp144.3 = icmp ult i32 %add141.3, 1024, !dbg !80
  br i1 %cmp144.3, label %if.then145.3, label %if.end.3, !dbg !81

if.then145.3:                                     ; preds = %if.then.3
  %gep1220.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.3, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.3, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.3, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.3, i64 4
  %condval.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %gep1220.3, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.3, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.3, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.3, align 4, !dbg !82, !tbaa !30
  br label %if.end.3, !dbg !83

if.end.3:                                         ; preds = %if.then145.3, %if.then.3
  %condval.sroa.0.0.3 = phi i32 [ %condval.sroa.0.0.copyload.3, %if.then145.3 ], [ 0, %if.then.3 ], !dbg !84
  %condval.sroa.5.0.3 = phi i32 [ %condval.sroa.5.0.copyload.3, %if.then145.3 ], [ 0, %if.then.3 ], !dbg !84
  %condval.sroa.6.0.3 = phi i32 [ %condval.sroa.6.0.copyload.3, %if.then145.3 ], [ 0, %if.then.3 ], !dbg !84
  %condval.sroa.7.0.3 = phi i32 [ %condval.sroa.7.0.copyload.3, %if.then145.3 ], [ 0, %if.then.3 ], !dbg !84
  store i32 %condval.sroa.0.0.3, ptr addrspace(3) %add.ptr45, align 16, !dbg !85, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !85
  store i32 %condval.sroa.5.0.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.3, align 4, !dbg !85, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !85
  store i32 %condval.sroa.6.0.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.3, align 8, !dbg !85, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !85
  store i32 %condval.sroa.7.0.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.3, align 4, !dbg !85, !tbaa !30
  %cmp144.1.3 = icmp ult i32 %add141.3, 1016, !dbg !80
  br i1 %cmp144.1.3, label %if.then145.1.3, label %if.end.1.3, !dbg !81

if.then145.1.3:                                   ; preds = %if.end.3
  %add150.1.3 = or disjoint i64 %mul147, 512
  %gep1220.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.3, i64 %add150.1.3
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1.3, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1.3, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1.3, i64 4
  %condval.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %gep1220.1.3, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.3, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.3, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.copyload.1.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.3, align 4, !dbg !82, !tbaa !30
  br label %if.end.1.3, !dbg !83

if.end.1.3:                                       ; preds = %if.then145.1.3, %if.end.3
  %condval.sroa.0.0.1.3 = phi i32 [ %condval.sroa.0.0.copyload.1.3, %if.then145.1.3 ], [ 0, %if.end.3 ], !dbg !84
  %condval.sroa.5.0.1.3 = phi i32 [ %condval.sroa.5.0.copyload.1.3, %if.then145.1.3 ], [ 0, %if.end.3 ], !dbg !84
  %condval.sroa.6.0.1.3 = phi i32 [ %condval.sroa.6.0.copyload.1.3, %if.then145.1.3 ], [ 0, %if.end.3 ], !dbg !84
  %condval.sroa.7.0.1.3 = phi i32 [ %condval.sroa.7.0.copyload.1.3, %if.then145.1.3 ], [ 0, %if.end.3 ], !dbg !84
  store i32 %condval.sroa.0.0.1.3, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !85, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !85
  store i32 %condval.sroa.5.0.1.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1.3, align 4, !dbg !85, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !85
  store i32 %condval.sroa.6.0.1.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1.3, align 8, !dbg !85, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !85
  store i32 %condval.sroa.7.0.1.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1.3, align 4, !dbg !85, !tbaa !30
  fence syncscope("warp") release, !dbg !86
  tail call void @llvm.mxc.barrier.warp(), !dbg !89
  fence syncscope("warp") acquire, !dbg !90
  %k_local.sroa.0.0.copyload.31313 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !91
  %151 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.31313, <4 x half> %12, <4 x float> zeroinitializer), !dbg !92
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !91
  %152 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %16, <4 x float> %151), !dbg !92
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !91
  %153 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %18, <4 x float> %152), !dbg !92
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !91
  %154 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %22, <4 x float> %153), !dbg !92
  %add282.3 = add nuw nsw i32 %mul131.3, %mul281
  %cmp285.not.31314 = icmp sgt i32 %add282.3, %1, !dbg !93
  %scores.sroa.0.0.vec.extract1767 = extractelement <4 x float> %154, i64 0
  %spec.select2204 = select i1 %cmp285.not.31314, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1767, !dbg !94
  %cmp285.not.1.3.not = icmp slt i32 %add282.3, %1, !dbg !93
  %scores.sroa.0.4.vec.extract1862 = extractelement <4 x float> %154, i64 1, !dbg !94
  %condval_1.0.1.3 = select i1 %cmp285.not.1.3.not, float %scores.sroa.0.4.vec.extract1862, float 0xFFF0000000000000, !dbg !94
  %add283.2.3 = or disjoint i32 %add282.3, 2, !dbg !95
  %cmp285.not.2.3 = icmp sgt i32 %add283.2.3, %1, !dbg !93
  %scores.sroa.0.8.vec.extract1939 = extractelement <4 x float> %154, i64 2, !dbg !94
  %condval_1.0.2.3 = select i1 %cmp285.not.2.3, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1939, !dbg !94
  %add283.3.3 = or disjoint i32 %add282.3, 3, !dbg !95
  %cmp285.not.3.3 = icmp sgt i32 %add283.3.3, %1, !dbg !93
  %scores.sroa.0.12.vec.extract2016 = extractelement <4 x float> %154, i64 3, !dbg !94
  %condval_1.0.3.3 = select i1 %cmp285.not.3.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2016, !dbg !94
  %155 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2204, float 0xFFF0000000000000), !dbg !96
  %156 = tail call contract noundef float @llvm.maxnum.f32(float %155, float %condval_1.0.1.3), !dbg !96
  %157 = tail call contract noundef float @llvm.maxnum.f32(float %156, float %condval_1.0.2.3), !dbg !96
  %158 = tail call contract noundef float @llvm.maxnum.f32(float %157, float %condval_1.0.3.3), !dbg !96
  %159 = bitcast float %158 to i32, !dbg !100
  %160 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !103
  %161 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %160) #13, !dbg !108
  %xor.i.i.3 = xor i32 %161, 32, !dbg !109
  %162 = and i32 %161, -64, !dbg !110
  %and.i.i.3 = add nsw i32 %162, 64, !dbg !110
  %cmp.not.i.i.3 = icmp slt i32 %xor.i.i.3, %and.i.i.3, !dbg !111
  %cond.i.i.3 = select i1 %cmp.not.i.i.3, i32 %xor.i.i.3, i32 %161, !dbg !112
  %shl.i.i.3 = shl i32 %cond.i.i.3, 2, !dbg !113
  %163 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.3, i32 %159), !dbg !114
  %164 = bitcast i32 %163 to float, !dbg !115
  %165 = tail call contract noundef float @llvm.maxnum.f32(float %158, float %164), !dbg !116
  %166 = bitcast float %165 to i32, !dbg !118
  %167 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !120
  %168 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %167) #13, !dbg !123
  %xor.i.i1120.3 = xor i32 %168, 16, !dbg !124
  %169 = and i32 %168, -64, !dbg !125
  %and.i.i1121.3 = add nsw i32 %169, 64, !dbg !125
  %cmp.not.i.i1122.3 = icmp slt i32 %xor.i.i1120.3, %and.i.i1121.3, !dbg !126
  %cond.i.i1123.3 = select i1 %cmp.not.i.i1122.3, i32 %xor.i.i1120.3, i32 %168, !dbg !127
  %shl.i.i1124.3 = shl i32 %cond.i.i1123.3, 2, !dbg !128
  %170 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1124.3, i32 %166), !dbg !129
  %171 = bitcast i32 %170 to float, !dbg !130
  %172 = tail call contract noundef float @llvm.maxnum.f32(float %165, float %171), !dbg !131
  %cmp326.3 = icmp eq i32 %shr324, 3, !dbg !133
  %max_cache.sroa.0.6 = select i1 %cmp326.3, float %172, float %max_cache.sroa.0.5, !dbg !134
  %173 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.2, float %172), !dbg !135
  %sub.3 = fsub contract float %spec.select2204, %172, !dbg !137
  %sub347.3 = fsub contract float %condval_1.0.1.3, %172, !dbg !138
  %sub350.3 = fsub contract float %condval_1.0.2.3, %172, !dbg !139
  %sub353.3 = fsub contract float %condval_1.0.3.3, %172, !dbg !140
  %mul358.3 = fmul contract float %sub.3, 0x3FC7154760000000, !dbg !141
  %mul362.3 = fmul contract float %sub347.3, 0x3FC7154760000000, !dbg !142
  %mul366.3 = fmul contract float %sub350.3, 0x3FC7154760000000, !dbg !143
  %mul370.3 = fmul contract float %sub353.3, 0x3FC7154760000000, !dbg !144
  %add375.3 = fadd contract float %mul358.3, 8.000000e+00, !dbg !145
  %add379.3 = fadd contract float %mul362.3, 8.000000e+00, !dbg !146
  %add383.3 = fadd contract float %mul366.3, 8.000000e+00, !dbg !147
  %add387.3 = fadd contract float %mul370.3, 8.000000e+00, !dbg !148
  %cmp.i.i.3 = fcmp contract olt float %add375.3, -1.260000e+02, !dbg !149
  %cond.i.i1129.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i.3 = fadd contract float %add375.3, %cond.i.i1129.3, !dbg !149
  %174 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !149
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %174, !dbg !149
  %cmp.i.i1130.3 = fcmp contract olt float %add379.3, -1.260000e+02, !dbg !152
  %cond.i.i1131.3 = select contract i1 %cmp.i.i1130.3, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i1132.3 = fadd contract float %add379.3, %cond.i.i1131.3, !dbg !152
  %175 = tail call contract float @llvm.exp2.f32(float %add.i.i1132.3), !dbg !152
  %cond2.i.i1133.3 = select contract i1 %cmp.i.i1130.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i1134.3 = fmul contract float %cond2.i.i1133.3, %175, !dbg !152
  %cmp.i.i1135.3 = fcmp contract olt float %add383.3, -1.260000e+02, !dbg !154
  %cond.i.i1136.3 = select contract i1 %cmp.i.i1135.3, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i1137.3 = fadd contract float %add383.3, %cond.i.i1136.3, !dbg !154
  %176 = tail call contract float @llvm.exp2.f32(float %add.i.i1137.3), !dbg !154
  %cond2.i.i1138.3 = select contract i1 %cmp.i.i1135.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i1139.3 = fmul contract float %cond2.i.i1138.3, %176, !dbg !154
  %cmp.i.i1140.3 = fcmp contract olt float %add387.3, -1.260000e+02, !dbg !156
  %cond.i.i1141.3 = select contract i1 %cmp.i.i1140.3, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i1142.3 = fadd contract float %add387.3, %cond.i.i1141.3, !dbg !156
  %177 = tail call contract float @llvm.exp2.f32(float %add.i.i1142.3), !dbg !156
  %cond2.i.i1143.3 = select contract i1 %cmp.i.i1140.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i1144.3 = fmul contract float %cond2.i.i1143.3, %177, !dbg !156
  %178 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !158, !noalias !166
  %179 = fptrunc float %mul.i.i.3 to half, !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %178), !dbg !158, !noalias !166
  %180 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !166
  %181 = fptrunc float %mul.i.i1134.3 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %180), !dbg !171, !noalias !166
  %182 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !177
  %183 = fptrunc float %mul.i.i1139.3 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %182), !dbg !173, !noalias !177
  %184 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !182, !noalias !177
  %185 = fptrunc float %mul.i.i1144.3 to half, !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %184), !dbg !182, !noalias !177
  %186 = insertelement <4 x half> poison, half %179, i64 0, !dbg !184
  %187 = insertelement <4 x half> %186, half %181, i64 1, !dbg !184
  %188 = insertelement <4 x half> %187, half %183, i64 2, !dbg !184
  %189 = insertelement <4 x half> %188, half %185, i64 3, !dbg !184
  br label %if.end415.3, !dbg !185

if.end415.3:                                      ; preds = %if.end.1.3, %if.end415.2
  %190 = phi <4 x half> [ zeroinitializer, %if.end415.2 ], [ %189, %if.end.1.3 ], !dbg !84
  %max_cache.sroa.0.7 = phi float [ %max_cache.sroa.0.5, %if.end415.2 ], [ %max_cache.sroa.0.6, %if.end.1.3 ], !dbg !84
  %global_max.sroa.0.1.3 = phi float [ %global_max.sroa.0.1.2, %if.end415.2 ], [ %173, %if.end.1.3 ], !dbg !84
  %191 = or disjoint i64 %23, 4, !dbg !186
  %arrayidx130.4 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %191, !dbg !70
  %192 = load i32, ptr addrspace(1) %arrayidx130.4, align 4, !dbg !70, !tbaa !30
  %mul131.4 = shl nsw i32 %192, 4, !dbg !71
  %cmp132.4 = icmp slt i32 %192, 0, !dbg !72
  %cmp134.not.4 = icmp sgt i32 %mul131.4, %1
  %or.cond.4 = select i1 %cmp132.4, i1 true, i1 %cmp134.not.4, !dbg !73
  br i1 %or.cond.4, label %if.end415.4, label %if.then.4, !dbg !73

if.then.4:                                        ; preds = %if.end415.3
  fence syncscope("warp") release, !dbg !74
  tail call void @llvm.mxc.barrier.warp(), !dbg !77
  fence syncscope("warp") acquire, !dbg !78
  %add141.4 = add nuw nsw i32 %mul131.4, %shr140
  %conv151.4 = zext nneg i32 %mul131.4 to i64
  %.idx.4 = shl nuw nsw i64 %conv151.4, 7
  %gep.4 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1227, i64 %.idx.4, !dbg !79
  %cmp144.4 = icmp ult i32 %add141.4, 1024, !dbg !80
  br i1 %cmp144.4, label %if.then145.4, label %if.end.4, !dbg !81

if.then145.4:                                     ; preds = %if.then.4
  %gep1220.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.4, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.4, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.4, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.4, i64 4
  %condval.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %gep1220.4, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.4, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.4, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.4, align 4, !dbg !82, !tbaa !30
  br label %if.end.4, !dbg !83

if.end.4:                                         ; preds = %if.then145.4, %if.then.4
  %condval.sroa.0.0.4 = phi i32 [ %condval.sroa.0.0.copyload.4, %if.then145.4 ], [ 0, %if.then.4 ], !dbg !84
  %condval.sroa.5.0.4 = phi i32 [ %condval.sroa.5.0.copyload.4, %if.then145.4 ], [ 0, %if.then.4 ], !dbg !84
  %condval.sroa.6.0.4 = phi i32 [ %condval.sroa.6.0.copyload.4, %if.then145.4 ], [ 0, %if.then.4 ], !dbg !84
  %condval.sroa.7.0.4 = phi i32 [ %condval.sroa.7.0.copyload.4, %if.then145.4 ], [ 0, %if.then.4 ], !dbg !84
  store i32 %condval.sroa.0.0.4, ptr addrspace(3) %add.ptr45, align 16, !dbg !85, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !85
  store i32 %condval.sroa.5.0.4, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.4, align 4, !dbg !85, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !85
  store i32 %condval.sroa.6.0.4, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.4, align 8, !dbg !85, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !85
  store i32 %condval.sroa.7.0.4, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.4, align 4, !dbg !85, !tbaa !30
  %cmp144.1.4 = icmp ult i32 %add141.4, 1016, !dbg !80
  br i1 %cmp144.1.4, label %if.then145.1.4, label %if.end.1.4, !dbg !81

if.then145.1.4:                                   ; preds = %if.end.4
  %add150.1.4 = or disjoint i64 %mul147, 512
  %gep1220.1.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.4, i64 %add150.1.4
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1.4, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1.4, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1.4, i64 4
  %condval.sroa.0.0.copyload.1.4 = load i32, ptr addrspace(4) %gep1220.1.4, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.copyload.1.4 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.4, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.copyload.1.4 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.4, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.copyload.1.4 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.4, align 4, !dbg !82, !tbaa !30
  br label %if.end.1.4, !dbg !83

if.end.1.4:                                       ; preds = %if.then145.1.4, %if.end.4
  %condval.sroa.0.0.1.4 = phi i32 [ %condval.sroa.0.0.copyload.1.4, %if.then145.1.4 ], [ 0, %if.end.4 ], !dbg !84
  %condval.sroa.5.0.1.4 = phi i32 [ %condval.sroa.5.0.copyload.1.4, %if.then145.1.4 ], [ 0, %if.end.4 ], !dbg !84
  %condval.sroa.6.0.1.4 = phi i32 [ %condval.sroa.6.0.copyload.1.4, %if.then145.1.4 ], [ 0, %if.end.4 ], !dbg !84
  %condval.sroa.7.0.1.4 = phi i32 [ %condval.sroa.7.0.copyload.1.4, %if.then145.1.4 ], [ 0, %if.end.4 ], !dbg !84
  store i32 %condval.sroa.0.0.1.4, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !85, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !85
  store i32 %condval.sroa.5.0.1.4, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1.4, align 4, !dbg !85, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !85
  store i32 %condval.sroa.6.0.1.4, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1.4, align 8, !dbg !85, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !85
  store i32 %condval.sroa.7.0.1.4, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1.4, align 4, !dbg !85, !tbaa !30
  fence syncscope("warp") release, !dbg !86
  tail call void @llvm.mxc.barrier.warp(), !dbg !89
  fence syncscope("warp") acquire, !dbg !90
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !91
  %193 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %12, <4 x float> zeroinitializer), !dbg !92
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !91
  %194 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %16, <4 x float> %193), !dbg !92
  %k_local.sroa.0.0.copyload.2.4 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !91
  %195 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.4, <4 x half> %18, <4 x float> %194), !dbg !92
  %k_local.sroa.0.0.copyload.3.4 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !91
  %196 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.4, <4 x half> %22, <4 x float> %195), !dbg !92
  %add282.4 = add nuw nsw i32 %mul131.4, %mul281
  %cmp285.not.4 = icmp sgt i32 %add282.4, %1, !dbg !93
  %scores.sroa.0.0.vec.extract1777 = extractelement <4 x float> %196, i64 0
  %spec.select2205 = select i1 %cmp285.not.4, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1777, !dbg !94
  %cmp285.not.1.4.not = icmp slt i32 %add282.4, %1, !dbg !93
  %scores.sroa.0.4.vec.extract1868 = extractelement <4 x float> %196, i64 1, !dbg !94
  %condval_1.0.1.4 = select i1 %cmp285.not.1.4.not, float %scores.sroa.0.4.vec.extract1868, float 0xFFF0000000000000, !dbg !94
  %add283.2.4 = or disjoint i32 %add282.4, 2, !dbg !95
  %cmp285.not.2.4 = icmp sgt i32 %add283.2.4, %1, !dbg !93
  %scores.sroa.0.8.vec.extract1945 = extractelement <4 x float> %196, i64 2, !dbg !94
  %condval_1.0.2.4 = select i1 %cmp285.not.2.4, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1945, !dbg !94
  %add283.3.4 = or disjoint i32 %add282.4, 3, !dbg !95
  %cmp285.not.3.4 = icmp sgt i32 %add283.3.4, %1, !dbg !93
  %scores.sroa.0.12.vec.extract2022 = extractelement <4 x float> %196, i64 3, !dbg !94
  %condval_1.0.3.4 = select i1 %cmp285.not.3.4, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2022, !dbg !94
  %197 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2205, float 0xFFF0000000000000), !dbg !96
  %198 = tail call contract noundef float @llvm.maxnum.f32(float %197, float %condval_1.0.1.4), !dbg !96
  %199 = tail call contract noundef float @llvm.maxnum.f32(float %198, float %condval_1.0.2.4), !dbg !96
  %200 = tail call contract noundef float @llvm.maxnum.f32(float %199, float %condval_1.0.3.4), !dbg !96
  %201 = bitcast float %200 to i32, !dbg !100
  %202 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !103
  %203 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %202) #13, !dbg !108
  %xor.i.i.4 = xor i32 %203, 32, !dbg !109
  %204 = and i32 %203, -64, !dbg !110
  %and.i.i.4 = add nsw i32 %204, 64, !dbg !110
  %cmp.not.i.i.4 = icmp slt i32 %xor.i.i.4, %and.i.i.4, !dbg !111
  %cond.i.i.4 = select i1 %cmp.not.i.i.4, i32 %xor.i.i.4, i32 %203, !dbg !112
  %shl.i.i.4 = shl i32 %cond.i.i.4, 2, !dbg !113
  %205 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.4, i32 %201), !dbg !114
  %206 = bitcast i32 %205 to float, !dbg !115
  %207 = tail call contract noundef float @llvm.maxnum.f32(float %200, float %206), !dbg !116
  %208 = bitcast float %207 to i32, !dbg !118
  %209 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !120
  %210 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %209) #13, !dbg !123
  %xor.i.i1120.4 = xor i32 %210, 16, !dbg !124
  %211 = and i32 %210, -64, !dbg !125
  %and.i.i1121.4 = add nsw i32 %211, 64, !dbg !125
  %cmp.not.i.i1122.4 = icmp slt i32 %xor.i.i1120.4, %and.i.i1121.4, !dbg !126
  %cond.i.i1123.4 = select i1 %cmp.not.i.i1122.4, i32 %xor.i.i1120.4, i32 %210, !dbg !127
  %shl.i.i1124.4 = shl i32 %cond.i.i1123.4, 2, !dbg !128
  %212 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1124.4, i32 %208), !dbg !129
  %213 = bitcast i32 %212 to float, !dbg !130
  %214 = tail call contract noundef float @llvm.maxnum.f32(float %207, float %213), !dbg !131
  %cmp326.4 = icmp ult i32 %2, 16, !dbg !133
  %max_cache.sroa.11.0 = select i1 %cmp326.4, float %214, float 0xFFF0000000000000, !dbg !134
  %215 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.3, float %214), !dbg !135
  %sub.4 = fsub contract float %spec.select2205, %214, !dbg !137
  %sub347.4 = fsub contract float %condval_1.0.1.4, %214, !dbg !138
  %sub350.4 = fsub contract float %condval_1.0.2.4, %214, !dbg !139
  %sub353.4 = fsub contract float %condval_1.0.3.4, %214, !dbg !140
  %mul358.4 = fmul contract float %sub.4, 0x3FC7154760000000, !dbg !141
  %mul362.4 = fmul contract float %sub347.4, 0x3FC7154760000000, !dbg !142
  %mul366.4 = fmul contract float %sub350.4, 0x3FC7154760000000, !dbg !143
  %mul370.4 = fmul contract float %sub353.4, 0x3FC7154760000000, !dbg !144
  %add375.4 = fadd contract float %mul358.4, 8.000000e+00, !dbg !145
  %add379.4 = fadd contract float %mul362.4, 8.000000e+00, !dbg !146
  %add383.4 = fadd contract float %mul366.4, 8.000000e+00, !dbg !147
  %add387.4 = fadd contract float %mul370.4, 8.000000e+00, !dbg !148
  %cmp.i.i.4 = fcmp contract olt float %add375.4, -1.260000e+02, !dbg !149
  %cond.i.i1129.4 = select contract i1 %cmp.i.i.4, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i.4 = fadd contract float %add375.4, %cond.i.i1129.4, !dbg !149
  %216 = tail call contract float @llvm.exp2.f32(float %add.i.i.4), !dbg !149
  %cond2.i.i.4 = select contract i1 %cmp.i.i.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i.4 = fmul contract float %cond2.i.i.4, %216, !dbg !149
  %cmp.i.i1130.4 = fcmp contract olt float %add379.4, -1.260000e+02, !dbg !152
  %cond.i.i1131.4 = select contract i1 %cmp.i.i1130.4, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i1132.4 = fadd contract float %add379.4, %cond.i.i1131.4, !dbg !152
  %217 = tail call contract float @llvm.exp2.f32(float %add.i.i1132.4), !dbg !152
  %cond2.i.i1133.4 = select contract i1 %cmp.i.i1130.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i1134.4 = fmul contract float %cond2.i.i1133.4, %217, !dbg !152
  %cmp.i.i1135.4 = fcmp contract olt float %add383.4, -1.260000e+02, !dbg !154
  %cond.i.i1136.4 = select contract i1 %cmp.i.i1135.4, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i1137.4 = fadd contract float %add383.4, %cond.i.i1136.4, !dbg !154
  %218 = tail call contract float @llvm.exp2.f32(float %add.i.i1137.4), !dbg !154
  %cond2.i.i1138.4 = select contract i1 %cmp.i.i1135.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i1139.4 = fmul contract float %cond2.i.i1138.4, %218, !dbg !154
  %cmp.i.i1140.4 = fcmp contract olt float %add387.4, -1.260000e+02, !dbg !156
  %cond.i.i1141.4 = select contract i1 %cmp.i.i1140.4, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i1142.4 = fadd contract float %add387.4, %cond.i.i1141.4, !dbg !156
  %219 = tail call contract float @llvm.exp2.f32(float %add.i.i1142.4), !dbg !156
  %cond2.i.i1143.4 = select contract i1 %cmp.i.i1140.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i1144.4 = fmul contract float %cond2.i.i1143.4, %219, !dbg !156
  %220 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !158, !noalias !166
  %221 = fptrunc float %mul.i.i.4 to half, !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %220), !dbg !158, !noalias !166
  %222 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !166
  %223 = fptrunc float %mul.i.i1134.4 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %222), !dbg !171, !noalias !166
  %224 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !177
  %225 = fptrunc float %mul.i.i1139.4 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %224), !dbg !173, !noalias !177
  %226 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !182, !noalias !177
  %227 = fptrunc float %mul.i.i1144.4 to half, !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %226), !dbg !182, !noalias !177
  %228 = insertelement <4 x half> poison, half %221, i64 0, !dbg !184
  %229 = insertelement <4 x half> %228, half %223, i64 1, !dbg !184
  %230 = insertelement <4 x half> %229, half %225, i64 2, !dbg !184
  %231 = insertelement <4 x half> %230, half %227, i64 3, !dbg !184
  br label %if.end415.4, !dbg !185

if.end415.4:                                      ; preds = %if.end.1.4, %if.end415.3
  %232 = phi <4 x half> [ zeroinitializer, %if.end415.3 ], [ %231, %if.end.1.4 ], !dbg !84
  %max_cache.sroa.11.1 = phi float [ 0xFFF0000000000000, %if.end415.3 ], [ %max_cache.sroa.11.0, %if.end.1.4 ], !dbg !84
  %global_max.sroa.0.1.4 = phi float [ %global_max.sroa.0.1.3, %if.end415.3 ], [ %215, %if.end.1.4 ], !dbg !84
  %233 = or disjoint i64 %23, 5, !dbg !186
  %arrayidx130.5 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %233, !dbg !70
  %234 = load i32, ptr addrspace(1) %arrayidx130.5, align 4, !dbg !70, !tbaa !30
  %mul131.5 = shl nsw i32 %234, 4, !dbg !71
  %cmp132.5 = icmp slt i32 %234, 0, !dbg !72
  %cmp134.not.5 = icmp sgt i32 %mul131.5, %1
  %or.cond.5 = select i1 %cmp132.5, i1 true, i1 %cmp134.not.5, !dbg !73
  br i1 %or.cond.5, label %if.end415.5, label %if.then.5, !dbg !73

if.then.5:                                        ; preds = %if.end415.4
  fence syncscope("warp") release, !dbg !74
  tail call void @llvm.mxc.barrier.warp(), !dbg !77
  fence syncscope("warp") acquire, !dbg !78
  %add141.5 = add nuw nsw i32 %mul131.5, %shr140
  %conv151.5 = zext nneg i32 %mul131.5 to i64
  %.idx.5 = shl nuw nsw i64 %conv151.5, 7
  %gep.5 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1227, i64 %.idx.5, !dbg !79
  %cmp144.5 = icmp ult i32 %add141.5, 1024, !dbg !80
  br i1 %cmp144.5, label %if.then145.5, label %if.end.5, !dbg !81

if.then145.5:                                     ; preds = %if.then.5
  %gep1220.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.5, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.5, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.5, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.5, i64 4
  %condval.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %gep1220.5, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.5, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.5, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.5, align 4, !dbg !82, !tbaa !30
  br label %if.end.5, !dbg !83

if.end.5:                                         ; preds = %if.then145.5, %if.then.5
  %condval.sroa.0.0.5 = phi i32 [ %condval.sroa.0.0.copyload.5, %if.then145.5 ], [ 0, %if.then.5 ], !dbg !84
  %condval.sroa.5.0.5 = phi i32 [ %condval.sroa.5.0.copyload.5, %if.then145.5 ], [ 0, %if.then.5 ], !dbg !84
  %condval.sroa.6.0.5 = phi i32 [ %condval.sroa.6.0.copyload.5, %if.then145.5 ], [ 0, %if.then.5 ], !dbg !84
  %condval.sroa.7.0.5 = phi i32 [ %condval.sroa.7.0.copyload.5, %if.then145.5 ], [ 0, %if.then.5 ], !dbg !84
  store i32 %condval.sroa.0.0.5, ptr addrspace(3) %add.ptr45, align 16, !dbg !85, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !85
  store i32 %condval.sroa.5.0.5, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.5, align 4, !dbg !85, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !85
  store i32 %condval.sroa.6.0.5, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.5, align 8, !dbg !85, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !85
  store i32 %condval.sroa.7.0.5, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.5, align 4, !dbg !85, !tbaa !30
  %cmp144.1.5 = icmp ult i32 %add141.5, 1016, !dbg !80
  br i1 %cmp144.1.5, label %if.then145.1.5, label %if.end.1.5, !dbg !81

if.then145.1.5:                                   ; preds = %if.end.5
  %add150.1.5 = or disjoint i64 %mul147, 512
  %gep1220.1.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.5, i64 %add150.1.5
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1.5, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1.5, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1.5, i64 4
  %condval.sroa.0.0.copyload.1.5 = load i32, ptr addrspace(4) %gep1220.1.5, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.copyload.1.5 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.5, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.copyload.1.5 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.5, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.copyload.1.5 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.5, align 4, !dbg !82, !tbaa !30
  br label %if.end.1.5, !dbg !83

if.end.1.5:                                       ; preds = %if.then145.1.5, %if.end.5
  %condval.sroa.0.0.1.5 = phi i32 [ %condval.sroa.0.0.copyload.1.5, %if.then145.1.5 ], [ 0, %if.end.5 ], !dbg !84
  %condval.sroa.5.0.1.5 = phi i32 [ %condval.sroa.5.0.copyload.1.5, %if.then145.1.5 ], [ 0, %if.end.5 ], !dbg !84
  %condval.sroa.6.0.1.5 = phi i32 [ %condval.sroa.6.0.copyload.1.5, %if.then145.1.5 ], [ 0, %if.end.5 ], !dbg !84
  %condval.sroa.7.0.1.5 = phi i32 [ %condval.sroa.7.0.copyload.1.5, %if.then145.1.5 ], [ 0, %if.end.5 ], !dbg !84
  store i32 %condval.sroa.0.0.1.5, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !85, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !85
  store i32 %condval.sroa.5.0.1.5, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1.5, align 4, !dbg !85, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !85
  store i32 %condval.sroa.6.0.1.5, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1.5, align 8, !dbg !85, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !85
  store i32 %condval.sroa.7.0.1.5, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1.5, align 4, !dbg !85, !tbaa !30
  fence syncscope("warp") release, !dbg !86
  tail call void @llvm.mxc.barrier.warp(), !dbg !89
  fence syncscope("warp") acquire, !dbg !90
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !91
  %235 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %12, <4 x float> zeroinitializer), !dbg !92
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !91
  %236 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %16, <4 x float> %235), !dbg !92
  %k_local.sroa.0.0.copyload.2.5 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !91
  %237 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.5, <4 x half> %18, <4 x float> %236), !dbg !92
  %k_local.sroa.0.0.copyload.3.5 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !91
  %238 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.5, <4 x half> %22, <4 x float> %237), !dbg !92
  %add282.5 = add nuw nsw i32 %mul131.5, %mul281
  %cmp285.not.5 = icmp sgt i32 %add282.5, %1, !dbg !93
  %scores.sroa.0.0.vec.extract1787 = extractelement <4 x float> %238, i64 0
  %spec.select2206 = select i1 %cmp285.not.5, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1787, !dbg !94
  %cmp285.not.1.5.not = icmp slt i32 %add282.5, %1, !dbg !93
  %scores.sroa.0.4.vec.extract1874 = extractelement <4 x float> %238, i64 1, !dbg !94
  %condval_1.0.1.5 = select i1 %cmp285.not.1.5.not, float %scores.sroa.0.4.vec.extract1874, float 0xFFF0000000000000, !dbg !94
  %add283.2.5 = or disjoint i32 %add282.5, 2, !dbg !95
  %cmp285.not.2.5 = icmp sgt i32 %add283.2.5, %1, !dbg !93
  %scores.sroa.0.8.vec.extract1951 = extractelement <4 x float> %238, i64 2, !dbg !94
  %condval_1.0.2.5 = select i1 %cmp285.not.2.5, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1951, !dbg !94
  %add283.3.5 = or disjoint i32 %add282.5, 3, !dbg !95
  %cmp285.not.3.5 = icmp sgt i32 %add283.3.5, %1, !dbg !93
  %scores.sroa.0.12.vec.extract2028 = extractelement <4 x float> %238, i64 3, !dbg !94
  %condval_1.0.3.5 = select i1 %cmp285.not.3.5, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2028, !dbg !94
  %239 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2206, float 0xFFF0000000000000), !dbg !96
  %240 = tail call contract noundef float @llvm.maxnum.f32(float %239, float %condval_1.0.1.5), !dbg !96
  %241 = tail call contract noundef float @llvm.maxnum.f32(float %240, float %condval_1.0.2.5), !dbg !96
  %242 = tail call contract noundef float @llvm.maxnum.f32(float %241, float %condval_1.0.3.5), !dbg !96
  %243 = bitcast float %242 to i32, !dbg !100
  %244 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !103
  %245 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %244) #13, !dbg !108
  %xor.i.i.5 = xor i32 %245, 32, !dbg !109
  %246 = and i32 %245, -64, !dbg !110
  %and.i.i.5 = add nsw i32 %246, 64, !dbg !110
  %cmp.not.i.i.5 = icmp slt i32 %xor.i.i.5, %and.i.i.5, !dbg !111
  %cond.i.i.5 = select i1 %cmp.not.i.i.5, i32 %xor.i.i.5, i32 %245, !dbg !112
  %shl.i.i.5 = shl i32 %cond.i.i.5, 2, !dbg !113
  %247 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.5, i32 %243), !dbg !114
  %248 = bitcast i32 %247 to float, !dbg !115
  %249 = tail call contract noundef float @llvm.maxnum.f32(float %242, float %248), !dbg !116
  %250 = bitcast float %249 to i32, !dbg !118
  %251 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !120
  %252 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %251) #13, !dbg !123
  %xor.i.i1120.5 = xor i32 %252, 16, !dbg !124
  %253 = and i32 %252, -64, !dbg !125
  %and.i.i1121.5 = add nsw i32 %253, 64, !dbg !125
  %cmp.not.i.i1122.5 = icmp slt i32 %xor.i.i1120.5, %and.i.i1121.5, !dbg !126
  %cond.i.i1123.5 = select i1 %cmp.not.i.i1122.5, i32 %xor.i.i1120.5, i32 %252, !dbg !127
  %shl.i.i1124.5 = shl i32 %cond.i.i1123.5, 2, !dbg !128
  %254 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1124.5, i32 %250), !dbg !129
  %255 = bitcast i32 %254 to float, !dbg !130
  %256 = tail call contract noundef float @llvm.maxnum.f32(float %249, float %255), !dbg !131
  %cmp326.5 = icmp eq i32 %shr324, 1, !dbg !133
  %max_cache.sroa.11.2 = select i1 %cmp326.5, float %256, float %max_cache.sroa.11.1, !dbg !134
  %257 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.4, float %256), !dbg !135
  %sub.5 = fsub contract float %spec.select2206, %256, !dbg !137
  %sub347.5 = fsub contract float %condval_1.0.1.5, %256, !dbg !138
  %sub350.5 = fsub contract float %condval_1.0.2.5, %256, !dbg !139
  %sub353.5 = fsub contract float %condval_1.0.3.5, %256, !dbg !140
  %mul358.5 = fmul contract float %sub.5, 0x3FC7154760000000, !dbg !141
  %mul362.5 = fmul contract float %sub347.5, 0x3FC7154760000000, !dbg !142
  %mul366.5 = fmul contract float %sub350.5, 0x3FC7154760000000, !dbg !143
  %mul370.5 = fmul contract float %sub353.5, 0x3FC7154760000000, !dbg !144
  %add375.5 = fadd contract float %mul358.5, 8.000000e+00, !dbg !145
  %add379.5 = fadd contract float %mul362.5, 8.000000e+00, !dbg !146
  %add383.5 = fadd contract float %mul366.5, 8.000000e+00, !dbg !147
  %add387.5 = fadd contract float %mul370.5, 8.000000e+00, !dbg !148
  %cmp.i.i.5 = fcmp contract olt float %add375.5, -1.260000e+02, !dbg !149
  %cond.i.i1129.5 = select contract i1 %cmp.i.i.5, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i.5 = fadd contract float %add375.5, %cond.i.i1129.5, !dbg !149
  %258 = tail call contract float @llvm.exp2.f32(float %add.i.i.5), !dbg !149
  %cond2.i.i.5 = select contract i1 %cmp.i.i.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i.5 = fmul contract float %cond2.i.i.5, %258, !dbg !149
  %cmp.i.i1130.5 = fcmp contract olt float %add379.5, -1.260000e+02, !dbg !152
  %cond.i.i1131.5 = select contract i1 %cmp.i.i1130.5, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i1132.5 = fadd contract float %add379.5, %cond.i.i1131.5, !dbg !152
  %259 = tail call contract float @llvm.exp2.f32(float %add.i.i1132.5), !dbg !152
  %cond2.i.i1133.5 = select contract i1 %cmp.i.i1130.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i1134.5 = fmul contract float %cond2.i.i1133.5, %259, !dbg !152
  %cmp.i.i1135.5 = fcmp contract olt float %add383.5, -1.260000e+02, !dbg !154
  %cond.i.i1136.5 = select contract i1 %cmp.i.i1135.5, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i1137.5 = fadd contract float %add383.5, %cond.i.i1136.5, !dbg !154
  %260 = tail call contract float @llvm.exp2.f32(float %add.i.i1137.5), !dbg !154
  %cond2.i.i1138.5 = select contract i1 %cmp.i.i1135.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i1139.5 = fmul contract float %cond2.i.i1138.5, %260, !dbg !154
  %cmp.i.i1140.5 = fcmp contract olt float %add387.5, -1.260000e+02, !dbg !156
  %cond.i.i1141.5 = select contract i1 %cmp.i.i1140.5, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i1142.5 = fadd contract float %add387.5, %cond.i.i1141.5, !dbg !156
  %261 = tail call contract float @llvm.exp2.f32(float %add.i.i1142.5), !dbg !156
  %cond2.i.i1143.5 = select contract i1 %cmp.i.i1140.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i1144.5 = fmul contract float %cond2.i.i1143.5, %261, !dbg !156
  %262 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !158, !noalias !166
  %263 = fptrunc float %mul.i.i.5 to half, !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %262), !dbg !158, !noalias !166
  %264 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !166
  %265 = fptrunc float %mul.i.i1134.5 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %264), !dbg !171, !noalias !166
  %266 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !177
  %267 = fptrunc float %mul.i.i1139.5 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %266), !dbg !173, !noalias !177
  %268 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !182, !noalias !177
  %269 = fptrunc float %mul.i.i1144.5 to half, !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %268), !dbg !182, !noalias !177
  %270 = insertelement <4 x half> poison, half %263, i64 0, !dbg !184
  %271 = insertelement <4 x half> %270, half %265, i64 1, !dbg !184
  %272 = insertelement <4 x half> %271, half %267, i64 2, !dbg !184
  %273 = insertelement <4 x half> %272, half %269, i64 3, !dbg !184
  br label %if.end415.5, !dbg !185

if.end415.5:                                      ; preds = %if.end.1.5, %if.end415.4
  %274 = phi <4 x half> [ zeroinitializer, %if.end415.4 ], [ %273, %if.end.1.5 ], !dbg !84
  %max_cache.sroa.11.3 = phi float [ %max_cache.sroa.11.1, %if.end415.4 ], [ %max_cache.sroa.11.2, %if.end.1.5 ], !dbg !84
  %global_max.sroa.0.1.5 = phi float [ %global_max.sroa.0.1.4, %if.end415.4 ], [ %257, %if.end.1.5 ], !dbg !84
  %275 = or disjoint i64 %23, 6, !dbg !186
  %arrayidx130.6 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %275, !dbg !70
  %276 = load i32, ptr addrspace(1) %arrayidx130.6, align 4, !dbg !70, !tbaa !30
  %mul131.6 = shl nsw i32 %276, 4, !dbg !71
  %cmp132.6 = icmp slt i32 %276, 0, !dbg !72
  %cmp134.not.6 = icmp sgt i32 %mul131.6, %1
  %or.cond.6 = select i1 %cmp132.6, i1 true, i1 %cmp134.not.6, !dbg !73
  br i1 %or.cond.6, label %if.end415.6, label %if.then.6, !dbg !73

if.then.6:                                        ; preds = %if.end415.5
  fence syncscope("warp") release, !dbg !74
  tail call void @llvm.mxc.barrier.warp(), !dbg !77
  fence syncscope("warp") acquire, !dbg !78
  %add141.6 = add nuw nsw i32 %mul131.6, %shr140
  %conv151.6 = zext nneg i32 %mul131.6 to i64
  %.idx.6 = shl nuw nsw i64 %conv151.6, 7
  %gep.6 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1227, i64 %.idx.6, !dbg !79
  %cmp144.6 = icmp ult i32 %add141.6, 1024, !dbg !80
  br i1 %cmp144.6, label %if.then145.6, label %if.end.6, !dbg !81

if.then145.6:                                     ; preds = %if.then.6
  %gep1220.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.6, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.6, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.6, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.6, i64 4
  %condval.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %gep1220.6, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.6, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.6, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.6, align 4, !dbg !82, !tbaa !30
  br label %if.end.6, !dbg !83

if.end.6:                                         ; preds = %if.then145.6, %if.then.6
  %condval.sroa.0.0.6 = phi i32 [ %condval.sroa.0.0.copyload.6, %if.then145.6 ], [ 0, %if.then.6 ], !dbg !84
  %condval.sroa.5.0.6 = phi i32 [ %condval.sroa.5.0.copyload.6, %if.then145.6 ], [ 0, %if.then.6 ], !dbg !84
  %condval.sroa.6.0.6 = phi i32 [ %condval.sroa.6.0.copyload.6, %if.then145.6 ], [ 0, %if.then.6 ], !dbg !84
  %condval.sroa.7.0.6 = phi i32 [ %condval.sroa.7.0.copyload.6, %if.then145.6 ], [ 0, %if.then.6 ], !dbg !84
  store i32 %condval.sroa.0.0.6, ptr addrspace(3) %add.ptr45, align 16, !dbg !85, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !85
  store i32 %condval.sroa.5.0.6, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.6, align 4, !dbg !85, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !85
  store i32 %condval.sroa.6.0.6, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.6, align 8, !dbg !85, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !85
  store i32 %condval.sroa.7.0.6, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.6, align 4, !dbg !85, !tbaa !30
  %cmp144.1.6 = icmp ult i32 %add141.6, 1016, !dbg !80
  br i1 %cmp144.1.6, label %if.then145.1.6, label %if.end.1.6, !dbg !81

if.then145.1.6:                                   ; preds = %if.end.6
  %add150.1.6 = or disjoint i64 %mul147, 512
  %gep1220.1.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.6, i64 %add150.1.6
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1.6, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1.6, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1.6, i64 4
  %condval.sroa.0.0.copyload.1.6 = load i32, ptr addrspace(4) %gep1220.1.6, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.copyload.1.6 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.6, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.copyload.1.6 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.6, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.copyload.1.6 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.6, align 4, !dbg !82, !tbaa !30
  br label %if.end.1.6, !dbg !83

if.end.1.6:                                       ; preds = %if.then145.1.6, %if.end.6
  %condval.sroa.0.0.1.6 = phi i32 [ %condval.sroa.0.0.copyload.1.6, %if.then145.1.6 ], [ 0, %if.end.6 ], !dbg !84
  %condval.sroa.5.0.1.6 = phi i32 [ %condval.sroa.5.0.copyload.1.6, %if.then145.1.6 ], [ 0, %if.end.6 ], !dbg !84
  %condval.sroa.6.0.1.6 = phi i32 [ %condval.sroa.6.0.copyload.1.6, %if.then145.1.6 ], [ 0, %if.end.6 ], !dbg !84
  %condval.sroa.7.0.1.6 = phi i32 [ %condval.sroa.7.0.copyload.1.6, %if.then145.1.6 ], [ 0, %if.end.6 ], !dbg !84
  store i32 %condval.sroa.0.0.1.6, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !85, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !85
  store i32 %condval.sroa.5.0.1.6, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1.6, align 4, !dbg !85, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !85
  store i32 %condval.sroa.6.0.1.6, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1.6, align 8, !dbg !85, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !85
  store i32 %condval.sroa.7.0.1.6, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1.6, align 4, !dbg !85, !tbaa !30
  fence syncscope("warp") release, !dbg !86
  tail call void @llvm.mxc.barrier.warp(), !dbg !89
  fence syncscope("warp") acquire, !dbg !90
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !91
  %277 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %12, <4 x float> zeroinitializer), !dbg !92
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !91
  %278 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %16, <4 x float> %277), !dbg !92
  %k_local.sroa.0.0.copyload.2.6 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !91
  %279 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.6, <4 x half> %18, <4 x float> %278), !dbg !92
  %k_local.sroa.0.0.copyload.3.6 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !91
  %280 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.6, <4 x half> %22, <4 x float> %279), !dbg !92
  %add282.6 = add nuw nsw i32 %mul131.6, %mul281
  %cmp285.not.6 = icmp sgt i32 %add282.6, %1, !dbg !93
  %scores.sroa.0.0.vec.extract1797 = extractelement <4 x float> %280, i64 0
  %spec.select2207 = select i1 %cmp285.not.6, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1797, !dbg !94
  %cmp285.not.1.6.not = icmp slt i32 %add282.6, %1, !dbg !93
  %scores.sroa.0.4.vec.extract1880 = extractelement <4 x float> %280, i64 1, !dbg !94
  %condval_1.0.1.6 = select i1 %cmp285.not.1.6.not, float %scores.sroa.0.4.vec.extract1880, float 0xFFF0000000000000, !dbg !94
  %add283.2.6 = or disjoint i32 %add282.6, 2, !dbg !95
  %cmp285.not.2.6 = icmp sgt i32 %add283.2.6, %1, !dbg !93
  %scores.sroa.0.8.vec.extract1957 = extractelement <4 x float> %280, i64 2, !dbg !94
  %condval_1.0.2.6 = select i1 %cmp285.not.2.6, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1957, !dbg !94
  %add283.3.6 = or disjoint i32 %add282.6, 3, !dbg !95
  %cmp285.not.3.6 = icmp sgt i32 %add283.3.6, %1, !dbg !93
  %scores.sroa.0.12.vec.extract2034 = extractelement <4 x float> %280, i64 3, !dbg !94
  %condval_1.0.3.6 = select i1 %cmp285.not.3.6, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2034, !dbg !94
  %281 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2207, float 0xFFF0000000000000), !dbg !96
  %282 = tail call contract noundef float @llvm.maxnum.f32(float %281, float %condval_1.0.1.6), !dbg !96
  %283 = tail call contract noundef float @llvm.maxnum.f32(float %282, float %condval_1.0.2.6), !dbg !96
  %284 = tail call contract noundef float @llvm.maxnum.f32(float %283, float %condval_1.0.3.6), !dbg !96
  %285 = bitcast float %284 to i32, !dbg !100
  %286 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !103
  %287 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %286) #13, !dbg !108
  %xor.i.i.6 = xor i32 %287, 32, !dbg !109
  %288 = and i32 %287, -64, !dbg !110
  %and.i.i.6 = add nsw i32 %288, 64, !dbg !110
  %cmp.not.i.i.6 = icmp slt i32 %xor.i.i.6, %and.i.i.6, !dbg !111
  %cond.i.i.6 = select i1 %cmp.not.i.i.6, i32 %xor.i.i.6, i32 %287, !dbg !112
  %shl.i.i.6 = shl i32 %cond.i.i.6, 2, !dbg !113
  %289 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.6, i32 %285), !dbg !114
  %290 = bitcast i32 %289 to float, !dbg !115
  %291 = tail call contract noundef float @llvm.maxnum.f32(float %284, float %290), !dbg !116
  %292 = bitcast float %291 to i32, !dbg !118
  %293 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !120
  %294 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %293) #13, !dbg !123
  %xor.i.i1120.6 = xor i32 %294, 16, !dbg !124
  %295 = and i32 %294, -64, !dbg !125
  %and.i.i1121.6 = add nsw i32 %295, 64, !dbg !125
  %cmp.not.i.i1122.6 = icmp slt i32 %xor.i.i1120.6, %and.i.i1121.6, !dbg !126
  %cond.i.i1123.6 = select i1 %cmp.not.i.i1122.6, i32 %xor.i.i1120.6, i32 %294, !dbg !127
  %shl.i.i1124.6 = shl i32 %cond.i.i1123.6, 2, !dbg !128
  %296 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1124.6, i32 %292), !dbg !129
  %297 = bitcast i32 %296 to float, !dbg !130
  %298 = tail call contract noundef float @llvm.maxnum.f32(float %291, float %297), !dbg !131
  %cmp326.6 = icmp eq i32 %shr324, 2, !dbg !133
  %max_cache.sroa.11.4 = select i1 %cmp326.6, float %298, float %max_cache.sroa.11.3, !dbg !134
  %299 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.5, float %298), !dbg !135
  %sub.6 = fsub contract float %spec.select2207, %298, !dbg !137
  %sub347.6 = fsub contract float %condval_1.0.1.6, %298, !dbg !138
  %sub350.6 = fsub contract float %condval_1.0.2.6, %298, !dbg !139
  %sub353.6 = fsub contract float %condval_1.0.3.6, %298, !dbg !140
  %mul358.6 = fmul contract float %sub.6, 0x3FC7154760000000, !dbg !141
  %mul362.6 = fmul contract float %sub347.6, 0x3FC7154760000000, !dbg !142
  %mul366.6 = fmul contract float %sub350.6, 0x3FC7154760000000, !dbg !143
  %mul370.6 = fmul contract float %sub353.6, 0x3FC7154760000000, !dbg !144
  %add375.6 = fadd contract float %mul358.6, 8.000000e+00, !dbg !145
  %add379.6 = fadd contract float %mul362.6, 8.000000e+00, !dbg !146
  %add383.6 = fadd contract float %mul366.6, 8.000000e+00, !dbg !147
  %add387.6 = fadd contract float %mul370.6, 8.000000e+00, !dbg !148
  %cmp.i.i.6 = fcmp contract olt float %add375.6, -1.260000e+02, !dbg !149
  %cond.i.i1129.6 = select contract i1 %cmp.i.i.6, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i.6 = fadd contract float %add375.6, %cond.i.i1129.6, !dbg !149
  %300 = tail call contract float @llvm.exp2.f32(float %add.i.i.6), !dbg !149
  %cond2.i.i.6 = select contract i1 %cmp.i.i.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i.6 = fmul contract float %cond2.i.i.6, %300, !dbg !149
  %cmp.i.i1130.6 = fcmp contract olt float %add379.6, -1.260000e+02, !dbg !152
  %cond.i.i1131.6 = select contract i1 %cmp.i.i1130.6, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i1132.6 = fadd contract float %add379.6, %cond.i.i1131.6, !dbg !152
  %301 = tail call contract float @llvm.exp2.f32(float %add.i.i1132.6), !dbg !152
  %cond2.i.i1133.6 = select contract i1 %cmp.i.i1130.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i1134.6 = fmul contract float %cond2.i.i1133.6, %301, !dbg !152
  %cmp.i.i1135.6 = fcmp contract olt float %add383.6, -1.260000e+02, !dbg !154
  %cond.i.i1136.6 = select contract i1 %cmp.i.i1135.6, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i1137.6 = fadd contract float %add383.6, %cond.i.i1136.6, !dbg !154
  %302 = tail call contract float @llvm.exp2.f32(float %add.i.i1137.6), !dbg !154
  %cond2.i.i1138.6 = select contract i1 %cmp.i.i1135.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i1139.6 = fmul contract float %cond2.i.i1138.6, %302, !dbg !154
  %cmp.i.i1140.6 = fcmp contract olt float %add387.6, -1.260000e+02, !dbg !156
  %cond.i.i1141.6 = select contract i1 %cmp.i.i1140.6, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i1142.6 = fadd contract float %add387.6, %cond.i.i1141.6, !dbg !156
  %303 = tail call contract float @llvm.exp2.f32(float %add.i.i1142.6), !dbg !156
  %cond2.i.i1143.6 = select contract i1 %cmp.i.i1140.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i1144.6 = fmul contract float %cond2.i.i1143.6, %303, !dbg !156
  %304 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !158, !noalias !166
  %305 = fptrunc float %mul.i.i.6 to half, !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %304), !dbg !158, !noalias !166
  %306 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !166
  %307 = fptrunc float %mul.i.i1134.6 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %306), !dbg !171, !noalias !166
  %308 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !177
  %309 = fptrunc float %mul.i.i1139.6 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %308), !dbg !173, !noalias !177
  %310 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !182, !noalias !177
  %311 = fptrunc float %mul.i.i1144.6 to half, !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %310), !dbg !182, !noalias !177
  %312 = insertelement <4 x half> poison, half %305, i64 0, !dbg !184
  %313 = insertelement <4 x half> %312, half %307, i64 1, !dbg !184
  %314 = insertelement <4 x half> %313, half %309, i64 2, !dbg !184
  %315 = insertelement <4 x half> %314, half %311, i64 3, !dbg !184
  br label %if.end415.6, !dbg !185

if.end415.6:                                      ; preds = %if.end.1.6, %if.end415.5
  %316 = phi <4 x half> [ zeroinitializer, %if.end415.5 ], [ %315, %if.end.1.6 ], !dbg !84
  %max_cache.sroa.11.5 = phi float [ %max_cache.sroa.11.3, %if.end415.5 ], [ %max_cache.sroa.11.4, %if.end.1.6 ], !dbg !84
  %global_max.sroa.0.1.6 = phi float [ %global_max.sroa.0.1.5, %if.end415.5 ], [ %299, %if.end.1.6 ], !dbg !84
  %317 = or disjoint i64 %23, 7, !dbg !186
  %arrayidx130.7 = getelementptr inbounds i32, ptr addrspace(1) %BlockIndices.coerce, i64 %317, !dbg !70
  %318 = load i32, ptr addrspace(1) %arrayidx130.7, align 4, !dbg !70, !tbaa !30
  %mul131.7 = shl nsw i32 %318, 4, !dbg !71
  %cmp132.7 = icmp slt i32 %318, 0, !dbg !72
  %cmp134.not.7 = icmp sgt i32 %mul131.7, %1
  %or.cond.7 = select i1 %cmp132.7, i1 true, i1 %cmp134.not.7, !dbg !73
  br i1 %or.cond.7, label %if.end415.7, label %if.then.7, !dbg !73

if.then.7:                                        ; preds = %if.end415.6
  fence syncscope("warp") release, !dbg !74
  tail call void @llvm.mxc.barrier.warp(), !dbg !77
  fence syncscope("warp") acquire, !dbg !78
  %add141.7 = add nuw nsw i32 %mul131.7, %shr140
  %conv151.7 = zext nneg i32 %mul131.7 to i64
  %.idx.7 = shl nuw nsw i64 %conv151.7, 7
  %gep.7 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1227, i64 %.idx.7, !dbg !79
  %cmp144.7 = icmp ult i32 %add141.7, 1024, !dbg !80
  br i1 %cmp144.7, label %if.then145.7, label %if.end.7, !dbg !81

if.then145.7:                                     ; preds = %if.then.7
  %gep1220.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.7, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.7, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.7, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.7, i64 4
  %condval.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %gep1220.7, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.7, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.7, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.7, align 4, !dbg !82, !tbaa !30
  br label %if.end.7, !dbg !83

if.end.7:                                         ; preds = %if.then145.7, %if.then.7
  %condval.sroa.0.0.7 = phi i32 [ %condval.sroa.0.0.copyload.7, %if.then145.7 ], [ 0, %if.then.7 ], !dbg !84
  %condval.sroa.5.0.7 = phi i32 [ %condval.sroa.5.0.copyload.7, %if.then145.7 ], [ 0, %if.then.7 ], !dbg !84
  %condval.sroa.6.0.7 = phi i32 [ %condval.sroa.6.0.copyload.7, %if.then145.7 ], [ 0, %if.then.7 ], !dbg !84
  %condval.sroa.7.0.7 = phi i32 [ %condval.sroa.7.0.copyload.7, %if.then145.7 ], [ 0, %if.then.7 ], !dbg !84
  store i32 %condval.sroa.0.0.7, ptr addrspace(3) %add.ptr45, align 16, !dbg !85, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !85
  store i32 %condval.sroa.5.0.7, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.7, align 4, !dbg !85, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !85
  store i32 %condval.sroa.6.0.7, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.7, align 8, !dbg !85, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !85
  store i32 %condval.sroa.7.0.7, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.7, align 4, !dbg !85, !tbaa !30
  %cmp144.1.7 = icmp ult i32 %add141.7, 1016, !dbg !80
  br i1 %cmp144.1.7, label %if.then145.1.7, label %if.end.1.7, !dbg !81

if.then145.1.7:                                   ; preds = %if.end.7
  %add150.1.7 = or disjoint i64 %mul147, 512
  %gep1220.1.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.7, i64 %add150.1.7
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1.7, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1.7, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1220.1.7, i64 4
  %condval.sroa.0.0.copyload.1.7 = load i32, ptr addrspace(4) %gep1220.1.7, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.copyload.1.7 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.7, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.copyload.1.7 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.7, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.copyload.1.7 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.7, align 4, !dbg !82, !tbaa !30
  br label %if.end.1.7, !dbg !83

if.end.1.7:                                       ; preds = %if.then145.1.7, %if.end.7
  %condval.sroa.0.0.1.7 = phi i32 [ %condval.sroa.0.0.copyload.1.7, %if.then145.1.7 ], [ 0, %if.end.7 ], !dbg !84
  %condval.sroa.5.0.1.7 = phi i32 [ %condval.sroa.5.0.copyload.1.7, %if.then145.1.7 ], [ 0, %if.end.7 ], !dbg !84
  %condval.sroa.6.0.1.7 = phi i32 [ %condval.sroa.6.0.copyload.1.7, %if.then145.1.7 ], [ 0, %if.end.7 ], !dbg !84
  %condval.sroa.7.0.1.7 = phi i32 [ %condval.sroa.7.0.copyload.1.7, %if.then145.1.7 ], [ 0, %if.end.7 ], !dbg !84
  store i32 %condval.sroa.0.0.1.7, ptr addrspace(3) %add.ptr45.1, align 16, !dbg !85, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 4, !dbg !85
  store i32 %condval.sroa.5.0.1.7, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.1.7, align 4, !dbg !85, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 8, !dbg !85
  store i32 %condval.sroa.6.0.1.7, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.1.7, align 8, !dbg !85, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45.1, i32 12, !dbg !85
  store i32 %condval.sroa.7.0.1.7, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.1.7, align 4, !dbg !85, !tbaa !30
  fence syncscope("warp") release, !dbg !86
  tail call void @llvm.mxc.barrier.warp(), !dbg !89
  fence syncscope("warp") acquire, !dbg !90
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !91
  %319 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %12, <4 x float> zeroinitializer), !dbg !92
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !91
  %320 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %16, <4 x float> %319), !dbg !92
  %k_local.sroa.0.0.copyload.2.7 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !91
  %321 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.7, <4 x half> %18, <4 x float> %320), !dbg !92
  %k_local.sroa.0.0.copyload.3.7 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !91
  %322 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.7, <4 x half> %22, <4 x float> %321), !dbg !92
  %add282.7 = add nuw nsw i32 %mul131.7, %mul281
  %cmp285.not.7 = icmp sgt i32 %add282.7, %1, !dbg !93
  %scores.sroa.0.0.vec.extract1807 = extractelement <4 x float> %322, i64 0
  %spec.select2208 = select i1 %cmp285.not.7, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract1807, !dbg !94
  %cmp285.not.1.7.not = icmp slt i32 %add282.7, %1, !dbg !93
  %scores.sroa.0.4.vec.extract1886 = extractelement <4 x float> %322, i64 1, !dbg !94
  %condval_1.0.1.7 = select i1 %cmp285.not.1.7.not, float %scores.sroa.0.4.vec.extract1886, float 0xFFF0000000000000, !dbg !94
  %add283.2.7 = or disjoint i32 %add282.7, 2, !dbg !95
  %cmp285.not.2.7 = icmp sgt i32 %add283.2.7, %1, !dbg !93
  %scores.sroa.0.8.vec.extract1963 = extractelement <4 x float> %322, i64 2, !dbg !94
  %condval_1.0.2.7 = select i1 %cmp285.not.2.7, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract1963, !dbg !94
  %add283.3.7 = or disjoint i32 %add282.7, 3, !dbg !95
  %cmp285.not.3.7 = icmp sgt i32 %add283.3.7, %1, !dbg !93
  %scores.sroa.0.12.vec.extract2040 = extractelement <4 x float> %322, i64 3, !dbg !94
  %condval_1.0.3.7 = select i1 %cmp285.not.3.7, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2040, !dbg !94
  %323 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2208, float 0xFFF0000000000000), !dbg !96
  %324 = tail call contract noundef float @llvm.maxnum.f32(float %323, float %condval_1.0.1.7), !dbg !96
  %325 = tail call contract noundef float @llvm.maxnum.f32(float %324, float %condval_1.0.2.7), !dbg !96
  %326 = tail call contract noundef float @llvm.maxnum.f32(float %325, float %condval_1.0.3.7), !dbg !96
  %327 = bitcast float %326 to i32, !dbg !100
  %328 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !103
  %329 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %328) #13, !dbg !108
  %xor.i.i.7 = xor i32 %329, 32, !dbg !109
  %330 = and i32 %329, -64, !dbg !110
  %and.i.i.7 = add nsw i32 %330, 64, !dbg !110
  %cmp.not.i.i.7 = icmp slt i32 %xor.i.i.7, %and.i.i.7, !dbg !111
  %cond.i.i.7 = select i1 %cmp.not.i.i.7, i32 %xor.i.i.7, i32 %329, !dbg !112
  %shl.i.i.7 = shl i32 %cond.i.i.7, 2, !dbg !113
  %331 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i.7, i32 %327), !dbg !114
  %332 = bitcast i32 %331 to float, !dbg !115
  %333 = tail call contract noundef float @llvm.maxnum.f32(float %326, float %332), !dbg !116
  %334 = bitcast float %333 to i32, !dbg !118
  %335 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !120
  %336 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %335) #13, !dbg !123
  %xor.i.i1120.7 = xor i32 %336, 16, !dbg !124
  %337 = and i32 %336, -64, !dbg !125
  %and.i.i1121.7 = add nsw i32 %337, 64, !dbg !125
  %cmp.not.i.i1122.7 = icmp slt i32 %xor.i.i1120.7, %and.i.i1121.7, !dbg !126
  %cond.i.i1123.7 = select i1 %cmp.not.i.i1122.7, i32 %xor.i.i1120.7, i32 %336, !dbg !127
  %shl.i.i1124.7 = shl i32 %cond.i.i1123.7, 2, !dbg !128
  %338 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1124.7, i32 %334), !dbg !129
  %339 = bitcast i32 %338 to float, !dbg !130
  %340 = tail call contract noundef float @llvm.maxnum.f32(float %333, float %339), !dbg !131
  %cmp326.7 = icmp eq i32 %shr324, 3, !dbg !133
  %max_cache.sroa.11.6 = select i1 %cmp326.7, float %340, float %max_cache.sroa.11.5, !dbg !134
  %341 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.6, float %340), !dbg !135
  %sub.7 = fsub contract float %spec.select2208, %340, !dbg !137
  %sub347.7 = fsub contract float %condval_1.0.1.7, %340, !dbg !138
  %sub350.7 = fsub contract float %condval_1.0.2.7, %340, !dbg !139
  %sub353.7 = fsub contract float %condval_1.0.3.7, %340, !dbg !140
  %mul358.7 = fmul contract float %sub.7, 0x3FC7154760000000, !dbg !141
  %mul362.7 = fmul contract float %sub347.7, 0x3FC7154760000000, !dbg !142
  %mul366.7 = fmul contract float %sub350.7, 0x3FC7154760000000, !dbg !143
  %mul370.7 = fmul contract float %sub353.7, 0x3FC7154760000000, !dbg !144
  %add375.7 = fadd contract float %mul358.7, 8.000000e+00, !dbg !145
  %add379.7 = fadd contract float %mul362.7, 8.000000e+00, !dbg !146
  %add383.7 = fadd contract float %mul366.7, 8.000000e+00, !dbg !147
  %add387.7 = fadd contract float %mul370.7, 8.000000e+00, !dbg !148
  %cmp.i.i.7 = fcmp contract olt float %add375.7, -1.260000e+02, !dbg !149
  %cond.i.i1129.7 = select contract i1 %cmp.i.i.7, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i.7 = fadd contract float %add375.7, %cond.i.i1129.7, !dbg !149
  %342 = tail call contract float @llvm.exp2.f32(float %add.i.i.7), !dbg !149
  %cond2.i.i.7 = select contract i1 %cmp.i.i.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i.7 = fmul contract float %cond2.i.i.7, %342, !dbg !149
  %cmp.i.i1130.7 = fcmp contract olt float %add379.7, -1.260000e+02, !dbg !152
  %cond.i.i1131.7 = select contract i1 %cmp.i.i1130.7, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i1132.7 = fadd contract float %add379.7, %cond.i.i1131.7, !dbg !152
  %343 = tail call contract float @llvm.exp2.f32(float %add.i.i1132.7), !dbg !152
  %cond2.i.i1133.7 = select contract i1 %cmp.i.i1130.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i1134.7 = fmul contract float %cond2.i.i1133.7, %343, !dbg !152
  %cmp.i.i1135.7 = fcmp contract olt float %add383.7, -1.260000e+02, !dbg !154
  %cond.i.i1136.7 = select contract i1 %cmp.i.i1135.7, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i1137.7 = fadd contract float %add383.7, %cond.i.i1136.7, !dbg !154
  %344 = tail call contract float @llvm.exp2.f32(float %add.i.i1137.7), !dbg !154
  %cond2.i.i1138.7 = select contract i1 %cmp.i.i1135.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i1139.7 = fmul contract float %cond2.i.i1138.7, %344, !dbg !154
  %cmp.i.i1140.7 = fcmp contract olt float %add387.7, -1.260000e+02, !dbg !156
  %cond.i.i1141.7 = select contract i1 %cmp.i.i1140.7, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i1142.7 = fadd contract float %add387.7, %cond.i.i1141.7, !dbg !156
  %345 = tail call contract float @llvm.exp2.f32(float %add.i.i1142.7), !dbg !156
  %cond2.i.i1143.7 = select contract i1 %cmp.i.i1140.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i1144.7 = fmul contract float %cond2.i.i1143.7, %345, !dbg !156
  %346 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !158, !noalias !166
  %347 = fptrunc float %mul.i.i.7 to half, !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %346), !dbg !158, !noalias !166
  %348 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !166
  %349 = fptrunc float %mul.i.i1134.7 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %348), !dbg !171, !noalias !166
  %350 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !177
  %351 = fptrunc float %mul.i.i1139.7 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %350), !dbg !173, !noalias !177
  %352 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !182, !noalias !177
  %353 = fptrunc float %mul.i.i1144.7 to half, !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %352), !dbg !182, !noalias !177
  %354 = insertelement <4 x half> poison, half %347, i64 0, !dbg !184
  %355 = insertelement <4 x half> %354, half %349, i64 1, !dbg !184
  %356 = insertelement <4 x half> %355, half %351, i64 2, !dbg !184
  %357 = insertelement <4 x half> %356, half %353, i64 3, !dbg !184
  br label %if.end415.7, !dbg !185

if.end415.7:                                      ; preds = %if.end.1.7, %if.end415.6
  %358 = phi <4 x half> [ zeroinitializer, %if.end415.6 ], [ %357, %if.end.1.7 ], !dbg !84
  %max_cache.sroa.11.7 = phi float [ %max_cache.sroa.11.5, %if.end415.6 ], [ %max_cache.sroa.11.6, %if.end.1.7 ], !dbg !84
  %global_max.sroa.0.1.7 = phi float [ %global_max.sroa.0.1.6, %if.end415.6 ], [ %341, %if.end.1.7 ], !dbg !84
  %and469 = and i32 %2, 15
  %359 = shl nuw nsw i32 %2, 4
  %360 = and i32 %359, 16256
  %361 = and i32 %mul11, 56
  %362 = or disjoint i32 %360, %361
  %363 = zext nneg i32 %362 to i64
  %add543 = or disjoint i64 %mul147, %363
  %364 = and i32 %2, 8
  %cmp624 = icmp eq i32 %364, 0
  %365 = lshr exact i32 %364, 1
  %idxprom661.pn.in.v = select i1 %cmp624, i32 8, i32 12
  %and719 = shl nuw nsw i32 %2, 5
  %mul720 = and i32 %and719, 224
  %366 = shl nuw nsw i32 %2, 1
  %mul725 = and i32 %366, 16
  %shr731 = and i32 %and63, 3
  %xor = xor i32 %shr731, %shr324
  %and745 = shl nuw nsw i32 %2, 8
  %mul746 = and i32 %and745, 768
  %367 = shl nuw nsw i32 %2, 2
  %mul752 = and i32 %367, 48
  %and758 = and i32 %2, 3
  %368 = xor i32 %shr324, %and758
  %369 = load i32, ptr addrspace(1) %arrayidx130, align 4, !dbg !187, !tbaa !30
  %mul444 = shl nsw i32 %369, 4, !dbg !188
  %cmp445 = icmp slt i32 %369, 0, !dbg !189
  %cmp448.not = icmp sgt i32 %mul444, %1
  %or.cond1207 = select i1 %cmp445, i1 true, i1 %cmp448.not, !dbg !190
  br i1 %or.cond1207, label %if.end790, label %if.then449, !dbg !190

if.then449:                                       ; preds = %if.end415.7
  fence syncscope("warp") release, !dbg !191
  tail call void @llvm.mxc.barrier.warp(), !dbg !194
  fence syncscope("warp") acquire, !dbg !195
  %cmp454 = icmp ult i32 %2, 16, !dbg !196
  br i1 %cmp454, label %if.then455, label %if.end464, !dbg !197

if.then455:                                       ; preds = %if.then449
  %sub460 = fsub contract float %max_cache.sroa.0.7, %global_max.sroa.0.1.7, !dbg !198
  %mul461 = fmul contract float %sub460, 0x3FC7154760000000, !dbg !199
  %cmp.i.i1146 = fcmp contract olt float %mul461, -1.260000e+02, !dbg !200
  %cond.i.i1147 = select contract i1 %cmp.i.i1146, float 6.400000e+01, float 0.000000e+00, !dbg !200
  %add.i.i1148 = fadd contract float %mul461, %cond.i.i1147, !dbg !200
  %370 = tail call contract float @llvm.exp2.f32(float %add.i.i1148), !dbg !200
  %cond2.i.i1149 = select contract i1 %cmp.i.i1146, float 0x3BF0000000000000, float 1.000000e+00, !dbg !200
  %mul.i.i1150 = fmul contract float %cond2.i.i1149, %370, !dbg !200
  br label %if.end464, !dbg !202

if.end464:                                        ; preds = %if.then455, %if.then449
  %rescale.sroa.0.0 = phi float [ %mul.i.i1150, %if.then455 ], [ 0.000000e+00, %if.then449 ], !dbg !84
  %371 = bitcast float %rescale.sroa.0.0 to i32, !dbg !203
  %372 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !206
  %373 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %372) #13, !dbg !210
  %and.i.i1151 = and i32 %373, 1073741760, !dbg !211
  %add.i.i1152 = or disjoint i32 %and.i.i1151, %and469, !dbg !212
  %shl.i.i1153 = shl nuw i32 %add.i.i1152, 2, !dbg !213
  %374 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1153, i32 %371), !dbg !214
  %375 = bitcast i32 %374 to float, !dbg !215
  %376 = extractelement <4 x half> %64, i64 0, !dbg !216
  %conv.i1154 = fpext half %376 to float, !dbg !216
  %377 = extractelement <4 x half> %64, i64 1, !dbg !219
  %conv6.i = fpext half %377 to float, !dbg !219
  %378 = extractelement <4 x half> %64, i64 2, !dbg !220
  %conv.i1156 = fpext half %378 to float, !dbg !220
  %379 = extractelement <4 x half> %64, i64 3, !dbg !222
  %conv6.i1158 = fpext half %379 to float, !dbg !222
  %mul494 = fmul contract float %375, %conv.i1154, !dbg !223
  %mul498 = fmul contract float %375, %conv6.i, !dbg !224
  %mul502 = fmul contract float %375, %conv.i1156, !dbg !225
  %mul506 = fmul contract float %375, %conv6.i1158, !dbg !226
  %380 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !231
  %381 = fptrunc float %mul494 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %380), !dbg !227, !noalias !231
  %382 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !236, !noalias !231
  %383 = fptrunc float %mul498 to half, !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %382), !dbg !236, !noalias !231
  %384 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !238, !noalias !242
  %385 = fptrunc float %mul502 to half, !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %384), !dbg !238, !noalias !242
  %386 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !247, !noalias !242
  %387 = fptrunc float %mul506 to half, !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %386), !dbg !247, !noalias !242
  %388 = insertelement <4 x half> poison, half %381, i64 0, !dbg !249
  %389 = insertelement <4 x half> %388, half %383, i64 1, !dbg !249
  %390 = insertelement <4 x half> %389, half %385, i64 2, !dbg !249
  %391 = insertelement <4 x half> %390, half %387, i64 3, !dbg !249
  %shr529 = lshr exact i32 %mul444, 1
  %add530 = add nuw nsw i32 %shr529, %shr140
  %cmp531 = icmp ult i32 %add530, 512
  %conv541 = zext nneg i32 %mul444 to i64
  br i1 %cmp531, label %if.then532, label %if.end576, !dbg !250

if.then532:                                       ; preds = %if.end464
  %392 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1244 = shl nuw nsw i64 %conv541, 7, !dbg !251
  %393 = getelementptr inbounds i8, ptr addrspace(4) %392, i64 %.idx1244, !dbg !251
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %393, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %393, i64 4, !dbg !252
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %393, i64 8, !dbg !252
  %condval_2.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %393, i64 12, !dbg !252
  %condval_2.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx, align 4, !dbg !252, !tbaa !30
  br label %if.end576, !dbg !253

if.end576:                                        ; preds = %if.end464, %if.then532
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then532 ], [ 0, %if.end464 ], !dbg !84
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then532 ], [ 0, %if.end464 ], !dbg !84
  %condval_2.sroa.6.0 = phi i32 [ %condval_2.sroa.6.0.copyload, %if.then532 ], [ 0, %if.end464 ], !dbg !84
  %condval_2.sroa.7.0 = phi i32 [ %condval_2.sroa.7.0.copyload, %if.then532 ], [ 0, %if.end464 ], !dbg !84
  store i32 %condval_2.sroa.0.0, ptr addrspace(5) %v_fetch_local, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 4, !dbg !254
  store i32 %condval_2.sroa.5.0, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 8, !dbg !254
  store i32 %condval_2.sroa.6.0, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 12, !dbg !254
  store i32 %condval_2.sroa.7.0, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx, align 4, !dbg !254, !tbaa !30
  br i1 %cmp531, label %if.then532.1, label %if.end576.1, !dbg !250

if.then532.1:                                     ; preds = %if.end576
  %394 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1244.1 = shl nuw nsw i64 %conv541, 7, !dbg !251
  %395 = getelementptr inbounds i8, ptr addrspace(4) %394, i64 %.idx1244.1, !dbg !251
  %add.ptr552.1 = getelementptr inbounds i8, ptr addrspace(4) %395, i64 128, !dbg !251
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %add.ptr552.1, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %395, i64 132, !dbg !252
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %395, i64 136, !dbg !252
  %condval_2.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %395, i64 140, !dbg !252
  %condval_2.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1, align 4, !dbg !252, !tbaa !30
  br label %if.end576.1, !dbg !253

if.end576.1:                                      ; preds = %if.then532.1, %if.end576
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then532.1 ], [ 0, %if.end576 ], !dbg !84
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then532.1 ], [ 0, %if.end576 ], !dbg !84
  %condval_2.sroa.6.0.1 = phi i32 [ %condval_2.sroa.6.0.copyload.1, %if.then532.1 ], [ 0, %if.end576 ], !dbg !84
  %condval_2.sroa.7.0.1 = phi i32 [ %condval_2.sroa.7.0.copyload.1, %if.then532.1 ], [ 0, %if.end576 ], !dbg !84
  %add.ptr580.1 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 16, !dbg !255
  store i32 %condval_2.sroa.0.0.1, ptr addrspace(5) %add.ptr580.1, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 20, !dbg !254
  store i32 %condval_2.sroa.5.0.1, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.1, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 24, !dbg !254
  store i32 %condval_2.sroa.6.0.1, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.1, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 28, !dbg !254
  store i32 %condval_2.sroa.7.0.1, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.1, align 4, !dbg !254, !tbaa !30
  %condval_3.0 = select i1 %cmp624, i32 %condval_2.sroa.6.0, i32 %condval_2.sroa.0.0, !dbg !256
  %396 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %397 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %396) #13, !dbg !262
  %xor.i.i1171 = xor i32 %397, 8, !dbg !263
  %398 = and i32 %397, -64, !dbg !264
  %and.i.i1172 = add nsw i32 %398, 64, !dbg !264
  %cmp.not.i.i1173 = icmp slt i32 %xor.i.i1171, %and.i.i1172, !dbg !265
  %cond.i.i1174 = select i1 %cmp.not.i.i1173, i32 %xor.i.i1171, i32 %397, !dbg !266
  %shl.i.i1175 = shl i32 %cond.i.i1174, 2, !dbg !267
  %399 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175, i32 %condval_3.0), !dbg !268
  %condval_3.0.1 = select i1 %cmp624, i32 %condval_2.sroa.7.0, i32 %condval_2.sroa.5.0, !dbg !256
  %400 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %401 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %400) #13, !dbg !262
  %xor.i.i1171.1 = xor i32 %401, 8, !dbg !263
  %402 = and i32 %401, -64, !dbg !264
  %and.i.i1172.1 = add nsw i32 %402, 64, !dbg !264
  %cmp.not.i.i1173.1 = icmp slt i32 %xor.i.i1171.1, %and.i.i1172.1, !dbg !265
  %cond.i.i1174.1 = select i1 %cmp.not.i.i1173.1, i32 %xor.i.i1171.1, i32 %401, !dbg !266
  %shl.i.i1175.1 = shl i32 %cond.i.i1174.1, 2, !dbg !267
  %403 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.1, i32 %condval_3.0.1), !dbg !268
  %arrayidx610.11326 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 24, !dbg !269
  %condval_3.0.11339 = select i1 %cmp624, i32 %condval_2.sroa.6.0.1, i32 %condval_2.sroa.0.0.1, !dbg !256
  %404 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %405 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %404) #13, !dbg !262
  %xor.i.i1171.11340 = xor i32 %405, 8, !dbg !263
  %406 = and i32 %405, -64, !dbg !264
  %and.i.i1172.11341 = add nsw i32 %406, 64, !dbg !264
  %cmp.not.i.i1173.11342 = icmp slt i32 %xor.i.i1171.11340, %and.i.i1172.11341, !dbg !265
  %cond.i.i1174.11343 = select i1 %cmp.not.i.i1173.11342, i32 %xor.i.i1171.11340, i32 %405, !dbg !266
  %shl.i.i1175.11344 = shl i32 %cond.i.i1174.11343, 2, !dbg !267
  %407 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.11344, i32 %condval_3.0.11339), !dbg !268
  %condval_3.0.1.1 = select i1 %cmp624, i32 %condval_2.sroa.7.0.1, i32 %condval_2.sroa.5.0.1, !dbg !256
  %408 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %409 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %408) #13, !dbg !262
  %xor.i.i1171.1.1 = xor i32 %409, 8, !dbg !263
  %410 = and i32 %409, -64, !dbg !264
  %and.i.i1172.1.1 = add nsw i32 %410, 64, !dbg !264
  %cmp.not.i.i1173.1.1 = icmp slt i32 %xor.i.i1171.1.1, %and.i.i1172.1.1, !dbg !265
  %cond.i.i1174.1.1 = select i1 %cmp.not.i.i1173.1.1, i32 %xor.i.i1171.1.1, i32 %409, !dbg !266
  %shl.i.i1175.1.1 = shl i32 %cond.i.i1174.1.1, 2, !dbg !267
  %411 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.1.1, i32 %condval_3.0.1.1), !dbg !268
  %condval_4.sroa.0.0.in = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %365, !dbg !84
  %condval_4.sroa.0.0 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in, align 2, !dbg !84, !tbaa !270
  %add.ptr580.1.val = load i16, ptr addrspace(5) %add.ptr580.1, align 2, !dbg !84
  %arrayidx610.11326.val = load i16, ptr addrspace(5) %arrayidx610.11326, align 2, !dbg !84
  %conv674 = trunc i32 %399 to i16, !dbg !271
  %conv682 = trunc i32 %407 to i16, !dbg !272
  %condval_6.sroa.0.0 = select i1 %cmp624, i16 %condval_4.sroa.0.0, i16 %conv674, !dbg !273
  %condval_7.sroa.0.0 = select i1 %cmp624, i16 %add.ptr580.1.val, i16 %conv682, !dbg !274
  %condval_8.sroa.0.0 = select i1 %cmp624, i16 %conv674, i16 %condval_4.sroa.0.0, !dbg !275
  %condval_9.sroa.0.0 = select i1 %cmp624, i16 %conv682, i16 %arrayidx610.11326.val, !dbg !276
  %add726 = or disjoint i32 %mul720, %mul725, !dbg !277
  %412 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726, !dbg !278
  %add.ptr736.idx = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736 = getelementptr inbounds i8, ptr addrspace(3) %412, i32 %add.ptr736.idx, !dbg !278
  store i16 %condval_6.sroa.0.0, ptr addrspace(3) %add.ptr736, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.1 = or disjoint i32 %365, 1, !dbg !280
  %condval_4.sroa.0.0.in.1 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.1, !dbg !84
  %condval_4.sroa.0.0.1 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.1, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.1 = or disjoint i32 %idxprom661.pn.in.v, 1, !dbg !281
  %condval_5.sroa.0.0.in.1 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.1, !dbg !84
  %condval_5.sroa.0.0.1 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.1, align 2, !dbg !84, !tbaa !270
  %shr673.1 = lshr i32 %399, 16, !dbg !282
  %conv674.1 = trunc nuw i32 %shr673.1 to i16, !dbg !271
  %shr681.1 = lshr i32 %407, 16, !dbg !283
  %conv682.1 = trunc nuw i32 %shr681.1 to i16, !dbg !272
  %condval_6.sroa.0.0.1 = select i1 %cmp624, i16 %condval_4.sroa.0.0.1, i16 %conv674.1, !dbg !273
  %condval_7.sroa.0.0.1 = select i1 %cmp624, i16 %condval_5.sroa.0.0.1, i16 %conv682.1, !dbg !274
  %condval_8.sroa.0.0.1 = select i1 %cmp624, i16 %conv674.1, i16 %condval_4.sroa.0.0.1, !dbg !275
  %condval_9.sroa.0.0.1 = select i1 %cmp624, i16 %conv682.1, i16 %condval_5.sroa.0.0.1, !dbg !276
  %add721.1 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.1 = or disjoint i32 %add721.1, 256, !dbg !277
  %413 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.1, !dbg !278
  %xor732.1 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.1 = xor i32 %xor732.1, 8, !dbg !278
  %add.ptr736.1 = getelementptr inbounds i8, ptr addrspace(3) %413, i32 %add.ptr736.idx.1, !dbg !278
  store i16 %condval_6.sroa.0.0.1, ptr addrspace(3) %add.ptr736.1, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.1, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.1, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.1, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.1, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.1, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.1, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.2 = or disjoint i32 %365, 2, !dbg !280
  %condval_4.sroa.0.0.in.2 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.2, !dbg !84
  %condval_4.sroa.0.0.2 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.2, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.2 = or disjoint i32 %idxprom661.pn.in.v, 2, !dbg !281
  %condval_5.sroa.0.0.in.2 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.2, !dbg !84
  %condval_5.sroa.0.0.2 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.2, align 2, !dbg !84, !tbaa !270
  %conv674.2 = trunc i32 %403 to i16, !dbg !271
  %conv682.2 = trunc i32 %411 to i16, !dbg !272
  %condval_6.sroa.0.0.2 = select i1 %cmp624, i16 %condval_4.sroa.0.0.2, i16 %conv674.2, !dbg !273
  %condval_7.sroa.0.0.2 = select i1 %cmp624, i16 %condval_5.sroa.0.0.2, i16 %conv682.2, !dbg !274
  %condval_8.sroa.0.0.2 = select i1 %cmp624, i16 %conv674.2, i16 %condval_4.sroa.0.0.2, !dbg !275
  %condval_9.sroa.0.0.2 = select i1 %cmp624, i16 %conv682.2, i16 %condval_5.sroa.0.0.2, !dbg !276
  %add721.2 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.2 = or disjoint i32 %add721.2, 512, !dbg !277
  %414 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.2, !dbg !278
  %xor732.2 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.2 = xor i32 %xor732.2, 16, !dbg !278
  %add.ptr736.2 = getelementptr inbounds i8, ptr addrspace(3) %414, i32 %add.ptr736.idx.2, !dbg !278
  store i16 %condval_6.sroa.0.0.2, ptr addrspace(3) %add.ptr736.2, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.2, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.2, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.2, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.2, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.2, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.2, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.3 = or disjoint i32 %365, 3, !dbg !280
  %condval_4.sroa.0.0.in.3 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.3, !dbg !84
  %condval_4.sroa.0.0.3 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.3, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.3 = or disjoint i32 %idxprom661.pn.in.v, 3, !dbg !281
  %condval_5.sroa.0.0.in.3 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.3, !dbg !84
  %condval_5.sroa.0.0.3 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.3, align 2, !dbg !84, !tbaa !270
  %shr673.3 = lshr i32 %403, 16, !dbg !282
  %conv674.3 = trunc nuw i32 %shr673.3 to i16, !dbg !271
  %shr681.3 = lshr i32 %411, 16, !dbg !283
  %conv682.3 = trunc nuw i32 %shr681.3 to i16, !dbg !272
  %condval_6.sroa.0.0.3 = select i1 %cmp624, i16 %condval_4.sroa.0.0.3, i16 %conv674.3, !dbg !273
  %condval_7.sroa.0.0.3 = select i1 %cmp624, i16 %condval_5.sroa.0.0.3, i16 %conv682.3, !dbg !274
  %condval_8.sroa.0.0.3 = select i1 %cmp624, i16 %conv674.3, i16 %condval_4.sroa.0.0.3, !dbg !275
  %condval_9.sroa.0.0.3 = select i1 %cmp624, i16 %conv682.3, i16 %condval_5.sroa.0.0.3, !dbg !276
  %add721.3 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.3 = or disjoint i32 %add721.3, 768, !dbg !277
  %415 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.3, !dbg !278
  %xor732.3 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.3 = xor i32 %xor732.3, 24, !dbg !278
  %add.ptr736.3 = getelementptr inbounds i8, ptr addrspace(3) %415, i32 %add.ptr736.idx.3, !dbg !278
  store i16 %condval_6.sroa.0.0.3, ptr addrspace(3) %add.ptr736.3, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.3, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.3, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.3, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.3, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.3, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.3, align 2, !dbg !279, !tbaa !30
  fence syncscope("warp") release, !dbg !284
  tail call void @llvm.mxc.barrier.warp(), !dbg !287
  fence syncscope("warp") acquire, !dbg !288
  %add753 = or disjoint i32 %mul746, %mul752, !dbg !289
  %416 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753, !dbg !290
  %add.ptr763.idx = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763 = getelementptr inbounds i8, ptr addrspace(3) %416, i32 %add.ptr763.idx, !dbg !290
  %417 = load <4 x half>, ptr addrspace(3) %add.ptr763, align 8, !dbg !291
  %add748.1 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.1 = or disjoint i32 %add748.1, 64, !dbg !289
  %418 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.1, !dbg !290
  %xor759.1 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.1 = xor i32 %xor759.1, 8, !dbg !290
  %add.ptr763.1 = getelementptr inbounds i8, ptr addrspace(3) %418, i32 %add.ptr763.idx.1, !dbg !290
  %419 = load <4 x half>, ptr addrspace(3) %add.ptr763.1, align 8, !dbg !291
  %add748.2 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.2 = or disjoint i32 %add748.2, 128, !dbg !289
  %420 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.2, !dbg !290
  %xor759.2 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.2 = xor i32 %xor759.2, 16, !dbg !290
  %add.ptr763.2 = getelementptr inbounds i8, ptr addrspace(3) %420, i32 %add.ptr763.idx.2, !dbg !290
  %421 = load <4 x half>, ptr addrspace(3) %add.ptr763.2, align 8, !dbg !291
  %add748.3 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.3 = or disjoint i32 %add748.3, 192, !dbg !289
  %422 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.3, !dbg !290
  %xor759.3 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.3 = xor i32 %xor759.3, 24, !dbg !290
  %add.ptr763.3 = getelementptr inbounds i8, ptr addrspace(3) %422, i32 %add.ptr763.idx.3, !dbg !290
  %423 = load <4 x half>, ptr addrspace(3) %add.ptr763.3, align 8, !dbg !291
  %424 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %417, <4 x half> %391, <4 x float> zeroinitializer), !dbg !292
  %425 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %419, <4 x half> %391, <4 x float> zeroinitializer), !dbg !292
  %426 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %421, <4 x half> %391, <4 x float> zeroinitializer), !dbg !292
  %427 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %423, <4 x half> %391, <4 x float> zeroinitializer), !dbg !292
  br label %if.end790, !dbg !293

if.end790:                                        ; preds = %if.end576.1, %if.end415.7
  %bc2173 = phi <4 x half> [ %64, %if.end415.7 ], [ %391, %if.end576.1 ], !dbg !84
  %output_acc.sroa.98.0 = phi <4 x float> [ zeroinitializer, %if.end415.7 ], [ %427, %if.end576.1 ], !dbg !84
  %output_acc.sroa.66.0 = phi <4 x float> [ zeroinitializer, %if.end415.7 ], [ %426, %if.end576.1 ], !dbg !84
  %output_acc.sroa.34.0 = phi <4 x float> [ zeroinitializer, %if.end415.7 ], [ %425, %if.end576.1 ], !dbg !84
  %output_acc.sroa.0.0 = phi <4 x float> [ zeroinitializer, %if.end415.7 ], [ %424, %if.end576.1 ], !dbg !84
  %428 = load i32, ptr addrspace(1) %arrayidx130.1, align 4, !dbg !187, !tbaa !30
  %mul444.1 = shl nsw i32 %428, 4, !dbg !188
  %cmp445.1 = icmp slt i32 %428, 0, !dbg !189
  %cmp448.not.1 = icmp sgt i32 %mul444.1, %1
  %or.cond1207.1 = select i1 %cmp445.1, i1 true, i1 %cmp448.not.1, !dbg !190
  br i1 %or.cond1207.1, label %if.end790.1, label %if.then449.1, !dbg !190

if.then449.1:                                     ; preds = %if.end790
  fence syncscope("warp") release, !dbg !191
  tail call void @llvm.mxc.barrier.warp(), !dbg !194
  fence syncscope("warp") acquire, !dbg !195
  %cmp454.1 = icmp eq i32 %shr324, 1, !dbg !196
  br i1 %cmp454.1, label %if.then455.1, label %if.end464.1, !dbg !197

if.then455.1:                                     ; preds = %if.then449.1
  %sub460.1 = fsub contract float %max_cache.sroa.0.7, %global_max.sroa.0.1.7, !dbg !198
  %mul461.1 = fmul contract float %sub460.1, 0x3FC7154760000000, !dbg !199
  %cmp.i.i1146.1 = fcmp contract olt float %mul461.1, -1.260000e+02, !dbg !200
  %cond.i.i1147.1 = select contract i1 %cmp.i.i1146.1, float 6.400000e+01, float 0.000000e+00, !dbg !200
  %add.i.i1148.1 = fadd contract float %mul461.1, %cond.i.i1147.1, !dbg !200
  %429 = tail call contract float @llvm.exp2.f32(float %add.i.i1148.1), !dbg !200
  %cond2.i.i1149.1 = select contract i1 %cmp.i.i1146.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !200
  %mul.i.i1150.1 = fmul contract float %cond2.i.i1149.1, %429, !dbg !200
  br label %if.end464.1, !dbg !202

if.end464.1:                                      ; preds = %if.then455.1, %if.then449.1
  %rescale.sroa.0.0.1 = phi float [ %mul.i.i1150.1, %if.then455.1 ], [ 0.000000e+00, %if.then449.1 ], !dbg !84
  %430 = bitcast float %rescale.sroa.0.0.1 to i32, !dbg !203
  %431 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !206
  %432 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %431) #13, !dbg !210
  %rem.i.i.1 = or disjoint i32 %and469, 16, !dbg !294
  %and.i.i1151.1 = and i32 %432, 1073741760, !dbg !211
  %add.i.i1152.1 = or disjoint i32 %and.i.i1151.1, %rem.i.i.1, !dbg !212
  %shl.i.i1153.1 = shl nuw i32 %add.i.i1152.1, 2, !dbg !213
  %433 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1153.1, i32 %430), !dbg !214
  %434 = bitcast i32 %433 to float, !dbg !215
  %435 = extractelement <4 x half> %106, i64 0, !dbg !216
  %conv.i1154.1 = fpext half %435 to float, !dbg !216
  %436 = extractelement <4 x half> %106, i64 1, !dbg !219
  %conv6.i.1 = fpext half %436 to float, !dbg !219
  %437 = extractelement <4 x half> %106, i64 2, !dbg !220
  %conv.i1156.1 = fpext half %437 to float, !dbg !220
  %438 = extractelement <4 x half> %106, i64 3, !dbg !222
  %conv6.i1158.1 = fpext half %438 to float, !dbg !222
  %mul494.1 = fmul contract float %434, %conv.i1154.1, !dbg !223
  %mul498.1 = fmul contract float %434, %conv6.i.1, !dbg !224
  %mul502.1 = fmul contract float %434, %conv.i1156.1, !dbg !225
  %mul506.1 = fmul contract float %434, %conv6.i1158.1, !dbg !226
  %439 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !231
  %440 = fptrunc float %mul494.1 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %439), !dbg !227, !noalias !231
  %441 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !236, !noalias !231
  %442 = fptrunc float %mul498.1 to half, !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %441), !dbg !236, !noalias !231
  %443 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !238, !noalias !242
  %444 = fptrunc float %mul502.1 to half, !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %443), !dbg !238, !noalias !242
  %445 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !247, !noalias !242
  %446 = fptrunc float %mul506.1 to half, !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %445), !dbg !247, !noalias !242
  %447 = insertelement <4 x half> poison, half %440, i64 0, !dbg !249
  %448 = insertelement <4 x half> %447, half %442, i64 1, !dbg !249
  %449 = insertelement <4 x half> %448, half %444, i64 2, !dbg !249
  %450 = insertelement <4 x half> %449, half %446, i64 3, !dbg !249
  %shr529.1 = lshr exact i32 %mul444.1, 1
  %add530.1 = add nuw nsw i32 %shr529.1, %shr140
  %cmp531.1 = icmp ult i32 %add530.1, 512
  %conv541.1 = zext nneg i32 %mul444.1 to i64
  br i1 %cmp531.1, label %if.then532.11358, label %if.end576.11366, !dbg !250

if.then532.11358:                                 ; preds = %if.end464.1
  %451 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1244.11350 = shl nuw nsw i64 %conv541.1, 7, !dbg !251
  %452 = getelementptr inbounds i8, ptr addrspace(4) %451, i64 %.idx1244.11350, !dbg !251
  %condval_2.sroa.0.0.copyload.11351 = load i32, ptr addrspace(4) %452, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.11352 = getelementptr inbounds i8, ptr addrspace(4) %452, i64 4, !dbg !252
  %condval_2.sroa.5.0.copyload.11353 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.11352, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.11354 = getelementptr inbounds i8, ptr addrspace(4) %452, i64 8, !dbg !252
  %condval_2.sroa.6.0.copyload.11355 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.11354, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.11356 = getelementptr inbounds i8, ptr addrspace(4) %452, i64 12, !dbg !252
  %condval_2.sroa.7.0.copyload.11357 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.11356, align 4, !dbg !252, !tbaa !30
  br label %if.end576.11366, !dbg !253

if.end576.11366:                                  ; preds = %if.then532.11358, %if.end464.1
  %condval_2.sroa.0.0.11359 = phi i32 [ %condval_2.sroa.0.0.copyload.11351, %if.then532.11358 ], [ 0, %if.end464.1 ], !dbg !84
  %condval_2.sroa.5.0.11360 = phi i32 [ %condval_2.sroa.5.0.copyload.11353, %if.then532.11358 ], [ 0, %if.end464.1 ], !dbg !84
  %condval_2.sroa.6.0.11361 = phi i32 [ %condval_2.sroa.6.0.copyload.11355, %if.then532.11358 ], [ 0, %if.end464.1 ], !dbg !84
  %condval_2.sroa.7.0.11362 = phi i32 [ %condval_2.sroa.7.0.copyload.11357, %if.then532.11358 ], [ 0, %if.end464.1 ], !dbg !84
  store i32 %condval_2.sroa.0.0.11359, ptr addrspace(5) %v_fetch_local, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.11363 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 4, !dbg !254
  store i32 %condval_2.sroa.5.0.11360, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.11363, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.11364 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 8, !dbg !254
  store i32 %condval_2.sroa.6.0.11361, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.11364, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.11365 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 12, !dbg !254
  store i32 %condval_2.sroa.7.0.11362, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.11365, align 4, !dbg !254, !tbaa !30
  br i1 %cmp531.1, label %if.then532.1.1, label %if.end576.1.1, !dbg !250

if.then532.1.1:                                   ; preds = %if.end576.11366
  %453 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1244.1.1 = shl nuw nsw i64 %conv541.1, 7, !dbg !251
  %454 = getelementptr inbounds i8, ptr addrspace(4) %453, i64 %.idx1244.1.1, !dbg !251
  %add.ptr552.1.1 = getelementptr inbounds i8, ptr addrspace(4) %454, i64 128, !dbg !251
  %condval_2.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %add.ptr552.1.1, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %454, i64 132, !dbg !252
  %condval_2.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.1, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %454, i64 136, !dbg !252
  %condval_2.sroa.6.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.1, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %454, i64 140, !dbg !252
  %condval_2.sroa.7.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.1, align 4, !dbg !252, !tbaa !30
  br label %if.end576.1.1, !dbg !253

if.end576.1.1:                                    ; preds = %if.then532.1.1, %if.end576.11366
  %condval_2.sroa.0.0.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1, %if.then532.1.1 ], [ 0, %if.end576.11366 ], !dbg !84
  %condval_2.sroa.5.0.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1, %if.then532.1.1 ], [ 0, %if.end576.11366 ], !dbg !84
  %condval_2.sroa.6.0.1.1 = phi i32 [ %condval_2.sroa.6.0.copyload.1.1, %if.then532.1.1 ], [ 0, %if.end576.11366 ], !dbg !84
  %condval_2.sroa.7.0.1.1 = phi i32 [ %condval_2.sroa.7.0.copyload.1.1, %if.then532.1.1 ], [ 0, %if.end576.11366 ], !dbg !84
  %add.ptr580.1.1 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 16, !dbg !255
  store i32 %condval_2.sroa.0.0.1.1, ptr addrspace(5) %add.ptr580.1.1, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 20, !dbg !254
  store i32 %condval_2.sroa.5.0.1.1, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.1, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 24, !dbg !254
  store i32 %condval_2.sroa.6.0.1.1, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.1, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 28, !dbg !254
  store i32 %condval_2.sroa.7.0.1.1, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.1, align 4, !dbg !254, !tbaa !30
  %condval_3.0.11382 = select i1 %cmp624, i32 %condval_2.sroa.6.0.11361, i32 %condval_2.sroa.0.0.11359, !dbg !256
  %455 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %456 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %455) #13, !dbg !262
  %xor.i.i1171.11383 = xor i32 %456, 8, !dbg !263
  %457 = and i32 %456, -64, !dbg !264
  %and.i.i1172.11384 = add nsw i32 %457, 64, !dbg !264
  %cmp.not.i.i1173.11385 = icmp slt i32 %xor.i.i1171.11383, %and.i.i1172.11384, !dbg !265
  %cond.i.i1174.11386 = select i1 %cmp.not.i.i1173.11385, i32 %xor.i.i1171.11383, i32 %456, !dbg !266
  %shl.i.i1175.11387 = shl i32 %cond.i.i1174.11386, 2, !dbg !267
  %458 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.11387, i32 %condval_3.0.11382), !dbg !268
  %condval_3.0.1.11404 = select i1 %cmp624, i32 %condval_2.sroa.7.0.11362, i32 %condval_2.sroa.5.0.11360, !dbg !256
  %459 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %460 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %459) #13, !dbg !262
  %xor.i.i1171.1.11405 = xor i32 %460, 8, !dbg !263
  %461 = and i32 %460, -64, !dbg !264
  %and.i.i1172.1.11406 = add nsw i32 %461, 64, !dbg !264
  %cmp.not.i.i1173.1.11407 = icmp slt i32 %xor.i.i1171.1.11405, %and.i.i1172.1.11406, !dbg !265
  %cond.i.i1174.1.11408 = select i1 %cmp.not.i.i1173.1.11407, i32 %xor.i.i1171.1.11405, i32 %460, !dbg !266
  %shl.i.i1175.1.11409 = shl i32 %cond.i.i1174.1.11408, 2, !dbg !267
  %462 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.1.11409, i32 %condval_3.0.1.11404), !dbg !268
  %arrayidx610.11326.1 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 24, !dbg !269
  %condval_3.0.11339.1 = select i1 %cmp624, i32 %condval_2.sroa.6.0.1.1, i32 %condval_2.sroa.0.0.1.1, !dbg !256
  %463 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %464 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %463) #13, !dbg !262
  %xor.i.i1171.11340.1 = xor i32 %464, 8, !dbg !263
  %465 = and i32 %464, -64, !dbg !264
  %and.i.i1172.11341.1 = add nsw i32 %465, 64, !dbg !264
  %cmp.not.i.i1173.11342.1 = icmp slt i32 %xor.i.i1171.11340.1, %and.i.i1172.11341.1, !dbg !265
  %cond.i.i1174.11343.1 = select i1 %cmp.not.i.i1173.11342.1, i32 %xor.i.i1171.11340.1, i32 %464, !dbg !266
  %shl.i.i1175.11344.1 = shl i32 %cond.i.i1174.11343.1, 2, !dbg !267
  %466 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.11344.1, i32 %condval_3.0.11339.1), !dbg !268
  %condval_3.0.1.1.1 = select i1 %cmp624, i32 %condval_2.sroa.7.0.1.1, i32 %condval_2.sroa.5.0.1.1, !dbg !256
  %467 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %468 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %467) #13, !dbg !262
  %xor.i.i1171.1.1.1 = xor i32 %468, 8, !dbg !263
  %469 = and i32 %468, -64, !dbg !264
  %and.i.i1172.1.1.1 = add nsw i32 %469, 64, !dbg !264
  %cmp.not.i.i1173.1.1.1 = icmp slt i32 %xor.i.i1171.1.1.1, %and.i.i1172.1.1.1, !dbg !265
  %cond.i.i1174.1.1.1 = select i1 %cmp.not.i.i1173.1.1.1, i32 %xor.i.i1171.1.1.1, i32 %468, !dbg !266
  %shl.i.i1175.1.1.1 = shl i32 %cond.i.i1174.1.1.1, 2, !dbg !267
  %470 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.1.1.1, i32 %condval_3.0.1.1.1), !dbg !268
  %condval_4.sroa.0.0.in.11412 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %365, !dbg !84
  %condval_4.sroa.0.0.11413 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.11412, align 2, !dbg !84, !tbaa !270
  %add.ptr580.1.1.val = load i16, ptr addrspace(5) %add.ptr580.1.1, align 2, !dbg !84
  %arrayidx610.11326.1.val = load i16, ptr addrspace(5) %arrayidx610.11326.1, align 2, !dbg !84
  %conv674.11416 = trunc i32 %458 to i16, !dbg !271
  %conv682.11418 = trunc i32 %466 to i16, !dbg !272
  %condval_6.sroa.0.0.11419 = select i1 %cmp624, i16 %condval_4.sroa.0.0.11413, i16 %conv674.11416, !dbg !273
  %condval_7.sroa.0.0.11420 = select i1 %cmp624, i16 %add.ptr580.1.1.val, i16 %conv682.11418, !dbg !274
  %condval_8.sroa.0.0.11421 = select i1 %cmp624, i16 %conv674.11416, i16 %condval_4.sroa.0.0.11413, !dbg !275
  %condval_9.sroa.0.0.11422 = select i1 %cmp624, i16 %conv682.11418, i16 %arrayidx610.11326.1.val, !dbg !276
  %add726.11423 = or disjoint i32 %mul720, %mul725, !dbg !277
  %471 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.11423, !dbg !278
  %add.ptr736.idx.11424 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.11425 = getelementptr inbounds i8, ptr addrspace(3) %471, i32 %add.ptr736.idx.11424, !dbg !278
  store i16 %condval_6.sroa.0.0.11419, ptr addrspace(3) %add.ptr736.11425, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.11426 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.11425, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.11420, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.11426, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.11427 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.11425, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.11421, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.11427, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.11428 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.11425, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.11422, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.11428, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.1.1 = or disjoint i32 %365, 1, !dbg !280
  %condval_4.sroa.0.0.in.1.1 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.1.1, !dbg !84
  %condval_4.sroa.0.0.1.1 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.1.1, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.1.1 = or disjoint i32 %idxprom661.pn.in.v, 1, !dbg !281
  %condval_5.sroa.0.0.in.1.1 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.1.1, !dbg !84
  %condval_5.sroa.0.0.1.1 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.1.1, align 2, !dbg !84, !tbaa !270
  %shr673.1.1 = lshr i32 %458, 16, !dbg !282
  %conv674.1.1 = trunc nuw i32 %shr673.1.1 to i16, !dbg !271
  %shr681.1.1 = lshr i32 %466, 16, !dbg !283
  %conv682.1.1 = trunc nuw i32 %shr681.1.1 to i16, !dbg !272
  %condval_6.sroa.0.0.1.1 = select i1 %cmp624, i16 %condval_4.sroa.0.0.1.1, i16 %conv674.1.1, !dbg !273
  %condval_7.sroa.0.0.1.1 = select i1 %cmp624, i16 %condval_5.sroa.0.0.1.1, i16 %conv682.1.1, !dbg !274
  %condval_8.sroa.0.0.1.1 = select i1 %cmp624, i16 %conv674.1.1, i16 %condval_4.sroa.0.0.1.1, !dbg !275
  %condval_9.sroa.0.0.1.1 = select i1 %cmp624, i16 %conv682.1.1, i16 %condval_5.sroa.0.0.1.1, !dbg !276
  %add721.1.1 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.1.1 = or disjoint i32 %add721.1.1, 256, !dbg !277
  %472 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.1.1, !dbg !278
  %xor732.1.1 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.1.1 = xor i32 %xor732.1.1, 8, !dbg !278
  %add.ptr736.1.1 = getelementptr inbounds i8, ptr addrspace(3) %472, i32 %add.ptr736.idx.1.1, !dbg !278
  store i16 %condval_6.sroa.0.0.1.1, ptr addrspace(3) %add.ptr736.1.1, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1.1, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.1.1, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.1.1, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1.1, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.1.1, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.1.1, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1.1, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.1.1, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.1.1, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.2.1 = or disjoint i32 %365, 2, !dbg !280
  %condval_4.sroa.0.0.in.2.1 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.2.1, !dbg !84
  %condval_4.sroa.0.0.2.1 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.2.1, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.2.1 = or disjoint i32 %idxprom661.pn.in.v, 2, !dbg !281
  %condval_5.sroa.0.0.in.2.1 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.2.1, !dbg !84
  %condval_5.sroa.0.0.2.1 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.2.1, align 2, !dbg !84, !tbaa !270
  %conv674.2.1 = trunc i32 %462 to i16, !dbg !271
  %conv682.2.1 = trunc i32 %470 to i16, !dbg !272
  %condval_6.sroa.0.0.2.1 = select i1 %cmp624, i16 %condval_4.sroa.0.0.2.1, i16 %conv674.2.1, !dbg !273
  %condval_7.sroa.0.0.2.1 = select i1 %cmp624, i16 %condval_5.sroa.0.0.2.1, i16 %conv682.2.1, !dbg !274
  %condval_8.sroa.0.0.2.1 = select i1 %cmp624, i16 %conv674.2.1, i16 %condval_4.sroa.0.0.2.1, !dbg !275
  %condval_9.sroa.0.0.2.1 = select i1 %cmp624, i16 %conv682.2.1, i16 %condval_5.sroa.0.0.2.1, !dbg !276
  %add721.2.1 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.2.1 = or disjoint i32 %add721.2.1, 512, !dbg !277
  %473 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.2.1, !dbg !278
  %xor732.2.1 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.2.1 = xor i32 %xor732.2.1, 16, !dbg !278
  %add.ptr736.2.1 = getelementptr inbounds i8, ptr addrspace(3) %473, i32 %add.ptr736.idx.2.1, !dbg !278
  store i16 %condval_6.sroa.0.0.2.1, ptr addrspace(3) %add.ptr736.2.1, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.2.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2.1, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.2.1, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.2.1, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.2.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2.1, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.2.1, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.2.1, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.2.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2.1, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.2.1, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.2.1, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.3.1 = or disjoint i32 %365, 3, !dbg !280
  %condval_4.sroa.0.0.in.3.1 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.3.1, !dbg !84
  %condval_4.sroa.0.0.3.1 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.3.1, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.3.1 = or disjoint i32 %idxprom661.pn.in.v, 3, !dbg !281
  %condval_5.sroa.0.0.in.3.1 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.3.1, !dbg !84
  %condval_5.sroa.0.0.3.1 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.3.1, align 2, !dbg !84, !tbaa !270
  %shr673.3.1 = lshr i32 %462, 16, !dbg !282
  %conv674.3.1 = trunc nuw i32 %shr673.3.1 to i16, !dbg !271
  %shr681.3.1 = lshr i32 %470, 16, !dbg !283
  %conv682.3.1 = trunc nuw i32 %shr681.3.1 to i16, !dbg !272
  %condval_6.sroa.0.0.3.1 = select i1 %cmp624, i16 %condval_4.sroa.0.0.3.1, i16 %conv674.3.1, !dbg !273
  %condval_7.sroa.0.0.3.1 = select i1 %cmp624, i16 %condval_5.sroa.0.0.3.1, i16 %conv682.3.1, !dbg !274
  %condval_8.sroa.0.0.3.1 = select i1 %cmp624, i16 %conv674.3.1, i16 %condval_4.sroa.0.0.3.1, !dbg !275
  %condval_9.sroa.0.0.3.1 = select i1 %cmp624, i16 %conv682.3.1, i16 %condval_5.sroa.0.0.3.1, !dbg !276
  %add721.3.1 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.3.1 = or disjoint i32 %add721.3.1, 768, !dbg !277
  %474 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.3.1, !dbg !278
  %xor732.3.1 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.3.1 = xor i32 %xor732.3.1, 24, !dbg !278
  %add.ptr736.3.1 = getelementptr inbounds i8, ptr addrspace(3) %474, i32 %add.ptr736.idx.3.1, !dbg !278
  store i16 %condval_6.sroa.0.0.3.1, ptr addrspace(3) %add.ptr736.3.1, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.3.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3.1, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.3.1, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.3.1, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.3.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3.1, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.3.1, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.3.1, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.3.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3.1, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.3.1, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.3.1, align 2, !dbg !279, !tbaa !30
  fence syncscope("warp") release, !dbg !284
  tail call void @llvm.mxc.barrier.warp(), !dbg !287
  fence syncscope("warp") acquire, !dbg !288
  %add753.11429 = or disjoint i32 %mul746, %mul752, !dbg !289
  %475 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.11429, !dbg !290
  %add.ptr763.idx.11430 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.11431 = getelementptr inbounds i8, ptr addrspace(3) %475, i32 %add.ptr763.idx.11430, !dbg !290
  %476 = load <4 x half>, ptr addrspace(3) %add.ptr763.11431, align 8, !dbg !291
  %add748.1.1 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.1.1 = or disjoint i32 %add748.1.1, 64, !dbg !289
  %477 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.1.1, !dbg !290
  %xor759.1.1 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.1.1 = xor i32 %xor759.1.1, 8, !dbg !290
  %add.ptr763.1.1 = getelementptr inbounds i8, ptr addrspace(3) %477, i32 %add.ptr763.idx.1.1, !dbg !290
  %478 = load <4 x half>, ptr addrspace(3) %add.ptr763.1.1, align 8, !dbg !291
  %add748.2.1 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.2.1 = or disjoint i32 %add748.2.1, 128, !dbg !289
  %479 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.2.1, !dbg !290
  %xor759.2.1 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.2.1 = xor i32 %xor759.2.1, 16, !dbg !290
  %add.ptr763.2.1 = getelementptr inbounds i8, ptr addrspace(3) %479, i32 %add.ptr763.idx.2.1, !dbg !290
  %480 = load <4 x half>, ptr addrspace(3) %add.ptr763.2.1, align 8, !dbg !291
  %add748.3.1 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.3.1 = or disjoint i32 %add748.3.1, 192, !dbg !289
  %481 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.3.1, !dbg !290
  %xor759.3.1 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.3.1 = xor i32 %xor759.3.1, 24, !dbg !290
  %add.ptr763.3.1 = getelementptr inbounds i8, ptr addrspace(3) %481, i32 %add.ptr763.idx.3.1, !dbg !290
  %482 = load <4 x half>, ptr addrspace(3) %add.ptr763.3.1, align 8, !dbg !291
  %483 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %476, <4 x half> %450, <4 x float> %output_acc.sroa.0.0), !dbg !292
  %484 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %478, <4 x half> %450, <4 x float> %output_acc.sroa.34.0), !dbg !292
  %485 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %480, <4 x half> %450, <4 x float> %output_acc.sroa.66.0), !dbg !292
  %486 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %482, <4 x half> %450, <4 x float> %output_acc.sroa.98.0), !dbg !292
  br label %if.end790.1, !dbg !293

if.end790.1:                                      ; preds = %if.end576.1.1, %if.end790
  %bc2177 = phi <4 x half> [ %106, %if.end790 ], [ %450, %if.end576.1.1 ], !dbg !84
  %output_acc.sroa.98.1 = phi <4 x float> [ %output_acc.sroa.98.0, %if.end790 ], [ %486, %if.end576.1.1 ], !dbg !84
  %output_acc.sroa.66.1 = phi <4 x float> [ %output_acc.sroa.66.0, %if.end790 ], [ %485, %if.end576.1.1 ], !dbg !84
  %output_acc.sroa.34.1 = phi <4 x float> [ %output_acc.sroa.34.0, %if.end790 ], [ %484, %if.end576.1.1 ], !dbg !84
  %output_acc.sroa.0.1 = phi <4 x float> [ %output_acc.sroa.0.0, %if.end790 ], [ %483, %if.end576.1.1 ], !dbg !84
  %487 = load i32, ptr addrspace(1) %arrayidx130.2, align 4, !dbg !187, !tbaa !30
  %mul444.2 = shl nsw i32 %487, 4, !dbg !188
  %cmp445.2 = icmp slt i32 %487, 0, !dbg !189
  %cmp448.not.2 = icmp sgt i32 %mul444.2, %1
  %or.cond1207.2 = select i1 %cmp445.2, i1 true, i1 %cmp448.not.2, !dbg !190
  br i1 %or.cond1207.2, label %if.end790.2, label %if.then449.2, !dbg !190

if.then449.2:                                     ; preds = %if.end790.1
  fence syncscope("warp") release, !dbg !191
  tail call void @llvm.mxc.barrier.warp(), !dbg !194
  fence syncscope("warp") acquire, !dbg !195
  %cmp454.2 = icmp eq i32 %shr324, 2, !dbg !196
  br i1 %cmp454.2, label %if.then455.2, label %if.end464.2, !dbg !197

if.then455.2:                                     ; preds = %if.then449.2
  %sub460.2 = fsub contract float %max_cache.sroa.0.7, %global_max.sroa.0.1.7, !dbg !198
  %mul461.2 = fmul contract float %sub460.2, 0x3FC7154760000000, !dbg !199
  %cmp.i.i1146.2 = fcmp contract olt float %mul461.2, -1.260000e+02, !dbg !200
  %cond.i.i1147.2 = select contract i1 %cmp.i.i1146.2, float 6.400000e+01, float 0.000000e+00, !dbg !200
  %add.i.i1148.2 = fadd contract float %mul461.2, %cond.i.i1147.2, !dbg !200
  %488 = tail call contract float @llvm.exp2.f32(float %add.i.i1148.2), !dbg !200
  %cond2.i.i1149.2 = select contract i1 %cmp.i.i1146.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !200
  %mul.i.i1150.2 = fmul contract float %cond2.i.i1149.2, %488, !dbg !200
  br label %if.end464.2, !dbg !202

if.end464.2:                                      ; preds = %if.then455.2, %if.then449.2
  %rescale.sroa.0.0.2 = phi float [ %mul.i.i1150.2, %if.then455.2 ], [ 0.000000e+00, %if.then449.2 ], !dbg !84
  %489 = bitcast float %rescale.sroa.0.0.2 to i32, !dbg !203
  %490 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !206
  %491 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %490) #13, !dbg !210
  %rem.i.i.2 = or disjoint i32 %and469, 32, !dbg !294
  %and.i.i1151.2 = and i32 %491, 1073741760, !dbg !211
  %add.i.i1152.2 = or disjoint i32 %and.i.i1151.2, %rem.i.i.2, !dbg !212
  %shl.i.i1153.2 = shl nuw i32 %add.i.i1152.2, 2, !dbg !213
  %492 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1153.2, i32 %489), !dbg !214
  %493 = bitcast i32 %492 to float, !dbg !215
  %494 = extractelement <4 x half> %148, i64 0, !dbg !216
  %conv.i1154.2 = fpext half %494 to float, !dbg !216
  %495 = extractelement <4 x half> %148, i64 1, !dbg !219
  %conv6.i.2 = fpext half %495 to float, !dbg !219
  %496 = extractelement <4 x half> %148, i64 2, !dbg !220
  %conv.i1156.2 = fpext half %496 to float, !dbg !220
  %497 = extractelement <4 x half> %148, i64 3, !dbg !222
  %conv6.i1158.2 = fpext half %497 to float, !dbg !222
  %mul494.2 = fmul contract float %493, %conv.i1154.2, !dbg !223
  %mul498.2 = fmul contract float %493, %conv6.i.2, !dbg !224
  %mul502.2 = fmul contract float %493, %conv.i1156.2, !dbg !225
  %mul506.2 = fmul contract float %493, %conv6.i1158.2, !dbg !226
  %498 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !231
  %499 = fptrunc float %mul494.2 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %498), !dbg !227, !noalias !231
  %500 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !236, !noalias !231
  %501 = fptrunc float %mul498.2 to half, !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %500), !dbg !236, !noalias !231
  %502 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !238, !noalias !242
  %503 = fptrunc float %mul502.2 to half, !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %502), !dbg !238, !noalias !242
  %504 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !247, !noalias !242
  %505 = fptrunc float %mul506.2 to half, !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %504), !dbg !247, !noalias !242
  %506 = insertelement <4 x half> poison, half %499, i64 0, !dbg !249
  %507 = insertelement <4 x half> %506, half %501, i64 1, !dbg !249
  %508 = insertelement <4 x half> %507, half %503, i64 2, !dbg !249
  %509 = insertelement <4 x half> %508, half %505, i64 3, !dbg !249
  %shr529.2 = lshr exact i32 %mul444.2, 1
  %add530.2 = add nuw nsw i32 %shr529.2, %shr140
  %cmp531.2 = icmp ult i32 %add530.2, 512
  %conv541.2 = zext nneg i32 %mul444.2 to i64
  br i1 %cmp531.2, label %if.then532.2, label %if.end576.2, !dbg !250

if.then532.2:                                     ; preds = %if.end464.2
  %510 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1244.2 = shl nuw nsw i64 %conv541.2, 7, !dbg !251
  %511 = getelementptr inbounds i8, ptr addrspace(4) %510, i64 %.idx1244.2, !dbg !251
  %condval_2.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %511, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %511, i64 4, !dbg !252
  %condval_2.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.2, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %511, i64 8, !dbg !252
  %condval_2.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.2, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %511, i64 12, !dbg !252
  %condval_2.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.2, align 4, !dbg !252, !tbaa !30
  br label %if.end576.2, !dbg !253

if.end576.2:                                      ; preds = %if.then532.2, %if.end464.2
  %condval_2.sroa.0.0.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2, %if.then532.2 ], [ 0, %if.end464.2 ], !dbg !84
  %condval_2.sroa.5.0.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2, %if.then532.2 ], [ 0, %if.end464.2 ], !dbg !84
  %condval_2.sroa.6.0.2 = phi i32 [ %condval_2.sroa.6.0.copyload.2, %if.then532.2 ], [ 0, %if.end464.2 ], !dbg !84
  %condval_2.sroa.7.0.2 = phi i32 [ %condval_2.sroa.7.0.copyload.2, %if.then532.2 ], [ 0, %if.end464.2 ], !dbg !84
  store i32 %condval_2.sroa.0.0.2, ptr addrspace(5) %v_fetch_local, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 4, !dbg !254
  store i32 %condval_2.sroa.5.0.2, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.2, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 8, !dbg !254
  store i32 %condval_2.sroa.6.0.2, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.2, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 12, !dbg !254
  store i32 %condval_2.sroa.7.0.2, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.2, align 4, !dbg !254, !tbaa !30
  br i1 %cmp531.2, label %if.then532.1.2, label %if.end576.1.2, !dbg !250

if.then532.1.2:                                   ; preds = %if.end576.2
  %512 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1244.1.2 = shl nuw nsw i64 %conv541.2, 7, !dbg !251
  %513 = getelementptr inbounds i8, ptr addrspace(4) %512, i64 %.idx1244.1.2, !dbg !251
  %add.ptr552.1.2 = getelementptr inbounds i8, ptr addrspace(4) %513, i64 128, !dbg !251
  %condval_2.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %add.ptr552.1.2, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %513, i64 132, !dbg !252
  %condval_2.sroa.5.0.copyload.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.2, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %513, i64 136, !dbg !252
  %condval_2.sroa.6.0.copyload.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.2, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %513, i64 140, !dbg !252
  %condval_2.sroa.7.0.copyload.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.2, align 4, !dbg !252, !tbaa !30
  br label %if.end576.1.2, !dbg !253

if.end576.1.2:                                    ; preds = %if.then532.1.2, %if.end576.2
  %condval_2.sroa.0.0.1.2 = phi i32 [ %condval_2.sroa.0.0.copyload.1.2, %if.then532.1.2 ], [ 0, %if.end576.2 ], !dbg !84
  %condval_2.sroa.5.0.1.2 = phi i32 [ %condval_2.sroa.5.0.copyload.1.2, %if.then532.1.2 ], [ 0, %if.end576.2 ], !dbg !84
  %condval_2.sroa.6.0.1.2 = phi i32 [ %condval_2.sroa.6.0.copyload.1.2, %if.then532.1.2 ], [ 0, %if.end576.2 ], !dbg !84
  %condval_2.sroa.7.0.1.2 = phi i32 [ %condval_2.sroa.7.0.copyload.1.2, %if.then532.1.2 ], [ 0, %if.end576.2 ], !dbg !84
  %add.ptr580.1.2 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 16, !dbg !255
  store i32 %condval_2.sroa.0.0.1.2, ptr addrspace(5) %add.ptr580.1.2, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 20, !dbg !254
  store i32 %condval_2.sroa.5.0.1.2, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.2, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 24, !dbg !254
  store i32 %condval_2.sroa.6.0.1.2, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.2, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 28, !dbg !254
  store i32 %condval_2.sroa.7.0.1.2, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.2, align 4, !dbg !254, !tbaa !30
  %condval_3.0.2 = select i1 %cmp624, i32 %condval_2.sroa.6.0.2, i32 %condval_2.sroa.0.0.2, !dbg !256
  %514 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %515 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %514) #13, !dbg !262
  %xor.i.i1171.2 = xor i32 %515, 8, !dbg !263
  %516 = and i32 %515, -64, !dbg !264
  %and.i.i1172.2 = add nsw i32 %516, 64, !dbg !264
  %cmp.not.i.i1173.2 = icmp slt i32 %xor.i.i1171.2, %and.i.i1172.2, !dbg !265
  %cond.i.i1174.2 = select i1 %cmp.not.i.i1173.2, i32 %xor.i.i1171.2, i32 %515, !dbg !266
  %shl.i.i1175.2 = shl i32 %cond.i.i1174.2, 2, !dbg !267
  %517 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.2, i32 %condval_3.0.2), !dbg !268
  %condval_3.0.1.2 = select i1 %cmp624, i32 %condval_2.sroa.7.0.2, i32 %condval_2.sroa.5.0.2, !dbg !256
  %518 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %519 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %518) #13, !dbg !262
  %xor.i.i1171.1.2 = xor i32 %519, 8, !dbg !263
  %520 = and i32 %519, -64, !dbg !264
  %and.i.i1172.1.2 = add nsw i32 %520, 64, !dbg !264
  %cmp.not.i.i1173.1.2 = icmp slt i32 %xor.i.i1171.1.2, %and.i.i1172.1.2, !dbg !265
  %cond.i.i1174.1.2 = select i1 %cmp.not.i.i1173.1.2, i32 %xor.i.i1171.1.2, i32 %519, !dbg !266
  %shl.i.i1175.1.2 = shl i32 %cond.i.i1174.1.2, 2, !dbg !267
  %521 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.1.2, i32 %condval_3.0.1.2), !dbg !268
  %arrayidx610.11326.2 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 24, !dbg !269
  %condval_3.0.11339.2 = select i1 %cmp624, i32 %condval_2.sroa.6.0.1.2, i32 %condval_2.sroa.0.0.1.2, !dbg !256
  %522 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %523 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %522) #13, !dbg !262
  %xor.i.i1171.11340.2 = xor i32 %523, 8, !dbg !263
  %524 = and i32 %523, -64, !dbg !264
  %and.i.i1172.11341.2 = add nsw i32 %524, 64, !dbg !264
  %cmp.not.i.i1173.11342.2 = icmp slt i32 %xor.i.i1171.11340.2, %and.i.i1172.11341.2, !dbg !265
  %cond.i.i1174.11343.2 = select i1 %cmp.not.i.i1173.11342.2, i32 %xor.i.i1171.11340.2, i32 %523, !dbg !266
  %shl.i.i1175.11344.2 = shl i32 %cond.i.i1174.11343.2, 2, !dbg !267
  %525 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.11344.2, i32 %condval_3.0.11339.2), !dbg !268
  %condval_3.0.1.1.2 = select i1 %cmp624, i32 %condval_2.sroa.7.0.1.2, i32 %condval_2.sroa.5.0.1.2, !dbg !256
  %526 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %527 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %526) #13, !dbg !262
  %xor.i.i1171.1.1.2 = xor i32 %527, 8, !dbg !263
  %528 = and i32 %527, -64, !dbg !264
  %and.i.i1172.1.1.2 = add nsw i32 %528, 64, !dbg !264
  %cmp.not.i.i1173.1.1.2 = icmp slt i32 %xor.i.i1171.1.1.2, %and.i.i1172.1.1.2, !dbg !265
  %cond.i.i1174.1.1.2 = select i1 %cmp.not.i.i1173.1.1.2, i32 %xor.i.i1171.1.1.2, i32 %527, !dbg !266
  %shl.i.i1175.1.1.2 = shl i32 %cond.i.i1174.1.1.2, 2, !dbg !267
  %529 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.1.1.2, i32 %condval_3.0.1.1.2), !dbg !268
  %condval_4.sroa.0.0.in.21432 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %365, !dbg !84
  %condval_4.sroa.0.0.21433 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.21432, align 2, !dbg !84, !tbaa !270
  %add.ptr580.1.2.val = load i16, ptr addrspace(5) %add.ptr580.1.2, align 2, !dbg !84
  %arrayidx610.11326.2.val = load i16, ptr addrspace(5) %arrayidx610.11326.2, align 2, !dbg !84
  %conv674.21436 = trunc i32 %517 to i16, !dbg !271
  %conv682.21438 = trunc i32 %525 to i16, !dbg !272
  %condval_6.sroa.0.0.21439 = select i1 %cmp624, i16 %condval_4.sroa.0.0.21433, i16 %conv674.21436, !dbg !273
  %condval_7.sroa.0.0.21440 = select i1 %cmp624, i16 %add.ptr580.1.2.val, i16 %conv682.21438, !dbg !274
  %condval_8.sroa.0.0.21441 = select i1 %cmp624, i16 %conv674.21436, i16 %condval_4.sroa.0.0.21433, !dbg !275
  %condval_9.sroa.0.0.21442 = select i1 %cmp624, i16 %conv682.21438, i16 %arrayidx610.11326.2.val, !dbg !276
  %add726.21443 = or disjoint i32 %mul720, %mul725, !dbg !277
  %530 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.21443, !dbg !278
  %add.ptr736.idx.21444 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.21445 = getelementptr inbounds i8, ptr addrspace(3) %530, i32 %add.ptr736.idx.21444, !dbg !278
  store i16 %condval_6.sroa.0.0.21439, ptr addrspace(3) %add.ptr736.21445, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.21446 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.21445, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.21440, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.21446, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.21447 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.21445, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.21441, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.21447, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.21448 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.21445, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.21442, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.21448, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.1.2 = or disjoint i32 %365, 1, !dbg !280
  %condval_4.sroa.0.0.in.1.2 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.1.2, !dbg !84
  %condval_4.sroa.0.0.1.2 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.1.2, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.1.2 = or disjoint i32 %idxprom661.pn.in.v, 1, !dbg !281
  %condval_5.sroa.0.0.in.1.2 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.1.2, !dbg !84
  %condval_5.sroa.0.0.1.2 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.1.2, align 2, !dbg !84, !tbaa !270
  %shr673.1.2 = lshr i32 %517, 16, !dbg !282
  %conv674.1.2 = trunc nuw i32 %shr673.1.2 to i16, !dbg !271
  %shr681.1.2 = lshr i32 %525, 16, !dbg !283
  %conv682.1.2 = trunc nuw i32 %shr681.1.2 to i16, !dbg !272
  %condval_6.sroa.0.0.1.2 = select i1 %cmp624, i16 %condval_4.sroa.0.0.1.2, i16 %conv674.1.2, !dbg !273
  %condval_7.sroa.0.0.1.2 = select i1 %cmp624, i16 %condval_5.sroa.0.0.1.2, i16 %conv682.1.2, !dbg !274
  %condval_8.sroa.0.0.1.2 = select i1 %cmp624, i16 %conv674.1.2, i16 %condval_4.sroa.0.0.1.2, !dbg !275
  %condval_9.sroa.0.0.1.2 = select i1 %cmp624, i16 %conv682.1.2, i16 %condval_5.sroa.0.0.1.2, !dbg !276
  %add721.1.2 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.1.2 = or disjoint i32 %add721.1.2, 256, !dbg !277
  %531 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.1.2, !dbg !278
  %xor732.1.2 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.1.2 = xor i32 %xor732.1.2, 8, !dbg !278
  %add.ptr736.1.2 = getelementptr inbounds i8, ptr addrspace(3) %531, i32 %add.ptr736.idx.1.2, !dbg !278
  store i16 %condval_6.sroa.0.0.1.2, ptr addrspace(3) %add.ptr736.1.2, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1.2, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.1.2, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.1.2, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1.2, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.1.2, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.1.2, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1.2, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.1.2, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.1.2, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.2.2 = or disjoint i32 %365, 2, !dbg !280
  %condval_4.sroa.0.0.in.2.2 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.2.2, !dbg !84
  %condval_4.sroa.0.0.2.2 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.2.2, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.2.2 = or disjoint i32 %idxprom661.pn.in.v, 2, !dbg !281
  %condval_5.sroa.0.0.in.2.2 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.2.2, !dbg !84
  %condval_5.sroa.0.0.2.2 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.2.2, align 2, !dbg !84, !tbaa !270
  %conv674.2.2 = trunc i32 %521 to i16, !dbg !271
  %conv682.2.2 = trunc i32 %529 to i16, !dbg !272
  %condval_6.sroa.0.0.2.2 = select i1 %cmp624, i16 %condval_4.sroa.0.0.2.2, i16 %conv674.2.2, !dbg !273
  %condval_7.sroa.0.0.2.2 = select i1 %cmp624, i16 %condval_5.sroa.0.0.2.2, i16 %conv682.2.2, !dbg !274
  %condval_8.sroa.0.0.2.2 = select i1 %cmp624, i16 %conv674.2.2, i16 %condval_4.sroa.0.0.2.2, !dbg !275
  %condval_9.sroa.0.0.2.2 = select i1 %cmp624, i16 %conv682.2.2, i16 %condval_5.sroa.0.0.2.2, !dbg !276
  %add721.2.2 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.2.2 = or disjoint i32 %add721.2.2, 512, !dbg !277
  %532 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.2.2, !dbg !278
  %xor732.2.2 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.2.2 = xor i32 %xor732.2.2, 16, !dbg !278
  %add.ptr736.2.2 = getelementptr inbounds i8, ptr addrspace(3) %532, i32 %add.ptr736.idx.2.2, !dbg !278
  store i16 %condval_6.sroa.0.0.2.2, ptr addrspace(3) %add.ptr736.2.2, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.2.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2.2, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.2.2, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.2.2, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.2.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2.2, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.2.2, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.2.2, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.2.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2.2, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.2.2, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.2.2, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.3.2 = or disjoint i32 %365, 3, !dbg !280
  %condval_4.sroa.0.0.in.3.2 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.3.2, !dbg !84
  %condval_4.sroa.0.0.3.2 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.3.2, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.3.2 = or disjoint i32 %idxprom661.pn.in.v, 3, !dbg !281
  %condval_5.sroa.0.0.in.3.2 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.3.2, !dbg !84
  %condval_5.sroa.0.0.3.2 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.3.2, align 2, !dbg !84, !tbaa !270
  %shr673.3.2 = lshr i32 %521, 16, !dbg !282
  %conv674.3.2 = trunc nuw i32 %shr673.3.2 to i16, !dbg !271
  %shr681.3.2 = lshr i32 %529, 16, !dbg !283
  %conv682.3.2 = trunc nuw i32 %shr681.3.2 to i16, !dbg !272
  %condval_6.sroa.0.0.3.2 = select i1 %cmp624, i16 %condval_4.sroa.0.0.3.2, i16 %conv674.3.2, !dbg !273
  %condval_7.sroa.0.0.3.2 = select i1 %cmp624, i16 %condval_5.sroa.0.0.3.2, i16 %conv682.3.2, !dbg !274
  %condval_8.sroa.0.0.3.2 = select i1 %cmp624, i16 %conv674.3.2, i16 %condval_4.sroa.0.0.3.2, !dbg !275
  %condval_9.sroa.0.0.3.2 = select i1 %cmp624, i16 %conv682.3.2, i16 %condval_5.sroa.0.0.3.2, !dbg !276
  %add721.3.2 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.3.2 = or disjoint i32 %add721.3.2, 768, !dbg !277
  %533 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.3.2, !dbg !278
  %xor732.3.2 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.3.2 = xor i32 %xor732.3.2, 24, !dbg !278
  %add.ptr736.3.2 = getelementptr inbounds i8, ptr addrspace(3) %533, i32 %add.ptr736.idx.3.2, !dbg !278
  store i16 %condval_6.sroa.0.0.3.2, ptr addrspace(3) %add.ptr736.3.2, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.3.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3.2, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.3.2, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.3.2, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.3.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3.2, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.3.2, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.3.2, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.3.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3.2, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.3.2, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.3.2, align 2, !dbg !279, !tbaa !30
  fence syncscope("warp") release, !dbg !284
  tail call void @llvm.mxc.barrier.warp(), !dbg !287
  fence syncscope("warp") acquire, !dbg !288
  %add753.21449 = or disjoint i32 %mul746, %mul752, !dbg !289
  %534 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.21449, !dbg !290
  %add.ptr763.idx.21450 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.21451 = getelementptr inbounds i8, ptr addrspace(3) %534, i32 %add.ptr763.idx.21450, !dbg !290
  %535 = load <4 x half>, ptr addrspace(3) %add.ptr763.21451, align 8, !dbg !291
  %add748.1.2 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.1.2 = or disjoint i32 %add748.1.2, 64, !dbg !289
  %536 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.1.2, !dbg !290
  %xor759.1.2 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.1.2 = xor i32 %xor759.1.2, 8, !dbg !290
  %add.ptr763.1.2 = getelementptr inbounds i8, ptr addrspace(3) %536, i32 %add.ptr763.idx.1.2, !dbg !290
  %537 = load <4 x half>, ptr addrspace(3) %add.ptr763.1.2, align 8, !dbg !291
  %add748.2.2 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.2.2 = or disjoint i32 %add748.2.2, 128, !dbg !289
  %538 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.2.2, !dbg !290
  %xor759.2.2 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.2.2 = xor i32 %xor759.2.2, 16, !dbg !290
  %add.ptr763.2.2 = getelementptr inbounds i8, ptr addrspace(3) %538, i32 %add.ptr763.idx.2.2, !dbg !290
  %539 = load <4 x half>, ptr addrspace(3) %add.ptr763.2.2, align 8, !dbg !291
  %add748.3.2 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.3.2 = or disjoint i32 %add748.3.2, 192, !dbg !289
  %540 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.3.2, !dbg !290
  %xor759.3.2 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.3.2 = xor i32 %xor759.3.2, 24, !dbg !290
  %add.ptr763.3.2 = getelementptr inbounds i8, ptr addrspace(3) %540, i32 %add.ptr763.idx.3.2, !dbg !290
  %541 = load <4 x half>, ptr addrspace(3) %add.ptr763.3.2, align 8, !dbg !291
  %542 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %535, <4 x half> %509, <4 x float> %output_acc.sroa.0.1), !dbg !292
  %543 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %537, <4 x half> %509, <4 x float> %output_acc.sroa.34.1), !dbg !292
  %544 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %539, <4 x half> %509, <4 x float> %output_acc.sroa.66.1), !dbg !292
  %545 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %541, <4 x half> %509, <4 x float> %output_acc.sroa.98.1), !dbg !292
  br label %if.end790.2, !dbg !293

if.end790.2:                                      ; preds = %if.end576.1.2, %if.end790.1
  %bc2181 = phi <4 x half> [ %148, %if.end790.1 ], [ %509, %if.end576.1.2 ], !dbg !84
  %output_acc.sroa.98.2 = phi <4 x float> [ %output_acc.sroa.98.1, %if.end790.1 ], [ %545, %if.end576.1.2 ], !dbg !84
  %output_acc.sroa.66.2 = phi <4 x float> [ %output_acc.sroa.66.1, %if.end790.1 ], [ %544, %if.end576.1.2 ], !dbg !84
  %output_acc.sroa.34.2 = phi <4 x float> [ %output_acc.sroa.34.1, %if.end790.1 ], [ %543, %if.end576.1.2 ], !dbg !84
  %output_acc.sroa.0.2 = phi <4 x float> [ %output_acc.sroa.0.1, %if.end790.1 ], [ %542, %if.end576.1.2 ], !dbg !84
  %546 = load i32, ptr addrspace(1) %arrayidx130.3, align 4, !dbg !187, !tbaa !30
  %mul444.3 = shl nsw i32 %546, 4, !dbg !188
  %cmp445.3 = icmp slt i32 %546, 0, !dbg !189
  %cmp448.not.3 = icmp sgt i32 %mul444.3, %1
  %or.cond1207.3 = select i1 %cmp445.3, i1 true, i1 %cmp448.not.3, !dbg !190
  br i1 %or.cond1207.3, label %if.end790.3, label %if.then449.3, !dbg !190

if.then449.3:                                     ; preds = %if.end790.2
  fence syncscope("warp") release, !dbg !191
  tail call void @llvm.mxc.barrier.warp(), !dbg !194
  fence syncscope("warp") acquire, !dbg !195
  %cmp454.3 = icmp eq i32 %shr324, 3, !dbg !196
  br i1 %cmp454.3, label %if.then455.3, label %if.end464.3, !dbg !197

if.then455.3:                                     ; preds = %if.then449.3
  %sub460.3 = fsub contract float %max_cache.sroa.0.7, %global_max.sroa.0.1.7, !dbg !198
  %mul461.3 = fmul contract float %sub460.3, 0x3FC7154760000000, !dbg !199
  %cmp.i.i1146.3 = fcmp contract olt float %mul461.3, -1.260000e+02, !dbg !200
  %cond.i.i1147.3 = select contract i1 %cmp.i.i1146.3, float 6.400000e+01, float 0.000000e+00, !dbg !200
  %add.i.i1148.3 = fadd contract float %mul461.3, %cond.i.i1147.3, !dbg !200
  %547 = tail call contract float @llvm.exp2.f32(float %add.i.i1148.3), !dbg !200
  %cond2.i.i1149.3 = select contract i1 %cmp.i.i1146.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !200
  %mul.i.i1150.3 = fmul contract float %cond2.i.i1149.3, %547, !dbg !200
  br label %if.end464.3, !dbg !202

if.end464.3:                                      ; preds = %if.then455.3, %if.then449.3
  %rescale.sroa.0.0.3 = phi float [ %mul.i.i1150.3, %if.then455.3 ], [ 0.000000e+00, %if.then449.3 ], !dbg !84
  %548 = bitcast float %rescale.sroa.0.0.3 to i32, !dbg !203
  %549 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !206
  %550 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %549) #13, !dbg !210
  %rem.i.i.3 = or disjoint i32 %and469, 48, !dbg !294
  %and.i.i1151.3 = and i32 %550, 1073741760, !dbg !211
  %add.i.i1152.3 = or disjoint i32 %and.i.i1151.3, %rem.i.i.3, !dbg !212
  %shl.i.i1153.3 = shl nuw i32 %add.i.i1152.3, 2, !dbg !213
  %551 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1153.3, i32 %548), !dbg !214
  %552 = bitcast i32 %551 to float, !dbg !215
  %553 = extractelement <4 x half> %190, i64 0, !dbg !216
  %conv.i1154.3 = fpext half %553 to float, !dbg !216
  %554 = extractelement <4 x half> %190, i64 1, !dbg !219
  %conv6.i.3 = fpext half %554 to float, !dbg !219
  %555 = extractelement <4 x half> %190, i64 2, !dbg !220
  %conv.i1156.3 = fpext half %555 to float, !dbg !220
  %556 = extractelement <4 x half> %190, i64 3, !dbg !222
  %conv6.i1158.3 = fpext half %556 to float, !dbg !222
  %mul494.3 = fmul contract float %552, %conv.i1154.3, !dbg !223
  %mul498.3 = fmul contract float %552, %conv6.i.3, !dbg !224
  %mul502.3 = fmul contract float %552, %conv.i1156.3, !dbg !225
  %mul506.3 = fmul contract float %552, %conv6.i1158.3, !dbg !226
  %557 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !231
  %558 = fptrunc float %mul494.3 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %557), !dbg !227, !noalias !231
  %559 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !236, !noalias !231
  %560 = fptrunc float %mul498.3 to half, !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %559), !dbg !236, !noalias !231
  %561 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !238, !noalias !242
  %562 = fptrunc float %mul502.3 to half, !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %561), !dbg !238, !noalias !242
  %563 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !247, !noalias !242
  %564 = fptrunc float %mul506.3 to half, !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %563), !dbg !247, !noalias !242
  %565 = insertelement <4 x half> poison, half %558, i64 0, !dbg !249
  %566 = insertelement <4 x half> %565, half %560, i64 1, !dbg !249
  %567 = insertelement <4 x half> %566, half %562, i64 2, !dbg !249
  %568 = insertelement <4 x half> %567, half %564, i64 3, !dbg !249
  %shr529.3 = lshr exact i32 %mul444.3, 1
  %add530.3 = add nuw nsw i32 %shr529.3, %shr140
  %cmp531.3 = icmp ult i32 %add530.3, 512
  %conv541.3 = zext nneg i32 %mul444.3 to i64
  br i1 %cmp531.3, label %if.then532.3, label %if.end576.3, !dbg !250

if.then532.3:                                     ; preds = %if.end464.3
  %569 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1244.3 = shl nuw nsw i64 %conv541.3, 7, !dbg !251
  %570 = getelementptr inbounds i8, ptr addrspace(4) %569, i64 %.idx1244.3, !dbg !251
  %condval_2.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %570, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %570, i64 4, !dbg !252
  %condval_2.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.3, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %570, i64 8, !dbg !252
  %condval_2.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.3, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %570, i64 12, !dbg !252
  %condval_2.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.3, align 4, !dbg !252, !tbaa !30
  br label %if.end576.3, !dbg !253

if.end576.3:                                      ; preds = %if.then532.3, %if.end464.3
  %condval_2.sroa.0.0.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3, %if.then532.3 ], [ 0, %if.end464.3 ], !dbg !84
  %condval_2.sroa.5.0.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3, %if.then532.3 ], [ 0, %if.end464.3 ], !dbg !84
  %condval_2.sroa.6.0.3 = phi i32 [ %condval_2.sroa.6.0.copyload.3, %if.then532.3 ], [ 0, %if.end464.3 ], !dbg !84
  %condval_2.sroa.7.0.3 = phi i32 [ %condval_2.sroa.7.0.copyload.3, %if.then532.3 ], [ 0, %if.end464.3 ], !dbg !84
  store i32 %condval_2.sroa.0.0.3, ptr addrspace(5) %v_fetch_local, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 4, !dbg !254
  store i32 %condval_2.sroa.5.0.3, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.3, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 8, !dbg !254
  store i32 %condval_2.sroa.6.0.3, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.3, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 12, !dbg !254
  store i32 %condval_2.sroa.7.0.3, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.3, align 4, !dbg !254, !tbaa !30
  br i1 %cmp531.3, label %if.then532.1.3, label %if.end576.1.3, !dbg !250

if.then532.1.3:                                   ; preds = %if.end576.3
  %571 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1244.1.3 = shl nuw nsw i64 %conv541.3, 7, !dbg !251
  %572 = getelementptr inbounds i8, ptr addrspace(4) %571, i64 %.idx1244.1.3, !dbg !251
  %add.ptr552.1.3 = getelementptr inbounds i8, ptr addrspace(4) %572, i64 128, !dbg !251
  %condval_2.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %add.ptr552.1.3, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %572, i64 132, !dbg !252
  %condval_2.sroa.5.0.copyload.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.3, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %572, i64 136, !dbg !252
  %condval_2.sroa.6.0.copyload.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.3, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %572, i64 140, !dbg !252
  %condval_2.sroa.7.0.copyload.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.3, align 4, !dbg !252, !tbaa !30
  br label %if.end576.1.3, !dbg !253

if.end576.1.3:                                    ; preds = %if.then532.1.3, %if.end576.3
  %condval_2.sroa.0.0.1.3 = phi i32 [ %condval_2.sroa.0.0.copyload.1.3, %if.then532.1.3 ], [ 0, %if.end576.3 ], !dbg !84
  %condval_2.sroa.5.0.1.3 = phi i32 [ %condval_2.sroa.5.0.copyload.1.3, %if.then532.1.3 ], [ 0, %if.end576.3 ], !dbg !84
  %condval_2.sroa.6.0.1.3 = phi i32 [ %condval_2.sroa.6.0.copyload.1.3, %if.then532.1.3 ], [ 0, %if.end576.3 ], !dbg !84
  %condval_2.sroa.7.0.1.3 = phi i32 [ %condval_2.sroa.7.0.copyload.1.3, %if.then532.1.3 ], [ 0, %if.end576.3 ], !dbg !84
  %add.ptr580.1.3 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 16, !dbg !255
  store i32 %condval_2.sroa.0.0.1.3, ptr addrspace(5) %add.ptr580.1.3, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 20, !dbg !254
  store i32 %condval_2.sroa.5.0.1.3, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.3, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 24, !dbg !254
  store i32 %condval_2.sroa.6.0.1.3, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.3, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 28, !dbg !254
  store i32 %condval_2.sroa.7.0.1.3, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.3, align 4, !dbg !254, !tbaa !30
  %condval_3.0.3 = select i1 %cmp624, i32 %condval_2.sroa.6.0.3, i32 %condval_2.sroa.0.0.3, !dbg !256
  %573 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %574 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %573) #13, !dbg !262
  %xor.i.i1171.3 = xor i32 %574, 8, !dbg !263
  %575 = and i32 %574, -64, !dbg !264
  %and.i.i1172.3 = add nsw i32 %575, 64, !dbg !264
  %cmp.not.i.i1173.3 = icmp slt i32 %xor.i.i1171.3, %and.i.i1172.3, !dbg !265
  %cond.i.i1174.3 = select i1 %cmp.not.i.i1173.3, i32 %xor.i.i1171.3, i32 %574, !dbg !266
  %shl.i.i1175.3 = shl i32 %cond.i.i1174.3, 2, !dbg !267
  %576 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.3, i32 %condval_3.0.3), !dbg !268
  %condval_3.0.1.3 = select i1 %cmp624, i32 %condval_2.sroa.7.0.3, i32 %condval_2.sroa.5.0.3, !dbg !256
  %577 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %578 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %577) #13, !dbg !262
  %xor.i.i1171.1.3 = xor i32 %578, 8, !dbg !263
  %579 = and i32 %578, -64, !dbg !264
  %and.i.i1172.1.3 = add nsw i32 %579, 64, !dbg !264
  %cmp.not.i.i1173.1.3 = icmp slt i32 %xor.i.i1171.1.3, %and.i.i1172.1.3, !dbg !265
  %cond.i.i1174.1.3 = select i1 %cmp.not.i.i1173.1.3, i32 %xor.i.i1171.1.3, i32 %578, !dbg !266
  %shl.i.i1175.1.3 = shl i32 %cond.i.i1174.1.3, 2, !dbg !267
  %580 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.1.3, i32 %condval_3.0.1.3), !dbg !268
  %arrayidx610.11326.3 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 24, !dbg !269
  %condval_3.0.11339.3 = select i1 %cmp624, i32 %condval_2.sroa.6.0.1.3, i32 %condval_2.sroa.0.0.1.3, !dbg !256
  %581 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %582 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %581) #13, !dbg !262
  %xor.i.i1171.11340.3 = xor i32 %582, 8, !dbg !263
  %583 = and i32 %582, -64, !dbg !264
  %and.i.i1172.11341.3 = add nsw i32 %583, 64, !dbg !264
  %cmp.not.i.i1173.11342.3 = icmp slt i32 %xor.i.i1171.11340.3, %and.i.i1172.11341.3, !dbg !265
  %cond.i.i1174.11343.3 = select i1 %cmp.not.i.i1173.11342.3, i32 %xor.i.i1171.11340.3, i32 %582, !dbg !266
  %shl.i.i1175.11344.3 = shl i32 %cond.i.i1174.11343.3, 2, !dbg !267
  %584 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.11344.3, i32 %condval_3.0.11339.3), !dbg !268
  %condval_3.0.1.1.3 = select i1 %cmp624, i32 %condval_2.sroa.7.0.1.3, i32 %condval_2.sroa.5.0.1.3, !dbg !256
  %585 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %586 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %585) #13, !dbg !262
  %xor.i.i1171.1.1.3 = xor i32 %586, 8, !dbg !263
  %587 = and i32 %586, -64, !dbg !264
  %and.i.i1172.1.1.3 = add nsw i32 %587, 64, !dbg !264
  %cmp.not.i.i1173.1.1.3 = icmp slt i32 %xor.i.i1171.1.1.3, %and.i.i1172.1.1.3, !dbg !265
  %cond.i.i1174.1.1.3 = select i1 %cmp.not.i.i1173.1.1.3, i32 %xor.i.i1171.1.1.3, i32 %586, !dbg !266
  %shl.i.i1175.1.1.3 = shl i32 %cond.i.i1174.1.1.3, 2, !dbg !267
  %588 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.1.1.3, i32 %condval_3.0.1.1.3), !dbg !268
  %condval_4.sroa.0.0.in.31452 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %365, !dbg !84
  %condval_4.sroa.0.0.31453 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.31452, align 2, !dbg !84, !tbaa !270
  %add.ptr580.1.3.val = load i16, ptr addrspace(5) %add.ptr580.1.3, align 2, !dbg !84
  %arrayidx610.11326.3.val = load i16, ptr addrspace(5) %arrayidx610.11326.3, align 2, !dbg !84
  %conv674.31456 = trunc i32 %576 to i16, !dbg !271
  %conv682.31458 = trunc i32 %584 to i16, !dbg !272
  %condval_6.sroa.0.0.31459 = select i1 %cmp624, i16 %condval_4.sroa.0.0.31453, i16 %conv674.31456, !dbg !273
  %condval_7.sroa.0.0.31460 = select i1 %cmp624, i16 %add.ptr580.1.3.val, i16 %conv682.31458, !dbg !274
  %condval_8.sroa.0.0.31461 = select i1 %cmp624, i16 %conv674.31456, i16 %condval_4.sroa.0.0.31453, !dbg !275
  %condval_9.sroa.0.0.31462 = select i1 %cmp624, i16 %conv682.31458, i16 %arrayidx610.11326.3.val, !dbg !276
  %add726.31463 = or disjoint i32 %mul720, %mul725, !dbg !277
  %589 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.31463, !dbg !278
  %add.ptr736.idx.31464 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.31465 = getelementptr inbounds i8, ptr addrspace(3) %589, i32 %add.ptr736.idx.31464, !dbg !278
  store i16 %condval_6.sroa.0.0.31459, ptr addrspace(3) %add.ptr736.31465, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.31466 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.31465, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.31460, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.31466, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.31467 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.31465, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.31461, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.31467, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.31468 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.31465, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.31462, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.31468, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.1.3 = or disjoint i32 %365, 1, !dbg !280
  %condval_4.sroa.0.0.in.1.3 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.1.3, !dbg !84
  %condval_4.sroa.0.0.1.3 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.1.3, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.1.3 = or disjoint i32 %idxprom661.pn.in.v, 1, !dbg !281
  %condval_5.sroa.0.0.in.1.3 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.1.3, !dbg !84
  %condval_5.sroa.0.0.1.3 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.1.3, align 2, !dbg !84, !tbaa !270
  %shr673.1.3 = lshr i32 %576, 16, !dbg !282
  %conv674.1.3 = trunc nuw i32 %shr673.1.3 to i16, !dbg !271
  %shr681.1.3 = lshr i32 %584, 16, !dbg !283
  %conv682.1.3 = trunc nuw i32 %shr681.1.3 to i16, !dbg !272
  %condval_6.sroa.0.0.1.3 = select i1 %cmp624, i16 %condval_4.sroa.0.0.1.3, i16 %conv674.1.3, !dbg !273
  %condval_7.sroa.0.0.1.3 = select i1 %cmp624, i16 %condval_5.sroa.0.0.1.3, i16 %conv682.1.3, !dbg !274
  %condval_8.sroa.0.0.1.3 = select i1 %cmp624, i16 %conv674.1.3, i16 %condval_4.sroa.0.0.1.3, !dbg !275
  %condval_9.sroa.0.0.1.3 = select i1 %cmp624, i16 %conv682.1.3, i16 %condval_5.sroa.0.0.1.3, !dbg !276
  %add721.1.3 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.1.3 = or disjoint i32 %add721.1.3, 256, !dbg !277
  %590 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.1.3, !dbg !278
  %xor732.1.3 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.1.3 = xor i32 %xor732.1.3, 8, !dbg !278
  %add.ptr736.1.3 = getelementptr inbounds i8, ptr addrspace(3) %590, i32 %add.ptr736.idx.1.3, !dbg !278
  store i16 %condval_6.sroa.0.0.1.3, ptr addrspace(3) %add.ptr736.1.3, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1.3, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.1.3, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.1.3, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1.3, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.1.3, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.1.3, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1.3, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.1.3, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.1.3, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.2.3 = or disjoint i32 %365, 2, !dbg !280
  %condval_4.sroa.0.0.in.2.3 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.2.3, !dbg !84
  %condval_4.sroa.0.0.2.3 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.2.3, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.2.3 = or disjoint i32 %idxprom661.pn.in.v, 2, !dbg !281
  %condval_5.sroa.0.0.in.2.3 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.2.3, !dbg !84
  %condval_5.sroa.0.0.2.3 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.2.3, align 2, !dbg !84, !tbaa !270
  %conv674.2.3 = trunc i32 %580 to i16, !dbg !271
  %conv682.2.3 = trunc i32 %588 to i16, !dbg !272
  %condval_6.sroa.0.0.2.3 = select i1 %cmp624, i16 %condval_4.sroa.0.0.2.3, i16 %conv674.2.3, !dbg !273
  %condval_7.sroa.0.0.2.3 = select i1 %cmp624, i16 %condval_5.sroa.0.0.2.3, i16 %conv682.2.3, !dbg !274
  %condval_8.sroa.0.0.2.3 = select i1 %cmp624, i16 %conv674.2.3, i16 %condval_4.sroa.0.0.2.3, !dbg !275
  %condval_9.sroa.0.0.2.3 = select i1 %cmp624, i16 %conv682.2.3, i16 %condval_5.sroa.0.0.2.3, !dbg !276
  %add721.2.3 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.2.3 = or disjoint i32 %add721.2.3, 512, !dbg !277
  %591 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.2.3, !dbg !278
  %xor732.2.3 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.2.3 = xor i32 %xor732.2.3, 16, !dbg !278
  %add.ptr736.2.3 = getelementptr inbounds i8, ptr addrspace(3) %591, i32 %add.ptr736.idx.2.3, !dbg !278
  store i16 %condval_6.sroa.0.0.2.3, ptr addrspace(3) %add.ptr736.2.3, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.2.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2.3, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.2.3, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.2.3, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.2.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2.3, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.2.3, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.2.3, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.2.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2.3, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.2.3, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.2.3, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.3.3 = or disjoint i32 %365, 3, !dbg !280
  %condval_4.sroa.0.0.in.3.3 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.3.3, !dbg !84
  %condval_4.sroa.0.0.3.3 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.3.3, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.3.3 = or disjoint i32 %idxprom661.pn.in.v, 3, !dbg !281
  %condval_5.sroa.0.0.in.3.3 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.3.3, !dbg !84
  %condval_5.sroa.0.0.3.3 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.3.3, align 2, !dbg !84, !tbaa !270
  %shr673.3.3 = lshr i32 %580, 16, !dbg !282
  %conv674.3.3 = trunc nuw i32 %shr673.3.3 to i16, !dbg !271
  %shr681.3.3 = lshr i32 %588, 16, !dbg !283
  %conv682.3.3 = trunc nuw i32 %shr681.3.3 to i16, !dbg !272
  %condval_6.sroa.0.0.3.3 = select i1 %cmp624, i16 %condval_4.sroa.0.0.3.3, i16 %conv674.3.3, !dbg !273
  %condval_7.sroa.0.0.3.3 = select i1 %cmp624, i16 %condval_5.sroa.0.0.3.3, i16 %conv682.3.3, !dbg !274
  %condval_8.sroa.0.0.3.3 = select i1 %cmp624, i16 %conv674.3.3, i16 %condval_4.sroa.0.0.3.3, !dbg !275
  %condval_9.sroa.0.0.3.3 = select i1 %cmp624, i16 %conv682.3.3, i16 %condval_5.sroa.0.0.3.3, !dbg !276
  %add721.3.3 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.3.3 = or disjoint i32 %add721.3.3, 768, !dbg !277
  %592 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.3.3, !dbg !278
  %xor732.3.3 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.3.3 = xor i32 %xor732.3.3, 24, !dbg !278
  %add.ptr736.3.3 = getelementptr inbounds i8, ptr addrspace(3) %592, i32 %add.ptr736.idx.3.3, !dbg !278
  store i16 %condval_6.sroa.0.0.3.3, ptr addrspace(3) %add.ptr736.3.3, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.3.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3.3, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.3.3, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.3.3, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.3.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3.3, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.3.3, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.3.3, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.3.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3.3, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.3.3, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.3.3, align 2, !dbg !279, !tbaa !30
  fence syncscope("warp") release, !dbg !284
  tail call void @llvm.mxc.barrier.warp(), !dbg !287
  fence syncscope("warp") acquire, !dbg !288
  %add753.31469 = or disjoint i32 %mul746, %mul752, !dbg !289
  %593 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.31469, !dbg !290
  %add.ptr763.idx.31470 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.31471 = getelementptr inbounds i8, ptr addrspace(3) %593, i32 %add.ptr763.idx.31470, !dbg !290
  %594 = load <4 x half>, ptr addrspace(3) %add.ptr763.31471, align 8, !dbg !291
  %add748.1.3 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.1.3 = or disjoint i32 %add748.1.3, 64, !dbg !289
  %595 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.1.3, !dbg !290
  %xor759.1.3 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.1.3 = xor i32 %xor759.1.3, 8, !dbg !290
  %add.ptr763.1.3 = getelementptr inbounds i8, ptr addrspace(3) %595, i32 %add.ptr763.idx.1.3, !dbg !290
  %596 = load <4 x half>, ptr addrspace(3) %add.ptr763.1.3, align 8, !dbg !291
  %add748.2.3 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.2.3 = or disjoint i32 %add748.2.3, 128, !dbg !289
  %597 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.2.3, !dbg !290
  %xor759.2.3 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.2.3 = xor i32 %xor759.2.3, 16, !dbg !290
  %add.ptr763.2.3 = getelementptr inbounds i8, ptr addrspace(3) %597, i32 %add.ptr763.idx.2.3, !dbg !290
  %598 = load <4 x half>, ptr addrspace(3) %add.ptr763.2.3, align 8, !dbg !291
  %add748.3.3 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.3.3 = or disjoint i32 %add748.3.3, 192, !dbg !289
  %599 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.3.3, !dbg !290
  %xor759.3.3 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.3.3 = xor i32 %xor759.3.3, 24, !dbg !290
  %add.ptr763.3.3 = getelementptr inbounds i8, ptr addrspace(3) %599, i32 %add.ptr763.idx.3.3, !dbg !290
  %600 = load <4 x half>, ptr addrspace(3) %add.ptr763.3.3, align 8, !dbg !291
  %601 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %594, <4 x half> %568, <4 x float> %output_acc.sroa.0.2), !dbg !292
  %602 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %596, <4 x half> %568, <4 x float> %output_acc.sroa.34.2), !dbg !292
  %603 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %598, <4 x half> %568, <4 x float> %output_acc.sroa.66.2), !dbg !292
  %604 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %600, <4 x half> %568, <4 x float> %output_acc.sroa.98.2), !dbg !292
  br label %if.end790.3, !dbg !293

if.end790.3:                                      ; preds = %if.end576.1.3, %if.end790.2
  %bc2185 = phi <4 x half> [ %190, %if.end790.2 ], [ %568, %if.end576.1.3 ], !dbg !84
  %output_acc.sroa.98.3 = phi <4 x float> [ %output_acc.sroa.98.2, %if.end790.2 ], [ %604, %if.end576.1.3 ], !dbg !84
  %output_acc.sroa.66.3 = phi <4 x float> [ %output_acc.sroa.66.2, %if.end790.2 ], [ %603, %if.end576.1.3 ], !dbg !84
  %output_acc.sroa.34.3 = phi <4 x float> [ %output_acc.sroa.34.2, %if.end790.2 ], [ %602, %if.end576.1.3 ], !dbg !84
  %output_acc.sroa.0.3 = phi <4 x float> [ %output_acc.sroa.0.2, %if.end790.2 ], [ %601, %if.end576.1.3 ], !dbg !84
  %605 = load i32, ptr addrspace(1) %arrayidx130.4, align 4, !dbg !187, !tbaa !30
  %mul444.4 = shl nsw i32 %605, 4, !dbg !188
  %cmp445.4 = icmp slt i32 %605, 0, !dbg !189
  %cmp448.not.4 = icmp sgt i32 %mul444.4, %1
  %or.cond1207.4 = select i1 %cmp445.4, i1 true, i1 %cmp448.not.4, !dbg !190
  br i1 %or.cond1207.4, label %if.end790.4, label %if.then449.4, !dbg !190

if.then449.4:                                     ; preds = %if.end790.3
  fence syncscope("warp") release, !dbg !191
  tail call void @llvm.mxc.barrier.warp(), !dbg !194
  fence syncscope("warp") acquire, !dbg !195
  %cmp454.4 = icmp ult i32 %2, 16, !dbg !196
  br i1 %cmp454.4, label %if.then455.4, label %if.end464.4, !dbg !197

if.then455.4:                                     ; preds = %if.then449.4
  %sub460.4 = fsub contract float %max_cache.sroa.11.7, %global_max.sroa.0.1.7, !dbg !198
  %mul461.4 = fmul contract float %sub460.4, 0x3FC7154760000000, !dbg !199
  %cmp.i.i1146.4 = fcmp contract olt float %mul461.4, -1.260000e+02, !dbg !200
  %cond.i.i1147.4 = select contract i1 %cmp.i.i1146.4, float 6.400000e+01, float 0.000000e+00, !dbg !200
  %add.i.i1148.4 = fadd contract float %mul461.4, %cond.i.i1147.4, !dbg !200
  %606 = tail call contract float @llvm.exp2.f32(float %add.i.i1148.4), !dbg !200
  %cond2.i.i1149.4 = select contract i1 %cmp.i.i1146.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !200
  %mul.i.i1150.4 = fmul contract float %cond2.i.i1149.4, %606, !dbg !200
  %607 = bitcast float %mul.i.i1150.4 to i32, !dbg !203
  br label %if.end464.4, !dbg !202

if.end464.4:                                      ; preds = %if.then455.4, %if.then449.4
  %rescale.sroa.0.0.4 = phi i32 [ %607, %if.then455.4 ], [ 0, %if.then449.4 ], !dbg !84
  %608 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !206
  %609 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %608) #13, !dbg !210
  %and.i.i1151.4 = and i32 %609, 1073741760, !dbg !211
  %add.i.i1152.4 = or disjoint i32 %and.i.i1151.4, %and469, !dbg !212
  %shl.i.i1153.4 = shl nuw i32 %add.i.i1152.4, 2, !dbg !213
  %610 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1153.4, i32 %rescale.sroa.0.0.4), !dbg !214
  %611 = bitcast i32 %610 to float, !dbg !215
  %612 = extractelement <4 x half> %232, i64 0, !dbg !216
  %conv.i1154.4 = fpext half %612 to float, !dbg !216
  %613 = extractelement <4 x half> %232, i64 1, !dbg !219
  %conv6.i.4 = fpext half %613 to float, !dbg !219
  %614 = extractelement <4 x half> %232, i64 2, !dbg !220
  %conv.i1156.4 = fpext half %614 to float, !dbg !220
  %615 = extractelement <4 x half> %232, i64 3, !dbg !222
  %conv6.i1158.4 = fpext half %615 to float, !dbg !222
  %mul494.4 = fmul contract float %611, %conv.i1154.4, !dbg !223
  %mul498.4 = fmul contract float %611, %conv6.i.4, !dbg !224
  %mul502.4 = fmul contract float %611, %conv.i1156.4, !dbg !225
  %mul506.4 = fmul contract float %611, %conv6.i1158.4, !dbg !226
  %616 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !231
  %617 = fptrunc float %mul494.4 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %616), !dbg !227, !noalias !231
  %618 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !236, !noalias !231
  %619 = fptrunc float %mul498.4 to half, !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %618), !dbg !236, !noalias !231
  %620 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !238, !noalias !242
  %621 = fptrunc float %mul502.4 to half, !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %620), !dbg !238, !noalias !242
  %622 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !247, !noalias !242
  %623 = fptrunc float %mul506.4 to half, !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %622), !dbg !247, !noalias !242
  %624 = insertelement <4 x half> poison, half %617, i64 0, !dbg !249
  %625 = insertelement <4 x half> %624, half %619, i64 1, !dbg !249
  %626 = insertelement <4 x half> %625, half %621, i64 2, !dbg !249
  %627 = insertelement <4 x half> %626, half %623, i64 3, !dbg !249
  %shr529.4 = lshr exact i32 %mul444.4, 1
  %add530.4 = add nuw nsw i32 %shr529.4, %shr140
  %cmp531.4 = icmp ult i32 %add530.4, 512
  %conv541.4 = zext nneg i32 %mul444.4 to i64
  br i1 %cmp531.4, label %if.then532.4, label %if.end576.4, !dbg !250

if.then532.4:                                     ; preds = %if.end464.4
  %628 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1244.4 = shl nuw nsw i64 %conv541.4, 7, !dbg !251
  %629 = getelementptr inbounds i8, ptr addrspace(4) %628, i64 %.idx1244.4, !dbg !251
  %condval_2.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %629, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %629, i64 4, !dbg !252
  %condval_2.sroa.5.0.copyload.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.4, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %629, i64 8, !dbg !252
  %condval_2.sroa.6.0.copyload.4 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.4, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %629, i64 12, !dbg !252
  %condval_2.sroa.7.0.copyload.4 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.4, align 4, !dbg !252, !tbaa !30
  br label %if.end576.4, !dbg !253

if.end576.4:                                      ; preds = %if.then532.4, %if.end464.4
  %condval_2.sroa.0.0.4 = phi i32 [ %condval_2.sroa.0.0.copyload.4, %if.then532.4 ], [ 0, %if.end464.4 ], !dbg !84
  %condval_2.sroa.5.0.4 = phi i32 [ %condval_2.sroa.5.0.copyload.4, %if.then532.4 ], [ 0, %if.end464.4 ], !dbg !84
  %condval_2.sroa.6.0.4 = phi i32 [ %condval_2.sroa.6.0.copyload.4, %if.then532.4 ], [ 0, %if.end464.4 ], !dbg !84
  %condval_2.sroa.7.0.4 = phi i32 [ %condval_2.sroa.7.0.copyload.4, %if.then532.4 ], [ 0, %if.end464.4 ], !dbg !84
  store i32 %condval_2.sroa.0.0.4, ptr addrspace(5) %v_fetch_local, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 4, !dbg !254
  store i32 %condval_2.sroa.5.0.4, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.4, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 8, !dbg !254
  store i32 %condval_2.sroa.6.0.4, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.4, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 12, !dbg !254
  store i32 %condval_2.sroa.7.0.4, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.4, align 4, !dbg !254, !tbaa !30
  br i1 %cmp531.4, label %if.then532.1.4, label %if.end576.1.4, !dbg !250

if.then532.1.4:                                   ; preds = %if.end576.4
  %630 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1244.1.4 = shl nuw nsw i64 %conv541.4, 7, !dbg !251
  %631 = getelementptr inbounds i8, ptr addrspace(4) %630, i64 %.idx1244.1.4, !dbg !251
  %add.ptr552.1.4 = getelementptr inbounds i8, ptr addrspace(4) %631, i64 128, !dbg !251
  %condval_2.sroa.0.0.copyload.1.4 = load i32, ptr addrspace(4) %add.ptr552.1.4, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %631, i64 132, !dbg !252
  %condval_2.sroa.5.0.copyload.1.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.4, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %631, i64 136, !dbg !252
  %condval_2.sroa.6.0.copyload.1.4 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.4, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %631, i64 140, !dbg !252
  %condval_2.sroa.7.0.copyload.1.4 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.4, align 4, !dbg !252, !tbaa !30
  br label %if.end576.1.4, !dbg !253

if.end576.1.4:                                    ; preds = %if.then532.1.4, %if.end576.4
  %condval_2.sroa.0.0.1.4 = phi i32 [ %condval_2.sroa.0.0.copyload.1.4, %if.then532.1.4 ], [ 0, %if.end576.4 ], !dbg !84
  %condval_2.sroa.5.0.1.4 = phi i32 [ %condval_2.sroa.5.0.copyload.1.4, %if.then532.1.4 ], [ 0, %if.end576.4 ], !dbg !84
  %condval_2.sroa.6.0.1.4 = phi i32 [ %condval_2.sroa.6.0.copyload.1.4, %if.then532.1.4 ], [ 0, %if.end576.4 ], !dbg !84
  %condval_2.sroa.7.0.1.4 = phi i32 [ %condval_2.sroa.7.0.copyload.1.4, %if.then532.1.4 ], [ 0, %if.end576.4 ], !dbg !84
  %add.ptr580.1.4 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 16, !dbg !255
  store i32 %condval_2.sroa.0.0.1.4, ptr addrspace(5) %add.ptr580.1.4, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 20, !dbg !254
  store i32 %condval_2.sroa.5.0.1.4, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.4, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 24, !dbg !254
  store i32 %condval_2.sroa.6.0.1.4, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.4, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 28, !dbg !254
  store i32 %condval_2.sroa.7.0.1.4, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.4, align 4, !dbg !254, !tbaa !30
  %condval_3.0.4 = select i1 %cmp624, i32 %condval_2.sroa.6.0.4, i32 %condval_2.sroa.0.0.4, !dbg !256
  %632 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %633 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %632) #13, !dbg !262
  %xor.i.i1171.4 = xor i32 %633, 8, !dbg !263
  %634 = and i32 %633, -64, !dbg !264
  %and.i.i1172.4 = add nsw i32 %634, 64, !dbg !264
  %cmp.not.i.i1173.4 = icmp slt i32 %xor.i.i1171.4, %and.i.i1172.4, !dbg !265
  %cond.i.i1174.4 = select i1 %cmp.not.i.i1173.4, i32 %xor.i.i1171.4, i32 %633, !dbg !266
  %shl.i.i1175.4 = shl i32 %cond.i.i1174.4, 2, !dbg !267
  %635 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.4, i32 %condval_3.0.4), !dbg !268
  %condval_3.0.1.4 = select i1 %cmp624, i32 %condval_2.sroa.7.0.4, i32 %condval_2.sroa.5.0.4, !dbg !256
  %636 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %637 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %636) #13, !dbg !262
  %xor.i.i1171.1.4 = xor i32 %637, 8, !dbg !263
  %638 = and i32 %637, -64, !dbg !264
  %and.i.i1172.1.4 = add nsw i32 %638, 64, !dbg !264
  %cmp.not.i.i1173.1.4 = icmp slt i32 %xor.i.i1171.1.4, %and.i.i1172.1.4, !dbg !265
  %cond.i.i1174.1.4 = select i1 %cmp.not.i.i1173.1.4, i32 %xor.i.i1171.1.4, i32 %637, !dbg !266
  %shl.i.i1175.1.4 = shl i32 %cond.i.i1174.1.4, 2, !dbg !267
  %639 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.1.4, i32 %condval_3.0.1.4), !dbg !268
  %arrayidx610.11326.4 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 24, !dbg !269
  %condval_3.0.11339.4 = select i1 %cmp624, i32 %condval_2.sroa.6.0.1.4, i32 %condval_2.sroa.0.0.1.4, !dbg !256
  %640 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %641 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %640) #13, !dbg !262
  %xor.i.i1171.11340.4 = xor i32 %641, 8, !dbg !263
  %642 = and i32 %641, -64, !dbg !264
  %and.i.i1172.11341.4 = add nsw i32 %642, 64, !dbg !264
  %cmp.not.i.i1173.11342.4 = icmp slt i32 %xor.i.i1171.11340.4, %and.i.i1172.11341.4, !dbg !265
  %cond.i.i1174.11343.4 = select i1 %cmp.not.i.i1173.11342.4, i32 %xor.i.i1171.11340.4, i32 %641, !dbg !266
  %shl.i.i1175.11344.4 = shl i32 %cond.i.i1174.11343.4, 2, !dbg !267
  %643 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.11344.4, i32 %condval_3.0.11339.4), !dbg !268
  %condval_3.0.1.1.4 = select i1 %cmp624, i32 %condval_2.sroa.7.0.1.4, i32 %condval_2.sroa.5.0.1.4, !dbg !256
  %644 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %645 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %644) #13, !dbg !262
  %xor.i.i1171.1.1.4 = xor i32 %645, 8, !dbg !263
  %646 = and i32 %645, -64, !dbg !264
  %and.i.i1172.1.1.4 = add nsw i32 %646, 64, !dbg !264
  %cmp.not.i.i1173.1.1.4 = icmp slt i32 %xor.i.i1171.1.1.4, %and.i.i1172.1.1.4, !dbg !265
  %cond.i.i1174.1.1.4 = select i1 %cmp.not.i.i1173.1.1.4, i32 %xor.i.i1171.1.1.4, i32 %645, !dbg !266
  %shl.i.i1175.1.1.4 = shl i32 %cond.i.i1174.1.1.4, 2, !dbg !267
  %647 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.1.1.4, i32 %condval_3.0.1.1.4), !dbg !268
  %condval_4.sroa.0.0.in.4 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %365, !dbg !84
  %condval_4.sroa.0.0.4 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.4, align 2, !dbg !84, !tbaa !270
  %add.ptr580.1.4.val = load i16, ptr addrspace(5) %add.ptr580.1.4, align 2, !dbg !84
  %arrayidx610.11326.4.val = load i16, ptr addrspace(5) %arrayidx610.11326.4, align 2, !dbg !84
  %conv674.4 = trunc i32 %635 to i16, !dbg !271
  %conv682.4 = trunc i32 %643 to i16, !dbg !272
  %condval_6.sroa.0.0.4 = select i1 %cmp624, i16 %condval_4.sroa.0.0.4, i16 %conv674.4, !dbg !273
  %condval_7.sroa.0.0.4 = select i1 %cmp624, i16 %add.ptr580.1.4.val, i16 %conv682.4, !dbg !274
  %condval_8.sroa.0.0.4 = select i1 %cmp624, i16 %conv674.4, i16 %condval_4.sroa.0.0.4, !dbg !275
  %condval_9.sroa.0.0.4 = select i1 %cmp624, i16 %conv682.4, i16 %arrayidx610.11326.4.val, !dbg !276
  %add726.4 = or disjoint i32 %mul720, %mul725, !dbg !277
  %648 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.4, !dbg !278
  %add.ptr736.idx.4 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.4 = getelementptr inbounds i8, ptr addrspace(3) %648, i32 %add.ptr736.idx.4, !dbg !278
  store i16 %condval_6.sroa.0.0.4, ptr addrspace(3) %add.ptr736.4, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.4, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.4, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.4, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.4, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.4, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.4, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.4, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.4, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.4, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.1.4 = or disjoint i32 %365, 1, !dbg !280
  %condval_4.sroa.0.0.in.1.4 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.1.4, !dbg !84
  %condval_4.sroa.0.0.1.4 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.1.4, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.1.4 = or disjoint i32 %idxprom661.pn.in.v, 1, !dbg !281
  %condval_5.sroa.0.0.in.1.4 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.1.4, !dbg !84
  %condval_5.sroa.0.0.1.4 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.1.4, align 2, !dbg !84, !tbaa !270
  %shr673.1.4 = lshr i32 %635, 16, !dbg !282
  %conv674.1.4 = trunc nuw i32 %shr673.1.4 to i16, !dbg !271
  %shr681.1.4 = lshr i32 %643, 16, !dbg !283
  %conv682.1.4 = trunc nuw i32 %shr681.1.4 to i16, !dbg !272
  %condval_6.sroa.0.0.1.4 = select i1 %cmp624, i16 %condval_4.sroa.0.0.1.4, i16 %conv674.1.4, !dbg !273
  %condval_7.sroa.0.0.1.4 = select i1 %cmp624, i16 %condval_5.sroa.0.0.1.4, i16 %conv682.1.4, !dbg !274
  %condval_8.sroa.0.0.1.4 = select i1 %cmp624, i16 %conv674.1.4, i16 %condval_4.sroa.0.0.1.4, !dbg !275
  %condval_9.sroa.0.0.1.4 = select i1 %cmp624, i16 %conv682.1.4, i16 %condval_5.sroa.0.0.1.4, !dbg !276
  %add721.1.4 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.1.4 = or disjoint i32 %add721.1.4, 256, !dbg !277
  %649 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.1.4, !dbg !278
  %xor732.1.4 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.1.4 = xor i32 %xor732.1.4, 8, !dbg !278
  %add.ptr736.1.4 = getelementptr inbounds i8, ptr addrspace(3) %649, i32 %add.ptr736.idx.1.4, !dbg !278
  store i16 %condval_6.sroa.0.0.1.4, ptr addrspace(3) %add.ptr736.1.4, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1.4, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.1.4, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.1.4, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1.4, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.1.4, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.1.4, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1.4, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.1.4, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.1.4, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.2.4 = or disjoint i32 %365, 2, !dbg !280
  %condval_4.sroa.0.0.in.2.4 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.2.4, !dbg !84
  %condval_4.sroa.0.0.2.4 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.2.4, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.2.4 = or disjoint i32 %idxprom661.pn.in.v, 2, !dbg !281
  %condval_5.sroa.0.0.in.2.4 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.2.4, !dbg !84
  %condval_5.sroa.0.0.2.4 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.2.4, align 2, !dbg !84, !tbaa !270
  %conv674.2.4 = trunc i32 %639 to i16, !dbg !271
  %conv682.2.4 = trunc i32 %647 to i16, !dbg !272
  %condval_6.sroa.0.0.2.4 = select i1 %cmp624, i16 %condval_4.sroa.0.0.2.4, i16 %conv674.2.4, !dbg !273
  %condval_7.sroa.0.0.2.4 = select i1 %cmp624, i16 %condval_5.sroa.0.0.2.4, i16 %conv682.2.4, !dbg !274
  %condval_8.sroa.0.0.2.4 = select i1 %cmp624, i16 %conv674.2.4, i16 %condval_4.sroa.0.0.2.4, !dbg !275
  %condval_9.sroa.0.0.2.4 = select i1 %cmp624, i16 %conv682.2.4, i16 %condval_5.sroa.0.0.2.4, !dbg !276
  %add721.2.4 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.2.4 = or disjoint i32 %add721.2.4, 512, !dbg !277
  %650 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.2.4, !dbg !278
  %xor732.2.4 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.2.4 = xor i32 %xor732.2.4, 16, !dbg !278
  %add.ptr736.2.4 = getelementptr inbounds i8, ptr addrspace(3) %650, i32 %add.ptr736.idx.2.4, !dbg !278
  store i16 %condval_6.sroa.0.0.2.4, ptr addrspace(3) %add.ptr736.2.4, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.2.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2.4, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.2.4, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.2.4, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.2.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2.4, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.2.4, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.2.4, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.2.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2.4, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.2.4, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.2.4, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.3.4 = or disjoint i32 %365, 3, !dbg !280
  %condval_4.sroa.0.0.in.3.4 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.3.4, !dbg !84
  %condval_4.sroa.0.0.3.4 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.3.4, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.3.4 = or disjoint i32 %idxprom661.pn.in.v, 3, !dbg !281
  %condval_5.sroa.0.0.in.3.4 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.3.4, !dbg !84
  %condval_5.sroa.0.0.3.4 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.3.4, align 2, !dbg !84, !tbaa !270
  %shr673.3.4 = lshr i32 %639, 16, !dbg !282
  %conv674.3.4 = trunc nuw i32 %shr673.3.4 to i16, !dbg !271
  %shr681.3.4 = lshr i32 %647, 16, !dbg !283
  %conv682.3.4 = trunc nuw i32 %shr681.3.4 to i16, !dbg !272
  %condval_6.sroa.0.0.3.4 = select i1 %cmp624, i16 %condval_4.sroa.0.0.3.4, i16 %conv674.3.4, !dbg !273
  %condval_7.sroa.0.0.3.4 = select i1 %cmp624, i16 %condval_5.sroa.0.0.3.4, i16 %conv682.3.4, !dbg !274
  %condval_8.sroa.0.0.3.4 = select i1 %cmp624, i16 %conv674.3.4, i16 %condval_4.sroa.0.0.3.4, !dbg !275
  %condval_9.sroa.0.0.3.4 = select i1 %cmp624, i16 %conv682.3.4, i16 %condval_5.sroa.0.0.3.4, !dbg !276
  %add721.3.4 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.3.4 = or disjoint i32 %add721.3.4, 768, !dbg !277
  %651 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.3.4, !dbg !278
  %xor732.3.4 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.3.4 = xor i32 %xor732.3.4, 24, !dbg !278
  %add.ptr736.3.4 = getelementptr inbounds i8, ptr addrspace(3) %651, i32 %add.ptr736.idx.3.4, !dbg !278
  store i16 %condval_6.sroa.0.0.3.4, ptr addrspace(3) %add.ptr736.3.4, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.3.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3.4, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.3.4, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.3.4, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.3.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3.4, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.3.4, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.3.4, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.3.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3.4, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.3.4, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.3.4, align 2, !dbg !279, !tbaa !30
  fence syncscope("warp") release, !dbg !284
  tail call void @llvm.mxc.barrier.warp(), !dbg !287
  fence syncscope("warp") acquire, !dbg !288
  %add753.4 = or disjoint i32 %mul746, %mul752, !dbg !289
  %652 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.4, !dbg !290
  %add.ptr763.idx.4 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.4 = getelementptr inbounds i8, ptr addrspace(3) %652, i32 %add.ptr763.idx.4, !dbg !290
  %653 = load <4 x half>, ptr addrspace(3) %add.ptr763.4, align 8, !dbg !291
  %add748.1.4 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.1.4 = or disjoint i32 %add748.1.4, 64, !dbg !289
  %654 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.1.4, !dbg !290
  %xor759.1.4 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.1.4 = xor i32 %xor759.1.4, 8, !dbg !290
  %add.ptr763.1.4 = getelementptr inbounds i8, ptr addrspace(3) %654, i32 %add.ptr763.idx.1.4, !dbg !290
  %655 = load <4 x half>, ptr addrspace(3) %add.ptr763.1.4, align 8, !dbg !291
  %add748.2.4 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.2.4 = or disjoint i32 %add748.2.4, 128, !dbg !289
  %656 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.2.4, !dbg !290
  %xor759.2.4 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.2.4 = xor i32 %xor759.2.4, 16, !dbg !290
  %add.ptr763.2.4 = getelementptr inbounds i8, ptr addrspace(3) %656, i32 %add.ptr763.idx.2.4, !dbg !290
  %657 = load <4 x half>, ptr addrspace(3) %add.ptr763.2.4, align 8, !dbg !291
  %add748.3.4 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.3.4 = or disjoint i32 %add748.3.4, 192, !dbg !289
  %658 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.3.4, !dbg !290
  %xor759.3.4 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.3.4 = xor i32 %xor759.3.4, 24, !dbg !290
  %add.ptr763.3.4 = getelementptr inbounds i8, ptr addrspace(3) %658, i32 %add.ptr763.idx.3.4, !dbg !290
  %659 = load <4 x half>, ptr addrspace(3) %add.ptr763.3.4, align 8, !dbg !291
  %660 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %653, <4 x half> %627, <4 x float> %output_acc.sroa.0.3), !dbg !292
  %661 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %655, <4 x half> %627, <4 x float> %output_acc.sroa.34.3), !dbg !292
  %662 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %657, <4 x half> %627, <4 x float> %output_acc.sroa.66.3), !dbg !292
  %663 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %659, <4 x half> %627, <4 x float> %output_acc.sroa.98.3), !dbg !292
  br label %if.end790.4, !dbg !293

if.end790.4:                                      ; preds = %if.end576.1.4, %if.end790.3
  %bc2189 = phi <4 x half> [ %232, %if.end790.3 ], [ %627, %if.end576.1.4 ], !dbg !84
  %output_acc.sroa.98.4 = phi <4 x float> [ %output_acc.sroa.98.3, %if.end790.3 ], [ %663, %if.end576.1.4 ], !dbg !84
  %output_acc.sroa.66.4 = phi <4 x float> [ %output_acc.sroa.66.3, %if.end790.3 ], [ %662, %if.end576.1.4 ], !dbg !84
  %output_acc.sroa.34.4 = phi <4 x float> [ %output_acc.sroa.34.3, %if.end790.3 ], [ %661, %if.end576.1.4 ], !dbg !84
  %output_acc.sroa.0.4 = phi <4 x float> [ %output_acc.sroa.0.3, %if.end790.3 ], [ %660, %if.end576.1.4 ], !dbg !84
  %664 = load i32, ptr addrspace(1) %arrayidx130.5, align 4, !dbg !187, !tbaa !30
  %mul444.5 = shl nsw i32 %664, 4, !dbg !188
  %cmp445.5 = icmp slt i32 %664, 0, !dbg !189
  %cmp448.not.5 = icmp sgt i32 %mul444.5, %1
  %or.cond1207.5 = select i1 %cmp445.5, i1 true, i1 %cmp448.not.5, !dbg !190
  br i1 %or.cond1207.5, label %if.end790.5, label %if.then449.5, !dbg !190

if.then449.5:                                     ; preds = %if.end790.4
  fence syncscope("warp") release, !dbg !191
  tail call void @llvm.mxc.barrier.warp(), !dbg !194
  fence syncscope("warp") acquire, !dbg !195
  %cmp454.5 = icmp eq i32 %shr324, 1, !dbg !196
  br i1 %cmp454.5, label %if.then455.5, label %if.end464.5, !dbg !197

if.then455.5:                                     ; preds = %if.then449.5
  %sub460.5 = fsub contract float %max_cache.sroa.11.7, %global_max.sroa.0.1.7, !dbg !198
  %mul461.5 = fmul contract float %sub460.5, 0x3FC7154760000000, !dbg !199
  %cmp.i.i1146.5 = fcmp contract olt float %mul461.5, -1.260000e+02, !dbg !200
  %cond.i.i1147.5 = select contract i1 %cmp.i.i1146.5, float 6.400000e+01, float 0.000000e+00, !dbg !200
  %add.i.i1148.5 = fadd contract float %mul461.5, %cond.i.i1147.5, !dbg !200
  %665 = tail call contract float @llvm.exp2.f32(float %add.i.i1148.5), !dbg !200
  %cond2.i.i1149.5 = select contract i1 %cmp.i.i1146.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !200
  %mul.i.i1150.5 = fmul contract float %cond2.i.i1149.5, %665, !dbg !200
  %666 = bitcast float %mul.i.i1150.5 to i32, !dbg !203
  br label %if.end464.5, !dbg !202

if.end464.5:                                      ; preds = %if.then455.5, %if.then449.5
  %rescale.sroa.0.0.5 = phi i32 [ %666, %if.then455.5 ], [ 0, %if.then449.5 ], !dbg !84
  %667 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !206
  %668 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %667) #13, !dbg !210
  %rem.i.i.5 = or disjoint i32 %and469, 16, !dbg !294
  %and.i.i1151.5 = and i32 %668, 1073741760, !dbg !211
  %add.i.i1152.5 = or disjoint i32 %and.i.i1151.5, %rem.i.i.5, !dbg !212
  %shl.i.i1153.5 = shl nuw i32 %add.i.i1152.5, 2, !dbg !213
  %669 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1153.5, i32 %rescale.sroa.0.0.5), !dbg !214
  %670 = bitcast i32 %669 to float, !dbg !215
  %671 = extractelement <4 x half> %274, i64 0, !dbg !216
  %conv.i1154.5 = fpext half %671 to float, !dbg !216
  %672 = extractelement <4 x half> %274, i64 1, !dbg !219
  %conv6.i.5 = fpext half %672 to float, !dbg !219
  %673 = extractelement <4 x half> %274, i64 2, !dbg !220
  %conv.i1156.5 = fpext half %673 to float, !dbg !220
  %674 = extractelement <4 x half> %274, i64 3, !dbg !222
  %conv6.i1158.5 = fpext half %674 to float, !dbg !222
  %mul494.5 = fmul contract float %670, %conv.i1154.5, !dbg !223
  %mul498.5 = fmul contract float %670, %conv6.i.5, !dbg !224
  %mul502.5 = fmul contract float %670, %conv.i1156.5, !dbg !225
  %mul506.5 = fmul contract float %670, %conv6.i1158.5, !dbg !226
  %675 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !231
  %676 = fptrunc float %mul494.5 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %675), !dbg !227, !noalias !231
  %677 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !236, !noalias !231
  %678 = fptrunc float %mul498.5 to half, !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %677), !dbg !236, !noalias !231
  %679 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !238, !noalias !242
  %680 = fptrunc float %mul502.5 to half, !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %679), !dbg !238, !noalias !242
  %681 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !247, !noalias !242
  %682 = fptrunc float %mul506.5 to half, !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %681), !dbg !247, !noalias !242
  %683 = insertelement <4 x half> poison, half %676, i64 0, !dbg !249
  %684 = insertelement <4 x half> %683, half %678, i64 1, !dbg !249
  %685 = insertelement <4 x half> %684, half %680, i64 2, !dbg !249
  %686 = insertelement <4 x half> %685, half %682, i64 3, !dbg !249
  %shr529.5 = lshr exact i32 %mul444.5, 1
  %add530.5 = add nuw nsw i32 %shr529.5, %shr140
  %cmp531.5 = icmp ult i32 %add530.5, 512
  %conv541.5 = zext nneg i32 %mul444.5 to i64
  br i1 %cmp531.5, label %if.then532.5, label %if.end576.5, !dbg !250

if.then532.5:                                     ; preds = %if.end464.5
  %687 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1244.5 = shl nuw nsw i64 %conv541.5, 7, !dbg !251
  %688 = getelementptr inbounds i8, ptr addrspace(4) %687, i64 %.idx1244.5, !dbg !251
  %condval_2.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %688, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %688, i64 4, !dbg !252
  %condval_2.sroa.5.0.copyload.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.5, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %688, i64 8, !dbg !252
  %condval_2.sroa.6.0.copyload.5 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.5, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %688, i64 12, !dbg !252
  %condval_2.sroa.7.0.copyload.5 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.5, align 4, !dbg !252, !tbaa !30
  br label %if.end576.5, !dbg !253

if.end576.5:                                      ; preds = %if.then532.5, %if.end464.5
  %condval_2.sroa.0.0.5 = phi i32 [ %condval_2.sroa.0.0.copyload.5, %if.then532.5 ], [ 0, %if.end464.5 ], !dbg !84
  %condval_2.sroa.5.0.5 = phi i32 [ %condval_2.sroa.5.0.copyload.5, %if.then532.5 ], [ 0, %if.end464.5 ], !dbg !84
  %condval_2.sroa.6.0.5 = phi i32 [ %condval_2.sroa.6.0.copyload.5, %if.then532.5 ], [ 0, %if.end464.5 ], !dbg !84
  %condval_2.sroa.7.0.5 = phi i32 [ %condval_2.sroa.7.0.copyload.5, %if.then532.5 ], [ 0, %if.end464.5 ], !dbg !84
  store i32 %condval_2.sroa.0.0.5, ptr addrspace(5) %v_fetch_local, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 4, !dbg !254
  store i32 %condval_2.sroa.5.0.5, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.5, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 8, !dbg !254
  store i32 %condval_2.sroa.6.0.5, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.5, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 12, !dbg !254
  store i32 %condval_2.sroa.7.0.5, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.5, align 4, !dbg !254, !tbaa !30
  br i1 %cmp531.5, label %if.then532.1.5, label %if.end576.1.5, !dbg !250

if.then532.1.5:                                   ; preds = %if.end576.5
  %689 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1244.1.5 = shl nuw nsw i64 %conv541.5, 7, !dbg !251
  %690 = getelementptr inbounds i8, ptr addrspace(4) %689, i64 %.idx1244.1.5, !dbg !251
  %add.ptr552.1.5 = getelementptr inbounds i8, ptr addrspace(4) %690, i64 128, !dbg !251
  %condval_2.sroa.0.0.copyload.1.5 = load i32, ptr addrspace(4) %add.ptr552.1.5, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %690, i64 132, !dbg !252
  %condval_2.sroa.5.0.copyload.1.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.5, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %690, i64 136, !dbg !252
  %condval_2.sroa.6.0.copyload.1.5 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.5, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %690, i64 140, !dbg !252
  %condval_2.sroa.7.0.copyload.1.5 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.5, align 4, !dbg !252, !tbaa !30
  br label %if.end576.1.5, !dbg !253

if.end576.1.5:                                    ; preds = %if.then532.1.5, %if.end576.5
  %condval_2.sroa.0.0.1.5 = phi i32 [ %condval_2.sroa.0.0.copyload.1.5, %if.then532.1.5 ], [ 0, %if.end576.5 ], !dbg !84
  %condval_2.sroa.5.0.1.5 = phi i32 [ %condval_2.sroa.5.0.copyload.1.5, %if.then532.1.5 ], [ 0, %if.end576.5 ], !dbg !84
  %condval_2.sroa.6.0.1.5 = phi i32 [ %condval_2.sroa.6.0.copyload.1.5, %if.then532.1.5 ], [ 0, %if.end576.5 ], !dbg !84
  %condval_2.sroa.7.0.1.5 = phi i32 [ %condval_2.sroa.7.0.copyload.1.5, %if.then532.1.5 ], [ 0, %if.end576.5 ], !dbg !84
  %add.ptr580.1.5 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 16, !dbg !255
  store i32 %condval_2.sroa.0.0.1.5, ptr addrspace(5) %add.ptr580.1.5, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 20, !dbg !254
  store i32 %condval_2.sroa.5.0.1.5, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.5, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 24, !dbg !254
  store i32 %condval_2.sroa.6.0.1.5, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.5, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 28, !dbg !254
  store i32 %condval_2.sroa.7.0.1.5, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.5, align 4, !dbg !254, !tbaa !30
  %condval_3.0.5 = select i1 %cmp624, i32 %condval_2.sroa.6.0.5, i32 %condval_2.sroa.0.0.5, !dbg !256
  %691 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %692 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %691) #13, !dbg !262
  %xor.i.i1171.5 = xor i32 %692, 8, !dbg !263
  %693 = and i32 %692, -64, !dbg !264
  %and.i.i1172.5 = add nsw i32 %693, 64, !dbg !264
  %cmp.not.i.i1173.5 = icmp slt i32 %xor.i.i1171.5, %and.i.i1172.5, !dbg !265
  %cond.i.i1174.5 = select i1 %cmp.not.i.i1173.5, i32 %xor.i.i1171.5, i32 %692, !dbg !266
  %shl.i.i1175.5 = shl i32 %cond.i.i1174.5, 2, !dbg !267
  %694 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.5, i32 %condval_3.0.5), !dbg !268
  %condval_3.0.1.5 = select i1 %cmp624, i32 %condval_2.sroa.7.0.5, i32 %condval_2.sroa.5.0.5, !dbg !256
  %695 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %696 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %695) #13, !dbg !262
  %xor.i.i1171.1.5 = xor i32 %696, 8, !dbg !263
  %697 = and i32 %696, -64, !dbg !264
  %and.i.i1172.1.5 = add nsw i32 %697, 64, !dbg !264
  %cmp.not.i.i1173.1.5 = icmp slt i32 %xor.i.i1171.1.5, %and.i.i1172.1.5, !dbg !265
  %cond.i.i1174.1.5 = select i1 %cmp.not.i.i1173.1.5, i32 %xor.i.i1171.1.5, i32 %696, !dbg !266
  %shl.i.i1175.1.5 = shl i32 %cond.i.i1174.1.5, 2, !dbg !267
  %698 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.1.5, i32 %condval_3.0.1.5), !dbg !268
  %arrayidx610.11326.5 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 24, !dbg !269
  %condval_3.0.11339.5 = select i1 %cmp624, i32 %condval_2.sroa.6.0.1.5, i32 %condval_2.sroa.0.0.1.5, !dbg !256
  %699 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %700 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %699) #13, !dbg !262
  %xor.i.i1171.11340.5 = xor i32 %700, 8, !dbg !263
  %701 = and i32 %700, -64, !dbg !264
  %and.i.i1172.11341.5 = add nsw i32 %701, 64, !dbg !264
  %cmp.not.i.i1173.11342.5 = icmp slt i32 %xor.i.i1171.11340.5, %and.i.i1172.11341.5, !dbg !265
  %cond.i.i1174.11343.5 = select i1 %cmp.not.i.i1173.11342.5, i32 %xor.i.i1171.11340.5, i32 %700, !dbg !266
  %shl.i.i1175.11344.5 = shl i32 %cond.i.i1174.11343.5, 2, !dbg !267
  %702 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.11344.5, i32 %condval_3.0.11339.5), !dbg !268
  %condval_3.0.1.1.5 = select i1 %cmp624, i32 %condval_2.sroa.7.0.1.5, i32 %condval_2.sroa.5.0.1.5, !dbg !256
  %703 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %704 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %703) #13, !dbg !262
  %xor.i.i1171.1.1.5 = xor i32 %704, 8, !dbg !263
  %705 = and i32 %704, -64, !dbg !264
  %and.i.i1172.1.1.5 = add nsw i32 %705, 64, !dbg !264
  %cmp.not.i.i1173.1.1.5 = icmp slt i32 %xor.i.i1171.1.1.5, %and.i.i1172.1.1.5, !dbg !265
  %cond.i.i1174.1.1.5 = select i1 %cmp.not.i.i1173.1.1.5, i32 %xor.i.i1171.1.1.5, i32 %704, !dbg !266
  %shl.i.i1175.1.1.5 = shl i32 %cond.i.i1174.1.1.5, 2, !dbg !267
  %706 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.1.1.5, i32 %condval_3.0.1.1.5), !dbg !268
  %condval_4.sroa.0.0.in.5 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %365, !dbg !84
  %condval_4.sroa.0.0.5 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.5, align 2, !dbg !84, !tbaa !270
  %add.ptr580.1.5.val = load i16, ptr addrspace(5) %add.ptr580.1.5, align 2, !dbg !84
  %arrayidx610.11326.5.val = load i16, ptr addrspace(5) %arrayidx610.11326.5, align 2, !dbg !84
  %conv674.5 = trunc i32 %694 to i16, !dbg !271
  %conv682.5 = trunc i32 %702 to i16, !dbg !272
  %condval_6.sroa.0.0.5 = select i1 %cmp624, i16 %condval_4.sroa.0.0.5, i16 %conv674.5, !dbg !273
  %condval_7.sroa.0.0.5 = select i1 %cmp624, i16 %add.ptr580.1.5.val, i16 %conv682.5, !dbg !274
  %condval_8.sroa.0.0.5 = select i1 %cmp624, i16 %conv674.5, i16 %condval_4.sroa.0.0.5, !dbg !275
  %condval_9.sroa.0.0.5 = select i1 %cmp624, i16 %conv682.5, i16 %arrayidx610.11326.5.val, !dbg !276
  %add726.5 = or disjoint i32 %mul720, %mul725, !dbg !277
  %707 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.5, !dbg !278
  %add.ptr736.idx.5 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.5 = getelementptr inbounds i8, ptr addrspace(3) %707, i32 %add.ptr736.idx.5, !dbg !278
  store i16 %condval_6.sroa.0.0.5, ptr addrspace(3) %add.ptr736.5, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.5, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.5, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.5, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.5, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.5, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.5, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.5, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.5, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.5, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.1.5 = or disjoint i32 %365, 1, !dbg !280
  %condval_4.sroa.0.0.in.1.5 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.1.5, !dbg !84
  %condval_4.sroa.0.0.1.5 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.1.5, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.1.5 = or disjoint i32 %idxprom661.pn.in.v, 1, !dbg !281
  %condval_5.sroa.0.0.in.1.5 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.1.5, !dbg !84
  %condval_5.sroa.0.0.1.5 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.1.5, align 2, !dbg !84, !tbaa !270
  %shr673.1.5 = lshr i32 %694, 16, !dbg !282
  %conv674.1.5 = trunc nuw i32 %shr673.1.5 to i16, !dbg !271
  %shr681.1.5 = lshr i32 %702, 16, !dbg !283
  %conv682.1.5 = trunc nuw i32 %shr681.1.5 to i16, !dbg !272
  %condval_6.sroa.0.0.1.5 = select i1 %cmp624, i16 %condval_4.sroa.0.0.1.5, i16 %conv674.1.5, !dbg !273
  %condval_7.sroa.0.0.1.5 = select i1 %cmp624, i16 %condval_5.sroa.0.0.1.5, i16 %conv682.1.5, !dbg !274
  %condval_8.sroa.0.0.1.5 = select i1 %cmp624, i16 %conv674.1.5, i16 %condval_4.sroa.0.0.1.5, !dbg !275
  %condval_9.sroa.0.0.1.5 = select i1 %cmp624, i16 %conv682.1.5, i16 %condval_5.sroa.0.0.1.5, !dbg !276
  %add721.1.5 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.1.5 = or disjoint i32 %add721.1.5, 256, !dbg !277
  %708 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.1.5, !dbg !278
  %xor732.1.5 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.1.5 = xor i32 %xor732.1.5, 8, !dbg !278
  %add.ptr736.1.5 = getelementptr inbounds i8, ptr addrspace(3) %708, i32 %add.ptr736.idx.1.5, !dbg !278
  store i16 %condval_6.sroa.0.0.1.5, ptr addrspace(3) %add.ptr736.1.5, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1.5, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.1.5, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.1.5, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1.5, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.1.5, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.1.5, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1.5, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.1.5, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.1.5, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.2.5 = or disjoint i32 %365, 2, !dbg !280
  %condval_4.sroa.0.0.in.2.5 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.2.5, !dbg !84
  %condval_4.sroa.0.0.2.5 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.2.5, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.2.5 = or disjoint i32 %idxprom661.pn.in.v, 2, !dbg !281
  %condval_5.sroa.0.0.in.2.5 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.2.5, !dbg !84
  %condval_5.sroa.0.0.2.5 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.2.5, align 2, !dbg !84, !tbaa !270
  %conv674.2.5 = trunc i32 %698 to i16, !dbg !271
  %conv682.2.5 = trunc i32 %706 to i16, !dbg !272
  %condval_6.sroa.0.0.2.5 = select i1 %cmp624, i16 %condval_4.sroa.0.0.2.5, i16 %conv674.2.5, !dbg !273
  %condval_7.sroa.0.0.2.5 = select i1 %cmp624, i16 %condval_5.sroa.0.0.2.5, i16 %conv682.2.5, !dbg !274
  %condval_8.sroa.0.0.2.5 = select i1 %cmp624, i16 %conv674.2.5, i16 %condval_4.sroa.0.0.2.5, !dbg !275
  %condval_9.sroa.0.0.2.5 = select i1 %cmp624, i16 %conv682.2.5, i16 %condval_5.sroa.0.0.2.5, !dbg !276
  %add721.2.5 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.2.5 = or disjoint i32 %add721.2.5, 512, !dbg !277
  %709 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.2.5, !dbg !278
  %xor732.2.5 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.2.5 = xor i32 %xor732.2.5, 16, !dbg !278
  %add.ptr736.2.5 = getelementptr inbounds i8, ptr addrspace(3) %709, i32 %add.ptr736.idx.2.5, !dbg !278
  store i16 %condval_6.sroa.0.0.2.5, ptr addrspace(3) %add.ptr736.2.5, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.2.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2.5, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.2.5, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.2.5, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.2.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2.5, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.2.5, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.2.5, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.2.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2.5, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.2.5, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.2.5, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.3.5 = or disjoint i32 %365, 3, !dbg !280
  %condval_4.sroa.0.0.in.3.5 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.3.5, !dbg !84
  %condval_4.sroa.0.0.3.5 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.3.5, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.3.5 = or disjoint i32 %idxprom661.pn.in.v, 3, !dbg !281
  %condval_5.sroa.0.0.in.3.5 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.3.5, !dbg !84
  %condval_5.sroa.0.0.3.5 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.3.5, align 2, !dbg !84, !tbaa !270
  %shr673.3.5 = lshr i32 %698, 16, !dbg !282
  %conv674.3.5 = trunc nuw i32 %shr673.3.5 to i16, !dbg !271
  %shr681.3.5 = lshr i32 %706, 16, !dbg !283
  %conv682.3.5 = trunc nuw i32 %shr681.3.5 to i16, !dbg !272
  %condval_6.sroa.0.0.3.5 = select i1 %cmp624, i16 %condval_4.sroa.0.0.3.5, i16 %conv674.3.5, !dbg !273
  %condval_7.sroa.0.0.3.5 = select i1 %cmp624, i16 %condval_5.sroa.0.0.3.5, i16 %conv682.3.5, !dbg !274
  %condval_8.sroa.0.0.3.5 = select i1 %cmp624, i16 %conv674.3.5, i16 %condval_4.sroa.0.0.3.5, !dbg !275
  %condval_9.sroa.0.0.3.5 = select i1 %cmp624, i16 %conv682.3.5, i16 %condval_5.sroa.0.0.3.5, !dbg !276
  %add721.3.5 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.3.5 = or disjoint i32 %add721.3.5, 768, !dbg !277
  %710 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.3.5, !dbg !278
  %xor732.3.5 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.3.5 = xor i32 %xor732.3.5, 24, !dbg !278
  %add.ptr736.3.5 = getelementptr inbounds i8, ptr addrspace(3) %710, i32 %add.ptr736.idx.3.5, !dbg !278
  store i16 %condval_6.sroa.0.0.3.5, ptr addrspace(3) %add.ptr736.3.5, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.3.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3.5, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.3.5, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.3.5, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.3.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3.5, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.3.5, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.3.5, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.3.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3.5, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.3.5, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.3.5, align 2, !dbg !279, !tbaa !30
  fence syncscope("warp") release, !dbg !284
  tail call void @llvm.mxc.barrier.warp(), !dbg !287
  fence syncscope("warp") acquire, !dbg !288
  %add753.5 = or disjoint i32 %mul746, %mul752, !dbg !289
  %711 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.5, !dbg !290
  %add.ptr763.idx.5 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.5 = getelementptr inbounds i8, ptr addrspace(3) %711, i32 %add.ptr763.idx.5, !dbg !290
  %712 = load <4 x half>, ptr addrspace(3) %add.ptr763.5, align 8, !dbg !291
  %add748.1.5 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.1.5 = or disjoint i32 %add748.1.5, 64, !dbg !289
  %713 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.1.5, !dbg !290
  %xor759.1.5 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.1.5 = xor i32 %xor759.1.5, 8, !dbg !290
  %add.ptr763.1.5 = getelementptr inbounds i8, ptr addrspace(3) %713, i32 %add.ptr763.idx.1.5, !dbg !290
  %714 = load <4 x half>, ptr addrspace(3) %add.ptr763.1.5, align 8, !dbg !291
  %add748.2.5 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.2.5 = or disjoint i32 %add748.2.5, 128, !dbg !289
  %715 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.2.5, !dbg !290
  %xor759.2.5 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.2.5 = xor i32 %xor759.2.5, 16, !dbg !290
  %add.ptr763.2.5 = getelementptr inbounds i8, ptr addrspace(3) %715, i32 %add.ptr763.idx.2.5, !dbg !290
  %716 = load <4 x half>, ptr addrspace(3) %add.ptr763.2.5, align 8, !dbg !291
  %add748.3.5 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.3.5 = or disjoint i32 %add748.3.5, 192, !dbg !289
  %717 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.3.5, !dbg !290
  %xor759.3.5 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.3.5 = xor i32 %xor759.3.5, 24, !dbg !290
  %add.ptr763.3.5 = getelementptr inbounds i8, ptr addrspace(3) %717, i32 %add.ptr763.idx.3.5, !dbg !290
  %718 = load <4 x half>, ptr addrspace(3) %add.ptr763.3.5, align 8, !dbg !291
  %719 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %712, <4 x half> %686, <4 x float> %output_acc.sroa.0.4), !dbg !292
  %720 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %714, <4 x half> %686, <4 x float> %output_acc.sroa.34.4), !dbg !292
  %721 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %716, <4 x half> %686, <4 x float> %output_acc.sroa.66.4), !dbg !292
  %722 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %718, <4 x half> %686, <4 x float> %output_acc.sroa.98.4), !dbg !292
  br label %if.end790.5, !dbg !293

if.end790.5:                                      ; preds = %if.end576.1.5, %if.end790.4
  %bc2193 = phi <4 x half> [ %274, %if.end790.4 ], [ %686, %if.end576.1.5 ], !dbg !84
  %output_acc.sroa.98.5 = phi <4 x float> [ %output_acc.sroa.98.4, %if.end790.4 ], [ %722, %if.end576.1.5 ], !dbg !84
  %output_acc.sroa.66.5 = phi <4 x float> [ %output_acc.sroa.66.4, %if.end790.4 ], [ %721, %if.end576.1.5 ], !dbg !84
  %output_acc.sroa.34.5 = phi <4 x float> [ %output_acc.sroa.34.4, %if.end790.4 ], [ %720, %if.end576.1.5 ], !dbg !84
  %output_acc.sroa.0.5 = phi <4 x float> [ %output_acc.sroa.0.4, %if.end790.4 ], [ %719, %if.end576.1.5 ], !dbg !84
  %723 = load i32, ptr addrspace(1) %arrayidx130.6, align 4, !dbg !187, !tbaa !30
  %mul444.6 = shl nsw i32 %723, 4, !dbg !188
  %cmp445.6 = icmp slt i32 %723, 0, !dbg !189
  %cmp448.not.6 = icmp sgt i32 %mul444.6, %1
  %or.cond1207.6 = select i1 %cmp445.6, i1 true, i1 %cmp448.not.6, !dbg !190
  br i1 %or.cond1207.6, label %if.end790.6, label %if.then449.6, !dbg !190

if.then449.6:                                     ; preds = %if.end790.5
  fence syncscope("warp") release, !dbg !191
  tail call void @llvm.mxc.barrier.warp(), !dbg !194
  fence syncscope("warp") acquire, !dbg !195
  %cmp454.6 = icmp eq i32 %shr324, 2, !dbg !196
  br i1 %cmp454.6, label %if.then455.6, label %if.end464.6, !dbg !197

if.then455.6:                                     ; preds = %if.then449.6
  %sub460.6 = fsub contract float %max_cache.sroa.11.7, %global_max.sroa.0.1.7, !dbg !198
  %mul461.6 = fmul contract float %sub460.6, 0x3FC7154760000000, !dbg !199
  %cmp.i.i1146.6 = fcmp contract olt float %mul461.6, -1.260000e+02, !dbg !200
  %cond.i.i1147.6 = select contract i1 %cmp.i.i1146.6, float 6.400000e+01, float 0.000000e+00, !dbg !200
  %add.i.i1148.6 = fadd contract float %mul461.6, %cond.i.i1147.6, !dbg !200
  %724 = tail call contract float @llvm.exp2.f32(float %add.i.i1148.6), !dbg !200
  %cond2.i.i1149.6 = select contract i1 %cmp.i.i1146.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !200
  %mul.i.i1150.6 = fmul contract float %cond2.i.i1149.6, %724, !dbg !200
  %725 = bitcast float %mul.i.i1150.6 to i32, !dbg !203
  br label %if.end464.6, !dbg !202

if.end464.6:                                      ; preds = %if.then455.6, %if.then449.6
  %rescale.sroa.0.0.6 = phi i32 [ %725, %if.then455.6 ], [ 0, %if.then449.6 ], !dbg !84
  %726 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !206
  %727 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %726) #13, !dbg !210
  %rem.i.i.6 = or disjoint i32 %and469, 32, !dbg !294
  %and.i.i1151.6 = and i32 %727, 1073741760, !dbg !211
  %add.i.i1152.6 = or disjoint i32 %and.i.i1151.6, %rem.i.i.6, !dbg !212
  %shl.i.i1153.6 = shl nuw i32 %add.i.i1152.6, 2, !dbg !213
  %728 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1153.6, i32 %rescale.sroa.0.0.6), !dbg !214
  %729 = bitcast i32 %728 to float, !dbg !215
  %730 = extractelement <4 x half> %316, i64 0, !dbg !216
  %conv.i1154.6 = fpext half %730 to float, !dbg !216
  %731 = extractelement <4 x half> %316, i64 1, !dbg !219
  %conv6.i.6 = fpext half %731 to float, !dbg !219
  %732 = extractelement <4 x half> %316, i64 2, !dbg !220
  %conv.i1156.6 = fpext half %732 to float, !dbg !220
  %733 = extractelement <4 x half> %316, i64 3, !dbg !222
  %conv6.i1158.6 = fpext half %733 to float, !dbg !222
  %mul494.6 = fmul contract float %729, %conv.i1154.6, !dbg !223
  %mul498.6 = fmul contract float %729, %conv6.i.6, !dbg !224
  %mul502.6 = fmul contract float %729, %conv.i1156.6, !dbg !225
  %mul506.6 = fmul contract float %729, %conv6.i1158.6, !dbg !226
  %734 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !231
  %735 = fptrunc float %mul494.6 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %734), !dbg !227, !noalias !231
  %736 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !236, !noalias !231
  %737 = fptrunc float %mul498.6 to half, !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %736), !dbg !236, !noalias !231
  %738 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !238, !noalias !242
  %739 = fptrunc float %mul502.6 to half, !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %738), !dbg !238, !noalias !242
  %740 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !247, !noalias !242
  %741 = fptrunc float %mul506.6 to half, !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %740), !dbg !247, !noalias !242
  %742 = insertelement <4 x half> poison, half %735, i64 0, !dbg !249
  %743 = insertelement <4 x half> %742, half %737, i64 1, !dbg !249
  %744 = insertelement <4 x half> %743, half %739, i64 2, !dbg !249
  %745 = insertelement <4 x half> %744, half %741, i64 3, !dbg !249
  %shr529.6 = lshr exact i32 %mul444.6, 1
  %add530.6 = add nuw nsw i32 %shr529.6, %shr140
  %cmp531.6 = icmp ult i32 %add530.6, 512
  %conv541.6 = zext nneg i32 %mul444.6 to i64
  br i1 %cmp531.6, label %if.then532.6, label %if.end576.6, !dbg !250

if.then532.6:                                     ; preds = %if.end464.6
  %746 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1244.6 = shl nuw nsw i64 %conv541.6, 7, !dbg !251
  %747 = getelementptr inbounds i8, ptr addrspace(4) %746, i64 %.idx1244.6, !dbg !251
  %condval_2.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %747, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %747, i64 4, !dbg !252
  %condval_2.sroa.5.0.copyload.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.6, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %747, i64 8, !dbg !252
  %condval_2.sroa.6.0.copyload.6 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.6, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %747, i64 12, !dbg !252
  %condval_2.sroa.7.0.copyload.6 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.6, align 4, !dbg !252, !tbaa !30
  br label %if.end576.6, !dbg !253

if.end576.6:                                      ; preds = %if.then532.6, %if.end464.6
  %condval_2.sroa.0.0.6 = phi i32 [ %condval_2.sroa.0.0.copyload.6, %if.then532.6 ], [ 0, %if.end464.6 ], !dbg !84
  %condval_2.sroa.5.0.6 = phi i32 [ %condval_2.sroa.5.0.copyload.6, %if.then532.6 ], [ 0, %if.end464.6 ], !dbg !84
  %condval_2.sroa.6.0.6 = phi i32 [ %condval_2.sroa.6.0.copyload.6, %if.then532.6 ], [ 0, %if.end464.6 ], !dbg !84
  %condval_2.sroa.7.0.6 = phi i32 [ %condval_2.sroa.7.0.copyload.6, %if.then532.6 ], [ 0, %if.end464.6 ], !dbg !84
  store i32 %condval_2.sroa.0.0.6, ptr addrspace(5) %v_fetch_local, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 4, !dbg !254
  store i32 %condval_2.sroa.5.0.6, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.6, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 8, !dbg !254
  store i32 %condval_2.sroa.6.0.6, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.6, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 12, !dbg !254
  store i32 %condval_2.sroa.7.0.6, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.6, align 4, !dbg !254, !tbaa !30
  br i1 %cmp531.6, label %if.then532.1.6, label %if.end576.1.6, !dbg !250

if.then532.1.6:                                   ; preds = %if.end576.6
  %748 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1244.1.6 = shl nuw nsw i64 %conv541.6, 7, !dbg !251
  %749 = getelementptr inbounds i8, ptr addrspace(4) %748, i64 %.idx1244.1.6, !dbg !251
  %add.ptr552.1.6 = getelementptr inbounds i8, ptr addrspace(4) %749, i64 128, !dbg !251
  %condval_2.sroa.0.0.copyload.1.6 = load i32, ptr addrspace(4) %add.ptr552.1.6, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %749, i64 132, !dbg !252
  %condval_2.sroa.5.0.copyload.1.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.6, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %749, i64 136, !dbg !252
  %condval_2.sroa.6.0.copyload.1.6 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.6, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %749, i64 140, !dbg !252
  %condval_2.sroa.7.0.copyload.1.6 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.6, align 4, !dbg !252, !tbaa !30
  br label %if.end576.1.6, !dbg !253

if.end576.1.6:                                    ; preds = %if.then532.1.6, %if.end576.6
  %condval_2.sroa.0.0.1.6 = phi i32 [ %condval_2.sroa.0.0.copyload.1.6, %if.then532.1.6 ], [ 0, %if.end576.6 ], !dbg !84
  %condval_2.sroa.5.0.1.6 = phi i32 [ %condval_2.sroa.5.0.copyload.1.6, %if.then532.1.6 ], [ 0, %if.end576.6 ], !dbg !84
  %condval_2.sroa.6.0.1.6 = phi i32 [ %condval_2.sroa.6.0.copyload.1.6, %if.then532.1.6 ], [ 0, %if.end576.6 ], !dbg !84
  %condval_2.sroa.7.0.1.6 = phi i32 [ %condval_2.sroa.7.0.copyload.1.6, %if.then532.1.6 ], [ 0, %if.end576.6 ], !dbg !84
  %add.ptr580.1.6 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 16, !dbg !255
  store i32 %condval_2.sroa.0.0.1.6, ptr addrspace(5) %add.ptr580.1.6, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 20, !dbg !254
  store i32 %condval_2.sroa.5.0.1.6, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.6, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 24, !dbg !254
  store i32 %condval_2.sroa.6.0.1.6, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.6, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 28, !dbg !254
  store i32 %condval_2.sroa.7.0.1.6, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.6, align 4, !dbg !254, !tbaa !30
  %condval_3.0.6 = select i1 %cmp624, i32 %condval_2.sroa.6.0.6, i32 %condval_2.sroa.0.0.6, !dbg !256
  %750 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %751 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %750) #13, !dbg !262
  %xor.i.i1171.6 = xor i32 %751, 8, !dbg !263
  %752 = and i32 %751, -64, !dbg !264
  %and.i.i1172.6 = add nsw i32 %752, 64, !dbg !264
  %cmp.not.i.i1173.6 = icmp slt i32 %xor.i.i1171.6, %and.i.i1172.6, !dbg !265
  %cond.i.i1174.6 = select i1 %cmp.not.i.i1173.6, i32 %xor.i.i1171.6, i32 %751, !dbg !266
  %shl.i.i1175.6 = shl i32 %cond.i.i1174.6, 2, !dbg !267
  %753 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.6, i32 %condval_3.0.6), !dbg !268
  %condval_3.0.1.6 = select i1 %cmp624, i32 %condval_2.sroa.7.0.6, i32 %condval_2.sroa.5.0.6, !dbg !256
  %754 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %755 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %754) #13, !dbg !262
  %xor.i.i1171.1.6 = xor i32 %755, 8, !dbg !263
  %756 = and i32 %755, -64, !dbg !264
  %and.i.i1172.1.6 = add nsw i32 %756, 64, !dbg !264
  %cmp.not.i.i1173.1.6 = icmp slt i32 %xor.i.i1171.1.6, %and.i.i1172.1.6, !dbg !265
  %cond.i.i1174.1.6 = select i1 %cmp.not.i.i1173.1.6, i32 %xor.i.i1171.1.6, i32 %755, !dbg !266
  %shl.i.i1175.1.6 = shl i32 %cond.i.i1174.1.6, 2, !dbg !267
  %757 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.1.6, i32 %condval_3.0.1.6), !dbg !268
  %arrayidx610.11326.6 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 24, !dbg !269
  %condval_3.0.11339.6 = select i1 %cmp624, i32 %condval_2.sroa.6.0.1.6, i32 %condval_2.sroa.0.0.1.6, !dbg !256
  %758 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %759 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %758) #13, !dbg !262
  %xor.i.i1171.11340.6 = xor i32 %759, 8, !dbg !263
  %760 = and i32 %759, -64, !dbg !264
  %and.i.i1172.11341.6 = add nsw i32 %760, 64, !dbg !264
  %cmp.not.i.i1173.11342.6 = icmp slt i32 %xor.i.i1171.11340.6, %and.i.i1172.11341.6, !dbg !265
  %cond.i.i1174.11343.6 = select i1 %cmp.not.i.i1173.11342.6, i32 %xor.i.i1171.11340.6, i32 %759, !dbg !266
  %shl.i.i1175.11344.6 = shl i32 %cond.i.i1174.11343.6, 2, !dbg !267
  %761 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.11344.6, i32 %condval_3.0.11339.6), !dbg !268
  %condval_3.0.1.1.6 = select i1 %cmp624, i32 %condval_2.sroa.7.0.1.6, i32 %condval_2.sroa.5.0.1.6, !dbg !256
  %762 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %763 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %762) #13, !dbg !262
  %xor.i.i1171.1.1.6 = xor i32 %763, 8, !dbg !263
  %764 = and i32 %763, -64, !dbg !264
  %and.i.i1172.1.1.6 = add nsw i32 %764, 64, !dbg !264
  %cmp.not.i.i1173.1.1.6 = icmp slt i32 %xor.i.i1171.1.1.6, %and.i.i1172.1.1.6, !dbg !265
  %cond.i.i1174.1.1.6 = select i1 %cmp.not.i.i1173.1.1.6, i32 %xor.i.i1171.1.1.6, i32 %763, !dbg !266
  %shl.i.i1175.1.1.6 = shl i32 %cond.i.i1174.1.1.6, 2, !dbg !267
  %765 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.1.1.6, i32 %condval_3.0.1.1.6), !dbg !268
  %condval_4.sroa.0.0.in.6 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %365, !dbg !84
  %condval_4.sroa.0.0.6 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.6, align 2, !dbg !84, !tbaa !270
  %add.ptr580.1.6.val = load i16, ptr addrspace(5) %add.ptr580.1.6, align 2, !dbg !84
  %arrayidx610.11326.6.val = load i16, ptr addrspace(5) %arrayidx610.11326.6, align 2, !dbg !84
  %conv674.6 = trunc i32 %753 to i16, !dbg !271
  %conv682.6 = trunc i32 %761 to i16, !dbg !272
  %condval_6.sroa.0.0.6 = select i1 %cmp624, i16 %condval_4.sroa.0.0.6, i16 %conv674.6, !dbg !273
  %condval_7.sroa.0.0.6 = select i1 %cmp624, i16 %add.ptr580.1.6.val, i16 %conv682.6, !dbg !274
  %condval_8.sroa.0.0.6 = select i1 %cmp624, i16 %conv674.6, i16 %condval_4.sroa.0.0.6, !dbg !275
  %condval_9.sroa.0.0.6 = select i1 %cmp624, i16 %conv682.6, i16 %arrayidx610.11326.6.val, !dbg !276
  %add726.6 = or disjoint i32 %mul720, %mul725, !dbg !277
  %766 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.6, !dbg !278
  %add.ptr736.idx.6 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.6 = getelementptr inbounds i8, ptr addrspace(3) %766, i32 %add.ptr736.idx.6, !dbg !278
  store i16 %condval_6.sroa.0.0.6, ptr addrspace(3) %add.ptr736.6, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.6, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.6, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.6, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.6, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.6, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.6, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.6, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.6, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.6, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.1.6 = or disjoint i32 %365, 1, !dbg !280
  %condval_4.sroa.0.0.in.1.6 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.1.6, !dbg !84
  %condval_4.sroa.0.0.1.6 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.1.6, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.1.6 = or disjoint i32 %idxprom661.pn.in.v, 1, !dbg !281
  %condval_5.sroa.0.0.in.1.6 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.1.6, !dbg !84
  %condval_5.sroa.0.0.1.6 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.1.6, align 2, !dbg !84, !tbaa !270
  %shr673.1.6 = lshr i32 %753, 16, !dbg !282
  %conv674.1.6 = trunc nuw i32 %shr673.1.6 to i16, !dbg !271
  %shr681.1.6 = lshr i32 %761, 16, !dbg !283
  %conv682.1.6 = trunc nuw i32 %shr681.1.6 to i16, !dbg !272
  %condval_6.sroa.0.0.1.6 = select i1 %cmp624, i16 %condval_4.sroa.0.0.1.6, i16 %conv674.1.6, !dbg !273
  %condval_7.sroa.0.0.1.6 = select i1 %cmp624, i16 %condval_5.sroa.0.0.1.6, i16 %conv682.1.6, !dbg !274
  %condval_8.sroa.0.0.1.6 = select i1 %cmp624, i16 %conv674.1.6, i16 %condval_4.sroa.0.0.1.6, !dbg !275
  %condval_9.sroa.0.0.1.6 = select i1 %cmp624, i16 %conv682.1.6, i16 %condval_5.sroa.0.0.1.6, !dbg !276
  %add721.1.6 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.1.6 = or disjoint i32 %add721.1.6, 256, !dbg !277
  %767 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.1.6, !dbg !278
  %xor732.1.6 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.1.6 = xor i32 %xor732.1.6, 8, !dbg !278
  %add.ptr736.1.6 = getelementptr inbounds i8, ptr addrspace(3) %767, i32 %add.ptr736.idx.1.6, !dbg !278
  store i16 %condval_6.sroa.0.0.1.6, ptr addrspace(3) %add.ptr736.1.6, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1.6, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.1.6, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.1.6, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1.6, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.1.6, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.1.6, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1.6, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.1.6, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.1.6, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.2.6 = or disjoint i32 %365, 2, !dbg !280
  %condval_4.sroa.0.0.in.2.6 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.2.6, !dbg !84
  %condval_4.sroa.0.0.2.6 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.2.6, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.2.6 = or disjoint i32 %idxprom661.pn.in.v, 2, !dbg !281
  %condval_5.sroa.0.0.in.2.6 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.2.6, !dbg !84
  %condval_5.sroa.0.0.2.6 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.2.6, align 2, !dbg !84, !tbaa !270
  %conv674.2.6 = trunc i32 %757 to i16, !dbg !271
  %conv682.2.6 = trunc i32 %765 to i16, !dbg !272
  %condval_6.sroa.0.0.2.6 = select i1 %cmp624, i16 %condval_4.sroa.0.0.2.6, i16 %conv674.2.6, !dbg !273
  %condval_7.sroa.0.0.2.6 = select i1 %cmp624, i16 %condval_5.sroa.0.0.2.6, i16 %conv682.2.6, !dbg !274
  %condval_8.sroa.0.0.2.6 = select i1 %cmp624, i16 %conv674.2.6, i16 %condval_4.sroa.0.0.2.6, !dbg !275
  %condval_9.sroa.0.0.2.6 = select i1 %cmp624, i16 %conv682.2.6, i16 %condval_5.sroa.0.0.2.6, !dbg !276
  %add721.2.6 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.2.6 = or disjoint i32 %add721.2.6, 512, !dbg !277
  %768 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.2.6, !dbg !278
  %xor732.2.6 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.2.6 = xor i32 %xor732.2.6, 16, !dbg !278
  %add.ptr736.2.6 = getelementptr inbounds i8, ptr addrspace(3) %768, i32 %add.ptr736.idx.2.6, !dbg !278
  store i16 %condval_6.sroa.0.0.2.6, ptr addrspace(3) %add.ptr736.2.6, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.2.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2.6, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.2.6, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.2.6, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.2.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2.6, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.2.6, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.2.6, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.2.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2.6, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.2.6, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.2.6, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.3.6 = or disjoint i32 %365, 3, !dbg !280
  %condval_4.sroa.0.0.in.3.6 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.3.6, !dbg !84
  %condval_4.sroa.0.0.3.6 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.3.6, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.3.6 = or disjoint i32 %idxprom661.pn.in.v, 3, !dbg !281
  %condval_5.sroa.0.0.in.3.6 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.3.6, !dbg !84
  %condval_5.sroa.0.0.3.6 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.3.6, align 2, !dbg !84, !tbaa !270
  %shr673.3.6 = lshr i32 %757, 16, !dbg !282
  %conv674.3.6 = trunc nuw i32 %shr673.3.6 to i16, !dbg !271
  %shr681.3.6 = lshr i32 %765, 16, !dbg !283
  %conv682.3.6 = trunc nuw i32 %shr681.3.6 to i16, !dbg !272
  %condval_6.sroa.0.0.3.6 = select i1 %cmp624, i16 %condval_4.sroa.0.0.3.6, i16 %conv674.3.6, !dbg !273
  %condval_7.sroa.0.0.3.6 = select i1 %cmp624, i16 %condval_5.sroa.0.0.3.6, i16 %conv682.3.6, !dbg !274
  %condval_8.sroa.0.0.3.6 = select i1 %cmp624, i16 %conv674.3.6, i16 %condval_4.sroa.0.0.3.6, !dbg !275
  %condval_9.sroa.0.0.3.6 = select i1 %cmp624, i16 %conv682.3.6, i16 %condval_5.sroa.0.0.3.6, !dbg !276
  %add721.3.6 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.3.6 = or disjoint i32 %add721.3.6, 768, !dbg !277
  %769 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.3.6, !dbg !278
  %xor732.3.6 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.3.6 = xor i32 %xor732.3.6, 24, !dbg !278
  %add.ptr736.3.6 = getelementptr inbounds i8, ptr addrspace(3) %769, i32 %add.ptr736.idx.3.6, !dbg !278
  store i16 %condval_6.sroa.0.0.3.6, ptr addrspace(3) %add.ptr736.3.6, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.3.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3.6, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.3.6, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.3.6, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.3.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3.6, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.3.6, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.3.6, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.3.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3.6, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.3.6, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.3.6, align 2, !dbg !279, !tbaa !30
  fence syncscope("warp") release, !dbg !284
  tail call void @llvm.mxc.barrier.warp(), !dbg !287
  fence syncscope("warp") acquire, !dbg !288
  %add753.6 = or disjoint i32 %mul746, %mul752, !dbg !289
  %770 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.6, !dbg !290
  %add.ptr763.idx.6 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.6 = getelementptr inbounds i8, ptr addrspace(3) %770, i32 %add.ptr763.idx.6, !dbg !290
  %771 = load <4 x half>, ptr addrspace(3) %add.ptr763.6, align 8, !dbg !291
  %add748.1.6 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.1.6 = or disjoint i32 %add748.1.6, 64, !dbg !289
  %772 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.1.6, !dbg !290
  %xor759.1.6 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.1.6 = xor i32 %xor759.1.6, 8, !dbg !290
  %add.ptr763.1.6 = getelementptr inbounds i8, ptr addrspace(3) %772, i32 %add.ptr763.idx.1.6, !dbg !290
  %773 = load <4 x half>, ptr addrspace(3) %add.ptr763.1.6, align 8, !dbg !291
  %add748.2.6 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.2.6 = or disjoint i32 %add748.2.6, 128, !dbg !289
  %774 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.2.6, !dbg !290
  %xor759.2.6 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.2.6 = xor i32 %xor759.2.6, 16, !dbg !290
  %add.ptr763.2.6 = getelementptr inbounds i8, ptr addrspace(3) %774, i32 %add.ptr763.idx.2.6, !dbg !290
  %775 = load <4 x half>, ptr addrspace(3) %add.ptr763.2.6, align 8, !dbg !291
  %add748.3.6 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.3.6 = or disjoint i32 %add748.3.6, 192, !dbg !289
  %776 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.3.6, !dbg !290
  %xor759.3.6 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.3.6 = xor i32 %xor759.3.6, 24, !dbg !290
  %add.ptr763.3.6 = getelementptr inbounds i8, ptr addrspace(3) %776, i32 %add.ptr763.idx.3.6, !dbg !290
  %777 = load <4 x half>, ptr addrspace(3) %add.ptr763.3.6, align 8, !dbg !291
  %778 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %771, <4 x half> %745, <4 x float> %output_acc.sroa.0.5), !dbg !292
  %779 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %773, <4 x half> %745, <4 x float> %output_acc.sroa.34.5), !dbg !292
  %780 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %775, <4 x half> %745, <4 x float> %output_acc.sroa.66.5), !dbg !292
  %781 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %777, <4 x half> %745, <4 x float> %output_acc.sroa.98.5), !dbg !292
  br label %if.end790.6, !dbg !293

if.end790.6:                                      ; preds = %if.end576.1.6, %if.end790.5
  %bc2197 = phi <4 x half> [ %316, %if.end790.5 ], [ %745, %if.end576.1.6 ], !dbg !84
  %output_acc.sroa.98.6 = phi <4 x float> [ %output_acc.sroa.98.5, %if.end790.5 ], [ %781, %if.end576.1.6 ], !dbg !84
  %output_acc.sroa.66.6 = phi <4 x float> [ %output_acc.sroa.66.5, %if.end790.5 ], [ %780, %if.end576.1.6 ], !dbg !84
  %output_acc.sroa.34.6 = phi <4 x float> [ %output_acc.sroa.34.5, %if.end790.5 ], [ %779, %if.end576.1.6 ], !dbg !84
  %output_acc.sroa.0.6 = phi <4 x float> [ %output_acc.sroa.0.5, %if.end790.5 ], [ %778, %if.end576.1.6 ], !dbg !84
  %782 = load i32, ptr addrspace(1) %arrayidx130.7, align 4, !dbg !187, !tbaa !30
  %mul444.7 = shl nsw i32 %782, 4, !dbg !188
  %cmp445.7 = icmp slt i32 %782, 0, !dbg !189
  %cmp448.not.7 = icmp sgt i32 %mul444.7, %1
  %or.cond1207.7 = select i1 %cmp445.7, i1 true, i1 %cmp448.not.7, !dbg !190
  br i1 %or.cond1207.7, label %if.end790.7, label %if.then449.7, !dbg !190

if.then449.7:                                     ; preds = %if.end790.6
  fence syncscope("warp") release, !dbg !191
  tail call void @llvm.mxc.barrier.warp(), !dbg !194
  fence syncscope("warp") acquire, !dbg !195
  %cmp454.7 = icmp eq i32 %shr324, 3, !dbg !196
  br i1 %cmp454.7, label %if.then455.7, label %if.end464.7, !dbg !197

if.then455.7:                                     ; preds = %if.then449.7
  %sub460.7 = fsub contract float %max_cache.sroa.11.7, %global_max.sroa.0.1.7, !dbg !198
  %mul461.7 = fmul contract float %sub460.7, 0x3FC7154760000000, !dbg !199
  %cmp.i.i1146.7 = fcmp contract olt float %mul461.7, -1.260000e+02, !dbg !200
  %cond.i.i1147.7 = select contract i1 %cmp.i.i1146.7, float 6.400000e+01, float 0.000000e+00, !dbg !200
  %add.i.i1148.7 = fadd contract float %mul461.7, %cond.i.i1147.7, !dbg !200
  %783 = tail call contract float @llvm.exp2.f32(float %add.i.i1148.7), !dbg !200
  %cond2.i.i1149.7 = select contract i1 %cmp.i.i1146.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !200
  %mul.i.i1150.7 = fmul contract float %cond2.i.i1149.7, %783, !dbg !200
  %784 = bitcast float %mul.i.i1150.7 to i32, !dbg !203
  br label %if.end464.7, !dbg !202

if.end464.7:                                      ; preds = %if.then455.7, %if.then449.7
  %rescale.sroa.0.0.7 = phi i32 [ %784, %if.then455.7 ], [ 0, %if.then449.7 ], !dbg !84
  %785 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !206
  %786 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %785) #13, !dbg !210
  %rem.i.i.7 = or disjoint i32 %and469, 48, !dbg !294
  %and.i.i1151.7 = and i32 %786, 1073741760, !dbg !211
  %add.i.i1152.7 = or disjoint i32 %and.i.i1151.7, %rem.i.i.7, !dbg !212
  %shl.i.i1153.7 = shl nuw i32 %add.i.i1152.7, 2, !dbg !213
  %787 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1153.7, i32 %rescale.sroa.0.0.7), !dbg !214
  %788 = bitcast i32 %787 to float, !dbg !215
  %789 = extractelement <4 x half> %358, i64 0, !dbg !216
  %conv.i1154.7 = fpext half %789 to float, !dbg !216
  %790 = extractelement <4 x half> %358, i64 1, !dbg !219
  %conv6.i.7 = fpext half %790 to float, !dbg !219
  %791 = extractelement <4 x half> %358, i64 2, !dbg !220
  %conv.i1156.7 = fpext half %791 to float, !dbg !220
  %792 = extractelement <4 x half> %358, i64 3, !dbg !222
  %conv6.i1158.7 = fpext half %792 to float, !dbg !222
  %mul494.7 = fmul contract float %788, %conv.i1154.7, !dbg !223
  %mul498.7 = fmul contract float %788, %conv6.i.7, !dbg !224
  %mul502.7 = fmul contract float %788, %conv.i1156.7, !dbg !225
  %mul506.7 = fmul contract float %788, %conv6.i1158.7, !dbg !226
  %793 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !231
  %794 = fptrunc float %mul494.7 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %793), !dbg !227, !noalias !231
  %795 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !236, !noalias !231
  %796 = fptrunc float %mul498.7 to half, !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %795), !dbg !236, !noalias !231
  %797 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !238, !noalias !242
  %798 = fptrunc float %mul502.7 to half, !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %797), !dbg !238, !noalias !242
  %799 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !247, !noalias !242
  %800 = fptrunc float %mul506.7 to half, !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %799), !dbg !247, !noalias !242
  %801 = insertelement <4 x half> poison, half %794, i64 0, !dbg !249
  %802 = insertelement <4 x half> %801, half %796, i64 1, !dbg !249
  %803 = insertelement <4 x half> %802, half %798, i64 2, !dbg !249
  %804 = insertelement <4 x half> %803, half %800, i64 3, !dbg !249
  %shr529.7 = lshr exact i32 %mul444.7, 1
  %add530.7 = add nuw nsw i32 %shr529.7, %shr140
  %cmp531.7 = icmp ult i32 %add530.7, 512
  %conv541.7 = zext nneg i32 %mul444.7 to i64
  br i1 %cmp531.7, label %if.then532.7, label %if.end576.7, !dbg !250

if.then532.7:                                     ; preds = %if.end464.7
  %805 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1244.7 = shl nuw nsw i64 %conv541.7, 7, !dbg !251
  %806 = getelementptr inbounds i8, ptr addrspace(4) %805, i64 %.idx1244.7, !dbg !251
  %condval_2.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %806, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %806, i64 4, !dbg !252
  %condval_2.sroa.5.0.copyload.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.7, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %806, i64 8, !dbg !252
  %condval_2.sroa.6.0.copyload.7 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.7, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %806, i64 12, !dbg !252
  %condval_2.sroa.7.0.copyload.7 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.7, align 4, !dbg !252, !tbaa !30
  br label %if.end576.7, !dbg !253

if.end576.7:                                      ; preds = %if.then532.7, %if.end464.7
  %condval_2.sroa.0.0.7 = phi i32 [ %condval_2.sroa.0.0.copyload.7, %if.then532.7 ], [ 0, %if.end464.7 ], !dbg !84
  %condval_2.sroa.5.0.7 = phi i32 [ %condval_2.sroa.5.0.copyload.7, %if.then532.7 ], [ 0, %if.end464.7 ], !dbg !84
  %condval_2.sroa.6.0.7 = phi i32 [ %condval_2.sroa.6.0.copyload.7, %if.then532.7 ], [ 0, %if.end464.7 ], !dbg !84
  %condval_2.sroa.7.0.7 = phi i32 [ %condval_2.sroa.7.0.copyload.7, %if.then532.7 ], [ 0, %if.end464.7 ], !dbg !84
  store i32 %condval_2.sroa.0.0.7, ptr addrspace(5) %v_fetch_local, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 4, !dbg !254
  store i32 %condval_2.sroa.5.0.7, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.7, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 8, !dbg !254
  store i32 %condval_2.sroa.6.0.7, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.7, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 12, !dbg !254
  store i32 %condval_2.sroa.7.0.7, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.7, align 4, !dbg !254, !tbaa !30
  br i1 %cmp531.7, label %if.then532.1.7, label %if.end576.1.7, !dbg !250

if.then532.1.7:                                   ; preds = %if.end576.7
  %807 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1244.1.7 = shl nuw nsw i64 %conv541.7, 7, !dbg !251
  %808 = getelementptr inbounds i8, ptr addrspace(4) %807, i64 %.idx1244.1.7, !dbg !251
  %add.ptr552.1.7 = getelementptr inbounds i8, ptr addrspace(4) %808, i64 128, !dbg !251
  %condval_2.sroa.0.0.copyload.1.7 = load i32, ptr addrspace(4) %add.ptr552.1.7, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %808, i64 132, !dbg !252
  %condval_2.sroa.5.0.copyload.1.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.7, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %808, i64 136, !dbg !252
  %condval_2.sroa.6.0.copyload.1.7 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.7, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %808, i64 140, !dbg !252
  %condval_2.sroa.7.0.copyload.1.7 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.7, align 4, !dbg !252, !tbaa !30
  br label %if.end576.1.7, !dbg !253

if.end576.1.7:                                    ; preds = %if.then532.1.7, %if.end576.7
  %condval_2.sroa.0.0.1.7 = phi i32 [ %condval_2.sroa.0.0.copyload.1.7, %if.then532.1.7 ], [ 0, %if.end576.7 ], !dbg !84
  %condval_2.sroa.5.0.1.7 = phi i32 [ %condval_2.sroa.5.0.copyload.1.7, %if.then532.1.7 ], [ 0, %if.end576.7 ], !dbg !84
  %condval_2.sroa.6.0.1.7 = phi i32 [ %condval_2.sroa.6.0.copyload.1.7, %if.then532.1.7 ], [ 0, %if.end576.7 ], !dbg !84
  %condval_2.sroa.7.0.1.7 = phi i32 [ %condval_2.sroa.7.0.copyload.1.7, %if.then532.1.7 ], [ 0, %if.end576.7 ], !dbg !84
  %add.ptr580.1.7 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 16, !dbg !255
  store i32 %condval_2.sroa.0.0.1.7, ptr addrspace(5) %add.ptr580.1.7, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 20, !dbg !254
  store i32 %condval_2.sroa.5.0.1.7, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.7, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 24, !dbg !254
  store i32 %condval_2.sroa.6.0.1.7, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.7, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 28, !dbg !254
  store i32 %condval_2.sroa.7.0.1.7, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.7, align 4, !dbg !254, !tbaa !30
  %condval_3.0.7 = select i1 %cmp624, i32 %condval_2.sroa.6.0.7, i32 %condval_2.sroa.0.0.7, !dbg !256
  %809 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %810 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %809) #13, !dbg !262
  %xor.i.i1171.7 = xor i32 %810, 8, !dbg !263
  %811 = and i32 %810, -64, !dbg !264
  %and.i.i1172.7 = add nsw i32 %811, 64, !dbg !264
  %cmp.not.i.i1173.7 = icmp slt i32 %xor.i.i1171.7, %and.i.i1172.7, !dbg !265
  %cond.i.i1174.7 = select i1 %cmp.not.i.i1173.7, i32 %xor.i.i1171.7, i32 %810, !dbg !266
  %shl.i.i1175.7 = shl i32 %cond.i.i1174.7, 2, !dbg !267
  %812 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.7, i32 %condval_3.0.7), !dbg !268
  %condval_3.0.1.7 = select i1 %cmp624, i32 %condval_2.sroa.7.0.7, i32 %condval_2.sroa.5.0.7, !dbg !256
  %813 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %814 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %813) #13, !dbg !262
  %xor.i.i1171.1.7 = xor i32 %814, 8, !dbg !263
  %815 = and i32 %814, -64, !dbg !264
  %and.i.i1172.1.7 = add nsw i32 %815, 64, !dbg !264
  %cmp.not.i.i1173.1.7 = icmp slt i32 %xor.i.i1171.1.7, %and.i.i1172.1.7, !dbg !265
  %cond.i.i1174.1.7 = select i1 %cmp.not.i.i1173.1.7, i32 %xor.i.i1171.1.7, i32 %814, !dbg !266
  %shl.i.i1175.1.7 = shl i32 %cond.i.i1174.1.7, 2, !dbg !267
  %816 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.1.7, i32 %condval_3.0.1.7), !dbg !268
  %arrayidx610.11326.7 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_local, i32 24, !dbg !269
  %condval_3.0.11339.7 = select i1 %cmp624, i32 %condval_2.sroa.6.0.1.7, i32 %condval_2.sroa.0.0.1.7, !dbg !256
  %817 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %818 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %817) #13, !dbg !262
  %xor.i.i1171.11340.7 = xor i32 %818, 8, !dbg !263
  %819 = and i32 %818, -64, !dbg !264
  %and.i.i1172.11341.7 = add nsw i32 %819, 64, !dbg !264
  %cmp.not.i.i1173.11342.7 = icmp slt i32 %xor.i.i1171.11340.7, %and.i.i1172.11341.7, !dbg !265
  %cond.i.i1174.11343.7 = select i1 %cmp.not.i.i1173.11342.7, i32 %xor.i.i1171.11340.7, i32 %818, !dbg !266
  %shl.i.i1175.11344.7 = shl i32 %cond.i.i1174.11343.7, 2, !dbg !267
  %820 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.11344.7, i32 %condval_3.0.11339.7), !dbg !268
  %condval_3.0.1.1.7 = select i1 %cmp624, i32 %condval_2.sroa.7.0.1.7, i32 %condval_2.sroa.5.0.1.7, !dbg !256
  %821 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !257
  %822 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %821) #13, !dbg !262
  %xor.i.i1171.1.1.7 = xor i32 %822, 8, !dbg !263
  %823 = and i32 %822, -64, !dbg !264
  %and.i.i1172.1.1.7 = add nsw i32 %823, 64, !dbg !264
  %cmp.not.i.i1173.1.1.7 = icmp slt i32 %xor.i.i1171.1.1.7, %and.i.i1172.1.1.7, !dbg !265
  %cond.i.i1174.1.1.7 = select i1 %cmp.not.i.i1173.1.1.7, i32 %xor.i.i1171.1.1.7, i32 %822, !dbg !266
  %shl.i.i1175.1.1.7 = shl i32 %cond.i.i1174.1.1.7, 2, !dbg !267
  %824 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1175.1.1.7, i32 %condval_3.0.1.1.7), !dbg !268
  %condval_4.sroa.0.0.in.7 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %365, !dbg !84
  %condval_4.sroa.0.0.7 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.7, align 2, !dbg !84, !tbaa !270
  %add.ptr580.1.7.val = load i16, ptr addrspace(5) %add.ptr580.1.7, align 2, !dbg !84
  %arrayidx610.11326.7.val = load i16, ptr addrspace(5) %arrayidx610.11326.7, align 2, !dbg !84
  %conv674.7 = trunc i32 %812 to i16, !dbg !271
  %conv682.7 = trunc i32 %820 to i16, !dbg !272
  %condval_6.sroa.0.0.7 = select i1 %cmp624, i16 %condval_4.sroa.0.0.7, i16 %conv674.7, !dbg !273
  %condval_7.sroa.0.0.7 = select i1 %cmp624, i16 %add.ptr580.1.7.val, i16 %conv682.7, !dbg !274
  %condval_8.sroa.0.0.7 = select i1 %cmp624, i16 %conv674.7, i16 %condval_4.sroa.0.0.7, !dbg !275
  %condval_9.sroa.0.0.7 = select i1 %cmp624, i16 %conv682.7, i16 %arrayidx610.11326.7.val, !dbg !276
  %add726.7 = or disjoint i32 %mul720, %mul725, !dbg !277
  %825 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.7, !dbg !278
  %add.ptr736.idx.7 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.7 = getelementptr inbounds i8, ptr addrspace(3) %825, i32 %add.ptr736.idx.7, !dbg !278
  store i16 %condval_6.sroa.0.0.7, ptr addrspace(3) %add.ptr736.7, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.7, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.7, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.7, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.7, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.7, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.7, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.7, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.7, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.7, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.1.7 = or disjoint i32 %365, 1, !dbg !280
  %condval_4.sroa.0.0.in.1.7 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.1.7, !dbg !84
  %condval_4.sroa.0.0.1.7 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.1.7, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.1.7 = or disjoint i32 %idxprom661.pn.in.v, 1, !dbg !281
  %condval_5.sroa.0.0.in.1.7 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.1.7, !dbg !84
  %condval_5.sroa.0.0.1.7 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.1.7, align 2, !dbg !84, !tbaa !270
  %shr673.1.7 = lshr i32 %812, 16, !dbg !282
  %conv674.1.7 = trunc nuw i32 %shr673.1.7 to i16, !dbg !271
  %shr681.1.7 = lshr i32 %820, 16, !dbg !283
  %conv682.1.7 = trunc nuw i32 %shr681.1.7 to i16, !dbg !272
  %condval_6.sroa.0.0.1.7 = select i1 %cmp624, i16 %condval_4.sroa.0.0.1.7, i16 %conv674.1.7, !dbg !273
  %condval_7.sroa.0.0.1.7 = select i1 %cmp624, i16 %condval_5.sroa.0.0.1.7, i16 %conv682.1.7, !dbg !274
  %condval_8.sroa.0.0.1.7 = select i1 %cmp624, i16 %conv674.1.7, i16 %condval_4.sroa.0.0.1.7, !dbg !275
  %condval_9.sroa.0.0.1.7 = select i1 %cmp624, i16 %conv682.1.7, i16 %condval_5.sroa.0.0.1.7, !dbg !276
  %add721.1.7 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.1.7 = or disjoint i32 %add721.1.7, 256, !dbg !277
  %826 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.1.7, !dbg !278
  %xor732.1.7 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.1.7 = xor i32 %xor732.1.7, 8, !dbg !278
  %add.ptr736.1.7 = getelementptr inbounds i8, ptr addrspace(3) %826, i32 %add.ptr736.idx.1.7, !dbg !278
  store i16 %condval_6.sroa.0.0.1.7, ptr addrspace(3) %add.ptr736.1.7, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1.7, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.1.7, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.1.7, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1.7, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.1.7, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.1.7, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.1.7, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.1.7, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.1.7, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.2.7 = or disjoint i32 %365, 2, !dbg !280
  %condval_4.sroa.0.0.in.2.7 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.2.7, !dbg !84
  %condval_4.sroa.0.0.2.7 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.2.7, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.2.7 = or disjoint i32 %idxprom661.pn.in.v, 2, !dbg !281
  %condval_5.sroa.0.0.in.2.7 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.2.7, !dbg !84
  %condval_5.sroa.0.0.2.7 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.2.7, align 2, !dbg !84, !tbaa !270
  %conv674.2.7 = trunc i32 %816 to i16, !dbg !271
  %conv682.2.7 = trunc i32 %824 to i16, !dbg !272
  %condval_6.sroa.0.0.2.7 = select i1 %cmp624, i16 %condval_4.sroa.0.0.2.7, i16 %conv674.2.7, !dbg !273
  %condval_7.sroa.0.0.2.7 = select i1 %cmp624, i16 %condval_5.sroa.0.0.2.7, i16 %conv682.2.7, !dbg !274
  %condval_8.sroa.0.0.2.7 = select i1 %cmp624, i16 %conv674.2.7, i16 %condval_4.sroa.0.0.2.7, !dbg !275
  %condval_9.sroa.0.0.2.7 = select i1 %cmp624, i16 %conv682.2.7, i16 %condval_5.sroa.0.0.2.7, !dbg !276
  %add721.2.7 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.2.7 = or disjoint i32 %add721.2.7, 512, !dbg !277
  %827 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.2.7, !dbg !278
  %xor732.2.7 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.2.7 = xor i32 %xor732.2.7, 16, !dbg !278
  %add.ptr736.2.7 = getelementptr inbounds i8, ptr addrspace(3) %827, i32 %add.ptr736.idx.2.7, !dbg !278
  store i16 %condval_6.sroa.0.0.2.7, ptr addrspace(3) %add.ptr736.2.7, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.2.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2.7, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.2.7, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.2.7, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.2.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2.7, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.2.7, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.2.7, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.2.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.2.7, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.2.7, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.2.7, align 2, !dbg !279, !tbaa !30
  %idxprom648.pn.in.3.7 = or disjoint i32 %365, 3, !dbg !280
  %condval_4.sroa.0.0.in.3.7 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom648.pn.in.3.7, !dbg !84
  %condval_4.sroa.0.0.3.7 = load i16, ptr addrspace(5) %condval_4.sroa.0.0.in.3.7, align 2, !dbg !84, !tbaa !270
  %idxprom661.pn.in.3.7 = or disjoint i32 %idxprom661.pn.in.v, 3, !dbg !281
  %condval_5.sroa.0.0.in.3.7 = getelementptr inbounds [16 x %struct.__half], ptr addrspace(5) %v_fetch_local, i32 0, i32 %idxprom661.pn.in.3.7, !dbg !84
  %condval_5.sroa.0.0.3.7 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.3.7, align 2, !dbg !84, !tbaa !270
  %shr673.3.7 = lshr i32 %816, 16, !dbg !282
  %conv674.3.7 = trunc nuw i32 %shr673.3.7 to i16, !dbg !271
  %shr681.3.7 = lshr i32 %824, 16, !dbg !283
  %conv682.3.7 = trunc nuw i32 %shr681.3.7 to i16, !dbg !272
  %condval_6.sroa.0.0.3.7 = select i1 %cmp624, i16 %condval_4.sroa.0.0.3.7, i16 %conv674.3.7, !dbg !273
  %condval_7.sroa.0.0.3.7 = select i1 %cmp624, i16 %condval_5.sroa.0.0.3.7, i16 %conv682.3.7, !dbg !274
  %condval_8.sroa.0.0.3.7 = select i1 %cmp624, i16 %conv674.3.7, i16 %condval_4.sroa.0.0.3.7, !dbg !275
  %condval_9.sroa.0.0.3.7 = select i1 %cmp624, i16 %conv682.3.7, i16 %condval_5.sroa.0.0.3.7, !dbg !276
  %add721.3.7 = or disjoint i32 %mul720, %mul725, !dbg !277
  %add726.3.7 = or disjoint i32 %add721.3.7, 768, !dbg !277
  %828 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add726.3.7, !dbg !278
  %xor732.3.7 = shl nuw nsw i32 %xor, 3, !dbg !278
  %add.ptr736.idx.3.7 = xor i32 %xor732.3.7, 24, !dbg !278
  %add.ptr736.3.7 = getelementptr inbounds i8, ptr addrspace(3) %828, i32 %add.ptr736.idx.3.7, !dbg !278
  store i16 %condval_6.sroa.0.0.3.7, ptr addrspace(3) %add.ptr736.3.7, align 8, !dbg !279
  %v_column_local.sroa.4.0.add.ptr736.sroa_idx.3.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3.7, i32 2, !dbg !279
  store i16 %condval_7.sroa.0.0.3.7, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr736.sroa_idx.3.7, align 2, !dbg !279, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr736.sroa_idx.3.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3.7, i32 4, !dbg !279
  store i16 %condval_8.sroa.0.0.3.7, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr736.sroa_idx.3.7, align 4, !dbg !279
  %v_column_local.sroa.6.0.add.ptr736.sroa_idx.3.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr736.3.7, i32 6, !dbg !279
  store i16 %condval_9.sroa.0.0.3.7, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr736.sroa_idx.3.7, align 2, !dbg !279, !tbaa !30
  fence syncscope("warp") release, !dbg !284
  tail call void @llvm.mxc.barrier.warp(), !dbg !287
  fence syncscope("warp") acquire, !dbg !288
  %add753.7 = or disjoint i32 %mul746, %mul752, !dbg !289
  %829 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.7, !dbg !290
  %add.ptr763.idx.7 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.7 = getelementptr inbounds i8, ptr addrspace(3) %829, i32 %add.ptr763.idx.7, !dbg !290
  %830 = load <4 x half>, ptr addrspace(3) %add.ptr763.7, align 8, !dbg !291
  %add748.1.7 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.1.7 = or disjoint i32 %add748.1.7, 64, !dbg !289
  %831 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.1.7, !dbg !290
  %xor759.1.7 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.1.7 = xor i32 %xor759.1.7, 8, !dbg !290
  %add.ptr763.1.7 = getelementptr inbounds i8, ptr addrspace(3) %831, i32 %add.ptr763.idx.1.7, !dbg !290
  %832 = load <4 x half>, ptr addrspace(3) %add.ptr763.1.7, align 8, !dbg !291
  %add748.2.7 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.2.7 = or disjoint i32 %add748.2.7, 128, !dbg !289
  %833 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.2.7, !dbg !290
  %xor759.2.7 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.2.7 = xor i32 %xor759.2.7, 16, !dbg !290
  %add.ptr763.2.7 = getelementptr inbounds i8, ptr addrspace(3) %833, i32 %add.ptr763.idx.2.7, !dbg !290
  %834 = load <4 x half>, ptr addrspace(3) %add.ptr763.2.7, align 8, !dbg !291
  %add748.3.7 = or disjoint i32 %mul746, %mul752, !dbg !289
  %add753.3.7 = or disjoint i32 %add748.3.7, 192, !dbg !289
  %835 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add753.3.7, !dbg !290
  %xor759.3.7 = shl nuw nsw i32 %368, 3, !dbg !290
  %add.ptr763.idx.3.7 = xor i32 %xor759.3.7, 24, !dbg !290
  %add.ptr763.3.7 = getelementptr inbounds i8, ptr addrspace(3) %835, i32 %add.ptr763.idx.3.7, !dbg !290
  %836 = load <4 x half>, ptr addrspace(3) %add.ptr763.3.7, align 8, !dbg !291
  %837 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %830, <4 x half> %804, <4 x float> %output_acc.sroa.0.6), !dbg !292
  %838 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %832, <4 x half> %804, <4 x float> %output_acc.sroa.34.6), !dbg !292
  %839 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %834, <4 x half> %804, <4 x float> %output_acc.sroa.66.6), !dbg !292
  %840 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %836, <4 x half> %804, <4 x float> %output_acc.sroa.98.6), !dbg !292
  br label %if.end790.7, !dbg !293

if.end790.7:                                      ; preds = %if.end576.1.7, %if.end790.6
  %bc2201 = phi <4 x half> [ %358, %if.end790.6 ], [ %804, %if.end576.1.7 ], !dbg !84
  %output_acc.sroa.98.7 = phi <4 x float> [ %output_acc.sroa.98.6, %if.end790.6 ], [ %840, %if.end576.1.7 ], !dbg !84
  %output_acc.sroa.66.7 = phi <4 x float> [ %output_acc.sroa.66.6, %if.end790.6 ], [ %839, %if.end576.1.7 ], !dbg !84
  %output_acc.sroa.34.7 = phi <4 x float> [ %output_acc.sroa.34.6, %if.end790.6 ], [ %838, %if.end576.1.7 ], !dbg !84
  %output_acc.sroa.0.7 = phi <4 x float> [ %output_acc.sroa.0.6, %if.end790.6 ], [ %837, %if.end576.1.7 ], !dbg !84
  fence syncscope("warp") release, !dbg !295
  tail call void @llvm.mxc.barrier.warp(), !dbg !298
  fence syncscope("warp") acquire, !dbg !299
  %841 = extractelement <4 x half> %bc2173, i64 0, !dbg !300
  %conv.i.i = fpext half %841 to float, !dbg !301
  %add803 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !306
  %842 = extractelement <4 x half> %bc2173, i64 1, !dbg !300
  %conv.i.i.1 = fpext half %842 to float, !dbg !301
  %add803.1 = fadd contract float %add803, %conv.i.i.1, !dbg !306
  %843 = extractelement <4 x half> %bc2173, i64 2, !dbg !300
  %conv.i.i.2 = fpext half %843 to float, !dbg !301
  %add803.2 = fadd contract float %add803.1, %conv.i.i.2, !dbg !306
  %844 = extractelement <4 x half> %bc2173, i64 3, !dbg !300
  %conv.i.i.3 = fpext half %844 to float, !dbg !301
  %add803.3 = fadd contract float %add803.2, %conv.i.i.3, !dbg !306
  %845 = extractelement <4 x half> %bc2177, i64 0, !dbg !300
  %conv.i.i.4 = fpext half %845 to float, !dbg !301
  %add803.4 = fadd contract float %add803.3, %conv.i.i.4, !dbg !306
  %846 = extractelement <4 x half> %bc2177, i64 1, !dbg !300
  %conv.i.i.5 = fpext half %846 to float, !dbg !301
  %add803.5 = fadd contract float %add803.4, %conv.i.i.5, !dbg !306
  %847 = extractelement <4 x half> %bc2177, i64 2, !dbg !300
  %conv.i.i.6 = fpext half %847 to float, !dbg !301
  %add803.6 = fadd contract float %add803.5, %conv.i.i.6, !dbg !306
  %848 = extractelement <4 x half> %bc2177, i64 3, !dbg !300
  %conv.i.i.7 = fpext half %848 to float, !dbg !301
  %add803.7 = fadd contract float %add803.6, %conv.i.i.7, !dbg !306
  %849 = extractelement <4 x half> %bc2181, i64 0, !dbg !300
  %conv.i.i.8 = fpext half %849 to float, !dbg !301
  %add803.8 = fadd contract float %add803.7, %conv.i.i.8, !dbg !306
  %850 = extractelement <4 x half> %bc2181, i64 1, !dbg !300
  %conv.i.i.9 = fpext half %850 to float, !dbg !301
  %add803.9 = fadd contract float %add803.8, %conv.i.i.9, !dbg !306
  %851 = extractelement <4 x half> %bc2181, i64 2, !dbg !300
  %conv.i.i.10 = fpext half %851 to float, !dbg !301
  %add803.10 = fadd contract float %add803.9, %conv.i.i.10, !dbg !306
  %852 = extractelement <4 x half> %bc2181, i64 3, !dbg !300
  %conv.i.i.11 = fpext half %852 to float, !dbg !301
  %add803.11 = fadd contract float %add803.10, %conv.i.i.11, !dbg !306
  %853 = extractelement <4 x half> %bc2185, i64 0, !dbg !300
  %conv.i.i.12 = fpext half %853 to float, !dbg !301
  %add803.12 = fadd contract float %add803.11, %conv.i.i.12, !dbg !306
  %854 = extractelement <4 x half> %bc2185, i64 1, !dbg !300
  %conv.i.i.13 = fpext half %854 to float, !dbg !301
  %add803.13 = fadd contract float %add803.12, %conv.i.i.13, !dbg !306
  %855 = extractelement <4 x half> %bc2185, i64 2, !dbg !300
  %conv.i.i.14 = fpext half %855 to float, !dbg !301
  %add803.14 = fadd contract float %add803.13, %conv.i.i.14, !dbg !306
  %856 = extractelement <4 x half> %bc2185, i64 3, !dbg !300
  %conv.i.i.15 = fpext half %856 to float, !dbg !301
  %add803.15 = fadd contract float %add803.14, %conv.i.i.15, !dbg !306
  %857 = extractelement <4 x half> %bc2189, i64 0, !dbg !300
  %conv.i.i.16 = fpext half %857 to float, !dbg !301
  %add803.16 = fadd contract float %add803.15, %conv.i.i.16, !dbg !306
  %858 = extractelement <4 x half> %bc2189, i64 1, !dbg !300
  %conv.i.i.17 = fpext half %858 to float, !dbg !301
  %add803.17 = fadd contract float %add803.16, %conv.i.i.17, !dbg !306
  %859 = extractelement <4 x half> %bc2189, i64 2, !dbg !300
  %conv.i.i.18 = fpext half %859 to float, !dbg !301
  %add803.18 = fadd contract float %add803.17, %conv.i.i.18, !dbg !306
  %860 = extractelement <4 x half> %bc2189, i64 3, !dbg !300
  %conv.i.i.19 = fpext half %860 to float, !dbg !301
  %add803.19 = fadd contract float %add803.18, %conv.i.i.19, !dbg !306
  %861 = extractelement <4 x half> %bc2193, i64 0, !dbg !300
  %conv.i.i.20 = fpext half %861 to float, !dbg !301
  %add803.20 = fadd contract float %add803.19, %conv.i.i.20, !dbg !306
  %862 = extractelement <4 x half> %bc2193, i64 1, !dbg !300
  %conv.i.i.21 = fpext half %862 to float, !dbg !301
  %add803.21 = fadd contract float %add803.20, %conv.i.i.21, !dbg !306
  %863 = extractelement <4 x half> %bc2193, i64 2, !dbg !300
  %conv.i.i.22 = fpext half %863 to float, !dbg !301
  %add803.22 = fadd contract float %add803.21, %conv.i.i.22, !dbg !306
  %864 = extractelement <4 x half> %bc2193, i64 3, !dbg !300
  %conv.i.i.23 = fpext half %864 to float, !dbg !301
  %add803.23 = fadd contract float %add803.22, %conv.i.i.23, !dbg !306
  %865 = extractelement <4 x half> %bc2197, i64 0, !dbg !300
  %conv.i.i.24 = fpext half %865 to float, !dbg !301
  %add803.24 = fadd contract float %add803.23, %conv.i.i.24, !dbg !306
  %866 = extractelement <4 x half> %bc2197, i64 1, !dbg !300
  %conv.i.i.25 = fpext half %866 to float, !dbg !301
  %add803.25 = fadd contract float %add803.24, %conv.i.i.25, !dbg !306
  %867 = extractelement <4 x half> %bc2197, i64 2, !dbg !300
  %conv.i.i.26 = fpext half %867 to float, !dbg !301
  %add803.26 = fadd contract float %add803.25, %conv.i.i.26, !dbg !306
  %868 = extractelement <4 x half> %bc2197, i64 3, !dbg !300
  %conv.i.i.27 = fpext half %868 to float, !dbg !301
  %add803.27 = fadd contract float %add803.26, %conv.i.i.27, !dbg !306
  %869 = extractelement <4 x half> %bc2201, i64 0, !dbg !300
  %conv.i.i.28 = fpext half %869 to float, !dbg !301
  %add803.28 = fadd contract float %add803.27, %conv.i.i.28, !dbg !306
  %870 = extractelement <4 x half> %bc2201, i64 1, !dbg !300
  %conv.i.i.29 = fpext half %870 to float, !dbg !301
  %add803.29 = fadd contract float %add803.28, %conv.i.i.29, !dbg !306
  %871 = extractelement <4 x half> %bc2201, i64 2, !dbg !300
  %conv.i.i.30 = fpext half %871 to float, !dbg !301
  %add803.30 = fadd contract float %add803.29, %conv.i.i.30, !dbg !306
  %872 = extractelement <4 x half> %bc2201, i64 3, !dbg !300
  %conv.i.i.31 = fpext half %872 to float, !dbg !301
  %add803.31 = fadd contract float %add803.30, %conv.i.i.31, !dbg !306
  %873 = bitcast float %add803.31 to i32, !dbg !307
  %874 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !309
  %875 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %874) #13, !dbg !312
  %xor.i.i1176 = xor i32 %875, 32, !dbg !313
  %876 = and i32 %875, -64, !dbg !314
  %and.i.i1177 = add nsw i32 %876, 64, !dbg !314
  %cmp.not.i.i1178 = icmp slt i32 %xor.i.i1176, %and.i.i1177, !dbg !315
  %cond.i.i1179 = select i1 %cmp.not.i.i1178, i32 %xor.i.i1176, i32 %875, !dbg !316
  %shl.i.i1180 = shl i32 %cond.i.i1179, 2, !dbg !317
  %877 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1180, i32 %873), !dbg !318
  %878 = bitcast i32 %877 to float, !dbg !319
  %add811 = fadd contract float %add803.31, %878, !dbg !320
  %879 = bitcast float %add811 to i32, !dbg !321
  %880 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !323
  %881 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %880) #13, !dbg !326
  %xor.i.i1181 = xor i32 %881, 16, !dbg !327
  %882 = and i32 %881, -64, !dbg !328
  %and.i.i1182 = add nsw i32 %882, 64, !dbg !328
  %cmp.not.i.i1183 = icmp slt i32 %xor.i.i1181, %and.i.i1182, !dbg !329
  %cond.i.i1184 = select i1 %cmp.not.i.i1183, i32 %xor.i.i1181, i32 %881, !dbg !330
  %shl.i.i1185 = shl i32 %cond.i.i1184, 2, !dbg !331
  %883 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1185, i32 %879), !dbg !332
  %884 = bitcast i32 %883 to float, !dbg !333
  %add816 = fadd contract float %add811, %884, !dbg !334
  %output_acc.sroa.0.0.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 0, !dbg !335
  %div = fdiv contract float %output_acc.sroa.0.0.vec.extract, %add816, !dbg !336
  %output_acc.sroa.0.4.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 1, !dbg !335
  %div.1 = fdiv contract float %output_acc.sroa.0.4.vec.extract, %add816, !dbg !336
  %output_acc.sroa.0.8.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 2, !dbg !335
  %div.2 = fdiv contract float %output_acc.sroa.0.8.vec.extract, %add816, !dbg !336
  %output_acc.sroa.0.12.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 3, !dbg !335
  %div.3 = fdiv contract float %output_acc.sroa.0.12.vec.extract, %add816, !dbg !336
  %output_acc.sroa.34.16.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 0, !dbg !335
  %div.4 = fdiv contract float %output_acc.sroa.34.16.vec.extract, %add816, !dbg !336
  %output_acc.sroa.34.20.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 1, !dbg !335
  %div.5 = fdiv contract float %output_acc.sroa.34.20.vec.extract, %add816, !dbg !336
  %output_acc.sroa.34.24.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 2, !dbg !335
  %div.6 = fdiv contract float %output_acc.sroa.34.24.vec.extract, %add816, !dbg !336
  %output_acc.sroa.34.28.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 3, !dbg !335
  %div.7 = fdiv contract float %output_acc.sroa.34.28.vec.extract, %add816, !dbg !336
  %output_acc.sroa.66.32.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 0, !dbg !335
  %div.8 = fdiv contract float %output_acc.sroa.66.32.vec.extract, %add816, !dbg !336
  %output_acc.sroa.66.36.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 1, !dbg !335
  %div.9 = fdiv contract float %output_acc.sroa.66.36.vec.extract, %add816, !dbg !336
  %output_acc.sroa.66.40.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 2, !dbg !335
  %div.10 = fdiv contract float %output_acc.sroa.66.40.vec.extract, %add816, !dbg !336
  %output_acc.sroa.66.44.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 3, !dbg !335
  %div.11 = fdiv contract float %output_acc.sroa.66.44.vec.extract, %add816, !dbg !336
  %output_acc.sroa.98.48.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 0, !dbg !335
  %div.12 = fdiv contract float %output_acc.sroa.98.48.vec.extract, %add816, !dbg !336
  %output_acc.sroa.98.52.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 1, !dbg !335
  %div.13 = fdiv contract float %output_acc.sroa.98.52.vec.extract, %add816, !dbg !336
  %output_acc.sroa.98.56.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 2, !dbg !335
  %div.14 = fdiv contract float %output_acc.sroa.98.56.vec.extract, %add816, !dbg !336
  %output_acc.sroa.98.60.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 3, !dbg !335
  %div.15 = fdiv contract float %output_acc.sroa.98.60.vec.extract, %add816, !dbg !336
  %and862 = and i32 %2, 7
  %885 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !337
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !337, !noalias !341
  %886 = fptrunc float %div to half, !dbg !337
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %885), !dbg !337, !noalias !341
  %887 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !346
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !346, !noalias !341
  %888 = fptrunc float %div.1 to half, !dbg !346
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %887), !dbg !346, !noalias !341
  %889 = bitcast half %886 to i16, !dbg !348
  %890 = bitcast half %888 to i16, !dbg !351
  %891 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !352
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !352, !noalias !356
  %892 = fptrunc float %div.2 to half, !dbg !352
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %891), !dbg !352, !noalias !356
  %893 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !361
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !361, !noalias !356
  %894 = fptrunc float %div.3 to half, !dbg !361
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %893), !dbg !361, !noalias !356
  %895 = bitcast half %892 to i16, !dbg !363
  %896 = bitcast half %894 to i16, !dbg !365
  %__9.sroa.6.0.insert.ext = zext i16 %896 to i64, !dbg !366
  %__9.sroa.6.0.insert.shift = shl nuw i64 %__9.sroa.6.0.insert.ext, 48, !dbg !366
  %__9.sroa.5.0.insert.ext = zext i16 %895 to i64, !dbg !366
  %__9.sroa.5.0.insert.shift = shl nuw nsw i64 %__9.sroa.5.0.insert.ext, 32, !dbg !366
  %__9.sroa.5.0.insert.insert = or disjoint i64 %__9.sroa.6.0.insert.shift, %__9.sroa.5.0.insert.shift, !dbg !366
  %__9.sroa.4.0.insert.ext = zext i16 %890 to i64, !dbg !366
  %__9.sroa.4.0.insert.shift = shl nuw nsw i64 %__9.sroa.4.0.insert.ext, 16, !dbg !366
  %__9.sroa.4.0.insert.insert = or disjoint i64 %__9.sroa.5.0.insert.insert, %__9.sroa.4.0.insert.shift, !dbg !366
  %__9.sroa.0.0.insert.ext = zext i16 %889 to i64, !dbg !366
  %__9.sroa.0.0.insert.insert = or disjoint i64 %__9.sroa.4.0.insert.insert, %__9.sroa.0.0.insert.ext, !dbg !366
  %xor863 = xor i32 %shr71, %and862, !dbg !367
  %mul864 = shl nuw nsw i32 %xor863, 3, !dbg !368
  %add865 = add nuw nsw i32 %mul864, %mul53, !dbg !369
  %add870 = or disjoint i32 %add865, %mul81, !dbg !370
  %add.ptr872 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add870, !dbg !371
  store i64 %__9.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr872, align 8, !dbg !372
  %897 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !337
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !337, !noalias !341
  %898 = fptrunc float %div.4 to half, !dbg !337
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %897), !dbg !337, !noalias !341
  %899 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !346
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !346, !noalias !341
  %900 = fptrunc float %div.5 to half, !dbg !346
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %899), !dbg !346, !noalias !341
  %901 = bitcast half %898 to i16, !dbg !348
  %902 = bitcast half %900 to i16, !dbg !351
  %903 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !352
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !352, !noalias !356
  %904 = fptrunc float %div.6 to half, !dbg !352
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %903), !dbg !352, !noalias !356
  %905 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !361
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !361, !noalias !356
  %906 = fptrunc float %div.7 to half, !dbg !361
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %905), !dbg !361, !noalias !356
  %907 = bitcast half %904 to i16, !dbg !363
  %908 = bitcast half %906 to i16, !dbg !365
  %__9.sroa.6.0.insert.ext.1 = zext i16 %908 to i64, !dbg !366
  %__9.sroa.6.0.insert.shift.1 = shl nuw i64 %__9.sroa.6.0.insert.ext.1, 48, !dbg !366
  %__9.sroa.5.0.insert.ext.1 = zext i16 %907 to i64, !dbg !366
  %__9.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__9.sroa.5.0.insert.ext.1, 32, !dbg !366
  %__9.sroa.5.0.insert.insert.1 = or disjoint i64 %__9.sroa.6.0.insert.shift.1, %__9.sroa.5.0.insert.shift.1, !dbg !366
  %__9.sroa.4.0.insert.ext.1 = zext i16 %902 to i64, !dbg !366
  %__9.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__9.sroa.4.0.insert.ext.1, 16, !dbg !366
  %__9.sroa.4.0.insert.insert.1 = or disjoint i64 %__9.sroa.5.0.insert.insert.1, %__9.sroa.4.0.insert.shift.1, !dbg !366
  %__9.sroa.0.0.insert.ext.1 = zext i16 %901 to i64, !dbg !366
  %__9.sroa.0.0.insert.insert.1 = or disjoint i64 %__9.sroa.4.0.insert.insert.1, %__9.sroa.0.0.insert.ext.1, !dbg !366
  %add860.1 = add nuw nsw i32 %shr71, 2, !dbg !373
  %xor863.1 = xor i32 %add860.1, %and862, !dbg !367
  %mul864.1 = shl nuw nsw i32 %xor863.1, 3, !dbg !368
  %add865.1 = add nuw nsw i32 %mul864.1, %mul53, !dbg !369
  %add870.1 = or disjoint i32 %add865.1, %mul81, !dbg !370
  %add.ptr872.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add870.1, !dbg !371
  store i64 %__9.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr872.1, align 8, !dbg !372
  %909 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !337
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !337, !noalias !341
  %910 = fptrunc float %div.8 to half, !dbg !337
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %909), !dbg !337, !noalias !341
  %911 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !346
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !346, !noalias !341
  %912 = fptrunc float %div.9 to half, !dbg !346
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %911), !dbg !346, !noalias !341
  %913 = bitcast half %910 to i16, !dbg !348
  %914 = bitcast half %912 to i16, !dbg !351
  %915 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !352
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !352, !noalias !356
  %916 = fptrunc float %div.10 to half, !dbg !352
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %915), !dbg !352, !noalias !356
  %917 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !361
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !361, !noalias !356
  %918 = fptrunc float %div.11 to half, !dbg !361
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %917), !dbg !361, !noalias !356
  %919 = bitcast half %916 to i16, !dbg !363
  %920 = bitcast half %918 to i16, !dbg !365
  %__9.sroa.6.0.insert.ext.2 = zext i16 %920 to i64, !dbg !366
  %__9.sroa.6.0.insert.shift.2 = shl nuw i64 %__9.sroa.6.0.insert.ext.2, 48, !dbg !366
  %__9.sroa.5.0.insert.ext.2 = zext i16 %919 to i64, !dbg !366
  %__9.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__9.sroa.5.0.insert.ext.2, 32, !dbg !366
  %__9.sroa.5.0.insert.insert.2 = or disjoint i64 %__9.sroa.6.0.insert.shift.2, %__9.sroa.5.0.insert.shift.2, !dbg !366
  %__9.sroa.4.0.insert.ext.2 = zext i16 %914 to i64, !dbg !366
  %__9.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__9.sroa.4.0.insert.ext.2, 16, !dbg !366
  %__9.sroa.4.0.insert.insert.2 = or disjoint i64 %__9.sroa.5.0.insert.insert.2, %__9.sroa.4.0.insert.shift.2, !dbg !366
  %__9.sroa.0.0.insert.ext.2 = zext i16 %913 to i64, !dbg !366
  %__9.sroa.0.0.insert.insert.2 = or disjoint i64 %__9.sroa.4.0.insert.insert.2, %__9.sroa.0.0.insert.ext.2, !dbg !366
  %add860.2 = add nuw nsw i32 %shr71, 4, !dbg !373
  %xor863.2 = xor i32 %add860.2, %and862, !dbg !367
  %mul864.2 = shl nuw nsw i32 %xor863.2, 3, !dbg !368
  %add865.2 = add nuw nsw i32 %mul864.2, %mul53, !dbg !369
  %add870.2 = or disjoint i32 %add865.2, %mul81, !dbg !370
  %add.ptr872.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add870.2, !dbg !371
  store i64 %__9.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr872.2, align 8, !dbg !372
  %921 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !337
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !337, !noalias !341
  %922 = fptrunc float %div.12 to half, !dbg !337
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %921), !dbg !337, !noalias !341
  %923 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !346
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !346, !noalias !341
  %924 = fptrunc float %div.13 to half, !dbg !346
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %923), !dbg !346, !noalias !341
  %925 = bitcast half %922 to i16, !dbg !348
  %926 = bitcast half %924 to i16, !dbg !351
  %927 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !352
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !352, !noalias !356
  %928 = fptrunc float %div.14 to half, !dbg !352
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %927), !dbg !352, !noalias !356
  %929 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !361
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !361, !noalias !356
  %930 = fptrunc float %div.15 to half, !dbg !361
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %929), !dbg !361, !noalias !356
  %931 = bitcast half %928 to i16, !dbg !363
  %932 = bitcast half %930 to i16, !dbg !365
  %__9.sroa.6.0.insert.ext.3 = zext i16 %932 to i64, !dbg !366
  %__9.sroa.6.0.insert.shift.3 = shl nuw i64 %__9.sroa.6.0.insert.ext.3, 48, !dbg !366
  %__9.sroa.5.0.insert.ext.3 = zext i16 %931 to i64, !dbg !366
  %__9.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__9.sroa.5.0.insert.ext.3, 32, !dbg !366
  %__9.sroa.5.0.insert.insert.3 = or disjoint i64 %__9.sroa.6.0.insert.shift.3, %__9.sroa.5.0.insert.shift.3, !dbg !366
  %__9.sroa.4.0.insert.ext.3 = zext i16 %926 to i64, !dbg !366
  %__9.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__9.sroa.4.0.insert.ext.3, 16, !dbg !366
  %__9.sroa.4.0.insert.insert.3 = or disjoint i64 %__9.sroa.5.0.insert.insert.3, %__9.sroa.4.0.insert.shift.3, !dbg !366
  %__9.sroa.0.0.insert.ext.3 = zext i16 %925 to i64, !dbg !366
  %__9.sroa.0.0.insert.insert.3 = or disjoint i64 %__9.sroa.4.0.insert.insert.3, %__9.sroa.0.0.insert.ext.3, !dbg !366
  %add860.3 = add nuw nsw i32 %shr71, 6, !dbg !373
  %xor863.3 = xor i32 %add860.3, %and862, !dbg !367
  %mul864.3 = shl nuw nsw i32 %xor863.3, 3, !dbg !368
  %add865.3 = add nuw nsw i32 %mul864.3, %mul53, !dbg !369
  %add870.3 = or disjoint i32 %add865.3, %mul81, !dbg !370
  %add.ptr872.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add870.3, !dbg !371
  store i64 %__9.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr872.3, align 8, !dbg !372
  fence syncscope("warp") release, !dbg !374
  tail call void @llvm.mxc.barrier.warp(), !dbg !377
  fence syncscope("warp") acquire, !dbg !378
  %call887.masked = and i32 %2, 1016
  %mul890 = xor i32 %361, %call887.masked
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul15, !dbg !379
  %invariant.gep1241 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul890, !dbg !379
  %add.ptr905 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !380
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr905, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep1241, i64 16, i1 false), !dbg !381, !tbaa.struct !51, !call_argsrelate !382
  %gep1242.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1241, i32 1024, !dbg !383
  %add.ptr905.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %7, !dbg !380
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr905.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep1242.1, i64 16, i1 false), !dbg !381, !tbaa.struct !51, !call_argsrelate !382
  call void @llvm.lifetime.end.p5(i64 32, ptr addrspace(5) %v_fetch_local) #12, !dbg !384
  ret void, !dbg !384
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p5(i64 immarg, ptr addrspace(5) nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p5(i64 immarg, ptr addrspace(5) nocapture) #4

; Function Attrs: convergent nounwind willreturn memory(none)
declare <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half>, <4 x half>, <4 x float>) #5

; Function Attrs: nounwind speculatable willreturn memory(none)
declare i32 @llvm.mxc.block.id.x() #6

; Function Attrs: nounwind speculatable willreturn memory(none)
declare i32 @llvm.mxc.block.id.y() #6

; Function Attrs: nounwind speculatable willreturn memory(none)
declare i32 @llvm.mxc.block.id.z() #6

; Function Attrs: nounwind speculatable willreturn memory(none)
declare i32 @llvm.mxc.thread.id.x() #6

; Function Attrs: convergent nounwind willreturn
declare void @llvm.mxc.barrier.warp() #7

; Function Attrs: convergent nounwind willreturn memory(none)
declare i32 @llvm.mxc.bsm.bpermute(i32, i32) #5

; Function Attrs: convergent nounwind willreturn memory(none)
declare i32 @llvm.mxc.mbcnt.lo(i32, i32) #5

; Function Attrs: convergent nounwind willreturn memory(none)
declare i32 @llvm.mxc.mbcnt.hi(i32, i32) #5

; Function Attrs: nounwind speculatable willreturn memory(none)
declare align 4 ptr addrspace(4) @llvm.mxc.implicitarg.ptr() #6

; Function Attrs: nounwind speculatable willreturn memory(none)
declare align 4 ptr addrspace(4) @llvm.mxc.dispatch.ptr() #6

; Function Attrs: nounwind speculatable willreturn memory(none)
declare i1 @llvm.mxc.is.private(ptr nocapture) #6

; Function Attrs: nounwind willreturn
declare void @llvm.mxc.sleep(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #9

; Function Attrs: nounwind speculatable willreturn memory(inaccessiblemem: read)
declare i32 @llvm.mxc.gethwreg(i32 immarg) #10

; Function Attrs: nounwind willreturn
declare void @llvm.mxc.sethwreg(i32 immarg, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noalias nocapture writeonly, ptr addrspace(3) noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p3.p4.i64(ptr addrspace(3) noalias nocapture writeonly, ptr addrspace(4) noalias nocapture readonly, i64, i1 immarg) #11

attributes #0 = { mustprogress noreturn nounwind "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="512" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { nounwind "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="512" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" }
attributes #3 = { convergent mustprogress norecurse nounwind willreturn "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-promote-alloca-to-bsm"="true" "disable-promote-alloca-to-vector"="false" "enable-ldg-bsm-opt"="false" "fixed-function-abi"="true" "metaxgpu-bsm-direct-address"="true" "metaxgpu-implicitarg-num-bytes"="80" "metaxgpu-inline-scope"="11" "metaxgpu-max-block-size"="64" "metaxgpu-min-blocks"="1" "metaxgpu-new-streg-abi"="false" "metaxgpu-pk-fma"="false" "metaxgpu-resource-usage"="false" "metaxgpu-sched-select"="default" "metaxgpu-use-dim-intrinsic"="false" "no-trapping-math"="true" "prec-div"="false" "prec-sqrt"="false" "scalarize-global-loads"="true" "shfl-combine"="true" "stack-protector-buffer-size"="8" "target-cpu"="xcore1000" "target-features"="+xcore1000" "uniform-work-group-size"="true" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { convergent nounwind willreturn memory(none) }
attributes #6 = { nounwind speculatable willreturn memory(none) }
attributes #7 = { convergent nounwind willreturn }
attributes #8 = { nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind speculatable willreturn memory(inaccessiblemem: read) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { nomerge }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "mxcc version 1.0.0 (d9102a1572)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v044_codex_power_s8_value_pack_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v044_codex_power_s8_value_pack_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
!42 = !DILocation(line: 21, column: 3, scope: !40)
!43 = !{i32 0, i32 1024}
!44 = !DILocation(line: 29, column: 3, scope: !40)
!45 = !DILocation(line: 30, column: 347, scope: !40)
!46 = !DILocation(line: 30, column: 92, scope: !40)
!47 = !DILocation(line: 30, column: 170, scope: !40)
!48 = !DILocation(line: 30, column: 255, scope: !40)
!49 = !DILocation(line: 30, column: 40, scope: !40)
!50 = !DILocation(line: 30, column: 333, scope: !40)
!51 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30}
!52 = !{i32 -1, i32 3, i32 -1, i32 -1}
!53 = !DILocation(line: 30, column: 425, scope: !40)
!54 = !DILocation(line: 30, column: 56, scope: !40)
!55 = !DILocation(line: 68, column: 3, scope: !56, inlinedAt: !58)
!56 = distinct !DISubprogram(name: "__barrier_warp", scope: !57, file: !57, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!57 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!58 = distinct !DILocation(line: 192, column: 3, scope: !59, inlinedAt: !60)
!59 = distinct !DISubprogram(name: "__syncwarp", scope: !57, file: !57, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!60 = distinct !DILocation(line: 32, column: 3, scope: !40)
!61 = !DILocation(line: 69, column: 3, scope: !56, inlinedAt: !58)
!62 = !DILocation(line: 70, column: 3, scope: !56, inlinedAt: !58)
!63 = !DILocation(line: 34, column: 172, scope: !40)
!64 = !DILocation(line: 34, column: 236, scope: !40)
!65 = !DILocation(line: 34, column: 243, scope: !40)
!66 = !DILocation(line: 34, column: 313, scope: !40)
!67 = !DILocation(line: 34, column: 75, scope: !40)
!68 = !DILocation(line: 34, column: 38, scope: !40)
!69 = !DILocation(line: 45, column: 3, scope: !40)
!70 = !DILocation(line: 46, column: 24, scope: !40)
!71 = !DILocation(line: 46, column: 106, scope: !40)
!72 = !DILocation(line: 47, column: 12, scope: !40)
!73 = !DILocation(line: 47, column: 28, scope: !40)
!74 = !DILocation(line: 68, column: 3, scope: !56, inlinedAt: !75)
!75 = distinct !DILocation(line: 192, column: 3, scope: !59, inlinedAt: !76)
!76 = distinct !DILocation(line: 48, column: 7, scope: !40)
!77 = !DILocation(line: 69, column: 3, scope: !56, inlinedAt: !75)
!78 = !DILocation(line: 70, column: 3, scope: !56, inlinedAt: !75)
!79 = !DILocation(line: 50, column: 7, scope: !40)
!80 = !DILocation(line: 53, column: 71, scope: !40)
!81 = !DILocation(line: 53, column: 13, scope: !40)
!82 = !DILocation(line: 54, column: 19, scope: !40)
!83 = !DILocation(line: 55, column: 9, scope: !40)
!84 = !DILocation(line: 0, scope: !40)
!85 = !DILocation(line: 58, column: 339, scope: !40)
!86 = !DILocation(line: 68, column: 3, scope: !56, inlinedAt: !87)
!87 = distinct !DILocation(line: 192, column: 3, scope: !59, inlinedAt: !88)
!88 = distinct !DILocation(line: 60, column: 7, scope: !40)
!89 = !DILocation(line: 69, column: 3, scope: !56, inlinedAt: !87)
!90 = !DILocation(line: 70, column: 3, scope: !56, inlinedAt: !87)
!91 = !DILocation(line: 64, column: 32, scope: !40)
!92 = !DILocation(line: 66, column: 37, scope: !40)
!93 = !DILocation(line: 74, column: 74, scope: !40)
!94 = !DILocation(line: 74, column: 13, scope: !40)
!95 = !DILocation(line: 74, column: 63, scope: !40)
!96 = !DILocation(line: 351, column: 10, scope: !97, inlinedAt: !99)
!97 = distinct !DISubprogram(name: "max", scope: !98, file: !98, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!98 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!99 = distinct !DILocation(line: 84, column: 24, scope: !40)
!100 = !DILocation(line: 1018, column: 9, scope: !101, inlinedAt: !102)
!101 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !57, file: !57, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!102 = distinct !DILocation(line: 86, column: 40, scope: !40)
!103 = !DILocation(line: 171, column: 37, scope: !104, inlinedAt: !105)
!104 = distinct !DISubprogram(name: "__lane_id", scope: !57, file: !57, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!105 = distinct !DILocation(line: 990, column: 14, scope: !106, inlinedAt: !107)
!106 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !57, file: !57, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!107 = distinct !DILocation(line: 1019, column: 11, scope: !101, inlinedAt: !102)
!108 = !DILocation(line: 171, column: 10, scope: !104, inlinedAt: !105)
!109 = !DILocation(line: 991, column: 20, scope: !106, inlinedAt: !107)
!110 = !DILocation(line: 992, column: 36, scope: !106, inlinedAt: !107)
!111 = !DILocation(line: 992, column: 17, scope: !106, inlinedAt: !107)
!112 = !DILocation(line: 992, column: 11, scope: !106, inlinedAt: !107)
!113 = !DILocation(line: 993, column: 43, scope: !106, inlinedAt: !107)
!114 = !DILocation(line: 993, column: 10, scope: !106, inlinedAt: !107)
!115 = !DILocation(line: 1020, column: 14, scope: !101, inlinedAt: !102)
!116 = !DILocation(line: 351, column: 10, scope: !97, inlinedAt: !117)
!117 = distinct !DILocation(line: 86, column: 22, scope: !40)
!118 = !DILocation(line: 1018, column: 9, scope: !101, inlinedAt: !119)
!119 = distinct !DILocation(line: 87, column: 40, scope: !40)
!120 = !DILocation(line: 171, column: 37, scope: !104, inlinedAt: !121)
!121 = distinct !DILocation(line: 990, column: 14, scope: !106, inlinedAt: !122)
!122 = distinct !DILocation(line: 1019, column: 11, scope: !101, inlinedAt: !119)
!123 = !DILocation(line: 171, column: 10, scope: !104, inlinedAt: !121)
!124 = !DILocation(line: 991, column: 20, scope: !106, inlinedAt: !122)
!125 = !DILocation(line: 992, column: 36, scope: !106, inlinedAt: !122)
!126 = !DILocation(line: 992, column: 17, scope: !106, inlinedAt: !122)
!127 = !DILocation(line: 992, column: 11, scope: !106, inlinedAt: !122)
!128 = !DILocation(line: 993, column: 43, scope: !106, inlinedAt: !122)
!129 = !DILocation(line: 993, column: 10, scope: !106, inlinedAt: !122)
!130 = !DILocation(line: 1020, column: 14, scope: !101, inlinedAt: !119)
!131 = !DILocation(line: 351, column: 10, scope: !97, inlinedAt: !132)
!132 = distinct !DILocation(line: 87, column: 22, scope: !40)
!133 = !DILocation(line: 88, column: 37, scope: !40)
!134 = !DILocation(line: 88, column: 11, scope: !40)
!135 = !DILocation(line: 351, column: 10, scope: !97, inlinedAt: !136)
!136 = distinct !DILocation(line: 91, column: 23, scope: !40)
!137 = !DILocation(line: 101, column: 26, scope: !40)
!138 = !DILocation(line: 102, column: 26, scope: !40)
!139 = !DILocation(line: 103, column: 26, scope: !40)
!140 = !DILocation(line: 104, column: 26, scope: !40)
!141 = !DILocation(line: 106, column: 25, scope: !40)
!142 = !DILocation(line: 107, column: 25, scope: !40)
!143 = !DILocation(line: 108, column: 25, scope: !40)
!144 = !DILocation(line: 109, column: 25, scope: !40)
!145 = !DILocation(line: 111, column: 23, scope: !40)
!146 = !DILocation(line: 112, column: 23, scope: !40)
!147 = !DILocation(line: 113, column: 23, scope: !40)
!148 = !DILocation(line: 114, column: 23, scope: !40)
!149 = !DILocation(line: 285, column: 49, scope: !150, inlinedAt: !151)
!150 = distinct !DISubprogram(name: "exp2f", scope: !98, file: !98, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!151 = distinct !DILocation(line: 115, column: 15, scope: !40)
!152 = !DILocation(line: 285, column: 49, scope: !150, inlinedAt: !153)
!153 = distinct !DILocation(line: 116, column: 15, scope: !40)
!154 = !DILocation(line: 285, column: 49, scope: !150, inlinedAt: !155)
!155 = distinct !DILocation(line: 117, column: 15, scope: !40)
!156 = !DILocation(line: 285, column: 49, scope: !150, inlinedAt: !157)
!157 = distinct !DILocation(line: 118, column: 15, scope: !40)
!158 = !DILocation(line: 1007, column: 10, scope: !159, inlinedAt: !161)
!159 = distinct !DISubprogram(name: "__float2half_rn", scope: !160, file: !160, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!160 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!161 = distinct !DILocation(line: 1077, column: 18, scope: !162, inlinedAt: !163)
!162 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !160, file: !160, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!163 = distinct !DILocation(line: 1295, column: 23, scope: !164, inlinedAt: !165)
!164 = distinct !DISubprogram(name: "__float22half2_rn", scope: !160, file: !160, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!165 = distinct !DILocation(line: 119, column: 29, scope: !40)
!166 = !{!167, !169}
!167 = distinct !{!167, !168, !"_ZL17__floats2half2_rnff: %agg.result"}
!168 = distinct !{!168, !"_ZL17__floats2half2_rnff"}
!169 = distinct !{!169, !170, !"_ZL17__float22half2_rn6float2: %agg.result"}
!170 = distinct !{!170, !"_ZL17__float22half2_rn6float2"}
!171 = !DILocation(line: 1007, column: 10, scope: !159, inlinedAt: !172)
!172 = distinct !DILocation(line: 1077, column: 38, scope: !162, inlinedAt: !163)
!173 = !DILocation(line: 1007, column: 10, scope: !159, inlinedAt: !174)
!174 = distinct !DILocation(line: 1077, column: 18, scope: !162, inlinedAt: !175)
!175 = distinct !DILocation(line: 1295, column: 23, scope: !164, inlinedAt: !176)
!176 = distinct !DILocation(line: 120, column: 29, scope: !40)
!177 = !{!178, !180}
!178 = distinct !{!178, !179, !"_ZL17__floats2half2_rnff: %agg.result"}
!179 = distinct !{!179, !"_ZL17__floats2half2_rnff"}
!180 = distinct !{!180, !181, !"_ZL17__float22half2_rn6float2: %agg.result"}
!181 = distinct !{!181, !"_ZL17__float22half2_rn6float2"}
!182 = !DILocation(line: 1007, column: 10, scope: !159, inlinedAt: !183)
!183 = distinct !DILocation(line: 1077, column: 38, scope: !162, inlinedAt: !175)
!184 = !DILocation(line: 121, column: 53, scope: !40)
!185 = !DILocation(line: 122, column: 5, scope: !40)
!186 = !DILocation(line: 46, column: 93, scope: !40)
!187 = !DILocation(line: 131, column: 26, scope: !40)
!188 = !DILocation(line: 131, column: 110, scope: !40)
!189 = !DILocation(line: 132, column: 12, scope: !40)
!190 = !DILocation(line: 132, column: 30, scope: !40)
!191 = !DILocation(line: 68, column: 3, scope: !56, inlinedAt: !192)
!192 = distinct !DILocation(line: 192, column: 3, scope: !59, inlinedAt: !193)
!193 = distinct !DILocation(line: 133, column: 7, scope: !40)
!194 = !DILocation(line: 69, column: 3, scope: !56, inlinedAt: !192)
!195 = !DILocation(line: 70, column: 3, scope: !56, inlinedAt: !192)
!196 = !DILocation(line: 135, column: 37, scope: !40)
!197 = !DILocation(line: 135, column: 11, scope: !40)
!198 = !DILocation(line: 136, column: 59, scope: !40)
!199 = !DILocation(line: 136, column: 76, scope: !40)
!200 = !DILocation(line: 285, column: 49, scope: !150, inlinedAt: !201)
!201 = distinct !DILocation(line: 136, column: 22, scope: !40)
!202 = !DILocation(line: 137, column: 7, scope: !40)
!203 = !DILocation(line: 606, column: 9, scope: !204, inlinedAt: !205)
!204 = distinct !DISubprogram(name: "__shfl_sync", scope: !57, file: !57, line: 599, type: !7, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!205 = distinct !DILocation(line: 138, column: 20, scope: !40)
!206 = !DILocation(line: 171, column: 37, scope: !104, inlinedAt: !207)
!207 = distinct !DILocation(line: 580, column: 14, scope: !208, inlinedAt: !209)
!208 = distinct !DISubprogram(name: "__shfl_sync", scope: !57, file: !57, line: 578, type: !7, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!209 = distinct !DILocation(line: 607, column: 11, scope: !204, inlinedAt: !205)
!210 = !DILocation(line: 171, column: 10, scope: !104, inlinedAt: !207)
!211 = !DILocation(line: 582, column: 31, scope: !208, inlinedAt: !209)
!212 = !DILocation(line: 582, column: 23, scope: !208, inlinedAt: !209)
!213 = !DILocation(line: 583, column: 43, scope: !208, inlinedAt: !209)
!214 = !DILocation(line: 583, column: 10, scope: !208, inlinedAt: !209)
!215 = !DILocation(line: 608, column: 14, scope: !204, inlinedAt: !205)
!216 = !DILocation(line: 1301, column: 28, scope: !217, inlinedAt: !218)
!217 = distinct !DISubprogram(name: "__half22float2", scope: !160, file: !160, line: 1299, type: !7, scopeLine: 1299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!218 = distinct !DILocation(line: 143, column: 32, scope: !40)
!219 = !DILocation(line: 1302, column: 28, scope: !217, inlinedAt: !218)
!220 = !DILocation(line: 1301, column: 28, scope: !217, inlinedAt: !221)
!221 = distinct !DILocation(line: 144, column: 32, scope: !40)
!222 = !DILocation(line: 1302, column: 28, scope: !217, inlinedAt: !221)
!223 = !DILocation(line: 146, column: 23, scope: !40)
!224 = !DILocation(line: 147, column: 23, scope: !40)
!225 = !DILocation(line: 148, column: 23, scope: !40)
!226 = !DILocation(line: 149, column: 23, scope: !40)
!227 = !DILocation(line: 1007, column: 10, scope: !159, inlinedAt: !228)
!228 = distinct !DILocation(line: 1077, column: 18, scope: !162, inlinedAt: !229)
!229 = distinct !DILocation(line: 1295, column: 23, scope: !164, inlinedAt: !230)
!230 = distinct !DILocation(line: 150, column: 29, scope: !40)
!231 = !{!232, !234}
!232 = distinct !{!232, !233, !"_ZL17__floats2half2_rnff: %agg.result"}
!233 = distinct !{!233, !"_ZL17__floats2half2_rnff"}
!234 = distinct !{!234, !235, !"_ZL17__float22half2_rn6float2: %agg.result"}
!235 = distinct !{!235, !"_ZL17__float22half2_rn6float2"}
!236 = !DILocation(line: 1007, column: 10, scope: !159, inlinedAt: !237)
!237 = distinct !DILocation(line: 1077, column: 38, scope: !162, inlinedAt: !229)
!238 = !DILocation(line: 1007, column: 10, scope: !159, inlinedAt: !239)
!239 = distinct !DILocation(line: 1077, column: 18, scope: !162, inlinedAt: !240)
!240 = distinct !DILocation(line: 1295, column: 23, scope: !164, inlinedAt: !241)
!241 = distinct !DILocation(line: 151, column: 29, scope: !40)
!242 = !{!243, !245}
!243 = distinct !{!243, !244, !"_ZL17__floats2half2_rnff: %agg.result"}
!244 = distinct !{!244, !"_ZL17__floats2half2_rnff"}
!245 = distinct !{!245, !246, !"_ZL17__float22half2_rn6float2: %agg.result"}
!246 = distinct !{!246, !"_ZL17__float22half2_rn6float2"}
!247 = !DILocation(line: 1007, column: 10, scope: !159, inlinedAt: !248)
!248 = distinct !DILocation(line: 1077, column: 38, scope: !162, inlinedAt: !240)
!249 = !DILocation(line: 152, column: 55, scope: !40)
!250 = !DILocation(line: 157, column: 13, scope: !40)
!251 = !DILocation(line: 158, column: 35, scope: !40)
!252 = !DILocation(line: 158, column: 21, scope: !40)
!253 = !DILocation(line: 159, column: 9, scope: !40)
!254 = !DILocation(line: 162, column: 51, scope: !40)
!255 = !DILocation(line: 162, column: 33, scope: !40)
!256 = !DILocation(line: 175, column: 15, scope: !40)
!257 = !DILocation(line: 171, column: 37, scope: !104, inlinedAt: !258)
!258 = distinct !DILocation(line: 990, column: 14, scope: !106, inlinedAt: !259)
!259 = distinct !DILocation(line: 1006, column: 11, scope: !260, inlinedAt: !261)
!260 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !57, file: !57, line: 996, type: !7, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!261 = distinct !DILocation(line: 181, column: 57, scope: !40)
!262 = !DILocation(line: 171, column: 10, scope: !104, inlinedAt: !258)
!263 = !DILocation(line: 991, column: 20, scope: !106, inlinedAt: !259)
!264 = !DILocation(line: 992, column: 36, scope: !106, inlinedAt: !259)
!265 = !DILocation(line: 992, column: 17, scope: !106, inlinedAt: !259)
!266 = !DILocation(line: 992, column: 11, scope: !106, inlinedAt: !259)
!267 = !DILocation(line: 993, column: 43, scope: !106, inlinedAt: !259)
!268 = !DILocation(line: 993, column: 10, scope: !106, inlinedAt: !259)
!269 = !DILocation(line: 171, column: 25, scope: !40)
!270 = !{!26, !26, i64 0}
!271 = !DILocation(line: 200, column: 32, scope: !40)
!272 = !DILocation(line: 202, column: 32, scope: !40)
!273 = !DILocation(line: 205, column: 13, scope: !40)
!274 = !DILocation(line: 212, column: 13, scope: !40)
!275 = !DILocation(line: 219, column: 13, scope: !40)
!276 = !DILocation(line: 226, column: 13, scope: !40)
!277 = !DILocation(line: 232, column: 101, scope: !40)
!278 = !DILocation(line: 232, column: 44, scope: !40)
!279 = !DILocation(line: 232, column: 229, scope: !40)
!280 = !DILocation(line: 187, column: 13, scope: !40)
!281 = !DILocation(line: 194, column: 13, scope: !40)
!282 = !DILocation(line: 200, column: 67, scope: !40)
!283 = !DILocation(line: 202, column: 73, scope: !40)
!284 = !DILocation(line: 68, column: 3, scope: !56, inlinedAt: !285)
!285 = distinct !DILocation(line: 192, column: 3, scope: !59, inlinedAt: !286)
!286 = distinct !DILocation(line: 234, column: 7, scope: !40)
!287 = !DILocation(line: 69, column: 3, scope: !56, inlinedAt: !285)
!288 = !DILocation(line: 70, column: 3, scope: !56, inlinedAt: !285)
!289 = !DILocation(line: 237, column: 139, scope: !40)
!290 = !DILocation(line: 237, column: 83, scope: !40)
!291 = !DILocation(line: 237, column: 46, scope: !40)
!292 = !DILocation(line: 242, column: 47, scope: !40)
!293 = !DILocation(line: 130, column: 44, scope: !40)
!294 = !DILocation(line: 581, column: 31, scope: !208, inlinedAt: !209)
!295 = !DILocation(line: 68, column: 3, scope: !56, inlinedAt: !296)
!296 = distinct !DILocation(line: 192, column: 3, scope: !59, inlinedAt: !297)
!297 = distinct !DILocation(line: 249, column: 3, scope: !40)
!298 = !DILocation(line: 69, column: 3, scope: !56, inlinedAt: !296)
!299 = !DILocation(line: 70, column: 3, scope: !56, inlinedAt: !296)
!300 = !DILocation(line: 253, column: 44, scope: !40)
!301 = !DILocation(line: 1082, column: 16, scope: !302, inlinedAt: !303)
!302 = distinct !DISubprogram(name: "__half2float", scope: !160, file: !160, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!303 = distinct !DILocation(line: 136, column: 55, scope: !304, inlinedAt: !305)
!304 = distinct !DISubprogram(name: "operator float", scope: !160, file: !160, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!305 = distinct !DILocation(line: 253, column: 44, scope: !40)
!306 = !DILocation(line: 253, column: 34, scope: !40)
!307 = !DILocation(line: 1018, column: 9, scope: !101, inlinedAt: !308)
!308 = distinct !DILocation(line: 255, column: 34, scope: !40)
!309 = !DILocation(line: 171, column: 37, scope: !104, inlinedAt: !310)
!310 = distinct !DILocation(line: 990, column: 14, scope: !106, inlinedAt: !311)
!311 = distinct !DILocation(line: 1019, column: 11, scope: !101, inlinedAt: !308)
!312 = !DILocation(line: 171, column: 10, scope: !104, inlinedAt: !310)
!313 = !DILocation(line: 991, column: 20, scope: !106, inlinedAt: !311)
!314 = !DILocation(line: 992, column: 36, scope: !106, inlinedAt: !311)
!315 = !DILocation(line: 992, column: 17, scope: !106, inlinedAt: !311)
!316 = !DILocation(line: 992, column: 11, scope: !106, inlinedAt: !311)
!317 = !DILocation(line: 993, column: 43, scope: !106, inlinedAt: !311)
!318 = !DILocation(line: 993, column: 10, scope: !106, inlinedAt: !311)
!319 = !DILocation(line: 1020, column: 14, scope: !101, inlinedAt: !308)
!320 = !DILocation(line: 255, column: 32, scope: !40)
!321 = !DILocation(line: 1018, column: 9, scope: !101, inlinedAt: !322)
!322 = distinct !DILocation(line: 256, column: 34, scope: !40)
!323 = !DILocation(line: 171, column: 37, scope: !104, inlinedAt: !324)
!324 = distinct !DILocation(line: 990, column: 14, scope: !106, inlinedAt: !325)
!325 = distinct !DILocation(line: 1019, column: 11, scope: !101, inlinedAt: !322)
!326 = !DILocation(line: 171, column: 10, scope: !104, inlinedAt: !324)
!327 = !DILocation(line: 991, column: 20, scope: !106, inlinedAt: !325)
!328 = !DILocation(line: 992, column: 36, scope: !106, inlinedAt: !325)
!329 = !DILocation(line: 992, column: 17, scope: !106, inlinedAt: !325)
!330 = !DILocation(line: 992, column: 11, scope: !106, inlinedAt: !325)
!331 = !DILocation(line: 993, column: 43, scope: !106, inlinedAt: !325)
!332 = !DILocation(line: 993, column: 10, scope: !106, inlinedAt: !325)
!333 = !DILocation(line: 1020, column: 14, scope: !101, inlinedAt: !322)
!334 = !DILocation(line: 256, column: 32, scope: !40)
!335 = !DILocation(line: 260, column: 24, scope: !40)
!336 = !DILocation(line: 260, column: 40, scope: !40)
!337 = !DILocation(line: 1007, column: 10, scope: !159, inlinedAt: !338)
!338 = distinct !DILocation(line: 1077, column: 18, scope: !162, inlinedAt: !339)
!339 = distinct !DILocation(line: 1295, column: 23, scope: !164, inlinedAt: !340)
!340 = distinct !DILocation(line: 266, column: 27, scope: !40)
!341 = !{!342, !344}
!342 = distinct !{!342, !343, !"_ZL17__floats2half2_rnff: %agg.result"}
!343 = distinct !{!343, !"_ZL17__floats2half2_rnff"}
!344 = distinct !{!344, !345, !"_ZL17__float22half2_rn6float2: %agg.result"}
!345 = distinct !{!345, !"_ZL17__float22half2_rn6float2"}
!346 = !DILocation(line: 1007, column: 10, scope: !159, inlinedAt: !347)
!347 = distinct !DILocation(line: 1077, column: 38, scope: !162, inlinedAt: !339)
!348 = !DILocation(line: 596, column: 67, scope: !349, inlinedAt: !350)
!349 = distinct !DISubprogram(name: "__half2", scope: !160, file: !160, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!350 = distinct !DILocation(line: 1077, column: 10, scope: !162, inlinedAt: !339)
!351 = !DILocation(line: 596, column: 73, scope: !349, inlinedAt: !350)
!352 = !DILocation(line: 1007, column: 10, scope: !159, inlinedAt: !353)
!353 = distinct !DILocation(line: 1077, column: 18, scope: !162, inlinedAt: !354)
!354 = distinct !DILocation(line: 1295, column: 23, scope: !164, inlinedAt: !355)
!355 = distinct !DILocation(line: 267, column: 27, scope: !40)
!356 = !{!357, !359}
!357 = distinct !{!357, !358, !"_ZL17__floats2half2_rnff: %agg.result"}
!358 = distinct !{!358, !"_ZL17__floats2half2_rnff"}
!359 = distinct !{!359, !360, !"_ZL17__float22half2_rn6float2: %agg.result"}
!360 = distinct !{!360, !"_ZL17__float22half2_rn6float2"}
!361 = !DILocation(line: 1007, column: 10, scope: !159, inlinedAt: !362)
!362 = distinct !DILocation(line: 1077, column: 38, scope: !162, inlinedAt: !354)
!363 = !DILocation(line: 596, column: 67, scope: !349, inlinedAt: !364)
!364 = distinct !DILocation(line: 1077, column: 10, scope: !162, inlinedAt: !354)
!365 = !DILocation(line: 596, column: 73, scope: !349, inlinedAt: !364)
!366 = !DILocation(line: 268, column: 45, scope: !40)
!367 = !DILocation(line: 269, column: 121, scope: !40)
!368 = !DILocation(line: 269, column: 149, scope: !40)
!369 = !DILocation(line: 269, column: 77, scope: !40)
!370 = !DILocation(line: 269, column: 155, scope: !40)
!371 = !DILocation(line: 269, column: 40, scope: !40)
!372 = !DILocation(line: 269, column: 198, scope: !40)
!373 = !DILocation(line: 269, column: 92, scope: !40)
!374 = !DILocation(line: 68, column: 3, scope: !56, inlinedAt: !375)
!375 = distinct !DILocation(line: 192, column: 3, scope: !59, inlinedAt: !376)
!376 = distinct !DILocation(line: 271, column: 3, scope: !40)
!377 = !DILocation(line: 69, column: 3, scope: !56, inlinedAt: !375)
!378 = !DILocation(line: 70, column: 3, scope: !56, inlinedAt: !375)
!379 = !DILocation(line: 273, column: 8, scope: !40)
!380 = !DILocation(line: 274, column: 22, scope: !40)
!381 = !DILocation(line: 274, column: 131, scope: !40)
!382 = !{i32 2, i32 -1, i32 -1, i32 -1}
!383 = !DILocation(line: 274, column: 168, scope: !40)
!384 = !DILocation(line: 276, column: 1, scope: !40)
