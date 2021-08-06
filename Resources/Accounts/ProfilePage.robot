*** Settings ***
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${text_profile_username}                xpath=//*[normalize-space()='Username']/following-sibling::p
${text_profile_email}                   xpath=//*[normalize-space()='Email']/following-sibling::p
${text_profile_phone}                   xpath=//*[@for='changePhoneNumber']/following-sibling::p
${text_profile_DOB}                     xpath=//*[@for='changeBirthdate']/following-sibling::p
${text_profile_gender}                  xpath=//*[normalize-space()='Gender']/following-sibling::p
${text_profile_country}                 xpath=//*[@for='changeLocation']/following-sibling::p
${button_profile_keluar}                css=._3Jegx


*** Keywords ***
Verify Logged In Using Correct Account
    [Arguments]     ${EXPECTED_ACCOUNT_EMAIL}
    Wait Until Element Is Not Visible   ${field_login_email}
    Wait Until Element Is Visible       ${menu_homepage_accounts}
    Mouse Over                          ${menu_homepage_accounts}
    Click Element                       ${menu_homepage_accounts}
    Wait Until Element Is Visible       ${button_homepage_live_chat}
    Mouse Over                          ${button_homepage_live_chat}
    Wait Until Element Is Visible       ${text_profile_email}
    Element Text Should Be              ${text_profile_email}           ${EXPECTED_ACCOUNT_EMAIL}

Sign Out
    Open Profile Page
    Wait Until Element Is Visible       ${button_profile_keluar}
    Click Element                       ${button_profile_keluar}

Verify Sign Out
    Wait Until Element Is Visible       ${menu_homepage_accounts}
    Click Element                       ${menu_homepage_accounts}
    Element Should Not Be Visible       ${text_profile_email}
    Element Should Not Be Visible       ${button_profile_keluar}
    Wait Until Element Is Visible       ${field_login_email}
    Element Should Be Visible           ${field_login_email}
    Wait Until Element Is Visible       ${field_login_password}
    Element Should Be Visible           ${field_login_password}

Verify Accounts
    [Arguments]     ${Username}     ${Email}    ${Phone}     ${DOB}    ${Gender}   ${Country}
#    > Tambah Username , phone number , Gender , Country + Date of birth
    Wait Until Element Is Visible       ${text_profile_username}
    Element Should Contain              ${text_profile_username}        ${Username}
    Wait Until Element Is Visible       ${text_profile_email}
    Element Should Contain              ${text_profile_email}           ${Email}
    Wait Until Element Is Visible       ${text_profile_phone}
    Element Should Contain              ${text_profile_phone}           ${Phone}
    Wait Until Element Is Visible       ${text_profile_DOB}
    Element Should Contain              ${text_profile_DOB}             ${DOB}
    Wait Until Element Is Visible       ${text_profile_gender}
    Element Should Contain              ${text_profile_gender}          ${Gender}
    Wait Until Element Is Visible       ${text_profile_country}
    Element Should Contain              ${text_profile_country}         ${Country}