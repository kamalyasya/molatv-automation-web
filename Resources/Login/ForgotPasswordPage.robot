*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${field_reset_password_email}                   css=[name='email']
${button_reset_password_reset_password}         css=._3C-S2

${text_reset_password_title_kode_verifikasi}    css=._1vsfR > ._2xrN3


*** Keywords ***
Click Lupa Password Links
    Wait Until Element Is Visible               ${links_login_lupa_password}
    Click Element                               ${links_login_lupa_password}

Input Email
    [Arguments]     ${EMAIL}
    Wait Until Element Is Visible               ${field_reset_password_email}
    Input Text                                  ${field_reset_password_email}       ${EMAIL}

Click Button Reset Password
    Wait Until Element Is Visible               ${button_reset_password_reset_password}
    CLick Element                               ${button_reset_password_reset_password}

Direct to Masukkan Kode Verifikasi Page
    [Arguments]     ${TEXT}
    Wait Until Element Is Visible               ${text_reset_password_title_kode_verifikasi}
    Element Text Should Be                      ${text_reset_password_title_kode_verifikasi}        ${TEXT}

