*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url1}    http://demo.automationtesting.in/Windows.html
${url2}    https://www.selenium.dev/

*** Test Cases ***
#Handling Browser
#    open browser    ${url1}    chrome
#    maximize browser window
#
#    click element    xpath://a[contains(text(),'Open New Seperate Windows')]
#    sleep    2seconds
#    click element    xpath://body/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/button[1]
#    maximize browser window
#    sleep    3seconds
#
##    switch browser
##    maximize browser window
##    sleep    3 seconds
#
#    close all browsers

Fabrice
	Open Browser 	http://google.com    chrome
	set selenium speed    2 seconds
	Location Should Contain 	google.com
	Open Browser 	http://yahoo.com    chrome    alias=2
	Location Should Contain 	yahoo.com
	Switch Browser 	1 	# index
	Page Should Contain 	Gmail
	Input Text 	q 	robot framework
	Press Keys 	q 	ENTER
	Capture Page Screenshot
	Switch Browser 	2 	# alias
	#Page Should Contain 	Company info
	Input Text 	p 	robot framework
	Press Keys 	p 	ENTER
	Capture Page Screenshot
	Close All Browsers
*** Keywords ***
