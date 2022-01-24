*** Settings ***
Library    SeleniumLibrary
Library  SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://automationpractice.com/index.php

*** Test Cases ***
LoginTest
    # if chromedriver.exe is not set into environement variable path, then the next line should be comment out
    # create webdriver    chrome    executable_path="D:\Software\For Robot Framework\chromedriver.exe"
    open browser    ${url}      ${browser}
#    click link    xpath://a[contains(text(),'Sign in')]
#    input text    id:email    test996162@grr.la
#    input text    id:passwd    P@ssword123
#    #click element    name:SubmitLogin
#    click button    name:SubmitLogin
    LoginToTheApplication
    close browser



*** Keywords ***
LoginToTheApplication
    click link    xpath://a[contains(text(),'Sign in')]
    input text    id:email    test996162@grr.la
    input text    id:passwd    P@ssword123
    #click element    name:SubmitLogin
    click button    name:SubmitLogin