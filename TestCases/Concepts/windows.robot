*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn

*** Variables ***
${browser}      Chrome
${url}      http://www.salesforce.com

*** Test Cases ***
TC_002_Locators
    open browser  ${url}  ${BROWSER}    alias=CHROMEVARUN
    maximize browser window

    sleep   4s

    wait until element is visible   xpath://span[normalize-space()='Try For Free']

    click element      xpath://span[normalize-space()='Try For Free']


    @{windowhandles}=   get window handles
    log to console      ${windowhandles}
    # ['CDwindow-FB5A7A71F0C9DB256B09FF1E091F17B4', 'CDwindow-2404ACA91051C22BE6BDE685F89AF79A']

    @{alias}=   get browser aliases
    log to console  ${alias}[0] # CHROMEVARUN

    @{windowidentifers}=    get window identifiers
    log to console      ${windowidentifers}
#    ['undefined', 'undefined']


    @{windowNames}=     get window names
    log to console      ${windowNames}
#    ['undefined', 'undefined']


    @{windowtitles}=     get window titles
    log to console        ${windowtitles}
#    [title1,title2]

    switch window       ${windowhandles}[1]
    # using list index

    switch window       ${windowhandles}[0]
    # using list index