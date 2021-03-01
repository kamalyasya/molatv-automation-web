*** Settings ***
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${text_profile_email}                   css=div:nth-of-type(5) > p
${button_profile_keluar}                css=._3qxwB


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

