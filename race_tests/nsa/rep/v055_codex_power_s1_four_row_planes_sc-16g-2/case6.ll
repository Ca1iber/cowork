; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v055_codex_power_s1_four_row_planes_sc-16g-2/case6.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v055_codex_power_s1_four_row_planes_sc-16g-2/codegen/case6.device.cpp"
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
  br i1 %or.cond, label %for.body586.preheader, label %for.cond.preheader, !dbg !54

for.body586.preheader:                            ; preds = %entry
  %.pre = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  %.pre1879 = shl nuw nsw i32 %.pre, 7
  %.pre1880 = lshr i32 %.pre, 5
  %.pre1881 = and i32 %.pre, 7
  %.pre1882 = lshr i32 %.pre, 2
  %.pre1884 = and i32 %.pre1882, 4
  %.pre1885 = xor i32 %.pre1880, %.pre1881, !dbg !56
  %.pre1886 = add nuw nsw i32 %.pre1880, 2, !dbg !57
  %.pre1887 = xor i32 %.pre1886, %.pre1881, !dbg !56
  %.pre1888 = add nuw nsw i32 %.pre1880, 4, !dbg !57
  %.pre1889 = xor i32 %.pre1888, %.pre1881, !dbg !56
  %.pre1890 = add nuw nsw i32 %.pre1880, 6, !dbg !57
  %.pre1891 = xor i32 %.pre1890, %.pre1881, !dbg !56
  %.pre1892 = shl nuw nsw i32 %.pre, 3
  %.pre1894 = lshr i32 %.pre, 4
  %.pre1895 = shl nsw i32 %0, 21
  %.pre1896 = shl nsw i32 %1, 11
  %.pre1897 = add nuw nsw i32 %.pre1895, %.pre1896
  %.pre1898 = add nuw nsw i32 %.pre1897, %.pre1892
  %.pre1899 = zext nneg i32 %.pre1898 to i64, !dbg !58
  %.pre1901 = add nuw nsw i32 %.pre1894, 4, !dbg !59
  %.pre1902 = add nuw nsw i64 %.pre1899, 512, !dbg !60
  %.pre1904 = add nuw nsw i64 %.pre1899, 1024, !dbg !60
  %.pre1906 = add nuw nsw i64 %.pre1899, 1536, !dbg !60
  br label %if.end596, !dbg !61

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
  %invariant.gep904 = getelementptr inbounds i8, ptr addrspace(4) %K.coerce, i64 %.idx, !dbg !89
  %mul97 = zext nneg i32 %mul20 to i64
  %invariant.gep906 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep904, i64 %mul97, !dbg !89
  %cmp85 = icmp ult i32 %add82, 1024, !dbg !90
  br i1 %cmp85, label %if.then86, label %if.end, !dbg !91

if.then86:                                        ; preds = %for.cond.preheader
  %gep907 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep906, i64 %mul88
  %condval.sroa.7.0.add.ptr99.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep907, i64 12
  %condval.sroa.6.0.add.ptr99.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep907, i64 8
  %condval.sroa.5.0.add.ptr99.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %gep907, i64 4
  %condval.sroa.0.0.copyload = load i32, ptr addrspace(4) %gep907, align 16, !dbg !92, !tbaa !30
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
  %gep902 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %25, !dbg !95
  %add.ptr140 = getelementptr inbounds i8, ptr addrspace(3) %gep902, i32 %add.ptr40.idx, !dbg !95
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
  %gep907.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep906, i64 %add91.1
  %condval.sroa.7.0.add.ptr99.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep907.1, i64 12
  %condval.sroa.6.0.add.ptr99.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep907.1, i64 8
  %condval.sroa.5.0.add.ptr99.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %gep907.1, i64 4
  %condval.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep907.1, align 16, !dbg !92, !tbaa !30
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
  %gep902.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %27, !dbg !95
  %add.ptr140.1 = getelementptr inbounds i8, ptr addrspace(3) %gep902.1, i32 %add.ptr40.idx.1, !dbg !95
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
  %gep907.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep906, i64 %add91.2
  %condval.sroa.7.0.add.ptr99.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep907.2, i64 12
  %condval.sroa.6.0.add.ptr99.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep907.2, i64 8
  %condval.sroa.5.0.add.ptr99.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %gep907.2, i64 4
  %condval.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %gep907.2, align 16, !dbg !92, !tbaa !30
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
  %gep902.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %29, !dbg !95
  %add.ptr140.2 = getelementptr inbounds i8, ptr addrspace(3) %gep902.2, i32 %add.ptr40.idx, !dbg !95
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
  %gep907.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep906, i64 %add91.3
  %condval.sroa.7.0.add.ptr99.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep907.3, i64 12
  %condval.sroa.6.0.add.ptr99.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep907.3, i64 8
  %condval.sroa.5.0.add.ptr99.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %gep907.3, i64 4
  %condval.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %gep907.3, align 16, !dbg !92, !tbaa !30
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
  %gep902.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %31, !dbg !95
  %add.ptr140.3 = getelementptr inbounds i8, ptr addrspace(3) %gep902.3, i32 %add.ptr40.idx.1, !dbg !95
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
  %gep907.4 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep906, i64 %add91.4
  %condval.sroa.7.0.add.ptr99.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep907.4, i64 12
  %condval.sroa.6.0.add.ptr99.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep907.4, i64 8
  %condval.sroa.5.0.add.ptr99.sroa_idx.4 = getelementptr inbounds i8, ptr addrspace(4) %gep907.4, i64 4
  %condval.sroa.0.0.copyload.4 = load i32, ptr addrspace(4) %gep907.4, align 16, !dbg !92, !tbaa !30
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
  %gep902.4 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %33, !dbg !95
  %add.ptr140.4 = getelementptr inbounds i8, ptr addrspace(3) %gep902.4, i32 %add.ptr40.idx, !dbg !95
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
  %gep907.5 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep906, i64 %add91.5
  %condval.sroa.7.0.add.ptr99.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep907.5, i64 12
  %condval.sroa.6.0.add.ptr99.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep907.5, i64 8
  %condval.sroa.5.0.add.ptr99.sroa_idx.5 = getelementptr inbounds i8, ptr addrspace(4) %gep907.5, i64 4
  %condval.sroa.0.0.copyload.5 = load i32, ptr addrspace(4) %gep907.5, align 16, !dbg !92, !tbaa !30
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
  %gep902.5 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %35, !dbg !95
  %add.ptr140.5 = getelementptr inbounds i8, ptr addrspace(3) %gep902.5, i32 %add.ptr40.idx.1, !dbg !95
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
  %gep907.6 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep906, i64 %add91.6
  %condval.sroa.7.0.add.ptr99.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep907.6, i64 12
  %condval.sroa.6.0.add.ptr99.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep907.6, i64 8
  %condval.sroa.5.0.add.ptr99.sroa_idx.6 = getelementptr inbounds i8, ptr addrspace(4) %gep907.6, i64 4
  %condval.sroa.0.0.copyload.6 = load i32, ptr addrspace(4) %gep907.6, align 16, !dbg !92, !tbaa !30
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
  %gep902.6 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %37, !dbg !95
  %add.ptr140.6 = getelementptr inbounds i8, ptr addrspace(3) %gep902.6, i32 %add.ptr40.idx, !dbg !95
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
  %gep907.7 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep906, i64 %add91.7
  %condval.sroa.7.0.add.ptr99.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep907.7, i64 12
  %condval.sroa.6.0.add.ptr99.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep907.7, i64 8
  %condval.sroa.5.0.add.ptr99.sroa_idx.7 = getelementptr inbounds i8, ptr addrspace(4) %gep907.7, i64 4
  %condval.sroa.0.0.copyload.7 = load i32, ptr addrspace(4) %gep907.7, align 16, !dbg !92, !tbaa !30
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
  %gep902.7 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep, i32 %39, !dbg !95
  %add.ptr140.7 = getelementptr inbounds i8, ptr addrspace(3) %gep902.7, i32 %add.ptr40.idx.1, !dbg !95
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
  %k_local.sroa.0.0.copyload.1950 = load <4 x half>, ptr addrspace(3) %add.ptr68.1, align 8, !dbg !102
  %42 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1950, <4 x half> %16, <4 x float> %40), !dbg !103
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
  %cmp227.not.1951 = icmp sgt i32 %add224.1, %1, !dbg !105
  %scores.sroa.38.16.vec.extract = extractelement <4 x float> %60, i64 0, !dbg !106
  %condval_1.0.1954 = select i1 %cmp227.not.1951, float 0xFFF0000000000000, float %scores.sroa.38.16.vec.extract, !dbg !106
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
  %65 = tail call contract noundef float @llvm.maxnum.f32(float %64, float %condval_1.0.1954), !dbg !108
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
  %xor.i.i840 = xor i32 %78, 16, !dbg !136
  %79 = and i32 %78, -64, !dbg !137
  %and.i.i841 = add nsw i32 %79, 64, !dbg !137
  %cmp.not.i.i842 = icmp slt i32 %xor.i.i840, %and.i.i841, !dbg !138
  %cond.i.i843 = select i1 %cmp.not.i.i842, i32 %xor.i.i840, i32 %78, !dbg !139
  %shl.i.i844 = shl i32 %cond.i.i843, 2, !dbg !140
  %80 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i844, i32 %76), !dbg !141
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
  %cond.i.i849 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !157
  %add.i.i = fadd contract float %add315, %cond.i.i849, !dbg !157
  %83 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !157
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !157
  %mul.i.i = fmul contract float %cond2.i.i, %83, !dbg !157
  %cmp.i.i850 = fcmp contract olt float %add319, -1.260000e+02, !dbg !160
  %cond.i.i851 = select contract i1 %cmp.i.i850, float 6.400000e+01, float 0.000000e+00, !dbg !160
  %add.i.i852 = fadd contract float %add319, %cond.i.i851, !dbg !160
  %84 = tail call contract float @llvm.exp2.f32(float %add.i.i852), !dbg !160
  %cond2.i.i853 = select contract i1 %cmp.i.i850, float 0x3BF0000000000000, float 1.000000e+00, !dbg !160
  %mul.i.i854 = fmul contract float %cond2.i.i853, %84, !dbg !160
  %cmp.i.i855 = fcmp contract olt float %add323, -1.260000e+02, !dbg !162
  %cond.i.i856 = select contract i1 %cmp.i.i855, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i857 = fadd contract float %add323, %cond.i.i856, !dbg !162
  %85 = tail call contract float @llvm.exp2.f32(float %add.i.i857), !dbg !162
  %cond2.i.i858 = select contract i1 %cmp.i.i855, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i859 = fmul contract float %cond2.i.i858, %85, !dbg !162
  %cmp.i.i860 = fcmp contract olt float %add327, -1.260000e+02, !dbg !164
  %cond.i.i861 = select contract i1 %cmp.i.i860, float 6.400000e+01, float 0.000000e+00, !dbg !164
  %add.i.i862 = fadd contract float %add327, %cond.i.i861, !dbg !164
  %86 = tail call contract float @llvm.exp2.f32(float %add.i.i862), !dbg !164
  %cond2.i.i863 = select contract i1 %cmp.i.i860, float 0x3BF0000000000000, float 1.000000e+00, !dbg !164
  %mul.i.i864 = fmul contract float %cond2.i.i863, %86, !dbg !164
  %87 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !166
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !166, !noalias !174
  %88 = fptrunc float %mul.i.i to half, !dbg !166
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %87), !dbg !166, !noalias !174
  %89 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !179
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !179, !noalias !174
  %90 = fptrunc float %mul.i.i854 to half, !dbg !179
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %89), !dbg !179, !noalias !174
  %91 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !185
  %92 = fptrunc float %mul.i.i859 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %91), !dbg !181, !noalias !185
  %93 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !190, !noalias !185
  %94 = fptrunc float %mul.i.i864 to half, !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %93), !dbg !190, !noalias !185
  %95 = insertelement <4 x half> poison, half %88, i64 0, !dbg !192
  %96 = insertelement <4 x half> %95, half %90, i64 1, !dbg !192
  %97 = insertelement <4 x half> %96, half %92, i64 2, !dbg !192
  %98 = insertelement <4 x half> %97, half %94, i64 3, !dbg !192
  %sub.1 = fsub contract float %condval_1.0.1954, %82, !dbg !145
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
  %cond.i.i849.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !157
  %add.i.i.1 = fadd contract float %add315.1, %cond.i.i849.1, !dbg !157
  %99 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !157
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !157
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %99, !dbg !157
  %cmp.i.i850.1 = fcmp contract olt float %add319.1, -1.260000e+02, !dbg !160
  %cond.i.i851.1 = select contract i1 %cmp.i.i850.1, float 6.400000e+01, float 0.000000e+00, !dbg !160
  %add.i.i852.1 = fadd contract float %add319.1, %cond.i.i851.1, !dbg !160
  %100 = tail call contract float @llvm.exp2.f32(float %add.i.i852.1), !dbg !160
  %cond2.i.i853.1 = select contract i1 %cmp.i.i850.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !160
  %mul.i.i854.1 = fmul contract float %cond2.i.i853.1, %100, !dbg !160
  %cmp.i.i855.1 = fcmp contract olt float %add323.1, -1.260000e+02, !dbg !162
  %cond.i.i856.1 = select contract i1 %cmp.i.i855.1, float 6.400000e+01, float 0.000000e+00, !dbg !162
  %add.i.i857.1 = fadd contract float %add323.1, %cond.i.i856.1, !dbg !162
  %101 = tail call contract float @llvm.exp2.f32(float %add.i.i857.1), !dbg !162
  %cond2.i.i858.1 = select contract i1 %cmp.i.i855.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !162
  %mul.i.i859.1 = fmul contract float %cond2.i.i858.1, %101, !dbg !162
  %cmp.i.i860.1 = fcmp contract olt float %add327.1, -1.260000e+02, !dbg !164
  %cond.i.i861.1 = select contract i1 %cmp.i.i860.1, float 6.400000e+01, float 0.000000e+00, !dbg !164
  %add.i.i862.1 = fadd contract float %add327.1, %cond.i.i861.1, !dbg !164
  %102 = tail call contract float @llvm.exp2.f32(float %add.i.i862.1), !dbg !164
  %cond2.i.i863.1 = select contract i1 %cmp.i.i860.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !164
  %mul.i.i864.1 = fmul contract float %cond2.i.i863.1, %102, !dbg !164
  %103 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !166
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !166, !noalias !174
  %104 = fptrunc float %mul.i.i.1 to half, !dbg !166
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %103), !dbg !166, !noalias !174
  %105 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !179
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !179, !noalias !174
  %106 = fptrunc float %mul.i.i854.1 to half, !dbg !179
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %105), !dbg !179, !noalias !174
  %107 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !181, !noalias !185
  %108 = fptrunc float %mul.i.i859.1 to half, !dbg !181
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %107), !dbg !181, !noalias !185
  %109 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !190
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !190, !noalias !185
  %110 = fptrunc float %mul.i.i864.1 to half, !dbg !190
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
  %xor.i.i866 = xor i32 %117, 32, !dbg !205
  %118 = and i32 %117, -64, !dbg !206
  %and.i.i867 = add nsw i32 %118, 64, !dbg !206
  %cmp.not.i.i868 = icmp slt i32 %xor.i.i866, %and.i.i867, !dbg !207
  %cond.i.i869 = select i1 %cmp.not.i.i868, i32 %xor.i.i866, i32 %117, !dbg !208
  %shl.i.i870 = shl i32 %cond.i.i869, 2, !dbg !209
  %119 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i870, i32 %115), !dbg !210
  %120 = bitcast i32 %119 to float, !dbg !211
  %add374 = fadd contract float %add366.7, %120, !dbg !212
  %121 = bitcast float %add374 to i32, !dbg !213
  %122 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #11, !dbg !215
  %123 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %122) #11, !dbg !218
  %xor.i.i871 = xor i32 %123, 16, !dbg !219
  %124 = and i32 %123, -64, !dbg !220
  %and.i.i872 = add nsw i32 %124, 64, !dbg !220
  %cmp.not.i.i873 = icmp slt i32 %xor.i.i871, %and.i.i872, !dbg !221
  %cond.i.i874 = select i1 %cmp.not.i.i873, i32 %xor.i.i871, i32 %123, !dbg !222
  %shl.i.i875 = shl i32 %cond.i.i874, 2, !dbg !223
  %125 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i875, i32 %121), !dbg !224
  %126 = bitcast i32 %125 to float, !dbg !225
  fence syncscope("warp") release, !dbg !226
  tail call void @llvm.mxc.barrier.warp(), !dbg !229
  fence syncscope("warp") acquire, !dbg !230
  %127 = shl nuw nsw i32 %3, 5
  %128 = and i32 %127, 32256
  %mul411 = zext nneg i32 %128 to i64
  %add407 = or disjoint i64 %mul88, %mul411
  %129 = and i32 %5, 60
  %mul425 = zext nneg i32 %129 to i64
  %invariant.gep919 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %mul425
  %and474 = shl nuw nsw i32 %3, 4
  %mul475 = and i32 %and474, 240
  %shr481 = and i32 %13, 3
  %xor482 = xor i32 %shr481, %shr35
  %cmp400 = icmp slt i32 %add223, 1024, !dbg !231
  br i1 %cmp400, label %if.then401, label %if.end441, !dbg !232

