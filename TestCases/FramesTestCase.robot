*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.selenium.dev/selenium/docs/api/java/index.html?org/openqa/selenium/edge/package-summary.html

*** Test Cases ***
Frame Testing
    open browser    ${url}    chrome
    maximize browser window
    set selenium speed    2 seconds

    select frame    packageListFrame
    click link    org.openqa.selenium
    unselect frame

    select frame    packageFrame
    click link     Credentials
    unselect frame

    select frame    classFrame
    click link    Help
    unselect frame

    sleep    5 seconds
    close browser