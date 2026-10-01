; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v049_codex_power_s1_cache_entry_sc-16g-2/case6.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v049_codex_power_s1_cache_entry_sc-16g-2/codegen/case6.device.cpp"
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
  br i1 %or.cond, label %for.body611.preheader, label %for.cond.preheader, !dbg !54

for.body611.preheader:                            ; preds = %entry
  %.pre = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  %.pre2009 = shl nuw nsw i32 %.pre, 7
  %.pre2010 = lshr i32 %.pre, 5
  %.pre2011 = and i32 %.pre, 7
  %.pre2012 = lshr i32 %.pre, 2
  %.pre2014 = and i32 %.pre2012, 4
  %.pre2015 = xor i32 %.pre2010, %.pre2011, !dbg !56
  %.pre2016 = add nuw nsw i32 %.pre2010, 2, !dbg !57
  %.pre2017 = xor i32 %.pre2016, %.pre2011, !dbg !56
  %.pre2018 = add nuw nsw i32 %.pre2010, 4, !dbg !57
  %.pre2019 = xor i32 %.pre2018, %.pre2011, !dbg !56
  %.pre2020 = add nuw nsw i32 %.pre2010, 6, !dbg !57
  %.pre2021 = xor i32 %.pre2020, %.pre2011, !dbg !56
  %.pre2022 = shl nuw nsw i32 %.pre, 3
  %.pre2024 = lshr i32 %.pre, 4
  %.pre2025 = shl nsw i32 %0, 21
  %.pre2026 = shl nsw i32 %1, 11
  %.pre2027 = add nuw nsw i32 %.pre2025, %.pre2026
  %.pre2028 = add nuw nsw i32 %.pre2027, %.pre2022
  %.pre2029 = zext nneg i32 %.pre2028 to i64, !dbg !58
  %.pre2031 = add nuw nsw i32 %.pre2024, 4, !dbg !59
  %.pre2032 = add nuw nsw i64 %.pre2029, 512, !dbg !60
  %.pre2034 = add nuw nsw i64 %.pre2029, 1024, !dbg !60
  %.pre2036 = add nuw nsw i64 %.pre2029, 1536, !dbg !60
  br label %if.end621, !dbg !61

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
  %add82 = add nuw nsw i32 %mul7, %shr35
  %24 = and i32 %3, 8
  %conv = zext nneg i32 %0 to i64
  %mul88 = shl nuw nsw i64 %conv, 17
  %conv92 = zext nneg i32 %mul7 to i64
  %.idx = shl nuw nsw i64 %conv92, 8
  %invariant.gep946 = getelementptr inbounds i8, ptr addrspace(4) %K.coerce, i64 %.idx, !dbg !89
  %mul97 = zext nneg i32 %mul20 to i64
  %invariant.gep948 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep946, i64 %mul97, !dbg !89
  %cmp85 = icmp ult i32 %add82, 1024, !dbg !90
  br i1 %cmp85, label %if.then86, label %if.end, !dbg !91

if.then86:                                        ; preds = %for.cond.preheader
  %gep949 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep948, i64 %mul88
  %condval.sroa.7.0.add.ptr99.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep949, i64 12
  %condval.sroa.6.0.add.ptr99.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep949, i64 8
  %condval.sroa.5.0.add.ptr99.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep949, i64 4
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep949, align 16, !dbg !92, !tbaa !30
  %condval.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr99.sroa_idx, align 4, !dbg !92, !tbaa !30
  %condval.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr99.sroa_idx, align 8, !dbg !92, !tbaa !30
  %condval.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr99.sroa_idx, align 4, !dbg !92, !tbaa !30
  br label %if.end, !dbg !93

if.end:                                           ; preds = %for.cond.preheader, %if.then86
  %condval.sroa.0.0 = phi i32 [ %condval.sroa.0.0.copyload, %if.then86 ], [ 0, %for.cond.preheader ], !dbg !94
  %condval.sroa.5.0 = phi i32 [ %condval.sroa.5.0.copyload, %if.then86 ], [ 0, %for.cond.preheader ], !dbg !94
  %condval.sroa.6.0 = phi i32 [ %condval.sroa.6.0.copyload, %if.then86 ], [ 0, %for.cond.preheader ], !dbg !94
  %condval.sroa.7.0 = phi i32 [ %condval.sroa.7.0.copyload, %if.then86 ], [ 0, %for.cond.preheader ], !dbg !94
  %25 = shl nuw nsw i32 %24, 9, !dbg !95
  %gep944 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %25, !dbg !95
  %add.ptr140 = getelementptr inbounds i8, ptr addrspace(3) %gep944, i32 %add.ptr40.idx, !dbg !95
  store i32 %condval.sroa.0.0, ptr addrspace(3) %add.ptr140, align 16, !dbg !96, !tbaa !30
  %condval.sroa.5.0.add.ptr140.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140, i32 4, !dbg !96
  store i32 %condval.sroa.5.0, ptr addrspace(3) %condval.sroa.5.0.add.ptr140.sroa_idx, align 4, !dbg !96, !tbaa !30
  %condval.sroa.6.0.add.ptr140.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140, i32 8, !dbg !96
  store i32 %condval.sroa.6.0, ptr addrspace(3) %condval.sroa.6.0.add.ptr140.sroa_idx, align 8, !dbg !96, !tbaa !30
  %condval.sroa.7.0.add.ptr140.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140, i32 12, !dbg !96
  store i32 %condval.sroa.7.0, ptr addrspace(3) %condval.sroa.7.0.add.ptr140.sroa_idx, align 4, !dbg !96, !tbaa !30
  %cmp85.1 = icmp ult i32 %add82, 1020, !dbg !90
  br i1 %cmp85.1, label %if.then86.1, label %if.end.1, !dbg !91

if.then86.1:                                      ; preds = %if.end
  %add91.1 = or disjoint i64 %mul88, 512
  %gep949.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep948, i64 %add91.1
  %condval.sroa.7.0.add.ptr99.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep949.1, i64 12
  %condval.sroa.6.0.add.ptr99.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep949.1, i64 8
  %condval.sroa.5.0.add.ptr99.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep949.1, i64 4
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep949.1, align 16, !dbg !92, !tbaa !30
  %condval.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr99.sroa_idx.1, align 4, !dbg !92, !tbaa !30
  %condval.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr99.sroa_idx.1, align 8, !dbg !92, !tbaa !30
  %condval.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr99.sroa_idx.1, align 4, !dbg !92, !tbaa !30
  br label %if.end.1, !dbg !93

if.end.1:                                         ; preds = %if.then86.1, %if.end
  %condval.sroa.0.0.1 = phi i32 [ %condval.sroa.0.0.copyload.1, %if.then86.1 ], [ 0, %if.end ], !dbg !94
  %condval.sroa.5.0.1 = phi i32 [ %condval.sroa.5.0.copyload.1, %if.then86.1 ], [ 0, %if.end ], !dbg !94
  %condval.sroa.6.0.1 = phi i32 [ %condval.sroa.6.0.copyload.1, %if.then86.1 ], [ 0, %if.end ], !dbg !94
  %condval.sroa.7.0.1 = phi i32 [ %condval.sroa.7.0.copyload.1, %if.then86.1 ], [ 0, %if.end ], !dbg !94
  %26 = shl nuw nsw i32 %24, 9, !dbg !95
  %27 = or disjoint i32 %26, 512, !dbg !95
  %gep944.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %27, !dbg !95
  %add.ptr140.1 = getelementptr inbounds i8, ptr addrspace(3) %gep944.1, i32 %add.ptr40.idx.1, !dbg !95
  store i32 %condval.sroa.0.0.1, ptr addrspace(3) %add.ptr140.1, align 16, !dbg !96, !tbaa !30
  %condval.sroa.5.0.add.ptr140.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140.1, i32 4, !dbg !96
  store i32 %condval.sroa.5.0.1, ptr addrspace(3) %condval.sroa.5.0.add.ptr140.sroa_idx.1, align 4, !dbg !96, !tbaa !30
  %condval.sroa.6.0.add.ptr140.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140.1, i32 8, !dbg !96
  store i32 %condval.sroa.6.0.1, ptr addrspace(3) %condval.sroa.6.0.add.ptr140.sroa_idx.1, align 8, !dbg !96, !tbaa !30
  %condval.sroa.7.0.add.ptr140.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140.1, i32 12, !dbg !96
  store i32 %condval.sroa.7.0.1, ptr addrspace(3) %condval.sroa.7.0.add.ptr140.sroa_idx.1, align 4, !dbg !96, !tbaa !30
  %cmp85.2 = icmp ult i32 %add82, 1016, !dbg !90
  br i1 %cmp85.2, label %if.then86.2, label %if.end.2, !dbg !91

if.then86.2:                                      ; preds = %if.end.1
  %add91.2 = or disjoint i64 %mul88, 1024
  %gep949.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep948, i64 %add91.2
  %condval.sroa.7.0.add.ptr99.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep949.2, i64 12
  %condval.sroa.6.0.add.ptr99.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep949.2, i64 8
  %condval.sroa.5.0.add.ptr99.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep949.2, i64 4
  %condval.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %gep949.2, align 16, !dbg !92, !tbaa !30
  %condval.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr99.sroa_idx.2, align 4, !dbg !92, !tbaa !30
  %condval.sroa.6.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr99.sroa_idx.2, align 8, !dbg !92, !tbaa !30
  %condval.sroa.7.0.copyload.2 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr99.sroa_idx.2, align 4, !dbg !92, !tbaa !30
  br label %if.end.2, !dbg !93

if.end.2:                                         ; preds = %if.then86.2, %if.end.1
  %condval.sroa.0.0.2 = phi i32 [ %condval.sroa.0.0.copyload.2, %if.then86.2 ], [ 0, %if.end.1 ], !dbg !94
  %condval.sroa.5.0.2 = phi i32 [ %condval.sroa.5.0.copyload.2, %if.then86.2 ], [ 0, %if.end.1 ], !dbg !94
  %condval.sroa.6.0.2 = phi i32 [ %condval.sroa.6.0.copyload.2, %if.then86.2 ], [ 0, %if.end.1 ], !dbg !94
  %condval.sroa.7.0.2 = phi i32 [ %condval.sroa.7.0.copyload.2, %if.then86.2 ], [ 0, %if.end.1 ], !dbg !94
  %28 = shl nuw nsw i32 %24, 9, !dbg !95
  %29 = or disjoint i32 %28, 1024, !dbg !95
  %gep944.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %29, !dbg !95
  %add.ptr140.2 = getelementptr inbounds i8, ptr addrspace(3) %gep944.2, i32 %add.ptr40.idx, !dbg !95
  store i32 %condval.sroa.0.0.2, ptr addrspace(3) %add.ptr140.2, align 16, !dbg !96, !tbaa !30
  %condval.sroa.5.0.add.ptr140.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140.2, i32 4, !dbg !96
  store i32 %condval.sroa.5.0.2, ptr addrspace(3) %condval.sroa.5.0.add.ptr140.sroa_idx.2, align 4, !dbg !96, !tbaa !30
  %condval.sroa.6.0.add.ptr140.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140.2, i32 8, !dbg !96
  store i32 %condval.sroa.6.0.2, ptr addrspace(3) %condval.sroa.6.0.add.ptr140.sroa_idx.2, align 8, !dbg !96, !tbaa !30
  %condval.sroa.7.0.add.ptr140.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140.2, i32 12, !dbg !96
  store i32 %condval.sroa.7.0.2, ptr addrspace(3) %condval.sroa.7.0.add.ptr140.sroa_idx.2, align 4, !dbg !96, !tbaa !30
  %cmp85.3 = icmp ult i32 %add82, 1012, !dbg !90
  br i1 %cmp85.3, label %if.then86.3, label %if.end.3, !dbg !91

if.then86.3:                                      ; preds = %if.end.2
  %add91.3 = or disjoint i64 %mul88, 1536
  %gep949.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep948, i64 %add91.3
  %condval.sroa.7.0.add.ptr99.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep949.3, i64 12
  %condval.sroa.6.0.add.ptr99.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep949.3, i64 8
  %condval.sroa.5.0.add.ptr99.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep949.3, i64 4
  %condval.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %gep949.3, align 16, !dbg !92, !tbaa !30
  %condval.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr99.sroa_idx.3, align 4, !dbg !92, !tbaa !30
  %condval.sroa.6.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr99.sroa_idx.3, align 8, !dbg !92, !tbaa !30
  %condval.sroa.7.0.copyload.3 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr99.sroa_idx.3, align 4, !dbg !92, !tbaa !30
  br label %if.end.3, !dbg !93

if.end.3:                                         ; preds = %if.then86.3, %if.end.2
  %condval.sroa.0.0.3 = phi i32 [ %condval.sroa.0.0.copyload.3, %if.then86.3 ], [ 0, %if.end.2 ], !dbg !94
  %condval.sroa.5.0.3 = phi i32 [ %condval.sroa.5.0.copyload.3, %if.then86.3 ], [ 0, %if.end.2 ], !dbg !94
  %condval.sroa.6.0.3 = phi i32 [ %condval.sroa.6.0.copyload.3, %if.then86.3 ], [ 0, %if.end.2 ], !dbg !94
  %condval.sroa.7.0.3 = phi i32 [ %condval.sroa.7.0.copyload.3, %if.then86.3 ], [ 0, %if.end.2 ], !dbg !94
  %30 = shl nuw nsw i32 %24, 9, !dbg !95
  %31 = or disjoint i32 %30, 1536, !dbg !95
  %gep944.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %31, !dbg !95
  %add.ptr140.3 = getelementptr inbounds i8, ptr addrspace(3) %gep944.3, i32 %add.ptr40.idx.1, !dbg !95
  store i32 %condval.sroa.0.0.3, ptr addrspace(3) %add.ptr140.3, align 16, !dbg !96, !tbaa !30
  %condval.sroa.5.0.add.ptr140.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140.3, i32 4, !dbg !96
  store i32 %condval.sroa.5.0.3, ptr addrspace(3) %condval.sroa.5.0.add.ptr140.sroa_idx.3, align 4, !dbg !96, !tbaa !30
  %condval.sroa.6.0.add.ptr140.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140.3, i32 8, !dbg !96
  store i32 %condval.sroa.6.0.3, ptr addrspace(3) %condval.sroa.6.0.add.ptr140.sroa_idx.3, align 8, !dbg !96, !tbaa !30
  %condval.sroa.7.0.add.ptr140.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140.3, i32 12, !dbg !96
  store i32 %condval.sroa.7.0.3, ptr addrspace(3) %condval.sroa.7.0.add.ptr140.sroa_idx.3, align 4, !dbg !96, !tbaa !30
  %cmp85.4 = icmp ult i32 %add82, 1008, !dbg !90
  br i1 %cmp85.4, label %if.then86.4, label %if.end.4, !dbg !91

if.then86.4:                                      ; preds = %if.end.3
  %add91.4 = or disjoint i64 %mul88, 2048
  %gep949.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep948, i64 %add91.4
  %condval.sroa.7.0.add.ptr99.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep949.4, i64 12
  %condval.sroa.6.0.add.ptr99.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep949.4, i64 8
  %condval.sroa.5.0.add.ptr99.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep949.4, i64 4
  %condval.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %gep949.4, align 16, !dbg !92, !tbaa !30
  %condval.sroa.5.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr99.sroa_idx.4, align 4, !dbg !92, !tbaa !30
  %condval.sroa.6.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr99.sroa_idx.4, align 8, !dbg !92, !tbaa !30
  %condval.sroa.7.0.copyload.4 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr99.sroa_idx.4, align 4, !dbg !92, !tbaa !30
  br label %if.end.4, !dbg !93

if.end.4:                                         ; preds = %if.then86.4, %if.end.3
  %condval.sroa.0.0.4 = phi i32 [ %condval.sroa.0.0.copyload.4, %if.then86.4 ], [ 0, %if.end.3 ], !dbg !94
  %condval.sroa.5.0.4 = phi i32 [ %condval.sroa.5.0.copyload.4, %if.then86.4 ], [ 0, %if.end.3 ], !dbg !94
  %condval.sroa.6.0.4 = phi i32 [ %condval.sroa.6.0.copyload.4, %if.then86.4 ], [ 0, %if.end.3 ], !dbg !94
  %condval.sroa.7.0.4 = phi i32 [ %condval.sroa.7.0.copyload.4, %if.then86.4 ], [ 0, %if.end.3 ], !dbg !94
  %32 = shl nuw nsw i32 %24, 9, !dbg !95
  %33 = or disjoint i32 %32, 2048, !dbg !95
  %gep944.4 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %33, !dbg !95
  %add.ptr140.4 = getelementptr inbounds i8, ptr addrspace(3) %gep944.4, i32 %add.ptr40.idx, !dbg !95
  store i32 %condval.sroa.0.0.4, ptr addrspace(3) %add.ptr140.4, align 16, !dbg !96, !tbaa !30
  %condval.sroa.5.0.add.ptr140.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140.4, i32 4, !dbg !96
  store i32 %condval.sroa.5.0.4, ptr addrspace(3) %condval.sroa.5.0.add.ptr140.sroa_idx.4, align 4, !dbg !96, !tbaa !30
  %condval.sroa.6.0.add.ptr140.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140.4, i32 8, !dbg !96
  store i32 %condval.sroa.6.0.4, ptr addrspace(3) %condval.sroa.6.0.add.ptr140.sroa_idx.4, align 8, !dbg !96, !tbaa !30
  %condval.sroa.7.0.add.ptr140.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140.4, i32 12, !dbg !96
  store i32 %condval.sroa.7.0.4, ptr addrspace(3) %condval.sroa.7.0.add.ptr140.sroa_idx.4, align 4, !dbg !96, !tbaa !30
  %cmp85.5 = icmp ult i32 %add82, 1004, !dbg !90
  br i1 %cmp85.5, label %if.then86.5, label %if.end.5, !dbg !91

if.then86.5:                                      ; preds = %if.end.4
  %add91.5 = or disjoint i64 %mul88, 2560
  %gep949.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep948, i64 %add91.5
  %condval.sroa.7.0.add.ptr99.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep949.5, i64 12
  %condval.sroa.6.0.add.ptr99.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep949.5, i64 8
  %condval.sroa.5.0.add.ptr99.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep949.5, i64 4
  %condval.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %gep949.5, align 16, !dbg !92, !tbaa !30
  %condval.sroa.5.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr99.sroa_idx.5, align 4, !dbg !92, !tbaa !30
  %condval.sroa.6.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr99.sroa_idx.5, align 8, !dbg !92, !tbaa !30
  %condval.sroa.7.0.copyload.5 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr99.sroa_idx.5, align 4, !dbg !92, !tbaa !30
  br label %if.end.5, !dbg !93

