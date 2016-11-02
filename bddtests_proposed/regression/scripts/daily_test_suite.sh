#!/bin/bash

# These are the tests in the Daily Test Suite
# To run these tests, user may clone the fabric, make code changes if desired, build images, and run this script.

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

