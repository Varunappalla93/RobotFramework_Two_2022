*** Settings ***
Library     SikuliLibrary   mode=NEW
Library     BuiltIn

*** Variables ***
${browser}      Chrome
${url}      http://www.saucedemo.com


*** Test Cases ***
TC_Sikuli
    start sikuli process

    Add Image Path      C:/Users/VARUN/Desktop/Varun_Personal/RobotFramework_Two_2022/Screenshots

    Click   start.png

    Wait Until Screen Contain   search.png      10

    input text      search.png      Chrome

    Wait Until Screen Contain   search.png      10

    ${searchvar}=   get text    search.png
    log to console         ${searchvar}

    Highlight    search.png   2

    Click   Chrome.png

#   Double Click   Chrome.png

#   Right Click      Chrome.png

#   clicking on that specific element in complete menu.
#   Click In     Completemenu.png    Chrome.png

#    Double Click In     Completemenu.png    Chrome.png

    # using keyboard
#    press key   name:username   Hello

    # to click enter
#    press key   name:login      \\13