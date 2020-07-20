*** Settings ***
Library         	    SeleniumLibrary
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${links_login_register_sekarang}                css=[href='\/accounts\/register']

${text_register_email}                          id=email
${text_register_confirm_email}                  id=confirmEmail
${text_register_password}                       id=password
${text_register_confirm_password}               id=confirmPassword
${text_register_phone}                          id=phone
${text_register_gender}                         name=gender
${text_register_gender_pria}                    css=[value='m']
${text_register_Tanggal_Lahir}                  css=.react-datepicker-wrapper
${text_register_Tanggal_Lahir_Bulan}            css=.react-datepicker__month-read-view > .react-datepicker__month-read-view--down-arrow
${text_register_Tanggal_Lahir_Nama_Bulan}       css=.react-datepicker__month-dropdown > div:nth-of-type(1)
${text_register_Tanggal_Lahir_Tahun}            css=.react-datepicker__year-read-view > .react-datepicker__year-read-view--down-arrow
${text_register_Tanggal_Lahir_Tahun_Ke}         css=.react-datepicker__year-dropdown.react-datepicker__year-dropdown--scrollable > div:nth-of-type(21)
${text_register_Tanggal_Lahir_Tanggal_Ke}       css=div:nth-of-type(2) > div:nth-of-type(7)
${text_register_Tanggal_Lahir_Cantang}          css=._1GnU3._5k2bC
${text_register_Tanggal_Lahir_Register}         css=form#main_form > ._3C-S2.nA5CF.undefined


*** Keywords ***
Click A
    Wait Until Element Is Visible           ${links_login_register_sekarang}
    Click Element                           ${links_login_register_sekarang}

Input A
    [Arguments]  ${EMAIL}   ${PASSWORD}  ${PHONE}
    Wait Until Element Is Visible           ${text_register_email}
    Input Text                              ${text_register_email}              ${EMAIL}
    Input Text                              ${text_register_confirm_email}      ${EMAIL}
    Input Text                              ${text_register_password}           ${PASSWORD}
    Input Text                              ${text_register_confirm_password}   ${PASSWORD}
    Input Text                              ${text_register_phone}              ${PHONE}
    Click Element                           ${text_register_gender}
    Click Element                           ${text_register_gender_pria}
    Click Element                           ${text_register_Tanggal_Lahir}
    Click Element                           ${text_register_Tanggal_Lahir_Bulan}
    Click Element                           ${text_register_Tanggal_Lahir_Nama_Bulan}
    Click Element                           ${text_register_Tanggal_Lahir_Tahun}
    Click Element                           ${text_register_Tanggal_Lahir_Tahun_Ke}
    Click Element                           ${text_register_Tanggal_Lahir_Tanggal_Ke}
    Click Element                           ${text_register_Tanggal_Lahir_Cantang}
    Click Element                           ${text_register_Tanggal_Lahir_Register}

Click B
    Log To Console          Test