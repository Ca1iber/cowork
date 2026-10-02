; ModuleID = '/root/tilelang-metax/race_tests/nsa/rep/v131_worker1_c6_bounded_kv_index_sc-16g-2/codegen/candidate131/case6.device.cpp'
source_filename = "/root/tilelang-metax/race_tests/nsa/rep/v131_worker1_c6_bounded_kv_index_sc-16g-2/codegen/candidate131/case6.device.cpp"
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
  br i1 %or.cond, label %for.body593.preheader, label %for.cond.preheader, !dbg !54

for.body593.preheader:                            ; preds = %entry
  %.pre = tail call noundef range(i32 0, 1024) i32 @llvm.mxc.thread.id.x(), !range !55
  %.pre1949 = shl nuw nsw i32 %.pre, 6
  %.pre1950 = and i32 %.pre1949, 960
  %.pre1951 = lshr i32 %.pre, 5
  %.pre1952 = and i32 %.pre, 7
  %.pre1953 = lshr i32 %.pre, 4
  %.pre1954 = lshr i32 %.pre, 3
  %.pre1955 = xor i32 %.pre1953, %.pre1954
  %.pre1956 = and i32 %.pre1955, 1
  %.pre1957 = xor i32 %.pre1951, %.pre1952, !dbg !56
  %.pre1958 = shl nuw nsw i32 %.pre1956, 3, !dbg !57
  %.pre1959 = shl nuw nsw i32 %.pre1957, 4, !dbg !57
  %.pre1960 = add nuw nsw i32 %.pre1951, 2, !dbg !58
  %.pre1961 = xor i32 %.pre1960, %.pre1952, !dbg !56
  %.pre1962 = shl nuw nsw i32 %.pre1961, 4, !dbg !57
  %.pre1963 = add nuw nsw i32 %.pre1951, 4, !dbg !58
  %.pre1964 = xor i32 %.pre1963, %.pre1952, !dbg !56
  %.pre1965 = shl nuw nsw i32 %.pre1964, 4, !dbg !57
  %.pre1966 = add nuw nsw i32 %.pre1951, 6, !dbg !58
  %.pre1967 = xor i32 %.pre1966, %.pre1952, !dbg !56
  %.pre1968 = shl nuw nsw i32 %.pre1967, 4, !dbg !57
  %.pre1969 = or disjoint i32 %.pre1950, 1024, !dbg !59
  %.pre1970 = shl nuw nsw i32 %.pre1956, 3, !dbg !57
  %.pre1971 = xor i32 %.pre1970, 8, !dbg !57
  %.pre1972 = shl nuw nsw i32 %.pre, 7
  %.pre1974 = and i32 %.pre1972, 1024
  %.pre1975 = shl nuw nsw i32 %.pre, 2
  %.pre1977 = and i32 %.pre1975, 4032
  %.pre1978 = and i32 %.pre1954, 1
  %.pre1979 = shl nsw i32 %0, 21
  %.pre1980 = shl nsw i32 %1, 11
  %.pre1981 = add nuw nsw i32 %.pre1979, %.pre1980
  %.pre1982 = shl nuw nsw i32 %.pre, 3
  %.pre1983 = add nuw nsw i32 %.pre1981, %.pre1982
  %.pre1984 = zext nneg i32 %.pre1983 to i64, !dbg !60
  %.pre1986 = xor i32 %.pre1953, %.pre1952
  %.pre1987 = shl nuw nsw i32 %.pre1986, 4, !dbg !61
  %.pre1988 = shl nuw nsw i32 %.pre1978, 3, !dbg !61
  %.pre1989 = shl nuw nsw i32 %.pre1978, 3, !dbg !61
  %.pre1990 = xor i32 %.pre1989, 8, !dbg !61
  %.pre1991 = add nuw nsw i32 %.pre1953, 4
  %.pre1992 = xor i32 %.pre1991, %.pre1952
  %.pre1993 = shl nuw nsw i32 %.pre1992, 4, !dbg !61
  %.pre1994 = add nuw nsw i64 %.pre1984, 512, !dbg !62
  %.pre1996 = add nuw nsw i64 %.pre1984, 1024, !dbg !62
  %.pre1998 = add nuw nsw i64 %.pre1984, 1536, !dbg !62
  br label %if.end603, !dbg !63

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
  %.idx941 = shl nuw nsw i32 %xor, 4, !dbg !67
  %9 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 %.idx941, !dbg !67
  %add.ptr57.idx = shl nuw nsw i32 %shr52, 3, !dbg !67
  %add.ptr57 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 %add.ptr57.idx, !dbg !67
  store i64 %qk_fetch.sroa.0.0.copyload, ptr addrspace(3) %add.ptr57, align 8, !dbg !68
  %xor53.1 = shl nuw nsw i32 %shr52, 3, !dbg !67
  %add.ptr57.idx.1 = xor i32 %xor53.1, 8, !dbg !67
  %add.ptr57.1 = getelementptr inbounds i8, ptr addrspace(3) %9, i32 %add.ptr57.idx.1, !dbg !67
  store i64 %qk_fetch.sroa.26.0.copyload, ptr addrspace(3) %add.ptr57.1, align 8, !dbg !68
  %10 = add nuw nsw i64 %6, 512, !dbg !69
  %add.ptr.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %10, !dbg !65
  %qk_fetch.sroa.0.0.copyload1917 = load i64, ptr addrspace(4) %add.ptr.1, align 16, !dbg !66
  %qk_fetch.sroa.26.0.add.ptr.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.1, i64 8, !dbg !66
  %qk_fetch.sroa.26.0.copyload1928 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.1.sroa_idx, align 8, !dbg !66
  %add45.1 = add nuw nsw i32 %shr44, 4
  %xor.1 = xor i32 %add45.1, %and40
  %11 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 512, !dbg !67
  %.idx941.1958 = shl nuw nsw i32 %xor.1, 4, !dbg !67
  %12 = getelementptr inbounds i8, ptr addrspace(3) %11, i32 %.idx941.1958, !dbg !67
  %add.ptr57.1960 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 %add.ptr57.idx, !dbg !67
  store i64 %qk_fetch.sroa.0.0.copyload1917, ptr addrspace(3) %add.ptr57.1960, align 8, !dbg !68
  %add.ptr57.1.1 = getelementptr inbounds i8, ptr addrspace(3) %12, i32 %add.ptr57.idx.1, !dbg !67
  store i64 %qk_fetch.sroa.26.0.copyload1928, ptr addrspace(3) %add.ptr57.1.1, align 8, !dbg !68
  %13 = add nuw nsw i64 %6, 1024, !dbg !69
  %add.ptr.2 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %13, !dbg !65
  %qk_fetch.sroa.0.0.copyload1918 = load i64, ptr addrspace(4) %add.ptr.2, align 16, !dbg !66
  %qk_fetch.sroa.26.0.add.ptr.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.2, i64 8, !dbg !66
  %qk_fetch.sroa.26.0.copyload1929 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.2.sroa_idx, align 8, !dbg !66
  %14 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 1024, !dbg !67
  %15 = getelementptr inbounds i8, ptr addrspace(3) %14, i32 %.idx941, !dbg !67
  %add.ptr57.2 = getelementptr inbounds i8, ptr addrspace(3) %15, i32 %add.ptr57.idx.1, !dbg !67
  store i64 %qk_fetch.sroa.0.0.copyload1918, ptr addrspace(3) %add.ptr57.2, align 8, !dbg !68
  %add.ptr57.1.2 = getelementptr inbounds i8, ptr addrspace(3) %15, i32 %add.ptr57.idx, !dbg !67
  store i64 %qk_fetch.sroa.26.0.copyload1929, ptr addrspace(3) %add.ptr57.1.2, align 8, !dbg !68
  %16 = add nuw nsw i64 %6, 1536, !dbg !69
  %add.ptr.3 = getelementptr inbounds %struct.__half, ptr addrspace(4) %Q.coerce, i64 %16, !dbg !65
  %qk_fetch.sroa.0.0.copyload1919 = load i64, ptr addrspace(4) %add.ptr.3, align 16, !dbg !66
  %qk_fetch.sroa.26.0.add.ptr.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr.3, i64 8, !dbg !66
  %qk_fetch.sroa.26.0.copyload1930 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr.3.sroa_idx, align 8, !dbg !66
  %17 = getelementptr inbounds i8, ptr addrspace(3) %8, i32 1536, !dbg !67
  %18 = getelementptr inbounds i8, ptr addrspace(3) %17, i32 %.idx941.1958, !dbg !67
  %add.ptr57.3 = getelementptr inbounds i8, ptr addrspace(3) %18, i32 %add.ptr57.idx.1, !dbg !67
  store i64 %qk_fetch.sroa.0.0.copyload1919, ptr addrspace(3) %add.ptr57.3, align 8, !dbg !68
  %add.ptr57.1.3 = getelementptr inbounds i8, ptr addrspace(3) %18, i32 %add.ptr57.idx, !dbg !67
  store i64 %qk_fetch.sroa.26.0.copyload1930, ptr addrspace(3) %add.ptr57.1.3, align 8, !dbg !68
  fence syncscope("warp") release, !dbg !70
  tail call void @llvm.mxc.barrier.warp(), !dbg !76
  fence syncscope("warp") acquire, !dbg !77
  %and68 = shl nuw nsw i32 %3, 6
  %mul69 = and i32 %and68, 960
  %shr74 = lshr i32 %3, 5
  %shr83868 = xor i32 %shr44, %and51
  %xor87 = and i32 %shr83868, 1
  %xor78 = xor i32 %shr74, %and40, !dbg !78
  %19 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul69, !dbg !79
  %.idx942 = shl nuw nsw i32 %xor87, 3, !dbg !79
  %20 = getelementptr inbounds i8, ptr addrspace(3) %19, i32 %.idx942, !dbg !79
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
  %.idx942.4 = xor i32 %xor89.4, 8, !dbg !79
  %26 = getelementptr inbounds i8, ptr addrspace(3) %25, i32 %.idx942.4, !dbg !79
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
  %mul106 = shl nsw i32 %0, 17
  %cond.i.i = tail call noundef range(i32 0, 993) i32 @llvm.smin.i32(i32 %mul7, i32 992)
  %mul110 = shl nuw nsw i32 %cond.i.i, 7
  %add111 = or disjoint i32 %mul20, %mul106
  %add108 = add nuw nsw i32 %add111, %mul110
  %31 = and i32 %3, 8
  %32 = zext nneg i32 %add108 to i64, !dbg !88
  %add.ptr116 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %32, !dbg !89
  %qk_fetch.sroa.0.0.copyload1916 = load i64, ptr addrspace(4) %add.ptr116, align 16, !dbg !90
  %qk_fetch.sroa.26.0.add.ptr116.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr116, i64 8, !dbg !90
  %qk_fetch.sroa.26.0.copyload1927 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr116.sroa_idx, align 8, !dbg !90
  %33 = shl nuw nsw i32 %31, 9, !dbg !91
  %34 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %33, !dbg !91
  %35 = getelementptr inbounds %struct.__half, ptr addrspace(3) %34, i32 %mul37, !dbg !91
  %36 = getelementptr inbounds i8, ptr addrspace(3) %35, i32 %.idx941, !dbg !91
  %add.ptr157 = getelementptr inbounds i8, ptr addrspace(3) %36, i32 %add.ptr57.idx, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload1916, ptr addrspace(3) %add.ptr157, align 8, !dbg !92
  %add.ptr157.1 = getelementptr inbounds i8, ptr addrspace(3) %36, i32 %add.ptr57.idx.1, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload1927, ptr addrspace(3) %add.ptr157.1, align 8, !dbg !92
  %37 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %32, !dbg !89
  %add.ptr116.1 = getelementptr inbounds i8, ptr addrspace(4) %37, i64 1024, !dbg !89
  %qk_fetch.sroa.0.0.copyload1920 = load i64, ptr addrspace(4) %add.ptr116.1, align 16, !dbg !90
  %qk_fetch.sroa.26.0.add.ptr116.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %37, i64 1032, !dbg !90
  %qk_fetch.sroa.26.0.copyload1931 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr116.1.sroa_idx, align 8, !dbg !90
  %38 = shl nuw nsw i32 %31, 9, !dbg !91
  %39 = or disjoint i32 %38, 512, !dbg !91
  %40 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %39, !dbg !91
  %41 = getelementptr inbounds %struct.__half, ptr addrspace(3) %40, i32 %mul37, !dbg !91
  %42 = getelementptr inbounds i8, ptr addrspace(3) %41, i32 %.idx941.1958, !dbg !91
  %add.ptr157.1969 = getelementptr inbounds i8, ptr addrspace(3) %42, i32 %add.ptr57.idx, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload1920, ptr addrspace(3) %add.ptr157.1969, align 8, !dbg !92
  %add.ptr157.1.1 = getelementptr inbounds i8, ptr addrspace(3) %42, i32 %add.ptr57.idx.1, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload1931, ptr addrspace(3) %add.ptr157.1.1, align 8, !dbg !92
  %43 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %32, !dbg !89
  %add.ptr116.2 = getelementptr inbounds i8, ptr addrspace(4) %43, i64 2048, !dbg !89
  %qk_fetch.sroa.0.0.copyload1921 = load i64, ptr addrspace(4) %add.ptr116.2, align 16, !dbg !90
  %qk_fetch.sroa.26.0.add.ptr116.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %43, i64 2056, !dbg !90
  %qk_fetch.sroa.26.0.copyload1932 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr116.2.sroa_idx, align 8, !dbg !90
  %shr148867.2 = and i32 %and51, 1
  %44 = shl nuw nsw i32 %31, 9, !dbg !91
  %45 = or disjoint i32 %44, 1024, !dbg !91
  %46 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %45, !dbg !91
  %47 = getelementptr inbounds %struct.__half, ptr addrspace(3) %46, i32 %mul37, !dbg !91
  %48 = getelementptr inbounds i8, ptr addrspace(3) %47, i32 %.idx941, !dbg !91
  %49 = shl nuw nsw i32 %shr148867.2, 3, !dbg !91
  %add.ptr157.idx.2 = xor i32 %49, 8, !dbg !91
  %add.ptr157.2 = getelementptr inbounds i8, ptr addrspace(3) %48, i32 %add.ptr157.idx.2, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload1921, ptr addrspace(3) %add.ptr157.2, align 8, !dbg !92
  %add.ptr157.idx.1.2 = shl nuw nsw i32 %shr148867.2, 3, !dbg !91
  %add.ptr157.1.2 = getelementptr inbounds i8, ptr addrspace(3) %48, i32 %add.ptr157.idx.1.2, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload1932, ptr addrspace(3) %add.ptr157.1.2, align 8, !dbg !92
  %50 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %32, !dbg !89
  %add.ptr116.3 = getelementptr inbounds i8, ptr addrspace(4) %50, i64 3072, !dbg !89
  %qk_fetch.sroa.0.0.copyload1922 = load i64, ptr addrspace(4) %add.ptr116.3, align 16, !dbg !90
  %qk_fetch.sroa.26.0.add.ptr116.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %50, i64 3080, !dbg !90
  %qk_fetch.sroa.26.0.copyload1933 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr116.3.sroa_idx, align 8, !dbg !90
  %51 = shl nuw nsw i32 %31, 9, !dbg !91
  %52 = or disjoint i32 %51, 1536, !dbg !91
  %53 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %52, !dbg !91
  %54 = getelementptr inbounds %struct.__half, ptr addrspace(3) %53, i32 %mul37, !dbg !91
  %55 = getelementptr inbounds i8, ptr addrspace(3) %54, i32 %.idx941.1958, !dbg !91
  %add.ptr157.3 = getelementptr inbounds i8, ptr addrspace(3) %55, i32 %add.ptr157.idx.2, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload1922, ptr addrspace(3) %add.ptr157.3, align 8, !dbg !92
  %add.ptr157.1.3 = getelementptr inbounds i8, ptr addrspace(3) %55, i32 %add.ptr157.idx.1.2, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload1933, ptr addrspace(3) %add.ptr157.1.3, align 8, !dbg !92
  %56 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %32, !dbg !89
  %add.ptr116.4 = getelementptr inbounds i8, ptr addrspace(4) %56, i64 4096, !dbg !89
  %qk_fetch.sroa.0.0.copyload1923 = load i64, ptr addrspace(4) %add.ptr116.4, align 16, !dbg !90
  %qk_fetch.sroa.26.0.add.ptr116.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %56, i64 4104, !dbg !90
  %qk_fetch.sroa.26.0.copyload1934 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr116.4.sroa_idx, align 8, !dbg !90
  %57 = and i32 %and51, 1
  %58 = shl nuw nsw i32 %31, 9, !dbg !91
  %59 = or disjoint i32 %58, 2048, !dbg !91
  %60 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %59, !dbg !91
  %61 = getelementptr inbounds %struct.__half, ptr addrspace(3) %60, i32 %mul37, !dbg !91
  %62 = getelementptr inbounds i8, ptr addrspace(3) %61, i32 %.idx941, !dbg !91
  %add.ptr157.idx.4 = shl nuw nsw i32 %57, 3, !dbg !91
  %add.ptr157.4 = getelementptr inbounds i8, ptr addrspace(3) %62, i32 %add.ptr157.idx.4, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload1923, ptr addrspace(3) %add.ptr157.4, align 8, !dbg !92
  %xor153.1.4 = shl nuw nsw i32 %57, 3, !dbg !91
  %add.ptr157.idx.1.4 = xor i32 %xor153.1.4, 8, !dbg !91
  %add.ptr157.1.4 = getelementptr inbounds i8, ptr addrspace(3) %62, i32 %add.ptr157.idx.1.4, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload1934, ptr addrspace(3) %add.ptr157.1.4, align 8, !dbg !92
  %63 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %32, !dbg !89
  %add.ptr116.5 = getelementptr inbounds i8, ptr addrspace(4) %63, i64 5120, !dbg !89
  %qk_fetch.sroa.0.0.copyload1924 = load i64, ptr addrspace(4) %add.ptr116.5, align 16, !dbg !90
  %qk_fetch.sroa.26.0.add.ptr116.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %63, i64 5128, !dbg !90
  %qk_fetch.sroa.26.0.copyload1935 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr116.5.sroa_idx, align 8, !dbg !90
  %64 = shl nuw nsw i32 %31, 9, !dbg !91
  %65 = or disjoint i32 %64, 2560, !dbg !91
  %66 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %65, !dbg !91
  %67 = getelementptr inbounds %struct.__half, ptr addrspace(3) %66, i32 %mul37, !dbg !91
  %68 = getelementptr inbounds i8, ptr addrspace(3) %67, i32 %.idx941.1958, !dbg !91
  %add.ptr157.5 = getelementptr inbounds i8, ptr addrspace(3) %68, i32 %add.ptr157.idx.4, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload1924, ptr addrspace(3) %add.ptr157.5, align 8, !dbg !92
  %add.ptr157.1.5 = getelementptr inbounds i8, ptr addrspace(3) %68, i32 %add.ptr157.idx.1.4, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload1935, ptr addrspace(3) %add.ptr157.1.5, align 8, !dbg !92
  %69 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %32, !dbg !89
  %add.ptr116.6 = getelementptr inbounds i8, ptr addrspace(4) %69, i64 6144, !dbg !89
  %qk_fetch.sroa.0.0.copyload1925 = load i64, ptr addrspace(4) %add.ptr116.6, align 16, !dbg !90
  %qk_fetch.sroa.26.0.add.ptr116.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %69, i64 6152, !dbg !90
  %qk_fetch.sroa.26.0.copyload1936 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr116.6.sroa_idx, align 8, !dbg !90
  %shr148867.6 = and i32 %and51, 1
  %70 = shl nuw nsw i32 %31, 9, !dbg !91
  %71 = or disjoint i32 %70, 3072, !dbg !91
  %72 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %71, !dbg !91
  %73 = getelementptr inbounds %struct.__half, ptr addrspace(3) %72, i32 %mul37, !dbg !91
  %74 = getelementptr inbounds i8, ptr addrspace(3) %73, i32 %.idx941, !dbg !91
  %75 = shl nuw nsw i32 %shr148867.6, 3, !dbg !91
  %add.ptr157.idx.6 = xor i32 %75, 8, !dbg !91
  %add.ptr157.6 = getelementptr inbounds i8, ptr addrspace(3) %74, i32 %add.ptr157.idx.6, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload1925, ptr addrspace(3) %add.ptr157.6, align 8, !dbg !92
  %add.ptr157.idx.1.6 = shl nuw nsw i32 %shr148867.6, 3, !dbg !91
  %add.ptr157.1.6 = getelementptr inbounds i8, ptr addrspace(3) %74, i32 %add.ptr157.idx.1.6, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload1936, ptr addrspace(3) %add.ptr157.1.6, align 8, !dbg !92
  %76 = getelementptr inbounds %struct.__half, ptr addrspace(4) %K.coerce, i64 %32, !dbg !89
  %add.ptr116.7 = getelementptr inbounds i8, ptr addrspace(4) %76, i64 7168, !dbg !89
  %qk_fetch.sroa.0.0.copyload1926 = load i64, ptr addrspace(4) %add.ptr116.7, align 16, !dbg !90
  %qk_fetch.sroa.26.0.add.ptr116.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %76, i64 7176, !dbg !90
  %qk_fetch.sroa.26.0.copyload1937 = load i64, ptr addrspace(4) %qk_fetch.sroa.26.0.add.ptr116.7.sroa_idx, align 8, !dbg !90
  %77 = shl nuw nsw i32 %31, 9, !dbg !91
  %78 = or disjoint i32 %77, 3584, !dbg !91
  %79 = getelementptr inbounds i8, ptr addrspace(3) @shared, i32 %78, !dbg !91
  %80 = getelementptr inbounds %struct.__half, ptr addrspace(3) %79, i32 %mul37, !dbg !91
  %81 = getelementptr inbounds i8, ptr addrspace(3) %80, i32 %.idx941.1958, !dbg !91
  %add.ptr157.7 = getelementptr inbounds i8, ptr addrspace(3) %81, i32 %add.ptr157.idx.6, !dbg !91
  store i64 %qk_fetch.sroa.0.0.copyload1926, ptr addrspace(3) %add.ptr157.7, align 8, !dbg !92
  %add.ptr157.1.7 = getelementptr inbounds i8, ptr addrspace(3) %81, i32 %add.ptr157.idx.1.6, !dbg !91
  store i64 %qk_fetch.sroa.26.0.copyload1937, ptr addrspace(3) %add.ptr157.1.7, align 8, !dbg !92
  fence syncscope("warp") release, !dbg !93
  tail call void @llvm.mxc.barrier.warp(), !dbg !96
  fence syncscope("warp") acquire, !dbg !97
  %k_local.sroa.0.0.copyload = load <4 x half>, ptr addrspace(3) %add.ptr93, align 8, !dbg !98
  %82 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload, <4 x half> %21, <4 x float> zeroinitializer), !dbg !99
  %add.ptr214.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1 = load <4 x half>, ptr addrspace(3) %add.ptr214.1, align 8, !dbg !98
  %83 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1, <4 x half> %21, <4 x float> zeroinitializer), !dbg !99
  %k_local.sroa.0.0.copyload.1972 = load <4 x half>, ptr addrspace(3) %add.ptr93.1, align 8, !dbg !98
  %84 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1972, <4 x half> %22, <4 x float> %82), !dbg !99
  %add.ptr214.1.1 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93.1, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1.1 = load <4 x half>, ptr addrspace(3) %add.ptr214.1.1, align 8, !dbg !98
  %85 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.1, <4 x half> %22, <4 x float> %83), !dbg !99
  %k_local.sroa.0.0.copyload.2 = load <4 x half>, ptr addrspace(3) %add.ptr93.2, align 8, !dbg !98
  %86 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.2, <4 x half> %23, <4 x float> %84), !dbg !99
  %add.ptr214.1.2 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93.2, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1.2 = load <4 x half>, ptr addrspace(3) %add.ptr214.1.2, align 8, !dbg !98
  %87 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.2, <4 x half> %23, <4 x float> %85), !dbg !99
  %k_local.sroa.0.0.copyload.3 = load <4 x half>, ptr addrspace(3) %add.ptr93.3, align 8, !dbg !98
  %88 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.3, <4 x half> %24, <4 x float> %86), !dbg !99
  %add.ptr214.1.3 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr93.3, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1.3 = load <4 x half>, ptr addrspace(3) %add.ptr214.1.3, align 8, !dbg !98
  %89 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.3, <4 x half> %24, <4 x float> %87), !dbg !99
  %add191.4 = or disjoint i32 %mul69, 2048
  %90 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add191.4, !dbg !100
  %91 = getelementptr inbounds i8, ptr addrspace(3) %90, i32 %.idx942.4, !dbg !100
  %92 = getelementptr inbounds i8, ptr addrspace(3) %91, i32 %add.ptr93.idx, !dbg !100
  %k_local.sroa.0.0.copyload.4 = load <4 x half>, ptr addrspace(3) %92, align 8, !dbg !98
  %93 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.4, <4 x half> %27, <4 x float> %88), !dbg !99
  %add.ptr214.1.4 = getelementptr inbounds i8, ptr addrspace(3) %92, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1.4 = load <4 x half>, ptr addrspace(3) %add.ptr214.1.4, align 8, !dbg !98
  %94 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.4, <4 x half> %27, <4 x float> %89), !dbg !99
  %95 = getelementptr inbounds i8, ptr addrspace(3) %91, i32 %add.ptr93.idx.1, !dbg !100
  %k_local.sroa.0.0.copyload.5 = load <4 x half>, ptr addrspace(3) %95, align 8, !dbg !98
  %96 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.5, <4 x half> %28, <4 x float> %93), !dbg !99
  %add.ptr214.1.5 = getelementptr inbounds i8, ptr addrspace(3) %95, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1.5 = load <4 x half>, ptr addrspace(3) %add.ptr214.1.5, align 8, !dbg !98
  %97 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.5, <4 x half> %28, <4 x float> %94), !dbg !99
  %98 = getelementptr inbounds i8, ptr addrspace(3) %91, i32 %add.ptr93.idx.2, !dbg !100
  %k_local.sroa.0.0.copyload.6 = load <4 x half>, ptr addrspace(3) %98, align 8, !dbg !98
  %99 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.6, <4 x half> %29, <4 x float> %96), !dbg !99
  %add.ptr214.1.6 = getelementptr inbounds i8, ptr addrspace(3) %98, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1.6 = load <4 x half>, ptr addrspace(3) %add.ptr214.1.6, align 8, !dbg !98
  %100 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.6, <4 x half> %29, <4 x float> %97), !dbg !99
  %101 = getelementptr inbounds i8, ptr addrspace(3) %91, i32 %add.ptr93.idx.3, !dbg !100
  %k_local.sroa.0.0.copyload.7 = load <4 x half>, ptr addrspace(3) %101, align 8, !dbg !98
  %102 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.7, <4 x half> %30, <4 x float> %99), !dbg !99
  %add.ptr214.1.7 = getelementptr inbounds i8, ptr addrspace(3) %101, i32 2048, !dbg !100
  %k_local.sroa.0.0.copyload.1.7 = load <4 x half>, ptr addrspace(3) %add.ptr214.1.7, align 8, !dbg !98
  %103 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %k_local.sroa.0.0.copyload.1.7, <4 x half> %30, <4 x float> %100), !dbg !99
  %104 = lshr i32 %3, 2
  %mul245 = and i32 %104, 252
  %add246 = add nuw nsw i32 %mul7, %mul245
  %cmp250.not = icmp sgt i32 %add246, %1, !dbg !101
  %scores.sroa.0.0.vec.extract = extractelement <4 x float> %102, i64 0
  %spec.select = select i1 %cmp250.not, float 0xFFF0000000000000, float %scores.sroa.0.0.vec.extract, !dbg !102
  %cmp250.not.1.not = icmp slt i32 %add246, %1, !dbg !101
  %scores.sroa.0.4.vec.extract = extractelement <4 x float> %102, i64 1, !dbg !102
  %condval.0.1 = select i1 %cmp250.not.1.not, float %scores.sroa.0.4.vec.extract, float 0xFFF0000000000000, !dbg !102
  %add248.2 = or disjoint i32 %add246, 2, !dbg !103
  %cmp250.not.2 = icmp sgt i32 %add248.2, %1, !dbg !101
  %scores.sroa.0.8.vec.extract = extractelement <4 x float> %102, i64 2, !dbg !102
  %condval.0.2 = select i1 %cmp250.not.2, float 0xFFF0000000000000, float %scores.sroa.0.8.vec.extract, !dbg !102
  %add248.3 = or disjoint i32 %add246, 3, !dbg !103
  %cmp250.not.3 = icmp sgt i32 %add248.3, %1, !dbg !101
  %scores.sroa.0.12.vec.extract = extractelement <4 x float> %102, i64 3, !dbg !102
  %condval.0.3 = select i1 %cmp250.not.3, float 0xFFF0000000000000, float %scores.sroa.0.12.vec.extract, !dbg !102
  %add247.1 = add nuw nsw i32 %add246, 16
  %cmp250.not.1973 = icmp sgt i32 %add247.1, %1, !dbg !101
  %scores.sroa.38.16.vec.extract = extractelement <4 x float> %103, i64 0, !dbg !102
  %condval.0.1976 = select i1 %cmp250.not.1973, float 0xFFF0000000000000, float %scores.sroa.38.16.vec.extract, !dbg !102
  %add248.1.1 = add nuw nsw i32 %add246, 17, !dbg !103
  %cmp250.not.1.1 = icmp sgt i32 %add248.1.1, %1, !dbg !101
  %scores.sroa.38.20.vec.extract = extractelement <4 x float> %103, i64 1, !dbg !102
  %condval.0.1.1 = select i1 %cmp250.not.1.1, float 0xFFF0000000000000, float %scores.sroa.38.20.vec.extract, !dbg !102
  %add248.2.1 = add nuw nsw i32 %add246, 18, !dbg !103
  %cmp250.not.2.1 = icmp sgt i32 %add248.2.1, %1, !dbg !101
  %scores.sroa.38.24.vec.extract = extractelement <4 x float> %103, i64 2, !dbg !102
  %condval.0.2.1 = select i1 %cmp250.not.2.1, float 0xFFF0000000000000, float %scores.sroa.38.24.vec.extract, !dbg !102
  %add248.3.1 = add nuw nsw i32 %add246, 19, !dbg !103
  %cmp250.not.3.1 = icmp sgt i32 %add248.3.1, %1, !dbg !101
  %scores.sroa.38.28.vec.extract = extractelement <4 x float> %103, i64 3, !dbg !102
  %condval.0.3.1 = select i1 %cmp250.not.3.1, float 0xFFF0000000000000, float %scores.sroa.38.28.vec.extract, !dbg !102
  %105 = tail call contract noundef float @llvm.maxnum.f32(float %spec.select, float 0xFFF0000000000000), !dbg !104
  %106 = tail call contract noundef float @llvm.maxnum.f32(float %105, float %condval.0.1), !dbg !104
  %107 = tail call contract noundef float @llvm.maxnum.f32(float %106, float %condval.0.2), !dbg !104
  %108 = tail call contract noundef float @llvm.maxnum.f32(float %107, float %condval.0.3), !dbg !104
  %109 = tail call contract noundef float @llvm.maxnum.f32(float %108, float %condval.0.1976), !dbg !104
  %110 = tail call contract noundef float @llvm.maxnum.f32(float %109, float %condval.0.1.1), !dbg !104
  %111 = tail call contract noundef float @llvm.maxnum.f32(float %110, float %condval.0.2.1), !dbg !104
  %112 = tail call contract noundef float @llvm.maxnum.f32(float %111, float %condval.0.3.1), !dbg !104
  %113 = bitcast float %112 to i32, !dbg !108
  %114 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !111
  %115 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %114) #10, !dbg !116
  %xor.i.i = xor i32 %115, 32, !dbg !117
  %116 = and i32 %115, -64, !dbg !118
  %and.i.i = add nsw i32 %116, 64, !dbg !118
  %cmp.not.i.i = icmp slt i32 %xor.i.i, %and.i.i, !dbg !119
  %cond.i.i869 = select i1 %cmp.not.i.i, i32 %xor.i.i, i32 %115, !dbg !120
  %shl.i.i = shl i32 %cond.i.i869, 2, !dbg !121
  %117 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i, i32 %113), !dbg !122
  %118 = bitcast i32 %117 to float, !dbg !123
  %119 = tail call contract noundef float @llvm.maxnum.f32(float %112, float %118), !dbg !124
  %120 = bitcast float %119 to i32, !dbg !126
  %121 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !128
  %122 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %121) #10, !dbg !131
  %xor.i.i870 = xor i32 %122, 16, !dbg !132
  %123 = and i32 %122, -64, !dbg !133
  %and.i.i871 = add nsw i32 %123, 64, !dbg !133
  %cmp.not.i.i872 = icmp slt i32 %xor.i.i870, %and.i.i871, !dbg !134
  %cond.i.i873 = select i1 %cmp.not.i.i872, i32 %xor.i.i870, i32 %122, !dbg !135
  %shl.i.i874 = shl i32 %cond.i.i873, 2, !dbg !136
  %124 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i874, i32 %120), !dbg !137
  %125 = bitcast i32 %124 to float, !dbg !138
  %126 = tail call contract noundef float @llvm.maxnum.f32(float %119, float %125), !dbg !139
  %sub = fsub contract float %spec.select, %126, !dbg !141
  %sub308 = fsub contract float %condval.0.1, %126, !dbg !142
  %sub311 = fsub contract float %condval.0.2, %126, !dbg !143
  %sub314 = fsub contract float %condval.0.3, %126, !dbg !144
  %mul319 = fmul contract float %sub, 0x3FC0527DC0000000, !dbg !145
  %mul323 = fmul contract float %sub308, 0x3FC0527DC0000000, !dbg !146
  %mul327 = fmul contract float %sub311, 0x3FC0527DC0000000, !dbg !147
  %mul331 = fmul contract float %sub314, 0x3FC0527DC0000000, !dbg !148
  %add336 = fadd contract float %mul319, 8.000000e+00, !dbg !149
  %add340 = fadd contract float %mul323, 8.000000e+00, !dbg !150
  %add344 = fadd contract float %mul327, 8.000000e+00, !dbg !151
  %add348 = fadd contract float %mul331, 8.000000e+00, !dbg !152
  %cmp.i.i = fcmp contract olt float %add336, -1.260000e+02, !dbg !153
  %cond.i.i875 = select contract i1 %cmp.i.i, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i = fadd contract float %add336, %cond.i.i875, !dbg !153
  %127 = tail call contract float @llvm.exp2.f32(float %add.i.i), !dbg !153
  %cond2.i.i = select contract i1 %cmp.i.i, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i = fmul contract float %cond2.i.i, %127, !dbg !153
  %cmp.i.i876 = fcmp contract olt float %add340, -1.260000e+02, !dbg !156
  %cond.i.i877 = select contract i1 %cmp.i.i876, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i878 = fadd contract float %add340, %cond.i.i877, !dbg !156
  %128 = tail call contract float @llvm.exp2.f32(float %add.i.i878), !dbg !156
  %cond2.i.i879 = select contract i1 %cmp.i.i876, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i880 = fmul contract float %cond2.i.i879, %128, !dbg !156
  %cmp.i.i881 = fcmp contract olt float %add344, -1.260000e+02, !dbg !158
  %cond.i.i882 = select contract i1 %cmp.i.i881, float 6.400000e+01, float 0.000000e+00, !dbg !158
  %add.i.i883 = fadd contract float %add344, %cond.i.i882, !dbg !158
  %129 = tail call contract float @llvm.exp2.f32(float %add.i.i883), !dbg !158
  %cond2.i.i884 = select contract i1 %cmp.i.i881, float 0x3BF0000000000000, float 1.000000e+00, !dbg !158
  %mul.i.i885 = fmul contract float %cond2.i.i884, %129, !dbg !158
  %cmp.i.i886 = fcmp contract olt float %add348, -1.260000e+02, !dbg !160
  %cond.i.i887 = select contract i1 %cmp.i.i886, float 6.400000e+01, float 0.000000e+00, !dbg !160
  %add.i.i888 = fadd contract float %add348, %cond.i.i887, !dbg !160
  %130 = tail call contract float @llvm.exp2.f32(float %add.i.i888), !dbg !160
  %cond2.i.i889 = select contract i1 %cmp.i.i886, float 0x3BF0000000000000, float 1.000000e+00, !dbg !160
  %mul.i.i890 = fmul contract float %cond2.i.i889, %130, !dbg !160
  %131 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !162
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !162, !noalias !170
  %132 = fptrunc float %mul.i.i to half, !dbg !162
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %131), !dbg !162, !noalias !170
  %133 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !175, !noalias !170
  %134 = fptrunc float %mul.i.i880 to half, !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %133), !dbg !175, !noalias !170
  %135 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !177
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !177, !noalias !181
  %136 = fptrunc float %mul.i.i885 to half, !dbg !177
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %135), !dbg !177, !noalias !181
  %137 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !186
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !186, !noalias !181
  %138 = fptrunc float %mul.i.i890 to half, !dbg !186
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %137), !dbg !186, !noalias !181
  %139 = insertelement <4 x half> poison, half %132, i64 0, !dbg !188
  %140 = insertelement <4 x half> %139, half %134, i64 1, !dbg !188
  %141 = insertelement <4 x half> %140, half %136, i64 2, !dbg !188
  %142 = insertelement <4 x half> %141, half %138, i64 3, !dbg !188
  %sub.1 = fsub contract float %condval.0.1976, %126, !dbg !141
  %sub308.1 = fsub contract float %condval.0.1.1, %126, !dbg !142
  %sub311.1 = fsub contract float %condval.0.2.1, %126, !dbg !143
  %sub314.1 = fsub contract float %condval.0.3.1, %126, !dbg !144
  %mul319.1 = fmul contract float %sub.1, 0x3FC0527DC0000000, !dbg !145
  %mul323.1 = fmul contract float %sub308.1, 0x3FC0527DC0000000, !dbg !146
  %mul327.1 = fmul contract float %sub311.1, 0x3FC0527DC0000000, !dbg !147
  %mul331.1 = fmul contract float %sub314.1, 0x3FC0527DC0000000, !dbg !148
  %add336.1 = fadd contract float %mul319.1, 8.000000e+00, !dbg !149
  %add340.1 = fadd contract float %mul323.1, 8.000000e+00, !dbg !150
  %add344.1 = fadd contract float %mul327.1, 8.000000e+00, !dbg !151
  %add348.1 = fadd contract float %mul331.1, 8.000000e+00, !dbg !152
  %cmp.i.i.1 = fcmp contract olt float %add336.1, -1.260000e+02, !dbg !153
  %cond.i.i875.1 = select contract i1 %cmp.i.i.1, float 6.400000e+01, float 0.000000e+00, !dbg !153
  %add.i.i.1 = fadd contract float %add336.1, %cond.i.i875.1, !dbg !153
  %143 = tail call contract float @llvm.exp2.f32(float %add.i.i.1), !dbg !153
  %cond2.i.i.1 = select contract i1 %cmp.i.i.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !153
  %mul.i.i.1 = fmul contract float %cond2.i.i.1, %143, !dbg !153
  %cmp.i.i876.1 = fcmp contract olt float %add340.1, -1.260000e+02, !dbg !156
  %cond.i.i877.1 = select contract i1 %cmp.i.i876.1, float 6.400000e+01, float 0.000000e+00, !dbg !156
  %add.i.i878.1 = fadd contract float %add340.1, %cond.i.i877.1, !dbg !156
  %144 = tail call contract float @llvm.exp2.f32(float %add.i.i878.1), !dbg !156
  %cond2.i.i879.1 = select contract i1 %cmp.i.i876.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !156
  %mul.i.i880.1 = fmul contract float %cond2.i.i879.1, %144, !dbg !156
  %cmp.i.i881.1 = fcmp contract olt float %add344.1, -1.260000e+02, !dbg !158
  %cond.i.i882.1 = select contract i1 %cmp.i.i881.1, float 6.400000e+01, float 0.000000e+00, !dbg !158
  %add.i.i883.1 = fadd contract float %add344.1, %cond.i.i882.1, !dbg !158
  %145 = tail call contract float @llvm.exp2.f32(float %add.i.i883.1), !dbg !158
  %cond2.i.i884.1 = select contract i1 %cmp.i.i881.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !158
  %mul.i.i885.1 = fmul contract float %cond2.i.i884.1, %145, !dbg !158
  %cmp.i.i886.1 = fcmp contract olt float %add348.1, -1.260000e+02, !dbg !160
  %cond.i.i887.1 = select contract i1 %cmp.i.i886.1, float 6.400000e+01, float 0.000000e+00, !dbg !160
  %add.i.i888.1 = fadd contract float %add348.1, %cond.i.i887.1, !dbg !160
  %146 = tail call contract float @llvm.exp2.f32(float %add.i.i888.1), !dbg !160
  %cond2.i.i889.1 = select contract i1 %cmp.i.i886.1, float 0x3BF0000000000000, float 1.000000e+00, !dbg !160
  %mul.i.i890.1 = fmul contract float %cond2.i.i889.1, %146, !dbg !160
  %147 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !162
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !162, !noalias !170
  %148 = fptrunc float %mul.i.i.1 to half, !dbg !162
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %147), !dbg !162, !noalias !170
  %149 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !175, !noalias !170
  %150 = fptrunc float %mul.i.i880.1 to half, !dbg !175
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %149), !dbg !175, !noalias !170
  %151 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !177
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !177, !noalias !181
  %152 = fptrunc float %mul.i.i885.1 to half, !dbg !177
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %151), !dbg !177, !noalias !181
  %153 = tail call i32 @llvm.mxc.gethwreg(i32 2177), !dbg !186
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 0), !dbg !186, !noalias !181
  %154 = fptrunc float %mul.i.i890.1 to half, !dbg !186
  tail call void @llvm.mxc.sethwreg(i32 2177, i32 %153), !dbg !186, !noalias !181
  %155 = insertelement <4 x half> poison, half %148, i64 0, !dbg !188
  %156 = insertelement <4 x half> %155, half %150, i64 1, !dbg !188
  %157 = insertelement <4 x half> %156, half %152, i64 2, !dbg !188
  %158 = insertelement <4 x half> %157, half %154, i64 3, !dbg !188
  %conv.i.i = fpext half %132 to float, !dbg !189
  %add386 = fadd contract float %conv.i.i, 0.000000e+00, !dbg !194
  %conv.i.i.1 = fpext half %134 to float, !dbg !189
  %add386.1 = fadd contract float %add386, %conv.i.i.1, !dbg !194
  %conv.i.i.2 = fpext half %136 to float, !dbg !189
  %add386.2 = fadd contract float %add386.1, %conv.i.i.2, !dbg !194
  %conv.i.i.3 = fpext half %138 to float, !dbg !189
  %add386.3 = fadd contract float %add386.2, %conv.i.i.3, !dbg !194
  %conv.i.i.4 = fpext half %148 to float, !dbg !189
  %add386.4 = fadd contract float %add386.3, %conv.i.i.4, !dbg !194
  %conv.i.i.5 = fpext half %150 to float, !dbg !189
  %add386.5 = fadd contract float %add386.4, %conv.i.i.5, !dbg !194
  %conv.i.i.6 = fpext half %152 to float, !dbg !189
  %add386.6 = fadd contract float %add386.5, %conv.i.i.6, !dbg !194
  %conv.i.i.7 = fpext half %154 to float, !dbg !189
  %add386.7 = fadd contract float %add386.6, %conv.i.i.7, !dbg !194
  %159 = bitcast float %add386.7 to i32, !dbg !195
  %160 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !197
  %161 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %160) #10, !dbg !200
  %xor.i.i892 = xor i32 %161, 32, !dbg !201
  %162 = and i32 %161, -64, !dbg !202
  %and.i.i893 = add nsw i32 %162, 64, !dbg !202
  %cmp.not.i.i894 = icmp slt i32 %xor.i.i892, %and.i.i893, !dbg !203
  %cond.i.i895 = select i1 %cmp.not.i.i894, i32 %xor.i.i892, i32 %161, !dbg !204
  %shl.i.i896 = shl i32 %cond.i.i895, 2, !dbg !205
  %163 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i896, i32 %159), !dbg !206
  %164 = bitcast i32 %163 to float, !dbg !207
  %add394 = fadd contract float %add386.7, %164, !dbg !208
  %165 = bitcast float %add394 to i32, !dbg !209
  %166 = tail call i32 @llvm.mxc.mbcnt.lo(i32 -1, i32 0) #10, !dbg !211
  %167 = tail call noundef i32 @llvm.mxc.mbcnt.hi(i32 -1, i32 %166) #10, !dbg !214
  %xor.i.i897 = xor i32 %167, 16, !dbg !215
  %168 = and i32 %167, -64, !dbg !216
  %and.i.i898 = add nsw i32 %168, 64, !dbg !216
  %cmp.not.i.i899 = icmp slt i32 %xor.i.i897, %and.i.i898, !dbg !217
  %cond.i.i900 = select i1 %cmp.not.i.i899, i32 %xor.i.i897, i32 %167, !dbg !218
  %shl.i.i901 = shl i32 %cond.i.i900, 2, !dbg !219
  %169 = tail call noundef i32 @llvm.mxc.bsm.bpermute(i32 %shl.i.i901, i32 %165), !dbg !220
  %170 = bitcast i32 %169 to float, !dbg !221
  fence syncscope("warp") release, !dbg !222
  tail call void @llvm.mxc.barrier.warp(), !dbg !225
  fence syncscope("warp") acquire, !dbg !226
  %171 = shl nuw nsw i32 %3, 5
  %mul419 = and i32 %171, 32512
  %mul430 = and i32 %mul20, 56
  %172 = or disjoint i32 %mul419, %mul430
  %add420 = or disjoint i32 %172, %mul106
  %add423 = add nuw nsw i32 %add420, %mul110
  %mul465 = and i32 %171, 224
  %mul470 = and i32 %104, 4
  %add472 = add nuw nsw i32 %mul470, %shr74
  %and478 = lshr i32 %3, 1
  %shr479 = and i32 %and478, 3
  %mul486 = and i32 %104, 2
  %add462 = or disjoint i32 %mul486, %mul465
  %173 = zext nneg i32 %add423 to i64, !dbg !227
  %174 = xor i32 %add472, %shr479
  %add.ptr433 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %173, !dbg !228
  %v_fetch.sroa.0.0.copyload = load i16, ptr addrspace(4) %add.ptr433, align 16, !dbg !229
  %v_fetch.sroa.10.0.add.ptr433.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433, i64 2, !dbg !229
  %v_fetch.sroa.10.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.10.0.add.ptr433.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.14.0.add.ptr433.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433, i64 4, !dbg !229
  %v_fetch.sroa.14.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.14.0.add.ptr433.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.18.0.add.ptr433.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433, i64 6, !dbg !229
  %v_fetch.sroa.18.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.18.0.add.ptr433.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.22.0.add.ptr433.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433, i64 8, !dbg !229
  %v_fetch.sroa.22.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.22.0.add.ptr433.sroa_idx, align 8, !dbg !229
  %v_fetch.sroa.26.0.add.ptr433.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433, i64 10, !dbg !229
  %v_fetch.sroa.26.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.26.0.add.ptr433.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.30.0.add.ptr433.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433, i64 12, !dbg !229
  %v_fetch.sroa.30.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.30.0.add.ptr433.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.34.0.add.ptr433.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433, i64 14, !dbg !229
  %v_fetch.sroa.34.0.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.34.0.add.ptr433.sroa_idx, align 2, !dbg !229, !tbaa !30
  %175 = or disjoint i64 %173, 128, !dbg !230
  %add.ptr433.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %175, !dbg !228
  %v_fetch.sroa.38.16.copyload = load i16, ptr addrspace(4) %add.ptr433.1, align 16, !dbg !229
  %v_fetch.sroa.46.16.add.ptr433.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433.1, i64 2, !dbg !229
  %v_fetch.sroa.46.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.add.ptr433.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.50.16.add.ptr433.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433.1, i64 4, !dbg !229
  %v_fetch.sroa.50.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.add.ptr433.1.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.54.16.add.ptr433.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433.1, i64 6, !dbg !229
  %v_fetch.sroa.54.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.add.ptr433.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.58.16.add.ptr433.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433.1, i64 8, !dbg !229
  %v_fetch.sroa.58.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.add.ptr433.1.sroa_idx, align 8, !dbg !229
  %v_fetch.sroa.62.16.add.ptr433.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433.1, i64 10, !dbg !229
  %v_fetch.sroa.62.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.add.ptr433.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.66.16.add.ptr433.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433.1, i64 12, !dbg !229
  %v_fetch.sroa.66.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.add.ptr433.1.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.70.16.add.ptr433.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433.1, i64 14, !dbg !229
  %v_fetch.sroa.70.16.copyload = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.add.ptr433.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %176 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add462, !dbg !231
  %add.ptr489.idx = shl nuw nsw i32 %174, 3, !dbg !231
  %add.ptr489 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 %add.ptr489.idx, !dbg !231
  %v_column.sroa.66.0.insert.ext = zext i16 %v_fetch.sroa.38.16.copyload to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift = shl nuw i32 %v_column.sroa.66.0.insert.ext, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext = zext i16 %v_fetch.sroa.0.0.copyload to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert = or disjoint i32 %v_column.sroa.66.0.insert.shift, %v_column.sroa.0.0.insert.ext, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert, ptr addrspace(3) %add.ptr489, align 4, !dbg !232, !tbaa !30
  %177 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 512, !dbg !231
  %xor480.1 = shl nuw nsw i32 %174, 3, !dbg !231
  %add.ptr489.idx.1 = xor i32 %xor480.1, 8, !dbg !231
  %add.ptr489.1 = getelementptr inbounds i8, ptr addrspace(3) %177, i32 %add.ptr489.idx.1, !dbg !231
  %v_column.sroa.66.0.insert.ext1331 = zext i16 %v_fetch.sroa.46.16.copyload to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1332 = shl nuw i32 %v_column.sroa.66.0.insert.ext1331, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1207 = zext i16 %v_fetch.sroa.10.0.copyload to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1209 = or disjoint i32 %v_column.sroa.66.0.insert.shift1332, %v_column.sroa.0.0.insert.ext1207, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1209, ptr addrspace(3) %add.ptr489.1, align 4, !dbg !232, !tbaa !30
  %178 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 1024, !dbg !231
  %xor480.2 = shl nuw nsw i32 %174, 3, !dbg !231
  %add.ptr489.idx.2 = xor i32 %xor480.2, 16, !dbg !231
  %add.ptr489.2 = getelementptr inbounds i8, ptr addrspace(3) %178, i32 %add.ptr489.idx.2, !dbg !231
  %v_column.sroa.66.0.insert.ext1336 = zext i16 %v_fetch.sroa.50.16.copyload to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1337 = shl nuw i32 %v_column.sroa.66.0.insert.ext1336, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1211 = zext i16 %v_fetch.sroa.14.0.copyload to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1213 = or disjoint i32 %v_column.sroa.66.0.insert.shift1337, %v_column.sroa.0.0.insert.ext1211, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1213, ptr addrspace(3) %add.ptr489.2, align 4, !dbg !232, !tbaa !30
  %179 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 1536, !dbg !231
  %xor480.3 = shl nuw nsw i32 %174, 3, !dbg !231
  %add.ptr489.idx.3 = xor i32 %xor480.3, 24, !dbg !231
  %add.ptr489.3 = getelementptr inbounds i8, ptr addrspace(3) %179, i32 %add.ptr489.idx.3, !dbg !231
  %v_column.sroa.66.0.insert.ext1341 = zext i16 %v_fetch.sroa.54.16.copyload to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1342 = shl nuw i32 %v_column.sroa.66.0.insert.ext1341, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1215 = zext i16 %v_fetch.sroa.18.0.copyload to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1217 = or disjoint i32 %v_column.sroa.66.0.insert.shift1342, %v_column.sroa.0.0.insert.ext1215, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1217, ptr addrspace(3) %add.ptr489.3, align 4, !dbg !232, !tbaa !30
  %180 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 2048, !dbg !231
  %xor480.4 = shl nuw nsw i32 %174, 3, !dbg !231
  %add.ptr489.idx.4 = xor i32 %xor480.4, 32, !dbg !231
  %add.ptr489.4 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 %add.ptr489.idx.4, !dbg !231
  %v_column.sroa.66.0.insert.ext1346 = zext i16 %v_fetch.sroa.58.16.copyload to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1347 = shl nuw i32 %v_column.sroa.66.0.insert.ext1346, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1219 = zext i16 %v_fetch.sroa.22.0.copyload to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1221 = or disjoint i32 %v_column.sroa.66.0.insert.shift1347, %v_column.sroa.0.0.insert.ext1219, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1221, ptr addrspace(3) %add.ptr489.4, align 4, !dbg !232, !tbaa !30
  %181 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 2560, !dbg !231
  %xor480.5 = shl nuw nsw i32 %174, 3, !dbg !231
  %add.ptr489.idx.5 = xor i32 %xor480.5, 40, !dbg !231
  %add.ptr489.5 = getelementptr inbounds i8, ptr addrspace(3) %181, i32 %add.ptr489.idx.5, !dbg !231
  %v_column.sroa.66.0.insert.ext1351 = zext i16 %v_fetch.sroa.62.16.copyload to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1352 = shl nuw i32 %v_column.sroa.66.0.insert.ext1351, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1223 = zext i16 %v_fetch.sroa.26.0.copyload to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1225 = or disjoint i32 %v_column.sroa.66.0.insert.shift1352, %v_column.sroa.0.0.insert.ext1223, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1225, ptr addrspace(3) %add.ptr489.5, align 4, !dbg !232, !tbaa !30
  %182 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 3072, !dbg !231
  %xor480.6 = shl nuw nsw i32 %174, 3, !dbg !231
  %add.ptr489.idx.6 = xor i32 %xor480.6, 48, !dbg !231
  %add.ptr489.6 = getelementptr inbounds i8, ptr addrspace(3) %182, i32 %add.ptr489.idx.6, !dbg !231
  %v_column.sroa.66.0.insert.ext1356 = zext i16 %v_fetch.sroa.66.16.copyload to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1357 = shl nuw i32 %v_column.sroa.66.0.insert.ext1356, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1227 = zext i16 %v_fetch.sroa.30.0.copyload to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1229 = or disjoint i32 %v_column.sroa.66.0.insert.shift1357, %v_column.sroa.0.0.insert.ext1227, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1229, ptr addrspace(3) %add.ptr489.6, align 4, !dbg !232, !tbaa !30
  %183 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 3584, !dbg !231
  %xor480.7 = shl nuw nsw i32 %174, 3, !dbg !231
  %add.ptr489.idx.7 = xor i32 %xor480.7, 56, !dbg !231
  %add.ptr489.7 = getelementptr inbounds i8, ptr addrspace(3) %183, i32 %add.ptr489.idx.7, !dbg !231
  %v_column.sroa.66.0.insert.ext1361 = zext i16 %v_fetch.sroa.70.16.copyload to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1362 = shl nuw i32 %v_column.sroa.66.0.insert.ext1361, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1231 = zext i16 %v_fetch.sroa.34.0.copyload to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1233 = or disjoint i32 %v_column.sroa.66.0.insert.shift1362, %v_column.sroa.0.0.insert.ext1231, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1233, ptr addrspace(3) %add.ptr489.7, align 4, !dbg !232, !tbaa !30
  %184 = or disjoint i64 %173, 64
  %add.ptr433.1989 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %184, !dbg !228
  %v_fetch.sroa.0.0.copyload1488 = load i16, ptr addrspace(4) %add.ptr433.1989, align 16, !dbg !229
  %v_fetch.sroa.10.0.add.ptr433.1989.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433.1989, i64 2, !dbg !229
  %v_fetch.sroa.10.0.copyload1491 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0.add.ptr433.1989.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.14.0.add.ptr433.1989.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433.1989, i64 4, !dbg !229
  %v_fetch.sroa.14.0.copyload1497 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0.add.ptr433.1989.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.18.0.add.ptr433.1989.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433.1989, i64 6, !dbg !229
  %v_fetch.sroa.18.0.copyload1503 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0.add.ptr433.1989.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.22.0.add.ptr433.1989.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433.1989, i64 8, !dbg !229
  %v_fetch.sroa.22.0.copyload1509 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0.add.ptr433.1989.sroa_idx, align 8, !dbg !229
  %v_fetch.sroa.26.0.add.ptr433.1989.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433.1989, i64 10, !dbg !229
  %v_fetch.sroa.26.0.copyload1515 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0.add.ptr433.1989.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.30.0.add.ptr433.1989.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433.1989, i64 12, !dbg !229
  %v_fetch.sroa.30.0.copyload1521 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0.add.ptr433.1989.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.34.0.add.ptr433.1989.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433.1989, i64 14, !dbg !229
  %v_fetch.sroa.34.0.copyload1527 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0.add.ptr433.1989.sroa_idx, align 2, !dbg !229, !tbaa !30
  %185 = or disjoint i64 %173, 192, !dbg !230
  %add.ptr433.1.1 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %185, !dbg !228
  %v_fetch.sroa.38.16.copyload1536 = load i16, ptr addrspace(4) %add.ptr433.1.1, align 16, !dbg !229
  %v_fetch.sroa.46.16.add.ptr433.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433.1.1, i64 2, !dbg !229
  %v_fetch.sroa.46.16.copyload1539 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.add.ptr433.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.50.16.add.ptr433.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433.1.1, i64 4, !dbg !229
  %v_fetch.sroa.50.16.copyload1545 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.add.ptr433.1.1.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.54.16.add.ptr433.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433.1.1, i64 6, !dbg !229
  %v_fetch.sroa.54.16.copyload1551 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.add.ptr433.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.58.16.add.ptr433.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433.1.1, i64 8, !dbg !229
  %v_fetch.sroa.58.16.copyload1557 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.add.ptr433.1.1.sroa_idx, align 8, !dbg !229
  %v_fetch.sroa.62.16.add.ptr433.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433.1.1, i64 10, !dbg !229
  %v_fetch.sroa.62.16.copyload1563 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.add.ptr433.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.66.16.add.ptr433.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433.1.1, i64 12, !dbg !229
  %v_fetch.sroa.66.16.copyload1569 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.add.ptr433.1.1.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.70.16.add.ptr433.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %add.ptr433.1.1, i64 14, !dbg !229
  %v_fetch.sroa.70.16.copyload1575 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.add.ptr433.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %186 = or disjoint i32 %add462, 2048
  %187 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %186, !dbg !231
  %add.ptr489.1993 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 %add.ptr489.idx, !dbg !231
  %v_column.sroa.66.0.insert.ext1366 = zext i16 %v_fetch.sroa.38.16.copyload1536 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1367 = shl nuw i32 %v_column.sroa.66.0.insert.ext1366, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1235 = zext i16 %v_fetch.sroa.0.0.copyload1488 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1237 = or disjoint i32 %v_column.sroa.66.0.insert.shift1367, %v_column.sroa.0.0.insert.ext1235, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1237, ptr addrspace(3) %add.ptr489.1993, align 4, !dbg !232, !tbaa !30
  %188 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 512, !dbg !231
  %add.ptr489.1.1 = getelementptr inbounds i8, ptr addrspace(3) %188, i32 %add.ptr489.idx.1, !dbg !231
  %v_column.sroa.66.0.insert.ext1371 = zext i16 %v_fetch.sroa.46.16.copyload1539 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1372 = shl nuw i32 %v_column.sroa.66.0.insert.ext1371, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1239 = zext i16 %v_fetch.sroa.10.0.copyload1491 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1241 = or disjoint i32 %v_column.sroa.66.0.insert.shift1372, %v_column.sroa.0.0.insert.ext1239, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1241, ptr addrspace(3) %add.ptr489.1.1, align 4, !dbg !232, !tbaa !30
  %189 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 1024, !dbg !231
  %add.ptr489.2.1 = getelementptr inbounds i8, ptr addrspace(3) %189, i32 %add.ptr489.idx.2, !dbg !231
  %v_column.sroa.66.0.insert.ext1376 = zext i16 %v_fetch.sroa.50.16.copyload1545 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1377 = shl nuw i32 %v_column.sroa.66.0.insert.ext1376, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1243 = zext i16 %v_fetch.sroa.14.0.copyload1497 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1245 = or disjoint i32 %v_column.sroa.66.0.insert.shift1377, %v_column.sroa.0.0.insert.ext1243, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1245, ptr addrspace(3) %add.ptr489.2.1, align 4, !dbg !232, !tbaa !30
  %190 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 1536, !dbg !231
  %add.ptr489.3.1 = getelementptr inbounds i8, ptr addrspace(3) %190, i32 %add.ptr489.idx.3, !dbg !231
  %v_column.sroa.66.0.insert.ext1381 = zext i16 %v_fetch.sroa.54.16.copyload1551 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1382 = shl nuw i32 %v_column.sroa.66.0.insert.ext1381, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1247 = zext i16 %v_fetch.sroa.18.0.copyload1503 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1249 = or disjoint i32 %v_column.sroa.66.0.insert.shift1382, %v_column.sroa.0.0.insert.ext1247, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1249, ptr addrspace(3) %add.ptr489.3.1, align 4, !dbg !232, !tbaa !30
  %191 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 2048, !dbg !231
  %add.ptr489.4.1 = getelementptr inbounds i8, ptr addrspace(3) %191, i32 %add.ptr489.idx.4, !dbg !231
  %v_column.sroa.66.0.insert.ext1386 = zext i16 %v_fetch.sroa.58.16.copyload1557 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1387 = shl nuw i32 %v_column.sroa.66.0.insert.ext1386, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1251 = zext i16 %v_fetch.sroa.22.0.copyload1509 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1253 = or disjoint i32 %v_column.sroa.66.0.insert.shift1387, %v_column.sroa.0.0.insert.ext1251, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1253, ptr addrspace(3) %add.ptr489.4.1, align 4, !dbg !232, !tbaa !30
  %192 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 2560, !dbg !231
  %add.ptr489.5.1 = getelementptr inbounds i8, ptr addrspace(3) %192, i32 %add.ptr489.idx.5, !dbg !231
  %v_column.sroa.66.0.insert.ext1391 = zext i16 %v_fetch.sroa.62.16.copyload1563 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1392 = shl nuw i32 %v_column.sroa.66.0.insert.ext1391, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1255 = zext i16 %v_fetch.sroa.26.0.copyload1515 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1257 = or disjoint i32 %v_column.sroa.66.0.insert.shift1392, %v_column.sroa.0.0.insert.ext1255, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1257, ptr addrspace(3) %add.ptr489.5.1, align 4, !dbg !232, !tbaa !30
  %193 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 3072, !dbg !231
  %add.ptr489.6.1 = getelementptr inbounds i8, ptr addrspace(3) %193, i32 %add.ptr489.idx.6, !dbg !231
  %v_column.sroa.66.0.insert.ext1396 = zext i16 %v_fetch.sroa.66.16.copyload1569 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1397 = shl nuw i32 %v_column.sroa.66.0.insert.ext1396, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1259 = zext i16 %v_fetch.sroa.30.0.copyload1521 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1261 = or disjoint i32 %v_column.sroa.66.0.insert.shift1397, %v_column.sroa.0.0.insert.ext1259, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1261, ptr addrspace(3) %add.ptr489.6.1, align 4, !dbg !232, !tbaa !30
  %194 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 3584, !dbg !231
  %add.ptr489.7.1 = getelementptr inbounds i8, ptr addrspace(3) %194, i32 %add.ptr489.idx.7, !dbg !231
  %v_column.sroa.66.0.insert.ext1401 = zext i16 %v_fetch.sroa.70.16.copyload1575 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1402 = shl nuw i32 %v_column.sroa.66.0.insert.ext1401, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1263 = zext i16 %v_fetch.sroa.34.0.copyload1527 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1265 = or disjoint i32 %v_column.sroa.66.0.insert.shift1402, %v_column.sroa.0.0.insert.ext1263, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1265, ptr addrspace(3) %add.ptr489.7.1, align 4, !dbg !232, !tbaa !30
  %narrow = add nuw nsw i32 %add472, 2
  %195 = xor i32 %narrow, %shr479
  %196 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %173, !dbg !228
  %add.ptr433.11000 = getelementptr inbounds i8, ptr addrspace(4) %196, i64 4096, !dbg !228
  %v_fetch.sroa.0.0.copyload1489 = load i16, ptr addrspace(4) %add.ptr433.11000, align 16, !dbg !229
  %v_fetch.sroa.10.0.add.ptr433.11000.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %196, i64 4098, !dbg !229
  %v_fetch.sroa.10.0.copyload1492 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0.add.ptr433.11000.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.14.0.add.ptr433.11000.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %196, i64 4100, !dbg !229
  %v_fetch.sroa.14.0.copyload1498 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0.add.ptr433.11000.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.18.0.add.ptr433.11000.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %196, i64 4102, !dbg !229
  %v_fetch.sroa.18.0.copyload1504 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0.add.ptr433.11000.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.22.0.add.ptr433.11000.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %196, i64 4104, !dbg !229
  %v_fetch.sroa.22.0.copyload1510 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0.add.ptr433.11000.sroa_idx, align 8, !dbg !229
  %v_fetch.sroa.26.0.add.ptr433.11000.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %196, i64 4106, !dbg !229
  %v_fetch.sroa.26.0.copyload1516 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0.add.ptr433.11000.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.30.0.add.ptr433.11000.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %196, i64 4108, !dbg !229
  %v_fetch.sroa.30.0.copyload1522 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0.add.ptr433.11000.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.34.0.add.ptr433.11000.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %196, i64 4110, !dbg !229
  %v_fetch.sroa.34.0.copyload1528 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0.add.ptr433.11000.sroa_idx, align 2, !dbg !229, !tbaa !30
  %197 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %173, !dbg !228
  %add.ptr433.1.11001 = getelementptr inbounds i8, ptr addrspace(4) %197, i64 4352, !dbg !228
  %v_fetch.sroa.38.16.copyload1537 = load i16, ptr addrspace(4) %add.ptr433.1.11001, align 16, !dbg !229
  %v_fetch.sroa.46.16.add.ptr433.1.11001.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %197, i64 4354, !dbg !229
  %v_fetch.sroa.46.16.copyload1540 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.add.ptr433.1.11001.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.50.16.add.ptr433.1.11001.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %197, i64 4356, !dbg !229
  %v_fetch.sroa.50.16.copyload1546 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.add.ptr433.1.11001.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.54.16.add.ptr433.1.11001.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %197, i64 4358, !dbg !229
  %v_fetch.sroa.54.16.copyload1552 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.add.ptr433.1.11001.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.58.16.add.ptr433.1.11001.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %197, i64 4360, !dbg !229
  %v_fetch.sroa.58.16.copyload1558 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.add.ptr433.1.11001.sroa_idx, align 8, !dbg !229
  %v_fetch.sroa.62.16.add.ptr433.1.11001.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %197, i64 4362, !dbg !229
  %v_fetch.sroa.62.16.copyload1564 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.add.ptr433.1.11001.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.66.16.add.ptr433.1.11001.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %197, i64 4364, !dbg !229
  %v_fetch.sroa.66.16.copyload1570 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.add.ptr433.1.11001.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.70.16.add.ptr433.1.11001.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %197, i64 4366, !dbg !229
  %v_fetch.sroa.70.16.copyload1576 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.add.ptr433.1.11001.sroa_idx, align 2, !dbg !229, !tbaa !30
  %add.ptr489.idx.11007 = shl nuw nsw i32 %195, 3, !dbg !231
  %add.ptr489.11008 = getelementptr inbounds i8, ptr addrspace(3) %176, i32 %add.ptr489.idx.11007, !dbg !231
  %v_column.sroa.66.0.insert.ext1406 = zext i16 %v_fetch.sroa.38.16.copyload1537 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1407 = shl nuw i32 %v_column.sroa.66.0.insert.ext1406, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1267 = zext i16 %v_fetch.sroa.0.0.copyload1489 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1269 = or disjoint i32 %v_column.sroa.66.0.insert.shift1407, %v_column.sroa.0.0.insert.ext1267, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1269, ptr addrspace(3) %add.ptr489.11008, align 4, !dbg !232, !tbaa !30
  %xor480.1.11013 = shl nuw nsw i32 %195, 3, !dbg !231
  %add.ptr489.idx.1.11014 = xor i32 %xor480.1.11013, 8, !dbg !231
  %add.ptr489.1.11015 = getelementptr inbounds i8, ptr addrspace(3) %177, i32 %add.ptr489.idx.1.11014, !dbg !231
  %v_column.sroa.66.0.insert.ext1411 = zext i16 %v_fetch.sroa.46.16.copyload1540 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1412 = shl nuw i32 %v_column.sroa.66.0.insert.ext1411, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1271 = zext i16 %v_fetch.sroa.10.0.copyload1492 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1273 = or disjoint i32 %v_column.sroa.66.0.insert.shift1412, %v_column.sroa.0.0.insert.ext1271, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1273, ptr addrspace(3) %add.ptr489.1.11015, align 4, !dbg !232, !tbaa !30
  %xor480.2.11020 = shl nuw nsw i32 %195, 3, !dbg !231
  %add.ptr489.idx.2.11021 = xor i32 %xor480.2.11020, 16, !dbg !231
  %add.ptr489.2.11022 = getelementptr inbounds i8, ptr addrspace(3) %178, i32 %add.ptr489.idx.2.11021, !dbg !231
  %v_column.sroa.66.0.insert.ext1416 = zext i16 %v_fetch.sroa.50.16.copyload1546 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1417 = shl nuw i32 %v_column.sroa.66.0.insert.ext1416, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1275 = zext i16 %v_fetch.sroa.14.0.copyload1498 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1277 = or disjoint i32 %v_column.sroa.66.0.insert.shift1417, %v_column.sroa.0.0.insert.ext1275, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1277, ptr addrspace(3) %add.ptr489.2.11022, align 4, !dbg !232, !tbaa !30
  %xor480.3.11027 = shl nuw nsw i32 %195, 3, !dbg !231
  %add.ptr489.idx.3.11028 = xor i32 %xor480.3.11027, 24, !dbg !231
  %add.ptr489.3.11029 = getelementptr inbounds i8, ptr addrspace(3) %179, i32 %add.ptr489.idx.3.11028, !dbg !231
  %v_column.sroa.66.0.insert.ext1421 = zext i16 %v_fetch.sroa.54.16.copyload1552 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1422 = shl nuw i32 %v_column.sroa.66.0.insert.ext1421, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1279 = zext i16 %v_fetch.sroa.18.0.copyload1504 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1281 = or disjoint i32 %v_column.sroa.66.0.insert.shift1422, %v_column.sroa.0.0.insert.ext1279, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1281, ptr addrspace(3) %add.ptr489.3.11029, align 4, !dbg !232, !tbaa !30
  %xor480.4.11034 = shl nuw nsw i32 %195, 3, !dbg !231
  %add.ptr489.idx.4.11035 = xor i32 %xor480.4.11034, 32, !dbg !231
  %add.ptr489.4.11036 = getelementptr inbounds i8, ptr addrspace(3) %180, i32 %add.ptr489.idx.4.11035, !dbg !231
  %v_column.sroa.66.0.insert.ext1426 = zext i16 %v_fetch.sroa.58.16.copyload1558 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1427 = shl nuw i32 %v_column.sroa.66.0.insert.ext1426, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1283 = zext i16 %v_fetch.sroa.22.0.copyload1510 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1285 = or disjoint i32 %v_column.sroa.66.0.insert.shift1427, %v_column.sroa.0.0.insert.ext1283, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1285, ptr addrspace(3) %add.ptr489.4.11036, align 4, !dbg !232, !tbaa !30
  %xor480.5.11041 = shl nuw nsw i32 %195, 3, !dbg !231
  %add.ptr489.idx.5.11042 = xor i32 %xor480.5.11041, 40, !dbg !231
  %add.ptr489.5.11043 = getelementptr inbounds i8, ptr addrspace(3) %181, i32 %add.ptr489.idx.5.11042, !dbg !231
  %v_column.sroa.66.0.insert.ext1431 = zext i16 %v_fetch.sroa.62.16.copyload1564 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1432 = shl nuw i32 %v_column.sroa.66.0.insert.ext1431, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1287 = zext i16 %v_fetch.sroa.26.0.copyload1516 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1289 = or disjoint i32 %v_column.sroa.66.0.insert.shift1432, %v_column.sroa.0.0.insert.ext1287, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1289, ptr addrspace(3) %add.ptr489.5.11043, align 4, !dbg !232, !tbaa !30
  %xor480.6.11048 = shl nuw nsw i32 %195, 3, !dbg !231
  %add.ptr489.idx.6.11049 = xor i32 %xor480.6.11048, 48, !dbg !231
  %add.ptr489.6.11050 = getelementptr inbounds i8, ptr addrspace(3) %182, i32 %add.ptr489.idx.6.11049, !dbg !231
  %v_column.sroa.66.0.insert.ext1436 = zext i16 %v_fetch.sroa.66.16.copyload1570 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1437 = shl nuw i32 %v_column.sroa.66.0.insert.ext1436, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1291 = zext i16 %v_fetch.sroa.30.0.copyload1522 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1293 = or disjoint i32 %v_column.sroa.66.0.insert.shift1437, %v_column.sroa.0.0.insert.ext1291, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1293, ptr addrspace(3) %add.ptr489.6.11050, align 4, !dbg !232, !tbaa !30
  %xor480.7.11055 = shl nuw nsw i32 %195, 3, !dbg !231
  %add.ptr489.idx.7.11056 = xor i32 %xor480.7.11055, 56, !dbg !231
  %add.ptr489.7.11057 = getelementptr inbounds i8, ptr addrspace(3) %183, i32 %add.ptr489.idx.7.11056, !dbg !231
  %v_column.sroa.66.0.insert.ext1441 = zext i16 %v_fetch.sroa.70.16.copyload1576 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1442 = shl nuw i32 %v_column.sroa.66.0.insert.ext1441, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1295 = zext i16 %v_fetch.sroa.34.0.copyload1528 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1297 = or disjoint i32 %v_column.sroa.66.0.insert.shift1442, %v_column.sroa.0.0.insert.ext1295, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1297, ptr addrspace(3) %add.ptr489.7.11057, align 4, !dbg !232, !tbaa !30
  %198 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %173, !dbg !228
  %add.ptr433.1989.1 = getelementptr inbounds i8, ptr addrspace(4) %198, i64 4224, !dbg !228
  %v_fetch.sroa.0.0.copyload1490 = load i16, ptr addrspace(4) %add.ptr433.1989.1, align 16, !dbg !229
  %v_fetch.sroa.10.0.add.ptr433.1989.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %198, i64 4226, !dbg !229
  %v_fetch.sroa.10.0.copyload1493 = load i16, ptr addrspace(4) %v_fetch.sroa.10.0.add.ptr433.1989.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.14.0.add.ptr433.1989.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %198, i64 4228, !dbg !229
  %v_fetch.sroa.14.0.copyload1499 = load i16, ptr addrspace(4) %v_fetch.sroa.14.0.add.ptr433.1989.1.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.18.0.add.ptr433.1989.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %198, i64 4230, !dbg !229
  %v_fetch.sroa.18.0.copyload1505 = load i16, ptr addrspace(4) %v_fetch.sroa.18.0.add.ptr433.1989.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.22.0.add.ptr433.1989.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %198, i64 4232, !dbg !229
  %v_fetch.sroa.22.0.copyload1511 = load i16, ptr addrspace(4) %v_fetch.sroa.22.0.add.ptr433.1989.1.sroa_idx, align 8, !dbg !229
  %v_fetch.sroa.26.0.add.ptr433.1989.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %198, i64 4234, !dbg !229
  %v_fetch.sroa.26.0.copyload1517 = load i16, ptr addrspace(4) %v_fetch.sroa.26.0.add.ptr433.1989.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.30.0.add.ptr433.1989.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %198, i64 4236, !dbg !229
  %v_fetch.sroa.30.0.copyload1523 = load i16, ptr addrspace(4) %v_fetch.sroa.30.0.add.ptr433.1989.1.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.34.0.add.ptr433.1989.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %198, i64 4238, !dbg !229
  %v_fetch.sroa.34.0.copyload1529 = load i16, ptr addrspace(4) %v_fetch.sroa.34.0.add.ptr433.1989.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %199 = getelementptr inbounds %struct.__half, ptr addrspace(4) %V.coerce, i64 %173, !dbg !228
  %add.ptr433.1.1.1 = getelementptr inbounds i8, ptr addrspace(4) %199, i64 4480, !dbg !228
  %v_fetch.sroa.38.16.copyload1538 = load i16, ptr addrspace(4) %add.ptr433.1.1.1, align 16, !dbg !229
  %v_fetch.sroa.46.16.add.ptr433.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %199, i64 4482, !dbg !229
  %v_fetch.sroa.46.16.copyload1541 = load i16, ptr addrspace(4) %v_fetch.sroa.46.16.add.ptr433.1.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.50.16.add.ptr433.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %199, i64 4484, !dbg !229
  %v_fetch.sroa.50.16.copyload1547 = load i16, ptr addrspace(4) %v_fetch.sroa.50.16.add.ptr433.1.1.1.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.54.16.add.ptr433.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %199, i64 4486, !dbg !229
  %v_fetch.sroa.54.16.copyload1553 = load i16, ptr addrspace(4) %v_fetch.sroa.54.16.add.ptr433.1.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.58.16.add.ptr433.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %199, i64 4488, !dbg !229
  %v_fetch.sroa.58.16.copyload1559 = load i16, ptr addrspace(4) %v_fetch.sroa.58.16.add.ptr433.1.1.1.sroa_idx, align 8, !dbg !229
  %v_fetch.sroa.62.16.add.ptr433.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %199, i64 4490, !dbg !229
  %v_fetch.sroa.62.16.copyload1565 = load i16, ptr addrspace(4) %v_fetch.sroa.62.16.add.ptr433.1.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %v_fetch.sroa.66.16.add.ptr433.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %199, i64 4492, !dbg !229
  %v_fetch.sroa.66.16.copyload1571 = load i16, ptr addrspace(4) %v_fetch.sroa.66.16.add.ptr433.1.1.1.sroa_idx, align 4, !dbg !229
  %v_fetch.sroa.70.16.add.ptr433.1.1.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(4) %199, i64 4494, !dbg !229
  %v_fetch.sroa.70.16.copyload1577 = load i16, ptr addrspace(4) %v_fetch.sroa.70.16.add.ptr433.1.1.1.sroa_idx, align 2, !dbg !229, !tbaa !30
  %add.ptr489.1993.1 = getelementptr inbounds i8, ptr addrspace(3) %187, i32 %add.ptr489.idx.11007, !dbg !231
  %v_column.sroa.66.0.insert.ext1446 = zext i16 %v_fetch.sroa.38.16.copyload1538 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1447 = shl nuw i32 %v_column.sroa.66.0.insert.ext1446, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1299 = zext i16 %v_fetch.sroa.0.0.copyload1490 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1301 = or disjoint i32 %v_column.sroa.66.0.insert.shift1447, %v_column.sroa.0.0.insert.ext1299, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1301, ptr addrspace(3) %add.ptr489.1993.1, align 4, !dbg !232, !tbaa !30
  %add.ptr489.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %188, i32 %add.ptr489.idx.1.11014, !dbg !231
  %v_column.sroa.66.0.insert.ext1451 = zext i16 %v_fetch.sroa.46.16.copyload1541 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1452 = shl nuw i32 %v_column.sroa.66.0.insert.ext1451, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1303 = zext i16 %v_fetch.sroa.10.0.copyload1493 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1305 = or disjoint i32 %v_column.sroa.66.0.insert.shift1452, %v_column.sroa.0.0.insert.ext1303, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1305, ptr addrspace(3) %add.ptr489.1.1.1, align 4, !dbg !232, !tbaa !30
  %add.ptr489.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %189, i32 %add.ptr489.idx.2.11021, !dbg !231
  %v_column.sroa.66.0.insert.ext1456 = zext i16 %v_fetch.sroa.50.16.copyload1547 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1457 = shl nuw i32 %v_column.sroa.66.0.insert.ext1456, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1307 = zext i16 %v_fetch.sroa.14.0.copyload1499 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1309 = or disjoint i32 %v_column.sroa.66.0.insert.shift1457, %v_column.sroa.0.0.insert.ext1307, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1309, ptr addrspace(3) %add.ptr489.2.1.1, align 4, !dbg !232, !tbaa !30
  %add.ptr489.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %190, i32 %add.ptr489.idx.3.11028, !dbg !231
  %v_column.sroa.66.0.insert.ext1461 = zext i16 %v_fetch.sroa.54.16.copyload1553 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1462 = shl nuw i32 %v_column.sroa.66.0.insert.ext1461, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1311 = zext i16 %v_fetch.sroa.18.0.copyload1505 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1313 = or disjoint i32 %v_column.sroa.66.0.insert.shift1462, %v_column.sroa.0.0.insert.ext1311, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1313, ptr addrspace(3) %add.ptr489.3.1.1, align 4, !dbg !232, !tbaa !30
  %add.ptr489.4.1.1 = getelementptr inbounds i8, ptr addrspace(3) %191, i32 %add.ptr489.idx.4.11035, !dbg !231
  %v_column.sroa.66.0.insert.ext1466 = zext i16 %v_fetch.sroa.58.16.copyload1559 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1467 = shl nuw i32 %v_column.sroa.66.0.insert.ext1466, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1315 = zext i16 %v_fetch.sroa.22.0.copyload1511 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1317 = or disjoint i32 %v_column.sroa.66.0.insert.shift1467, %v_column.sroa.0.0.insert.ext1315, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1317, ptr addrspace(3) %add.ptr489.4.1.1, align 4, !dbg !232, !tbaa !30
  %add.ptr489.5.1.1 = getelementptr inbounds i8, ptr addrspace(3) %192, i32 %add.ptr489.idx.5.11042, !dbg !231
  %v_column.sroa.66.0.insert.ext1471 = zext i16 %v_fetch.sroa.62.16.copyload1565 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1472 = shl nuw i32 %v_column.sroa.66.0.insert.ext1471, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1319 = zext i16 %v_fetch.sroa.26.0.copyload1517 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1321 = or disjoint i32 %v_column.sroa.66.0.insert.shift1472, %v_column.sroa.0.0.insert.ext1319, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1321, ptr addrspace(3) %add.ptr489.5.1.1, align 4, !dbg !232, !tbaa !30
  %add.ptr489.6.1.1 = getelementptr inbounds i8, ptr addrspace(3) %193, i32 %add.ptr489.idx.6.11049, !dbg !231
  %v_column.sroa.66.0.insert.ext1476 = zext i16 %v_fetch.sroa.66.16.copyload1571 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1477 = shl nuw i32 %v_column.sroa.66.0.insert.ext1476, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1323 = zext i16 %v_fetch.sroa.30.0.copyload1523 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1325 = or disjoint i32 %v_column.sroa.66.0.insert.shift1477, %v_column.sroa.0.0.insert.ext1323, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1325, ptr addrspace(3) %add.ptr489.6.1.1, align 4, !dbg !232, !tbaa !30
  %add.ptr489.7.1.1 = getelementptr inbounds i8, ptr addrspace(3) %194, i32 %add.ptr489.idx.7.11056, !dbg !231
  %v_column.sroa.66.0.insert.ext1481 = zext i16 %v_fetch.sroa.70.16.copyload1577 to i32, !dbg !232
  %v_column.sroa.66.0.insert.shift1482 = shl nuw i32 %v_column.sroa.66.0.insert.ext1481, 16, !dbg !232
  %v_column.sroa.0.0.insert.ext1327 = zext i16 %v_fetch.sroa.34.0.copyload1529 to i32, !dbg !232
  %v_column.sroa.0.0.insert.insert1329 = or disjoint i32 %v_column.sroa.66.0.insert.shift1482, %v_column.sroa.0.0.insert.ext1327, !dbg !232
  store i32 %v_column.sroa.0.0.insert.insert1329, ptr addrspace(3) %add.ptr489.7.1.1, align 4, !dbg !232, !tbaa !30
  fence syncscope("warp") release, !dbg !233
  tail call void @llvm.mxc.barrier.warp(), !dbg !236
  fence syncscope("warp") acquire, !dbg !237
  %and526 = shl nuw nsw i32 %3, 8
  %mul527 = and i32 %and526, 1792
  %mul534 = and i32 %5, 32
  %xor547 = xor i32 %add472, %and40
  %add535 = or disjoint i32 %mul527, %mul534, !dbg !238
  %200 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535, !dbg !239
  %add.ptr552.idx = shl nuw nsw i32 %xor547, 3, !dbg !239
  %add.ptr552 = getelementptr inbounds i8, ptr addrspace(3) %200, i32 %add.ptr552.idx, !dbg !239
  %201 = load <4 x half>, ptr addrspace(3) %add.ptr552, align 8, !dbg !240
  %add530.1 = or disjoint i32 %mul527, %mul534, !dbg !238
  %add535.1 = or disjoint i32 %add530.1, 64, !dbg !238
  %202 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.1, !dbg !239
  %xor548.1 = shl nuw nsw i32 %xor547, 3, !dbg !239
  %add.ptr552.idx.1 = xor i32 %xor548.1, 8, !dbg !239
  %add.ptr552.1 = getelementptr inbounds i8, ptr addrspace(3) %202, i32 %add.ptr552.idx.1, !dbg !239
  %203 = load <4 x half>, ptr addrspace(3) %add.ptr552.1, align 8, !dbg !240
  %add530.2 = or disjoint i32 %mul527, %mul534, !dbg !238
  %add535.2 = or disjoint i32 %add530.2, 128, !dbg !238
  %204 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.2, !dbg !239
  %xor548.2 = shl nuw nsw i32 %xor547, 3, !dbg !239
  %add.ptr552.idx.2 = xor i32 %xor548.2, 16, !dbg !239
  %add.ptr552.2 = getelementptr inbounds i8, ptr addrspace(3) %204, i32 %add.ptr552.idx.2, !dbg !239
  %205 = load <4 x half>, ptr addrspace(3) %add.ptr552.2, align 8, !dbg !240
  %add530.3 = or disjoint i32 %mul527, %mul534, !dbg !238
  %add535.3 = or disjoint i32 %add530.3, 192, !dbg !238
  %206 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.3, !dbg !239
  %xor548.3 = shl nuw nsw i32 %xor547, 3, !dbg !239
  %add.ptr552.idx.3 = xor i32 %xor548.3, 24, !dbg !239
  %add.ptr552.3 = getelementptr inbounds i8, ptr addrspace(3) %206, i32 %add.ptr552.idx.3, !dbg !239
  %207 = load <4 x half>, ptr addrspace(3) %add.ptr552.3, align 8, !dbg !240
  %208 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %201, <4 x half> %142, <4 x float> zeroinitializer), !dbg !241
  %209 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %203, <4 x half> %142, <4 x float> zeroinitializer), !dbg !241
  %210 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %205, <4 x half> %142, <4 x float> zeroinitializer), !dbg !241
  %211 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %207, <4 x half> %142, <4 x float> zeroinitializer), !dbg !241
  %add528.1 = or disjoint i32 %mul527, %mul534, !dbg !238
  %add535.11059 = or disjoint i32 %add528.1, 2048, !dbg !238
  %212 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.11059, !dbg !239
  %add.ptr552.11061 = getelementptr inbounds i8, ptr addrspace(3) %212, i32 %add.ptr552.idx, !dbg !239
  %213 = load <4 x half>, ptr addrspace(3) %add.ptr552.11061, align 8, !dbg !240
  %add530.1.1 = or disjoint i32 %mul527, %mul534, !dbg !238
  %add535.1.1 = or disjoint i32 %add530.1.1, 2112, !dbg !238
  %214 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.1.1, !dbg !239
  %add.ptr552.1.1 = getelementptr inbounds i8, ptr addrspace(3) %214, i32 %add.ptr552.idx.1, !dbg !239
  %215 = load <4 x half>, ptr addrspace(3) %add.ptr552.1.1, align 8, !dbg !240
  %add530.2.1 = or disjoint i32 %mul527, %mul534, !dbg !238
  %add535.2.1 = or disjoint i32 %add530.2.1, 2176, !dbg !238
  %216 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.2.1, !dbg !239
  %add.ptr552.2.1 = getelementptr inbounds i8, ptr addrspace(3) %216, i32 %add.ptr552.idx.2, !dbg !239
  %217 = load <4 x half>, ptr addrspace(3) %add.ptr552.2.1, align 8, !dbg !240
  %add530.3.1 = or disjoint i32 %mul527, %mul534, !dbg !238
  %add535.3.1 = or disjoint i32 %add530.3.1, 2240, !dbg !238
  %218 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add535.3.1, !dbg !239
  %add.ptr552.3.1 = getelementptr inbounds i8, ptr addrspace(3) %218, i32 %add.ptr552.idx.3, !dbg !239
  %219 = load <4 x half>, ptr addrspace(3) %add.ptr552.3.1, align 8, !dbg !240
  %220 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %213, <4 x half> %142, <4 x float> zeroinitializer), !dbg !241
  %221 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %215, <4 x half> %142, <4 x float> zeroinitializer), !dbg !241
  %222 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %217, <4 x half> %142, <4 x float> zeroinitializer), !dbg !241
  %223 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %219, <4 x half> %142, <4 x float> zeroinitializer), !dbg !241
  %add544.1 = add nuw nsw i32 %add472, 2
  %xor547.1 = xor i32 %add544.1, %and40
  %add.ptr552.idx.11065 = shl nuw nsw i32 %xor547.1, 3, !dbg !239
  %add.ptr552.11066 = getelementptr inbounds i8, ptr addrspace(3) %200, i32 %add.ptr552.idx.11065, !dbg !239
  %224 = load <4 x half>, ptr addrspace(3) %add.ptr552.11066, align 8, !dbg !240
  %xor548.1.11069 = shl nuw nsw i32 %xor547.1, 3, !dbg !239
  %add.ptr552.idx.1.11070 = xor i32 %xor548.1.11069, 8, !dbg !239
  %add.ptr552.1.11071 = getelementptr inbounds i8, ptr addrspace(3) %202, i32 %add.ptr552.idx.1.11070, !dbg !239
  %225 = load <4 x half>, ptr addrspace(3) %add.ptr552.1.11071, align 8, !dbg !240
  %xor548.2.11075 = shl nuw nsw i32 %xor547.1, 3, !dbg !239
  %add.ptr552.idx.2.11076 = xor i32 %xor548.2.11075, 16, !dbg !239
  %add.ptr552.2.11077 = getelementptr inbounds i8, ptr addrspace(3) %204, i32 %add.ptr552.idx.2.11076, !dbg !239
  %226 = load <4 x half>, ptr addrspace(3) %add.ptr552.2.11077, align 8, !dbg !240
  %xor548.3.11081 = shl nuw nsw i32 %xor547.1, 3, !dbg !239
  %add.ptr552.idx.3.11082 = xor i32 %xor548.3.11081, 24, !dbg !239
  %add.ptr552.3.11083 = getelementptr inbounds i8, ptr addrspace(3) %206, i32 %add.ptr552.idx.3.11082, !dbg !239
  %227 = load <4 x half>, ptr addrspace(3) %add.ptr552.3.11083, align 8, !dbg !240
  %228 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %224, <4 x half> %158, <4 x float> %208), !dbg !241
  %229 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %225, <4 x half> %158, <4 x float> %209), !dbg !241
  %230 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %226, <4 x half> %158, <4 x float> %210), !dbg !241
  %231 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %227, <4 x half> %158, <4 x float> %211), !dbg !241
  %add.ptr552.11061.1 = getelementptr inbounds i8, ptr addrspace(3) %212, i32 %add.ptr552.idx.11065, !dbg !239
  %232 = load <4 x half>, ptr addrspace(3) %add.ptr552.11061.1, align 8, !dbg !240
  %add.ptr552.1.1.1 = getelementptr inbounds i8, ptr addrspace(3) %214, i32 %add.ptr552.idx.1.11070, !dbg !239
  %233 = load <4 x half>, ptr addrspace(3) %add.ptr552.1.1.1, align 8, !dbg !240
  %add.ptr552.2.1.1 = getelementptr inbounds i8, ptr addrspace(3) %216, i32 %add.ptr552.idx.2.11076, !dbg !239
  %234 = load <4 x half>, ptr addrspace(3) %add.ptr552.2.1.1, align 8, !dbg !240
  %add.ptr552.3.1.1 = getelementptr inbounds i8, ptr addrspace(3) %218, i32 %add.ptr552.idx.3.11082, !dbg !239
  %235 = load <4 x half>, ptr addrspace(3) %add.ptr552.3.1.1, align 8, !dbg !240
  %236 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %232, <4 x half> %158, <4 x float> %220), !dbg !241
  %237 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %233, <4 x half> %158, <4 x float> %221), !dbg !241
  %238 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %234, <4 x half> %158, <4 x float> %222), !dbg !241
  %239 = tail call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16(<4 x half> %235, <4 x half> %158, <4 x float> %223), !dbg !241
  %add399 = fadd contract float %add394, %170, !dbg !242
  br label %if.end603, !dbg !63

