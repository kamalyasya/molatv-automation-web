*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${field_reset_password_email}                   css=[name='email']
${button_reset_password_reset_password}         css=._3C-S2
${text_reset_password_title_kode_verifikasi}    css=._1vsfR > ._2xrN3
${field_reset_password_otp_1}                   css=div:nth-of-type(1) > .eKKpu
${field_reset_password_otp_2}                   css=div:nth-of-type(2) > .eKKpu
${field_reset_password_otp_3}                   css=div:nth-of-type(3) > .eKKpu
${field_reset_password_otp_4}                   css=div:nth-of-type(4) > .eKKpu
${field_reset_password_otp_5}                   css=div:nth-of-type(5) > .eKKpu
${field_reset_password_otp_6}                   css=div:nth-of-type(6) > .eKKpu
${button_reset_password_verifikasi}             css=._1NNY7._3C-S2
${text_reset_password_invalid_token}            css=.VYG-B p
${button_reset_password_kirim_ulang}            xpath=//*[text()=' Kirim ulang']
${text_reset_password_kirim_ulang_countdown}    xpath=//*[@style='cursor: auto; color: rgb(131, 133, 134);']

*** Keywords ***
Click Lupa Password Links
    Wait Until Element Is Visible               ${links_login_lupa_password}
    Click Element                               ${links_login_lupa_password}

Input Email
    [Arguments]     ${EMAIL}
    Wait Until Element Is Visible               ${field_reset_password_email}
    Input Text                                  ${field_reset_password_email}                       ${EMAIL}

Click Button Reset Password
    Wait Until Element Is Visible               ${button_reset_password_reset_password}
    Click Element                               ${button_reset_password_reset_password}

Verify Direct to Masukkan Kode Verifikasi Page
    [Arguments]     ${TEXT}
    Wait Until Element Is Visible               ${text_reset_password_title_kode_verifikasi}
    Element Text Should Be                      ${text_reset_password_title_kode_verifikasi}        ${TEXT}

Input OTP
    [Arguments]  ${OTP_1}   ${OTP_2}  ${OTP_3}   ${OTP_4}   ${OTP_5}    ${OTP_6}
    Wait Until Element Is Visible               ${field_reset_password_otp_1}
    Input Text                                  ${field_reset_password_otp_1}                       ${OTP_1}
    Input Text                                  ${field_reset_password_otp_2}                       ${OTP_2}
    Input Text                                  ${field_reset_password_otp_3}                       ${OTP_3}
    Input Text                                  ${field_reset_password_otp_4}                       ${OTP_4}
    Input Text                                  ${field_reset_password_otp_5}                       ${OTP_5}
    Input Text                                  ${field_reset_password_otp_6}                       ${OTP_6}

Click Button Verifkasi
    Wait Until Element Is Visible               ${button_reset_password_verifikasi}
    Click Element                               ${button_reset_password_verifikasi}

Verify Invalid Token Message Show Up
    [Arguments]  ${TEXT}
    Wait Until Element Is Visible               ${text_reset_password_invalid_token}
    Element Text Should Be                      ${text_reset_password_invalid_token}                ${TEXT}

Click Resend OTP
    Wait Until Element Is Visible               ${button_reset_password_kirim_ulang}
    Click Element                               ${button_reset_password_kirim_ulang}

Verify Countdown Is Appeared
    Wait Until Element Is Visible               ${text_reset_password_kirim_ulang_countdown}
    Element Should Be Visible                   ${text_reset_password_kirim_ulang_countdown}