import difflib
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');id='v025_codex_power_s2_s4_register_qk_sc-16g-2'
p=root/'experiments/v024_codex_power_host_kernel_cache_sc-16g-2/candidate.py'
s=p.read_text().replace('# codex-power v024','# codex-power v025',1).replace('_make_s8_register_qk','_make_multiblock_register_qk').replace('assert selected_blocks == 8 and','assert selected_blocks in (2, 4, 8) and',1).replace('if (S == 8 and block_size == 16','if (S in (2, 4, 8) and block_size == 16',1)
out=root/'experiments'/id/'candidate.py';out.write_text(s)
(out.parent/'source_diff.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(True),s.splitlines(True),fromfile=str(p),tofile=str(out))))
