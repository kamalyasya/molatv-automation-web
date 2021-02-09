*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot


*** Variables ***
${links_login_register_sekarang}                                css=p > a

${field_register_email}                                         id=identity
${field_register_password}                                      id=password
${field_register_confirm_password}                              id=confirmPassword
${button_register_tanggal_lahir_register}                       css=._3C-S2

${text_enter_otp_code_that_has_been_sent_to}                    css=._3HpB6 > .GLAMB
${text_email_restration_account}                                css=._3HpB6 > ._3ynOi

${field_register_otp_1}                                         css=div:nth-of-type(1) > .eKKpu
${field_register_otp_2}                                         css=div:nth-of-type(2) > .eKKpu
${field_register_otp_3}                                         css=div:nth-of-type(3) > .eKKpu
${field_register_otp_4}                                         css=div:nth-of-type(4) > .eKKpu
${field_register_otp_5}                                         css=div:nth-of-type(5) > .eKKpu
${field_register_otp_6}                                         css=div:nth-of-type(6) > .eKKpu
${button_register_verifikasi}                                   css=._3C-S2
${text_register_kode_verifikas_salah}                           xpath=/html//div[@id='app']/div[@class='_3e0P_']//form[@class='_3HpB6']//p[.='Verification code is incorrect or has expired']

#${button_register_verifikasi_again}                             css=._3C-S2
#${text_register_kode_verifikas_salah_again}                     css=._2Ctc-
${button_register_verifikasi_kirim_ulang}                       css=._3HpB6 a
${text_register_kode_verifikas_terkirim}                        css=.wBq_n
#${text_register_wait_countdown_60_second}                       xpath=/html//div[@id='app']/div[@class='_3e0P_']//form[@class='_3HpB6']//div[@class='HqfQm']

${button_register_tanggal_lahir_register_empty}                 css=._1otG9 > ._3C-S2.nA5CF

${dropdown_register_gender_pria_invalid}                        css=option[value='f']
${dropdown_register_tanggal_lahir_nama_bulan_invalid}           css=.react-datepicker__month-dropdown > div:nth-of-type(1)
${dropdown_register_tanggal_lahir_tahun_ke_invalid}             css=.react-datepicker__year-dropdown.react-datepicker__year-dropdown--scrollable > div:nth-of-type(121)
${field_register_tanggal_lahir_tanggal_ke_invalid}              css=.react-datepicker__month > div:nth-of-type(1) > div:nth-of-type(2)
${text_register_akun_invalid}                                   css=._2Ctc-

${url_sample_movie}                                             css=div:nth-of-type(1) > .css-1qqtmsi > .css-rh1xgi > .css-tqv6h2.imageWrapper.loaded > .imageBorder
${links_login}                                                  css=.css-1mpgh73 a

${button_register_subcription_plan}                             css=div:nth-of-type(2) > div:nth-of-type(2) > a
${button_register_pay_subcription}                              css=._1sYFn > div > div:nth-of-type(2) ._2Kbv7  .vhbIU



*** Keywords ***
Click Register Sekarang
    Wait Until Element Is Visible                   ${links_login_register_sekarang}
    Click Element                                   ${links_login_register_sekarang}

Input all the field and tick the agreement
    [Arguments]  ${EMAIL}   ${PASSWORD}
    Wait Until Element Is Visible                   ${field_register_email}
    Input Text                                      ${field_register_email}              ${EMAIL}
    Input Text                                      ${field_register_password}           ${PASSWORD}
    Input Text                                      ${field_register_confirm_password}   ${PASSWORD}

Click Register Button
    Click Element                                   ${button_register_tanggal_lahir_register}
    Sleep                                           5

Verify Enter OTP Code
    Wait Until Element Is Visible                   ${text_enter_otp_code_that_has_been_sent_to}
    Wait Until Element Is Visible                   ${text_email_restration_account}

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
    Element Text Should Be                          ${text_register_kode_verifikas_salah}       Verification code is incorrect or has expired

Click Kirim Ulang
    Wait Until Element Is Visible                   ${button_register_verifikasi_kirim_ulang}       64
    Click Element                                   ${button_register_verifikasi_kirim_ulang}
    Sleep                                           63

Verify User Kode verifikasi terkirim
    Wait Until Element Is Visible                   ${text_register_kode_verifikas_terkirim}
    Element Should Be Visible                       ${text_register_kode_verifikas_terkirim}
    Element Text Should Be                          ${text_register_kode_verifikas_terkirim}            Verification code has been sent

Input the field with empty mandatory fields and tick the agreement
    [Arguments]  ${EMAIL}   ${PASSWORD}
    Wait Until Element Is Visible                   ${field_register_email}
    Input Text                                      ${field_register_email}              ${EMAIL}
    Input Text                                      ${field_register_password}           ${PASSWORD}

Can Not click button Register
    Wait Until Element Is Visible                   ${button_register_tanggal_lahir_register_empty}
    Element Should Be Disabled                      ${button_register_tanggal_lahir_register_empty}

Input the field with invalid fields format and tick the agreement
    [Arguments]  ${EMAIL}   ${PASSWORD}
    Wait Until Element Is Visible                   ${field_register_email}
    Input Text                                      ${field_register_email}              ${EMAIL}
    Input Text                                      ${field_register_password}           ${PASSWORD}
    Input Text                                      ${field_register_confirm_password}   ${PASSWORD}


User Cannot Register
    Wait Until Element Is Visible                   ${text_register_akun_invalid}
    Element Text Should Be                          ${text_register_akun_invalid}           Email Already Exists

Select any special assets or content
    [Arguments]                                     ${URL_SAMPLE_MOVIE}
    Go To                                           ${URL_SAMPLE_MOVIE}

Select Login
    Wait Until Element Is Visible                   ${links_login}
    Click Element                                   ${links_login}

Select Beli Paket
    Wait Until Element Is Visible                   ${button_register_subcription_plan}
    Click Element                                   ${button_register_subcription_plan}

Choose package
    Wait Until Element Is Visible                   ${button_register_pay_subcription}
    Click Element                                   ${button_register_pay_subcription}