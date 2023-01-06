*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Library     Collections

*** Variables ***
${browser}      Chrome
${url}      http://www.thetestingworld.com

*** Test Cases ***
TC_008_javascript
    open browser  ${url}  ${Browser}
    maximize browser window
    execute javascript  window.scrollTo(0,1000)
    sleep   10