if.then401:                                       ; preds = %if.end.7
  %130 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep919, i64 %add407, !dbg !233
  %131 = getelementptr inbounds i8, ptr addrspace(4) %130, i64 %.idx, !dbg !233
  %condval_2.sroa.0.0.copyload = load i32, ptr addrspace(4) %131, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %131, i64 4, !dbg !234
  %condval_2.sroa.5.0.copyload = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx, align 4, !dbg !234, !tbaa !30
  br label %if.end441, !dbg !235

if.end441:                                        ; preds = %if.end.7, %if.then401
  %condval_2.sroa.0.0 = phi i32 [ %condval_2.sroa.0.0.copyload, %if.then401 ], [ 0, %if.end.7 ], !dbg !94
  %condval_2.sroa.5.0 = phi i32 [ %condval_2.sroa.5.0.copyload, %if.then401 ], [ 0, %if.end.7 ], !dbg !94
  %132 = or disjoint i32 %add223, 1, !dbg !236
  %cmp400.1 = icmp slt i32 %132, 1024, !dbg !231
  br i1 %cmp400.1, label %if.then401.1, label %if.end441.1, !dbg !232

if.then401.1:                                     ; preds = %if.end441
  %133 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep919, i64 %add407, !dbg !233
  %134 = getelementptr inbounds i8, ptr addrspace(4) %133, i64 %.idx, !dbg !233
  %gep920.1 = getelementptr inbounds i8, ptr addrspace(4) %134, i64 256, !dbg !233
  %condval_2.sroa.0.0.copyload.1 = load i32, ptr addrspace(4) %gep920.1, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx.1 = getelementptr inbounds i8, ptr addrspace(4) %134, i64 260, !dbg !234
  %condval_2.sroa.5.0.copyload.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx.1, align 4, !dbg !234, !tbaa !30
  br label %if.end441.1, !dbg !235

if.end441.1:                                      ; preds = %if.then401.1, %if.end441
  %condval_2.sroa.0.0.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1, %if.then401.1 ], [ 0, %if.end441 ], !dbg !94
  %condval_2.sroa.5.0.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1, %if.then401.1 ], [ 0, %if.end441 ], !dbg !94
  %135 = or disjoint i32 %add223, 2, !dbg !236
  %cmp400.2 = icmp slt i32 %135, 1024, !dbg !231
  br i1 %cmp400.2, label %if.then401.2, label %if.end441.2, !dbg !232

if.then401.2:                                     ; preds = %if.end441.1
  %136 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep919, i64 %add407, !dbg !233
  %137 = getelementptr inbounds i8, ptr addrspace(4) %136, i64 %.idx, !dbg !233
  %gep920.2 = getelementptr inbounds i8, ptr addrspace(4) %137, i64 512, !dbg !233
  %condval_2.sroa.0.0.copyload.2 = load i32, ptr addrspace(4) %gep920.2, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx.2 = getelementptr inbounds i8, ptr addrspace(4) %137, i64 516, !dbg !234
  %condval_2.sroa.5.0.copyload.2 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx.2, align 4, !dbg !234, !tbaa !30
  br label %if.end441.2, !dbg !235

if.end441.2:                                      ; preds = %if.then401.2, %if.end441.1
  %condval_2.sroa.0.0.2 = phi i32 [ %condval_2.sroa.0.0.copyload.2, %if.then401.2 ], [ 0, %if.end441.1 ], !dbg !94
  %condval_2.sroa.5.0.2 = phi i32 [ %condval_2.sroa.5.0.copyload.2, %if.then401.2 ], [ 0, %if.end441.1 ], !dbg !94
  %138 = or disjoint i32 %add223, 3, !dbg !236
  %cmp400.3 = icmp slt i32 %138, 1024, !dbg !231
  br i1 %cmp400.3, label %if.then401.3, label %if.end441.3, !dbg !232

if.then401.3:                                     ; preds = %if.end441.2
  %139 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep919, i64 %add407, !dbg !233
  %140 = getelementptr inbounds i8, ptr addrspace(4) %139, i64 %.idx, !dbg !233
  %gep920.3 = getelementptr inbounds i8, ptr addrspace(4) %140, i64 768, !dbg !233
  %condval_2.sroa.0.0.copyload.3 = load i32, ptr addrspace(4) %gep920.3, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx.3 = getelementptr inbounds i8, ptr addrspace(4) %140, i64 772, !dbg !234
  %condval_2.sroa.5.0.copyload.3 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx.3, align 4, !dbg !234, !tbaa !30
  br label %if.end441.3, !dbg !235

if.end441.3:                                      ; preds = %if.then401.3, %if.end441.2
  %condval_2.sroa.0.0.3 = phi i32 [ %condval_2.sroa.0.0.copyload.3, %if.then401.3 ], [ 0, %if.end441.2 ], !dbg !94
  %condval_2.sroa.5.0.3 = phi i32 [ %condval_2.sroa.5.0.copyload.3, %if.then401.3 ], [ 0, %if.end441.2 ], !dbg !94
  %141 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul475, !dbg !237
  %add.ptr487.idx = shl nuw nsw i32 %xor482, 3, !dbg !237
  %add.ptr487 = getelementptr inbounds i8, ptr addrspace(3) %141, i32 %add.ptr487.idx, !dbg !237
  %142 = and i32 %condval_2.sroa.0.0.3, 65535, !dbg !238
  %v_column.sroa.66.0.insert.ext = zext nneg i32 %142 to i64, !dbg !238
  %v_column.sroa.66.0.insert.shift = shl nuw i64 %v_column.sroa.66.0.insert.ext, 48, !dbg !238
  %143 = and i32 %condval_2.sroa.0.0.2, 65535, !dbg !238
  %v_column.sroa.50.0.insert.ext = zext nneg i32 %143 to i64, !dbg !238
  %v_column.sroa.50.0.insert.shift = shl nuw nsw i64 %v_column.sroa.50.0.insert.ext, 32, !dbg !238
  %v_column.sroa.50.0.insert.insert = or disjoint i64 %v_column.sroa.66.0.insert.shift, %v_column.sroa.50.0.insert.shift, !dbg !238
  %144 = shl i32 %condval_2.sroa.0.0.1, 16, !dbg !238
  %v_column.sroa.34.0.insert.shift = zext i32 %144 to i64, !dbg !238
  %v_column.sroa.34.0.insert.insert = or disjoint i64 %v_column.sroa.50.0.insert.insert, %v_column.sroa.34.0.insert.shift, !dbg !238
  %145 = and i32 %condval_2.sroa.0.0, 65535, !dbg !238
  %v_column.sroa.0.0.insert.ext = zext nneg i32 %145 to i64, !dbg !238
  %v_column.sroa.0.0.insert.insert = or disjoint i64 %v_column.sroa.34.0.insert.insert, %v_column.sroa.0.0.insert.ext, !dbg !238
  store i64 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr487, align 8, !dbg !238
  %v_fetch.sroa.0.2.extract.shift = lshr i32 %condval_2.sroa.0.0, 16, !dbg !239
  %v_fetch.sroa.0.2.extract.trunc = zext nneg i32 %v_fetch.sroa.0.2.extract.shift to i64, !dbg !239
  %v_fetch.sroa.26.10.extract.shift = and i32 %condval_2.sroa.0.0.1, -65536, !dbg !238
  %v_fetch.sroa.50.18.extract.shift = lshr i32 %condval_2.sroa.0.0.2, 16, !dbg !239
  %v_fetch.sroa.50.18.extract.trunc = zext nneg i32 %v_fetch.sroa.50.18.extract.shift to i64, !dbg !239
  %v_fetch.sroa.74.26.extract.shift = lshr i32 %condval_2.sroa.0.0.3, 16, !dbg !239
  %v_fetch.sroa.74.26.extract.trunc = zext nneg i32 %v_fetch.sroa.74.26.extract.shift to i64, !dbg !239
  %146 = or disjoint i32 %mul475, 256, !dbg !240
  %147 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %146, !dbg !237
  %xor483.1 = shl nuw nsw i32 %xor482, 3, !dbg !237
  %add.ptr487.idx.1 = xor i32 %xor483.1, 8, !dbg !237
  %add.ptr487.1 = getelementptr inbounds i8, ptr addrspace(3) %147, i32 %add.ptr487.idx.1, !dbg !237
  %v_column.sroa.66.0.insert.shift1362 = shl nuw i64 %v_fetch.sroa.74.26.extract.trunc, 48, !dbg !238
  %v_column.sroa.50.0.insert.shift1287 = shl nuw nsw i64 %v_fetch.sroa.50.18.extract.trunc, 32, !dbg !238
  %v_column.sroa.50.0.insert.insert1289 = or disjoint i64 %v_column.sroa.66.0.insert.shift1362, %v_column.sroa.50.0.insert.shift1287, !dbg !238
  %v_column.sroa.34.0.insert.shift1212 = zext i32 %v_fetch.sroa.26.10.extract.shift to i64, !dbg !238
  %v_column.sroa.34.0.insert.insert1214 = or disjoint i64 %v_column.sroa.50.0.insert.insert1289, %v_column.sroa.34.0.insert.shift1212, !dbg !238
  %v_column.sroa.0.0.insert.insert1153 = or disjoint i64 %v_column.sroa.34.0.insert.insert1214, %v_fetch.sroa.0.2.extract.trunc, !dbg !238
  store i64 %v_column.sroa.0.0.insert.insert1153, ptr addrspace(3) %add.ptr487.1, align 8, !dbg !238
  %148 = or disjoint i32 %mul475, 512, !dbg !240
  %149 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %148, !dbg !237
  %xor483.2 = shl nuw nsw i32 %xor482, 3, !dbg !237
  %add.ptr487.idx.2 = xor i32 %xor483.2, 16, !dbg !237
  %add.ptr487.2 = getelementptr inbounds i8, ptr addrspace(3) %149, i32 %add.ptr487.idx.2, !dbg !237
  %150 = and i32 %condval_2.sroa.5.0.3, 65535, !dbg !238
  %v_column.sroa.66.0.insert.ext1366 = zext nneg i32 %150 to i64, !dbg !238
  %v_column.sroa.66.0.insert.shift1367 = shl nuw i64 %v_column.sroa.66.0.insert.ext1366, 48, !dbg !238
  %151 = and i32 %condval_2.sroa.5.0.2, 65535, !dbg !238
  %v_column.sroa.50.0.insert.ext1291 = zext nneg i32 %151 to i64, !dbg !238
  %v_column.sroa.50.0.insert.shift1292 = shl nuw nsw i64 %v_column.sroa.50.0.insert.ext1291, 32, !dbg !238
  %v_column.sroa.50.0.insert.insert1294 = or disjoint i64 %v_column.sroa.66.0.insert.shift1367, %v_column.sroa.50.0.insert.shift1292, !dbg !238
  %152 = shl i32 %condval_2.sroa.5.0.1, 16, !dbg !238
  %v_column.sroa.34.0.insert.shift1217 = zext i32 %152 to i64, !dbg !238
  %v_column.sroa.34.0.insert.insert1219 = or disjoint i64 %v_column.sroa.50.0.insert.insert1294, %v_column.sroa.34.0.insert.shift1217, !dbg !238
  %153 = and i32 %condval_2.sroa.5.0, 65535, !dbg !238
  %v_column.sroa.0.0.insert.ext1155 = zext nneg i32 %153 to i64, !dbg !238
  %v_column.sroa.0.0.insert.insert1157 = or disjoint i64 %v_column.sroa.34.0.insert.insert1219, %v_column.sroa.0.0.insert.ext1155, !dbg !238
  store i64 %v_column.sroa.0.0.insert.insert1157, ptr addrspace(3) %add.ptr487.2, align 8, !dbg !238
  %v_fetch.sroa.14.6.extract.shift = lshr i32 %condval_2.sroa.5.0, 16, !dbg !239
  %v_fetch.sroa.14.6.extract.trunc = zext nneg i32 %v_fetch.sroa.14.6.extract.shift to i64, !dbg !239
  %v_fetch.sroa.38.14.extract.shift = and i32 %condval_2.sroa.5.0.1, -65536, !dbg !238
  %v_fetch.sroa.62.22.extract.shift = lshr i32 %condval_2.sroa.5.0.2, 16, !dbg !239
  %v_fetch.sroa.62.22.extract.trunc = zext nneg i32 %v_fetch.sroa.62.22.extract.shift to i64, !dbg !239
  %v_fetch.sroa.86.30.extract.shift = lshr i32 %condval_2.sroa.5.0.3, 16, !dbg !239
  %v_fetch.sroa.86.30.extract.trunc = zext nneg i32 %v_fetch.sroa.86.30.extract.shift to i64, !dbg !239
  %154 = or disjoint i32 %mul475, 768, !dbg !240
  %155 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %154, !dbg !237
  %xor483.3 = shl nuw nsw i32 %xor482, 3, !dbg !237
  %add.ptr487.idx.3 = xor i32 %xor483.3, 24, !dbg !237
  %add.ptr487.3 = getelementptr inbounds i8, ptr addrspace(3) %155, i32 %add.ptr487.idx.3, !dbg !237
  %v_column.sroa.66.0.insert.shift1372 = shl nuw i64 %v_fetch.sroa.86.30.extract.trunc, 48, !dbg !238
  %v_column.sroa.50.0.insert.shift1297 = shl nuw nsw i64 %v_fetch.sroa.62.22.extract.trunc, 32, !dbg !238
  %v_column.sroa.50.0.insert.insert1299 = or disjoint i64 %v_column.sroa.66.0.insert.shift1372, %v_column.sroa.50.0.insert.shift1297, !dbg !238
  %v_column.sroa.34.0.insert.shift1222 = zext i32 %v_fetch.sroa.38.14.extract.shift to i64, !dbg !238
  %v_column.sroa.34.0.insert.insert1224 = or disjoint i64 %v_column.sroa.50.0.insert.insert1299, %v_column.sroa.34.0.insert.shift1222, !dbg !238
  %v_column.sroa.0.0.insert.insert1161 = or disjoint i64 %v_column.sroa.34.0.insert.insert1224, %v_fetch.sroa.14.6.extract.trunc, !dbg !238
  store i64 %v_column.sroa.0.0.insert.insert1161, ptr addrspace(3) %add.ptr487.3, align 8, !dbg !238
  br i1 %cmp400, label %if.then401.1978, label %if.end441.1982, !dbg !232

