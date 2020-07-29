*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${field_login_email}                id=email
${field_login_password}             id=password
${links_login_lupa_password}        css=[href='\/accounts\/forgot-password']
${button_login_login}               css=.undefined

${button_login_login}               css=._3C-S2
${button_login_loading_login}       css=._3C-S2.nA5CF.undefined > ._3_DDx
${text_login_error_message}         css=.ch-Xo
${links_login_lupa_password}        css=[href='\/accounts\/forgot-password']

*** Keywords ***
Login Using Credentials
    [Arguments]     ${EMAIL}    ${PASSWORD}
    Wait Until Element Is Visible       ${field_login_email}
    Input Text                          ${field_login_email}            ${EMAIL}
    Input Text                          ${field_login_password}         ${PASSWORD}
    Click Element                       ${button_login_login}

Verify A Error Message Show Up
    [Arguments]  ${EXPECTED_MESSAGE}
    Wait Until Element Is Visible       ${text_login_error_message}
    Element Text Should Be              ${text_login_error_message}     ${EXPECTED_MESSAGE}

Input Wrong Credential For 7 Times
    [Arguments]     ${EMAIL}    ${PASSWORD}
    Login Using Credentials             ${EMAIL}    ${PASSWORD}
    Login Using Credentials             ${EMAIL}    ${PASSWORD}
    Login Using Credentials             ${EMAIL}    ${PASSWORD}
    Login Using Credentials             ${EMAIL}    ${PASSWORD}
    Login Using Credentials             ${EMAIL}    ${PASSWORD}
    Login Using Credentials             ${EMAIL}    ${PASSWORD}
    Login Using Credentials             ${EMAIL}    ${PASSWORD}

Successfully Logged In Using My Account
    [Arguments]     ${EXPECTED_ACCOUNT_EMAIL}
    Wait Until Element Is Not Visible   ${field_login_email}
    Wait Until Element Is Visible       ${button_homepage_account}
    Click Element                       ${button_homepage_account}
    Sleep   1
    Wait Until Element Is Visible       ${text_homepage_account_email}
    Element Text Should Be              ${text_homepage_account_email}           ${EXPECTED_ACCOUNT_EMAIL}
