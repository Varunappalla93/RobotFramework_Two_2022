*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Library     Collections

*** Variables ***
${browser}      Chrome
${url}      http://www.thetestingworld.com/testings

*** Test Cases ***
TC_005_Loops
        @{List2}=   create list     Hello   22  True    abcd    Varun
        FOR   ${i}      IN RANGE   1    12
            log to console     ${i}
        END


         FOR   ${i}     IN      ${List2}
                    log to console     ${i}
         END

         ${key_var}=   set variable     log to console
         run keyword    ${key_var}      varunappalla


         ${var2}=   set variable    Yes
         run keyword if     '${var2}'=='Yes'    log to console      Value found
         run keyword if     '${var2}'=='No'     log to console      Value not found
