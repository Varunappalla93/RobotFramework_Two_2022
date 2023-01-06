*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Library     Collections

*** Variables ***
${browser}      Chrome
${url}      https://www.thetestingworld.com/

*** Test Cases ***
TC_13_validations
    open browser  ${url}  ${Browser}
    maximize browser window

#    page should contain     VIDEOS
     # if fails, does not go to next step

    page should not contain     VIDEOS1
     # if passes, goes to next step

    click element   //a[normalize-space()='Login']

    page should contain textfield   name:username

    input text  name:username   Bheemla Nayak

    page should not contain textfield   name:username1

    input text  name:username   Varun

    select checkbox       xpath://input[@id='remember']
    checkbox should be selected     xpath://input[@id='remember']

    unselect checkbox   xpath://input[@id='remember']
    checkbox should not be selected     xpath://input[@id='remember']