if.end603:                                        ; preds = %for.cond.preheader, %for.body593.preheader
  %.pre-phi1999 = phi i64 [ %16, %for.cond.preheader ], [ %.pre1998, %for.body593.preheader ], !dbg !62
  %.pre-phi1997 = phi i64 [ %13, %for.cond.preheader ], [ %.pre1996, %for.body593.preheader ], !dbg !62
  %.pre-phi1995 = phi i64 [ %10, %for.cond.preheader ], [ %.pre1994, %for.body593.preheader ], !dbg !62
  %.idx950.11102.pre-phi = phi i32 [ %.idx941.1958, %for.cond.preheader ], [ %.pre1993, %for.body593.preheader ], !dbg !61
  %add.ptr705.idx.1.pre-phi = phi i32 [ %add.ptr57.idx.1, %for.cond.preheader ], [ %.pre1990, %for.body593.preheader ], !dbg !61
  %add.ptr705.idx.pre-phi = phi i32 [ %add.ptr57.idx, %for.cond.preheader ], [ %.pre1988, %for.body593.preheader ], !dbg !61
  %.idx950.pre-phi = phi i32 [ %.idx941, %for.cond.preheader ], [ %.pre1987, %for.body593.preheader ], !dbg !61
  %.pre-phi1985 = phi i64 [ %6, %for.cond.preheader ], [ %.pre1984, %for.body593.preheader ], !dbg !60
  %mul684.pre-phi = phi i32 [ %mul37, %for.cond.preheader ], [ %.pre1977, %for.body593.preheader ]
  %mul679.pre-phi = phi i32 [ %mul32, %for.cond.preheader ], [ %.pre1974, %for.body593.preheader ]
  %.idx948.4.pre-phi = phi i32 [ %.idx942.4, %for.cond.preheader ], [ %.pre1971, %for.body593.preheader ], !dbg !57
  %add641.4.pre-phi = phi i32 [ %add70.4, %for.cond.preheader ], [ %.pre1969, %for.body593.preheader ], !dbg !59
  %add.ptr664.idx.3.pre-phi = phi i32 [ %add.ptr93.idx.3, %for.cond.preheader ], [ %.pre1968, %for.body593.preheader ], !dbg !57
  %add.ptr664.idx.2.pre-phi = phi i32 [ %add.ptr93.idx.2, %for.cond.preheader ], [ %.pre1965, %for.body593.preheader ], !dbg !57
  %add.ptr664.idx.1.pre-phi = phi i32 [ %add.ptr93.idx.1, %for.cond.preheader ], [ %.pre1962, %for.body593.preheader ], !dbg !57
  %add.ptr664.idx.pre-phi = phi i32 [ %add.ptr93.idx, %for.cond.preheader ], [ %.pre1959, %for.body593.preheader ], !dbg !57
  %.idx948.pre-phi = phi i32 [ %.idx942, %for.cond.preheader ], [ %.pre1958, %for.body593.preheader ], !dbg !57
  %mul640.pre-phi = phi i32 [ %mul69, %for.cond.preheader ], [ %.pre1950, %for.body593.preheader ]
  %numerator.sroa.170.0 = phi <4 x float> [ %239, %for.cond.preheader ], [ zeroinitializer, %for.body593.preheader ], !dbg !243
  %numerator.sroa.146.0 = phi <4 x float> [ %238, %for.cond.preheader ], [ zeroinitializer, %for.body593.preheader ], !dbg !243
  %numerator.sroa.122.0 = phi <4 x float> [ %237, %for.cond.preheader ], [ zeroinitializer, %for.body593.preheader ], !dbg !243
  %numerator.sroa.98.0 = phi <4 x float> [ %236, %for.cond.preheader ], [ zeroinitializer, %for.body593.preheader ], !dbg !243
  %numerator.sroa.74.0 = phi <4 x float> [ %231, %for.cond.preheader ], [ zeroinitializer, %for.body593.preheader ], !dbg !243
  %numerator.sroa.50.0 = phi <4 x float> [ %230, %for.cond.preheader ], [ zeroinitializer, %for.body593.preheader ], !dbg !243
  %numerator.sroa.26.0 = phi <4 x float> [ %229, %for.cond.preheader ], [ zeroinitializer, %for.body593.preheader ], !dbg !243
  %numerator.sroa.0.0 = phi <4 x float> [ %228, %for.cond.preheader ], [ zeroinitializer, %for.body593.preheader ], !dbg !243
  %denominator.sroa.0.1 = phi float [ %add399, %for.cond.preheader ], [ 0.000000e+00, %for.body593.preheader ], !dbg !243
  %numerator.sroa.0.0.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 0, !dbg !244
  %div = fdiv contract float %numerator.sroa.0.0.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.0.4.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 1, !dbg !244
  %div.1 = fdiv contract float %numerator.sroa.0.4.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.0.8.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 2, !dbg !244
  %div.2 = fdiv contract float %numerator.sroa.0.8.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.0.12.vec.extract = extractelement <4 x float> %numerator.sroa.0.0, i64 3, !dbg !244
  %div.3 = fdiv contract float %numerator.sroa.0.12.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.26.16.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 0, !dbg !244
  %div.4 = fdiv contract float %numerator.sroa.26.16.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.26.20.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 1, !dbg !244
  %div.5 = fdiv contract float %numerator.sroa.26.20.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.26.24.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 2, !dbg !244
  %div.6 = fdiv contract float %numerator.sroa.26.24.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.26.28.vec.extract = extractelement <4 x float> %numerator.sroa.26.0, i64 3, !dbg !244
  %div.7 = fdiv contract float %numerator.sroa.26.28.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.50.32.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 0, !dbg !244
  %div.8 = fdiv contract float %numerator.sroa.50.32.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.50.36.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 1, !dbg !244
  %div.9 = fdiv contract float %numerator.sroa.50.36.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.50.40.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 2, !dbg !244
  %div.10 = fdiv contract float %numerator.sroa.50.40.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.50.44.vec.extract = extractelement <4 x float> %numerator.sroa.50.0, i64 3, !dbg !244
  %div.11 = fdiv contract float %numerator.sroa.50.44.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.74.48.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 0, !dbg !244
  %div.12 = fdiv contract float %numerator.sroa.74.48.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.74.52.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 1, !dbg !244
  %div.13 = fdiv contract float %numerator.sroa.74.52.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.74.56.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 2, !dbg !244
  %div.14 = fdiv contract float %numerator.sroa.74.56.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.74.60.vec.extract = extractelement <4 x float> %numerator.sroa.74.0, i64 3, !dbg !244
  %div.15 = fdiv contract float %numerator.sroa.74.60.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.98.64.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 0, !dbg !244
  %div.16 = fdiv contract float %numerator.sroa.98.64.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.98.68.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 1, !dbg !244
  %div.17 = fdiv contract float %numerator.sroa.98.68.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.98.72.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 2, !dbg !244
  %div.18 = fdiv contract float %numerator.sroa.98.72.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.98.76.vec.extract = extractelement <4 x float> %numerator.sroa.98.0, i64 3, !dbg !244
  %div.19 = fdiv contract float %numerator.sroa.98.76.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.122.80.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 0, !dbg !244
  %div.20 = fdiv contract float %numerator.sroa.122.80.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.122.84.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 1, !dbg !244
  %div.21 = fdiv contract float %numerator.sroa.122.84.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.122.88.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 2, !dbg !244
  %div.22 = fdiv contract float %numerator.sroa.122.88.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.122.92.vec.extract = extractelement <4 x float> %numerator.sroa.122.0, i64 3, !dbg !244
  %div.23 = fdiv contract float %numerator.sroa.122.92.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.146.96.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 0, !dbg !244
  %div.24 = fdiv contract float %numerator.sroa.146.96.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.146.100.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 1, !dbg !244
  %div.25 = fdiv contract float %numerator.sroa.146.100.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.146.104.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 2, !dbg !244
  %div.26 = fdiv contract float %numerator.sroa.146.104.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.146.108.vec.extract = extractelement <4 x float> %numerator.sroa.146.0, i64 3, !dbg !244
  %div.27 = fdiv contract float %numerator.sroa.146.108.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.170.112.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 0, !dbg !244
  %div.28 = fdiv contract float %numerator.sroa.170.112.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.170.116.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 1, !dbg !244
  %div.29 = fdiv contract float %numerator.sroa.170.116.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.170.120.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 2, !dbg !244
  %div.30 = fdiv contract float %numerator.sroa.170.120.vec.extract, %denominator.sroa.0.1, !dbg !245
  %numerator.sroa.170.124.vec.extract = extractelement <4 x float> %numerator.sroa.170.0, i64 3, !dbg !244
  %div.31 = fdiv contract float %numerator.sroa.170.124.vec.extract, %denominator.sroa.0.1, !dbg !245
  fence syncscope("warp") release, !dbg !246
  tail call void @llvm.mxc.barrier.warp(), !dbg !249
  fence syncscope("warp") acquire, !dbg !250
  %conv.i.i903 = fptrunc float %div to half, !dbg !251
  %conv.i.i903.1 = fptrunc float %div.1 to half, !dbg !251
  %conv.i.i903.2 = fptrunc float %div.2 to half, !dbg !251
  %conv.i.i903.3 = fptrunc float %div.3 to half, !dbg !251
  %240 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul640.pre-phi, !dbg !57
  %241 = getelementptr inbounds i8, ptr addrspace(3) %240, i32 %.idx948.pre-phi, !dbg !57
  %add.ptr664 = getelementptr inbounds i8, ptr addrspace(3) %241, i32 %add.ptr664.idx.pre-phi, !dbg !57
  store half %conv.i.i903, ptr addrspace(3) %add.ptr664, align 8, !dbg !256
  %add.ptr664.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664, i32 2, !dbg !256
  store half %conv.i.i903.1, ptr addrspace(3) %add.ptr664.sroa_idx, align 2, !dbg !256
  %add.ptr664.sroa_idx1113 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664, i32 4, !dbg !256
  store half %conv.i.i903.2, ptr addrspace(3) %add.ptr664.sroa_idx1113, align 4, !dbg !256
  %add.ptr664.sroa_idx1114 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664, i32 6, !dbg !256
  store half %conv.i.i903.3, ptr addrspace(3) %add.ptr664.sroa_idx1114, align 2, !dbg !256
  %conv.i.i903.11091 = fptrunc float %div.4 to half, !dbg !251
  %conv.i.i903.1.1 = fptrunc float %div.5 to half, !dbg !251
  %conv.i.i903.2.1 = fptrunc float %div.6 to half, !dbg !251
  %conv.i.i903.3.1 = fptrunc float %div.7 to half, !dbg !251
  %add.ptr664.1 = getelementptr inbounds i8, ptr addrspace(3) %241, i32 %add.ptr664.idx.1.pre-phi, !dbg !57
  store half %conv.i.i903.11091, ptr addrspace(3) %add.ptr664.1, align 8, !dbg !256
  %add.ptr664.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664.1, i32 2, !dbg !256
  store half %conv.i.i903.1.1, ptr addrspace(3) %add.ptr664.1.sroa_idx, align 2, !dbg !256
  %add.ptr664.1.sroa_idx1118 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664.1, i32 4, !dbg !256
  store half %conv.i.i903.2.1, ptr addrspace(3) %add.ptr664.1.sroa_idx1118, align 4, !dbg !256
  %add.ptr664.1.sroa_idx1119 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664.1, i32 6, !dbg !256
  store half %conv.i.i903.3.1, ptr addrspace(3) %add.ptr664.1.sroa_idx1119, align 2, !dbg !256
  %conv.i.i903.21093 = fptrunc float %div.8 to half, !dbg !251
  %conv.i.i903.1.2 = fptrunc float %div.9 to half, !dbg !251
  %conv.i.i903.2.2 = fptrunc float %div.10 to half, !dbg !251
  %conv.i.i903.3.2 = fptrunc float %div.11 to half, !dbg !251
  %add.ptr664.2 = getelementptr inbounds i8, ptr addrspace(3) %241, i32 %add.ptr664.idx.2.pre-phi, !dbg !57
  store half %conv.i.i903.21093, ptr addrspace(3) %add.ptr664.2, align 8, !dbg !256
  %add.ptr664.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664.2, i32 2, !dbg !256
  store half %conv.i.i903.1.2, ptr addrspace(3) %add.ptr664.2.sroa_idx, align 2, !dbg !256
  %add.ptr664.2.sroa_idx1123 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664.2, i32 4, !dbg !256
  store half %conv.i.i903.2.2, ptr addrspace(3) %add.ptr664.2.sroa_idx1123, align 4, !dbg !256
  %add.ptr664.2.sroa_idx1124 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664.2, i32 6, !dbg !256
  store half %conv.i.i903.3.2, ptr addrspace(3) %add.ptr664.2.sroa_idx1124, align 2, !dbg !256
  %conv.i.i903.31095 = fptrunc float %div.12 to half, !dbg !251
  %conv.i.i903.1.3 = fptrunc float %div.13 to half, !dbg !251
  %conv.i.i903.2.3 = fptrunc float %div.14 to half, !dbg !251
  %conv.i.i903.3.3 = fptrunc float %div.15 to half, !dbg !251
  %add.ptr664.3 = getelementptr inbounds i8, ptr addrspace(3) %241, i32 %add.ptr664.idx.3.pre-phi, !dbg !57
  store half %conv.i.i903.31095, ptr addrspace(3) %add.ptr664.3, align 8, !dbg !256
  %add.ptr664.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664.3, i32 2, !dbg !256
  store half %conv.i.i903.1.3, ptr addrspace(3) %add.ptr664.3.sroa_idx, align 2, !dbg !256
  %add.ptr664.3.sroa_idx1128 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664.3, i32 4, !dbg !256
  store half %conv.i.i903.2.3, ptr addrspace(3) %add.ptr664.3.sroa_idx1128, align 4, !dbg !256
  %add.ptr664.3.sroa_idx1129 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664.3, i32 6, !dbg !256
  store half %conv.i.i903.3.3, ptr addrspace(3) %add.ptr664.3.sroa_idx1129, align 2, !dbg !256
  %conv.i.i903.4 = fptrunc float %div.16 to half, !dbg !251
  %conv.i.i903.1.4 = fptrunc float %div.17 to half, !dbg !251
  %conv.i.i903.2.4 = fptrunc float %div.18 to half, !dbg !251
  %conv.i.i903.3.4 = fptrunc float %div.19 to half, !dbg !251
  %242 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %add641.4.pre-phi, !dbg !57
  %243 = getelementptr inbounds i8, ptr addrspace(3) %242, i32 %.idx948.4.pre-phi, !dbg !57
  %add.ptr664.4 = getelementptr inbounds i8, ptr addrspace(3) %243, i32 %add.ptr664.idx.pre-phi, !dbg !57
  store half %conv.i.i903.4, ptr addrspace(3) %add.ptr664.4, align 8, !dbg !256
  %add.ptr664.4.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664.4, i32 2, !dbg !256
  store half %conv.i.i903.1.4, ptr addrspace(3) %add.ptr664.4.sroa_idx, align 2, !dbg !256
  %add.ptr664.4.sroa_idx1133 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664.4, i32 4, !dbg !256
  store half %conv.i.i903.2.4, ptr addrspace(3) %add.ptr664.4.sroa_idx1133, align 4, !dbg !256
  %add.ptr664.4.sroa_idx1134 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664.4, i32 6, !dbg !256
  store half %conv.i.i903.3.4, ptr addrspace(3) %add.ptr664.4.sroa_idx1134, align 2, !dbg !256
  %conv.i.i903.5 = fptrunc float %div.20 to half, !dbg !251
  %conv.i.i903.1.5 = fptrunc float %div.21 to half, !dbg !251
  %conv.i.i903.2.5 = fptrunc float %div.22 to half, !dbg !251
  %conv.i.i903.3.5 = fptrunc float %div.23 to half, !dbg !251
  %add.ptr664.5 = getelementptr inbounds i8, ptr addrspace(3) %243, i32 %add.ptr664.idx.1.pre-phi, !dbg !57
  store half %conv.i.i903.5, ptr addrspace(3) %add.ptr664.5, align 8, !dbg !256
  %add.ptr664.5.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664.5, i32 2, !dbg !256
  store half %conv.i.i903.1.5, ptr addrspace(3) %add.ptr664.5.sroa_idx, align 2, !dbg !256
  %add.ptr664.5.sroa_idx1138 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664.5, i32 4, !dbg !256
  store half %conv.i.i903.2.5, ptr addrspace(3) %add.ptr664.5.sroa_idx1138, align 4, !dbg !256
  %add.ptr664.5.sroa_idx1139 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664.5, i32 6, !dbg !256
  store half %conv.i.i903.3.5, ptr addrspace(3) %add.ptr664.5.sroa_idx1139, align 2, !dbg !256
  %conv.i.i903.6 = fptrunc float %div.24 to half, !dbg !251
  %conv.i.i903.1.6 = fptrunc float %div.25 to half, !dbg !251
  %conv.i.i903.2.6 = fptrunc float %div.26 to half, !dbg !251
  %conv.i.i903.3.6 = fptrunc float %div.27 to half, !dbg !251
  %add.ptr664.6 = getelementptr inbounds i8, ptr addrspace(3) %243, i32 %add.ptr664.idx.2.pre-phi, !dbg !57
  store half %conv.i.i903.6, ptr addrspace(3) %add.ptr664.6, align 8, !dbg !256
  %add.ptr664.6.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664.6, i32 2, !dbg !256
  store half %conv.i.i903.1.6, ptr addrspace(3) %add.ptr664.6.sroa_idx, align 2, !dbg !256
  %add.ptr664.6.sroa_idx1143 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664.6, i32 4, !dbg !256
  store half %conv.i.i903.2.6, ptr addrspace(3) %add.ptr664.6.sroa_idx1143, align 4, !dbg !256
  %add.ptr664.6.sroa_idx1144 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664.6, i32 6, !dbg !256
  store half %conv.i.i903.3.6, ptr addrspace(3) %add.ptr664.6.sroa_idx1144, align 2, !dbg !256
  %conv.i.i903.7 = fptrunc float %div.28 to half, !dbg !251
  %conv.i.i903.1.7 = fptrunc float %div.29 to half, !dbg !251
  %conv.i.i903.2.7 = fptrunc float %div.30 to half, !dbg !251
  %conv.i.i903.3.7 = fptrunc float %div.31 to half, !dbg !251
  %add.ptr664.7 = getelementptr inbounds i8, ptr addrspace(3) %243, i32 %add.ptr664.idx.3.pre-phi, !dbg !57
  store half %conv.i.i903.7, ptr addrspace(3) %add.ptr664.7, align 8, !dbg !256
  %add.ptr664.7.sroa_idx = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664.7, i32 2, !dbg !256
  store half %conv.i.i903.1.7, ptr addrspace(3) %add.ptr664.7.sroa_idx, align 2, !dbg !256
  %add.ptr664.7.sroa_idx1148 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664.7, i32 4, !dbg !256
  store half %conv.i.i903.2.7, ptr addrspace(3) %add.ptr664.7.sroa_idx1148, align 4, !dbg !256
  %add.ptr664.7.sroa_idx1149 = getelementptr inbounds i8, ptr addrspace(3) %add.ptr664.7, i32 6, !dbg !256
  store half %conv.i.i903.3.7, ptr addrspace(3) %add.ptr664.7.sroa_idx1149, align 2, !dbg !256
  fence syncscope("warp") release, !dbg !257
  tail call void @llvm.mxc.barrier.warp(), !dbg !260
  fence syncscope("warp") acquire, !dbg !261
  %244 = getelementptr inbounds %struct.__half, ptr addrspace(3) @shared, i32 %mul684.pre-phi, !dbg !61
  %245 = getelementptr inbounds %struct.__half, ptr addrspace(3) %244, i32 %mul679.pre-phi, !dbg !61
  %246 = getelementptr inbounds i8, ptr addrspace(3) %245, i32 %.idx950.pre-phi, !dbg !61
  %add.ptr705 = getelementptr inbounds i8, ptr addrspace(3) %246, i32 %add.ptr705.idx.pre-phi, !dbg !61
  %247 = load i64, ptr addrspace(3) %add.ptr705, align 8, !dbg !262
  %add.ptr705.1 = getelementptr inbounds i8, ptr addrspace(3) %246, i32 %add.ptr705.idx.1.pre-phi, !dbg !61
  %248 = load i64, ptr addrspace(3) %add.ptr705.1, align 8, !dbg !262
  %add.ptr726 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi1985, !dbg !263
  store i64 %247, ptr addrspace(1) %add.ptr726, align 16, !dbg !264
  %output_fetch.sroa.10.0.add.ptr726.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr726, i64 8, !dbg !264
  store i64 %248, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr726.sroa_idx, align 8, !dbg !264
  %249 = getelementptr inbounds i8, ptr addrspace(3) %245, i32 512, !dbg !61
  %250 = getelementptr inbounds i8, ptr addrspace(3) %249, i32 %.idx950.11102.pre-phi, !dbg !61
  %add.ptr705.11104 = getelementptr inbounds i8, ptr addrspace(3) %250, i32 %add.ptr705.idx.pre-phi, !dbg !61
  %251 = load i64, ptr addrspace(3) %add.ptr705.11104, align 8, !dbg !262
  %add.ptr705.1.1 = getelementptr inbounds i8, ptr addrspace(3) %250, i32 %add.ptr705.idx.1.pre-phi, !dbg !61
  %252 = load i64, ptr addrspace(3) %add.ptr705.1.1, align 8, !dbg !262
  %add.ptr726.1 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi1995, !dbg !263
  store i64 %251, ptr addrspace(1) %add.ptr726.1, align 16, !dbg !264
  %output_fetch.sroa.10.0.add.ptr726.1.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr726.1, i64 8, !dbg !264
  store i64 %252, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr726.1.sroa_idx, align 8, !dbg !264
  %253 = getelementptr inbounds i8, ptr addrspace(3) %245, i32 1024, !dbg !61
  %254 = getelementptr inbounds i8, ptr addrspace(3) %253, i32 %.idx950.pre-phi, !dbg !61
  %add.ptr705.2 = getelementptr inbounds i8, ptr addrspace(3) %254, i32 %add.ptr705.idx.1.pre-phi, !dbg !61
  %255 = load i64, ptr addrspace(3) %add.ptr705.2, align 8, !dbg !262
  %add.ptr705.1.2 = getelementptr inbounds i8, ptr addrspace(3) %254, i32 %add.ptr705.idx.pre-phi, !dbg !61
  %256 = load i64, ptr addrspace(3) %add.ptr705.1.2, align 8, !dbg !262
  %add.ptr726.2 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi1997, !dbg !263
  store i64 %255, ptr addrspace(1) %add.ptr726.2, align 16, !dbg !264
  %output_fetch.sroa.10.0.add.ptr726.2.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr726.2, i64 8, !dbg !264
  store i64 %256, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr726.2.sroa_idx, align 8, !dbg !264
  %257 = getelementptr inbounds i8, ptr addrspace(3) %245, i32 1536, !dbg !61
  %258 = getelementptr inbounds i8, ptr addrspace(3) %257, i32 %.idx950.11102.pre-phi, !dbg !61
  %add.ptr705.3 = getelementptr inbounds i8, ptr addrspace(3) %258, i32 %add.ptr705.idx.1.pre-phi, !dbg !61
  %259 = load i64, ptr addrspace(3) %add.ptr705.3, align 8, !dbg !262
  %add.ptr705.1.3 = getelementptr inbounds i8, ptr addrspace(3) %258, i32 %add.ptr705.idx.pre-phi, !dbg !61
  %260 = load i64, ptr addrspace(3) %add.ptr705.1.3, align 8, !dbg !262
  %add.ptr726.3 = getelementptr inbounds %struct.__half, ptr addrspace(1) %Output.coerce, i64 %.pre-phi1999, !dbg !263
  store i64 %259, ptr addrspace(1) %add.ptr726.3, align 16, !dbg !264
  %output_fetch.sroa.10.0.add.ptr726.3.sroa_idx = getelementptr inbounds i8, ptr addrspace(1) %add.ptr726.3, i64 8, !dbg !264
  store i64 %260, ptr addrspace(1) %output_fetch.sroa.10.0.add.ptr726.3.sroa_idx, align 8, !dbg !264
  ret void, !dbg !265
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

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
!1 = !DIFile(filename: "/root/tilelang-metax/race_tests/nsa/rep/v131_worker1_c6_bounded_kv_index_sc-16g-2/codegen/candidate131/case6.device.cpp", directory: "/root/tilelang-metax")
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
!41 = !DIFile(filename: "race_tests/nsa/rep/v131_worker1_c6_bounded_kv_index_sc-16g-2/codegen/candidate131/case6.device.cpp", directory: "/root/tilelang-metax")
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
!88 = !DILocation(line: 42, column: 5, scope: !40)
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
!227 = !DILocation(line: 127, column: 5, scope: !40)
!228 = !DILocation(line: 132, column: 56, scope: !40)
!229 = !DILocation(line: 132, column: 42, scope: !40)
!230 = !DILocation(line: 132, column: 217, scope: !40)
!231 = !DILocation(line: 139, column: 28, scope: !40)
!232 = !DILocation(line: 139, column: 285, scope: !40)
!233 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !234)
!234 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !235)
!235 = distinct !DILocation(line: 143, column: 5, scope: !40)
!236 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !234)
!237 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !234)
!238 = !DILocation(line: 155, column: 144, scope: !40)
!239 = !DILocation(line: 155, column: 67, scope: !40)
!240 = !DILocation(line: 155, column: 48, scope: !40)
!241 = !DILocation(line: 160, column: 64, scope: !40)
!242 = !DILocation(line: 124, column: 38, scope: !40)
!243 = !DILocation(line: 0, scope: !40)
!244 = !DILocation(line: 176, column: 23, scope: !40)
!245 = !DILocation(line: 176, column: 38, scope: !40)
!246 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !247)
!247 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !248)
!248 = distinct !DILocation(line: 178, column: 3, scope: !40)
!249 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !247)
!250 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !247)
!251 = !DILocation(line: 984, column: 21, scope: !252, inlinedAt: !253)
!252 = distinct !DISubprogram(name: "__float2half", scope: !164, file: !164, line: 979, type: !7, scopeLine: 979, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!253 = distinct !DILocation(line: 133, column: 53, scope: !254, inlinedAt: !255)
!254 = distinct !DISubprogram(name: "__half", scope: !164, file: !164, line: 133, type: !7, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!255 = distinct !DILocation(line: 182, column: 39, scope: !40)
!256 = !DILocation(line: 184, column: 274, scope: !40)
!257 = !DILocation(line: 68, column: 3, scope: !71, inlinedAt: !258)
!258 = distinct !DILocation(line: 192, column: 3, scope: !74, inlinedAt: !259)
!259 = distinct !DILocation(line: 186, column: 3, scope: !40)
!260 = !DILocation(line: 69, column: 3, scope: !71, inlinedAt: !258)
!261 = !DILocation(line: 70, column: 3, scope: !71, inlinedAt: !258)
!262 = !DILocation(line: 191, column: 46, scope: !40)
!263 = !DILocation(line: 193, column: 22, scope: !40)
!264 = !DILocation(line: 193, column: 134, scope: !40)
!265 = !DILocation(line: 195, column: 1, scope: !40)
