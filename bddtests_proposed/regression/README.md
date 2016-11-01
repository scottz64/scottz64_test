## regression
Regression Test Suites, comprised of a list of tests and supporting configuration scripts and infrastructure files,
using any of a variety of languages such as 
[GO](https://github.com/hyperledger/fabric/bddtests/regression/go), 
[NODE](https://github.com/hyperledger/fabric/bddtests/regression/node), 
etc. Note: a flexible-use performance engine, which can be configured and used for a variety of tests, is located in the 
[node/performance](https://github.com/hyperledger/fabric/bddtests/regression/node/performance) folder.
For examples how to use it, check there, and in the daily test suite and long-run test suite.

### Full Regression Test Suite
Executes both the Daily TS AND LongRun TS.

### Daily Test Suite
Overview of test suite coverage, functional areas, expected time duration:
```
	Consensus Acceptance Tests (CAT) - using chaincode example02, GO, REST
	Large Networks Basic API And Consensus Tests - using chaincode example02, GO, REST
	Ledger Stress Tests (LST) for API and 20K runs with concurrency and 1K payload - using chaincode addrecs, GO, REST
	Concurrency Tests - using chaincode addrecs, GO, REST
	Complex Transactions Tests - using chaincode auction, node, gRPC
	Performance Tests, random sized payloads - using chaincodes example02 and auction, node, gRPC
	  - [read more specifics here](https://github.com/hyperledger/fabric/bddtests/regression/node/performance/README.md) 
```

### LongRun Test Suite
Overview of test suite coverage, functional areas, expected time duration:
```
	Consensus peers restarts tests, over 10 hours - using chaincode example02, GO, REST
	LST 1 Million transactions - using chaincode addrecs, GO, REST
	LST 72 hours - using chaincode addrecs, GO, REST
	Performance Tests 72 hours, random sized payloads - using chaincode auction, node, gRPC
	  - includes variable traffic rates, concurrency, complex transactions
	  - [read more specifics here](https://github.com/hyperledger/fabric/bddtests/regression/node/performance/README.md) 
```
