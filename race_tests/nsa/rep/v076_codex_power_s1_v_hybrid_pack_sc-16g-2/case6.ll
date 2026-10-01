; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v076_codex_power_s1_v_hybrid_pack_sc-16g-2/case6.mcir'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v076_codex_power_s1_v_hybrid_pack_sc-16g-2/codegen/case6.device.cpp"
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
define protected metaxgpu_kernel void @native_sparse_attention_kernel(ptr addrspace(1) noalias nocapture noundef readonly %Indices.coerce, ptr addrspace(4) noalias nocapture noundef readonly %K.coerce, ptr addrspace(1) noalias nocapture noundef writeonly %Output.coerce, ptr addrspace(4) noalias nocapture noundef readonly %Q.coerce, ptr addrspace(4) noalias noundef readonly %V.coerce) local_unnamed_addr #3 !dbg !40 {
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
  br i1 %or.cond, label %for.body599.preheader, label %for.cond.preheader, !dbg !54

for.body599.preheader:                            ; preds = %entry
  %.pre = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  %.pre1973 = shl nuw nsw i32 %.pre, 6
  %.pre1974 = and i32 %.pre1973, 960
  %.pre1975 = lshr i32 %.pre, 5
  %.pre1976 = and i32 %.pre, 7
  %.pre1977 = lshr i32 %.pre, 4
  %.pre1978 = lshr i32 %.pre, 3
  %.pre1979 = xor i32 %.pre1977, %.pre1978
  %.pre1980 = and i32 %.pre1979, 1
  %.pre1981 = xor i32 %.pre1975, %.pre1976, !dbg !56
  %.pre1982 = shl nuw nsw i32 %.pre1980, 3, !dbg !57
  %.pre1983 = shl nuw nsw i32 %.pre1981, 4, !dbg !57
  %.pre1984 = add nuw nsw i32 %.pre1975, 2, !dbg !58
  %.pre1985 = xor i32 %.pre1984, %.pre1976, !dbg !56
  %.pre1986 = shl nuw nsw i32 %.pre1985, 4, !dbg !57
  %.pre1987 = add nuw nsw i32 %.pre1975, 4, !dbg !58
  %.pre1988 = xor i32 %.pre1987, %.pre1976, !dbg !56
  %.pre1989 = shl nuw nsw i32 %.pre1988, 4, !dbg !57
  %.pre1990 = add nuw nsw i32 %.pre1975, 6, !dbg !58
  %.pre1991 = xor i32 %.pre1990, %.pre1976, !dbg !56
  %.pre1992 = shl nuw nsw i32 %.pre1991, 4, !dbg !57
  %.pre1993 = or disjoint i32 %.pre1974, 1024, !dbg !59
  %.pre1994 = shl nuw nsw i32 %.pre1980, 3, !dbg !57
  %.pre1995 = xor i32 %.pre1994, 8, !dbg !57
  %.pre1996 = shl nuw nsw i32 %.pre, 7
  %.pre1998 = and i32 %.pre1996, 1024
  %.pre1999 = shl nuw nsw i32 %.pre, 2
  %.pre2001 = and i32 %.pre1999, 4032
  %.pre2002 = and i32 %.pre1978, 1
  %.pre2003 = shl nsw i32 %0, 21
  %.pre2004 = shl nsw i32 %1, 11
  %.pre2005 = add nuw nsw i32 %.pre2003, %.pre2004
  %.pre2006 = shl nuw nsw i32 %.pre, 3
  %.pre2007 = add nuw nsw i32 %.pre2005, %.pre2006
  %.pre2008 = zext nneg i32 %.pre2007 to i64, !dbg !60
  %.pre2010 = xor i32 %.pre1977, %.pre1976
  %.pre2011 = shl nuw nsw i32 %.pre2010, 4, !dbg !61
  %.pre2012 = shl nuw nsw i32 %.pre2002, 3, !dbg !61
  %.pre2013 = shl nuw nsw i32 %.pre2002, 3, !dbg !61
  %.pre2014 = xor i32 %.pre2013, 8, !dbg !61
  %.pre2015 = add nuw nsw i32 %.pre1977, 4
  %.pre2016 = xor i32 %.pre2015, %.pre1976
  %.pre2017 = shl nuw nsw i32 %.pre2016, 4, !dbg !61
  %.pre2018 = add nuw nsw i64 %.pre2008, 512, !dbg !62
  %.pre2020 = add nuw nsw i64 %.pre2008, 1024, !dbg !62
  %.pre2022 = add nuw nsw i64 %.pre2008, 1536, !dbg !62
  br label %if.end609, !dbg !63

