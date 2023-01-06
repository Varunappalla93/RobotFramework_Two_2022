*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Library     Collections

*** Variables ***
${browser}      Chrome
${url}          https://www.thetestingworld.com/testings
${username_value}       Hello

*** Test Cases ***
TC_scalar_variables
    open browser  ${url}  ${Browser}
    maximize browser window

    title should be     Login & Sign Up Forms
    input text  name:fld_username   ${username_value}