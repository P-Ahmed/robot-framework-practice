*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://demo.automationtesting.in/Windows.html

*** Test Cases ***
Windows Testing
    open browser    ${url}    chrome
    maximize browser window
    set selenium speed    1 seconds
    click button    click
    switch window    title:Selenium
    click link    Blog

    close browser

*** Keywords ***
