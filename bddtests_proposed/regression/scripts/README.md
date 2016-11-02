## regression_scripts
Regression Test Suites scripts, and other general scripts

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

