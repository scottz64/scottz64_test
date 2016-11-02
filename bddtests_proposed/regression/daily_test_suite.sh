#!/bin/bash
#
# Copyright IBM Corp. 2016 All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# DESCRIPTION:
# These are the tests in the Daily Test Suite.
# To run these tests, user may clone the fabric, make code changes if
# desired, build images, and run this script.



# Setup 

WORKDIR=`pwd`





# Note to test developers: Many tests in the Daily Test Suite are
# specific tests that already contain the TEST OBJECTIVE and STEPS.
# However, in some cases, such as running a flexible test engine to
# perform different tests by using configuration parameters or
# environment variables, it must be provided here.
# For EACH of those test cases, before invoking the test, please
# provide a comment block like this:

#-----------------------------------------------------------------------
# TEST OBJECTIVE : basic network setup, deploy, invoke, query on all
#	peers using REST interface, and exercise chaincode APIs
# SETUP STEPS:
#   1. Set environment variable: export TEST_NETWORK=LOCAL
# TEST DETAILS (Optional):
#   1. Setup local docker network with security with 4 peer nodes
#   2. Deploy chaincode example02
#   3. Send Invoke Requests on all peers using go routines
#   4. Verify query results and chainheights match on all peers
#-----------------------------------------------------------------------





########################################################################
# Language	API		Functional Area
# GO SDK	REST		Consensus Acceptance Tests
########################################################################

cd $WORKDIR/go/obcsdk/CAT
#UNDER CONSTRUCTION...
#go run CAT_100_Startup_DIQ_API.go
#go run CAT_101_BasicConsensus_S1_R1_S2_S1_R1_R2.go
#go run CAT_102_S1_IQDQIQ.go



########################################################################
# Language	API		Functional Area
# GO SDK	REST		Ledger Stress Tests
########################################################################

cd $WORKDIR/go/obcsdk/ledgerstresstest
#go run BasicFuncExistingNetworkLST.go
#go run LST_1client1peer20K.go
#go run LST_2client1peer20K.go
#go run LST_2client2peer20K.go
#go run LST_4client1peer20K.go
#go run LST_4client4peer20K.go



########################################################################
# Language	API		Functional Area
# GO SDK	REST		Concurrency/Ledger
########################################################################

cd $WORKDIR/go/obcsdk/ledgerstresstest
#go run conc4p1min1000Thrd1TxPerLoop_LOCAL.go
#go run conc4p1min400Thrd_LOCAL.go



########################################################################
# Language	API		Functional Area
# Node.js	gRPC		Concurrency with Auction
########################################################################

cd $WORKDIR/node/



########################################################################
# Language	API		Functional Area
# Node.js	gRPC		Complex Transactions with Auction
########################################################################

cd $WORKDIR/node/



########################################################################
# Language	API		Functional Area
# Node.js	gRPC		Performance engine Baseline tests
########################################################################

cd $WORKDIR/node/performance/


