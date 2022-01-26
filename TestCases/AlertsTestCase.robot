*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://testautomationpractice.blogspot.com/

*** Test Cases ***
Alert Handling - Ok
    open browser    ${url}    chrome
    maximize browser window
    set selenium speed    1 seconds

    click element    xpath://button[contains(text(),'Click Me')]
    handle alert    accept
    element text should be    id:demo    You pressed OK!

    close browser

Alert Handling - Cancel
    open browser    ${url}    chrome
    maximize browser window
    set selenium speed    1 seconds

    click element    xpath://button[contains(text(),'Click Me')]
    handle alert    dismiss
    element text should be    id:demo    You pressed Cancel!

    close browser