for.cond.preheader:                               ; preds = %entry
  %mul13 = shl nsw i32 %0, 21
  %mul15 = shl nsw i32 %1, 11
  %add16 = add nuw nsw i32 %mul13, %mul15
  %3 = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  %mul20 = shl nuw nsw i32 %3, 3
  %add18 = add nuw nsw i32 %add16, %mul20
  %4 = shl nuw nsw i32 %3, 7
  %mul32 = and i32 %4, 1024
  %5 = shl nuw nsw i32 %3, 2
  %mul37 = and i32 %5, 4032
  %and40 = and i32 %3, 7
  %shr44 = lshr i32 %3, 4
  %and51 = lshr i32 %3, 3
  %shr52 = and i32 %and51, 1
  %6 = zext nneg i32 %add18 to i64, !dbg !64
  %add.ptr = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %6, !dbg !65
  %qk_fetch.sroa.0.0.copyload = load i64, ptr addrspace(4) %add.ptr, align 16, !dbg !66
  %qk_fetch.sroa.26.0.add.ptr.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr, i64 8, !dbg !66
  %qk_fetch.sroa.26.0.copyload = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.sroa_idx, align 8, !dbg !66
  %xor = xor i32 %shr44, %and40
  %7 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul37, !dbg !67
  %8 = getelementptr inbounds %struct.__half, ptr addrspace(3) %7, i32 %mul32, !dbg !67
  %.idx949 = shl nuw nsw i32 %xor, 4, !dbg !67
  %9 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 %.idx949, !dbg !67
  %add.ptr57.idx = shl nuw nsw i32 %shr52, 3, !dbg !67
  %add.ptr57 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 %add.ptr57.idx, !dbg !67
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr57, align 8, !dbg !68
  %xor53.1 = shl nuw nsw i32 %shr52, 3, !dbg !67
  %add.ptr57.idx.1 = xor i32 %xor53.1, 8, !dbg !67
  %add.ptr57.1 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 %add.ptr57.idx.1, !dbg !67
  store i64 %qk_fetch.sroa.26.0.copyload, ptr addrspace(3) %add.ptr57.1, align 8, !dbg !68
  %10 = add nuw nsw i64 %6, 512, !dbg !69
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %10, !dbg !65
  %qk_fetch.sroa.0.0.copyload1941 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !66
  %qk_fetch.sroa.26.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !66
  %qk_fetch.sroa.26.0.copyload1952 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.1.sroa_idx, align 8, !dbg !66
  %add45.1 = add nuw nsw i32 %shr44, 4
  %xor.1 = xor i32 %add45.1, %and40
  %11 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 512, !dbg !67
  %.idx949.1968 = shl nuw nsw i32 %xor.1, 4, !dbg !67
  %12 = getelementptr inbounds i8, ptr addrspace(3) %11, i32 %.idx949.1968, !dbg !67
  %add.ptr57.1970 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 %add.ptr57.idx, !dbg !67
  store i64 %qk_fetch.sroa.0.0.copyload1941, ptr addrspace(3) %add.ptr57.1970, align 8, !dbg !68
  %add.ptr57.1.1 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 %add.ptr57.idx.1, !dbg !67
  store i64 %qk_fetch.sroa.26.0.copyload1952, ptr addrspace(3) %add.ptr57.1.1, align 8, !dbg !68
  %13 = add nuw nsw i64 %6, 1024, !dbg !69
  %add.ptr.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %13, !dbg !65
  %qk_fetch.sroa.0.0.copyload1942 = load i64, ptr addrspace(4) %add.ptr.2, align 16, !dbg !66
  %qk_fetch.sroa.26.0.add.ptr.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.2, i64 8, !dbg !66
  %qk_fetch.sroa.26.0.copyload1953 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.2.sroa_idx, align 8, !dbg !66
  %14 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 1024, !dbg !67
  %15 = getelementptr inbounds i8, ptr addrspace(3) %14, i32 %.idx949, !dbg !67
  %add.ptr57.2 = getelementptr inbounds i8, ptr addrspace(3) %15, i32 %add.ptr57.idx.1, !dbg !67
  store i64 %qk_fetch.sroa.0.0.copyload1942, ptr addrspace(3) %add.ptr57.2, align 8, !dbg !68
  %add.ptr57.1.2 = getelementptr inbounds i8, ptr addrspace(3) %15, i32 %add.ptr57.idx, !dbg !67
  store i64 %qk_fetch.sroa.26.0.copyload1953, ptr addrspace(3) %add.ptr57.1.2, align 8, !dbg !68
  %16 = add nuw nsw i64 %6, 1536, !dbg !69
  %add.ptr.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %16, !dbg !65
  %qk_fetch.sroa.0.0.copyload1943 = load i64, ptr addrspace(4) %add.ptr.3, align 16, !dbg !66
  %qk_fetch.sroa.26.0.add.ptr.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.3, i64 8, !dbg !66
  %qk_fetch.sroa.26.0.copyload1954 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.3.sroa_idx, align 8, !dbg !66
  %17 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 1536, !dbg !67
  %18 = getelementptr inbounds i8, ptr addrspace(3) %17, i32 %.idx949.1968, !dbg !67
  %add.ptr57.3 = getelementptr inbounds i8, ptr addrspace(3) %18, i32 %add.ptr57.idx.1, !dbg !67
  store i64 %qk_fetch.sroa.0.0.copyload1943, ptr addrspace(3) %add.ptr57.3, align 8, !dbg !68
  %add.ptr57.1.3 = getelementptr inbounds i8, ptr addrspace(3) %18, i32 %add.ptr57.idx, !dbg !67
  store i64 %qk_fetch.sroa.26.0.copyload1954, ptr addrspace(3) %add.ptr57.1.3, align 8, !dbg !68
  fence syncscope("warp") release, !dbg !70
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %and68 = shl nuw nsw i32 %3, 6
  %mul69 = and i32 %and68, 960
  %shr74 = lshr i32 %3, 5
  %shr83874 = xor i32 %shr44, %and51
  %xor87 = and i32 %shr83874, 1
  %xor78 = xor i32 %shr74, %and40, !dbg !78
  %19 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul69, !dbg !79
  %.idx950 = shl nuw nsw i32 %xor87, 3, !dbg !79
  %20 = getelementptr inbounds i8, ptr addrspace(3) %19, i32 %.idx950, !dbg !79
  %add.ptr93.idx = shl nuw nsw i32 %xor78, 4, !dbg !79
  %add.ptr93 = getelementptr inbounds i8, ptr addrspace(3) %20, i32 %add.ptr93.idx, !dbg !79
  %21 = load <4 x half>, ptr addrspace(3) %add.ptr93, align 8, !dbg !80
  %add75.1 = add nuw nsw i32 %shr74, 2, !dbg !81
  %xor78.1 = xor i32 %add75.1, %and40, !dbg !78
  %add.ptr93.idx.1 = shl nuw nsw i32 %xor78.1, 4, !dbg !79
  %add.ptr93.1 = getelementptr inbounds i8, ptr addrspace(3) %20, i32 %add.ptr93.idx.1, !dbg !79
  %22 = load <4 x half>, ptr addrspace(3) %add.ptr93.1, align 8, !dbg !80
  %add75.2 = add nuw nsw i32 %shr74, 4, !dbg !81
  %xor78.2 = xor i32 %add75.2, %and40, !dbg !78
  %add.ptr93.idx.2 = shl nuw nsw i32 %xor78.2, 4, !dbg !79
  %add.ptr93.2 = getelementptr inbounds i8, ptr addrspace(3) %20, i32 %add.ptr93.idx.2, !dbg !79
  %23 = load <4 x half>, ptr addrspace(3) %add.ptr93.2, align 8, !dbg !80
  %add75.3 = add nuw nsw i32 %shr74, 6, !dbg !81
  %xor78.3 = xor i32 %add75.3, %and40, !dbg !78
  %add.ptr93.idx.3 = shl nuw nsw i32 %xor78.3, 4, !dbg !79
  %add.ptr93.3 = getelementptr inbounds i8, ptr addrspace(3) %20, i32 %add.ptr93.idx.3, !dbg !79
  %24 = load <4 x half>, ptr addrspace(3) %add.ptr93.3, align 8, !dbg !80
  %add70.4 = or disjoint i32 %mul69, 1024, !dbg !82
  %25 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add70.4, !dbg !79
  %xor89.4 = shl nuw nsw i32 %xor87, 3, !dbg !79
  %.idx950.4 = xor i32 %xor89.4, 8, !dbg !79
  %26 = getelementptr inbounds i8, ptr addrspace(3) %25, i32 %.idx950.4, !dbg !79
  %add.ptr93.4 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 %add.ptr93.idx, !dbg !79
  %27 = load <4 x half>, ptr addrspace(3) %add.ptr93.4, align 8, !dbg !80
  %add.ptr93.5 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 %add.ptr93.idx.1, !dbg !79
  %28 = load <4 x half>, ptr addrspace(3) %add.ptr93.5, align 8, !dbg !80
  %add.ptr93.6 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 %add.ptr93.idx.2, !dbg !79
  %29 = load <4 x half>, ptr addrspace(3) %add.ptr93.6, align 8, !dbg !80
  %add.ptr93.7 = getelementptr inbounds i8, ptr addrspace(3) %26, i32 %add.ptr93.idx.3, !dbg !79
  %30 = load <4 x half>, ptr addrspace(3) %add.ptr93.7, align 8, !dbg !80
  fence syncscope("warp") release, !dbg !83
  tail call void @llvm.mxc.barrier.warp(), !dbg !86
  fence syncscope("warp") acquire, !dbg !87
  %conv = zext nneg i32 %0 to i64
  %conv110 = zext nneg i32 %mul7 to i64
  %mul115 = zext nneg i32 %mul20 to i64
  %.idx = shl nuw nsw i64 %conv110, 8
  %invariant.gep = getelementptr inbounds i8, ptr addrspace(4) %K.coerce, i64 %.idx, !dbg !88
  %invariant.gep918 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep, i64 %mul115, !dbg !88
  %31 = and i32 %3, 8
  %.idx951 = shl nuw nsw i64 %conv, 18, !dbg !89
  %32 = getelementptr inbounds i8, ptr addrspace(4) %invariant.gep918, i64 %.idx951, !dbg !89
  %qk_fetch.sroa.0.0.copyload1940 = load i64, ptr addrspace(4) %32, align 16, !dbg !90
  %qk_fetch.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 8, !dbg !90
  %qk_fetch.sroa.26.0.copyload1951 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0..sroa_idx, align 8, !dbg !90
  %33 = shl nuw nsw i32 %31, 9, !dbg !91
  %34 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %33, !dbg !91
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(3) %34, i32 %mul37, !dbg !91
  %36 = getelementptr inbounds i8, ptr addrspace(3) %35, i32 %.idx949, !dbg !91
  %add.ptr158 = getelementptr inbounds i8, ptr addrspace(3) %36, i32 %add.ptr57.idx, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload1940, ptr addrspace(3) %add.ptr158, align 8, !dbg !92
  %add.ptr158.1 = getelementptr inbounds i8, ptr addrspace(3) %36, i32 %add.ptr57.idx.1, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload1951, ptr addrspace(3) %add.ptr158.1, align 8, !dbg !92
  %gep919.1 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 1024, !dbg !89
  %qk_fetch.sroa.0.0.copyload1944 = load i64, ptr addrspace(4) %gep919.1, align 16, !dbg !90
  %qk_fetch.sroa.26.0.gep919.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 1032, !dbg !90
  %qk_fetch.sroa.26.0.copyload1955 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep919.1.sroa_idx, align 8, !dbg !90
  %37 = shl nuw nsw i32 %31, 9, !dbg !91
  %38 = or disjoint i32 %37, 512, !dbg !91
  %39 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %38, !dbg !91
  %40 = getelementptr inbounds %struct.__half, ptr addrspace(3) %39, i32 %mul37, !dbg !91
  %41 = getelementptr inbounds i8, ptr addrspace(3) %40, i32 %.idx949.1968, !dbg !91
  %add.ptr158.1977 = getelementptr inbounds i8, ptr addrspace(3) %41, i32 %add.ptr57.idx, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload1944, ptr addrspace(3) %add.ptr158.1977, align 8, !dbg !92
  %add.ptr158.1.1 = getelementptr inbounds i8, ptr addrspace(3) %41, i32 %add.ptr57.idx.1, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload1955, ptr addrspace(3) %add.ptr158.1.1, align 8, !dbg !92
  %gep919.2 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 2048, !dbg !89
  %qk_fetch.sroa.0.0.copyload1945 = load i64, ptr addrspace(4) %gep919.2, align 16, !dbg !90
  %qk_fetch.sroa.26.0.gep919.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 2056, !dbg !90
  %qk_fetch.sroa.26.0.copyload1956 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep919.2.sroa_idx, align 8, !dbg !90
  %shr149873.2 = and i32 %and51, 1
  %42 = shl nuw nsw i32 %31, 9, !dbg !91
  %43 = or disjoint i32 %42, 1024, !dbg !91
  %44 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %43, !dbg !91
  %45 = getelementptr inbounds %struct.__half, ptr addrspace(3) %44, i32 %mul37, !dbg !91
  %46 = getelementptr inbounds i8, ptr addrspace(3) %45, i32 %.idx949, !dbg !91
  %47 = shl nuw nsw i32 %shr149873.2, 3, !dbg !91
  %add.ptr158.idx.2 = xor i32 %47, 8, !dbg !91
  %add.ptr158.2 = getelementptr inbounds i8, ptr addrspace(3) %46, i32 %add.ptr158.idx.2, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload1945, ptr addrspace(3) %add.ptr158.2, align 8, !dbg !92
  %add.ptr158.idx.1.2 = shl nuw nsw i32 %shr149873.2, 3, !dbg !91
  %add.ptr158.1.2 = getelementptr inbounds i8, ptr addrspace(3) %46, i32 %add.ptr158.idx.1.2, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload1956, ptr addrspace(3) %add.ptr158.1.2, align 8, !dbg !92
  %gep919.3 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 3072, !dbg !89
  %qk_fetch.sroa.0.0.copyload1946 = load i64, ptr addrspace(4) %gep919.3, align 16, !dbg !90
  %qk_fetch.sroa.26.0.gep919.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 3080, !dbg !90
  %qk_fetch.sroa.26.0.copyload1957 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep919.3.sroa_idx, align 8, !dbg !90
  %48 = shl nuw nsw i32 %31, 9, !dbg !91
  %49 = or disjoint i32 %48, 1536, !dbg !91
  %50 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %49, !dbg !91
  %51 = getelementptr inbounds %struct.__half, ptr addrspace(3) %50, i32 %mul37, !dbg !91
  %52 = getelementptr inbounds i8, ptr addrspace(3) %51, i32 %.idx949.1968, !dbg !91
  %add.ptr158.3 = getelementptr inbounds i8, ptr addrspace(3) %52, i32 %add.ptr158.idx.2, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload1946, ptr addrspace(3) %add.ptr158.3, align 8, !dbg !92
  %add.ptr158.1.3 = getelementptr inbounds i8, ptr addrspace(3) %52, i32 %add.ptr158.idx.1.2, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload1957, ptr addrspace(3) %add.ptr158.1.3, align 8, !dbg !92
  %gep919.4 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 4096, !dbg !89
  %qk_fetch.sroa.0.0.copyload1947 = load i64, ptr addrspace(4) %gep919.4, align 16, !dbg !90
  %qk_fetch.sroa.26.0.gep919.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 4104, !dbg !90
  %qk_fetch.sroa.26.0.copyload1958 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep919.4.sroa_idx, align 8, !dbg !90
  %53 = and i32 %and51, 1
  %54 = shl nuw nsw i32 %31, 9, !dbg !91
  %55 = or disjoint i32 %54, 2048, !dbg !91
  %56 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %55, !dbg !91
  %57 = getelementptr inbounds %struct.__half, ptr addrspace(3) %56, i32 %mul37, !dbg !91
  %58 = getelementptr inbounds i8, ptr addrspace(3) %57, i32 %.idx949, !dbg !91
  %add.ptr158.idx.4 = shl nuw nsw i32 %53, 3, !dbg !91
  %add.ptr158.4 = getelementptr inbounds i8, ptr addrspace(3) %58, i32 %add.ptr158.idx.4, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload1947, ptr addrspace(3) %add.ptr158.4, align 8, !dbg !92
  %xor154.1.4 = shl nuw nsw i32 %53, 3, !dbg !91
  %add.ptr158.idx.1.4 = xor i32 %xor154.1.4, 8, !dbg !91
  %add.ptr158.1.4 = getelementptr inbounds i8, ptr addrspace(3) %58, i32 %add.ptr158.idx.1.4, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload1958, ptr addrspace(3) %add.ptr158.1.4, align 8, !dbg !92
  %gep919.5 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 5120, !dbg !89
  %qk_fetch.sroa.0.0.copyload1948 = load i64, ptr addrspace(4) %gep919.5, align 16, !dbg !90
  %qk_fetch.sroa.26.0.gep919.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 5128, !dbg !90
  %qk_fetch.sroa.26.0.copyload1959 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep919.5.sroa_idx, align 8, !dbg !90
  %59 = shl nuw nsw i32 %31, 9, !dbg !91
  %60 = or disjoint i32 %59, 2560, !dbg !91
  %61 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %60, !dbg !91
  %62 = getelementptr inbounds %struct.__half, ptr addrspace(3) %61, i32 %mul37, !dbg !91
  %63 = getelementptr inbounds i8, ptr addrspace(3) %62, i32 %.idx949.1968, !dbg !91
  %add.ptr158.5 = getelementptr inbounds i8, ptr addrspace(3) %63, i32 %add.ptr158.idx.4, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload1948, ptr addrspace(3) %add.ptr158.5, align 8, !dbg !92
  %add.ptr158.1.5 = getelementptr inbounds i8, ptr addrspace(3) %63, i32 %add.ptr158.idx.1.4, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload1959, ptr addrspace(3) %add.ptr158.1.5, align 8, !dbg !92
  %gep919.6 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 6144, !dbg !89
  %qk_fetch.sroa.0.0.copyload1949 = load i64, ptr addrspace(4) %gep919.6, align 16, !dbg !90
  %qk_fetch.sroa.26.0.gep919.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 6152, !dbg !90
  %qk_fetch.sroa.26.0.copyload1960 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep919.6.sroa_idx, align 8, !dbg !90
  %shr149873.6 = and i32 %and51, 1
  %64 = shl nuw nsw i32 %31, 9, !dbg !91
  %65 = or disjoint i32 %64, 3072, !dbg !91
  %66 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %65, !dbg !91
  %67 = getelementptr inbounds %struct.__half, ptr addrspace(3) %66, i32 %mul37, !dbg !91
  %68 = getelementptr inbounds i8, ptr addrspace(3) %67, i32 %.idx949, !dbg !91
  %69 = shl nuw nsw i32 %shr149873.6, 3, !dbg !91
  %add.ptr158.idx.6 = xor i32 %69, 8, !dbg !91
  %add.ptr158.6 = getelementptr inbounds i8, ptr addrspace(3) %68, i32 %add.ptr158.idx.6, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload1949, ptr addrspace(3) %add.ptr158.6, align 8, !dbg !92
  %add.ptr158.idx.1.6 = shl nuw nsw i32 %shr149873.6, 3, !dbg !91
  %add.ptr158.1.6 = getelementptr inbounds i8, ptr addrspace(3) %68, i32 %add.ptr158.idx.1.6, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload1960, ptr addrspace(3) %add.ptr158.1.6, align 8, !dbg !92
  %gep919.7 = getelementptr inbounds i8, ptr addrspace(4) %32, i64 7168, !dbg !89
  %qk_fetch.sroa.0.0.copyload1950 = load i64, ptr addrspace(4) %gep919.7, align 16, !dbg !90
  %qk_fetch.sroa.26.0.gep919.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %32, i64 7176, !dbg !90
  %qk_fetch.sroa.26.0.copyload1961 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.gep919.7.sroa_idx, align 8, !dbg !90
  %70 = shl nuw nsw i32 %31, 9, !dbg !91
  %71 = or disjoint i32 %70, 3584, !dbg !91
  %72 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %71, !dbg !91
  %73 = getelementptr inbounds %struct.__half, ptr addrspace(3) %72, i32 %mul37, !dbg !91
  %74 = getelementptr inbounds i8, ptr addrspace(3) %73, i32 %.idx949.1968, !dbg !91
  %add.ptr158.7 = getelementptr inbounds i8, ptr addrspace(3) %74, i32 %add.ptr158.idx.6, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload1950, ptr addrspace(3) %add.ptr158.7, align 8, !dbg !92
  %add.ptr158.1.7 = getelementptr inbounds i8, ptr addrspace(3) %74, i32 %add.ptr158.idx.1.6, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload1961, ptr addrspace(3) %add.ptr158.1.7, align 8, !dbg !92
  fence syncscope("warp") release, !dbg !93
  tail call void @llvm.mxc.barrier.warp(), !dbg !96
  fence syncscope("warp") acquire, !dbg !97
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr93, align 8, !dbg !98
  %75 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %21, <4 x float> zeroinitializer), !dbg !99
  %add.ptr215.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr215.1, align 8, !dbg !98
  %76 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %21, <4 x float> zeroinitializer), !dbg !99
  %k_local.sroa.0.0.copyload.1980 = load <4 x half>, ptr addrspace(3) %add.ptr93.1, align 8, !dbg !98
  %77 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1980, <4 x half> %22, <4 x float> %75), !dbg !99
  %add.ptr215.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93.1, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.1, align 8, !dbg !98
  %78 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %22, <4 x float> %76), !dbg !99
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr93.2, align 8, !dbg !98
  %79 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %23, <4 x float> %77), !dbg !99
  %add.ptr215.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93.2, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.2, align 8, !dbg !98
  %80 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %23, <4 x float> %78), !dbg !99
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr93.3, align 8, !dbg !98
  %81 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %24, <4 x float> %79), !dbg !99
  %add.ptr215.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93.3, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.3, align 8, !dbg !98
  %82 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %24, <4 x float> %80), !dbg !99
  %add192.4 = or disjoint i32 %mul69, 2048
  %83 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add192.4, !dbg !100
  %84 = getelementptr inbounds i8, ptr addrspace(3) %83, i32 %.idx950.4, !dbg !100
  %85 = getelementptr inbounds i8, ptr addrspace(3) %84, i32 %add.ptr93.idx, !dbg !100
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %85, align 8, !dbg !98
  %86 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %27, <4 x float> %81), !dbg !99
  %add.ptr215.1.4 = getelementptr inbounds i8, ptr addrspace(3) %85, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.4, align 8, !dbg !98
  %87 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %27, <4 x float> %82), !dbg !99
  %88 = getelementptr inbounds i8, ptr addrspace(3) %84, i32 %add.ptr93.idx.1, !dbg !100
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %88, align 8, !dbg !98
  %89 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %28, <4 x float> %86), !dbg !99
  %add.ptr215.1.5 = getelementptr inbounds i8, ptr addrspace(3) %88, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.5, align 8, !dbg !98
  %90 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %28, <4 x float> %87), !dbg !99
  %91 = getelementptr inbounds i8, ptr addrspace(3) %84, i32 %add.ptr93.idx.2, !dbg !100
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %91, align 8, !dbg !98
  %92 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %29, <4 x float> %89), !dbg !99
  %add.ptr215.1.6 = getelementptr inbounds i8, ptr addrspace(3) %91, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.6, align 8, !dbg !98
  %93 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %29, <4 x float> %90), !dbg !99
  %94 = getelementptr inbounds i8, ptr addrspace(3) %84, i32 %add.ptr93.idx.3, !dbg !100
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %94, align 8, !dbg !98
  %95 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %30, <4 x float> %92), !dbg !99
  %add.ptr215.1.7 = getelementptr inbounds i8, ptr addrspace(3) %94, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr215.1.7, align 8, !dbg !98
  %96 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %30, <4 x float> %93), !dbg !99
  %97 = lshr i32 %3, 2
  %mul246 = and i32 %97, 252
  %add247 = add nuw nsw i32 %mul7, %mul246
  %cmp251.not = icmp sgt i32 %add247, %1, !dbg !101
  %scores.sroa.0.0.vec.extract = extractelement <4 x float> %95, i64 0
  %spec.select = select i1 %cmp251.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract, !dbg !102
  %cmp251.not.1.not = icmp slt i32 %add247, %1, !dbg !101
  %scores.sroa.0.4.vec.extract = extractelement <4 x float> %95, i64 1, !dbg !102
  %condval.0.1 = select i1 %cmp251.not.1.not, float %scores.sroa.0.4.vec.extract, float 0xFFF0000000000000, !dbg !102
  %add249.2 = or disjoint i32 %add247, 2, !dbg !103
  %cmp251.not.2 = icmp sgt i32 %add249.2, %1, !dbg !101
  %scores.sroa.0.8.vec.extract = extractelement <4 x float> %95, i64 2, !dbg !102
  %condval.0.2 = select i1 %cmp251.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract, !dbg !102
  %add249.3 = or disjoint i32 %add247, 3, !dbg !103
  %cmp251.not.3 = icmp sgt i32 %add249.3, %1, !dbg !101
  %scores.sroa.0.12.vec.extract = extractelement <4 x float> %95, i64 3, !dbg !102
  %condval.0.3 = select i1 %cmp251.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract, !dbg !102
  %add248.1 = add nuw nsw i32 %add247, 16
  %cmp251.not.1981 = icmp sgt i32 %add248.1, %1, !dbg !101
  %scores.sroa.38.16.vec.extract = extractelement <4 x float> %96, i64 0, !dbg !102
  %condval.0.1984 = select i1 %cmp251.not.1981, float 0xFFF0000000000000, float %scores.sroa.38.16.vec.extract, !dbg !102
  %add249.1.1 = add nuw nsw i32 %add247, 17, !dbg !103
  %cmp251.not.1.1 = icmp sgt i32 %add249.1.1, %1, !dbg !101
  %scores.sroa.38.20.vec.extract = extractelement <4 x float> %96, i64 1, !dbg !102
  %condval.0.1.1 = select i1 %cmp251.not.1.1, float 0xFFF0000000000000, float %scores.sroa.38.20.vec.extract, !dbg !102
  %add249.2.1 = add nuw nsw i32 %add247, 18, !dbg !103
  %cmp251.not.2.1 = icmp sgt i32 %add249.2.1, %1, !dbg !101
  %scores.sroa.38.24.vec.extract = extractelement <4 x float> %96, i64 2, !dbg !102
  %condval.0.2.1 = select i1 %cmp251.not.2.1, float 0xFFF0000000000000, float %scores.sroa.38.24.vec.extract, !dbg !102
  %add249.3.1 = add nuw nsw i32 %add247, 19, !dbg !103
  %cmp251.not.3.1 = icmp sgt i32 %add249.3.1, %1, !dbg !101
  %scores.sroa.38.28.vec.extract = extractelement <4 x float> %96, i64 3, !dbg !102
  %condval.0.3.1 = select i1 %cmp251.not.3.1, float 0xFFF0000000000000, float %scores.sroa.38.28.vec.extract, !dbg !102
  %98 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !104
  %99 = tail call contract noundef float @llvm.maxnum.f32(float %98, float %condval.0.1), !dbg !104
  %100 = tail call contract noundef float @llvm.maxnum.f32(float %99, float %condval.0.2), !dbg !104
  %101 = tail call contract noundef float @llvm.maxnum.f32(float %100, float %condval.0.3), !dbg !104
  %102 = tail call contract noundef float @llvm.maxnum.f32(float %101, float %condval.0.1984), !dbg !104
  %103 = tail call contract noundef float @llvm.maxnum.f32(float %102, float %condval.0.1.1), !dbg !104
  %104 = tail call contract noundef float @llvm.maxnum.f32(float %103, float %condval.0.2.1), !dbg !104
  %105 = tail call contract noundef float @llvm.maxnum.f32(float %104, float %condval.0.3.1), !dbg !104
  %106 = bitcast float %105 to i32, !dbg !108
  %107 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !111
  %108 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %107) #10, !dbg !116
  %xor.i.i = xor i32 %108, 32, !dbg !117
  %109 = and i32 %108, -64, !dbg !118
  %and.i.i = add nsw i32 %109, 64, !dbg !118
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !119
  %cond.i.i = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %108, !dbg !120
  %shl.i.i = shl i32 %cond.i.i, 2, !dbg !121
  %110 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %106), !dbg !122
  %111 = bitcast i32 %110 to float, !dbg !123
  %112 = tail call contract noundef float @llvm.maxnum.f32(float %105, float %111), !dbg !124
  %113 = bitcast float %112 to i32, !dbg !126
  %114 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !128
  %115 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %114) #10, !dbg !131
  %xor.i.i875 = xor i32 %115, 16, !dbg !132
  %116 = and i32 %115, -64, !dbg !133
  %and.i.i876 = add nsw i32 %116, 64, !dbg !133
  %cmp.not.i.i877 = icmp slt i32 %xor.i.i875, %and.i.i876, !dbg !134
  %cond.i.i878 = select i1 %cmp.not.i.i877, i32 %xor.i.i875, i32 %115, !dbg !135
  %shl.i.i879 = shl i32 %cond.i.i878, 2, !dbg !136
  %117 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i879, i32 %113), !dbg !137
  %118 = bitcast i32 %117 to float, !dbg !138
  %119 = tail call contract noundef float @llvm.maxnum.f32(float %112, float %118), !dbg !139
  %sub = fsub contract float %spec.select, %119, !dbg !141
  %sub309 = fsub contract float %condval.0.1, %119, !dbg !142
  %sub312 = fsub contract float %condval.0.2, %119, !dbg !143
  %sub315 = fsub contract float %condval.0.3, %119, !dbg !144
  %mul320 = fmul contract float %sub, 0x3FC0527DC0000000, !dbg !145
  %mul324 = fmul contract float %sub309, 0x3FC0527DC0000000, !dbg !146
  %mul328 = fmul contract float %sub312, 0x3FC0527DC0000000, !dbg !147
  %mul332 = fmul contract float %sub315, 0x3FC0527DC0000000, !dbg !148
  %add337 = fadd contract float %mul320, 8.000000e+00, !dbg !149
  %add341 = fadd contract float %mul324, 8.000000e+00, !dbg !150
  %add345 = fadd contract float %mul328, 8.000000e+00, !dbg !151
  %add349 = fadd contract float %mul332, 8.000000e+00, !dbg !152
  %cmp.i.i = fcmp contract olt float %add337, -1.260000e+02, !dbg !153
  %cond.i.i880 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i = fadd contract float %add337, %cond.i.i880, !dbg !153
  %120 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !153
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i = fmul contract float %cond2.i.i, %120, !dbg !153
  %cmp.i.i881 = fcmp contract olt float %add341, -1.260000e+02, !dbg !156
  %cond.i.i882 = select contract i1 %cmp.i.i881, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i883 = fadd contract float %add341, %cond.i.i882, !dbg !156
  %121 = tail call contract float @llvm.exp2.f32(float %add.i.i883), !dbg !156
  %cond2.i.i884 = select contract i1 %cmp.i.i881, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i885 = fmul contract float %cond2.i.i884, %121, !dbg !156
  %cmp.i.i886 = fcmp contract olt float %add345, -1.260000e+02, !dbg !158
  %cond.i.i887 = select contract i1 %cmp.i.i886, float 6.400000e+01, float 0.000000e+00, !dbg !158
  %add.i.i888 = fadd contract float %add345, %cond.i.i887, !dbg !158
  %122 = tail call contract float @llvm.exp2.f32(float %add.i.i888), !dbg !158
  %cond2.i.i889 = select contract i1 %cmp.i.i886, float 0x3BF0000000000000, float 1.000000e+00, !dbg !158
  %mul.i.i890 = fmul contract float %cond2.i.i889, %122, !dbg !158
  %cmp.i.i891 = fcmp contract olt float %add349, -1.260000e+02, !dbg !160
  %cond.i.i892 = select contract i1 %cmp.i.i891, float 6.400000e+01, float 0.000000e+00, !dbg !160
  %add.i.i893 = fadd contract float %add349, %cond.i.i892, !dbg !160
  %123 = tail call contract float @llvm.exp2.f32(float %add.i.i893), !dbg !160
  %cond2.i.i894 = select contract i1 %cmp.i.i891, float 0x3BF0000000000000, float 1.000000e+00, !dbg !160
  %mul.i.i895 = fmul contract float %cond2.i.i894, %123, !dbg !160
  %124 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !162
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !162, !noalias !170
  %125 = fptrunc float %mul.i.i to half, !dbg !162
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %124), !dbg !162, !noalias !170
  %126 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !175, !noalias !170
  %127 = fptrunc float %mul.i.i885 to half, !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %126), !dbg !175, !noalias !170
  %128 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !177
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !177, !noalias !181
  %129 = fptrunc float %mul.i.i890 to half, !dbg !177
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %128), !dbg !177, !noalias !181
  %130 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !186
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !186, !noalias !181
  %131 = fptrunc float %mul.i.i895 to half, !dbg !186
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %130), !dbg !186, !noalias !181
  %132 = insertelement <4 x half> poison, half %125, i64 0, !dbg !188
  %133 = insertelement <4 x half> %132, half %127, i64 1, !dbg !188
  %134 = insertelement <4 x half> %133, half %129, i64 2, !dbg !188
  %135 = insertelement <4 x half> %134, half %131, i64 3, !dbg !188
  %sub.1 = fsub contract float %condval.0.1984, %119, !dbg !141
  %sub309.1 = fsub contract float %condval.0.1.1, %119, !dbg !142
  %sub312.1 = fsub contract float %condval.0.2.1, %119, !dbg !143
  %sub315.1 = fsub contract float %condval.0.3.1, %119, !dbg !144
  %mul320.1 = fmul contract float %sub.1, 0x3FC0527DC0000000, !dbg !145
  %mul324.1 = fmul contract float %sub309.1, 0x3FC0527DC0000000, !dbg !146
  %mul328.1 = fmul contract float %sub312.1, 0x3FC0527DC0000000, !dbg !147
  %mul332.1 = fmul contract float %sub315.1, 0x3FC0527DC0000000, !dbg !148
  %add337.1 = fadd contract float %mul320.1, 8.000000e+00, !dbg !149
  %add341.1 = fadd contract float %mul324.1, 8.000000e+00, !dbg !150
  %add345.1 = fadd contract float %mul328.1, 8.000000e+00, !dbg !151
  %add349.1 = fadd contract float %mul332.1, 8.000000e+00, !dbg !152
  %cmp.i.i.1 = fcmp contract olt float %add337.1, -1.260000e+02, !dbg !153
  %cond.i.i880.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i.1 = fadd contract float %add337.1, %cond.i.i880.1, !dbg !153
  %136 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !153
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %136, !dbg !153
  %cmp.i.i881.1 = fcmp contract olt float %add341.1, -1.260000e+02, !dbg !156
  %cond.i.i882.1 = select contract i1 %cmp.i.i881.1, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i883.1 = fadd contract float %add341.1, %cond.i.i882.1, !dbg !156
  %137 = tail call contract float @llvm.exp2.f32(float %add.i.i883.1), !dbg !156
  %cond2.i.i884.1 = select contract i1 %cmp.i.i881.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i885.1 = fmul contract float %cond2.i.i884.1, %137, !dbg !156
  %cmp.i.i886.1 = fcmp contract olt float %add345.1, -1.260000e+02, !dbg !158
  %cond.i.i887.1 = select contract i1 %cmp.i.i886.1, float 6.400000e+01, float 0.000000e+00, !dbg !158
  %add.i.i888.1 = fadd contract float %add345.1, %cond.i.i887.1, !dbg !158
  %138 = tail call contract float @llvm.exp2.f32(float %add.i.i888.1), !dbg !158
  %cond2.i.i889.1 = select contract i1 %cmp.i.i886.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !158
  %mul.i.i890.1 = fmul contract float %cond2.i.i889.1, %138, !dbg !158
  %cmp.i.i891.1 = fcmp contract olt float %add349.1, -1.260000e+02, !dbg !160
  %cond.i.i892.1 = select contract i1 %cmp.i.i891.1, float 6.400000e+01, float 0.000000e+00, !dbg !160
  %add.i.i893.1 = fadd contract float %add349.1, %cond.i.i892.1, !dbg !160
  %139 = tail call contract float @llvm.exp2.f32(float %add.i.i893.1), !dbg !160
  %cond2.i.i894.1 = select contract i1 %cmp.i.i891.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !160
  %mul.i.i895.1 = fmul contract float %cond2.i.i894.1, %139, !dbg !160
  %140 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !162
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !162, !noalias !170
  %141 = fptrunc float %mul.i.i.1 to half, !dbg !162
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %140), !dbg !162, !noalias !170
  %142 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !175, !noalias !170
  %143 = fptrunc float %mul.i.i885.1 to half, !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %142), !dbg !175, !noalias !170
  %144 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !177
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !177, !noalias !181
  %145 = fptrunc float %mul.i.i890.1 to half, !dbg !177
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %144), !dbg !177, !noalias !181
  %146 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !186
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !186, !noalias !181
  %147 = fptrunc float %mul.i.i895.1 to half, !dbg !186
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %146), !dbg !186, !noalias !181
  %148 = insertelement <4 x half> poison, half %141, i64 0, !dbg !188
  %149 = insertelement <4 x half> %148, half %143, i64 1, !dbg !188
  %150 = insertelement <4 x half> %149, half %145, i64 2, !dbg !188
  %151 = insertelement <4 x half> %150, half %147, i64 3, !dbg !188
  %conv.i.i = fpext half %125 to float, !dbg !189
  %add387 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !194
  %conv.i.i.1 = fpext half %127 to float, !dbg !189
  %add387.1 = fadd contract float %add387, %conv.i.i.1, !dbg !194
  %conv.i.i.2 = fpext half %129 to float, !dbg !189
  %add387.2 = fadd contract float %add387.1, %conv.i.i.2, !dbg !194
  %conv.i.i.3 = fpext half %131 to float, !dbg !189
  %add387.3 = fadd contract float %add387.2, %conv.i.i.3, !dbg !194
  %conv.i.i.4 = fpext half %141 to float, !dbg !189
  %add387.4 = fadd contract float %add387.3, %conv.i.i.4, !dbg !194
  %conv.i.i.5 = fpext half %143 to float, !dbg !189
  %add387.5 = fadd contract float %add387.4, %conv.i.i.5, !dbg !194
  %conv.i.i.6 = fpext half %145 to float, !dbg !189
  %add387.6 = fadd contract float %add387.5, %conv.i.i.6, !dbg !194
  %conv.i.i.7 = fpext half %147 to float, !dbg !189
  %add387.7 = fadd contract float %add387.6, %conv.i.i.7, !dbg !194
  %152 = bitcast float %add387.7 to i32, !dbg !195
  %153 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !197
  %154 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %153) #10, !dbg !200
  %xor.i.i897 = xor i32 %154, 32, !dbg !201
  %155 = and i32 %154, -64, !dbg !202
  %and.i.i898 = add nsw i32 %155, 64, !dbg !202
  %cmp.not.i.i899 = icmp slt i32 %xor.i.i897, %and.i.i898, !dbg !203
  %cond.i.i900 = select i1 %cmp.not.i.i899, i32 %xor.i.i897, i32 %154, !dbg !204
  %shl.i.i901 = shl i32 %cond.i.i900, 2, !dbg !205
  %156 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i901, i32 %152), !dbg !206
  %157 = bitcast i32 %156 to float, !dbg !207
  %add395 = fadd contract float %add387.7, %157, !dbg !208
  %158 = bitcast float %add395 to i32, !dbg !209
  %159 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !211
  %160 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %159) #10, !dbg !214
  %xor.i.i902 = xor i32 %160, 16, !dbg !215
  %161 = and i32 %160, -64, !dbg !216
  %and.i.i903 = add nsw i32 %161, 64, !dbg !216
  %cmp.not.i.i904 = icmp slt i32 %xor.i.i902, %and.i.i903, !dbg !217
  %cond.i.i905 = select i1 %cmp.not.i.i904, i32 %xor.i.i902, i32 %160, !dbg !218
  %shl.i.i906 = shl i32 %cond.i.i905, 2, !dbg !219
  %162 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i906, i32 %158), !dbg !220
  %163 = bitcast i32 %162 to float, !dbg !221
  fence syncscope("warp") release, !dbg !222
  tail call void @llvm.mxc.barrier.warp(), !dbg !225
  fence syncscope("warp") acquire, !dbg !226
  %mul416 = shl nuw nsw i64 %conv, 17
  %164 = shl nuw nsw i32 %3, 5
  %165 = and i32 %164, 32512
  %mul423 = zext nneg i32 %165 to i64
  %add419 = or disjoint i64 %mul416, %mul423
  %166 = and i32 %mul20, 56
  %mul437 = zext nneg i32 %166 to i64
  %invariant.gep931 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %mul437
  %mul471 = and i32 %164, 224
  %mul476 = and i32 %97, 4
  %add478 = add nuw nsw i32 %mul476, %shr74
  %and484 = lshr i32 %3, 1
  %shr485 = and i32 %and484, 3
  %mul492 = and i32 %97, 2
  %add468 = or disjoint i32 %mul492, %mul471
  %167 = xor i32 %add478, %shr485
  %168 = getelementptr inbounds %struct.__half, ptr addrspace(4) %invariant.gep931, i64 %add419, !dbg !227
  %169 = getelementptr inbounds i8, ptr addrspace(4) %168, i64 %.idx, !dbg !227
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %169, align 16, !dbg !228
  %v_fetch.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 2, !dbg !228
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4, !dbg !228
  %v_fetch.sroa.14.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx, align 4, !dbg !228
  %v_fetch.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 6, !dbg !228
  %v_fetch.sroa.18.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 8, !dbg !228
  %v_fetch.sroa.22.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx, align 8, !dbg !228
  %v_fetch.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 10, !dbg !228
  %v_fetch.sroa.26.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 12, !dbg !228
  %v_fetch.sroa.30.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx, align 4, !dbg !228
  %v_fetch.sroa.34.0..sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 14, !dbg !228
  %v_fetch.sroa.34.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx, align 2, !dbg !228, !tbaa !30
  %gep.1 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 256, !dbg !227
  %v_fetch.sroa.38.16.copyload = load i16, ptr addrspace(4) %gep.1, align 16, !dbg !228
  %v_fetch.sroa.46.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 258, !dbg !228
  %v_fetch.sroa.46.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 260, !dbg !228
  %v_fetch.sroa.50.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.sroa_idx, align 4, !dbg !228
  %v_fetch.sroa.54.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 262, !dbg !228
  %v_fetch.sroa.54.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 264, !dbg !228
  %v_fetch.sroa.58.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.sroa_idx, align 8, !dbg !228
  %v_fetch.sroa.62.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 266, !dbg !228
  %v_fetch.sroa.62.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 268, !dbg !228
  %v_fetch.sroa.66.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.sroa_idx, align 4, !dbg !228
  %v_fetch.sroa.70.16.gep.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 270, !dbg !228
  %v_fetch.sroa.70.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %170 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add468, !dbg !229
  %add.ptr495.idx = shl nuw nsw i32 %167, 3, !dbg !229
  %add.ptr495 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 %add.ptr495.idx, !dbg !229
  %v_column.sroa.66.0.insert.ext = zext i16 %v_fetch.sroa.38.16.copyload to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift = shl nuw i32 %v_column.sroa.66.0.insert.ext, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.66.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr495, align 4, !dbg !230, !tbaa !30
  %171 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 512, !dbg !229
  %xor486.1 = shl nuw nsw i32 %167, 3, !dbg !229
  %add.ptr495.idx.1 = xor i32 %xor486.1, 8, !dbg !229
  %add.ptr495.1 = getelementptr inbounds i8, ptr addrspace(3) %171, i32 %add.ptr495.idx.1, !dbg !229
  %v_column.sroa.66.0.insert.ext1334 = zext i16 %v_fetch.sroa.46.16.copyload to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1335 = shl nuw i32 %v_column.sroa.66.0.insert.ext1334, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1210 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1212 = or disjoint i32 %v_column.sroa.66.0.insert.shift1335, %v_column.sroa.0.0.insert.ext1210, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1212, ptr addrspace(3) %add.ptr495.1, align 4, !dbg !230, !tbaa !30
  %172 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 1024, !dbg !229
  %xor486.2 = shl nuw nsw i32 %167, 3, !dbg !229
  %add.ptr495.idx.2 = xor i32 %xor486.2, 16, !dbg !229
  %add.ptr495.2 = getelementptr inbounds i8, ptr addrspace(3) %172, i32 %add.ptr495.idx.2, !dbg !229
  %v_column.sroa.66.0.insert.ext1339 = zext i16 %v_fetch.sroa.50.16.copyload to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1340 = shl nuw i32 %v_column.sroa.66.0.insert.ext1339, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1214 = zext i16 %v_fetch.sroa.14.0.copyload to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1216 = or disjoint i32 %v_column.sroa.66.0.insert.shift1340, %v_column.sroa.0.0.insert.ext1214, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1216, ptr addrspace(3) %add.ptr495.2, align 4, !dbg !230, !tbaa !30
  %173 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 1536, !dbg !229
  %xor486.3 = shl nuw nsw i32 %167, 3, !dbg !229
  %add.ptr495.idx.3 = xor i32 %xor486.3, 24, !dbg !229
  %add.ptr495.3 = getelementptr inbounds i8, ptr addrspace(3) %173, i32 %add.ptr495.idx.3, !dbg !229
  %v_column.sroa.66.0.insert.ext1344 = zext i16 %v_fetch.sroa.54.16.copyload to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1345 = shl nuw i32 %v_column.sroa.66.0.insert.ext1344, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1218 = zext i16 %v_fetch.sroa.18.0.copyload to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1220 = or disjoint i32 %v_column.sroa.66.0.insert.shift1345, %v_column.sroa.0.0.insert.ext1218, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1220, ptr addrspace(3) %add.ptr495.3, align 4, !dbg !230, !tbaa !30
  %174 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 2048, !dbg !229
  %xor486.4 = shl nuw nsw i32 %167, 3, !dbg !229
  %add.ptr495.idx.4 = xor i32 %xor486.4, 32, !dbg !229
  %add.ptr495.4 = getelementptr inbounds i8, ptr addrspace(3) %174, i32 %add.ptr495.idx.4, !dbg !229
  %v_column.sroa.66.0.insert.ext1349 = zext i16 %v_fetch.sroa.58.16.copyload to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1350 = shl nuw i32 %v_column.sroa.66.0.insert.ext1349, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1222 = zext i16 %v_fetch.sroa.22.0.copyload to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1224 = or disjoint i32 %v_column.sroa.66.0.insert.shift1350, %v_column.sroa.0.0.insert.ext1222, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1224, ptr addrspace(3) %add.ptr495.4, align 4, !dbg !230, !tbaa !30
  %175 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 2560, !dbg !229
  %xor486.5 = shl nuw nsw i32 %167, 3, !dbg !229
  %add.ptr495.idx.5 = xor i32 %xor486.5, 40, !dbg !229
  %add.ptr495.5 = getelementptr inbounds i8, ptr addrspace(3) %175, i32 %add.ptr495.idx.5, !dbg !229
  %v_column.sroa.66.0.insert.ext1354 = zext i16 %v_fetch.sroa.62.16.copyload to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1355 = shl nuw i32 %v_column.sroa.66.0.insert.ext1354, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1226 = zext i16 %v_fetch.sroa.26.0.copyload to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1228 = or disjoint i32 %v_column.sroa.66.0.insert.shift1355, %v_column.sroa.0.0.insert.ext1226, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1228, ptr addrspace(3) %add.ptr495.5, align 4, !dbg !230, !tbaa !30
  %176 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 3072, !dbg !229
  %xor486.6 = shl nuw nsw i32 %167, 3, !dbg !229
  %add.ptr495.idx.6 = xor i32 %xor486.6, 48, !dbg !229
  %add.ptr495.6 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 %add.ptr495.idx.6, !dbg !229
  %v_column.sroa.66.0.insert.ext1359 = zext i16 %v_fetch.sroa.66.16.copyload to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1360 = shl nuw i32 %v_column.sroa.66.0.insert.ext1359, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1230 = zext i16 %v_fetch.sroa.30.0.copyload to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1232 = or disjoint i32 %v_column.sroa.66.0.insert.shift1360, %v_column.sroa.0.0.insert.ext1230, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1232, ptr addrspace(3) %add.ptr495.6, align 4, !dbg !230, !tbaa !30
  %177 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 3584, !dbg !229
  %xor486.7 = shl nuw nsw i32 %167, 3, !dbg !229
  %add.ptr495.idx.7 = xor i32 %xor486.7, 56, !dbg !229
  %add.ptr495.7 = getelementptr inbounds i8, ptr addrspace(3) %177, i32 %add.ptr495.idx.7, !dbg !229
  %v_column.sroa.66.0.insert.ext1364 = zext i16 %v_fetch.sroa.70.16.copyload to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1365 = shl nuw i32 %v_column.sroa.66.0.insert.ext1364, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1234 = zext i16 %v_fetch.sroa.34.0.copyload to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1236 = or disjoint i32 %v_column.sroa.66.0.insert.shift1365, %v_column.sroa.0.0.insert.ext1234, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1236, ptr addrspace(3) %add.ptr495.7, align 4, !dbg !230, !tbaa !30
  %178 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 128, !dbg !227
  %v_fetch.sroa.0.0.copyload1491 = load i16, ptr addrspace(4) %178, align 16, !dbg !228
  %v_fetch.sroa.10.0..sroa_idx1494 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 130, !dbg !228
  %v_fetch.sroa.10.0.copyload1495 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1494, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1503 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 132, !dbg !228
  %v_fetch.sroa.14.0.copyload1504 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1503, align 4, !dbg !228
  %v_fetch.sroa.18.0..sroa_idx1512 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 134, !dbg !228
  %v_fetch.sroa.18.0.copyload1513 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1512, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1521 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 136, !dbg !228
  %v_fetch.sroa.22.0.copyload1522 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1521, align 8, !dbg !228
  %v_fetch.sroa.26.0..sroa_idx1530 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 138, !dbg !228
  %v_fetch.sroa.26.0.copyload1531 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1530, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1539 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 140, !dbg !228
  %v_fetch.sroa.30.0.copyload1540 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1539, align 4, !dbg !228
  %v_fetch.sroa.34.0..sroa_idx1548 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 142, !dbg !228
  %v_fetch.sroa.34.0.copyload1549 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1548, align 2, !dbg !228, !tbaa !30
  %gep.1.1 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 384, !dbg !227
  %v_fetch.sroa.38.16.copyload1560 = load i16, ptr addrspace(4) %gep.1.1, align 16, !dbg !228
  %v_fetch.sroa.46.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 386, !dbg !228
  %v_fetch.sroa.46.16.copyload1563 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 388, !dbg !228
  %v_fetch.sroa.50.16.copyload1569 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.1.sroa_idx, align 4, !dbg !228
  %v_fetch.sroa.54.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 390, !dbg !228
  %v_fetch.sroa.54.16.copyload1575 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 392, !dbg !228
  %v_fetch.sroa.58.16.copyload1581 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.1.sroa_idx, align 8, !dbg !228
  %v_fetch.sroa.62.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 394, !dbg !228
  %v_fetch.sroa.62.16.copyload1587 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 396, !dbg !228
  %v_fetch.sroa.66.16.copyload1593 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.1.sroa_idx, align 4, !dbg !228
  %v_fetch.sroa.70.16.gep.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 398, !dbg !228
  %v_fetch.sroa.70.16.copyload1599 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %179 = or disjoint i32 %add468, 2048
  %180 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %179, !dbg !229
  %add.ptr495.1997 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 %add.ptr495.idx, !dbg !229
  %v_column.sroa.66.0.insert.ext1369 = zext i16 %v_fetch.sroa.38.16.copyload1560 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1370 = shl nuw i32 %v_column.sroa.66.0.insert.ext1369, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1238 = zext i16 %v_fetch.sroa.0.0.copyload1491 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1240 = or disjoint i32 %v_column.sroa.66.0.insert.shift1370, %v_column.sroa.0.0.insert.ext1238, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1240, ptr addrspace(3) %add.ptr495.1997, align 4, !dbg !230, !tbaa !30
  %181 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 512, !dbg !229
  %add.ptr495.1.1 = getelementptr inbounds i8, ptr addrspace(3) %181, i32 %add.ptr495.idx.1, !dbg !229
  %v_column.sroa.66.0.insert.ext1374 = zext i16 %v_fetch.sroa.46.16.copyload1563 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1375 = shl nuw i32 %v_column.sroa.66.0.insert.ext1374, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1242 = zext i16 %v_fetch.sroa.10.0.copyload1495 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1244 = or disjoint i32 %v_column.sroa.66.0.insert.shift1375, %v_column.sroa.0.0.insert.ext1242, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1244, ptr addrspace(3) %add.ptr495.1.1, align 4, !dbg !230, !tbaa !30
  %182 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 1024, !dbg !229
  %add.ptr495.2.1 = getelementptr inbounds i8, ptr addrspace(3) %182, i32 %add.ptr495.idx.2, !dbg !229
  %v_column.sroa.66.0.insert.ext1379 = zext i16 %v_fetch.sroa.50.16.copyload1569 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1380 = shl nuw i32 %v_column.sroa.66.0.insert.ext1379, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1246 = zext i16 %v_fetch.sroa.14.0.copyload1504 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1248 = or disjoint i32 %v_column.sroa.66.0.insert.shift1380, %v_column.sroa.0.0.insert.ext1246, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1248, ptr addrspace(3) %add.ptr495.2.1, align 4, !dbg !230, !tbaa !30
  %183 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 1536, !dbg !229
  %add.ptr495.3.1 = getelementptr inbounds i8, ptr addrspace(3) %183, i32 %add.ptr495.idx.3, !dbg !229
  %v_column.sroa.66.0.insert.ext1384 = zext i16 %v_fetch.sroa.54.16.copyload1575 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1385 = shl nuw i32 %v_column.sroa.66.0.insert.ext1384, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1250 = zext i16 %v_fetch.sroa.18.0.copyload1513 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1252 = or disjoint i32 %v_column.sroa.66.0.insert.shift1385, %v_column.sroa.0.0.insert.ext1250, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1252, ptr addrspace(3) %add.ptr495.3.1, align 4, !dbg !230, !tbaa !30
  %184 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 2048, !dbg !229
  %add.ptr495.4.1 = getelementptr inbounds i8, ptr addrspace(3) %184, i32 %add.ptr495.idx.4, !dbg !229
  %v_column.sroa.66.0.insert.ext1389 = zext i16 %v_fetch.sroa.58.16.copyload1581 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1390 = shl nuw i32 %v_column.sroa.66.0.insert.ext1389, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1254 = zext i16 %v_fetch.sroa.22.0.copyload1522 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1256 = or disjoint i32 %v_column.sroa.66.0.insert.shift1390, %v_column.sroa.0.0.insert.ext1254, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1256, ptr addrspace(3) %add.ptr495.4.1, align 4, !dbg !230, !tbaa !30
  %185 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 2560, !dbg !229
  %add.ptr495.5.1 = getelementptr inbounds i8, ptr addrspace(3) %185, i32 %add.ptr495.idx.5, !dbg !229
  %v_column.sroa.66.0.insert.ext1394 = zext i16 %v_fetch.sroa.62.16.copyload1587 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1395 = shl nuw i32 %v_column.sroa.66.0.insert.ext1394, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1258 = zext i16 %v_fetch.sroa.26.0.copyload1531 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1260 = or disjoint i32 %v_column.sroa.66.0.insert.shift1395, %v_column.sroa.0.0.insert.ext1258, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1260, ptr addrspace(3) %add.ptr495.5.1, align 4, !dbg !230, !tbaa !30
  %186 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 3072, !dbg !229
  %add.ptr495.6.1 = getelementptr inbounds i8, ptr addrspace(3) %186, i32 %add.ptr495.idx.6, !dbg !229
  %v_column.sroa.66.0.insert.ext1399 = zext i16 %v_fetch.sroa.66.16.copyload1593 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1400 = shl nuw i32 %v_column.sroa.66.0.insert.ext1399, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1262 = zext i16 %v_fetch.sroa.30.0.copyload1540 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1264 = or disjoint i32 %v_column.sroa.66.0.insert.shift1400, %v_column.sroa.0.0.insert.ext1262, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1264, ptr addrspace(3) %add.ptr495.6.1, align 4, !dbg !230, !tbaa !30
  %187 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 3584, !dbg !229
  %add.ptr495.7.1 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 %add.ptr495.idx.7, !dbg !229
  %v_column.sroa.66.0.insert.ext1404 = zext i16 %v_fetch.sroa.70.16.copyload1599 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1405 = shl nuw i32 %v_column.sroa.66.0.insert.ext1404, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1266 = zext i16 %v_fetch.sroa.34.0.copyload1549 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1268 = or disjoint i32 %v_column.sroa.66.0.insert.shift1405, %v_column.sroa.0.0.insert.ext1266, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1268, ptr addrspace(3) %add.ptr495.7.1, align 4, !dbg !230, !tbaa !30
  %narrow = add nuw nsw i32 %add478, 2
  %188 = xor i32 %narrow, %shr485
  %189 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4096, !dbg !227
  %v_fetch.sroa.0.0.copyload1492 = load i16, ptr addrspace(4) %189, align 16, !dbg !228
  %v_fetch.sroa.10.0..sroa_idx1496 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4098, !dbg !228
  %v_fetch.sroa.10.0.copyload1497 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1496, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1505 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4100, !dbg !228
  %v_fetch.sroa.14.0.copyload1506 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1505, align 4, !dbg !228
  %v_fetch.sroa.18.0..sroa_idx1514 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4102, !dbg !228
  %v_fetch.sroa.18.0.copyload1515 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1514, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1523 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4104, !dbg !228
  %v_fetch.sroa.22.0.copyload1524 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1523, align 8, !dbg !228
  %v_fetch.sroa.26.0..sroa_idx1532 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4106, !dbg !228
  %v_fetch.sroa.26.0.copyload1533 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1532, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1541 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4108, !dbg !228
  %v_fetch.sroa.30.0.copyload1542 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1541, align 4, !dbg !228
  %v_fetch.sroa.34.0..sroa_idx1550 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4110, !dbg !228
  %v_fetch.sroa.34.0.copyload1551 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1550, align 2, !dbg !228, !tbaa !30
  %gep.1.11004 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4352, !dbg !227
  %v_fetch.sroa.38.16.copyload1561 = load i16, ptr addrspace(4) %gep.1.11004, align 16, !dbg !228
  %v_fetch.sroa.46.16.gep.1.11004.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4354, !dbg !228
  %v_fetch.sroa.46.16.copyload1564 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.11004.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.11004.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4356, !dbg !228
  %v_fetch.sroa.50.16.copyload1570 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.11004.sroa_idx, align 4, !dbg !228
  %v_fetch.sroa.54.16.gep.1.11004.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4358, !dbg !228
  %v_fetch.sroa.54.16.copyload1576 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.11004.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.11004.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4360, !dbg !228
  %v_fetch.sroa.58.16.copyload1582 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.11004.sroa_idx, align 8, !dbg !228
  %v_fetch.sroa.62.16.gep.1.11004.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4362, !dbg !228
  %v_fetch.sroa.62.16.copyload1588 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.11004.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.11004.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4364, !dbg !228
  %v_fetch.sroa.66.16.copyload1594 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.11004.sroa_idx, align 4, !dbg !228
  %v_fetch.sroa.70.16.gep.1.11004.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4366, !dbg !228
  %v_fetch.sroa.70.16.copyload1600 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.11004.sroa_idx, align 2, !dbg !228, !tbaa !30
  %add.ptr495.idx.11010 = shl nuw nsw i32 %188, 3, !dbg !229
  %add.ptr495.11011 = getelementptr inbounds i8, ptr addrspace(3) %170, i32 %add.ptr495.idx.11010, !dbg !229
  %v_column.sroa.66.0.insert.ext1409 = zext i16 %v_fetch.sroa.38.16.copyload1561 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1410 = shl nuw i32 %v_column.sroa.66.0.insert.ext1409, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1270 = zext i16 %v_fetch.sroa.0.0.copyload1492 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1272 = or disjoint i32 %v_column.sroa.66.0.insert.shift1410, %v_column.sroa.0.0.insert.ext1270, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1272, ptr addrspace(3) %add.ptr495.11011, align 4, !dbg !230, !tbaa !30
  %xor486.1.11016 = shl nuw nsw i32 %188, 3, !dbg !229
  %add.ptr495.idx.1.11017 = xor i32 %xor486.1.11016, 8, !dbg !229
  %add.ptr495.1.11018 = getelementptr inbounds i8, ptr addrspace(3) %171, i32 %add.ptr495.idx.1.11017, !dbg !229
  %v_column.sroa.66.0.insert.ext1414 = zext i16 %v_fetch.sroa.46.16.copyload1564 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1415 = shl nuw i32 %v_column.sroa.66.0.insert.ext1414, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1274 = zext i16 %v_fetch.sroa.10.0.copyload1497 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1276 = or disjoint i32 %v_column.sroa.66.0.insert.shift1415, %v_column.sroa.0.0.insert.ext1274, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1276, ptr addrspace(3) %add.ptr495.1.11018, align 4, !dbg !230, !tbaa !30
  %xor486.2.11023 = shl nuw nsw i32 %188, 3, !dbg !229
  %add.ptr495.idx.2.11024 = xor i32 %xor486.2.11023, 16, !dbg !229
  %add.ptr495.2.11025 = getelementptr inbounds i8, ptr addrspace(3) %172, i32 %add.ptr495.idx.2.11024, !dbg !229
  %v_column.sroa.66.0.insert.ext1419 = zext i16 %v_fetch.sroa.50.16.copyload1570 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1420 = shl nuw i32 %v_column.sroa.66.0.insert.ext1419, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1278 = zext i16 %v_fetch.sroa.14.0.copyload1506 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1280 = or disjoint i32 %v_column.sroa.66.0.insert.shift1420, %v_column.sroa.0.0.insert.ext1278, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1280, ptr addrspace(3) %add.ptr495.2.11025, align 4, !dbg !230, !tbaa !30
  %xor486.3.11030 = shl nuw nsw i32 %188, 3, !dbg !229
  %add.ptr495.idx.3.11031 = xor i32 %xor486.3.11030, 24, !dbg !229
  %add.ptr495.3.11032 = getelementptr inbounds i8, ptr addrspace(3) %173, i32 %add.ptr495.idx.3.11031, !dbg !229
  %v_column.sroa.66.0.insert.ext1424 = zext i16 %v_fetch.sroa.54.16.copyload1576 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1425 = shl nuw i32 %v_column.sroa.66.0.insert.ext1424, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1282 = zext i16 %v_fetch.sroa.18.0.copyload1515 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1284 = or disjoint i32 %v_column.sroa.66.0.insert.shift1425, %v_column.sroa.0.0.insert.ext1282, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1284, ptr addrspace(3) %add.ptr495.3.11032, align 4, !dbg !230, !tbaa !30
  %xor486.4.11037 = shl nuw nsw i32 %188, 3, !dbg !229
  %add.ptr495.idx.4.11038 = xor i32 %xor486.4.11037, 32, !dbg !229
  %add.ptr495.4.11039 = getelementptr inbounds i8, ptr addrspace(3) %174, i32 %add.ptr495.idx.4.11038, !dbg !229
  %v_column.sroa.66.0.insert.ext1429 = zext i16 %v_fetch.sroa.58.16.copyload1582 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1430 = shl nuw i32 %v_column.sroa.66.0.insert.ext1429, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1286 = zext i16 %v_fetch.sroa.22.0.copyload1524 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1288 = or disjoint i32 %v_column.sroa.66.0.insert.shift1430, %v_column.sroa.0.0.insert.ext1286, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1288, ptr addrspace(3) %add.ptr495.4.11039, align 4, !dbg !230, !tbaa !30
  %xor486.5.11044 = shl nuw nsw i32 %188, 3, !dbg !229
  %add.ptr495.idx.5.11045 = xor i32 %xor486.5.11044, 40, !dbg !229
  %add.ptr495.5.11046 = getelementptr inbounds i8, ptr addrspace(3) %175, i32 %add.ptr495.idx.5.11045, !dbg !229
  %v_column.sroa.66.0.insert.ext1434 = zext i16 %v_fetch.sroa.62.16.copyload1588 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1435 = shl nuw i32 %v_column.sroa.66.0.insert.ext1434, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1290 = zext i16 %v_fetch.sroa.26.0.copyload1533 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1292 = or disjoint i32 %v_column.sroa.66.0.insert.shift1435, %v_column.sroa.0.0.insert.ext1290, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1292, ptr addrspace(3) %add.ptr495.5.11046, align 4, !dbg !230, !tbaa !30
  %xor486.6.11051 = shl nuw nsw i32 %188, 3, !dbg !229
  %add.ptr495.idx.6.11052 = xor i32 %xor486.6.11051, 48, !dbg !229
  %add.ptr495.6.11053 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 %add.ptr495.idx.6.11052, !dbg !229
  %v_column.sroa.66.0.insert.ext1439 = zext i16 %v_fetch.sroa.66.16.copyload1594 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1440 = shl nuw i32 %v_column.sroa.66.0.insert.ext1439, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1294 = zext i16 %v_fetch.sroa.30.0.copyload1542 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1296 = or disjoint i32 %v_column.sroa.66.0.insert.shift1440, %v_column.sroa.0.0.insert.ext1294, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1296, ptr addrspace(3) %add.ptr495.6.11053, align 4, !dbg !230, !tbaa !30
  %xor486.7.11058 = shl nuw nsw i32 %188, 3, !dbg !229
  %add.ptr495.idx.7.11059 = xor i32 %xor486.7.11058, 56, !dbg !229
  %add.ptr495.7.11060 = getelementptr inbounds i8, ptr addrspace(3) %177, i32 %add.ptr495.idx.7.11059, !dbg !229
  %v_column.sroa.66.0.insert.ext1444 = zext i16 %v_fetch.sroa.70.16.copyload1600 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1445 = shl nuw i32 %v_column.sroa.66.0.insert.ext1444, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1298 = zext i16 %v_fetch.sroa.34.0.copyload1551 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1300 = or disjoint i32 %v_column.sroa.66.0.insert.shift1445, %v_column.sroa.0.0.insert.ext1298, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1300, ptr addrspace(3) %add.ptr495.7.11060, align 4, !dbg !230, !tbaa !30
  %190 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4224, !dbg !227
  %v_fetch.sroa.0.0.copyload1493 = load i16, ptr addrspace(4) %190, align 16, !dbg !228
  %v_fetch.sroa.10.0..sroa_idx1498 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4226, !dbg !228
  %v_fetch.sroa.10.0.copyload1499 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0..sroa_idx1498, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.14.0..sroa_idx1507 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4228, !dbg !228
  %v_fetch.sroa.14.0.copyload1508 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0..sroa_idx1507, align 4, !dbg !228
  %v_fetch.sroa.18.0..sroa_idx1516 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4230, !dbg !228
  %v_fetch.sroa.18.0.copyload1517 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0..sroa_idx1516, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.22.0..sroa_idx1525 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4232, !dbg !228
  %v_fetch.sroa.22.0.copyload1526 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0..sroa_idx1525, align 8, !dbg !228
  %v_fetch.sroa.26.0..sroa_idx1534 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4234, !dbg !228
  %v_fetch.sroa.26.0.copyload1535 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0..sroa_idx1534, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.30.0..sroa_idx1543 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4236, !dbg !228
  %v_fetch.sroa.30.0.copyload1544 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0..sroa_idx1543, align 4, !dbg !228
  %v_fetch.sroa.34.0..sroa_idx1552 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4238, !dbg !228
  %v_fetch.sroa.34.0.copyload1553 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0..sroa_idx1552, align 2, !dbg !228, !tbaa !30
  %gep.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4480, !dbg !227
  %v_fetch.sroa.38.16.copyload1562 = load i16, ptr addrspace(4) %gep.1.1.1, align 16, !dbg !228
  %v_fetch.sroa.46.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4482, !dbg !228
  %v_fetch.sroa.46.16.copyload1565 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.gep.1.1.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.50.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4484, !dbg !228
  %v_fetch.sroa.50.16.copyload1571 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.gep.1.1.1.sroa_idx, align 4, !dbg !228
  %v_fetch.sroa.54.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4486, !dbg !228
  %v_fetch.sroa.54.16.copyload1577 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.gep.1.1.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.58.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4488, !dbg !228
  %v_fetch.sroa.58.16.copyload1583 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.gep.1.1.1.sroa_idx, align 8, !dbg !228
  %v_fetch.sroa.62.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4490, !dbg !228
  %v_fetch.sroa.62.16.copyload1589 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.gep.1.1.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %v_fetch.sroa.66.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4492, !dbg !228
  %v_fetch.sroa.66.16.copyload1595 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.gep.1.1.1.sroa_idx, align 4, !dbg !228
  %v_fetch.sroa.70.16.gep.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %169, i64 4494, !dbg !228
  %v_fetch.sroa.70.16.copyload1601 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.gep.1.1.1.sroa_idx, align 2, !dbg !228, !tbaa !30
  %add.ptr495.1997.1 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 %add.ptr495.idx.11010, !dbg !229
  %v_column.sroa.66.0.insert.ext1449 = zext i16 %v_fetch.sroa.38.16.copyload1562 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1450 = shl nuw i32 %v_column.sroa.66.0.insert.ext1449, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1302 = zext i16 %v_fetch.sroa.0.0.copyload1493 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1304 = or disjoint i32 %v_column.sroa.66.0.insert.shift1450, %v_column.sroa.0.0.insert.ext1302, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1304, ptr addrspace(3) %add.ptr495.1997.1, align 4, !dbg !230, !tbaa !30
  %add.ptr495.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %181, i32 %add.ptr495.idx.1.11017, !dbg !229
  %v_column.sroa.66.0.insert.ext1454 = zext i16 %v_fetch.sroa.46.16.copyload1565 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1455 = shl nuw i32 %v_column.sroa.66.0.insert.ext1454, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1306 = zext i16 %v_fetch.sroa.10.0.copyload1499 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1308 = or disjoint i32 %v_column.sroa.66.0.insert.shift1455, %v_column.sroa.0.0.insert.ext1306, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1308, ptr addrspace(3) %add.ptr495.1.1.1, align 4, !dbg !230, !tbaa !30
  %add.ptr495.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %182, i32 %add.ptr495.idx.2.11024, !dbg !229
  %v_column.sroa.66.0.insert.ext1459 = zext i16 %v_fetch.sroa.50.16.copyload1571 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1460 = shl nuw i32 %v_column.sroa.66.0.insert.ext1459, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1310 = zext i16 %v_fetch.sroa.14.0.copyload1508 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1312 = or disjoint i32 %v_column.sroa.66.0.insert.shift1460, %v_column.sroa.0.0.insert.ext1310, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1312, ptr addrspace(3) %add.ptr495.2.1.1, align 4, !dbg !230, !tbaa !30
  %add.ptr495.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %183, i32 %add.ptr495.idx.3.11031, !dbg !229
  %v_column.sroa.66.0.insert.ext1464 = zext i16 %v_fetch.sroa.54.16.copyload1577 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1465 = shl nuw i32 %v_column.sroa.66.0.insert.ext1464, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1314 = zext i16 %v_fetch.sroa.18.0.copyload1517 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1316 = or disjoint i32 %v_column.sroa.66.0.insert.shift1465, %v_column.sroa.0.0.insert.ext1314, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1316, ptr addrspace(3) %add.ptr495.3.1.1, align 4, !dbg !230, !tbaa !30
  %add.ptr495.4.1.1 = getelementptr inbounds i8, ptr addrspace(3) %184, i32 %add.ptr495.idx.4.11038, !dbg !229
  %v_column.sroa.66.0.insert.ext1469 = zext i16 %v_fetch.sroa.58.16.copyload1583 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1470 = shl nuw i32 %v_column.sroa.66.0.insert.ext1469, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1318 = zext i16 %v_fetch.sroa.22.0.copyload1526 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1320 = or disjoint i32 %v_column.sroa.66.0.insert.shift1470, %v_column.sroa.0.0.insert.ext1318, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1320, ptr addrspace(3) %add.ptr495.4.1.1, align 4, !dbg !230, !tbaa !30
  %add.ptr495.5.1.1 = getelementptr inbounds i8, ptr addrspace(3) %185, i32 %add.ptr495.idx.5.11045, !dbg !229
  %v_column.sroa.66.0.insert.ext1474 = zext i16 %v_fetch.sroa.62.16.copyload1589 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1475 = shl nuw i32 %v_column.sroa.66.0.insert.ext1474, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1322 = zext i16 %v_fetch.sroa.26.0.copyload1535 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1324 = or disjoint i32 %v_column.sroa.66.0.insert.shift1475, %v_column.sroa.0.0.insert.ext1322, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1324, ptr addrspace(3) %add.ptr495.5.1.1, align 4, !dbg !230, !tbaa !30
  %add.ptr495.6.1.1 = getelementptr inbounds i8, ptr addrspace(3) %186, i32 %add.ptr495.idx.6.11052, !dbg !229
  %v_column.sroa.66.0.insert.ext1479 = zext i16 %v_fetch.sroa.66.16.copyload1595 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1480 = shl nuw i32 %v_column.sroa.66.0.insert.ext1479, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1326 = zext i16 %v_fetch.sroa.30.0.copyload1544 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1328 = or disjoint i32 %v_column.sroa.66.0.insert.shift1480, %v_column.sroa.0.0.insert.ext1326, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1328, ptr addrspace(3) %add.ptr495.6.1.1, align 4, !dbg !230, !tbaa !30
  %add.ptr495.7.1.1 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 %add.ptr495.idx.7.11059, !dbg !229
  %v_column.sroa.66.0.insert.ext1484 = zext i16 %v_fetch.sroa.70.16.copyload1601 to i32, !dbg !230
  %v_column.sroa.66.0.insert.shift1485 = shl nuw i32 %v_column.sroa.66.0.insert.ext1484, 16, !dbg !230
  %v_column.sroa.0.0.insert.ext1330 = zext i16 %v_fetch.sroa.34.0.copyload1553 to i32, !dbg !230
  %v_column.sroa.0.0.insert.insert1332 = or disjoint i32 %v_column.sroa.66.0.insert.shift1485, %v_column.sroa.0.0.insert.ext1330, !dbg !230
  store i32 %v_column.sroa.0.0.insert.insert1332, ptr addrspace(3) %add.ptr495.7.1.1, align 4, !dbg !230, !tbaa !30
  fence syncscope("warp") release, !dbg !231
  tail call void @llvm.mxc.barrier.warp(), !dbg !234
  fence syncscope("warp") acquire, !dbg !235
  %and532 = shl nuw nsw i32 %3, 8
  %mul533 = and i32 %and532, 1792
  %mul540 = and i32 %5, 32
  %xor553 = xor i32 %add478, %and40
  %add541 = or disjoint i32 %mul533, %mul540, !dbg !236
  %191 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541, !dbg !237
  %add.ptr558.idx = shl nuw nsw i32 %xor553, 3, !dbg !237
  %add.ptr558 = getelementptr inbounds i8, ptr addrspace(3) %191, i32 %add.ptr558.idx, !dbg !237
  %192 = load <4 x half>, ptr addrspace(3) %add.ptr558, align 8, !dbg !238
  %add536.1 = or disjoint i32 %mul533, %mul540, !dbg !236
  %add541.1 = or disjoint i32 %add536.1, 64, !dbg !236
  %193 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.1, !dbg !237
  %xor554.1 = shl nuw nsw i32 %xor553, 3, !dbg !237
  %add.ptr558.idx.1 = xor i32 %xor554.1, 8, !dbg !237
  %add.ptr558.1 = getelementptr inbounds i8, ptr addrspace(3) %193, i32 %add.ptr558.idx.1, !dbg !237
  %194 = load <4 x half>, ptr addrspace(3) %add.ptr558.1, align 8, !dbg !238
  %add536.2 = or disjoint i32 %mul533, %mul540, !dbg !236
  %add541.2 = or disjoint i32 %add536.2, 128, !dbg !236
  %195 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.2, !dbg !237
  %xor554.2 = shl nuw nsw i32 %xor553, 3, !dbg !237
  %add.ptr558.idx.2 = xor i32 %xor554.2, 16, !dbg !237
  %add.ptr558.2 = getelementptr inbounds i8, ptr addrspace(3) %195, i32 %add.ptr558.idx.2, !dbg !237
  %196 = load <4 x half>, ptr addrspace(3) %add.ptr558.2, align 8, !dbg !238
  %add536.3 = or disjoint i32 %mul533, %mul540, !dbg !236
  %add541.3 = or disjoint i32 %add536.3, 192, !dbg !236
  %197 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.3, !dbg !237
  %xor554.3 = shl nuw nsw i32 %xor553, 3, !dbg !237
  %add.ptr558.idx.3 = xor i32 %xor554.3, 24, !dbg !237
  %add.ptr558.3 = getelementptr inbounds i8, ptr addrspace(3) %197, i32 %add.ptr558.idx.3, !dbg !237
  %198 = load <4 x half>, ptr addrspace(3) %add.ptr558.3, align 8, !dbg !238
  %199 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %192, <4 x half> %135, <4 x float> zeroinitializer), !dbg !239
  %200 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %194, <4 x half> %135, <4 x float> zeroinitializer), !dbg !239
  %201 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %196, <4 x half> %135, <4 x float> zeroinitializer), !dbg !239
  %202 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %198, <4 x half> %135, <4 x float> zeroinitializer), !dbg !239
  %add534.1 = or disjoint i32 %mul533, %mul540, !dbg !236
  %add541.11062 = or disjoint i32 %add534.1, 2048, !dbg !236
  %203 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.11062, !dbg !237
  %add.ptr558.11064 = getelementptr inbounds i8, ptr addrspace(3) %203, i32 %add.ptr558.idx, !dbg !237
  %204 = load <4 x half>, ptr addrspace(3) %add.ptr558.11064, align 8, !dbg !238
  %add536.1.1 = or disjoint i32 %mul533, %mul540, !dbg !236
  %add541.1.1 = or disjoint i32 %add536.1.1, 2112, !dbg !236
  %205 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.1.1, !dbg !237
  %add.ptr558.1.1 = getelementptr inbounds i8, ptr addrspace(3) %205, i32 %add.ptr558.idx.1, !dbg !237
  %206 = load <4 x half>, ptr addrspace(3) %add.ptr558.1.1, align 8, !dbg !238
  %add536.2.1 = or disjoint i32 %mul533, %mul540, !dbg !236
  %add541.2.1 = or disjoint i32 %add536.2.1, 2176, !dbg !236
  %207 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.2.1, !dbg !237
  %add.ptr558.2.1 = getelementptr inbounds i8, ptr addrspace(3) %207, i32 %add.ptr558.idx.2, !dbg !237
  %208 = load <4 x half>, ptr addrspace(3) %add.ptr558.2.1, align 8, !dbg !238
  %add536.3.1 = or disjoint i32 %mul533, %mul540, !dbg !236
  %add541.3.1 = or disjoint i32 %add536.3.1, 2240, !dbg !236
  %209 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add541.3.1, !dbg !237
  %add.ptr558.3.1 = getelementptr inbounds i8, ptr addrspace(3) %209, i32 %add.ptr558.idx.3, !dbg !237
  %210 = load <4 x half>, ptr addrspace(3) %add.ptr558.3.1, align 8, !dbg !238
  %211 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %204, <4 x half> %135, <4 x float> zeroinitializer), !dbg !239
  %212 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %206, <4 x half> %135, <4 x float> zeroinitializer), !dbg !239
  %213 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %208, <4 x half> %135, <4 x float> zeroinitializer), !dbg !239
  %214 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %210, <4 x half> %135, <4 x float> zeroinitializer), !dbg !239
  %add550.1 = add nuw nsw i32 %add478, 2
  %xor553.1 = xor i32 %add550.1, %and40
  %add.ptr558.idx.11068 = shl nuw nsw i32 %xor553.1, 3, !dbg !237
  %add.ptr558.11069 = getelementptr inbounds i8, ptr addrspace(3) %191, i32 %add.ptr558.idx.11068, !dbg !237
  %215 = load <4 x half>, ptr addrspace(3) %add.ptr558.11069, align 8, !dbg !238
  %xor554.1.11072 = shl nuw nsw i32 %xor553.1, 3, !dbg !237
  %add.ptr558.idx.1.11073 = xor i32 %xor554.1.11072, 8, !dbg !237
  %add.ptr558.1.11074 = getelementptr inbounds i8, ptr addrspace(3) %193, i32 %add.ptr558.idx.1.11073, !dbg !237
  %216 = load <4 x half>, ptr addrspace(3) %add.ptr558.1.11074, align 8, !dbg !238
  %xor554.2.11078 = shl nuw nsw i32 %xor553.1, 3, !dbg !237
  %add.ptr558.idx.2.11079 = xor i32 %xor554.2.11078, 16, !dbg !237
  %add.ptr558.2.11080 = getelementptr inbounds i8, ptr addrspace(3) %195, i32 %add.ptr558.idx.2.11079, !dbg !237
  %217 = load <4 x half>, ptr addrspace(3) %add.ptr558.2.11080, align 8, !dbg !238
  %xor554.3.11084 = shl nuw nsw i32 %xor553.1, 3, !dbg !237
  %add.ptr558.idx.3.11085 = xor i32 %xor554.3.11084, 24, !dbg !237
  %add.ptr558.3.11086 = getelementptr inbounds i8, ptr addrspace(3) %197, i32 %add.ptr558.idx.3.11085, !dbg !237
  %218 = load <4 x half>, ptr addrspace(3) %add.ptr558.3.11086, align 8, !dbg !238
  %219 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %215, <4 x half> %151, <4 x float> %199), !dbg !239
  %220 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %216, <4 x half> %151, <4 x float> %200), !dbg !239
  %221 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %217, <4 x half> %151, <4 x float> %201), !dbg !239
  %222 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %218, <4 x half> %151, <4 x float> %202), !dbg !239
  %add.ptr558.11064.1 = getelementptr inbounds i8, ptr addrspace(3) %203, i32 %add.ptr558.idx.11068, !dbg !237
  %223 = load <4 x half>, ptr addrspace(3) %add.ptr558.11064.1, align 8, !dbg !238
  %add.ptr558.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %205, i32 %add.ptr558.idx.1.11073, !dbg !237
  %224 = load <4 x half>, ptr addrspace(3) %add.ptr558.1.1.1, align 8, !dbg !238
  %add.ptr558.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %207, i32 %add.ptr558.idx.2.11079, !dbg !237
  %225 = load <4 x half>, ptr addrspace(3) %add.ptr558.2.1.1, align 8, !dbg !238
  %add.ptr558.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %209, i32 %add.ptr558.idx.3.11085, !dbg !237
  %226 = load <4 x half>, ptr addrspace(3) %add.ptr558.3.1.1, align 8, !dbg !238
  %227 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %223, <4 x half> %151, <4 x float> %211), !dbg !239
  %228 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %224, <4 x half> %151, <4 x float> %212), !dbg !239
  %229 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %225, <4 x half> %151, <4 x float> %213), !dbg !239
  %230 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %226, <4 x half> %151, <4 x float> %214), !dbg !239
  %add400 = fadd contract float %add395, %163, !dbg !240
  br label %if.end609, !dbg !63