if.then401.1978:                                  ; preds = %if.end441.3
  %156 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep919, i64 %add407, !dbg !233
  %157 = getelementptr inbounds i8, ptr addrspace(4) %156, i64 %.idx, !dbg !233
  %158 = getelementptr inbounds i8, ptr addrspace(4) %157, i64 128, !dbg !233
  %condval_2.sroa.0.0.copyload.1975 = load i32, ptr addrspace(4) %158, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx.1976 = getelementptr inbounds i8, ptr addrspace(4) %157, i64 132, !dbg !234
  %condval_2.sroa.5.0.copyload.1977 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx.1976, align 4, !dbg !234, !tbaa !30
  br label %if.end441.1982, !dbg !235

if.end441.1982:                                   ; preds = %if.then401.1978, %if.end441.3
  %condval_2.sroa.0.0.1979 = phi i32 [ %condval_2.sroa.0.0.copyload.1975, %if.then401.1978 ], [ 0, %if.end441.3 ], !dbg !94
  %condval_2.sroa.5.0.1980 = phi i32 [ %condval_2.sroa.5.0.copyload.1977, %if.then401.1978 ], [ 0, %if.end441.3 ], !dbg !94
  br i1 %cmp400.1, label %if.then401.1.1, label %if.end441.1.1, !dbg !232

if.then401.1.1:                                   ; preds = %if.end441.1982
  %159 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep919, i64 %add407, !dbg !233
  %160 = getelementptr inbounds i8, ptr addrspace(4) %159, i64 %.idx, !dbg !233
  %gep920.1.1 = getelementptr inbounds i8, ptr addrspace(4) %160, i64 384, !dbg !233
  %condval_2.sroa.0.0.copyload.1.1 = load i32, ptr addrspace(4) %gep920.1.1, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx.1.1 = getelementptr inbounds i8, ptr addrspace(4) %160, i64 388, !dbg !234
  %condval_2.sroa.5.0.copyload.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx.1.1, align 4, !dbg !234, !tbaa !30
  br label %if.end441.1.1, !dbg !235

if.end441.1.1:                                    ; preds = %if.then401.1.1, %if.end441.1982
  %condval_2.sroa.0.0.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1, %if.then401.1.1 ], [ 0, %if.end441.1982 ], !dbg !94
  %condval_2.sroa.5.0.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1, %if.then401.1.1 ], [ 0, %if.end441.1982 ], !dbg !94
  br i1 %cmp400.2, label %if.then401.2.1, label %if.end441.2.1, !dbg !232

if.then401.2.1:                                   ; preds = %if.end441.1.1
  %161 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep919, i64 %add407, !dbg !233
  %162 = getelementptr inbounds i8, ptr addrspace(4) %161, i64 %.idx, !dbg !233
  %gep920.2.1 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 640, !dbg !233
  %condval_2.sroa.0.0.copyload.2.1 = load i32, ptr addrspace(4) %gep920.2.1, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx.2.1 = getelementptr inbounds i8, ptr addrspace(4) %162, i64 644, !dbg !234
  %condval_2.sroa.5.0.copyload.2.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx.2.1, align 4, !dbg !234, !tbaa !30
  br label %if.end441.2.1, !dbg !235

if.end441.2.1:                                    ; preds = %if.then401.2.1, %if.end441.1.1
  %condval_2.sroa.0.0.2.1 = phi i32 [ %condval_2.sroa.0.0.copyload.2.1, %if.then401.2.1 ], [ 0, %if.end441.1.1 ], !dbg !94
  %condval_2.sroa.5.0.2.1 = phi i32 [ %condval_2.sroa.5.0.copyload.2.1, %if.then401.2.1 ], [ 0, %if.end441.1.1 ], !dbg !94
  br i1 %cmp400.3, label %if.then401.3.1, label %if.end441.3.1, !dbg !232

if.then401.3.1:                                   ; preds = %if.end441.2.1
  %163 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep919, i64 %add407, !dbg !233
  %164 = getelementptr inbounds i8, ptr addrspace(4) %163, i64 %.idx, !dbg !233
  %gep920.3.1 = getelementptr inbounds i8, ptr addrspace(4) %164, i64 896, !dbg !233
  %condval_2.sroa.0.0.copyload.3.1 = load i32, ptr addrspace(4) %gep920.3.1, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx.3.1 = getelementptr inbounds i8, ptr addrspace(4) %164, i64 900, !dbg !234
  %condval_2.sroa.5.0.copyload.3.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx.3.1, align 4, !dbg !234, !tbaa !30
  br label %if.end441.3.1, !dbg !235

if.end441.3.1:                                    ; preds = %if.then401.3.1, %if.end441.2.1
  %condval_2.sroa.0.0.3.1 = phi i32 [ %condval_2.sroa.0.0.copyload.3.1, %if.then401.3.1 ], [ 0, %if.end441.2.1 ], !dbg !94
  %condval_2.sroa.5.0.3.1 = phi i32 [ %condval_2.sroa.5.0.copyload.3.1, %if.then401.3.1 ], [ 0, %if.end441.2.1 ], !dbg !94
  %165 = or disjoint i32 %mul475, 1024, !dbg !240
  %166 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %165, !dbg !237
  %add.ptr487.1990 = getelementptr inbounds i8, ptr addrspace(3) %166, i32 %add.ptr487.idx, !dbg !237
  %167 = and i32 %condval_2.sroa.0.0.3.1, 65535, !dbg !238
  %v_column.sroa.66.0.insert.ext1376 = zext nneg i32 %167 to i64, !dbg !238
  %v_column.sroa.66.0.insert.shift1377 = shl nuw i64 %v_column.sroa.66.0.insert.ext1376, 48, !dbg !238
  %168 = and i32 %condval_2.sroa.0.0.2.1, 65535, !dbg !238
  %v_column.sroa.50.0.insert.ext1301 = zext nneg i32 %168 to i64, !dbg !238
  %v_column.sroa.50.0.insert.shift1302 = shl nuw nsw i64 %v_column.sroa.50.0.insert.ext1301, 32, !dbg !238
  %v_column.sroa.50.0.insert.insert1304 = or disjoint i64 %v_column.sroa.66.0.insert.shift1377, %v_column.sroa.50.0.insert.shift1302, !dbg !238
  %169 = shl i32 %condval_2.sroa.0.0.1.1, 16, !dbg !238
  %v_column.sroa.34.0.insert.shift1227 = zext i32 %169 to i64, !dbg !238
  %v_column.sroa.34.0.insert.insert1229 = or disjoint i64 %v_column.sroa.50.0.insert.insert1304, %v_column.sroa.34.0.insert.shift1227, !dbg !238
  %170 = and i32 %condval_2.sroa.0.0.1979, 65535, !dbg !238
  %v_column.sroa.0.0.insert.ext1163 = zext nneg i32 %170 to i64, !dbg !238
  %v_column.sroa.0.0.insert.insert1165 = or disjoint i64 %v_column.sroa.34.0.insert.insert1229, %v_column.sroa.0.0.insert.ext1163, !dbg !238
  store i64 %v_column.sroa.0.0.insert.insert1165, ptr addrspace(3) %add.ptr487.1990, align 8, !dbg !238
  %v_fetch.sroa.0.2.extract.shift1442 = lshr i32 %condval_2.sroa.0.0.1979, 16, !dbg !239
  %v_fetch.sroa.0.2.extract.trunc1443 = zext nneg i32 %v_fetch.sroa.0.2.extract.shift1442 to i64, !dbg !239
  %v_fetch.sroa.26.10.extract.shift1472 = and i32 %condval_2.sroa.0.0.1.1, -65536, !dbg !238
  %v_fetch.sroa.50.18.extract.shift1502 = lshr i32 %condval_2.sroa.0.0.2.1, 16, !dbg !239
  %v_fetch.sroa.50.18.extract.trunc1503 = zext nneg i32 %v_fetch.sroa.50.18.extract.shift1502 to i64, !dbg !239
  %v_fetch.sroa.74.26.extract.shift1532 = lshr i32 %condval_2.sroa.0.0.3.1, 16, !dbg !239
  %v_fetch.sroa.74.26.extract.trunc1533 = zext nneg i32 %v_fetch.sroa.74.26.extract.shift1532 to i64, !dbg !239
  %171 = or disjoint i32 %mul475, 1280, !dbg !240
  %172 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %171, !dbg !237
  %add.ptr487.1.1 = getelementptr inbounds i8, ptr addrspace(3) %172, i32 %add.ptr487.idx.1, !dbg !237
  %v_column.sroa.66.0.insert.shift1382 = shl nuw i64 %v_fetch.sroa.74.26.extract.trunc1533, 48, !dbg !238
  %v_column.sroa.50.0.insert.shift1307 = shl nuw nsw i64 %v_fetch.sroa.50.18.extract.trunc1503, 32, !dbg !238
  %v_column.sroa.50.0.insert.insert1309 = or disjoint i64 %v_column.sroa.66.0.insert.shift1382, %v_column.sroa.50.0.insert.shift1307, !dbg !238
  %v_column.sroa.34.0.insert.shift1232 = zext i32 %v_fetch.sroa.26.10.extract.shift1472 to i64, !dbg !238
  %v_column.sroa.34.0.insert.insert1234 = or disjoint i64 %v_column.sroa.50.0.insert.insert1309, %v_column.sroa.34.0.insert.shift1232, !dbg !238
  %v_column.sroa.0.0.insert.insert1169 = or disjoint i64 %v_column.sroa.34.0.insert.insert1234, %v_fetch.sroa.0.2.extract.trunc1443, !dbg !238
  store i64 %v_column.sroa.0.0.insert.insert1169, ptr addrspace(3) %add.ptr487.1.1, align 8, !dbg !238
  %173 = or disjoint i32 %mul475, 1536, !dbg !240
  %174 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %173, !dbg !237
  %add.ptr487.2.1 = getelementptr inbounds i8, ptr addrspace(3) %174, i32 %add.ptr487.idx.2, !dbg !237
  %175 = and i32 %condval_2.sroa.5.0.3.1, 65535, !dbg !238
  %v_column.sroa.66.0.insert.ext1386 = zext nneg i32 %175 to i64, !dbg !238
  %v_column.sroa.66.0.insert.shift1387 = shl nuw i64 %v_column.sroa.66.0.insert.ext1386, 48, !dbg !238
  %176 = and i32 %condval_2.sroa.5.0.2.1, 65535, !dbg !238
  %v_column.sroa.50.0.insert.ext1311 = zext nneg i32 %176 to i64, !dbg !238
  %v_column.sroa.50.0.insert.shift1312 = shl nuw nsw i64 %v_column.sroa.50.0.insert.ext1311, 32, !dbg !238
  %v_column.sroa.50.0.insert.insert1314 = or disjoint i64 %v_column.sroa.66.0.insert.shift1387, %v_column.sroa.50.0.insert.shift1312, !dbg !238
  %177 = shl i32 %condval_2.sroa.5.0.1.1, 16, !dbg !238
  %v_column.sroa.34.0.insert.shift1237 = zext i32 %177 to i64, !dbg !238
  %v_column.sroa.34.0.insert.insert1239 = or disjoint i64 %v_column.sroa.50.0.insert.insert1314, %v_column.sroa.34.0.insert.shift1237, !dbg !238
  %178 = and i32 %condval_2.sroa.5.0.1980, 65535, !dbg !238
  %v_column.sroa.0.0.insert.ext1171 = zext nneg i32 %178 to i64, !dbg !238
  %v_column.sroa.0.0.insert.insert1173 = or disjoint i64 %v_column.sroa.34.0.insert.insert1239, %v_column.sroa.0.0.insert.ext1171, !dbg !238
  store i64 %v_column.sroa.0.0.insert.insert1173, ptr addrspace(3) %add.ptr487.2.1, align 8, !dbg !238
  %v_fetch.sroa.14.6.extract.shift1457 = lshr i32 %condval_2.sroa.5.0.1980, 16, !dbg !239
  %v_fetch.sroa.14.6.extract.trunc1458 = zext nneg i32 %v_fetch.sroa.14.6.extract.shift1457 to i64, !dbg !239
  %v_fetch.sroa.38.14.extract.shift1487 = and i32 %condval_2.sroa.5.0.1.1, -65536, !dbg !238
  %v_fetch.sroa.62.22.extract.shift1517 = lshr i32 %condval_2.sroa.5.0.2.1, 16, !dbg !239
  %v_fetch.sroa.62.22.extract.trunc1518 = zext nneg i32 %v_fetch.sroa.62.22.extract.shift1517 to i64, !dbg !239
  %v_fetch.sroa.86.30.extract.shift1547 = lshr i32 %condval_2.sroa.5.0.3.1, 16, !dbg !239
  %v_fetch.sroa.86.30.extract.trunc1548 = zext nneg i32 %v_fetch.sroa.86.30.extract.shift1547 to i64, !dbg !239
  %179 = or disjoint i32 %mul475, 1792, !dbg !240
  %180 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %179, !dbg !237
  %add.ptr487.3.1 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 %add.ptr487.idx.3, !dbg !237
  %v_column.sroa.66.0.insert.shift1392 = shl nuw i64 %v_fetch.sroa.86.30.extract.trunc1548, 48, !dbg !238
  %v_column.sroa.50.0.insert.shift1317 = shl nuw nsw i64 %v_fetch.sroa.62.22.extract.trunc1518, 32, !dbg !238
  %v_column.sroa.50.0.insert.insert1319 = or disjoint i64 %v_column.sroa.66.0.insert.shift1392, %v_column.sroa.50.0.insert.shift1317, !dbg !238
  %v_column.sroa.34.0.insert.shift1242 = zext i32 %v_fetch.sroa.38.14.extract.shift1487 to i64, !dbg !238
  %v_column.sroa.34.0.insert.insert1244 = or disjoint i64 %v_column.sroa.50.0.insert.insert1319, %v_column.sroa.34.0.insert.shift1242, !dbg !238
  %v_column.sroa.0.0.insert.insert1177 = or disjoint i64 %v_column.sroa.34.0.insert.insert1244, %v_fetch.sroa.14.6.extract.trunc1458, !dbg !238
  store i64 %v_column.sroa.0.0.insert.insert1177, ptr addrspace(3) %add.ptr487.3.1, align 8, !dbg !238
  %181 = add nuw i32 %add223, 16
  %cmp400.1996 = icmp slt i32 %181, 1024, !dbg !231
  br i1 %cmp400.1996, label %if.then401.11002, label %if.end441.11007, !dbg !232

