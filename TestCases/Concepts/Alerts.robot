*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn

*** Variables ***
${browser}      Chrome
${url}     https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_alert

*** Test Cases ***
TC_Alerts
    open browser  ${url}  ${BROWSER}
    maximize browser window

    sleep   2s

    select frame    id:iframeResult

    click button    xpath://button[normalize-space()='Try it']


    sleep   2s

    handle alert    ACCEPT  timeout=5 s
#    handle alert    DISMISS

    click button    xpath://button[normalize-space()='Try it']

   alert should be present    Hello! I am an alert box!    ACCEPT

    click button    xpath://button[normalize-space()='Try it']
    ${message1}=     handle alert    ACCEPT   timeout=2 s
    log     ${message1}

#    input text into alert   VARUN