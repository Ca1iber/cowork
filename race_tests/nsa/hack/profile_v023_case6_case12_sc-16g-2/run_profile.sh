#!/bin/bash
set -eu
cd /root/tilelang-metax
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
export MACA_PATH=/opt/maca
id=profile_v023_case6_case12_sc-16g-2
rep=race_tests/nsa/rep/$id
profile=race_tests/nsa/hack/v023_case6_direct_k_sc-16g-2/profile_variant.py
base=race_tests/nsa/submission/v009_nested_metaclass_sc-16g-2/submission.py
best=race_tests/nsa/submission/v023_case6_direct_k_sc-16g-2/submission.py
{
 date -Is
 git branch --show-current
 git rev-parse HEAD
 git status --short
 sha256sum "$base" "$best" race_tests/nsa/official_case.json race_tests/nsa/test_tilelang_nsa_fwd.py
 /opt/conda/bin/python -c 'import torch,tilelang; print("torch",torch.__version__,"tilelang",tilelang.__version__)'
 mx-smi --version
} > "$rep/identity.txt" 2>&1
for variant in v009 v023; do
 if [ "$variant" = v009 ]; then source="$base"; else source="$best"; fi
 for case in 6 12; do
  NSA_VARIANT_SOURCE="$PWD/$source" NSA_PROFILE_MODE=measure /opt/conda/bin/python -u "$profile" "$case" > "$rep/measure_${variant}_case${case}.log" 2>&1
  NSA_VARIANT_SOURCE="$PWD/$source" NSA_PROFILE_MODE=torchprof NSA_TRACE_PATH="$PWD/$rep/trace_${variant}_case${case}.json" /opt/conda/bin/python -u "$profile" "$case" > "$rep/trace_${variant}_case${case}.log" 2>&1
 done
done
cd /opt/mcProfiler-ubuntu18.04
for variant in v009 v023; do
 if [ "$variant" = v009 ]; then source=/root/tilelang-metax/$base; else source=/root/tilelang-metax/$best; fi
 for case in 6 12; do
  mkdir -p "/root/tilelang-metax/$rep/mcprof_${variant}_case${case}/raw"
  target="env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa NSA_VARIANT_SOURCE=$source MCTX_TARGET_PROFILE_PATH=/root/tilelang-metax/$rep/mcprof_${variant}_case${case}/raw /opt/conda/bin/python -u $profile $case"
  mcProfiler perf_exec --cmdline "$target" --casename "nsa_${variant}_case${case}_fresh" --metrics "L2C Hit Rate" "Global Memory Read bytes" "Global Memory Write bytes" "AP MTE Duty ratio" "AP MMA Duty ratio" "ISU stall cycles layout" "shared memory access efficiency" "average latency per load instruction" --counts 20 --custom --cwd /root/tilelang-metax > "/root/tilelang-metax/$rep/mcprof_${variant}_case${case}/mcprofiler.log" 2>&1
  echo $? > "/root/tilelang-metax/$rep/mcprof_${variant}_case${case}/exit_code.txt"
 done
done
