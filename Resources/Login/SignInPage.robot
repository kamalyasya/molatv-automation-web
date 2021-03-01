*** Settings ***
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${field_login_email}                id=identity
${field_login_password}             id=password
${links_login_lupa_password}        css=[href='\/accounts\/forgot-password']
${button_login_login}               css=._3C-S2
${button_login_loading_login}       css=._3C-S2.nA5CF.undefined > ._3_DDx
${text_login_error_message}         css=.ch-Xo
${links_login_lupa_password}        css=[href='\/accounts\/forgot-password']
${button_login_google}              css=._3Zzdj > button:nth-of-type(1)
${button_login_fb}                  xpath=//button[2]
${text_login_email_error_message}   css=.inputError

${sidebar_home}                     css=._1GfoO
${button_profile_home}              css=._2YhM7
${button_accounts_logout}           css=._3qxwB
${icon_menu_home}                   css=div:nth-of-type(2) > .SwWJf

# Frame Email not registered
${text_login_title_email_not_registered}    xpath=//div[contains(text(),'Email not registered')]
${text_login_continue_register_with}        css=._3NBC1
${button_login_cancel_register}     xpath=//button[contains(text(),'Cancel')]
${button_login_create_account}      xpath=//button[contains(text(),'Create Account')]

*** Keywords ***
Login Using Credentials
    [Arguments]     ${EMAIL}    ${PASSWORD}
    Input Email On Login Page           ${EMAIL}
    Input Password On Login Page        ${PASSWORD}
    Click Login Button On Login Page

Input Email On Login Page
    [Arguments]     ${EMAIL}
    Wait Until Element Is Visible       ${field_login_email}
    Input Text                          ${field_login_email}            ${EMAIL}

Input Password On Login Page
    [Arguments]     ${PASSWORD}
    Wait Until Element Is Visible       ${field_login_password}
    Input Password                      ${field_login_password}         ${PASSWORD}

Click Login Button On Login Page
    Wait Until Element Is Visible       ${button_login_login}
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
    Wait Until Location Contains        ${EXPECTED_URL_SAMPLE_MOVIE}
    Location Should Be                  ${EXPECTED_URL_SAMPLE_MOVIE}
    Wait Until Element Is Visible       ${text_movie_detail_title}
    Element Should Not Be Visible       ${movie_detail_login_blocker}

Click Button Google Login
    Wait Until Element Is Visible       ${button_login_google}
    Click Element                       ${button_login_google}

Click Button Facebook Login
    Wait Until Element Is Visible       ${button_login_fb}
    Click Element                       ${button_login_fb}

Verify Format Email Salah Message is show up
    Wait Until ELement Is Visible       ${text_login_email_error_message}
    Element Should Be Visible           ${text_login_email_error_message}
    ELement Text Should Be              ${text_login_email_error_message}           Wrong email format

Verify Email field Error Message Is Show Up
    [Arguments]    ${TEXT_EXPECTED_ERROR_MESSAGE}
    Wait Until ELement Is Visible       ${text_login_email_error_message}
    Element Should Be Visible           ${text_login_email_error_message}
    Element Should Contain              ${text_login_email_error_message}           ${TEXT_EXPECTED_ERROR_MESSAGE}


Logout Account
    Open Profile Page
    Wait Until Element Is Visible       ${button_accounts_logout}
    Click Element                       ${button_accounts_logout}
    Wait Until Element Is Visible       ${icon_menu_home}
    Element Should Be Visible           ${icon_menu_home}

Verify Sign In Button Is Disabled
    Wait Until Element Is Visible       ${button_login_login}
    Element Should Be Disabled          ${button_login_login}

Clear Email And Password Fields
    Wait Until Element Is Visible       ${field_login_email}
    Clear Element Text                  ${field_login_email}
    Wait Until Element Is Visible       ${field_login_password}
    Clear Element Text                  ${field_login_password}

Clear Email Fields
    Wait Until Element Is Visible               ${field_login_email}
    ${TEXT}         Get Element Attribute       ${field_login_email}           value
    ${LENGTH}       Get Length                  ${TEXT}
    FOR    ${var}   IN RANGE    ${LENGTH}
        Press Keys    ${field_login_email}    BACKSPACE
    END

Clear Password Fields
    Wait Until Element Is Visible       ${field_login_password}
    Clear Element Text                  ${field_login_password}

Verify Frame Register Is Appeared
    [Arguments]     ${EMAIL}
    Wait Until Element Is Visible       ${text_login_title_email_not_registered}
    Element Should Be Visible           ${text_login_title_email_not_registered}
    Wait Until Element Is Visible       ${text_login_continue_register_with}
    Element Should Be Visible           ${text_login_continue_register_with}
    ${EXTECTED_TEXT}                    Catenate                continue register with email\n${EMAIL}\n?
    Element Should Contain              ${text_login_continue_register_with}                    ${EXTECTED_TEXT}
    Wait Until Element Is Visible       ${button_login_cancel_register}
    Element Should Be Visible           ${button_login_cancel_register}
    Wait Until Element Is Visible       ${button_login_create_account}
    Element Should Be Visible           ${button_login_create_account}

Click Cancel Button On Frame Register
    Wait Until Element Is Visible       ${button_login_cancel_register}
    Click Element                       ${button_login_cancel_register}

Click Create Account Button On Frame Register
    Wait Until Element Is Visible       ${button_login_create_account}
    Click Element                       ${button_login_create_account}