if.then401.11002:                                 ; preds = %if.end441.3.1
  %182 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep919, i64 %add407, !dbg !233
  %183 = getelementptr inbounds i8, ptr addrspace(4) %182, i64 %.idx, !dbg !233
  %184 = getelementptr inbounds i8, ptr addrspace(4) %183, i64 4096, !dbg !233
  %condval_2.sroa.0.0.copyload.1999 = load i32, ptr addrspace(4) %184, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx.11000 = getelementptr inbounds i8, ptr addrspace(4) %183, i64 4100, !dbg !234
  %condval_2.sroa.5.0.copyload.11001 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx.11000, align 4, !dbg !234, !tbaa !30
  br label %if.end441.11007, !dbg !235

if.end441.11007:                                  ; preds = %if.then401.11002, %if.end441.3.1
  %condval_2.sroa.0.0.11003 = phi i32 [ %condval_2.sroa.0.0.copyload.1999, %if.then401.11002 ], [ 0, %if.end441.3.1 ], !dbg !94
  %condval_2.sroa.5.0.11004 = phi i32 [ %condval_2.sroa.5.0.copyload.11001, %if.then401.11002 ], [ 0, %if.end441.3.1 ], !dbg !94
  %185 = add nuw i32 %add223, 17, !dbg !236
  %cmp400.1.11006 = icmp slt i32 %185, 1024, !dbg !231
  br i1 %cmp400.1.11006, label %if.then401.1.11013, label %if.end441.1.11019, !dbg !232

if.then401.1.11013:                               ; preds = %if.end441.11007
  %186 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep919, i64 %add407, !dbg !233
  %187 = getelementptr inbounds i8, ptr addrspace(4) %186, i64 %.idx, !dbg !233
  %gep920.1.11009 = getelementptr inbounds i8, ptr addrspace(4) %187, i64 4352, !dbg !233
  %condval_2.sroa.0.0.copyload.1.11010 = load i32, ptr addrspace(4) %gep920.1.11009, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx.1.11011 = getelementptr inbounds i8, ptr addrspace(4) %187, i64 4356, !dbg !234
  %condval_2.sroa.5.0.copyload.1.11012 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx.1.11011, align 4, !dbg !234, !tbaa !30
  br label %if.end441.1.11019, !dbg !235

if.end441.1.11019:                                ; preds = %if.then401.1.11013, %if.end441.11007
  %condval_2.sroa.0.0.1.11014 = phi i32 [ %condval_2.sroa.0.0.copyload.1.11010, %if.then401.1.11013 ], [ 0, %if.end441.11007 ], !dbg !94
  %condval_2.sroa.5.0.1.11015 = phi i32 [ %condval_2.sroa.5.0.copyload.1.11012, %if.then401.1.11013 ], [ 0, %if.end441.11007 ], !dbg !94
  %188 = add nuw i32 %add223, 18, !dbg !236
  %cmp400.2.11018 = icmp slt i32 %188, 1024, !dbg !231
  br i1 %cmp400.2.11018, label %if.then401.2.11025, label %if.end441.2.11031, !dbg !232

if.then401.2.11025:                               ; preds = %if.end441.1.11019
  %189 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep919, i64 %add407, !dbg !233
  %190 = getelementptr inbounds i8, ptr addrspace(4) %189, i64 %.idx, !dbg !233
  %gep920.2.11021 = getelementptr inbounds i8, ptr addrspace(4) %190, i64 4608, !dbg !233
  %condval_2.sroa.0.0.copyload.2.11022 = load i32, ptr addrspace(4) %gep920.2.11021, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx.2.11023 = getelementptr inbounds i8, ptr addrspace(4) %190, i64 4612, !dbg !234
  %condval_2.sroa.5.0.copyload.2.11024 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx.2.11023, align 4, !dbg !234, !tbaa !30
  br label %if.end441.2.11031, !dbg !235

if.end441.2.11031:                                ; preds = %if.then401.2.11025, %if.end441.1.11019
  %condval_2.sroa.0.0.2.11026 = phi i32 [ %condval_2.sroa.0.0.copyload.2.11022, %if.then401.2.11025 ], [ 0, %if.end441.1.11019 ], !dbg !94
  %condval_2.sroa.5.0.2.11027 = phi i32 [ %condval_2.sroa.5.0.copyload.2.11024, %if.then401.2.11025 ], [ 0, %if.end441.1.11019 ], !dbg !94
  %narrow = add nuw i32 %add223, 19, !dbg !236
  %cmp400.3.11030 = icmp slt i32 %narrow, 1024, !dbg !231
  br i1 %cmp400.3.11030, label %if.then401.3.11037, label %if.end441.3.11042, !dbg !232

if.then401.3.11037:                               ; preds = %if.end441.2.11031
  %191 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep919, i64 %add407, !dbg !233
  %192 = getelementptr inbounds i8, ptr addrspace(4) %191, i64 %.idx, !dbg !233
  %gep920.3.11033 = getelementptr inbounds i8, ptr addrspace(4) %192, i64 4864, !dbg !233
  %condval_2.sroa.0.0.copyload.3.11034 = load i32, ptr addrspace(4) %gep920.3.11033, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx.3.11035 = getelementptr inbounds i8, ptr addrspace(4) %192, i64 4868, !dbg !234
  %condval_2.sroa.5.0.copyload.3.11036 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx.3.11035, align 4, !dbg !234, !tbaa !30
  br label %if.end441.3.11042, !dbg !235

if.end441.3.11042:                                ; preds = %if.then401.3.11037, %if.end441.2.11031
  %condval_2.sroa.0.0.3.11038 = phi i32 [ %condval_2.sroa.0.0.copyload.3.11034, %if.then401.3.11037 ], [ 0, %if.end441.2.11031 ], !dbg !94
  %condval_2.sroa.5.0.3.11039 = phi i32 [ %condval_2.sroa.5.0.copyload.3.11036, %if.then401.3.11037 ], [ 0, %if.end441.2.11031 ], !dbg !94
  %193 = or disjoint i32 %mul475, 2048, !dbg !240
  %194 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %193, !dbg !237
  %add.ptr487.11051 = getelementptr inbounds i8, ptr addrspace(3) %194, i32 %add.ptr487.idx, !dbg !237
  %195 = and i32 %condval_2.sroa.0.0.3.11038, 65535, !dbg !238
  %v_column.sroa.66.0.insert.ext1396 = zext nneg i32 %195 to i64, !dbg !238
  %v_column.sroa.66.0.insert.shift1397 = shl nuw i64 %v_column.sroa.66.0.insert.ext1396, 48, !dbg !238
  %196 = and i32 %condval_2.sroa.0.0.2.11026, 65535, !dbg !238
  %v_column.sroa.50.0.insert.ext1321 = zext nneg i32 %196 to i64, !dbg !238
  %v_column.sroa.50.0.insert.shift1322 = shl nuw nsw i64 %v_column.sroa.50.0.insert.ext1321, 32, !dbg !238
  %v_column.sroa.50.0.insert.insert1324 = or disjoint i64 %v_column.sroa.66.0.insert.shift1397, %v_column.sroa.50.0.insert.shift1322, !dbg !238
  %197 = shl i32 %condval_2.sroa.0.0.1.11014, 16, !dbg !238
  %v_column.sroa.34.0.insert.shift1247 = zext i32 %197 to i64, !dbg !238
  %v_column.sroa.34.0.insert.insert1249 = or disjoint i64 %v_column.sroa.50.0.insert.insert1324, %v_column.sroa.34.0.insert.shift1247, !dbg !238
  %198 = and i32 %condval_2.sroa.0.0.11003, 65535, !dbg !238
  %v_column.sroa.0.0.insert.ext1179 = zext nneg i32 %198 to i64, !dbg !238
  %v_column.sroa.0.0.insert.insert1181 = or disjoint i64 %v_column.sroa.34.0.insert.insert1249, %v_column.sroa.0.0.insert.ext1179, !dbg !238
  store i64 %v_column.sroa.0.0.insert.insert1181, ptr addrspace(3) %add.ptr487.11051, align 8, !dbg !238
  %v_fetch.sroa.0.2.extract.shift1445 = lshr i32 %condval_2.sroa.0.0.11003, 16, !dbg !239
  %v_fetch.sroa.0.2.extract.trunc1446 = zext nneg i32 %v_fetch.sroa.0.2.extract.shift1445 to i64, !dbg !239
  %v_fetch.sroa.26.10.extract.shift1475 = and i32 %condval_2.sroa.0.0.1.11014, -65536, !dbg !238
  %v_fetch.sroa.50.18.extract.shift1505 = lshr i32 %condval_2.sroa.0.0.2.11026, 16, !dbg !239
  %v_fetch.sroa.50.18.extract.trunc1506 = zext nneg i32 %v_fetch.sroa.50.18.extract.shift1505 to i64, !dbg !239
  %v_fetch.sroa.74.26.extract.shift1535 = lshr i32 %condval_2.sroa.0.0.3.11038, 16, !dbg !239
  %v_fetch.sroa.74.26.extract.trunc1536 = zext nneg i32 %v_fetch.sroa.74.26.extract.shift1535 to i64, !dbg !239
  %199 = or disjoint i32 %mul475, 2304, !dbg !240
  %200 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %199, !dbg !237
  %add.ptr487.1.11062 = getelementptr inbounds i8, ptr addrspace(3) %200, i32 %add.ptr487.idx.1, !dbg !237
  %v_column.sroa.66.0.insert.shift1402 = shl nuw i64 %v_fetch.sroa.74.26.extract.trunc1536, 48, !dbg !238
  %v_column.sroa.50.0.insert.shift1327 = shl nuw nsw i64 %v_fetch.sroa.50.18.extract.trunc1506, 32, !dbg !238
  %v_column.sroa.50.0.insert.insert1329 = or disjoint i64 %v_column.sroa.66.0.insert.shift1402, %v_column.sroa.50.0.insert.shift1327, !dbg !238
  %v_column.sroa.34.0.insert.shift1252 = zext i32 %v_fetch.sroa.26.10.extract.shift1475 to i64, !dbg !238
  %v_column.sroa.34.0.insert.insert1254 = or disjoint i64 %v_column.sroa.50.0.insert.insert1329, %v_column.sroa.34.0.insert.shift1252, !dbg !238
  %v_column.sroa.0.0.insert.insert1185 = or disjoint i64 %v_column.sroa.34.0.insert.insert1254, %v_fetch.sroa.0.2.extract.trunc1446, !dbg !238
  store i64 %v_column.sroa.0.0.insert.insert1185, ptr addrspace(3) %add.ptr487.1.11062, align 8, !dbg !238
  %201 = or disjoint i32 %mul475, 2560, !dbg !240
  %202 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %201, !dbg !237
  %add.ptr487.2.11073 = getelementptr inbounds i8, ptr addrspace(3) %202, i32 %add.ptr487.idx.2, !dbg !237
  %203 = and i32 %condval_2.sroa.5.0.3.11039, 65535, !dbg !238
  %v_column.sroa.66.0.insert.ext1406 = zext nneg i32 %203 to i64, !dbg !238
  %v_column.sroa.66.0.insert.shift1407 = shl nuw i64 %v_column.sroa.66.0.insert.ext1406, 48, !dbg !238
  %204 = and i32 %condval_2.sroa.5.0.2.11027, 65535, !dbg !238
  %v_column.sroa.50.0.insert.ext1331 = zext nneg i32 %204 to i64, !dbg !238
  %v_column.sroa.50.0.insert.shift1332 = shl nuw nsw i64 %v_column.sroa.50.0.insert.ext1331, 32, !dbg !238
  %v_column.sroa.50.0.insert.insert1334 = or disjoint i64 %v_column.sroa.66.0.insert.shift1407, %v_column.sroa.50.0.insert.shift1332, !dbg !238
  %205 = shl i32 %condval_2.sroa.5.0.1.11015, 16, !dbg !238
  %v_column.sroa.34.0.insert.shift1257 = zext i32 %205 to i64, !dbg !238
  %v_column.sroa.34.0.insert.insert1259 = or disjoint i64 %v_column.sroa.50.0.insert.insert1334, %v_column.sroa.34.0.insert.shift1257, !dbg !238
  %206 = and i32 %condval_2.sroa.5.0.11004, 65535, !dbg !238
  %v_column.sroa.0.0.insert.ext1187 = zext nneg i32 %206 to i64, !dbg !238
  %v_column.sroa.0.0.insert.insert1189 = or disjoint i64 %v_column.sroa.34.0.insert.insert1259, %v_column.sroa.0.0.insert.ext1187, !dbg !238
  store i64 %v_column.sroa.0.0.insert.insert1189, ptr addrspace(3) %add.ptr487.2.11073, align 8, !dbg !238
  %v_fetch.sroa.14.6.extract.shift1460 = lshr i32 %condval_2.sroa.5.0.11004, 16, !dbg !239
  %v_fetch.sroa.14.6.extract.trunc1461 = zext nneg i32 %v_fetch.sroa.14.6.extract.shift1460 to i64, !dbg !239
  %v_fetch.sroa.38.14.extract.shift1490 = and i32 %condval_2.sroa.5.0.1.11015, -65536, !dbg !238
  %v_fetch.sroa.62.22.extract.shift1520 = lshr i32 %condval_2.sroa.5.0.2.11027, 16, !dbg !239
  %v_fetch.sroa.62.22.extract.trunc1521 = zext nneg i32 %v_fetch.sroa.62.22.extract.shift1520 to i64, !dbg !239
  %v_fetch.sroa.86.30.extract.shift1550 = lshr i32 %condval_2.sroa.5.0.3.11039, 16, !dbg !239
  %v_fetch.sroa.86.30.extract.trunc1551 = zext nneg i32 %v_fetch.sroa.86.30.extract.shift1550 to i64, !dbg !239
  %207 = or disjoint i32 %mul475, 2816, !dbg !240
  %208 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %207, !dbg !237
  %add.ptr487.3.11084 = getelementptr inbounds i8, ptr addrspace(3) %208, i32 %add.ptr487.idx.3, !dbg !237
  %v_column.sroa.66.0.insert.shift1412 = shl nuw i64 %v_fetch.sroa.86.30.extract.trunc1551, 48, !dbg !238
  %v_column.sroa.50.0.insert.shift1337 = shl nuw nsw i64 %v_fetch.sroa.62.22.extract.trunc1521, 32, !dbg !238
  %v_column.sroa.50.0.insert.insert1339 = or disjoint i64 %v_column.sroa.66.0.insert.shift1412, %v_column.sroa.50.0.insert.shift1337, !dbg !238
  %v_column.sroa.34.0.insert.shift1262 = zext i32 %v_fetch.sroa.38.14.extract.shift1490 to i64, !dbg !238
  %v_column.sroa.34.0.insert.insert1264 = or disjoint i64 %v_column.sroa.50.0.insert.insert1339, %v_column.sroa.34.0.insert.shift1262, !dbg !238
  %v_column.sroa.0.0.insert.insert1193 = or disjoint i64 %v_column.sroa.34.0.insert.insert1264, %v_fetch.sroa.14.6.extract.trunc1461, !dbg !238
  store i64 %v_column.sroa.0.0.insert.insert1193, ptr addrspace(3) %add.ptr487.3.11084, align 8, !dbg !238
  br i1 %cmp400.1996, label %if.then401.1978.1, label %if.end441.1982.1, !dbg !232

