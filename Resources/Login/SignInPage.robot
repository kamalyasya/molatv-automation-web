*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${field_login_email}                id=email
${field_login_password}             id=password
${links_login_lupa_password}        css=[href='\/accounts\/forgot-password']
${button_login_login}               css=.undefined

${text_login_error_message}         css=.ch-Xo
${EXPECTED_MESSAGE_WRONG_LOGIN}     Either id or password you have entered is invalid

${links_login_lupa_password}        css=[href='\/accounts\/forgot-password']
*** Keywords ***
Login Using Credentials
    [Arguments]     ${EMAIL}    ${PASSWORD}
    Wait Until Element Is Visible       ${field_login_email}
    Input Text                          ${field_login_email}            ${EMAIL}
    Input Text                          ${field_login_password}         ${PASSWORD}
    Click Element                       ${button_login_login}

A Proper Error Message Is Shown
    Wait Until Element Is Visible       ${text_login_error_message}
    Element Text Should Be              ${text_login_error_message}     ${EXPECTED_MESSAGE_WRONG_LOGIN}

Successfully Logged In Using My Account
    [Arguments]     ${EXPECTED_ACCOUNT_EMAIL}
    Wait Until Element Is Not Visible   ${field_login_email}
    Wait Until Element Is Visible       ${button_homepage_account}
    Click Element                       ${button_homepage_account}
    Sleep   1
    Wait Until Element Is Visible       ${text_homepage_account_email}
    Element Text Should Be              ${text_homepage_account_email}           ${EXPECTED_ACCOUNT_EMAIL}


Login Using Data
    [Arguments]  ${A}   ${B}
    Wait Until Element Is Visible               ${field_login_email}
    Input Text                                  ${field_login_email}                ${A}
    Input Text                                  ${field_login_password}             ${B}