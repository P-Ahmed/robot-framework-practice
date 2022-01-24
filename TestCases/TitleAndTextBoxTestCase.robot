*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    http://automationpractice.com/index.php
${email_text}    id:email
*** Test Cases ***
CheckingTitle
    open browser    ${url}    ${browser}
    maximize browser window
    title should be    My Store

TestingInputBox
    click link    xpath://a[contains(text(),'Sign in')]

    #${email_text}     set variable    id:email

    element should be visible    ${email_text}
    element should be enabled    ${email_text}

    input text    ${email_text}    test996162@grr.la
    sleep    5
    clear element text    ${email_text}
    sleep    3
    close browser

*** Keywords ***
