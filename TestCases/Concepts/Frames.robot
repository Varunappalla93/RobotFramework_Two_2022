*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn

*** Variables ***
${browser}      Chrome
${url}     https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_win_frames

*** Test Cases ***
TC_Frames
    open browser  ${url}  ${BROWSER}
    maximize browser window

    select frame    id:iframeResult

    current frame should contain    The frames Property

    current frame should not contain   The framefs Property

    unselect frame

    frame should contain   id:iframeResult      The frames Property

    close browser