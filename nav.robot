*** Settings ***

Library                AppiumLibrary

Test Setup             Open Session
Test Teardown          Close Session

*** Test Cases ***
Deve acessar a tela Dialogs

    Get Started
    Open Nav

    Click Text                          DIALOGS
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/toolbarTitle
    Element Text Should Be              id=io.qaninja.android.twp:id/toolbarTitle        DIALOGS

Deve acessar a tela de Formulários

    Get Started
    Open Nav

    Click Text                          FORMS
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/toolbarTitle
    Element Text Should Be              id=io.qaninja.android.twp:id/toolbarTitle        FORMS

Deve acessar a tela de Vingadores

    Get Started
    Open Nav

    Click Text                          AVENGERS
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/toolbarTitle
    Element Text Should Be              id=io.qaninja.android.twp:id/toolbarTitle        AVENGERS

*** Keywords ***
Open Session
    Set Appium Timeout    5
    Open Application                    http://localhost:4723/wd/hub
    ...                                 automationName=UiAutomator2
    ...                                 platformName=Android
    ...                                 deviceName=Emulator
    ...                                 app=${EXECDIR}/app/twp.apk

Close Session
    Close Application

Get Started
    Wait Until Page Contains            COMEÇAR
    Click Text                          COMEÇAR

Open Nav
    Wait Until Element Is Visible       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

    Click Element                       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/navView

