*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Library     Collections

*** Variables ***
${browser}      Chrome
${url}      https://robotframework.org/

*** Test Cases ***
TC_12_multi_tab
    open browser  ${url}  ${Browser}
    maximize browser window

    click element   xpath://h3[normalize-space()='Forum']

    #    switch window   Robot Framework - Robot Framework Community

    #    ${switched_window_title}=   get location
    #    log to console    ${switched_window_title}
    #
    #    click element   xpath://a[normalize-space()='Categories']

    # if title and url are dynamic, get window handles and switch accordingly.
    @{list1}=    get window handles
    FOR     ${win}  IN   @{list1}
        switch window   ${win}
        ${window_title}=   get location
        log to console    ${window_title}
    END

    switch window   ${win}

    click element   xpath://a[normalize-space()='Categories']


#Switch Window	MAIN		# Select the main window