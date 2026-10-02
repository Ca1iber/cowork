# v205 corrected case5 proposal

Official case5 key(4,1024,1,16,64,1,16,True), parent factory_make_power_s1_case4_dense from actual loop binding. Existing parent case5 host launch=[1024,4]x[64,1,1], dynamic2048B;4096waves/8MiB do not identify the shape alone. L1024 valid aligned block start<=token<=1023 implies all16Vrows<=1023; negative andSEQ_LEN sentinel keep parent uniform no-read guard.

Only planned change: reuse Num8 across two32-feature output groups after allVoperand16half have been read tolocal; preserve P/full roundedPden, perfeature PV, float32 division/F16 conversion, original shared8B output and finalglobal16B. Output-slot vector proof512+512 is perquery and independent of B/L. AllVsharedreads must dominate first outputoverwrite; no later V reload from overwritten shared allowed. Candidate metadata MT>=42 or stack/math/vector/sync/index/forbidden failure stops before native. Fewer independentPV accumulators can hurtILP even with lowerMT.

Initial proposal incorrectly wrote officialcase7 key and is retained in initial_proposal_wrong_case7_key.json. No candidate/heavy was created orrun. Only ownplan/proof/communication changed; oldv204 evidence remainsimmutable. Source/heavy GO pendingleader.
