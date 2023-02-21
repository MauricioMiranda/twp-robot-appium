*** Settings ***
Documentation        Aqui teremos as keywords helpers.

Resource              ../resources/base.robot

*** Variables ***
${START}                COMEÇAR
${HAMBURGER}            xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NAV_VIEW}             id=io.qaninja.android.twp:id/navView

*** Keywords ***
Get Started
    Wait Until Page Contains            ${START}
    Click Text                          ${START}

Open Nav
    Wait Until Element Is Visible       ${HAMBURGER}

    Click Element                       ${HAMBURGER}
    Wait Until Element Is Visible       ${NAV_VIEW}

