*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Library     Collections

*** Variables ***
${browser}      Chrome
${url}      http://www.thetestingworld.com

*** Test Cases ***
TC_009_keyboard
    open browser  ${url}  ${Browser}
    maximize browser window

    click link      //a[normalize-space()='Login']

    press keys   name:username   Hello

    press keys   xpath://button[@type='submit']  \\13