if.end.5:                                         ; preds = %if.then86.5, %if.end.4
  %condval.sroa.0.0.5 = phi i32 [ %condval.sroa.0.0.copyload.5, %if.then86.5 ], [ 0, %if.end.4 ], !dbg !94
  %condval.sroa.5.0.5 = phi i32 [ %condval.sroa.5.0.copyload.5, %if.then86.5 ], [ 0, %if.end.4 ], !dbg !94
  %condval.sroa.6.0.5 = phi i32 [ %condval.sroa.6.0.copyload.5, %if.then86.5 ], [ 0, %if.end.4 ], !dbg !94
  %condval.sroa.7.0.5 = phi i32 [ %condval.sroa.7.0.copyload.5, %if.then86.5 ], [ 0, %if.end.4 ], !dbg !94
  %34 = shl nuw nsw i32 %24, 9, !dbg !95
  %35 = or disjoint i32 %34, 2560, !dbg !95
  %gep944.5 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %35, !dbg !95
  %add.ptr140.5 = getelementptr inbounds i8, ptr addrspace(3) %gep944.5, i32 %add.ptr40.idx.1, !dbg !95
  store i32 %condval.sroa.0.0.5, ptr addrspace(3) %add.ptr140.5, align 16, !dbg !96, !tbaa !30
  %condval.sroa.5.0.add.ptr140.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140.5, i32 4, !dbg !96
  store i32 %condval.sroa.5.0.5, ptr addrspace(3) %condval.sroa.5.0.add.ptr140.sroa_idx.5, align 4, !dbg !96, !tbaa !30
  %condval.sroa.6.0.add.ptr140.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140.5, i32 8, !dbg !96
  store i32 %condval.sroa.6.0.5, ptr addrspace(3) %condval.sroa.6.0.add.ptr140.sroa_idx.5, align 8, !dbg !96, !tbaa !30
  %condval.sroa.7.0.add.ptr140.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140.5, i32 12, !dbg !96
  store i32 %condval.sroa.7.0.5, ptr addrspace(3) %condval.sroa.7.0.add.ptr140.sroa_idx.5, align 4, !dbg !96, !tbaa !30
  %cmp85.6 = icmp ult i32 %add82, 1000, !dbg !90
  br i1 %cmp85.6, label %if.then86.6, label %if.end.6, !dbg !91

if.then86.6:                                      ; preds = %if.end.5
  %add91.6 = or disjoint i64 %mul88, 3072
  %gep949.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep948, i64 %add91.6
  %condval.sroa.7.0.add.ptr99.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep949.6, i64 12
  %condval.sroa.6.0.add.ptr99.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep949.6, i64 8
  %condval.sroa.5.0.add.ptr99.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep949.6, i64 4
  %condval.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %gep949.6, align 16, !dbg !92, !tbaa !30
  %condval.sroa.5.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr99.sroa_idx.6, align 4, !dbg !92, !tbaa !30
  %condval.sroa.6.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr99.sroa_idx.6, align 8, !dbg !92, !tbaa !30
  %condval.sroa.7.0.copyload.6 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr99.sroa_idx.6, align 4, !dbg !92, !tbaa !30
  br label %if.end.6, !dbg !93

if.end.6:                                         ; preds = %if.then86.6, %if.end.5
  %condval.sroa.0.0.6 = phi i32 [ %condval.sroa.0.0.copyload.6, %if.then86.6 ], [ 0, %if.end.5 ], !dbg !94
  %condval.sroa.5.0.6 = phi i32 [ %condval.sroa.5.0.copyload.6, %if.then86.6 ], [ 0, %if.end.5 ], !dbg !94
  %condval.sroa.6.0.6 = phi i32 [ %condval.sroa.6.0.copyload.6, %if.then86.6 ], [ 0, %if.end.5 ], !dbg !94
  %condval.sroa.7.0.6 = phi i32 [ %condval.sroa.7.0.copyload.6, %if.then86.6 ], [ 0, %if.end.5 ], !dbg !94
  %36 = shl nuw nsw i32 %24, 9, !dbg !95
  %37 = or disjoint i32 %36, 3072, !dbg !95
  %gep944.6 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %37, !dbg !95
  %add.ptr140.6 = getelementptr inbounds i8, ptr addrspace(3) %gep944.6, i32 %add.ptr40.idx, !dbg !95
  store i32 %condval.sroa.0.0.6, ptr addrspace(3) %add.ptr140.6, align 16, !dbg !96, !tbaa !30
  %condval.sroa.5.0.add.ptr140.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140.6, i32 4, !dbg !96
  store i32 %condval.sroa.5.0.6, ptr addrspace(3) %condval.sroa.5.0.add.ptr140.sroa_idx.6, align 4, !dbg !96, !tbaa !30
  %condval.sroa.6.0.add.ptr140.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140.6, i32 8, !dbg !96
  store i32 %condval.sroa.6.0.6, ptr addrspace(3) %condval.sroa.6.0.add.ptr140.sroa_idx.6, align 8, !dbg !96, !tbaa !30
  %condval.sroa.7.0.add.ptr140.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140.6, i32 12, !dbg !96
  store i32 %condval.sroa.7.0.6, ptr addrspace(3) %condval.sroa.7.0.add.ptr140.sroa_idx.6, align 4, !dbg !96, !tbaa !30
  %cmp85.7 = icmp ult i32 %add82, 996, !dbg !90
  br i1 %cmp85.7, label %if.then86.7, label %if.end.7, !dbg !91

if.then86.7:                                      ; preds = %if.end.6
  %add91.7 = or disjoint i64 %mul88, 3584
  %gep949.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep948, i64 %add91.7
  %condval.sroa.7.0.add.ptr99.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep949.7, i64 12
  %condval.sroa.6.0.add.ptr99.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep949.7, i64 8
  %condval.sroa.5.0.add.ptr99.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep949.7, i64 4
  %condval.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %gep949.7, align 16, !dbg !92, !tbaa !30
  %condval.sroa.5.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.5.0.add.ptr99.sroa_idx.7, align 4, !dbg !92, !tbaa !30
  %condval.sroa.6.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.6.0.add.ptr99.sroa_idx.7, align 8, !dbg !92, !tbaa !30
  %condval.sroa.7.0.copyload.7 = load i32, ptr addrspace(4) %condval.sroa.7.0.add.ptr99.sroa_idx.7, align 4, !dbg !92, !tbaa !30
  br label %if.end.7, !dbg !93

if.end.7:                                         ; preds = %if.then86.7, %if.end.6
  %condval.sroa.0.0.7 = phi i32 [ %condval.sroa.0.0.copyload.7, %if.then86.7 ], [ 0, %if.end.6 ], !dbg !94
  %condval.sroa.5.0.7 = phi i32 [ %condval.sroa.5.0.copyload.7, %if.then86.7 ], [ 0, %if.end.6 ], !dbg !94
  %condval.sroa.6.0.7 = phi i32 [ %condval.sroa.6.0.copyload.7, %if.then86.7 ], [ 0, %if.end.6 ], !dbg !94
  %condval.sroa.7.0.7 = phi i32 [ %condval.sroa.7.0.copyload.7, %if.then86.7 ], [ 0, %if.end.6 ], !dbg !94
  %38 = shl nuw nsw i32 %24, 9, !dbg !95
  %39 = or disjoint i32 %38, 3584, !dbg !95
  %gep944.7 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %39, !dbg !95
  %add.ptr140.7 = getelementptr inbounds i8, ptr addrspace(3) %gep944.7, i32 %add.ptr40.idx.1, !dbg !95
  store i32 %condval.sroa.0.0.7, ptr addrspace(3) %add.ptr140.7, align 16, !dbg !96, !tbaa !30
  %condval.sroa.5.0.add.ptr140.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140.7, i32 4, !dbg !96
  store i32 %condval.sroa.5.0.7, ptr addrspace(3) %condval.sroa.5.0.add.ptr140.sroa_idx.7, align 4, !dbg !96, !tbaa !30
  %condval.sroa.6.0.add.ptr140.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140.7, i32 8, !dbg !96
  store i32 %condval.sroa.6.0.7, ptr addrspace(3) %condval.sroa.6.0.add.ptr140.sroa_idx.7, align 8, !dbg !96, !tbaa !30
  %condval.sroa.7.0.add.ptr140.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr140.7, i32 12, !dbg !96
  store i32 %condval.sroa.7.0.7, ptr addrspace(3) %condval.sroa.7.0.add.ptr140.sroa_idx.7, align 4, !dbg !96, !tbaa !30
  fence syncscope("warp") release, !dbg !97
  tail call void @llvm.mxc.barrier.warp(), !dbg !100
  fence syncscope("warp") acquire, !dbg !101
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr68, align 8, !dbg !102
  %40 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %15, <4 x float> zeroinitializer), !dbg !103
  %add.ptr191.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr68, i32 2048, !dbg !104
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr191.1, align 8, !dbg !102
  %41 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %15, <4 x float> zeroinitializer), !dbg !103
  %k_local.sroa.0.0.copyload.1994 = load <4 x half>, ptr addrspace(3) %add.ptr68.1, align 8, !dbg !102
  %42 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1994, <4 x half> %16, <4 x float> %40), !dbg !103
  %add.ptr191.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr68.1, i32 2048, !dbg !104
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr191.1.1, align 8, !dbg !102
  %43 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %16, <4 x float> %41), !dbg !103
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr68.2, align 8, !dbg !102
  %44 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %17, <4 x float> %42), !dbg !103
  %add.ptr191.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr68.2, i32 2048, !dbg !104
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr191.1.2, align 8, !dbg !102
  %45 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %17, <4 x float> %43), !dbg !103
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr68.3, align 8, !dbg !102
  %46 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %18, <4 x float> %44), !dbg !103
  %add.ptr191.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr68.3, i32 2048, !dbg !104
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr191.1.3, align 8, !dbg !102
  %47 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %18, <4 x float> %45), !dbg !103
  %add170.4 = or disjoint i32 %add51, 2048
  %48 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add170.4, !dbg !104
  %49 = getelementptr inbounds i8, ptr addrspace(3) %48, i32 %add.ptr68.idx, !dbg !104
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %49, align 8, !dbg !102
  %50 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %20, <4 x float> %46), !dbg !103
  %add.ptr191.1.4 = getelementptr inbounds i8, ptr addrspace(3) %49, i32 2048, !dbg !104
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr191.1.4, align 8, !dbg !102
  %51 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %20, <4 x float> %47), !dbg !103
  %52 = getelementptr inbounds i8, ptr addrspace(3) %48, i32 %add.ptr68.idx.1, !dbg !104
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %52, align 8, !dbg !102
  %53 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %21, <4 x float> %50), !dbg !103
  %add.ptr191.1.5 = getelementptr inbounds i8, ptr addrspace(3) %52, i32 2048, !dbg !104
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr191.1.5, align 8, !dbg !102
  %54 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %21, <4 x float> %51), !dbg !103
  %55 = getelementptr inbounds i8, ptr addrspace(3) %48, i32 %add.ptr68.idx.2, !dbg !104
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %55, align 8, !dbg !102
  %56 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %22, <4 x float> %53), !dbg !103
  %add.ptr191.1.6 = getelementptr inbounds i8, ptr addrspace(3) %55, i32 2048, !dbg !104
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr191.1.6, align 8, !dbg !102
  %57 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %22, <4 x float> %54), !dbg !103
  %58 = getelementptr inbounds i8, ptr addrspace(3) %48, i32 %add.ptr68.idx.3, !dbg !104
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %58, align 8, !dbg !102
  %59 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %23, <4 x float> %56), !dbg !103
  %add.ptr191.1.7 = getelementptr inbounds i8, ptr addrspace(3) %58, i32 2048, !dbg !104
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr191.1.7, align 8, !dbg !102
  %60 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %23, <4 x float> %57), !dbg !103
  %mul222 = and i32 %13, 252
  %add223 = add nuw nsw i32 %mul7, %mul222
  %cmp227.not = icmp sgt i32 %add223, %1, !dbg !105
  %scores.sroa.0.0.vec.extract = extractelement <4 x float> %59, i64 0
  %spec.select = select i1 %cmp227.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract, !dbg !106
  %cmp227.not.1.not = icmp slt i32 %add223, %1, !dbg !105
  %scores.sroa.0.4.vec.extract = extractelement <4 x float> %59, i64 1, !dbg !106
  %condval_1.0.1 = select i1 %cmp227.not.1.not, float %scores.sroa.0.4.vec.extract, float 0xFFF0000000000000, !dbg !106
  %add225.2 = or disjoint i32 %add223, 2, !dbg !107
  %cmp227.not.2 = icmp sgt i32 %add225.2, %1, !dbg !105
  %scores.sroa.0.8.vec.extract = extractelement <4 x float> %59, i64 2, !dbg !106
  %condval_1.0.2 = select i1 %cmp227.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract, !dbg !106
  %add225.3 = or disjoint i32 %add223, 3, !dbg !107
  %cmp227.not.3 = icmp sgt i32 %add225.3, %1, !dbg !105
  %scores.sroa.0.12.vec.extract = extractelement <4 x float> %59, i64 3, !dbg !106
  %condval_1.0.3 = select i1 %cmp227.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract, !dbg !106
  %add224.1 = add nuw nsw i32 %add223, 16
  %cmp227.not.1995 = icmp sgt i32 %add224.1, %1, !dbg !105
  %scores.sroa.38.16.vec.extract = extractelement <4 x float> %60, i64 0, !dbg !106
  %condval_1.0.1998 = select i1 %cmp227.not.1995, float 0xFFF0000000000000, float %scores.sroa.38.16.vec.extract, !dbg !106
  %add225.1.1 = add nuw nsw i32 %add223, 17, !dbg !107
  %cmp227.not.1.1 = icmp sgt i32 %add225.1.1, %1, !dbg !105
  %scores.sroa.38.20.vec.extract = extractelement <4 x float> %60, i64 1, !dbg !106
  %condval_1.0.1.1 = select i1 %cmp227.not.1.1, float 0xFFF0000000000000, float %scores.sroa.38.20.vec.extract, !dbg !106
  %add225.2.1 = add nuw nsw i32 %add223, 18, !dbg !107
  %cmp227.not.2.1 = icmp sgt i32 %add225.2.1, %1, !dbg !105
  %scores.sroa.38.24.vec.extract = extractelement <4 x float> %60, i64 2, !dbg !106
  %condval_1.0.2.1 = select i1 %cmp227.not.2.1, float 0xFFF0000000000000, float %scores.sroa.38.24.vec.extract, !dbg !106
  %add225.3.1 = add nuw nsw i32 %add223, 19, !dbg !107
  %cmp227.not.3.1 = icmp sgt i32 %add225.3.1, %1, !dbg !105
  %scores.sroa.38.28.vec.extract = extractelement <4 x float> %60, i64 3, !dbg !106
  %condval_1.0.3.1 = select i1 %cmp227.not.3.1, float 0xFFF0000000000000, float %scores.sroa.38.28.vec.extract, !dbg !106
  %61 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !108
  %62 = tail call contract noundef float @llvm.maxnum.f32(float %61, float %condval_1.0.1), !dbg !108
  %63 = tail call contract noundef float @llvm.maxnum.f32(float %62, float %condval_1.0.2), !dbg !108
  %64 = tail call contract noundef float @llvm.maxnum.f32(float %63, float %condval_1.0.3), !dbg !108
  %65 = tail call contract noundef float @llvm.maxnum.f32(float %64, float %condval_1.0.1998), !dbg !108
  %66 = tail call contract noundef float @llvm.maxnum.f32(float %65, float %condval_1.0.1.1), !dbg !108
  %67 = tail call contract noundef float @llvm.maxnum.f32(float %66, float %condval_1.0.2.1), !dbg !108
  %68 = tail call contract noundef float @llvm.maxnum.f32(float %67, float %condval_1.0.3.1), !dbg !108
  %69 = bitcast float %68 to i32, !dbg !112
  %70 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !115
  %71 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %70) #11, !dbg !120
  %xor.i.i = xor i32 %71, 32, !dbg !121
  %72 = and i32 %71, -64, !dbg !122
  %and.i.i = add nsw i32 %72, 64, !dbg !122
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !123
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %71, !dbg !124
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !125
  %73 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %69), !dbg !126
  %74 = bitcast i32 %73 to float, !dbg !127
  %75 = tail call contract noundef float @llvm.maxnum.f32(float %68, float %74), !dbg !128
  %76 = bitcast float %75 to i32, !dbg !130
  %77 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !132
  %78 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %77) #11, !dbg !135
  %xor.i.i878 = xor i32 %78, 16, !dbg !136
  %79 = and i32 %78, -64, !dbg !137
  %and.i.i879 = add nsw i32 %79, 64, !dbg !137
  %cmp.not.i.i880 = icmp slt i32 %xor.i.i878, %and.i.i879, !dbg !138
  %cond.i.i881 = select i1 %cmp.not.i.i880, i32 %xor.i.i878, i32 %78, !dbg !139
  %shl.i.i882 = shl i32 %cond.i.i881, 2, !dbg !140
  %80 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i882, i32 %76), !dbg !141
  %81 = bitcast i32 %80 to float, !dbg !142
  %82 = tail call contract noundef float @llvm.maxnum.f32(float %75, float %81), !dbg !143
  %sub = fsub contract float %spec.select, %82, !dbg !145
  %sub287 = fsub contract float %condval_1.0.1, %82, !dbg !146
  %sub290 = fsub contract float %condval_1.0.2, %82, !dbg !147
  %sub293 = fsub contract float %condval_1.0.3, %82, !dbg !148
  %mul298 = fmul contract float %sub, 0x3FC0527DC0000000, !dbg !149
  %mul302 = fmul contract float %sub287, 0x3FC0527DC0000000, !dbg !150
  %mul306 = fmul contract float %sub290, 0x3FC0527DC0000000, !dbg !151
  %mul310 = fmul contract float %sub293, 0x3FC0527DC0000000, !dbg !152
  %add315 = fadd contract float %mul298, 8.000000e+00, !dbg !153
  %add319 = fadd contract float %mul302, 8.000000e+00, !dbg !154
  %add323 = fadd contract float %mul306, 8.000000e+00, !dbg !155
  %add327 = fadd contract float %mul310, 8.000000e+00, !dbg !156
  %cmp.i.i = fcmp contract olt float %add315, -1.260000e+02, !dbg !157
  %cond.i.i887 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !157
  %add.i.i = fadd contract float %add315, %cond.i.i887, !dbg !157
  %83 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !157
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !157
  %mul.i.i = fmul contract float %cond2.i.i, %83, !dbg !157
  %cmp.i.i888 = fcmp contract olt float %add319, -1.260000e+02, !dbg !160
  %cond.i.i889 = select contract i1 %cmp.i.i888, float 6.400000e+01, float 0.000000e+00, !dbg !160
  %add.i.i890 = fadd contract float %add319, %cond.i.i889, !dbg !160
  %84 = tail call contract float @llvm.exp2.f32(float %add.i.i890), !dbg !160
  %cond2.i.i891 = select contract i1 %cmp.i.i888, float 0x3BF0000000000000, float 1.000000e+00, !dbg !160
  %mul.i.i892 = fmul contract float %cond2.i.i891, %84, !dbg !160
  %cmp.i.i893 = fcmp contract olt float %add323, -1.260000e+02, !dbg !162
  %cond.i.i894 = select contract i1 %cmp.i.i893, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i895 = fadd contract float %add323, %cond.i.i894, !dbg !162
  %85 = tail call contract float @llvm.exp2.f32(float %add.i.i895), !dbg !162
  %cond2.i.i896 = select contract i1 %cmp.i.i893, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i897 = fmul contract float %cond2.i.i896, %85, !dbg !162
  %cmp.i.i898 = fcmp contract olt float %add327, -1.260000e+02, !dbg !164
  %cond.i.i899 = select contract i1 %cmp.i.i898, float 6.400000e+01, float 0.000000e+00, !dbg !164
  %add.i.i900 = fadd contract float %add327, %cond.i.i899, !dbg !164
  %86 = tail call contract float @llvm.exp2.f32(float %add.i.i900), !dbg !164
  %cond2.i.i901 = select contract i1 %cmp.i.i898, float 0x3BF0000000000000, float 1.000000e+00, !dbg !164
  %mul.i.i902 = fmul contract float %cond2.i.i901, %86, !dbg !164
  %87 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !166
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !166, !noalias !174
  %88 = fptrunc float %mul.i.i to half, !dbg !166
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %87), !dbg !166, !noalias !174
  %89 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !179
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !179, !noalias !174
  %90 = fptrunc float %mul.i.i892 to half, !dbg !179
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %89), !dbg !179, !noalias !174
  %91 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !185
  %92 = fptrunc float %mul.i.i897 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %91), !dbg !181, !noalias !185
  %93 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !190, !noalias !185
  %94 = fptrunc float %mul.i.i902 to half, !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %93), !dbg !190, !noalias !185
  %95 = insertelement <4 x half> poison, half %88, i64 0, !dbg !192
  %96 = insertelement <4 x half> %95, half %90, i64 1, !dbg !192
  %97 = insertelement <4 x half> %96, half %92, i64 2, !dbg !192
  %98 = insertelement <4 x half> %97, half %94, i64 3, !dbg !192
  %sub.1 = fsub contract float %condval_1.0.1998, %82, !dbg !145
  %sub287.1 = fsub contract float %condval_1.0.1.1, %82, !dbg !146
  %sub290.1 = fsub contract float %condval_1.0.2.1, %82, !dbg !147
  %sub293.1 = fsub contract float %condval_1.0.3.1, %82, !dbg !148
  %mul298.1 = fmul contract float %sub.1, 0x3FC0527DC0000000, !dbg !149
  %mul302.1 = fmul contract float %sub287.1, 0x3FC0527DC0000000, !dbg !150
  %mul306.1 = fmul contract float %sub290.1, 0x3FC0527DC0000000, !dbg !151
  %mul310.1 = fmul contract float %sub293.1, 0x3FC0527DC0000000, !dbg !152
  %add315.1 = fadd contract float %mul298.1, 8.000000e+00, !dbg !153
  %add319.1 = fadd contract float %mul302.1, 8.000000e+00, !dbg !154
  %add323.1 = fadd contract float %mul306.1, 8.000000e+00, !dbg !155
  %add327.1 = fadd contract float %mul310.1, 8.000000e+00, !dbg !156
  %cmp.i.i.1 = fcmp contract olt float %add315.1, -1.260000e+02, !dbg !157
  %cond.i.i887.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !157
  %add.i.i.1 = fadd contract float %add315.1, %cond.i.i887.1, !dbg !157
  %99 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !157
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !157
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %99, !dbg !157
  %cmp.i.i888.1 = fcmp contract olt float %add319.1, -1.260000e+02, !dbg !160
  %cond.i.i889.1 = select contract i1 %cmp.i.i888.1, float 6.400000e+01, float 0.000000e+00, !dbg !160
  %add.i.i890.1 = fadd contract float %add319.1, %cond.i.i889.1, !dbg !160
  %100 = tail call contract float @llvm.exp2.f32(float %add.i.i890.1), !dbg !160
  %cond2.i.i891.1 = select contract i1 %cmp.i.i888.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !160
  %mul.i.i892.1 = fmul contract float %cond2.i.i891.1, %100, !dbg !160
  %cmp.i.i893.1 = fcmp contract olt float %add323.1, -1.260000e+02, !dbg !162
  %cond.i.i894.1 = select contract i1 %cmp.i.i893.1, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i895.1 = fadd contract float %add323.1, %cond.i.i894.1, !dbg !162
  %101 = tail call contract float @llvm.exp2.f32(float %add.i.i895.1), !dbg !162
  %cond2.i.i896.1 = select contract i1 %cmp.i.i893.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i897.1 = fmul contract float %cond2.i.i896.1, %101, !dbg !162
  %cmp.i.i898.1 = fcmp contract olt float %add327.1, -1.260000e+02, !dbg !164
  %cond.i.i899.1 = select contract i1 %cmp.i.i898.1, float 6.400000e+01, float 0.000000e+00, !dbg !164
  %add.i.i900.1 = fadd contract float %add327.1, %cond.i.i899.1, !dbg !164
  %102 = tail call contract float @llvm.exp2.f32(float %add.i.i900.1), !dbg !164
  %cond2.i.i901.1 = select contract i1 %cmp.i.i898.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !164
  %mul.i.i902.1 = fmul contract float %cond2.i.i901.1, %102, !dbg !164
  %103 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !166
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !166, !noalias !174
  %104 = fptrunc float %mul.i.i.1 to half, !dbg !166
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %103), !dbg !166, !noalias !174
  %105 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !179
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !179, !noalias !174
  %106 = fptrunc float %mul.i.i892.1 to half, !dbg !179
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %105), !dbg !179, !noalias !174
  %107 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !185
  %108 = fptrunc float %mul.i.i897.1 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %107), !dbg !181, !noalias !185
  %109 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !190, !noalias !185
  %110 = fptrunc float %mul.i.i902.1 to half, !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %109), !dbg !190, !noalias !185
  %111 = insertelement <4 x half> poison, half %104, i64 0, !dbg !192
  %112 = insertelement <4 x half> %111, half %106, i64 1, !dbg !192
  %113 = insertelement <4 x half> %112, half %108, i64 2, !dbg !192
  %114 = insertelement <4 x half> %113, half %110, i64 3, !dbg !192
  %conv.i.i = fpext half %88 to float, !dbg !193
  %add366 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !198
  %conv.i.i.1 = fpext half %90 to float, !dbg !193
  %add366.1 = fadd contract float %add366, %conv.i.i.1, !dbg !198
  %conv.i.i.2 = fpext half %92 to float, !dbg !193
  %add366.2 = fadd contract float %add366.1, %conv.i.i.2, !dbg !198
  %conv.i.i.3 = fpext half %94 to float, !dbg !193
  %add366.3 = fadd contract float %add366.2, %conv.i.i.3, !dbg !198
  %conv.i.i.4 = fpext half %104 to float, !dbg !193
  %add366.4 = fadd contract float %add366.3, %conv.i.i.4, !dbg !198
  %conv.i.i.5 = fpext half %106 to float, !dbg !193
  %add366.5 = fadd contract float %add366.4, %conv.i.i.5, !dbg !198
  %conv.i.i.6 = fpext half %108 to float, !dbg !193
  %add366.6 = fadd contract float %add366.5, %conv.i.i.6, !dbg !198
  %conv.i.i.7 = fpext half %110 to float, !dbg !193
  %add366.7 = fadd contract float %add366.6, %conv.i.i.7, !dbg !198
  %115 = bitcast float %add366.7 to i32, !dbg !199
  %116 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !201
  %117 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %116) #11, !dbg !204
  %xor.i.i904 = xor i32 %117, 32, !dbg !205
  %118 = and i32 %117, -64, !dbg !206
  %and.i.i905 = add nsw i32 %118, 64, !dbg !206
  %cmp.not.i.i906 = icmp slt i32 %xor.i.i904, %and.i.i905, !dbg !207
  %cond.i.i907 = select i1 %cmp.not.i.i906, i32 %xor.i.i904, i32 %117, !dbg !208
  %shl.i.i908 = shl i32 %cond.i.i907, 2, !dbg !209
  %119 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i908, i32 %115), !dbg !210
  %120 = bitcast i32 %119 to float, !dbg !211
  %add374 = fadd contract float %add366.7, %120, !dbg !212
  %121 = bitcast float %add374 to i32, !dbg !213
  %122 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !215
  %123 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %122) #11, !dbg !218
  %xor.i.i909 = xor i32 %123, 16, !dbg !219
  %124 = and i32 %123, -64, !dbg !220
  %and.i.i910 = add nsw i32 %124, 64, !dbg !220
  %cmp.not.i.i911 = icmp slt i32 %xor.i.i909, %and.i.i910, !dbg !221
  %cond.i.i912 = select i1 %cmp.not.i.i911, i32 %xor.i.i909, i32 %123, !dbg !222
  %shl.i.i913 = shl i32 %cond.i.i912, 2, !dbg !223
  %125 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i913, i32 %121), !dbg !224
  %126 = bitcast i32 %125 to float, !dbg !225
  fence syncscope("warp") release, !dbg !226
  tail call void @llvm.mxc.barrier.warp(), !dbg !229
  fence syncscope("warp") acquire, !dbg !230
  %mul396 = and i32 %13, 254
  %add397 = add nuw nsw i32 %mul7, %mul396
  %127 = shl nuw nsw i32 %3, 5
  %128 = and i32 %127, 32512
  %mul411 = zext nneg i32 %128 to i64
  %add407 = or disjoint i64 %mul88, %mul411
  %129 = and i32 %mul20, 56
  %mul425 = zext nneg i32 %129 to i64
  %invariant.gep961 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %mul425
  %mul483 = and i32 %127, 224
  %shr487 = lshr i32 %3, 3
  %xor491 = xor i32 %shr487, %and31
  %cmp400 = icmp slt i32 %add397, 1024, !dbg !231
  br i1 %cmp400, label %if.then401, label %if.end451, !dbg !232

