#!/bin/bash

# These are the tests in the LongRun Test Suite
# To run these tests, user may clone the fabric, make code changes if desired, build images, and
# run any of these scripts - each of which may take between 12 hours and 3 days to complete.

#   GO SDK - Consensus CRT*, LargeNetwks                 (uses REST) scott
#   GO SDK - Ledger Long LST*                            (uses REST) scott/nishi
#   GO SDK - Concurrency/Ledger Long LST*                (uses REST) scott/nishi
#   Node.js Concurrency with Auction                     (uses gRPC) nishi
#   Node.js Complex Transactions with Auction            (uses gRPC) nishi
#   Node.js Performance engine tests                     (uses gRPC) dongming
#   - verify can handle fixed-rate "supported" number of Tx per sec
#     for various durations, 1 or 10 or 60 minutes
#   - measure for variable traffic rates, and burstiness
#   - find the max Tx per sec that can be handled in 1 or 10 or 60 minutes
#   - sequential and concurrency


# UNDER CONSTRUCTION...


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
Node.js Concurrency with Auction (Test missing!)
performancetestsLongrun/...
- 

