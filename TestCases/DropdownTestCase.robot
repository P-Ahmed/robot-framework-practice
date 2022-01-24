*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demoqa.com/select-menu

*** Test Cases ***
DropDown Testing
    open browser    ${url}    ${browser}


*** Keywords ***
