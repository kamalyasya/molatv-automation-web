*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${field_login_email}                id=email
${field_login_password}             id=password
${links_login_lupa_password}        css=[href='\/accounts\/forgot-password']
${button_login_login}               css=._3C-S2
${button_login_loading_login}       css=._3C-S2.nA5CF.undefined > ._3_DDx
${text_login_error_message}         css=.ch-Xo
${links_login_lupa_password}        css=[href='\/accounts\/forgot-password']
${button_login_google}              css=._3Zzdj > button:nth-of-type(1)
${button_login_fb}                  xpath=//button[2]
${text_login_email_error_message}   css=.css-e2n7zw
*** Keywords ***
Login Using Credentials
    [Arguments]     ${EMAIL}    ${PASSWORD}
    Wait Until Element Is Visible       ${field_login_email}
    Input Text                          ${field_login_email}            ${EMAIL}
    Input Password                      ${field_login_password}         ${PASSWORD}
    Click Element                       ${button_login_login}

Verify A Error Message Show Up
    [Arguments]  ${EXPECTED_MESSAGE}
    Sleep                               1
    Wait Until Element Is Visible       ${text_login_error_message}
    Element Text Should Be              ${text_login_error_message}     ${EXPECTED_MESSAGE}

Input Wrong Credential For 7 Times
    [Arguments]     ${EMAIL}    ${PASSWORD}
    Login Using Credentials             ${EMAIL}    ${PASSWORD}
    Wait Until Element Is Not Visible   ${button_login_loading_login}
    Click Element                       ${button_login_login}
    Wait Until Element Is Not Visible   ${button_login_loading_login}
    Click Element                       ${button_login_login}
    Wait Until Element Is Not Visible   ${button_login_loading_login}
    Click Element                       ${button_login_login}
    Wait Until Element Is Not Visible   ${button_login_loading_login}
    Click Element                       ${button_login_login}
    Wait Until Element Is Not Visible   ${button_login_loading_login}
    Click Element                       ${button_login_login}
    Wait Until Element Is Not Visible   ${button_login_loading_login}
    Click Element                       ${button_login_login}

Click Lupa Password Links
    Wait Until Element Is Visible       ${links_login_lupa_password}
    Click Element                       ${links_login_lupa_password}

Select Special Asset
    [Arguments]  ${URL_SAMPLE_MOVIE}
    Go To                               ${URL_SAMPLE_MOVIE}

Verify User Is Redirected Back To The Same Movie Detail Page Automatically
    [Arguments]  ${EXPECTED_URL_SAMPLE_MOVIE}
    Sleep                               1
    Wait Until Element Is Not Visible   ${field_login_email}
    Location Should Be                  ${EXPECTED_URL_SAMPLE_MOVIE}
    Element Text Should Not Be          ${movie_detail_login_blocker}               Login untuk menonton

Click Button Google Login
    Wait Until Element Is Visible       ${button_login_google}
    Click Element                       ${button_login_google}

Click Button Facebook Login
    Wait Until Element Is Visible       ${button_login_fb}
    Click Element                       ${button_login_fb}

Verify Format Email Salah Message is show up
    Wait Until ELement Is Visible       ${text_login_email_error_message}
    Element Should Be Visible           ${text_login_email_error_message}
    ELement Text Should Be              ${text_login_email_error_message}           Format email salah