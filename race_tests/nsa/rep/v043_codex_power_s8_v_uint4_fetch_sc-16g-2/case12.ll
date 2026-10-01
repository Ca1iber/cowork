; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v043_codex_power_s8_v_uint4_fetch_sc-16g-2/case12.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v043_codex_power_s8_v_uint4_fetch_sc-16g-2/codegen/case12.device.cpp"
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
  %v_fetch_words = alloca [8 x i32], align 4, addrspace(5)
  call void @llvm.lifetime.start.p5(i64 32, ptr addrspace(5) %v_fetch_words) #12, !dbg !42
  %0 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.y(), !range !29
  %mul = shl nsw i32 %0, 20
  %1 = tail call noundef range(i32 0, 2147483647) i32 @llvm.mxc.block.id.x(), !range !29
  %mul7 = shl nsw i32 %1, 10
  %add = add nuw nsw i32 %mul, %mul7
  %2 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !43
  %mul11 = shl nuw nsw i32 %2, 3
  %add9 = add nuw nsw i32 %add, %mul11
  %mul15 = and i32 %mul11, 8128
  %add211048 = and i32 %mul11, 32
  %shr181049 = add nuw nsw i32 %add211048, %2
  %mul23 = and i32 %shr181049, 32
  %add311050 = and i32 %mul11, 16
  %and261051 = add nuw nsw i32 %add311050, %2
  %mul33 = and i32 %and261051, 16
  %and361053 = mul nuw nsw i32 %2, 9
  %mul42 = and i32 %and361053, 8
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
  %invariant.gep1201 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %mul156, !dbg !69
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
  %gep = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1201, i64 %.idx, !dbg !79
  %cmp144 = icmp ult i32 %add141, 1024, !dbg !80
  br i1 %cmp144, label %if.then145, label %if.end, !dbg !81

if.then145:                                       ; preds = %if.then
  %gep1194 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1194, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1194, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep1194, i64 4
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep1194, align 16, !dbg !82, !tbaa !30
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
  %gep1194.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep, i64 %add150.1
  %condval.sroa.7.0.add.ptr158.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1, i64 4
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep1194.1, align 16, !dbg !82, !tbaa !30
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
  %scores.sroa.0.0.vec.extract2074 = extractelement <4 x float> %28, i64 0
  %spec.select = select i1 %cmp285.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2074, !dbg !94
  %cmp285.not.1.not = icmp slt i32 %add282, %1, !dbg !93
  %scores.sroa.0.4.vec.extract2179 = extractelement <4 x float> %28, i64 1, !dbg !94
  %condval_1.0.1 = select i1 %cmp285.not.1.not, float %scores.sroa.0.4.vec.extract2179, float 0xFFF0000000000000, !dbg !94
  %add283.2 = or disjoint i32 %add282, 2, !dbg !95
  %cmp285.not.2 = icmp sgt i32 %add283.2, %1, !dbg !93
  %scores.sroa.0.8.vec.extract2256 = extractelement <4 x float> %28, i64 2, !dbg !94
  %condval_1.0.2 = select i1 %cmp285.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2256, !dbg !94
  %add283.3 = or disjoint i32 %add282, 3, !dbg !95
  %cmp285.not.3 = icmp sgt i32 %add283.3, %1, !dbg !93
  %scores.sroa.0.12.vec.extract2333 = extractelement <4 x float> %28, i64 3, !dbg !94
  %condval_1.0.3 = select i1 %cmp285.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2333, !dbg !94
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
  %xor.i.i1094 = xor i32 %42, 16, !dbg !124
  %43 = and i32 %42, -64, !dbg !125
  %and.i.i1095 = add nsw i32 %43, 64, !dbg !125
  %cmp.not.i.i1096 = icmp slt i32 %xor.i.i1094, %and.i.i1095, !dbg !126
  %cond.i.i1097 = select i1 %cmp.not.i.i1096, i32 %xor.i.i1094, i32 %42, !dbg !127
  %shl.i.i1098 = shl i32 %cond.i.i1097, 2, !dbg !128
  %44 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1098, i32 %40), !dbg !129
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
  %cond.i.i1103 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i = fadd contract float %add375, %cond.i.i1103, !dbg !149
  %48 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !149
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i = fmul contract float %cond2.i.i, %48, !dbg !149
  %cmp.i.i1104 = fcmp contract olt float %add379, -1.260000e+02, !dbg !152
  %cond.i.i1105 = select contract i1 %cmp.i.i1104, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i1106 = fadd contract float %add379, %cond.i.i1105, !dbg !152
  %49 = tail call contract float @llvm.exp2.f32(float %add.i.i1106), !dbg !152
  %cond2.i.i1107 = select contract i1 %cmp.i.i1104, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i1108 = fmul contract float %cond2.i.i1107, %49, !dbg !152
  %cmp.i.i1109 = fcmp contract olt float %add383, -1.260000e+02, !dbg !154
  %cond.i.i1110 = select contract i1 %cmp.i.i1109, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i1111 = fadd contract float %add383, %cond.i.i1110, !dbg !154
  %50 = tail call contract float @llvm.exp2.f32(float %add.i.i1111), !dbg !154
  %cond2.i.i1112 = select contract i1 %cmp.i.i1109, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i1113 = fmul contract float %cond2.i.i1112, %50, !dbg !154
  %cmp.i.i1114 = fcmp contract olt float %add387, -1.260000e+02, !dbg !156
  %cond.i.i1115 = select contract i1 %cmp.i.i1114, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i1116 = fadd contract float %add387, %cond.i.i1115, !dbg !156
  %51 = tail call contract float @llvm.exp2.f32(float %add.i.i1116), !dbg !156
  %cond2.i.i1117 = select contract i1 %cmp.i.i1114, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i1118 = fmul contract float %cond2.i.i1117, %51, !dbg !156
  %52 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !158, !noalias !166
  %53 = fptrunc float %mul.i.i to half, !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %52), !dbg !158, !noalias !166
  %54 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !166
  %55 = fptrunc float %mul.i.i1108 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %54), !dbg !171, !noalias !166
  %56 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !177
  %57 = fptrunc float %mul.i.i1113 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %56), !dbg !173, !noalias !177
  %58 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !182, !noalias !177
  %59 = fptrunc float %mul.i.i1118 to half, !dbg !182
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
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1201, i64 %.idx.1, !dbg !79
  %cmp144.11237 = icmp ult i32 %add141.1, 1024, !dbg !80
  br i1 %cmp144.11237, label %if.then145.11246, label %if.end.11255, !dbg !81

if.then145.11246:                                 ; preds = %if.then.1
  %gep1194.11238 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.1, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.11239 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.11238, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.11240 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.11238, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.11241 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.11238, i64 4
  %condval.sroa.0.0.copyload.11242 = load i32, ptr addrspace(4) %gep1194.11238, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.copyload.11243 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.11241, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.copyload.11244 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.11240, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.copyload.11245 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.11239, align 4, !dbg !82, !tbaa !30
  br label %if.end.11255, !dbg !83

if.end.11255:                                     ; preds = %if.then145.11246, %if.then.1
  %condval.sroa.0.0.11247 = phi i32 [ %condval.sroa.0.0.copyload.11242, %if.then145.11246 ], [ 0, %if.then.1 ], !dbg !84
  %condval.sroa.5.0.11248 = phi i32 [ %condval.sroa.5.0.copyload.11243, %if.then145.11246 ], [ 0, %if.then.1 ], !dbg !84
  %condval.sroa.6.0.11249 = phi i32 [ %condval.sroa.6.0.copyload.11244, %if.then145.11246 ], [ 0, %if.then.1 ], !dbg !84
  %condval.sroa.7.0.11250 = phi i32 [ %condval.sroa.7.0.copyload.11245, %if.then145.11246 ], [ 0, %if.then.1 ], !dbg !84
  store i32 %condval.sroa.0.0.11247, ptr addrspace(3) %add.ptr45, align 16, !dbg !85, !tbaa !30
  %condval.sroa.5.0.add.ptr215.sroa_idx.11252 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 4, !dbg !85
  store i32 %condval.sroa.5.0.11248, ptr addrspace(3) %condval.sroa.5.0.add.ptr215.sroa_idx.11252, align 4, !dbg !85, !tbaa !30
  %condval.sroa.6.0.add.ptr215.sroa_idx.11253 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 8, !dbg !85
  store i32 %condval.sroa.6.0.11249, ptr addrspace(3) %condval.sroa.6.0.add.ptr215.sroa_idx.11253, align 8, !dbg !85, !tbaa !30
  %condval.sroa.7.0.add.ptr215.sroa_idx.11254 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr45, i32 12, !dbg !85
  store i32 %condval.sroa.7.0.11250, ptr addrspace(3) %condval.sroa.7.0.add.ptr215.sroa_idx.11254, align 4, !dbg !85, !tbaa !30
  %cmp144.1.1 = icmp ult i32 %add141.1, 1016, !dbg !80
  br i1 %cmp144.1.1, label %if.then145.1.1, label %if.end.1.1, !dbg !81

if.then145.1.1:                                   ; preds = %if.end.11255
  %add150.1.1 = or disjoint i64 %mul147, 512
  %gep1194.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.1, i64 %add150.1.1
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1.1, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1.1, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1.1, i64 4
  %condval.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %gep1194.1.1, align 16, !dbg !82, !tbaa !30
  %condval.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr158.sroa_idx.1.1, align 4, !dbg !82, !tbaa !30
  %condval.sroa.6.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr158.sroa_idx.1.1, align 8, !dbg !82, !tbaa !30
  %condval.sroa.7.0.copyload.1.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr158.sroa_idx.1.1, align 4, !dbg !82, !tbaa !30
  br label %if.end.1.1, !dbg !83

if.end.1.1:                                       ; preds = %if.then145.1.1, %if.end.11255
  %condval.sroa.0.0.1.1 = phi i32 [ %condval.sroa.0.0.copyload.1.1, %if.then145.1.1 ], [ 0, %if.end.11255 ], !dbg !84
  %condval.sroa.5.0.1.1 = phi i32 [ %condval.sroa.5.0.copyload.1.1, %if.then145.1.1 ], [ 0, %if.end.11255 ], !dbg !84
  %condval.sroa.6.0.1.1 = phi i32 [ %condval.sroa.6.0.copyload.1.1, %if.then145.1.1 ], [ 0, %if.end.11255 ], !dbg !84
  %condval.sroa.7.0.1.1 = phi i32 [ %condval.sroa.7.0.copyload.1.1, %if.then145.1.1 ], [ 0, %if.end.11255 ], !dbg !84
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
  %k_local.sroa.0.0.copyload.11263 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !91
  %67 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.11263, <4 x half> %12, <4 x float> zeroinitializer), !dbg !92
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !91
  %68 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %16, <4 x float> %67), !dbg !92
  %k_local.sroa.0.0.copyload.2.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !91
  %69 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.1, <4 x half> %18, <4 x float> %68), !dbg !92
  %k_local.sroa.0.0.copyload.3.1 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !91
  %70 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.1, <4 x half> %22, <4 x float> %69), !dbg !92
  %add282.1 = add nuw nsw i32 %mul131.1, %mul281
  %cmp285.not.11264 = icmp sgt i32 %add282.1, %1, !dbg !93
  %scores.sroa.0.0.vec.extract2082 = extractelement <4 x float> %70, i64 0
  %spec.select2576 = select i1 %cmp285.not.11264, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2082, !dbg !94
  %cmp285.not.1.1.not = icmp slt i32 %add282.1, %1, !dbg !93
  %scores.sroa.0.4.vec.extract2185 = extractelement <4 x float> %70, i64 1, !dbg !94
  %condval_1.0.1.1 = select i1 %cmp285.not.1.1.not, float %scores.sroa.0.4.vec.extract2185, float 0xFFF0000000000000, !dbg !94
  %add283.2.1 = or disjoint i32 %add282.1, 2, !dbg !95
  %cmp285.not.2.1 = icmp sgt i32 %add283.2.1, %1, !dbg !93
  %scores.sroa.0.8.vec.extract2262 = extractelement <4 x float> %70, i64 2, !dbg !94
  %condval_1.0.2.1 = select i1 %cmp285.not.2.1, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2262, !dbg !94
  %add283.3.1 = or disjoint i32 %add282.1, 3, !dbg !95
  %cmp285.not.3.1 = icmp sgt i32 %add283.3.1, %1, !dbg !93
  %scores.sroa.0.12.vec.extract2339 = extractelement <4 x float> %70, i64 3, !dbg !94
  %condval_1.0.3.1 = select i1 %cmp285.not.3.1, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2339, !dbg !94
  %71 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2576, float 0xFFF0000000000000), !dbg !96
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
  %xor.i.i1094.1 = xor i32 %84, 16, !dbg !124
  %85 = and i32 %84, -64, !dbg !125
  %and.i.i1095.1 = add nsw i32 %85, 64, !dbg !125
  %cmp.not.i.i1096.1 = icmp slt i32 %xor.i.i1094.1, %and.i.i1095.1, !dbg !126
  %cond.i.i1097.1 = select i1 %cmp.not.i.i1096.1, i32 %xor.i.i1094.1, i32 %84, !dbg !127
  %shl.i.i1098.1 = shl i32 %cond.i.i1097.1, 2, !dbg !128
  %86 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1098.1, i32 %82), !dbg !129
  %87 = bitcast i32 %86 to float, !dbg !130
  %88 = tail call contract noundef float @llvm.maxnum.f32(float %81, float %87), !dbg !131
  %cmp326.1 = icmp eq i32 %shr324, 1, !dbg !133
  %max_cache.sroa.0.2 = select i1 %cmp326.1, float %88, float %max_cache.sroa.0.1, !dbg !134
  %89 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1, float %88), !dbg !135
  %sub.1 = fsub contract float %spec.select2576, %88, !dbg !137
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
  %cond.i.i1103.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i.1 = fadd contract float %add375.1, %cond.i.i1103.1, !dbg !149
  %90 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !149
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %90, !dbg !149
  %cmp.i.i1104.1 = fcmp contract olt float %add379.1, -1.260000e+02, !dbg !152
  %cond.i.i1105.1 = select contract i1 %cmp.i.i1104.1, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i1106.1 = fadd contract float %add379.1, %cond.i.i1105.1, !dbg !152
  %91 = tail call contract float @llvm.exp2.f32(float %add.i.i1106.1), !dbg !152
  %cond2.i.i1107.1 = select contract i1 %cmp.i.i1104.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i1108.1 = fmul contract float %cond2.i.i1107.1, %91, !dbg !152
  %cmp.i.i1109.1 = fcmp contract olt float %add383.1, -1.260000e+02, !dbg !154
  %cond.i.i1110.1 = select contract i1 %cmp.i.i1109.1, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i1111.1 = fadd contract float %add383.1, %cond.i.i1110.1, !dbg !154
  %92 = tail call contract float @llvm.exp2.f32(float %add.i.i1111.1), !dbg !154
  %cond2.i.i1112.1 = select contract i1 %cmp.i.i1109.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i1113.1 = fmul contract float %cond2.i.i1112.1, %92, !dbg !154
  %cmp.i.i1114.1 = fcmp contract olt float %add387.1, -1.260000e+02, !dbg !156
  %cond.i.i1115.1 = select contract i1 %cmp.i.i1114.1, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i1116.1 = fadd contract float %add387.1, %cond.i.i1115.1, !dbg !156
  %93 = tail call contract float @llvm.exp2.f32(float %add.i.i1116.1), !dbg !156
  %cond2.i.i1117.1 = select contract i1 %cmp.i.i1114.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i1118.1 = fmul contract float %cond2.i.i1117.1, %93, !dbg !156
  %94 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !158, !noalias !166
  %95 = fptrunc float %mul.i.i.1 to half, !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %94), !dbg !158, !noalias !166
  %96 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !166
  %97 = fptrunc float %mul.i.i1108.1 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %96), !dbg !171, !noalias !166
  %98 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !177
  %99 = fptrunc float %mul.i.i1113.1 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %98), !dbg !173, !noalias !177
  %100 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !182, !noalias !177
  %101 = fptrunc float %mul.i.i1118.1 to half, !dbg !182
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
  %gep.2 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1201, i64 %.idx.2, !dbg !79
  %cmp144.2 = icmp ult i32 %add141.2, 1024, !dbg !80
  br i1 %cmp144.2, label %if.then145.2, label %if.end.2, !dbg !81

if.then145.2:                                     ; preds = %if.then.2
  %gep1194.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.2, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.2, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.2, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.2, i64 4
  %condval.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %gep1194.2, align 16, !dbg !82, !tbaa !30
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
  %gep1194.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.2, i64 %add150.1.2
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1.2, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1.2, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1.2, i64 4
  %condval.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %gep1194.1.2, align 16, !dbg !82, !tbaa !30
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
  %k_local.sroa.0.0.copyload.21275 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !91
  %109 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.21275, <4 x half> %12, <4 x float> zeroinitializer), !dbg !92
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !91
  %110 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %16, <4 x float> %109), !dbg !92
  %k_local.sroa.0.0.copyload.2.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !91
  %111 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.2, <4 x half> %18, <4 x float> %110), !dbg !92
  %k_local.sroa.0.0.copyload.3.2 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !91
  %112 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.2, <4 x half> %22, <4 x float> %111), !dbg !92
  %add282.2 = add nuw nsw i32 %mul131.2, %mul281
  %cmp285.not.21276 = icmp sgt i32 %add282.2, %1, !dbg !93
  %scores.sroa.0.0.vec.extract2092 = extractelement <4 x float> %112, i64 0
  %spec.select2577 = select i1 %cmp285.not.21276, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2092, !dbg !94
  %cmp285.not.1.2.not = icmp slt i32 %add282.2, %1, !dbg !93
  %scores.sroa.0.4.vec.extract2191 = extractelement <4 x float> %112, i64 1, !dbg !94
  %condval_1.0.1.2 = select i1 %cmp285.not.1.2.not, float %scores.sroa.0.4.vec.extract2191, float 0xFFF0000000000000, !dbg !94
  %add283.2.2 = or disjoint i32 %add282.2, 2, !dbg !95
  %cmp285.not.2.2 = icmp sgt i32 %add283.2.2, %1, !dbg !93
  %scores.sroa.0.8.vec.extract2268 = extractelement <4 x float> %112, i64 2, !dbg !94
  %condval_1.0.2.2 = select i1 %cmp285.not.2.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2268, !dbg !94
  %add283.3.2 = or disjoint i32 %add282.2, 3, !dbg !95
  %cmp285.not.3.2 = icmp sgt i32 %add283.3.2, %1, !dbg !93
  %scores.sroa.0.12.vec.extract2345 = extractelement <4 x float> %112, i64 3, !dbg !94
  %condval_1.0.3.2 = select i1 %cmp285.not.3.2, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2345, !dbg !94
  %113 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2577, float 0xFFF0000000000000), !dbg !96
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
  %xor.i.i1094.2 = xor i32 %126, 16, !dbg !124
  %127 = and i32 %126, -64, !dbg !125
  %and.i.i1095.2 = add nsw i32 %127, 64, !dbg !125
  %cmp.not.i.i1096.2 = icmp slt i32 %xor.i.i1094.2, %and.i.i1095.2, !dbg !126
  %cond.i.i1097.2 = select i1 %cmp.not.i.i1096.2, i32 %xor.i.i1094.2, i32 %126, !dbg !127
  %shl.i.i1098.2 = shl i32 %cond.i.i1097.2, 2, !dbg !128
  %128 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1098.2, i32 %124), !dbg !129
  %129 = bitcast i32 %128 to float, !dbg !130
  %130 = tail call contract noundef float @llvm.maxnum.f32(float %123, float %129), !dbg !131
  %cmp326.2 = icmp eq i32 %shr324, 2, !dbg !133
  %max_cache.sroa.0.4 = select i1 %cmp326.2, float %130, float %max_cache.sroa.0.3, !dbg !134
  %131 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.1, float %130), !dbg !135
  %sub.2 = fsub contract float %spec.select2577, %130, !dbg !137
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
  %cond.i.i1103.2 = select contract i1 %cmp.i.i.2, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i.2 = fadd contract float %add375.2, %cond.i.i1103.2, !dbg !149
  %132 = tail call contract float @llvm.exp2.f32(float %add.i.i.2), !dbg !149
  %cond2.i.i.2 = select contract i1 %cmp.i.i.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i.2 = fmul contract float %cond2.i.i.2, %132, !dbg !149
  %cmp.i.i1104.2 = fcmp contract olt float %add379.2, -1.260000e+02, !dbg !152
  %cond.i.i1105.2 = select contract i1 %cmp.i.i1104.2, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i1106.2 = fadd contract float %add379.2, %cond.i.i1105.2, !dbg !152
  %133 = tail call contract float @llvm.exp2.f32(float %add.i.i1106.2), !dbg !152
  %cond2.i.i1107.2 = select contract i1 %cmp.i.i1104.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i1108.2 = fmul contract float %cond2.i.i1107.2, %133, !dbg !152
  %cmp.i.i1109.2 = fcmp contract olt float %add383.2, -1.260000e+02, !dbg !154
  %cond.i.i1110.2 = select contract i1 %cmp.i.i1109.2, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i1111.2 = fadd contract float %add383.2, %cond.i.i1110.2, !dbg !154
  %134 = tail call contract float @llvm.exp2.f32(float %add.i.i1111.2), !dbg !154
  %cond2.i.i1112.2 = select contract i1 %cmp.i.i1109.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i1113.2 = fmul contract float %cond2.i.i1112.2, %134, !dbg !154
  %cmp.i.i1114.2 = fcmp contract olt float %add387.2, -1.260000e+02, !dbg !156
  %cond.i.i1115.2 = select contract i1 %cmp.i.i1114.2, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i1116.2 = fadd contract float %add387.2, %cond.i.i1115.2, !dbg !156
  %135 = tail call contract float @llvm.exp2.f32(float %add.i.i1116.2), !dbg !156
  %cond2.i.i1117.2 = select contract i1 %cmp.i.i1114.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i1118.2 = fmul contract float %cond2.i.i1117.2, %135, !dbg !156
  %136 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !158, !noalias !166
  %137 = fptrunc float %mul.i.i.2 to half, !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %136), !dbg !158, !noalias !166
  %138 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !166
  %139 = fptrunc float %mul.i.i1108.2 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %138), !dbg !171, !noalias !166
  %140 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !177
  %141 = fptrunc float %mul.i.i1113.2 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %140), !dbg !173, !noalias !177
  %142 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !182, !noalias !177
  %143 = fptrunc float %mul.i.i1118.2 to half, !dbg !182
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
  %gep.3 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1201, i64 %.idx.3, !dbg !79
  %cmp144.3 = icmp ult i32 %add141.3, 1024, !dbg !80
  br i1 %cmp144.3, label %if.then145.3, label %if.end.3, !dbg !81

if.then145.3:                                     ; preds = %if.then.3
  %gep1194.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.3, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.3, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.3, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.3, i64 4
  %condval.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %gep1194.3, align 16, !dbg !82, !tbaa !30
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
  %gep1194.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.3, i64 %add150.1.3
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1.3, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1.3, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1.3, i64 4
  %condval.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %gep1194.1.3, align 16, !dbg !82, !tbaa !30
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
  %k_local.sroa.0.0.copyload.31287 = load <4 x half>, ptr addrspace(3) %add.ptr84, align 8, !dbg !91
  %151 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.31287, <4 x half> %12, <4 x float> zeroinitializer), !dbg !92
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.1, align 8, !dbg !91
  %152 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %16, <4 x float> %151), !dbg !92
  %k_local.sroa.0.0.copyload.2.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.2, align 8, !dbg !91
  %153 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2.3, <4 x half> %18, <4 x float> %152), !dbg !92
  %k_local.sroa.0.0.copyload.3.3 = load <4 x half>, ptr addrspace(3) %add.ptr84.3, align 8, !dbg !91
  %154 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3.3, <4 x half> %22, <4 x float> %153), !dbg !92
  %add282.3 = add nuw nsw i32 %mul131.3, %mul281
  %cmp285.not.31288 = icmp sgt i32 %add282.3, %1, !dbg !93
  %scores.sroa.0.0.vec.extract2102 = extractelement <4 x float> %154, i64 0
  %spec.select2578 = select i1 %cmp285.not.31288, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2102, !dbg !94
  %cmp285.not.1.3.not = icmp slt i32 %add282.3, %1, !dbg !93
  %scores.sroa.0.4.vec.extract2197 = extractelement <4 x float> %154, i64 1, !dbg !94
  %condval_1.0.1.3 = select i1 %cmp285.not.1.3.not, float %scores.sroa.0.4.vec.extract2197, float 0xFFF0000000000000, !dbg !94
  %add283.2.3 = or disjoint i32 %add282.3, 2, !dbg !95
  %cmp285.not.2.3 = icmp sgt i32 %add283.2.3, %1, !dbg !93
  %scores.sroa.0.8.vec.extract2274 = extractelement <4 x float> %154, i64 2, !dbg !94
  %condval_1.0.2.3 = select i1 %cmp285.not.2.3, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2274, !dbg !94
  %add283.3.3 = or disjoint i32 %add282.3, 3, !dbg !95
  %cmp285.not.3.3 = icmp sgt i32 %add283.3.3, %1, !dbg !93
  %scores.sroa.0.12.vec.extract2351 = extractelement <4 x float> %154, i64 3, !dbg !94
  %condval_1.0.3.3 = select i1 %cmp285.not.3.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2351, !dbg !94
  %155 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2578, float 0xFFF0000000000000), !dbg !96
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
  %xor.i.i1094.3 = xor i32 %168, 16, !dbg !124
  %169 = and i32 %168, -64, !dbg !125
  %and.i.i1095.3 = add nsw i32 %169, 64, !dbg !125
  %cmp.not.i.i1096.3 = icmp slt i32 %xor.i.i1094.3, %and.i.i1095.3, !dbg !126
  %cond.i.i1097.3 = select i1 %cmp.not.i.i1096.3, i32 %xor.i.i1094.3, i32 %168, !dbg !127
  %shl.i.i1098.3 = shl i32 %cond.i.i1097.3, 2, !dbg !128
  %170 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1098.3, i32 %166), !dbg !129
  %171 = bitcast i32 %170 to float, !dbg !130
  %172 = tail call contract noundef float @llvm.maxnum.f32(float %165, float %171), !dbg !131
  %cmp326.3 = icmp eq i32 %shr324, 3, !dbg !133
  %max_cache.sroa.0.6 = select i1 %cmp326.3, float %172, float %max_cache.sroa.0.5, !dbg !134
  %173 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.2, float %172), !dbg !135
  %sub.3 = fsub contract float %spec.select2578, %172, !dbg !137
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
  %cond.i.i1103.3 = select contract i1 %cmp.i.i.3, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i.3 = fadd contract float %add375.3, %cond.i.i1103.3, !dbg !149
  %174 = tail call contract float @llvm.exp2.f32(float %add.i.i.3), !dbg !149
  %cond2.i.i.3 = select contract i1 %cmp.i.i.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i.3 = fmul contract float %cond2.i.i.3, %174, !dbg !149
  %cmp.i.i1104.3 = fcmp contract olt float %add379.3, -1.260000e+02, !dbg !152
  %cond.i.i1105.3 = select contract i1 %cmp.i.i1104.3, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i1106.3 = fadd contract float %add379.3, %cond.i.i1105.3, !dbg !152
  %175 = tail call contract float @llvm.exp2.f32(float %add.i.i1106.3), !dbg !152
  %cond2.i.i1107.3 = select contract i1 %cmp.i.i1104.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i1108.3 = fmul contract float %cond2.i.i1107.3, %175, !dbg !152
  %cmp.i.i1109.3 = fcmp contract olt float %add383.3, -1.260000e+02, !dbg !154
  %cond.i.i1110.3 = select contract i1 %cmp.i.i1109.3, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i1111.3 = fadd contract float %add383.3, %cond.i.i1110.3, !dbg !154
  %176 = tail call contract float @llvm.exp2.f32(float %add.i.i1111.3), !dbg !154
  %cond2.i.i1112.3 = select contract i1 %cmp.i.i1109.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i1113.3 = fmul contract float %cond2.i.i1112.3, %176, !dbg !154
  %cmp.i.i1114.3 = fcmp contract olt float %add387.3, -1.260000e+02, !dbg !156
  %cond.i.i1115.3 = select contract i1 %cmp.i.i1114.3, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i1116.3 = fadd contract float %add387.3, %cond.i.i1115.3, !dbg !156
  %177 = tail call contract float @llvm.exp2.f32(float %add.i.i1116.3), !dbg !156
  %cond2.i.i1117.3 = select contract i1 %cmp.i.i1114.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i1118.3 = fmul contract float %cond2.i.i1117.3, %177, !dbg !156
  %178 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !158, !noalias !166
  %179 = fptrunc float %mul.i.i.3 to half, !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %178), !dbg !158, !noalias !166
  %180 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !166
  %181 = fptrunc float %mul.i.i1108.3 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %180), !dbg !171, !noalias !166
  %182 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !177
  %183 = fptrunc float %mul.i.i1113.3 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %182), !dbg !173, !noalias !177
  %184 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !182, !noalias !177
  %185 = fptrunc float %mul.i.i1118.3 to half, !dbg !182
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
  %gep.4 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1201, i64 %.idx.4, !dbg !79
  %cmp144.4 = icmp ult i32 %add141.4, 1024, !dbg !80
  br i1 %cmp144.4, label %if.then145.4, label %if.end.4, !dbg !81

if.then145.4:                                     ; preds = %if.then.4
  %gep1194.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.4, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.4, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.4, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.4, i64 4
  %condval.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %gep1194.4, align 16, !dbg !82, !tbaa !30
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
  %gep1194.1.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.4, i64 %add150.1.4
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1.4, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1.4, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1.4, i64 4
  %condval.sroa.0.0.copyload.1.4 = load i32, ptr addrspace(4) %gep1194.1.4, align 16, !dbg !82, !tbaa !30
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
  %scores.sroa.0.0.vec.extract2112 = extractelement <4 x float> %196, i64 0
  %spec.select2579 = select i1 %cmp285.not.4, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2112, !dbg !94
  %cmp285.not.1.4.not = icmp slt i32 %add282.4, %1, !dbg !93
  %scores.sroa.0.4.vec.extract2203 = extractelement <4 x float> %196, i64 1, !dbg !94
  %condval_1.0.1.4 = select i1 %cmp285.not.1.4.not, float %scores.sroa.0.4.vec.extract2203, float 0xFFF0000000000000, !dbg !94
  %add283.2.4 = or disjoint i32 %add282.4, 2, !dbg !95
  %cmp285.not.2.4 = icmp sgt i32 %add283.2.4, %1, !dbg !93
  %scores.sroa.0.8.vec.extract2280 = extractelement <4 x float> %196, i64 2, !dbg !94
  %condval_1.0.2.4 = select i1 %cmp285.not.2.4, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2280, !dbg !94
  %add283.3.4 = or disjoint i32 %add282.4, 3, !dbg !95
  %cmp285.not.3.4 = icmp sgt i32 %add283.3.4, %1, !dbg !93
  %scores.sroa.0.12.vec.extract2357 = extractelement <4 x float> %196, i64 3, !dbg !94
  %condval_1.0.3.4 = select i1 %cmp285.not.3.4, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2357, !dbg !94
  %197 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2579, float 0xFFF0000000000000), !dbg !96
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
  %xor.i.i1094.4 = xor i32 %210, 16, !dbg !124
  %211 = and i32 %210, -64, !dbg !125
  %and.i.i1095.4 = add nsw i32 %211, 64, !dbg !125
  %cmp.not.i.i1096.4 = icmp slt i32 %xor.i.i1094.4, %and.i.i1095.4, !dbg !126
  %cond.i.i1097.4 = select i1 %cmp.not.i.i1096.4, i32 %xor.i.i1094.4, i32 %210, !dbg !127
  %shl.i.i1098.4 = shl i32 %cond.i.i1097.4, 2, !dbg !128
  %212 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1098.4, i32 %208), !dbg !129
  %213 = bitcast i32 %212 to float, !dbg !130
  %214 = tail call contract noundef float @llvm.maxnum.f32(float %207, float %213), !dbg !131
  %cmp326.4 = icmp ult i32 %2, 16, !dbg !133
  %max_cache.sroa.11.0 = select i1 %cmp326.4, float %214, float 0xFFF0000000000000, !dbg !134
  %215 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.3, float %214), !dbg !135
  %sub.4 = fsub contract float %spec.select2579, %214, !dbg !137
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
  %cond.i.i1103.4 = select contract i1 %cmp.i.i.4, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i.4 = fadd contract float %add375.4, %cond.i.i1103.4, !dbg !149
  %216 = tail call contract float @llvm.exp2.f32(float %add.i.i.4), !dbg !149
  %cond2.i.i.4 = select contract i1 %cmp.i.i.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i.4 = fmul contract float %cond2.i.i.4, %216, !dbg !149
  %cmp.i.i1104.4 = fcmp contract olt float %add379.4, -1.260000e+02, !dbg !152
  %cond.i.i1105.4 = select contract i1 %cmp.i.i1104.4, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i1106.4 = fadd contract float %add379.4, %cond.i.i1105.4, !dbg !152
  %217 = tail call contract float @llvm.exp2.f32(float %add.i.i1106.4), !dbg !152
  %cond2.i.i1107.4 = select contract i1 %cmp.i.i1104.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i1108.4 = fmul contract float %cond2.i.i1107.4, %217, !dbg !152
  %cmp.i.i1109.4 = fcmp contract olt float %add383.4, -1.260000e+02, !dbg !154
  %cond.i.i1110.4 = select contract i1 %cmp.i.i1109.4, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i1111.4 = fadd contract float %add383.4, %cond.i.i1110.4, !dbg !154
  %218 = tail call contract float @llvm.exp2.f32(float %add.i.i1111.4), !dbg !154
  %cond2.i.i1112.4 = select contract i1 %cmp.i.i1109.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i1113.4 = fmul contract float %cond2.i.i1112.4, %218, !dbg !154
  %cmp.i.i1114.4 = fcmp contract olt float %add387.4, -1.260000e+02, !dbg !156
  %cond.i.i1115.4 = select contract i1 %cmp.i.i1114.4, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i1116.4 = fadd contract float %add387.4, %cond.i.i1115.4, !dbg !156
  %219 = tail call contract float @llvm.exp2.f32(float %add.i.i1116.4), !dbg !156
  %cond2.i.i1117.4 = select contract i1 %cmp.i.i1114.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i1118.4 = fmul contract float %cond2.i.i1117.4, %219, !dbg !156
  %220 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !158, !noalias !166
  %221 = fptrunc float %mul.i.i.4 to half, !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %220), !dbg !158, !noalias !166
  %222 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !166
  %223 = fptrunc float %mul.i.i1108.4 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %222), !dbg !171, !noalias !166
  %224 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !177
  %225 = fptrunc float %mul.i.i1113.4 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %224), !dbg !173, !noalias !177
  %226 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !182, !noalias !177
  %227 = fptrunc float %mul.i.i1118.4 to half, !dbg !182
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
  %gep.5 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1201, i64 %.idx.5, !dbg !79
  %cmp144.5 = icmp ult i32 %add141.5, 1024, !dbg !80
  br i1 %cmp144.5, label %if.then145.5, label %if.end.5, !dbg !81

if.then145.5:                                     ; preds = %if.then.5
  %gep1194.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.5, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.5, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.5, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.5, i64 4
  %condval.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %gep1194.5, align 16, !dbg !82, !tbaa !30
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
  %gep1194.1.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.5, i64 %add150.1.5
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1.5, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1.5, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1.5, i64 4
  %condval.sroa.0.0.copyload.1.5 = load i32, ptr addrspace(4) %gep1194.1.5, align 16, !dbg !82, !tbaa !30
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
  %scores.sroa.0.0.vec.extract2122 = extractelement <4 x float> %238, i64 0
  %spec.select2580 = select i1 %cmp285.not.5, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2122, !dbg !94
  %cmp285.not.1.5.not = icmp slt i32 %add282.5, %1, !dbg !93
  %scores.sroa.0.4.vec.extract2209 = extractelement <4 x float> %238, i64 1, !dbg !94
  %condval_1.0.1.5 = select i1 %cmp285.not.1.5.not, float %scores.sroa.0.4.vec.extract2209, float 0xFFF0000000000000, !dbg !94
  %add283.2.5 = or disjoint i32 %add282.5, 2, !dbg !95
  %cmp285.not.2.5 = icmp sgt i32 %add283.2.5, %1, !dbg !93
  %scores.sroa.0.8.vec.extract2286 = extractelement <4 x float> %238, i64 2, !dbg !94
  %condval_1.0.2.5 = select i1 %cmp285.not.2.5, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2286, !dbg !94
  %add283.3.5 = or disjoint i32 %add282.5, 3, !dbg !95
  %cmp285.not.3.5 = icmp sgt i32 %add283.3.5, %1, !dbg !93
  %scores.sroa.0.12.vec.extract2363 = extractelement <4 x float> %238, i64 3, !dbg !94
  %condval_1.0.3.5 = select i1 %cmp285.not.3.5, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2363, !dbg !94
  %239 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2580, float 0xFFF0000000000000), !dbg !96
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
  %xor.i.i1094.5 = xor i32 %252, 16, !dbg !124
  %253 = and i32 %252, -64, !dbg !125
  %and.i.i1095.5 = add nsw i32 %253, 64, !dbg !125
  %cmp.not.i.i1096.5 = icmp slt i32 %xor.i.i1094.5, %and.i.i1095.5, !dbg !126
  %cond.i.i1097.5 = select i1 %cmp.not.i.i1096.5, i32 %xor.i.i1094.5, i32 %252, !dbg !127
  %shl.i.i1098.5 = shl i32 %cond.i.i1097.5, 2, !dbg !128
  %254 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1098.5, i32 %250), !dbg !129
  %255 = bitcast i32 %254 to float, !dbg !130
  %256 = tail call contract noundef float @llvm.maxnum.f32(float %249, float %255), !dbg !131
  %cmp326.5 = icmp eq i32 %shr324, 1, !dbg !133
  %max_cache.sroa.11.2 = select i1 %cmp326.5, float %256, float %max_cache.sroa.11.1, !dbg !134
  %257 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.4, float %256), !dbg !135
  %sub.5 = fsub contract float %spec.select2580, %256, !dbg !137
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
  %cond.i.i1103.5 = select contract i1 %cmp.i.i.5, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i.5 = fadd contract float %add375.5, %cond.i.i1103.5, !dbg !149
  %258 = tail call contract float @llvm.exp2.f32(float %add.i.i.5), !dbg !149
  %cond2.i.i.5 = select contract i1 %cmp.i.i.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i.5 = fmul contract float %cond2.i.i.5, %258, !dbg !149
  %cmp.i.i1104.5 = fcmp contract olt float %add379.5, -1.260000e+02, !dbg !152
  %cond.i.i1105.5 = select contract i1 %cmp.i.i1104.5, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i1106.5 = fadd contract float %add379.5, %cond.i.i1105.5, !dbg !152
  %259 = tail call contract float @llvm.exp2.f32(float %add.i.i1106.5), !dbg !152
  %cond2.i.i1107.5 = select contract i1 %cmp.i.i1104.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i1108.5 = fmul contract float %cond2.i.i1107.5, %259, !dbg !152
  %cmp.i.i1109.5 = fcmp contract olt float %add383.5, -1.260000e+02, !dbg !154
  %cond.i.i1110.5 = select contract i1 %cmp.i.i1109.5, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i1111.5 = fadd contract float %add383.5, %cond.i.i1110.5, !dbg !154
  %260 = tail call contract float @llvm.exp2.f32(float %add.i.i1111.5), !dbg !154
  %cond2.i.i1112.5 = select contract i1 %cmp.i.i1109.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i1113.5 = fmul contract float %cond2.i.i1112.5, %260, !dbg !154
  %cmp.i.i1114.5 = fcmp contract olt float %add387.5, -1.260000e+02, !dbg !156
  %cond.i.i1115.5 = select contract i1 %cmp.i.i1114.5, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i1116.5 = fadd contract float %add387.5, %cond.i.i1115.5, !dbg !156
  %261 = tail call contract float @llvm.exp2.f32(float %add.i.i1116.5), !dbg !156
  %cond2.i.i1117.5 = select contract i1 %cmp.i.i1114.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i1118.5 = fmul contract float %cond2.i.i1117.5, %261, !dbg !156
  %262 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !158, !noalias !166
  %263 = fptrunc float %mul.i.i.5 to half, !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %262), !dbg !158, !noalias !166
  %264 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !166
  %265 = fptrunc float %mul.i.i1108.5 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %264), !dbg !171, !noalias !166
  %266 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !177
  %267 = fptrunc float %mul.i.i1113.5 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %266), !dbg !173, !noalias !177
  %268 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !182, !noalias !177
  %269 = fptrunc float %mul.i.i1118.5 to half, !dbg !182
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
  %gep.6 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1201, i64 %.idx.6, !dbg !79
  %cmp144.6 = icmp ult i32 %add141.6, 1024, !dbg !80
  br i1 %cmp144.6, label %if.then145.6, label %if.end.6, !dbg !81

if.then145.6:                                     ; preds = %if.then.6
  %gep1194.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.6, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.6, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.6, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.6, i64 4
  %condval.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %gep1194.6, align 16, !dbg !82, !tbaa !30
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
  %gep1194.1.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.6, i64 %add150.1.6
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1.6, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1.6, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1.6, i64 4
  %condval.sroa.0.0.copyload.1.6 = load i32, ptr addrspace(4) %gep1194.1.6, align 16, !dbg !82, !tbaa !30
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
  %scores.sroa.0.0.vec.extract2132 = extractelement <4 x float> %280, i64 0
  %spec.select2581 = select i1 %cmp285.not.6, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2132, !dbg !94
  %cmp285.not.1.6.not = icmp slt i32 %add282.6, %1, !dbg !93
  %scores.sroa.0.4.vec.extract2215 = extractelement <4 x float> %280, i64 1, !dbg !94
  %condval_1.0.1.6 = select i1 %cmp285.not.1.6.not, float %scores.sroa.0.4.vec.extract2215, float 0xFFF0000000000000, !dbg !94
  %add283.2.6 = or disjoint i32 %add282.6, 2, !dbg !95
  %cmp285.not.2.6 = icmp sgt i32 %add283.2.6, %1, !dbg !93
  %scores.sroa.0.8.vec.extract2292 = extractelement <4 x float> %280, i64 2, !dbg !94
  %condval_1.0.2.6 = select i1 %cmp285.not.2.6, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2292, !dbg !94
  %add283.3.6 = or disjoint i32 %add282.6, 3, !dbg !95
  %cmp285.not.3.6 = icmp sgt i32 %add283.3.6, %1, !dbg !93
  %scores.sroa.0.12.vec.extract2369 = extractelement <4 x float> %280, i64 3, !dbg !94
  %condval_1.0.3.6 = select i1 %cmp285.not.3.6, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2369, !dbg !94
  %281 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2581, float 0xFFF0000000000000), !dbg !96
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
  %xor.i.i1094.6 = xor i32 %294, 16, !dbg !124
  %295 = and i32 %294, -64, !dbg !125
  %and.i.i1095.6 = add nsw i32 %295, 64, !dbg !125
  %cmp.not.i.i1096.6 = icmp slt i32 %xor.i.i1094.6, %and.i.i1095.6, !dbg !126
  %cond.i.i1097.6 = select i1 %cmp.not.i.i1096.6, i32 %xor.i.i1094.6, i32 %294, !dbg !127
  %shl.i.i1098.6 = shl i32 %cond.i.i1097.6, 2, !dbg !128
  %296 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1098.6, i32 %292), !dbg !129
  %297 = bitcast i32 %296 to float, !dbg !130
  %298 = tail call contract noundef float @llvm.maxnum.f32(float %291, float %297), !dbg !131
  %cmp326.6 = icmp eq i32 %shr324, 2, !dbg !133
  %max_cache.sroa.11.4 = select i1 %cmp326.6, float %298, float %max_cache.sroa.11.3, !dbg !134
  %299 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.5, float %298), !dbg !135
  %sub.6 = fsub contract float %spec.select2581, %298, !dbg !137
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
  %cond.i.i1103.6 = select contract i1 %cmp.i.i.6, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i.6 = fadd contract float %add375.6, %cond.i.i1103.6, !dbg !149
  %300 = tail call contract float @llvm.exp2.f32(float %add.i.i.6), !dbg !149
  %cond2.i.i.6 = select contract i1 %cmp.i.i.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i.6 = fmul contract float %cond2.i.i.6, %300, !dbg !149
  %cmp.i.i1104.6 = fcmp contract olt float %add379.6, -1.260000e+02, !dbg !152
  %cond.i.i1105.6 = select contract i1 %cmp.i.i1104.6, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i1106.6 = fadd contract float %add379.6, %cond.i.i1105.6, !dbg !152
  %301 = tail call contract float @llvm.exp2.f32(float %add.i.i1106.6), !dbg !152
  %cond2.i.i1107.6 = select contract i1 %cmp.i.i1104.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i1108.6 = fmul contract float %cond2.i.i1107.6, %301, !dbg !152
  %cmp.i.i1109.6 = fcmp contract olt float %add383.6, -1.260000e+02, !dbg !154
  %cond.i.i1110.6 = select contract i1 %cmp.i.i1109.6, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i1111.6 = fadd contract float %add383.6, %cond.i.i1110.6, !dbg !154
  %302 = tail call contract float @llvm.exp2.f32(float %add.i.i1111.6), !dbg !154
  %cond2.i.i1112.6 = select contract i1 %cmp.i.i1109.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i1113.6 = fmul contract float %cond2.i.i1112.6, %302, !dbg !154
  %cmp.i.i1114.6 = fcmp contract olt float %add387.6, -1.260000e+02, !dbg !156
  %cond.i.i1115.6 = select contract i1 %cmp.i.i1114.6, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i1116.6 = fadd contract float %add387.6, %cond.i.i1115.6, !dbg !156
  %303 = tail call contract float @llvm.exp2.f32(float %add.i.i1116.6), !dbg !156
  %cond2.i.i1117.6 = select contract i1 %cmp.i.i1114.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i1118.6 = fmul contract float %cond2.i.i1117.6, %303, !dbg !156
  %304 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !158, !noalias !166
  %305 = fptrunc float %mul.i.i.6 to half, !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %304), !dbg !158, !noalias !166
  %306 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !166
  %307 = fptrunc float %mul.i.i1108.6 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %306), !dbg !171, !noalias !166
  %308 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !177
  %309 = fptrunc float %mul.i.i1113.6 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %308), !dbg !173, !noalias !177
  %310 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !182, !noalias !177
  %311 = fptrunc float %mul.i.i1118.6 to half, !dbg !182
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
  %gep.7 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep1201, i64 %.idx.7, !dbg !79
  %cmp144.7 = icmp ult i32 %add141.7, 1024, !dbg !80
  br i1 %cmp144.7, label %if.then145.7, label %if.end.7, !dbg !81

if.then145.7:                                     ; preds = %if.then.7
  %gep1194.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.7, i64 %mul147
  %condval.sroa.7.0.add.ptr158.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.7, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.7, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.7, i64 4
  %condval.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %gep1194.7, align 16, !dbg !82, !tbaa !30
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
  %gep1194.1.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %gep.7, i64 %add150.1.7
  %condval.sroa.7.0.add.ptr158.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1.7, i64 12
  %condval.sroa.6.0.add.ptr158.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1.7, i64 8
  %condval.sroa.5.0.add.ptr158.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %gep1194.1.7, i64 4
  %condval.sroa.0.0.copyload.1.7 = load i32, ptr addrspace(4) %gep1194.1.7, align 16, !dbg !82, !tbaa !30
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
  %scores.sroa.0.0.vec.extract2142 = extractelement <4 x float> %322, i64 0
  %spec.select2582 = select i1 %cmp285.not.7, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract2142, !dbg !94
  %cmp285.not.1.7.not = icmp slt i32 %add282.7, %1, !dbg !93
  %scores.sroa.0.4.vec.extract2221 = extractelement <4 x float> %322, i64 1, !dbg !94
  %condval_1.0.1.7 = select i1 %cmp285.not.1.7.not, float %scores.sroa.0.4.vec.extract2221, float 0xFFF0000000000000, !dbg !94
  %add283.2.7 = or disjoint i32 %add282.7, 2, !dbg !95
  %cmp285.not.2.7 = icmp sgt i32 %add283.2.7, %1, !dbg !93
  %scores.sroa.0.8.vec.extract2298 = extractelement <4 x float> %322, i64 2, !dbg !94
  %condval_1.0.2.7 = select i1 %cmp285.not.2.7, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract2298, !dbg !94
  %add283.3.7 = or disjoint i32 %add282.7, 3, !dbg !95
  %cmp285.not.3.7 = icmp sgt i32 %add283.3.7, %1, !dbg !93
  %scores.sroa.0.12.vec.extract2375 = extractelement <4 x float> %322, i64 3, !dbg !94
  %condval_1.0.3.7 = select i1 %cmp285.not.3.7, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract2375, !dbg !94
  %323 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select2582, float 0xFFF0000000000000), !dbg !96
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
  %xor.i.i1094.7 = xor i32 %336, 16, !dbg !124
  %337 = and i32 %336, -64, !dbg !125
  %and.i.i1095.7 = add nsw i32 %337, 64, !dbg !125
  %cmp.not.i.i1096.7 = icmp slt i32 %xor.i.i1094.7, %and.i.i1095.7, !dbg !126
  %cond.i.i1097.7 = select i1 %cmp.not.i.i1096.7, i32 %xor.i.i1094.7, i32 %336, !dbg !127
  %shl.i.i1098.7 = shl i32 %cond.i.i1097.7, 2, !dbg !128
  %338 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1098.7, i32 %334), !dbg !129
  %339 = bitcast i32 %338 to float, !dbg !130
  %340 = tail call contract noundef float @llvm.maxnum.f32(float %333, float %339), !dbg !131
  %cmp326.7 = icmp eq i32 %shr324, 3, !dbg !133
  %max_cache.sroa.11.6 = select i1 %cmp326.7, float %340, float %max_cache.sroa.11.5, !dbg !134
  %341 = tail call contract noundef float @llvm.maxnum.f32(float %global_max.sroa.0.1.6, float %340), !dbg !135
  %sub.7 = fsub contract float %spec.select2582, %340, !dbg !137
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
  %cond.i.i1103.7 = select contract i1 %cmp.i.i.7, float 6.400000e+01, float 0.000000e+00, !dbg !149
  %add.i.i.7 = fadd contract float %add375.7, %cond.i.i1103.7, !dbg !149
  %342 = tail call contract float @llvm.exp2.f32(float %add.i.i.7), !dbg !149
  %cond2.i.i.7 = select contract i1 %cmp.i.i.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !149
  %mul.i.i.7 = fmul contract float %cond2.i.i.7, %342, !dbg !149
  %cmp.i.i1104.7 = fcmp contract olt float %add379.7, -1.260000e+02, !dbg !152
  %cond.i.i1105.7 = select contract i1 %cmp.i.i1104.7, float 6.400000e+01, float 0.000000e+00, !dbg !152
  %add.i.i1106.7 = fadd contract float %add379.7, %cond.i.i1105.7, !dbg !152
  %343 = tail call contract float @llvm.exp2.f32(float %add.i.i1106.7), !dbg !152
  %cond2.i.i1107.7 = select contract i1 %cmp.i.i1104.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !152
  %mul.i.i1108.7 = fmul contract float %cond2.i.i1107.7, %343, !dbg !152
  %cmp.i.i1109.7 = fcmp contract olt float %add383.7, -1.260000e+02, !dbg !154
  %cond.i.i1110.7 = select contract i1 %cmp.i.i1109.7, float 6.400000e+01, float 0.000000e+00, !dbg !154
  %add.i.i1111.7 = fadd contract float %add383.7, %cond.i.i1110.7, !dbg !154
  %344 = tail call contract float @llvm.exp2.f32(float %add.i.i1111.7), !dbg !154
  %cond2.i.i1112.7 = select contract i1 %cmp.i.i1109.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !154
  %mul.i.i1113.7 = fmul contract float %cond2.i.i1112.7, %344, !dbg !154
  %cmp.i.i1114.7 = fcmp contract olt float %add387.7, -1.260000e+02, !dbg !156
  %cond.i.i1115.7 = select contract i1 %cmp.i.i1114.7, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i1116.7 = fadd contract float %add387.7, %cond.i.i1115.7, !dbg !156
  %345 = tail call contract float @llvm.exp2.f32(float %add.i.i1116.7), !dbg !156
  %cond2.i.i1117.7 = select contract i1 %cmp.i.i1114.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i1118.7 = fmul contract float %cond2.i.i1117.7, %345, !dbg !156
  %346 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !158, !noalias !166
  %347 = fptrunc float %mul.i.i.7 to half, !dbg !158
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %346), !dbg !158, !noalias !166
  %348 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !171, !noalias !166
  %349 = fptrunc float %mul.i.i1108.7 to half, !dbg !171
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %348), !dbg !171, !noalias !166
  %350 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !173, !noalias !177
  %351 = fptrunc float %mul.i.i1113.7 to half, !dbg !173
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %350), !dbg !173, !noalias !177
  %352 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !182
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !182, !noalias !177
  %353 = fptrunc float %mul.i.i1118.7 to half, !dbg !182
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
  %cmp595 = icmp eq i32 %364, 0
  %idxprom645.pn.in.v = select i1 %cmp595, i32 8, i32 12
  %and699 = shl nuw nsw i32 %2, 5
  %mul700 = and i32 %and699, 224
  %365 = shl nuw nsw i32 %2, 1
  %mul705 = and i32 %365, 16
  %shr711 = and i32 %and63, 3
  %xor = xor i32 %shr711, %shr324
  %and725 = shl nuw nsw i32 %2, 8
  %mul726 = and i32 %and725, 768
  %366 = shl nuw nsw i32 %2, 2
  %mul732 = and i32 %366, 48
  %and738 = and i32 %2, 3
  %367 = xor i32 %shr324, %and738
  %368 = load i32, ptr addrspace(1) %arrayidx130, align 4, !dbg !187, !tbaa !30
  %mul444 = shl nsw i32 %368, 4, !dbg !188
  %cmp445 = icmp slt i32 %368, 0, !dbg !189
  %cmp448.not = icmp sgt i32 %mul444, %1
  %or.cond1181 = select i1 %cmp445, i1 true, i1 %cmp448.not, !dbg !190
  br i1 %or.cond1181, label %if.end770, label %if.then449, !dbg !190

if.then449:                                       ; preds = %if.end415.7
  fence syncscope("warp") release, !dbg !191
  tail call void @llvm.mxc.barrier.warp(), !dbg !194
  fence syncscope("warp") acquire, !dbg !195
  %cmp454 = icmp ult i32 %2, 16, !dbg !196
  br i1 %cmp454, label %if.then455, label %if.end464, !dbg !197

if.then455:                                       ; preds = %if.then449
  %sub460 = fsub contract float %max_cache.sroa.0.7, %global_max.sroa.0.1.7, !dbg !198
  %mul461 = fmul contract float %sub460, 0x3FC7154760000000, !dbg !199
  %cmp.i.i1120 = fcmp contract olt float %mul461, -1.260000e+02, !dbg !200
  %cond.i.i1121 = select contract i1 %cmp.i.i1120, float 6.400000e+01, float 0.000000e+00, !dbg !200
  %add.i.i1122 = fadd contract float %mul461, %cond.i.i1121, !dbg !200
  %369 = tail call contract float @llvm.exp2.f32(float %add.i.i1122), !dbg !200
  %cond2.i.i1123 = select contract i1 %cmp.i.i1120, float 0x3BF0000000000000, float 1.000000e+00, !dbg !200
  %mul.i.i1124 = fmul contract float %cond2.i.i1123, %369, !dbg !200
  br label %if.end464, !dbg !202

if.end464:                                        ; preds = %if.then455, %if.then449
  %rescale.sroa.0.0 = phi float [ %mul.i.i1124, %if.then455 ], [ 0.000000e+00, %if.then449 ], !dbg !84
  %370 = bitcast float %rescale.sroa.0.0 to i32, !dbg !203
  %371 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !206
  %372 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %371) #13, !dbg !210
  %and.i.i1125 = and i32 %372, 1073741760, !dbg !211
  %add.i.i1126 = or disjoint i32 %and.i.i1125, %and469, !dbg !212
  %shl.i.i1127 = shl nuw i32 %add.i.i1126, 2, !dbg !213
  %373 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1127, i32 %370), !dbg !214
  %374 = bitcast i32 %373 to float, !dbg !215
  %375 = extractelement <4 x half> %64, i64 0, !dbg !216
  %conv.i1128 = fpext half %375 to float, !dbg !216
  %376 = extractelement <4 x half> %64, i64 1, !dbg !219
  %conv6.i = fpext half %376 to float, !dbg !219
  %377 = extractelement <4 x half> %64, i64 2, !dbg !220
  %conv.i1130 = fpext half %377 to float, !dbg !220
  %378 = extractelement <4 x half> %64, i64 3, !dbg !222
  %conv6.i1132 = fpext half %378 to float, !dbg !222
  %mul494 = fmul contract float %374, %conv.i1128, !dbg !223
  %mul498 = fmul contract float %374, %conv6.i, !dbg !224
  %mul502 = fmul contract float %374, %conv.i1130, !dbg !225
  %mul506 = fmul contract float %374, %conv6.i1132, !dbg !226
  %379 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !231
  %380 = fptrunc float %mul494 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %379), !dbg !227, !noalias !231
  %381 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !236, !noalias !231
  %382 = fptrunc float %mul498 to half, !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %381), !dbg !236, !noalias !231
  %383 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !238, !noalias !242
  %384 = fptrunc float %mul502 to half, !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %383), !dbg !238, !noalias !242
  %385 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !247, !noalias !242
  %386 = fptrunc float %mul506 to half, !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %385), !dbg !247, !noalias !242
  %387 = insertelement <4 x half> poison, half %380, i64 0, !dbg !249
  %388 = insertelement <4 x half> %387, half %382, i64 1, !dbg !249
  %389 = insertelement <4 x half> %388, half %384, i64 2, !dbg !249
  %390 = insertelement <4 x half> %389, half %386, i64 3, !dbg !249
  %shr529 = lshr exact i32 %mul444, 1
  %add530 = add nuw nsw i32 %shr529, %shr140
  %cmp531 = icmp ult i32 %add530, 512
  %conv541 = zext nneg i32 %mul444 to i64
  br i1 %cmp531, label %if.then532, label %if.end576, !dbg !250

if.then532:                                       ; preds = %if.end464
  %391 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1218 = shl nuw nsw i64 %conv541, 7, !dbg !251
  %392 = getelementptr inbounds i8, ptr addrspace(4) %391, i64 %.idx1218, !dbg !251
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %392, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %392, i64 4, !dbg !252
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %392, i64 8, !dbg !252
  %condval_2.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %392, i64 12, !dbg !252
  %condval_2.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx, align 4, !dbg !252, !tbaa !30
  br label %if.end576, !dbg !253

if.end576:                                        ; preds = %if.end464, %if.then532
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then532 ], [ 0, %if.end464 ], !dbg !84
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then532 ], [ 0, %if.end464 ], !dbg !84
  %condval_2.sroa.6.0 = phi i32 [ %condval_2.sroa.6.0.copyload, %if.then532 ], [ 0, %if.end464 ], !dbg !84
  %condval_2.sroa.7.0 = phi i32 [ %condval_2.sroa.7.0.copyload, %if.then532 ], [ 0, %if.end464 ], !dbg !84
  store i32 %condval_2.sroa.0.0, ptr addrspace(5) %v_fetch_words, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 4, !dbg !254
  store i32 %condval_2.sroa.5.0, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 8, !dbg !254
  store i32 %condval_2.sroa.6.0, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 12, !dbg !254
  store i32 %condval_2.sroa.7.0, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx, align 4, !dbg !254, !tbaa !30
  br i1 %cmp531, label %if.then532.1, label %if.end576.1, !dbg !250

if.then532.1:                                     ; preds = %if.end576
  %393 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1218.1 = shl nuw nsw i64 %conv541, 7, !dbg !251
  %394 = getelementptr inbounds i8, ptr addrspace(4) %393, i64 %.idx1218.1, !dbg !251
  %add.ptr552.1 = getelementptr inbounds i8, ptr addrspace(4) %394, i64 128, !dbg !251
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %add.ptr552.1, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %394, i64 132, !dbg !252
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %394, i64 136, !dbg !252
  %condval_2.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %394, i64 140, !dbg !252
  %condval_2.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1, align 4, !dbg !252, !tbaa !30
  br label %if.end576.1, !dbg !253

if.end576.1:                                      ; preds = %if.then532.1, %if.end576
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then532.1 ], [ 0, %if.end576 ], !dbg !84
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then532.1 ], [ 0, %if.end576 ], !dbg !84
  %condval_2.sroa.6.0.1 = phi i32 [ %condval_2.sroa.6.0.copyload.1, %if.then532.1 ], [ 0, %if.end576 ], !dbg !84
  %condval_2.sroa.7.0.1 = phi i32 [ %condval_2.sroa.7.0.copyload.1, %if.then532.1 ], [ 0, %if.end576 ], !dbg !84
  %add.ptr580.1 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 16, !dbg !255
  store i32 %condval_2.sroa.0.0.1, ptr addrspace(5) %add.ptr580.1, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 20, !dbg !254
  store i32 %condval_2.sroa.5.0.1, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.1, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 24, !dbg !254
  store i32 %condval_2.sroa.6.0.1, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.1, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 28, !dbg !254
  store i32 %condval_2.sroa.7.0.1, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.1, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.val = load i32, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx, align 4, !dbg !84
  %v_fetch_words.val = load i32, ptr addrspace(5) %v_fetch_words, align 4, !dbg !84
  %condval_3.0 = select i1 %cmp595, i32 %condval_2.sroa.6.0.add.ptr580.sroa_idx.val, i32 %v_fetch_words.val, !dbg !84
  %395 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %396 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %395) #13, !dbg !261
  %xor.i.i1145 = xor i32 %396, 8, !dbg !262
  %397 = and i32 %396, -64, !dbg !263
  %and.i.i1146 = add nsw i32 %397, 64, !dbg !263
  %cmp.not.i.i1147 = icmp slt i32 %xor.i.i1145, %and.i.i1146, !dbg !264
  %cond.i.i1148 = select i1 %cmp.not.i.i1147, i32 %xor.i.i1145, i32 %396, !dbg !265
  %shl.i.i1149 = shl i32 %cond.i.i1148, 2, !dbg !266
  %398 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149, i32 %condval_3.0), !dbg !267
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.val = load i32, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx, align 4, !dbg !84
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.val = load i32, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx, align 4, !dbg !84
  %condval_3.0.1 = select i1 %cmp595, i32 %condval_2.sroa.7.0.add.ptr580.sroa_idx.val, i32 %condval_2.sroa.5.0.add.ptr580.sroa_idx.val, !dbg !84
  %399 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %400 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %399) #13, !dbg !261
  %xor.i.i1145.1 = xor i32 %400, 8, !dbg !262
  %401 = and i32 %400, -64, !dbg !263
  %and.i.i1146.1 = add nsw i32 %401, 64, !dbg !263
  %cmp.not.i.i1147.1 = icmp slt i32 %xor.i.i1145.1, %and.i.i1146.1, !dbg !264
  %cond.i.i1148.1 = select i1 %cmp.not.i.i1147.1, i32 %xor.i.i1145.1, i32 %400, !dbg !265
  %shl.i.i1149.1 = shl i32 %cond.i.i1148.1, 2, !dbg !266
  %402 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.1, i32 %condval_3.0.1), !dbg !267
  %.sroa.gep1809 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 24, !dbg !84
  %.sroa.gep1809.val = load i32, ptr addrspace(5) %.sroa.gep1809, align 4, !dbg !84
  %add.ptr580.1.val = load i32, ptr addrspace(5) %add.ptr580.1, align 4, !dbg !84
  %condval_3.0.11297 = select i1 %cmp595, i32 %.sroa.gep1809.val, i32 %add.ptr580.1.val, !dbg !84
  %403 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %404 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %403) #13, !dbg !261
  %xor.i.i1145.11298 = xor i32 %404, 8, !dbg !262
  %405 = and i32 %404, -64, !dbg !263
  %and.i.i1146.11299 = add nsw i32 %405, 64, !dbg !263
  %cmp.not.i.i1147.11300 = icmp slt i32 %xor.i.i1145.11298, %and.i.i1146.11299, !dbg !264
  %cond.i.i1148.11301 = select i1 %cmp.not.i.i1147.11300, i32 %xor.i.i1145.11298, i32 %404, !dbg !265
  %shl.i.i1149.11302 = shl i32 %cond.i.i1148.11301, 2, !dbg !266
  %406 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.11302, i32 %condval_3.0.11297), !dbg !267
  %idxprom600.pn.in.1.1.sroa.sel.v = xor i32 %364, 28, !dbg !84
  %idxprom600.pn.in.1.1.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom600.pn.in.1.1.sroa.sel.v, !dbg !84
  %condval_3.0.1.1 = load i32, ptr addrspace(5) %idxprom600.pn.in.1.1.sroa.sel, align 4, !dbg !84, !tbaa !30
  %407 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %408 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %407) #13, !dbg !261
  %xor.i.i1145.1.1 = xor i32 %408, 8, !dbg !262
  %409 = and i32 %408, -64, !dbg !263
  %and.i.i1146.1.1 = add nsw i32 %409, 64, !dbg !263
  %cmp.not.i.i1147.1.1 = icmp slt i32 %xor.i.i1145.1.1, %and.i.i1146.1.1, !dbg !264
  %cond.i.i1148.1.1 = select i1 %cmp.not.i.i1147.1.1, i32 %xor.i.i1145.1.1, i32 %408, !dbg !265
  %shl.i.i1149.1.1 = shl i32 %cond.i.i1148.1.1, 2, !dbg !266
  %410 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.1.1, i32 %condval_3.0.1.1), !dbg !267
  %v_fetch_words.val2477 = load i16, ptr addrspace(5) %v_fetch_words, align 4, !dbg !84
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.val2478 = load i16, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx, align 4, !dbg !84
  %add.ptr580.1.val2479 = load i16, ptr addrspace(5) %add.ptr580.1, align 4, !dbg !84
  %.sroa.gep1809.val2480 = load i16, ptr addrspace(5) %.sroa.gep1809, align 4, !dbg !84
  %v_exchange_half.sroa.0.0.extract.trunc = trunc i32 %398 to i16
  %spec.select2583 = select i1 %cmp595, i16 %v_fetch_words.val2477, i16 %v_exchange_half.sroa.0.0.extract.trunc, !dbg !268
  %v_exchange_half.sroa.82.8.extract.trunc1653 = trunc i32 %406 to i16, !dbg !269
  %condval_7.sroa.0.0 = select i1 %cmp595, i16 %add.ptr580.1.val2479, i16 %v_exchange_half.sroa.82.8.extract.trunc1653, !dbg !269
  %v_exchange_half.sroa.0.0.extract.trunc1503 = trunc i32 %398 to i16, !dbg !270
  %condval_8.sroa.0.0 = select i1 %cmp595, i16 %v_exchange_half.sroa.0.0.extract.trunc1503, i16 %condval_2.sroa.6.0.add.ptr580.sroa_idx.val2478, !dbg !270
  %v_exchange_half.sroa.82.8.extract.trunc = trunc i32 %406 to i16, !dbg !271
  %condval_9.sroa.0.0 = select i1 %cmp595, i16 %v_exchange_half.sroa.82.8.extract.trunc, i16 %.sroa.gep1809.val2480, !dbg !271
  %add706 = or disjoint i32 %mul700, %mul705, !dbg !272
  %411 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706, !dbg !273
  %add.ptr716.idx = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716 = getelementptr inbounds i8, ptr addrspace(3) %411, i32 %add.ptr716.idx, !dbg !273
  store i16 %spec.select2583, ptr addrspace(3) %add.ptr716, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx, align 2, !dbg !274, !tbaa !30
  %idxprom630.pn.in.1.sroa.sel.v = or disjoint i32 %364, 2, !dbg !84
  %idxprom630.pn.in.1.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom630.pn.in.1.sroa.sel.v, !dbg !84
  %condval_4.sroa.0.0.1 = load i16, ptr addrspace(5) %idxprom630.pn.in.1.sroa.sel, align 2, !dbg !84, !tbaa !275
  %idxprom645.pn.in.1 = or disjoint i32 %idxprom645.pn.in.v, 1, !dbg !276
  %condval_5.sroa.0.0.in.1 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.1, !dbg !84
  %condval_5.sroa.0.0.1 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.1, align 2, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.0.2.extract.shift = lshr i32 %398, 16, !dbg !268
  %v_exchange_half.sroa.0.2.extract.trunc = trunc nuw i32 %v_exchange_half.sroa.0.2.extract.shift to i16, !dbg !268
  %condval_6.sroa.0.0.1 = select i1 %cmp595, i16 %condval_4.sroa.0.0.1, i16 %v_exchange_half.sroa.0.2.extract.trunc, !dbg !268
  %v_exchange_half.sroa.82.10.extract.shift = lshr i32 %406, 16, !dbg !269
  %v_exchange_half.sroa.82.10.extract.trunc = trunc nuw i32 %v_exchange_half.sroa.82.10.extract.shift to i16, !dbg !269
  %condval_7.sroa.0.0.1 = select i1 %cmp595, i16 %condval_5.sroa.0.0.1, i16 %v_exchange_half.sroa.82.10.extract.trunc, !dbg !269
  %v_exchange_half.sroa.0.2.extract.shift1533 = lshr i32 %398, 16, !dbg !270
  %v_exchange_half.sroa.0.2.extract.trunc1534 = trunc nuw i32 %v_exchange_half.sroa.0.2.extract.shift1533 to i16, !dbg !270
  %condval_8.sroa.0.0.1 = select i1 %cmp595, i16 %v_exchange_half.sroa.0.2.extract.trunc1534, i16 %condval_4.sroa.0.0.1, !dbg !270
  %v_exchange_half.sroa.82.10.extract.shift1683 = lshr i32 %406, 16, !dbg !271
  %v_exchange_half.sroa.82.10.extract.trunc1684 = trunc nuw i32 %v_exchange_half.sroa.82.10.extract.shift1683 to i16, !dbg !271
  %condval_9.sroa.0.0.1 = select i1 %cmp595, i16 %v_exchange_half.sroa.82.10.extract.trunc1684, i16 %condval_5.sroa.0.0.1, !dbg !271
  %add701.1 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.1 = or disjoint i32 %add701.1, 256, !dbg !272
  %412 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.1, !dbg !273
  %xor712.1 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.1 = xor i32 %xor712.1, 8, !dbg !273
  %add.ptr716.1 = getelementptr inbounds i8, ptr addrspace(3) %412, i32 %add.ptr716.idx.1, !dbg !273
  store i16 %condval_6.sroa.0.0.1, ptr addrspace(3) %add.ptr716.1, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.1, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.1, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.1, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.1, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.1, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.1, align 2, !dbg !274, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.val2591 = load i16, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx, align 4, !dbg !84
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.val2592 = load i16, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx, align 4, !dbg !84
  %idxprom645.pn.in.2 = or disjoint i32 %idxprom645.pn.in.v, 2, !dbg !276
  %condval_5.sroa.0.0.in.2 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.2, !dbg !84
  %condval_5.sroa.0.0.2 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.2, align 4, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.42.4.extract.trunc = trunc i32 %402 to i16, !dbg !268
  %condval_6.sroa.0.0.2 = select i1 %cmp595, i16 %condval_2.sroa.5.0.add.ptr580.sroa_idx.val2591, i16 %v_exchange_half.sroa.42.4.extract.trunc, !dbg !268
  %v_exchange_half.sroa.122.12.extract.trunc = trunc i32 %410 to i16, !dbg !269
  %condval_7.sroa.0.0.2 = select i1 %cmp595, i16 %condval_5.sroa.0.0.2, i16 %v_exchange_half.sroa.122.12.extract.trunc, !dbg !269
  %v_exchange_half.sroa.42.4.extract.trunc1578 = trunc i32 %402 to i16, !dbg !270
  %condval_8.sroa.0.0.2 = select i1 %cmp595, i16 %v_exchange_half.sroa.42.4.extract.trunc1578, i16 %condval_2.sroa.7.0.add.ptr580.sroa_idx.val2592, !dbg !270
  %v_exchange_half.sroa.122.12.extract.trunc1728 = trunc i32 %410 to i16, !dbg !271
  %condval_9.sroa.0.0.2 = select i1 %cmp595, i16 %v_exchange_half.sroa.122.12.extract.trunc1728, i16 %condval_5.sroa.0.0.2, !dbg !271
  %add701.2 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.2 = or disjoint i32 %add701.2, 512, !dbg !272
  %413 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.2, !dbg !273
  %xor712.2 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.2 = xor i32 %xor712.2, 16, !dbg !273
  %add.ptr716.2 = getelementptr inbounds i8, ptr addrspace(3) %413, i32 %add.ptr716.idx.2, !dbg !273
  store i16 %condval_6.sroa.0.0.2, ptr addrspace(3) %add.ptr716.2, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.2, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.2, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.2, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.2, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.2, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.2, align 2, !dbg !274, !tbaa !30
  %idxprom630.pn.in.3.sroa.sel.v = or disjoint i32 %364, 6, !dbg !84
  %idxprom630.pn.in.3.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom630.pn.in.3.sroa.sel.v, !dbg !84
  %condval_4.sroa.0.0.3 = load i16, ptr addrspace(5) %idxprom630.pn.in.3.sroa.sel, align 2, !dbg !84, !tbaa !275
  %idxprom645.pn.in.3 = or disjoint i32 %idxprom645.pn.in.v, 3, !dbg !276
  %condval_5.sroa.0.0.in.3 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.3, !dbg !84
  %condval_5.sroa.0.0.3 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.3, align 2, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.42.6.extract.shift = lshr i32 %402, 16, !dbg !268
  %v_exchange_half.sroa.42.6.extract.trunc = trunc nuw i32 %v_exchange_half.sroa.42.6.extract.shift to i16, !dbg !268
  %condval_6.sroa.0.0.3 = select i1 %cmp595, i16 %condval_4.sroa.0.0.3, i16 %v_exchange_half.sroa.42.6.extract.trunc, !dbg !268
  %v_exchange_half.sroa.122.14.extract.shift = lshr i32 %410, 16, !dbg !269
  %v_exchange_half.sroa.122.14.extract.trunc = trunc nuw i32 %v_exchange_half.sroa.122.14.extract.shift to i16, !dbg !269
  %condval_7.sroa.0.0.3 = select i1 %cmp595, i16 %condval_5.sroa.0.0.3, i16 %v_exchange_half.sroa.122.14.extract.trunc, !dbg !269
  %v_exchange_half.sroa.42.6.extract.shift1608 = lshr i32 %402, 16, !dbg !270
  %v_exchange_half.sroa.42.6.extract.trunc1609 = trunc nuw i32 %v_exchange_half.sroa.42.6.extract.shift1608 to i16, !dbg !270
  %condval_8.sroa.0.0.3 = select i1 %cmp595, i16 %v_exchange_half.sroa.42.6.extract.trunc1609, i16 %condval_4.sroa.0.0.3, !dbg !270
  %v_exchange_half.sroa.122.14.extract.shift1758 = lshr i32 %410, 16, !dbg !271
  %v_exchange_half.sroa.122.14.extract.trunc1759 = trunc nuw i32 %v_exchange_half.sroa.122.14.extract.shift1758 to i16, !dbg !271
  %condval_9.sroa.0.0.3 = select i1 %cmp595, i16 %v_exchange_half.sroa.122.14.extract.trunc1759, i16 %condval_5.sroa.0.0.3, !dbg !271
  %add701.3 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.3 = or disjoint i32 %add701.3, 768, !dbg !272
  %414 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.3, !dbg !273
  %xor712.3 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.3 = xor i32 %xor712.3, 24, !dbg !273
  %add.ptr716.3 = getelementptr inbounds i8, ptr addrspace(3) %414, i32 %add.ptr716.idx.3, !dbg !273
  store i16 %condval_6.sroa.0.0.3, ptr addrspace(3) %add.ptr716.3, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.3, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.3, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.3, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.3, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.3, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.3, align 2, !dbg !274, !tbaa !30
  fence syncscope("warp") release, !dbg !277
  tail call void @llvm.mxc.barrier.warp(), !dbg !280
  fence syncscope("warp") acquire, !dbg !281
  %add733 = or disjoint i32 %mul726, %mul732, !dbg !282
  %415 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733, !dbg !283
  %add.ptr743.idx = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743 = getelementptr inbounds i8, ptr addrspace(3) %415, i32 %add.ptr743.idx, !dbg !283
  %416 = load <4 x half>, ptr addrspace(3) %add.ptr743, align 8, !dbg !284
  %add728.1 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.1 = or disjoint i32 %add728.1, 64, !dbg !282
  %417 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.1, !dbg !283
  %xor739.1 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.1 = xor i32 %xor739.1, 8, !dbg !283
  %add.ptr743.1 = getelementptr inbounds i8, ptr addrspace(3) %417, i32 %add.ptr743.idx.1, !dbg !283
  %418 = load <4 x half>, ptr addrspace(3) %add.ptr743.1, align 8, !dbg !284
  %add728.2 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.2 = or disjoint i32 %add728.2, 128, !dbg !282
  %419 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.2, !dbg !283
  %xor739.2 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.2 = xor i32 %xor739.2, 16, !dbg !283
  %add.ptr743.2 = getelementptr inbounds i8, ptr addrspace(3) %419, i32 %add.ptr743.idx.2, !dbg !283
  %420 = load <4 x half>, ptr addrspace(3) %add.ptr743.2, align 8, !dbg !284
  %add728.3 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.3 = or disjoint i32 %add728.3, 192, !dbg !282
  %421 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.3, !dbg !283
  %xor739.3 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.3 = xor i32 %xor739.3, 24, !dbg !283
  %add.ptr743.3 = getelementptr inbounds i8, ptr addrspace(3) %421, i32 %add.ptr743.idx.3, !dbg !283
  %422 = load <4 x half>, ptr addrspace(3) %add.ptr743.3, align 8, !dbg !284
  %423 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %416, <4 x half> %390, <4 x float> zeroinitializer), !dbg !285
  %424 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %418, <4 x half> %390, <4 x float> zeroinitializer), !dbg !285
  %425 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %420, <4 x half> %390, <4 x float> zeroinitializer), !dbg !285
  %426 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %422, <4 x half> %390, <4 x float> zeroinitializer), !dbg !285
  br label %if.end770, !dbg !286

if.end770:                                        ; preds = %if.end576.1, %if.end415.7
  %bc2547 = phi <4 x half> [ %64, %if.end415.7 ], [ %390, %if.end576.1 ], !dbg !84
  %output_acc.sroa.98.0 = phi <4 x float> [ zeroinitializer, %if.end415.7 ], [ %426, %if.end576.1 ], !dbg !84
  %output_acc.sroa.66.0 = phi <4 x float> [ zeroinitializer, %if.end415.7 ], [ %425, %if.end576.1 ], !dbg !84
  %output_acc.sroa.34.0 = phi <4 x float> [ zeroinitializer, %if.end415.7 ], [ %424, %if.end576.1 ], !dbg !84
  %output_acc.sroa.0.0 = phi <4 x float> [ zeroinitializer, %if.end415.7 ], [ %423, %if.end576.1 ], !dbg !84
  %427 = load i32, ptr addrspace(1) %arrayidx130.1, align 4, !dbg !187, !tbaa !30
  %mul444.1 = shl nsw i32 %427, 4, !dbg !188
  %cmp445.1 = icmp slt i32 %427, 0, !dbg !189
  %cmp448.not.1 = icmp sgt i32 %mul444.1, %1
  %or.cond1181.1 = select i1 %cmp445.1, i1 true, i1 %cmp448.not.1, !dbg !190
  br i1 %or.cond1181.1, label %if.end770.1, label %if.then449.1, !dbg !190

if.then449.1:                                     ; preds = %if.end770
  fence syncscope("warp") release, !dbg !191
  tail call void @llvm.mxc.barrier.warp(), !dbg !194
  fence syncscope("warp") acquire, !dbg !195
  %cmp454.1 = icmp eq i32 %shr324, 1, !dbg !196
  br i1 %cmp454.1, label %if.then455.1, label %if.end464.1, !dbg !197

if.then455.1:                                     ; preds = %if.then449.1
  %sub460.1 = fsub contract float %max_cache.sroa.0.7, %global_max.sroa.0.1.7, !dbg !198
  %mul461.1 = fmul contract float %sub460.1, 0x3FC7154760000000, !dbg !199
  %cmp.i.i1120.1 = fcmp contract olt float %mul461.1, -1.260000e+02, !dbg !200
  %cond.i.i1121.1 = select contract i1 %cmp.i.i1120.1, float 6.400000e+01, float 0.000000e+00, !dbg !200
  %add.i.i1122.1 = fadd contract float %mul461.1, %cond.i.i1121.1, !dbg !200
  %428 = tail call contract float @llvm.exp2.f32(float %add.i.i1122.1), !dbg !200
  %cond2.i.i1123.1 = select contract i1 %cmp.i.i1120.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !200
  %mul.i.i1124.1 = fmul contract float %cond2.i.i1123.1, %428, !dbg !200
  br label %if.end464.1, !dbg !202

if.end464.1:                                      ; preds = %if.then455.1, %if.then449.1
  %rescale.sroa.0.0.1 = phi float [ %mul.i.i1124.1, %if.then455.1 ], [ 0.000000e+00, %if.then449.1 ], !dbg !84
  %429 = bitcast float %rescale.sroa.0.0.1 to i32, !dbg !203
  %430 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !206
  %431 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %430) #13, !dbg !210
  %rem.i.i.1 = or disjoint i32 %and469, 16, !dbg !287
  %and.i.i1125.1 = and i32 %431, 1073741760, !dbg !211
  %add.i.i1126.1 = or disjoint i32 %and.i.i1125.1, %rem.i.i.1, !dbg !212
  %shl.i.i1127.1 = shl nuw i32 %add.i.i1126.1, 2, !dbg !213
  %432 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1127.1, i32 %429), !dbg !214
  %433 = bitcast i32 %432 to float, !dbg !215
  %434 = extractelement <4 x half> %106, i64 0, !dbg !216
  %conv.i1128.1 = fpext half %434 to float, !dbg !216
  %435 = extractelement <4 x half> %106, i64 1, !dbg !219
  %conv6.i.1 = fpext half %435 to float, !dbg !219
  %436 = extractelement <4 x half> %106, i64 2, !dbg !220
  %conv.i1130.1 = fpext half %436 to float, !dbg !220
  %437 = extractelement <4 x half> %106, i64 3, !dbg !222
  %conv6.i1132.1 = fpext half %437 to float, !dbg !222
  %mul494.1 = fmul contract float %433, %conv.i1128.1, !dbg !223
  %mul498.1 = fmul contract float %433, %conv6.i.1, !dbg !224
  %mul502.1 = fmul contract float %433, %conv.i1130.1, !dbg !225
  %mul506.1 = fmul contract float %433, %conv6.i1132.1, !dbg !226
  %438 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !231
  %439 = fptrunc float %mul494.1 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %438), !dbg !227, !noalias !231
  %440 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !236, !noalias !231
  %441 = fptrunc float %mul498.1 to half, !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %440), !dbg !236, !noalias !231
  %442 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !238, !noalias !242
  %443 = fptrunc float %mul502.1 to half, !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %442), !dbg !238, !noalias !242
  %444 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !247, !noalias !242
  %445 = fptrunc float %mul506.1 to half, !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %444), !dbg !247, !noalias !242
  %446 = insertelement <4 x half> poison, half %439, i64 0, !dbg !249
  %447 = insertelement <4 x half> %446, half %441, i64 1, !dbg !249
  %448 = insertelement <4 x half> %447, half %443, i64 2, !dbg !249
  %449 = insertelement <4 x half> %448, half %445, i64 3, !dbg !249
  %shr529.1 = lshr exact i32 %mul444.1, 1
  %add530.1 = add nuw nsw i32 %shr529.1, %shr140
  %cmp531.1 = icmp ult i32 %add530.1, 512
  %conv541.1 = zext nneg i32 %mul444.1 to i64
  br i1 %cmp531.1, label %if.then532.11317, label %if.end576.11325, !dbg !250

if.then532.11317:                                 ; preds = %if.end464.1
  %450 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1218.11309 = shl nuw nsw i64 %conv541.1, 7, !dbg !251
  %451 = getelementptr inbounds i8, ptr addrspace(4) %450, i64 %.idx1218.11309, !dbg !251
  %condval_2.sroa.0.0.copyload.11310 = load i32, ptr addrspace(4) %451, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.11311 = getelementptr inbounds i8, ptr addrspace(4) %451, i64 4, !dbg !252
  %condval_2.sroa.5.0.copyload.11312 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.11311, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.11313 = getelementptr inbounds i8, ptr addrspace(4) %451, i64 8, !dbg !252
  %condval_2.sroa.6.0.copyload.11314 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.11313, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.11315 = getelementptr inbounds i8, ptr addrspace(4) %451, i64 12, !dbg !252
  %condval_2.sroa.7.0.copyload.11316 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.11315, align 4, !dbg !252, !tbaa !30
  br label %if.end576.11325, !dbg !253

if.end576.11325:                                  ; preds = %if.then532.11317, %if.end464.1
  %condval_2.sroa.5.0.11318 = phi i32 [ %condval_2.sroa.5.0.copyload.11312, %if.then532.11317 ], [ 0, %if.end464.1 ], !dbg !84
  %condval_2.sroa.0.0.11319 = phi i32 [ %condval_2.sroa.0.0.copyload.11310, %if.then532.11317 ], [ 0, %if.end464.1 ], !dbg !84
  %condval_2.sroa.6.0.11320 = phi i32 [ %condval_2.sroa.6.0.copyload.11314, %if.then532.11317 ], [ 0, %if.end464.1 ], !dbg !84
  %condval_2.sroa.7.0.11321 = phi i32 [ %condval_2.sroa.7.0.copyload.11316, %if.then532.11317 ], [ 0, %if.end464.1 ], !dbg !84
  store i32 %condval_2.sroa.0.0.11319, ptr addrspace(5) %v_fetch_words, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.11322 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 4, !dbg !254
  store i32 %condval_2.sroa.5.0.11318, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.11322, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.11323 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 8, !dbg !254
  store i32 %condval_2.sroa.6.0.11320, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.11323, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.11324 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 12, !dbg !254
  store i32 %condval_2.sroa.7.0.11321, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.11324, align 4, !dbg !254, !tbaa !30
  br i1 %cmp531.1, label %if.then532.1.1, label %if.end576.1.1, !dbg !250

if.then532.1.1:                                   ; preds = %if.end576.11325
  %452 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1218.1.1 = shl nuw nsw i64 %conv541.1, 7, !dbg !251
  %453 = getelementptr inbounds i8, ptr addrspace(4) %452, i64 %.idx1218.1.1, !dbg !251
  %add.ptr552.1.1 = getelementptr inbounds i8, ptr addrspace(4) %453, i64 128, !dbg !251
  %condval_2.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %add.ptr552.1.1, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %453, i64 132, !dbg !252
  %condval_2.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.1, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %453, i64 136, !dbg !252
  %condval_2.sroa.6.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.1, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %453, i64 140, !dbg !252
  %condval_2.sroa.7.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.1, align 4, !dbg !252, !tbaa !30
  br label %if.end576.1.1, !dbg !253

if.end576.1.1:                                    ; preds = %if.then532.1.1, %if.end576.11325
  %condval_2.sroa.5.0.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1, %if.then532.1.1 ], [ 0, %if.end576.11325 ], !dbg !84
  %condval_2.sroa.0.0.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1, %if.then532.1.1 ], [ 0, %if.end576.11325 ], !dbg !84
  %condval_2.sroa.6.0.1.1 = phi i32 [ %condval_2.sroa.6.0.copyload.1.1, %if.then532.1.1 ], [ 0, %if.end576.11325 ], !dbg !84
  %condval_2.sroa.7.0.1.1 = phi i32 [ %condval_2.sroa.7.0.copyload.1.1, %if.then532.1.1 ], [ 0, %if.end576.11325 ], !dbg !84
  %add.ptr580.1.1 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 16, !dbg !255
  store i32 %condval_2.sroa.0.0.1.1, ptr addrspace(5) %add.ptr580.1.1, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 20, !dbg !254
  store i32 %condval_2.sroa.5.0.1.1, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.1, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 24, !dbg !254
  store i32 %condval_2.sroa.6.0.1.1, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.1, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 28, !dbg !254
  store i32 %condval_2.sroa.7.0.1.1, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.1, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.11323.val = load i32, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.11323, align 4, !dbg !84
  %v_fetch_words.val2485 = load i32, ptr addrspace(5) %v_fetch_words, align 4, !dbg !84
  %condval_3.0.11328 = select i1 %cmp595, i32 %condval_2.sroa.6.0.add.ptr580.sroa_idx.11323.val, i32 %v_fetch_words.val2485, !dbg !84
  %454 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %455 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %454) #13, !dbg !261
  %xor.i.i1145.11329 = xor i32 %455, 8, !dbg !262
  %456 = and i32 %455, -64, !dbg !263
  %and.i.i1146.11330 = add nsw i32 %456, 64, !dbg !263
  %cmp.not.i.i1147.11331 = icmp slt i32 %xor.i.i1145.11329, %and.i.i1146.11330, !dbg !264
  %cond.i.i1148.11332 = select i1 %cmp.not.i.i1147.11331, i32 %xor.i.i1145.11329, i32 %455, !dbg !265
  %shl.i.i1149.11333 = shl i32 %cond.i.i1148.11332, 2, !dbg !266
  %457 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.11333, i32 %condval_3.0.11328), !dbg !267
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.11324.val = load i32, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.11324, align 4, !dbg !84
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.11322.val = load i32, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.11322, align 4, !dbg !84
  %condval_3.0.1.11336 = select i1 %cmp595, i32 %condval_2.sroa.7.0.add.ptr580.sroa_idx.11324.val, i32 %condval_2.sroa.5.0.add.ptr580.sroa_idx.11322.val, !dbg !84
  %458 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %459 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %458) #13, !dbg !261
  %xor.i.i1145.1.11337 = xor i32 %459, 8, !dbg !262
  %460 = and i32 %459, -64, !dbg !263
  %and.i.i1146.1.11338 = add nsw i32 %460, 64, !dbg !263
  %cmp.not.i.i1147.1.11339 = icmp slt i32 %xor.i.i1145.1.11337, %and.i.i1146.1.11338, !dbg !264
  %cond.i.i1148.1.11340 = select i1 %cmp.not.i.i1147.1.11339, i32 %xor.i.i1145.1.11337, i32 %459, !dbg !265
  %shl.i.i1149.1.11341 = shl i32 %cond.i.i1148.1.11340, 2, !dbg !266
  %461 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.1.11341, i32 %condval_3.0.1.11336), !dbg !267
  %.sroa.gep1823 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 24, !dbg !84
  %.sroa.gep1823.val = load i32, ptr addrspace(5) %.sroa.gep1823, align 4, !dbg !84
  %add.ptr580.1.1.val = load i32, ptr addrspace(5) %add.ptr580.1.1, align 4, !dbg !84
  %condval_3.0.11297.1 = select i1 %cmp595, i32 %.sroa.gep1823.val, i32 %add.ptr580.1.1.val, !dbg !84
  %462 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %463 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %462) #13, !dbg !261
  %xor.i.i1145.11298.1 = xor i32 %463, 8, !dbg !262
  %464 = and i32 %463, -64, !dbg !263
  %and.i.i1146.11299.1 = add nsw i32 %464, 64, !dbg !263
  %cmp.not.i.i1147.11300.1 = icmp slt i32 %xor.i.i1145.11298.1, %and.i.i1146.11299.1, !dbg !264
  %cond.i.i1148.11301.1 = select i1 %cmp.not.i.i1147.11300.1, i32 %xor.i.i1145.11298.1, i32 %463, !dbg !265
  %shl.i.i1149.11302.1 = shl i32 %cond.i.i1148.11301.1, 2, !dbg !266
  %465 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.11302.1, i32 %condval_3.0.11297.1), !dbg !267
  %idxprom600.pn.in.1.1.1.sroa.sel.v = xor i32 %364, 28, !dbg !84
  %idxprom600.pn.in.1.1.1.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom600.pn.in.1.1.1.sroa.sel.v, !dbg !84
  %condval_3.0.1.1.1 = load i32, ptr addrspace(5) %idxprom600.pn.in.1.1.1.sroa.sel, align 4, !dbg !84, !tbaa !30
  %466 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %467 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %466) #13, !dbg !261
  %xor.i.i1145.1.1.1 = xor i32 %467, 8, !dbg !262
  %468 = and i32 %467, -64, !dbg !263
  %and.i.i1146.1.1.1 = add nsw i32 %468, 64, !dbg !263
  %cmp.not.i.i1147.1.1.1 = icmp slt i32 %xor.i.i1145.1.1.1, %and.i.i1146.1.1.1, !dbg !264
  %cond.i.i1148.1.1.1 = select i1 %cmp.not.i.i1147.1.1.1, i32 %xor.i.i1145.1.1.1, i32 %467, !dbg !265
  %shl.i.i1149.1.1.1 = shl i32 %cond.i.i1148.1.1.1, 2, !dbg !266
  %469 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.1.1.1, i32 %condval_3.0.1.1.1), !dbg !267
  %v_fetch_words.val2486 = load i16, ptr addrspace(5) %v_fetch_words, align 4, !dbg !84
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.11323.val2487 = load i16, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.11323, align 4, !dbg !84
  %add.ptr580.1.1.val2488 = load i16, ptr addrspace(5) %add.ptr580.1.1, align 4, !dbg !84
  %.sroa.gep1823.val2489 = load i16, ptr addrspace(5) %.sroa.gep1823, align 4, !dbg !84
  %v_exchange_half.sroa.0.0.extract.trunc1505 = trunc i32 %457 to i16
  %spec.select2584 = select i1 %cmp595, i16 %v_fetch_words.val2486, i16 %v_exchange_half.sroa.0.0.extract.trunc1505, !dbg !268
  %v_exchange_half.sroa.82.8.extract.trunc1655 = trunc i32 %465 to i16, !dbg !269
  %condval_7.sroa.0.0.11355 = select i1 %cmp595, i16 %add.ptr580.1.1.val2488, i16 %v_exchange_half.sroa.82.8.extract.trunc1655, !dbg !269
  %v_exchange_half.sroa.0.0.extract.trunc1507 = trunc i32 %457 to i16, !dbg !270
  %condval_8.sroa.0.0.11359 = select i1 %cmp595, i16 %v_exchange_half.sroa.0.0.extract.trunc1507, i16 %condval_2.sroa.6.0.add.ptr580.sroa_idx.11323.val2487, !dbg !270
  %v_exchange_half.sroa.82.8.extract.trunc1657 = trunc i32 %465 to i16, !dbg !271
  %condval_9.sroa.0.0.11364 = select i1 %cmp595, i16 %v_exchange_half.sroa.82.8.extract.trunc1657, i16 %.sroa.gep1823.val2489, !dbg !271
  %add706.11365 = or disjoint i32 %mul700, %mul705, !dbg !272
  %470 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.11365, !dbg !273
  %add.ptr716.idx.11366 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.11367 = getelementptr inbounds i8, ptr addrspace(3) %470, i32 %add.ptr716.idx.11366, !dbg !273
  store i16 %spec.select2584, ptr addrspace(3) %add.ptr716.11367, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.11368 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.11367, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.11355, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.11368, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.11369 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.11367, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.11359, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.11369, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.11370 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.11367, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.11364, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.11370, align 2, !dbg !274, !tbaa !30
  %idxprom630.pn.in.1.1.sroa.sel.v = or disjoint i32 %364, 2, !dbg !84
  %idxprom630.pn.in.1.1.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom630.pn.in.1.1.sroa.sel.v, !dbg !84
  %condval_4.sroa.0.0.1.1 = load i16, ptr addrspace(5) %idxprom630.pn.in.1.1.sroa.sel, align 2, !dbg !84, !tbaa !275
  %idxprom645.pn.in.1.1 = or disjoint i32 %idxprom645.pn.in.v, 1, !dbg !276
  %condval_5.sroa.0.0.in.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.1.1, !dbg !84
  %condval_5.sroa.0.0.1.1 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.1.1, align 2, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.0.2.extract.shift1536 = lshr i32 %457, 16, !dbg !268
  %v_exchange_half.sroa.0.2.extract.trunc1537 = trunc nuw i32 %v_exchange_half.sroa.0.2.extract.shift1536 to i16, !dbg !268
  %condval_6.sroa.0.0.1.1 = select i1 %cmp595, i16 %condval_4.sroa.0.0.1.1, i16 %v_exchange_half.sroa.0.2.extract.trunc1537, !dbg !268
  %v_exchange_half.sroa.82.10.extract.shift1686 = lshr i32 %465, 16, !dbg !269
  %v_exchange_half.sroa.82.10.extract.trunc1687 = trunc nuw i32 %v_exchange_half.sroa.82.10.extract.shift1686 to i16, !dbg !269
  %condval_7.sroa.0.0.1.1 = select i1 %cmp595, i16 %condval_5.sroa.0.0.1.1, i16 %v_exchange_half.sroa.82.10.extract.trunc1687, !dbg !269
  %v_exchange_half.sroa.0.2.extract.shift1539 = lshr i32 %457, 16, !dbg !270
  %v_exchange_half.sroa.0.2.extract.trunc1540 = trunc nuw i32 %v_exchange_half.sroa.0.2.extract.shift1539 to i16, !dbg !270
  %condval_8.sroa.0.0.1.1 = select i1 %cmp595, i16 %v_exchange_half.sroa.0.2.extract.trunc1540, i16 %condval_4.sroa.0.0.1.1, !dbg !270
  %v_exchange_half.sroa.82.10.extract.shift1689 = lshr i32 %465, 16, !dbg !271
  %v_exchange_half.sroa.82.10.extract.trunc1690 = trunc nuw i32 %v_exchange_half.sroa.82.10.extract.shift1689 to i16, !dbg !271
  %condval_9.sroa.0.0.1.1 = select i1 %cmp595, i16 %v_exchange_half.sroa.82.10.extract.trunc1690, i16 %condval_5.sroa.0.0.1.1, !dbg !271
  %add701.1.1 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.1.1 = or disjoint i32 %add701.1.1, 256, !dbg !272
  %471 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.1.1, !dbg !273
  %xor712.1.1 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.1.1 = xor i32 %xor712.1.1, 8, !dbg !273
  %add.ptr716.1.1 = getelementptr inbounds i8, ptr addrspace(3) %471, i32 %add.ptr716.idx.1.1, !dbg !273
  store i16 %condval_6.sroa.0.0.1.1, ptr addrspace(3) %add.ptr716.1.1, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1.1, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.1.1, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.1.1, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1.1, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.1.1, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.1.1, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1.1, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.1.1, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.1.1, align 2, !dbg !274, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.11322.val2593 = load i16, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.11322, align 4, !dbg !84
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.11324.val2594 = load i16, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.11324, align 4, !dbg !84
  %idxprom645.pn.in.2.1 = or disjoint i32 %idxprom645.pn.in.v, 2, !dbg !276
  %condval_5.sroa.0.0.in.2.1 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.2.1, !dbg !84
  %condval_5.sroa.0.0.2.1 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.2.1, align 4, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.42.4.extract.trunc1580 = trunc i32 %461 to i16, !dbg !268
  %condval_6.sroa.0.0.2.1 = select i1 %cmp595, i16 %condval_2.sroa.5.0.add.ptr580.sroa_idx.11322.val2593, i16 %v_exchange_half.sroa.42.4.extract.trunc1580, !dbg !268
  %v_exchange_half.sroa.122.12.extract.trunc1730 = trunc i32 %469 to i16, !dbg !269
  %condval_7.sroa.0.0.2.1 = select i1 %cmp595, i16 %condval_5.sroa.0.0.2.1, i16 %v_exchange_half.sroa.122.12.extract.trunc1730, !dbg !269
  %v_exchange_half.sroa.42.4.extract.trunc1582 = trunc i32 %461 to i16, !dbg !270
  %condval_8.sroa.0.0.2.1 = select i1 %cmp595, i16 %v_exchange_half.sroa.42.4.extract.trunc1582, i16 %condval_2.sroa.7.0.add.ptr580.sroa_idx.11324.val2594, !dbg !270
  %v_exchange_half.sroa.122.12.extract.trunc1732 = trunc i32 %469 to i16, !dbg !271
  %condval_9.sroa.0.0.2.1 = select i1 %cmp595, i16 %v_exchange_half.sroa.122.12.extract.trunc1732, i16 %condval_5.sroa.0.0.2.1, !dbg !271
  %add701.2.1 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.2.1 = or disjoint i32 %add701.2.1, 512, !dbg !272
  %472 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.2.1, !dbg !273
  %xor712.2.1 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.2.1 = xor i32 %xor712.2.1, 16, !dbg !273
  %add.ptr716.2.1 = getelementptr inbounds i8, ptr addrspace(3) %472, i32 %add.ptr716.idx.2.1, !dbg !273
  store i16 %condval_6.sroa.0.0.2.1, ptr addrspace(3) %add.ptr716.2.1, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.2.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2.1, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.2.1, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.2.1, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.2.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2.1, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.2.1, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.2.1, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.2.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2.1, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.2.1, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.2.1, align 2, !dbg !274, !tbaa !30
  %idxprom630.pn.in.3.1.sroa.sel.v = or disjoint i32 %364, 6, !dbg !84
  %idxprom630.pn.in.3.1.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom630.pn.in.3.1.sroa.sel.v, !dbg !84
  %condval_4.sroa.0.0.3.1 = load i16, ptr addrspace(5) %idxprom630.pn.in.3.1.sroa.sel, align 2, !dbg !84, !tbaa !275
  %idxprom645.pn.in.3.1 = or disjoint i32 %idxprom645.pn.in.v, 3, !dbg !276
  %condval_5.sroa.0.0.in.3.1 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.3.1, !dbg !84
  %condval_5.sroa.0.0.3.1 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.3.1, align 2, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.42.6.extract.shift1611 = lshr i32 %461, 16, !dbg !268
  %v_exchange_half.sroa.42.6.extract.trunc1612 = trunc nuw i32 %v_exchange_half.sroa.42.6.extract.shift1611 to i16, !dbg !268
  %condval_6.sroa.0.0.3.1 = select i1 %cmp595, i16 %condval_4.sroa.0.0.3.1, i16 %v_exchange_half.sroa.42.6.extract.trunc1612, !dbg !268
  %v_exchange_half.sroa.122.14.extract.shift1761 = lshr i32 %469, 16, !dbg !269
  %v_exchange_half.sroa.122.14.extract.trunc1762 = trunc nuw i32 %v_exchange_half.sroa.122.14.extract.shift1761 to i16, !dbg !269
  %condval_7.sroa.0.0.3.1 = select i1 %cmp595, i16 %condval_5.sroa.0.0.3.1, i16 %v_exchange_half.sroa.122.14.extract.trunc1762, !dbg !269
  %v_exchange_half.sroa.42.6.extract.shift1614 = lshr i32 %461, 16, !dbg !270
  %v_exchange_half.sroa.42.6.extract.trunc1615 = trunc nuw i32 %v_exchange_half.sroa.42.6.extract.shift1614 to i16, !dbg !270
  %condval_8.sroa.0.0.3.1 = select i1 %cmp595, i16 %v_exchange_half.sroa.42.6.extract.trunc1615, i16 %condval_4.sroa.0.0.3.1, !dbg !270
  %v_exchange_half.sroa.122.14.extract.shift1764 = lshr i32 %469, 16, !dbg !271
  %v_exchange_half.sroa.122.14.extract.trunc1765 = trunc nuw i32 %v_exchange_half.sroa.122.14.extract.shift1764 to i16, !dbg !271
  %condval_9.sroa.0.0.3.1 = select i1 %cmp595, i16 %v_exchange_half.sroa.122.14.extract.trunc1765, i16 %condval_5.sroa.0.0.3.1, !dbg !271
  %add701.3.1 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.3.1 = or disjoint i32 %add701.3.1, 768, !dbg !272
  %473 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.3.1, !dbg !273
  %xor712.3.1 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.3.1 = xor i32 %xor712.3.1, 24, !dbg !273
  %add.ptr716.3.1 = getelementptr inbounds i8, ptr addrspace(3) %473, i32 %add.ptr716.idx.3.1, !dbg !273
  store i16 %condval_6.sroa.0.0.3.1, ptr addrspace(3) %add.ptr716.3.1, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.3.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3.1, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.3.1, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.3.1, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.3.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3.1, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.3.1, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.3.1, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.3.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3.1, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.3.1, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.3.1, align 2, !dbg !274, !tbaa !30
  fence syncscope("warp") release, !dbg !277
  tail call void @llvm.mxc.barrier.warp(), !dbg !280
  fence syncscope("warp") acquire, !dbg !281
  %add733.11372 = or disjoint i32 %mul726, %mul732, !dbg !282
  %474 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.11372, !dbg !283
  %add.ptr743.idx.11373 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.11374 = getelementptr inbounds i8, ptr addrspace(3) %474, i32 %add.ptr743.idx.11373, !dbg !283
  %475 = load <4 x half>, ptr addrspace(3) %add.ptr743.11374, align 8, !dbg !284
  %add728.1.1 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.1.1 = or disjoint i32 %add728.1.1, 64, !dbg !282
  %476 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.1.1, !dbg !283
  %xor739.1.1 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.1.1 = xor i32 %xor739.1.1, 8, !dbg !283
  %add.ptr743.1.1 = getelementptr inbounds i8, ptr addrspace(3) %476, i32 %add.ptr743.idx.1.1, !dbg !283
  %477 = load <4 x half>, ptr addrspace(3) %add.ptr743.1.1, align 8, !dbg !284
  %add728.2.1 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.2.1 = or disjoint i32 %add728.2.1, 128, !dbg !282
  %478 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.2.1, !dbg !283
  %xor739.2.1 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.2.1 = xor i32 %xor739.2.1, 16, !dbg !283
  %add.ptr743.2.1 = getelementptr inbounds i8, ptr addrspace(3) %478, i32 %add.ptr743.idx.2.1, !dbg !283
  %479 = load <4 x half>, ptr addrspace(3) %add.ptr743.2.1, align 8, !dbg !284
  %add728.3.1 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.3.1 = or disjoint i32 %add728.3.1, 192, !dbg !282
  %480 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.3.1, !dbg !283
  %xor739.3.1 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.3.1 = xor i32 %xor739.3.1, 24, !dbg !283
  %add.ptr743.3.1 = getelementptr inbounds i8, ptr addrspace(3) %480, i32 %add.ptr743.idx.3.1, !dbg !283
  %481 = load <4 x half>, ptr addrspace(3) %add.ptr743.3.1, align 8, !dbg !284
  %482 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %475, <4 x half> %449, <4 x float> %output_acc.sroa.0.0), !dbg !285
  %483 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %477, <4 x half> %449, <4 x float> %output_acc.sroa.34.0), !dbg !285
  %484 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %479, <4 x half> %449, <4 x float> %output_acc.sroa.66.0), !dbg !285
  %485 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %481, <4 x half> %449, <4 x float> %output_acc.sroa.98.0), !dbg !285
  br label %if.end770.1, !dbg !286

if.end770.1:                                      ; preds = %if.end576.1.1, %if.end770
  %bc2551 = phi <4 x half> [ %106, %if.end770 ], [ %449, %if.end576.1.1 ], !dbg !84
  %output_acc.sroa.98.1 = phi <4 x float> [ %output_acc.sroa.98.0, %if.end770 ], [ %485, %if.end576.1.1 ], !dbg !84
  %output_acc.sroa.66.1 = phi <4 x float> [ %output_acc.sroa.66.0, %if.end770 ], [ %484, %if.end576.1.1 ], !dbg !84
  %output_acc.sroa.34.1 = phi <4 x float> [ %output_acc.sroa.34.0, %if.end770 ], [ %483, %if.end576.1.1 ], !dbg !84
  %output_acc.sroa.0.1 = phi <4 x float> [ %output_acc.sroa.0.0, %if.end770 ], [ %482, %if.end576.1.1 ], !dbg !84
  %486 = load i32, ptr addrspace(1) %arrayidx130.2, align 4, !dbg !187, !tbaa !30
  %mul444.2 = shl nsw i32 %486, 4, !dbg !188
  %cmp445.2 = icmp slt i32 %486, 0, !dbg !189
  %cmp448.not.2 = icmp sgt i32 %mul444.2, %1
  %or.cond1181.2 = select i1 %cmp445.2, i1 true, i1 %cmp448.not.2, !dbg !190
  br i1 %or.cond1181.2, label %if.end770.2, label %if.then449.2, !dbg !190

if.then449.2:                                     ; preds = %if.end770.1
  fence syncscope("warp") release, !dbg !191
  tail call void @llvm.mxc.barrier.warp(), !dbg !194
  fence syncscope("warp") acquire, !dbg !195
  %cmp454.2 = icmp eq i32 %shr324, 2, !dbg !196
  br i1 %cmp454.2, label %if.then455.2, label %if.end464.2, !dbg !197

if.then455.2:                                     ; preds = %if.then449.2
  %sub460.2 = fsub contract float %max_cache.sroa.0.7, %global_max.sroa.0.1.7, !dbg !198
  %mul461.2 = fmul contract float %sub460.2, 0x3FC7154760000000, !dbg !199
  %cmp.i.i1120.2 = fcmp contract olt float %mul461.2, -1.260000e+02, !dbg !200
  %cond.i.i1121.2 = select contract i1 %cmp.i.i1120.2, float 6.400000e+01, float 0.000000e+00, !dbg !200
  %add.i.i1122.2 = fadd contract float %mul461.2, %cond.i.i1121.2, !dbg !200
  %487 = tail call contract float @llvm.exp2.f32(float %add.i.i1122.2), !dbg !200
  %cond2.i.i1123.2 = select contract i1 %cmp.i.i1120.2, float 0x3BF0000000000000, float 1.000000e+00, !dbg !200
  %mul.i.i1124.2 = fmul contract float %cond2.i.i1123.2, %487, !dbg !200
  br label %if.end464.2, !dbg !202

if.end464.2:                                      ; preds = %if.then455.2, %if.then449.2
  %rescale.sroa.0.0.2 = phi float [ %mul.i.i1124.2, %if.then455.2 ], [ 0.000000e+00, %if.then449.2 ], !dbg !84
  %488 = bitcast float %rescale.sroa.0.0.2 to i32, !dbg !203
  %489 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !206
  %490 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %489) #13, !dbg !210
  %rem.i.i.2 = or disjoint i32 %and469, 32, !dbg !287
  %and.i.i1125.2 = and i32 %490, 1073741760, !dbg !211
  %add.i.i1126.2 = or disjoint i32 %and.i.i1125.2, %rem.i.i.2, !dbg !212
  %shl.i.i1127.2 = shl nuw i32 %add.i.i1126.2, 2, !dbg !213
  %491 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1127.2, i32 %488), !dbg !214
  %492 = bitcast i32 %491 to float, !dbg !215
  %493 = extractelement <4 x half> %148, i64 0, !dbg !216
  %conv.i1128.2 = fpext half %493 to float, !dbg !216
  %494 = extractelement <4 x half> %148, i64 1, !dbg !219
  %conv6.i.2 = fpext half %494 to float, !dbg !219
  %495 = extractelement <4 x half> %148, i64 2, !dbg !220
  %conv.i1130.2 = fpext half %495 to float, !dbg !220
  %496 = extractelement <4 x half> %148, i64 3, !dbg !222
  %conv6.i1132.2 = fpext half %496 to float, !dbg !222
  %mul494.2 = fmul contract float %492, %conv.i1128.2, !dbg !223
  %mul498.2 = fmul contract float %492, %conv6.i.2, !dbg !224
  %mul502.2 = fmul contract float %492, %conv.i1130.2, !dbg !225
  %mul506.2 = fmul contract float %492, %conv6.i1132.2, !dbg !226
  %497 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !231
  %498 = fptrunc float %mul494.2 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %497), !dbg !227, !noalias !231
  %499 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !236, !noalias !231
  %500 = fptrunc float %mul498.2 to half, !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %499), !dbg !236, !noalias !231
  %501 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !238, !noalias !242
  %502 = fptrunc float %mul502.2 to half, !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %501), !dbg !238, !noalias !242
  %503 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !247, !noalias !242
  %504 = fptrunc float %mul506.2 to half, !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %503), !dbg !247, !noalias !242
  %505 = insertelement <4 x half> poison, half %498, i64 0, !dbg !249
  %506 = insertelement <4 x half> %505, half %500, i64 1, !dbg !249
  %507 = insertelement <4 x half> %506, half %502, i64 2, !dbg !249
  %508 = insertelement <4 x half> %507, half %504, i64 3, !dbg !249
  %shr529.2 = lshr exact i32 %mul444.2, 1
  %add530.2 = add nuw nsw i32 %shr529.2, %shr140
  %cmp531.2 = icmp ult i32 %add530.2, 512
  %conv541.2 = zext nneg i32 %mul444.2 to i64
  br i1 %cmp531.2, label %if.then532.2, label %if.end576.2, !dbg !250

if.then532.2:                                     ; preds = %if.end464.2
  %509 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1218.2 = shl nuw nsw i64 %conv541.2, 7, !dbg !251
  %510 = getelementptr inbounds i8, ptr addrspace(4) %509, i64 %.idx1218.2, !dbg !251
  %condval_2.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %510, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %510, i64 4, !dbg !252
  %condval_2.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.2, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %510, i64 8, !dbg !252
  %condval_2.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.2, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %510, i64 12, !dbg !252
  %condval_2.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.2, align 4, !dbg !252, !tbaa !30
  br label %if.end576.2, !dbg !253

if.end576.2:                                      ; preds = %if.then532.2, %if.end464.2
  %condval_2.sroa.5.0.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2, %if.then532.2 ], [ 0, %if.end464.2 ], !dbg !84
  %condval_2.sroa.0.0.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2, %if.then532.2 ], [ 0, %if.end464.2 ], !dbg !84
  %condval_2.sroa.6.0.2 = phi i32 [ %condval_2.sroa.6.0.copyload.2, %if.then532.2 ], [ 0, %if.end464.2 ], !dbg !84
  %condval_2.sroa.7.0.2 = phi i32 [ %condval_2.sroa.7.0.copyload.2, %if.then532.2 ], [ 0, %if.end464.2 ], !dbg !84
  store i32 %condval_2.sroa.0.0.2, ptr addrspace(5) %v_fetch_words, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 4, !dbg !254
  store i32 %condval_2.sroa.5.0.2, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.2, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 8, !dbg !254
  store i32 %condval_2.sroa.6.0.2, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.2, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 12, !dbg !254
  store i32 %condval_2.sroa.7.0.2, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.2, align 4, !dbg !254, !tbaa !30
  br i1 %cmp531.2, label %if.then532.1.2, label %if.end576.1.2, !dbg !250

if.then532.1.2:                                   ; preds = %if.end576.2
  %511 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1218.1.2 = shl nuw nsw i64 %conv541.2, 7, !dbg !251
  %512 = getelementptr inbounds i8, ptr addrspace(4) %511, i64 %.idx1218.1.2, !dbg !251
  %add.ptr552.1.2 = getelementptr inbounds i8, ptr addrspace(4) %512, i64 128, !dbg !251
  %condval_2.sroa.0.0.copyload.1.2 = load i32, ptr addrspace(4) %add.ptr552.1.2, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %512, i64 132, !dbg !252
  %condval_2.sroa.5.0.copyload.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.2, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %512, i64 136, !dbg !252
  %condval_2.sroa.6.0.copyload.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.2, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(4) %512, i64 140, !dbg !252
  %condval_2.sroa.7.0.copyload.1.2 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.2, align 4, !dbg !252, !tbaa !30
  br label %if.end576.1.2, !dbg !253

if.end576.1.2:                                    ; preds = %if.then532.1.2, %if.end576.2
  %condval_2.sroa.5.0.1.2 = phi i32 [ %condval_2.sroa.5.0.copyload.1.2, %if.then532.1.2 ], [ 0, %if.end576.2 ], !dbg !84
  %condval_2.sroa.0.0.1.2 = phi i32 [ %condval_2.sroa.0.0.copyload.1.2, %if.then532.1.2 ], [ 0, %if.end576.2 ], !dbg !84
  %condval_2.sroa.6.0.1.2 = phi i32 [ %condval_2.sroa.6.0.copyload.1.2, %if.then532.1.2 ], [ 0, %if.end576.2 ], !dbg !84
  %condval_2.sroa.7.0.1.2 = phi i32 [ %condval_2.sroa.7.0.copyload.1.2, %if.then532.1.2 ], [ 0, %if.end576.2 ], !dbg !84
  %add.ptr580.1.2 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 16, !dbg !255
  store i32 %condval_2.sroa.0.0.1.2, ptr addrspace(5) %add.ptr580.1.2, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 20, !dbg !254
  store i32 %condval_2.sroa.5.0.1.2, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.2, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 24, !dbg !254
  store i32 %condval_2.sroa.6.0.1.2, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.2, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 28, !dbg !254
  store i32 %condval_2.sroa.7.0.1.2, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.2, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.2.val = load i32, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.2, align 4, !dbg !84
  %v_fetch_words.val2494 = load i32, ptr addrspace(5) %v_fetch_words, align 4, !dbg !84
  %condval_3.0.2 = select i1 %cmp595, i32 %condval_2.sroa.6.0.add.ptr580.sroa_idx.2.val, i32 %v_fetch_words.val2494, !dbg !84
  %513 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %514 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %513) #13, !dbg !261
  %xor.i.i1145.2 = xor i32 %514, 8, !dbg !262
  %515 = and i32 %514, -64, !dbg !263
  %and.i.i1146.2 = add nsw i32 %515, 64, !dbg !263
  %cmp.not.i.i1147.2 = icmp slt i32 %xor.i.i1145.2, %and.i.i1146.2, !dbg !264
  %cond.i.i1148.2 = select i1 %cmp.not.i.i1147.2, i32 %xor.i.i1145.2, i32 %514, !dbg !265
  %shl.i.i1149.2 = shl i32 %cond.i.i1148.2, 2, !dbg !266
  %516 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.2, i32 %condval_3.0.2), !dbg !267
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.2.val = load i32, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.2, align 4, !dbg !84
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.2.val = load i32, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.2, align 4, !dbg !84
  %condval_3.0.1.2 = select i1 %cmp595, i32 %condval_2.sroa.7.0.add.ptr580.sroa_idx.2.val, i32 %condval_2.sroa.5.0.add.ptr580.sroa_idx.2.val, !dbg !84
  %517 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %518 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %517) #13, !dbg !261
  %xor.i.i1145.1.2 = xor i32 %518, 8, !dbg !262
  %519 = and i32 %518, -64, !dbg !263
  %and.i.i1146.1.2 = add nsw i32 %519, 64, !dbg !263
  %cmp.not.i.i1147.1.2 = icmp slt i32 %xor.i.i1145.1.2, %and.i.i1146.1.2, !dbg !264
  %cond.i.i1148.1.2 = select i1 %cmp.not.i.i1147.1.2, i32 %xor.i.i1145.1.2, i32 %518, !dbg !265
  %shl.i.i1149.1.2 = shl i32 %cond.i.i1148.1.2, 2, !dbg !266
  %520 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.1.2, i32 %condval_3.0.1.2), !dbg !267
  %.sroa.gep1842 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 24, !dbg !84
  %.sroa.gep1842.val = load i32, ptr addrspace(5) %.sroa.gep1842, align 4, !dbg !84
  %add.ptr580.1.2.val = load i32, ptr addrspace(5) %add.ptr580.1.2, align 4, !dbg !84
  %condval_3.0.11297.2 = select i1 %cmp595, i32 %.sroa.gep1842.val, i32 %add.ptr580.1.2.val, !dbg !84
  %521 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %522 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %521) #13, !dbg !261
  %xor.i.i1145.11298.2 = xor i32 %522, 8, !dbg !262
  %523 = and i32 %522, -64, !dbg !263
  %and.i.i1146.11299.2 = add nsw i32 %523, 64, !dbg !263
  %cmp.not.i.i1147.11300.2 = icmp slt i32 %xor.i.i1145.11298.2, %and.i.i1146.11299.2, !dbg !264
  %cond.i.i1148.11301.2 = select i1 %cmp.not.i.i1147.11300.2, i32 %xor.i.i1145.11298.2, i32 %522, !dbg !265
  %shl.i.i1149.11302.2 = shl i32 %cond.i.i1148.11301.2, 2, !dbg !266
  %524 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.11302.2, i32 %condval_3.0.11297.2), !dbg !267
  %idxprom600.pn.in.1.1.2.sroa.sel.v = xor i32 %364, 28, !dbg !84
  %idxprom600.pn.in.1.1.2.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom600.pn.in.1.1.2.sroa.sel.v, !dbg !84
  %condval_3.0.1.1.2 = load i32, ptr addrspace(5) %idxprom600.pn.in.1.1.2.sroa.sel, align 4, !dbg !84, !tbaa !30
  %525 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %526 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %525) #13, !dbg !261
  %xor.i.i1145.1.1.2 = xor i32 %526, 8, !dbg !262
  %527 = and i32 %526, -64, !dbg !263
  %and.i.i1146.1.1.2 = add nsw i32 %527, 64, !dbg !263
  %cmp.not.i.i1147.1.1.2 = icmp slt i32 %xor.i.i1145.1.1.2, %and.i.i1146.1.1.2, !dbg !264
  %cond.i.i1148.1.1.2 = select i1 %cmp.not.i.i1147.1.1.2, i32 %xor.i.i1145.1.1.2, i32 %526, !dbg !265
  %shl.i.i1149.1.1.2 = shl i32 %cond.i.i1148.1.1.2, 2, !dbg !266
  %528 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.1.1.2, i32 %condval_3.0.1.1.2), !dbg !267
  %v_fetch_words.val2495 = load i16, ptr addrspace(5) %v_fetch_words, align 4, !dbg !84
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.2.val2496 = load i16, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.2, align 4, !dbg !84
  %add.ptr580.1.2.val2497 = load i16, ptr addrspace(5) %add.ptr580.1.2, align 4, !dbg !84
  %.sroa.gep1842.val2498 = load i16, ptr addrspace(5) %.sroa.gep1842, align 4, !dbg !84
  %v_exchange_half.sroa.0.0.extract.trunc1509 = trunc i32 %516 to i16
  %spec.select2585 = select i1 %cmp595, i16 %v_fetch_words.val2495, i16 %v_exchange_half.sroa.0.0.extract.trunc1509, !dbg !268
  %v_exchange_half.sroa.82.8.extract.trunc1659 = trunc i32 %524 to i16, !dbg !269
  %condval_7.sroa.0.0.21387 = select i1 %cmp595, i16 %add.ptr580.1.2.val2497, i16 %v_exchange_half.sroa.82.8.extract.trunc1659, !dbg !269
  %v_exchange_half.sroa.0.0.extract.trunc1511 = trunc i32 %516 to i16, !dbg !270
  %condval_8.sroa.0.0.21391 = select i1 %cmp595, i16 %v_exchange_half.sroa.0.0.extract.trunc1511, i16 %condval_2.sroa.6.0.add.ptr580.sroa_idx.2.val2496, !dbg !270
  %v_exchange_half.sroa.82.8.extract.trunc1661 = trunc i32 %524 to i16, !dbg !271
  %condval_9.sroa.0.0.21396 = select i1 %cmp595, i16 %v_exchange_half.sroa.82.8.extract.trunc1661, i16 %.sroa.gep1842.val2498, !dbg !271
  %add706.21397 = or disjoint i32 %mul700, %mul705, !dbg !272
  %529 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.21397, !dbg !273
  %add.ptr716.idx.21398 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.21399 = getelementptr inbounds i8, ptr addrspace(3) %529, i32 %add.ptr716.idx.21398, !dbg !273
  store i16 %spec.select2585, ptr addrspace(3) %add.ptr716.21399, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.21400 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.21399, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.21387, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.21400, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.21401 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.21399, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.21391, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.21401, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.21402 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.21399, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.21396, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.21402, align 2, !dbg !274, !tbaa !30
  %idxprom630.pn.in.1.2.sroa.sel.v = or disjoint i32 %364, 2, !dbg !84
  %idxprom630.pn.in.1.2.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom630.pn.in.1.2.sroa.sel.v, !dbg !84
  %condval_4.sroa.0.0.1.2 = load i16, ptr addrspace(5) %idxprom630.pn.in.1.2.sroa.sel, align 2, !dbg !84, !tbaa !275
  %idxprom645.pn.in.1.2 = or disjoint i32 %idxprom645.pn.in.v, 1, !dbg !276
  %condval_5.sroa.0.0.in.1.2 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.1.2, !dbg !84
  %condval_5.sroa.0.0.1.2 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.1.2, align 2, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.0.2.extract.shift1542 = lshr i32 %516, 16, !dbg !268
  %v_exchange_half.sroa.0.2.extract.trunc1543 = trunc nuw i32 %v_exchange_half.sroa.0.2.extract.shift1542 to i16, !dbg !268
  %condval_6.sroa.0.0.1.2 = select i1 %cmp595, i16 %condval_4.sroa.0.0.1.2, i16 %v_exchange_half.sroa.0.2.extract.trunc1543, !dbg !268
  %v_exchange_half.sroa.82.10.extract.shift1692 = lshr i32 %524, 16, !dbg !269
  %v_exchange_half.sroa.82.10.extract.trunc1693 = trunc nuw i32 %v_exchange_half.sroa.82.10.extract.shift1692 to i16, !dbg !269
  %condval_7.sroa.0.0.1.2 = select i1 %cmp595, i16 %condval_5.sroa.0.0.1.2, i16 %v_exchange_half.sroa.82.10.extract.trunc1693, !dbg !269
  %v_exchange_half.sroa.0.2.extract.shift1545 = lshr i32 %516, 16, !dbg !270
  %v_exchange_half.sroa.0.2.extract.trunc1546 = trunc nuw i32 %v_exchange_half.sroa.0.2.extract.shift1545 to i16, !dbg !270
  %condval_8.sroa.0.0.1.2 = select i1 %cmp595, i16 %v_exchange_half.sroa.0.2.extract.trunc1546, i16 %condval_4.sroa.0.0.1.2, !dbg !270
  %v_exchange_half.sroa.82.10.extract.shift1695 = lshr i32 %524, 16, !dbg !271
  %v_exchange_half.sroa.82.10.extract.trunc1696 = trunc nuw i32 %v_exchange_half.sroa.82.10.extract.shift1695 to i16, !dbg !271
  %condval_9.sroa.0.0.1.2 = select i1 %cmp595, i16 %v_exchange_half.sroa.82.10.extract.trunc1696, i16 %condval_5.sroa.0.0.1.2, !dbg !271
  %add701.1.2 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.1.2 = or disjoint i32 %add701.1.2, 256, !dbg !272
  %530 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.1.2, !dbg !273
  %xor712.1.2 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.1.2 = xor i32 %xor712.1.2, 8, !dbg !273
  %add.ptr716.1.2 = getelementptr inbounds i8, ptr addrspace(3) %530, i32 %add.ptr716.idx.1.2, !dbg !273
  store i16 %condval_6.sroa.0.0.1.2, ptr addrspace(3) %add.ptr716.1.2, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1.2, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.1.2, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.1.2, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1.2, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.1.2, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.1.2, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1.2, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.1.2, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.1.2, align 2, !dbg !274, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.2.val2595 = load i16, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.2, align 4, !dbg !84
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.2.val2596 = load i16, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.2, align 4, !dbg !84
  %idxprom645.pn.in.2.2 = or disjoint i32 %idxprom645.pn.in.v, 2, !dbg !276
  %condval_5.sroa.0.0.in.2.2 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.2.2, !dbg !84
  %condval_5.sroa.0.0.2.2 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.2.2, align 4, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.42.4.extract.trunc1584 = trunc i32 %520 to i16, !dbg !268
  %condval_6.sroa.0.0.2.2 = select i1 %cmp595, i16 %condval_2.sroa.5.0.add.ptr580.sroa_idx.2.val2595, i16 %v_exchange_half.sroa.42.4.extract.trunc1584, !dbg !268
  %v_exchange_half.sroa.122.12.extract.trunc1734 = trunc i32 %528 to i16, !dbg !269
  %condval_7.sroa.0.0.2.2 = select i1 %cmp595, i16 %condval_5.sroa.0.0.2.2, i16 %v_exchange_half.sroa.122.12.extract.trunc1734, !dbg !269
  %v_exchange_half.sroa.42.4.extract.trunc1586 = trunc i32 %520 to i16, !dbg !270
  %condval_8.sroa.0.0.2.2 = select i1 %cmp595, i16 %v_exchange_half.sroa.42.4.extract.trunc1586, i16 %condval_2.sroa.7.0.add.ptr580.sroa_idx.2.val2596, !dbg !270
  %v_exchange_half.sroa.122.12.extract.trunc1736 = trunc i32 %528 to i16, !dbg !271
  %condval_9.sroa.0.0.2.2 = select i1 %cmp595, i16 %v_exchange_half.sroa.122.12.extract.trunc1736, i16 %condval_5.sroa.0.0.2.2, !dbg !271
  %add701.2.2 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.2.2 = or disjoint i32 %add701.2.2, 512, !dbg !272
  %531 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.2.2, !dbg !273
  %xor712.2.2 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.2.2 = xor i32 %xor712.2.2, 16, !dbg !273
  %add.ptr716.2.2 = getelementptr inbounds i8, ptr addrspace(3) %531, i32 %add.ptr716.idx.2.2, !dbg !273
  store i16 %condval_6.sroa.0.0.2.2, ptr addrspace(3) %add.ptr716.2.2, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.2.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2.2, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.2.2, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.2.2, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.2.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2.2, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.2.2, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.2.2, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.2.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2.2, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.2.2, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.2.2, align 2, !dbg !274, !tbaa !30
  %idxprom630.pn.in.3.2.sroa.sel.v = or disjoint i32 %364, 6, !dbg !84
  %idxprom630.pn.in.3.2.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom630.pn.in.3.2.sroa.sel.v, !dbg !84
  %condval_4.sroa.0.0.3.2 = load i16, ptr addrspace(5) %idxprom630.pn.in.3.2.sroa.sel, align 2, !dbg !84, !tbaa !275
  %idxprom645.pn.in.3.2 = or disjoint i32 %idxprom645.pn.in.v, 3, !dbg !276
  %condval_5.sroa.0.0.in.3.2 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.3.2, !dbg !84
  %condval_5.sroa.0.0.3.2 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.3.2, align 2, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.42.6.extract.shift1617 = lshr i32 %520, 16, !dbg !268
  %v_exchange_half.sroa.42.6.extract.trunc1618 = trunc nuw i32 %v_exchange_half.sroa.42.6.extract.shift1617 to i16, !dbg !268
  %condval_6.sroa.0.0.3.2 = select i1 %cmp595, i16 %condval_4.sroa.0.0.3.2, i16 %v_exchange_half.sroa.42.6.extract.trunc1618, !dbg !268
  %v_exchange_half.sroa.122.14.extract.shift1767 = lshr i32 %528, 16, !dbg !269
  %v_exchange_half.sroa.122.14.extract.trunc1768 = trunc nuw i32 %v_exchange_half.sroa.122.14.extract.shift1767 to i16, !dbg !269
  %condval_7.sroa.0.0.3.2 = select i1 %cmp595, i16 %condval_5.sroa.0.0.3.2, i16 %v_exchange_half.sroa.122.14.extract.trunc1768, !dbg !269
  %v_exchange_half.sroa.42.6.extract.shift1620 = lshr i32 %520, 16, !dbg !270
  %v_exchange_half.sroa.42.6.extract.trunc1621 = trunc nuw i32 %v_exchange_half.sroa.42.6.extract.shift1620 to i16, !dbg !270
  %condval_8.sroa.0.0.3.2 = select i1 %cmp595, i16 %v_exchange_half.sroa.42.6.extract.trunc1621, i16 %condval_4.sroa.0.0.3.2, !dbg !270
  %v_exchange_half.sroa.122.14.extract.shift1770 = lshr i32 %528, 16, !dbg !271
  %v_exchange_half.sroa.122.14.extract.trunc1771 = trunc nuw i32 %v_exchange_half.sroa.122.14.extract.shift1770 to i16, !dbg !271
  %condval_9.sroa.0.0.3.2 = select i1 %cmp595, i16 %v_exchange_half.sroa.122.14.extract.trunc1771, i16 %condval_5.sroa.0.0.3.2, !dbg !271
  %add701.3.2 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.3.2 = or disjoint i32 %add701.3.2, 768, !dbg !272
  %532 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.3.2, !dbg !273
  %xor712.3.2 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.3.2 = xor i32 %xor712.3.2, 24, !dbg !273
  %add.ptr716.3.2 = getelementptr inbounds i8, ptr addrspace(3) %532, i32 %add.ptr716.idx.3.2, !dbg !273
  store i16 %condval_6.sroa.0.0.3.2, ptr addrspace(3) %add.ptr716.3.2, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.3.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3.2, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.3.2, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.3.2, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.3.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3.2, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.3.2, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.3.2, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.3.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3.2, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.3.2, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.3.2, align 2, !dbg !274, !tbaa !30
  fence syncscope("warp") release, !dbg !277
  tail call void @llvm.mxc.barrier.warp(), !dbg !280
  fence syncscope("warp") acquire, !dbg !281
  %add733.21404 = or disjoint i32 %mul726, %mul732, !dbg !282
  %533 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.21404, !dbg !283
  %add.ptr743.idx.21405 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.21406 = getelementptr inbounds i8, ptr addrspace(3) %533, i32 %add.ptr743.idx.21405, !dbg !283
  %534 = load <4 x half>, ptr addrspace(3) %add.ptr743.21406, align 8, !dbg !284
  %add728.1.2 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.1.2 = or disjoint i32 %add728.1.2, 64, !dbg !282
  %535 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.1.2, !dbg !283
  %xor739.1.2 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.1.2 = xor i32 %xor739.1.2, 8, !dbg !283
  %add.ptr743.1.2 = getelementptr inbounds i8, ptr addrspace(3) %535, i32 %add.ptr743.idx.1.2, !dbg !283
  %536 = load <4 x half>, ptr addrspace(3) %add.ptr743.1.2, align 8, !dbg !284
  %add728.2.2 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.2.2 = or disjoint i32 %add728.2.2, 128, !dbg !282
  %537 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.2.2, !dbg !283
  %xor739.2.2 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.2.2 = xor i32 %xor739.2.2, 16, !dbg !283
  %add.ptr743.2.2 = getelementptr inbounds i8, ptr addrspace(3) %537, i32 %add.ptr743.idx.2.2, !dbg !283
  %538 = load <4 x half>, ptr addrspace(3) %add.ptr743.2.2, align 8, !dbg !284
  %add728.3.2 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.3.2 = or disjoint i32 %add728.3.2, 192, !dbg !282
  %539 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.3.2, !dbg !283
  %xor739.3.2 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.3.2 = xor i32 %xor739.3.2, 24, !dbg !283
  %add.ptr743.3.2 = getelementptr inbounds i8, ptr addrspace(3) %539, i32 %add.ptr743.idx.3.2, !dbg !283
  %540 = load <4 x half>, ptr addrspace(3) %add.ptr743.3.2, align 8, !dbg !284
  %541 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %534, <4 x half> %508, <4 x float> %output_acc.sroa.0.1), !dbg !285
  %542 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %536, <4 x half> %508, <4 x float> %output_acc.sroa.34.1), !dbg !285
  %543 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %538, <4 x half> %508, <4 x float> %output_acc.sroa.66.1), !dbg !285
  %544 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %540, <4 x half> %508, <4 x float> %output_acc.sroa.98.1), !dbg !285
  br label %if.end770.2, !dbg !286

if.end770.2:                                      ; preds = %if.end576.1.2, %if.end770.1
  %bc2555 = phi <4 x half> [ %148, %if.end770.1 ], [ %508, %if.end576.1.2 ], !dbg !84
  %output_acc.sroa.98.2 = phi <4 x float> [ %output_acc.sroa.98.1, %if.end770.1 ], [ %544, %if.end576.1.2 ], !dbg !84
  %output_acc.sroa.66.2 = phi <4 x float> [ %output_acc.sroa.66.1, %if.end770.1 ], [ %543, %if.end576.1.2 ], !dbg !84
  %output_acc.sroa.34.2 = phi <4 x float> [ %output_acc.sroa.34.1, %if.end770.1 ], [ %542, %if.end576.1.2 ], !dbg !84
  %output_acc.sroa.0.2 = phi <4 x float> [ %output_acc.sroa.0.1, %if.end770.1 ], [ %541, %if.end576.1.2 ], !dbg !84
  %545 = load i32, ptr addrspace(1) %arrayidx130.3, align 4, !dbg !187, !tbaa !30
  %mul444.3 = shl nsw i32 %545, 4, !dbg !188
  %cmp445.3 = icmp slt i32 %545, 0, !dbg !189
  %cmp448.not.3 = icmp sgt i32 %mul444.3, %1
  %or.cond1181.3 = select i1 %cmp445.3, i1 true, i1 %cmp448.not.3, !dbg !190
  br i1 %or.cond1181.3, label %if.end770.3, label %if.then449.3, !dbg !190

if.then449.3:                                     ; preds = %if.end770.2
  fence syncscope("warp") release, !dbg !191
  tail call void @llvm.mxc.barrier.warp(), !dbg !194
  fence syncscope("warp") acquire, !dbg !195
  %cmp454.3 = icmp eq i32 %shr324, 3, !dbg !196
  br i1 %cmp454.3, label %if.then455.3, label %if.end464.3, !dbg !197

if.then455.3:                                     ; preds = %if.then449.3
  %sub460.3 = fsub contract float %max_cache.sroa.0.7, %global_max.sroa.0.1.7, !dbg !198
  %mul461.3 = fmul contract float %sub460.3, 0x3FC7154760000000, !dbg !199
  %cmp.i.i1120.3 = fcmp contract olt float %mul461.3, -1.260000e+02, !dbg !200
  %cond.i.i1121.3 = select contract i1 %cmp.i.i1120.3, float 6.400000e+01, float 0.000000e+00, !dbg !200
  %add.i.i1122.3 = fadd contract float %mul461.3, %cond.i.i1121.3, !dbg !200
  %546 = tail call contract float @llvm.exp2.f32(float %add.i.i1122.3), !dbg !200
  %cond2.i.i1123.3 = select contract i1 %cmp.i.i1120.3, float 0x3BF0000000000000, float 1.000000e+00, !dbg !200
  %mul.i.i1124.3 = fmul contract float %cond2.i.i1123.3, %546, !dbg !200
  br label %if.end464.3, !dbg !202

if.end464.3:                                      ; preds = %if.then455.3, %if.then449.3
  %rescale.sroa.0.0.3 = phi float [ %mul.i.i1124.3, %if.then455.3 ], [ 0.000000e+00, %if.then449.3 ], !dbg !84
  %547 = bitcast float %rescale.sroa.0.0.3 to i32, !dbg !203
  %548 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !206
  %549 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %548) #13, !dbg !210
  %rem.i.i.3 = or disjoint i32 %and469, 48, !dbg !287
  %and.i.i1125.3 = and i32 %549, 1073741760, !dbg !211
  %add.i.i1126.3 = or disjoint i32 %and.i.i1125.3, %rem.i.i.3, !dbg !212
  %shl.i.i1127.3 = shl nuw i32 %add.i.i1126.3, 2, !dbg !213
  %550 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1127.3, i32 %547), !dbg !214
  %551 = bitcast i32 %550 to float, !dbg !215
  %552 = extractelement <4 x half> %190, i64 0, !dbg !216
  %conv.i1128.3 = fpext half %552 to float, !dbg !216
  %553 = extractelement <4 x half> %190, i64 1, !dbg !219
  %conv6.i.3 = fpext half %553 to float, !dbg !219
  %554 = extractelement <4 x half> %190, i64 2, !dbg !220
  %conv.i1130.3 = fpext half %554 to float, !dbg !220
  %555 = extractelement <4 x half> %190, i64 3, !dbg !222
  %conv6.i1132.3 = fpext half %555 to float, !dbg !222
  %mul494.3 = fmul contract float %551, %conv.i1128.3, !dbg !223
  %mul498.3 = fmul contract float %551, %conv6.i.3, !dbg !224
  %mul502.3 = fmul contract float %551, %conv.i1130.3, !dbg !225
  %mul506.3 = fmul contract float %551, %conv6.i1132.3, !dbg !226
  %556 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !231
  %557 = fptrunc float %mul494.3 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %556), !dbg !227, !noalias !231
  %558 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !236, !noalias !231
  %559 = fptrunc float %mul498.3 to half, !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %558), !dbg !236, !noalias !231
  %560 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !238, !noalias !242
  %561 = fptrunc float %mul502.3 to half, !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %560), !dbg !238, !noalias !242
  %562 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !247, !noalias !242
  %563 = fptrunc float %mul506.3 to half, !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %562), !dbg !247, !noalias !242
  %564 = insertelement <4 x half> poison, half %557, i64 0, !dbg !249
  %565 = insertelement <4 x half> %564, half %559, i64 1, !dbg !249
  %566 = insertelement <4 x half> %565, half %561, i64 2, !dbg !249
  %567 = insertelement <4 x half> %566, half %563, i64 3, !dbg !249
  %shr529.3 = lshr exact i32 %mul444.3, 1
  %add530.3 = add nuw nsw i32 %shr529.3, %shr140
  %cmp531.3 = icmp ult i32 %add530.3, 512
  %conv541.3 = zext nneg i32 %mul444.3 to i64
  br i1 %cmp531.3, label %if.then532.3, label %if.end576.3, !dbg !250

if.then532.3:                                     ; preds = %if.end464.3
  %568 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1218.3 = shl nuw nsw i64 %conv541.3, 7, !dbg !251
  %569 = getelementptr inbounds i8, ptr addrspace(4) %568, i64 %.idx1218.3, !dbg !251
  %condval_2.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %569, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %569, i64 4, !dbg !252
  %condval_2.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.3, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %569, i64 8, !dbg !252
  %condval_2.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.3, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %569, i64 12, !dbg !252
  %condval_2.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.3, align 4, !dbg !252, !tbaa !30
  br label %if.end576.3, !dbg !253

if.end576.3:                                      ; preds = %if.then532.3, %if.end464.3
  %condval_2.sroa.5.0.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3, %if.then532.3 ], [ 0, %if.end464.3 ], !dbg !84
  %condval_2.sroa.0.0.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3, %if.then532.3 ], [ 0, %if.end464.3 ], !dbg !84
  %condval_2.sroa.6.0.3 = phi i32 [ %condval_2.sroa.6.0.copyload.3, %if.then532.3 ], [ 0, %if.end464.3 ], !dbg !84
  %condval_2.sroa.7.0.3 = phi i32 [ %condval_2.sroa.7.0.copyload.3, %if.then532.3 ], [ 0, %if.end464.3 ], !dbg !84
  store i32 %condval_2.sroa.0.0.3, ptr addrspace(5) %v_fetch_words, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 4, !dbg !254
  store i32 %condval_2.sroa.5.0.3, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.3, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 8, !dbg !254
  store i32 %condval_2.sroa.6.0.3, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.3, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 12, !dbg !254
  store i32 %condval_2.sroa.7.0.3, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.3, align 4, !dbg !254, !tbaa !30
  br i1 %cmp531.3, label %if.then532.1.3, label %if.end576.1.3, !dbg !250

if.then532.1.3:                                   ; preds = %if.end576.3
  %570 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1218.1.3 = shl nuw nsw i64 %conv541.3, 7, !dbg !251
  %571 = getelementptr inbounds i8, ptr addrspace(4) %570, i64 %.idx1218.1.3, !dbg !251
  %add.ptr552.1.3 = getelementptr inbounds i8, ptr addrspace(4) %571, i64 128, !dbg !251
  %condval_2.sroa.0.0.copyload.1.3 = load i32, ptr addrspace(4) %add.ptr552.1.3, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %571, i64 132, !dbg !252
  %condval_2.sroa.5.0.copyload.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.3, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %571, i64 136, !dbg !252
  %condval_2.sroa.6.0.copyload.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.3, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(4) %571, i64 140, !dbg !252
  %condval_2.sroa.7.0.copyload.1.3 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.3, align 4, !dbg !252, !tbaa !30
  br label %if.end576.1.3, !dbg !253

if.end576.1.3:                                    ; preds = %if.then532.1.3, %if.end576.3
  %condval_2.sroa.5.0.1.3 = phi i32 [ %condval_2.sroa.5.0.copyload.1.3, %if.then532.1.3 ], [ 0, %if.end576.3 ], !dbg !84
  %condval_2.sroa.0.0.1.3 = phi i32 [ %condval_2.sroa.0.0.copyload.1.3, %if.then532.1.3 ], [ 0, %if.end576.3 ], !dbg !84
  %condval_2.sroa.6.0.1.3 = phi i32 [ %condval_2.sroa.6.0.copyload.1.3, %if.then532.1.3 ], [ 0, %if.end576.3 ], !dbg !84
  %condval_2.sroa.7.0.1.3 = phi i32 [ %condval_2.sroa.7.0.copyload.1.3, %if.then532.1.3 ], [ 0, %if.end576.3 ], !dbg !84
  %add.ptr580.1.3 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 16, !dbg !255
  store i32 %condval_2.sroa.0.0.1.3, ptr addrspace(5) %add.ptr580.1.3, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 20, !dbg !254
  store i32 %condval_2.sroa.5.0.1.3, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.3, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 24, !dbg !254
  store i32 %condval_2.sroa.6.0.1.3, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.3, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 28, !dbg !254
  store i32 %condval_2.sroa.7.0.1.3, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.3, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.3.val = load i32, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.3, align 4, !dbg !84
  %v_fetch_words.val2503 = load i32, ptr addrspace(5) %v_fetch_words, align 4, !dbg !84
  %condval_3.0.3 = select i1 %cmp595, i32 %condval_2.sroa.6.0.add.ptr580.sroa_idx.3.val, i32 %v_fetch_words.val2503, !dbg !84
  %572 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %573 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %572) #13, !dbg !261
  %xor.i.i1145.3 = xor i32 %573, 8, !dbg !262
  %574 = and i32 %573, -64, !dbg !263
  %and.i.i1146.3 = add nsw i32 %574, 64, !dbg !263
  %cmp.not.i.i1147.3 = icmp slt i32 %xor.i.i1145.3, %and.i.i1146.3, !dbg !264
  %cond.i.i1148.3 = select i1 %cmp.not.i.i1147.3, i32 %xor.i.i1145.3, i32 %573, !dbg !265
  %shl.i.i1149.3 = shl i32 %cond.i.i1148.3, 2, !dbg !266
  %575 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.3, i32 %condval_3.0.3), !dbg !267
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.3.val = load i32, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.3, align 4, !dbg !84
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.3.val = load i32, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.3, align 4, !dbg !84
  %condval_3.0.1.3 = select i1 %cmp595, i32 %condval_2.sroa.7.0.add.ptr580.sroa_idx.3.val, i32 %condval_2.sroa.5.0.add.ptr580.sroa_idx.3.val, !dbg !84
  %576 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %577 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %576) #13, !dbg !261
  %xor.i.i1145.1.3 = xor i32 %577, 8, !dbg !262
  %578 = and i32 %577, -64, !dbg !263
  %and.i.i1146.1.3 = add nsw i32 %578, 64, !dbg !263
  %cmp.not.i.i1147.1.3 = icmp slt i32 %xor.i.i1145.1.3, %and.i.i1146.1.3, !dbg !264
  %cond.i.i1148.1.3 = select i1 %cmp.not.i.i1147.1.3, i32 %xor.i.i1145.1.3, i32 %577, !dbg !265
  %shl.i.i1149.1.3 = shl i32 %cond.i.i1148.1.3, 2, !dbg !266
  %579 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.1.3, i32 %condval_3.0.1.3), !dbg !267
  %.sroa.gep1861 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 24, !dbg !84
  %.sroa.gep1861.val = load i32, ptr addrspace(5) %.sroa.gep1861, align 4, !dbg !84
  %add.ptr580.1.3.val = load i32, ptr addrspace(5) %add.ptr580.1.3, align 4, !dbg !84
  %condval_3.0.11297.3 = select i1 %cmp595, i32 %.sroa.gep1861.val, i32 %add.ptr580.1.3.val, !dbg !84
  %580 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %581 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %580) #13, !dbg !261
  %xor.i.i1145.11298.3 = xor i32 %581, 8, !dbg !262
  %582 = and i32 %581, -64, !dbg !263
  %and.i.i1146.11299.3 = add nsw i32 %582, 64, !dbg !263
  %cmp.not.i.i1147.11300.3 = icmp slt i32 %xor.i.i1145.11298.3, %and.i.i1146.11299.3, !dbg !264
  %cond.i.i1148.11301.3 = select i1 %cmp.not.i.i1147.11300.3, i32 %xor.i.i1145.11298.3, i32 %581, !dbg !265
  %shl.i.i1149.11302.3 = shl i32 %cond.i.i1148.11301.3, 2, !dbg !266
  %583 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.11302.3, i32 %condval_3.0.11297.3), !dbg !267
  %idxprom600.pn.in.1.1.3.sroa.sel.v = xor i32 %364, 28, !dbg !84
  %idxprom600.pn.in.1.1.3.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom600.pn.in.1.1.3.sroa.sel.v, !dbg !84
  %condval_3.0.1.1.3 = load i32, ptr addrspace(5) %idxprom600.pn.in.1.1.3.sroa.sel, align 4, !dbg !84, !tbaa !30
  %584 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %585 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %584) #13, !dbg !261
  %xor.i.i1145.1.1.3 = xor i32 %585, 8, !dbg !262
  %586 = and i32 %585, -64, !dbg !263
  %and.i.i1146.1.1.3 = add nsw i32 %586, 64, !dbg !263
  %cmp.not.i.i1147.1.1.3 = icmp slt i32 %xor.i.i1145.1.1.3, %and.i.i1146.1.1.3, !dbg !264
  %cond.i.i1148.1.1.3 = select i1 %cmp.not.i.i1147.1.1.3, i32 %xor.i.i1145.1.1.3, i32 %585, !dbg !265
  %shl.i.i1149.1.1.3 = shl i32 %cond.i.i1148.1.1.3, 2, !dbg !266
  %587 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.1.1.3, i32 %condval_3.0.1.1.3), !dbg !267
  %v_fetch_words.val2504 = load i16, ptr addrspace(5) %v_fetch_words, align 4, !dbg !84
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.3.val2505 = load i16, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.3, align 4, !dbg !84
  %add.ptr580.1.3.val2506 = load i16, ptr addrspace(5) %add.ptr580.1.3, align 4, !dbg !84
  %.sroa.gep1861.val2507 = load i16, ptr addrspace(5) %.sroa.gep1861, align 4, !dbg !84
  %v_exchange_half.sroa.0.0.extract.trunc1513 = trunc i32 %575 to i16
  %spec.select2586 = select i1 %cmp595, i16 %v_fetch_words.val2504, i16 %v_exchange_half.sroa.0.0.extract.trunc1513, !dbg !268
  %v_exchange_half.sroa.82.8.extract.trunc1663 = trunc i32 %583 to i16, !dbg !269
  %condval_7.sroa.0.0.31419 = select i1 %cmp595, i16 %add.ptr580.1.3.val2506, i16 %v_exchange_half.sroa.82.8.extract.trunc1663, !dbg !269
  %v_exchange_half.sroa.0.0.extract.trunc1515 = trunc i32 %575 to i16, !dbg !270
  %condval_8.sroa.0.0.31423 = select i1 %cmp595, i16 %v_exchange_half.sroa.0.0.extract.trunc1515, i16 %condval_2.sroa.6.0.add.ptr580.sroa_idx.3.val2505, !dbg !270
  %v_exchange_half.sroa.82.8.extract.trunc1665 = trunc i32 %583 to i16, !dbg !271
  %condval_9.sroa.0.0.31428 = select i1 %cmp595, i16 %v_exchange_half.sroa.82.8.extract.trunc1665, i16 %.sroa.gep1861.val2507, !dbg !271
  %add706.31429 = or disjoint i32 %mul700, %mul705, !dbg !272
  %588 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.31429, !dbg !273
  %add.ptr716.idx.31430 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.31431 = getelementptr inbounds i8, ptr addrspace(3) %588, i32 %add.ptr716.idx.31430, !dbg !273
  store i16 %spec.select2586, ptr addrspace(3) %add.ptr716.31431, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.31432 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.31431, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.31419, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.31432, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.31433 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.31431, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.31423, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.31433, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.31434 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.31431, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.31428, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.31434, align 2, !dbg !274, !tbaa !30
  %idxprom630.pn.in.1.3.sroa.sel.v = or disjoint i32 %364, 2, !dbg !84
  %idxprom630.pn.in.1.3.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom630.pn.in.1.3.sroa.sel.v, !dbg !84
  %condval_4.sroa.0.0.1.3 = load i16, ptr addrspace(5) %idxprom630.pn.in.1.3.sroa.sel, align 2, !dbg !84, !tbaa !275
  %idxprom645.pn.in.1.3 = or disjoint i32 %idxprom645.pn.in.v, 1, !dbg !276
  %condval_5.sroa.0.0.in.1.3 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.1.3, !dbg !84
  %condval_5.sroa.0.0.1.3 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.1.3, align 2, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.0.2.extract.shift1548 = lshr i32 %575, 16, !dbg !268
  %v_exchange_half.sroa.0.2.extract.trunc1549 = trunc nuw i32 %v_exchange_half.sroa.0.2.extract.shift1548 to i16, !dbg !268
  %condval_6.sroa.0.0.1.3 = select i1 %cmp595, i16 %condval_4.sroa.0.0.1.3, i16 %v_exchange_half.sroa.0.2.extract.trunc1549, !dbg !268
  %v_exchange_half.sroa.82.10.extract.shift1698 = lshr i32 %583, 16, !dbg !269
  %v_exchange_half.sroa.82.10.extract.trunc1699 = trunc nuw i32 %v_exchange_half.sroa.82.10.extract.shift1698 to i16, !dbg !269
  %condval_7.sroa.0.0.1.3 = select i1 %cmp595, i16 %condval_5.sroa.0.0.1.3, i16 %v_exchange_half.sroa.82.10.extract.trunc1699, !dbg !269
  %v_exchange_half.sroa.0.2.extract.shift1551 = lshr i32 %575, 16, !dbg !270
  %v_exchange_half.sroa.0.2.extract.trunc1552 = trunc nuw i32 %v_exchange_half.sroa.0.2.extract.shift1551 to i16, !dbg !270
  %condval_8.sroa.0.0.1.3 = select i1 %cmp595, i16 %v_exchange_half.sroa.0.2.extract.trunc1552, i16 %condval_4.sroa.0.0.1.3, !dbg !270
  %v_exchange_half.sroa.82.10.extract.shift1701 = lshr i32 %583, 16, !dbg !271
  %v_exchange_half.sroa.82.10.extract.trunc1702 = trunc nuw i32 %v_exchange_half.sroa.82.10.extract.shift1701 to i16, !dbg !271
  %condval_9.sroa.0.0.1.3 = select i1 %cmp595, i16 %v_exchange_half.sroa.82.10.extract.trunc1702, i16 %condval_5.sroa.0.0.1.3, !dbg !271
  %add701.1.3 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.1.3 = or disjoint i32 %add701.1.3, 256, !dbg !272
  %589 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.1.3, !dbg !273
  %xor712.1.3 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.1.3 = xor i32 %xor712.1.3, 8, !dbg !273
  %add.ptr716.1.3 = getelementptr inbounds i8, ptr addrspace(3) %589, i32 %add.ptr716.idx.1.3, !dbg !273
  store i16 %condval_6.sroa.0.0.1.3, ptr addrspace(3) %add.ptr716.1.3, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1.3, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.1.3, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.1.3, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1.3, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.1.3, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.1.3, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1.3, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.1.3, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.1.3, align 2, !dbg !274, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.3.val2597 = load i16, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.3, align 4, !dbg !84
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.3.val2598 = load i16, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.3, align 4, !dbg !84
  %idxprom645.pn.in.2.3 = or disjoint i32 %idxprom645.pn.in.v, 2, !dbg !276
  %condval_5.sroa.0.0.in.2.3 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.2.3, !dbg !84
  %condval_5.sroa.0.0.2.3 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.2.3, align 4, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.42.4.extract.trunc1588 = trunc i32 %579 to i16, !dbg !268
  %condval_6.sroa.0.0.2.3 = select i1 %cmp595, i16 %condval_2.sroa.5.0.add.ptr580.sroa_idx.3.val2597, i16 %v_exchange_half.sroa.42.4.extract.trunc1588, !dbg !268
  %v_exchange_half.sroa.122.12.extract.trunc1738 = trunc i32 %587 to i16, !dbg !269
  %condval_7.sroa.0.0.2.3 = select i1 %cmp595, i16 %condval_5.sroa.0.0.2.3, i16 %v_exchange_half.sroa.122.12.extract.trunc1738, !dbg !269
  %v_exchange_half.sroa.42.4.extract.trunc1590 = trunc i32 %579 to i16, !dbg !270
  %condval_8.sroa.0.0.2.3 = select i1 %cmp595, i16 %v_exchange_half.sroa.42.4.extract.trunc1590, i16 %condval_2.sroa.7.0.add.ptr580.sroa_idx.3.val2598, !dbg !270
  %v_exchange_half.sroa.122.12.extract.trunc1740 = trunc i32 %587 to i16, !dbg !271
  %condval_9.sroa.0.0.2.3 = select i1 %cmp595, i16 %v_exchange_half.sroa.122.12.extract.trunc1740, i16 %condval_5.sroa.0.0.2.3, !dbg !271
  %add701.2.3 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.2.3 = or disjoint i32 %add701.2.3, 512, !dbg !272
  %590 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.2.3, !dbg !273
  %xor712.2.3 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.2.3 = xor i32 %xor712.2.3, 16, !dbg !273
  %add.ptr716.2.3 = getelementptr inbounds i8, ptr addrspace(3) %590, i32 %add.ptr716.idx.2.3, !dbg !273
  store i16 %condval_6.sroa.0.0.2.3, ptr addrspace(3) %add.ptr716.2.3, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.2.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2.3, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.2.3, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.2.3, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.2.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2.3, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.2.3, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.2.3, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.2.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2.3, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.2.3, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.2.3, align 2, !dbg !274, !tbaa !30
  %idxprom630.pn.in.3.3.sroa.sel.v = or disjoint i32 %364, 6, !dbg !84
  %idxprom630.pn.in.3.3.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom630.pn.in.3.3.sroa.sel.v, !dbg !84
  %condval_4.sroa.0.0.3.3 = load i16, ptr addrspace(5) %idxprom630.pn.in.3.3.sroa.sel, align 2, !dbg !84, !tbaa !275
  %idxprom645.pn.in.3.3 = or disjoint i32 %idxprom645.pn.in.v, 3, !dbg !276
  %condval_5.sroa.0.0.in.3.3 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.3.3, !dbg !84
  %condval_5.sroa.0.0.3.3 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.3.3, align 2, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.42.6.extract.shift1623 = lshr i32 %579, 16, !dbg !268
  %v_exchange_half.sroa.42.6.extract.trunc1624 = trunc nuw i32 %v_exchange_half.sroa.42.6.extract.shift1623 to i16, !dbg !268
  %condval_6.sroa.0.0.3.3 = select i1 %cmp595, i16 %condval_4.sroa.0.0.3.3, i16 %v_exchange_half.sroa.42.6.extract.trunc1624, !dbg !268
  %v_exchange_half.sroa.122.14.extract.shift1773 = lshr i32 %587, 16, !dbg !269
  %v_exchange_half.sroa.122.14.extract.trunc1774 = trunc nuw i32 %v_exchange_half.sroa.122.14.extract.shift1773 to i16, !dbg !269
  %condval_7.sroa.0.0.3.3 = select i1 %cmp595, i16 %condval_5.sroa.0.0.3.3, i16 %v_exchange_half.sroa.122.14.extract.trunc1774, !dbg !269
  %v_exchange_half.sroa.42.6.extract.shift1626 = lshr i32 %579, 16, !dbg !270
  %v_exchange_half.sroa.42.6.extract.trunc1627 = trunc nuw i32 %v_exchange_half.sroa.42.6.extract.shift1626 to i16, !dbg !270
  %condval_8.sroa.0.0.3.3 = select i1 %cmp595, i16 %v_exchange_half.sroa.42.6.extract.trunc1627, i16 %condval_4.sroa.0.0.3.3, !dbg !270
  %v_exchange_half.sroa.122.14.extract.shift1776 = lshr i32 %587, 16, !dbg !271
  %v_exchange_half.sroa.122.14.extract.trunc1777 = trunc nuw i32 %v_exchange_half.sroa.122.14.extract.shift1776 to i16, !dbg !271
  %condval_9.sroa.0.0.3.3 = select i1 %cmp595, i16 %v_exchange_half.sroa.122.14.extract.trunc1777, i16 %condval_5.sroa.0.0.3.3, !dbg !271
  %add701.3.3 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.3.3 = or disjoint i32 %add701.3.3, 768, !dbg !272
  %591 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.3.3, !dbg !273
  %xor712.3.3 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.3.3 = xor i32 %xor712.3.3, 24, !dbg !273
  %add.ptr716.3.3 = getelementptr inbounds i8, ptr addrspace(3) %591, i32 %add.ptr716.idx.3.3, !dbg !273
  store i16 %condval_6.sroa.0.0.3.3, ptr addrspace(3) %add.ptr716.3.3, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.3.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3.3, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.3.3, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.3.3, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.3.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3.3, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.3.3, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.3.3, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.3.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3.3, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.3.3, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.3.3, align 2, !dbg !274, !tbaa !30
  fence syncscope("warp") release, !dbg !277
  tail call void @llvm.mxc.barrier.warp(), !dbg !280
  fence syncscope("warp") acquire, !dbg !281
  %add733.31436 = or disjoint i32 %mul726, %mul732, !dbg !282
  %592 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.31436, !dbg !283
  %add.ptr743.idx.31437 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.31438 = getelementptr inbounds i8, ptr addrspace(3) %592, i32 %add.ptr743.idx.31437, !dbg !283
  %593 = load <4 x half>, ptr addrspace(3) %add.ptr743.31438, align 8, !dbg !284
  %add728.1.3 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.1.3 = or disjoint i32 %add728.1.3, 64, !dbg !282
  %594 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.1.3, !dbg !283
  %xor739.1.3 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.1.3 = xor i32 %xor739.1.3, 8, !dbg !283
  %add.ptr743.1.3 = getelementptr inbounds i8, ptr addrspace(3) %594, i32 %add.ptr743.idx.1.3, !dbg !283
  %595 = load <4 x half>, ptr addrspace(3) %add.ptr743.1.3, align 8, !dbg !284
  %add728.2.3 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.2.3 = or disjoint i32 %add728.2.3, 128, !dbg !282
  %596 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.2.3, !dbg !283
  %xor739.2.3 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.2.3 = xor i32 %xor739.2.3, 16, !dbg !283
  %add.ptr743.2.3 = getelementptr inbounds i8, ptr addrspace(3) %596, i32 %add.ptr743.idx.2.3, !dbg !283
  %597 = load <4 x half>, ptr addrspace(3) %add.ptr743.2.3, align 8, !dbg !284
  %add728.3.3 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.3.3 = or disjoint i32 %add728.3.3, 192, !dbg !282
  %598 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.3.3, !dbg !283
  %xor739.3.3 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.3.3 = xor i32 %xor739.3.3, 24, !dbg !283
  %add.ptr743.3.3 = getelementptr inbounds i8, ptr addrspace(3) %598, i32 %add.ptr743.idx.3.3, !dbg !283
  %599 = load <4 x half>, ptr addrspace(3) %add.ptr743.3.3, align 8, !dbg !284
  %600 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %593, <4 x half> %567, <4 x float> %output_acc.sroa.0.2), !dbg !285
  %601 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %595, <4 x half> %567, <4 x float> %output_acc.sroa.34.2), !dbg !285
  %602 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %597, <4 x half> %567, <4 x float> %output_acc.sroa.66.2), !dbg !285
  %603 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %599, <4 x half> %567, <4 x float> %output_acc.sroa.98.2), !dbg !285
  br label %if.end770.3, !dbg !286

if.end770.3:                                      ; preds = %if.end576.1.3, %if.end770.2
  %bc2559 = phi <4 x half> [ %190, %if.end770.2 ], [ %567, %if.end576.1.3 ], !dbg !84
  %output_acc.sroa.98.3 = phi <4 x float> [ %output_acc.sroa.98.2, %if.end770.2 ], [ %603, %if.end576.1.3 ], !dbg !84
  %output_acc.sroa.66.3 = phi <4 x float> [ %output_acc.sroa.66.2, %if.end770.2 ], [ %602, %if.end576.1.3 ], !dbg !84
  %output_acc.sroa.34.3 = phi <4 x float> [ %output_acc.sroa.34.2, %if.end770.2 ], [ %601, %if.end576.1.3 ], !dbg !84
  %output_acc.sroa.0.3 = phi <4 x float> [ %output_acc.sroa.0.2, %if.end770.2 ], [ %600, %if.end576.1.3 ], !dbg !84
  %604 = load i32, ptr addrspace(1) %arrayidx130.4, align 4, !dbg !187, !tbaa !30
  %mul444.4 = shl nsw i32 %604, 4, !dbg !188
  %cmp445.4 = icmp slt i32 %604, 0, !dbg !189
  %cmp448.not.4 = icmp sgt i32 %mul444.4, %1
  %or.cond1181.4 = select i1 %cmp445.4, i1 true, i1 %cmp448.not.4, !dbg !190
  br i1 %or.cond1181.4, label %if.end770.4, label %if.then449.4, !dbg !190

if.then449.4:                                     ; preds = %if.end770.3
  fence syncscope("warp") release, !dbg !191
  tail call void @llvm.mxc.barrier.warp(), !dbg !194
  fence syncscope("warp") acquire, !dbg !195
  %cmp454.4 = icmp ult i32 %2, 16, !dbg !196
  br i1 %cmp454.4, label %if.then455.4, label %if.end464.4, !dbg !197

if.then455.4:                                     ; preds = %if.then449.4
  %sub460.4 = fsub contract float %max_cache.sroa.11.7, %global_max.sroa.0.1.7, !dbg !198
  %mul461.4 = fmul contract float %sub460.4, 0x3FC7154760000000, !dbg !199
  %cmp.i.i1120.4 = fcmp contract olt float %mul461.4, -1.260000e+02, !dbg !200
  %cond.i.i1121.4 = select contract i1 %cmp.i.i1120.4, float 6.400000e+01, float 0.000000e+00, !dbg !200
  %add.i.i1122.4 = fadd contract float %mul461.4, %cond.i.i1121.4, !dbg !200
  %605 = tail call contract float @llvm.exp2.f32(float %add.i.i1122.4), !dbg !200
  %cond2.i.i1123.4 = select contract i1 %cmp.i.i1120.4, float 0x3BF0000000000000, float 1.000000e+00, !dbg !200
  %mul.i.i1124.4 = fmul contract float %cond2.i.i1123.4, %605, !dbg !200
  %606 = bitcast float %mul.i.i1124.4 to i32, !dbg !203
  br label %if.end464.4, !dbg !202

if.end464.4:                                      ; preds = %if.then455.4, %if.then449.4
  %rescale.sroa.0.0.4 = phi i32 [ %606, %if.then455.4 ], [ 0, %if.then449.4 ], !dbg !84
  %607 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !206
  %608 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %607) #13, !dbg !210
  %and.i.i1125.4 = and i32 %608, 1073741760, !dbg !211
  %add.i.i1126.4 = or disjoint i32 %and.i.i1125.4, %and469, !dbg !212
  %shl.i.i1127.4 = shl nuw i32 %add.i.i1126.4, 2, !dbg !213
  %609 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1127.4, i32 %rescale.sroa.0.0.4), !dbg !214
  %610 = bitcast i32 %609 to float, !dbg !215
  %611 = extractelement <4 x half> %232, i64 0, !dbg !216
  %conv.i1128.4 = fpext half %611 to float, !dbg !216
  %612 = extractelement <4 x half> %232, i64 1, !dbg !219
  %conv6.i.4 = fpext half %612 to float, !dbg !219
  %613 = extractelement <4 x half> %232, i64 2, !dbg !220
  %conv.i1130.4 = fpext half %613 to float, !dbg !220
  %614 = extractelement <4 x half> %232, i64 3, !dbg !222
  %conv6.i1132.4 = fpext half %614 to float, !dbg !222
  %mul494.4 = fmul contract float %610, %conv.i1128.4, !dbg !223
  %mul498.4 = fmul contract float %610, %conv6.i.4, !dbg !224
  %mul502.4 = fmul contract float %610, %conv.i1130.4, !dbg !225
  %mul506.4 = fmul contract float %610, %conv6.i1132.4, !dbg !226
  %615 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !231
  %616 = fptrunc float %mul494.4 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %615), !dbg !227, !noalias !231
  %617 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !236, !noalias !231
  %618 = fptrunc float %mul498.4 to half, !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %617), !dbg !236, !noalias !231
  %619 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !238, !noalias !242
  %620 = fptrunc float %mul502.4 to half, !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %619), !dbg !238, !noalias !242
  %621 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !247, !noalias !242
  %622 = fptrunc float %mul506.4 to half, !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %621), !dbg !247, !noalias !242
  %623 = insertelement <4 x half> poison, half %616, i64 0, !dbg !249
  %624 = insertelement <4 x half> %623, half %618, i64 1, !dbg !249
  %625 = insertelement <4 x half> %624, half %620, i64 2, !dbg !249
  %626 = insertelement <4 x half> %625, half %622, i64 3, !dbg !249
  %shr529.4 = lshr exact i32 %mul444.4, 1
  %add530.4 = add nuw nsw i32 %shr529.4, %shr140
  %cmp531.4 = icmp ult i32 %add530.4, 512
  %conv541.4 = zext nneg i32 %mul444.4 to i64
  br i1 %cmp531.4, label %if.then532.4, label %if.end576.4, !dbg !250

if.then532.4:                                     ; preds = %if.end464.4
  %627 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1218.4 = shl nuw nsw i64 %conv541.4, 7, !dbg !251
  %628 = getelementptr inbounds i8, ptr addrspace(4) %627, i64 %.idx1218.4, !dbg !251
  %condval_2.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %628, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %628, i64 4, !dbg !252
  %condval_2.sroa.5.0.copyload.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.4, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %628, i64 8, !dbg !252
  %condval_2.sroa.6.0.copyload.4 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.4, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %628, i64 12, !dbg !252
  %condval_2.sroa.7.0.copyload.4 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.4, align 4, !dbg !252, !tbaa !30
  br label %if.end576.4, !dbg !253

if.end576.4:                                      ; preds = %if.then532.4, %if.end464.4
  %condval_2.sroa.5.0.4 = phi i32 [ %condval_2.sroa.5.0.copyload.4, %if.then532.4 ], [ 0, %if.end464.4 ], !dbg !84
  %condval_2.sroa.0.0.4 = phi i32 [ %condval_2.sroa.0.0.copyload.4, %if.then532.4 ], [ 0, %if.end464.4 ], !dbg !84
  %condval_2.sroa.6.0.4 = phi i32 [ %condval_2.sroa.6.0.copyload.4, %if.then532.4 ], [ 0, %if.end464.4 ], !dbg !84
  %condval_2.sroa.7.0.4 = phi i32 [ %condval_2.sroa.7.0.copyload.4, %if.then532.4 ], [ 0, %if.end464.4 ], !dbg !84
  store i32 %condval_2.sroa.0.0.4, ptr addrspace(5) %v_fetch_words, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 4, !dbg !254
  store i32 %condval_2.sroa.5.0.4, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.4, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 8, !dbg !254
  store i32 %condval_2.sroa.6.0.4, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.4, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 12, !dbg !254
  store i32 %condval_2.sroa.7.0.4, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.4, align 4, !dbg !254, !tbaa !30
  br i1 %cmp531.4, label %if.then532.1.4, label %if.end576.1.4, !dbg !250

if.then532.1.4:                                   ; preds = %if.end576.4
  %629 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1218.1.4 = shl nuw nsw i64 %conv541.4, 7, !dbg !251
  %630 = getelementptr inbounds i8, ptr addrspace(4) %629, i64 %.idx1218.1.4, !dbg !251
  %add.ptr552.1.4 = getelementptr inbounds i8, ptr addrspace(4) %630, i64 128, !dbg !251
  %condval_2.sroa.0.0.copyload.1.4 = load i32, ptr addrspace(4) %add.ptr552.1.4, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %630, i64 132, !dbg !252
  %condval_2.sroa.5.0.copyload.1.4 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.4, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %630, i64 136, !dbg !252
  %condval_2.sroa.6.0.copyload.1.4 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.4, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(4) %630, i64 140, !dbg !252
  %condval_2.sroa.7.0.copyload.1.4 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.4, align 4, !dbg !252, !tbaa !30
  br label %if.end576.1.4, !dbg !253

if.end576.1.4:                                    ; preds = %if.then532.1.4, %if.end576.4
  %condval_2.sroa.5.0.1.4 = phi i32 [ %condval_2.sroa.5.0.copyload.1.4, %if.then532.1.4 ], [ 0, %if.end576.4 ], !dbg !84
  %condval_2.sroa.0.0.1.4 = phi i32 [ %condval_2.sroa.0.0.copyload.1.4, %if.then532.1.4 ], [ 0, %if.end576.4 ], !dbg !84
  %condval_2.sroa.6.0.1.4 = phi i32 [ %condval_2.sroa.6.0.copyload.1.4, %if.then532.1.4 ], [ 0, %if.end576.4 ], !dbg !84
  %condval_2.sroa.7.0.1.4 = phi i32 [ %condval_2.sroa.7.0.copyload.1.4, %if.then532.1.4 ], [ 0, %if.end576.4 ], !dbg !84
  %add.ptr580.1.4 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 16, !dbg !255
  store i32 %condval_2.sroa.0.0.1.4, ptr addrspace(5) %add.ptr580.1.4, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 20, !dbg !254
  store i32 %condval_2.sroa.5.0.1.4, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.4, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 24, !dbg !254
  store i32 %condval_2.sroa.6.0.1.4, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.4, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 28, !dbg !254
  store i32 %condval_2.sroa.7.0.1.4, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.4, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.4.val = load i32, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.4, align 4, !dbg !84
  %v_fetch_words.val2512 = load i32, ptr addrspace(5) %v_fetch_words, align 4, !dbg !84
  %condval_3.0.4 = select i1 %cmp595, i32 %condval_2.sroa.6.0.add.ptr580.sroa_idx.4.val, i32 %v_fetch_words.val2512, !dbg !84
  %631 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %632 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %631) #13, !dbg !261
  %xor.i.i1145.4 = xor i32 %632, 8, !dbg !262
  %633 = and i32 %632, -64, !dbg !263
  %and.i.i1146.4 = add nsw i32 %633, 64, !dbg !263
  %cmp.not.i.i1147.4 = icmp slt i32 %xor.i.i1145.4, %and.i.i1146.4, !dbg !264
  %cond.i.i1148.4 = select i1 %cmp.not.i.i1147.4, i32 %xor.i.i1145.4, i32 %632, !dbg !265
  %shl.i.i1149.4 = shl i32 %cond.i.i1148.4, 2, !dbg !266
  %634 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.4, i32 %condval_3.0.4), !dbg !267
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.4.val = load i32, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.4, align 4, !dbg !84
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.4.val = load i32, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.4, align 4, !dbg !84
  %condval_3.0.1.4 = select i1 %cmp595, i32 %condval_2.sroa.7.0.add.ptr580.sroa_idx.4.val, i32 %condval_2.sroa.5.0.add.ptr580.sroa_idx.4.val, !dbg !84
  %635 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %636 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %635) #13, !dbg !261
  %xor.i.i1145.1.4 = xor i32 %636, 8, !dbg !262
  %637 = and i32 %636, -64, !dbg !263
  %and.i.i1146.1.4 = add nsw i32 %637, 64, !dbg !263
  %cmp.not.i.i1147.1.4 = icmp slt i32 %xor.i.i1145.1.4, %and.i.i1146.1.4, !dbg !264
  %cond.i.i1148.1.4 = select i1 %cmp.not.i.i1147.1.4, i32 %xor.i.i1145.1.4, i32 %636, !dbg !265
  %shl.i.i1149.1.4 = shl i32 %cond.i.i1148.1.4, 2, !dbg !266
  %638 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.1.4, i32 %condval_3.0.1.4), !dbg !267
  %.sroa.gep1880 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 24, !dbg !84
  %.sroa.gep1880.val = load i32, ptr addrspace(5) %.sroa.gep1880, align 4, !dbg !84
  %add.ptr580.1.4.val = load i32, ptr addrspace(5) %add.ptr580.1.4, align 4, !dbg !84
  %condval_3.0.11297.4 = select i1 %cmp595, i32 %.sroa.gep1880.val, i32 %add.ptr580.1.4.val, !dbg !84
  %639 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %640 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %639) #13, !dbg !261
  %xor.i.i1145.11298.4 = xor i32 %640, 8, !dbg !262
  %641 = and i32 %640, -64, !dbg !263
  %and.i.i1146.11299.4 = add nsw i32 %641, 64, !dbg !263
  %cmp.not.i.i1147.11300.4 = icmp slt i32 %xor.i.i1145.11298.4, %and.i.i1146.11299.4, !dbg !264
  %cond.i.i1148.11301.4 = select i1 %cmp.not.i.i1147.11300.4, i32 %xor.i.i1145.11298.4, i32 %640, !dbg !265
  %shl.i.i1149.11302.4 = shl i32 %cond.i.i1148.11301.4, 2, !dbg !266
  %642 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.11302.4, i32 %condval_3.0.11297.4), !dbg !267
  %idxprom600.pn.in.1.1.4.sroa.sel.v = xor i32 %364, 28, !dbg !84
  %idxprom600.pn.in.1.1.4.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom600.pn.in.1.1.4.sroa.sel.v, !dbg !84
  %condval_3.0.1.1.4 = load i32, ptr addrspace(5) %idxprom600.pn.in.1.1.4.sroa.sel, align 4, !dbg !84, !tbaa !30
  %643 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %644 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %643) #13, !dbg !261
  %xor.i.i1145.1.1.4 = xor i32 %644, 8, !dbg !262
  %645 = and i32 %644, -64, !dbg !263
  %and.i.i1146.1.1.4 = add nsw i32 %645, 64, !dbg !263
  %cmp.not.i.i1147.1.1.4 = icmp slt i32 %xor.i.i1145.1.1.4, %and.i.i1146.1.1.4, !dbg !264
  %cond.i.i1148.1.1.4 = select i1 %cmp.not.i.i1147.1.1.4, i32 %xor.i.i1145.1.1.4, i32 %644, !dbg !265
  %shl.i.i1149.1.1.4 = shl i32 %cond.i.i1148.1.1.4, 2, !dbg !266
  %646 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.1.1.4, i32 %condval_3.0.1.1.4), !dbg !267
  %v_fetch_words.val2513 = load i16, ptr addrspace(5) %v_fetch_words, align 4, !dbg !84
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.4.val2514 = load i16, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.4, align 4, !dbg !84
  %add.ptr580.1.4.val2515 = load i16, ptr addrspace(5) %add.ptr580.1.4, align 4, !dbg !84
  %.sroa.gep1880.val2516 = load i16, ptr addrspace(5) %.sroa.gep1880, align 4, !dbg !84
  %v_exchange_half.sroa.0.0.extract.trunc1517 = trunc i32 %634 to i16
  %spec.select2587 = select i1 %cmp595, i16 %v_fetch_words.val2513, i16 %v_exchange_half.sroa.0.0.extract.trunc1517, !dbg !268
  %v_exchange_half.sroa.82.8.extract.trunc1667 = trunc i32 %642 to i16, !dbg !269
  %condval_7.sroa.0.0.4 = select i1 %cmp595, i16 %add.ptr580.1.4.val2515, i16 %v_exchange_half.sroa.82.8.extract.trunc1667, !dbg !269
  %v_exchange_half.sroa.0.0.extract.trunc1519 = trunc i32 %634 to i16, !dbg !270
  %condval_8.sroa.0.0.4 = select i1 %cmp595, i16 %v_exchange_half.sroa.0.0.extract.trunc1519, i16 %condval_2.sroa.6.0.add.ptr580.sroa_idx.4.val2514, !dbg !270
  %v_exchange_half.sroa.82.8.extract.trunc1669 = trunc i32 %642 to i16, !dbg !271
  %condval_9.sroa.0.0.4 = select i1 %cmp595, i16 %v_exchange_half.sroa.82.8.extract.trunc1669, i16 %.sroa.gep1880.val2516, !dbg !271
  %add706.4 = or disjoint i32 %mul700, %mul705, !dbg !272
  %647 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.4, !dbg !273
  %add.ptr716.idx.4 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.4 = getelementptr inbounds i8, ptr addrspace(3) %647, i32 %add.ptr716.idx.4, !dbg !273
  store i16 %spec.select2587, ptr addrspace(3) %add.ptr716.4, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.4, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.4, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.4, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.4, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.4, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.4, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.4, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.4, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.4, align 2, !dbg !274, !tbaa !30
  %idxprom630.pn.in.1.4.sroa.sel.v = or disjoint i32 %364, 2, !dbg !84
  %idxprom630.pn.in.1.4.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom630.pn.in.1.4.sroa.sel.v, !dbg !84
  %condval_4.sroa.0.0.1.4 = load i16, ptr addrspace(5) %idxprom630.pn.in.1.4.sroa.sel, align 2, !dbg !84, !tbaa !275
  %idxprom645.pn.in.1.4 = or disjoint i32 %idxprom645.pn.in.v, 1, !dbg !276
  %condval_5.sroa.0.0.in.1.4 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.1.4, !dbg !84
  %condval_5.sroa.0.0.1.4 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.1.4, align 2, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.0.2.extract.shift1554 = lshr i32 %634, 16, !dbg !268
  %v_exchange_half.sroa.0.2.extract.trunc1555 = trunc nuw i32 %v_exchange_half.sroa.0.2.extract.shift1554 to i16, !dbg !268
  %condval_6.sroa.0.0.1.4 = select i1 %cmp595, i16 %condval_4.sroa.0.0.1.4, i16 %v_exchange_half.sroa.0.2.extract.trunc1555, !dbg !268
  %v_exchange_half.sroa.82.10.extract.shift1704 = lshr i32 %642, 16, !dbg !269
  %v_exchange_half.sroa.82.10.extract.trunc1705 = trunc nuw i32 %v_exchange_half.sroa.82.10.extract.shift1704 to i16, !dbg !269
  %condval_7.sroa.0.0.1.4 = select i1 %cmp595, i16 %condval_5.sroa.0.0.1.4, i16 %v_exchange_half.sroa.82.10.extract.trunc1705, !dbg !269
  %v_exchange_half.sroa.0.2.extract.shift1557 = lshr i32 %634, 16, !dbg !270
  %v_exchange_half.sroa.0.2.extract.trunc1558 = trunc nuw i32 %v_exchange_half.sroa.0.2.extract.shift1557 to i16, !dbg !270
  %condval_8.sroa.0.0.1.4 = select i1 %cmp595, i16 %v_exchange_half.sroa.0.2.extract.trunc1558, i16 %condval_4.sroa.0.0.1.4, !dbg !270
  %v_exchange_half.sroa.82.10.extract.shift1707 = lshr i32 %642, 16, !dbg !271
  %v_exchange_half.sroa.82.10.extract.trunc1708 = trunc nuw i32 %v_exchange_half.sroa.82.10.extract.shift1707 to i16, !dbg !271
  %condval_9.sroa.0.0.1.4 = select i1 %cmp595, i16 %v_exchange_half.sroa.82.10.extract.trunc1708, i16 %condval_5.sroa.0.0.1.4, !dbg !271
  %add701.1.4 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.1.4 = or disjoint i32 %add701.1.4, 256, !dbg !272
  %648 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.1.4, !dbg !273
  %xor712.1.4 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.1.4 = xor i32 %xor712.1.4, 8, !dbg !273
  %add.ptr716.1.4 = getelementptr inbounds i8, ptr addrspace(3) %648, i32 %add.ptr716.idx.1.4, !dbg !273
  store i16 %condval_6.sroa.0.0.1.4, ptr addrspace(3) %add.ptr716.1.4, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1.4, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.1.4, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.1.4, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1.4, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.1.4, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.1.4, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.1.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1.4, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.1.4, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.1.4, align 2, !dbg !274, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.4.val2599 = load i16, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.4, align 4, !dbg !84
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.4.val2600 = load i16, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.4, align 4, !dbg !84
  %idxprom645.pn.in.2.4 = or disjoint i32 %idxprom645.pn.in.v, 2, !dbg !276
  %condval_5.sroa.0.0.in.2.4 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.2.4, !dbg !84
  %condval_5.sroa.0.0.2.4 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.2.4, align 4, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.42.4.extract.trunc1592 = trunc i32 %638 to i16, !dbg !268
  %condval_6.sroa.0.0.2.4 = select i1 %cmp595, i16 %condval_2.sroa.5.0.add.ptr580.sroa_idx.4.val2599, i16 %v_exchange_half.sroa.42.4.extract.trunc1592, !dbg !268
  %v_exchange_half.sroa.122.12.extract.trunc1742 = trunc i32 %646 to i16, !dbg !269
  %condval_7.sroa.0.0.2.4 = select i1 %cmp595, i16 %condval_5.sroa.0.0.2.4, i16 %v_exchange_half.sroa.122.12.extract.trunc1742, !dbg !269
  %v_exchange_half.sroa.42.4.extract.trunc1594 = trunc i32 %638 to i16, !dbg !270
  %condval_8.sroa.0.0.2.4 = select i1 %cmp595, i16 %v_exchange_half.sroa.42.4.extract.trunc1594, i16 %condval_2.sroa.7.0.add.ptr580.sroa_idx.4.val2600, !dbg !270
  %v_exchange_half.sroa.122.12.extract.trunc1744 = trunc i32 %646 to i16, !dbg !271
  %condval_9.sroa.0.0.2.4 = select i1 %cmp595, i16 %v_exchange_half.sroa.122.12.extract.trunc1744, i16 %condval_5.sroa.0.0.2.4, !dbg !271
  %add701.2.4 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.2.4 = or disjoint i32 %add701.2.4, 512, !dbg !272
  %649 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.2.4, !dbg !273
  %xor712.2.4 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.2.4 = xor i32 %xor712.2.4, 16, !dbg !273
  %add.ptr716.2.4 = getelementptr inbounds i8, ptr addrspace(3) %649, i32 %add.ptr716.idx.2.4, !dbg !273
  store i16 %condval_6.sroa.0.0.2.4, ptr addrspace(3) %add.ptr716.2.4, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.2.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2.4, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.2.4, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.2.4, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.2.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2.4, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.2.4, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.2.4, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.2.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2.4, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.2.4, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.2.4, align 2, !dbg !274, !tbaa !30
  %idxprom630.pn.in.3.4.sroa.sel.v = or disjoint i32 %364, 6, !dbg !84
  %idxprom630.pn.in.3.4.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom630.pn.in.3.4.sroa.sel.v, !dbg !84
  %condval_4.sroa.0.0.3.4 = load i16, ptr addrspace(5) %idxprom630.pn.in.3.4.sroa.sel, align 2, !dbg !84, !tbaa !275
  %idxprom645.pn.in.3.4 = or disjoint i32 %idxprom645.pn.in.v, 3, !dbg !276
  %condval_5.sroa.0.0.in.3.4 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.3.4, !dbg !84
  %condval_5.sroa.0.0.3.4 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.3.4, align 2, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.42.6.extract.shift1629 = lshr i32 %638, 16, !dbg !268
  %v_exchange_half.sroa.42.6.extract.trunc1630 = trunc nuw i32 %v_exchange_half.sroa.42.6.extract.shift1629 to i16, !dbg !268
  %condval_6.sroa.0.0.3.4 = select i1 %cmp595, i16 %condval_4.sroa.0.0.3.4, i16 %v_exchange_half.sroa.42.6.extract.trunc1630, !dbg !268
  %v_exchange_half.sroa.122.14.extract.shift1779 = lshr i32 %646, 16, !dbg !269
  %v_exchange_half.sroa.122.14.extract.trunc1780 = trunc nuw i32 %v_exchange_half.sroa.122.14.extract.shift1779 to i16, !dbg !269
  %condval_7.sroa.0.0.3.4 = select i1 %cmp595, i16 %condval_5.sroa.0.0.3.4, i16 %v_exchange_half.sroa.122.14.extract.trunc1780, !dbg !269
  %v_exchange_half.sroa.42.6.extract.shift1632 = lshr i32 %638, 16, !dbg !270
  %v_exchange_half.sroa.42.6.extract.trunc1633 = trunc nuw i32 %v_exchange_half.sroa.42.6.extract.shift1632 to i16, !dbg !270
  %condval_8.sroa.0.0.3.4 = select i1 %cmp595, i16 %v_exchange_half.sroa.42.6.extract.trunc1633, i16 %condval_4.sroa.0.0.3.4, !dbg !270
  %v_exchange_half.sroa.122.14.extract.shift1782 = lshr i32 %646, 16, !dbg !271
  %v_exchange_half.sroa.122.14.extract.trunc1783 = trunc nuw i32 %v_exchange_half.sroa.122.14.extract.shift1782 to i16, !dbg !271
  %condval_9.sroa.0.0.3.4 = select i1 %cmp595, i16 %v_exchange_half.sroa.122.14.extract.trunc1783, i16 %condval_5.sroa.0.0.3.4, !dbg !271
  %add701.3.4 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.3.4 = or disjoint i32 %add701.3.4, 768, !dbg !272
  %650 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.3.4, !dbg !273
  %xor712.3.4 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.3.4 = xor i32 %xor712.3.4, 24, !dbg !273
  %add.ptr716.3.4 = getelementptr inbounds i8, ptr addrspace(3) %650, i32 %add.ptr716.idx.3.4, !dbg !273
  store i16 %condval_6.sroa.0.0.3.4, ptr addrspace(3) %add.ptr716.3.4, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.3.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3.4, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.3.4, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.3.4, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.3.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3.4, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.3.4, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.3.4, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.3.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3.4, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.3.4, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.3.4, align 2, !dbg !274, !tbaa !30
  fence syncscope("warp") release, !dbg !277
  tail call void @llvm.mxc.barrier.warp(), !dbg !280
  fence syncscope("warp") acquire, !dbg !281
  %add733.4 = or disjoint i32 %mul726, %mul732, !dbg !282
  %651 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.4, !dbg !283
  %add.ptr743.idx.4 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.4 = getelementptr inbounds i8, ptr addrspace(3) %651, i32 %add.ptr743.idx.4, !dbg !283
  %652 = load <4 x half>, ptr addrspace(3) %add.ptr743.4, align 8, !dbg !284
  %add728.1.4 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.1.4 = or disjoint i32 %add728.1.4, 64, !dbg !282
  %653 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.1.4, !dbg !283
  %xor739.1.4 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.1.4 = xor i32 %xor739.1.4, 8, !dbg !283
  %add.ptr743.1.4 = getelementptr inbounds i8, ptr addrspace(3) %653, i32 %add.ptr743.idx.1.4, !dbg !283
  %654 = load <4 x half>, ptr addrspace(3) %add.ptr743.1.4, align 8, !dbg !284
  %add728.2.4 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.2.4 = or disjoint i32 %add728.2.4, 128, !dbg !282
  %655 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.2.4, !dbg !283
  %xor739.2.4 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.2.4 = xor i32 %xor739.2.4, 16, !dbg !283
  %add.ptr743.2.4 = getelementptr inbounds i8, ptr addrspace(3) %655, i32 %add.ptr743.idx.2.4, !dbg !283
  %656 = load <4 x half>, ptr addrspace(3) %add.ptr743.2.4, align 8, !dbg !284
  %add728.3.4 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.3.4 = or disjoint i32 %add728.3.4, 192, !dbg !282
  %657 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.3.4, !dbg !283
  %xor739.3.4 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.3.4 = xor i32 %xor739.3.4, 24, !dbg !283
  %add.ptr743.3.4 = getelementptr inbounds i8, ptr addrspace(3) %657, i32 %add.ptr743.idx.3.4, !dbg !283
  %658 = load <4 x half>, ptr addrspace(3) %add.ptr743.3.4, align 8, !dbg !284
  %659 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %652, <4 x half> %626, <4 x float> %output_acc.sroa.0.3), !dbg !285
  %660 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %654, <4 x half> %626, <4 x float> %output_acc.sroa.34.3), !dbg !285
  %661 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %656, <4 x half> %626, <4 x float> %output_acc.sroa.66.3), !dbg !285
  %662 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %658, <4 x half> %626, <4 x float> %output_acc.sroa.98.3), !dbg !285
  br label %if.end770.4, !dbg !286

if.end770.4:                                      ; preds = %if.end576.1.4, %if.end770.3
  %bc2563 = phi <4 x half> [ %232, %if.end770.3 ], [ %626, %if.end576.1.4 ], !dbg !84
  %output_acc.sroa.98.4 = phi <4 x float> [ %output_acc.sroa.98.3, %if.end770.3 ], [ %662, %if.end576.1.4 ], !dbg !84
  %output_acc.sroa.66.4 = phi <4 x float> [ %output_acc.sroa.66.3, %if.end770.3 ], [ %661, %if.end576.1.4 ], !dbg !84
  %output_acc.sroa.34.4 = phi <4 x float> [ %output_acc.sroa.34.3, %if.end770.3 ], [ %660, %if.end576.1.4 ], !dbg !84
  %output_acc.sroa.0.4 = phi <4 x float> [ %output_acc.sroa.0.3, %if.end770.3 ], [ %659, %if.end576.1.4 ], !dbg !84
  %663 = load i32, ptr addrspace(1) %arrayidx130.5, align 4, !dbg !187, !tbaa !30
  %mul444.5 = shl nsw i32 %663, 4, !dbg !188
  %cmp445.5 = icmp slt i32 %663, 0, !dbg !189
  %cmp448.not.5 = icmp sgt i32 %mul444.5, %1
  %or.cond1181.5 = select i1 %cmp445.5, i1 true, i1 %cmp448.not.5, !dbg !190
  br i1 %or.cond1181.5, label %if.end770.5, label %if.then449.5, !dbg !190

if.then449.5:                                     ; preds = %if.end770.4
  fence syncscope("warp") release, !dbg !191
  tail call void @llvm.mxc.barrier.warp(), !dbg !194
  fence syncscope("warp") acquire, !dbg !195
  %cmp454.5 = icmp eq i32 %shr324, 1, !dbg !196
  br i1 %cmp454.5, label %if.then455.5, label %if.end464.5, !dbg !197

if.then455.5:                                     ; preds = %if.then449.5
  %sub460.5 = fsub contract float %max_cache.sroa.11.7, %global_max.sroa.0.1.7, !dbg !198
  %mul461.5 = fmul contract float %sub460.5, 0x3FC7154760000000, !dbg !199
  %cmp.i.i1120.5 = fcmp contract olt float %mul461.5, -1.260000e+02, !dbg !200
  %cond.i.i1121.5 = select contract i1 %cmp.i.i1120.5, float 6.400000e+01, float 0.000000e+00, !dbg !200
  %add.i.i1122.5 = fadd contract float %mul461.5, %cond.i.i1121.5, !dbg !200
  %664 = tail call contract float @llvm.exp2.f32(float %add.i.i1122.5), !dbg !200
  %cond2.i.i1123.5 = select contract i1 %cmp.i.i1120.5, float 0x3BF0000000000000, float 1.000000e+00, !dbg !200
  %mul.i.i1124.5 = fmul contract float %cond2.i.i1123.5, %664, !dbg !200
  %665 = bitcast float %mul.i.i1124.5 to i32, !dbg !203
  br label %if.end464.5, !dbg !202

if.end464.5:                                      ; preds = %if.then455.5, %if.then449.5
  %rescale.sroa.0.0.5 = phi i32 [ %665, %if.then455.5 ], [ 0, %if.then449.5 ], !dbg !84
  %666 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !206
  %667 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %666) #13, !dbg !210
  %rem.i.i.5 = or disjoint i32 %and469, 16, !dbg !287
  %and.i.i1125.5 = and i32 %667, 1073741760, !dbg !211
  %add.i.i1126.5 = or disjoint i32 %and.i.i1125.5, %rem.i.i.5, !dbg !212
  %shl.i.i1127.5 = shl nuw i32 %add.i.i1126.5, 2, !dbg !213
  %668 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1127.5, i32 %rescale.sroa.0.0.5), !dbg !214
  %669 = bitcast i32 %668 to float, !dbg !215
  %670 = extractelement <4 x half> %274, i64 0, !dbg !216
  %conv.i1128.5 = fpext half %670 to float, !dbg !216
  %671 = extractelement <4 x half> %274, i64 1, !dbg !219
  %conv6.i.5 = fpext half %671 to float, !dbg !219
  %672 = extractelement <4 x half> %274, i64 2, !dbg !220
  %conv.i1130.5 = fpext half %672 to float, !dbg !220
  %673 = extractelement <4 x half> %274, i64 3, !dbg !222
  %conv6.i1132.5 = fpext half %673 to float, !dbg !222
  %mul494.5 = fmul contract float %669, %conv.i1128.5, !dbg !223
  %mul498.5 = fmul contract float %669, %conv6.i.5, !dbg !224
  %mul502.5 = fmul contract float %669, %conv.i1130.5, !dbg !225
  %mul506.5 = fmul contract float %669, %conv6.i1132.5, !dbg !226
  %674 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !231
  %675 = fptrunc float %mul494.5 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %674), !dbg !227, !noalias !231
  %676 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !236, !noalias !231
  %677 = fptrunc float %mul498.5 to half, !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %676), !dbg !236, !noalias !231
  %678 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !238, !noalias !242
  %679 = fptrunc float %mul502.5 to half, !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %678), !dbg !238, !noalias !242
  %680 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !247, !noalias !242
  %681 = fptrunc float %mul506.5 to half, !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %680), !dbg !247, !noalias !242
  %682 = insertelement <4 x half> poison, half %675, i64 0, !dbg !249
  %683 = insertelement <4 x half> %682, half %677, i64 1, !dbg !249
  %684 = insertelement <4 x half> %683, half %679, i64 2, !dbg !249
  %685 = insertelement <4 x half> %684, half %681, i64 3, !dbg !249
  %shr529.5 = lshr exact i32 %mul444.5, 1
  %add530.5 = add nuw nsw i32 %shr529.5, %shr140
  %cmp531.5 = icmp ult i32 %add530.5, 512
  %conv541.5 = zext nneg i32 %mul444.5 to i64
  br i1 %cmp531.5, label %if.then532.5, label %if.end576.5, !dbg !250

if.then532.5:                                     ; preds = %if.end464.5
  %686 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1218.5 = shl nuw nsw i64 %conv541.5, 7, !dbg !251
  %687 = getelementptr inbounds i8, ptr addrspace(4) %686, i64 %.idx1218.5, !dbg !251
  %condval_2.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %687, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %687, i64 4, !dbg !252
  %condval_2.sroa.5.0.copyload.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.5, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %687, i64 8, !dbg !252
  %condval_2.sroa.6.0.copyload.5 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.5, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %687, i64 12, !dbg !252
  %condval_2.sroa.7.0.copyload.5 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.5, align 4, !dbg !252, !tbaa !30
  br label %if.end576.5, !dbg !253

if.end576.5:                                      ; preds = %if.then532.5, %if.end464.5
  %condval_2.sroa.5.0.5 = phi i32 [ %condval_2.sroa.5.0.copyload.5, %if.then532.5 ], [ 0, %if.end464.5 ], !dbg !84
  %condval_2.sroa.0.0.5 = phi i32 [ %condval_2.sroa.0.0.copyload.5, %if.then532.5 ], [ 0, %if.end464.5 ], !dbg !84
  %condval_2.sroa.6.0.5 = phi i32 [ %condval_2.sroa.6.0.copyload.5, %if.then532.5 ], [ 0, %if.end464.5 ], !dbg !84
  %condval_2.sroa.7.0.5 = phi i32 [ %condval_2.sroa.7.0.copyload.5, %if.then532.5 ], [ 0, %if.end464.5 ], !dbg !84
  store i32 %condval_2.sroa.0.0.5, ptr addrspace(5) %v_fetch_words, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 4, !dbg !254
  store i32 %condval_2.sroa.5.0.5, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.5, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 8, !dbg !254
  store i32 %condval_2.sroa.6.0.5, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.5, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 12, !dbg !254
  store i32 %condval_2.sroa.7.0.5, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.5, align 4, !dbg !254, !tbaa !30
  br i1 %cmp531.5, label %if.then532.1.5, label %if.end576.1.5, !dbg !250

if.then532.1.5:                                   ; preds = %if.end576.5
  %688 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1218.1.5 = shl nuw nsw i64 %conv541.5, 7, !dbg !251
  %689 = getelementptr inbounds i8, ptr addrspace(4) %688, i64 %.idx1218.1.5, !dbg !251
  %add.ptr552.1.5 = getelementptr inbounds i8, ptr addrspace(4) %689, i64 128, !dbg !251
  %condval_2.sroa.0.0.copyload.1.5 = load i32, ptr addrspace(4) %add.ptr552.1.5, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %689, i64 132, !dbg !252
  %condval_2.sroa.5.0.copyload.1.5 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.5, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %689, i64 136, !dbg !252
  %condval_2.sroa.6.0.copyload.1.5 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.5, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(4) %689, i64 140, !dbg !252
  %condval_2.sroa.7.0.copyload.1.5 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.5, align 4, !dbg !252, !tbaa !30
  br label %if.end576.1.5, !dbg !253

if.end576.1.5:                                    ; preds = %if.then532.1.5, %if.end576.5
  %condval_2.sroa.5.0.1.5 = phi i32 [ %condval_2.sroa.5.0.copyload.1.5, %if.then532.1.5 ], [ 0, %if.end576.5 ], !dbg !84
  %condval_2.sroa.0.0.1.5 = phi i32 [ %condval_2.sroa.0.0.copyload.1.5, %if.then532.1.5 ], [ 0, %if.end576.5 ], !dbg !84
  %condval_2.sroa.6.0.1.5 = phi i32 [ %condval_2.sroa.6.0.copyload.1.5, %if.then532.1.5 ], [ 0, %if.end576.5 ], !dbg !84
  %condval_2.sroa.7.0.1.5 = phi i32 [ %condval_2.sroa.7.0.copyload.1.5, %if.then532.1.5 ], [ 0, %if.end576.5 ], !dbg !84
  %add.ptr580.1.5 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 16, !dbg !255
  store i32 %condval_2.sroa.0.0.1.5, ptr addrspace(5) %add.ptr580.1.5, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 20, !dbg !254
  store i32 %condval_2.sroa.5.0.1.5, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.5, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 24, !dbg !254
  store i32 %condval_2.sroa.6.0.1.5, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.5, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 28, !dbg !254
  store i32 %condval_2.sroa.7.0.1.5, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.5, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.5.val = load i32, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.5, align 4, !dbg !84
  %v_fetch_words.val2521 = load i32, ptr addrspace(5) %v_fetch_words, align 4, !dbg !84
  %condval_3.0.5 = select i1 %cmp595, i32 %condval_2.sroa.6.0.add.ptr580.sroa_idx.5.val, i32 %v_fetch_words.val2521, !dbg !84
  %690 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %691 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %690) #13, !dbg !261
  %xor.i.i1145.5 = xor i32 %691, 8, !dbg !262
  %692 = and i32 %691, -64, !dbg !263
  %and.i.i1146.5 = add nsw i32 %692, 64, !dbg !263
  %cmp.not.i.i1147.5 = icmp slt i32 %xor.i.i1145.5, %and.i.i1146.5, !dbg !264
  %cond.i.i1148.5 = select i1 %cmp.not.i.i1147.5, i32 %xor.i.i1145.5, i32 %691, !dbg !265
  %shl.i.i1149.5 = shl i32 %cond.i.i1148.5, 2, !dbg !266
  %693 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.5, i32 %condval_3.0.5), !dbg !267
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.5.val = load i32, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.5, align 4, !dbg !84
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.5.val = load i32, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.5, align 4, !dbg !84
  %condval_3.0.1.5 = select i1 %cmp595, i32 %condval_2.sroa.7.0.add.ptr580.sroa_idx.5.val, i32 %condval_2.sroa.5.0.add.ptr580.sroa_idx.5.val, !dbg !84
  %694 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %695 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %694) #13, !dbg !261
  %xor.i.i1145.1.5 = xor i32 %695, 8, !dbg !262
  %696 = and i32 %695, -64, !dbg !263
  %and.i.i1146.1.5 = add nsw i32 %696, 64, !dbg !263
  %cmp.not.i.i1147.1.5 = icmp slt i32 %xor.i.i1145.1.5, %and.i.i1146.1.5, !dbg !264
  %cond.i.i1148.1.5 = select i1 %cmp.not.i.i1147.1.5, i32 %xor.i.i1145.1.5, i32 %695, !dbg !265
  %shl.i.i1149.1.5 = shl i32 %cond.i.i1148.1.5, 2, !dbg !266
  %697 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.1.5, i32 %condval_3.0.1.5), !dbg !267
  %.sroa.gep1899 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 24, !dbg !84
  %.sroa.gep1899.val = load i32, ptr addrspace(5) %.sroa.gep1899, align 4, !dbg !84
  %add.ptr580.1.5.val = load i32, ptr addrspace(5) %add.ptr580.1.5, align 4, !dbg !84
  %condval_3.0.11297.5 = select i1 %cmp595, i32 %.sroa.gep1899.val, i32 %add.ptr580.1.5.val, !dbg !84
  %698 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %699 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %698) #13, !dbg !261
  %xor.i.i1145.11298.5 = xor i32 %699, 8, !dbg !262
  %700 = and i32 %699, -64, !dbg !263
  %and.i.i1146.11299.5 = add nsw i32 %700, 64, !dbg !263
  %cmp.not.i.i1147.11300.5 = icmp slt i32 %xor.i.i1145.11298.5, %and.i.i1146.11299.5, !dbg !264
  %cond.i.i1148.11301.5 = select i1 %cmp.not.i.i1147.11300.5, i32 %xor.i.i1145.11298.5, i32 %699, !dbg !265
  %shl.i.i1149.11302.5 = shl i32 %cond.i.i1148.11301.5, 2, !dbg !266
  %701 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.11302.5, i32 %condval_3.0.11297.5), !dbg !267
  %idxprom600.pn.in.1.1.5.sroa.sel.v = xor i32 %364, 28, !dbg !84
  %idxprom600.pn.in.1.1.5.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom600.pn.in.1.1.5.sroa.sel.v, !dbg !84
  %condval_3.0.1.1.5 = load i32, ptr addrspace(5) %idxprom600.pn.in.1.1.5.sroa.sel, align 4, !dbg !84, !tbaa !30
  %702 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %703 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %702) #13, !dbg !261
  %xor.i.i1145.1.1.5 = xor i32 %703, 8, !dbg !262
  %704 = and i32 %703, -64, !dbg !263
  %and.i.i1146.1.1.5 = add nsw i32 %704, 64, !dbg !263
  %cmp.not.i.i1147.1.1.5 = icmp slt i32 %xor.i.i1145.1.1.5, %and.i.i1146.1.1.5, !dbg !264
  %cond.i.i1148.1.1.5 = select i1 %cmp.not.i.i1147.1.1.5, i32 %xor.i.i1145.1.1.5, i32 %703, !dbg !265
  %shl.i.i1149.1.1.5 = shl i32 %cond.i.i1148.1.1.5, 2, !dbg !266
  %705 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.1.1.5, i32 %condval_3.0.1.1.5), !dbg !267
  %v_fetch_words.val2522 = load i16, ptr addrspace(5) %v_fetch_words, align 4, !dbg !84
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.5.val2523 = load i16, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.5, align 4, !dbg !84
  %add.ptr580.1.5.val2524 = load i16, ptr addrspace(5) %add.ptr580.1.5, align 4, !dbg !84
  %.sroa.gep1899.val2525 = load i16, ptr addrspace(5) %.sroa.gep1899, align 4, !dbg !84
  %v_exchange_half.sroa.0.0.extract.trunc1521 = trunc i32 %693 to i16
  %spec.select2588 = select i1 %cmp595, i16 %v_fetch_words.val2522, i16 %v_exchange_half.sroa.0.0.extract.trunc1521, !dbg !268
  %v_exchange_half.sroa.82.8.extract.trunc1671 = trunc i32 %701 to i16, !dbg !269
  %condval_7.sroa.0.0.5 = select i1 %cmp595, i16 %add.ptr580.1.5.val2524, i16 %v_exchange_half.sroa.82.8.extract.trunc1671, !dbg !269
  %v_exchange_half.sroa.0.0.extract.trunc1523 = trunc i32 %693 to i16, !dbg !270
  %condval_8.sroa.0.0.5 = select i1 %cmp595, i16 %v_exchange_half.sroa.0.0.extract.trunc1523, i16 %condval_2.sroa.6.0.add.ptr580.sroa_idx.5.val2523, !dbg !270
  %v_exchange_half.sroa.82.8.extract.trunc1673 = trunc i32 %701 to i16, !dbg !271
  %condval_9.sroa.0.0.5 = select i1 %cmp595, i16 %v_exchange_half.sroa.82.8.extract.trunc1673, i16 %.sroa.gep1899.val2525, !dbg !271
  %add706.5 = or disjoint i32 %mul700, %mul705, !dbg !272
  %706 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.5, !dbg !273
  %add.ptr716.idx.5 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.5 = getelementptr inbounds i8, ptr addrspace(3) %706, i32 %add.ptr716.idx.5, !dbg !273
  store i16 %spec.select2588, ptr addrspace(3) %add.ptr716.5, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.5, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.5, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.5, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.5, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.5, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.5, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.5, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.5, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.5, align 2, !dbg !274, !tbaa !30
  %idxprom630.pn.in.1.5.sroa.sel.v = or disjoint i32 %364, 2, !dbg !84
  %idxprom630.pn.in.1.5.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom630.pn.in.1.5.sroa.sel.v, !dbg !84
  %condval_4.sroa.0.0.1.5 = load i16, ptr addrspace(5) %idxprom630.pn.in.1.5.sroa.sel, align 2, !dbg !84, !tbaa !275
  %idxprom645.pn.in.1.5 = or disjoint i32 %idxprom645.pn.in.v, 1, !dbg !276
  %condval_5.sroa.0.0.in.1.5 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.1.5, !dbg !84
  %condval_5.sroa.0.0.1.5 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.1.5, align 2, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.0.2.extract.shift1560 = lshr i32 %693, 16, !dbg !268
  %v_exchange_half.sroa.0.2.extract.trunc1561 = trunc nuw i32 %v_exchange_half.sroa.0.2.extract.shift1560 to i16, !dbg !268
  %condval_6.sroa.0.0.1.5 = select i1 %cmp595, i16 %condval_4.sroa.0.0.1.5, i16 %v_exchange_half.sroa.0.2.extract.trunc1561, !dbg !268
  %v_exchange_half.sroa.82.10.extract.shift1710 = lshr i32 %701, 16, !dbg !269
  %v_exchange_half.sroa.82.10.extract.trunc1711 = trunc nuw i32 %v_exchange_half.sroa.82.10.extract.shift1710 to i16, !dbg !269
  %condval_7.sroa.0.0.1.5 = select i1 %cmp595, i16 %condval_5.sroa.0.0.1.5, i16 %v_exchange_half.sroa.82.10.extract.trunc1711, !dbg !269
  %v_exchange_half.sroa.0.2.extract.shift1563 = lshr i32 %693, 16, !dbg !270
  %v_exchange_half.sroa.0.2.extract.trunc1564 = trunc nuw i32 %v_exchange_half.sroa.0.2.extract.shift1563 to i16, !dbg !270
  %condval_8.sroa.0.0.1.5 = select i1 %cmp595, i16 %v_exchange_half.sroa.0.2.extract.trunc1564, i16 %condval_4.sroa.0.0.1.5, !dbg !270
  %v_exchange_half.sroa.82.10.extract.shift1713 = lshr i32 %701, 16, !dbg !271
  %v_exchange_half.sroa.82.10.extract.trunc1714 = trunc nuw i32 %v_exchange_half.sroa.82.10.extract.shift1713 to i16, !dbg !271
  %condval_9.sroa.0.0.1.5 = select i1 %cmp595, i16 %v_exchange_half.sroa.82.10.extract.trunc1714, i16 %condval_5.sroa.0.0.1.5, !dbg !271
  %add701.1.5 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.1.5 = or disjoint i32 %add701.1.5, 256, !dbg !272
  %707 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.1.5, !dbg !273
  %xor712.1.5 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.1.5 = xor i32 %xor712.1.5, 8, !dbg !273
  %add.ptr716.1.5 = getelementptr inbounds i8, ptr addrspace(3) %707, i32 %add.ptr716.idx.1.5, !dbg !273
  store i16 %condval_6.sroa.0.0.1.5, ptr addrspace(3) %add.ptr716.1.5, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1.5, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.1.5, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.1.5, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1.5, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.1.5, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.1.5, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.1.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1.5, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.1.5, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.1.5, align 2, !dbg !274, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.5.val2601 = load i16, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.5, align 4, !dbg !84
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.5.val2602 = load i16, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.5, align 4, !dbg !84
  %idxprom645.pn.in.2.5 = or disjoint i32 %idxprom645.pn.in.v, 2, !dbg !276
  %condval_5.sroa.0.0.in.2.5 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.2.5, !dbg !84
  %condval_5.sroa.0.0.2.5 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.2.5, align 4, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.42.4.extract.trunc1596 = trunc i32 %697 to i16, !dbg !268
  %condval_6.sroa.0.0.2.5 = select i1 %cmp595, i16 %condval_2.sroa.5.0.add.ptr580.sroa_idx.5.val2601, i16 %v_exchange_half.sroa.42.4.extract.trunc1596, !dbg !268
  %v_exchange_half.sroa.122.12.extract.trunc1746 = trunc i32 %705 to i16, !dbg !269
  %condval_7.sroa.0.0.2.5 = select i1 %cmp595, i16 %condval_5.sroa.0.0.2.5, i16 %v_exchange_half.sroa.122.12.extract.trunc1746, !dbg !269
  %v_exchange_half.sroa.42.4.extract.trunc1598 = trunc i32 %697 to i16, !dbg !270
  %condval_8.sroa.0.0.2.5 = select i1 %cmp595, i16 %v_exchange_half.sroa.42.4.extract.trunc1598, i16 %condval_2.sroa.7.0.add.ptr580.sroa_idx.5.val2602, !dbg !270
  %v_exchange_half.sroa.122.12.extract.trunc1748 = trunc i32 %705 to i16, !dbg !271
  %condval_9.sroa.0.0.2.5 = select i1 %cmp595, i16 %v_exchange_half.sroa.122.12.extract.trunc1748, i16 %condval_5.sroa.0.0.2.5, !dbg !271
  %add701.2.5 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.2.5 = or disjoint i32 %add701.2.5, 512, !dbg !272
  %708 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.2.5, !dbg !273
  %xor712.2.5 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.2.5 = xor i32 %xor712.2.5, 16, !dbg !273
  %add.ptr716.2.5 = getelementptr inbounds i8, ptr addrspace(3) %708, i32 %add.ptr716.idx.2.5, !dbg !273
  store i16 %condval_6.sroa.0.0.2.5, ptr addrspace(3) %add.ptr716.2.5, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.2.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2.5, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.2.5, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.2.5, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.2.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2.5, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.2.5, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.2.5, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.2.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2.5, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.2.5, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.2.5, align 2, !dbg !274, !tbaa !30
  %idxprom630.pn.in.3.5.sroa.sel.v = or disjoint i32 %364, 6, !dbg !84
  %idxprom630.pn.in.3.5.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom630.pn.in.3.5.sroa.sel.v, !dbg !84
  %condval_4.sroa.0.0.3.5 = load i16, ptr addrspace(5) %idxprom630.pn.in.3.5.sroa.sel, align 2, !dbg !84, !tbaa !275
  %idxprom645.pn.in.3.5 = or disjoint i32 %idxprom645.pn.in.v, 3, !dbg !276
  %condval_5.sroa.0.0.in.3.5 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.3.5, !dbg !84
  %condval_5.sroa.0.0.3.5 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.3.5, align 2, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.42.6.extract.shift1635 = lshr i32 %697, 16, !dbg !268
  %v_exchange_half.sroa.42.6.extract.trunc1636 = trunc nuw i32 %v_exchange_half.sroa.42.6.extract.shift1635 to i16, !dbg !268
  %condval_6.sroa.0.0.3.5 = select i1 %cmp595, i16 %condval_4.sroa.0.0.3.5, i16 %v_exchange_half.sroa.42.6.extract.trunc1636, !dbg !268
  %v_exchange_half.sroa.122.14.extract.shift1785 = lshr i32 %705, 16, !dbg !269
  %v_exchange_half.sroa.122.14.extract.trunc1786 = trunc nuw i32 %v_exchange_half.sroa.122.14.extract.shift1785 to i16, !dbg !269
  %condval_7.sroa.0.0.3.5 = select i1 %cmp595, i16 %condval_5.sroa.0.0.3.5, i16 %v_exchange_half.sroa.122.14.extract.trunc1786, !dbg !269
  %v_exchange_half.sroa.42.6.extract.shift1638 = lshr i32 %697, 16, !dbg !270
  %v_exchange_half.sroa.42.6.extract.trunc1639 = trunc nuw i32 %v_exchange_half.sroa.42.6.extract.shift1638 to i16, !dbg !270
  %condval_8.sroa.0.0.3.5 = select i1 %cmp595, i16 %v_exchange_half.sroa.42.6.extract.trunc1639, i16 %condval_4.sroa.0.0.3.5, !dbg !270
  %v_exchange_half.sroa.122.14.extract.shift1788 = lshr i32 %705, 16, !dbg !271
  %v_exchange_half.sroa.122.14.extract.trunc1789 = trunc nuw i32 %v_exchange_half.sroa.122.14.extract.shift1788 to i16, !dbg !271
  %condval_9.sroa.0.0.3.5 = select i1 %cmp595, i16 %v_exchange_half.sroa.122.14.extract.trunc1789, i16 %condval_5.sroa.0.0.3.5, !dbg !271
  %add701.3.5 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.3.5 = or disjoint i32 %add701.3.5, 768, !dbg !272
  %709 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.3.5, !dbg !273
  %xor712.3.5 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.3.5 = xor i32 %xor712.3.5, 24, !dbg !273
  %add.ptr716.3.5 = getelementptr inbounds i8, ptr addrspace(3) %709, i32 %add.ptr716.idx.3.5, !dbg !273
  store i16 %condval_6.sroa.0.0.3.5, ptr addrspace(3) %add.ptr716.3.5, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.3.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3.5, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.3.5, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.3.5, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.3.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3.5, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.3.5, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.3.5, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.3.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3.5, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.3.5, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.3.5, align 2, !dbg !274, !tbaa !30
  fence syncscope("warp") release, !dbg !277
  tail call void @llvm.mxc.barrier.warp(), !dbg !280
  fence syncscope("warp") acquire, !dbg !281
  %add733.5 = or disjoint i32 %mul726, %mul732, !dbg !282
  %710 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.5, !dbg !283
  %add.ptr743.idx.5 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.5 = getelementptr inbounds i8, ptr addrspace(3) %710, i32 %add.ptr743.idx.5, !dbg !283
  %711 = load <4 x half>, ptr addrspace(3) %add.ptr743.5, align 8, !dbg !284
  %add728.1.5 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.1.5 = or disjoint i32 %add728.1.5, 64, !dbg !282
  %712 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.1.5, !dbg !283
  %xor739.1.5 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.1.5 = xor i32 %xor739.1.5, 8, !dbg !283
  %add.ptr743.1.5 = getelementptr inbounds i8, ptr addrspace(3) %712, i32 %add.ptr743.idx.1.5, !dbg !283
  %713 = load <4 x half>, ptr addrspace(3) %add.ptr743.1.5, align 8, !dbg !284
  %add728.2.5 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.2.5 = or disjoint i32 %add728.2.5, 128, !dbg !282
  %714 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.2.5, !dbg !283
  %xor739.2.5 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.2.5 = xor i32 %xor739.2.5, 16, !dbg !283
  %add.ptr743.2.5 = getelementptr inbounds i8, ptr addrspace(3) %714, i32 %add.ptr743.idx.2.5, !dbg !283
  %715 = load <4 x half>, ptr addrspace(3) %add.ptr743.2.5, align 8, !dbg !284
  %add728.3.5 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.3.5 = or disjoint i32 %add728.3.5, 192, !dbg !282
  %716 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.3.5, !dbg !283
  %xor739.3.5 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.3.5 = xor i32 %xor739.3.5, 24, !dbg !283
  %add.ptr743.3.5 = getelementptr inbounds i8, ptr addrspace(3) %716, i32 %add.ptr743.idx.3.5, !dbg !283
  %717 = load <4 x half>, ptr addrspace(3) %add.ptr743.3.5, align 8, !dbg !284
  %718 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %711, <4 x half> %685, <4 x float> %output_acc.sroa.0.4), !dbg !285
  %719 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %713, <4 x half> %685, <4 x float> %output_acc.sroa.34.4), !dbg !285
  %720 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %715, <4 x half> %685, <4 x float> %output_acc.sroa.66.4), !dbg !285
  %721 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %717, <4 x half> %685, <4 x float> %output_acc.sroa.98.4), !dbg !285
  br label %if.end770.5, !dbg !286

if.end770.5:                                      ; preds = %if.end576.1.5, %if.end770.4
  %bc2567 = phi <4 x half> [ %274, %if.end770.4 ], [ %685, %if.end576.1.5 ], !dbg !84
  %output_acc.sroa.98.5 = phi <4 x float> [ %output_acc.sroa.98.4, %if.end770.4 ], [ %721, %if.end576.1.5 ], !dbg !84
  %output_acc.sroa.66.5 = phi <4 x float> [ %output_acc.sroa.66.4, %if.end770.4 ], [ %720, %if.end576.1.5 ], !dbg !84
  %output_acc.sroa.34.5 = phi <4 x float> [ %output_acc.sroa.34.4, %if.end770.4 ], [ %719, %if.end576.1.5 ], !dbg !84
  %output_acc.sroa.0.5 = phi <4 x float> [ %output_acc.sroa.0.4, %if.end770.4 ], [ %718, %if.end576.1.5 ], !dbg !84
  %722 = load i32, ptr addrspace(1) %arrayidx130.6, align 4, !dbg !187, !tbaa !30
  %mul444.6 = shl nsw i32 %722, 4, !dbg !188
  %cmp445.6 = icmp slt i32 %722, 0, !dbg !189
  %cmp448.not.6 = icmp sgt i32 %mul444.6, %1
  %or.cond1181.6 = select i1 %cmp445.6, i1 true, i1 %cmp448.not.6, !dbg !190
  br i1 %or.cond1181.6, label %if.end770.6, label %if.then449.6, !dbg !190

if.then449.6:                                     ; preds = %if.end770.5
  fence syncscope("warp") release, !dbg !191
  tail call void @llvm.mxc.barrier.warp(), !dbg !194
  fence syncscope("warp") acquire, !dbg !195
  %cmp454.6 = icmp eq i32 %shr324, 2, !dbg !196
  br i1 %cmp454.6, label %if.then455.6, label %if.end464.6, !dbg !197

if.then455.6:                                     ; preds = %if.then449.6
  %sub460.6 = fsub contract float %max_cache.sroa.11.7, %global_max.sroa.0.1.7, !dbg !198
  %mul461.6 = fmul contract float %sub460.6, 0x3FC7154760000000, !dbg !199
  %cmp.i.i1120.6 = fcmp contract olt float %mul461.6, -1.260000e+02, !dbg !200
  %cond.i.i1121.6 = select contract i1 %cmp.i.i1120.6, float 6.400000e+01, float 0.000000e+00, !dbg !200
  %add.i.i1122.6 = fadd contract float %mul461.6, %cond.i.i1121.6, !dbg !200
  %723 = tail call contract float @llvm.exp2.f32(float %add.i.i1122.6), !dbg !200
  %cond2.i.i1123.6 = select contract i1 %cmp.i.i1120.6, float 0x3BF0000000000000, float 1.000000e+00, !dbg !200
  %mul.i.i1124.6 = fmul contract float %cond2.i.i1123.6, %723, !dbg !200
  %724 = bitcast float %mul.i.i1124.6 to i32, !dbg !203
  br label %if.end464.6, !dbg !202

if.end464.6:                                      ; preds = %if.then455.6, %if.then449.6
  %rescale.sroa.0.0.6 = phi i32 [ %724, %if.then455.6 ], [ 0, %if.then449.6 ], !dbg !84
  %725 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !206
  %726 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %725) #13, !dbg !210
  %rem.i.i.6 = or disjoint i32 %and469, 32, !dbg !287
  %and.i.i1125.6 = and i32 %726, 1073741760, !dbg !211
  %add.i.i1126.6 = or disjoint i32 %and.i.i1125.6, %rem.i.i.6, !dbg !212
  %shl.i.i1127.6 = shl nuw i32 %add.i.i1126.6, 2, !dbg !213
  %727 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1127.6, i32 %rescale.sroa.0.0.6), !dbg !214
  %728 = bitcast i32 %727 to float, !dbg !215
  %729 = extractelement <4 x half> %316, i64 0, !dbg !216
  %conv.i1128.6 = fpext half %729 to float, !dbg !216
  %730 = extractelement <4 x half> %316, i64 1, !dbg !219
  %conv6.i.6 = fpext half %730 to float, !dbg !219
  %731 = extractelement <4 x half> %316, i64 2, !dbg !220
  %conv.i1130.6 = fpext half %731 to float, !dbg !220
  %732 = extractelement <4 x half> %316, i64 3, !dbg !222
  %conv6.i1132.6 = fpext half %732 to float, !dbg !222
  %mul494.6 = fmul contract float %728, %conv.i1128.6, !dbg !223
  %mul498.6 = fmul contract float %728, %conv6.i.6, !dbg !224
  %mul502.6 = fmul contract float %728, %conv.i1130.6, !dbg !225
  %mul506.6 = fmul contract float %728, %conv6.i1132.6, !dbg !226
  %733 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !231
  %734 = fptrunc float %mul494.6 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %733), !dbg !227, !noalias !231
  %735 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !236, !noalias !231
  %736 = fptrunc float %mul498.6 to half, !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %735), !dbg !236, !noalias !231
  %737 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !238, !noalias !242
  %738 = fptrunc float %mul502.6 to half, !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %737), !dbg !238, !noalias !242
  %739 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !247, !noalias !242
  %740 = fptrunc float %mul506.6 to half, !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %739), !dbg !247, !noalias !242
  %741 = insertelement <4 x half> poison, half %734, i64 0, !dbg !249
  %742 = insertelement <4 x half> %741, half %736, i64 1, !dbg !249
  %743 = insertelement <4 x half> %742, half %738, i64 2, !dbg !249
  %744 = insertelement <4 x half> %743, half %740, i64 3, !dbg !249
  %shr529.6 = lshr exact i32 %mul444.6, 1
  %add530.6 = add nuw nsw i32 %shr529.6, %shr140
  %cmp531.6 = icmp ult i32 %add530.6, 512
  %conv541.6 = zext nneg i32 %mul444.6 to i64
  br i1 %cmp531.6, label %if.then532.6, label %if.end576.6, !dbg !250

if.then532.6:                                     ; preds = %if.end464.6
  %745 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1218.6 = shl nuw nsw i64 %conv541.6, 7, !dbg !251
  %746 = getelementptr inbounds i8, ptr addrspace(4) %745, i64 %.idx1218.6, !dbg !251
  %condval_2.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %746, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %746, i64 4, !dbg !252
  %condval_2.sroa.5.0.copyload.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.6, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %746, i64 8, !dbg !252
  %condval_2.sroa.6.0.copyload.6 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.6, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %746, i64 12, !dbg !252
  %condval_2.sroa.7.0.copyload.6 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.6, align 4, !dbg !252, !tbaa !30
  br label %if.end576.6, !dbg !253

if.end576.6:                                      ; preds = %if.then532.6, %if.end464.6
  %condval_2.sroa.5.0.6 = phi i32 [ %condval_2.sroa.5.0.copyload.6, %if.then532.6 ], [ 0, %if.end464.6 ], !dbg !84
  %condval_2.sroa.0.0.6 = phi i32 [ %condval_2.sroa.0.0.copyload.6, %if.then532.6 ], [ 0, %if.end464.6 ], !dbg !84
  %condval_2.sroa.6.0.6 = phi i32 [ %condval_2.sroa.6.0.copyload.6, %if.then532.6 ], [ 0, %if.end464.6 ], !dbg !84
  %condval_2.sroa.7.0.6 = phi i32 [ %condval_2.sroa.7.0.copyload.6, %if.then532.6 ], [ 0, %if.end464.6 ], !dbg !84
  store i32 %condval_2.sroa.0.0.6, ptr addrspace(5) %v_fetch_words, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 4, !dbg !254
  store i32 %condval_2.sroa.5.0.6, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.6, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 8, !dbg !254
  store i32 %condval_2.sroa.6.0.6, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.6, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 12, !dbg !254
  store i32 %condval_2.sroa.7.0.6, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.6, align 4, !dbg !254, !tbaa !30
  br i1 %cmp531.6, label %if.then532.1.6, label %if.end576.1.6, !dbg !250

if.then532.1.6:                                   ; preds = %if.end576.6
  %747 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1218.1.6 = shl nuw nsw i64 %conv541.6, 7, !dbg !251
  %748 = getelementptr inbounds i8, ptr addrspace(4) %747, i64 %.idx1218.1.6, !dbg !251
  %add.ptr552.1.6 = getelementptr inbounds i8, ptr addrspace(4) %748, i64 128, !dbg !251
  %condval_2.sroa.0.0.copyload.1.6 = load i32, ptr addrspace(4) %add.ptr552.1.6, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %748, i64 132, !dbg !252
  %condval_2.sroa.5.0.copyload.1.6 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.6, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %748, i64 136, !dbg !252
  %condval_2.sroa.6.0.copyload.1.6 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.6, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(4) %748, i64 140, !dbg !252
  %condval_2.sroa.7.0.copyload.1.6 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.6, align 4, !dbg !252, !tbaa !30
  br label %if.end576.1.6, !dbg !253

if.end576.1.6:                                    ; preds = %if.then532.1.6, %if.end576.6
  %condval_2.sroa.5.0.1.6 = phi i32 [ %condval_2.sroa.5.0.copyload.1.6, %if.then532.1.6 ], [ 0, %if.end576.6 ], !dbg !84
  %condval_2.sroa.0.0.1.6 = phi i32 [ %condval_2.sroa.0.0.copyload.1.6, %if.then532.1.6 ], [ 0, %if.end576.6 ], !dbg !84
  %condval_2.sroa.6.0.1.6 = phi i32 [ %condval_2.sroa.6.0.copyload.1.6, %if.then532.1.6 ], [ 0, %if.end576.6 ], !dbg !84
  %condval_2.sroa.7.0.1.6 = phi i32 [ %condval_2.sroa.7.0.copyload.1.6, %if.then532.1.6 ], [ 0, %if.end576.6 ], !dbg !84
  %add.ptr580.1.6 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 16, !dbg !255
  store i32 %condval_2.sroa.0.0.1.6, ptr addrspace(5) %add.ptr580.1.6, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 20, !dbg !254
  store i32 %condval_2.sroa.5.0.1.6, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.6, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 24, !dbg !254
  store i32 %condval_2.sroa.6.0.1.6, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.6, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 28, !dbg !254
  store i32 %condval_2.sroa.7.0.1.6, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.6, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.6.val = load i32, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.6, align 4, !dbg !84
  %v_fetch_words.val2530 = load i32, ptr addrspace(5) %v_fetch_words, align 4, !dbg !84
  %condval_3.0.6 = select i1 %cmp595, i32 %condval_2.sroa.6.0.add.ptr580.sroa_idx.6.val, i32 %v_fetch_words.val2530, !dbg !84
  %749 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %750 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %749) #13, !dbg !261
  %xor.i.i1145.6 = xor i32 %750, 8, !dbg !262
  %751 = and i32 %750, -64, !dbg !263
  %and.i.i1146.6 = add nsw i32 %751, 64, !dbg !263
  %cmp.not.i.i1147.6 = icmp slt i32 %xor.i.i1145.6, %and.i.i1146.6, !dbg !264
  %cond.i.i1148.6 = select i1 %cmp.not.i.i1147.6, i32 %xor.i.i1145.6, i32 %750, !dbg !265
  %shl.i.i1149.6 = shl i32 %cond.i.i1148.6, 2, !dbg !266
  %752 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.6, i32 %condval_3.0.6), !dbg !267
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.6.val = load i32, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.6, align 4, !dbg !84
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.6.val = load i32, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.6, align 4, !dbg !84
  %condval_3.0.1.6 = select i1 %cmp595, i32 %condval_2.sroa.7.0.add.ptr580.sroa_idx.6.val, i32 %condval_2.sroa.5.0.add.ptr580.sroa_idx.6.val, !dbg !84
  %753 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %754 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %753) #13, !dbg !261
  %xor.i.i1145.1.6 = xor i32 %754, 8, !dbg !262
  %755 = and i32 %754, -64, !dbg !263
  %and.i.i1146.1.6 = add nsw i32 %755, 64, !dbg !263
  %cmp.not.i.i1147.1.6 = icmp slt i32 %xor.i.i1145.1.6, %and.i.i1146.1.6, !dbg !264
  %cond.i.i1148.1.6 = select i1 %cmp.not.i.i1147.1.6, i32 %xor.i.i1145.1.6, i32 %754, !dbg !265
  %shl.i.i1149.1.6 = shl i32 %cond.i.i1148.1.6, 2, !dbg !266
  %756 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.1.6, i32 %condval_3.0.1.6), !dbg !267
  %.sroa.gep1918 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 24, !dbg !84
  %.sroa.gep1918.val = load i32, ptr addrspace(5) %.sroa.gep1918, align 4, !dbg !84
  %add.ptr580.1.6.val = load i32, ptr addrspace(5) %add.ptr580.1.6, align 4, !dbg !84
  %condval_3.0.11297.6 = select i1 %cmp595, i32 %.sroa.gep1918.val, i32 %add.ptr580.1.6.val, !dbg !84
  %757 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %758 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %757) #13, !dbg !261
  %xor.i.i1145.11298.6 = xor i32 %758, 8, !dbg !262
  %759 = and i32 %758, -64, !dbg !263
  %and.i.i1146.11299.6 = add nsw i32 %759, 64, !dbg !263
  %cmp.not.i.i1147.11300.6 = icmp slt i32 %xor.i.i1145.11298.6, %and.i.i1146.11299.6, !dbg !264
  %cond.i.i1148.11301.6 = select i1 %cmp.not.i.i1147.11300.6, i32 %xor.i.i1145.11298.6, i32 %758, !dbg !265
  %shl.i.i1149.11302.6 = shl i32 %cond.i.i1148.11301.6, 2, !dbg !266
  %760 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.11302.6, i32 %condval_3.0.11297.6), !dbg !267
  %idxprom600.pn.in.1.1.6.sroa.sel.v = xor i32 %364, 28, !dbg !84
  %idxprom600.pn.in.1.1.6.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom600.pn.in.1.1.6.sroa.sel.v, !dbg !84
  %condval_3.0.1.1.6 = load i32, ptr addrspace(5) %idxprom600.pn.in.1.1.6.sroa.sel, align 4, !dbg !84, !tbaa !30
  %761 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %762 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %761) #13, !dbg !261
  %xor.i.i1145.1.1.6 = xor i32 %762, 8, !dbg !262
  %763 = and i32 %762, -64, !dbg !263
  %and.i.i1146.1.1.6 = add nsw i32 %763, 64, !dbg !263
  %cmp.not.i.i1147.1.1.6 = icmp slt i32 %xor.i.i1145.1.1.6, %and.i.i1146.1.1.6, !dbg !264
  %cond.i.i1148.1.1.6 = select i1 %cmp.not.i.i1147.1.1.6, i32 %xor.i.i1145.1.1.6, i32 %762, !dbg !265
  %shl.i.i1149.1.1.6 = shl i32 %cond.i.i1148.1.1.6, 2, !dbg !266
  %764 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.1.1.6, i32 %condval_3.0.1.1.6), !dbg !267
  %v_fetch_words.val2531 = load i16, ptr addrspace(5) %v_fetch_words, align 4, !dbg !84
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.6.val2532 = load i16, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.6, align 4, !dbg !84
  %add.ptr580.1.6.val2533 = load i16, ptr addrspace(5) %add.ptr580.1.6, align 4, !dbg !84
  %.sroa.gep1918.val2534 = load i16, ptr addrspace(5) %.sroa.gep1918, align 4, !dbg !84
  %v_exchange_half.sroa.0.0.extract.trunc1525 = trunc i32 %752 to i16
  %spec.select2589 = select i1 %cmp595, i16 %v_fetch_words.val2531, i16 %v_exchange_half.sroa.0.0.extract.trunc1525, !dbg !268
  %v_exchange_half.sroa.82.8.extract.trunc1675 = trunc i32 %760 to i16, !dbg !269
  %condval_7.sroa.0.0.6 = select i1 %cmp595, i16 %add.ptr580.1.6.val2533, i16 %v_exchange_half.sroa.82.8.extract.trunc1675, !dbg !269
  %v_exchange_half.sroa.0.0.extract.trunc1527 = trunc i32 %752 to i16, !dbg !270
  %condval_8.sroa.0.0.6 = select i1 %cmp595, i16 %v_exchange_half.sroa.0.0.extract.trunc1527, i16 %condval_2.sroa.6.0.add.ptr580.sroa_idx.6.val2532, !dbg !270
  %v_exchange_half.sroa.82.8.extract.trunc1677 = trunc i32 %760 to i16, !dbg !271
  %condval_9.sroa.0.0.6 = select i1 %cmp595, i16 %v_exchange_half.sroa.82.8.extract.trunc1677, i16 %.sroa.gep1918.val2534, !dbg !271
  %add706.6 = or disjoint i32 %mul700, %mul705, !dbg !272
  %765 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.6, !dbg !273
  %add.ptr716.idx.6 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.6 = getelementptr inbounds i8, ptr addrspace(3) %765, i32 %add.ptr716.idx.6, !dbg !273
  store i16 %spec.select2589, ptr addrspace(3) %add.ptr716.6, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.6, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.6, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.6, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.6, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.6, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.6, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.6, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.6, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.6, align 2, !dbg !274, !tbaa !30
  %idxprom630.pn.in.1.6.sroa.sel.v = or disjoint i32 %364, 2, !dbg !84
  %idxprom630.pn.in.1.6.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom630.pn.in.1.6.sroa.sel.v, !dbg !84
  %condval_4.sroa.0.0.1.6 = load i16, ptr addrspace(5) %idxprom630.pn.in.1.6.sroa.sel, align 2, !dbg !84, !tbaa !275
  %idxprom645.pn.in.1.6 = or disjoint i32 %idxprom645.pn.in.v, 1, !dbg !276
  %condval_5.sroa.0.0.in.1.6 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.1.6, !dbg !84
  %condval_5.sroa.0.0.1.6 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.1.6, align 2, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.0.2.extract.shift1566 = lshr i32 %752, 16, !dbg !268
  %v_exchange_half.sroa.0.2.extract.trunc1567 = trunc nuw i32 %v_exchange_half.sroa.0.2.extract.shift1566 to i16, !dbg !268
  %condval_6.sroa.0.0.1.6 = select i1 %cmp595, i16 %condval_4.sroa.0.0.1.6, i16 %v_exchange_half.sroa.0.2.extract.trunc1567, !dbg !268
  %v_exchange_half.sroa.82.10.extract.shift1716 = lshr i32 %760, 16, !dbg !269
  %v_exchange_half.sroa.82.10.extract.trunc1717 = trunc nuw i32 %v_exchange_half.sroa.82.10.extract.shift1716 to i16, !dbg !269
  %condval_7.sroa.0.0.1.6 = select i1 %cmp595, i16 %condval_5.sroa.0.0.1.6, i16 %v_exchange_half.sroa.82.10.extract.trunc1717, !dbg !269
  %v_exchange_half.sroa.0.2.extract.shift1569 = lshr i32 %752, 16, !dbg !270
  %v_exchange_half.sroa.0.2.extract.trunc1570 = trunc nuw i32 %v_exchange_half.sroa.0.2.extract.shift1569 to i16, !dbg !270
  %condval_8.sroa.0.0.1.6 = select i1 %cmp595, i16 %v_exchange_half.sroa.0.2.extract.trunc1570, i16 %condval_4.sroa.0.0.1.6, !dbg !270
  %v_exchange_half.sroa.82.10.extract.shift1719 = lshr i32 %760, 16, !dbg !271
  %v_exchange_half.sroa.82.10.extract.trunc1720 = trunc nuw i32 %v_exchange_half.sroa.82.10.extract.shift1719 to i16, !dbg !271
  %condval_9.sroa.0.0.1.6 = select i1 %cmp595, i16 %v_exchange_half.sroa.82.10.extract.trunc1720, i16 %condval_5.sroa.0.0.1.6, !dbg !271
  %add701.1.6 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.1.6 = or disjoint i32 %add701.1.6, 256, !dbg !272
  %766 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.1.6, !dbg !273
  %xor712.1.6 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.1.6 = xor i32 %xor712.1.6, 8, !dbg !273
  %add.ptr716.1.6 = getelementptr inbounds i8, ptr addrspace(3) %766, i32 %add.ptr716.idx.1.6, !dbg !273
  store i16 %condval_6.sroa.0.0.1.6, ptr addrspace(3) %add.ptr716.1.6, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1.6, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.1.6, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.1.6, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1.6, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.1.6, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.1.6, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.1.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1.6, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.1.6, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.1.6, align 2, !dbg !274, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.6.val2603 = load i16, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.6, align 4, !dbg !84
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.6.val2604 = load i16, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.6, align 4, !dbg !84
  %idxprom645.pn.in.2.6 = or disjoint i32 %idxprom645.pn.in.v, 2, !dbg !276
  %condval_5.sroa.0.0.in.2.6 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.2.6, !dbg !84
  %condval_5.sroa.0.0.2.6 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.2.6, align 4, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.42.4.extract.trunc1600 = trunc i32 %756 to i16, !dbg !268
  %condval_6.sroa.0.0.2.6 = select i1 %cmp595, i16 %condval_2.sroa.5.0.add.ptr580.sroa_idx.6.val2603, i16 %v_exchange_half.sroa.42.4.extract.trunc1600, !dbg !268
  %v_exchange_half.sroa.122.12.extract.trunc1750 = trunc i32 %764 to i16, !dbg !269
  %condval_7.sroa.0.0.2.6 = select i1 %cmp595, i16 %condval_5.sroa.0.0.2.6, i16 %v_exchange_half.sroa.122.12.extract.trunc1750, !dbg !269
  %v_exchange_half.sroa.42.4.extract.trunc1602 = trunc i32 %756 to i16, !dbg !270
  %condval_8.sroa.0.0.2.6 = select i1 %cmp595, i16 %v_exchange_half.sroa.42.4.extract.trunc1602, i16 %condval_2.sroa.7.0.add.ptr580.sroa_idx.6.val2604, !dbg !270
  %v_exchange_half.sroa.122.12.extract.trunc1752 = trunc i32 %764 to i16, !dbg !271
  %condval_9.sroa.0.0.2.6 = select i1 %cmp595, i16 %v_exchange_half.sroa.122.12.extract.trunc1752, i16 %condval_5.sroa.0.0.2.6, !dbg !271
  %add701.2.6 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.2.6 = or disjoint i32 %add701.2.6, 512, !dbg !272
  %767 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.2.6, !dbg !273
  %xor712.2.6 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.2.6 = xor i32 %xor712.2.6, 16, !dbg !273
  %add.ptr716.2.6 = getelementptr inbounds i8, ptr addrspace(3) %767, i32 %add.ptr716.idx.2.6, !dbg !273
  store i16 %condval_6.sroa.0.0.2.6, ptr addrspace(3) %add.ptr716.2.6, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.2.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2.6, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.2.6, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.2.6, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.2.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2.6, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.2.6, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.2.6, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.2.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2.6, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.2.6, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.2.6, align 2, !dbg !274, !tbaa !30
  %idxprom630.pn.in.3.6.sroa.sel.v = or disjoint i32 %364, 6, !dbg !84
  %idxprom630.pn.in.3.6.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom630.pn.in.3.6.sroa.sel.v, !dbg !84
  %condval_4.sroa.0.0.3.6 = load i16, ptr addrspace(5) %idxprom630.pn.in.3.6.sroa.sel, align 2, !dbg !84, !tbaa !275
  %idxprom645.pn.in.3.6 = or disjoint i32 %idxprom645.pn.in.v, 3, !dbg !276
  %condval_5.sroa.0.0.in.3.6 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.3.6, !dbg !84
  %condval_5.sroa.0.0.3.6 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.3.6, align 2, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.42.6.extract.shift1641 = lshr i32 %756, 16, !dbg !268
  %v_exchange_half.sroa.42.6.extract.trunc1642 = trunc nuw i32 %v_exchange_half.sroa.42.6.extract.shift1641 to i16, !dbg !268
  %condval_6.sroa.0.0.3.6 = select i1 %cmp595, i16 %condval_4.sroa.0.0.3.6, i16 %v_exchange_half.sroa.42.6.extract.trunc1642, !dbg !268
  %v_exchange_half.sroa.122.14.extract.shift1791 = lshr i32 %764, 16, !dbg !269
  %v_exchange_half.sroa.122.14.extract.trunc1792 = trunc nuw i32 %v_exchange_half.sroa.122.14.extract.shift1791 to i16, !dbg !269
  %condval_7.sroa.0.0.3.6 = select i1 %cmp595, i16 %condval_5.sroa.0.0.3.6, i16 %v_exchange_half.sroa.122.14.extract.trunc1792, !dbg !269
  %v_exchange_half.sroa.42.6.extract.shift1644 = lshr i32 %756, 16, !dbg !270
  %v_exchange_half.sroa.42.6.extract.trunc1645 = trunc nuw i32 %v_exchange_half.sroa.42.6.extract.shift1644 to i16, !dbg !270
  %condval_8.sroa.0.0.3.6 = select i1 %cmp595, i16 %v_exchange_half.sroa.42.6.extract.trunc1645, i16 %condval_4.sroa.0.0.3.6, !dbg !270
  %v_exchange_half.sroa.122.14.extract.shift1794 = lshr i32 %764, 16, !dbg !271
  %v_exchange_half.sroa.122.14.extract.trunc1795 = trunc nuw i32 %v_exchange_half.sroa.122.14.extract.shift1794 to i16, !dbg !271
  %condval_9.sroa.0.0.3.6 = select i1 %cmp595, i16 %v_exchange_half.sroa.122.14.extract.trunc1795, i16 %condval_5.sroa.0.0.3.6, !dbg !271
  %add701.3.6 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.3.6 = or disjoint i32 %add701.3.6, 768, !dbg !272
  %768 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.3.6, !dbg !273
  %xor712.3.6 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.3.6 = xor i32 %xor712.3.6, 24, !dbg !273
  %add.ptr716.3.6 = getelementptr inbounds i8, ptr addrspace(3) %768, i32 %add.ptr716.idx.3.6, !dbg !273
  store i16 %condval_6.sroa.0.0.3.6, ptr addrspace(3) %add.ptr716.3.6, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.3.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3.6, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.3.6, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.3.6, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.3.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3.6, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.3.6, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.3.6, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.3.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3.6, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.3.6, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.3.6, align 2, !dbg !274, !tbaa !30
  fence syncscope("warp") release, !dbg !277
  tail call void @llvm.mxc.barrier.warp(), !dbg !280
  fence syncscope("warp") acquire, !dbg !281
  %add733.6 = or disjoint i32 %mul726, %mul732, !dbg !282
  %769 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.6, !dbg !283
  %add.ptr743.idx.6 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.6 = getelementptr inbounds i8, ptr addrspace(3) %769, i32 %add.ptr743.idx.6, !dbg !283
  %770 = load <4 x half>, ptr addrspace(3) %add.ptr743.6, align 8, !dbg !284
  %add728.1.6 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.1.6 = or disjoint i32 %add728.1.6, 64, !dbg !282
  %771 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.1.6, !dbg !283
  %xor739.1.6 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.1.6 = xor i32 %xor739.1.6, 8, !dbg !283
  %add.ptr743.1.6 = getelementptr inbounds i8, ptr addrspace(3) %771, i32 %add.ptr743.idx.1.6, !dbg !283
  %772 = load <4 x half>, ptr addrspace(3) %add.ptr743.1.6, align 8, !dbg !284
  %add728.2.6 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.2.6 = or disjoint i32 %add728.2.6, 128, !dbg !282
  %773 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.2.6, !dbg !283
  %xor739.2.6 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.2.6 = xor i32 %xor739.2.6, 16, !dbg !283
  %add.ptr743.2.6 = getelementptr inbounds i8, ptr addrspace(3) %773, i32 %add.ptr743.idx.2.6, !dbg !283
  %774 = load <4 x half>, ptr addrspace(3) %add.ptr743.2.6, align 8, !dbg !284
  %add728.3.6 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.3.6 = or disjoint i32 %add728.3.6, 192, !dbg !282
  %775 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.3.6, !dbg !283
  %xor739.3.6 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.3.6 = xor i32 %xor739.3.6, 24, !dbg !283
  %add.ptr743.3.6 = getelementptr inbounds i8, ptr addrspace(3) %775, i32 %add.ptr743.idx.3.6, !dbg !283
  %776 = load <4 x half>, ptr addrspace(3) %add.ptr743.3.6, align 8, !dbg !284
  %777 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %770, <4 x half> %744, <4 x float> %output_acc.sroa.0.5), !dbg !285
  %778 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %772, <4 x half> %744, <4 x float> %output_acc.sroa.34.5), !dbg !285
  %779 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %774, <4 x half> %744, <4 x float> %output_acc.sroa.66.5), !dbg !285
  %780 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %776, <4 x half> %744, <4 x float> %output_acc.sroa.98.5), !dbg !285
  br label %if.end770.6, !dbg !286

if.end770.6:                                      ; preds = %if.end576.1.6, %if.end770.5
  %bc2571 = phi <4 x half> [ %316, %if.end770.5 ], [ %744, %if.end576.1.6 ], !dbg !84
  %output_acc.sroa.98.6 = phi <4 x float> [ %output_acc.sroa.98.5, %if.end770.5 ], [ %780, %if.end576.1.6 ], !dbg !84
  %output_acc.sroa.66.6 = phi <4 x float> [ %output_acc.sroa.66.5, %if.end770.5 ], [ %779, %if.end576.1.6 ], !dbg !84
  %output_acc.sroa.34.6 = phi <4 x float> [ %output_acc.sroa.34.5, %if.end770.5 ], [ %778, %if.end576.1.6 ], !dbg !84
  %output_acc.sroa.0.6 = phi <4 x float> [ %output_acc.sroa.0.5, %if.end770.5 ], [ %777, %if.end576.1.6 ], !dbg !84
  %781 = load i32, ptr addrspace(1) %arrayidx130.7, align 4, !dbg !187, !tbaa !30
  %mul444.7 = shl nsw i32 %781, 4, !dbg !188
  %cmp445.7 = icmp slt i32 %781, 0, !dbg !189
  %cmp448.not.7 = icmp sgt i32 %mul444.7, %1
  %or.cond1181.7 = select i1 %cmp445.7, i1 true, i1 %cmp448.not.7, !dbg !190
  br i1 %or.cond1181.7, label %if.end770.7, label %if.then449.7, !dbg !190

if.then449.7:                                     ; preds = %if.end770.6
  fence syncscope("warp") release, !dbg !191
  tail call void @llvm.mxc.barrier.warp(), !dbg !194
  fence syncscope("warp") acquire, !dbg !195
  %cmp454.7 = icmp eq i32 %shr324, 3, !dbg !196
  br i1 %cmp454.7, label %if.then455.7, label %if.end464.7, !dbg !197

if.then455.7:                                     ; preds = %if.then449.7
  %sub460.7 = fsub contract float %max_cache.sroa.11.7, %global_max.sroa.0.1.7, !dbg !198
  %mul461.7 = fmul contract float %sub460.7, 0x3FC7154760000000, !dbg !199
  %cmp.i.i1120.7 = fcmp contract olt float %mul461.7, -1.260000e+02, !dbg !200
  %cond.i.i1121.7 = select contract i1 %cmp.i.i1120.7, float 6.400000e+01, float 0.000000e+00, !dbg !200
  %add.i.i1122.7 = fadd contract float %mul461.7, %cond.i.i1121.7, !dbg !200
  %782 = tail call contract float @llvm.exp2.f32(float %add.i.i1122.7), !dbg !200
  %cond2.i.i1123.7 = select contract i1 %cmp.i.i1120.7, float 0x3BF0000000000000, float 1.000000e+00, !dbg !200
  %mul.i.i1124.7 = fmul contract float %cond2.i.i1123.7, %782, !dbg !200
  %783 = bitcast float %mul.i.i1124.7 to i32, !dbg !203
  br label %if.end464.7, !dbg !202

if.end464.7:                                      ; preds = %if.then455.7, %if.then449.7
  %rescale.sroa.0.0.7 = phi i32 [ %783, %if.then455.7 ], [ 0, %if.then449.7 ], !dbg !84
  %784 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !206
  %785 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %784) #13, !dbg !210
  %rem.i.i.7 = or disjoint i32 %and469, 48, !dbg !287
  %and.i.i1125.7 = and i32 %785, 1073741760, !dbg !211
  %add.i.i1126.7 = or disjoint i32 %and.i.i1125.7, %rem.i.i.7, !dbg !212
  %shl.i.i1127.7 = shl nuw i32 %add.i.i1126.7, 2, !dbg !213
  %786 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1127.7, i32 %rescale.sroa.0.0.7), !dbg !214
  %787 = bitcast i32 %786 to float, !dbg !215
  %788 = extractelement <4 x half> %358, i64 0, !dbg !216
  %conv.i1128.7 = fpext half %788 to float, !dbg !216
  %789 = extractelement <4 x half> %358, i64 1, !dbg !219
  %conv6.i.7 = fpext half %789 to float, !dbg !219
  %790 = extractelement <4 x half> %358, i64 2, !dbg !220
  %conv.i1130.7 = fpext half %790 to float, !dbg !220
  %791 = extractelement <4 x half> %358, i64 3, !dbg !222
  %conv6.i1132.7 = fpext half %791 to float, !dbg !222
  %mul494.7 = fmul contract float %787, %conv.i1128.7, !dbg !223
  %mul498.7 = fmul contract float %787, %conv6.i.7, !dbg !224
  %mul502.7 = fmul contract float %787, %conv.i1130.7, !dbg !225
  %mul506.7 = fmul contract float %787, %conv6.i1132.7, !dbg !226
  %792 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !227, !noalias !231
  %793 = fptrunc float %mul494.7 to half, !dbg !227
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %792), !dbg !227, !noalias !231
  %794 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !236, !noalias !231
  %795 = fptrunc float %mul498.7 to half, !dbg !236
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %794), !dbg !236, !noalias !231
  %796 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !238, !noalias !242
  %797 = fptrunc float %mul502.7 to half, !dbg !238
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %796), !dbg !238, !noalias !242
  %798 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !247, !noalias !242
  %799 = fptrunc float %mul506.7 to half, !dbg !247
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %798), !dbg !247, !noalias !242
  %800 = insertelement <4 x half> poison, half %793, i64 0, !dbg !249
  %801 = insertelement <4 x half> %800, half %795, i64 1, !dbg !249
  %802 = insertelement <4 x half> %801, half %797, i64 2, !dbg !249
  %803 = insertelement <4 x half> %802, half %799, i64 3, !dbg !249
  %shr529.7 = lshr exact i32 %mul444.7, 1
  %add530.7 = add nuw nsw i32 %shr529.7, %shr140
  %cmp531.7 = icmp ult i32 %add530.7, 512
  %conv541.7 = zext nneg i32 %mul444.7 to i64
  br i1 %cmp531.7, label %if.then532.7, label %if.end576.7, !dbg !250

if.then532.7:                                     ; preds = %if.end464.7
  %804 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1218.7 = shl nuw nsw i64 %conv541.7, 7, !dbg !251
  %805 = getelementptr inbounds i8, ptr addrspace(4) %804, i64 %.idx1218.7, !dbg !251
  %condval_2.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %805, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %805, i64 4, !dbg !252
  %condval_2.sroa.5.0.copyload.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.7, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %805, i64 8, !dbg !252
  %condval_2.sroa.6.0.copyload.7 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.7, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %805, i64 12, !dbg !252
  %condval_2.sroa.7.0.copyload.7 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.7, align 4, !dbg !252, !tbaa !30
  br label %if.end576.7, !dbg !253

if.end576.7:                                      ; preds = %if.then532.7, %if.end464.7
  %condval_2.sroa.5.0.7 = phi i32 [ %condval_2.sroa.5.0.copyload.7, %if.then532.7 ], [ 0, %if.end464.7 ], !dbg !84
  %condval_2.sroa.0.0.7 = phi i32 [ %condval_2.sroa.0.0.copyload.7, %if.then532.7 ], [ 0, %if.end464.7 ], !dbg !84
  %condval_2.sroa.6.0.7 = phi i32 [ %condval_2.sroa.6.0.copyload.7, %if.then532.7 ], [ 0, %if.end464.7 ], !dbg !84
  %condval_2.sroa.7.0.7 = phi i32 [ %condval_2.sroa.7.0.copyload.7, %if.then532.7 ], [ 0, %if.end464.7 ], !dbg !84
  store i32 %condval_2.sroa.0.0.7, ptr addrspace(5) %v_fetch_words, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 4, !dbg !254
  store i32 %condval_2.sroa.5.0.7, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.7, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 8, !dbg !254
  store i32 %condval_2.sroa.6.0.7, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.7, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 12, !dbg !254
  store i32 %condval_2.sroa.7.0.7, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.7, align 4, !dbg !254, !tbaa !30
  br i1 %cmp531.7, label %if.then532.1.7, label %if.end576.1.7, !dbg !250

if.then532.1.7:                                   ; preds = %if.end576.7
  %806 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %add543, !dbg !251
  %.idx1218.1.7 = shl nuw nsw i64 %conv541.7, 7, !dbg !251
  %807 = getelementptr inbounds i8, ptr addrspace(4) %806, i64 %.idx1218.1.7, !dbg !251
  %add.ptr552.1.7 = getelementptr inbounds i8, ptr addrspace(4) %807, i64 128, !dbg !251
  %condval_2.sroa.0.0.copyload.1.7 = load i32, ptr addrspace(4) %add.ptr552.1.7, align 16, !dbg !252, !tbaa !30
  %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %807, i64 132, !dbg !252
  %condval_2.sroa.5.0.copyload.1.7 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr552.sroa_idx.1.7, align 4, !dbg !252, !tbaa !30
  %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %807, i64 136, !dbg !252
  %condval_2.sroa.6.0.copyload.1.7 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr552.sroa_idx.1.7, align 8, !dbg !252, !tbaa !30
  %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(4) %807, i64 140, !dbg !252
  %condval_2.sroa.7.0.copyload.1.7 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr552.sroa_idx.1.7, align 4, !dbg !252, !tbaa !30
  br label %if.end576.1.7, !dbg !253

if.end576.1.7:                                    ; preds = %if.then532.1.7, %if.end576.7
  %condval_2.sroa.5.0.1.7 = phi i32 [ %condval_2.sroa.5.0.copyload.1.7, %if.then532.1.7 ], [ 0, %if.end576.7 ], !dbg !84
  %condval_2.sroa.0.0.1.7 = phi i32 [ %condval_2.sroa.0.0.copyload.1.7, %if.then532.1.7 ], [ 0, %if.end576.7 ], !dbg !84
  %condval_2.sroa.6.0.1.7 = phi i32 [ %condval_2.sroa.6.0.copyload.1.7, %if.then532.1.7 ], [ 0, %if.end576.7 ], !dbg !84
  %condval_2.sroa.7.0.1.7 = phi i32 [ %condval_2.sroa.7.0.copyload.1.7, %if.then532.1.7 ], [ 0, %if.end576.7 ], !dbg !84
  %add.ptr580.1.7 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 16, !dbg !255
  store i32 %condval_2.sroa.0.0.1.7, ptr addrspace(5) %add.ptr580.1.7, align 16, !dbg !254, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 20, !dbg !254
  store i32 %condval_2.sroa.5.0.1.7, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.1.7, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 24, !dbg !254
  store i32 %condval_2.sroa.6.0.1.7, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.1.7, align 8, !dbg !254, !tbaa !30
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 28, !dbg !254
  store i32 %condval_2.sroa.7.0.1.7, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.1.7, align 4, !dbg !254, !tbaa !30
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.7.val = load i32, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.7, align 4, !dbg !84
  %v_fetch_words.val2539 = load i32, ptr addrspace(5) %v_fetch_words, align 4, !dbg !84
  %condval_3.0.7 = select i1 %cmp595, i32 %condval_2.sroa.6.0.add.ptr580.sroa_idx.7.val, i32 %v_fetch_words.val2539, !dbg !84
  %808 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %809 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %808) #13, !dbg !261
  %xor.i.i1145.7 = xor i32 %809, 8, !dbg !262
  %810 = and i32 %809, -64, !dbg !263
  %and.i.i1146.7 = add nsw i32 %810, 64, !dbg !263
  %cmp.not.i.i1147.7 = icmp slt i32 %xor.i.i1145.7, %and.i.i1146.7, !dbg !264
  %cond.i.i1148.7 = select i1 %cmp.not.i.i1147.7, i32 %xor.i.i1145.7, i32 %809, !dbg !265
  %shl.i.i1149.7 = shl i32 %cond.i.i1148.7, 2, !dbg !266
  %811 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.7, i32 %condval_3.0.7), !dbg !267
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.7.val = load i32, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.7, align 4, !dbg !84
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.7.val = load i32, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.7, align 4, !dbg !84
  %condval_3.0.1.7 = select i1 %cmp595, i32 %condval_2.sroa.7.0.add.ptr580.sroa_idx.7.val, i32 %condval_2.sroa.5.0.add.ptr580.sroa_idx.7.val, !dbg !84
  %812 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %813 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %812) #13, !dbg !261
  %xor.i.i1145.1.7 = xor i32 %813, 8, !dbg !262
  %814 = and i32 %813, -64, !dbg !263
  %and.i.i1146.1.7 = add nsw i32 %814, 64, !dbg !263
  %cmp.not.i.i1147.1.7 = icmp slt i32 %xor.i.i1145.1.7, %and.i.i1146.1.7, !dbg !264
  %cond.i.i1148.1.7 = select i1 %cmp.not.i.i1147.1.7, i32 %xor.i.i1145.1.7, i32 %813, !dbg !265
  %shl.i.i1149.1.7 = shl i32 %cond.i.i1148.1.7, 2, !dbg !266
  %815 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.1.7, i32 %condval_3.0.1.7), !dbg !267
  %.sroa.gep1937 = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 24, !dbg !84
  %.sroa.gep1937.val = load i32, ptr addrspace(5) %.sroa.gep1937, align 4, !dbg !84
  %add.ptr580.1.7.val = load i32, ptr addrspace(5) %add.ptr580.1.7, align 4, !dbg !84
  %condval_3.0.11297.7 = select i1 %cmp595, i32 %.sroa.gep1937.val, i32 %add.ptr580.1.7.val, !dbg !84
  %816 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %817 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %816) #13, !dbg !261
  %xor.i.i1145.11298.7 = xor i32 %817, 8, !dbg !262
  %818 = and i32 %817, -64, !dbg !263
  %and.i.i1146.11299.7 = add nsw i32 %818, 64, !dbg !263
  %cmp.not.i.i1147.11300.7 = icmp slt i32 %xor.i.i1145.11298.7, %and.i.i1146.11299.7, !dbg !264
  %cond.i.i1148.11301.7 = select i1 %cmp.not.i.i1147.11300.7, i32 %xor.i.i1145.11298.7, i32 %817, !dbg !265
  %shl.i.i1149.11302.7 = shl i32 %cond.i.i1148.11301.7, 2, !dbg !266
  %819 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.11302.7, i32 %condval_3.0.11297.7), !dbg !267
  %idxprom600.pn.in.1.1.7.sroa.sel.v = xor i32 %364, 28, !dbg !84
  %idxprom600.pn.in.1.1.7.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom600.pn.in.1.1.7.sroa.sel.v, !dbg !84
  %condval_3.0.1.1.7 = load i32, ptr addrspace(5) %idxprom600.pn.in.1.1.7.sroa.sel, align 4, !dbg !84, !tbaa !30
  %820 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !256
  %821 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %820) #13, !dbg !261
  %xor.i.i1145.1.1.7 = xor i32 %821, 8, !dbg !262
  %822 = and i32 %821, -64, !dbg !263
  %and.i.i1146.1.1.7 = add nsw i32 %822, 64, !dbg !263
  %cmp.not.i.i1147.1.1.7 = icmp slt i32 %xor.i.i1145.1.1.7, %and.i.i1146.1.1.7, !dbg !264
  %cond.i.i1148.1.1.7 = select i1 %cmp.not.i.i1147.1.1.7, i32 %xor.i.i1145.1.1.7, i32 %821, !dbg !265
  %shl.i.i1149.1.1.7 = shl i32 %cond.i.i1148.1.1.7, 2, !dbg !266
  %823 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1149.1.1.7, i32 %condval_3.0.1.1.7), !dbg !267
  %v_fetch_words.val2540 = load i16, ptr addrspace(5) %v_fetch_words, align 4, !dbg !84
  %condval_2.sroa.6.0.add.ptr580.sroa_idx.7.val2541 = load i16, ptr addrspace(5) %condval_2.sroa.6.0.add.ptr580.sroa_idx.7, align 4, !dbg !84
  %add.ptr580.1.7.val2542 = load i16, ptr addrspace(5) %add.ptr580.1.7, align 4, !dbg !84
  %.sroa.gep1937.val2543 = load i16, ptr addrspace(5) %.sroa.gep1937, align 4, !dbg !84
  %v_exchange_half.sroa.0.0.extract.trunc1529 = trunc i32 %811 to i16
  %spec.select2590 = select i1 %cmp595, i16 %v_fetch_words.val2540, i16 %v_exchange_half.sroa.0.0.extract.trunc1529, !dbg !268
  %v_exchange_half.sroa.82.8.extract.trunc1679 = trunc i32 %819 to i16, !dbg !269
  %condval_7.sroa.0.0.7 = select i1 %cmp595, i16 %add.ptr580.1.7.val2542, i16 %v_exchange_half.sroa.82.8.extract.trunc1679, !dbg !269
  %v_exchange_half.sroa.0.0.extract.trunc1531 = trunc i32 %811 to i16, !dbg !270
  %condval_8.sroa.0.0.7 = select i1 %cmp595, i16 %v_exchange_half.sroa.0.0.extract.trunc1531, i16 %condval_2.sroa.6.0.add.ptr580.sroa_idx.7.val2541, !dbg !270
  %v_exchange_half.sroa.82.8.extract.trunc1681 = trunc i32 %819 to i16, !dbg !271
  %condval_9.sroa.0.0.7 = select i1 %cmp595, i16 %v_exchange_half.sroa.82.8.extract.trunc1681, i16 %.sroa.gep1937.val2543, !dbg !271
  %add706.7 = or disjoint i32 %mul700, %mul705, !dbg !272
  %824 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.7, !dbg !273
  %add.ptr716.idx.7 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.7 = getelementptr inbounds i8, ptr addrspace(3) %824, i32 %add.ptr716.idx.7, !dbg !273
  store i16 %spec.select2590, ptr addrspace(3) %add.ptr716.7, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.7, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.7, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.7, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.7, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.7, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.7, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.7, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.7, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.7, align 2, !dbg !274, !tbaa !30
  %idxprom630.pn.in.1.7.sroa.sel.v = or disjoint i32 %364, 2, !dbg !84
  %idxprom630.pn.in.1.7.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom630.pn.in.1.7.sroa.sel.v, !dbg !84
  %condval_4.sroa.0.0.1.7 = load i16, ptr addrspace(5) %idxprom630.pn.in.1.7.sroa.sel, align 2, !dbg !84, !tbaa !275
  %idxprom645.pn.in.1.7 = or disjoint i32 %idxprom645.pn.in.v, 1, !dbg !276
  %condval_5.sroa.0.0.in.1.7 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.1.7, !dbg !84
  %condval_5.sroa.0.0.1.7 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.1.7, align 2, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.0.2.extract.shift1572 = lshr i32 %811, 16, !dbg !268
  %v_exchange_half.sroa.0.2.extract.trunc1573 = trunc nuw i32 %v_exchange_half.sroa.0.2.extract.shift1572 to i16, !dbg !268
  %condval_6.sroa.0.0.1.7 = select i1 %cmp595, i16 %condval_4.sroa.0.0.1.7, i16 %v_exchange_half.sroa.0.2.extract.trunc1573, !dbg !268
  %v_exchange_half.sroa.82.10.extract.shift1722 = lshr i32 %819, 16, !dbg !269
  %v_exchange_half.sroa.82.10.extract.trunc1723 = trunc nuw i32 %v_exchange_half.sroa.82.10.extract.shift1722 to i16, !dbg !269
  %condval_7.sroa.0.0.1.7 = select i1 %cmp595, i16 %condval_5.sroa.0.0.1.7, i16 %v_exchange_half.sroa.82.10.extract.trunc1723, !dbg !269
  %v_exchange_half.sroa.0.2.extract.shift1575 = lshr i32 %811, 16, !dbg !270
  %v_exchange_half.sroa.0.2.extract.trunc1576 = trunc nuw i32 %v_exchange_half.sroa.0.2.extract.shift1575 to i16, !dbg !270
  %condval_8.sroa.0.0.1.7 = select i1 %cmp595, i16 %v_exchange_half.sroa.0.2.extract.trunc1576, i16 %condval_4.sroa.0.0.1.7, !dbg !270
  %v_exchange_half.sroa.82.10.extract.shift1725 = lshr i32 %819, 16, !dbg !271
  %v_exchange_half.sroa.82.10.extract.trunc1726 = trunc nuw i32 %v_exchange_half.sroa.82.10.extract.shift1725 to i16, !dbg !271
  %condval_9.sroa.0.0.1.7 = select i1 %cmp595, i16 %v_exchange_half.sroa.82.10.extract.trunc1726, i16 %condval_5.sroa.0.0.1.7, !dbg !271
  %add701.1.7 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.1.7 = or disjoint i32 %add701.1.7, 256, !dbg !272
  %825 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.1.7, !dbg !273
  %xor712.1.7 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.1.7 = xor i32 %xor712.1.7, 8, !dbg !273
  %add.ptr716.1.7 = getelementptr inbounds i8, ptr addrspace(3) %825, i32 %add.ptr716.idx.1.7, !dbg !273
  store i16 %condval_6.sroa.0.0.1.7, ptr addrspace(3) %add.ptr716.1.7, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1.7, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.1.7, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.1.7, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1.7, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.1.7, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.1.7, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.1.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.1.7, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.1.7, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.1.7, align 2, !dbg !274, !tbaa !30
  %condval_2.sroa.5.0.add.ptr580.sroa_idx.7.val2605 = load i16, ptr addrspace(5) %condval_2.sroa.5.0.add.ptr580.sroa_idx.7, align 4, !dbg !84
  %condval_2.sroa.7.0.add.ptr580.sroa_idx.7.val2606 = load i16, ptr addrspace(5) %condval_2.sroa.7.0.add.ptr580.sroa_idx.7, align 4, !dbg !84
  %idxprom645.pn.in.2.7 = or disjoint i32 %idxprom645.pn.in.v, 2, !dbg !276
  %condval_5.sroa.0.0.in.2.7 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.2.7, !dbg !84
  %condval_5.sroa.0.0.2.7 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.2.7, align 4, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.42.4.extract.trunc1604 = trunc i32 %815 to i16, !dbg !268
  %condval_6.sroa.0.0.2.7 = select i1 %cmp595, i16 %condval_2.sroa.5.0.add.ptr580.sroa_idx.7.val2605, i16 %v_exchange_half.sroa.42.4.extract.trunc1604, !dbg !268
  %v_exchange_half.sroa.122.12.extract.trunc1754 = trunc i32 %823 to i16, !dbg !269
  %condval_7.sroa.0.0.2.7 = select i1 %cmp595, i16 %condval_5.sroa.0.0.2.7, i16 %v_exchange_half.sroa.122.12.extract.trunc1754, !dbg !269
  %v_exchange_half.sroa.42.4.extract.trunc1606 = trunc i32 %815 to i16, !dbg !270
  %condval_8.sroa.0.0.2.7 = select i1 %cmp595, i16 %v_exchange_half.sroa.42.4.extract.trunc1606, i16 %condval_2.sroa.7.0.add.ptr580.sroa_idx.7.val2606, !dbg !270
  %v_exchange_half.sroa.122.12.extract.trunc1756 = trunc i32 %823 to i16, !dbg !271
  %condval_9.sroa.0.0.2.7 = select i1 %cmp595, i16 %v_exchange_half.sroa.122.12.extract.trunc1756, i16 %condval_5.sroa.0.0.2.7, !dbg !271
  %add701.2.7 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.2.7 = or disjoint i32 %add701.2.7, 512, !dbg !272
  %826 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.2.7, !dbg !273
  %xor712.2.7 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.2.7 = xor i32 %xor712.2.7, 16, !dbg !273
  %add.ptr716.2.7 = getelementptr inbounds i8, ptr addrspace(3) %826, i32 %add.ptr716.idx.2.7, !dbg !273
  store i16 %condval_6.sroa.0.0.2.7, ptr addrspace(3) %add.ptr716.2.7, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.2.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2.7, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.2.7, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.2.7, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.2.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2.7, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.2.7, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.2.7, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.2.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.2.7, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.2.7, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.2.7, align 2, !dbg !274, !tbaa !30
  %idxprom630.pn.in.3.7.sroa.sel.v = or disjoint i32 %364, 6, !dbg !84
  %idxprom630.pn.in.3.7.sroa.sel = getelementptr inbounds i8, ptr addrspace(5) %v_fetch_words, i32 %idxprom630.pn.in.3.7.sroa.sel.v, !dbg !84
  %condval_4.sroa.0.0.3.7 = load i16, ptr addrspace(5) %idxprom630.pn.in.3.7.sroa.sel, align 2, !dbg !84, !tbaa !275
  %idxprom645.pn.in.3.7 = or disjoint i32 %idxprom645.pn.in.v, 3, !dbg !276
  %condval_5.sroa.0.0.in.3.7 = getelementptr inbounds %struct.__half, ptr addrspace(5) %v_fetch_words, i32 %idxprom645.pn.in.3.7, !dbg !84
  %condval_5.sroa.0.0.3.7 = load i16, ptr addrspace(5) %condval_5.sroa.0.0.in.3.7, align 2, !dbg !84, !tbaa !275
  %v_exchange_half.sroa.42.6.extract.shift1647 = lshr i32 %815, 16, !dbg !268
  %v_exchange_half.sroa.42.6.extract.trunc1648 = trunc nuw i32 %v_exchange_half.sroa.42.6.extract.shift1647 to i16, !dbg !268
  %condval_6.sroa.0.0.3.7 = select i1 %cmp595, i16 %condval_4.sroa.0.0.3.7, i16 %v_exchange_half.sroa.42.6.extract.trunc1648, !dbg !268
  %v_exchange_half.sroa.122.14.extract.shift1797 = lshr i32 %823, 16, !dbg !269
  %v_exchange_half.sroa.122.14.extract.trunc1798 = trunc nuw i32 %v_exchange_half.sroa.122.14.extract.shift1797 to i16, !dbg !269
  %condval_7.sroa.0.0.3.7 = select i1 %cmp595, i16 %condval_5.sroa.0.0.3.7, i16 %v_exchange_half.sroa.122.14.extract.trunc1798, !dbg !269
  %v_exchange_half.sroa.42.6.extract.shift1650 = lshr i32 %815, 16, !dbg !270
  %v_exchange_half.sroa.42.6.extract.trunc1651 = trunc nuw i32 %v_exchange_half.sroa.42.6.extract.shift1650 to i16, !dbg !270
  %condval_8.sroa.0.0.3.7 = select i1 %cmp595, i16 %v_exchange_half.sroa.42.6.extract.trunc1651, i16 %condval_4.sroa.0.0.3.7, !dbg !270
  %v_exchange_half.sroa.122.14.extract.shift1800 = lshr i32 %823, 16, !dbg !271
  %v_exchange_half.sroa.122.14.extract.trunc1801 = trunc nuw i32 %v_exchange_half.sroa.122.14.extract.shift1800 to i16, !dbg !271
  %condval_9.sroa.0.0.3.7 = select i1 %cmp595, i16 %v_exchange_half.sroa.122.14.extract.trunc1801, i16 %condval_5.sroa.0.0.3.7, !dbg !271
  %add701.3.7 = or disjoint i32 %mul700, %mul705, !dbg !272
  %add706.3.7 = or disjoint i32 %add701.3.7, 768, !dbg !272
  %827 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add706.3.7, !dbg !273
  %xor712.3.7 = shl nuw nsw i32 %xor, 3, !dbg !273
  %add.ptr716.idx.3.7 = xor i32 %xor712.3.7, 24, !dbg !273
  %add.ptr716.3.7 = getelementptr inbounds i8, ptr addrspace(3) %827, i32 %add.ptr716.idx.3.7, !dbg !273
  store i16 %condval_6.sroa.0.0.3.7, ptr addrspace(3) %add.ptr716.3.7, align 8, !dbg !274
  %v_column_local.sroa.4.0.add.ptr716.sroa_idx.3.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3.7, i32 2, !dbg !274
  store i16 %condval_7.sroa.0.0.3.7, ptr addrspace(3) %v_column_local.sroa.4.0.add.ptr716.sroa_idx.3.7, align 2, !dbg !274, !tbaa !30
  %v_column_local.sroa.5.0.add.ptr716.sroa_idx.3.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3.7, i32 4, !dbg !274
  store i16 %condval_8.sroa.0.0.3.7, ptr addrspace(3) %v_column_local.sroa.5.0.add.ptr716.sroa_idx.3.7, align 4, !dbg !274
  %v_column_local.sroa.6.0.add.ptr716.sroa_idx.3.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr716.3.7, i32 6, !dbg !274
  store i16 %condval_9.sroa.0.0.3.7, ptr addrspace(3) %v_column_local.sroa.6.0.add.ptr716.sroa_idx.3.7, align 2, !dbg !274, !tbaa !30
  fence syncscope("warp") release, !dbg !277
  tail call void @llvm.mxc.barrier.warp(), !dbg !280
  fence syncscope("warp") acquire, !dbg !281
  %add733.7 = or disjoint i32 %mul726, %mul732, !dbg !282
  %828 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.7, !dbg !283
  %add.ptr743.idx.7 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.7 = getelementptr inbounds i8, ptr addrspace(3) %828, i32 %add.ptr743.idx.7, !dbg !283
  %829 = load <4 x half>, ptr addrspace(3) %add.ptr743.7, align 8, !dbg !284
  %add728.1.7 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.1.7 = or disjoint i32 %add728.1.7, 64, !dbg !282
  %830 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.1.7, !dbg !283
  %xor739.1.7 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.1.7 = xor i32 %xor739.1.7, 8, !dbg !283
  %add.ptr743.1.7 = getelementptr inbounds i8, ptr addrspace(3) %830, i32 %add.ptr743.idx.1.7, !dbg !283
  %831 = load <4 x half>, ptr addrspace(3) %add.ptr743.1.7, align 8, !dbg !284
  %add728.2.7 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.2.7 = or disjoint i32 %add728.2.7, 128, !dbg !282
  %832 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.2.7, !dbg !283
  %xor739.2.7 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.2.7 = xor i32 %xor739.2.7, 16, !dbg !283
  %add.ptr743.2.7 = getelementptr inbounds i8, ptr addrspace(3) %832, i32 %add.ptr743.idx.2.7, !dbg !283
  %833 = load <4 x half>, ptr addrspace(3) %add.ptr743.2.7, align 8, !dbg !284
  %add728.3.7 = or disjoint i32 %mul726, %mul732, !dbg !282
  %add733.3.7 = or disjoint i32 %add728.3.7, 192, !dbg !282
  %834 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add733.3.7, !dbg !283
  %xor739.3.7 = shl nuw nsw i32 %367, 3, !dbg !283
  %add.ptr743.idx.3.7 = xor i32 %xor739.3.7, 24, !dbg !283
  %add.ptr743.3.7 = getelementptr inbounds i8, ptr addrspace(3) %834, i32 %add.ptr743.idx.3.7, !dbg !283
  %835 = load <4 x half>, ptr addrspace(3) %add.ptr743.3.7, align 8, !dbg !284
  %836 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %829, <4 x half> %803, <4 x float> %output_acc.sroa.0.6), !dbg !285
  %837 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %831, <4 x half> %803, <4 x float> %output_acc.sroa.34.6), !dbg !285
  %838 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %833, <4 x half> %803, <4 x float> %output_acc.sroa.66.6), !dbg !285
  %839 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %835, <4 x half> %803, <4 x float> %output_acc.sroa.98.6), !dbg !285
  br label %if.end770.7, !dbg !286

if.end770.7:                                      ; preds = %if.end576.1.7, %if.end770.6
  %bc2575 = phi <4 x half> [ %358, %if.end770.6 ], [ %803, %if.end576.1.7 ], !dbg !84
  %output_acc.sroa.98.7 = phi <4 x float> [ %output_acc.sroa.98.6, %if.end770.6 ], [ %839, %if.end576.1.7 ], !dbg !84
  %output_acc.sroa.66.7 = phi <4 x float> [ %output_acc.sroa.66.6, %if.end770.6 ], [ %838, %if.end576.1.7 ], !dbg !84
  %output_acc.sroa.34.7 = phi <4 x float> [ %output_acc.sroa.34.6, %if.end770.6 ], [ %837, %if.end576.1.7 ], !dbg !84
  %output_acc.sroa.0.7 = phi <4 x float> [ %output_acc.sroa.0.6, %if.end770.6 ], [ %836, %if.end576.1.7 ], !dbg !84
  fence syncscope("warp") release, !dbg !288
  tail call void @llvm.mxc.barrier.warp(), !dbg !291
  fence syncscope("warp") acquire, !dbg !292
  %840 = extractelement <4 x half> %bc2547, i64 0, !dbg !293
  %conv.i.i = fpext half %840 to float, !dbg !294
  %add783 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !299
  %841 = extractelement <4 x half> %bc2547, i64 1, !dbg !293
  %conv.i.i.1 = fpext half %841 to float, !dbg !294
  %add783.1 = fadd contract float %add783, %conv.i.i.1, !dbg !299
  %842 = extractelement <4 x half> %bc2547, i64 2, !dbg !293
  %conv.i.i.2 = fpext half %842 to float, !dbg !294
  %add783.2 = fadd contract float %add783.1, %conv.i.i.2, !dbg !299
  %843 = extractelement <4 x half> %bc2547, i64 3, !dbg !293
  %conv.i.i.3 = fpext half %843 to float, !dbg !294
  %add783.3 = fadd contract float %add783.2, %conv.i.i.3, !dbg !299
  %844 = extractelement <4 x half> %bc2551, i64 0, !dbg !293
  %conv.i.i.4 = fpext half %844 to float, !dbg !294
  %add783.4 = fadd contract float %add783.3, %conv.i.i.4, !dbg !299
  %845 = extractelement <4 x half> %bc2551, i64 1, !dbg !293
  %conv.i.i.5 = fpext half %845 to float, !dbg !294
  %add783.5 = fadd contract float %add783.4, %conv.i.i.5, !dbg !299
  %846 = extractelement <4 x half> %bc2551, i64 2, !dbg !293
  %conv.i.i.6 = fpext half %846 to float, !dbg !294
  %add783.6 = fadd contract float %add783.5, %conv.i.i.6, !dbg !299
  %847 = extractelement <4 x half> %bc2551, i64 3, !dbg !293
  %conv.i.i.7 = fpext half %847 to float, !dbg !294
  %add783.7 = fadd contract float %add783.6, %conv.i.i.7, !dbg !299
  %848 = extractelement <4 x half> %bc2555, i64 0, !dbg !293
  %conv.i.i.8 = fpext half %848 to float, !dbg !294
  %add783.8 = fadd contract float %add783.7, %conv.i.i.8, !dbg !299
  %849 = extractelement <4 x half> %bc2555, i64 1, !dbg !293
  %conv.i.i.9 = fpext half %849 to float, !dbg !294
  %add783.9 = fadd contract float %add783.8, %conv.i.i.9, !dbg !299
  %850 = extractelement <4 x half> %bc2555, i64 2, !dbg !293
  %conv.i.i.10 = fpext half %850 to float, !dbg !294
  %add783.10 = fadd contract float %add783.9, %conv.i.i.10, !dbg !299
  %851 = extractelement <4 x half> %bc2555, i64 3, !dbg !293
  %conv.i.i.11 = fpext half %851 to float, !dbg !294
  %add783.11 = fadd contract float %add783.10, %conv.i.i.11, !dbg !299
  %852 = extractelement <4 x half> %bc2559, i64 0, !dbg !293
  %conv.i.i.12 = fpext half %852 to float, !dbg !294
  %add783.12 = fadd contract float %add783.11, %conv.i.i.12, !dbg !299
  %853 = extractelement <4 x half> %bc2559, i64 1, !dbg !293
  %conv.i.i.13 = fpext half %853 to float, !dbg !294
  %add783.13 = fadd contract float %add783.12, %conv.i.i.13, !dbg !299
  %854 = extractelement <4 x half> %bc2559, i64 2, !dbg !293
  %conv.i.i.14 = fpext half %854 to float, !dbg !294
  %add783.14 = fadd contract float %add783.13, %conv.i.i.14, !dbg !299
  %855 = extractelement <4 x half> %bc2559, i64 3, !dbg !293
  %conv.i.i.15 = fpext half %855 to float, !dbg !294
  %add783.15 = fadd contract float %add783.14, %conv.i.i.15, !dbg !299
  %856 = extractelement <4 x half> %bc2563, i64 0, !dbg !293
  %conv.i.i.16 = fpext half %856 to float, !dbg !294
  %add783.16 = fadd contract float %add783.15, %conv.i.i.16, !dbg !299
  %857 = extractelement <4 x half> %bc2563, i64 1, !dbg !293
  %conv.i.i.17 = fpext half %857 to float, !dbg !294
  %add783.17 = fadd contract float %add783.16, %conv.i.i.17, !dbg !299
  %858 = extractelement <4 x half> %bc2563, i64 2, !dbg !293
  %conv.i.i.18 = fpext half %858 to float, !dbg !294
  %add783.18 = fadd contract float %add783.17, %conv.i.i.18, !dbg !299
  %859 = extractelement <4 x half> %bc2563, i64 3, !dbg !293
  %conv.i.i.19 = fpext half %859 to float, !dbg !294
  %add783.19 = fadd contract float %add783.18, %conv.i.i.19, !dbg !299
  %860 = extractelement <4 x half> %bc2567, i64 0, !dbg !293
  %conv.i.i.20 = fpext half %860 to float, !dbg !294
  %add783.20 = fadd contract float %add783.19, %conv.i.i.20, !dbg !299
  %861 = extractelement <4 x half> %bc2567, i64 1, !dbg !293
  %conv.i.i.21 = fpext half %861 to float, !dbg !294
  %add783.21 = fadd contract float %add783.20, %conv.i.i.21, !dbg !299
  %862 = extractelement <4 x half> %bc2567, i64 2, !dbg !293
  %conv.i.i.22 = fpext half %862 to float, !dbg !294
  %add783.22 = fadd contract float %add783.21, %conv.i.i.22, !dbg !299
  %863 = extractelement <4 x half> %bc2567, i64 3, !dbg !293
  %conv.i.i.23 = fpext half %863 to float, !dbg !294
  %add783.23 = fadd contract float %add783.22, %conv.i.i.23, !dbg !299
  %864 = extractelement <4 x half> %bc2571, i64 0, !dbg !293
  %conv.i.i.24 = fpext half %864 to float, !dbg !294
  %add783.24 = fadd contract float %add783.23, %conv.i.i.24, !dbg !299
  %865 = extractelement <4 x half> %bc2571, i64 1, !dbg !293
  %conv.i.i.25 = fpext half %865 to float, !dbg !294
  %add783.25 = fadd contract float %add783.24, %conv.i.i.25, !dbg !299
  %866 = extractelement <4 x half> %bc2571, i64 2, !dbg !293
  %conv.i.i.26 = fpext half %866 to float, !dbg !294
  %add783.26 = fadd contract float %add783.25, %conv.i.i.26, !dbg !299
  %867 = extractelement <4 x half> %bc2571, i64 3, !dbg !293
  %conv.i.i.27 = fpext half %867 to float, !dbg !294
  %add783.27 = fadd contract float %add783.26, %conv.i.i.27, !dbg !299
  %868 = extractelement <4 x half> %bc2575, i64 0, !dbg !293
  %conv.i.i.28 = fpext half %868 to float, !dbg !294
  %add783.28 = fadd contract float %add783.27, %conv.i.i.28, !dbg !299
  %869 = extractelement <4 x half> %bc2575, i64 1, !dbg !293
  %conv.i.i.29 = fpext half %869 to float, !dbg !294
  %add783.29 = fadd contract float %add783.28, %conv.i.i.29, !dbg !299
  %870 = extractelement <4 x half> %bc2575, i64 2, !dbg !293
  %conv.i.i.30 = fpext half %870 to float, !dbg !294
  %add783.30 = fadd contract float %add783.29, %conv.i.i.30, !dbg !299
  %871 = extractelement <4 x half> %bc2575, i64 3, !dbg !293
  %conv.i.i.31 = fpext half %871 to float, !dbg !294
  %add783.31 = fadd contract float %add783.30, %conv.i.i.31, !dbg !299
  %872 = bitcast float %add783.31 to i32, !dbg !300
  %873 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !302
  %874 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %873) #13, !dbg !305
  %xor.i.i1150 = xor i32 %874, 32, !dbg !306
  %875 = and i32 %874, -64, !dbg !307
  %and.i.i1151 = add nsw i32 %875, 64, !dbg !307
  %cmp.not.i.i1152 = icmp slt i32 %xor.i.i1150, %and.i.i1151, !dbg !308
  %cond.i.i1153 = select i1 %cmp.not.i.i1152, i32 %xor.i.i1150, i32 %874, !dbg !309
  %shl.i.i1154 = shl i32 %cond.i.i1153, 2, !dbg !310
  %876 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1154, i32 %872), !dbg !311
  %877 = bitcast i32 %876 to float, !dbg !312
  %add791 = fadd contract float %add783.31, %877, !dbg !313
  %878 = bitcast float %add791 to i32, !dbg !314
  %879 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #13, !dbg !316
  %880 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %879) #13, !dbg !319
  %xor.i.i1155 = xor i32 %880, 16, !dbg !320
  %881 = and i32 %880, -64, !dbg !321
  %and.i.i1156 = add nsw i32 %881, 64, !dbg !321
  %cmp.not.i.i1157 = icmp slt i32 %xor.i.i1155, %and.i.i1156, !dbg !322
  %cond.i.i1158 = select i1 %cmp.not.i.i1157, i32 %xor.i.i1155, i32 %880, !dbg !323
  %shl.i.i1159 = shl i32 %cond.i.i1158, 2, !dbg !324
  %882 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i1159, i32 %878), !dbg !325
  %883 = bitcast i32 %882 to float, !dbg !326
  %add796 = fadd contract float %add791, %883, !dbg !327
  %output_acc.sroa.0.0.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 0, !dbg !328
  %div = fdiv contract float %output_acc.sroa.0.0.vec.extract, %add796, !dbg !329
  %output_acc.sroa.0.4.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 1, !dbg !328
  %div.1 = fdiv contract float %output_acc.sroa.0.4.vec.extract, %add796, !dbg !329
  %output_acc.sroa.0.8.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 2, !dbg !328
  %div.2 = fdiv contract float %output_acc.sroa.0.8.vec.extract, %add796, !dbg !329
  %output_acc.sroa.0.12.vec.extract = extractelement <4 x float> %output_acc.sroa.0.7, i64 3, !dbg !328
  %div.3 = fdiv contract float %output_acc.sroa.0.12.vec.extract, %add796, !dbg !329
  %output_acc.sroa.34.16.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 0, !dbg !328
  %div.4 = fdiv contract float %output_acc.sroa.34.16.vec.extract, %add796, !dbg !329
  %output_acc.sroa.34.20.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 1, !dbg !328
  %div.5 = fdiv contract float %output_acc.sroa.34.20.vec.extract, %add796, !dbg !329
  %output_acc.sroa.34.24.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 2, !dbg !328
  %div.6 = fdiv contract float %output_acc.sroa.34.24.vec.extract, %add796, !dbg !329
  %output_acc.sroa.34.28.vec.extract = extractelement <4 x float> %output_acc.sroa.34.7, i64 3, !dbg !328
  %div.7 = fdiv contract float %output_acc.sroa.34.28.vec.extract, %add796, !dbg !329
  %output_acc.sroa.66.32.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 0, !dbg !328
  %div.8 = fdiv contract float %output_acc.sroa.66.32.vec.extract, %add796, !dbg !329
  %output_acc.sroa.66.36.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 1, !dbg !328
  %div.9 = fdiv contract float %output_acc.sroa.66.36.vec.extract, %add796, !dbg !329
  %output_acc.sroa.66.40.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 2, !dbg !328
  %div.10 = fdiv contract float %output_acc.sroa.66.40.vec.extract, %add796, !dbg !329
  %output_acc.sroa.66.44.vec.extract = extractelement <4 x float> %output_acc.sroa.66.7, i64 3, !dbg !328
  %div.11 = fdiv contract float %output_acc.sroa.66.44.vec.extract, %add796, !dbg !329
  %output_acc.sroa.98.48.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 0, !dbg !328
  %div.12 = fdiv contract float %output_acc.sroa.98.48.vec.extract, %add796, !dbg !329
  %output_acc.sroa.98.52.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 1, !dbg !328
  %div.13 = fdiv contract float %output_acc.sroa.98.52.vec.extract, %add796, !dbg !329
  %output_acc.sroa.98.56.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 2, !dbg !328
  %div.14 = fdiv contract float %output_acc.sroa.98.56.vec.extract, %add796, !dbg !329
  %output_acc.sroa.98.60.vec.extract = extractelement <4 x float> %output_acc.sroa.98.7, i64 3, !dbg !328
  %div.15 = fdiv contract float %output_acc.sroa.98.60.vec.extract, %add796, !dbg !329
  %and842 = and i32 %2, 7
  %884 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !330
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !330, !noalias !334
  %885 = fptrunc float %div to half, !dbg !330
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %884), !dbg !330, !noalias !334
  %886 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !339
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !339, !noalias !334
  %887 = fptrunc float %div.1 to half, !dbg !339
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %886), !dbg !339, !noalias !334
  %888 = bitcast half %885 to i16, !dbg !341
  %889 = bitcast half %887 to i16, !dbg !344
  %890 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !345
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !345, !noalias !349
  %891 = fptrunc float %div.2 to half, !dbg !345
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %890), !dbg !345, !noalias !349
  %892 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !354
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !354, !noalias !349
  %893 = fptrunc float %div.3 to half, !dbg !354
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %892), !dbg !354, !noalias !349
  %894 = bitcast half %891 to i16, !dbg !356
  %895 = bitcast half %893 to i16, !dbg !358
  %__9.sroa.6.0.insert.ext = zext i16 %895 to i64, !dbg !359
  %__9.sroa.6.0.insert.shift = shl nuw i64 %__9.sroa.6.0.insert.ext, 48, !dbg !359
  %__9.sroa.5.0.insert.ext = zext i16 %894 to i64, !dbg !359
  %__9.sroa.5.0.insert.shift = shl nuw nsw i64 %__9.sroa.5.0.insert.ext, 32, !dbg !359
  %__9.sroa.5.0.insert.insert = or disjoint i64 %__9.sroa.6.0.insert.shift, %__9.sroa.5.0.insert.shift, !dbg !359
  %__9.sroa.4.0.insert.ext = zext i16 %889 to i64, !dbg !359
  %__9.sroa.4.0.insert.shift = shl nuw nsw i64 %__9.sroa.4.0.insert.ext, 16, !dbg !359
  %__9.sroa.4.0.insert.insert = or disjoint i64 %__9.sroa.5.0.insert.insert, %__9.sroa.4.0.insert.shift, !dbg !359
  %__9.sroa.0.0.insert.ext = zext i16 %888 to i64, !dbg !359
  %__9.sroa.0.0.insert.insert = or disjoint i64 %__9.sroa.4.0.insert.insert, %__9.sroa.0.0.insert.ext, !dbg !359
  %xor843 = xor i32 %shr71, %and842, !dbg !360
  %mul844 = shl nuw nsw i32 %xor843, 3, !dbg !361
  %add845 = add nuw nsw i32 %mul844, %mul53, !dbg !362
  %add850 = or disjoint i32 %add845, %mul81, !dbg !363
  %add.ptr852 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add850, !dbg !364
  store i64 %__9.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr852, align 8, !dbg !365
  %896 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !330
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !330, !noalias !334
  %897 = fptrunc float %div.4 to half, !dbg !330
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %896), !dbg !330, !noalias !334
  %898 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !339
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !339, !noalias !334
  %899 = fptrunc float %div.5 to half, !dbg !339
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %898), !dbg !339, !noalias !334
  %900 = bitcast half %897 to i16, !dbg !341
  %901 = bitcast half %899 to i16, !dbg !344
  %902 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !345
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !345, !noalias !349
  %903 = fptrunc float %div.6 to half, !dbg !345
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %902), !dbg !345, !noalias !349
  %904 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !354
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !354, !noalias !349
  %905 = fptrunc float %div.7 to half, !dbg !354
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %904), !dbg !354, !noalias !349
  %906 = bitcast half %903 to i16, !dbg !356
  %907 = bitcast half %905 to i16, !dbg !358
  %__9.sroa.6.0.insert.ext.1 = zext i16 %907 to i64, !dbg !359
  %__9.sroa.6.0.insert.shift.1 = shl nuw i64 %__9.sroa.6.0.insert.ext.1, 48, !dbg !359
  %__9.sroa.5.0.insert.ext.1 = zext i16 %906 to i64, !dbg !359
  %__9.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__9.sroa.5.0.insert.ext.1, 32, !dbg !359
  %__9.sroa.5.0.insert.insert.1 = or disjoint i64 %__9.sroa.6.0.insert.shift.1, %__9.sroa.5.0.insert.shift.1, !dbg !359
  %__9.sroa.4.0.insert.ext.1 = zext i16 %901 to i64, !dbg !359
  %__9.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__9.sroa.4.0.insert.ext.1, 16, !dbg !359
  %__9.sroa.4.0.insert.insert.1 = or disjoint i64 %__9.sroa.5.0.insert.insert.1, %__9.sroa.4.0.insert.shift.1, !dbg !359
  %__9.sroa.0.0.insert.ext.1 = zext i16 %900 to i64, !dbg !359
  %__9.sroa.0.0.insert.insert.1 = or disjoint i64 %__9.sroa.4.0.insert.insert.1, %__9.sroa.0.0.insert.ext.1, !dbg !359
  %add840.1 = add nuw nsw i32 %shr71, 2, !dbg !366
  %xor843.1 = xor i32 %add840.1, %and842, !dbg !360
  %mul844.1 = shl nuw nsw i32 %xor843.1, 3, !dbg !361
  %add845.1 = add nuw nsw i32 %mul844.1, %mul53, !dbg !362
  %add850.1 = or disjoint i32 %add845.1, %mul81, !dbg !363
  %add.ptr852.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add850.1, !dbg !364
  store i64 %__9.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr852.1, align 8, !dbg !365
  %908 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !330
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !330, !noalias !334
  %909 = fptrunc float %div.8 to half, !dbg !330
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %908), !dbg !330, !noalias !334
  %910 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !339
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !339, !noalias !334
  %911 = fptrunc float %div.9 to half, !dbg !339
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %910), !dbg !339, !noalias !334
  %912 = bitcast half %909 to i16, !dbg !341
  %913 = bitcast half %911 to i16, !dbg !344
  %914 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !345
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !345, !noalias !349
  %915 = fptrunc float %div.10 to half, !dbg !345
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %914), !dbg !345, !noalias !349
  %916 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !354
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !354, !noalias !349
  %917 = fptrunc float %div.11 to half, !dbg !354
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %916), !dbg !354, !noalias !349
  %918 = bitcast half %915 to i16, !dbg !356
  %919 = bitcast half %917 to i16, !dbg !358
  %__9.sroa.6.0.insert.ext.2 = zext i16 %919 to i64, !dbg !359
  %__9.sroa.6.0.insert.shift.2 = shl nuw i64 %__9.sroa.6.0.insert.ext.2, 48, !dbg !359
  %__9.sroa.5.0.insert.ext.2 = zext i16 %918 to i64, !dbg !359
  %__9.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__9.sroa.5.0.insert.ext.2, 32, !dbg !359
  %__9.sroa.5.0.insert.insert.2 = or disjoint i64 %__9.sroa.6.0.insert.shift.2, %__9.sroa.5.0.insert.shift.2, !dbg !359
  %__9.sroa.4.0.insert.ext.2 = zext i16 %913 to i64, !dbg !359
  %__9.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__9.sroa.4.0.insert.ext.2, 16, !dbg !359
  %__9.sroa.4.0.insert.insert.2 = or disjoint i64 %__9.sroa.5.0.insert.insert.2, %__9.sroa.4.0.insert.shift.2, !dbg !359
  %__9.sroa.0.0.insert.ext.2 = zext i16 %912 to i64, !dbg !359
  %__9.sroa.0.0.insert.insert.2 = or disjoint i64 %__9.sroa.4.0.insert.insert.2, %__9.sroa.0.0.insert.ext.2, !dbg !359
  %add840.2 = add nuw nsw i32 %shr71, 4, !dbg !366
  %xor843.2 = xor i32 %add840.2, %and842, !dbg !360
  %mul844.2 = shl nuw nsw i32 %xor843.2, 3, !dbg !361
  %add845.2 = add nuw nsw i32 %mul844.2, %mul53, !dbg !362
  %add850.2 = or disjoint i32 %add845.2, %mul81, !dbg !363
  %add.ptr852.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add850.2, !dbg !364
  store i64 %__9.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr852.2, align 8, !dbg !365
  %920 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !330
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !330, !noalias !334
  %921 = fptrunc float %div.12 to half, !dbg !330
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %920), !dbg !330, !noalias !334
  %922 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !339
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !339, !noalias !334
  %923 = fptrunc float %div.13 to half, !dbg !339
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %922), !dbg !339, !noalias !334
  %924 = bitcast half %921 to i16, !dbg !341
  %925 = bitcast half %923 to i16, !dbg !344
  %926 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !345
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !345, !noalias !349
  %927 = fptrunc float %div.14 to half, !dbg !345
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %926), !dbg !345, !noalias !349
  %928 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !354
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !354, !noalias !349
  %929 = fptrunc float %div.15 to half, !dbg !354
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %928), !dbg !354, !noalias !349
  %930 = bitcast half %927 to i16, !dbg !356
  %931 = bitcast half %929 to i16, !dbg !358
  %__9.sroa.6.0.insert.ext.3 = zext i16 %931 to i64, !dbg !359
  %__9.sroa.6.0.insert.shift.3 = shl nuw i64 %__9.sroa.6.0.insert.ext.3, 48, !dbg !359
  %__9.sroa.5.0.insert.ext.3 = zext i16 %930 to i64, !dbg !359
  %__9.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__9.sroa.5.0.insert.ext.3, 32, !dbg !359
  %__9.sroa.5.0.insert.insert.3 = or disjoint i64 %__9.sroa.6.0.insert.shift.3, %__9.sroa.5.0.insert.shift.3, !dbg !359
  %__9.sroa.4.0.insert.ext.3 = zext i16 %925 to i64, !dbg !359
  %__9.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__9.sroa.4.0.insert.ext.3, 16, !dbg !359
  %__9.sroa.4.0.insert.insert.3 = or disjoint i64 %__9.sroa.5.0.insert.insert.3, %__9.sroa.4.0.insert.shift.3, !dbg !359
  %__9.sroa.0.0.insert.ext.3 = zext i16 %924 to i64, !dbg !359
  %__9.sroa.0.0.insert.insert.3 = or disjoint i64 %__9.sroa.4.0.insert.insert.3, %__9.sroa.0.0.insert.ext.3, !dbg !359
  %add840.3 = add nuw nsw i32 %shr71, 6, !dbg !366
  %xor843.3 = xor i32 %add840.3, %and842, !dbg !360
  %mul844.3 = shl nuw nsw i32 %xor843.3, 3, !dbg !361
  %add845.3 = add nuw nsw i32 %mul844.3, %mul53, !dbg !362
  %add850.3 = or disjoint i32 %add845.3, %mul81, !dbg !363
  %add.ptr852.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %add850.3, !dbg !364
  store i64 %__9.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr852.3, align 8, !dbg !365
  fence syncscope("warp") release, !dbg !367
  tail call void @llvm.mxc.barrier.warp(), !dbg !370
  fence syncscope("warp") acquire, !dbg !371
  %call867.masked = and i32 %2, 1016
  %mul870 = xor i32 %361, %call867.masked
  %invariant.gep = getelementptr inbounds %struct.__half, ptr addrspace(3) @buf_dyn_shmem, i32 %mul15, !dbg !372
  %invariant.gep1215 = getelementptr inbounds %struct.__half, ptr addrspace(3) %invariant.gep, i32 %mul870, !dbg !372
  %add.ptr885 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %3, !dbg !373
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr885, ptr addrspace(3) noundef align 16 dereferenceable(16) %invariant.gep1215, i64 16, i1 false), !dbg !374, !tbaa.struct !51, !call_argsrelate !375
  %gep1216.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep1215, i32 1024, !dbg !376
  %add.ptr885.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %7, !dbg !373
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr885.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %gep1216.1, i64 16, i1 false), !dbg !374, !tbaa.struct !51, !call_argsrelate !375
  call void @llvm.lifetime.end.p5(i64 32, ptr addrspace(5) %v_fetch_words) #12, !dbg !377
  ret void, !dbg !377
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v043_codex_power_s8_v_uint4_fetch_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v043_codex_power_s8_v_uint4_fetch_sc-16g-2/codegen/case12.device.cpp", directory: "/root/tilelang-metax")
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
!254 = !DILocation(line: 162, column: 62, scope: !40)
!255 = !DILocation(line: 162, column: 44, scope: !40)
!256 = !DILocation(line: 171, column: 37, scope: !104, inlinedAt: !257)
!257 = distinct !DILocation(line: 990, column: 14, scope: !106, inlinedAt: !258)
!258 = distinct !DILocation(line: 1006, column: 11, scope: !259, inlinedAt: !260)
!259 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !57, file: !57, line: 996, type: !7, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!260 = distinct !DILocation(line: 175, column: 65, scope: !40)
!261 = !DILocation(line: 171, column: 10, scope: !104, inlinedAt: !257)
!262 = !DILocation(line: 991, column: 20, scope: !106, inlinedAt: !258)
!263 = !DILocation(line: 992, column: 36, scope: !106, inlinedAt: !258)
!264 = !DILocation(line: 992, column: 17, scope: !106, inlinedAt: !258)
!265 = !DILocation(line: 992, column: 11, scope: !106, inlinedAt: !258)
!266 = !DILocation(line: 993, column: 43, scope: !106, inlinedAt: !258)
!267 = !DILocation(line: 993, column: 10, scope: !106, inlinedAt: !258)
!268 = !DILocation(line: 195, column: 13, scope: !40)
!269 = !DILocation(line: 202, column: 13, scope: !40)
!270 = !DILocation(line: 209, column: 13, scope: !40)
!271 = !DILocation(line: 216, column: 13, scope: !40)
!272 = !DILocation(line: 222, column: 101, scope: !40)
!273 = !DILocation(line: 222, column: 44, scope: !40)
!274 = !DILocation(line: 222, column: 229, scope: !40)
!275 = !{!26, !26, i64 0}
!276 = !DILocation(line: 188, column: 13, scope: !40)
!277 = !DILocation(line: 68, column: 3, scope: !56, inlinedAt: !278)
!278 = distinct !DILocation(line: 192, column: 3, scope: !59, inlinedAt: !279)
!279 = distinct !DILocation(line: 224, column: 7, scope: !40)
!280 = !DILocation(line: 69, column: 3, scope: !56, inlinedAt: !278)
!281 = !DILocation(line: 70, column: 3, scope: !56, inlinedAt: !278)
!282 = !DILocation(line: 227, column: 139, scope: !40)
!283 = !DILocation(line: 227, column: 83, scope: !40)
!284 = !DILocation(line: 227, column: 46, scope: !40)
!285 = !DILocation(line: 232, column: 47, scope: !40)
!286 = !DILocation(line: 130, column: 44, scope: !40)
!287 = !DILocation(line: 581, column: 31, scope: !208, inlinedAt: !209)
!288 = !DILocation(line: 68, column: 3, scope: !56, inlinedAt: !289)
!289 = distinct !DILocation(line: 192, column: 3, scope: !59, inlinedAt: !290)
!290 = distinct !DILocation(line: 239, column: 3, scope: !40)
!291 = !DILocation(line: 69, column: 3, scope: !56, inlinedAt: !289)
!292 = !DILocation(line: 70, column: 3, scope: !56, inlinedAt: !289)
!293 = !DILocation(line: 243, column: 44, scope: !40)
!294 = !DILocation(line: 1082, column: 16, scope: !295, inlinedAt: !296)
!295 = distinct !DISubprogram(name: "__half2float", scope: !160, file: !160, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!296 = distinct !DILocation(line: 136, column: 55, scope: !297, inlinedAt: !298)
!297 = distinct !DISubprogram(name: "operator float", scope: !160, file: !160, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!298 = distinct !DILocation(line: 243, column: 44, scope: !40)
!299 = !DILocation(line: 243, column: 34, scope: !40)
!300 = !DILocation(line: 1018, column: 9, scope: !101, inlinedAt: !301)
!301 = distinct !DILocation(line: 245, column: 34, scope: !40)
!302 = !DILocation(line: 171, column: 37, scope: !104, inlinedAt: !303)
!303 = distinct !DILocation(line: 990, column: 14, scope: !106, inlinedAt: !304)
!304 = distinct !DILocation(line: 1019, column: 11, scope: !101, inlinedAt: !301)
!305 = !DILocation(line: 171, column: 10, scope: !104, inlinedAt: !303)
!306 = !DILocation(line: 991, column: 20, scope: !106, inlinedAt: !304)
!307 = !DILocation(line: 992, column: 36, scope: !106, inlinedAt: !304)
!308 = !DILocation(line: 992, column: 17, scope: !106, inlinedAt: !304)
!309 = !DILocation(line: 992, column: 11, scope: !106, inlinedAt: !304)
!310 = !DILocation(line: 993, column: 43, scope: !106, inlinedAt: !304)
!311 = !DILocation(line: 993, column: 10, scope: !106, inlinedAt: !304)
!312 = !DILocation(line: 1020, column: 14, scope: !101, inlinedAt: !301)
!313 = !DILocation(line: 245, column: 32, scope: !40)
!314 = !DILocation(line: 1018, column: 9, scope: !101, inlinedAt: !315)
!315 = distinct !DILocation(line: 246, column: 34, scope: !40)
!316 = !DILocation(line: 171, column: 37, scope: !104, inlinedAt: !317)
!317 = distinct !DILocation(line: 990, column: 14, scope: !106, inlinedAt: !318)
!318 = distinct !DILocation(line: 1019, column: 11, scope: !101, inlinedAt: !315)
!319 = !DILocation(line: 171, column: 10, scope: !104, inlinedAt: !317)
!320 = !DILocation(line: 991, column: 20, scope: !106, inlinedAt: !318)
!321 = !DILocation(line: 992, column: 36, scope: !106, inlinedAt: !318)
!322 = !DILocation(line: 992, column: 17, scope: !106, inlinedAt: !318)
!323 = !DILocation(line: 992, column: 11, scope: !106, inlinedAt: !318)
!324 = !DILocation(line: 993, column: 43, scope: !106, inlinedAt: !318)
!325 = !DILocation(line: 993, column: 10, scope: !106, inlinedAt: !318)
!326 = !DILocation(line: 1020, column: 14, scope: !101, inlinedAt: !315)
!327 = !DILocation(line: 246, column: 32, scope: !40)
!328 = !DILocation(line: 250, column: 24, scope: !40)
!329 = !DILocation(line: 250, column: 40, scope: !40)
!330 = !DILocation(line: 1007, column: 10, scope: !159, inlinedAt: !331)
!331 = distinct !DILocation(line: 1077, column: 18, scope: !162, inlinedAt: !332)
!332 = distinct !DILocation(line: 1295, column: 23, scope: !164, inlinedAt: !333)
!333 = distinct !DILocation(line: 256, column: 27, scope: !40)
!334 = !{!335, !337}
!335 = distinct !{!335, !336, !"_ZL17__floats2half2_rnff: %agg.result"}
!336 = distinct !{!336, !"_ZL17__floats2half2_rnff"}
!337 = distinct !{!337, !338, !"_ZL17__float22half2_rn6float2: %agg.result"}
!338 = distinct !{!338, !"_ZL17__float22half2_rn6float2"}
!339 = !DILocation(line: 1007, column: 10, scope: !159, inlinedAt: !340)
!340 = distinct !DILocation(line: 1077, column: 38, scope: !162, inlinedAt: !332)
!341 = !DILocation(line: 596, column: 67, scope: !342, inlinedAt: !343)
!342 = distinct !DISubprogram(name: "__half2", scope: !160, file: !160, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!343 = distinct !DILocation(line: 1077, column: 10, scope: !162, inlinedAt: !332)
!344 = !DILocation(line: 596, column: 73, scope: !342, inlinedAt: !343)
!345 = !DILocation(line: 1007, column: 10, scope: !159, inlinedAt: !346)
!346 = distinct !DILocation(line: 1077, column: 18, scope: !162, inlinedAt: !347)
!347 = distinct !DILocation(line: 1295, column: 23, scope: !164, inlinedAt: !348)
!348 = distinct !DILocation(line: 257, column: 27, scope: !40)
!349 = !{!350, !352}
!350 = distinct !{!350, !351, !"_ZL17__floats2half2_rnff: %agg.result"}
!351 = distinct !{!351, !"_ZL17__floats2half2_rnff"}
!352 = distinct !{!352, !353, !"_ZL17__float22half2_rn6float2: %agg.result"}
!353 = distinct !{!353, !"_ZL17__float22half2_rn6float2"}
!354 = !DILocation(line: 1007, column: 10, scope: !159, inlinedAt: !355)
!355 = distinct !DILocation(line: 1077, column: 38, scope: !162, inlinedAt: !347)
!356 = !DILocation(line: 596, column: 67, scope: !342, inlinedAt: !357)
!357 = distinct !DILocation(line: 1077, column: 10, scope: !162, inlinedAt: !347)
!358 = !DILocation(line: 596, column: 73, scope: !342, inlinedAt: !357)
!359 = !DILocation(line: 258, column: 45, scope: !40)
!360 = !DILocation(line: 259, column: 121, scope: !40)
!361 = !DILocation(line: 259, column: 149, scope: !40)
!362 = !DILocation(line: 259, column: 77, scope: !40)
!363 = !DILocation(line: 259, column: 155, scope: !40)
!364 = !DILocation(line: 259, column: 40, scope: !40)
!365 = !DILocation(line: 259, column: 198, scope: !40)
!366 = !DILocation(line: 259, column: 92, scope: !40)
!367 = !DILocation(line: 68, column: 3, scope: !56, inlinedAt: !368)
!368 = distinct !DILocation(line: 192, column: 3, scope: !59, inlinedAt: !369)
!369 = distinct !DILocation(line: 261, column: 3, scope: !40)
!370 = !DILocation(line: 69, column: 3, scope: !56, inlinedAt: !368)
!371 = !DILocation(line: 70, column: 3, scope: !56, inlinedAt: !368)
!372 = !DILocation(line: 263, column: 8, scope: !40)
!373 = !DILocation(line: 264, column: 22, scope: !40)
!374 = !DILocation(line: 264, column: 131, scope: !40)
!375 = !{i32 2, i32 -1, i32 -1, i32 -1}
!376 = !DILocation(line: 264, column: 168, scope: !40)
!377 = !DILocation(line: 266, column: 1, scope: !40)
