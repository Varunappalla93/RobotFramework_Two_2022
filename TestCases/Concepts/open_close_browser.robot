*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn

*** Variables ***
${Browser}      Chrome
${url}      http://www.google.com

*** Test Cases ***
TC_001_Browser Start and Close
    open browser  ${url}  ${Browser}
    maximize browser window
    sleep   5
    close browser