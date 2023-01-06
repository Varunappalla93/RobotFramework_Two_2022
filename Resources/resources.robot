*** Settings ***
Library     SeleniumLibrary
Library     ../Externalkeywords/UserKeywords.py


*** Variables ***
${browser}      Chrome
${url}      https://www.thetestingworld.com/testings

*** Keywords ***
Start Browser and maximize
        [Documentation]     This keyword is starting browser and maximize
        open browser  ${url}  ${BROWSER}
        maximize browser window
        ${title}=   get title
        log     ${title}    # to write to logs report
        [Return]    ${title}

Enter username,password,email
    [Arguments]     ${username}  ${password}    ${email}
    input text  name:fld_username   ${username}
    input text  xpath://input[@placeholder='myusername@gmail.com']   ${email}
    input password  name:fld_password  ${password}

create folder at runtime
    create_folder     # generic user defined keyword


create sub folder at runtime
    create_sub_folder
    log "Task Done Successfully"

Close Browser window
     close browser

create folder at runtime using argument
    [Arguments]     ${foldername}
    create_folder_argument      ${foldername}

Concatenate username and password
    [Arguments]     ${username}     ${password}
    ${result}=   concatenate_twovalues    ${username}     ${password}
    log     ${result}




# comes from __init__.robot file

#Before Each TestSuite
#    log     Before Each Test Suite
#
#
#After Each TestSuite
#     log     After Each Test Suite



