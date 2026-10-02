import os,sys
print("NATIVE_EXEC_READY",flush=True)
assert sys.stdin.buffer.readline()==b"GO\n"
os.execv("/opt/conda/bin/python",["/opt/conda/bin/python","/root/tilelang-metax/race_tests/nsa/hack/v000_codex_power_baseline_sc-16g-2/run_variant.py"])
