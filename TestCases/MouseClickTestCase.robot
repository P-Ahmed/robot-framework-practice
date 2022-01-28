*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Right CLick
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    maximize browser window
    open context menu    xpath=//span[contains(text(),'right click me')]
    sleep    2 seconds

Double Click
    open browser    http://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    double click element    xpath=//button[contains(text(),'Copy Text')]
    sleep    2 seconds

Drag and Drop
    open browser    http://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    drag and drop    draggable    droppable
    sleep    2 seconds

    close all browsers