*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Library     Collections

*** Variables ***
${browser}      Chrome
${url}      http://www.thetestingworld.com/testings

*** Test Cases ***
TC_006_speed_timeout
      ${speed}=   get selenium speed
      log to console        ${speed}

      ${speed_timeout}=   get selenium timeout
      log to console        ${speed_timeout}

      open browser  ${url}  ${Browser}
      maximize browser window

      input text  name:fld_username   Varun
      input text  xpath://input[@placeholder='myusername@gmail.com']   an.varun1993@gmail.com

      set selenium timeout     20 seconds #  Default time is 5 secs, to check if page contains title, element is visible, etc.
      set selenium speed    5 seconds  # Default time is 0 secs, to set this time, for every step in script.
      wait until page contains      Tesing


      ${speed}=    get selenium speed
      log to console        ${speed}


      ${speed_timeout}=   get selenium timeout
      log to console        ${speed_timeout}