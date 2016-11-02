## regression_scripts
Regression Test Suites scripts, and other general scripts

### Full Regression Test Suite
Execute both the Daily Test Suite AND LongRun Test Suite.
### Continous Integration setup

CI executes *daily test suite* for every merge commit pushed to fabric repository. We have configured Jenkins in vLaunch to execute Daily Test Suite. Configured below jobs as downstream jobs and they run daily after successfully execute the upstream job. CI executes below tests in Jenkins as part of Daily test run.

After the build is successfully executed, Jenkins post build results back to **rel-criteira-build** slack channel also we generate test summary report and post it in Release Criteria **Results** folder.

### Daily Test Suite
Overview of test suite coverage, functional areas, expected time duration:

 * Consensus Acceptance Tests (CAT) - using chaincode example02, GO, REST
    - Objective of CAT tests is to ensure the stability and resiliency of the PBFT Batch design.
 * Large Networks Basic API And Consensus Tests - using chaincode example02, GO, REST
    - Objective of Basic REST API test is to ensure basic REST API functions are working as expected
 * Ledger Stress Tests (LST) for API and 20K runs with concurrency and 1K payload - using chaincode addrecs, GO, REST
 * Concurrency Tests - using chaincode addrecs, GO, REST
    -  Objective of Concurrency test is to ensure system is able to accept multiple threads concurrently for specified number of mins.
 * Complex Transactions Tests - using chaincode auction, node, gRPC
    -  Objective of this test is to send complex transactions using auction chaincode
 * Performance Tests, random sized payloads - using chaincodes example02 and auction, node, gRPC
    - CI performs below tests in Performance testing
      * Invoke on chaincode_example02 using 4 peers and 4 Threads for 180 secs
      * Query on chaincode_example02 using 4 peers and 4 Threads for 180 secs
      * Invoke on auction chaincode using 4 peers and 1000 Tx for each of the 4 Threads 
      * Query on auction chaincode using 4 peers and 1000 Tx for each of the 4 Threads
      * Invoke on auction chaincode using 4 peers and 4 Threads. Each Invoke is followed by a Query on every Thread
      * Invoke on example02 chaincode using 4 peers and 4 Threads. Each Invoke is followed by a Query on every Thread
      
### LongRun Test Suite
Overview of test suite coverage, functional areas, expected time duration:

 * Consensus peers restarts tests, over 10 hours - using chaincode example02, GO, REST
 * LST 1 Million transactions - using chaincode addrecs, GO, REST
 * LST 72 hours - using chaincode addrecs, GO, REST
   - Send parallel Invoke requests on all 4 peers
 * Performance Tests 72 hours, random sized payloads - using chaincode auction, node, gRPC
  (includes variable traffic rates, concurrency, complex transactions)
   - Invoke 1 Tx per sec on 1 peer for 72 hrs (1 Thread)