if.then401:                                       ; preds = %if.end.7
  %130 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep961, i64 %add407, !dbg !233
  %131 = getelementptr inbounds i8, ptr addrspace(4) %130, i64 %.idx, !dbg !233
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %131, align 16, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %131, i64 4, !dbg !234
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx, align 4, !dbg !234, !tbaa !30
  %condval_2.sroa.6.0.add.ptr427.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %131, i64 8, !dbg !234
  %condval_2.sroa.6.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr427.sroa_idx, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.7.0.add.ptr427.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %131, i64 12, !dbg !234
  %condval_2.sroa.7.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr427.sroa_idx, align 4, !dbg !234, !tbaa !30
  br label %if.end451, !dbg !235

if.end451:                                        ; preds = %if.end.7, %if.then401
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then401 ], [ 0, %if.end.7 ], !dbg !94
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then401 ], [ 0, %if.end.7 ], !dbg !94
  %condval_2.sroa.6.0 = phi i32 [ %condval_2.sroa.6.0.copyload, %if.then401 ], [ 0, %if.end.7 ], !dbg !94
  %condval_2.sroa.7.0 = phi i32 [ %condval_2.sroa.7.0.copyload, %if.then401 ], [ 0, %if.end.7 ], !dbg !94
  %132 = or disjoint i32 %add397, 1, !dbg !236
  %cmp400.1 = icmp slt i32 %132, 1024, !dbg !231
  br i1 %cmp400.1, label %if.then401.1, label %if.end451.1, !dbg !232

if.then401.1:                                     ; preds = %if.end451
  %133 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep961, i64 %add407, !dbg !233
  %134 = getelementptr inbounds i8, ptr addrspace(4) %133, i64 %.idx, !dbg !233
  %gep962.1 = getelementptr inbounds i8, ptr addrspace(4) %134, i64 256, !dbg !233
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep962.1, align 16, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %134, i64 260, !dbg !234
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx.1, align 4, !dbg !234, !tbaa !30
  %condval_2.sroa.6.0.add.ptr427.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %134, i64 264, !dbg !234
  %condval_2.sroa.6.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr427.sroa_idx.1, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.7.0.add.ptr427.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %134, i64 268, !dbg !234
  %condval_2.sroa.7.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr427.sroa_idx.1, align 4, !dbg !234, !tbaa !30
  br label %if.end451.1, !dbg !235

if.end451.1:                                      ; preds = %if.then401.1, %if.end451
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then401.1 ], [ 0, %if.end451 ], !dbg !94
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then401.1 ], [ 0, %if.end451 ], !dbg !94
  %condval_2.sroa.6.0.1 = phi i32 [ %condval_2.sroa.6.0.copyload.1, %if.then401.1 ], [ 0, %if.end451 ], !dbg !94
  %condval_2.sroa.7.0.1 = phi i32 [ %condval_2.sroa.7.0.copyload.1, %if.then401.1 ], [ 0, %if.end451 ], !dbg !94
  %135 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul483, !dbg !237
  %add.ptr496.idx = shl nuw nsw i32 %xor491, 2, !dbg !237
  %add.ptr496 = getelementptr inbounds i8, ptr addrspace(3) %135, i32 %add.ptr496.idx, !dbg !237
  %v_column.sroa.66.0.insert.ext = shl i32 %condval_2.sroa.0.0.1, 16, !dbg !238
  %v_column.sroa.0.0.insert.ext = and i32 %condval_2.sroa.0.0, 65535, !dbg !238
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.66.0.insert.ext, %v_column.sroa.0.0.insert.ext, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr496, align 4, !dbg !238, !tbaa !30
  %v_fetch.sroa.0.2.extract.shift = lshr i32 %condval_2.sroa.0.0, 16, !dbg !239
  %v_fetch.sroa.50.18.extract.shift = and i32 %condval_2.sroa.0.0.1, -65536, !dbg !238
  %136 = or disjoint i32 %mul483, 256, !dbg !240
  %137 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %136, !dbg !237
  %xor492.1 = shl nuw nsw i32 %xor491, 2, !dbg !237
  %add.ptr496.idx.1 = xor i32 %xor492.1, 4, !dbg !237
  %add.ptr496.1 = getelementptr inbounds i8, ptr addrspace(3) %137, i32 %add.ptr496.idx.1, !dbg !237
  %v_column.sroa.0.0.insert.insert1289 = or disjoint i32 %v_fetch.sroa.50.18.extract.shift, %v_fetch.sroa.0.2.extract.shift, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1289, ptr addrspace(3) %add.ptr496.1, align 4, !dbg !238, !tbaa !30
  %138 = or disjoint i32 %mul483, 512, !dbg !240
  %139 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %138, !dbg !237
  %xor492.2 = shl nuw nsw i32 %xor491, 2, !dbg !237
  %add.ptr496.idx.2 = xor i32 %xor492.2, 8, !dbg !237
  %add.ptr496.2 = getelementptr inbounds i8, ptr addrspace(3) %139, i32 %add.ptr496.idx.2, !dbg !237
  %v_column.sroa.66.0.insert.ext1416 = shl i32 %condval_2.sroa.5.0.1, 16, !dbg !238
  %v_column.sroa.0.0.insert.ext1291 = and i32 %condval_2.sroa.5.0, 65535, !dbg !238
  %v_column.sroa.0.0.insert.insert1293 = or disjoint i32 %v_column.sroa.66.0.insert.ext1416, %v_column.sroa.0.0.insert.ext1291, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1293, ptr addrspace(3) %add.ptr496.2, align 4, !dbg !238, !tbaa !30
  %v_fetch.sroa.14.6.extract.shift = lshr i32 %condval_2.sroa.5.0, 16, !dbg !239
  %v_fetch.sroa.62.22.extract.shift = and i32 %condval_2.sroa.5.0.1, -65536, !dbg !238
  %140 = or disjoint i32 %mul483, 768, !dbg !240
  %141 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %140, !dbg !237
  %xor492.3 = shl nuw nsw i32 %xor491, 2, !dbg !237
  %add.ptr496.idx.3 = xor i32 %xor492.3, 12, !dbg !237
  %add.ptr496.3 = getelementptr inbounds i8, ptr addrspace(3) %141, i32 %add.ptr496.idx.3, !dbg !237
  %v_column.sroa.0.0.insert.insert1297 = or disjoint i32 %v_fetch.sroa.62.22.extract.shift, %v_fetch.sroa.14.6.extract.shift, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1297, ptr addrspace(3) %add.ptr496.3, align 4, !dbg !238, !tbaa !30
  %142 = or disjoint i32 %mul483, 1024, !dbg !240
  %143 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %142, !dbg !237
  %xor492.4 = shl nuw nsw i32 %xor491, 2, !dbg !237
  %add.ptr496.idx.4 = xor i32 %xor492.4, 16, !dbg !237
  %add.ptr496.4 = getelementptr inbounds i8, ptr addrspace(3) %143, i32 %add.ptr496.idx.4, !dbg !237
  %v_column.sroa.66.0.insert.ext1426 = shl i32 %condval_2.sroa.6.0.1, 16, !dbg !238
  %v_column.sroa.0.0.insert.ext1299 = and i32 %condval_2.sroa.6.0, 65535, !dbg !238
  %v_column.sroa.0.0.insert.insert1301 = or disjoint i32 %v_column.sroa.66.0.insert.ext1426, %v_column.sroa.0.0.insert.ext1299, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1301, ptr addrspace(3) %add.ptr496.4, align 4, !dbg !238, !tbaa !30
  %v_fetch.sroa.26.10.extract.shift = lshr i32 %condval_2.sroa.6.0, 16, !dbg !239
  %v_fetch.sroa.74.26.extract.shift = and i32 %condval_2.sroa.6.0.1, -65536, !dbg !238
  %144 = or disjoint i32 %mul483, 1280, !dbg !240
  %145 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %144, !dbg !237
  %xor492.5 = shl nuw nsw i32 %xor491, 2, !dbg !237
  %add.ptr496.idx.5 = xor i32 %xor492.5, 20, !dbg !237
  %add.ptr496.5 = getelementptr inbounds i8, ptr addrspace(3) %145, i32 %add.ptr496.idx.5, !dbg !237
  %v_column.sroa.0.0.insert.insert1305 = or disjoint i32 %v_fetch.sroa.74.26.extract.shift, %v_fetch.sroa.26.10.extract.shift, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1305, ptr addrspace(3) %add.ptr496.5, align 4, !dbg !238, !tbaa !30
  %146 = or disjoint i32 %mul483, 1536, !dbg !240
  %147 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %146, !dbg !237
  %xor492.6 = shl nuw nsw i32 %xor491, 2, !dbg !237
  %add.ptr496.idx.6 = xor i32 %xor492.6, 24, !dbg !237
  %add.ptr496.6 = getelementptr inbounds i8, ptr addrspace(3) %147, i32 %add.ptr496.idx.6, !dbg !237
  %v_column.sroa.66.0.insert.ext1436 = shl i32 %condval_2.sroa.7.0.1, 16, !dbg !238
  %v_column.sroa.0.0.insert.ext1307 = and i32 %condval_2.sroa.7.0, 65535, !dbg !238
  %v_column.sroa.0.0.insert.insert1309 = or disjoint i32 %v_column.sroa.66.0.insert.ext1436, %v_column.sroa.0.0.insert.ext1307, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1309, ptr addrspace(3) %add.ptr496.6, align 4, !dbg !238, !tbaa !30
  %v_fetch.sroa.38.14.extract.shift = lshr i32 %condval_2.sroa.7.0, 16, !dbg !239
  %v_fetch.sroa.86.30.extract.shift = and i32 %condval_2.sroa.7.0.1, -65536, !dbg !238
  %148 = or disjoint i32 %mul483, 1792, !dbg !240
  %149 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %148, !dbg !237
  %xor492.7 = shl nuw nsw i32 %xor491, 2, !dbg !237
  %add.ptr496.idx.7 = xor i32 %xor492.7, 28, !dbg !237
  %add.ptr496.7 = getelementptr inbounds i8, ptr addrspace(3) %149, i32 %add.ptr496.idx.7, !dbg !237
  %v_column.sroa.0.0.insert.insert1313 = or disjoint i32 %v_fetch.sroa.86.30.extract.shift, %v_fetch.sroa.38.14.extract.shift, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1313, ptr addrspace(3) %add.ptr496.7, align 4, !dbg !238, !tbaa !30
  br i1 %cmp400, label %if.then401.11031, label %if.end451.11039, !dbg !232

if.then401.11031:                                 ; preds = %if.end451.1
  %150 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep961, i64 %add407, !dbg !233
  %151 = getelementptr inbounds i8, ptr addrspace(4) %150, i64 %.idx, !dbg !233
  %152 = getelementptr inbounds i8, ptr addrspace(4) %151, i64 128, !dbg !233
  %condval_2.sroa.0.0.copyload.11024 = load i32, ptr addrspace(4) %152, align 16, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx.11025 = getelementptr inbounds i8, ptr addrspace(4) %151, i64 132, !dbg !234
  %condval_2.sroa.5.0.copyload.11026 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx.11025, align 4, !dbg !234, !tbaa !30
  %condval_2.sroa.6.0.add.ptr427.sroa_idx.11027 = getelementptr inbounds i8, ptr addrspace(4) %151, i64 136, !dbg !234
  %condval_2.sroa.6.0.copyload.11028 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr427.sroa_idx.11027, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.7.0.add.ptr427.sroa_idx.11029 = getelementptr inbounds i8, ptr addrspace(4) %151, i64 140, !dbg !234
  %condval_2.sroa.7.0.copyload.11030 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr427.sroa_idx.11029, align 4, !dbg !234, !tbaa !30
  br label %if.end451.11039, !dbg !235

