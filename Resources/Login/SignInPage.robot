*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${field_login_email}                id=email
${field_login_password}             id=password
${links_login_lupa_password}        css=[href='\/accounts\/forgot-password']
${button_login_login}               css=.undefined

${text_login_error_message}         css=.ch-Xo
${links_login_lupa_password}        css=[href='\/accounts\/forgot-password']
${links_video_player_login}         css=.css-1mpgh73 a

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

Verify Logged In Using Correct Account
    [Arguments]     ${EXPECTED_ACCOUNT_EMAIL}
    Wait Until Element Is Not Visible   ${field_login_email}
    Wait Until Element Is Visible       ${button_homepage_account}
    Click Element                       ${button_homepage_account}
    Sleep   1
    Wait Until Element Is Visible       ${text_homepage_account_email}
    Element Text Should Be              ${text_homepage_account_email}           ${EXPECTED_ACCOUNT_EMAIL}
    Click Element                       ${button_homepage_account}


Verify The App Navigates To Featured Page
    [Arguments]     ${FEATURED}
    Wait Until Element Is Visible       ${menu_homepage_featured}
    Element Text Should Be              ${menu_homepage_featured}         ${FEATURED}

Sign Out
    Wait Until Element Is Visible       ${button_homepage_account}
    Click Element                       ${button_homepage_account}
    Wait Until Element Is Visible       ${links_homepage_keluar}
    Click Element                       ${links_homepage_keluar}

Verify Sign Out
    Wait Until Element Is Visible       ${button_homepage_account}
    Click Element                       ${button_homepage_account}
    Wait Until Element Is Visible       ${button_homepage_login}
    Element Should Be Visible           ${button_homepage_login}

Select Special Asset
    [Arguments]  ${URL}
    Go To                               ${URL}

Verify User Is Redirected Back To The Same Movie Detail Page Automatically
    [Arguments]  ${URL}
    Location Should Be                  ${URL}
    Sleep   5

Click Links Login
    Wait Until Element Is Visible       ${links_video_player_login}
    Click Element                       ${links_video_player_login}