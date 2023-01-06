*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Library     Collections

*** Variables ***
${browser}      Chrome
${url}      https://www.thetestingworld.com/testings

*** Test Cases ***
TC_14_validations_two
    open browser  ${url}  ${Browser}
    maximize browser window

    title should be     Login & Sign Up Forms

    element text should be      xpath://div[@id='tab-content1']/p       Register now and kick start your career as a Software Testing Pro!

    element should contain        xpath://div[@id='tab-content1']/p     Pro

    element should be enabled           name:fld_username
#    element should not be enabled       name:fld_username1

    element should be visible           name:fld_username
#    element should not be visible       name:fld_username1
    input text  name:fld_username   Hello


#    element text should not be      xpath://div[@id='tab-content1']/p       Register now and kick start your career as a Software Testing Professional!
#    element should not contain       xpath://div[@id='tab-content1']/p1         xyz !!!