*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Resource    ../../Resources/resources.robot
Documentation   This file has test cases for maximize browser and enter username, password, email values.
Test Setup      Start Browser and maximize
Test Teardown   Close Browser window


*** Test Cases ***
TC_001_Fetch_Data
    [Documentation]     This test case is for entering values in reg form.
#    create folder at runtime
#    create folder at runtime using argument     HELLO

    Concatenate username and password   Varun       Appalla

    ${title}=   get title
    log     ${title}

    ${speed}=   get selenium speed
    log     ${speed}

    ${value}=   get value       //input[@value='Sign up']
    log     ${value}

    ${text}=    get text    //a[normalize-space()='Read Detail']
    log     ${text}

    select from list by label   name:sex    Male
    ${drpdownlabel}=    get selected list label     name:sex
    log     ${drpdownlabel}

    ${alllabels}=   get list items  name:sex
    log     ${alllabels}

    ${url}=     get location
    log     ${url}

    ${page_source}=     get source
    log     ${page_source}

    ${attr}=    get element attribute   name:fld_username   class
    log     ${attr}


    ${ele_count}=   get element count   class:field
    log     ${ele_count}



#    create sub folder at runtime