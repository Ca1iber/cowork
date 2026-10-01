import fractions,json,random,struct
from pathlib import Path
p=Path('/root/tilelang-metax/race_tests/nsa');v='v068_codex_power_s8_final_den_reduce_sc-16g-2'
F=fractions.Fraction;random.seed(68);f32=lambda x:struct.unpack('f',struct.pack('f',float(x)))[0]
ps=[F(0),F(1,2**24),F(1,2**14),F(1,32),F(1,4),F(1,2),F(1),F(16),F(128),F(256)];alphas=[F(0),F(1,2**24),F(1,16),F(1,4),F(1,2),F(3,4),F(1)]
max_relative=0.0;checks=0
for test in range(256):
 exact=F(0);local=[F(0)]*4;old=0.0;part=[0.0]*4
 for block in range(8):
  alpha=random.choice(alphas);vals=[[random.choice(ps) for e in range(4)] for lane in range(4)]
  vals[(test+block)%4][0]=F(256)
  sums=[sum(a,F(0)) for a in vals];exact=alpha*exact+sum(sums,F(0));local=[alpha*x+y for x,y in zip(local,sums)];assert exact==sum(local,F(0));checks+=1
  rounded=[]
  for a in vals:
   x=0.0
   for y in a:x=f32(x+float(y))
   rounded.append(x)
  global_sum=f32(f32(rounded[0]+rounded[2])+f32(rounded[1]+rounded[3]));old=f32(f32(float(alpha)*old)+global_sum)
  part=[f32(f32(float(alpha)*x)+y) for x,y in zip(part,rounded)]
 new=f32(f32(part[0]+part[2])+f32(part[1]+part[3]));max_relative=max(max_relative,abs(new-old)/max(abs(old),1.0))
for lane in range(64):assert (lane^32)%16==lane%16 and (lane^16)%16==lane%16
u=2**-24;gamma=64*u/(1-64*u)
out={'exact_real_induction_checks':checks,'identity':'sum_l(alpha*d_l+p_l)=alpha*sum_l(d_l)+sum_l(p_l),alpha query-head uniform','lane_head_groups_preserved_by_xor32_16':True,'P_consumed_FP16_range':[0,256],'local_partial_den_upper':8192,'global_den_upper':32768,'arithmetic_model_gamma64':gamma,'model_only':'standard positive FP32 arithmetic model;not a GPU exp/rounding guarantee','simulated_positive_f32_relative_delta_max':max_relative,'simulation_scope':'diagnostic only,not native correctness or changed official inputs','invalid_blocks':'wholewarp same skipped recurrence,final collectives outside guard full64mask','all_attention_and_numerator_work':'unchanged,only denominator reduction placement'}
(p/'rep'/v/'deferred_denominator_proof.json').write_text(json.dumps(out,indent=2)+'\n');print(out)
