*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot


*** Variables ***
${links_login_register_sekarang}                        css=[href='\/accounts\/register']

${field_register_email}                                 id=email
${field_register_confirm_email}                         id=confirmEmail
${field_register_password}                              id=password
${field_register_confirm_password}                      id=confirmPassword
${field_register_phone}                                 id=phone
${dropdown_register_gender}                             name=gender
${dropdown_register_gender_pria}                        css=[value='m']
${field_register_tanggal_lahir}                         css=.react-datepicker-wrapper
${dropdown_register_tanggal_lahir_bulan}                css=.react-datepicker__month-read-view > .react-datepicker__month-read-view--down-arrow
${dropdown_register_tanggal_lahir_nama_bulan}           css=.react-datepicker__month-dropdown > div:nth-of-type(1)
${dropdown_register_tanggal_lahir_tahun}                css=.react-datepicker__year-read-view > .react-datepicker__year-read-view--down-arrow
${dropdown_register_tanggal_lahir_tahun_ke}             css=.react-datepicker__year-dropdown.react-datepicker__year-dropdown--scrollable > div:nth-of-type(21)
${field_register_tanggal_lahir_tanggal_ke}              css=div:nth-of-type(2) > div:nth-of-type(7)
${checkbox_register_saya_menjamin}                      css=._1GnU3._5k2bC
${button_register_tanggal_lahir_register}               css=._3C-S2
${text_register_akun_berhasil}                          css=._3ZtJL

${field_register_otp_1}                                 css=div:nth-of-type(1) > .eKKpu
${field_register_otp_2}                                 css=div:nth-of-type(2) > .eKKpu
${field_register_otp_3}                                 css=div:nth-of-type(3) > .eKKpu
${field_register_otp_4}                                 css=div:nth-of-type(4) > .eKKpu
${field_register_otp_5}                                 css=div:nth-of-type(5) > .eKKpu
${field_register_otp_6}                                 css=div:nth-of-type(6) > .eKKpu
${button_register_verifikasi}                           css=._3C-S2
${text_register_kode_verifikas_salah}                   css=._3ZtJL
${button_register_verifikasi_again}                     css=._3C-S2
${text_register_kode_verifikas_salah_again}             css=._3ZtJL
${button_register_verifikasi_kirim_ulang}               link=Kirim ulang
${text_register_kode_verifikas_terkirim}                css=._3ZtJL
${text_register_wait_countdown_60_second}               xpath=//*[@style='cursor: auto; color: rgb(131, 133, 134);']

${button_register_tanggal_lahir_register_empty}         css=form#main_form > ._3C-S2.nA5CF

${dropdown_register_gender_pria_invalid}                        css=option[value='f']
${dropdown_register_tanggal_lahir_nama_bulan_invalid}           css=.react-datepicker__month-dropdown > div:nth-of-type(1)
${dropdown_register_tanggal_lahir_tahun_ke_invalid}             css=.react-datepicker__year-dropdown.react-datepicker__year-dropdown--scrollable > div:nth-of-type(121)
${field_register_tanggal_lahir_tanggal_ke_invalid}              css=.react-datepicker__month > div:nth-of-type(1) > div:nth-of-type(2)
${text_register_akun_invalid}                                   css=._3ZtJL

*** Keywords ***
Click Register Sekarang
    Wait Until Element Is Visible                       ${links_login_register_sekarang}
    Click Element                                       ${links_login_register_sekarang}

Input all the field and tick the agreement
    [Arguments]  ${EMAIL}   ${PASSWORD}  ${PHONE}   ${GENDER}   ${BULAN}    ${TAHUN}    ${TANGGAL}
    Wait Until Element Is Visible                   ${field_register_email}
    Input Text                                      ${field_register_email}              ${EMAIL}
    Input Text                                      ${field_register_confirm_email}      ${EMAIL}
    Input Text                                      ${field_register_password}           ${PASSWORD}
    Input Text                                      ${field_register_confirm_password}   ${PASSWORD}
    Input Text                                      ${field_register_phone}              ${PHONE}
    Click Element                                   ${dropdown_register_gender}
    Click Element                                   ${dropdown_register_gender_pria}
    Click Element                                   ${field_register_tanggal_lahir}
    Click Element                                   ${dropdown_register_tanggal_lahir_bulan}
    Click Element                                   ${dropdown_register_tanggal_lahir_nama_bulan}
    Click Element                                   ${dropdown_register_tanggal_lahir_tahun}
    Click Element                                   ${dropdown_register_tanggal_lahir_tahun_ke}
    Click Element                                   ${field_register_tanggal_lahir_tanggal_ke}
    Click Element                                   ${checkbox_register_saya_menjamin}

Click Register Button
    Click Element                                   ${button_register_tanggal_lahir_register}

User Successfully Register
    Wait Until Element Is Visible                   ${text_register_akun_berhasil}
    Element Text Should Be                          ${text_register_akun_berhasil}      Akun berhasil terdaftar. Login sekarang

