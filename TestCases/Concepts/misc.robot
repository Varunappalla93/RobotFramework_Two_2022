*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Library     Collections

*** Variables ***
${browser}      Chrome
${url}      http://www.thetestingworld.com/testings

*** Test Cases ***
TC_007_miscellaneous
      open browser  ${url}  ${Browser}
      maximize browser window

      go to     https://www.google.com

      ${url1}=  get location
      log to console    ${url1}

      go back


      ${url1}=  get location
      log to console    ${url1}

      input text  name:fld_username   Varun
      input text  xpath://input[@placeholder='myusername@gmail.com']   an.varun1993@gmail.com

      capture page screenshot  ./Screenshots/Varun.png

      open browser  https://www.google.com      Chrome

      close all browsers