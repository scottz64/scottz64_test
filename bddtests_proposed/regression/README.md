## regression
Regression Test Suites scripts, execution results for significant releases, and
configuration scripts and supporting files in a variety of languages: 

- [GO](https://github.com/hyperledger/fabric/bddtests/regression/go) language test scripts 
- [NODE](https://github.com/hyperledger/fabric/bddtests/regression/node) language test scripts 
Note: a flexible-use performance engine, which can be configured and used for a variety of tests, is located in the 
[node/performance](https://github.com/hyperledger/fabric/bddtests/regression/node/performance) folder.
For examples how to use it, check there, or look for examples in the daily test suite and long-run test suite scripts.
- [results](https://github.com/hyperledger/fabric/bddtests/regression/results) folder containing
logfiles and results of running the Test Suites on significant releases, for reference
- [scripts](https://github.com/hyperledger/fabric/bddtests/regression/scripts) folder containing
scripts to run the Daily Test Suite and LongRun Test Suite tests, as well as other miscellaneous scripts

### Full Regression Test Suite
Execute both the Daily Test Suite AND LongRun Test Suite.

### Daily Test Suite
Overview of test suite coverage, functional areas, expected time duration:

- Consensus Acceptance Tests (CAT) - using chaincode example02, GO, REST
- Large Networks Basic API And Consensus Tests - using chaincode example02, GO, REST
- Ledger Stress Tests (LST) for API and 20K runs with concurrency and 1K payload - using chaincode addrecs, GO, REST
- Concurrency Tests - using chaincode addrecs, GO, REST
- Complex Transactions Tests - using chaincode auction, node, gRPC
- Performance Tests, random sized payloads - using chaincodes example02 and auction, node, gRPC

### LongRun Test Suite
Overview of test suite coverage, functional areas, expected time duration:

* Consensus peers restarts tests, over 10 hours - using chaincode example02, GO, REST
* LST 1 Million transactions - using chaincode addrecs, GO, REST
* LST 72 hours - using chaincode addrecs, GO, REST
* Performance Tests 72 hours, random sized payloads - using chaincode auction, node, gRPC
  (includes variable traffic rates, concurrency, complex transactions)