if.end609:                                        ; preds = %for.cond.preheader, %for.body599.preheader
  %.pre-phi2023 = phi i64 [ %16, %for.cond.preheader ], [ %.pre2022, %for.body599.preheader ], !dbg !62
  %.pre-phi2021 = phi i64 [ %13, %for.cond.preheader ], [ %.pre2020, %for.body599.preheader ], !dbg !62
  %.pre-phi2019 = phi i64 [ %10, %for.cond.preheader ], [ %.pre2018, %for.body599.preheader ], !dbg !62
  %.idx960.11105.pre-phi = phi i32 [ %.idx949.1968, %for.cond.preheader ], [ %.pre2017, %for.body599.preheader ], !dbg !61
  %add.ptr711.idx.1.pre-phi = phi i32 [ %add.ptr57.idx.1, %for.cond.preheader ], [ %.pre2014, %for.body599.preheader ], !dbg !61
  %add.ptr711.idx.pre-phi = phi i32 [ %add.ptr57.idx, %for.cond.preheader ], [ %.pre2012, %for.body599.preheader ], !dbg !61
  %.idx960.pre-phi = phi i32 [ %.idx949, %for.cond.preheader ], [ %.pre2011, %for.body599.preheader ], !dbg !61
  %.pre-phi2009 = phi i64 [ %6, %for.cond.preheader ], [ %.pre2008, %for.body599.preheader ], !dbg !60
  %mul690.pre-phi = phi i32 [ %mul37, %for.cond.preheader ], [ %.pre2001, %for.body599.preheader ]
  %mul685.pre-phi = phi i32 [ %mul32, %for.cond.preheader ], [ %.pre1998, %for.body599.preheader ]
  %.idx958.4.pre-phi = phi i32 [ %.idx950.4, %for.cond.preheader ], [ %.pre1995, %for.body599.preheader ], !dbg !57
  %add647.4.pre-phi = phi i32 [ %add70.4, %for.cond.preheader ], [ %.pre1993, %for.body599.preheader ], !dbg !59
  %add.ptr670.idx.3.pre-phi = phi i32 [ %add.ptr93.idx.3, %for.cond.preheader ], [ %.pre1992, %for.body599.preheader ], !dbg !57
  %add.ptr670.idx.2.pre-phi = phi i32 [ %add.ptr93.idx.2, %for.cond.preheader ], [ %.pre1989, %for.body599.preheader ], !dbg !57
  %add.ptr670.idx.1.pre-phi = phi i32 [ %add.ptr93.idx.1, %for.cond.preheader ], [ %.pre1986, %for.body599.preheader ], !dbg !57
  %add.ptr670.idx.pre-phi = phi i32 [ %add.ptr93.idx, %for.cond.preheader ], [ %.pre1983, %for.body599.preheader ], !dbg !57
  %.idx958.pre-phi = phi i32 [ %.idx950, %for.cond.preheader ], [ %.pre1982, %for.body599.preheader ], !dbg !57
  %mul646.pre-phi = phi i32 [ %mul69, %for.cond.preheader ], [ %.pre1974, %for.body599.preheader ]
  %numerator.sroa.170.0 = phi <4 x float> [ %230, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !241
  %numerator.sroa.146.0 = phi <4 x float> [ %229, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !241
  %numerator.sroa.122.0 = phi <4 x float> [ %228, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !241
  %numerator.sroa.98.0 = phi <4 x float> [ %227, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !241
  %numerator.sroa.74.0 = phi <4 x float> [ %222, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !241
  %numerator.sroa.50.0 = phi <4 x float> [ %221, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !241
  %numerator.sroa.26.0 = phi <4 x float> [ %220, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !241
  %numerator.sroa.0.0 = phi <4 x float> [ %219, %for.cond.preheader ], [ zeroinitializer, %for.body599.preheader ], !dbg !241
  %denominator.sroa.0.1 = phi float [ %add400, %for.cond.preheader ], [ 0.000000e+00, %for.body599.preheader ], !dbg !241
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !242
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !242
  %div.1 = fdiv contract float %numerator.sroa.0.4.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !242
  %div.2 = fdiv contract float %numerator.sroa.0.8.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !242
  %div.3 = fdiv contract float %numerator.sroa.0.12.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.26.16.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 0, !dbg !242
  %div.4 = fdiv contract float %numerator.sroa.26.16.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.26.20.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 1, !dbg !242
  %div.5 = fdiv contract float %numerator.sroa.26.20.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.26.24.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 2, !dbg !242
  %div.6 = fdiv contract float %numerator.sroa.26.24.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.26.28.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 3, !dbg !242
  %div.7 = fdiv contract float %numerator.sroa.26.28.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.50.32.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 0, !dbg !242
  %div.8 = fdiv contract float %numerator.sroa.50.32.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.50.36.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 1, !dbg !242
  %div.9 = fdiv contract float %numerator.sroa.50.36.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.50.40.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 2, !dbg !242
  %div.10 = fdiv contract float %numerator.sroa.50.40.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.50.44.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 3, !dbg !242
  %div.11 = fdiv contract float %numerator.sroa.50.44.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.74.48.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 0, !dbg !242
  %div.12 = fdiv contract float %numerator.sroa.74.48.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.74.52.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 1, !dbg !242
  %div.13 = fdiv contract float %numerator.sroa.74.52.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.74.56.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 2, !dbg !242
  %div.14 = fdiv contract float %numerator.sroa.74.56.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.74.60.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 3, !dbg !242
  %div.15 = fdiv contract float %numerator.sroa.74.60.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.98.64.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 0, !dbg !242
  %div.16 = fdiv contract float %numerator.sroa.98.64.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.98.68.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 1, !dbg !242
  %div.17 = fdiv contract float %numerator.sroa.98.68.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.98.72.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 2, !dbg !242
  %div.18 = fdiv contract float %numerator.sroa.98.72.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.98.76.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 3, !dbg !242
  %div.19 = fdiv contract float %numerator.sroa.98.76.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.122.80.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 0, !dbg !242
  %div.20 = fdiv contract float %numerator.sroa.122.80.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.122.84.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 1, !dbg !242
  %div.21 = fdiv contract float %numerator.sroa.122.84.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.122.88.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 2, !dbg !242
  %div.22 = fdiv contract float %numerator.sroa.122.88.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.122.92.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 3, !dbg !242
  %div.23 = fdiv contract float %numerator.sroa.122.92.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.146.96.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 0, !dbg !242
  %div.24 = fdiv contract float %numerator.sroa.146.96.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.146.100.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 1, !dbg !242
  %div.25 = fdiv contract float %numerator.sroa.146.100.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.146.104.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 2, !dbg !242
  %div.26 = fdiv contract float %numerator.sroa.146.104.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.146.108.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 3, !dbg !242
  %div.27 = fdiv contract float %numerator.sroa.146.108.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.170.112.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 0, !dbg !242
  %div.28 = fdiv contract float %numerator.sroa.170.112.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.170.116.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 1, !dbg !242
  %div.29 = fdiv contract float %numerator.sroa.170.116.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.170.120.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 2, !dbg !242
  %div.30 = fdiv contract float %numerator.sroa.170.120.vec.extract, %denominator.sroa.0.1, !dbg !243
  %numerator.sroa.170.124.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 3, !dbg !242
  %div.31 = fdiv contract float %numerator.sroa.170.124.vec.extract, %denominator.sroa.0.1, !dbg !243
  fence syncscope("warp") release, !dbg !244
  tail call void @llvm.mxc.barrier.warp(), !dbg !247
  fence syncscope("warp") acquire, !dbg !248
  %conv.i.i907 = fptrunc float %div to half, !dbg !249
  %conv.i.i907.1 = fptrunc float %div.1 to half, !dbg !249
  %conv.i.i907.2 = fptrunc float %div.2 to half, !dbg !249
  %conv.i.i907.3 = fptrunc float %div.3 to half, !dbg !249
  %231 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul646.pre-phi, !dbg !57
  %232 = getelementptr inbounds i8, ptr addrspace(3) %231, i32 %.idx958.pre-phi, !dbg !57
  %add.ptr670 = getelementptr inbounds i8, ptr addrspace(3) %232, i32 %add.ptr670.idx.pre-phi, !dbg !57
  store half %conv.i.i907, ptr addrspace(3) %add.ptr670, align 8, !dbg !254
  %add.ptr670.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670, i32 2, !dbg !254
  store half %conv.i.i907.1, ptr addrspace(3) %add.ptr670.sroa_idx, align 2, !dbg !254
  %add.ptr670.sroa_idx1116 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670, i32 4, !dbg !254
  store half %conv.i.i907.2, ptr addrspace(3) %add.ptr670.sroa_idx1116, align 4, !dbg !254
  %add.ptr670.sroa_idx1117 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670, i32 6, !dbg !254
  store half %conv.i.i907.3, ptr addrspace(3) %add.ptr670.sroa_idx1117, align 2, !dbg !254
  %conv.i.i907.11094 = fptrunc float %div.4 to half, !dbg !249
  %conv.i.i907.1.1 = fptrunc float %div.5 to half, !dbg !249
  %conv.i.i907.2.1 = fptrunc float %div.6 to half, !dbg !249
  %conv.i.i907.3.1 = fptrunc float %div.7 to half, !dbg !249
  %add.ptr670.1 = getelementptr inbounds i8, ptr addrspace(3) %232, i32 %add.ptr670.idx.1.pre-phi, !dbg !57
  store half %conv.i.i907.11094, ptr addrspace(3) %add.ptr670.1, align 8, !dbg !254
  %add.ptr670.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.1, i32 2, !dbg !254
  store half %conv.i.i907.1.1, ptr addrspace(3) %add.ptr670.1.sroa_idx, align 2, !dbg !254
  %add.ptr670.1.sroa_idx1121 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.1, i32 4, !dbg !254
  store half %conv.i.i907.2.1, ptr addrspace(3) %add.ptr670.1.sroa_idx1121, align 4, !dbg !254
  %add.ptr670.1.sroa_idx1122 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.1, i32 6, !dbg !254
  store half %conv.i.i907.3.1, ptr addrspace(3) %add.ptr670.1.sroa_idx1122, align 2, !dbg !254
  %conv.i.i907.21096 = fptrunc float %div.8 to half, !dbg !249
  %conv.i.i907.1.2 = fptrunc float %div.9 to half, !dbg !249
  %conv.i.i907.2.2 = fptrunc float %div.10 to half, !dbg !249
  %conv.i.i907.3.2 = fptrunc float %div.11 to half, !dbg !249
  %add.ptr670.2 = getelementptr inbounds i8, ptr addrspace(3) %232, i32 %add.ptr670.idx.2.pre-phi, !dbg !57
  store half %conv.i.i907.21096, ptr addrspace(3) %add.ptr670.2, align 8, !dbg !254
  %add.ptr670.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.2, i32 2, !dbg !254
  store half %conv.i.i907.1.2, ptr addrspace(3) %add.ptr670.2.sroa_idx, align 2, !dbg !254
  %add.ptr670.2.sroa_idx1126 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.2, i32 4, !dbg !254
  store half %conv.i.i907.2.2, ptr addrspace(3) %add.ptr670.2.sroa_idx1126, align 4, !dbg !254
  %add.ptr670.2.sroa_idx1127 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.2, i32 6, !dbg !254
  store half %conv.i.i907.3.2, ptr addrspace(3) %add.ptr670.2.sroa_idx1127, align 2, !dbg !254
  %conv.i.i907.31098 = fptrunc float %div.12 to half, !dbg !249
  %conv.i.i907.1.3 = fptrunc float %div.13 to half, !dbg !249
  %conv.i.i907.2.3 = fptrunc float %div.14 to half, !dbg !249
  %conv.i.i907.3.3 = fptrunc float %div.15 to half, !dbg !249
  %add.ptr670.3 = getelementptr inbounds i8, ptr addrspace(3) %232, i32 %add.ptr670.idx.3.pre-phi, !dbg !57
  store half %conv.i.i907.31098, ptr addrspace(3) %add.ptr670.3, align 8, !dbg !254
  %add.ptr670.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.3, i32 2, !dbg !254
  store half %conv.i.i907.1.3, ptr addrspace(3) %add.ptr670.3.sroa_idx, align 2, !dbg !254
  %add.ptr670.3.sroa_idx1131 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.3, i32 4, !dbg !254
  store half %conv.i.i907.2.3, ptr addrspace(3) %add.ptr670.3.sroa_idx1131, align 4, !dbg !254
  %add.ptr670.3.sroa_idx1132 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.3, i32 6, !dbg !254
  store half %conv.i.i907.3.3, ptr addrspace(3) %add.ptr670.3.sroa_idx1132, align 2, !dbg !254
  %conv.i.i907.4 = fptrunc float %div.16 to half, !dbg !249
  %conv.i.i907.1.4 = fptrunc float %div.17 to half, !dbg !249
  %conv.i.i907.2.4 = fptrunc float %div.18 to half, !dbg !249
  %conv.i.i907.3.4 = fptrunc float %div.19 to half, !dbg !249
  %233 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add647.4.pre-phi, !dbg !57
  %234 = getelementptr inbounds i8, ptr addrspace(3) %233, i32 %.idx958.4.pre-phi, !dbg !57
  %add.ptr670.4 = getelementptr inbounds i8, ptr addrspace(3) %234, i32 %add.ptr670.idx.pre-phi, !dbg !57
  store half %conv.i.i907.4, ptr addrspace(3) %add.ptr670.4, align 8, !dbg !254
  %add.ptr670.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.4, i32 2, !dbg !254
  store half %conv.i.i907.1.4, ptr addrspace(3) %add.ptr670.4.sroa_idx, align 2, !dbg !254
  %add.ptr670.4.sroa_idx1136 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.4, i32 4, !dbg !254
  store half %conv.i.i907.2.4, ptr addrspace(3) %add.ptr670.4.sroa_idx1136, align 4, !dbg !254
  %add.ptr670.4.sroa_idx1137 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.4, i32 6, !dbg !254
  store half %conv.i.i907.3.4, ptr addrspace(3) %add.ptr670.4.sroa_idx1137, align 2, !dbg !254
  %conv.i.i907.5 = fptrunc float %div.20 to half, !dbg !249
  %conv.i.i907.1.5 = fptrunc float %div.21 to half, !dbg !249
  %conv.i.i907.2.5 = fptrunc float %div.22 to half, !dbg !249
  %conv.i.i907.3.5 = fptrunc float %div.23 to half, !dbg !249
  %add.ptr670.5 = getelementptr inbounds i8, ptr addrspace(3) %234, i32 %add.ptr670.idx.1.pre-phi, !dbg !57
  store half %conv.i.i907.5, ptr addrspace(3) %add.ptr670.5, align 8, !dbg !254
  %add.ptr670.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.5, i32 2, !dbg !254
  store half %conv.i.i907.1.5, ptr addrspace(3) %add.ptr670.5.sroa_idx, align 2, !dbg !254
  %add.ptr670.5.sroa_idx1141 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.5, i32 4, !dbg !254
  store half %conv.i.i907.2.5, ptr addrspace(3) %add.ptr670.5.sroa_idx1141, align 4, !dbg !254
  %add.ptr670.5.sroa_idx1142 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.5, i32 6, !dbg !254
  store half %conv.i.i907.3.5, ptr addrspace(3) %add.ptr670.5.sroa_idx1142, align 2, !dbg !254
  %conv.i.i907.6 = fptrunc float %div.24 to half, !dbg !249
  %conv.i.i907.1.6 = fptrunc float %div.25 to half, !dbg !249
  %conv.i.i907.2.6 = fptrunc float %div.26 to half, !dbg !249
  %conv.i.i907.3.6 = fptrunc float %div.27 to half, !dbg !249
  %add.ptr670.6 = getelementptr inbounds i8, ptr addrspace(3) %234, i32 %add.ptr670.idx.2.pre-phi, !dbg !57
  store half %conv.i.i907.6, ptr addrspace(3) %add.ptr670.6, align 8, !dbg !254
  %add.ptr670.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.6, i32 2, !dbg !254
  store half %conv.i.i907.1.6, ptr addrspace(3) %add.ptr670.6.sroa_idx, align 2, !dbg !254
  %add.ptr670.6.sroa_idx1146 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.6, i32 4, !dbg !254
  store half %conv.i.i907.2.6, ptr addrspace(3) %add.ptr670.6.sroa_idx1146, align 4, !dbg !254
  %add.ptr670.6.sroa_idx1147 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.6, i32 6, !dbg !254
  store half %conv.i.i907.3.6, ptr addrspace(3) %add.ptr670.6.sroa_idx1147, align 2, !dbg !254
  %conv.i.i907.7 = fptrunc float %div.28 to half, !dbg !249
  %conv.i.i907.1.7 = fptrunc float %div.29 to half, !dbg !249
  %conv.i.i907.2.7 = fptrunc float %div.30 to half, !dbg !249
  %conv.i.i907.3.7 = fptrunc float %div.31 to half, !dbg !249
  %add.ptr670.7 = getelementptr inbounds i8, ptr addrspace(3) %234, i32 %add.ptr670.idx.3.pre-phi, !dbg !57
  store half %conv.i.i907.7, ptr addrspace(3) %add.ptr670.7, align 8, !dbg !254
  %add.ptr670.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.7, i32 2, !dbg !254
  store half %conv.i.i907.1.7, ptr addrspace(3) %add.ptr670.7.sroa_idx, align 2, !dbg !254
  %add.ptr670.7.sroa_idx1151 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.7, i32 4, !dbg !254
  store half %conv.i.i907.2.7, ptr addrspace(3) %add.ptr670.7.sroa_idx1151, align 4, !dbg !254
  %add.ptr670.7.sroa_idx1152 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr670.7, i32 6, !dbg !254
  store half %conv.i.i907.3.7, ptr addrspace(3) %add.ptr670.7.sroa_idx1152, align 2, !dbg !254
  fence syncscope("warp") release, !dbg !255
  tail call void @llvm.mxc.barrier.warp(), !dbg !258
  fence syncscope("warp") acquire, !dbg !259
  %235 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul690.pre-phi, !dbg !61
  %236 = getelementptr inbounds %struct.__half, ptr addrspace(3) %235, i32 %mul685.pre-phi, !dbg !61
  %237 = getelementptr inbounds i8, ptr addrspace(3) %236, i32 %.idx960.pre-phi, !dbg !61
  %add.ptr711 = getelementptr inbounds i8, ptr addrspace(3) %237, i32 %add.ptr711.idx.pre-phi, !dbg !61
  %238 = load i64, ptr addrspace(3) %add.ptr711, align 8, !dbg !260
  %add.ptr711.1 = getelementptr inbounds i8, ptr addrspace(3) %237, i32 %add.ptr711.idx.1.pre-phi, !dbg !61
  %239 = load i64, ptr addrspace(3) %add.ptr711.1, align 8, !dbg !260
  %add.ptr732 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2009, !dbg !261
  store i64 %238, ptr addrspace(1) %add.ptr732, align 16, !dbg !262
  %output_fetch.sroa.10.0.add.ptr732.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr732, i64 8, !dbg !262
  store i64 %239, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr732.sroa_idx, align 8, !dbg !262
  %240 = getelementptr inbounds i8, ptr addrspace(3) %236, i32 512, !dbg !61
  %241 = getelementptr inbounds i8, ptr addrspace(3) %240, i32 %.idx960.11105.pre-phi, !dbg !61
  %add.ptr711.11107 = getelementptr inbounds i8, ptr addrspace(3) %241, i32 %add.ptr711.idx.pre-phi, !dbg !61
  %242 = load i64, ptr addrspace(3) %add.ptr711.11107, align 8, !dbg !260
  %add.ptr711.1.1 = getelementptr inbounds i8, ptr addrspace(3) %241, i32 %add.ptr711.idx.1.pre-phi, !dbg !61
  %243 = load i64, ptr addrspace(3) %add.ptr711.1.1, align 8, !dbg !260
  %add.ptr732.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2019, !dbg !261
  store i64 %242, ptr addrspace(1) %add.ptr732.1, align 16, !dbg !262
  %output_fetch.sroa.10.0.add.ptr732.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr732.1, i64 8, !dbg !262
  store i64 %243, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr732.1.sroa_idx, align 8, !dbg !262
  %244 = getelementptr inbounds i8, ptr addrspace(3) %236, i32 1024, !dbg !61
  %245 = getelementptr inbounds i8, ptr addrspace(3) %244, i32 %.idx960.pre-phi, !dbg !61
  %add.ptr711.2 = getelementptr inbounds i8, ptr addrspace(3) %245, i32 %add.ptr711.idx.1.pre-phi, !dbg !61
  %246 = load i64, ptr addrspace(3) %add.ptr711.2, align 8, !dbg !260
  %add.ptr711.1.2 = getelementptr inbounds i8, ptr addrspace(3) %245, i32 %add.ptr711.idx.pre-phi, !dbg !61
  %247 = load i64, ptr addrspace(3) %add.ptr711.1.2, align 8, !dbg !260
  %add.ptr732.2 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2021, !dbg !261
  store i64 %246, ptr addrspace(1) %add.ptr732.2, align 16, !dbg !262
  %output_fetch.sroa.10.0.add.ptr732.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr732.2, i64 8, !dbg !262
  store i64 %247, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr732.2.sroa_idx, align 8, !dbg !262
  %248 = getelementptr inbounds i8, ptr addrspace(3) %236, i32 1536, !dbg !61
  %249 = getelementptr inbounds i8, ptr addrspace(3) %248, i32 %.idx960.11105.pre-phi, !dbg !61
  %add.ptr711.3 = getelementptr inbounds i8, ptr addrspace(3) %249, i32 %add.ptr711.idx.1.pre-phi, !dbg !61
  %250 = load i64, ptr addrspace(3) %add.ptr711.3, align 8, !dbg !260
  %add.ptr711.1.3 = getelementptr inbounds i8, ptr addrspace(3) %249, i32 %add.ptr711.idx.pre-phi, !dbg !61
  %251 = load i64, ptr addrspace(3) %add.ptr711.1.3, align 8, !dbg !260
  %add.ptr732.3 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi2023, !dbg !261
  store i64 %250, ptr addrspace(1) %add.ptr732.3, align 16, !dbg !262
  %output_fetch.sroa.10.0.add.ptr732.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr732.3, i64 8, !dbg !262
  store i64 %251, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr732.3.sroa_idx, align 8, !dbg !262
  ret void, !dbg !263
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
attributes #10 = { nomerge }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "mxcc version 1.0.0 (d9102a1572)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v076_codex_power_s1_v_hybrid_pack_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v076_codex_power_s1_v_hybrid_pack_sc-16g-2/codegen/case6.device.cpp", directory: "/root/tilelang-metax")
!42 = !DILocation(line: 78, column: 3, scope: !43, inlinedAt: !45)
!43 = distinct !DISubprogram(name: "__fetch_builtin_y", scope: !44, file: !44, line: 78, type: !7, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!44 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_builtin_vars.h", directory: "")
!45 = distinct !DILocation(line: 25, column: 38, scope: !40)
!46 = !DILocation(line: 25, column: 50, scope: !40)
!47 = !DILocation(line: 77, column: 3, scope: !48, inlinedAt: !49)
!48 = distinct !DISubprogram(name: "__fetch_builtin_x", scope: !44, file: !44, line: 77, type: !7, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!49 = distinct !DILocation(line: 25, column: 66, scope: !40)
!50 = !DILocation(line: 25, column: 58, scope: !40)
!51 = !DILocation(line: 25, column: 22, scope: !40)
!52 = !DILocation(line: 25, column: 80, scope: !40)
!53 = !DILocation(line: 27, column: 10, scope: !40)
!54 = !DILocation(line: 27, column: 26, scope: !40)
!55 = !{i32 0, i32 1024}
!56 = !DILocation(line: 184, column: 141, scope: !40)
!57 = !DILocation(line: 184, column: 22, scope: !40)
!58 = !DILocation(line: 184, column: 112, scope: !40)
!59 = !DILocation(line: 184, column: 51, scope: !40)
!60 = !DILocation(line: 188, column: 3, scope: !40)
!61 = !DILocation(line: 191, column: 65, scope: !40)
!62 = !DILocation(line: 193, column: 105, scope: !40)
!63 = !DILocation(line: 175, column: 3, scope: !40)
!64 = !DILocation(line: 29, column: 5, scope: !40)
!65 = !DILocation(line: 30, column: 45, scope: !40)
!66 = !DILocation(line: 30, column: 31, scope: !40)
!67 = !DILocation(line: 33, column: 26, scope: !40)
!68 = !DILocation(line: 33, column: 279, scope: !40)
!69 = !DILocation(line: 30, column: 126, scope: !40)
!70 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !73)
!71 = distinct !DISubprogram(name: "__barrier_warp", scope: !72, file: !72, line: 65, type: !7, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!72 = !DIFile(filename: "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h", directory: "")
!73 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !75)
!74 = distinct !DISubprogram(name: "__syncwarp", scope: !72, file: !72, line: 191, type: !7, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!75 = distinct !DILocation(line: 36, column: 5, scope: !40)
!76 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !73)
!77 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !73)
!78 = !DILocation(line: 38, column: 174, scope: !40)
!79 = !DILocation(line: 38, column: 59, scope: !40)
!80 = !DILocation(line: 38, column: 40, scope: !40)
!81 = !DILocation(line: 38, column: 145, scope: !40)
!82 = !DILocation(line: 38, column: 86, scope: !40)
!83 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !84)
!84 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !85)
!85 = distinct !DILocation(line: 40, column: 5, scope: !40)
!86 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !84)
!87 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !84)
!88 = !DILocation(line: 42, column: 10, scope: !40)
!89 = !DILocation(line: 43, column: 45, scope: !40)
!90 = !DILocation(line: 43, column: 31, scope: !40)
!91 = !DILocation(line: 46, column: 26, scope: !40)
!92 = !DILocation(line: 46, column: 293, scope: !40)
!93 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !94)
!94 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !95)
!95 = distinct !DILocation(line: 49, column: 5, scope: !40)
!96 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !94)
!97 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !94)
!98 = !DILocation(line: 58, column: 32, scope: !40)
!99 = !DILocation(line: 60, column: 44, scope: !40)
!100 = !DILocation(line: 58, column: 51, scope: !40)
!101 = !DILocation(line: 71, column: 96, scope: !40)
!102 = !DILocation(line: 71, column: 13, scope: !40)
!103 = !DILocation(line: 71, column: 85, scope: !40)
!104 = !DILocation(line: 351, column: 10, scope: !105, inlinedAt: !107)
!105 = distinct !DISubprogram(name: "max", scope: !106, file: !106, line: 350, type: !7, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!106 = !DIFile(filename: "/opt/maca/include/common/__clang_macac_math.h", directory: "")
!107 = distinct !DILocation(line: 82, column: 20, scope: !40)
!108 = !DILocation(line: 1018, column: 9, scope: !109, inlinedAt: !110)
!109 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !72, file: !72, line: 1010, type: !7, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!110 = distinct !DILocation(line: 84, column: 34, scope: !40)
!111 = !DILocation(line: 171, column: 37, scope: !112, inlinedAt: !113)
!112 = distinct !DISubprogram(name: "__lane_id", scope: !72, file: !72, line: 170, type: !7, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!113 = distinct !DILocation(line: 990, column: 14, scope: !114, inlinedAt: !115)
!114 = distinct !DISubprogram(name: "__shfl_xor_sync", scope: !72, file: !72, line: 988, type: !7, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!115 = distinct !DILocation(line: 1019, column: 11, scope: !109, inlinedAt: !110)
!116 = !DILocation(line: 171, column: 10, scope: !112, inlinedAt: !113)
!117 = !DILocation(line: 991, column: 20, scope: !114, inlinedAt: !115)
!118 = !DILocation(line: 992, column: 36, scope: !114, inlinedAt: !115)
!119 = !DILocation(line: 992, column: 17, scope: !114, inlinedAt: !115)
!120 = !DILocation(line: 992, column: 11, scope: !114, inlinedAt: !115)
!121 = !DILocation(line: 993, column: 43, scope: !114, inlinedAt: !115)
!122 = !DILocation(line: 993, column: 10, scope: !114, inlinedAt: !115)
!123 = !DILocation(line: 1020, column: 14, scope: !109, inlinedAt: !110)
!124 = !DILocation(line: 351, column: 10, scope: !105, inlinedAt: !125)
!125 = distinct !DILocation(line: 84, column: 18, scope: !40)
!126 = !DILocation(line: 1018, column: 9, scope: !109, inlinedAt: !127)
!127 = distinct !DILocation(line: 85, column: 34, scope: !40)
!128 = !DILocation(line: 171, column: 37, scope: !112, inlinedAt: !129)
!129 = distinct !DILocation(line: 990, column: 14, scope: !114, inlinedAt: !130)
!130 = distinct !DILocation(line: 1019, column: 11, scope: !109, inlinedAt: !127)
!131 = !DILocation(line: 171, column: 10, scope: !112, inlinedAt: !129)
!132 = !DILocation(line: 991, column: 20, scope: !114, inlinedAt: !130)
!133 = !DILocation(line: 992, column: 36, scope: !114, inlinedAt: !130)
!134 = !DILocation(line: 992, column: 17, scope: !114, inlinedAt: !130)
!135 = !DILocation(line: 992, column: 11, scope: !114, inlinedAt: !130)
!136 = !DILocation(line: 993, column: 43, scope: !114, inlinedAt: !130)
!137 = !DILocation(line: 993, column: 10, scope: !114, inlinedAt: !130)
!138 = !DILocation(line: 1020, column: 14, scope: !109, inlinedAt: !127)
!139 = !DILocation(line: 351, column: 10, scope: !105, inlinedAt: !140)
!140 = distinct !DILocation(line: 85, column: 18, scope: !40)
!141 = !DILocation(line: 97, column: 26, scope: !40)
!142 = !DILocation(line: 98, column: 26, scope: !40)
!143 = !DILocation(line: 99, column: 26, scope: !40)
!144 = !DILocation(line: 100, column: 26, scope: !40)
!145 = !DILocation(line: 102, column: 25, scope: !40)
!146 = !DILocation(line: 103, column: 25, scope: !40)
!147 = !DILocation(line: 104, column: 25, scope: !40)
!148 = !DILocation(line: 105, column: 25, scope: !40)
!149 = !DILocation(line: 107, column: 23, scope: !40)
!150 = !DILocation(line: 108, column: 23, scope: !40)
!151 = !DILocation(line: 109, column: 23, scope: !40)
!152 = !DILocation(line: 110, column: 23, scope: !40)
!153 = !DILocation(line: 285, column: 49, scope: !154, inlinedAt: !155)
!154 = distinct !DISubprogram(name: "exp2f", scope: !106, file: !106, line: 285, type: !7, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!155 = distinct !DILocation(line: 111, column: 15, scope: !40)
!156 = !DILocation(line: 285, column: 49, scope: !154, inlinedAt: !157)
!157 = distinct !DILocation(line: 112, column: 15, scope: !40)
!158 = !DILocation(line: 285, column: 49, scope: !154, inlinedAt: !159)
!159 = distinct !DILocation(line: 113, column: 15, scope: !40)
!160 = !DILocation(line: 285, column: 49, scope: !154, inlinedAt: !161)
!161 = distinct !DILocation(line: 114, column: 15, scope: !40)
!162 = !DILocation(line: 1007, column: 10, scope: !163, inlinedAt: !165)
!163 = distinct !DISubprogram(name: "__float2half_rn", scope: !164, file: !164, line: 1005, type: !7, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!164 = !DIFile(filename: "/opt/maca/include/common/maca_fp16.hpp", directory: "")
!165 = distinct !DILocation(line: 1077, column: 18, scope: !166, inlinedAt: !167)
!166 = distinct !DISubprogram(name: "__floats2half2_rn", scope: !164, file: !164, line: 1075, type: !7, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!167 = distinct !DILocation(line: 1295, column: 23, scope: !168, inlinedAt: !169)
!168 = distinct !DISubprogram(name: "__float22half2_rn", scope: !164, file: !164, line: 1294, type: !7, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!169 = distinct !DILocation(line: 115, column: 29, scope: !40)
!170 = !{!171, !173}
!171 = distinct !{!171, !172, !"_ZL17__floats2half2_rnff: %agg.result"}
!172 = distinct !{!172, !"_ZL17__floats2half2_rnff"}
!173 = distinct !{!173, !174, !"_ZL17__float22half2_rn6float2: %agg.result"}
!174 = distinct !{!174, !"_ZL17__float22half2_rn6float2"}
!175 = !DILocation(line: 1007, column: 10, scope: !163, inlinedAt: !176)
!176 = distinct !DILocation(line: 1077, column: 38, scope: !166, inlinedAt: !167)
!177 = !DILocation(line: 1007, column: 10, scope: !163, inlinedAt: !178)
!178 = distinct !DILocation(line: 1077, column: 18, scope: !166, inlinedAt: !179)
!179 = distinct !DILocation(line: 1295, column: 23, scope: !168, inlinedAt: !180)
!180 = distinct !DILocation(line: 116, column: 29, scope: !40)
!181 = !{!182, !184}
!182 = distinct !{!182, !183, !"_ZL17__floats2half2_rnff: %agg.result"}
!183 = distinct !{!183, !"_ZL17__floats2half2_rnff"}
!184 = distinct !{!184, !185, !"_ZL17__float22half2_rn6float2: %agg.result"}
!185 = distinct !{!185, !"_ZL17__float22half2_rn6float2"}
!186 = !DILocation(line: 1007, column: 10, scope: !163, inlinedAt: !187)
!187 = distinct !DILocation(line: 1077, column: 38, scope: !166, inlinedAt: !179)
!188 = !DILocation(line: 117, column: 51, scope: !40)
!189 = !DILocation(line: 1082, column: 16, scope: !190, inlinedAt: !191)
!190 = distinct !DISubprogram(name: "__half2float", scope: !164, file: !164, line: 1080, type: !7, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!191 = distinct !DILocation(line: 136, column: 55, scope: !192, inlinedAt: !193)
!192 = distinct !DISubprogram(name: "operator float", scope: !164, file: !164, line: 136, type: !7, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!193 = distinct !DILocation(line: 121, column: 50, scope: !40)
!194 = !DILocation(line: 121, column: 40, scope: !40)
!195 = !DILocation(line: 1018, column: 9, scope: !109, inlinedAt: !196)
!196 = distinct !DILocation(line: 123, column: 40, scope: !40)
!197 = !DILocation(line: 171, column: 37, scope: !112, inlinedAt: !198)
!198 = distinct !DILocation(line: 990, column: 14, scope: !114, inlinedAt: !199)
!199 = distinct !DILocation(line: 1019, column: 11, scope: !109, inlinedAt: !196)
!200 = !DILocation(line: 171, column: 10, scope: !112, inlinedAt: !198)
!201 = !DILocation(line: 991, column: 20, scope: !114, inlinedAt: !199)
!202 = !DILocation(line: 992, column: 36, scope: !114, inlinedAt: !199)
!203 = !DILocation(line: 992, column: 17, scope: !114, inlinedAt: !199)
!204 = !DILocation(line: 992, column: 11, scope: !114, inlinedAt: !199)
!205 = !DILocation(line: 993, column: 43, scope: !114, inlinedAt: !199)
!206 = !DILocation(line: 993, column: 10, scope: !114, inlinedAt: !199)
!207 = !DILocation(line: 1020, column: 14, scope: !109, inlinedAt: !196)
!208 = !DILocation(line: 123, column: 38, scope: !40)
!209 = !DILocation(line: 1018, column: 9, scope: !109, inlinedAt: !210)
!210 = distinct !DILocation(line: 124, column: 40, scope: !40)
!211 = !DILocation(line: 171, column: 37, scope: !112, inlinedAt: !212)
!212 = distinct !DILocation(line: 990, column: 14, scope: !114, inlinedAt: !213)
!213 = distinct !DILocation(line: 1019, column: 11, scope: !109, inlinedAt: !210)
!214 = !DILocation(line: 171, column: 10, scope: !112, inlinedAt: !212)
!215 = !DILocation(line: 991, column: 20, scope: !114, inlinedAt: !213)
!216 = !DILocation(line: 992, column: 36, scope: !114, inlinedAt: !213)
!217 = !DILocation(line: 992, column: 17, scope: !114, inlinedAt: !213)
!218 = !DILocation(line: 992, column: 11, scope: !114, inlinedAt: !213)
!219 = !DILocation(line: 993, column: 43, scope: !114, inlinedAt: !213)
!220 = !DILocation(line: 993, column: 10, scope: !114, inlinedAt: !213)
!221 = !DILocation(line: 1020, column: 14, scope: !109, inlinedAt: !210)
!222 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !223)
!223 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !224)
!224 = distinct !DILocation(line: 125, column: 5, scope: !40)
!225 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !223)
!226 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !223)
!227 = !DILocation(line: 132, column: 56, scope: !40)
!228 = !DILocation(line: 132, column: 42, scope: !40)
!229 = !DILocation(line: 139, column: 28, scope: !40)
!230 = !DILocation(line: 139, column: 285, scope: !40)
!231 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !232)
!232 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !233)
!233 = distinct !DILocation(line: 143, column: 5, scope: !40)
!234 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !232)
!235 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !232)
!236 = !DILocation(line: 155, column: 144, scope: !40)
!237 = !DILocation(line: 155, column: 67, scope: !40)
!238 = !DILocation(line: 155, column: 48, scope: !40)
!239 = !DILocation(line: 160, column: 64, scope: !40)
!240 = !DILocation(line: 124, column: 38, scope: !40)
!241 = !DILocation(line: 0, scope: !40)
!242 = !DILocation(line: 176, column: 23, scope: !40)
!243 = !DILocation(line: 176, column: 38, scope: !40)
!244 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !245)
!245 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !246)
!246 = distinct !DILocation(line: 178, column: 3, scope: !40)
!247 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !245)
!248 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !245)
!249 = !DILocation(line: 984, column: 21, scope: !250, inlinedAt: !251)
!250 = distinct !DISubprogram(name: "__float2half", scope: !164, file: !164, line: 979, type: !7, scopeLine: 979, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!251 = distinct !DILocation(line: 133, column: 53, scope: !252, inlinedAt: !253)
!252 = distinct !DISubprogram(name: "__half", scope: !164, file: !164, line: 133, type: !7, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!253 = distinct !DILocation(line: 182, column: 39, scope: !40)
!254 = !DILocation(line: 184, column: 274, scope: !40)
!255 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !256)
!256 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !257)
!257 = distinct !DILocation(line: 186, column: 3, scope: !40)
!258 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !256)
!259 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !256)
!260 = !DILocation(line: 191, column: 46, scope: !40)
!261 = !DILocation(line: 193, column: 22, scope: !40)
!262 = !DILocation(line: 193, column: 134, scope: !40)
!263 = !DILocation(line: 195, column: 1, scope: !40)
