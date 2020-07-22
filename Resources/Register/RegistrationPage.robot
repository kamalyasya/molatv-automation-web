*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${links_login_register_sekarang}                    css=[href='\/accounts\/register']

${field_register_email}                              id=email
${field_register_confirm_email}                      id=confirmEmail
${field_register_password}                           id=password
${field_register_confirm_password}                   id=confirmPassword
${field_register_phone}                              id=phone
${dropdown_register_gender}                         name=gender
${dropdown_register_gender_pria}                    css=[value='m']
${field_register_tanggal_lahir}                      css=.react-datepicker-wrapper
${dropdown_register_tanggal_lahir_bulan}            css=.react-datepicker__month-read-view > .react-datepicker__month-read-view--down-arrow
${dropdown_register_tanggal_lahir_nama_bulan}       css=.react-datepicker__month-dropdown > div:nth-of-type(1)
${dropdown_register_tanggal_lahir_tahun}            css=.react-datepicker__year-read-view > .react-datepicker__year-read-view--down-arrow
${dropdown_register_tanggal_lahir_tahun_ke}         css=.react-datepicker__year-dropdown.react-datepicker__year-dropdown--scrollable > div:nth-of-type(21)
${field_register_tanggal_lahir_tanggal_ke}          css=div:nth-of-type(2) > div:nth-of-type(7)
${checkbox_register_saya_menjamin}                  css=._1GnU3._5k2bC
${button_register_tanggal_lahir_register}           css=.undefined
${text_register_akun_berhasil}                      css=._3ZtJL

${field_register_otp_1}                             css=div:nth-of-type(1) > .eKKpu
${field_register_otp_2}                             css=div:nth-of-type(2) > .eKKpu
${field_register_otp_3}                             css=div:nth-of-type(3) > .eKKpu
${field_register_otp_4}                             css=div:nth-of-type(4) > .eKKpu
${field_register_otp_5}                             css=div:nth-of-type(5) > .eKKpu
${field_register_otp_6}                             css=div:nth-of-type(6) > .eKKpu
${field_register
_otp_6}                             css=div:
nth-of-type(6) > .eKKpu
${button_register_verifikasi}                       css=.undefined
${text_register_kode_verifikas_salah}               css=._3ZtJL


*** Keywords ***
Click Register Sekarang
    Wait Until Element Is Visible           ${links_login_register_sekarang}
    Click Element                           ${links_login_register_sekarang}

Input all the field and tick the agreement
    [Arguments]  ${EMAIL}   ${PASSWORD}  ${PHONE}   ${GENDER}   ${BULAN}    ${TAHUN}    ${TANGGAL}
    Wait Until Element Is Visible           ${field_register_email}
    sleep                                   3
    Input Text                              ${field_register_email}              ${EMAIL}
    sleep                                   3
    Input Text                              ${field_register_confirm_email}      ${EMAIL}
    sleep                                   3
    Input Text                              ${field_register_password}           ${PASSWORD}
    sleep                                   3
    Input Text                              ${field_register_confirm_password}   ${PASSWORD}
    sleep                                   3
    Input Text                              ${field_register_phone}              ${PHONE}
    sleep                                   3
    Click Element                           ${dropdown_register_gender}
    sleep                                   3
    Click Element                           ${dropdown_register_gender_pria}
    sleep                                   3
    Click Element                           ${field_register_tanggal_lahir}
    sleep                                   3
    Click Element                           ${dropdown_register_tanggal_lahir_bulan}
    sleep                                   3
    Click Element                           ${dropdown_register_tanggal_lahir_nama_bulan}
    sleep                                   3
    Click Element                           ${dropdown_register_tanggal_lahir_tahun}
    sleep                                   3
    Click Element                           ${dropdown_register_tanggal_lahir_tahun_ke}
    sleep                                   3
    Click Element                           ${field_register_tanggal_lahir_tanggal_ke}
    sleep                                   3
    Click Element                           ${checkbox_register_saya_menjamin}
    sleep                                   3

Click Register Button
    Click Element                           ${button_register_tanggal_lahir_register}
    sleep                                   3

User Successfully Register
    Wait Until Element Is Visible           ${text_register_akun_berhasil}
    sleep                                   3
    Element Text Should Be                  ${text_register_akun_berhasil}      Akun berhasil terdaftar. Login sekarang
    sleep                                   3

Input OTP
    [Arguments]  ${1}   ${2}  ${3}   ${4}   ${5}    ${6}
    Wait Until Element Is Visible          ${field_register_otp_1}
    Input Text                             ${field_register_otp_1}                  ${1}
    Input Text                             ${field_register_otp_2}                  ${2}
    Input Text                             ${field_register_otp_3}                  ${3}
    Input Text                             ${field_register_otp_4}                  ${4}
    Input Text                             ${field_register_otp_5}                  ${5}
    Input Text                             ${field_register_otp_6}                  ${6}

Click Verifikasi
    Wait Until Element Is Visible          ${button_register_verifikasi}
    Click Element                          ${button_register_verifikasi}

User Input Incorrect Verification Code
    Wait Until Element Is Visible          ${text_register_kode_verifikas_salah}
    Element Text Should Be                 ${text_register_kode_verifikas_salah}        You have entered invalid OTP