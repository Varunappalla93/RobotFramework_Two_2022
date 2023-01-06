*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn

*** Variables ***
${browser}      Chrome
${url}      http://www.thetestingworld.com/testings

*** Test Cases ***
TC_002_Locators
    open browser  ${url}  ${BROWSER}
    maximize browser window
    set selenium speed      2 seconds   # for every step
    input text  name:fld_username   Varun
    input text  xpath://input[@placeholder='myusername@gmail.com']   an.varun1993@gmail.com
    clear element text      name:fld_username
    select from list by index   xpath://select[@name='sex']     2
    select from list by value   xpath://select[@name='sex']     1
    select from list by label   xpath://select[@name='sex']     Female
    select radio button     add_type    office

    page should contain radio button    xpath://*[@id='daio']

    page should not contain radio button    xpath://*[@id='dai*o']

    radio button should not be selected     doi

    radio button should be set to   doi     0 # group name(name)    id or value

    scroll element into view    xpath://*[@id=fld1]/div/input

    select radio button     doi     1 # group name(name)     id or value


    select checkbox     xpath:(//input[@name='terms'])[1]
    checkbox should be selected      xpath:(//input[@name='terms'])[1]

    page should contain checkbox    id:interest_market_c001
    page should not contain checkbox    id:interest_market_sell_c001

    unselect checkbox   id:interest_market_c001

    checkbox should not be selected     id:interest_market_c001


    click link      xpath://a[text()='Read Detail']
    click element   xpath://a[normalize-space()='X']

#    close browser
    @{alias}=   get browser ids
    log to console   ${alias}