Input OTP
    [Arguments]  ${1}   ${2}  ${3}   ${4}   ${5}    ${6}
    Wait Until Element Is Visible                   ${field_register_otp_1}
    Input Text                                      ${field_register_otp_1}                  ${1}
    Input Text                                      ${field_register_otp_2}                  ${2}
    Input Text                                      ${field_register_otp_3}                  ${3}
    Input Text                                      ${field_register_otp_4}                  ${4}
    Input Text                                      ${field_register_otp_5}                  ${5}
    Input Text                                      ${field_register_otp_6}                  ${6}

Click Verifikasi
    Wait Until Element Is Visible                   ${button_register_verifikasi}
    Click Element                                   ${button_register_verifikasi}

User Input Incorrect Verification Code
    Wait Until Element Is Visible                   ${text_register_kode_verifikas_salah}
    Element Text Should Be                          ${text_register_kode_verifikas_salah}        You have entered invalid OTP

Click Verifikasi Again
    Click Verifikasi

User Input Incorrect Verification Code Again
    User Input Incorrect Verification Code
    Sleep                                            10

Click Kirim Ulang
    Wait Until Element Is Visible                   ${button_register_verifikasi_kirim_ulang}
    Click Element                                   ${button_register_verifikasi_kirim_ulang}

Verify User Kode verifikasi terkirim
    Wait Until Element Is Visible                   ${text_register_kode_verifikas_terkirim}
    Element Should Be Visible                       ${text_register_kode_verifikas_terkirim}
    Element Text Should Be                          ${text_register_kode_verifikas_terkirim}        Kode verifikasi terkirim
    Wait Until Element Is Visible                   ${text_register_wait_countdown_60_second}
    Element Should Be Visible                       ${text_register_wait_countdown_60_second}

Click Register Sekarang empty mandatory
    Click Register Sekarang

Input the field with empty mandatory fields and tick the agreement
    [Arguments]  ${EMAIL}   ${PASSWORD}  ${PHONE}   ${GENDER}   ${BULAN}    ${TAHUN}    ${TANGGAL}
    Wait Until Element Is Visible                   ${field_register_email}
    Input Text                                      ${field_register_email}                 ${EMAIL}
    Input Text                                      ${field_register_password}              ${PASSWORD}
    Input Text                                      ${field_register_phone}                 ${PHONE}
    Click Element                                   ${dropdown_register_gender}
    Click Element                                   ${dropdown_register_gender_pria}
    Click Element                                   ${field_register_tanggal_lahir}
    Click Element                                   ${dropdown_register_tanggal_lahir_bulan}
    Click Element                                   ${dropdown_register_tanggal_lahir_nama_bulan}
    Click Element                                   ${dropdown_register_tanggal_lahir_tahun}
    Click Element                                   ${dropdown_register_tanggal_lahir_tahun_ke}
    Click Element                                   ${field_register_tanggal_lahir_tanggal_ke}
    Click Element                                   ${checkbox_register_saya_menjamin}

Click Register Button empty mandatory
    Click Register Button

Can Not click button Register
    Wait Until Element Is Visible                   ${button_register_tanggal_lahir_register_empty}
    Element Should Be Disabled                      ${button_register_tanggal_lahir_register_empty}


Click Register Sekarang invalid
    Click Register Sekarang

Input the field with invalid fields format and tick the agreement
    [Arguments]  ${EMAIL}   ${PASSWORD}  ${PHONE}   ${GENDER_INVALID}   ${BULAN_INVALID}    ${TAHUN_INVALID}    ${TANGGAL_INVALID}
    Wait Until Element Is Visible                   ${field_register_email}
    Input Text                                      ${field_register_email}              ${EMAIL}
    Input Text                                      ${field_register_confirm_email}      ${EMAIL}
    Input Text                                      ${field_register_password}           ${PASSWORD}
    Input Text                                      ${field_register_confirm_password}   ${PASSWORD}
    Input Text                                      ${field_register_phone}              ${PHONE}
    Click Element                                   ${dropdown_register_gender}
    Click Element                                   ${dropdown_register_gender_pria_invalid}
    Click Element                                   ${field_register_tanggal_lahir}
    Click Element                                   ${dropdown_register_tanggal_lahir_bulan}
    Click Element                                   ${dropdown_register_tanggal_lahir_nama_bulan_invalid}
    Click Element                                   ${dropdown_register_tanggal_lahir_tahun}
    Click Element                                   ${dropdown_register_tanggal_lahir_tahun_ke_invalid}
    Click Element                                   ${field_register_tanggal_lahir_tanggal_ke_invalid}
    Click Element                                   ${checkbox_register_saya_menjamin}

Click Register Button invalid
    Click Register Button

User Cannot Register
    Wait Until Element Is Visible                   ${text_register_akun_invalid}
    Element Text Should Be                          ${text_register_akun_invalid}           "birthdate" must be larger than or equal to "Mon Jan 01 1945 00:00:00 GMT+0000 (UTC)"
