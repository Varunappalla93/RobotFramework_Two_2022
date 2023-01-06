*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Library     Collections

*** Variables ***
${browser}      Chrome
${url}      http://www.thetestingworld.com

*** Test Cases ***
TC_009_mouse
    open browser  ${url}  ${Browser}
    maximize browser window
    open context menu   xpath://span[normalize-space()='VIDEOS']

    double click element    xpath://a[normalize-space()='Login']

    mouse over  xpath://span[normalize-space()='VIDEOS']
    mouse out    xpath://span[normalize-space()='VIDEOS']

    mouse down   xpath://a[normalize-space()='Login'] # pressing left mouse button
    mouse up     xpath://a[normalize-space()='Login'] # release left mouse button

    drag and drop    id:drag    id:drop

    mouse down on link      //a[normalize-space()='Login']