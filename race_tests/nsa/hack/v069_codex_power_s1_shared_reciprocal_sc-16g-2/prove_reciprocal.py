from pathlib import Path
from fractions import Fraction
import json,random,struct
p=Path('/root/tilelang-metax/race_tests/nsa');v='v069_codex_power_s1_shared_reciprocal_sc-16g-2'
f32=lambda x:struct.unpack('f',struct.pack('f',x))[0]
r=random.Random(6906);maxrel=0.;maxabs=0.;checks=0
for i in range(4096):
 den=Fraction(r.randrange(1024,32769),4);num=Fraction(r.randrange(-1000000,1000001),16)
 assert num/den==num*(1/den);checks+=1
for i in range(20000):
 den=f32(r.uniform(256,8192));num=f32(r.uniform(-65504*den,65504*den))
 a=f32(num/den);b=f32(num*f32(1.0/den));delta=abs(a-b);maxabs=max(maxabs,delta)
 if a:maxrel=max(maxrel,delta/abs(a))
out={'exact_real_fraction_checks':checks,'positive_denominator_bound':[256,8192],'reciprocal_bound':[1/8192,1/256],'bound_scope':'finite original probabilities at most256,nonempty block has maximumP256;native reference still decisive','simulation_cases':20000,'sim_f32_max_relative_delta':maxrel,'sim_f32_max_absolute_delta':maxabs,'simulation_scope':'host diagnostic only,not hardware exp/div guarantee or changed official inputs','invalid_case':'old0/0 and new0*inf bothNaN under IEEE;no branch or mask change','all_other_algorithm_work':'unchanged AST proof','required_gate':'full original naive_nsa tolerance1e-2,W10/R50'}
(p/'rep'/v/'reciprocal_numeric_model.json').write_text(json.dumps(out,indent=2)+'\n');print(out)
