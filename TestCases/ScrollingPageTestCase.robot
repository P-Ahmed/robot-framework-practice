*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ScrollingPageTestCase
    open browser    https://www.worldometers.info/geography/how-many-countries-are-there-in-the-world/    chrome
    maximize browser window
    #execute javascript    window.scrollBy(0,2500)
    #scroll element into view    xpath://a[contains(text(),'Lithuania')]
    #scroll to bottom
    execute javascript    window.scrollTo(0,document.body.scrollHeight)

    #scroll to top
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)
    #close browser
