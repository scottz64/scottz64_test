#!/bin/bash

#   GO SDK - Consensus CAT*                         (uses REST) scott
#   GO SDK - Ledger LST*                            (uses REST) scott
#   GO SDK - Concurrency/Ledger                     (uses REST) scott/nishi
#   Node.js Concurrency with Auction                (uses gRPC) nishi
#   Node.js Complex Transactions with Auction       (uses gRPC) nishi
#   Node.js Performance engine Baseline tests       (uses gRPC) dongming


# UNDER CONSTRUCTION...


DAILY

release-criteria/fvt/consensus/obcsdk/automation/run_all_CAT_tests.sh
- CAT/CAT_*
release-criteria/fvt/consensus/obcsdk/automation/run_LST_regression.sh
- BasicFuncExistingNetworkLST.go
- LST_1client1peer20K.go
- LST_2client1peer20K.go
- LST_2client2peer20K.go
- LST_4client1peer20K.go
- LST_4client4peer20K.go
release-criteria/svt/concurrency/run_conc4p1min1000Thrd1TxPerLoop_LOCAL.sh
- conc4p1min1000Thrd1TxPerLoop.go
release-criteria/svt/concurrency/run_conc4p1min400Thrd_LOCAL.sh
- conc4p1min400Thrd.go
Run Concurrency with Auction (test missing)
run_complexTx_auction.sh
- 
performancetestsDaily/...
- 


LONGRUN

release-criteria/fvt/consensus/obcsdk/automation/run_largeNetworksBasicApiAndConsensus.sh
- CAT/CRT_50504_Npeers_Sf_S_R_Rf.go
release-criteria/fvt/consensus/obcsdk/automation/run_long_CRT.sh , includes:
-  obcsdk/CAT/CRT_501_StopAndRestartRandom_10Hrs.go	# note: test must be modified to actually specify timelength
-  obcsdk/CAT/CRT_502_StopAndRestart1or2_10Hrs.go	# note: test must be modified to actually specify timelength
release-criteria/fvt/consensus/obcsdk/automation/run_LST_3M.sh
- LST_4client1peer1M.go and/or
- LST_4client4peer3M.go and/or combine with next one:
release-criteria/svt/longruns/run_long_run_72hour_LOCAL.sh
- LongRun72hrAuto.go
performancetestsLongrun/...
- 

