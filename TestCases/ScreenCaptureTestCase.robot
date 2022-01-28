*** Settings ***
Library    SeleniumLibrary
Library    Screenshot

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

    capture element screenshot    sb_form    ./Screenshot/Bing-bar.png
#    capture page screenshot    D:/Project for my practice/TestProject/Screenshot/Bing.png
#    take screenshot    D:/Project for my practice/TestProject/Screenshot/Bing.png

    close browser