if.then401.1978.1:                                ; preds = %if.end441.3.11042
  %209 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep919, i64 %add407, !dbg !233
  %210 = getelementptr inbounds i8, ptr addrspace(4) %209, i64 %.idx, !dbg !233
  %211 = getelementptr inbounds i8, ptr addrspace(4) %210, i64 4224, !dbg !233
  %condval_2.sroa.0.0.copyload.1975.1 = load i32, ptr addrspace(4) %211, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx.1976.1 = getelementptr inbounds i8, ptr addrspace(4) %210, i64 4228, !dbg !234
  %condval_2.sroa.5.0.copyload.1977.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx.1976.1, align 4, !dbg !234, !tbaa !30
  br label %if.end441.1982.1, !dbg !235

if.end441.1982.1:                                 ; preds = %if.then401.1978.1, %if.end441.3.11042
  %condval_2.sroa.0.0.1979.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1975.1, %if.then401.1978.1 ], [ 0, %if.end441.3.11042 ], !dbg !94
  %condval_2.sroa.5.0.1980.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1977.1, %if.then401.1978.1 ], [ 0, %if.end441.3.11042 ], !dbg !94
  br i1 %cmp400.1.11006, label %if.then401.1.1.1, label %if.end441.1.1.1, !dbg !232

if.then401.1.1.1:                                 ; preds = %if.end441.1982.1
  %212 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep919, i64 %add407, !dbg !233
  %213 = getelementptr inbounds i8, ptr addrspace(4) %212, i64 %.idx, !dbg !233
  %gep920.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %213, i64 4480, !dbg !233
  %condval_2.sroa.0.0.copyload.1.1.1 = load i32, ptr addrspace(4) %gep920.1.1.1, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %213, i64 4484, !dbg !234
  %condval_2.sroa.5.0.copyload.1.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx.1.1.1, align 4, !dbg !234, !tbaa !30
  br label %if.end441.1.1.1, !dbg !235

if.end441.1.1.1:                                  ; preds = %if.then401.1.1.1, %if.end441.1982.1
  %condval_2.sroa.0.0.1.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.1.1.1, %if.then401.1.1.1 ], [ 0, %if.end441.1982.1 ], !dbg !94
  %condval_2.sroa.5.0.1.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.1.1.1, %if.then401.1.1.1 ], [ 0, %if.end441.1982.1 ], !dbg !94
  br i1 %cmp400.2.11018, label %if.then401.2.1.1, label %if.end441.2.1.1, !dbg !232

if.then401.2.1.1:                                 ; preds = %if.end441.1.1.1
  %214 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep919, i64 %add407, !dbg !233
  %215 = getelementptr inbounds i8, ptr addrspace(4) %214, i64 %.idx, !dbg !233
  %gep920.2.1.1 = getelementptr inbounds i8, ptr addrspace(4) %215, i64 4736, !dbg !233
  %condval_2.sroa.0.0.copyload.2.1.1 = load i32, ptr addrspace(4) %gep920.2.1.1, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx.2.1.1 = getelementptr inbounds i8, ptr addrspace(4) %215, i64 4740, !dbg !234
  %condval_2.sroa.5.0.copyload.2.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx.2.1.1, align 4, !dbg !234, !tbaa !30
  br label %if.end441.2.1.1, !dbg !235

if.end441.2.1.1:                                  ; preds = %if.then401.2.1.1, %if.end441.1.1.1
  %condval_2.sroa.0.0.2.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.2.1.1, %if.then401.2.1.1 ], [ 0, %if.end441.1.1.1 ], !dbg !94
  %condval_2.sroa.5.0.2.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.2.1.1, %if.then401.2.1.1 ], [ 0, %if.end441.1.1.1 ], !dbg !94
  br i1 %cmp400.3.11030, label %if.then401.3.1.1, label %if.end441.3.1.1, !dbg !232

if.then401.3.1.1:                                 ; preds = %if.end441.2.1.1
  %216 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep919, i64 %add407, !dbg !233
  %217 = getelementptr inbounds i8, ptr addrspace(4) %216, i64 %.idx, !dbg !233
  %gep920.3.1.1 = getelementptr inbounds i8, ptr addrspace(4) %217, i64 4992, !dbg !233
  %condval_2.sroa.0.0.copyload.3.1.1 = load i32, ptr addrspace(4) %gep920.3.1.1, align 8, !dbg !234, !tbaa !30
  %condval_2.sroa.5.0.add.ptr427.sroa_idx.3.1.1 = getelementptr inbounds i8, ptr addrspace(4) %217, i64 4996, !dbg !234
  %condval_2.sroa.5.0.copyload.3.1.1 = load i32, ptr addrspace(4) %condval_2.sroa.5.0.add.ptr427.sroa_idx.3.1.1, align 4, !dbg !234, !tbaa !30
  br label %if.end441.3.1.1, !dbg !235

if.end441.3.1.1:                                  ; preds = %if.then401.3.1.1, %if.end441.2.1.1
  %condval_2.sroa.0.0.3.1.1 = phi i32 [ %condval_2.sroa.0.0.copyload.3.1.1, %if.then401.3.1.1 ], [ 0, %if.end441.2.1.1 ], !dbg !94
  %condval_2.sroa.5.0.3.1.1 = phi i32 [ %condval_2.sroa.5.0.copyload.3.1.1, %if.then401.3.1.1 ], [ 0, %if.end441.2.1.1 ], !dbg !94
  %218 = or disjoint i32 %mul475, 3072, !dbg !240
  %219 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %218, !dbg !237
  %add.ptr487.1990.1 = getelementptr inbounds i8, ptr addrspace(3) %219, i32 %add.ptr487.idx, !dbg !237
  %220 = and i32 %condval_2.sroa.0.0.3.1.1, 65535, !dbg !238
  %v_column.sroa.66.0.insert.ext1416 = zext nneg i32 %220 to i64, !dbg !238
  %v_column.sroa.66.0.insert.shift1417 = shl nuw i64 %v_column.sroa.66.0.insert.ext1416, 48, !dbg !238
  %221 = and i32 %condval_2.sroa.0.0.2.1.1, 65535, !dbg !238
  %v_column.sroa.50.0.insert.ext1341 = zext nneg i32 %221 to i64, !dbg !238
  %v_column.sroa.50.0.insert.shift1342 = shl nuw nsw i64 %v_column.sroa.50.0.insert.ext1341, 32, !dbg !238
  %v_column.sroa.50.0.insert.insert1344 = or disjoint i64 %v_column.sroa.66.0.insert.shift1417, %v_column.sroa.50.0.insert.shift1342, !dbg !238
  %222 = shl i32 %condval_2.sroa.0.0.1.1.1, 16, !dbg !238
  %v_column.sroa.34.0.insert.shift1267 = zext i32 %222 to i64, !dbg !238
  %v_column.sroa.34.0.insert.insert1269 = or disjoint i64 %v_column.sroa.50.0.insert.insert1344, %v_column.sroa.34.0.insert.shift1267, !dbg !238
  %223 = and i32 %condval_2.sroa.0.0.1979.1, 65535, !dbg !238
  %v_column.sroa.0.0.insert.ext1195 = zext nneg i32 %223 to i64, !dbg !238
  %v_column.sroa.0.0.insert.insert1197 = or disjoint i64 %v_column.sroa.34.0.insert.insert1269, %v_column.sroa.0.0.insert.ext1195, !dbg !238
  store i64 %v_column.sroa.0.0.insert.insert1197, ptr addrspace(3) %add.ptr487.1990.1, align 8, !dbg !238
  %v_fetch.sroa.0.2.extract.shift1448 = lshr i32 %condval_2.sroa.0.0.1979.1, 16, !dbg !239
  %v_fetch.sroa.0.2.extract.trunc1449 = zext nneg i32 %v_fetch.sroa.0.2.extract.shift1448 to i64, !dbg !239
  %v_fetch.sroa.26.10.extract.shift1478 = and i32 %condval_2.sroa.0.0.1.1.1, -65536, !dbg !238
  %v_fetch.sroa.50.18.extract.shift1508 = lshr i32 %condval_2.sroa.0.0.2.1.1, 16, !dbg !239
  %v_fetch.sroa.50.18.extract.trunc1509 = zext nneg i32 %v_fetch.sroa.50.18.extract.shift1508 to i64, !dbg !239
  %v_fetch.sroa.74.26.extract.shift1538 = lshr i32 %condval_2.sroa.0.0.3.1.1, 16, !dbg !239
  %v_fetch.sroa.74.26.extract.trunc1539 = zext nneg i32 %v_fetch.sroa.74.26.extract.shift1538 to i64, !dbg !239
  %224 = or disjoint i32 %mul475, 3328, !dbg !240
  %225 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %224, !dbg !237
  %add.ptr487.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %225, i32 %add.ptr487.idx.1, !dbg !237
  %v_column.sroa.66.0.insert.shift1422 = shl nuw i64 %v_fetch.sroa.74.26.extract.trunc1539, 48, !dbg !238
  %v_column.sroa.50.0.insert.shift1347 = shl nuw nsw i64 %v_fetch.sroa.50.18.extract.trunc1509, 32, !dbg !238
  %v_column.sroa.50.0.insert.insert1349 = or disjoint i64 %v_column.sroa.66.0.insert.shift1422, %v_column.sroa.50.0.insert.shift1347, !dbg !238
  %v_column.sroa.34.0.insert.shift1272 = zext i32 %v_fetch.sroa.26.10.extract.shift1478 to i64, !dbg !238
  %v_column.sroa.34.0.insert.insert1274 = or disjoint i64 %v_column.sroa.50.0.insert.insert1349, %v_column.sroa.34.0.insert.shift1272, !dbg !238
  %v_column.sroa.0.0.insert.insert1201 = or disjoint i64 %v_column.sroa.34.0.insert.insert1274, %v_fetch.sroa.0.2.extract.trunc1449, !dbg !238
  store i64 %v_column.sroa.0.0.insert.insert1201, ptr addrspace(3) %add.ptr487.1.1.1, align 8, !dbg !238
  %226 = or disjoint i32 %mul475, 3584, !dbg !240
  %227 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %226, !dbg !237
  %add.ptr487.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %227, i32 %add.ptr487.idx.2, !dbg !237
  %228 = and i32 %condval_2.sroa.5.0.3.1.1, 65535, !dbg !238
  %v_column.sroa.66.0.insert.ext1426 = zext nneg i32 %228 to i64, !dbg !238
  %v_column.sroa.66.0.insert.shift1427 = shl nuw i64 %v_column.sroa.66.0.insert.ext1426, 48, !dbg !238
  %229 = and i32 %condval_2.sroa.5.0.2.1.1, 65535, !dbg !238
  %v_column.sroa.50.0.insert.ext1351 = zext nneg i32 %229 to i64, !dbg !238
  %v_column.sroa.50.0.insert.shift1352 = shl nuw nsw i64 %v_column.sroa.50.0.insert.ext1351, 32, !dbg !238
  %v_column.sroa.50.0.insert.insert1354 = or disjoint i64 %v_column.sroa.66.0.insert.shift1427, %v_column.sroa.50.0.insert.shift1352, !dbg !238
  %230 = shl i32 %condval_2.sroa.5.0.1.1.1, 16, !dbg !238
  %v_column.sroa.34.0.insert.shift1277 = zext i32 %230 to i64, !dbg !238
  %v_column.sroa.34.0.insert.insert1279 = or disjoint i64 %v_column.sroa.50.0.insert.insert1354, %v_column.sroa.34.0.insert.shift1277, !dbg !238
  %231 = and i32 %condval_2.sroa.5.0.1980.1, 65535, !dbg !238
  %v_column.sroa.0.0.insert.ext1203 = zext nneg i32 %231 to i64, !dbg !238
  %v_column.sroa.0.0.insert.insert1205 = or disjoint i64 %v_column.sroa.34.0.insert.insert1279, %v_column.sroa.0.0.insert.ext1203, !dbg !238
  store i64 %v_column.sroa.0.0.insert.insert1205, ptr addrspace(3) %add.ptr487.2.1.1, align 8, !dbg !238
  %v_fetch.sroa.14.6.extract.shift1463 = lshr i32 %condval_2.sroa.5.0.1980.1, 16, !dbg !239
  %v_fetch.sroa.14.6.extract.trunc1464 = zext nneg i32 %v_fetch.sroa.14.6.extract.shift1463 to i64, !dbg !239
  %v_fetch.sroa.38.14.extract.shift1493 = and i32 %condval_2.sroa.5.0.1.1.1, -65536, !dbg !238
  %v_fetch.sroa.62.22.extract.shift1523 = lshr i32 %condval_2.sroa.5.0.2.1.1, 16, !dbg !239
  %v_fetch.sroa.62.22.extract.trunc1524 = zext nneg i32 %v_fetch.sroa.62.22.extract.shift1523 to i64, !dbg !239
  %v_fetch.sroa.86.30.extract.shift1553 = lshr i32 %condval_2.sroa.5.0.3.1.1, 16, !dbg !239
  %v_fetch.sroa.86.30.extract.trunc1554 = zext nneg i32 %v_fetch.sroa.86.30.extract.shift1553 to i64, !dbg !239
  %232 = or disjoint i32 %mul475, 3840, !dbg !240
  %233 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %232, !dbg !237
  %add.ptr487.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %233, i32 %add.ptr487.idx.3, !dbg !237
  %v_column.sroa.66.0.insert.shift1432 = shl nuw i64 %v_fetch.sroa.86.30.extract.trunc1554, 48, !dbg !238
  %v_column.sroa.50.0.insert.shift1357 = shl nuw nsw i64 %v_fetch.sroa.62.22.extract.trunc1524, 32, !dbg !238
  %v_column.sroa.50.0.insert.insert1359 = or disjoint i64 %v_column.sroa.66.0.insert.shift1432, %v_column.sroa.50.0.insert.shift1357, !dbg !238
  %v_column.sroa.34.0.insert.shift1282 = zext i32 %v_fetch.sroa.38.14.extract.shift1493 to i64, !dbg !238
  %v_column.sroa.34.0.insert.insert1284 = or disjoint i64 %v_column.sroa.50.0.insert.insert1359, %v_column.sroa.34.0.insert.shift1282, !dbg !238
  %v_column.sroa.0.0.insert.insert1209 = or disjoint i64 %v_column.sroa.34.0.insert.insert1284, %v_fetch.sroa.14.6.extract.trunc1464, !dbg !238
  store i64 %v_column.sroa.0.0.insert.insert1209, ptr addrspace(3) %add.ptr487.3.1.1, align 8, !dbg !238
  fence syncscope("warp") release, !dbg !241
  tail call void @llvm.mxc.barrier.warp(), !dbg !244
  fence syncscope("warp") acquire, !dbg !245
  %and526 = shl nuw nsw i32 %3, 8
  %mul527 = and i32 %and526, 768
  %mul534 = and i32 %5, 48
  %and540 = and i32 %3, 3
  %234 = xor i32 %shr35, %and540
  %add535 = or disjoint i32 %mul527, %mul534, !dbg !246
  %235 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535, !dbg !247
  %add.ptr545.idx = shl nuw nsw i32 %234, 3, !dbg !247
  %add.ptr545 = getelementptr inbounds i8, ptr addrspace(3) %235, i32 %add.ptr545.idx, !dbg !247
  %236 = load <4 x half>, ptr addrspace(3) %add.ptr545, align 8, !dbg !248
  %add530.1 = or disjoint i32 %mul527, %mul534, !dbg !246
  %add535.1 = or disjoint i32 %add530.1, 64, !dbg !246
  %237 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.1, !dbg !247
  %xor541.1 = shl nuw nsw i32 %234, 3, !dbg !247
  %add.ptr545.idx.1 = xor i32 %xor541.1, 8, !dbg !247
  %add.ptr545.1 = getelementptr inbounds i8, ptr addrspace(3) %237, i32 %add.ptr545.idx.1, !dbg !247
  %238 = load <4 x half>, ptr addrspace(3) %add.ptr545.1, align 8, !dbg !248
  %add530.2 = or disjoint i32 %mul527, %mul534, !dbg !246
  %add535.2 = or disjoint i32 %add530.2, 128, !dbg !246
  %239 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.2, !dbg !247
  %xor541.2 = shl nuw nsw i32 %234, 3, !dbg !247
  %add.ptr545.idx.2 = xor i32 %xor541.2, 16, !dbg !247
  %add.ptr545.2 = getelementptr inbounds i8, ptr addrspace(3) %239, i32 %add.ptr545.idx.2, !dbg !247
  %240 = load <4 x half>, ptr addrspace(3) %add.ptr545.2, align 8, !dbg !248
  %add530.3 = or disjoint i32 %mul527, %mul534, !dbg !246
  %add535.3 = or disjoint i32 %add530.3, 192, !dbg !246
  %241 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.3, !dbg !247
  %xor541.3 = shl nuw nsw i32 %234, 3, !dbg !247
  %add.ptr545.idx.3 = xor i32 %xor541.3, 24, !dbg !247
  %add.ptr545.3 = getelementptr inbounds i8, ptr addrspace(3) %241, i32 %add.ptr545.idx.3, !dbg !247
  %242 = load <4 x half>, ptr addrspace(3) %add.ptr545.3, align 8, !dbg !248
  %243 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %236, <4 x half> %98, <4 x float> zeroinitializer), !dbg !249
  %244 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %238, <4 x half> %98, <4 x float> zeroinitializer), !dbg !249
  %245 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %240, <4 x half> %98, <4 x float> zeroinitializer), !dbg !249
  %246 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %242, <4 x half> %98, <4 x float> zeroinitializer), !dbg !249
  %add528.1 = or disjoint i32 %mul527, %mul534, !dbg !246
  %add535.11086 = or disjoint i32 %add528.1, 1024, !dbg !246
  %247 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.11086, !dbg !247
  %add.ptr545.11088 = getelementptr inbounds i8, ptr addrspace(3) %247, i32 %add.ptr545.idx, !dbg !247
  %248 = load <4 x half>, ptr addrspace(3) %add.ptr545.11088, align 8, !dbg !248
  %add530.1.1 = or disjoint i32 %mul527, %mul534, !dbg !246
  %add535.1.1 = or disjoint i32 %add530.1.1, 1088, !dbg !246
  %249 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.1.1, !dbg !247
  %add.ptr545.1.1 = getelementptr inbounds i8, ptr addrspace(3) %249, i32 %add.ptr545.idx.1, !dbg !247
  %250 = load <4 x half>, ptr addrspace(3) %add.ptr545.1.1, align 8, !dbg !248
  %add530.2.1 = or disjoint i32 %mul527, %mul534, !dbg !246
  %add535.2.1 = or disjoint i32 %add530.2.1, 1152, !dbg !246
  %251 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.2.1, !dbg !247
  %add.ptr545.2.1 = getelementptr inbounds i8, ptr addrspace(3) %251, i32 %add.ptr545.idx.2, !dbg !247
  %252 = load <4 x half>, ptr addrspace(3) %add.ptr545.2.1, align 8, !dbg !248
  %add530.3.1 = or disjoint i32 %mul527, %mul534, !dbg !246
  %add535.3.1 = or disjoint i32 %add530.3.1, 1216, !dbg !246
  %253 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.3.1, !dbg !247
  %add.ptr545.3.1 = getelementptr inbounds i8, ptr addrspace(3) %253, i32 %add.ptr545.idx.3, !dbg !247
  %254 = load <4 x half>, ptr addrspace(3) %add.ptr545.3.1, align 8, !dbg !248
  %255 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %248, <4 x half> %98, <4 x float> zeroinitializer), !dbg !249
  %256 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %250, <4 x half> %98, <4 x float> zeroinitializer), !dbg !249
  %257 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %252, <4 x half> %98, <4 x float> zeroinitializer), !dbg !249
  %258 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %254, <4 x half> %98, <4 x float> zeroinitializer), !dbg !249
  %add528.11091 = or disjoint i32 %mul527, %mul534, !dbg !246
  %add535.11092 = or disjoint i32 %add528.11091, 2048, !dbg !246
  %259 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.11092, !dbg !247
  %add.ptr545.11094 = getelementptr inbounds i8, ptr addrspace(3) %259, i32 %add.ptr545.idx, !dbg !247
  %260 = load <4 x half>, ptr addrspace(3) %add.ptr545.11094, align 8, !dbg !248
  %add530.1.11095 = or disjoint i32 %mul527, %mul534, !dbg !246
  %add535.1.11096 = or disjoint i32 %add530.1.11095, 2112, !dbg !246
  %261 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.1.11096, !dbg !247
  %add.ptr545.1.11099 = getelementptr inbounds i8, ptr addrspace(3) %261, i32 %add.ptr545.idx.1, !dbg !247
  %262 = load <4 x half>, ptr addrspace(3) %add.ptr545.1.11099, align 8, !dbg !248
  %add530.2.11101 = or disjoint i32 %mul527, %mul534, !dbg !246
  %add535.2.11102 = or disjoint i32 %add530.2.11101, 2176, !dbg !246
  %263 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.2.11102, !dbg !247
  %add.ptr545.2.11105 = getelementptr inbounds i8, ptr addrspace(3) %263, i32 %add.ptr545.idx.2, !dbg !247
  %264 = load <4 x half>, ptr addrspace(3) %add.ptr545.2.11105, align 8, !dbg !248
  %add530.3.11107 = or disjoint i32 %mul527, %mul534, !dbg !246
  %add535.3.11108 = or disjoint i32 %add530.3.11107, 2240, !dbg !246
  %265 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.3.11108, !dbg !247
  %add.ptr545.3.11111 = getelementptr inbounds i8, ptr addrspace(3) %265, i32 %add.ptr545.idx.3, !dbg !247
  %266 = load <4 x half>, ptr addrspace(3) %add.ptr545.3.11111, align 8, !dbg !248
  %267 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %260, <4 x half> %114, <4 x float> %243), !dbg !249
  %268 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %262, <4 x half> %114, <4 x float> %244), !dbg !249
  %269 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %264, <4 x half> %114, <4 x float> %245), !dbg !249
  %270 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %266, <4 x half> %114, <4 x float> %246), !dbg !249
  %add528.1.1 = or disjoint i32 %mul527, %mul534, !dbg !246
  %add535.11086.1 = or disjoint i32 %add528.1.1, 3072, !dbg !246
  %271 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.11086.1, !dbg !247
  %add.ptr545.11088.1 = getelementptr inbounds i8, ptr addrspace(3) %271, i32 %add.ptr545.idx, !dbg !247
  %272 = load <4 x half>, ptr addrspace(3) %add.ptr545.11088.1, align 8, !dbg !248
  %add530.1.1.1 = or disjoint i32 %mul527, %mul534, !dbg !246
  %add535.1.1.1 = or disjoint i32 %add530.1.1.1, 3136, !dbg !246
  %273 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.1.1.1, !dbg !247
  %add.ptr545.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %273, i32 %add.ptr545.idx.1, !dbg !247
  %274 = load <4 x half>, ptr addrspace(3) %add.ptr545.1.1.1, align 8, !dbg !248
  %add530.2.1.1 = or disjoint i32 %mul527, %mul534, !dbg !246
  %add535.2.1.1 = or disjoint i32 %add530.2.1.1, 3200, !dbg !246
  %275 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.2.1.1, !dbg !247
  %add.ptr545.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %275, i32 %add.ptr545.idx.2, !dbg !247
  %276 = load <4 x half>, ptr addrspace(3) %add.ptr545.2.1.1, align 8, !dbg !248
  %add530.3.1.1 = or disjoint i32 %mul527, %mul534, !dbg !246
  %add535.3.1.1 = or disjoint i32 %add530.3.1.1, 3264, !dbg !246
  %277 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.3.1.1, !dbg !247
  %add.ptr545.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %277, i32 %add.ptr545.idx.3, !dbg !247
  %278 = load <4 x half>, ptr addrspace(3) %add.ptr545.3.1.1, align 8, !dbg !248
  %279 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %272, <4 x half> %114, <4 x float> %255), !dbg !249
  %280 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %274, <4 x half> %114, <4 x float> %256), !dbg !249
  %281 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %276, <4 x half> %114, <4 x float> %257), !dbg !249
  %282 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %278, <4 x half> %114, <4 x float> %258), !dbg !249
  %add379 = fadd contract float %add374, %126, !dbg !250
  br label %if.end596, !dbg !61

