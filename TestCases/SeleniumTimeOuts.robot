*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://computer-database.gatling.io/computers/new

*** Test Cases ***
DropDown Testing

    #Openning browser and maximizing it
    open browser    ${url}    ${browser}
    maximize browser window

    #implicit wait
    set selenium implicit wait    7 seconds

    #explicit wait
    set selenium timeout    7seconds
    #Setting test speed
    set selenium speed    2 seconds

    #waiting for a specific text
    wait until page contains    Remove a compute

    log to console    GettingSpeed
    log to console    GettingSeleniumImplicitWaitTime
    log to console    GettingSeleniumTimeOut

    #Starting test
    input text    xpath://input[@id='name']    Unaco
    input text    id:introduced    2022-01-01
    click element    //select[@id='company']
    press keys    ${none}    ARROW_DOWN
    press keys    ${none}    ARROW_DOWN
    press keys    ${none}    ARROW_DOWN
    press keys    //select[@id='company']    ARROW_DOWN
    click element    xpath://input[@type='submit']
    element text should be    xpath://strong[contains(text(),'Done !')]    Done !

    #Closing browser
    close browser

*** Keywords ***

