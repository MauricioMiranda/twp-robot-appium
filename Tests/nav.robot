*** Settings ***

Resource        ../resources/base.robot

Test Setup             Open Session
Test Teardown          Close Session

*** Variables ***
${TOOLBAR_TITLE}      id=io.qaninja.android.twp:id/toolbarTitle

*** Test Cases ***
Deve acessar a tela Dialogs

    Open Nav

    Click Text                          DIALOGS
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}
    Element Text Should Be              ${TOOLBAR_TITLE}        DIALOGS

Deve acessar a tela de Formulários

    Open Nav

    Click Text                          FORMS
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}
    Element Text Should Be              ${TOOLBAR_TITLE}        FORMS

Deve acessar a tela de Vingadores

    Open Nav

    Click Text                          AVENGERS
    Wait Until Element Is Visible       ${TOOLBAR_TITLE}
    Element Text Should Be              ${TOOLBAR_TITLE}        AVENGERS

