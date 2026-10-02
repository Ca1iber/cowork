from pathlib import Path
import ast,json,hashlib
p=Path('/root/tilelang-metax/race_tests/nsa');v='v083_codex_power_s1_d32_register_sc-16g-2';r=p/'rep'/v;full={(rr,cc) for rr in range(16) for cc in range(32)}
qk=[(lane%16,chunk*16+(lane//16)*4+e) for lane in range(64) for chunk in range(2) for e in range(4)];vcoords=[((lane//16)*4+e,chunk*16+lane%16) for lane in range(64) for chunk in range(2) for e in range(4)];assert len(qk)==512 and set(qk)==full;assert len(vcoords)==512 and set(vcoords)==full
for token in range(64):
 for index in range(4):
  if index*16<=token:assert index*16+15<64
text=(p/'experiments'/v/'s1_d32_kernel.py').read_text();assert 'alloc_shared' not in text and 'sync_warp' not in text;info={'new_global_direct':True,'Q_K_and_output_coords_full_unique':512,'PV_V_coords_full_unique':512,'MMA_QK':2,'MMA_PV':2,'local_vector_offsets':'0/1,4elements each in8extent;q8,num8,Vop8,scoreP4,k4','valid16rows_inbounds':True,'shared_declared_bytes':0,'explicit_memory_barriers':0,'gmem_qk_output_vec':'4halves8B lastdim contiguous; warp may overfetch','V_loads':'4scalar row loads/lane/chunk,coalesced columns across16lane blocks','math':'F32QK/globalmax,F16Pscale256,F32sum sameconsumedP,F32PV','not_native_correctness_proof':True};(r/'D32_coordinate_proof.json').write_text(json.dumps(info,indent=2)+'\n');print(info)
