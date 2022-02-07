*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
LaunchBrowser
    [Arguments]    ${appUrl}    ${appBrowser}
    open browser    ${appUrl}      ${appBrowser}
    maximize browser window
    ${title}    get title
    [Return]    ${title}