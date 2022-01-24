*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://computer-database.gatling.io/computers/new

*** Test Cases ***
DropDown Testing
    open browser    ${url}    ${browser}
    maximize browser window
    set selenium speed    3 seconds
    input text    xpath://input[@id='name']    Unaco
    input text    id:introduced    2022-01-01
    click element    //select[@id='company']
    press keys    ${none}    ARROW_DOWN
    press keys    ${none}    ARROW_DOWN
    press keys    ${none}    ARROW_DOWN
    press keys    //select[@id='company']    ARROW_DOWN
    click element    xpath://input[@type='submit']
    element text should be    xpath://strong[contains(text(),'Done !')]    Done !
    close browser

*** Keywords ***
