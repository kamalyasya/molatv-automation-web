*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${text_halaman_verifikasi_title_kode_verifikasi}    css=* > ._2Oduq
${field_halaman_verifikasi_otp_1}                   css=div:nth-of-type(1) > .eKKpu
${field_halaman_verifikasi_otp_2}                   css=div:nth-of-type(2) > .eKKpu
${field_halaman_verifikasi_otp_3}                   css=div:nth-of-type(3) > .eKKpu
${field_halaman_verifikasi_otp_4}                   css=div:nth-of-type(4) > .eKKpu
${field_halaman_verifikasi_otp_5}                   css=div:nth-of-type(5) > .eKKpu
${field_halaman_verifikasi_otp_6}                   css=div:nth-of-type(6) > .eKKpu
${button_halaman_verifikasi_verifikasi}             css=._1NNY7._3C-S2
${text_halaman_verifikasi_invalid_token}            css=.VYG-B p
${button_halaman_verifikasi_kirim_ulang}            link=Resend OTP
${text_halaman_verifikasi_kirim_ulang_countdown}    css=._17JiS

*** Keywords ***
Verify Direct to Masukkan Kode Verifikasi Page
    [Arguments]     ${TEXT}
    Wait Until Element Is Visible               ${text_halaman_verifikasi_title_kode_verifikasi}
    Element Text Should Be                      ${text_halaman_verifikasi_title_kode_verifikasi}        ${TEXT}

Input OTP
    [Arguments]  ${OTP_1}   ${OTP_2}  ${OTP_3}   ${OTP_4}   ${OTP_5}    ${OTP_6}
    Wait Until Element Is Visible               ${field_halaman_verifikasi_otp_1}
    Input Text                                  ${field_halaman_verifikasi_otp_1}                       ${OTP_1}
    Input Text                                  ${field_halaman_verifikasi_otp_2}                       ${OTP_2}
    Input Text                                  ${field_halaman_verifikasi_otp_3}                       ${OTP_3}
    Input Text                                  ${field_halaman_verifikasi_otp_4}                       ${OTP_4}
    Input Text                                  ${field_halaman_verifikasi_otp_5}                       ${OTP_5}
    Input Text                                  ${field_halaman_verifikasi_otp_6}                       ${OTP_6}

Click Button Verifkasi
    Wait Until Element Is Visible               ${button_halaman_verifikasi_verifikasi}
    Click Element                               ${button_halaman_verifikasi_verifikasi}

Verify Invalid Token Message Show Up
    [Arguments]  ${TEXT}
    Wait Until Element Is Visible               ${text_halaman_verifikasi_invalid_token}
    Element Text Should Be                      ${text_halaman_verifikasi_invalid_token}                ${TEXT}

Click Resend OTP
    Wait Until Element Does Not Contain         ${text_halaman_verifikasi_kirim_ulang_countdown}        :               65
    Wait Until Element Is Visible               ${button_halaman_verifikasi_kirim_ulang}
    Click Element                               ${button_halaman_verifikasi_kirim_ulang}

Verify Countdown Is Appeared
    Wait Until Element Is Visible               ${text_halaman_verifikasi_kirim_ulang_countdown}
    Element Should Be Visible                   ${text_halaman_verifikasi_kirim_ulang_countdown}
    Element Should Contain                      ${text_halaman_verifikasi_kirim_ulang_countdown}        Resend OTP 00:
