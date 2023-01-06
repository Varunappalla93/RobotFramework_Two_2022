*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Library     Collections

*** Variables ***
${browser}      Chrome
${url}      http://www.saucedemo.com

*** Test Cases ***
TC_if_else
    open browser  ${url}  ${Browser}
    maximize browser window
    input text  id:user-name    standard_user
    input text  id:password     secret_sauce

    click button    id:login-button

    ${itemsonpage}=     get element count    xpath://div[@class='inventory_list']/div

    run keyword if       ${itemsonpage} ==10     Test Keyword1
    ...  ELSE IF        ${itemsonpage} < 10 and ${itemsonpage} > 6     Test Keyword2
    ...  ELSE       Test Keyword3


*** Keywords ***
Test Keyword1
    log to console      Executed keyword1   Found items as expected
    close browser

Test Keyword2
    log to console      Executed keyword2   Found less than expected items
    close browser


Test Keyword3
    log to console      Executed keyword3   exception
    close browser