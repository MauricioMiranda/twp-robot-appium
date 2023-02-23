*** Settings ***

Resource              ../resources/base.robot

Test Setup            Open Session
Test Teardown         Close Application

*** Test Cases ***

Deve marcar a opção Robot Framework
    Go to CheckBox

    ${element}=                           Set Variable        xpath=//android.widget.CheckBox[contains(@text, 'Robot Framework')]
    
    Click Element                         ${element}
    Wait Until Element Is Visible         id=io.qaninja.android.twp:id/rvContainer
    Element Attribute Should Match        ${element}        checked        true
