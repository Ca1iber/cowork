# v070 C6 stream PV operand consumption

Observed: C6 ownv060 native~95us versus exactv28~157us;32MMA,100MT/22ST,max4,shared8192B,private0. v069 normalization IR change canonicalized to identical8448B machine.text,so rejected. Current ownPV helper loads4chunk*4half=16half per plane before4MMA; each4half is consumed once.
Verified: producer/load sequence and32MMA count;100MT static compiler usage. Extra live operand cost is hypothesis,not measured occupancy.
Hypothesis: interleave each chunk's2packed shared loads immediately with its MMA,keeping only4half local operand;reduce operand/address live range and MT allocation. Normal backend may still hoist loads or canonicalize,so actual machine/resource inspection is required.
Mechanism: only localv_operand16->4 and PV per-chunk loading/MMA interleaving. QK/P/masks/denominator/outputlayout/global accesses/barriers unchanged. PV calls per output keep keytile0then1 and originalplane/chunk order;immutable sharedV during consumerphase makes load reordering legal. Candidate C12 exact ownv068;other12 exactoriginalv28 black-box prefix/entry.
Predictions: normalCPP4half operand consumed at offset0;staticMMA32 and all tensor bytes unchanged;different .text with ideallyMT<100 and improved fullnativeC6. static maxwarps is not achievedoccupancy.
Falsifiers: native correctness/import failure,private spills/resource increase,identical machine text,no meaningful fullnativepairedtarget gain,or other official/OJ regression. No multiple reruns to erase negatives.
Risks: less shared prefetch overlap or backend scheduling worse;no async copy/injected source/manual generalbuiltin. Memory/vector width/alignment and fragmentownership need proof.
Plan: pre-edit card,normalized AST/order/address proof,bounds,normalCPP/LLVM/resources/static,native selectedscreen W10R50,formalpairedtarget,thenfull14/profile/exactarchive if target establishes gain. All official inputs/native benchmark semantics untouched. Main v28 and pending64/68 preserved;actualOJpending cannot prove all-case no regression.

History scope: ownv018 changes S8 score/softmax organization;ownv029 replaces sharedPV feed with directglobalV. v070 retains current sharedV producer,layout,barriers and exact PV arithmetic,changes only consumer live window. No historical team algorithm consulted.

Outcome: compiler100MT unchanged,different+256B machine.text,C6native+1.940percent,13 fullreference PASS;fresh profile3sources footprints consistent;reject,no full14/OJ promotion.
