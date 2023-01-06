*** Settings ***
Suite Setup     Before Each TestSuite
Suite Teardown  After Each TestSuite

*** Keywords ***
Before Each TestSuite
    log     Before Each Test Suite


After Each TestSuite
     log     After Each Test Suite
