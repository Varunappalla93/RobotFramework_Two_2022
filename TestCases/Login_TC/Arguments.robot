*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Resource    ../../Resources/resources.robot
Documentation   This file has test cases for maximize browser and enter username, password, email values.
Test Timeout    40s  # Time out error for all test cases if it does not complete within 20s
Test Setup      Start Browser and maximize
Test Teardown   Close Browser window
#Suite Setup     Before Each TestSuite # comes from __init__.robot file
#Suite Teardown  After Each TestSuite
Default Tags     DFLT
Force Tags      ALL_TC


*** Test Cases ***
TC_003_Arguments_from_Resources_file
     [Tags]     Smoke   Testing
#    [Setup]         Start Browser and maximize
#    [Teardown]      Close Browser Window
    [Documentation]     This test case is for entering values in reg form.
#    [Timeout]       8 s  # Time out error if it does not complete within 8 seconds.

#    ${res}=     Start Browser and maximize
#    log     ${res}
#    log to console  ${res}

    Enter username,password,email   test1  test1   test1@gmail.com




# Tags
# for running tests with tags.
# robot -i Smoke TestCases


# for running tests with no tags.
# robot -i DFLT TestCases

# for running all tests with forced tags.
# robot -i All_TC TestCases

# for running tests which has both tags
# robot -i SmokeANDTesting TestCases


# for running tests with one tag but not another tag
# robot -i SmokeNOTTesting TestCases


# for running tests with either one tag or another tag
# robot -i SmokeORTesting TestCases

# for excluding test cases with regression tag
# robot -e Regression TestCases


# for executing particular test case
# robot -t "TC_003_Arguments_from_Resources_file" TestCases

# for executing particular test suite
# robot -s "Arguments" TestCases

# to save reports and log in our location.
#robot -r ./Report/report.html -o ./Report/output.xml -l ./Report/logs.html  TestCases