if.end451.11039:                                  ; preds = %if.then401.11031, %if.end451.1
  %condval_2.sroa.0.0.11032 = phi i32 [ %condval_2.sroa.0.0.copyload.11024, %if.then401.11031 ], [ 0, %if.end451.1 ], !dbg !94
  %condval_2.sroa.5.0.11033 = phi i32 [ %condval_2.sroa.5.0.copyload.11026, %if.then401.11031 ], [ 0, %if.end451.1 ], !dbg !94
  %condval_2.sroa.6.0.11034 = phi i32 [ %condval_2.sroa.6.0.copyload.11028, %if.then401.11031 ], [ 0, %if.end451.1 ], !dbg !94
  %condval_2.sroa.7.0.11035 = phi i32 [ %condval_2.sroa.7.0.copyload.11030, %if.then401.11031 ], [ 0, %if.end451.1 ], !dbg !94
  br i1 %cmp400.1, label %if.then401.1.1, label %if.end451.1.1, !dbg !232

if.then401.1.1:                                   ; preds = %if.end451.11039
  %153 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep961, i64 %add407, !dbg !233
  %154 = getelementptr inbounds i8, ptr addrspace(4) %153, i64 %.idx, !dbg !233
  %gep962.1.1 = getelementptr inbounds i8, ptr addrspace(4) %154, i64 384, !dbg !233
  %condval_2.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %gep962.1.1, align 16, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %154, i64 388, !dbg !234
  %condval_2.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx.1.1, align 4, !dbg !234, !tbaa !30
  %condval_2.sroa.6.0.add.ptr427.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %154, i64 392, !dbg !234
  %condval_2.sroa.6.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr427.sroa_idx.1.1, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.7.0.add.ptr427.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %154, i64 396, !dbg !234
  %condval_2.sroa.7.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr427.sroa_idx.1.1, align 4, !dbg !234, !tbaa !30
  br label %if.end451.1.1, !dbg !235

if.end451.1.1:                                    ; preds = %if.then401.1.1, %if.end451.11039
  %condval_2.sroa.0.0.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1, %if.then401.1.1 ], [ 0, %if.end451.11039 ], !dbg !94
  %condval_2.sroa.5.0.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1, %if.then401.1.1 ], [ 0, %if.end451.11039 ], !dbg !94
  %condval_2.sroa.6.0.1.1 = phi i32 [ %condval_2.sroa.6.0.copyload.1.1, %if.then401.1.1 ], [ 0, %if.end451.11039 ], !dbg !94
  %condval_2.sroa.7.0.1.1 = phi i32 [ %condval_2.sroa.7.0.copyload.1.1, %if.then401.1.1 ], [ 0, %if.end451.11039 ], !dbg !94
  %155 = or disjoint i32 %mul483, 2048, !dbg !240
  %156 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %155, !dbg !237
  %add.ptr496.11043 = getelementptr inbounds i8, ptr addrspace(3) %156, i32 %add.ptr496.idx, !dbg !237
  %v_column.sroa.66.0.insert.ext1446 = shl i32 %condval_2.sroa.0.0.1.1, 16, !dbg !238
  %v_column.sroa.0.0.insert.ext1315 = and i32 %condval_2.sroa.0.0.11032, 65535, !dbg !238
  %v_column.sroa.0.0.insert.insert1317 = or disjoint i32 %v_column.sroa.66.0.insert.ext1446, %v_column.sroa.0.0.insert.ext1315, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1317, ptr addrspace(3) %add.ptr496.11043, align 4, !dbg !238, !tbaa !30
  %v_fetch.sroa.0.2.extract.shift1572 = lshr i32 %condval_2.sroa.0.0.11032, 16, !dbg !239
  %v_fetch.sroa.50.18.extract.shift1632 = and i32 %condval_2.sroa.0.0.1.1, -65536, !dbg !238
  %157 = or disjoint i32 %mul483, 2304, !dbg !240
  %158 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %157, !dbg !237
  %add.ptr496.1.1 = getelementptr inbounds i8, ptr addrspace(3) %158, i32 %add.ptr496.idx.1, !dbg !237
  %v_column.sroa.0.0.insert.insert1321 = or disjoint i32 %v_fetch.sroa.50.18.extract.shift1632, %v_fetch.sroa.0.2.extract.shift1572, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1321, ptr addrspace(3) %add.ptr496.1.1, align 4, !dbg !238, !tbaa !30
  %159 = or disjoint i32 %mul483, 2560, !dbg !240
  %160 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %159, !dbg !237
  %add.ptr496.2.1 = getelementptr inbounds i8, ptr addrspace(3) %160, i32 %add.ptr496.idx.2, !dbg !237
  %v_column.sroa.66.0.insert.ext1456 = shl i32 %condval_2.sroa.5.0.1.1, 16, !dbg !238
  %v_column.sroa.0.0.insert.ext1323 = and i32 %condval_2.sroa.5.0.11033, 65535, !dbg !238
  %v_column.sroa.0.0.insert.insert1325 = or disjoint i32 %v_column.sroa.66.0.insert.ext1456, %v_column.sroa.0.0.insert.ext1323, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1325, ptr addrspace(3) %add.ptr496.2.1, align 4, !dbg !238, !tbaa !30
  %v_fetch.sroa.14.6.extract.shift1587 = lshr i32 %condval_2.sroa.5.0.11033, 16, !dbg !239
  %v_fetch.sroa.62.22.extract.shift1647 = and i32 %condval_2.sroa.5.0.1.1, -65536, !dbg !238
  %161 = or disjoint i32 %mul483, 2816, !dbg !240
  %162 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %161, !dbg !237
  %add.ptr496.3.1 = getelementptr inbounds i8, ptr addrspace(3) %162, i32 %add.ptr496.idx.3, !dbg !237
  %v_column.sroa.0.0.insert.insert1329 = or disjoint i32 %v_fetch.sroa.62.22.extract.shift1647, %v_fetch.sroa.14.6.extract.shift1587, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1329, ptr addrspace(3) %add.ptr496.3.1, align 4, !dbg !238, !tbaa !30
  %163 = or disjoint i32 %mul483, 3072, !dbg !240
  %164 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %163, !dbg !237
  %add.ptr496.4.1 = getelementptr inbounds i8, ptr addrspace(3) %164, i32 %add.ptr496.idx.4, !dbg !237
  %v_column.sroa.66.0.insert.ext1466 = shl i32 %condval_2.sroa.6.0.1.1, 16, !dbg !238
  %v_column.sroa.0.0.insert.ext1331 = and i32 %condval_2.sroa.6.0.11034, 65535, !dbg !238
  %v_column.sroa.0.0.insert.insert1333 = or disjoint i32 %v_column.sroa.66.0.insert.ext1466, %v_column.sroa.0.0.insert.ext1331, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1333, ptr addrspace(3) %add.ptr496.4.1, align 4, !dbg !238, !tbaa !30
  %v_fetch.sroa.26.10.extract.shift1602 = lshr i32 %condval_2.sroa.6.0.11034, 16, !dbg !239
  %v_fetch.sroa.74.26.extract.shift1662 = and i32 %condval_2.sroa.6.0.1.1, -65536, !dbg !238
  %165 = or disjoint i32 %mul483, 3328, !dbg !240
  %166 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %165, !dbg !237
  %add.ptr496.5.1 = getelementptr inbounds i8, ptr addrspace(3) %166, i32 %add.ptr496.idx.5, !dbg !237
  %v_column.sroa.0.0.insert.insert1337 = or disjoint i32 %v_fetch.sroa.74.26.extract.shift1662, %v_fetch.sroa.26.10.extract.shift1602, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1337, ptr addrspace(3) %add.ptr496.5.1, align 4, !dbg !238, !tbaa !30
  %167 = or disjoint i32 %mul483, 3584, !dbg !240
  %168 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %167, !dbg !237
  %add.ptr496.6.1 = getelementptr inbounds i8, ptr addrspace(3) %168, i32 %add.ptr496.idx.6, !dbg !237
  %v_column.sroa.66.0.insert.ext1476 = shl i32 %condval_2.sroa.7.0.1.1, 16, !dbg !238
  %v_column.sroa.0.0.insert.ext1339 = and i32 %condval_2.sroa.7.0.11035, 65535, !dbg !238
  %v_column.sroa.0.0.insert.insert1341 = or disjoint i32 %v_column.sroa.66.0.insert.ext1476, %v_column.sroa.0.0.insert.ext1339, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1341, ptr addrspace(3) %add.ptr496.6.1, align 4, !dbg !238, !tbaa !30
  %v_fetch.sroa.38.14.extract.shift1617 = lshr i32 %condval_2.sroa.7.0.11035, 16, !dbg !239
  %v_fetch.sroa.86.30.extract.shift1677 = and i32 %condval_2.sroa.7.0.1.1, -65536, !dbg !238
  %169 = or disjoint i32 %mul483, 3840, !dbg !240
  %170 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %169, !dbg !237
  %add.ptr496.7.1 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 %add.ptr496.idx.7, !dbg !237
  %v_column.sroa.0.0.insert.insert1345 = or disjoint i32 %v_fetch.sroa.86.30.extract.shift1677, %v_fetch.sroa.38.14.extract.shift1617, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1345, ptr addrspace(3) %add.ptr496.7.1, align 4, !dbg !238, !tbaa !30
  %171 = add nuw i32 %add397, 16
  %narrow = add nuw nsw i32 %shr487, 8
  %xor491.1 = xor i32 %narrow, %and31
  %cmp400.11050 = icmp slt i32 %171, 1024, !dbg !231
  br i1 %cmp400.11050, label %if.then401.11060, label %if.end451.11069, !dbg !232

if.then401.11060:                                 ; preds = %if.end451.1.1
  %172 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep961, i64 %add407, !dbg !233
  %173 = getelementptr inbounds i8, ptr addrspace(4) %172, i64 %.idx, !dbg !233
  %174 = getelementptr inbounds i8, ptr addrspace(4) %173, i64 4096, !dbg !233
  %condval_2.sroa.0.0.copyload.11053 = load i32, ptr addrspace(4) %174, align 16, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx.11054 = getelementptr inbounds i8, ptr addrspace(4) %173, i64 4100, !dbg !234
  %condval_2.sroa.5.0.copyload.11055 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx.11054, align 4, !dbg !234, !tbaa !30
  %condval_2.sroa.6.0.add.ptr427.sroa_idx.11056 = getelementptr inbounds i8, ptr addrspace(4) %173, i64 4104, !dbg !234
  %condval_2.sroa.6.0.copyload.11057 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr427.sroa_idx.11056, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.7.0.add.ptr427.sroa_idx.11058 = getelementptr inbounds i8, ptr addrspace(4) %173, i64 4108, !dbg !234
  %condval_2.sroa.7.0.copyload.11059 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr427.sroa_idx.11058, align 4, !dbg !234, !tbaa !30
  br label %if.end451.11069, !dbg !235

if.end451.11069:                                  ; preds = %if.then401.11060, %if.end451.1.1
  %condval_2.sroa.0.0.11061 = phi i32 [ %condval_2.sroa.0.0.copyload.11053, %if.then401.11060 ], [ 0, %if.end451.1.1 ], !dbg !94
  %condval_2.sroa.5.0.11062 = phi i32 [ %condval_2.sroa.5.0.copyload.11055, %if.then401.11060 ], [ 0, %if.end451.1.1 ], !dbg !94
  %condval_2.sroa.6.0.11063 = phi i32 [ %condval_2.sroa.6.0.copyload.11057, %if.then401.11060 ], [ 0, %if.end451.1.1 ], !dbg !94
  %condval_2.sroa.7.0.11064 = phi i32 [ %condval_2.sroa.7.0.copyload.11059, %if.then401.11060 ], [ 0, %if.end451.1.1 ], !dbg !94
  %narrow2038 = add nuw i32 %add397, 17, !dbg !236
  %cmp400.1.11068 = icmp slt i32 %narrow2038, 1024, !dbg !231
  br i1 %cmp400.1.11068, label %if.then401.1.11079, label %if.end451.1.11088, !dbg !232

if.then401.1.11079:                               ; preds = %if.end451.11069
  %175 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep961, i64 %add407, !dbg !233
  %176 = getelementptr inbounds i8, ptr addrspace(4) %175, i64 %.idx, !dbg !233
  %gep962.1.11071 = getelementptr inbounds i8, ptr addrspace(4) %176, i64 4352, !dbg !233
  %condval_2.sroa.0.0.copyload.1.11072 = load i32, ptr addrspace(4) %gep962.1.11071, align 16, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx.1.11073 = getelementptr inbounds i8, ptr addrspace(4) %176, i64 4356, !dbg !234
  %condval_2.sroa.5.0.copyload.1.11074 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx.1.11073, align 4, !dbg !234, !tbaa !30
  %condval_2.sroa.6.0.add.ptr427.sroa_idx.1.11075 = getelementptr inbounds i8, ptr addrspace(4) %176, i64 4360, !dbg !234
  %condval_2.sroa.6.0.copyload.1.11076 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr427.sroa_idx.1.11075, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.7.0.add.ptr427.sroa_idx.1.11077 = getelementptr inbounds i8, ptr addrspace(4) %176, i64 4364, !dbg !234
  %condval_2.sroa.7.0.copyload.1.11078 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr427.sroa_idx.1.11077, align 4, !dbg !234, !tbaa !30
  br label %if.end451.1.11088, !dbg !235

if.end451.1.11088:                                ; preds = %if.then401.1.11079, %if.end451.11069
  %condval_2.sroa.0.0.1.11080 = phi i32 [ %condval_2.sroa.0.0.copyload.1.11072, %if.then401.1.11079 ], [ 0, %if.end451.11069 ], !dbg !94
  %condval_2.sroa.5.0.1.11081 = phi i32 [ %condval_2.sroa.5.0.copyload.1.11074, %if.then401.1.11079 ], [ 0, %if.end451.11069 ], !dbg !94
  %condval_2.sroa.6.0.1.11082 = phi i32 [ %condval_2.sroa.6.0.copyload.1.11076, %if.then401.1.11079 ], [ 0, %if.end451.11069 ], !dbg !94
  %condval_2.sroa.7.0.1.11083 = phi i32 [ %condval_2.sroa.7.0.copyload.1.11078, %if.then401.1.11079 ], [ 0, %if.end451.11069 ], !dbg !94
  %add.ptr496.idx.11092 = shl nuw nsw i32 %xor491.1, 2, !dbg !237
  %add.ptr496.11093 = getelementptr inbounds i8, ptr addrspace(3) %135, i32 %add.ptr496.idx.11092, !dbg !237
  %v_column.sroa.66.0.insert.ext1486 = shl i32 %condval_2.sroa.0.0.1.11080, 16, !dbg !238
  %v_column.sroa.0.0.insert.ext1347 = and i32 %condval_2.sroa.0.0.11061, 65535, !dbg !238
  %v_column.sroa.0.0.insert.insert1349 = or disjoint i32 %v_column.sroa.66.0.insert.ext1486, %v_column.sroa.0.0.insert.ext1347, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1349, ptr addrspace(3) %add.ptr496.11093, align 4, !dbg !238, !tbaa !30
  %v_fetch.sroa.0.2.extract.shift1575 = lshr i32 %condval_2.sroa.0.0.11061, 16, !dbg !239
  %v_fetch.sroa.50.18.extract.shift1635 = and i32 %condval_2.sroa.0.0.1.11080, -65536, !dbg !238
  %xor492.1.11098 = shl nuw nsw i32 %xor491.1, 2, !dbg !237
  %add.ptr496.idx.1.11099 = xor i32 %xor492.1.11098, 4, !dbg !237
  %add.ptr496.1.11100 = getelementptr inbounds i8, ptr addrspace(3) %137, i32 %add.ptr496.idx.1.11099, !dbg !237
  %v_column.sroa.0.0.insert.insert1353 = or disjoint i32 %v_fetch.sroa.50.18.extract.shift1635, %v_fetch.sroa.0.2.extract.shift1575, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1353, ptr addrspace(3) %add.ptr496.1.11100, align 4, !dbg !238, !tbaa !30
  %xor492.2.11105 = shl nuw nsw i32 %xor491.1, 2, !dbg !237
  %add.ptr496.idx.2.11106 = xor i32 %xor492.2.11105, 8, !dbg !237
  %add.ptr496.2.11107 = getelementptr inbounds i8, ptr addrspace(3) %139, i32 %add.ptr496.idx.2.11106, !dbg !237
  %v_column.sroa.66.0.insert.ext1496 = shl i32 %condval_2.sroa.5.0.1.11081, 16, !dbg !238
  %v_column.sroa.0.0.insert.ext1355 = and i32 %condval_2.sroa.5.0.11062, 65535, !dbg !238
  %v_column.sroa.0.0.insert.insert1357 = or disjoint i32 %v_column.sroa.66.0.insert.ext1496, %v_column.sroa.0.0.insert.ext1355, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1357, ptr addrspace(3) %add.ptr496.2.11107, align 4, !dbg !238, !tbaa !30
  %v_fetch.sroa.14.6.extract.shift1590 = lshr i32 %condval_2.sroa.5.0.11062, 16, !dbg !239
  %v_fetch.sroa.62.22.extract.shift1650 = and i32 %condval_2.sroa.5.0.1.11081, -65536, !dbg !238
  %xor492.3.11112 = shl nuw nsw i32 %xor491.1, 2, !dbg !237
  %add.ptr496.idx.3.11113 = xor i32 %xor492.3.11112, 12, !dbg !237
  %add.ptr496.3.11114 = getelementptr inbounds i8, ptr addrspace(3) %141, i32 %add.ptr496.idx.3.11113, !dbg !237
  %v_column.sroa.0.0.insert.insert1361 = or disjoint i32 %v_fetch.sroa.62.22.extract.shift1650, %v_fetch.sroa.14.6.extract.shift1590, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1361, ptr addrspace(3) %add.ptr496.3.11114, align 4, !dbg !238, !tbaa !30
  %xor492.4.11119 = shl nuw nsw i32 %xor491.1, 2, !dbg !237
  %add.ptr496.idx.4.11120 = xor i32 %xor492.4.11119, 16, !dbg !237
  %add.ptr496.4.11121 = getelementptr inbounds i8, ptr addrspace(3) %143, i32 %add.ptr496.idx.4.11120, !dbg !237
  %v_column.sroa.66.0.insert.ext1506 = shl i32 %condval_2.sroa.6.0.1.11082, 16, !dbg !238
  %v_column.sroa.0.0.insert.ext1363 = and i32 %condval_2.sroa.6.0.11063, 65535, !dbg !238
  %v_column.sroa.0.0.insert.insert1365 = or disjoint i32 %v_column.sroa.66.0.insert.ext1506, %v_column.sroa.0.0.insert.ext1363, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1365, ptr addrspace(3) %add.ptr496.4.11121, align 4, !dbg !238, !tbaa !30
  %v_fetch.sroa.26.10.extract.shift1605 = lshr i32 %condval_2.sroa.6.0.11063, 16, !dbg !239
  %v_fetch.sroa.74.26.extract.shift1665 = and i32 %condval_2.sroa.6.0.1.11082, -65536, !dbg !238
  %xor492.5.11126 = shl nuw nsw i32 %xor491.1, 2, !dbg !237
  %add.ptr496.idx.5.11127 = xor i32 %xor492.5.11126, 20, !dbg !237
  %add.ptr496.5.11128 = getelementptr inbounds i8, ptr addrspace(3) %145, i32 %add.ptr496.idx.5.11127, !dbg !237
  %v_column.sroa.0.0.insert.insert1369 = or disjoint i32 %v_fetch.sroa.74.26.extract.shift1665, %v_fetch.sroa.26.10.extract.shift1605, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1369, ptr addrspace(3) %add.ptr496.5.11128, align 4, !dbg !238, !tbaa !30
  %xor492.6.11133 = shl nuw nsw i32 %xor491.1, 2, !dbg !237
  %add.ptr496.idx.6.11134 = xor i32 %xor492.6.11133, 24, !dbg !237
  %add.ptr496.6.11135 = getelementptr inbounds i8, ptr addrspace(3) %147, i32 %add.ptr496.idx.6.11134, !dbg !237
  %v_column.sroa.66.0.insert.ext1516 = shl i32 %condval_2.sroa.7.0.1.11083, 16, !dbg !238
  %v_column.sroa.0.0.insert.ext1371 = and i32 %condval_2.sroa.7.0.11064, 65535, !dbg !238
  %v_column.sroa.0.0.insert.insert1373 = or disjoint i32 %v_column.sroa.66.0.insert.ext1516, %v_column.sroa.0.0.insert.ext1371, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1373, ptr addrspace(3) %add.ptr496.6.11135, align 4, !dbg !238, !tbaa !30
  %v_fetch.sroa.38.14.extract.shift1620 = lshr i32 %condval_2.sroa.7.0.11064, 16, !dbg !239
  %v_fetch.sroa.86.30.extract.shift1680 = and i32 %condval_2.sroa.7.0.1.11083, -65536, !dbg !238
  %xor492.7.11140 = shl nuw nsw i32 %xor491.1, 2, !dbg !237
  %add.ptr496.idx.7.11141 = xor i32 %xor492.7.11140, 28, !dbg !237
  %add.ptr496.7.11142 = getelementptr inbounds i8, ptr addrspace(3) %149, i32 %add.ptr496.idx.7.11141, !dbg !237
  %v_column.sroa.0.0.insert.insert1377 = or disjoint i32 %v_fetch.sroa.86.30.extract.shift1680, %v_fetch.sroa.38.14.extract.shift1620, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1377, ptr addrspace(3) %add.ptr496.7.11142, align 4, !dbg !238, !tbaa !30
  br i1 %cmp400.11050, label %if.then401.11031.1, label %if.end451.11039.1, !dbg !232

