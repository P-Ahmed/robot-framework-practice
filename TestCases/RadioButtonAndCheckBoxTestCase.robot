*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${urlRadio}    https://demoqa.com/radio-button
${urlCheckBox}    https://demoqa.com/checkbox
${yesRadioButton}    xpath://label[contains(text(),'Yes')]
${impressiveRadioButton}    xpath://label[contains(text(),'Impressive')]

*** Test Cases ***
CheckingRadioButton
    open browser    ${urlradio}}    ${browser}
    maximize browser window
    click element    ${yesRadioButton}
    sleep    3
    close browser
CheckingCheckBox
    open browser    ${urlcheckbox}    ${browser}
    maximize browser window
    click element    xpath://span[contains(text(),'Home')]
    sleep    3
    close browser
*** Keywords ***
