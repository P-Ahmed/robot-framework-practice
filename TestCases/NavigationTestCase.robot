*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Navigation Testing
    open browser    https://www.google.com/    chrome
    maximize browser window
    set selenium speed    1 seconds

    ${loc}=    get location
    log to console    ${loc}

    go to    https://www.bing.com/
    ${loc}=    get location
    log to console    ${loc}

    go to    https://www.yahoo.com/
    ${loc}=    get location
    log to console    ${loc}

    go back
    go back
    ${loc}=    get location
    log to console    ${loc}

    close browser