if.then401.11031.1:                               ; preds = %if.end451.1.11088
  %177 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep961, i64 %add407, !dbg !233
  %178 = getelementptr inbounds i8, ptr addrspace(4) %177, i64 %.idx, !dbg !233
  %179 = getelementptr inbounds i8, ptr addrspace(4) %178, i64 4224, !dbg !233
  %condval_2.sroa.0.0.copyload.11024.1 = load i32, ptr addrspace(4) %179, align 16, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx.11025.1 = getelementptr inbounds i8, ptr addrspace(4) %178, i64 4228, !dbg !234
  %condval_2.sroa.5.0.copyload.11026.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx.11025.1, align 4, !dbg !234, !tbaa !30
  %condval_2.sroa.6.0.add.ptr427.sroa_idx.11027.1 = getelementptr inbounds i8, ptr addrspace(4) %178, i64 4232, !dbg !234
  %condval_2.sroa.6.0.copyload.11028.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr427.sroa_idx.11027.1, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.7.0.add.ptr427.sroa_idx.11029.1 = getelementptr inbounds i8, ptr addrspace(4) %178, i64 4236, !dbg !234
  %condval_2.sroa.7.0.copyload.11030.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr427.sroa_idx.11029.1, align 4, !dbg !234, !tbaa !30
  br label %if.end451.11039.1, !dbg !235

if.end451.11039.1:                                ; preds = %if.then401.11031.1, %if.end451.1.11088
  %condval_2.sroa.0.0.11032.1 = phi i32 [ %condval_2.sroa.0.0.copyload.11024.1, %if.then401.11031.1 ], [ 0, %if.end451.1.11088 ], !dbg !94
  %condval_2.sroa.5.0.11033.1 = phi i32 [ %condval_2.sroa.5.0.copyload.11026.1, %if.then401.11031.1 ], [ 0, %if.end451.1.11088 ], !dbg !94
  %condval_2.sroa.6.0.11034.1 = phi i32 [ %condval_2.sroa.6.0.copyload.11028.1, %if.then401.11031.1 ], [ 0, %if.end451.1.11088 ], !dbg !94
  %condval_2.sroa.7.0.11035.1 = phi i32 [ %condval_2.sroa.7.0.copyload.11030.1, %if.then401.11031.1 ], [ 0, %if.end451.1.11088 ], !dbg !94
  br i1 %cmp400.1.11068, label %if.then401.1.1.1, label %if.end451.1.1.1, !dbg !232

if.then401.1.1.1:                                 ; preds = %if.end451.11039.1
  %180 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep961, i64 %add407, !dbg !233
  %181 = getelementptr inbounds i8, ptr addrspace(4) %180, i64 %.idx, !dbg !233
  %gep962.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %181, i64 4480, !dbg !233
  %condval_2.sroa.0.0.copyload.1.1.1 = load i32, ptr addrspace(4) %gep962.1.1.1, align 16, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %181, i64 4484, !dbg !234
  %condval_2.sroa.5.0.copyload.1.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx.1.1.1, align 4, !dbg !234, !tbaa !30
  %condval_2.sroa.6.0.add.ptr427.sroa_idx.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %181, i64 4488, !dbg !234
  %condval_2.sroa.6.0.copyload.1.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.6.0.add.ptr427.sroa_idx.1.1.1, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.7.0.add.ptr427.sroa_idx.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %181, i64 4492, !dbg !234
  %condval_2.sroa.7.0.copyload.1.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.7.0.add.ptr427.sroa_idx.1.1.1, align 4, !dbg !234, !tbaa !30
  br label %if.end451.1.1.1, !dbg !235

if.end451.1.1.1:                                  ; preds = %if.then401.1.1.1, %if.end451.11039.1
  %condval_2.sroa.0.0.1.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1.1, %if.then401.1.1.1 ], [ 0, %if.end451.11039.1 ], !dbg !94
  %condval_2.sroa.5.0.1.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1.1, %if.then401.1.1.1 ], [ 0, %if.end451.11039.1 ], !dbg !94
  %condval_2.sroa.6.0.1.1.1 = phi i32 [ %condval_2.sroa.6.0.copyload.1.1.1, %if.then401.1.1.1 ], [ 0, %if.end451.11039.1 ], !dbg !94
  %condval_2.sroa.7.0.1.1.1 = phi i32 [ %condval_2.sroa.7.0.copyload.1.1.1, %if.then401.1.1.1 ], [ 0, %if.end451.11039.1 ], !dbg !94
  %add.ptr496.11043.1 = getelementptr inbounds i8, ptr addrspace(3) %156, i32 %add.ptr496.idx.11092, !dbg !237
  %v_column.sroa.66.0.insert.ext1526 = shl i32 %condval_2.sroa.0.0.1.1.1, 16, !dbg !238
  %v_column.sroa.0.0.insert.ext1379 = and i32 %condval_2.sroa.0.0.11032.1, 65535, !dbg !238
  %v_column.sroa.0.0.insert.insert1381 = or disjoint i32 %v_column.sroa.66.0.insert.ext1526, %v_column.sroa.0.0.insert.ext1379, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1381, ptr addrspace(3) %add.ptr496.11043.1, align 4, !dbg !238, !tbaa !30
  %v_fetch.sroa.0.2.extract.shift1578 = lshr i32 %condval_2.sroa.0.0.11032.1, 16, !dbg !239
  %v_fetch.sroa.50.18.extract.shift1638 = and i32 %condval_2.sroa.0.0.1.1.1, -65536, !dbg !238
  %add.ptr496.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %158, i32 %add.ptr496.idx.1.11099, !dbg !237
  %v_column.sroa.0.0.insert.insert1385 = or disjoint i32 %v_fetch.sroa.50.18.extract.shift1638, %v_fetch.sroa.0.2.extract.shift1578, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1385, ptr addrspace(3) %add.ptr496.1.1.1, align 4, !dbg !238, !tbaa !30
  %add.ptr496.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %160, i32 %add.ptr496.idx.2.11106, !dbg !237
  %v_column.sroa.66.0.insert.ext1536 = shl i32 %condval_2.sroa.5.0.1.1.1, 16, !dbg !238
  %v_column.sroa.0.0.insert.ext1387 = and i32 %condval_2.sroa.5.0.11033.1, 65535, !dbg !238
  %v_column.sroa.0.0.insert.insert1389 = or disjoint i32 %v_column.sroa.66.0.insert.ext1536, %v_column.sroa.0.0.insert.ext1387, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1389, ptr addrspace(3) %add.ptr496.2.1.1, align 4, !dbg !238, !tbaa !30
  %v_fetch.sroa.14.6.extract.shift1593 = lshr i32 %condval_2.sroa.5.0.11033.1, 16, !dbg !239
  %v_fetch.sroa.62.22.extract.shift1653 = and i32 %condval_2.sroa.5.0.1.1.1, -65536, !dbg !238
  %add.ptr496.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %162, i32 %add.ptr496.idx.3.11113, !dbg !237
  %v_column.sroa.0.0.insert.insert1393 = or disjoint i32 %v_fetch.sroa.62.22.extract.shift1653, %v_fetch.sroa.14.6.extract.shift1593, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1393, ptr addrspace(3) %add.ptr496.3.1.1, align 4, !dbg !238, !tbaa !30
  %add.ptr496.4.1.1 = getelementptr inbounds i8, ptr addrspace(3) %164, i32 %add.ptr496.idx.4.11120, !dbg !237
  %v_column.sroa.66.0.insert.ext1546 = shl i32 %condval_2.sroa.6.0.1.1.1, 16, !dbg !238
  %v_column.sroa.0.0.insert.ext1395 = and i32 %condval_2.sroa.6.0.11034.1, 65535, !dbg !238
  %v_column.sroa.0.0.insert.insert1397 = or disjoint i32 %v_column.sroa.66.0.insert.ext1546, %v_column.sroa.0.0.insert.ext1395, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1397, ptr addrspace(3) %add.ptr496.4.1.1, align 4, !dbg !238, !tbaa !30
  %v_fetch.sroa.26.10.extract.shift1608 = lshr i32 %condval_2.sroa.6.0.11034.1, 16, !dbg !239
  %v_fetch.sroa.74.26.extract.shift1668 = and i32 %condval_2.sroa.6.0.1.1.1, -65536, !dbg !238
  %add.ptr496.5.1.1 = getelementptr inbounds i8, ptr addrspace(3) %166, i32 %add.ptr496.idx.5.11127, !dbg !237
  %v_column.sroa.0.0.insert.insert1401 = or disjoint i32 %v_fetch.sroa.74.26.extract.shift1668, %v_fetch.sroa.26.10.extract.shift1608, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1401, ptr addrspace(3) %add.ptr496.5.1.1, align 4, !dbg !238, !tbaa !30
  %add.ptr496.6.1.1 = getelementptr inbounds i8, ptr addrspace(3) %168, i32 %add.ptr496.idx.6.11134, !dbg !237
  %v_column.sroa.66.0.insert.ext1556 = shl i32 %condval_2.sroa.7.0.1.1.1, 16, !dbg !238
  %v_column.sroa.0.0.insert.ext1403 = and i32 %condval_2.sroa.7.0.11035.1, 65535, !dbg !238
  %v_column.sroa.0.0.insert.insert1405 = or disjoint i32 %v_column.sroa.66.0.insert.ext1556, %v_column.sroa.0.0.insert.ext1403, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1405, ptr addrspace(3) %add.ptr496.6.1.1, align 4, !dbg !238, !tbaa !30
  %v_fetch.sroa.38.14.extract.shift1623 = lshr i32 %condval_2.sroa.7.0.11035.1, 16, !dbg !239
  %v_fetch.sroa.86.30.extract.shift1683 = and i32 %condval_2.sroa.7.0.1.1.1, -65536, !dbg !238
  %add.ptr496.7.1.1 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 %add.ptr496.idx.7.11141, !dbg !237
  %v_column.sroa.0.0.insert.insert1409 = or disjoint i32 %v_fetch.sroa.86.30.extract.shift1683, %v_fetch.sroa.38.14.extract.shift1623, !dbg !238
  store i32 %v_column.sroa.0.0.insert.insert1409, ptr addrspace(3) %add.ptr496.7.1.1, align 4, !dbg !238, !tbaa !30
  fence syncscope("warp") release, !dbg !241
  tail call void @llvm.mxc.barrier.warp(), !dbg !244
  fence syncscope("warp") acquire, !dbg !245
  %and537 = shl nuw nsw i32 %3, 8
  %mul538 = and i32 %and537, 1792
  %mul545 = and i32 %5, 32
  %mul550 = and i32 %shr487, 126
  %shr556 = and i32 %shr487, 1
  %add546 = or disjoint i32 %mul538, %mul545
  %xor558 = xor i32 %shr556, %and31
  %182 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add546
  %xor561 = xor i32 %xor558, %mul550, !dbg !246
  %add.ptr565.idx = shl nuw nsw i32 %xor561, 2, !dbg !247
  %add.ptr565 = getelementptr inbounds i8, ptr addrspace(3) %182, i32 %add.ptr565.idx, !dbg !247
  %183 = load i32, ptr addrspace(3) %add.ptr565, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.0.0.vec.insert = insertelement <2 x i32> poison, i32 %183, i64 0, !dbg !248
  %add552.1 = or i32 %shr487, 1, !dbg !249
  %xor561.1 = xor i32 %xor558, %add552.1, !dbg !246
  %add.ptr565.idx.1 = shl nuw nsw i32 %xor561.1, 2, !dbg !247
  %add.ptr565.1 = getelementptr inbounds i8, ptr addrspace(3) %182, i32 %add.ptr565.idx.1, !dbg !247
  %184 = load i32, ptr addrspace(3) %add.ptr565.1, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.0.4.vec.insert = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert, i32 %184, i64 1, !dbg !248
  %add541.1 = or disjoint i32 %mul538, %mul545
  %add546.1 = or disjoint i32 %add541.1, 64
  %add557.1 = or disjoint i32 %shr556, 2
  %xor558.1 = xor i32 %add557.1, %and31
  %185 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add546.1
  %xor561.11144 = xor i32 %xor558.1, %mul550, !dbg !246
  %add.ptr565.idx.11145 = shl nuw nsw i32 %xor561.11144, 2, !dbg !247
  %add.ptr565.11146 = getelementptr inbounds i8, ptr addrspace(3) %185, i32 %add.ptr565.idx.11145, !dbg !247
  %186 = load i32, ptr addrspace(3) %add.ptr565.11146, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.14.8.vec.insert = insertelement <2 x i32> poison, i32 %186, i64 0, !dbg !248
  %xor561.1.1 = xor i32 %xor558.1, %add552.1, !dbg !246
  %add.ptr565.idx.1.1 = shl nuw nsw i32 %xor561.1.1, 2, !dbg !247
  %add.ptr565.1.1 = getelementptr inbounds i8, ptr addrspace(3) %185, i32 %add.ptr565.idx.1.1, !dbg !247
  %187 = load i32, ptr addrspace(3) %add.ptr565.1.1, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.14.12.vec.insert = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert, i32 %187, i64 1, !dbg !248
  %add541.2 = or disjoint i32 %mul538, %mul545
  %add546.2 = or disjoint i32 %add541.2, 128
  %add557.2 = or disjoint i32 %shr556, 4
  %xor558.2 = xor i32 %add557.2, %and31
  %188 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add546.2
  %xor561.2 = xor i32 %xor558.2, %mul550, !dbg !246
  %add.ptr565.idx.2 = shl nuw nsw i32 %xor561.2, 2, !dbg !247
  %add.ptr565.2 = getelementptr inbounds i8, ptr addrspace(3) %188, i32 %add.ptr565.idx.2, !dbg !247
  %189 = load i32, ptr addrspace(3) %add.ptr565.2, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.26.16.vec.insert = insertelement <2 x i32> poison, i32 %189, i64 0, !dbg !248
  %xor561.1.2 = xor i32 %xor558.2, %add552.1, !dbg !246
  %add.ptr565.idx.1.2 = shl nuw nsw i32 %xor561.1.2, 2, !dbg !247
  %add.ptr565.1.2 = getelementptr inbounds i8, ptr addrspace(3) %188, i32 %add.ptr565.idx.1.2, !dbg !247
  %190 = load i32, ptr addrspace(3) %add.ptr565.1.2, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.26.20.vec.insert = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert, i32 %190, i64 1, !dbg !248
  %add541.3 = or disjoint i32 %mul538, %mul545
  %add546.3 = or disjoint i32 %add541.3, 192
  %add557.3 = or disjoint i32 %shr556, 6
  %xor558.3 = xor i32 %add557.3, %and31
  %191 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add546.3
  %xor561.3 = xor i32 %xor558.3, %mul550, !dbg !246
  %add.ptr565.idx.3 = shl nuw nsw i32 %xor561.3, 2, !dbg !247
  %add.ptr565.3 = getelementptr inbounds i8, ptr addrspace(3) %191, i32 %add.ptr565.idx.3, !dbg !247
  %192 = load i32, ptr addrspace(3) %add.ptr565.3, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.38.24.vec.insert = insertelement <2 x i32> poison, i32 %192, i64 0, !dbg !248
  %xor561.1.3 = xor i32 %xor558.3, %add552.1, !dbg !246
  %add.ptr565.idx.1.3 = shl nuw nsw i32 %xor561.1.3, 2, !dbg !247
  %add.ptr565.1.3 = getelementptr inbounds i8, ptr addrspace(3) %191, i32 %add.ptr565.idx.1.3, !dbg !247
  %193 = load i32, ptr addrspace(3) %add.ptr565.1.3, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.38.28.vec.insert = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert, i32 %193, i64 1, !dbg !248
  %194 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert to <4 x half>, !dbg !250
  %195 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %194, <4 x half> %98, <4 x float> zeroinitializer), !dbg !251
  %196 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert to <4 x half>, !dbg !250
  %197 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %196, <4 x half> %98, <4 x float> zeroinitializer), !dbg !251
  %198 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert to <4 x half>, !dbg !250
  %199 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %198, <4 x half> %98, <4 x float> zeroinitializer), !dbg !251
  %200 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert to <4 x half>, !dbg !250
  %201 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %200, <4 x half> %98, <4 x float> zeroinitializer), !dbg !251
  %add539.1 = or disjoint i32 %mul538, %mul545
  %add546.11149 = or disjoint i32 %add539.1, 2048
  %202 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add546.11149
  %add.ptr565.11153 = getelementptr inbounds i8, ptr addrspace(3) %202, i32 %add.ptr565.idx, !dbg !247
  %203 = load i32, ptr addrspace(3) %add.ptr565.11153, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1227 = insertelement <2 x i32> poison, i32 %203, i64 0, !dbg !248
  %add.ptr565.1.11157 = getelementptr inbounds i8, ptr addrspace(3) %202, i32 %add.ptr565.idx.1, !dbg !247
  %204 = load i32, ptr addrspace(3) %add.ptr565.1.11157, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1233 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1227, i32 %204, i64 1, !dbg !248
  %add541.1.1 = or disjoint i32 %mul538, %mul545
  %add546.1.1 = or disjoint i32 %add541.1.1, 2112
  %205 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add546.1.1
  %add.ptr565.11146.1 = getelementptr inbounds i8, ptr addrspace(3) %205, i32 %add.ptr565.idx.11145, !dbg !247
  %206 = load i32, ptr addrspace(3) %add.ptr565.11146.1, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1243 = insertelement <2 x i32> poison, i32 %206, i64 0, !dbg !248
  %add.ptr565.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %205, i32 %add.ptr565.idx.1.1, !dbg !247
  %207 = load i32, ptr addrspace(3) %add.ptr565.1.1.1, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1249 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1243, i32 %207, i64 1, !dbg !248
  %add541.2.1 = or disjoint i32 %mul538, %mul545
  %add546.2.1 = or disjoint i32 %add541.2.1, 2176
  %208 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add546.2.1
  %add.ptr565.2.1 = getelementptr inbounds i8, ptr addrspace(3) %208, i32 %add.ptr565.idx.2, !dbg !247
  %209 = load i32, ptr addrspace(3) %add.ptr565.2.1, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1259 = insertelement <2 x i32> poison, i32 %209, i64 0, !dbg !248
  %add.ptr565.1.2.1 = getelementptr inbounds i8, ptr addrspace(3) %208, i32 %add.ptr565.idx.1.2, !dbg !247
  %210 = load i32, ptr addrspace(3) %add.ptr565.1.2.1, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1265 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1259, i32 %210, i64 1, !dbg !248
  %add541.3.1 = or disjoint i32 %mul538, %mul545
  %add546.3.1 = or disjoint i32 %add541.3.1, 2240
  %211 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add546.3.1
  %add.ptr565.3.1 = getelementptr inbounds i8, ptr addrspace(3) %211, i32 %add.ptr565.idx.3, !dbg !247
  %212 = load i32, ptr addrspace(3) %add.ptr565.3.1, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1275 = insertelement <2 x i32> poison, i32 %212, i64 0, !dbg !248
  %add.ptr565.1.3.1 = getelementptr inbounds i8, ptr addrspace(3) %211, i32 %add.ptr565.idx.1.3, !dbg !247
  %213 = load i32, ptr addrspace(3) %add.ptr565.1.3.1, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1281 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1275, i32 %213, i64 1, !dbg !248
  %214 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1233 to <4 x half>, !dbg !250
  %215 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %214, <4 x half> %98, <4 x float> zeroinitializer), !dbg !251
  %216 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1249 to <4 x half>, !dbg !250
  %217 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %216, <4 x half> %98, <4 x float> zeroinitializer), !dbg !251
  %218 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1265 to <4 x half>, !dbg !250
  %219 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %218, <4 x half> %98, <4 x float> zeroinitializer), !dbg !251
  %220 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1281 to <4 x half>, !dbg !250
  %221 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %220, <4 x half> %98, <4 x float> zeroinitializer), !dbg !251
  %add551.1 = add nuw nsw i32 %mul550, 8
  %xor561.11164 = xor i32 %xor558, %add551.1, !dbg !246
  %add.ptr565.idx.11165 = shl nuw nsw i32 %xor561.11164, 2, !dbg !247
  %add.ptr565.11166 = getelementptr inbounds i8, ptr addrspace(3) %182, i32 %add.ptr565.idx.11165, !dbg !247
  %222 = load i32, ptr addrspace(3) %add.ptr565.11166, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1229 = insertelement <2 x i32> poison, i32 %222, i64 0, !dbg !248
  %add552.1.11167 = add nuw nsw i32 %mul550, 9, !dbg !249
  %xor561.1.11168 = xor i32 %xor558, %add552.1.11167, !dbg !246
  %add.ptr565.idx.1.11169 = shl nuw nsw i32 %xor561.1.11168, 2, !dbg !247
  %add.ptr565.1.11170 = getelementptr inbounds i8, ptr addrspace(3) %182, i32 %add.ptr565.idx.1.11169, !dbg !247
  %223 = load i32, ptr addrspace(3) %add.ptr565.1.11170, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1235 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1229, i32 %223, i64 1, !dbg !248
  %xor561.11144.11176 = xor i32 %xor558.1, %add551.1, !dbg !246
  %add.ptr565.idx.11145.11177 = shl nuw nsw i32 %xor561.11144.11176, 2, !dbg !247
  %add.ptr565.11146.11178 = getelementptr inbounds i8, ptr addrspace(3) %185, i32 %add.ptr565.idx.11145.11177, !dbg !247
  %224 = load i32, ptr addrspace(3) %add.ptr565.11146.11178, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1245 = insertelement <2 x i32> poison, i32 %224, i64 0, !dbg !248
  %xor561.1.1.11181 = xor i32 %xor558.1, %add552.1.11167, !dbg !246
  %add.ptr565.idx.1.1.11182 = shl nuw nsw i32 %xor561.1.1.11181, 2, !dbg !247
  %add.ptr565.1.1.11183 = getelementptr inbounds i8, ptr addrspace(3) %185, i32 %add.ptr565.idx.1.1.11182, !dbg !247
  %225 = load i32, ptr addrspace(3) %add.ptr565.1.1.11183, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1251 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1245, i32 %225, i64 1, !dbg !248
  %xor561.2.11190 = xor i32 %xor558.2, %add551.1, !dbg !246
  %add.ptr565.idx.2.11191 = shl nuw nsw i32 %xor561.2.11190, 2, !dbg !247
  %add.ptr565.2.11192 = getelementptr inbounds i8, ptr addrspace(3) %188, i32 %add.ptr565.idx.2.11191, !dbg !247
  %226 = load i32, ptr addrspace(3) %add.ptr565.2.11192, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1261 = insertelement <2 x i32> poison, i32 %226, i64 0, !dbg !248
  %xor561.1.2.11195 = xor i32 %xor558.2, %add552.1.11167, !dbg !246
  %add.ptr565.idx.1.2.11196 = shl nuw nsw i32 %xor561.1.2.11195, 2, !dbg !247
  %add.ptr565.1.2.11197 = getelementptr inbounds i8, ptr addrspace(3) %188, i32 %add.ptr565.idx.1.2.11196, !dbg !247
  %227 = load i32, ptr addrspace(3) %add.ptr565.1.2.11197, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1267 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1261, i32 %227, i64 1, !dbg !248
  %xor561.3.11204 = xor i32 %xor558.3, %add551.1, !dbg !246
  %add.ptr565.idx.3.11205 = shl nuw nsw i32 %xor561.3.11204, 2, !dbg !247
  %add.ptr565.3.11206 = getelementptr inbounds i8, ptr addrspace(3) %191, i32 %add.ptr565.idx.3.11205, !dbg !247
  %228 = load i32, ptr addrspace(3) %add.ptr565.3.11206, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1277 = insertelement <2 x i32> poison, i32 %228, i64 0, !dbg !248
  %xor561.1.3.11209 = xor i32 %xor558.3, %add552.1.11167, !dbg !246
  %add.ptr565.idx.1.3.11210 = shl nuw nsw i32 %xor561.1.3.11209, 2, !dbg !247
  %add.ptr565.1.3.11211 = getelementptr inbounds i8, ptr addrspace(3) %191, i32 %add.ptr565.idx.1.3.11210, !dbg !247
  %229 = load i32, ptr addrspace(3) %add.ptr565.1.3.11211, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1283 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1277, i32 %229, i64 1, !dbg !248
  %230 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1235 to <4 x half>, !dbg !250
  %231 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %230, <4 x half> %114, <4 x float> %195), !dbg !251
  %232 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1251 to <4 x half>, !dbg !250
  %233 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %232, <4 x half> %114, <4 x float> %197), !dbg !251
  %234 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1267 to <4 x half>, !dbg !250
  %235 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %234, <4 x half> %114, <4 x float> %199), !dbg !251
  %236 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1283 to <4 x half>, !dbg !250
  %237 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %236, <4 x half> %114, <4 x float> %201), !dbg !251
  %add.ptr565.11153.1 = getelementptr inbounds i8, ptr addrspace(3) %202, i32 %add.ptr565.idx.11165, !dbg !247
  %238 = load i32, ptr addrspace(3) %add.ptr565.11153.1, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.0.0.vec.insert1231 = insertelement <2 x i32> poison, i32 %238, i64 0, !dbg !248
  %add.ptr565.1.11157.1 = getelementptr inbounds i8, ptr addrspace(3) %202, i32 %add.ptr565.idx.1.11169, !dbg !247
  %239 = load i32, ptr addrspace(3) %add.ptr565.1.11157.1, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.0.4.vec.insert1237 = insertelement <2 x i32> %v_operand.sroa.0.0.vec.insert1231, i32 %239, i64 1, !dbg !248
  %add.ptr565.11146.1.1 = getelementptr inbounds i8, ptr addrspace(3) %205, i32 %add.ptr565.idx.11145.11177, !dbg !247
  %240 = load i32, ptr addrspace(3) %add.ptr565.11146.1.1, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.14.8.vec.insert1247 = insertelement <2 x i32> poison, i32 %240, i64 0, !dbg !248
  %add.ptr565.1.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %205, i32 %add.ptr565.idx.1.1.11182, !dbg !247
  %241 = load i32, ptr addrspace(3) %add.ptr565.1.1.1.1, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.14.12.vec.insert1253 = insertelement <2 x i32> %v_operand.sroa.14.8.vec.insert1247, i32 %241, i64 1, !dbg !248
  %add.ptr565.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %208, i32 %add.ptr565.idx.2.11191, !dbg !247
  %242 = load i32, ptr addrspace(3) %add.ptr565.2.1.1, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.26.16.vec.insert1263 = insertelement <2 x i32> poison, i32 %242, i64 0, !dbg !248
  %add.ptr565.1.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %208, i32 %add.ptr565.idx.1.2.11196, !dbg !247
  %243 = load i32, ptr addrspace(3) %add.ptr565.1.2.1.1, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.26.20.vec.insert1269 = insertelement <2 x i32> %v_operand.sroa.26.16.vec.insert1263, i32 %243, i64 1, !dbg !248
  %add.ptr565.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %211, i32 %add.ptr565.idx.3.11205, !dbg !247
  %244 = load i32, ptr addrspace(3) %add.ptr565.3.1.1, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.38.24.vec.insert1279 = insertelement <2 x i32> poison, i32 %244, i64 0, !dbg !248
  %add.ptr565.1.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %211, i32 %add.ptr565.idx.1.3.11210, !dbg !247
  %245 = load i32, ptr addrspace(3) %add.ptr565.1.3.1.1, align 4, !dbg !248, !tbaa !30
  %v_operand.sroa.38.28.vec.insert1285 = insertelement <2 x i32> %v_operand.sroa.38.24.vec.insert1279, i32 %245, i64 1, !dbg !248
  %246 = bitcast <2 x i32> %v_operand.sroa.0.4.vec.insert1237 to <4 x half>, !dbg !250
  %247 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %246, <4 x half> %114, <4 x float> %215), !dbg !251
  %248 = bitcast <2 x i32> %v_operand.sroa.14.12.vec.insert1253 to <4 x half>, !dbg !250
  %249 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %248, <4 x half> %114, <4 x float> %217), !dbg !251
  %250 = bitcast <2 x i32> %v_operand.sroa.26.20.vec.insert1269 to <4 x half>, !dbg !250
  %251 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %250, <4 x half> %114, <4 x float> %219), !dbg !251
  %252 = bitcast <2 x i32> %v_operand.sroa.38.28.vec.insert1285 to <4 x half>, !dbg !250
  %253 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %252, <4 x half> %114, <4 x float> %221), !dbg !251
  %add379 = fadd contract float %add374, %126, !dbg !252
  br label %if.end621, !dbg !61

