# v007: two-wave case6 QK/PV thread mapping

Starting branch: codex-power, parent commit 89a5bd139. Base source is the exact locally improved v006 candidate independently constructed on this branch from the user's ffa68b684e3876df2821fe34c9959493c2ca065a start. No earlier pre-existing optimized NSA source is used. Machine: sc-16g-2 / C500 16G sGPU.

Observed evidence: v006 case6 B8,N1024,H1,HQ16,D128,S1,BS32 passes all official references and has a paired median 216.286 us versus original 220.595 us. mcTracer device median is 214.528 us, with 2.816 us launch gap. Removing output shared improved shared nonconflict accesses, but MMA duty remains 4.315% and the kernel still spends over 4x the conservative minimum-byte HBM transfer floor. V006 uses a 64-thread CTA for one QK and one PV GEMM; its generated code has 32 FP32 output_acc values per thread.

Hypothesis: use 128 threads only for the case6 compile-time shape, distributing GEMM/output fragments over two 64-thread waves. Predicted per-thread output_acc and sequential MFMA work fall, with case6 device and official latency below v006. A real mechanism requires a changed device kernel. Falsifiers: compiler layout conflict, incorrect output, unchanged code, worse occupancy, or no paired case6 latency gain.

The exact candidate retains only the user's three authorized imports and keeps the v006 direct output mechanism. All other shapes should compile to the v006 device and host code. No async copy, foreign code, class import, or Torch GPU kernel work.
