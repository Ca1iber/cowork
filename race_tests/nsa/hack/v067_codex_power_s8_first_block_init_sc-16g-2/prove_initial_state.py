import math,json
from pathlib import Path
p=Path('/root/tilelang-metax/race_tests/nsa');v='v067_codex_power_s8_first_block_init_sc-16g-2'
assert 64*65504.0*65504.0<3.402823466e38
samples=[-64*65504.0*65504.0,-1000.0,-1.0,0.0,1.0,1000.0,64*65504.0*65504.0]
for b in samples:
 m=max(-math.inf,b);alpha=2.0**(-math.inf-m)
 assert m==b and alpha==0.0 and 0.0*alpha==0.0
order=[0]+list(range(1,8));assert order==list(range(8))
out={'finite_FP16_dot64_FP32_bound':64*65504.0*65504.0,'initial_state':'N=+0,Z=+0,M=-inf','valid_first_branch':'block_start>=0 and<=token,at least key0 causal;finite score maximum','old_update':'newM=max(-inf,bM)=bM,alpha=exp2(-inf)=0,N0*alpha=0,Z0*alpha=0','specialized_update':'M=bM,keep N0/Z0 unchanged; P,partial sum,PV identical','invalid_first_branch':'same guard skips all first K/PV/math;state remains N0/Z0/M-inf;original loop1..7 handles future valid blocks','selected_order':order,'omitted_ops':'one alpha exp+16Nmultiplies+1Zmultiply,max with-inf','float_scope':'official finite FP16 inputs;no first index value hardcoding or assumption','not_a_native_test':'algebra/order proof,native full reference still required'}
(p/'rep'/v/'initial_state_order_proof.json').write_text(json.dumps(out,indent=2)+'\n');print(out)
