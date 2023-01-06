*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Library     Collections

*** Variables ***
${browser}      Chrome
${url}      http://www.thetestingworld.com/testings

*** Test Cases ***
TC_006_waits
     ${imp_wait}=   get selenium implicit wait
     log to console     ${imp_wait}  # default time is 0 secs

      open browser  ${url}  ${Browser}
      maximize browser window

      set selenium implicit wait    20 seconds # waits until this time to check if all the locator are right , else gives error.

#      set browser implicit wait  20 seconds # to that specific browser only

      input text  name:fld_username   Varun

      input text  xpath://input[@placeholder='myusername@gmail.com']   an.varun1993@gmail.com

      ${imp_wait}=      get selenium implicit wait
      log to console     ${imp_wait}