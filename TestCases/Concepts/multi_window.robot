*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Library     Collections

*** Variables ***
${browser}      Chrome
${url1}      http://www.thetestingworld.com
${url2}      http://www.google.com

*** Test Cases ***
TC_11_multi_window
    open browser  ${url1}  ${Browser}
    maximize browser window

    open browser  ${url2}  ${Browser}
    maximize browser window

    switch browser  1
    ${url1}=     get location
    log to console  ${url1}
    click link  xpath://a[normalize-space()='Login']

    switch browser  2
    ${url2}=     get location
    log to console  ${url2}
    input text  name:q      Varun Appalla

    close all browsers