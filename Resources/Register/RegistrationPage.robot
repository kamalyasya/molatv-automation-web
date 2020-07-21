*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${links_login_register_sekarang}                    css=[href='\/accounts\/register']

${text_register_email}                              id=email
${text_register_confirm_email}                      id=confirmEmail
${text_register_password}                           id=password
${text_register_confirm_password}                   id=confirmPassword
${text_register_phone}                              id=phone
${dropdown_register_gender}                         name=gender
${dropdown_register_gender_pria}                    css=[value='m']
${text_register_tanggal_lahir}                      css=.react-datepicker-wrapper
${dropdown_register_tanggal_lahir_bulan}            css=.react-datepicker__month-read-view > .react-datepicker__month-read-view--down-arrow
${dropdown_register_tanggal_lahir_nama_bulan}       css=.react-datepicker__month-dropdown > div:nth-of-type(1)
${dropdown_register_tanggal_lahir_tahun}            css=.react-datepicker__year-read-view > .react-datepicker__year-read-view--down-arrow
${dropdown_register_tanggal_lahir_tahun_ke}         css=.react-datepicker__year-dropdown.react-datepicker__year-dropdown--scrollable > div:nth-of-type(21)
${field_register_tanggal_lahir_tanggal_ke}          css=div:nth-of-type(2) > div:nth-of-type(7)
${checkbox_register_saya_menjamin}                  css=._1GnU3._5k2bC
${button_register_tanggal_lahir_register}           css=.undefined
${text_register_akun_berhasil}                      css=._3ZtJL

*** Keywords ***
Click Register Sekarang
    Wait Until Element Is Visible           ${links_login_register_sekarang}
    Click Element                           ${links_login_register_sekarang}

Input all the field and tick the agreement
    [Arguments]  ${EMAIL}   ${PASSWORD}  ${PHONE}   ${GENDER}   ${BULAN}    ${TAHUN}    ${TANGGAL}
    Wait Until Element Is Visible           ${text_register_email}
    Input Text                              ${text_register_email}              ${EMAIL}
    Input Text                              ${text_register_confirm_email}      ${EMAIL}
    Input Text                              ${text_register_password}           ${PASSWORD}
    Input Text                              ${text_register_confirm_password}   ${PASSWORD}
    Input Text                              ${text_register_phone}              ${PHONE}
    Click Element                           ${dropdown_register_gender}
    Click Element                           ${dropdown_register_gender_pria}
    Click Element                           ${text_register_tanggal_lahir}
    Click Element                           ${dropdown_register_tanggal_lahir_bulan}
    Click Element                           ${dropdown_register_tanggal_lahir_nama_bulan}
    Click Element                           ${dropdown_register_tanggal_lahir_tahun}
    Click Element                           ${dropdown_register_tanggal_lahir_tahun_ke}
    Click Element                           ${field_register_tanggal_lahir_tanggal_ke}
    Click Element                           ${checkbox_register_saya_menjamin}

Click Register Button
    Click Element                           ${button_register_tanggal_lahir_register}

User Successfully Register
    Wait Until Element Is Visible           ${text_register_akun_berhasil}
    Element Text Should Be                  ${text_register_akun_berhasil}      Akun berhasil terdaftar. Login sekarang
    sleep                                   3