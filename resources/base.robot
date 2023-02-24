*** Settings ***

Library        AppiumLibrary
Resource       helpers.robot

*** Keywords ***
Open Session
    Set Appium Timeout    5
    Open Application                    http://localhost:4723/wd/hub
    ...                                 automationName=UiAutomator2
    ...                                 platformName=Android
    ...                                 deviceName=Emulator
    ...                                 app=${EXECDIR}/app/twp.apk
    Get Started

Close Session
    Capture Page Screenshot
    Close Application