if.end621:                                        ; preds = %if.end451.1.1.1, %for.body611.preheader
  %.pre-phi2037 = phi i64 [ %11, %if.end451.1.1.1 ], [ %.pre2036, %for.body611.preheader ], !dbg !60
  %.pre-phi2035 = phi i64 [ %9, %if.end451.1.1.1 ], [ %.pre2034, %for.body611.preheader ], !dbg !60
  %.pre-phi2033 = phi i64 [ %7, %if.end451.1.1.1 ], [ %.pre2032, %for.body611.preheader ], !dbg !60
  %add693.1.pre-phi = phi i32 [ %add36.1, %if.end451.1.1.1 ], [ %.pre2031, %for.body611.preheader ], !dbg !59
  %.pre-phi2030 = phi i64 [ %6, %if.end451.1.1.1 ], [ %.pre2029, %for.body611.preheader ], !dbg !58
  %shr692.pre-phi = phi i32 [ %shr35, %if.end451.1.1.1 ], [ %.pre2024, %for.body611.preheader ]
  %.pre-phi2023 = phi i32 [ %mul20, %if.end451.1.1.1 ], [ %.pre2022, %for.body611.preheader ]
  %xor665.3.pre-phi = phi i32 [ %xor59.3, %if.end451.1.1.1 ], [ %.pre2021, %for.body611.preheader ], !dbg !56
  %xor665.2.pre-phi = phi i32 [ %xor59.2, %if.end451.1.1.1 ], [ %.pre2019, %for.body611.preheader ], !dbg !56
  %xor665.1.pre-phi = phi i32 [ %xor59.1, %if.end451.1.1.1 ], [ %.pre2017, %for.body611.preheader ], !dbg !56
  %xor665.pre-phi = phi i32 [ %xor59, %if.end451.1.1.1 ], [ %.pre2015, %for.body611.preheader ], !dbg !56
  %mul671.pre-phi = phi i32 [ %mul65, %if.end451.1.1.1 ], [ %.pre2014, %for.body611.preheader ]
  %and664.pre-phi = phi i32 [ %and31, %if.end451.1.1.1 ], [ %.pre2011, %for.body611.preheader ]
  %shr661.pre-phi = phi i32 [ %shr55, %if.end451.1.1.1 ], [ %.pre2010, %for.body611.preheader ]
  %and657.pre-phi = phi i32 [ %4, %if.end451.1.1.1 ], [ %.pre2009, %for.body611.preheader ]
  %.pre-phi = phi i32 [ %3, %if.end451.1.1.1 ], [ %.pre, %for.body611.preheader ]
  %numerator.sroa.170.0 = phi <4 x float> [ %253, %if.end451.1.1.1 ], [ zeroinitializer, %for.body611.preheader ], !dbg !94
  %numerator.sroa.146.0 = phi <4 x float> [ %251, %if.end451.1.1.1 ], [ zeroinitializer, %for.body611.preheader ], !dbg !94
  %numerator.sroa.122.0 = phi <4 x float> [ %249, %if.end451.1.1.1 ], [ zeroinitializer, %for.body611.preheader ], !dbg !94
  %numerator.sroa.98.0 = phi <4 x float> [ %247, %if.end451.1.1.1 ], [ zeroinitializer, %for.body611.preheader ], !dbg !94
  %numerator.sroa.74.0 = phi <4 x float> [ %237, %if.end451.1.1.1 ], [ zeroinitializer, %for.body611.preheader ], !dbg !94
  %numerator.sroa.50.0 = phi <4 x float> [ %235, %if.end451.1.1.1 ], [ zeroinitializer, %for.body611.preheader ], !dbg !94
  %numerator.sroa.26.0 = phi <4 x float> [ %233, %if.end451.1.1.1 ], [ zeroinitializer, %for.body611.preheader ], !dbg !94
  %numerator.sroa.0.0 = phi <4 x float> [ %231, %if.end451.1.1.1 ], [ zeroinitializer, %for.body611.preheader ], !dbg !94
  %denominator.sroa.0.1 = phi float [ %add379, %if.end451.1.1.1 ], [ 0.000000e+00, %for.body611.preheader ], !dbg !94
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !253
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !253
  %div.1 = fdiv contract float %numerator.sroa.0.4.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !253
  %div.2 = fdiv contract float %numerator.sroa.0.8.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !253
  %div.3 = fdiv contract float %numerator.sroa.0.12.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.26.16.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 0, !dbg !253
  %div.4 = fdiv contract float %numerator.sroa.26.16.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.26.20.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 1, !dbg !253
  %div.5 = fdiv contract float %numerator.sroa.26.20.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.26.24.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 2, !dbg !253
  %div.6 = fdiv contract float %numerator.sroa.26.24.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.26.28.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 3, !dbg !253
  %div.7 = fdiv contract float %numerator.sroa.26.28.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.50.32.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 0, !dbg !253
  %div.8 = fdiv contract float %numerator.sroa.50.32.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.50.36.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 1, !dbg !253
  %div.9 = fdiv contract float %numerator.sroa.50.36.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.50.40.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 2, !dbg !253
  %div.10 = fdiv contract float %numerator.sroa.50.40.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.50.44.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 3, !dbg !253
  %div.11 = fdiv contract float %numerator.sroa.50.44.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.74.48.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 0, !dbg !253
  %div.12 = fdiv contract float %numerator.sroa.74.48.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.74.52.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 1, !dbg !253
  %div.13 = fdiv contract float %numerator.sroa.74.52.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.74.56.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 2, !dbg !253
  %div.14 = fdiv contract float %numerator.sroa.74.56.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.74.60.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 3, !dbg !253
  %div.15 = fdiv contract float %numerator.sroa.74.60.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.98.64.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 0, !dbg !253
  %div.16 = fdiv contract float %numerator.sroa.98.64.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.98.68.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 1, !dbg !253
  %div.17 = fdiv contract float %numerator.sroa.98.68.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.98.72.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 2, !dbg !253
  %div.18 = fdiv contract float %numerator.sroa.98.72.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.98.76.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 3, !dbg !253
  %div.19 = fdiv contract float %numerator.sroa.98.76.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.122.80.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 0, !dbg !253
  %div.20 = fdiv contract float %numerator.sroa.122.80.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.122.84.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 1, !dbg !253
  %div.21 = fdiv contract float %numerator.sroa.122.84.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.122.88.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 2, !dbg !253
  %div.22 = fdiv contract float %numerator.sroa.122.88.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.122.92.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 3, !dbg !253
  %div.23 = fdiv contract float %numerator.sroa.122.92.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.146.96.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 0, !dbg !253
  %div.24 = fdiv contract float %numerator.sroa.146.96.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.146.100.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 1, !dbg !253
  %div.25 = fdiv contract float %numerator.sroa.146.100.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.146.104.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 2, !dbg !253
  %div.26 = fdiv contract float %numerator.sroa.146.104.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.146.108.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 3, !dbg !253
  %div.27 = fdiv contract float %numerator.sroa.146.108.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.170.112.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 0, !dbg !253
  %div.28 = fdiv contract float %numerator.sroa.170.112.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.170.116.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 1, !dbg !253
  %div.29 = fdiv contract float %numerator.sroa.170.116.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.170.120.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 2, !dbg !253
  %div.30 = fdiv contract float %numerator.sroa.170.120.vec.extract, %denominator.sroa.0.1, !dbg !254
  %numerator.sroa.170.124.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 3, !dbg !253
  %div.31 = fdiv contract float %numerator.sroa.170.124.vec.extract, %denominator.sroa.0.1, !dbg !254
  fence syncscope("warp") release, !dbg !255
  tail call void @llvm.mxc.barrier.warp(), !dbg !258
  fence syncscope("warp") acquire, !dbg !259
  %mul658 = and i32 %and657.pre-phi, 1920
  %254 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !264
  %255 = fptrunc float %div to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %254), !dbg !260, !noalias !264
  %256 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !264
  %257 = fptrunc float %div.1 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %256), !dbg !269, !noalias !264
  %258 = bitcast half %255 to i16, !dbg !271
  %259 = bitcast half %257 to i16, !dbg !274
  %260 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !279
  %261 = fptrunc float %div.2 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %260), !dbg !275, !noalias !279
  %262 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !284, !noalias !279
  %263 = fptrunc float %div.3 to half, !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %262), !dbg !284, !noalias !279
  %264 = bitcast half %261 to i16, !dbg !286
  %265 = bitcast half %263 to i16, !dbg !288
  %__6.sroa.6.0.insert.ext = zext i16 %265 to i64, !dbg !289
  %__6.sroa.6.0.insert.shift = shl nuw i64 %__6.sroa.6.0.insert.ext, 48, !dbg !289
  %__6.sroa.5.0.insert.ext = zext i16 %264 to i64, !dbg !289
  %__6.sroa.5.0.insert.shift = shl nuw nsw i64 %__6.sroa.5.0.insert.ext, 32, !dbg !289
  %__6.sroa.5.0.insert.insert = or disjoint i64 %__6.sroa.6.0.insert.shift, %__6.sroa.5.0.insert.shift, !dbg !289
  %__6.sroa.4.0.insert.ext = zext i16 %259 to i64, !dbg !289
  %__6.sroa.4.0.insert.shift = shl nuw nsw i64 %__6.sroa.4.0.insert.ext, 16, !dbg !289
  %__6.sroa.4.0.insert.insert = or disjoint i64 %__6.sroa.5.0.insert.insert, %__6.sroa.4.0.insert.shift, !dbg !289
  %__6.sroa.0.0.insert.ext = zext i16 %258 to i64, !dbg !289
  %__6.sroa.0.0.insert.insert = or disjoint i64 %__6.sroa.4.0.insert.insert, %__6.sroa.0.0.insert.ext, !dbg !289
  %mul666 = shl nuw nsw i32 %xor665.pre-phi, 3, !dbg !290
  %add667 = add nuw nsw i32 %mul666, %mul658, !dbg !291
  %add672 = or disjoint i32 %add667, %mul671.pre-phi, !dbg !292
  %add.ptr674 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add672, !dbg !293
  store i64 %__6.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr674, align 8, !dbg !294
  %266 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !264
  %267 = fptrunc float %div.4 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %266), !dbg !260, !noalias !264
  %268 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !264
  %269 = fptrunc float %div.5 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %268), !dbg !269, !noalias !264
  %270 = bitcast half %267 to i16, !dbg !271
  %271 = bitcast half %269 to i16, !dbg !274
  %272 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !279
  %273 = fptrunc float %div.6 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %272), !dbg !275, !noalias !279
  %274 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !284, !noalias !279
  %275 = fptrunc float %div.7 to half, !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %274), !dbg !284, !noalias !279
  %276 = bitcast half %273 to i16, !dbg !286
  %277 = bitcast half %275 to i16, !dbg !288
  %__6.sroa.6.0.insert.ext.1 = zext i16 %277 to i64, !dbg !289
  %__6.sroa.6.0.insert.shift.1 = shl nuw i64 %__6.sroa.6.0.insert.ext.1, 48, !dbg !289
  %__6.sroa.5.0.insert.ext.1 = zext i16 %276 to i64, !dbg !289
  %__6.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.1, 32, !dbg !289
  %__6.sroa.5.0.insert.insert.1 = or disjoint i64 %__6.sroa.6.0.insert.shift.1, %__6.sroa.5.0.insert.shift.1, !dbg !289
  %__6.sroa.4.0.insert.ext.1 = zext i16 %271 to i64, !dbg !289
  %__6.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.1, 16, !dbg !289
  %__6.sroa.4.0.insert.insert.1 = or disjoint i64 %__6.sroa.5.0.insert.insert.1, %__6.sroa.4.0.insert.shift.1, !dbg !289
  %__6.sroa.0.0.insert.ext.1 = zext i16 %270 to i64, !dbg !289
  %__6.sroa.0.0.insert.insert.1 = or disjoint i64 %__6.sroa.4.0.insert.insert.1, %__6.sroa.0.0.insert.ext.1, !dbg !289
  %mul666.1 = shl nuw nsw i32 %xor665.1.pre-phi, 3, !dbg !290
  %add667.1 = add nuw nsw i32 %mul666.1, %mul658, !dbg !291
  %add672.1 = or disjoint i32 %add667.1, %mul671.pre-phi, !dbg !292
  %add.ptr674.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add672.1, !dbg !293
  store i64 %__6.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr674.1, align 8, !dbg !294
  %278 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !264
  %279 = fptrunc float %div.8 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %278), !dbg !260, !noalias !264
  %280 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !264
  %281 = fptrunc float %div.9 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %280), !dbg !269, !noalias !264
  %282 = bitcast half %279 to i16, !dbg !271
  %283 = bitcast half %281 to i16, !dbg !274
  %284 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !279
  %285 = fptrunc float %div.10 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %284), !dbg !275, !noalias !279
  %286 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !284, !noalias !279
  %287 = fptrunc float %div.11 to half, !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %286), !dbg !284, !noalias !279
  %288 = bitcast half %285 to i16, !dbg !286
  %289 = bitcast half %287 to i16, !dbg !288
  %__6.sroa.6.0.insert.ext.2 = zext i16 %289 to i64, !dbg !289
  %__6.sroa.6.0.insert.shift.2 = shl nuw i64 %__6.sroa.6.0.insert.ext.2, 48, !dbg !289
  %__6.sroa.5.0.insert.ext.2 = zext i16 %288 to i64, !dbg !289
  %__6.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.2, 32, !dbg !289
  %__6.sroa.5.0.insert.insert.2 = or disjoint i64 %__6.sroa.6.0.insert.shift.2, %__6.sroa.5.0.insert.shift.2, !dbg !289
  %__6.sroa.4.0.insert.ext.2 = zext i16 %283 to i64, !dbg !289
  %__6.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.2, 16, !dbg !289
  %__6.sroa.4.0.insert.insert.2 = or disjoint i64 %__6.sroa.5.0.insert.insert.2, %__6.sroa.4.0.insert.shift.2, !dbg !289
  %__6.sroa.0.0.insert.ext.2 = zext i16 %282 to i64, !dbg !289
  %__6.sroa.0.0.insert.insert.2 = or disjoint i64 %__6.sroa.4.0.insert.insert.2, %__6.sroa.0.0.insert.ext.2, !dbg !289
  %mul666.2 = shl nuw nsw i32 %xor665.2.pre-phi, 3, !dbg !290
  %add667.2 = add nuw nsw i32 %mul666.2, %mul658, !dbg !291
  %add672.2 = or disjoint i32 %add667.2, %mul671.pre-phi, !dbg !292
  %add.ptr674.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add672.2, !dbg !293
  store i64 %__6.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr674.2, align 8, !dbg !294
  %290 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !264
  %291 = fptrunc float %div.12 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %290), !dbg !260, !noalias !264
  %292 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !264
  %293 = fptrunc float %div.13 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %292), !dbg !269, !noalias !264
  %294 = bitcast half %291 to i16, !dbg !271
  %295 = bitcast half %293 to i16, !dbg !274
  %296 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !279
  %297 = fptrunc float %div.14 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %296), !dbg !275, !noalias !279
  %298 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !284, !noalias !279
  %299 = fptrunc float %div.15 to half, !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %298), !dbg !284, !noalias !279
  %300 = bitcast half %297 to i16, !dbg !286
  %301 = bitcast half %299 to i16, !dbg !288
  %__6.sroa.6.0.insert.ext.3 = zext i16 %301 to i64, !dbg !289
  %__6.sroa.6.0.insert.shift.3 = shl nuw i64 %__6.sroa.6.0.insert.ext.3, 48, !dbg !289
  %__6.sroa.5.0.insert.ext.3 = zext i16 %300 to i64, !dbg !289
  %__6.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.3, 32, !dbg !289
  %__6.sroa.5.0.insert.insert.3 = or disjoint i64 %__6.sroa.6.0.insert.shift.3, %__6.sroa.5.0.insert.shift.3, !dbg !289
  %__6.sroa.4.0.insert.ext.3 = zext i16 %295 to i64, !dbg !289
  %__6.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.3, 16, !dbg !289
  %__6.sroa.4.0.insert.insert.3 = or disjoint i64 %__6.sroa.5.0.insert.insert.3, %__6.sroa.4.0.insert.shift.3, !dbg !289
  %__6.sroa.0.0.insert.ext.3 = zext i16 %294 to i64, !dbg !289
  %__6.sroa.0.0.insert.insert.3 = or disjoint i64 %__6.sroa.4.0.insert.insert.3, %__6.sroa.0.0.insert.ext.3, !dbg !289
  %mul666.3 = shl nuw nsw i32 %xor665.3.pre-phi, 3, !dbg !290
  %add667.3 = add nuw nsw i32 %mul666.3, %mul658, !dbg !291
  %add672.3 = or disjoint i32 %add667.3, %mul671.pre-phi, !dbg !292
  %add.ptr674.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add672.3, !dbg !293
  store i64 %__6.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr674.3, align 8, !dbg !294
  %302 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !264
  %303 = fptrunc float %div.16 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %302), !dbg !260, !noalias !264
  %304 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !264
  %305 = fptrunc float %div.17 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %304), !dbg !269, !noalias !264
  %306 = bitcast half %303 to i16, !dbg !271
  %307 = bitcast half %305 to i16, !dbg !274
  %308 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !279
  %309 = fptrunc float %div.18 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %308), !dbg !275, !noalias !279
  %310 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !284, !noalias !279
  %311 = fptrunc float %div.19 to half, !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %310), !dbg !284, !noalias !279
  %312 = bitcast half %309 to i16, !dbg !286
  %313 = bitcast half %311 to i16, !dbg !288
  %__6.sroa.6.0.insert.ext.4 = zext i16 %313 to i64, !dbg !289
  %__6.sroa.6.0.insert.shift.4 = shl nuw i64 %__6.sroa.6.0.insert.ext.4, 48, !dbg !289
  %__6.sroa.5.0.insert.ext.4 = zext i16 %312 to i64, !dbg !289
  %__6.sroa.5.0.insert.shift.4 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.4, 32, !dbg !289
  %__6.sroa.5.0.insert.insert.4 = or disjoint i64 %__6.sroa.6.0.insert.shift.4, %__6.sroa.5.0.insert.shift.4, !dbg !289
  %__6.sroa.4.0.insert.ext.4 = zext i16 %307 to i64, !dbg !289
  %__6.sroa.4.0.insert.shift.4 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.4, 16, !dbg !289
  %__6.sroa.4.0.insert.insert.4 = or disjoint i64 %__6.sroa.5.0.insert.insert.4, %__6.sroa.4.0.insert.shift.4, !dbg !289
  %__6.sroa.0.0.insert.ext.4 = zext i16 %306 to i64, !dbg !289
  %__6.sroa.0.0.insert.insert.4 = or disjoint i64 %__6.sroa.4.0.insert.insert.4, %__6.sroa.0.0.insert.ext.4, !dbg !289
  %add662.4 = add nuw nsw i32 %shr661.pre-phi, 8, !dbg !57
  %xor665.4 = xor i32 %add662.4, %and664.pre-phi, !dbg !56
  %mul666.4 = shl nuw nsw i32 %xor665.4, 3, !dbg !290
  %add667.4 = add nuw nsw i32 %mul666.4, %mul658, !dbg !291
  %add672.4 = or disjoint i32 %add667.4, %mul671.pre-phi, !dbg !292
  %add.ptr674.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add672.4, !dbg !293
  store i64 %__6.sroa.0.0.insert.insert.4, ptr addrspace(3) %add.ptr674.4, align 8, !dbg !294
  %314 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !264
  %315 = fptrunc float %div.20 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %314), !dbg !260, !noalias !264
  %316 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !264
  %317 = fptrunc float %div.21 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %316), !dbg !269, !noalias !264
  %318 = bitcast half %315 to i16, !dbg !271
  %319 = bitcast half %317 to i16, !dbg !274
  %320 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !279
  %321 = fptrunc float %div.22 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %320), !dbg !275, !noalias !279
  %322 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !284, !noalias !279
  %323 = fptrunc float %div.23 to half, !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %322), !dbg !284, !noalias !279
  %324 = bitcast half %321 to i16, !dbg !286
  %325 = bitcast half %323 to i16, !dbg !288
  %__6.sroa.6.0.insert.ext.5 = zext i16 %325 to i64, !dbg !289
  %__6.sroa.6.0.insert.shift.5 = shl nuw i64 %__6.sroa.6.0.insert.ext.5, 48, !dbg !289
  %__6.sroa.5.0.insert.ext.5 = zext i16 %324 to i64, !dbg !289
  %__6.sroa.5.0.insert.shift.5 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.5, 32, !dbg !289
  %__6.sroa.5.0.insert.insert.5 = or disjoint i64 %__6.sroa.6.0.insert.shift.5, %__6.sroa.5.0.insert.shift.5, !dbg !289
  %__6.sroa.4.0.insert.ext.5 = zext i16 %319 to i64, !dbg !289
  %__6.sroa.4.0.insert.shift.5 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.5, 16, !dbg !289
  %__6.sroa.4.0.insert.insert.5 = or disjoint i64 %__6.sroa.5.0.insert.insert.5, %__6.sroa.4.0.insert.shift.5, !dbg !289
  %__6.sroa.0.0.insert.ext.5 = zext i16 %318 to i64, !dbg !289
  %__6.sroa.0.0.insert.insert.5 = or disjoint i64 %__6.sroa.4.0.insert.insert.5, %__6.sroa.0.0.insert.ext.5, !dbg !289
  %add662.5 = add nuw nsw i32 %shr661.pre-phi, 10, !dbg !57
  %xor665.5 = xor i32 %add662.5, %and664.pre-phi, !dbg !56
  %mul666.5 = shl nuw nsw i32 %xor665.5, 3, !dbg !290
  %add667.5 = add nuw nsw i32 %mul666.5, %mul658, !dbg !291
  %add672.5 = or disjoint i32 %add667.5, %mul671.pre-phi, !dbg !292
  %add.ptr674.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add672.5, !dbg !293
  store i64 %__6.sroa.0.0.insert.insert.5, ptr addrspace(3) %add.ptr674.5, align 8, !dbg !294
  %326 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !264
  %327 = fptrunc float %div.24 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %326), !dbg !260, !noalias !264
  %328 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !264
  %329 = fptrunc float %div.25 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %328), !dbg !269, !noalias !264
  %330 = bitcast half %327 to i16, !dbg !271
  %331 = bitcast half %329 to i16, !dbg !274
  %332 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !279
  %333 = fptrunc float %div.26 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %332), !dbg !275, !noalias !279
  %334 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !284, !noalias !279
  %335 = fptrunc float %div.27 to half, !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %334), !dbg !284, !noalias !279
  %336 = bitcast half %333 to i16, !dbg !286
  %337 = bitcast half %335 to i16, !dbg !288
  %__6.sroa.6.0.insert.ext.6 = zext i16 %337 to i64, !dbg !289
  %__6.sroa.6.0.insert.shift.6 = shl nuw i64 %__6.sroa.6.0.insert.ext.6, 48, !dbg !289
  %__6.sroa.5.0.insert.ext.6 = zext i16 %336 to i64, !dbg !289
  %__6.sroa.5.0.insert.shift.6 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.6, 32, !dbg !289
  %__6.sroa.5.0.insert.insert.6 = or disjoint i64 %__6.sroa.6.0.insert.shift.6, %__6.sroa.5.0.insert.shift.6, !dbg !289
  %__6.sroa.4.0.insert.ext.6 = zext i16 %331 to i64, !dbg !289
  %__6.sroa.4.0.insert.shift.6 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.6, 16, !dbg !289
  %__6.sroa.4.0.insert.insert.6 = or disjoint i64 %__6.sroa.5.0.insert.insert.6, %__6.sroa.4.0.insert.shift.6, !dbg !289
  %__6.sroa.0.0.insert.ext.6 = zext i16 %330 to i64, !dbg !289
  %__6.sroa.0.0.insert.insert.6 = or disjoint i64 %__6.sroa.4.0.insert.insert.6, %__6.sroa.0.0.insert.ext.6, !dbg !289
  %add662.6 = add nuw nsw i32 %shr661.pre-phi, 12, !dbg !57
  %xor665.6 = xor i32 %add662.6, %and664.pre-phi, !dbg !56
  %mul666.6 = shl nuw nsw i32 %xor665.6, 3, !dbg !290
  %add667.6 = add nuw nsw i32 %mul666.6, %mul658, !dbg !291
  %add672.6 = or disjoint i32 %add667.6, %mul671.pre-phi, !dbg !292
  %add.ptr674.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add672.6, !dbg !293
  store i64 %__6.sroa.0.0.insert.insert.6, ptr addrspace(3) %add.ptr674.6, align 8, !dbg !294
  %338 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !260, !noalias !264
  %339 = fptrunc float %div.28 to half, !dbg !260
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %338), !dbg !260, !noalias !264
  %340 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !269, !noalias !264
  %341 = fptrunc float %div.29 to half, !dbg !269
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %340), !dbg !269, !noalias !264
  %342 = bitcast half %339 to i16, !dbg !271
  %343 = bitcast half %341 to i16, !dbg !274
  %344 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !275, !noalias !279
  %345 = fptrunc float %div.30 to half, !dbg !275
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %344), !dbg !275, !noalias !279
  %346 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !284, !noalias !279
  %347 = fptrunc float %div.31 to half, !dbg !284
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %346), !dbg !284, !noalias !279
  %348 = bitcast half %345 to i16, !dbg !286
  %349 = bitcast half %347 to i16, !dbg !288
  %__6.sroa.6.0.insert.ext.7 = zext i16 %349 to i64, !dbg !289
  %__6.sroa.6.0.insert.shift.7 = shl nuw i64 %__6.sroa.6.0.insert.ext.7, 48, !dbg !289
  %__6.sroa.5.0.insert.ext.7 = zext i16 %348 to i64, !dbg !289
  %__6.sroa.5.0.insert.shift.7 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.7, 32, !dbg !289
  %__6.sroa.5.0.insert.insert.7 = or disjoint i64 %__6.sroa.6.0.insert.shift.7, %__6.sroa.5.0.insert.shift.7, !dbg !289
  %__6.sroa.4.0.insert.ext.7 = zext i16 %343 to i64, !dbg !289
  %__6.sroa.4.0.insert.shift.7 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.7, 16, !dbg !289
  %__6.sroa.4.0.insert.insert.7 = or disjoint i64 %__6.sroa.5.0.insert.insert.7, %__6.sroa.4.0.insert.shift.7, !dbg !289
  %__6.sroa.0.0.insert.ext.7 = zext i16 %342 to i64, !dbg !289
  %__6.sroa.0.0.insert.insert.7 = or disjoint i64 %__6.sroa.4.0.insert.insert.7, %__6.sroa.0.0.insert.ext.7, !dbg !289
  %add662.7 = add nuw nsw i32 %shr661.pre-phi, 14, !dbg !57
  %xor665.7 = xor i32 %add662.7, %and664.pre-phi, !dbg !56
  %mul666.7 = shl nuw nsw i32 %xor665.7, 3, !dbg !290
  %add667.7 = add nuw nsw i32 %mul666.7, %mul658, !dbg !291
  %add672.7 = or disjoint i32 %add667.7, %mul671.pre-phi, !dbg !292
  %add.ptr674.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add672.7, !dbg !293
  store i64 %__6.sroa.0.0.insert.insert.7, ptr addrspace(3) %add.ptr674.7, align 8, !dbg !294
  fence syncscope("warp") release, !dbg !295
  tail call void @llvm.mxc.barrier.warp(), !dbg !298
  fence syncscope("warp") acquire, !dbg !299
  %mul685 = and i32 %.pre-phi2023, 8064
  %and688 = and i32 %.pre-phi, 15
  %invariant.gep976 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul685, !dbg !300
  %xor694 = xor i32 %shr692.pre-phi, %and688, !dbg !301
  %add.ptr698.idx = shl nuw nsw i32 %xor694, 4, !dbg !302
  %add.ptr698 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep976, i32 %add.ptr698.idx, !dbg !302
  %add.ptr710 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2030, !dbg !303
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr710, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr698, i64 16, i1 false), !dbg !304, !tbaa.struct !67, !call_argsrelate !305
  %xor694.1 = xor i32 %add693.1.pre-phi, %and688, !dbg !301
  %gep977.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep976, i32 1024, !dbg !302
  %add.ptr698.idx.1 = shl nuw nsw i32 %xor694.1, 4, !dbg !302
  %add.ptr698.1 = getelementptr inbounds i8, ptr addrspace(3) %gep977.1, i32 %add.ptr698.idx.1, !dbg !302
  %add.ptr710.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2033, !dbg !303
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr710.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr698.1, i64 16, i1 false), !dbg !304, !tbaa.struct !67, !call_argsrelate !305
  %gep977.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep976, i32 2048, !dbg !302
  %add.ptr698.2 = getelementptr inbounds i8, ptr addrspace(3) %gep977.2, i32 %add.ptr698.idx, !dbg !302
  %add.ptr710.2 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2035, !dbg !303
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr710.2, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr698.2, i64 16, i1 false), !dbg !304, !tbaa.struct !67, !call_argsrelate !305
  %gep977.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep976, i32 3072, !dbg !302
  %add.ptr698.3 = getelementptr inbounds i8, ptr addrspace(3) %gep977.3, i32 %add.ptr698.idx.1, !dbg !302
  %add.ptr710.3 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2037, !dbg !303
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr710.3, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr698.3, i64 16, i1 false), !dbg !304, !tbaa.struct !67, !call_argsrelate !305
  ret void, !dbg !306
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v049_codex_power_s1_cache_entry_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v049_codex_power_s1_cache_entry_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
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
!56 = !DILocation(line: 193, column: 104, scope: !40)
!57 = !DILocation(line: 193, column: 75, scope: !40)
!58 = !DILocation(line: 197, column: 3, scope: !40)
!59 = !DILocation(line: 198, column: 261, scope: !40)
!60 = !DILocation(line: 198, column: 105, scope: !40)
!61 = !DILocation(line: 182, column: 3, scope: !40)
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
!89 = !DILocation(line: 36, column: 5, scope: !40)
!90 = !DILocation(line: 39, column: 72, scope: !40)
!91 = !DILocation(line: 39, column: 11, scope: !40)
!92 = !DILocation(line: 40, column: 17, scope: !40)
!93 = !DILocation(line: 41, column: 7, scope: !40)
!94 = !DILocation(line: 0, scope: !40)
!95 = !DILocation(line: 44, column: 24, scope: !40)
!96 = !DILocation(line: 44, column: 213, scope: !40)
!97 = !DILocation(line: 68, column: 3, scope: !72, inlinedAt: !98)
!98 = distinct !DILocation(line: 192, column: 3, scope: !75, inlinedAt: !99)
!99 = distinct !DILocation(line: 46, column: 5, scope: !40)
!100 = !DILocation(line: 69, column: 3, scope: !72, inlinedAt: !98)
!101 = !DILocation(line: 70, column: 3, scope: !72, inlinedAt: !98)
!102 = !DILocation(line: 55, column: 32, scope: !40)
!103 = !DILocation(line: 57, column: 44, scope: !40)
!104 = !DILocation(line: 55, column: 51, scope: !40)
!105 = !DILocation(line: 68, column: 96, scope: !40)
!106 = !DILocation(line: 68, column: 13, scope: !40)
!107 = !DILocation(line: 68, column: 85, scope: !40)
!108 = !DILocation(line: 351, column: 10, scope: !109, inlinedAt: !111)
!109 = distinct !DISubprogram(name: "max", scope: !110, file: !110, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!110 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!111 = distinct !DILocation(line: 79, column: 20, scope: !40)
!112 = !DILocation(line: 1018, column: 9, scope: !113, inlinedAt: !114)
!113 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !73, file: !73, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!114 = distinct !DILocation(line: 81, column: 34, scope: !40)
!115 = !DILocation(line: 171, column: 37, scope: !116, inlinedAt: !117)
!116 = distinct !DISubprogram(name: "__lane_id", scope: !73, file: !73, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!117 = distinct !DILocation(line: 990, column: 14, scope: !118, inlinedAt: !119)
!118 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !73, file: !73, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!119 = distinct !DILocation(line: 1019, column: 11, scope: !113, inlinedAt: !114)
!120 = !DILocation(line: 171, column: 10, scope: !116, inlinedAt: !117)
!121 = !DILocation(line: 991, column: 20, scope: !118, inlinedAt: !119)
!122 = !DILocation(line: 992, column: 36, scope: !118, inlinedAt: !119)
!123 = !DILocation(line: 992, column: 17, scope: !118, inlinedAt: !119)
!124 = !DILocation(line: 992, column: 11, scope: !118, inlinedAt: !119)
!125 = !DILocation(line: 993, column: 43, scope: !118, inlinedAt: !119)
!126 = !DILocation(line: 993, column: 10, scope: !118, inlinedAt: !119)
!127 = !DILocation(line: 1020, column: 14, scope: !113, inlinedAt: !114)
!128 = !DILocation(line: 351, column: 10, scope: !109, inlinedAt: !129)
!129 = distinct !DILocation(line: 81, column: 18, scope: !40)
!130 = !DILocation(line: 1018, column: 9, scope: !113, inlinedAt: !131)
!131 = distinct !DILocation(line: 82, column: 34, scope: !40)
!132 = !DILocation(line: 171, column: 37, scope: !116, inlinedAt: !133)
!133 = distinct !DILocation(line: 990, column: 14, scope: !118, inlinedAt: !134)
!134 = distinct !DILocation(line: 1019, column: 11, scope: !113, inlinedAt: !131)
!135 = !DILocation(line: 171, column: 10, scope: !116, inlinedAt: !133)
!136 = !DILocation(line: 991, column: 20, scope: !118, inlinedAt: !134)
!137 = !DILocation(line: 992, column: 36, scope: !118, inlinedAt: !134)
!138 = !DILocation(line: 992, column: 17, scope: !118, inlinedAt: !134)
!139 = !DILocation(line: 992, column: 11, scope: !118, inlinedAt: !134)
!140 = !DILocation(line: 993, column: 43, scope: !118, inlinedAt: !134)
!141 = !DILocation(line: 993, column: 10, scope: !118, inlinedAt: !134)
!142 = !DILocation(line: 1020, column: 14, scope: !113, inlinedAt: !131)
!143 = !DILocation(line: 351, column: 10, scope: !109, inlinedAt: !144)
!144 = distinct !DILocation(line: 82, column: 18, scope: !40)
!145 = !DILocation(line: 94, column: 26, scope: !40)
!146 = !DILocation(line: 95, column: 26, scope: !40)
!147 = !DILocation(line: 96, column: 26, scope: !40)
!148 = !DILocation(line: 97, column: 26, scope: !40)
!149 = !DILocation(line: 99, column: 25, scope: !40)
!150 = !DILocation(line: 100, column: 25, scope: !40)
!151 = !DILocation(line: 101, column: 25, scope: !40)
!152 = !DILocation(line: 102, column: 25, scope: !40)
!153 = !DILocation(line: 104, column: 23, scope: !40)
!154 = !DILocation(line: 105, column: 23, scope: !40)
!155 = !DILocation(line: 106, column: 23, scope: !40)
!156 = !DILocation(line: 107, column: 23, scope: !40)
!157 = !DILocation(line: 285, column: 49, scope: !158, inlinedAt: !159)
!158 = distinct !DISubprogram(name: "exp2f", scope: !110, file: !110, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!159 = distinct !DILocation(line: 108, column: 15, scope: !40)
!160 = !DILocation(line: 285, column: 49, scope: !158, inlinedAt: !161)
!161 = distinct !DILocation(line: 109, column: 15, scope: !40)
!162 = !DILocation(line: 285, column: 49, scope: !158, inlinedAt: !163)
!163 = distinct !DILocation(line: 110, column: 15, scope: !40)
!164 = !DILocation(line: 285, column: 49, scope: !158, inlinedAt: !165)
!165 = distinct !DILocation(line: 111, column: 15, scope: !40)
!166 = !DILocation(line: 1007, column: 10, scope: !167, inlinedAt: !169)
!167 = distinct !DISubprogram(name: "__float2half_rn", scope: !168, file: !168, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!168 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!169 = distinct !DILocation(line: 1077, column: 18, scope: !170, inlinedAt: !171)
!170 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !168, file: !168, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!171 = distinct !DILocation(line: 1295, column: 23, scope: !172, inlinedAt: !173)
!172 = distinct !DISubprogram(name: "__float22half2_rn", scope: !168, file: !168, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!173 = distinct !DILocation(line: 112, column: 29, scope: !40)
!174 = !{!175, !177}
!175 = distinct !{!175, !176, !"_ZL17__floats2half2_rnff: %agg.result"}
!176 = distinct !{!176, !"_ZL17__floats2half2_rnff"}
!177 = distinct !{!177, !178, !"_ZL17__float22half2_rn6float2: %agg.result"}
!178 = distinct !{!178, !"_ZL17__float22half2_rn6float2"}
!179 = !DILocation(line: 1007, column: 10, scope: !167, inlinedAt: !180)
!180 = distinct !DILocation(line: 1077, column: 38, scope: !170, inlinedAt: !171)
!181 = !DILocation(line: 1007, column: 10, scope: !167, inlinedAt: !182)
!182 = distinct !DILocation(line: 1077, column: 18, scope: !170, inlinedAt: !183)
!183 = distinct !DILocation(line: 1295, column: 23, scope: !172, inlinedAt: !184)
!184 = distinct !DILocation(line: 113, column: 29, scope: !40)
!185 = !{!186, !188}
!186 = distinct !{!186, !187, !"_ZL17__floats2half2_rnff: %agg.result"}
!187 = distinct !{!187, !"_ZL17__floats2half2_rnff"}
!188 = distinct !{!188, !189, !"_ZL17__float22half2_rn6float2: %agg.result"}
!189 = distinct !{!189, !"_ZL17__float22half2_rn6float2"}
!190 = !DILocation(line: 1007, column: 10, scope: !167, inlinedAt: !191)
!191 = distinct !DILocation(line: 1077, column: 38, scope: !170, inlinedAt: !183)
!192 = !DILocation(line: 114, column: 51, scope: !40)
!193 = !DILocation(line: 1082, column: 16, scope: !194, inlinedAt: !195)
!194 = distinct !DISubprogram(name: "__half2float", scope: !168, file: !168, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!195 = distinct !DILocation(line: 136, column: 55, scope: !196, inlinedAt: !197)
!196 = distinct !DISubprogram(name: "operator float", scope: !168, file: !168, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!197 = distinct !DILocation(line: 118, column: 50, scope: !40)
!198 = !DILocation(line: 118, column: 40, scope: !40)
!199 = !DILocation(line: 1018, column: 9, scope: !113, inlinedAt: !200)
!200 = distinct !DILocation(line: 120, column: 40, scope: !40)
!201 = !DILocation(line: 171, column: 37, scope: !116, inlinedAt: !202)
!202 = distinct !DILocation(line: 990, column: 14, scope: !118, inlinedAt: !203)
!203 = distinct !DILocation(line: 1019, column: 11, scope: !113, inlinedAt: !200)
!204 = !DILocation(line: 171, column: 10, scope: !116, inlinedAt: !202)
!205 = !DILocation(line: 991, column: 20, scope: !118, inlinedAt: !203)
!206 = !DILocation(line: 992, column: 36, scope: !118, inlinedAt: !203)
!207 = !DILocation(line: 992, column: 17, scope: !118, inlinedAt: !203)
!208 = !DILocation(line: 992, column: 11, scope: !118, inlinedAt: !203)
!209 = !DILocation(line: 993, column: 43, scope: !118, inlinedAt: !203)
!210 = !DILocation(line: 993, column: 10, scope: !118, inlinedAt: !203)
!211 = !DILocation(line: 1020, column: 14, scope: !113, inlinedAt: !200)
!212 = !DILocation(line: 120, column: 38, scope: !40)
!213 = !DILocation(line: 1018, column: 9, scope: !113, inlinedAt: !214)
!214 = distinct !DILocation(line: 121, column: 40, scope: !40)
!215 = !DILocation(line: 171, column: 37, scope: !116, inlinedAt: !216)
!216 = distinct !DILocation(line: 990, column: 14, scope: !118, inlinedAt: !217)
!217 = distinct !DILocation(line: 1019, column: 11, scope: !113, inlinedAt: !214)
!218 = !DILocation(line: 171, column: 10, scope: !116, inlinedAt: !216)
!219 = !DILocation(line: 991, column: 20, scope: !118, inlinedAt: !217)
!220 = !DILocation(line: 992, column: 36, scope: !118, inlinedAt: !217)
!221 = !DILocation(line: 992, column: 17, scope: !118, inlinedAt: !217)
!222 = !DILocation(line: 992, column: 11, scope: !118, inlinedAt: !217)
!223 = !DILocation(line: 993, column: 43, scope: !118, inlinedAt: !217)
!224 = !DILocation(line: 993, column: 10, scope: !118, inlinedAt: !217)
!225 = !DILocation(line: 1020, column: 14, scope: !113, inlinedAt: !214)
!226 = !DILocation(line: 68, column: 3, scope: !72, inlinedAt: !227)
!227 = distinct !DILocation(line: 192, column: 3, scope: !75, inlinedAt: !228)
!228 = distinct !DILocation(line: 122, column: 5, scope: !40)
!229 = !DILocation(line: 69, column: 3, scope: !72, inlinedAt: !227)
!230 = !DILocation(line: 70, column: 3, scope: !72, inlinedAt: !227)
!231 = !DILocation(line: 131, column: 94, scope: !40)
!232 = !DILocation(line: 131, column: 15, scope: !40)
!233 = !DILocation(line: 132, column: 37, scope: !40)
!234 = !DILocation(line: 132, column: 23, scope: !40)
!235 = !DILocation(line: 133, column: 11, scope: !40)
!236 = !DILocation(line: 131, column: 87, scope: !40)
!237 = !DILocation(line: 143, column: 28, scope: !40)
!238 = !DILocation(line: 143, column: 192, scope: !40)
!239 = !DILocation(line: 141, column: 29, scope: !40)
!240 = !DILocation(line: 143, column: 63, scope: !40)
!241 = !DILocation(line: 68, column: 3, scope: !72, inlinedAt: !242)
!242 = distinct !DILocation(line: 192, column: 3, scope: !75, inlinedAt: !243)
!243 = distinct !DILocation(line: 147, column: 5, scope: !40)
!244 = !DILocation(line: 69, column: 3, scope: !72, inlinedAt: !242)
!245 = !DILocation(line: 70, column: 3, scope: !72, inlinedAt: !242)
!246 = !DILocation(line: 161, column: 325, scope: !40)
!247 = !DILocation(line: 161, column: 84, scope: !40)
!248 = !DILocation(line: 161, column: 65, scope: !40)
!249 = !DILocation(line: 161, column: 263, scope: !40)
!250 = !DILocation(line: 167, column: 94, scope: !40)
!251 = !DILocation(line: 167, column: 64, scope: !40)
!252 = !DILocation(line: 121, column: 38, scope: !40)
!253 = !DILocation(line: 183, column: 23, scope: !40)
!254 = !DILocation(line: 183, column: 38, scope: !40)
!255 = !DILocation(line: 68, column: 3, scope: !72, inlinedAt: !256)
!256 = distinct !DILocation(line: 192, column: 3, scope: !75, inlinedAt: !257)
!257 = distinct !DILocation(line: 185, column: 3, scope: !40)
!258 = !DILocation(line: 69, column: 3, scope: !72, inlinedAt: !256)
!259 = !DILocation(line: 70, column: 3, scope: !72, inlinedAt: !256)
!260 = !DILocation(line: 1007, column: 10, scope: !167, inlinedAt: !261)
!261 = distinct !DILocation(line: 1077, column: 18, scope: !170, inlinedAt: !262)
!262 = distinct !DILocation(line: 1295, column: 23, scope: !172, inlinedAt: !263)
!263 = distinct !DILocation(line: 190, column: 27, scope: !40)
!264 = !{!265, !267}
!265 = distinct !{!265, !266, !"_ZL17__floats2half2_rnff: %agg.result"}
!266 = distinct !{!266, !"_ZL17__floats2half2_rnff"}
!267 = distinct !{!267, !268, !"_ZL17__float22half2_rn6float2: %agg.result"}
!268 = distinct !{!268, !"_ZL17__float22half2_rn6float2"}
!269 = !DILocation(line: 1007, column: 10, scope: !167, inlinedAt: !270)
!270 = distinct !DILocation(line: 1077, column: 38, scope: !170, inlinedAt: !262)
!271 = !DILocation(line: 596, column: 67, scope: !272, inlinedAt: !273)
!272 = distinct !DISubprogram(name: "__half2", scope: !168, file: !168, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!273 = distinct !DILocation(line: 1077, column: 10, scope: !170, inlinedAt: !262)
!274 = !DILocation(line: 596, column: 73, scope: !272, inlinedAt: !273)
!275 = !DILocation(line: 1007, column: 10, scope: !167, inlinedAt: !276)
!276 = distinct !DILocation(line: 1077, column: 18, scope: !170, inlinedAt: !277)
!277 = distinct !DILocation(line: 1295, column: 23, scope: !172, inlinedAt: !278)
!278 = distinct !DILocation(line: 191, column: 27, scope: !40)
!279 = !{!280, !282}
!280 = distinct !{!280, !281, !"_ZL17__floats2half2_rnff: %agg.result"}
!281 = distinct !{!281, !"_ZL17__floats2half2_rnff"}
!282 = distinct !{!282, !283, !"_ZL17__float22half2_rn6float2: %agg.result"}
!283 = distinct !{!283, !"_ZL17__float22half2_rn6float2"}
!284 = !DILocation(line: 1007, column: 10, scope: !167, inlinedAt: !285)
!285 = distinct !DILocation(line: 1077, column: 38, scope: !170, inlinedAt: !277)
!286 = !DILocation(line: 596, column: 67, scope: !272, inlinedAt: !287)
!287 = distinct !DILocation(line: 1077, column: 10, scope: !170, inlinedAt: !277)
!288 = !DILocation(line: 596, column: 73, scope: !272, inlinedAt: !287)
!289 = !DILocation(line: 192, column: 38, scope: !40)
!290 = !DILocation(line: 193, column: 132, scope: !40)
!291 = !DILocation(line: 193, column: 60, scope: !40)
!292 = !DILocation(line: 193, column: 138, scope: !40)
!293 = !DILocation(line: 193, column: 22, scope: !40)
!294 = !DILocation(line: 193, column: 181, scope: !40)
!295 = !DILocation(line: 68, column: 3, scope: !72, inlinedAt: !296)
!296 = distinct !DILocation(line: 192, column: 3, scope: !75, inlinedAt: !297)
!297 = distinct !DILocation(line: 195, column: 3, scope: !40)
!298 = !DILocation(line: 69, column: 3, scope: !72, inlinedAt: !296)
!299 = !DILocation(line: 70, column: 3, scope: !72, inlinedAt: !296)
!300 = !DILocation(line: 197, column: 8, scope: !40)
!301 = !DILocation(line: 198, column: 239, scope: !40)
!302 = !DILocation(line: 198, column: 153, scope: !40)
!303 = !DILocation(line: 198, column: 22, scope: !40)
!304 = !DILocation(line: 198, column: 134, scope: !40)
!305 = !{i32 2, i32 -1, i32 -1, i32 -1}
!306 = !DILocation(line: 200, column: 1, scope: !40)
