*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn

*** Variables ***
${browser}      Chrome
${url}     https://www.sugarcrm.com/au/request-demo/

*** Test Cases ***
TC_Lists
    open browser  ${url}  ${BROWSER}
    maximize browser window

    sleep   2s

   scroll element into view     xpath://div[@id='field27']/div

   page should contain list     xpath://div[@id='field27']/div/select


   page should not contain list     xpath://div[@id='field27']/div/input


   @{allitems}=     get list items      xpath://div[@id='field27']/div/select


   ${selectedlistlabel}=     get selected list label      xpath://div[@id='field27']/div/select

   ${selectedlistvalue}=     get selected list value      xpath://div[@id='field27']/div/select
    log to console      ${selectedlistvalue}

   list selection should be      xpath://div[@id='field27']/div/select      Company Size*


   select from list by index   xpath://div[@id='field27']/div/select       1

   get selected list label      xpath://div[@id='field27']/div/select



    # Multi-selection
#   select all from list     xpath://*[@id='cars']

#    unselect from list by value     xpath://*[@id='cars']       Car
#
#    unselect all from list      xpath://*[@id='cars']
#
#
#    list should have no selections      xpath://*[@id='cars']

#    get selected list value    xpath://*[@id='cars']