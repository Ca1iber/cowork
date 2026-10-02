# v217 Q/K packing branch encoding

## 1. Scope
Only C8 parent4c, Q/K global16B unchanged, half4 swap expressed as rowflip two vector4 copies or vector8 identity; shared vector8 store outside branch. Parent JIT restored/exact.

## 2. Static
Source21332/header217/3imports/parent14ASTprefix. Q/K each1024 values/address/relative16B alignment proof. Inverse encoding restores216 exactbytes; bodyinverse restoresP84. Other13 device/performanceUNAVAILABLE, source equality no no-reg proof.

## 3. Compile
Unique P/C metadata2pairs, independent geometry/strictgenerated and candidate resource/firstIR truewait0. Host4096x2/64/dyn2048. ParentCPP24237/SDK5d/IRffc matchedreuse; no parentresource recompile. Old216 scalarstore gate1 unchanged.

## 4. Actual encoding
CPP uint4 shared intent, O3IR Q/K8 i64stores (two8B perfetch) and i64selects. No16Bstore/vectorPHI materialization. Kernel8MMA7warps4bpermute/noalloca/noAS5. Declaredmechanismgate1 retained, finalISAtransactionsUNAVAILABLE.

## 5. Resources/runtime
Parent42MT20ST→C40MT22ST/max8/stack0/dyn2K. Metadata80samples40.936s/backend7samples3.597s, OOM3 unchanged/no signals. Resource decrease does not establish speed.

## 6. Limits
0attention/fullreference/native/profile. No latency/correctness/no-reg/OJ verdict; no exclusive/HBM/occupancy proof. No repeated compile or threshold relaxation. Differentencoding is not an exception to stored16Bfalsifier.

## 7. Closure
Close217 mechanismmaterializationfailed with raw source/CPP/IR/resources/waits/guards. Independent218 may ask end-to-endlatency of this immutablepackedencoding under originalnative protocol; it will not restore217gate1 or generateanothercandidate. archive_sha256 exactbytes excludes itself/pycache.