if.end596:                                        ; preds = %if.end441.3.1.1, %for.body586.preheader
  %.pre-phi1907 = phi i64 [ %11, %if.end441.3.1.1 ], [ %.pre1906, %for.body586.preheader ], !dbg !60
  %.pre-phi1905 = phi i64 [ %9, %if.end441.3.1.1 ], [ %.pre1904, %for.body586.preheader ], !dbg !60
  %.pre-phi1903 = phi i64 [ %7, %if.end441.3.1.1 ], [ %.pre1902, %for.body586.preheader ], !dbg !60
  %add668.1.pre-phi = phi i32 [ %add36.1, %if.end441.3.1.1 ], [ %.pre1901, %for.body586.preheader ], !dbg !59
  %.pre-phi1900 = phi i64 [ %6, %if.end441.3.1.1 ], [ %.pre1899, %for.body586.preheader ], !dbg !58
  %shr667.pre-phi = phi i32 [ %shr35, %if.end441.3.1.1 ], [ %.pre1894, %for.body586.preheader ]
  %.pre-phi1893 = phi i32 [ %mul20, %if.end441.3.1.1 ], [ %.pre1892, %for.body586.preheader ]
  %xor640.3.pre-phi = phi i32 [ %xor59.3, %if.end441.3.1.1 ], [ %.pre1891, %for.body586.preheader ], !dbg !56
  %xor640.2.pre-phi = phi i32 [ %xor59.2, %if.end441.3.1.1 ], [ %.pre1889, %for.body586.preheader ], !dbg !56
  %xor640.1.pre-phi = phi i32 [ %xor59.1, %if.end441.3.1.1 ], [ %.pre1887, %for.body586.preheader ], !dbg !56
  %xor640.pre-phi = phi i32 [ %xor59, %if.end441.3.1.1 ], [ %.pre1885, %for.body586.preheader ], !dbg !56
  %mul646.pre-phi = phi i32 [ %mul65, %if.end441.3.1.1 ], [ %.pre1884, %for.body586.preheader ]
  %and639.pre-phi = phi i32 [ %and31, %if.end441.3.1.1 ], [ %.pre1881, %for.body586.preheader ]
  %shr636.pre-phi = phi i32 [ %shr55, %if.end441.3.1.1 ], [ %.pre1880, %for.body586.preheader ]
  %and632.pre-phi = phi i32 [ %4, %if.end441.3.1.1 ], [ %.pre1879, %for.body586.preheader ]
  %.pre-phi = phi i32 [ %3, %if.end441.3.1.1 ], [ %.pre, %for.body586.preheader ]
  %numerator.sroa.170.0 = phi <4 x float> [ %282, %if.end441.3.1.1 ], [ zeroinitializer, %for.body586.preheader ], !dbg !94
  %numerator.sroa.146.0 = phi <4 x float> [ %281, %if.end441.3.1.1 ], [ zeroinitializer, %for.body586.preheader ], !dbg !94
  %numerator.sroa.122.0 = phi <4 x float> [ %280, %if.end441.3.1.1 ], [ zeroinitializer, %for.body586.preheader ], !dbg !94
  %numerator.sroa.98.0 = phi <4 x float> [ %279, %if.end441.3.1.1 ], [ zeroinitializer, %for.body586.preheader ], !dbg !94
  %numerator.sroa.74.0 = phi <4 x float> [ %270, %if.end441.3.1.1 ], [ zeroinitializer, %for.body586.preheader ], !dbg !94
  %numerator.sroa.50.0 = phi <4 x float> [ %269, %if.end441.3.1.1 ], [ zeroinitializer, %for.body586.preheader ], !dbg !94
  %numerator.sroa.26.0 = phi <4 x float> [ %268, %if.end441.3.1.1 ], [ zeroinitializer, %for.body586.preheader ], !dbg !94
  %numerator.sroa.0.0 = phi <4 x float> [ %267, %if.end441.3.1.1 ], [ zeroinitializer, %for.body586.preheader ], !dbg !94
  %denominator.sroa.0.1 = phi float [ %add379, %if.end441.3.1.1 ], [ 0.000000e+00, %for.body586.preheader ], !dbg !94
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !251
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !251
  %div.1 = fdiv contract float %numerator.sroa.0.4.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !251
  %div.2 = fdiv contract float %numerator.sroa.0.8.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !251
  %div.3 = fdiv contract float %numerator.sroa.0.12.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.26.16.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 0, !dbg !251
  %div.4 = fdiv contract float %numerator.sroa.26.16.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.26.20.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 1, !dbg !251
  %div.5 = fdiv contract float %numerator.sroa.26.20.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.26.24.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 2, !dbg !251
  %div.6 = fdiv contract float %numerator.sroa.26.24.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.26.28.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 3, !dbg !251
  %div.7 = fdiv contract float %numerator.sroa.26.28.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.50.32.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 0, !dbg !251
  %div.8 = fdiv contract float %numerator.sroa.50.32.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.50.36.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 1, !dbg !251
  %div.9 = fdiv contract float %numerator.sroa.50.36.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.50.40.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 2, !dbg !251
  %div.10 = fdiv contract float %numerator.sroa.50.40.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.50.44.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 3, !dbg !251
  %div.11 = fdiv contract float %numerator.sroa.50.44.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.74.48.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 0, !dbg !251
  %div.12 = fdiv contract float %numerator.sroa.74.48.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.74.52.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 1, !dbg !251
  %div.13 = fdiv contract float %numerator.sroa.74.52.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.74.56.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 2, !dbg !251
  %div.14 = fdiv contract float %numerator.sroa.74.56.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.74.60.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 3, !dbg !251
  %div.15 = fdiv contract float %numerator.sroa.74.60.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.98.64.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 0, !dbg !251
  %div.16 = fdiv contract float %numerator.sroa.98.64.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.98.68.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 1, !dbg !251
  %div.17 = fdiv contract float %numerator.sroa.98.68.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.98.72.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 2, !dbg !251
  %div.18 = fdiv contract float %numerator.sroa.98.72.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.98.76.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 3, !dbg !251
  %div.19 = fdiv contract float %numerator.sroa.98.76.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.122.80.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 0, !dbg !251
  %div.20 = fdiv contract float %numerator.sroa.122.80.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.122.84.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 1, !dbg !251
  %div.21 = fdiv contract float %numerator.sroa.122.84.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.122.88.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 2, !dbg !251
  %div.22 = fdiv contract float %numerator.sroa.122.88.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.122.92.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 3, !dbg !251
  %div.23 = fdiv contract float %numerator.sroa.122.92.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.146.96.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 0, !dbg !251
  %div.24 = fdiv contract float %numerator.sroa.146.96.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.146.100.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 1, !dbg !251
  %div.25 = fdiv contract float %numerator.sroa.146.100.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.146.104.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 2, !dbg !251
  %div.26 = fdiv contract float %numerator.sroa.146.104.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.146.108.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 3, !dbg !251
  %div.27 = fdiv contract float %numerator.sroa.146.108.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.170.112.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 0, !dbg !251
  %div.28 = fdiv contract float %numerator.sroa.170.112.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.170.116.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 1, !dbg !251
  %div.29 = fdiv contract float %numerator.sroa.170.116.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.170.120.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 2, !dbg !251
  %div.30 = fdiv contract float %numerator.sroa.170.120.vec.extract, %denominator.sroa.0.1, !dbg !252
  %numerator.sroa.170.124.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 3, !dbg !251
  %div.31 = fdiv contract float %numerator.sroa.170.124.vec.extract, %denominator.sroa.0.1, !dbg !252
  fence syncscope("warp") release, !dbg !253
  tail call void @llvm.mxc.barrier.warp(), !dbg !256
  fence syncscope("warp") acquire, !dbg !257
  %mul633 = and i32 %and632.pre-phi, 1920
  %283 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !258, !noalias !262
  %284 = fptrunc float %div to half, !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %283), !dbg !258, !noalias !262
  %285 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !262
  %286 = fptrunc float %div.1 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %285), !dbg !267, !noalias !262
  %287 = bitcast half %284 to i16, !dbg !269
  %288 = bitcast half %286 to i16, !dbg !272
  %289 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !273, !noalias !277
  %290 = fptrunc float %div.2 to half, !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %289), !dbg !273, !noalias !277
  %291 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !277
  %292 = fptrunc float %div.3 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %291), !dbg !282, !noalias !277
  %293 = bitcast half %290 to i16, !dbg !284
  %294 = bitcast half %292 to i16, !dbg !286
  %__6.sroa.6.0.insert.ext = zext i16 %294 to i64, !dbg !287
  %__6.sroa.6.0.insert.shift = shl nuw i64 %__6.sroa.6.0.insert.ext, 48, !dbg !287
  %__6.sroa.5.0.insert.ext = zext i16 %293 to i64, !dbg !287
  %__6.sroa.5.0.insert.shift = shl nuw nsw i64 %__6.sroa.5.0.insert.ext, 32, !dbg !287
  %__6.sroa.5.0.insert.insert = or disjoint i64 %__6.sroa.6.0.insert.shift, %__6.sroa.5.0.insert.shift, !dbg !287
  %__6.sroa.4.0.insert.ext = zext i16 %288 to i64, !dbg !287
  %__6.sroa.4.0.insert.shift = shl nuw nsw i64 %__6.sroa.4.0.insert.ext, 16, !dbg !287
  %__6.sroa.4.0.insert.insert = or disjoint i64 %__6.sroa.5.0.insert.insert, %__6.sroa.4.0.insert.shift, !dbg !287
  %__6.sroa.0.0.insert.ext = zext i16 %287 to i64, !dbg !287
  %__6.sroa.0.0.insert.insert = or disjoint i64 %__6.sroa.4.0.insert.insert, %__6.sroa.0.0.insert.ext, !dbg !287
  %mul641 = shl nuw nsw i32 %xor640.pre-phi, 3, !dbg !288
  %add642 = add nuw nsw i32 %mul641, %mul633, !dbg !289
  %add647 = or disjoint i32 %add642, %mul646.pre-phi, !dbg !290
  %add.ptr649 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add647, !dbg !291
  store i64 %__6.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr649, align 8, !dbg !292
  %295 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !258, !noalias !262
  %296 = fptrunc float %div.4 to half, !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %295), !dbg !258, !noalias !262
  %297 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !262
  %298 = fptrunc float %div.5 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %297), !dbg !267, !noalias !262
  %299 = bitcast half %296 to i16, !dbg !269
  %300 = bitcast half %298 to i16, !dbg !272
  %301 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !273, !noalias !277
  %302 = fptrunc float %div.6 to half, !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %301), !dbg !273, !noalias !277
  %303 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !277
  %304 = fptrunc float %div.7 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %303), !dbg !282, !noalias !277
  %305 = bitcast half %302 to i16, !dbg !284
  %306 = bitcast half %304 to i16, !dbg !286
  %__6.sroa.6.0.insert.ext.1 = zext i16 %306 to i64, !dbg !287
  %__6.sroa.6.0.insert.shift.1 = shl nuw i64 %__6.sroa.6.0.insert.ext.1, 48, !dbg !287
  %__6.sroa.5.0.insert.ext.1 = zext i16 %305 to i64, !dbg !287
  %__6.sroa.5.0.insert.shift.1 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.1, 32, !dbg !287
  %__6.sroa.5.0.insert.insert.1 = or disjoint i64 %__6.sroa.6.0.insert.shift.1, %__6.sroa.5.0.insert.shift.1, !dbg !287
  %__6.sroa.4.0.insert.ext.1 = zext i16 %300 to i64, !dbg !287
  %__6.sroa.4.0.insert.shift.1 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.1, 16, !dbg !287
  %__6.sroa.4.0.insert.insert.1 = or disjoint i64 %__6.sroa.5.0.insert.insert.1, %__6.sroa.4.0.insert.shift.1, !dbg !287
  %__6.sroa.0.0.insert.ext.1 = zext i16 %299 to i64, !dbg !287
  %__6.sroa.0.0.insert.insert.1 = or disjoint i64 %__6.sroa.4.0.insert.insert.1, %__6.sroa.0.0.insert.ext.1, !dbg !287
  %mul641.1 = shl nuw nsw i32 %xor640.1.pre-phi, 3, !dbg !288
  %add642.1 = add nuw nsw i32 %mul641.1, %mul633, !dbg !289
  %add647.1 = or disjoint i32 %add642.1, %mul646.pre-phi, !dbg !290
  %add.ptr649.1 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add647.1, !dbg !291
  store i64 %__6.sroa.0.0.insert.insert.1, ptr addrspace(3) %add.ptr649.1, align 8, !dbg !292
  %307 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !258, !noalias !262
  %308 = fptrunc float %div.8 to half, !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %307), !dbg !258, !noalias !262
  %309 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !262
  %310 = fptrunc float %div.9 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %309), !dbg !267, !noalias !262
  %311 = bitcast half %308 to i16, !dbg !269
  %312 = bitcast half %310 to i16, !dbg !272
  %313 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !273, !noalias !277
  %314 = fptrunc float %div.10 to half, !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %313), !dbg !273, !noalias !277
  %315 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !277
  %316 = fptrunc float %div.11 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %315), !dbg !282, !noalias !277
  %317 = bitcast half %314 to i16, !dbg !284
  %318 = bitcast half %316 to i16, !dbg !286
  %__6.sroa.6.0.insert.ext.2 = zext i16 %318 to i64, !dbg !287
  %__6.sroa.6.0.insert.shift.2 = shl nuw i64 %__6.sroa.6.0.insert.ext.2, 48, !dbg !287
  %__6.sroa.5.0.insert.ext.2 = zext i16 %317 to i64, !dbg !287
  %__6.sroa.5.0.insert.shift.2 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.2, 32, !dbg !287
  %__6.sroa.5.0.insert.insert.2 = or disjoint i64 %__6.sroa.6.0.insert.shift.2, %__6.sroa.5.0.insert.shift.2, !dbg !287
  %__6.sroa.4.0.insert.ext.2 = zext i16 %312 to i64, !dbg !287
  %__6.sroa.4.0.insert.shift.2 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.2, 16, !dbg !287
  %__6.sroa.4.0.insert.insert.2 = or disjoint i64 %__6.sroa.5.0.insert.insert.2, %__6.sroa.4.0.insert.shift.2, !dbg !287
  %__6.sroa.0.0.insert.ext.2 = zext i16 %311 to i64, !dbg !287
  %__6.sroa.0.0.insert.insert.2 = or disjoint i64 %__6.sroa.4.0.insert.insert.2, %__6.sroa.0.0.insert.ext.2, !dbg !287
  %mul641.2 = shl nuw nsw i32 %xor640.2.pre-phi, 3, !dbg !288
  %add642.2 = add nuw nsw i32 %mul641.2, %mul633, !dbg !289
  %add647.2 = or disjoint i32 %add642.2, %mul646.pre-phi, !dbg !290
  %add.ptr649.2 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add647.2, !dbg !291
  store i64 %__6.sroa.0.0.insert.insert.2, ptr addrspace(3) %add.ptr649.2, align 8, !dbg !292
  %319 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !258, !noalias !262
  %320 = fptrunc float %div.12 to half, !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %319), !dbg !258, !noalias !262
  %321 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !262
  %322 = fptrunc float %div.13 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %321), !dbg !267, !noalias !262
  %323 = bitcast half %320 to i16, !dbg !269
  %324 = bitcast half %322 to i16, !dbg !272
  %325 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !273, !noalias !277
  %326 = fptrunc float %div.14 to half, !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %325), !dbg !273, !noalias !277
  %327 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !277
  %328 = fptrunc float %div.15 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %327), !dbg !282, !noalias !277
  %329 = bitcast half %326 to i16, !dbg !284
  %330 = bitcast half %328 to i16, !dbg !286
  %__6.sroa.6.0.insert.ext.3 = zext i16 %330 to i64, !dbg !287
  %__6.sroa.6.0.insert.shift.3 = shl nuw i64 %__6.sroa.6.0.insert.ext.3, 48, !dbg !287
  %__6.sroa.5.0.insert.ext.3 = zext i16 %329 to i64, !dbg !287
  %__6.sroa.5.0.insert.shift.3 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.3, 32, !dbg !287
  %__6.sroa.5.0.insert.insert.3 = or disjoint i64 %__6.sroa.6.0.insert.shift.3, %__6.sroa.5.0.insert.shift.3, !dbg !287
  %__6.sroa.4.0.insert.ext.3 = zext i16 %324 to i64, !dbg !287
  %__6.sroa.4.0.insert.shift.3 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.3, 16, !dbg !287
  %__6.sroa.4.0.insert.insert.3 = or disjoint i64 %__6.sroa.5.0.insert.insert.3, %__6.sroa.4.0.insert.shift.3, !dbg !287
  %__6.sroa.0.0.insert.ext.3 = zext i16 %323 to i64, !dbg !287
  %__6.sroa.0.0.insert.insert.3 = or disjoint i64 %__6.sroa.4.0.insert.insert.3, %__6.sroa.0.0.insert.ext.3, !dbg !287
  %mul641.3 = shl nuw nsw i32 %xor640.3.pre-phi, 3, !dbg !288
  %add642.3 = add nuw nsw i32 %mul641.3, %mul633, !dbg !289
  %add647.3 = or disjoint i32 %add642.3, %mul646.pre-phi, !dbg !290
  %add.ptr649.3 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add647.3, !dbg !291
  store i64 %__6.sroa.0.0.insert.insert.3, ptr addrspace(3) %add.ptr649.3, align 8, !dbg !292
  %331 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !258, !noalias !262
  %332 = fptrunc float %div.16 to half, !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %331), !dbg !258, !noalias !262
  %333 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !262
  %334 = fptrunc float %div.17 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %333), !dbg !267, !noalias !262
  %335 = bitcast half %332 to i16, !dbg !269
  %336 = bitcast half %334 to i16, !dbg !272
  %337 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !273, !noalias !277
  %338 = fptrunc float %div.18 to half, !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %337), !dbg !273, !noalias !277
  %339 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !277
  %340 = fptrunc float %div.19 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %339), !dbg !282, !noalias !277
  %341 = bitcast half %338 to i16, !dbg !284
  %342 = bitcast half %340 to i16, !dbg !286
  %__6.sroa.6.0.insert.ext.4 = zext i16 %342 to i64, !dbg !287
  %__6.sroa.6.0.insert.shift.4 = shl nuw i64 %__6.sroa.6.0.insert.ext.4, 48, !dbg !287
  %__6.sroa.5.0.insert.ext.4 = zext i16 %341 to i64, !dbg !287
  %__6.sroa.5.0.insert.shift.4 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.4, 32, !dbg !287
  %__6.sroa.5.0.insert.insert.4 = or disjoint i64 %__6.sroa.6.0.insert.shift.4, %__6.sroa.5.0.insert.shift.4, !dbg !287
  %__6.sroa.4.0.insert.ext.4 = zext i16 %336 to i64, !dbg !287
  %__6.sroa.4.0.insert.shift.4 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.4, 16, !dbg !287
  %__6.sroa.4.0.insert.insert.4 = or disjoint i64 %__6.sroa.5.0.insert.insert.4, %__6.sroa.4.0.insert.shift.4, !dbg !287
  %__6.sroa.0.0.insert.ext.4 = zext i16 %335 to i64, !dbg !287
  %__6.sroa.0.0.insert.insert.4 = or disjoint i64 %__6.sroa.4.0.insert.insert.4, %__6.sroa.0.0.insert.ext.4, !dbg !287
  %add637.4 = add nuw nsw i32 %shr636.pre-phi, 8, !dbg !57
  %xor640.4 = xor i32 %add637.4, %and639.pre-phi, !dbg !56
  %mul641.4 = shl nuw nsw i32 %xor640.4, 3, !dbg !288
  %add642.4 = add nuw nsw i32 %mul641.4, %mul633, !dbg !289
  %add647.4 = or disjoint i32 %add642.4, %mul646.pre-phi, !dbg !290
  %add.ptr649.4 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add647.4, !dbg !291
  store i64 %__6.sroa.0.0.insert.insert.4, ptr addrspace(3) %add.ptr649.4, align 8, !dbg !292
  %343 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !258, !noalias !262
  %344 = fptrunc float %div.20 to half, !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %343), !dbg !258, !noalias !262
  %345 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !262
  %346 = fptrunc float %div.21 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %345), !dbg !267, !noalias !262
  %347 = bitcast half %344 to i16, !dbg !269
  %348 = bitcast half %346 to i16, !dbg !272
  %349 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !273, !noalias !277
  %350 = fptrunc float %div.22 to half, !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %349), !dbg !273, !noalias !277
  %351 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !277
  %352 = fptrunc float %div.23 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %351), !dbg !282, !noalias !277
  %353 = bitcast half %350 to i16, !dbg !284
  %354 = bitcast half %352 to i16, !dbg !286
  %__6.sroa.6.0.insert.ext.5 = zext i16 %354 to i64, !dbg !287
  %__6.sroa.6.0.insert.shift.5 = shl nuw i64 %__6.sroa.6.0.insert.ext.5, 48, !dbg !287
  %__6.sroa.5.0.insert.ext.5 = zext i16 %353 to i64, !dbg !287
  %__6.sroa.5.0.insert.shift.5 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.5, 32, !dbg !287
  %__6.sroa.5.0.insert.insert.5 = or disjoint i64 %__6.sroa.6.0.insert.shift.5, %__6.sroa.5.0.insert.shift.5, !dbg !287
  %__6.sroa.4.0.insert.ext.5 = zext i16 %348 to i64, !dbg !287
  %__6.sroa.4.0.insert.shift.5 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.5, 16, !dbg !287
  %__6.sroa.4.0.insert.insert.5 = or disjoint i64 %__6.sroa.5.0.insert.insert.5, %__6.sroa.4.0.insert.shift.5, !dbg !287
  %__6.sroa.0.0.insert.ext.5 = zext i16 %347 to i64, !dbg !287
  %__6.sroa.0.0.insert.insert.5 = or disjoint i64 %__6.sroa.4.0.insert.insert.5, %__6.sroa.0.0.insert.ext.5, !dbg !287
  %add637.5 = add nuw nsw i32 %shr636.pre-phi, 10, !dbg !57
  %xor640.5 = xor i32 %add637.5, %and639.pre-phi, !dbg !56
  %mul641.5 = shl nuw nsw i32 %xor640.5, 3, !dbg !288
  %add642.5 = add nuw nsw i32 %mul641.5, %mul633, !dbg !289
  %add647.5 = or disjoint i32 %add642.5, %mul646.pre-phi, !dbg !290
  %add.ptr649.5 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add647.5, !dbg !291
  store i64 %__6.sroa.0.0.insert.insert.5, ptr addrspace(3) %add.ptr649.5, align 8, !dbg !292
  %355 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !258, !noalias !262
  %356 = fptrunc float %div.24 to half, !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %355), !dbg !258, !noalias !262
  %357 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !262
  %358 = fptrunc float %div.25 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %357), !dbg !267, !noalias !262
  %359 = bitcast half %356 to i16, !dbg !269
  %360 = bitcast half %358 to i16, !dbg !272
  %361 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !273, !noalias !277
  %362 = fptrunc float %div.26 to half, !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %361), !dbg !273, !noalias !277
  %363 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !277
  %364 = fptrunc float %div.27 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %363), !dbg !282, !noalias !277
  %365 = bitcast half %362 to i16, !dbg !284
  %366 = bitcast half %364 to i16, !dbg !286
  %__6.sroa.6.0.insert.ext.6 = zext i16 %366 to i64, !dbg !287
  %__6.sroa.6.0.insert.shift.6 = shl nuw i64 %__6.sroa.6.0.insert.ext.6, 48, !dbg !287
  %__6.sroa.5.0.insert.ext.6 = zext i16 %365 to i64, !dbg !287
  %__6.sroa.5.0.insert.shift.6 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.6, 32, !dbg !287
  %__6.sroa.5.0.insert.insert.6 = or disjoint i64 %__6.sroa.6.0.insert.shift.6, %__6.sroa.5.0.insert.shift.6, !dbg !287
  %__6.sroa.4.0.insert.ext.6 = zext i16 %360 to i64, !dbg !287
  %__6.sroa.4.0.insert.shift.6 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.6, 16, !dbg !287
  %__6.sroa.4.0.insert.insert.6 = or disjoint i64 %__6.sroa.5.0.insert.insert.6, %__6.sroa.4.0.insert.shift.6, !dbg !287
  %__6.sroa.0.0.insert.ext.6 = zext i16 %359 to i64, !dbg !287
  %__6.sroa.0.0.insert.insert.6 = or disjoint i64 %__6.sroa.4.0.insert.insert.6, %__6.sroa.0.0.insert.ext.6, !dbg !287
  %add637.6 = add nuw nsw i32 %shr636.pre-phi, 12, !dbg !57
  %xor640.6 = xor i32 %add637.6, %and639.pre-phi, !dbg !56
  %mul641.6 = shl nuw nsw i32 %xor640.6, 3, !dbg !288
  %add642.6 = add nuw nsw i32 %mul641.6, %mul633, !dbg !289
  %add647.6 = or disjoint i32 %add642.6, %mul646.pre-phi, !dbg !290
  %add.ptr649.6 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add647.6, !dbg !291
  store i64 %__6.sroa.0.0.insert.insert.6, ptr addrspace(3) %add.ptr649.6, align 8, !dbg !292
  %367 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !258, !noalias !262
  %368 = fptrunc float %div.28 to half, !dbg !258
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %367), !dbg !258, !noalias !262
  %369 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !267, !noalias !262
  %370 = fptrunc float %div.29 to half, !dbg !267
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %369), !dbg !267, !noalias !262
  %371 = bitcast half %368 to i16, !dbg !269
  %372 = bitcast half %370 to i16, !dbg !272
  %373 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !273, !noalias !277
  %374 = fptrunc float %div.30 to half, !dbg !273
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %373), !dbg !273, !noalias !277
  %375 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !282, !noalias !277
  %376 = fptrunc float %div.31 to half, !dbg !282
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %375), !dbg !282, !noalias !277
  %377 = bitcast half %374 to i16, !dbg !284
  %378 = bitcast half %376 to i16, !dbg !286
  %__6.sroa.6.0.insert.ext.7 = zext i16 %378 to i64, !dbg !287
  %__6.sroa.6.0.insert.shift.7 = shl nuw i64 %__6.sroa.6.0.insert.ext.7, 48, !dbg !287
  %__6.sroa.5.0.insert.ext.7 = zext i16 %377 to i64, !dbg !287
  %__6.sroa.5.0.insert.shift.7 = shl nuw nsw i64 %__6.sroa.5.0.insert.ext.7, 32, !dbg !287
  %__6.sroa.5.0.insert.insert.7 = or disjoint i64 %__6.sroa.6.0.insert.shift.7, %__6.sroa.5.0.insert.shift.7, !dbg !287
  %__6.sroa.4.0.insert.ext.7 = zext i16 %372 to i64, !dbg !287
  %__6.sroa.4.0.insert.shift.7 = shl nuw nsw i64 %__6.sroa.4.0.insert.ext.7, 16, !dbg !287
  %__6.sroa.4.0.insert.insert.7 = or disjoint i64 %__6.sroa.5.0.insert.insert.7, %__6.sroa.4.0.insert.shift.7, !dbg !287
  %__6.sroa.0.0.insert.ext.7 = zext i16 %371 to i64, !dbg !287
  %__6.sroa.0.0.insert.insert.7 = or disjoint i64 %__6.sroa.4.0.insert.insert.7, %__6.sroa.0.0.insert.ext.7, !dbg !287
  %add637.7 = add nuw nsw i32 %shr636.pre-phi, 14, !dbg !57
  %xor640.7 = xor i32 %add637.7, %and639.pre-phi, !dbg !56
  %mul641.7 = shl nuw nsw i32 %xor640.7, 3, !dbg !288
  %add642.7 = add nuw nsw i32 %mul641.7, %mul633, !dbg !289
  %add647.7 = or disjoint i32 %add642.7, %mul646.pre-phi, !dbg !290
  %add.ptr649.7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add647.7, !dbg !291
  store i64 %__6.sroa.0.0.insert.insert.7, ptr addrspace(3) %add.ptr649.7, align 8, !dbg !292
  fence syncscope("warp") release, !dbg !293
  tail call void @llvm.mxc.barrier.warp(), !dbg !296
  fence syncscope("warp") acquire, !dbg !297
  %mul660 = and i32 %.pre-phi1893, 8064
  %and663 = and i32 %.pre-phi, 15
  %invariant.gep933 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul660, !dbg !298
  %xor669 = xor i32 %shr667.pre-phi, %and663, !dbg !299
  %add.ptr673.idx = shl nuw nsw i32 %xor669, 4, !dbg !300
  %add.ptr673 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep933, i32 %add.ptr673.idx, !dbg !300
  %add.ptr685 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi1900, !dbg !301
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr685, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr673, i64 16, i1 false), !dbg !302, !tbaa.struct !67, !call_argsrelate !303
  %xor669.1 = xor i32 %add668.1.pre-phi, %and663, !dbg !299
  %gep934.1 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep933, i32 1024, !dbg !300
  %add.ptr673.idx.1 = shl nuw nsw i32 %xor669.1, 4, !dbg !300
  %add.ptr673.1 = getelementptr inbounds i8, ptr addrspace(3) %gep934.1, i32 %add.ptr673.idx.1, !dbg !300
  %add.ptr685.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi1903, !dbg !301
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr685.1, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr673.1, i64 16, i1 false), !dbg !302, !tbaa.struct !67, !call_argsrelate !303
  %gep934.2 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep933, i32 2048, !dbg !300
  %add.ptr673.2 = getelementptr inbounds i8, ptr addrspace(3) %gep934.2, i32 %add.ptr673.idx, !dbg !300
  %add.ptr685.2 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi1905, !dbg !301
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr685.2, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr673.2, i64 16, i1 false), !dbg !302, !tbaa.struct !67, !call_argsrelate !303
  %gep934.3 = getelementptr inbounds i8, ptr addrspace(3) %invariant.gep933, i32 3072, !dbg !300
  %add.ptr673.3 = getelementptr inbounds i8, ptr addrspace(3) %gep934.3, i32 %add.ptr673.idx.1, !dbg !300
  %add.ptr685.3 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi1907, !dbg !301
  tail call void @llvm.memcpy.p1.p3.i64(ptr addrspace(1) noundef align 16 dereferenceable(16) %add.ptr685.3, ptr addrspace(3) noundef align 16 dereferenceable(16) %add.ptr673.3, i64 16, i1 false), !dbg !302, !tbaa.struct !67, !call_argsrelate !303
  ret void, !dbg !304
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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v055_codex_power_s1_four_row_planes_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v055_codex_power_s1_four_row_planes_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
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
!56 = !DILocation(line: 190, column: 104, scope: !40)
!57 = !DILocation(line: 190, column: 75, scope: !40)
!58 = !DILocation(line: 194, column: 3, scope: !40)
!59 = !DILocation(line: 195, column: 261, scope: !40)
!60 = !DILocation(line: 195, column: 105, scope: !40)
!61 = !DILocation(line: 179, column: 3, scope: !40)
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
!238 = !DILocation(line: 143, column: 204, scope: !40)
!239 = !DILocation(line: 141, column: 29, scope: !40)
!240 = !DILocation(line: 143, column: 87, scope: !40)
!241 = !DILocation(line: 68, column: 3, scope: !72, inlinedAt: !242)
!242 = distinct !DILocation(line: 192, column: 3, scope: !75, inlinedAt: !243)
!243 = distinct !DILocation(line: 147, column: 5, scope: !40)
!244 = !DILocation(line: 69, column: 3, scope: !72, inlinedAt: !242)
!245 = !DILocation(line: 70, column: 3, scope: !72, inlinedAt: !242)
!246 = !DILocation(line: 159, column: 168, scope: !40)
!247 = !DILocation(line: 159, column: 67, scope: !40)
!248 = !DILocation(line: 159, column: 48, scope: !40)
!249 = !DILocation(line: 164, column: 64, scope: !40)
!250 = !DILocation(line: 121, column: 38, scope: !40)
!251 = !DILocation(line: 180, column: 23, scope: !40)
!252 = !DILocation(line: 180, column: 38, scope: !40)
!253 = !DILocation(line: 68, column: 3, scope: !72, inlinedAt: !254)
!254 = distinct !DILocation(line: 192, column: 3, scope: !75, inlinedAt: !255)
!255 = distinct !DILocation(line: 182, column: 3, scope: !40)
!256 = !DILocation(line: 69, column: 3, scope: !72, inlinedAt: !254)
!257 = !DILocation(line: 70, column: 3, scope: !72, inlinedAt: !254)
!258 = !DILocation(line: 1007, column: 10, scope: !167, inlinedAt: !259)
!259 = distinct !DILocation(line: 1077, column: 18, scope: !170, inlinedAt: !260)
!260 = distinct !DILocation(line: 1295, column: 23, scope: !172, inlinedAt: !261)
!261 = distinct !DILocation(line: 187, column: 27, scope: !40)
!262 = !{!263, !265}
!263 = distinct !{!263, !264, !"_ZL17__floats2half2_rnff: %agg.result"}
!264 = distinct !{!264, !"_ZL17__floats2half2_rnff"}
!265 = distinct !{!265, !266, !"_ZL17__float22half2_rn6float2: %agg.result"}
!266 = distinct !{!266, !"_ZL17__float22half2_rn6float2"}
!267 = !DILocation(line: 1007, column: 10, scope: !167, inlinedAt: !268)
!268 = distinct !DILocation(line: 1077, column: 38, scope: !170, inlinedAt: !260)
!269 = !DILocation(line: 596, column: 67, scope: !270, inlinedAt: !271)
!270 = distinct !DISubprogram(name: "__half2", scope: !168, file: !168, line: 596, type: !7, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!271 = distinct !DILocation(line: 1077, column: 10, scope: !170, inlinedAt: !260)
!272 = !DILocation(line: 596, column: 73, scope: !270, inlinedAt: !271)
!273 = !DILocation(line: 1007, column: 10, scope: !167, inlinedAt: !274)
!274 = distinct !DILocation(line: 1077, column: 18, scope: !170, inlinedAt: !275)
!275 = distinct !DILocation(line: 1295, column: 23, scope: !172, inlinedAt: !276)
!276 = distinct !DILocation(line: 188, column: 27, scope: !40)
!277 = !{!278, !280}
!278 = distinct !{!278, !279, !"_ZL17__floats2half2_rnff: %agg.result"}
!279 = distinct !{!279, !"_ZL17__floats2half2_rnff"}
!280 = distinct !{!280, !281, !"_ZL17__float22half2_rn6float2: %agg.result"}
!281 = distinct !{!281, !"_ZL17__float22half2_rn6float2"}
!282 = !DILocation(line: 1007, column: 10, scope: !167, inlinedAt: !283)
!283 = distinct !DILocation(line: 1077, column: 38, scope: !170, inlinedAt: !275)
!284 = !DILocation(line: 596, column: 67, scope: !270, inlinedAt: !285)
!285 = distinct !DILocation(line: 1077, column: 10, scope: !170, inlinedAt: !275)
!286 = !DILocation(line: 596, column: 73, scope: !270, inlinedAt: !285)
!287 = !DILocation(line: 189, column: 38, scope: !40)
!288 = !DILocation(line: 190, column: 132, scope: !40)
!289 = !DILocation(line: 190, column: 60, scope: !40)
!290 = !DILocation(line: 190, column: 138, scope: !40)
!291 = !DILocation(line: 190, column: 22, scope: !40)
!292 = !DILocation(line: 190, column: 181, scope: !40)
!293 = !DILocation(line: 68, column: 3, scope: !72, inlinedAt: !294)
!294 = distinct !DILocation(line: 192, column: 3, scope: !75, inlinedAt: !295)
!295 = distinct !DILocation(line: 192, column: 3, scope: !40)
!296 = !DILocation(line: 69, column: 3, scope: !72, inlinedAt: !294)
!297 = !DILocation(line: 70, column: 3, scope: !72, inlinedAt: !294)
!298 = !DILocation(line: 194, column: 8, scope: !40)
!299 = !DILocation(line: 195, column: 239, scope: !40)
!300 = !DILocation(line: 195, column: 153, scope: !40)
!301 = !DILocation(line: 195, column: 22, scope: !40)
!302 = !DILocation(line: 195, column: 134, scope: !40)
!303 = !{i32 2, i32 -1, i32 -1, i32 -1}
!304 = !DILocation(line: 197, column: 1, scope: !40)
