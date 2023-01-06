*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Library     Collections

*** Variables ***
${browser}      Chrome
${url}      http://www.thetestingworld.com/testings
${global_var}    Narasimha # can be used anywhere in the file or can be called.

*** Test Cases ***
my first test case
    ${var1}=    set variable   Hello World
    log to console  ${var1}
    log     ${var1}
    log    ${global_var}

my second test case
    my first keyword    mykeyword_variable
    @{List1}=   create list     Hello   22  True    abcd    Varun
    ${List1_length}=    get length  ${list1}
    log to console      ${list1_length}
    log    ${list1_length}
#    log     ${var1} # fail as it is not in scope of this test case


    ${list_data}=   get from list   ${List1}    3
    log to console  ${list_data}
    log     ${list_data}

my third test case
    &{dict1}=   create dictionary    1="Varun"   "name"="Appalla"
    log to console     ${dict1}
    log    ${dict1}

    ${dict_data}=   get from dictionary     ${dict1}    "name"
    log to console      ${dict_data}
    log      ${dict_data}
    log    ${global_var}


*** Keywords ***
my first keyword
    [Arguments]    ${keyword_var}
    log     ${keyword_var}