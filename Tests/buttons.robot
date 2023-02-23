*** Settings ***

Resource              ../resources/base.robot

Test Setup            Open Session
Test Teardown         Close Application

*** Test Cases ***

Deve realizar um clique simples
    [Tags]    short
    Go To Short Click

    Click Element                        id=io.qaninja.android.twp:id/short_click
    
    Wait Until Page Contains             Isso é um clique simples

Deve realizar um clique longo
    [Tags]    long    
    Go To Long Click

    Long Press                           id=io.qaninja.android.twp:id/long_click        1000
    
    Wait Until Page Contains             CLIQUE LONGO OK
