*** Settings ***
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${field_reset_password_email}                   css=[name='email']
${button_reset_password_reset_password}         css=._3C-S2

*** Keywords ***
Input Email
    [Arguments]     ${EMAIL}
    Wait Until Element Is Not Visible           ${field_login_password}
    Wait Until Element Is Visible               ${field_reset_password_email}
    Input Text                                  ${field_reset_password_email}                       ${EMAIL}

Click Button Reset Password
    Wait Until Element Is Visible               ${button_reset_password_reset_password}
    Click Element                               ${button_reset_password_reset_password}
