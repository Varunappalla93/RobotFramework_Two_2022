*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Library     Collections

*** Variables ***
${browser}      Chrome
${url}      http://www.thetestingworld.com

*** Test Cases ***
TC_10_wait_until
    open browser  ${url}  ${Browser}
    maximize browser window

    set selenium timeout    10 seconds


    wait until page contains    VIDEOS   # default timeout is 5 secs
    click element  xpath://span[normalize-space()='VIDEOS']

    wait until element contains    //a[normalize-space()='Login']    Login      error=FoundText
    click link  xpath://a[normalize-space()='Login']

    wait until page contains element    xpath://span[normalize-space()='VIDEOS']
    click element  xpath://span[normalize-space()='VIDEOS']

#    wait until location is      url

#    wait until location contains    part of title

    wait until element is visible   //a[normalize-space()='Login']